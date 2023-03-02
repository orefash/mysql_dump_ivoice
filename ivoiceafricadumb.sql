CREATE DATABASE  IF NOT EXISTS `ivoice_africa_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ivoice_africa_db`;
-- MySQL dump 10.13  Distrib 8.0.27, for macos11 (x86_64)
--
-- Host: 127.0.0.1    Database: ivoice_africa_db
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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `admin_id` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `other_info` text,
  PRIMARY KEY (`admin_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `admins_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `client_id` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `other_info` text,
  PRIMARY KEY (`client_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `clients_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_attachments`
--

DROP TABLE IF EXISTS `delivery_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_attachments` (
  `delivery_attach_id` varchar(255) NOT NULL,
  `delivery_id` varchar(255) NOT NULL,
  `description` text,
  `link_media_file` text,
  `destination_language` varchar(255) DEFAULT NULL,
  `source_language` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`delivery_attach_id`),
  KEY `delivery_id` (`delivery_id`),
  CONSTRAINT `delivery_attachments_ibfk_1` FOREIGN KEY (`delivery_id`) REFERENCES `wo_delivery` (`delivery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_attachments`
--

LOCK TABLES `delivery_attachments` WRITE;
/*!40000 ALTER TABLE `delivery_attachments` DISABLE KEYS */;
INSERT INTO `delivery_attachments` VALUES ('1LF110','Dn1104','Description','Kofo Abayomi Road.m4a','4','3'),('2sn102','TK4101','Description','Kofo Abayomi Road.m4a','2','2'),('52x108','Adw103','Description','Kofo Abayomi Road.m4a','2','4'),('d5P113','pSR105','Description','Kofo Abayomi Road.m4a','3','2'),('Ep6107','Adw103','Description','National Open University of Nigeria.m4a','3','2'),('FPj114','J6V106','Description','New Recording.m4a','9','8'),('MwJ105','bce102','Description','Kofo Abayomi Road.m4a','5','5'),('ogW115','J6V106','Description','Kofo Abayomi Road.m4a','7','6'),('POn104','bce102','Description','National Open University of Nigeria.m4a','3','4'),('SLd101','TK4101','Description','National Open University of Nigeria.m4a','4','6'),('TVw106','bce102','Description','Kofo Abayomi Road.m4a','2','3'),('VGt112','pSR105','Description','Kofo Abayomi Road.m4a','4','2'),('Wap103','TK4101','Description','Kofo Abayomi Road.m4a','2','5'),('YBD111','Dn1104','Description','National Open University of Nigeria.m4a','3','2'),('YYZ109','Adw103','Description','Kofo Abayomi Road.m4a','4','3');
/*!40000 ALTER TABLE `delivery_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_freelancer_attachments`
--

DROP TABLE IF EXISTS `delivery_freelancer_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_freelancer_attachments` (
  `attachment_id` varchar(255) NOT NULL,
  `delivery_id` varchar(255) NOT NULL,
  `delivery_attach_id` varchar(255) DEFAULT NULL,
  `link_media_file` varchar(255) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `entry_date` date DEFAULT NULL,
  PRIMARY KEY (`attachment_id`),
  KEY `delivery_id` (`delivery_id`),
  KEY `FKigctvucogxx4b013bh8jbotd5` (`delivery_attach_id`),
  CONSTRAINT `delivery_freelancer_attachments_ibfk_1` FOREIGN KEY (`delivery_id`) REFERENCES `wo_delivery` (`delivery_id`),
  CONSTRAINT `FKigctvucogxx4b013bh8jbotd5` FOREIGN KEY (`delivery_attach_id`) REFERENCES `delivery_attachments` (`delivery_attach_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_freelancer_attachments`
--

LOCK TABLES `delivery_freelancer_attachments` WRITE;
/*!40000 ALTER TABLE `delivery_freelancer_attachments` DISABLE KEYS */;
INSERT INTO `delivery_freelancer_attachments` VALUES ('5aR106','Adw103',NULL,'Kofo Abayomi Road.m4a','2022-12-19 15:49:27','2022-12-19'),('aIU104','Adw103',NULL,'Kofo Abayomi Road.m4a','2022-12-19 15:49:27','2022-12-19'),('CVl112','J6V106','ogW115','issabela beat.mp3','2023-01-25 21:21:28','2023-01-25'),('Eqs102','Adw103',NULL,'tao-of-react.pdf','2022-12-19 15:40:28','2022-12-19'),('ey2111','J6V106','FPj114','issabela beat.mp3','2023-01-25 21:21:28','2023-01-25'),('FLZ108','Dn1104','YBD111','New Recording.m4a','2023-01-08 11:33:03','2023-01-08'),('hwq109','pSR105','d5P113','National Open University of Nigeria.m4a','2023-01-11 00:50:34','2023-01-11'),('jul101','Adw103',NULL,'tao-of-react.pdf','2022-12-19 15:40:28','2022-12-19'),('Mpz103','Adw103',NULL,'tao-of-react.pdf','2022-12-19 15:40:28','2022-12-19'),('nB1105','Adw103',NULL,'New Recording.m4a','2022-12-19 15:49:27','2022-12-19'),('Svn107','Dn1104','1LF110','Kofo Abayomi Road.m4a','2023-01-08 11:33:03','2023-01-08'),('xwz110','pSR105','VGt112','Kofo Abayomi Road.m4a','2023-01-11 00:50:34','2023-01-11');
/*!40000 ALTER TABLE `delivery_freelancer_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_status`
--

DROP TABLE IF EXISTS `delivery_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_status` (
  `delivery_status_id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`delivery_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_status`
--

LOCK TABLES `delivery_status` WRITE;
/*!40000 ALTER TABLE `delivery_status` DISABLE KEYS */;
INSERT INTO `delivery_status` VALUES (1,'Pending'),(2,'Completed'),(3,'Declined'),(4,'Reviewing'),(5,'In Progress'),(6,'Corrections'),(7,'Freelancer Searching'),(8,'Overdue'),(9,'Finished'),(10,'deadline'),(11,'Assigned to Freelancer'),(12,'Forward to client');
/*!40000 ALTER TABLE `delivery_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_status_id`
--

DROP TABLE IF EXISTS `delivery_status_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_status_id` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_status_id`
--

LOCK TABLES `delivery_status_id` WRITE;
/*!40000 ALTER TABLE `delivery_status_id` DISABLE KEYS */;
INSERT INTO `delivery_status_id` VALUES (1);
/*!40000 ALTER TABLE `delivery_status_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `duration_id`
--

DROP TABLE IF EXISTS `duration_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `duration_id` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `duration_id`
--

LOCK TABLES `duration_id` WRITE;
/*!40000 ALTER TABLE `duration_id` DISABLE KEYS */;
INSERT INTO `duration_id` VALUES (1);
/*!40000 ALTER TABLE `duration_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `duration_types`
--

DROP TABLE IF EXISTS `duration_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `duration_types` (
  `duration_id` int NOT NULL AUTO_INCREMENT,
  `duration` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`duration_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `duration_types`
--

LOCK TABLES `duration_types` WRITE;
/*!40000 ALTER TABLE `duration_types` DISABLE KEYS */;
INSERT INTO `duration_types` VALUES (1,'1 Month'),(2,'2 Months'),(3,'3 Months'),(4,'4 Months'),(5,'5 Months'),(6,'6 Months'),(7,'7 Months'),(8,'8 Months'),(9,'9 Months'),(10,'10 Months'),(11,'11 Months'),(12,'12 Months');
/*!40000 ALTER TABLE `duration_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `freelancer_service_pricing`
--

DROP TABLE IF EXISTS `freelancer_service_pricing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `freelancer_service_pricing` (
  `fpricing_id` varchar(255) NOT NULL,
  `pricing_id` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `min_price` decimal(10,2) DEFAULT NULL,
  `max_price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`fpricing_id`),
  KEY `pricing_id` (`pricing_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `freelancer_service_pricing_ibfk_1` FOREIGN KEY (`pricing_id`) REFERENCES `service_type_pricing` (`pricing_id`),
  CONSTRAINT `freelancer_service_pricing_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `freelancer_service_pricing`
--

LOCK TABLES `freelancer_service_pricing` WRITE;
/*!40000 ALTER TABLE `freelancer_service_pricing` DISABLE KEYS */;
INSERT INTO `freelancer_service_pricing` VALUES ('2aN136','stw101',48,10.00,20.00),('2mr139','sth103',48,100.00,110.00),('4fH127','stw101',41,10.00,20.00),('5Bo112','sth102',33,20.00,3.00),('9rr121','stw101',39,10.00,20.00),('A2T116','stw101',36,1000.00,2000.00),('anj135','sth103',43,100.00,110.00),('bt4101','stw101',18,10.00,10.00),('BXi110','stw101',32,10.00,10.00),('C2o137','sth102',48,30.00,40.00),('cpm120','stw101',39,10.00,20.00),('cUD112','stw101',34,10.00,10.00),('cuw109','stw101',31,10.00,20.00),('DpN104','stw101',22,1.00,1.00),('Ezd131','stw101',42,10.00,20.00),('FBH115','stw101',34,10.00,10.00),('ff7123','stw101',39,10.00,20.00),('FV3122','stw101',39,10.00,20.00),('GDC117','stw101',36,1000.00,2000.00),('hZH103','stw101',21,1.00,20.00),('L3H133','sth102',43,30.00,40.00),('lIL138','stm104',48,80.00,90.00),('nFC102','stw101',20,1.00,1.00),('OnH128','stw101',42,10.00,20.00),('Q6W108','stw101',29,10.00,20.00),('QqR134','stm104',43,80.00,90.00),('QQW125','stw101',41,10.00,20.00),('SDI132','stw101',43,10.00,20.00),('SGO105','stw101',24,1.00,1.00),('T4M130','stw101',42,10.00,20.00),('TMQ118','stw101',36,1000.00,2000.00),('Tp0106','sth102',24,100.00,1.00),('TRE113','stw101',34,10.00,10.00),('UoY129','stw101',42,10.00,20.00),('vXg126','stw101',41,10.00,20.00),('W2N114','stw101',34,10.00,10.00),('X9r111','stw101',33,1.00,2.00),('Xc4119','stw101',36,1000.00,2000.00),('xUN124','stw101',41,10.00,20.00);
/*!40000 ALTER TABLE `freelancer_service_pricing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `freelancers`
--

DROP TABLE IF EXISTS `freelancers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `freelancers` (
  `freelancer_id` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `other_info` text,
  PRIMARY KEY (`freelancer_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `freelancers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `freelancers`
--

LOCK TABLES `freelancers` WRITE;
/*!40000 ALTER TABLE `freelancers` DISABLE KEYS */;
/*!40000 ALTER TABLE `freelancers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (49);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `industries`
--

DROP TABLE IF EXISTS `industries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `industries` (
  `industry_id` int NOT NULL AUTO_INCREMENT,
  `industry` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`industry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `industries`
--

LOCK TABLES `industries` WRITE;
/*!40000 ALTER TABLE `industries` DISABLE KEYS */;
INSERT INTO `industries` VALUES (1,'Digital Marketing'),(2,'Social Media Maerketing'),(3,'Schools'),(4,'Government'),(5,'Linguist'),(6,'freelancers');
/*!40000 ALTER TABLE `industries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `industry_id`
--

DROP TABLE IF EXISTS `industry_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `industry_id` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `industry_id`
--

LOCK TABLES `industry_id` WRITE;
/*!40000 ALTER TABLE `industry_id` DISABLE KEYS */;
INSERT INTO `industry_id` VALUES (1);
/*!40000 ALTER TABLE `industry_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_id`
--

DROP TABLE IF EXISTS `language_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_id` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_id`
--

LOCK TABLES `language_id` WRITE;
/*!40000 ALTER TABLE `language_id` DISABLE KEYS */;
INSERT INTO `language_id` VALUES (1);
/*!40000 ALTER TABLE `language_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `language_id` int NOT NULL AUTO_INCREMENT,
  `language` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'Hausa'),(2,'Yoruba'),(3,'Igbo'),(4,'Efik/Ibibio'),(5,'Swalhili'),(6,'French'),(7,'Portuguese'),(8,'English'),(9,'Tiv'),(10,'Ijaw');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_status_id`
--

DROP TABLE IF EXISTS `payment_status_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_status_id` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_status_id`
--

LOCK TABLES `payment_status_id` WRITE;
/*!40000 ALTER TABLE `payment_status_id` DISABLE KEYS */;
INSERT INTO `payment_status_id` VALUES (1);
/*!40000 ALTER TABLE `payment_status_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portfolio_attachments`
--

DROP TABLE IF EXISTS `portfolio_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `portfolio_attachments` (
  `attach_id` varchar(255) NOT NULL,
  `portfolio_id` varchar(255) NOT NULL,
  `description` text,
  `link_media_file` text,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`attach_id`),
  KEY `portfolio_id` (`portfolio_id`),
  CONSTRAINT `portfolio_attachments_ibfk_1` FOREIGN KEY (`portfolio_id`) REFERENCES `portfolios` (`portfolio_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfolio_attachments`
--

LOCK TABLES `portfolio_attachments` WRITE;
/*!40000 ALTER TABLE `portfolio_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `portfolio_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portfolios`
--

DROP TABLE IF EXISTS `portfolios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `portfolios` (
  `portfolio_id` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `render_id` varchar(255) NOT NULL,
  PRIMARY KEY (`portfolio_id`),
  KEY `user_id` (`user_id`),
  KEY `render_id` (`render_id`),
  CONSTRAINT `portfolios_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `portfolios_ibfk_2` FOREIGN KEY (`render_id`) REFERENCES `services_rendered` (`render_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfolios`
--

LOCK TABLES `portfolios` WRITE;
/*!40000 ALTER TABLE `portfolios` DISABLE KEYS */;
/*!40000 ALTER TABLE `portfolios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pricing_types`
--

DROP TABLE IF EXISTS `pricing_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pricing_types` (
  `pricing_type_id` varchar(255) NOT NULL,
  `pricing_type` varchar(255) NOT NULL,
  `min_price` decimal(10,2) DEFAULT NULL,
  `max_price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`pricing_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pricing_types`
--

LOCK TABLES `pricing_types` WRITE;
/*!40000 ALTER TABLE `pricing_types` DISABLE KEYS */;
INSERT INTO `pricing_types` VALUES ('PerHour102','Per Hour',50.00,10.00),('PerMin103','Per Minute',50.00,10.00),('PerWord101','Per Word',50.00,10.00);
/*!40000 ALTER TABLE `pricing_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proposal_status`
--

DROP TABLE IF EXISTS `proposal_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proposal_status` (
  `proposal_status_id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`proposal_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proposal_status`
--

LOCK TABLES `proposal_status` WRITE;
/*!40000 ALTER TABLE `proposal_status` DISABLE KEYS */;
INSERT INTO `proposal_status` VALUES (1,'Pending'),(2,'Completed'),(3,'Declined'),(4,'Reviewing'),(5,'In Progress'),(6,'Corrections'),(7,'Frelancer Searching'),(8,'Admin Request Sent'),(9,'Freelancer Request Sent'),(10,'Client Accepted'),(11,'Freelancer Accepted'),(12,'Admin Accepted'),(13,'Client Request Sent');
/*!40000 ALTER TABLE `proposal_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proposal_status_id`
--

DROP TABLE IF EXISTS `proposal_status_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proposal_status_id` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proposal_status_id`
--

LOCK TABLES `proposal_status_id` WRITE;
/*!40000 ALTER TABLE `proposal_status_id` DISABLE KEYS */;
INSERT INTO `proposal_status_id` VALUES (1);
/*!40000 ALTER TABLE `proposal_status_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proposals`
--

DROP TABLE IF EXISTS `proposals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proposals` (
  `proposal_id` varchar(255) NOT NULL,
  `work_id` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `proposal_status_id` int NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`proposal_id`),
  KEY `work_id` (`work_id`),
  KEY `user_id` (`user_id`),
  KEY `proposal_status_id` (`proposal_status_id`),
  CONSTRAINT `proposals_ibfk_1` FOREIGN KEY (`work_id`) REFERENCES `work_orders` (`work_id`),
  CONSTRAINT `proposals_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `proposals_ibfk_3` FOREIGN KEY (`proposal_status_id`) REFERENCES `proposal_status` (`proposal_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proposals`
--

LOCK TABLES `proposals` WRITE;
/*!40000 ALTER TABLE `proposals` DISABLE KEYS */;
INSERT INTO `proposals` VALUES ('7by110','Wkn103',33,9,0.00,'2023-01-11 00:38:57','2023-01-11 00:38:57'),('AlY112','gLi104',48,9,100.00,'2023-01-25 19:27:46','2023-01-25 19:27:46'),('cFc111','Wkn103',13,9,0.00,'2023-01-22 14:15:28','2023-01-22 14:15:28'),('EXx108','Wkn103',41,9,25.00,'2023-01-11 00:37:37','2023-01-11 00:37:37'),('Ihl105','j1u102',28,9,10000.00,'2023-01-07 10:43:32','2023-01-07 10:43:32'),('nBK109','Wkn103',39,9,0.00,'2023-01-11 00:38:30','2023-01-11 00:38:30'),('Uhq101','U65104',33,11,2000.00,'2022-11-10 10:35:00','2022-12-06 20:35:00'),('Uhq102','U65104',33,9,3000.00,'2022-11-10 10:35:00','2022-11-23 20:35:00'),('Uhq103','U65104',33,9,4000.00,'2022-11-10 10:35:00','2022-11-23 20:35:00'),('Uhq105','U65104',29,9,6000.00,'2022-11-10 10:35:00','2022-11-23 20:35:00'),('V7n107','j1u102',33,9,100.00,'2023-01-07 11:11:39','2023-01-07 11:11:39'),('ys9106','j1u102',31,9,0.00,'2023-01-07 11:10:07','2023-01-07 11:10:07');
/*!40000 ALTER TABLE `proposals` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ROLE_ADMIN','2022-10-30 20:32:10'),(2,'ROLE_SUPERVISOR','2022-10-30 20:32:10'),(3,'ROLE_CLIENT','2022-10-30 20:32:10'),(4,'ROLE_FREELANCER','2022-10-30 20:32:10');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_industries`
--

DROP TABLE IF EXISTS `service_industries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_industries` (
  `si_id` varchar(255) NOT NULL,
  `industry_id` int NOT NULL,
  `render_id` varchar(255) NOT NULL,
  `industry` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`si_id`),
  KEY `industry_id` (`industry_id`),
  KEY `render_id` (`render_id`),
  CONSTRAINT `service_industries_ibfk_1` FOREIGN KEY (`industry_id`) REFERENCES `industries` (`industry_id`),
  CONSTRAINT `service_industries_ibfk_2` FOREIGN KEY (`render_id`) REFERENCES `services_rendered` (`render_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_industries`
--

LOCK TABLES `service_industries` WRITE;
/*!40000 ALTER TABLE `service_industries` DISABLE KEYS */;
INSERT INTO `service_industries` VALUES ('01O197',4,'AAK142','Government'),('0TY133',1,'ZoJ108','1'),('0vF151',4,'oZJ115','4'),('15J106',2,'3Mg104','2'),('15V220',4,'eV8152','Government'),('1dh188',4,'QZm138','Government'),('1Em108',4,'3Mg104','4'),('1kG109',5,'3Mg104','5'),('1Py104',4,'0rV103','4'),('1TZ158',2,'Noc127','Social Media Maerketing'),('2Nb226',1,'dTN154','Digital Marketing'),('4El222',6,'eV8152','freelancers'),('4kq122',4,'V83106','4'),('4V9214',1,'wwp150','Digital Marketing'),('5Dy193',1,'AAK142','Digital Marketing'),('5HM228',3,'dTN154','Schools'),('5q8153',1,'7MZ123','Digital Marketing'),('5S9144',5,'wkB112','5'),('5Vy127',1,'ZoJ108','1'),('67s145',6,'wkB112','6'),('6er150',3,'oZJ115','3'),('70E131',2,'ZoJ108','2'),('7BD169',3,'P83131','Schools'),('7yg234',5,'4cJ157','Linguist'),('8Gq184',1,'QZm138','Digital Marketing'),('8kc179',5,'cZA135','Linguist'),('9fw164',1,'u3h128','Digital Marketing'),('9vB202',1,'B0D146','Digital Marketing'),('a6w155',1,'7MZ123','Digital Marketing'),('Anf216',3,'wwp150','Schools'),('aPw178',3,'cZA135','Schools'),('Are121',3,'V83106','3'),('Awq166',1,'uiQ130','Digital Marketing'),('bER163',2,'u3h128','Social Media Maerketing'),('Bff148',5,'oZJ115','5'),('bhk182',3,'477137','Schools'),('bJc190',6,'QZm138','freelancers'),('BNg231',6,'dTN154','freelancers'),('Bsq196',3,'AAK142','Schools'),('BwM229',4,'dTN154','Government'),('Ck4132',3,'ZoJ108','3'),('cKk160',2,'u3h128','Social Media Maerketing'),('dNe221',5,'eV8152','Linguist'),('duO123',1,'V83106','1'),('dWI116',1,'V83106','1'),('e6q136',1,'ZiN110','1'),('ej8146',1,'oZJ115','1'),('EJF186',2,'QZm138','Social Media Maerketing'),('ENs213',6,'2jR149','freelancers'),('Erf165',1,'lWY129','Digital Marketing'),('EV1161',3,'u3h128','Schools'),('Ezl192',3,'a9d141','Schools'),('fw0118',3,'V83106','3'),('gBI154',3,'7MZ123','Schools'),('Ghc230',5,'dTN154','Linguist'),('GjI157',1,'Xik126','Digital Marketing'),('gnC156',1,'7MZ123','Digital Marketing'),('h2o209',4,'B0D146','Government'),('h5L194',2,'AAK142','Social Media Maerketing'),('hJa129',4,'ZoJ108','4'),('hLO120',2,'V83106','2'),('hmF112',2,'o2z105','2'),('hR5102',2,'0rV103','2'),('hUN171',6,'P83131','freelancers'),('Hw9125',4,'V83106','4'),('hWX105',1,'3Mg104','1'),('i2y201',4,'AAK142','Government'),('Iit223',2,'eV8152','Social Media Maerketing'),('Ioa204',3,'B0D146','Schools'),('IWM189',5,'QZm138','Linguist'),('jcm159',1,'u3h128','Digital Marketing'),('JNc126',6,'V83106','6'),('JoZ134',2,'ZoJ108','2'),('JPL227',2,'dTN154','Social Media Maerketing'),('JUe103',3,'0rV103','3'),('kHH225',4,'eV8152','Government'),('kJC177',3,'dYB134','Schools'),('kmX143',2,'wkB112','2'),('KU8200',3,'AAK142','Schools'),('lbB113',3,'o2z105','3'),('le9181',4,'cZA135','Government'),('lol119',4,'V83106','4'),('LvJ170',4,'P83131','Government'),('mAC174',5,'P83131','Linguist'),('MMX114',4,'o2z105','4'),('Mqv142',1,'wkB112','1'),('Mwb175',6,'P83131','freelancers'),('mWj218',4,'W9j151','Government'),('n2t107',3,'3Mg104','3'),('NiI168',3,'uiQ130','Schools'),('NMO111',1,'o2z105','1'),('Nnb198',5,'AAK142','Linguist'),('O5H149',6,'oZJ115','6'),('O9X141',4,'ZiN110','4'),('oBV140',2,'ZiN110','2'),('olo124',3,'V83106','3'),('oTC232',1,'4cJ157','Digital Marketing'),('P9C203',2,'B0D146','Social Media Maerketing'),('PF8135',3,'ZoJ108','3'),('PFB117',2,'V83106','2'),('Ps6207',6,'B0D146','freelancers'),('PVh211',2,'2jR149','Social Media Maerketing'),('QCr224',3,'eV8152','Schools'),('QGe128',3,'ZoJ108','3'),('qgf180',3,'cZA135','Schools'),('r5f162',1,'u3h128','Digital Marketing'),('rh9183',4,'477137','Government'),('rV3137',2,'ZiN110','2'),('rZl217',3,'W9j151','Schools'),('SHw185',2,'QZm138','Social Media Maerketing'),('SKf205',4,'B0D146','Government'),('sNY172',1,'P83131','Digital Marketing'),('Sxq210',5,'B0D146','Linguist'),('T9j191',2,'a9d141','Social Media Maerketing'),('TAk110',6,'3Mg104','6'),('tdv206',5,'B0D146','Linguist'),('txo208',3,'B0D146','Schools'),('V2b173',3,'P83131','Schools'),('Vwc195',3,'AAK142','Schools'),('vwd147',2,'oZJ115','2'),('VZe233',3,'4cJ157','Schools'),('W42219',5,'W9j151','Linguist'),('w6O212',4,'2jR149','Government'),('Wfe152',1,'fm1122','Digital Marketing'),('WT0101',1,'0rV103','1'),('X38167',2,'uiQ130','Social Media Maerketing'),('XRT130',1,'ZoJ108','1'),('xs2176',2,'dYB134','Social Media Maerketing'),('Xy1138',2,'ZiN110','2'),('YPl139',3,'ZiN110','3'),('Yte115',5,'o2z105','5'),('Z2Z187',3,'QZm138','Schools'),('zb4215',2,'wwp150','Social Media Maerketing'),('ziq199',6,'AAK142','freelancers');
/*!40000 ALTER TABLE `service_industries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_languages`
--

DROP TABLE IF EXISTS `service_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_languages` (
  `sl_id` varchar(255) NOT NULL,
  `language_id` int NOT NULL,
  `render_id` varchar(255) NOT NULL,
  `language_desc` varchar(255) DEFAULT NULL,
  `language_upload` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sl_id`),
  KEY `language_id` (`language_id`),
  KEY `render_id` (`render_id`),
  CONSTRAINT `service_languages_ibfk_1` FOREIGN KEY (`language_id`) REFERENCES `languages` (`language_id`),
  CONSTRAINT `service_languages_ibfk_2` FOREIGN KEY (`render_id`) REFERENCES `services_rendered` (`render_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_languages`
--

LOCK TABLES `service_languages` WRITE;
/*!40000 ALTER TABLE `service_languages` DISABLE KEYS */;
INSERT INTO `service_languages` VALUES ('064117',1,'ZoJ108','Hausa',NULL),('0E1136',1,'oZJ115','Hausa',NULL),('0Kc262',1,'B0D146','Hausa',NULL),('0MU249',3,'AAK142','Igbo',NULL),('0Rn146',7,'7MZ123','Hausa',NULL),('0TF285',4,'W9j151','Efik/Ibibio',NULL),('26K283',1,'W9j151','Hausa',NULL),('2a6118',1,'ZoJ108','Hausa',NULL),('2ix299',3,'dTN154','Igbo',NULL),('2JI265',2,'B0D146','Yoruba',NULL),('2Sp176',1,'uiQ130','Hausa',NULL),('2V8258',1,'B0D146','Hausa',NULL),('2Vx120',1,'ZoJ108','Hausa',NULL),('3ax214',5,'477137','Swalhili',NULL),('3B5113',1,'V83106','Hausa',NULL),('3DC108',3,'o2z105','Igbo',NULL),('3JY177',1,'uiQ130','Hausa',NULL),('3ks294',6,'eV8152','French',NULL),('3UL149',1,'7MZ123','Hausa',NULL),('3yp270',2,'B0D146','Yoruba',NULL),('429183',1,'P83131','Hausa',NULL),('4JN203',4,'cZA135','Efik/Ibibio',NULL),('4X1168',8,'u3h128','Hausa',NULL),('4zJ104',4,'3Mg104','Efik/Ibibio',NULL),('5jY208',4,'cZA135','Efik/Ibibio',NULL),('5Og167',5,'u3h128','Hausa',NULL),('6ak191',1,'P83131','Hausa',NULL),('6Bf157',5,'Xik126','Hausa',NULL),('6ht126',2,'wkB112','Yoruba',NULL),('6x4193',1,'P83131','Hausa',NULL),('7eZ282',1,'W9j151','Hausa',NULL),('7gh268',1,'B0D146','Hausa',NULL),('8JS173',3,'lWY129','Hausa',NULL),('8Mp105',4,'3Mg104','Efik/Ibibio',NULL),('8T8280',2,'wwp150','Yoruba',NULL),('94w205',1,'cZA135','Hausa',NULL),('9AG106',1,'o2z105','Hausa',NULL),('9Bm139',1,'oZJ115','Hausa',NULL),('9Lr235',3,'a9d141','Igbo',NULL),('9Mr298',1,'dTN154','Hausa',NULL),('9QK226',1,'QZm138','Hausa',NULL),('9yo229',1,'QZm138','Hausa',NULL),('ACJ217',1,'QZm138','Hausa',NULL),('aD0141',4,'fm1122','Hausa',NULL),('aeh296',2,'dTN154','Yoruba',NULL),('Ahe288',1,'eV8152','Hausa',''),('AMq137',1,'oZJ115','Hausa',NULL),('B89255',5,'AAK142','Swalhili',NULL),('bdH233',1,'a9d141','Hausa',NULL),('Bnk163',2,'Noc127','Hausa',NULL),('BU4272',1,'2jR149','Hausa',NULL),('bvH180',2,'uiQ130','Yoruba',NULL),('bXA158',4,'Xik126','Hausa',NULL),('c1w172',4,'lWY129','Hausa',NULL),('cc5225',3,'QZm138','Igbo',NULL),('ccD195',2,'P83131','Yoruba',NULL),('Ccu228',1,'QZm138','Hausa',NULL),('cdQ253',1,'AAK142','Hausa',NULL),('cgp155',1,'7MZ123','Hausa',NULL),('cHz210',1,'cZA135','Hausa',NULL),('CJC250',5,'AAK142','Swalhili',NULL),('cqJ293',1,'eV8152','Hausa',NULL),('CW7234',1,'a9d141','Hausa',NULL),('cWa110',5,'o2z105','Swalhili',NULL),('cXY237',1,'AAK142','Hausa',NULL),('dc0218',1,'QZm138','Hausa',NULL),('Ddv254',3,'AAK142','Igbo',NULL),('DEx295',7,'eV8152','Portuguese',NULL),('dhM131',1,'oZJ115','Hausa',NULL),('dL5264',1,'B0D146','Hausa',NULL),('DMv291',1,'eV8152','Hausa',NULL),('DTf186',1,'P83131','Hausa',NULL),('Dwb114',2,'V83106','Yoruba',NULL),('dwd259',1,'B0D146','Hausa',NULL),('Dzd123',1,'ZiN110','Hausa',NULL),('Ea8130',1,'wkB112','Hausa',NULL),('ekR303',3,'4cJ157','Igbo',NULL),('F53290',6,'eV8152','French',''),('f5z284',4,'W9j151','Efik/Ibibio',NULL),('f7y132',1,'oZJ115','Hausa',NULL),('FGF211',1,'477137','Hausa',NULL),('Fri267',1,'B0D146','Hausa',NULL),('ftg154',1,'7MZ123','Hausa',NULL),('FTS222',1,'QZm138','Hausa',NULL),('G5v174',1,'lWY129','Hausa',NULL),('gOq238',1,'AAK142','Hausa',NULL),('gSB287',1,'eV8152','Hausa',''),('gwa215',1,'477137','Hausa',NULL),('h43192',1,'P83131','Hausa',NULL),('hc0242',1,'AAK142','Hausa',NULL),('HcQ142',3,'fm1122','Hausa',NULL),('HFm151',1,'7MZ123','Hausa',NULL),('HMG241',1,'AAK142','Hausa',NULL),('Hn8179',3,'uiQ130','Igbo',NULL),('HtJ276',1,'wwp150','Hausa',NULL),('I2W124',1,'ZiN110','Hausa',NULL),('ia7181',1,'P83131','Hausa',NULL),('IkU185',2,'P83131','Yoruba',NULL),('iTx204',5,'cZA135','Swalhili',NULL),('J4H292',1,'eV8152','Hausa',NULL),('j8r128',1,'wkB112','Hausa',NULL),('jAd221',1,'QZm138','Hausa',NULL),('Jet224',1,'QZm138','Hausa',NULL),('K6t138',1,'oZJ115','Hausa',NULL),('KgL170',7,'u3h128','Hausa',NULL),('kHA178',1,'uiQ130','Hausa',NULL),('Kng188',1,'P83131','Hausa',NULL),('KUF122',1,'ZiN110','Hausa',NULL),('Kxn301',7,'dTN154','Portuguese',''),('LBG273',1,'2jR149','Hausa',NULL),('lCE165',3,'Noc127','Hausa',NULL),('Lg2243',1,'AAK142','Hausa',NULL),('LIa247',1,'AAK142','Hausa',NULL),('lPn244',3,'AAK142','Igbo',NULL),('lPs145',2,'fm1122','Hausa',NULL),('lqp260',2,'B0D146','Yoruba',NULL),('ltj190',2,'P83131','Yoruba',NULL),('LuO161',4,'Noc127','Hausa',NULL),('m5X223',1,'QZm138','Hausa',NULL),('m8M248',1,'AAK142','Hausa',NULL),('MF5147',1,'7MZ123','Hausa',NULL),('Mml201',1,'cZA135','Hausa',NULL),('mug266',1,'B0D146','Hausa',NULL),('nCk212',3,'477137','Igbo',NULL),('Nnl256',1,'B0D146','Hausa',NULL),('NP7278',1,'wwp150','Hausa',NULL),('NpE275',2,'2jR149','Yoruba',NULL),('nQW277',1,'wwp150','Hausa',NULL),('nt0279',1,'wwp150','Hausa',NULL),('NVa171',1,'lWY129','Hausa',NULL),('NW3143',5,'fm1122','Hausa',NULL),('oAR207',3,'cZA135','Igbo',NULL),('OKg134',1,'oZJ115','Hausa',NULL),('ON6251',1,'AAK142','Hausa',NULL),('OvA187',1,'P83131','Hausa',NULL),('Ovo236',1,'AAK142','Hausa',NULL),('P4J127',2,'wkB112','Yoruba',NULL),('p6s153',1,'7MZ123','Hausa',NULL),('PCC196',1,'dYB134','Hausa',NULL),('PDt232',1,'a9d141','Hausa',NULL),('PiM240',5,'AAK142','Swalhili',NULL),('pR7144',1,'fm1122','Hausa',NULL),('Pwh160',7,'Xik126','Hausa',NULL),('pyt263',1,'B0D146','Hausa',NULL),('qc4164',5,'Noc127','Hausa',NULL),('qNP102',2,'3Mg104','Yoruba',NULL),('qOh216',1,'QZm138','Hausa',NULL),('qR3227',1,'QZm138','Hausa',NULL),('qZQ198',4,'dYB134','Efik/Ibibio',NULL),('r0c162',6,'Noc127','Hausa',NULL),('r87257',1,'B0D146','Hausa',NULL),('RAj169',8,'u3h128','Hausa',NULL),('rgr286',1,'eV8152','Hausa',''),('rOf119',1,'ZoJ108','Hausa',NULL),('RRH156',9,'Xik126','Hausa',NULL),('RUl182',1,'P83131','Hausa',NULL),('Sn4230',3,'QZm138','Igbo',NULL),('sNw152',1,'7MZ123','Hausa',NULL),('Srg111',1,'V83106','Hausa',NULL),('SXr289',5,'eV8152','Swalhili',''),('Tkp269',1,'B0D146','Hausa',NULL),('TNe209',5,'cZA135','Swalhili',NULL),('ToG297',2,'dTN154','Yoruba',NULL),('TPi261',1,'B0D146','Hausa',NULL),('UbZ135',1,'oZJ115','Hausa',NULL),('UjM159',3,'Xik126','Hausa',NULL),('uKG231',1,'a9d141','Hausa',NULL),('UrF197',3,'dYB134','Igbo',NULL),('UZb107',2,'o2z105','Yoruba',NULL),('v26148',1,'7MZ123','Hausa',NULL),('v6w239',3,'AAK142','Igbo',NULL),('V74202',3,'cZA135','Igbo',NULL),('vC7302',5,'4cJ157','Swalhili',NULL),('Vcy140',1,'oZJ115','Hausa',NULL),('VIT175',1,'lWY129','Hausa',NULL),('VnL101',1,'3Mg104','Hausa',NULL),('vqL189',3,'P83131','Igbo',NULL),('vUJ116',1,'ZoJ108','Hausa',NULL),('vZ3150',1,'7MZ123','Hausa',NULL),('WaL271',1,'2jR149','Hausa',NULL),('Wbv274',1,'2jR149','Hausa',NULL),('wDd219',1,'QZm138','Hausa',NULL),('WjQ133',1,'oZJ115','Hausa',NULL),('WLE246',1,'AAK142','Hausa',NULL),('Wmx300',6,'dTN154','French',''),('Wqp220',3,'QZm138','Igbo',NULL),('wxe200',1,'dYB134','Hausa',NULL),('X27281',1,'W9j151','Hausa',NULL),('xpT199',5,'dYB134','Swalhili',NULL),('XRR206',1,'cZA135','Hausa',NULL),('xvn103',3,'3Mg104','Igbo',NULL),('yhM213',4,'477137','Efik/Ibibio',NULL),('yiR166',2,'u3h128','Hausa',NULL),('yla125',1,'ZiN110','Hausa',NULL),('yO4109',4,'o2z105','Efik/Ibibio',NULL),('yse115',2,'V83106','Yoruba',NULL),('Ytx252',1,'AAK142','Hausa',NULL),('ZBi112',1,'V83106','Hausa',NULL),('zc8245',5,'AAK142','Swalhili',NULL),('zK7129',1,'wkB112','Hausa',NULL),('zOb194',3,'P83131','Igbo',NULL),('zWP184',3,'P83131','Igbo',NULL),('ZYg121',1,'ZiN110','Hausa',NULL);
/*!40000 ALTER TABLE `service_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_type_pricing`
--

DROP TABLE IF EXISTS `service_type_pricing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_type_pricing` (
  `pricing_id` varchar(255) NOT NULL,
  `pricing_type_id` varchar(255) NOT NULL,
  `type_id` varchar(255) NOT NULL,
  PRIMARY KEY (`pricing_id`),
  KEY `pricing_type_id` (`pricing_type_id`),
  KEY `type_id` (`type_id`),
  CONSTRAINT `service_type_pricing_ibfk_1` FOREIGN KEY (`pricing_type_id`) REFERENCES `pricing_types` (`pricing_type_id`),
  CONSTRAINT `service_type_pricing_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `service_types` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_type_pricing`
--

LOCK TABLES `service_type_pricing` WRITE;
/*!40000 ALTER TABLE `service_type_pricing` DISABLE KEYS */;
INSERT INTO `service_type_pricing` VALUES ('sth102','PerWord101','ST102'),('sth103','PerWord101','ST104'),('stm104','PerWord101','ST103'),('stm105','PerHour102','ST103'),('stm106','PerMin103','ST103'),('stw101','PerWord101','ST101');
/*!40000 ALTER TABLE `service_type_pricing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_types`
--

DROP TABLE IF EXISTS `service_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_types` (
  `type_id` varchar(255) NOT NULL,
  `type_name` varchar(255) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_types`
--

LOCK TABLES `service_types` WRITE;
/*!40000 ALTER TABLE `service_types` DISABLE KEYS */;
INSERT INTO `service_types` VALUES ('ST101','Translation Service','2022-11-10 10:35:00'),('ST102','Interpretation Service','2022-11-10 10:35:00'),('ST103','Voiceover Service','2022-11-10 10:35:00'),('ST104','Transcribing Service','2022-11-10 10:35:00');
/*!40000 ALTER TABLE `service_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_vc`
--

DROP TABLE IF EXISTS `service_vc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_vc` (
  `vc_id` varchar(255) NOT NULL,
  `voice_id` int NOT NULL,
  `render_id` varchar(255) NOT NULL,
  `other_info` text,
  PRIMARY KEY (`vc_id`),
  KEY `voice_id` (`voice_id`),
  KEY `render_id` (`render_id`),
  CONSTRAINT `service_vc_ibfk_1` FOREIGN KEY (`voice_id`) REFERENCES `voice_capabilities` (`voice_id`),
  CONSTRAINT `service_vc_ibfk_2` FOREIGN KEY (`render_id`) REFERENCES `services_rendered` (`render_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_vc`
--

LOCK TABLES `service_vc` WRITE;
/*!40000 ALTER TABLE `service_vc` DISABLE KEYS */;
/*!40000 ALTER TABLE `service_vc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services_rendered`
--

DROP TABLE IF EXISTS `services_rendered`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services_rendered` (
  `render_id` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `type_id` varchar(255) NOT NULL,
  `experience_in_years` varchar(255) DEFAULT NULL,
  `other_info` text,
  PRIMARY KEY (`render_id`),
  KEY `user_id` (`user_id`),
  KEY `type_id` (`type_id`),
  CONSTRAINT `services_rendered_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `services_rendered_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `service_types` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services_rendered`
--

LOCK TABLES `services_rendered` WRITE;
/*!40000 ALTER TABLE `services_rendered` DISABLE KEYS */;
INSERT INTO `services_rendered` VALUES ('0rV103',13,'ST101','5','https://mylink.comp'),('2jR149',42,'ST101','2','https://github.com/EryBody'),('3Mg104',14,'ST101','4','httpss://mylink.comp'),('477137',36,'ST101','2','https://github.com/EryBody/'),('4cJ157',48,'ST104','1','httpss://github.com/EryBody'),('7MZ123',29,'ST104','1',''),('a3G109',20,'ST102','1','hitps://mylink.com'),('a9d141',39,'ST101','3','https://github.com/EryBody/iVoiceAfrica-frontend'),('AAK142',41,'ST101','2','https://github.com/EryBody'),('amc107',18,'ST102','2','https://mylink.com'),('AYr101',11,'ST101','2','https://mylink.comp'),('B0D146',42,'ST101','2','https://github.com/EryBody'),('b8O113',22,'ST102','1','https://mylink.com'),('cca125',29,'ST103','1',''),('CeE147',42,'ST101','2','https://github.com/EryBody'),('cZA135',36,'ST101','2','https://github.com/EryBody/'),('dTN154',48,'ST101','1','httpss://github.com/EryBody'),('dYB134',36,'ST101','2','https://github.com/EryBody/'),('EKK155',48,'ST102','1','httpss://github.com/EryBody'),('eV8152',43,'ST103','3','https://github.com/EryBody/'),('fm1122',29,'ST102','1','httpss://mylink.com'),('FuB145',41,'ST101','2','https://github.com/EryBody'),('gNK118',25,'ST101','1','httpsstps://mylink.com'),('I2E153',43,'ST104','4','https://github.com/EryBody'),('jaT148',42,'ST101','2','https://github.com/EryBody'),('lWY129',33,'ST102','3','https://github.com/EryBody'),('n0r144',41,'ST101','2','https://github.com/EryBody'),('N6a111',21,'ST102','1','https://mylink.com'),('Noc127',32,'ST101','4','https://mylink.com'),('NsS143',41,'ST101','2','https://github.com/EryBody'),('NZH121',28,'ST101','1','https://mylink.com'),('o2z105',15,'ST101','5','https://mylink.comp'),('OfX102',12,'ST101','5','https://mylink.comp'),('oZJ115',24,'ST101','3','httpstps://mylink.com'),('P83131',34,'ST101','2','https://github.com/EryBody/'),('piL120',27,'ST101','1','httpsssstps://mylink.com'),('PlT117',24,'ST103','1','https://mylink.com'),('QZm138',39,'ST101','3','https://github.com/EryBody/iVoiceAfrica-frontend'),('sJK119',26,'ST101','1','httpssstps://mylink.com'),('SK6136',36,'ST101','2','https://github.com/EryBody/'),('u3h128',33,'ST101','3','https://github.com/EryBody'),('UHH116',24,'ST102','1','https://mylink.com'),('uiQ130',34,'ST101','2','https://github.com/EryBody/'),('V83106',18,'ST101','2','https://mylink.comp'),('V8M124',29,'ST101','1','httpss://mylink.com'),('VD2140',39,'ST101','3','https://github.com/EryBody/iVoiceAfrica-frontend'),('W9j151',43,'ST102','2','https://github.com/EryBody/'),('wkB112',22,'ST101','1','https://mylink.com'),('wwp150',43,'ST101','1','https://github.com/EryBody'),('xCD133',34,'ST101','2','https://github.com/EryBody/'),('Xik126',31,'ST101','2','https://mylink.com'),('ytp156',48,'ST103','1','httpss://github.com/EryBody'),('YX1139',39,'ST101','3','https://github.com/EryBody/iVoiceAfrica-frontend'),('ZiN110',21,'ST101','1','https://mylink.com'),('ZKg114',22,'ST101','1','https://mylink.com'),('zN5132',34,'ST101','2','https://github.com/EryBody/'),('ZoJ108',20,'ST101','1','httpssps://mylink.compp');
/*!40000 ALTER TABLE `services_rendered` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_id`
--

DROP TABLE IF EXISTS `trans_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trans_id` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_id`
--

LOCK TABLES `trans_id` WRITE;
/*!40000 ALTER TABLE `trans_id` DISABLE KEYS */;
INSERT INTO `trans_id` VALUES (1);
/*!40000 ALTER TABLE `trans_id` ENABLE KEYS */;
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
  KEY `FKh8ciramu9cc9q3qcqiv4ue8a6` (`role_id`),
  KEY `FKhfh9dx7w3ubf1co1vdev94g3f` (`user_id`),
  CONSTRAINT `FKh8ciramu9cc9q3qcqiv4ue8a6` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`),
  CONSTRAINT `FKhfh9dx7w3ubf1co1vdev94g3f` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,1),(2,2),(3,3),(4,4),(5,4),(9,4),(10,4),(11,4),(12,4),(13,4),(14,4),(15,4),(16,3),(17,3),(18,4),(19,4),(20,4),(21,4),(22,4),(23,4),(24,4),(25,4),(26,4),(27,4),(28,4),(29,4),(30,4),(31,4),(32,4),(33,4),(34,4),(35,3),(36,4),(37,3),(38,3),(39,4),(40,3),(41,4),(42,4),(43,4),(46,1),(47,3),(48,4);
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
  `username` varchar(255) NOT NULL,
  `upassword` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `gender` char(10) DEFAULT NULL,
  `country` varchar(255) NOT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `address` text,
  `phone` varchar(50) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `summary` text,
  `education` varchar(255) DEFAULT NULL,
  `user_status_id` int NOT NULL,
  `profile_picture` text,
  `modified_date` datetime DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `user_status_id` (`user_status_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`user_status_id`) REFERENCES `users_status` (`user_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'tom@gmail.com','$2a$10$dZ/AzyBRozu.GEhQDUlruub/p.PTBpfA7pSmtHkRI3cTlTSJgVIU.','Tom','Smith','Gabby','Male','Nigeria','Nigerian','No 3 Fassy Adesina','08102578666','tom@gmail.com','Tom is a man','BSC',2,'tom@gmail.com_profilepicture','2022-10-30 00:00:00','2022-10-30 11:07:00','100001'),(2,'presh@gmail.com','$2a$12$tYL/N5ZA2DZ2efrlC.4Hm.yrFnxoTPFkiXTxDqKdiL6/jkCFPXOGy','Presh','Mick','Liam','Male','Nigeria','Nigerian','No 3 Fassy Adesina','08102578666','tom@gmail.com','Tom is a man','BSC',2,'tom@gmail.com_profilepicture','2022-10-30 00:00:00','2022-10-30 11:07:00','100001'),(3,'liam@gmail.com','$2a$12$tYL/N5ZA2DZ2efrlC.4Hm.yrFnxoTPFkiXTxDqKdiL6/jkCFPXOGy','Laim','Lane','Bruce','Male','Nigeria','Nigerian','No 3 Fassy Adesina','08102578666','tom@gmail.com','Tom is a man','BSC',2,'tom@gmail.com_profilepicture','2022-10-30 00:00:00','2022-10-30 11:07:00','100001'),(4,'bukky@gmail.com','$2a$10$ICstN/JSViniEr8zYX2TOuQDKhEf3cHIc2C0BkyrCGYmNHlENS9RW','Bukky','Ade','Bimpe','Select','Nigeria','Nigerian','No 3, Fassy Adesina','08102578667','tom@gmail.com','Tom is a man','BSC',2,'tom@gmail.com_profilepicture','2022-10-30 00:00:00','2022-10-30 11:07:00','100001'),(5,'jimmy@gmail.com','$2a$10$OKGHL3p6F.Uq4ySXTrLq/uOm2jD4i7PsJ9QSnFKVEFVf2QcW92wry','Tom','Precious','','Male','Nigeria','Nigerian','No 3, fassy adesina street','08102578666','tom@gmail.com','Headline','',2,'logo-dark-removebg-preview.png','2022-11-09 21:58:15','2022-11-09 21:58:15','100001'),(9,'nnamdiObi@gmail.com','$2a$10$gnumWChTAhxdEpwNzd75AuNNW4CbuaVsJnU/UBCxjtyLNHLzLeY/G','Nnamdi','Obi','','Male','Nigeria','Nigerian','3 Fassy Street','08102578666','nnamdiObi@gmail.com','Headline','',2,'IMG_E4DB348353A1-1.jpeg','2022-11-12 08:51:42','2022-11-12 08:51:42','100001'),(10,'madu@gmail.com','$2a$10$oiwlunH6Fb0VUMC99dcs9OhT86cJN2J3rE9S.DS.7HFq.PU3MP036','Ekwere','Madu','','Male','Nigerian','Nigerian','No 3, Fassy Adesina ','08102578666','madu@gmail.com','Madu Headline','',2,'IMG_E4DB348353A1-1.jpeg','2022-11-12 08:53:50','2022-11-12 08:53:50','100001'),(11,'ptrObi@gmail.com','$2a$10$QTfd3.07t0uJy2nlQs7j6eHqxtlNrmEbc4a4c2ccPqd50GF.3OmIe','Peter','Obi','','Female','Nigerian','Nigerian','No 4, Fassy Adesina Street','08125006919','ptrObi@gmail.com','Peter Obi Headline','',2,'IMG_E4DB348353A1-1.jpeg','2022-11-12 08:56:16','2022-11-12 08:56:16','100001'),(12,'bbOmori@gmail.com','$2a$10$F2W4o.K2pQki7rkdGpOzOORHfSI1YgOzTZDQfzt0TsHRDIjfZ18pa','BB','Omori','','Male','Nigerian','Nigerian','No 2, Fassy Adesina Street','08102578666','bbOmori@gmail.com','bbOmori Headline','',2,'logo-white-removebg-preview.png','2022-11-13 08:19:23','2022-11-13 08:19:23','100001'),(13,'omori@gmail.com','$2a$10$ciOb5cMO8U9JseOetFIQ3OYMcrS8IW7tPaLqsNCoEVmF0nhbTpCPW','TT','Omori','','Male','Nigeria','Nigerian','No 2, Fassy Adesina Street','08102578666','omori@gmail.com','ttOmoriHeadline','',2,'IMG_E4DB348353A1-1.jpeg','2022-11-13 08:33:40','2022-11-13 08:33:40','100001'),(14,'ppOmori@gmail.com','$2a$10$Gy82M0CxIXjs83DN4dA8QOjjvBQaObrnCbhBKkMxzTRY6nN.ZJTRm','PP','Omori','','Male','Nigeria','Nigerian','No 2, Fassy Adesina Street','08102578666','ppOmori@gmail.com','ppOmori Headline','',2,'IMG_E4DB348353A1-1.jpeg','2022-11-13 08:54:50','2022-11-13 08:54:50','10001'),(15,'ggOmori@gmail.com','$2a$10$Mn2OZ0eDSrPTlqk4D1xkXOPMwRMozOJ6DHzWA5irYNfPWdiJoi59i','GG','Omori','','Male','Nigeria','Nigerian','No 2,Fassy Adesina Street','08102578666','ggOmori@gmail.com','GG Omori Headline','',2,'IMG_E4DB348353A1-1.jpeg','2022-11-13 09:05:20','2022-11-13 09:05:20','100001'),(16,'johndoe@gmail.com','$2a$10$DkvkeirNRAY/kqzvnP5dLeragxiNwqDHNf94r/AL1ilnfk39Wyl9u','John','Doe','','Male','Nigeria','Nigerian','No 2, Fassy Adesina Street','08102578666','johndoe@gmail.com','','',2,'pic.jpg','2022-11-13 15:46:27','2022-11-13 15:46:27','100001'),(17,'lookman@gmail.com','$2a$10$IN.ldzMkPzTCngn2G3lsTOqea7pWFIYcase5aITHi8dA2vH4DBsju','Lookman','Doe','','Male','Nigeria','Nigerian','No 2, Fassy Adesina Street','08102578666','lookman@gmail.com','','',2,'pic.jpg','2022-11-16 00:24:31','2022-11-16 00:24:31','10001'),(18,'alicia@gmail.com','$2a$10$WW6rQpDf7ocBzS5tgTkm2uTY7oj44PY0QbBR3yiYR6hHwO28sqp3a','Alicia','Klara','','Female','Nigeria','Nigerian','No 3, Fassy Adesina Street','08102578666','alicia@gmail.com','Alicia Headline','',2,'pic.jpg','2022-11-16 00:29:55','2022-11-16 00:29:55','100001'),(19,'ppOmori@gmail.com','$2a$10$LKiRqDamfTcjCLlPJ6M6JeJCiD3JWsJmJKWHUJalWeWC03poDWMBi','pp','Omori','','Female','Nigeria','Nigerian','No 2, Fassy Adesina Street','08102578666','ppOmori@gmail.com','PP Headline','',2,'pic.jpg','2022-11-16 07:55:28','2022-11-16 07:55:28','100001'),(20,'llOmori@gmail.com','$2a$10$nq94xCzT/jahwuEhpxFc8Op4ee.18J1uKpBp8MxIWgD9XRvaqnN36','LL','Omori','','Male','Nigeria','Nigerian','No 2, Fassy Adesina','08102578666','llOmori@gmail.com','LL Omori','',2,'pic.jpg','2022-11-16 08:00:43','2022-11-16 08:00:43','100001'),(21,'pre@gmail.com','$2a$10$4MLFn3Hj02IrUP4JKWgfn.r/OyNij5SYlwoXEHFvnxVUa5pHG06Fq','Pre','Thompson','','Male','Nigeria','Nigerian','No 2, Fassy Adesina Street','08102578666','pre@gmail.com','Pre Headline','',2,'pic.jpg','2022-11-16 08:35:46','2022-11-16 08:35:46','10001'),(22,'koprecious@gmail.com','$2a$10$Ero3DW4D018hoyy476baL.wQZSNgayhC2rflrpRDoklVDuDjwoZS.','KO','Precious','','Male','Nigeria','Peru','No 2 Kin Street','08102578666','koprecious@gmail.com','Ko Headline','',2,'IMG_E4DB348353A1-1.jpeg','2022-11-16 08:49:44','2022-11-16 08:49:44','10001'),(23,'koprecious@gmail.com','$2a$10$YO/yu1cN33pkuxvkW/hrK.ZmMU3nDEURMYZrWE2L/TJjRnOZkujQa','KO','Precious','','Male','Nigeria','Peru','No 2 Kin Street','08102578666','koprecious@gmail.com','','',2,'tom@gmail.com','2022-11-16 08:49:47','2022-11-16 08:49:47','10001'),(24,'irpre@gmail.com','$2a$10$hMnj41.qBqZqB4AQUJfWM.mqEwufwZ/YgobuICbcNKv9/ZswUw9Sa','IR','Precious','','Male','Nigeria','Nigerian','No 2, Fassy Adesina','100001','irpre@gmail.com','IR Precious','',2,'IMG_E4DB348353A1-1.jpeg','2022-11-16 11:26:36','2022-11-16 11:26:36','10001'),(25,'feel@gmail.com','$2a$10$61p2eeHVKt7.ikJg0pPpuuLbHC45aX73kblfzLOx4tnypBd5PdoX2','Feel','Gray','','Male','Nigeria','Nigerian','No 2 , Fassy Adesina','08102578666','feel@gmail.com','heading','',2,'IMG_E4DB348353A1-1.jpeg','2022-11-16 12:05:51','2022-11-16 12:05:51','100001'),(26,'test1tom@gmail.com','$2a$10$WV1idEO6/dZyIwbyjv6PJu3nyqN7g2rrMILTwyKrAh3xc2JmucRMy','Test1','tom','','Male','Nigeria','Nigerian','No 2, Fassy Adesina ','08102578666','test1tom@gmail.com','test1','',2,'IMG_E4DB348353A1-1.jpeg','2022-11-16 12:44:08','2022-11-16 12:44:08','10001'),(27,'Ricky@gmail.com','$2a$10$SNQss5QvKVs7AT2kJW876ekFGrDMJaJ1DfT19MRcwhWLdY1RM3IEG','Ricky','Quan','','Female','Nigeria','Nigerian','No 2, Fassy Adeniran','08102578666','Ricky@gmail.com','Ricky Headline','',2,'IMG_E4DB348353A1-1.jpeg','2022-11-16 14:33:29','2022-11-16 14:33:29','100001'),(28,'BuckyTom@gmail.com','$2a$10$fs9AVbBpZqNM0wDfB.r9lOhrIs2ozQ7snIaS2c2NDN6hsQ4m8bbKG','Bucky','Tom','','Female','Nigeria','Nigerian','No 2, Fassy Adesina ','08102578666','BuckyTom@gmail.com','Bucky Headline','',2,'IMG_E4DB348353A1-1.jpeg','2022-11-16 14:40:58','2022-11-16 14:40:58','100001'),(29,'GubbyTom@gmail.com','$2a$10$.VhfgtVyLU6r4xJF/3YKKeewleWidJuBWn333xEdy.4EvBMxRO3SK','Gubby','Precious','','Male','Nigeria','Nigerian','No 2, Fassy Adesina Strret','08102578666','GubbyTom@gmail.com','Headline','',2,'IMG_E4DB348353A1-1.jpeg','2022-11-16 15:01:56','2022-11-16 15:01:56','100001'),(30,'GubbyTom@gmail.com','$2a$10$OJrHf1rf1Si2pTdwgOSNBuifGQgVqpuOBs8fp6Efc1IcxYftZ4iqi','Gubby','Thompson','','Male','Nigeria','Nigerian','No 2, Fassy Adesina Strret','08102578666','GubbyTom@gmail.com','Buggy Headline','',2,'IMG_E4DB348353A1-1.jpeg','2022-11-16 15:07:03','2022-11-16 15:07:03','100001'),(31,'don@gmail.com','$2a$10$HwBSSB.tdyuNwZJnaAKjgeDKXmOHOsbQ8hHpKKlpqxUYWlfijJl.m','Don','Pedro','','Male','Nigeria','Nigerian','No 2, Fassy adesina street','08102578666','don@gmail.com','Don Headline','',2,'IMG_E4DB348353A1-1.jpeg','2022-11-17 22:58:04','2022-11-17 22:58:04','100001'),(32,'DonMuna@gmail.com','$2a$10$UTIoO6QaAHEjmOcolVGkEuThx1jdk5hNehrqoepHsuuIJw.RGr6UG','Don','Muna','','Female','Nigeria','Nigerian','No 2, Fassy Adesina Street','08102578666','DonMuna@gmail.com','Donmuna Headline','',2,'IMG_E4DB348353A1-1.jpeg','2022-11-17 23:03:49','2022-11-17 23:03:49','100001'),(33,'donpre@gmail.com','$2a$10$vDdLcYjOle5PdoS/NrKAXe4Zl9Zik7.9W/oDVWcifW7/9MzG.wFda','Don','Pre','','Male','Nigeria','Nigerian','No 2, Fassy Adesina Street','08102578666','donpre@gmail.com','Donpre headline','',2,'IMG_E4DB348353A1-1.jpeg','2022-11-17 23:11:45','2022-11-17 23:11:45','100001'),(34,'rita.ipheghe@gmail.com','$2a$10$g1XX.ZpPzxObs6Y9IuDlgufYa6mMy2NnCmIgcYNpsDlv.2JUQVPdW','Ochuko','Ipheghe','','Male','Nigeria','Nigerian','Oshodi Avenue, dolphin estate','08102578666','rita.ipheghe@gmail.com','Ochkoko Ipheghe Summary','',2,'pic.jpg','2022-12-02 21:05:45','2022-12-02 21:05:45','100001'),(35,'tp@gmail.com','$2a$10$6ohgGpUP4cERaOITgyTz8uRcTCxe1VOUp9eXTqsRGUfuW33kTp.He','Tom','Precious','','Male','Nigeria','Nigerian','No 2 , Adetola street, lagos','08102578666','tp@gmail.com','','',2,'LWScreenShot 2022-12-12 at 1.08.44 PM.png','2022-12-12 19:55:27','2022-12-12 19:55:27','100001'),(36,'genzee@gmail.com','$2a$10$0AWvIgglMsJepUahUi1tfuzFWYtPoW8mhN.3jpazDYBCJUAEnpxv6','Christian','Nwankwo','','Male','Nigeria','Nigerian','1360 N 73rd Way, Hollywood, Florida City','08102578666','genzee@gmail.com','i am a entrepreneur specialized in translating','',2,'pic.jpg','2022-12-19 18:53:06','2022-12-19 18:53:06','33024'),(37,'chima@gmail.com','$2a$10$Ohb9nK/UvB5NOV8ddtNOLuNUbi1j5aAHpNj5.AuaLTilQcIOGfrXu','Chima','Joe','','Male','Nigeria','Nigerian','No 3, Fassy Adesina Street','08102578666','chima@gmail.com','','',2,'pic.jpg','2023-01-04 22:11:07','2023-01-04 22:11:07','100001'),(38,'rich@gmail.com','$2a$10$S58sSambQ5zQnie.ZJX2qO1IjOLrs3iB.yNA/eoGX5v65WQyL8eLe','Rich','Mond','','Male','Nigerian','Nigeria','No 2, Fassy Adesina Street','08102578666','rich@gmail.com','','',2,'IMG_1922.JPG','2023-01-08 20:14:25','2023-01-08 20:14:25','10001'),(39,'richy@gmail.com','$2a$10$cGtzPrqneHS0eMFz1xlgYOqR46RkIueeCPZk8dIIHzud042bnAKti','Richy','Mond','','Male','Nigerian','Nigerian','No 3, Fassy adesina street','08102578666','richy@gmail.com','I am a translator and voice over artist.','',2,'IMG_1922.JPG','2023-01-08 20:19:50','2023-01-08 20:19:50','100001'),(40,'Daniel@gmail.com','$2a$10$4rCKKguy8sYViIQz/NpXVel240jaL83TWhOznHQ8kH80K.bw8k0yG','Daniel','Onazi','','Male','Nigeria','Nigerian','No 2, Fassy adesina street','08102578666','Daniel@gmail.com','','',2,'IMG_1922.JPG','2023-01-10 23:40:12','2023-01-10 23:40:12','100001'),(41,'mabel@gmail.com','$2a$10$TS5zLcDDqj0Qk8gbjU5DjuglK0IfwwuWEzxqslCccGzDTVXcRPvoi','Mabel','Onazi','','Female','Nigeria','Nigerian','No 2 Fassy Adesina Streeg','08102578666','mabel@gmail.com','Hi, my name is Mabel Onazi','',2,'IMG_1922.JPG','2023-01-10 23:49:06','2023-01-10 23:49:06','100001'),(42,'thomas@gmail.com','$2a$10$AKTLV4XXZWBNSYSP0PHZtuUCMra74btJk.9IPj2rbfFgFd.x9XglK','Thomas','Partey','','Male','Nigeria','Nigerian','No 2, Fassy Adesina Street','08102578666','thomas@gmail.com','My Name is Thomas partey','',2,'pic.jpg','2023-01-17 22:18:31','2023-01-17 22:18:31','100001'),(43,'sean@gmail.com','$2a$10$SpZbPupTjbq/xxB4/kysx.gIDPFKUkqta6luzH2ZnMNo7nHyh31U6','Sean','Micheal','','Male','USA','American','4 Huston, block 5','08102579888','sean@gmail.com','My Name is Sean Micheal','',2,'id card.jpeg','2023-01-17 23:39:56','2023-01-17 23:39:56','120001'),(46,'tom2@gmail.com','$2a$10$ObuZowLX2aQrw4bUUmZFfeQHgXikFZIeZBcsnN2qpK1a40QaC7yau','Tommy','Shelby','John','Male','Nigeria','Nigerian','No 2, Fassy Adesina Street','08102578666','tom2@gmail.com','This is an admin page','',2,'','2023-01-19 20:30:22','2023-01-19 20:30:22','110001'),(47,'favour@gmail.com','$2a$10$9eDcAEueVs3MvoYAikawhemMAPCufLdOR8QY/VIETkIrWvI8l2aPS','Favour','Obi','','Male','Nigeria','Nigerian','08102578666','08102578666','favour@gmail.com','','',2,'pic.jpg','2023-01-25 19:08:47','2023-01-25 19:08:47','100001'),(48,'faith@gmail.com','$2a$10$UznFM.POI3nYAyfREXakOeJIfF34Ulls8k8icVN.vVJ.P21YuaYai','Faith','Obi','','Male','Nigeria','Nigerian','No 2, Fassy adesina Street','08102578666','faith@gmail.com','I am faithful','',2,'pic.jpg','2023-01-25 19:20:28','2023-01-25 19:20:28','100001');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_status`
--

LOCK TABLES `users_status` WRITE;
/*!40000 ALTER TABLE `users_status` DISABLE KEYS */;
INSERT INTO `users_status` VALUES (1,'Pending'),(2,'Active'),(3,'Suspended'),(4,'Blocked'),(5,'Deactivated'),(6,'Busy'),(7,'Away');
/*!40000 ALTER TABLE `users_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voice_capabilities`
--

DROP TABLE IF EXISTS `voice_capabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voice_capabilities` (
  `voice_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `sl_id` varchar(255) NOT NULL,
  `voice_document` text,
  `voice_desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`voice_id`),
  KEY `user_id` (`user_id`),
  KEY `sl_id` (`sl_id`),
  CONSTRAINT `voice_capabilities_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `voice_capabilities_ibfk_2` FOREIGN KEY (`sl_id`) REFERENCES `service_languages` (`sl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voice_capabilities`
--

LOCK TABLES `voice_capabilities` WRITE;
/*!40000 ALTER TABLE `voice_capabilities` DISABLE KEYS */;
/*!40000 ALTER TABLE `voice_capabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voice_id`
--

DROP TABLE IF EXISTS `voice_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voice_id` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voice_id`
--

LOCK TABLES `voice_id` WRITE;
/*!40000 ALTER TABLE `voice_id` DISABLE KEYS */;
INSERT INTO `voice_id` VALUES (1);
/*!40000 ALTER TABLE `voice_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_attachments`
--

DROP TABLE IF EXISTS `wo_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_attachments` (
  `wo_attach_id` varchar(255) NOT NULL,
  `work_id` varchar(255) NOT NULL,
  `source_language` varchar(255) DEFAULT NULL,
  `destination_language` varchar(255) DEFAULT NULL,
  `description` text,
  `link_media_file` text,
  `page_count` varchar(255) DEFAULT NULL,
  `word_count` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`wo_attach_id`),
  KEY `work_id` (`work_id`),
  CONSTRAINT `wo_attachments_ibfk_1` FOREIGN KEY (`work_id`) REFERENCES `work_orders` (`work_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_attachments`
--

LOCK TABLES `wo_attachments` WRITE;
/*!40000 ALTER TABLE `wo_attachments` DISABLE KEYS */;
INSERT INTO `wo_attachments` VALUES ('6lZ101','U65104','2','2','Description','National Open University of Nigeria.m4a',NULL,NULL),('b1a105','j1u102','3','4','Description','Kofo Abayomi Road.m4a','2','100'),('e3x103','U65104','2','4','Description','Kofo Abayomi Road.m4a',NULL,NULL),('g4Z104','j1u102','2','3','Description','National Open University of Nigeria.m4a','4','3'),('HxP106','Wkn103','2','4','Description','Kofo Abayomi Road.m4a',NULL,NULL),('MAX102','U65104','3','2','Description','Kofo Abayomi Road.m4a',NULL,NULL),('Pd6107','Wkn103','2','3','Description','Kofo Abayomi Road.m4a',NULL,NULL),('swF109','gLi104','8','9','Description','New Recording.m4a','50','100'),('v5B108','gLi104','6','7','Description','Kofo Abayomi Road.m4a','10','200');
/*!40000 ALTER TABLE `wo_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_delivery`
--

DROP TABLE IF EXISTS `wo_delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_delivery` (
  `delivery_id` varchar(255) NOT NULL,
  `work_id` varchar(255) NOT NULL,
  `client_user_id` varchar(255) DEFAULT NULL,
  `user_id` int NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `delivery_status_id` int NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `completed_date` datetime DEFAULT NULL,
  PRIMARY KEY (`delivery_id`),
  KEY `work_id` (`work_id`),
  KEY `user_id` (`user_id`),
  KEY `delivery_status_id` (`delivery_status_id`),
  CONSTRAINT `wo_delivery_ibfk_1` FOREIGN KEY (`work_id`) REFERENCES `work_orders` (`work_id`),
  CONSTRAINT `wo_delivery_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `wo_delivery_ibfk_3` FOREIGN KEY (`delivery_status_id`) REFERENCES `delivery_status` (`delivery_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_delivery`
--

LOCK TABLES `wo_delivery` WRITE;
/*!40000 ALTER TABLE `wo_delivery` DISABLE KEYS */;
INSERT INTO `wo_delivery` VALUES ('Adw103','U65104','3',31,5000.00,12,'2022-11-30','2023-03-31','2022-11-30 02:03:34','2022-11-30 02:03:34'),('bce102','U65104','3',32,7000.00,9,'2022-11-30','2023-03-31','2022-11-30 02:00:00','2022-11-30 02:03:34'),('Dn1104','j1u102','37',33,1000.00,9,'2023-01-07','2023-03-07','2023-01-07 11:16:53',NULL),('J6V106','gLi104','47',48,100.00,9,'2023-01-25','2023-04-25','2023-01-25 19:30:33',NULL),('pSR105','Wkn103','40',41,1000.00,9,'2023-01-11','2023-03-11','2023-01-11 00:46:50',NULL),('TK4101','U65104','3',33,6000.00,5,'2022-11-30','2022-12-07','2022-11-30 01:52:00','2022-11-30 02:03:34');
/*!40000 ALTER TABLE `wo_delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_status_id`
--

DROP TABLE IF EXISTS `wo_status_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_status_id` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_status_id`
--

LOCK TABLES `wo_status_id` WRITE;
/*!40000 ALTER TABLE `wo_status_id` DISABLE KEYS */;
INSERT INTO `wo_status_id` VALUES (1);
/*!40000 ALTER TABLE `wo_status_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_status_type`
--

DROP TABLE IF EXISTS `wo_status_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_status_type` (
  `wo_status_id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`wo_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_status_type`
--

LOCK TABLES `wo_status_type` WRITE;
/*!40000 ALTER TABLE `wo_status_type` DISABLE KEYS */;
INSERT INTO `wo_status_type` VALUES (1,'Pending'),(2,'Completed'),(3,'Declined'),(4,'Reviewing'),(5,'In Progress'),(6,'Corrections'),(7,'Freelancer Searching'),(9,'Finished'),(12,'Forward to client');
/*!40000 ALTER TABLE `wo_status_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_escrow_transactions`
--

DROP TABLE IF EXISTS `work_escrow_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `work_escrow_transactions` (
  `trans_id` int NOT NULL AUTO_INCREMENT,
  `client_id` int NOT NULL,
  `freelancer_id` int NOT NULL,
  `work_id` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `isReleased` tinyint(1) DEFAULT NULL,
  `released_date` datetime DEFAULT NULL,
  `funding_date` datetime DEFAULT NULL,
  `entry_date` varchar(255) DEFAULT NULL,
  `is_released` bit(1) DEFAULT NULL,
  PRIMARY KEY (`trans_id`),
  KEY `client_id` (`client_id`),
  KEY `freelancer_id` (`freelancer_id`),
  KEY `work_id` (`work_id`),
  CONSTRAINT `work_escrow_transactions_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `work_escrow_transactions_ibfk_2` FOREIGN KEY (`freelancer_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `work_escrow_transactions_ibfk_3` FOREIGN KEY (`work_id`) REFERENCES `work_orders` (`work_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_escrow_transactions`
--

LOCK TABLES `work_escrow_transactions` WRITE;
/*!40000 ALTER TABLE `work_escrow_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `work_escrow_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_freelancer_payments`
--

DROP TABLE IF EXISTS `work_freelancer_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `work_freelancer_payments` (
  `trans_id` int NOT NULL AUTO_INCREMENT,
  `work_id` varchar(255) NOT NULL,
  `freelancer_id` int NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_status_id` int NOT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `payment_gateway` varchar(100) DEFAULT NULL,
  `entry_date` datetime DEFAULT NULL,
  `client_id` int DEFAULT NULL,
  PRIMARY KEY (`trans_id`),
  KEY `work_id` (`work_id`),
  KEY `freelancer_id` (`freelancer_id`),
  KEY `payment_status_id` (`payment_status_id`),
  KEY `FKetd0ggehce84kjwieb2e103ub` (`client_id`),
  CONSTRAINT `FKetd0ggehce84kjwieb2e103ub` FOREIGN KEY (`client_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `work_freelancer_payments_ibfk_1` FOREIGN KEY (`work_id`) REFERENCES `work_orders` (`work_id`),
  CONSTRAINT `work_freelancer_payments_ibfk_2` FOREIGN KEY (`freelancer_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `work_freelancer_payments_ibfk_3` FOREIGN KEY (`payment_status_id`) REFERENCES `work_payments_status` (`payment_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_freelancer_payments`
--

LOCK TABLES `work_freelancer_payments` WRITE;
/*!40000 ALTER TABLE `work_freelancer_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `work_freelancer_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_orders`
--

DROP TABLE IF EXISTS `work_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `work_orders` (
  `work_id` varchar(255) NOT NULL,
  `work_title` text,
  `user_id` int NOT NULL,
  `type_id` varchar(255) NOT NULL,
  `duration_id` int NOT NULL,
  `wo_status_id` int NOT NULL,
  `description` text,
  `min_amount` decimal(10,2) NOT NULL,
  `max_amount` decimal(10,2) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `posting_date` datetime DEFAULT NULL,
  PRIMARY KEY (`work_id`),
  KEY `user_id` (`user_id`),
  KEY `type_id` (`type_id`),
  KEY `duration_id` (`duration_id`),
  KEY `wo_status_id` (`wo_status_id`),
  CONSTRAINT `work_orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `work_orders_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `service_types` (`type_id`),
  CONSTRAINT `work_orders_ibfk_3` FOREIGN KEY (`duration_id`) REFERENCES `duration_types` (`duration_id`),
  CONSTRAINT `work_orders_ibfk_4` FOREIGN KEY (`wo_status_id`) REFERENCES `wo_status_type` (`wo_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_orders`
--

LOCK TABLES `work_orders` WRITE;
/*!40000 ALTER TABLE `work_orders` DISABLE KEYS */;
INSERT INTO `work_orders` VALUES ('gLi104','The undiluted truth of Albert Einstein',47,'ST101',3,9,'The undiluted truth of Albert Einstein is a story about a genius who changed the idea of physics.',100.00,200.00,'2023-01-25 19:24:17','2023-01-25 19:24:17'),('j1u102','The early life of leonardo',37,'ST101',2,9,'The early life of leonardo',10.00,20.00,'2023-01-04 22:16:46','2023-01-04 22:16:46'),('U65104','Transalte Can i Show my Love Audio to text',3,'ST103',4,12,'Can I Show my love',10.00,20.00,'2022-11-20 13:18:53','2022-11-20 13:18:53'),('Wkn103','Avengers',40,'ST101',2,9,'Avengers Description',20.00,30.00,'2023-01-11 00:08:55','2023-01-11 00:08:55');
/*!40000 ALTER TABLE `work_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_payments`
--

DROP TABLE IF EXISTS `work_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `work_payments` (
  `trans_id` int NOT NULL AUTO_INCREMENT,
  `client_id` int NOT NULL,
  `work_id` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `payment_status_id` int NOT NULL,
  `payment_gateway` varchar(100) DEFAULT NULL,
  `entry_date` datetime DEFAULT NULL,
  PRIMARY KEY (`trans_id`),
  KEY `client_id` (`client_id`),
  KEY `work_id` (`work_id`),
  KEY `payment_status_id` (`payment_status_id`),
  CONSTRAINT `work_payments_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `work_payments_ibfk_2` FOREIGN KEY (`work_id`) REFERENCES `work_orders` (`work_id`),
  CONSTRAINT `work_payments_ibfk_3` FOREIGN KEY (`payment_status_id`) REFERENCES `work_payments_status` (`payment_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_payments`
--

LOCK TABLES `work_payments` WRITE;
/*!40000 ALTER TABLE `work_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `work_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_payments_status`
--

DROP TABLE IF EXISTS `work_payments_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `work_payments_status` (
  `payment_status_id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`payment_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_payments_status`
--

LOCK TABLES `work_payments_status` WRITE;
/*!40000 ALTER TABLE `work_payments_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `work_payments_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_transactions`
--

DROP TABLE IF EXISTS `work_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `work_transactions` (
  `trans_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `work_id` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `isInFlow` tinyint(1) DEFAULT NULL,
  `entry_date` datetime DEFAULT NULL,
  `is_in_flow` bit(1) DEFAULT NULL,
  PRIMARY KEY (`trans_id`),
  KEY `user_id` (`user_id`),
  KEY `work_id` (`work_id`),
  CONSTRAINT `work_transactions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `work_transactions_ibfk_2` FOREIGN KEY (`work_id`) REFERENCES `work_orders` (`work_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_transactions`
--

LOCK TABLES `work_transactions` WRITE;
/*!40000 ALTER TABLE `work_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `work_transactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-27  0:38:13
