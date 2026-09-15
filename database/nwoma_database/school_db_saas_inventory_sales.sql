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
-- Table structure for table `inventory_sales`
--

DROP TABLE IF EXISTS `inventory_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory_sales` (
  `id` varchar(36) NOT NULL,
  `item_id` varchar(36) DEFAULT NULL,
  `school_id` varchar(36) DEFAULT NULL,
  `garrison_id` varchar(36) DEFAULT NULL,
  `student_id` varchar(36) DEFAULT NULL,
  `quantity` int NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `payment_method` enum('cash','momo','debt') DEFAULT 'cash',
  `sold_by` varchar(36) DEFAULT NULL,
  `sale_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `school_id` (`school_id`),
  KEY `garrison_id` (`garrison_id`),
  KEY `student_id` (`student_id`),
  KEY `sold_by` (`sold_by`),
  CONSTRAINT `inventory_sales_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `inventory_items` (`id`) ON DELETE SET NULL,
  CONSTRAINT `inventory_sales_ibfk_2` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`) ON DELETE CASCADE,
  CONSTRAINT `inventory_sales_ibfk_3` FOREIGN KEY (`garrison_id`) REFERENCES `garrisons` (`id`) ON DELETE CASCADE,
  CONSTRAINT `inventory_sales_ibfk_4` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE SET NULL,
  CONSTRAINT `inventory_sales_ibfk_5` FOREIGN KEY (`sold_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_sales`
--

LOCK TABLES `inventory_sales` WRITE;
/*!40000 ALTER TABLE `inventory_sales` DISABLE KEYS */;
INSERT INTO `inventory_sales` VALUES ('10e47063-6e3b-40b8-afd0-50f7416aae27','fc67fa1a-bb53-41f6-a78d-0416984a034c','0bc8b00e-3179-4ecf-917b-57f54f4a0542','3d529a77-1367-4f51-b9c7-8e3fe8b8111e','00ff7c4d-32ac-4941-af98-ee6ee4c5561e',1,25.00,25.00,'cash',NULL,'2026-08-10 09:37:05'),('15a29bb0-72c4-49dd-ab7b-b88c19c6c28f','a7de8672-2cd4-46d4-8d18-c88c6ddde42a','e47700af-3738-46e7-aa54-7c13be0ebe4b','3a747d1e-fcbe-463f-bd9a-daa62544973a','1389ed30-8cfb-4bfc-9ba1-0f43ac48a395',1,45.00,45.00,'cash',NULL,'2026-08-10 09:37:06'),('2c8f08ee-f22a-484a-acb6-2af8e933cfee','46611af0-2340-417f-90f8-0bf2805fc07d','c2980608-feed-4433-b771-12da27b59e8f','5bf20299-43f5-4673-8bfc-add1031234ed','0feaec42-4472-4a48-bab6-3f3e2e60af81',1,45.00,45.00,'cash',NULL,'2026-08-10 09:37:06'),('2c92830b-6ad5-4492-b222-071b57fc54bd','023d3d63-af68-4d06-97a6-778250933f8b','0bc8b00e-3179-4ecf-917b-57f54f4a0542','3d529a77-1367-4f51-b9c7-8e3fe8b8111e','09b4edfc-9614-4881-ae31-f98efa896675',1,85.00,85.00,'cash',NULL,'2026-08-10 09:37:05'),('3a93b38a-25d5-456e-b6eb-0f07f09d3152','4f8ea928-f931-4fad-9e0f-3f5b99711cc8','e47700af-3738-46e7-aa54-7c13be0ebe4b','3a747d1e-fcbe-463f-bd9a-daa62544973a','1026d98a-336e-422d-a313-519363a30e9a',1,85.00,85.00,'cash',NULL,'2026-08-10 09:37:06'),('4c76a4c6-c4b4-4e9c-ba89-2a397dbf6bcf','fc67fa1a-bb53-41f6-a78d-0416984a034c','0bc8b00e-3179-4ecf-917b-57f54f4a0542','3d529a77-1367-4f51-b9c7-8e3fe8b8111e','03c1d1f4-3af8-4dd5-986c-5c8381ce60ee',1,25.00,25.00,'cash',NULL,'2026-08-10 09:37:05'),('5c00946e-aa2a-4746-bc64-2e4a2165dbc0','4f8ea928-f931-4fad-9e0f-3f5b99711cc8','e47700af-3738-46e7-aa54-7c13be0ebe4b','3a747d1e-fcbe-463f-bd9a-daa62544973a','2837672a-f126-45ef-b91b-be95bb9e5b5b',1,85.00,85.00,'cash',NULL,'2026-08-10 09:37:06'),('6107d7a8-3ca5-4c4f-ba36-bdb4cca95c32','a7de8672-2cd4-46d4-8d18-c88c6ddde42a','e47700af-3738-46e7-aa54-7c13be0ebe4b','3a747d1e-fcbe-463f-bd9a-daa62544973a','1026d98a-336e-422d-a313-519363a30e9a',1,45.00,45.00,'cash',NULL,'2026-08-10 09:37:06'),('72f83a93-b7ca-4f16-892b-72a7d343ed49','46611af0-2340-417f-90f8-0bf2805fc07d','c2980608-feed-4433-b771-12da27b59e8f','5bf20299-43f5-4673-8bfc-add1031234ed','2a39704f-4ad8-471a-ac25-49ba53c5d963',1,45.00,45.00,'cash',NULL,'2026-08-10 09:37:06'),('771f36d6-59e8-4949-9741-858199dc5662','a7de8672-2cd4-46d4-8d18-c88c6ddde42a','e47700af-3738-46e7-aa54-7c13be0ebe4b','3a747d1e-fcbe-463f-bd9a-daa62544973a','2837672a-f126-45ef-b91b-be95bb9e5b5b',1,45.00,45.00,'cash',NULL,'2026-08-10 09:37:06'),('7dfb82fe-ea0a-494f-82ad-c70fe2d3d03c','ae606a2e-2dcf-4338-aa0e-ea2de48046a6','e47700af-3738-46e7-aa54-7c13be0ebe4b','3a747d1e-fcbe-463f-bd9a-daa62544973a','1026d98a-336e-422d-a313-519363a30e9a',1,25.00,25.00,'cash',NULL,'2026-08-10 09:37:06'),('81dda98b-9577-4624-a066-b97950a71d53','b54b175b-f611-4bf1-8cdd-95ee4b1df0bb','0bc8b00e-3179-4ecf-917b-57f54f4a0542','3d529a77-1367-4f51-b9c7-8e3fe8b8111e','03c1d1f4-3af8-4dd5-986c-5c8381ce60ee',1,45.00,45.00,'cash',NULL,'2026-08-10 09:37:05'),('9372faea-fcc5-4771-ab1e-73475694d1a8','c85a7600-db43-46a6-afca-42b6582bfdf9','c2980608-feed-4433-b771-12da27b59e8f','5bf20299-43f5-4673-8bfc-add1031234ed','0feaec42-4472-4a48-bab6-3f3e2e60af81',1,25.00,25.00,'cash',NULL,'2026-08-10 09:37:06'),('9c1cfa79-b57f-456a-bf29-11dab1de7c42','b54b175b-f611-4bf1-8cdd-95ee4b1df0bb','0bc8b00e-3179-4ecf-917b-57f54f4a0542','3d529a77-1367-4f51-b9c7-8e3fe8b8111e','09b4edfc-9614-4881-ae31-f98efa896675',1,45.00,45.00,'cash',NULL,'2026-08-10 09:37:05'),('9fab9075-1040-4860-b335-1ee06656203c','c85a7600-db43-46a6-afca-42b6582bfdf9','c2980608-feed-4433-b771-12da27b59e8f','5bf20299-43f5-4673-8bfc-add1031234ed','41679ebd-725c-47de-ac36-064ce0bca3cc',1,25.00,25.00,'cash',NULL,'2026-08-10 09:37:06'),('a5563ba6-aaa0-43b7-9e4a-0772b4e705ce','023d3d63-af68-4d06-97a6-778250933f8b','0bc8b00e-3179-4ecf-917b-57f54f4a0542','3d529a77-1367-4f51-b9c7-8e3fe8b8111e','03c1d1f4-3af8-4dd5-986c-5c8381ce60ee',1,85.00,85.00,'cash',NULL,'2026-08-10 09:37:05'),('ace082ed-348e-4fd8-83a8-140decbb92e5','f78e07c9-6d31-4f69-9f93-94448f160143','a488ccf7-f9f0-40f5-a899-3dd6d3e05ae1','3d529a77-1367-4f51-b9c7-8e3fe8b8111e',NULL,2,115.00,230.00,'cash',NULL,'2026-08-10 09:34:40'),('ad2e1928-959d-4107-a10e-2489f3495cc1','f9c44722-d32b-4ec1-878f-13b10a493be5','0bc8b00e-3179-4ecf-917b-57f54f4a0542','3d529a77-1367-4f51-b9c7-8e3fe8b8111e',NULL,2,115.00,230.00,'cash',NULL,'2026-08-10 09:34:39'),('afadc681-5644-495a-a6de-5f54e10c88e4','42cf9c18-795c-467e-b7e9-5feba596edbe','c2980608-feed-4433-b771-12da27b59e8f','5bf20299-43f5-4673-8bfc-add1031234ed','2a39704f-4ad8-471a-ac25-49ba53c5d963',1,85.00,85.00,'cash',NULL,'2026-08-10 09:37:06'),('b4b113ee-af79-46ec-b260-2949f8c7c91b','fc67fa1a-bb53-41f6-a78d-0416984a034c','0bc8b00e-3179-4ecf-917b-57f54f4a0542','3d529a77-1367-4f51-b9c7-8e3fe8b8111e','09b4edfc-9614-4881-ae31-f98efa896675',1,25.00,25.00,'cash',NULL,'2026-08-10 09:37:06'),('b95c1416-54f1-4d97-9cd5-f75e496a30be','42cf9c18-795c-467e-b7e9-5feba596edbe','c2980608-feed-4433-b771-12da27b59e8f','5bf20299-43f5-4673-8bfc-add1031234ed','0feaec42-4472-4a48-bab6-3f3e2e60af81',1,85.00,85.00,'cash',NULL,'2026-08-10 09:37:06'),('c2102a97-e957-4aaa-aab0-619b49359831','023d3d63-af68-4d06-97a6-778250933f8b','0bc8b00e-3179-4ecf-917b-57f54f4a0542','3d529a77-1367-4f51-b9c7-8e3fe8b8111e','00ff7c4d-32ac-4941-af98-ee6ee4c5561e',1,85.00,85.00,'cash',NULL,'2026-08-10 09:37:05'),('caba870f-3f4d-43ef-9967-e334db38c77e','ae606a2e-2dcf-4338-aa0e-ea2de48046a6','e47700af-3738-46e7-aa54-7c13be0ebe4b','3a747d1e-fcbe-463f-bd9a-daa62544973a','1389ed30-8cfb-4bfc-9ba1-0f43ac48a395',1,25.00,25.00,'cash',NULL,'2026-08-10 09:37:06'),('cf6a2e9d-34c1-442c-84d2-d381ff8532fd','b54b175b-f611-4bf1-8cdd-95ee4b1df0bb','0bc8b00e-3179-4ecf-917b-57f54f4a0542','3d529a77-1367-4f51-b9c7-8e3fe8b8111e','00ff7c4d-32ac-4941-af98-ee6ee4c5561e',1,45.00,45.00,'cash',NULL,'2026-08-10 09:37:05'),('d2f4cb36-e2fd-4894-a4f3-a2613c13d85f','c85a7600-db43-46a6-afca-42b6582bfdf9','c2980608-feed-4433-b771-12da27b59e8f','5bf20299-43f5-4673-8bfc-add1031234ed','2a39704f-4ad8-471a-ac25-49ba53c5d963',1,25.00,25.00,'cash',NULL,'2026-08-10 09:37:06'),('dea1a472-d4a5-44dd-9711-40eb9fc863ad','4341efc0-db21-4b1c-983d-f6e7a4861dc0','7fd38ab9-ad59-4d7c-9bad-8996b8eac336','3d529a77-1367-4f51-b9c7-8e3fe8b8111e',NULL,2,115.00,230.00,'cash',NULL,'2026-08-10 09:34:39'),('df500d0d-77a7-4e1c-b323-6cde7f42c22f','42cf9c18-795c-467e-b7e9-5feba596edbe','c2980608-feed-4433-b771-12da27b59e8f','5bf20299-43f5-4673-8bfc-add1031234ed','41679ebd-725c-47de-ac36-064ce0bca3cc',1,85.00,85.00,'cash',NULL,'2026-08-10 09:37:06'),('e85b9058-8b56-4346-acc9-afe6296c4d35','46611af0-2340-417f-90f8-0bf2805fc07d','c2980608-feed-4433-b771-12da27b59e8f','5bf20299-43f5-4673-8bfc-add1031234ed','41679ebd-725c-47de-ac36-064ce0bca3cc',1,45.00,45.00,'cash',NULL,'2026-08-10 09:37:06'),('f0fc1572-fabf-4ff2-9264-3279abbed4ed','4f8ea928-f931-4fad-9e0f-3f5b99711cc8','e47700af-3738-46e7-aa54-7c13be0ebe4b','3a747d1e-fcbe-463f-bd9a-daa62544973a','1389ed30-8cfb-4bfc-9ba1-0f43ac48a395',1,85.00,85.00,'cash',NULL,'2026-08-10 09:37:06'),('f5f6b504-b73f-4e94-88aa-2b15ccab49f9','ae606a2e-2dcf-4338-aa0e-ea2de48046a6','e47700af-3738-46e7-aa54-7c13be0ebe4b','3a747d1e-fcbe-463f-bd9a-daa62544973a','2837672a-f126-45ef-b91b-be95bb9e5b5b',1,25.00,25.00,'cash',NULL,'2026-08-10 09:37:06');
/*!40000 ALTER TABLE `inventory_sales` ENABLE KEYS */;
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
