CREATE DATABASE  IF NOT EXISTS `school_db_saas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `school_db_saas`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: school_db_saas
-- ------------------------------------------------------
-- Server version	9.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `audit_logs`
--

DROP TABLE IF EXISTS `audit_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_logs` (
  `id` varchar(36) NOT NULL,
  `user_id` varchar(36) NOT NULL,
  `action` enum('CREATE','UPDATE','DELETE','LOGIN','LOGOUT','OTHER') NOT NULL,
  `resource_type` varchar(50) NOT NULL,
  `resource_id` varchar(36) DEFAULT NULL,
  `details` json DEFAULT NULL,
  `school_id` varchar(36) DEFAULT NULL,
  `garrison_id` varchar(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `resource_id` (`resource_id`),
  KEY `school_id` (`school_id`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_logs`
--

LOCK TABLES `audit_logs` WRITE;
/*!40000 ALTER TABLE `audit_logs` DISABLE KEYS */;
INSERT INTO `audit_logs` VALUES ('0a64dc66-ec96-423f-ba21-8370dbec02e2','5ab3b910-a427-4e1c-9c33-c458095bbd54','CREATE','REGISTRATION','bb4fbe5f-31f3-4812-8037-f76b1900682e','{\"status\": \"pending\", \"last_name\": \"Ternn\", \"first_name\": \"Yimper\"}',NULL,'3d529a77-1367-4f51-b9c7-8e3fe8b8111e','2026-08-14 09:50:32'),('1a426de1-bf94-482b-9832-e20081410858','5ab3b910-a427-4e1c-9c33-c458095bbd54','CREATE','REGISTRATION','926a0e43-c4b2-40a8-a374-3531fa0cfce5','{\"status\": \"pending\", \"last_name\": \"jim\", \"first_name\": \"koko\"}',NULL,'3d529a77-1367-4f51-b9c7-8e3fe8b8111e','2026-08-14 09:38:35'),('278f391c-7d39-465d-8be4-f278d71d3445','5ab3b910-a427-4e1c-9c33-c458095bbd54','UPDATE','REGISTRATION','409f43ed-4c3e-4e17-a2cd-b987cffef9c9','{\"id\": \"409f43ed-4c3e-4e17-a2cd-b987cffef9c9\", \"email\": null, \"gender\": \"Male\", \"scores\": null, \"status\": \"pending\", \"address\": \"Garrison Base\", \"category\": \"MOD\", \"last_name\": \"Osei\", \"school_id\": \"0bc8b00e-3179-4ecf-917b-57f54f4a0542\", \"created_at\": \"2026-08-10T09:36:08.000Z\", \"first_name\": \"Kwame\", \"student_id\": null, \"updated_at\": \"2026-08-10T09:36:08.000Z\", \"garrison_id\": \"3d529a77-1367-4f51-b9c7-8e3fe8b8111e\", \"middle_name\": null, \"payment_type\": \"cash\", \"phone_number\": \"0241111111\", \"relationship\": null, \"date_of_birth\": null, \"guardian_name\": null, \"payment_status\": \"unpaid\", \"previous_school\": null, \"academic_year_id\": null, \"registration_date\": \"2026-08-10T09:36:08.000Z\", \"class_applying_for\": \"KG 1 A\", \"guardian_phone_number\": null}',NULL,'3d529a77-1367-4f51-b9c7-8e3fe8b8111e','2026-08-14 11:05:39'),('3d803ca8-8f5e-4c1a-8d1e-b17f4e3690d2','5ab3b910-a427-4e1c-9c33-c458095bbd54','UPDATE','REGISTRATION','f782defe-09ce-4a69-8499-247ebda4761d','{\"status\": \"approved\"}',NULL,'3d529a77-1367-4f51-b9c7-8e3fe8b8111e','2026-08-06 05:34:36'),('3f32e1db-df92-4a4f-856f-71d0795df561','5ab3b910-a427-4e1c-9c33-c458095bbd54','UPDATE','REGISTRATION','03c09313-8a8b-445b-8075-804aaca7f7c4','{\"id\": \"03c09313-8a8b-445b-8075-804aaca7f7c4\", \"email\": null, \"gender\": \"Male\", \"scores\": null, \"status\": \"pending\", \"address\": \"Liberation Barracks\", \"category\": \"MOD\", \"last_name\": \"Sarpong\", \"school_id\": \"0bc8b00e-3179-4ecf-917b-57f54f4a0542\", \"created_at\": \"2026-08-10T09:34:38.000Z\", \"first_name\": \"Yaa\", \"student_id\": null, \"updated_at\": \"2026-08-10T09:34:38.000Z\", \"garrison_id\": \"3d529a77-1367-4f51-b9c7-8e3fe8b8111e\", \"middle_name\": null, \"payment_type\": \"cash\", \"phone_number\": \"0240000000\", \"relationship\": null, \"date_of_birth\": null, \"guardian_name\": null, \"payment_status\": \"unpaid\", \"previous_school\": null, \"academic_year_id\": null, \"registration_date\": \"2026-08-10T09:34:38.000Z\", \"class_applying_for\": \"KG 1 A\", \"guardian_phone_number\": null}',NULL,'3d529a77-1367-4f51-b9c7-8e3fe8b8111e','2026-08-14 11:05:19'),('729d8724-45da-4a65-8815-01906406c724','5ab3b910-a427-4e1c-9c33-c458095bbd54','CREATE','REGISTRATION','732d15b1-ebd0-4f9a-abe1-dc3cff2337c0','{\"status\": \"pending\", \"last_name\": \"Garry\", \"first_name\": \"Vimm\"}',NULL,'3d529a77-1367-4f51-b9c7-8e3fe8b8111e','2026-08-14 09:43:31'),('732d4d4f-efa2-4cfd-a686-a08176a85fc7','5ab3b910-a427-4e1c-9c33-c458095bbd54','CREATE','REGISTRATION','81dfbb41-1de6-44cd-812f-760ab4e10609','{\"status\": \"pending\", \"last_name\": \"gem\", \"first_name\": \"tueby\"}',NULL,'3d529a77-1367-4f51-b9c7-8e3fe8b8111e','2026-08-14 09:55:18'),('790ff829-9c77-4968-8e04-666baf2789e1','5ab3b910-a427-4e1c-9c33-c458095bbd54','CREATE','REGISTRATION','47081531-d871-45bc-ba7b-21d1053e7e42','{\"status\": \"pending\", \"last_name\": \"MOEUIBD\", \"first_name\": \"Norieni\"}',NULL,'3d529a77-1367-4f51-b9c7-8e3fe8b8111e','2026-08-14 09:13:22'),('7fdbb778-7e17-4c60-abb2-ce3c0d767b42','5ab3b910-a427-4e1c-9c33-c458095bbd54','CREATE','REGISTRATION','3f1b53c7-2bcd-495a-97b0-0ac65f3805fe','{\"status\": \"pending\", \"last_name\": \"Solutions\", \"first_name\": \"Tervora\"}',NULL,'3d529a77-1367-4f51-b9c7-8e3fe8b8111e','2026-08-14 09:34:49'),('83888fec-6003-4f96-b89c-8a705255bc7d','5ab3b910-a427-4e1c-9c33-c458095bbd54','UPDATE','REGISTRATION','f782defe-09ce-4a69-8499-247ebda4761d','{\"payment_status\": \"paid\"}',NULL,'3d529a77-1367-4f51-b9c7-8e3fe8b8111e','2026-08-05 12:55:07'),('94351920-1561-47dd-8a69-ead433611124','5ab3b910-a427-4e1c-9c33-c458095bbd54','UPDATE','REGISTRATION','f782defe-09ce-4a69-8499-247ebda4761d','{\"status\": \"approved\"}',NULL,'3d529a77-1367-4f51-b9c7-8e3fe8b8111e','2026-08-06 05:42:20'),('b1af597c-74f5-4514-9703-9f4a4dd4b93d','5ab3b910-a427-4e1c-9c33-c458095bbd54','UPDATE','REGISTRATION','f782defe-09ce-4a69-8499-247ebda4761d','{\"status\": \"approved\"}',NULL,'3d529a77-1367-4f51-b9c7-8e3fe8b8111e','2026-08-06 05:34:29'),('c939e1ea-d6e3-4568-afe8-e55f04822032','5ab3b910-a427-4e1c-9c33-c458095bbd54','CREATE','REGISTRATION','99afda39-ca2c-43ac-9c0d-ea52349eb16d','{\"status\": \"pending\", \"last_name\": \"Bismark\", \"first_name\": \"benjamin\"}','a488ccf7-f9f0-40f5-a899-3dd6d3e05ae1','3d529a77-1367-4f51-b9c7-8e3fe8b8111e','2026-08-10 04:47:42'),('f054678c-0ae8-4c4c-a1eb-4915b7837612','5ab3b910-a427-4e1c-9c33-c458095bbd54','CREATE','REGISTRATION','5c118395-b17b-4086-b6e9-7d559f7097e2','{\"status\": \"pending\", \"last_name\": \"JIMON\", \"first_name\": \"MOMO\"}',NULL,'3d529a77-1367-4f51-b9c7-8e3fe8b8111e','2026-08-14 09:25:41'),('ff32c4dc-8121-492b-a917-f2329072be41','5ab3b910-a427-4e1c-9c33-c458095bbd54','CREATE','REGISTRATION','ac6bd297-6d0c-4334-958f-0135fcd7a7a6','{\"status\": \"pending\", \"last_name\": \"Doe\", \"first_name\": \"Hannah\"}','a488ccf7-f9f0-40f5-a899-3dd6d3e05ae1','3d529a77-1367-4f51-b9c7-8e3fe8b8111e','2026-08-10 09:46:06');
/*!40000 ALTER TABLE `audit_logs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-15 12:55:54
