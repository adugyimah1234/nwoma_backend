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
-- Table structure for table `fee_presets`
--

DROP TABLE IF EXISTS `fee_presets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fee_presets` (
  `id` varchar(36) NOT NULL,
  `school_id` varchar(36) DEFAULT NULL,
  `garrison_id` varchar(36) DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `class_name` varchar(50) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fee_presets`
--

LOCK TABLES `fee_presets` WRITE;
/*!40000 ALTER TABLE `fee_presets` DISABLE KEYS */;
INSERT INTO `fee_presets` VALUES ('088c22a4-b196-44c6-89b2-ebc79cbc378d','35c72469-666c-466f-bd53-1c2b07b1baa3','3d529a77-1367-4f51-b9c7-8e3fe8b8111e','registration',NULL,NULL,40.00),('12d0ca48-0ce3-41c2-a82a-399fe951bcdd','35c72469-666c-466f-bd53-1c2b07b1baa3','3d529a77-1367-4f51-b9c7-8e3fe8b8111e','textBooks',NULL,'basic 1',120.00),('27475c40-d636-417d-924f-37b7dd6474ae','35c72469-666c-466f-bd53-1c2b07b1baa3','3d529a77-1367-4f51-b9c7-8e3fe8b8111e','textBooks',NULL,'basic 7',200.00),('424d39fc-6665-4644-a6c3-242a379b46b3','35c72469-666c-466f-bd53-1c2b07b1baa3','3d529a77-1367-4f51-b9c7-8e3fe8b8111e','furniture',NULL,NULL,100.00),('4651952d-525b-4d3e-afe5-7ef9986675e1','35c72469-666c-466f-bd53-1c2b07b1baa3','3d529a77-1367-4f51-b9c7-8e3fe8b8111e','levy','CIV',NULL,220.00),('58434410-5d0e-4807-b2a8-42f44221dafa','35c72469-666c-466f-bd53-1c2b07b1baa3','3d529a77-1367-4f51-b9c7-8e3fe8b8111e','textBooks',NULL,'basic 5',180.00),('61db172a-6a43-453e-adbb-a8d98845bcb8','35c72469-666c-466f-bd53-1c2b07b1baa3','3d529a77-1367-4f51-b9c7-8e3fe8b8111e','exerciseBooks',NULL,'kg',30.00),('80e6b4a3-a97f-4e33-a66b-0722e13e027c','35c72469-666c-466f-bd53-1c2b07b1baa3','3d529a77-1367-4f51-b9c7-8e3fe8b8111e','exerciseBooks',NULL,'basic 7',80.00),('8d57712f-acf1-4fc9-9685-57445d697386','35c72469-666c-466f-bd53-1c2b07b1baa3','3d529a77-1367-4f51-b9c7-8e3fe8b8111e','exerciseBooks',NULL,'basic 5',70.00),('b39dc4e2-1ead-49a0-b8ac-11b5492cf4b3','35c72469-666c-466f-bd53-1c2b07b1baa3','3d529a77-1367-4f51-b9c7-8e3fe8b8111e','jersey_crest',NULL,NULL,120.00),('bbf01e53-793b-4f75-b84c-8e341dd4fc9a','35c72469-666c-466f-bd53-1c2b07b1baa3','3d529a77-1367-4f51-b9c7-8e3fe8b8111e','exerciseBooks',NULL,'basic 3',60.00),('c5fe1956-eca7-4950-b53d-fcb26ae4166c','35c72469-666c-466f-bd53-1c2b07b1baa3','3d529a77-1367-4f51-b9c7-8e3fe8b8111e','textBooks',NULL,'kg',100.00),('dde4b6e7-d751-4540-a611-e0e4b3455fba','35c72469-666c-466f-bd53-1c2b07b1baa3','3d529a77-1367-4f51-b9c7-8e3fe8b8111e','exerciseBooks',NULL,'basic 1',50.00),('e2b4b977-2a06-4697-b56f-d15921dfdac5','35c72469-666c-466f-bd53-1c2b07b1baa3','3d529a77-1367-4f51-b9c7-8e3fe8b8111e','textBooks',NULL,'basic 3',150.00),('ec522a3b-227f-4bc6-87b0-9cd86320df05','35c72469-666c-466f-bd53-1c2b07b1baa3','3d529a77-1367-4f51-b9c7-8e3fe8b8111e','levy','SVC',NULL,200.00);
/*!40000 ALTER TABLE `fee_presets` ENABLE KEYS */;
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
