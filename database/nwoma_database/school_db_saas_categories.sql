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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` varchar(36) NOT NULL,
  `name` varchar(50) NOT NULL,
  `amount` decimal(10,2) DEFAULT '0.00',
  `code` varchar(45) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `garrison_id` varchar(36) DEFAULT NULL,
  `school_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_categories_garrison` (`garrison_id`),
  KEY `fk_categories_school` (`school_id`),
  CONSTRAINT `fk_categories_garrison` FOREIGN KEY (`garrison_id`) REFERENCES `garrisons` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_categories_school` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES ('0d512c4c-4f73-4cf9-8cf9-5caf30d2a823','SVC',200.00,NULL,NULL,NULL,'3a747d1e-fcbe-463f-bd9a-daa62544973a',NULL),('0f269b23-0279-431f-8586-408e85da54e9','CIV',220.00,NULL,NULL,NULL,'3d529a77-1367-4f51-b9c7-8e3fe8b8111e',NULL),('2085523a-fd8c-48a1-bbc6-75b1d97eb321','MOD',200.00,NULL,NULL,NULL,'3d529a77-1367-4f51-b9c7-8e3fe8b8111e',NULL),('311031f8-7efe-4805-a4c1-e1fd40937d27','MOD',120.00,'MOD','A student with one parent in the military','active','8a77e807-8a6d-4e75-8a0d-2c9b39d5a2c4',NULL),('3d4f0a21-955d-4958-8852-cbed116d8aaa','CIV',220.00,NULL,NULL,NULL,'3a747d1e-fcbe-463f-bd9a-daa62544973a',NULL),('3f4c6636-83f5-4689-856a-383d05a3985b','SVC',200.00,NULL,NULL,NULL,'3d529a77-1367-4f51-b9c7-8e3fe8b8111e',NULL),('72d34c3d-d469-467b-ab98-b8b8b7928e97','CIV',220.00,NULL,NULL,NULL,'5bf20299-43f5-4673-8bfc-add1031234ed',NULL),('957879fd-3dd5-4bc5-9474-b80e17080ceb','SVC',200.00,NULL,NULL,NULL,'5bf20299-43f5-4673-8bfc-add1031234ed',NULL),('f45ef5cc-34fc-4ce4-bca4-690e24314a67','CIV',200.00,'Cilivian','A student who\'s parents are not in the military','active','8a77e807-8a6d-4e75-8a0d-2c9b39d5a2c4',NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
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
