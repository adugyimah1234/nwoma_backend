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
-- Table structure for table `remarks_bank`
--

DROP TABLE IF EXISTS `remarks_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `remarks_bank` (
  `id` varchar(36) NOT NULL,
  `school_id` varchar(36) DEFAULT NULL,
  `garrison_id` varchar(36) DEFAULT NULL,
  `category` enum('academic','conduct','general','interest') DEFAULT 'general',
  `remark_text` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `school_id` (`school_id`),
  KEY `garrison_id` (`garrison_id`),
  CONSTRAINT `remarks_bank_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`) ON DELETE CASCADE,
  CONSTRAINT `remarks_bank_ibfk_2` FOREIGN KEY (`garrison_id`) REFERENCES `garrisons` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remarks_bank`
--

LOCK TABLES `remarks_bank` WRITE;
/*!40000 ALTER TABLE `remarks_bank` DISABLE KEYS */;
INSERT INTO `remarks_bank` VALUES ('1b771467-941d-11f1-85c2-c85b7681b244',NULL,NULL,'academic','An exceptionally brilliant and hardworking student. Maintain the standard.','2026-08-09 18:06:56','2026-08-09 18:06:56'),('1b7805eb-941d-11f1-85c2-c85b7681b244',NULL,NULL,'academic','Performance is satisfactory but more effort is needed in Mathematics.','2026-08-09 18:06:56','2026-08-09 18:06:56'),('1b78ea36-941d-11f1-85c2-c85b7681b244',NULL,NULL,'conduct','A disciplined student with high moral standards. A role model to peers.','2026-08-09 18:06:56','2026-08-09 18:06:56'),('1b79af4c-941d-11f1-85c2-c85b7681b244',NULL,NULL,'conduct','Needs to improve on punctuality and general class conduct.','2026-08-09 18:06:56','2026-08-09 18:06:56'),('1b7a9fb5-941d-11f1-85c2-c85b7681b244',NULL,NULL,'general','A promising student. Promoted to next class.','2026-08-09 18:06:56','2026-08-09 18:06:56'),('1b7b79ba-941d-11f1-85c2-c85b7681b244',NULL,NULL,'general','Hard work pays. Keep the fire burning.','2026-08-09 18:06:56','2026-08-09 18:06:56'),('1b7c3175-941d-11f1-85c2-c85b7681b244',NULL,NULL,'interest','Shows great interest in sporting activities and physical education.','2026-08-09 18:06:56','2026-08-09 18:06:56'),('1b7cde13-941d-11f1-85c2-c85b7681b244',NULL,NULL,'interest','An active member of the school choir and cultural troupe.','2026-08-09 18:06:56','2026-08-09 18:06:56');
/*!40000 ALTER TABLE `remarks_bank` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-15 12:55:56
