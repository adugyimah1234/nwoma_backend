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
-- Table structure for table `inventory_items`
--

DROP TABLE IF EXISTS `inventory_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory_items` (
  `id` varchar(36) NOT NULL,
  `school_id` varchar(36) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `category` enum('uniform','book','stationery','other') DEFAULT 'other',
  `price` decimal(10,2) NOT NULL,
  `stock_quantity` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `school_id` (`school_id`),
  CONSTRAINT `inventory_items_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_items`
--

LOCK TABLES `inventory_items` WRITE;
/*!40000 ALTER TABLE `inventory_items` DISABLE KEYS */;
INSERT INTO `inventory_items` VALUES ('023d3d63-af68-4d06-97a6-778250933f8b','0bc8b00e-3179-4ecf-917b-57f54f4a0542','School Uniform (Primary)','uniform',85.00,100,'2026-08-10 09:37:05'),('42cf9c18-795c-467e-b7e9-5feba596edbe','c2980608-feed-4433-b771-12da27b59e8f','School Uniform (Primary)','uniform',85.00,100,'2026-08-10 09:37:06'),('4341efc0-db21-4b1c-983d-f6e7a4861dc0','7fd38ab9-ad59-4d7c-9bad-8996b8eac336','Garrison Branded Jersey','uniform',115.00,50,'2026-08-10 09:34:39'),('46611af0-2340-417f-90f8-0bf2805fc07d','c2980608-feed-4433-b771-12da27b59e8f','Mathematics Textbook B1','book',45.00,100,'2026-08-10 09:37:06'),('4f8ea928-f931-4fad-9e0f-3f5b99711cc8','e47700af-3738-46e7-aa54-7c13be0ebe4b','School Uniform (Primary)','uniform',85.00,100,'2026-08-10 09:37:06'),('a7de8672-2cd4-46d4-8d18-c88c6ddde42a','e47700af-3738-46e7-aa54-7c13be0ebe4b','Mathematics Textbook B1','book',45.00,100,'2026-08-10 09:37:06'),('ae606a2e-2dcf-4338-aa0e-ea2de48046a6','e47700af-3738-46e7-aa54-7c13be0ebe4b','Exercise Book (10 Pack)','stationery',25.00,100,'2026-08-10 09:37:06'),('b54b175b-f611-4bf1-8cdd-95ee4b1df0bb','0bc8b00e-3179-4ecf-917b-57f54f4a0542','Mathematics Textbook B1','book',45.00,100,'2026-08-10 09:37:05'),('c85a7600-db43-46a6-afca-42b6582bfdf9','c2980608-feed-4433-b771-12da27b59e8f','Exercise Book (10 Pack)','stationery',25.00,100,'2026-08-10 09:37:06'),('f78e07c9-6d31-4f69-9f93-94448f160143','a488ccf7-f9f0-40f5-a899-3dd6d3e05ae1','Garrison Branded Jersey','uniform',115.00,50,'2026-08-10 09:34:40'),('f9c44722-d32b-4ec1-878f-13b10a493be5','0bc8b00e-3179-4ecf-917b-57f54f4a0542','Garrison Branded Jersey','uniform',115.00,50,'2026-08-10 09:34:39'),('fc67fa1a-bb53-41f6-a78d-0416984a034c','0bc8b00e-3179-4ecf-917b-57f54f4a0542','Exercise Book (10 Pack)','stationery',25.00,100,'2026-08-10 09:37:05');
/*!40000 ALTER TABLE `inventory_items` ENABLE KEYS */;
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
