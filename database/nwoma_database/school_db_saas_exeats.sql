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
-- Table structure for table `exeats`
--

DROP TABLE IF EXISTS `exeats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exeats` (
  `id` varchar(36) NOT NULL,
  `student_id` varchar(36) DEFAULT NULL,
  `school_id` varchar(36) DEFAULT NULL,
  `garrison_id` varchar(36) DEFAULT NULL,
  `exeat_type` enum('day','weekend','medical','emergency') DEFAULT 'day',
  `departure_date` datetime NOT NULL,
  `expected_return_date` datetime NOT NULL,
  `actual_return_date` datetime DEFAULT NULL,
  `reason` text,
  `status` enum('pending','approved','departed','returned','overdue') DEFAULT 'pending',
  `approved_by` varchar(36) DEFAULT NULL,
  `recorded_by` varchar(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  KEY `school_id` (`school_id`),
  KEY `garrison_id` (`garrison_id`),
  KEY `approved_by` (`approved_by`),
  KEY `recorded_by` (`recorded_by`),
  CONSTRAINT `exeats_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  CONSTRAINT `exeats_ibfk_2` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`) ON DELETE CASCADE,
  CONSTRAINT `exeats_ibfk_3` FOREIGN KEY (`garrison_id`) REFERENCES `garrisons` (`id`) ON DELETE CASCADE,
  CONSTRAINT `exeats_ibfk_4` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `exeats_ibfk_5` FOREIGN KEY (`recorded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exeats`
--

LOCK TABLES `exeats` WRITE;
/*!40000 ALTER TABLE `exeats` DISABLE KEYS */;
INSERT INTO `exeats` VALUES ('1df14c98-f9b7-4148-824b-e06a385a31ef','00ff7c4d-32ac-4941-af98-ee6ee4c5561e','0bc8b00e-3179-4ecf-917b-57f54f4a0542','3d529a77-1367-4f51-b9c7-8e3fe8b8111e','weekend','2026-08-10 09:34:39','2026-08-12 09:34:39',NULL,'Home Visitation Protocol','approved',NULL,NULL,'2026-08-10 09:34:39','2026-08-10 09:34:39'),('5f14cb3b-eaf0-4cfe-b816-301c60965b0f','01b87196-3c36-4453-aae3-e604748347e0','a488ccf7-f9f0-40f5-a899-3dd6d3e05ae1','3d529a77-1367-4f51-b9c7-8e3fe8b8111e','weekend','2026-08-10 09:34:40','2026-08-12 09:34:40',NULL,'Home Visitation Protocol','approved',NULL,NULL,'2026-08-10 09:34:40','2026-08-10 09:34:40'),('e43595cf-9f27-478d-9565-c09a30c6c8c8','018a77e5-5544-4a81-9c4f-b1b419e0a030','7fd38ab9-ad59-4d7c-9bad-8996b8eac336','3d529a77-1367-4f51-b9c7-8e3fe8b8111e','weekend','2026-08-10 09:34:40','2026-08-12 09:34:40',NULL,'Home Visitation Protocol','approved',NULL,NULL,'2026-08-10 09:34:39','2026-08-10 09:34:39');
/*!40000 ALTER TABLE `exeats` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-15 12:55:52
