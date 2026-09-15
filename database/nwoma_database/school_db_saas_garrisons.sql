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
-- Table structure for table `garrisons`
--

DROP TABLE IF EXISTS `garrisons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `garrisons` (
  `id` varchar(36) NOT NULL,
  `name` varchar(150) NOT NULL,
  `code` varchar(50) NOT NULL,
  `location` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `custom_domain` varchar(255) DEFAULT NULL,
  `website_logo_url` text,
  `primary_color` varchar(20) DEFAULT '#1e293b',
  `secondary_color` varchar(20) DEFAULT '#fbbf24',
  `hero_title` varchar(255) DEFAULT NULL,
  `hero_subtitle` text,
  `about_text` text,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(20) DEFAULT NULL,
  `is_website_enabled` tinyint(1) DEFAULT '0',
  `leader_name` varchar(255) DEFAULT NULL,
  `leader_title` varchar(255) DEFAULT NULL,
  `leader_message` text,
  `leader_image_url` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  UNIQUE KEY `custom_domain` (`custom_domain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `garrisons`
--

LOCK TABLES `garrisons` WRITE;
/*!40000 ALTER TABLE `garrisons` DISABLE KEYS */;
INSERT INTO `garrisons` VALUES ('3a747d1e-fcbe-463f-bd9a-daa62544973a','2 Infantry Battalion (2BN)','2GAR','Myohaung Barracks in Takoradi, Western Region','2026-08-06 06:44:21','2026-08-06 06:53:16',NULL,NULL,'#1e293b','#fbbf24',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),('3d529a77-1367-4f51-b9c7-8e3fe8b8111e','3 Infantry Battalion (3BN)','3GAR','Liberation Barracks in Sunyani, Bono Region','2026-08-04 07:35:35','2026-08-06 06:53:16',NULL,NULL,'#1e293b','#fbbf24',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),('5bf20299-43f5-4673-8bfc-add1031234ed','1 Infantry Battalion (1BN)','1GAR','Michel Camp in Tema, Greater Accra Region','2026-08-06 06:42:47','2026-08-06 06:53:16',NULL,NULL,'#1e293b','#fbbf24',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),('822e862c-5758-463a-a35f-ae31b539a593','5 Infantry Battalion (5BN)','5GAR','Arakan Barracks in Accra, Greater Accra Region','2026-08-06 06:57:06','2026-08-06 06:57:06',NULL,NULL,'#1e293b','#fbbf24',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),('8a77e807-8a6d-4e75-8a0d-2c9b39d5a2c4','6 Infantry Battalion (6BN)','6GAR','Kamina Barracks in Tamale, Northern Region','2026-08-06 06:58:26','2026-08-06 06:58:26',NULL,NULL,'#1e293b','#fbbf24',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),('ec5b2805-1570-4428-875e-391375017165','4 Infantry Battalion (4BN)','4GAR','Uaddara Barracks in Kumasi, Ashanti Region','2026-08-06 06:54:17','2026-08-06 06:54:17',NULL,NULL,'#1e293b','#fbbf24',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `garrisons` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-15 12:55:53
