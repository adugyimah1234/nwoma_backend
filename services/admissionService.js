const db = require("../config/db");
const crypto = require("crypto");
const logger = require("../utils/logger");

class AdmissionService {
    /**
     * Bulk Admit Applicants
     * Transitions registrations to students and parents
     */
    async bulkAdmit(options, user) {
        const connection = await db.getConnection();
        const results = {
            attempted: 0,
            admitted: 0,
            skipped: 0,
            errors: []
        };

        try {
            await connection.beginTransaction();

            const {
                registration_ids,
                verify_payment = true,
                generate_initial_fees = true,
                school_id,
                class_id
            } = options;

            // 1. Fetch Registrations
            let query = "SELECT * FROM registrations WHERE id IN (?)";
            if (verify_payment) {
                query += " AND (LOWER(payment_status) = 'paid' OR LOWER(payment_status) = 'partial')";
            }

            const [registrations] = await connection.query(query, [registration_ids]);
            results.attempted = registration_ids.length;

            if (registrations.length === 0) {
                await connection.rollback();
                return { ...results, msg: "No eligible paid/partial registrations found for admission." };
            }

            for (const reg of registrations) {
                try {
                    // Skip if already admitted
                    if (reg.status === 'admitted') {
                        results.skipped++;
                        continue;
                    }

                    const studentId = crypto.randomUUID();
                    const parentId = crypto.randomUUID();

                    // Resolve category string/UUID to a valid category_id UUID for students table
                    let categoryId = reg.category_id;
                    if (!categoryId && reg.category) {
                        const [cats] = await connection.query(
                            "SELECT id FROM categories WHERE name = ? OR code = ? OR id = ?",
                            [reg.category, reg.category, reg.category]
                        );
                        if (cats.length > 0) {
                            categoryId = cats[0].id;
                        }
                    }
                    if (!categoryId) {
                        const [defaultCats] = await connection.query(
                            "SELECT id FROM categories WHERE school_id = ? OR garrison_id = ? LIMIT 1",
                            [reg.school_id, reg.garrison_id]
                        );
                        if (defaultCats.length > 0) {
                            categoryId = defaultCats[0].id;
                        } else {
                            const [anyCat] = await connection.query("SELECT id FROM categories LIMIT 1");
                            if (anyCat.length > 0) {
                                categoryId = anyCat[0].id;
                            }
                        }
                    }

                    const targetSchoolId = school_id || reg.school_id;
                    const targetClassId = class_id || reg.class_id || reg.class_applying_for;

                    // 2. Create Student
                    await connection.query(`
                        INSERT INTO students
                        (id, school_id, garrison_id, category_id, class_id, academic_year_id, first_name, middle_name, last_name, dob, gender, admission_status, status)
                        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 'in_school', 'active')
                    `, [
                        studentId,
                        targetSchoolId,
                        reg.garrison_id,
                        categoryId,
                        targetClassId,
                        reg.academic_year_id,
                        reg.first_name,
                        reg.middle_name,
                        reg.last_name,
                        reg.date_of_birth || reg.dob,
                        reg.gender
                    ]);

                    // 3. Create Parent (Guardian)
                    await connection.query(`
                        INSERT INTO parents
                        (id, student_id, full_name, relationship, phone_number, email, address)
                        VALUES (?, ?, ?, ?, ?, ?, ?)
                    `, [
                        parentId,
                        studentId,
                        reg.guardian_name,
                        reg.relationship,
                        reg.guardian_phone_number,
                        reg.email,
                        reg.address
                    ]);

                    // 4. Update Registration Status
                    // Note: Use 'approved' if 'admitted' is not in the registrations.status ENUM
                    await connection.query("UPDATE registrations SET status = 'approved' WHERE id = ?", [reg.id]);

                    // 5. Generate Initial Fees (Optional)
                    if (generate_initial_fees) {
                        const [standardFees] = await connection.query(
                            "SELECT id, amount FROM fees WHERE class_id = ? AND category_id = ? AND school_id = ?",
                            [targetClassId, categoryId, targetSchoolId]
                        );

                        // If no school-specific fee, look for garrison-wide
                        if (standardFees.length === 0) {
                            const [garrisonFees] = await connection.query(
                                "SELECT id, amount FROM fees WHERE class_id = ? AND category_id = ? AND school_id IS NULL AND garrison_id = ?",
                                [targetClassId, categoryId, reg.garrison_id]
                            );
                            // Log payment requests or similar if your system uses them
                        }
                    }

                    results.admitted++;
                } catch (err) {
                    logger.error(`Admission Error for Reg ${reg.id}: ${err.message}`);
                    results.errors.push({ id: reg.id, error: err.message });
                }
            }

            await connection.commit();
            return results;
        } catch (err) {
            await connection.rollback();
            logger.error("Bulk Admission Service Error: " + err.message);
            throw err;
        } finally {
            connection.release();
        }
    }
}

module.exports = new AdmissionService();
