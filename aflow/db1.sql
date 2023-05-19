CREATE DATABASE  IF NOT EXISTS `aflow_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `aflow_db`;
-- MySQL dump 10.13  Distrib 8.0.27, for macos11 (x86_64)
--
-- Host: 127.0.0.1    Database: aflow_db
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `bank_details`
--

DROP TABLE IF EXISTS `bank_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank_details` (
  `bank_detail_id` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `bank_code` varchar(11) NOT NULL,
  `bank_address` text,
  `bank_postal_code` varchar(50) DEFAULT NULL,
  `bank_swift_code` varchar(50) DEFAULT NULL,
  `payment_code` int NOT NULL,
  `account_number` varchar(50) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `entry_date` datetime DEFAULT NULL,
  KEY `user_id` (`user_id`),
  KEY `bank_code` (`bank_code`),
  KEY `payment_code` (`payment_code`),
  CONSTRAINT `bank_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `bank_details_ibfk_2` FOREIGN KEY (`bank_code`) REFERENCES `banks` (`bank_code`),
  CONSTRAINT `bank_details_ibfk_3` FOREIGN KEY (`payment_code`) REFERENCES `payment_codes` (`code_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_details`
--

LOCK TABLES `bank_details` WRITE;
/*!40000 ALTER TABLE `bank_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banks`
--

DROP TABLE IF EXISTS `banks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banks` (
  `bank_code` varchar(11) NOT NULL,
  `bank` varchar(255) NOT NULL,
  PRIMARY KEY (`bank_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banks`
--

LOCK TABLES `banks` WRITE;
/*!40000 ALTER TABLE `banks` DISABLE KEYS */;
/*!40000 ALTER TABLE `banks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaint_type`
--

DROP TABLE IF EXISTS `complaint_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `complaint_type` (
  `complaint_type_id` int NOT NULL AUTO_INCREMENT,
  `complaint_type` varchar(255) NOT NULL,
  PRIMARY KEY (`complaint_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaint_type`
--

LOCK TABLES `complaint_type` WRITE;
/*!40000 ALTER TABLE `complaint_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `complaint_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaints_status`
--

DROP TABLE IF EXISTS `complaints_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `complaints_status` (
  `complaint_status_id` int NOT NULL AUTO_INCREMENT,
  `complaint_status` varchar(255) NOT NULL,
  PRIMARY KEY (`complaint_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaints_status`
--

LOCK TABLES `complaints_status` WRITE;
/*!40000 ALTER TABLE `complaints_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `complaints_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `country_code` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `country_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`country_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES ('+234','NG','Nigeria');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency_types`
--

DROP TABLE IF EXISTS `currency_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currency_types` (
  `currency_code` varchar(255) NOT NULL,
  `currency` varchar(255) NOT NULL,
  PRIMARY KEY (`currency_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency_types`
--

LOCK TABLES `currency_types` WRITE;
/*!40000 ALTER TABLE `currency_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `currency_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_categories`
--

DROP TABLE IF EXISTS `customer_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_categories` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_categories`
--

LOCK TABLES `customer_categories` WRITE;
/*!40000 ALTER TABLE `customer_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_category_levels`
--

DROP TABLE IF EXISTS `customer_category_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_category_levels` (
  `level_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `category_id` int NOT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`level_id`),
  KEY `user_id` (`user_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `customer_category_levels_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `customer_category_levels_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `customer_categories` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_category_levels`
--

LOCK TABLES `customer_category_levels` WRITE;
/*!40000 ALTER TABLE `customer_category_levels` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_category_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_types`
--

DROP TABLE IF EXISTS `document_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `document_types` (
  `document_type_id` int NOT NULL AUTO_INCREMENT,
  `document_type` varchar(255) NOT NULL,
  PRIMARY KEY (`document_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_types`
--

LOCK TABLES `document_types` WRITE;
/*!40000 ALTER TABLE `document_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identification_types`
--

DROP TABLE IF EXISTS `identification_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `identification_types` (
  `identification_type_id` int NOT NULL AUTO_INCREMENT,
  `identification_type` varchar(255) NOT NULL,
  PRIMARY KEY (`identification_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identification_types`
--

LOCK TABLES `identification_types` WRITE;
/*!40000 ALTER TABLE `identification_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `identification_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kyc_business_income_sources`
--

DROP TABLE IF EXISTS `kyc_business_income_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kyc_business_income_sources` (
  `income_source_id` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `finance_activity` text,
  `funding_source` text,
  `revenue_streams` text,
  PRIMARY KEY (`income_source_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `kyc_business_income_sources_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kyc_business_income_sources`
--

LOCK TABLES `kyc_business_income_sources` WRITE;
/*!40000 ALTER TABLE `kyc_business_income_sources` DISABLE KEYS */;
/*!40000 ALTER TABLE `kyc_business_income_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kyc_business_ownership`
--

DROP TABLE IF EXISTS `kyc_business_ownership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kyc_business_ownership` (
  `ownership_id` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `position_id` int NOT NULL,
  `identification_type_id` int NOT NULL,
  `identifcation_attachment` text,
  `entry_date` datetime NOT NULL,
  PRIMARY KEY (`ownership_id`),
  KEY `user_id` (`user_id`),
  KEY `position_id` (`position_id`),
  KEY `identification_type_id` (`identification_type_id`),
  CONSTRAINT `kyc_business_ownership_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `kyc_business_ownership_ibfk_2` FOREIGN KEY (`position_id`) REFERENCES `kyc_business_positions` (`position_id`),
  CONSTRAINT `kyc_business_ownership_ibfk_3` FOREIGN KEY (`identification_type_id`) REFERENCES `identification_types` (`identification_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kyc_business_ownership`
--

LOCK TABLES `kyc_business_ownership` WRITE;
/*!40000 ALTER TABLE `kyc_business_ownership` DISABLE KEYS */;
/*!40000 ALTER TABLE `kyc_business_ownership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kyc_business_positions`
--

DROP TABLE IF EXISTS `kyc_business_positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kyc_business_positions` (
  `position_id` int NOT NULL AUTO_INCREMENT,
  `position_type` varchar(255) NOT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kyc_business_positions`
--

LOCK TABLES `kyc_business_positions` WRITE;
/*!40000 ALTER TABLE `kyc_business_positions` DISABLE KEYS */;
/*!40000 ALTER TABLE `kyc_business_positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kyc_businesses`
--

DROP TABLE IF EXISTS `kyc_businesses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kyc_businesses` (
  `business_id` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `legal_name` varchar(255) NOT NULL,
  `trade_name` varchar(255) DEFAULT NULL,
  `business_address` text,
  `business_mobile_numer` varchar(255) DEFAULT NULL,
  `business_email_address` varchar(255) DEFAULT NULL,
  `entry_date` datetime NOT NULL,
  PRIMARY KEY (`business_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `kyc_businesses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kyc_businesses`
--

LOCK TABLES `kyc_businesses` WRITE;
/*!40000 ALTER TABLE `kyc_businesses` DISABLE KEYS */;
/*!40000 ALTER TABLE `kyc_businesses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kyc_documents`
--

DROP TABLE IF EXISTS `kyc_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kyc_documents` (
  `document_id` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `document_type_id` int NOT NULL,
  `document_attachment` text,
  `document_desc` text,
  `entry_date` datetime NOT NULL,
  PRIMARY KEY (`document_id`),
  KEY `user_id` (`user_id`),
  KEY `document_type_id` (`document_type_id`),
  CONSTRAINT `kyc_documents_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `kyc_documents_ibfk_2` FOREIGN KEY (`document_type_id`) REFERENCES `document_types` (`document_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kyc_documents`
--

LOCK TABLES `kyc_documents` WRITE;
/*!40000 ALTER TABLE `kyc_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `kyc_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kyc_identifications`
--

DROP TABLE IF EXISTS `kyc_identifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kyc_identifications` (
  `kyc_identification_id` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `identification_type_id` int NOT NULL,
  `identification_attachment` text,
  `identification_desc` text,
  `entry_date` datetime NOT NULL,
  PRIMARY KEY (`kyc_identification_id`),
  KEY `user_id` (`user_id`),
  KEY `identification_type_id` (`identification_type_id`),
  CONSTRAINT `kyc_identifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `kyc_identifications_ibfk_2` FOREIGN KEY (`identification_type_id`) REFERENCES `identification_types` (`identification_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kyc_identifications`
--

LOCK TABLES `kyc_identifications` WRITE;
/*!40000 ALTER TABLE `kyc_identifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `kyc_identifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kyc_occupations`
--

DROP TABLE IF EXISTS `kyc_occupations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kyc_occupations` (
  `income_id` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `employer` text,
  `income` text,
  `entry_date` datetime NOT NULL,
  PRIMARY KEY (`income_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `kyc_occupations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kyc_occupations`
--

LOCK TABLES `kyc_occupations` WRITE;
/*!40000 ALTER TABLE `kyc_occupations` DISABLE KEYS */;
/*!40000 ALTER TABLE `kyc_occupations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kyc_personal_info`
--

DROP TABLE IF EXISTS `kyc_personal_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kyc_personal_info` (
  `info_id` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `entry_date` datetime NOT NULL,
  PRIMARY KEY (`info_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `kyc_personal_info_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kyc_personal_info`
--

LOCK TABLES `kyc_personal_info` WRITE;
/*!40000 ALTER TABLE `kyc_personal_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `kyc_personal_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kyc_purposes`
--

DROP TABLE IF EXISTS `kyc_purposes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kyc_purposes` (
  `kyc_purpose_id` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `trans_volume_id` int NOT NULL,
  `trans_frequency_id` int NOT NULL,
  `description` text,
  `entry_date` datetime NOT NULL,
  PRIMARY KEY (`kyc_purpose_id`),
  KEY `user_id` (`user_id`),
  KEY `trans_volume_id` (`trans_volume_id`),
  KEY `trans_frequency_id` (`trans_frequency_id`),
  CONSTRAINT `kyc_purposes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `kyc_purposes_ibfk_2` FOREIGN KEY (`trans_volume_id`) REFERENCES `transaction_volumes` (`trans_volume_id`),
  CONSTRAINT `kyc_purposes_ibfk_3` FOREIGN KEY (`trans_frequency_id`) REFERENCES `transaction_frequencies` (`trans_frequency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kyc_purposes`
--

LOCK TABLES `kyc_purposes` WRITE;
/*!40000 ALTER TABLE `kyc_purposes` DISABLE KEYS */;
/*!40000 ALTER TABLE `kyc_purposes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `limit_types`
--

DROP TABLE IF EXISTS `limit_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `limit_types` (
  `limit_type_id` int NOT NULL AUTO_INCREMENT,
  `limits` varchar(255) NOT NULL,
  PRIMARY KEY (`limit_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `limit_types`
--

LOCK TABLES `limit_types` WRITE;
/*!40000 ALTER TABLE `limit_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `limit_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `limits`
--

DROP TABLE IF EXISTS `limits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `limits` (
  `limit_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `limit_type_id` int NOT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`limit_id`),
  KEY `user_id` (`user_id`),
  KEY `limit_type_id` (`limit_type_id`),
  CONSTRAINT `limits_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `limits_ibfk_2` FOREIGN KEY (`limit_type_id`) REFERENCES `limit_types` (`limit_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `limits`
--

LOCK TABLES `limits` WRITE;
/*!40000 ALTER TABLE `limits` DISABLE KEYS */;
/*!40000 ALTER TABLE `limits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_attempts`
--

DROP TABLE IF EXISTS `login_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_attempts` (
  `attempt_id` int NOT NULL,
  `user_id` int NOT NULL,
  `attempt_time` time DEFAULT NULL,
  `attempt_date` date DEFAULT NULL,
  `attempt` int DEFAULT NULL,
  PRIMARY KEY (`attempt_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `login_attempts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_attempts`
--

LOCK TABLES `login_attempts` WRITE;
/*!40000 ALTER TABLE `login_attempts` DISABLE KEYS */;
INSERT INTO `login_attempts` VALUES (1,53,'23:44:25','2023-05-18',3),(2,102,'23:55:37','2023-05-18',3),(52,152,'23:57:21','2023-05-18',0);
/*!40000 ALTER TABLE `login_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_attempts_seq`
--

DROP TABLE IF EXISTS `login_attempts_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_attempts_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_attempts_seq`
--

LOCK TABLES `login_attempts_seq` WRITE;
/*!40000 ALTER TABLE `login_attempts_seq` DISABLE KEYS */;
INSERT INTO `login_attempts_seq` VALUES (151);
/*!40000 ALTER TABLE `login_attempts_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_codes`
--

DROP TABLE IF EXISTS `payment_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_codes` (
  `code_id` int NOT NULL AUTO_INCREMENT,
  `payment_code` varchar(11) NOT NULL,
  PRIMARY KEY (`code_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_codes`
--

LOCK TABLES `payment_codes` WRITE;
/*!40000 ALTER TABLE `payment_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_destination_types`
--

DROP TABLE IF EXISTS `payment_destination_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_destination_types` (
  `destination_type_id` int NOT NULL AUTO_INCREMENT,
  `destination` varchar(255) NOT NULL,
  PRIMARY KEY (`destination_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_destination_types`
--

LOCK TABLES `payment_destination_types` WRITE;
/*!40000 ALTER TABLE `payment_destination_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_destination_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_request_approvals`
--

DROP TABLE IF EXISTS `payment_request_approvals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_request_approvals` (
  `request_approval_id` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `request_id` varchar(255) NOT NULL,
  `approval_desc` text,
  `entry_date` datetime NOT NULL,
  PRIMARY KEY (`request_approval_id`),
  KEY `user_id` (`user_id`),
  KEY `request_id` (`request_id`),
  CONSTRAINT `payment_request_approvals_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `payment_request_approvals_ibfk_2` FOREIGN KEY (`request_id`) REFERENCES `payment_requests` (`request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_request_approvals`
--

LOCK TABLES `payment_request_approvals` WRITE;
/*!40000 ALTER TABLE `payment_request_approvals` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_request_approvals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_requests`
--

DROP TABLE IF EXISTS `payment_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_requests` (
  `request_id` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `destination_type_id` int NOT NULL,
  `source_asset` varchar(255) NOT NULL,
  `destination_asset` varchar(255) NOT NULL,
  `request_status_id` int NOT NULL,
  `asset_amount` decimal(10,2) NOT NULL,
  `entry_date` datetime NOT NULL,
  PRIMARY KEY (`request_id`),
  KEY `user_id` (`user_id`),
  KEY `destination_type_id` (`destination_type_id`),
  KEY `source_asset` (`source_asset`),
  KEY `destination_asset` (`destination_asset`),
  KEY `request_status_id` (`request_status_id`),
  CONSTRAINT `payment_requests_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `payment_requests_ibfk_2` FOREIGN KEY (`destination_type_id`) REFERENCES `payment_destination_types` (`destination_type_id`),
  CONSTRAINT `payment_requests_ibfk_3` FOREIGN KEY (`source_asset`) REFERENCES `currency_types` (`currency_code`),
  CONSTRAINT `payment_requests_ibfk_4` FOREIGN KEY (`destination_asset`) REFERENCES `currency_types` (`currency_code`),
  CONSTRAINT `payment_requests_ibfk_5` FOREIGN KEY (`request_status_id`) REFERENCES `payment_requests_status` (`request_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_requests`
--

LOCK TABLES `payment_requests` WRITE;
/*!40000 ALTER TABLE `payment_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_requests_status`
--

DROP TABLE IF EXISTS `payment_requests_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_requests_status` (
  `request_status_id` int NOT NULL AUTO_INCREMENT,
  `request_status` varchar(255) NOT NULL,
  PRIMARY KEY (`request_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_requests_status`
--

LOCK TABLES `payment_requests_status` WRITE;
/*!40000 ALTER TABLE `payment_requests_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_requests_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_transactions`
--

DROP TABLE IF EXISTS `payment_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_transactions` (
  `transaction_id` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `request_id` varchar(255) NOT NULL,
  `transaction_status_id` int NOT NULL,
  `transaction_amount` decimal(10,2) DEFAULT NULL,
  `payment_reference` varchar(255) NOT NULL,
  `beneficiary_name` varchar(255) NOT NULL,
  `sender_purpose_of_payment` text,
  `sender_account_number` varchar(255) NOT NULL,
  `sender_bank_code` varchar(11) NOT NULL,
  `sender_bank_address` text,
  `sender_postal_code` varchar(50) DEFAULT NULL,
  `sender_swift_code` varchar(50) DEFAULT NULL,
  `beneficiary_address` text,
  `intermediary_bank_code` varchar(11) NOT NULL,
  `intermediary_address` text,
  `intermediary_swift_code` varchar(50) DEFAULT NULL,
  `payment_code` int NOT NULL,
  `other_info` text,
  `transaction_date` datetime NOT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `user_id` (`user_id`),
  KEY `request_id` (`request_id`),
  KEY `transaction_status_id` (`transaction_status_id`),
  KEY `sender_bank_code` (`sender_bank_code`),
  KEY `intermediary_bank_code` (`intermediary_bank_code`),
  KEY `payment_code` (`payment_code`),
  CONSTRAINT `payment_transactions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `payment_transactions_ibfk_2` FOREIGN KEY (`request_id`) REFERENCES `payment_requests` (`request_id`),
  CONSTRAINT `payment_transactions_ibfk_3` FOREIGN KEY (`transaction_status_id`) REFERENCES `transactions_status` (`transaction_status_id`),
  CONSTRAINT `payment_transactions_ibfk_4` FOREIGN KEY (`sender_bank_code`) REFERENCES `banks` (`bank_code`),
  CONSTRAINT `payment_transactions_ibfk_5` FOREIGN KEY (`intermediary_bank_code`) REFERENCES `banks` (`bank_code`),
  CONSTRAINT `payment_transactions_ibfk_6` FOREIGN KEY (`payment_code`) REFERENCES `payment_codes` (`code_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_transactions`
--

LOCK TABLES `payment_transactions` WRITE;
/*!40000 ALTER TABLE `payment_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ROLE_USER','2023-05-18 17:22:00'),(2,'ROLE_ADMIN','2023-05-18 17:22:00'),(3,'ROLE_OPERATION','2023-05-18 17:22:00');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_seq`
--

DROP TABLE IF EXISTS `roles_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_seq`
--

LOCK TABLES `roles_seq` WRITE;
/*!40000 ALTER TABLE `roles_seq` DISABLE KEYS */;
INSERT INTO `roles_seq` VALUES (1);
/*!40000 ALTER TABLE `roles_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tokens` (
  `token_id` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `token_date` datetime DEFAULT NULL,
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `tokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokens`
--

LOCK TABLES `tokens` WRITE;
/*!40000 ALTER TABLE `tokens` DISABLE KEYS */;
INSERT INTO `tokens` VALUES ('GAJEK',53,'2023-05-19 00:06:27'),('MWUNT',53,'2023-05-18 22:33:17'),('qP5La',53,'2023-05-18 22:32:31'),('SOPFT',53,'2023-05-18 22:46:13'),('XHHFU',152,'2023-05-19 00:09:02');
/*!40000 ALTER TABLE `tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_frequencies`
--

DROP TABLE IF EXISTS `transaction_frequencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_frequencies` (
  `trans_frequency_id` int NOT NULL AUTO_INCREMENT,
  `frequency` varchar(255) NOT NULL,
  PRIMARY KEY (`trans_frequency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_frequencies`
--

LOCK TABLES `transaction_frequencies` WRITE;
/*!40000 ALTER TABLE `transaction_frequencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction_frequencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_volumes`
--

DROP TABLE IF EXISTS `transaction_volumes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_volumes` (
  `trans_volume_id` int NOT NULL AUTO_INCREMENT,
  `volume` varchar(255) NOT NULL,
  PRIMARY KEY (`trans_volume_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_volumes`
--

LOCK TABLES `transaction_volumes` WRITE;
/*!40000 ALTER TABLE `transaction_volumes` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction_volumes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions_status`
--

DROP TABLE IF EXISTS `transactions_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions_status` (
  `transaction_status_id` int NOT NULL AUTO_INCREMENT,
  `transaction_status` varchar(255) NOT NULL,
  PRIMARY KEY (`transaction_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions_status`
--

LOCK TABLES `transactions_status` WRITE;
/*!40000 ALTER TABLE `transactions_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_complaints`
--

DROP TABLE IF EXISTS `user_complaints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_complaints` (
  `user_complaint_id` int NOT NULL,
  `user_id` int NOT NULL,
  `complaint_type_id` int NOT NULL,
  `complaint` text,
  `complaint_status_id` int NOT NULL,
  `complaint_date` datetime DEFAULT NULL,
  PRIMARY KEY (`user_complaint_id`),
  KEY `user_id` (`user_id`),
  KEY `complaint_type_id` (`complaint_type_id`),
  KEY `complaint_status_id` (`complaint_status_id`),
  CONSTRAINT `user_complaints_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `user_complaints_ibfk_2` FOREIGN KEY (`complaint_type_id`) REFERENCES `complaint_type` (`complaint_type_id`),
  CONSTRAINT `user_complaints_ibfk_3` FOREIGN KEY (`complaint_status_id`) REFERENCES `complaints_status` (`complaint_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_complaints`
--

LOCK TABLES `user_complaints` WRITE;
/*!40000 ALTER TABLE `user_complaints` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_complaints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  KEY `user_id` (`user_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (53,1),(102,1),(152,1);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email_address` varchar(255) NOT NULL,
  `upassword` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `gender` char(10) DEFAULT NULL,
  `country_code` varchar(255) NOT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `address` text,
  `city` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `mobile_number_1` varchar(50) NOT NULL,
  `mobile_number_2` varchar(50) DEFAULT NULL,
  `user_status_id` int NOT NULL,
  `profile_picture` text,
  `modified_date` datetime DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `country_code` (`country_code`),
  KEY `user_status_id` (`user_status_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`country_code`) REFERENCES `countries` (`country_code`),
  CONSTRAINT `users_ibfk_2` FOREIGN KEY (`user_status_id`) REFERENCES `users_status` (`user_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (53,'','tom@gmail.com','$2a$10$99a07jngKpgTlbDl2KDx1unD9i4AKp6otKlcrtHu0CjSs5TbLQyle','','','','','+234','','','','2023-05-18','','08102578665','',2,'','2023-05-18 21:02:42','2023-05-18 21:02:42'),(102,'','presh@gmail.com','$2a$10$zci1nd.psC7yHeycjuv6POi.FYZ68pix1Zd9HQUjQqUqbkTMpxSO.','','','','','+234','','','','2023-05-18','','08102578665','',2,'','2023-05-18 23:53:49','2023-05-18 23:53:49'),(152,'','ore@gmail.com','$2a$10$9//7d9Se57Kn9RP5gw5f3Oyn.1ZTSa0fnUXjS0ha51B2NqGEiMNAi','','','','','+234','','','','2023-05-18','','08102578665','',2,'','2023-05-18 23:57:09','2023-05-18 23:57:09');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_seq`
--

DROP TABLE IF EXISTS `users_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_seq`
--

LOCK TABLES `users_seq` WRITE;
/*!40000 ALTER TABLE `users_seq` DISABLE KEYS */;
INSERT INTO `users_seq` VALUES (251);
/*!40000 ALTER TABLE `users_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_status`
--

DROP TABLE IF EXISTS `users_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_status` (
  `user_status_id` int NOT NULL AUTO_INCREMENT,
  `user_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_status`
--

LOCK TABLES `users_status` WRITE;
/*!40000 ALTER TABLE `users_status` DISABLE KEYS */;
INSERT INTO `users_status` VALUES (2,'Active');
/*!40000 ALTER TABLE `users_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_status_seq`
--

DROP TABLE IF EXISTS `users_status_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_status_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_status_seq`
--

LOCK TABLES `users_status_seq` WRITE;
/*!40000 ALTER TABLE `users_status_seq` DISABLE KEYS */;
INSERT INTO `users_status_seq` VALUES (1);
/*!40000 ALTER TABLE `users_status_seq` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-19  0:49:57
