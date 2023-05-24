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
-- Table structure for table `bank_details`
--

DROP TABLE IF EXISTS `bank_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank_details` (
  `detail_id` int NOT NULL AUTO_INCREMENT,
  `bank_id` varchar(50) NOT NULL,
  `bank_branch_code` varchar(50) DEFAULT NULL,
  `bank_branch_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(50) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `currency` char(5) DEFAULT NULL,
  `merchant_name` varchar(255) DEFAULT NULL,
  `routing_number` varchar(50) DEFAULT NULL,
  `swift_code` varchar(50) DEFAULT NULL,
  `entry_date` datetime NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`detail_id`),
  KEY `FKqkekmr716vpixkah9ufxbun81` (`user_id`),
  CONSTRAINT `FKqkekmr716vpixkah9ufxbun81` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_details`
--

LOCK TABLES `bank_details` WRITE;
/*!40000 ALTER TABLE `bank_details` DISABLE KEYS */;
INSERT INTO `bank_details` VALUES (1,'044','','','0087411828','Precious','Ekwere','Edikan','NGN','','','','2023-02-18 12:36:44',41),(4,'044','','','0690000031','Precious','Ekwere','Edikan','NGN','','','','2023-04-23 16:17:10',71);
/*!40000 ALTER TABLE `bank_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_id`
--

DROP TABLE IF EXISTS `bank_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank_id` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_id`
--

LOCK TABLES `bank_id` WRITE;
/*!40000 ALTER TABLE `bank_id` DISABLE KEYS */;
INSERT INTO `bank_id` VALUES (1);
/*!40000 ALTER TABLE `bank_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banks`
--

DROP TABLE IF EXISTS `banks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banks` (
  `bank_id` int NOT NULL AUTO_INCREMENT,
  `bank_code` varchar(10) NOT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bank_id`)
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
INSERT INTO `delivery_attachments` VALUES ('1LF110','Dn1104','Description','Kofo Abayomi Road.m4a','4','3'),('2PC119','f0d108','Description','Kofo Abayomi Road.m4a','3','2'),('2sn102','TK4101','Description','Kofo Abayomi Road.m4a','2','2'),('3c0117','t1v107','Description','Kofo Abayomi Road.m4a','3','2'),('3O7124','iuJ111','Description','Kofo Abayomi Road.m4a','4','2'),('52x108','Adw103','Description','Kofo Abayomi Road.m4a','2','4'),('5jt144','5W2121','Description','New Recording (1).m4a','3','2'),('5OF136','5nZ117','Description','Kofo Abayomi Road.m4a','4','2'),('5UJ167','JXA134','Description','07 Trust Fund Baby _ JustNaija.com.mp3','3','1'),('7s3137','5nZ117','Description','Kofo Abayomi Road.m4a','3','2'),('9cE132','6bG115','Description','Kofo Abayomi Road.m4a','4','2'),('aQz153','RmB126','Description','New Recording (1).m4a','2','2'),('BLD130','b7m114','Description','Kofo Abayomi Road.m4a','4','2'),('bUx140','w2a119','Description','Kofo Abayomi Road.m4a','4','2'),('bwx142','pNC120','Description','New Recording.m4a','3','2'),('cD9145','5W2121','Description','pdf-icon-png-2058 (1).png','2','3'),('cU7159','Czk130','Description','IEC PROPERTY MANAGEMENT SOLUTIONS FEATURES.pdf','8','7'),('cuv165','GOy133','Description','07 Trust Fund Baby _ JustNaija.com.mp3','3','4'),('d5P113','pSR105','Description','Kofo Abayomi Road.m4a','3','2'),('d9Z164','zeV132','Description','answers_javaplus.pdf','2','2'),('Ep6107','Adw103','Description','National Open University of Nigeria.m4a','3','2'),('FPj114','J6V106','Description','New Recording.m4a','9','8'),('fPQ166','GOy133','Description','09 Céline (feat. Kyu Steed & 6) _ JustNaija.com.mp3','7','3'),('Fvy160','Czk130','Description','answers_javaplus.pdf','6','8'),('gNA168','kEn135','Description','12 3AM _ JustNaija.com.mp3','24','7'),('Ict154','ZC2127','Description','New Recording (1).m4a','2','2'),('ITi128','4Or113','Description','Kofo Abayomi Road.m4a','4','2'),('j94159','Kox130','Description','IEC PROPERTY MANAGEMENT SOLUTIONS FEATURES.pdf','8','7'),('jPN161','G17131','Description','IEC PROPERTY MANAGEMENT SOLUTIONS FEATURES.pdf','8','7'),('jPT134','ldM116','Description','Kofo Abayomi Road.m4a','4','2'),('Kpd147','5W2121','Description','New Recording (1).m4a','6','3'),('kwJ120','PbV109','Description','Kofo Abayomi Road.m4a','4','2'),('Ll0150','ltp123','Description','New Recording (1).m4a','2','2'),('mCP116','t1v107','Description','Kofo Abayomi Road.m4a','4','2'),('MJp148','zdf122','Description','New Recording (1).m4a','9','5'),('Msl131','b7m114','Description','Kofo Abayomi Road.m4a','3','2'),('mtH125','iuJ111','Description','Kofo Abayomi Road.m4a','3','2'),('MwJ105','bce102','Description','Kofo Abayomi Road.m4a','5','5'),('MZK149','zdf122','Description','answers_javaplus.pdf','3','2'),('n0w122','gPj110','Description','Kofo Abayomi Road.m4a','4','2'),('NEL138','SM6118','Description','Kofo Abayomi Road.m4a','4','2'),('NHg129','4Or113','Description','Kofo Abayomi Road.m4a','3','2'),('ogW115','J6V106','Description','Kofo Abayomi Road.m4a','7','6'),('POn104','bce102','Description','National Open University of Nigeria.m4a','3','4'),('PR4162','4hB131','Description','IEC PROPERTY MANAGEMENT SOLUTIONS FEATURES.pdf','6','2'),('PwC151','Egu124','Description','New Recording (1).m4a','2','2'),('QMF133','6bG115','Description','Kofo Abayomi Road.m4a','3','2'),('rI8161','4hB131','Description','IEC Property Management Proposed Flow - Corrected Copy.docx','3','4'),('S5K126','utm112','Description','Kofo Abayomi Road.m4a','4','2'),('SLd101','TK4101','Description','National Open University of Nigeria.m4a','4','6'),('sPc139','SM6118','Description','Kofo Abayomi Road.m4a','3','2'),('Tow135','ldM116','Description','Kofo Abayomi Road.m4a','3','2'),('TrD123','gPj110','Description','Kofo Abayomi Road.m4a','3','2'),('tto170','Y9D136','Description','namecheap-order-112193899.pdf','6','1'),('TVw106','bce102','Description','Kofo Abayomi Road.m4a','2','3'),('UoN121','PbV109','Description','Kofo Abayomi Road.m4a','3','2'),('VGt112','pSR105','Description','Kofo Abayomi Road.m4a','4','2'),('vYS169','kEn135','Description','07 Trust Fund Baby _ JustNaija.com.mp3','5','3'),('Wap103','TK4101','Description','Kofo Abayomi Road.m4a','2','5'),('WvC152','z5H125','Description','New Recording (1).m4a','2','2'),('xgk118','f0d108','Description','Kofo Abayomi Road.m4a','4','2'),('XIa146','5W2121','Description','pdf-icon-png-2058 (1).png','4','4'),('XOq141','w2a119','Description','Kofo Abayomi Road.m4a','3','2'),('XUC127','utm112','Description','Kofo Abayomi Road.m4a','3','2'),('XZs143','pNC120','Description','pdf-icon-png-2058.png','5','3'),('y4u163','zeV132','Description','IEC Property Management Proposed Flow - Corrected Copy.docx','6','2'),('y8h162','G17131','Description','answers_javaplus.pdf','6','8'),('YBD111','Dn1104','Description','National Open University of Nigeria.m4a','3','2'),('YYZ109','Adw103','Description','Kofo Abayomi Road.m4a','4','3'),('zAF160','Kox130','Description','answers_javaplus.pdf','6','8');
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
INSERT INTO `delivery_freelancer_attachments` VALUES ('4t8114','pNC120','XZs143','pdf-icon-png-2058 (1).png','2023-02-22 17:35:42','2023-02-22'),('5aR106','Adw103',NULL,'Kofo Abayomi Road.m4a','2022-12-19 15:49:27','2022-12-19'),('8OH119','GOy133','cuv165','07 Trust Fund Baby _ JustNaija.com.mp3','2023-04-23 23:11:23','2023-04-23'),('9BL121','Y9D136','tto170','answers_javaplus.pdf','2023-04-25 09:08:45','2023-04-25'),('aIU104','Adw103',NULL,'Kofo Abayomi Road.m4a','2022-12-19 15:49:27','2022-12-19'),('BAu115','4hB131','PR4162','IEC Property Management Proposed Flow - Corrected Copy.docx','2023-04-22 11:12:59','2023-04-22'),('Cae113','pNC120','bwx142','New Recording (1).m4a','2023-02-22 17:35:42','2023-02-22'),('CVl112','J6V106','ogW115','issabela beat.mp3','2023-01-25 21:21:28','2023-01-25'),('Eqs102','Adw103',NULL,'tao-of-react.pdf','2022-12-19 15:40:28','2022-12-19'),('ey2111','J6V106','FPj114','issabela beat.mp3','2023-01-25 21:21:28','2023-01-25'),('FLZ108','Dn1104','YBD111','New Recording.m4a','2023-01-08 11:33:03','2023-01-08'),('hwq109','pSR105','d5P113','National Open University of Nigeria.m4a','2023-01-11 00:50:34','2023-01-11'),('iCd116','4hB131','rI8161','Portfolio.pdf','2023-04-22 11:12:59','2023-04-22'),('IkN122','Y9D136','tto170','NIMC Authorization Letter.pdf','2023-04-25 10:09:41','2023-04-25'),('jul101','Adw103',NULL,'tao-of-react.pdf','2022-12-19 15:40:28','2022-12-19'),('Mpz103','Adw103',NULL,'tao-of-react.pdf','2022-12-19 15:40:28','2022-12-19'),('nB1105','Adw103',NULL,'New Recording.m4a','2022-12-19 15:49:27','2022-12-19'),('qx9120','GOy133','fPQ166','07 Trust Fund Baby _ JustNaija.com.mp3','2023-04-23 23:11:23','2023-04-23'),('rp0117','zeV132','d9Z164','next-gen-js-summary.pdf','2023-04-22 12:26:57','2023-04-22'),('Svn107','Dn1104','1LF110','Kofo Abayomi Road.m4a','2023-01-08 11:33:03','2023-01-08'),('xq4118','zeV132','y4u163','SAHA Mobile About App (Google Play).docx','2023-04-22 12:26:57','2023-04-22'),('xwz110','pSR105','VGt112','Kofo Abayomi Road.m4a','2023-01-11 00:50:34','2023-01-11');
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
-- Table structure for table `detail_id`
--

DROP TABLE IF EXISTS `detail_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detail_id` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_id`
--

LOCK TABLES `detail_id` WRITE;
/*!40000 ALTER TABLE `detail_id` DISABLE KEYS */;
INSERT INTO `detail_id` VALUES (5);
/*!40000 ALTER TABLE `detail_id` ENABLE KEYS */;
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
INSERT INTO `freelancer_service_pricing` VALUES ('02p185','stw101',66,1.00,2.00),('0If143','sth103',50,110.00,120.00),('0IN195','stm106',67,4.00,5.00),('0W6140','stw101',50,10.00,20.00),('18N189','stm106',66,5.00,6.00),('2aN136','stw101',48,10.00,20.00),('2eR201','stm106',68,10.00,15.00),('2M4192','sth102',67,3.00,4.00),('2mr139','sth103',48,100.00,110.00),('3MN205','sth103',71,10.00,9.00),('4fH127','stw101',41,10.00,20.00),('5Bo112','sth102',33,20.00,3.00),('5Ey183','stm106',65,5.00,6.00),('6dy181','sth103',65,11.00,12.00),('6qJ172','sth103',63,100.00,200.00),('6Xy187','sth103',66,11.00,12.00),('9fp207','stm106',71,3.00,4.00),('9rr121','stw101',39,10.00,20.00),('9Xf154','stm104',54,900.00,1000.00),('A2T116','stw101',36,1000.00,2000.00),('A41152','stw101',54,100.00,200.00),('anj135','sth103',43,100.00,110.00),('aru164','stm105',59,3.00,4.00),('B60162','stm106',58,10.00,20.00),('bDU153','sth102',54,300.00,400.00),('bt4101','stw101',18,10.00,10.00),('BXi110','stw101',32,10.00,10.00),('C2o137','sth102',48,30.00,40.00),('c3Q206','stm105',71,5.00,6.00),('cpm120','stw101',39,10.00,20.00),('cUD112','stw101',34,10.00,10.00),('cuw109','stw101',31,10.00,20.00),('d76142','stm104',50,90.00,100.00),('dOZ210','sth102',72,2.00,3.00),('DpN104','stw101',22,1.00,1.00),('DyV168','stm105',62,700.00,800.00),('EG1145','sth102',52,100.00,200.00),('eSc193','sth103',67,11.00,12.00),('Ezd131','stw101',42,10.00,20.00),('f3F161','sth103',57,10.00,10.00),('FBH115','stw101',34,10.00,10.00),('ff7123','stw101',39,10.00,20.00),('FRG191','stw101',67,1.00,2.00),('fT5169','stm106',62,500.00,600.00),('FV3122','stw101',39,10.00,20.00),('g8U148','stw101',53,100.00,200.00),('GDC117','stw101',36,1000.00,2000.00),('gDT196','stm104',67,8.00,9.00),('gyE160','stm106',57,100.00,200.00),('hd2213','stm106',72,2.00,4.00),('hMO170','stm104',62,900.00,1000.00),('hpc167','sth102',62,300.00,400.00),('hZH103','stw101',21,1.00,20.00),('IG3214','stm104',72,3.00,4.00),('IIK155','sth103',54,1100.00,1200.00),('IK0202','stm104',68,5.00,7.00),('IMr182','stm105',65,7.00,8.00),('J9Y144','stw101',52,100.00,200.00),('jiC204','sth102',71,2.00,4.00),('JRm158','stm104',55,500.00,600.00),('K7l163','stm104',59,5.00,6.00),('Kb8186','sth102',66,3.00,4.00),('L3H133','sth102',43,30.00,40.00),('lIL138','stm104',48,80.00,90.00),('n00173','stw101',64,10.00,10.00),('nFC102','stw101',20,1.00,1.00),('nGT203','stw101',71,1.00,2.00),('NP2149','sth102',53,200.00,300.00),('nzC165','stm106',59,1.00,2.00),('OnH128','stw101',42,10.00,20.00),('Pn8141','sth102',50,30.00,40.00),('Q6W108','stw101',29,10.00,20.00),('qnt194','stm105',67,6.00,7.00),('QqR134','stm104',43,80.00,90.00),('QQW125','stw101',41,10.00,20.00),('R9K179','stw101',65,1.00,2.00),('rJZ198','sth102',68,2.00,5.00),('rQa188','stm105',66,7.00,8.00),('RsM199','sth103',68,3.00,4.00),('rWE150','stm104',53,800.00,900.00),('S2h159','stm104',56,50.00,60.00),('s69212','stm105',72,1.00,2.00),('sCa155','stm105',54,500.00,600.00),('sCa156','stm106',54,700.00,800.00),('SDI132','stw101',43,10.00,20.00),('Sec146','stm104',52,300.00,400.00),('SGO105','stw101',24,1.00,1.00),('SH4208','stm104',71,7.00,8.00),('SuS171','sth103',62,1100.00,1200.00),('T4M130','stw101',42,10.00,20.00),('th6178','stm104',64,90.00,100.00),('TmD197','stw101',68,2.00,3.00),('TMQ118','stw101',36,1000.00,2000.00),('Tp0106','sth102',24,100.00,1.00),('TRE113','stw101',34,10.00,10.00),('UoY129','stw101',42,10.00,20.00),('uYY151','sth103',53,1000.00,1100.00),('vXg126','stw101',41,10.00,20.00),('W2N114','stw101',34,10.00,10.00),('w9a190','stm104',66,9.00,10.00),('Wgy184','stm104',65,9.00,10.00),('wT8174','sth102',64,30.00,40.00),('WWN175','sth103',64,110.00,120.00),('WZT200','stm105',68,20.00,25.00),('Wzu176','stm105',64,70.00,80.00),('X3z209','stw101',72,2.00,3.00),('X9r111','stw101',33,1.00,2.00),('Xc4119','stw101',36,1000.00,2000.00),('Xks147','sth103',52,500.00,600.00),('xPf180','sth102',65,3.00,4.00),('xtT211','sth103',72,2.00,4.00),('xUN124','stw101',41,10.00,20.00),('Yti166','stw101',62,100.00,200.00),('z1p177','stm106',64,50.00,60.00);
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
INSERT INTO `hibernate_sequence` VALUES (74);
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
-- Table structure for table `job_reviews`
--

DROP TABLE IF EXISTS `job_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_reviews` (
  `review_id` int NOT NULL AUTO_INCREMENT,
  `client_id` int NOT NULL,
  `freelancer_id` int NOT NULL,
  `work_id` varchar(255) NOT NULL,
  `review` varchar(255) DEFAULT NULL,
  `entry_date` datetime DEFAULT NULL,
  PRIMARY KEY (`review_id`),
  KEY `client_id` (`client_id`),
  KEY `freelancer_id` (`freelancer_id`),
  KEY `work_id` (`work_id`),
  CONSTRAINT `job_reviews_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `job_reviews_ibfk_2` FOREIGN KEY (`freelancer_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `job_reviews_ibfk_3` FOREIGN KEY (`work_id`) REFERENCES `work_orders` (`work_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_reviews`
--

LOCK TABLES `job_reviews` WRITE;
/*!40000 ALTER TABLE `job_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_reviews` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'Hausa'),(2,'Yoruba'),(3,'Igbo'),(4,'Efik/Ibibio'),(5,'Swalhili'),(6,'French'),(7,'Portuguese'),(8,'English'),(9,'Tiv'),(10,'Ijaw'),(11,'Fulani( Pulaar, Peul, Fulfulde, Fula)'),(12,'Wolof'),(13,'Xhosa'),(14,'Dinka'),(15,'Kanuri'),(16,'Afrikaans'),(17,'Sesotho'),(18,'Nyanja'),(19,'Mandinka ( Mandingo)'),(20,'Sango'),(21,'Nuer'),(22,'Berber'),(23,'Soninke ( Sarakhule)'),(24,'Kunama'),(25,'Malinke'),(26,'Susu'),(27,'Bambara'),(28,'Creole ( Cap verdean, Haitian)'),(29,'Lingala'),(30,'Amharic'),(31,'Tamazight'),(32,'Maay maay'),(33,'Hasaniya ( Mauritania)'),(34,'Mossi'),(35,'Tigrinya'),(36,'Luganda'),(37,'Ndebele'),(38,'Setswana'),(39,'kirundi'),(40,'kinyarwanda'),(41,'Malagasy'),(42,'Chuukese'),(43,'Bari'),(44,'Samoan'),(45,'Tongan'),(46,'Tetum'),(47,'Kosraen'),(48,'Haitian Creole'),(49,'Fijian'),(50,'Yapese'),(51,'Palauan'),(52,'Pingalapese'),(53,'Pohnpeian'),(54,'Chamorro'),(55,'Maori'),(56,'Quechua'),(57,'Hawaiian'),(58,'Sesotho'),(59,'Mandinka'),(60,'Mandingo'),(61,'Pulaar'),(62,'Meitei'),(63,'Bassa (Nigerian)'),(64,'Somali');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proposal_status`
--

LOCK TABLES `proposal_status` WRITE;
/*!40000 ALTER TABLE `proposal_status` DISABLE KEYS */;
INSERT INTO `proposal_status` VALUES (1,'Pending'),(2,'Completed'),(3,'Declined'),(4,'Reviewing'),(5,'In Progress'),(6,'Corrections'),(7,'Frelancer Searching'),(8,'Admin Request Sent'),(9,'Freelancer Request Sent'),(10,'Client Accepted'),(11,'Freelancer Accepted'),(12,'Admin Accepted'),(13,'Client Request Sent'),(14,'Freelancer Declined');
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
INSERT INTO `proposals` VALUES ('7by110','Wkn103',33,9,0.00,'2023-01-11 00:38:57','2023-01-11 00:38:57'),('8B4114','DLc107',50,14,0.00,'2023-03-01 12:15:46','2023-03-01 12:15:46'),('AlY112','gLi104',48,9,100.00,'2023-01-25 19:27:46','2023-01-25 19:27:46'),('ANA133','AxD119',54,9,552.00,'2023-04-23 18:59:17','2023-04-23 18:59:17'),('AZO117','t5g109',54,11,10.00,'2023-04-20 16:35:22','2023-04-20 16:35:22'),('b50126','eUb111',54,11,1454.00,'2023-04-22 10:55:56','2023-04-22 10:55:56'),('CbI135','JgK121',71,9,4448.00,'2023-04-24 09:45:34','2023-04-24 09:45:34'),('cFc111','Wkn103',13,9,0.00,'2023-01-22 14:15:28','2023-01-22 14:15:28'),('cTl130','FOi117',71,9,332.00,'2023-04-23 18:25:50','2023-04-23 18:25:50'),('Dp3131','eUl118',71,9,516.00,'2023-04-23 18:29:16','2023-04-23 18:29:16'),('dQB142','xZT128',71,9,1335.00,'2023-04-25 08:43:05','2023-04-25 08:43:05'),('E6G138','mbk124',71,9,30.00,'2023-04-24 17:07:30','2023-04-24 17:07:30'),('EXx108','Wkn103',41,9,25.00,'2023-01-11 00:37:37','2023-01-11 00:37:37'),('Fmt118','t5g109',54,11,10.00,'2023-04-20 16:56:49','2023-04-20 16:56:49'),('FTf124','bwn110',41,9,10.00,'2023-04-21 11:10:35','2023-04-21 11:10:35'),('GUf128','Tkc112',68,9,2056.00,'2023-04-22 12:21:58','2023-04-22 12:21:58'),('Ihl105','j1u102',28,9,10000.00,'2023-01-07 10:43:32','2023-01-07 10:43:32'),('J2r122','bwn110',68,11,10.00,'2023-04-21 10:48:34','2023-04-21 10:48:34'),('JTY116','OCq108',54,11,20.00,'2023-04-16 15:47:53','2023-04-16 15:47:53'),('JzA137','Exm123',71,11,600.00,'2023-04-24 16:11:28','2023-04-24 16:11:28'),('KVW134','RVQ120',71,9,390.00,'2023-04-24 09:40:06','2023-04-24 09:40:06'),('l9f127','Tkc112',71,11,2056.00,'2023-04-22 12:17:47','2023-04-22 12:17:47'),('mRj140','mbk124',54,9,30.00,'2023-04-24 17:50:42','2023-04-24 17:50:42'),('nBK109','Wkn103',39,9,0.00,'2023-01-11 00:38:30','2023-01-11 00:38:30'),('NtQ113','JSd106',50,9,400.00,'2023-02-22 16:51:45','2023-02-22 16:51:45'),('Pdo121','t5g109',64,9,10.00,'2023-04-20 19:17:10','2023-04-20 19:17:10'),('R7u125','bwn110',64,9,10.00,'2023-04-21 11:14:23','2023-04-21 11:14:23'),('RGo129','Tkc112',54,9,2056.00,'2023-04-22 12:22:27','2023-04-22 12:22:27'),('s1B132','AxD119',71,11,552.00,'2023-04-23 18:36:06','2023-04-23 18:36:06'),('SwB119','t5g109',67,9,10.00,'2023-04-20 18:49:50','2023-04-20 18:49:50'),('t0e123','bwn110',54,9,10.00,'2023-04-21 11:09:13','2023-04-21 11:09:13'),('Tsi115','DLc107',50,11,20.00,'2023-03-11 10:47:11','2023-03-11 10:47:11'),('u05141','pVm129',71,9,243.00,'2023-04-25 08:40:16','2023-04-25 08:40:16'),('Uhq101','U65104',33,11,2000.00,'2022-11-10 10:35:00','2022-12-06 20:35:00'),('Uhq102','U65104',33,9,3000.00,'2022-11-10 10:35:00','2022-11-23 20:35:00'),('Uhq103','U65104',33,9,4000.00,'2022-11-10 10:35:00','2022-11-23 20:35:00'),('Uhq105','U65104',29,9,6000.00,'2022-11-10 10:35:00','2022-11-23 20:35:00'),('V7n107','j1u102',33,9,100.00,'2023-01-07 11:11:39','2023-01-07 11:11:39'),('VKy143','Xaj130',72,11,300.00,'2023-04-25 08:56:56','2023-04-25 08:56:56'),('VPw136','E5k122',71,11,192.00,'2023-04-24 09:48:32','2023-04-24 09:48:32'),('W7h139','mbk124',54,9,30.00,'2023-04-24 17:49:42','2023-04-24 17:49:42'),('yin120','t5g109',67,9,10.00,'2023-04-20 19:09:40','2023-04-20 19:09:40'),('ys9106','j1u102',31,9,0.00,'2023-01-07 11:10:07','2023-01-07 11:10:07');
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
INSERT INTO `service_industries` VALUES ('01O197',4,'AAK142','Government'),('0ce277',2,'dch182','Social Media Maerketing'),('0E6304',3,'19x193','Schools'),('0lB321',3,'4Mc207','Schools'),('0mR249',4,'7D7161','Government'),('0TY133',1,'ZoJ108','1'),('0vF151',4,'oZJ115','4'),('152244',4,'IGS160','Government'),('15J106',2,'3Mg104','2'),('15V220',4,'eV8152','Government'),('1dh188',4,'QZm138','Government'),('1Em108',4,'3Mg104','4'),('1kG109',5,'3Mg104','5'),('1mJ303',2,'19x193','Social Media Maerketing'),('1Py104',4,'0rV103','4'),('1TZ158',2,'Noc127','Social Media Maerketing'),('2bL236',2,'v1Q158','Social Media Maerketing'),('2M1239',3,'KzL159','Schools'),('2Nb226',1,'dTN154','Digital Marketing'),('2xv331',4,'t6q211','Government'),('4El222',6,'eV8152','freelancers'),('4kq122',4,'V83106','4'),('4Kt316',2,'7Wg205','Social Media Maerketing'),('4V9214',1,'wwp150','Digital Marketing'),('4zu238',2,'KzL159','Social Media Maerketing'),('5Dy193',1,'AAK142','Digital Marketing'),('5HM228',3,'dTN154','Schools'),('5q3260',2,'Ibh170','Social Media Maerketing'),('5q8153',1,'7MZ123','Digital Marketing'),('5S9144',5,'wkB112','5'),('5Vy127',1,'ZoJ108','1'),('67s145',6,'wkB112','6'),('6er150',3,'oZJ115','3'),('6Vv263',1,'Mif174','Digital Marketing'),('70E131',2,'ZoJ108','2'),('7BD169',3,'P83131','Schools'),('7ED296',3,'G3e191','Schools'),('7uX240',4,'KzL159','Government'),('7yg234',5,'4cJ157','Linguist'),('8g2257',4,'4tr166','Government'),('8Gq184',1,'QZm138','Digital Marketing'),('8kc179',5,'cZA135','Linguist'),('8Ul325',1,'CJp209','Digital Marketing'),('8wY305',1,'2Zf197','Digital Marketing'),('9fw164',1,'u3h128','Digital Marketing'),('9pF280',2,'dch182','Social Media Maerketing'),('9rM261',3,'Ibh170','Schools'),('9vB202',1,'B0D146','Digital Marketing'),('9Vz283',2,'MIq184','Social Media Maerketing'),('a6w155',1,'7MZ123','Digital Marketing'),('abS278',4,'dch182','Government'),('afn256',1,'4tr166','Digital Marketing'),('AhO327',2,'9Gn210','Social Media Maerketing'),('AIR259',1,'Ibh170','Digital Marketing'),('Ajd264',2,'Mif174','Social Media Maerketing'),('Anf216',3,'wwp150','Schools'),('aPw178',3,'cZA135','Schools'),('Are121',3,'V83106','3'),('Awq166',1,'uiQ130','Digital Marketing'),('ayr289',3,'oEi185','Schools'),('bER163',2,'u3h128','Social Media Maerketing'),('Bff148',5,'oZJ115','5'),('bhk182',3,'477137','Schools'),('bJc190',6,'QZm138','freelancers'),('bM7270',1,'X38179','Digital Marketing'),('BNg231',6,'dTN154','freelancers'),('bsG311',3,'XHv202','Schools'),('Bsq196',3,'AAK142','Schools'),('BwM229',4,'dTN154','Government'),('Ck4132',3,'ZoJ108','3'),('cKk160',2,'u3h128','Social Media Maerketing'),('cUb291',3,'18j188','Schools'),('CuU271',2,'yMK180','Social Media Maerketing'),('cyN279',6,'dch182','freelancers'),('cyN302',5,'19x193','Linguist'),('Dhf333',6,'vgd212','freelancers'),('dNe221',5,'eV8152','Linguist'),('duO123',1,'V83106','1'),('dWI116',1,'V83106','1'),('e6q136',1,'ZiN110','1'),('EGS276',5,'HbC181','Linguist'),('EHD282',6,'dch182','freelancers'),('ej8146',1,'oZJ115','1'),('EJF186',2,'QZm138','Social Media Maerketing'),('ene250',1,'KQw162','Digital Marketing'),('ENs213',6,'2jR149','freelancers'),('Erf165',1,'lWY129','Digital Marketing'),('esJ310',2,'XHv202','Social Media Maerketing'),('EV1161',3,'u3h128','Schools'),('Ewi309',2,'SB2201','Social Media Maerketing'),('eyU266',2,'MDu175','Social Media Maerketing'),('Ezl192',3,'a9d141','Schools'),('Fum301',4,'19x193','Government'),('fv9295',5,'G3e191','Linguist'),('fw0118',3,'V83106','3'),('gBI154',3,'7MZ123','Schools'),('Ghc230',5,'dTN154','Linguist'),('GjI157',1,'Xik126','Digital Marketing'),('gnC156',1,'7MZ123','Digital Marketing'),('Gt6308',3,'dSo200','Schools'),('h2o209',4,'B0D146','Government'),('h5L194',2,'AAK142','Social Media Maerketing'),('haa307',4,'NdC199','Government'),('hJa129',4,'ZoJ108','4'),('hLO120',2,'V83106','2'),('hmF112',2,'o2z105','2'),('hMn237',3,'v1Q158','Schools'),('hR5102',2,'0rV103','2'),('HrH315',5,'TDj204','Linguist'),('hUN171',6,'P83131','freelancers'),('Hw9125',4,'V83106','4'),('hWX105',1,'3Mg104','1'),('i2y201',4,'AAK142','Government'),('Iit223',2,'eV8152','Social Media Maerketing'),('Ioa204',3,'B0D146','Schools'),('iRg272',3,'yMK180','Schools'),('IWM189',5,'QZm138','Linguist'),('iWU312',1,'ITv203','Digital Marketing'),('Izr284',4,'MIq184','Government'),('JA4287',2,'oEi185','Social Media Maerketing'),('jcm159',1,'u3h128','Digital Marketing'),('jIL330',2,'t6q211','Social Media Maerketing'),('JJd323',2,'FCL208','Social Media Maerketing'),('JNc126',6,'V83106','6'),('JoZ134',2,'ZoJ108','2'),('JPL227',2,'dTN154','Social Media Maerketing'),('JUe103',3,'0rV103','3'),('kHH225',4,'eV8152','Government'),('kJC177',3,'dYB134','Schools'),('kmX143',2,'wkB112','2'),('Ksn248',3,'7D7161','Schools'),('KU8200',3,'AAK142','Schools'),('ky9293',1,'sGh189','Digital Marketing'),('lbB113',3,'o2z105','3'),('le9181',4,'cZA135','Government'),('lNb246',6,'IGS160','freelancers'),('lol119',4,'V83106','4'),('lv9320',4,'Zhs206','Government'),('LvJ170',4,'P83131','Government'),('mAC174',5,'P83131','Linguist'),('mFo255',2,'4tr166','Social Media Maerketing'),('MK0252',3,'iSz163','Schools'),('MMX114',4,'o2z105','4'),('mQc319',3,'Zhs206','Schools'),('Mqv142',1,'wkB112','1'),('msv290',4,'oEi185','Government'),('Mwb175',6,'P83131','freelancers'),('mWj218',4,'W9j151','Government'),('n2t107',3,'3Mg104','3'),('n3f329',4,'9Gn210','Government'),('N8g299',2,'19x193','Social Media Maerketing'),('Nbo288',3,'oEi185','Schools'),('NiI168',3,'uiQ130','Schools'),('NLW292',4,'18j188','Government'),('NMO111',1,'o2z105','1'),('Nnb198',5,'AAK142','Linguist'),('NUE241',1,'IGS160','Digital Marketing'),('NuS247',2,'7D7161','Social Media Maerketing'),('O5H149',6,'oZJ115','6'),('O9X141',4,'ZiN110','4'),('oBV140',2,'ZiN110','2'),('OBy254',1,'4tr166','Digital Marketing'),('OF6268',1,'6vi177','Digital Marketing'),('olo124',3,'V83106','3'),('oTC232',1,'4cJ157','Digital Marketing'),('P9C203',2,'B0D146','Social Media Maerketing'),('pcQ297',1,'19x193','Digital Marketing'),('PF8135',3,'ZoJ108','3'),('PFB117',2,'V83106','2'),('Ps6207',6,'B0D146','freelancers'),('PVh211',2,'2jR149','Social Media Maerketing'),('q98298',2,'19x193','Social Media Maerketing'),('QCr224',3,'eV8152','Schools'),('QGe128',3,'ZoJ108','3'),('qgf180',3,'cZA135','Schools'),('qhL275',4,'HbC181','Government'),('qI0274',3,'HbC181','Schools'),('qPd317',3,'7Wg205','Schools'),('QU1285',1,'oEi185','Digital Marketing'),('QXG265',1,'MDu175','Digital Marketing'),('r5f162',1,'u3h128','Digital Marketing'),('rh9183',4,'477137','Government'),('ros242',2,'IGS160','Social Media Maerketing'),('ROu313',4,'ITv203','Government'),('rRJ324',3,'FCL208','Schools'),('rV3137',2,'ZiN110','2'),('rZl217',3,'W9j151','Schools'),('SHw185',2,'QZm138','Social Media Maerketing'),('SjL294',2,'sGh189','Social Media Maerketing'),('SKf205',4,'B0D146','Government'),('sNY172',1,'P83131','Digital Marketing'),('Sxq210',5,'B0D146','Linguist'),('T9j191',2,'a9d141','Social Media Maerketing'),('TAk110',6,'3Mg104','6'),('tdv206',5,'B0D146','Linguist'),('TG5286',2,'oEi185','Social Media Maerketing'),('txo208',3,'B0D146','Schools'),('Ulq322',5,'4Mc207','Linguist'),('uoy314',4,'TDj204','Government'),('Ut8326',2,'CJp209','Social Media Maerketing'),('V2b173',3,'P83131','Schools'),('vRt245',5,'IGS160','Linguist'),('Vss262',4,'Ibh170','Government'),('Vwc195',3,'AAK142','Schools'),('vwd147',2,'oZJ115','2'),('VZe233',3,'4cJ157','Schools'),('W42219',5,'W9j151','Linguist'),('w6O212',4,'2jR149','Government'),('Wfe152',1,'fm1122','Digital Marketing'),('Wrc243',3,'IGS160','Schools'),('WT0101',1,'0rV103','1'),('wXW332',4,'vgd212','Government'),('X38167',2,'uiQ130','Social Media Maerketing'),('XQg300',3,'19x193','Schools'),('xRJ273',4,'yMK180','Government'),('XRT130',1,'ZoJ108','1'),('xs2176',2,'dYB134','Social Media Maerketing'),('Xy1138',2,'ZiN110','2'),('YdB235',1,'v1Q158','Digital Marketing'),('Yf4253',4,'iSz163','Government'),('YgX328',3,'9Gn210','Schools'),('YPl139',3,'ZiN110','3'),('yPR251',2,'iSz163','Social Media Maerketing'),('Yte115',5,'o2z105','5'),('YWf306',1,'gRs198','Digital Marketing'),('YX9318',1,'Zhs206','Digital Marketing'),('YyK267',2,'si8176','Social Media Maerketing'),('Z2Z187',3,'QZm138','Schools'),('zb4215',2,'wwp150','Social Media Maerketing'),('zDy258',6,'4tr166','freelancers'),('ziq199',6,'AAK142','freelancers'),('Zvr281',4,'dch182','Government'),('zX1269',1,'Gij178','Digital Marketing');
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
  `user_id` int DEFAULT NULL,
  `render_id` varchar(255) NOT NULL,
  `language_desc` varchar(255) DEFAULT NULL,
  `voice_type` varchar(255) DEFAULT NULL,
  `language_upload` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sl_id`),
  KEY `language_id` (`language_id`),
  KEY `render_id` (`render_id`),
  KEY `FKnlu2hcd3u9omjc39a9siwgcee` (`user_id`),
  CONSTRAINT `FKnlu2hcd3u9omjc39a9siwgcee` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `service_languages_ibfk_1` FOREIGN KEY (`language_id`) REFERENCES `languages` (`language_id`),
  CONSTRAINT `service_languages_ibfk_2` FOREIGN KEY (`render_id`) REFERENCES `services_rendered` (`render_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_languages`
--

LOCK TABLES `service_languages` WRITE;
/*!40000 ALTER TABLE `service_languages` DISABLE KEYS */;
INSERT INTO `service_languages` VALUES ('064117',1,NULL,'ZoJ108','Hausa',NULL,NULL),('0E1136',1,NULL,'oZJ115','Hausa',NULL,NULL),('0Kc262',1,NULL,'B0D146','Hausa',NULL,NULL),('0MU249',3,NULL,'AAK142','Igbo',NULL,NULL),('0nH351',5,NULL,'dch182','Swalhili','Male/Female teenager','logo-bg.png'),('0Rn146',7,NULL,'7MZ123','Hausa',NULL,NULL),('0TF285',4,NULL,'W9j151','Efik/Ibibio',NULL,NULL),('1aO346',2,NULL,'X38179','Yoruba',NULL,'thumb_show.php.jpeg'),('1wW327',6,NULL,'4tr166','French',NULL,NULL),('26K283',1,NULL,'W9j151','Hausa',NULL,NULL),('2a6118',1,NULL,'ZoJ108','Hausa',NULL,NULL),('2ix299',3,NULL,'dTN154','Igbo',NULL,NULL),('2JI265',2,NULL,'B0D146','Yoruba',NULL,NULL),('2kp326',3,NULL,'4tr166','Igbo',NULL,NULL),('2Sp176',1,NULL,'uiQ130','Hausa',NULL,NULL),('2V8258',1,NULL,'B0D146','Hausa',NULL,NULL),('2Vx120',1,NULL,'ZoJ108','Hausa',NULL,NULL),('365384',1,71,'7Wg205','Hausa',NULL,'answers_javaplus.pdf'),('3ax214',5,NULL,'477137','Swalhili',NULL,NULL),('3B5113',1,NULL,'V83106','Hausa',NULL,NULL),('3D7329',4,NULL,'4tr166','Efik/Ibibio',NULL,''),('3DC108',3,NULL,'o2z105','Igbo',NULL,NULL),('3jI347',2,NULL,'yMK180','Yoruba',NULL,NULL),('3JY177',1,NULL,'uiQ130','Hausa',NULL,NULL),('3ks294',6,NULL,'eV8152','French',NULL,NULL),('3UL149',1,NULL,'7MZ123','Hausa',NULL,NULL),('3yp270',2,NULL,'B0D146','Yoruba',NULL,NULL),('429183',1,NULL,'P83131','Hausa',NULL,NULL),('48o333',3,NULL,'Ibh170','Igbo',NULL,NULL),('4hy392',2,72,'CJp209','Yoruba',NULL,'answers_javaplus.pdf'),('4JN203',4,NULL,'cZA135','Efik/Ibibio',NULL,NULL),('4X1168',8,NULL,'u3h128','Hausa',NULL,NULL),('4zJ104',4,NULL,'3Mg104','Efik/Ibibio',NULL,NULL),('5jY208',4,NULL,'cZA135','Efik/Ibibio',NULL,NULL),('5Og167',5,NULL,'u3h128','Hausa',NULL,NULL),('64K320',5,NULL,'iSz163','Swalhili',NULL,NULL),('6ak191',1,NULL,'P83131','Hausa',NULL,NULL),('6Bf157',5,NULL,'Xik126','Hausa',NULL,NULL),('6ht126',2,NULL,'wkB112','Yoruba',NULL,NULL),('6MT313',1,NULL,'KQw162','Hausa',NULL,NULL),('6x4193',1,NULL,'P83131','Hausa',NULL,NULL),('72f345',1,NULL,'X38179','Hausa',NULL,'avatar.png'),('7eZ282',1,NULL,'W9j151','Hausa',NULL,NULL),('7gh268',1,NULL,'B0D146','Hausa',NULL,NULL),('8JS173',3,NULL,'lWY129','Hausa',NULL,NULL),('8Mp105',4,NULL,'3Mg104','Efik/Ibibio',NULL,NULL),('8T8280',2,NULL,'wwp150','Yoruba',NULL,NULL),('94w205',1,NULL,'cZA135','Hausa',NULL,NULL),('9AG106',1,NULL,'o2z105','Hausa',NULL,NULL),('9Bm139',1,NULL,'oZJ115','Hausa',NULL,NULL),('9Lr235',3,NULL,'a9d141','Igbo',NULL,NULL),('9Mr298',1,NULL,'dTN154','Hausa',NULL,NULL),('9QK226',1,NULL,'QZm138','Hausa',NULL,NULL),('9X3361',1,65,'sGh189','Hausa',NULL,NULL),('9yo229',1,NULL,'QZm138','Hausa',NULL,NULL),('9Z8315',3,NULL,'iSz163','Igbo',NULL,NULL),('a6Z349',9,NULL,'HbC181','Tiv',NULL,NULL),('ACJ217',1,NULL,'QZm138','Hausa',NULL,NULL),('aD0141',4,NULL,'fm1122','Hausa',NULL,NULL),('adV339',5,NULL,'Mif174','Swalhili',NULL,'New Recording (1).m4a'),('aeh296',2,NULL,'dTN154','Yoruba',NULL,NULL),('AHB350',3,NULL,'HbC181','Igbo',NULL,NULL),('Ahe288',1,NULL,'eV8152','Hausa',NULL,''),('AJm323',1,NULL,'4tr166','Hausa',NULL,NULL),('AMq137',1,NULL,'oZJ115','Hausa',NULL,NULL),('Ano334',3,NULL,'Ibh170','Igbo',NULL,'New Recording (1).m4a'),('aue394',27,72,'t6q211','Bambara','','next-gen-js-summary.pdf'),('azc341',10,NULL,'MDu175','Ijaw',NULL,'New Recording (1).m4a'),('B4H356',4,NULL,'MIq184','Efik/Ibibio','New Recording (1).m4a',NULL),('B89255',5,NULL,'AAK142','Swalhili',NULL,NULL),('bdH233',1,NULL,'a9d141','Hausa',NULL,NULL),('Bnk163',2,NULL,'Noc127','Hausa',NULL,NULL),('BT9322',6,NULL,'iSz163','French',NULL,NULL),('BU4272',1,NULL,'2jR149','Hausa',NULL,NULL),('bvH180',2,NULL,'uiQ130','Yoruba',NULL,NULL),('bXA158',4,NULL,'Xik126','Hausa',NULL,NULL),('ByI342',2,NULL,'si8176','Yoruba',NULL,'avatar.png'),('c1w172',4,NULL,'lWY129','Hausa',NULL,NULL),('cc5225',3,NULL,'QZm138','Igbo',NULL,NULL),('ccD195',2,NULL,'P83131','Yoruba',NULL,NULL),('Ccu228',1,NULL,'QZm138','Hausa',NULL,NULL),('cdQ253',1,NULL,'AAK142','Hausa',NULL,NULL),('CeS354',8,NULL,'dch182','English',NULL,NULL),('cgp155',1,NULL,'7MZ123','Hausa',NULL,NULL),('ChP332',3,NULL,'Ibh170','Igbo',NULL,NULL),('cHz210',1,NULL,'cZA135','Hausa',NULL,NULL),('CJC250',5,NULL,'AAK142','Swalhili',NULL,NULL),('cqJ293',1,NULL,'eV8152','Hausa',NULL,NULL),('CW7234',1,NULL,'a9d141','Hausa',NULL,NULL),('cWa110',5,NULL,'o2z105','Swalhili',NULL,NULL),('cXY237',1,NULL,'AAK142','Hausa',NULL,NULL),('d04376',2,68,'SB2201','Yoruba',NULL,'Statement of Work.docx'),('dc0218',1,NULL,'QZm138','Hausa',NULL,NULL),('DCG378',3,68,'XHv202','Igbo',NULL,'IEC PROPERTY MANAGEMENT SOLUTIONS FEATURES.pdf'),('Ddv254',3,NULL,'AAK142','Igbo',NULL,NULL),('DEx295',7,NULL,'eV8152','Portuguese',NULL,NULL),('DGR335',3,NULL,'Ibh170','Igbo',NULL,'New Recording (1).m4a'),('dhM131',1,NULL,'oZJ115','Hausa',NULL,NULL),('dL5264',1,NULL,'B0D146','Hausa',NULL,NULL),('DMb331',1,NULL,'Ibh170','Hausa',NULL,NULL),('DMv291',1,NULL,'eV8152','Hausa',NULL,NULL),('DTc375',3,67,'dSo200','Igbo','Male/Female teenager','New Recording (1).m4a'),('DTf186',1,NULL,'P83131','Hausa',NULL,NULL),('Dwb114',2,NULL,'V83106','Yoruba',NULL,NULL),('dwd259',1,NULL,'B0D146','Hausa',NULL,NULL),('Dzd123',1,NULL,'ZiN110','Hausa',NULL,NULL),('Ea8130',1,NULL,'wkB112','Hausa',NULL,NULL),('ekR303',3,NULL,'4cJ157','Igbo',NULL,NULL),('Eog328',3,NULL,'4tr166','Igbo',NULL,''),('F53290',6,NULL,'eV8152','French',NULL,''),('f5z284',4,NULL,'W9j151','Efik/Ibibio',NULL,NULL),('f7y132',1,NULL,'oZJ115','Hausa',NULL,NULL),('FG3386',2,71,'Zhs206','Yoruba',NULL,'IEC Property Management Proposed flow.docx'),('FGF211',1,NULL,'477137','Hausa',NULL,NULL),('fi2391',3,71,'FCL208','Igbo','Male/Female teenager','KEL-P One More Night (Instrumental Remake) Tola the Boy.mp3'),('Fri267',1,NULL,'B0D146','Hausa',NULL,NULL),('ftg154',1,NULL,'7MZ123','Hausa',NULL,NULL),('fTo307',6,NULL,'KzL159','French',NULL,NULL),('FTS222',1,NULL,'QZm138','Hausa',NULL,NULL),('G5v174',1,NULL,'lWY129','Hausa',NULL,NULL),('G6j353',3,NULL,'dch182','Igbo',NULL,NULL),('GbB377',1,68,'SB2201','Hausa',NULL,'Personas.pdf'),('gOq238',1,NULL,'AAK142','Hausa',NULL,NULL),('gSB287',1,NULL,'eV8152','Hausa',NULL,''),('Gsk337',7,NULL,'Ibh170','Portuguese',NULL,NULL),('gwa215',1,NULL,'477137','Hausa',NULL,NULL),('h0v390',2,71,'FCL208','Yoruba','Male/Female child','New Recording (1).m4a'),('h43192',1,NULL,'P83131','Hausa',NULL,NULL),('h5d314',2,NULL,'iSz163','Yoruba',NULL,NULL),('H5h305',3,NULL,'v1Q158','Igbo',NULL,NULL),('hc0242',1,NULL,'AAK142','Hausa',NULL,NULL),('HcQ142',3,NULL,'fm1122','Hausa',NULL,NULL),('hDB381',8,68,'ITv203','English','','IEC Property Management Proposed flow.docx'),('HFm151',1,NULL,'7MZ123','Hausa',NULL,NULL),('HMG241',1,NULL,'AAK142','Hausa',NULL,NULL),('Hn8179',3,NULL,'uiQ130','Igbo',NULL,NULL),('HtJ276',1,NULL,'wwp150','Hausa',NULL,NULL),('I2W124',1,NULL,'ZiN110','Hausa',NULL,NULL),('ia7181',1,NULL,'P83131','Hausa',NULL,NULL),('iCf355',3,NULL,'MIq184','Igbo','New Recording (1).m4a',NULL),('iJ8312',3,NULL,'7D7161','Igbo',NULL,NULL),('IkU185',2,NULL,'P83131','Yoruba',NULL,NULL),('iTx204',5,NULL,'cZA135','Swalhili',NULL,NULL),('J4H292',1,NULL,'eV8152','Hausa',NULL,NULL),('j8r128',1,NULL,'wkB112','Hausa',NULL,NULL),('jAd221',1,NULL,'QZm138','Hausa',NULL,NULL),('Jet224',1,NULL,'QZm138','Hausa',NULL,NULL),('jnf330',10,NULL,'4tr166','Ijaw',NULL,NULL),('JPc382',5,68,'TDj204','Swalhili','Male/Female child','New Recording (1).m4a'),('Jps363',5,65,'G3e191','Swalhili','New Recording (1).m4a',NULL),('JSl374',4,67,'NdC199','Efik/Ibibio','','New Recording (1).m4a'),('K6t138',1,NULL,'oZJ115','Hausa',NULL,NULL),('KgL170',7,NULL,'u3h128','Hausa',NULL,NULL),('kHA178',1,NULL,'uiQ130','Hausa',NULL,NULL),('Kng188',1,NULL,'P83131','Hausa',NULL,NULL),('kQe343',2,NULL,'6vi177','Yoruba',NULL,NULL),('KUF122',1,NULL,'ZiN110','Hausa',NULL,NULL),('Kxn301',7,NULL,'dTN154','Portuguese',NULL,''),('kXt306',3,NULL,'v1Q158','Igbo',NULL,NULL),('LBG273',1,NULL,'2jR149','Hausa',NULL,NULL),('lCE165',3,NULL,'Noc127','Hausa',NULL,NULL),('Lg2243',1,NULL,'AAK142','Hausa',NULL,NULL),('LIa247',1,NULL,'AAK142','Hausa',NULL,NULL),('lPn244',3,NULL,'AAK142','Igbo',NULL,NULL),('lPs145',2,NULL,'fm1122','Hausa',NULL,NULL),('lqp260',2,NULL,'B0D146','Yoruba',NULL,NULL),('ltj190',2,NULL,'P83131','Yoruba',NULL,NULL),('LuO161',4,NULL,'Noc127','Hausa',NULL,NULL),('m5X223',1,NULL,'QZm138','Hausa',NULL,NULL),('m8M248',1,NULL,'AAK142','Hausa',NULL,NULL),('MF5147',1,NULL,'7MZ123','Hausa',NULL,NULL),('mJC369',6,66,'19x193','French','','New Recording (1).m4a'),('Mml201',1,NULL,'cZA135','Hausa',NULL,NULL),('MsE310',3,NULL,'IGS160','Igbo',NULL,''),('mug266',1,NULL,'B0D146','Hausa',NULL,NULL),('nCk212',3,NULL,'477137','Igbo',NULL,NULL),('nee357',1,NULL,'oEi185','Hausa',NULL,NULL),('NfA338',2,NULL,'Mif174','Yoruba',NULL,'New Recording (1).m4a'),('Nnl256',1,NULL,'B0D146','Hausa',NULL,NULL),('NP7278',1,NULL,'wwp150','Hausa',NULL,NULL),('NpE275',2,NULL,'2jR149','Yoruba',NULL,NULL),('NPe395',2,72,'vgd212','Yoruba','Male/Female young adult','next-gen-js-summary.pdf'),('nQW277',1,NULL,'wwp150','Hausa',NULL,NULL),('nt0279',1,NULL,'wwp150','Hausa',NULL,NULL),('nUo371',5,66,'19x193','Swalhili','Male/Female teenager','New Recording (1).m4a'),('nv8372',1,67,'2Zf197','Hausa',NULL,'New Recording (1).m4a'),('NVa171',1,NULL,'lWY129','Hausa',NULL,NULL),('NW3143',5,NULL,'fm1122','Hausa',NULL,NULL),('oAR207',3,NULL,'cZA135','Igbo',NULL,NULL),('oG2336',3,NULL,'Ibh170','Igbo',NULL,'New Recording (1).m4a'),('OGz366',1,66,'19x193','Hausa',NULL,'avatar.png'),('OJm380',7,68,'ITv203','Portuguese','','next-gen-js-summary.pdf'),('OKg134',1,NULL,'oZJ115','Hausa',NULL,NULL),('ON6251',1,NULL,'AAK142','Hausa',NULL,NULL),('OvA187',1,NULL,'P83131','Hausa',NULL,NULL),('Ovo236',1,NULL,'AAK142','Hausa',NULL,NULL),('P4J127',2,NULL,'wkB112','Yoruba',NULL,NULL),('p6s153',1,NULL,'7MZ123','Hausa',NULL,NULL),('PCC196',1,NULL,'dYB134','Hausa',NULL,NULL),('PDt232',1,NULL,'a9d141','Hausa',NULL,NULL),('pGr393',4,72,'9Gn210','Efik/Ibibio',NULL,'answers_javaplus.pdf'),('PiM240',5,NULL,'AAK142','Swalhili',NULL,NULL),('plE362',3,65,'sGh189','Igbo',NULL,NULL),('pR7144',1,NULL,'fm1122','Hausa',NULL,NULL),('psO319',2,NULL,'iSz163','Yoruba',NULL,NULL),('Pwh160',7,NULL,'Xik126','Hausa',NULL,NULL),('pyt263',1,NULL,'B0D146','Hausa',NULL,NULL),('qc4164',5,NULL,'Noc127','Hausa',NULL,NULL),('qNP102',2,NULL,'3Mg104','Yoruba',NULL,NULL),('QNz385',2,71,'7Wg205','Yoruba',NULL,'IEC PROPERTY MANAGEMENT SOLUTIONS FEATURES.pdf'),('qOh216',1,NULL,'QZm138','Hausa',NULL,NULL),('qR3227',1,NULL,'QZm138','Hausa',NULL,NULL),('qZQ198',4,NULL,'dYB134','Efik/Ibibio',NULL,NULL),('r0c162',6,NULL,'Noc127','Hausa',NULL,NULL),('r87257',1,NULL,'B0D146','Hausa',NULL,NULL),('RAj169',8,NULL,'u3h128','Hausa',NULL,NULL),('rgr286',1,NULL,'eV8152','Hausa',NULL,''),('rhv308',3,NULL,'KzL159','Igbo',NULL,NULL),('Rlj358',2,NULL,'oEi185','Yoruba',NULL,NULL),('rOf119',1,NULL,'ZoJ108','Hausa',NULL,NULL),('rQ1383',6,68,'TDj204','French','Male/Female teenager','KEL-P One More Night (Instrumental Remake) Tola the Boy.mp3'),('RRH156',9,NULL,'Xik126','Hausa',NULL,NULL),('RUl182',1,NULL,'P83131','Hausa',NULL,NULL),('S26365',4,65,'G3e191','Efik/Ibibio','Male/Female baby','New Recording (1).m4a'),('s3a316',1,NULL,'iSz163','Hausa',NULL,''),('Sn4230',3,NULL,'QZm138','Igbo',NULL,NULL),('sNw152',1,NULL,'7MZ123','Hausa',NULL,NULL),('Srg111',1,NULL,'V83106','Hausa',NULL,NULL),('SXr289',5,NULL,'eV8152','Swalhili',NULL,''),('t5P352',4,NULL,'dch182','Efik/Ibibio','Male/Female young adult','New Recording (1).m4a'),('T92348',7,NULL,'yMK180','Portuguese',NULL,NULL),('taU325',1,NULL,'4tr166','Hausa',NULL,NULL),('Tkp269',1,NULL,'B0D146','Hausa',NULL,NULL),('TNe209',5,NULL,'cZA135','Swalhili',NULL,NULL),('ToG297',2,NULL,'dTN154','Yoruba',NULL,NULL),('TPi261',1,NULL,'B0D146','Hausa',NULL,NULL),('Tu9379',4,68,'XHv202','Efik/Ibibio',NULL,'IEC Property Management Proposed Flow - Corrected Copy.docx'),('tuG364',8,65,'G3e191','English','New Recording (1).m4a',NULL),('tVM344',1,NULL,'Gij178','Hausa',NULL,'thumb_show.php.jpeg'),('u6w318',3,NULL,'iSz163','Igbo',NULL,''),('UbZ135',1,NULL,'oZJ115','Hausa',NULL,NULL),('UjM159',3,NULL,'Xik126','Hausa',NULL,NULL),('uJS388',3,71,'4Mc207','Igbo','','answers_javaplus.pdf'),('uKG231',1,NULL,'a9d141','Hausa',NULL,NULL),('UrF197',3,NULL,'dYB134','Igbo',NULL,NULL),('UUD367',3,66,'19x193','Igbo',NULL,'New Recording (1).m4a'),('UZb107',2,NULL,'o2z105','Yoruba',NULL,NULL),('v26148',1,NULL,'7MZ123','Hausa',NULL,NULL),('v6w239',3,NULL,'AAK142','Igbo',NULL,NULL),('V74202',3,NULL,'cZA135','Igbo',NULL,NULL),('v7j304',1,NULL,'v1Q158','Hausa',NULL,NULL),('vC7302',5,NULL,'4cJ157','Swalhili',NULL,NULL),('Vcy140',1,NULL,'oZJ115','Hausa',NULL,NULL),('ViK389',4,71,'4Mc207','Efik/Ibibio','','IEC PROPERTY MANAGEMENT SOLUTIONS FEATURES.pdf'),('VIT175',1,NULL,'lWY129','Hausa',NULL,NULL),('VnL101',1,NULL,'3Mg104','Hausa',NULL,NULL),('vqL189',3,NULL,'P83131','Igbo',NULL,NULL),('vUJ116',1,NULL,'ZoJ108','Hausa',NULL,NULL),('vwe370',4,66,'19x193','Efik/Ibibio','Male/Female child','New Recording (1).m4a'),('vZ3150',1,NULL,'7MZ123','Hausa',NULL,NULL),('w7U360',3,NULL,'18j188','Igbo','Male/Female teenager','KEL-P One More Night (Instrumental Remake) Tola the Boy.mp3'),('WaL271',1,NULL,'2jR149','Hausa',NULL,NULL),('Wbv274',1,NULL,'2jR149','Hausa',NULL,NULL),('wDd219',1,NULL,'QZm138','Hausa',NULL,NULL),('WjQ133',1,NULL,'oZJ115','Hausa',NULL,NULL),('WLE246',1,NULL,'AAK142','Hausa',NULL,NULL),('Wmx300',6,NULL,'dTN154','French',NULL,''),('wni359',4,NULL,'oEi185','Efik/Ibibio','avatar.png',NULL),('wOx321',4,NULL,'iSz163','Efik/Ibibio',NULL,NULL),('Wqp220',3,NULL,'QZm138','Igbo',NULL,NULL),('wWu368',5,66,'19x193','Swalhili','','New Recording (1).m4a'),('wxe200',1,NULL,'dYB134','Hausa',NULL,NULL),('X27281',1,NULL,'W9j151','Hausa',NULL,NULL),('xpT199',5,NULL,'dYB134','Swalhili',NULL,NULL),('XRR206',1,NULL,'cZA135','Hausa',NULL,NULL),('xvn103',3,NULL,'3Mg104','Igbo',NULL,NULL),('YAE324',2,NULL,'4tr166','Yoruba',NULL,NULL),('yAl340',4,NULL,'Mif174','Efik/Ibibio',NULL,'New Recording (1).m4a'),('yhM213',4,NULL,'477137','Efik/Ibibio',NULL,NULL),('yiR166',2,NULL,'u3h128','Hausa',NULL,NULL),('yla125',1,NULL,'ZiN110','Hausa',NULL,NULL),('YMu317',2,NULL,'iSz163','Yoruba',NULL,''),('yO4109',4,NULL,'o2z105','Efik/Ibibio',NULL,NULL),('yse115',2,NULL,'V83106','Yoruba',NULL,NULL),('Ytx252',1,NULL,'AAK142','Hausa',NULL,NULL),('yXN387',3,71,'Zhs206','Igbo',NULL,'IEC Property Management Proposed flow.docx'),('z27373',2,67,'gRs198','Yoruba',NULL,'New Recording (1).m4a'),('ZBi112',1,NULL,'V83106','Hausa',NULL,NULL),('ZC4309',3,NULL,'IGS160','Igbo',NULL,''),('zc8245',5,NULL,'AAK142','Swalhili',NULL,NULL),('zK7129',1,NULL,'wkB112','Hausa',NULL,NULL),('zOb194',3,NULL,'P83131','Igbo',NULL,NULL),('Zvr311',2,NULL,'7D7161','Yoruba',NULL,NULL),('zWP184',3,NULL,'P83131','Igbo',NULL,NULL),('ZYg121',1,NULL,'ZiN110','Hausa',NULL,NULL);
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
INSERT INTO `services_rendered` VALUES ('0rV103',13,'ST101','5','https://mylink.comp'),('18j188',64,'ST103','1','link'),('19x193',66,'ST101','1','link'),('2jR149',42,'ST101','2','https://github.com/EryBody'),('2Zf197',67,'ST101','1','link'),('3Mg104',14,'ST101','4','httpss://mylink.comp'),('477137',36,'ST101','2','https://github.com/EryBody/'),('4cJ157',48,'ST104','1','httpss://github.com/EryBody'),('4Mc207',71,'ST104','3','https://localhost:8080'),('4tr166',53,'ST101','1','https://app.saha.ng'),('6vi177',57,'ST104','3','link'),('7D7161',50,'ST104','2','httpss://github.com/EryBody'),('7MZ123',29,'ST104','1',''),('7Wg205',71,'ST101','2','https://localhost:8080'),('9Gn210',72,'ST102','2','https://developer.flutterwave.com/docs/integration-guides/testing-helpers/'),('a3G109',20,'ST102','1','hitps://mylink.com'),('a3T167',53,'ST102','3','https://app.saha.ng'),('a9d141',39,'ST101','3','https://github.com/EryBody/iVoiceAfrica-frontend'),('AAK142',41,'ST101','2','https://github.com/EryBody'),('amc107',18,'ST102','2','https://mylink.com'),('ap8196',66,'ST103','2','link'),('AYr101',11,'ST101','2','https://mylink.comp'),('B0D146',42,'ST101','2','https://github.com/EryBody'),('b8O113',22,'ST102','1','https://mylink.com'),('cca125',29,'ST103','1',''),('CeE147',42,'ST101','2','https://github.com/EryBody'),('CJp209',72,'ST101','1','https://developer.flutterwave.com/docs/integration-guides/testing-helpers/'),('Cvn194',66,'ST102','1','link'),('cZA135',36,'ST101','2','https://github.com/EryBody/'),('dch182',62,'ST103','8','https://app.saha.ng'),('dSo200',67,'ST103','1','link'),('dTN154',48,'ST101','1','httpss://github.com/EryBody'),('dYB134',36,'ST101','2','https://github.com/EryBody/'),('EKK155',48,'ST102','1','httpss://github.com/EryBody'),('eV8152',43,'ST103','3','https://github.com/EryBody/'),('Faq183',62,'ST104','9','https://app.saha.ng'),('FCL208',71,'ST103','3','https://localhost:8080'),('fm1122',29,'ST102','1','httpss://mylink.com'),('FuB145',41,'ST101','2','https://github.com/EryBody'),('G3e191',65,'ST104','1','link'),('Gij178',58,'ST103','2','link'),('gNK118',25,'ST101','1','httpsstps://mylink.com'),('gRs198',67,'ST102','1','link'),('HbC181',62,'ST102','4','https://app.saha.ng'),('I2E153',43,'ST104','4','https://github.com/EryBody'),('Ibh170',54,'ST101','1','https://app.saha.ng'),('IGS160',50,'ST103','5','httpss://github.com/EryBody'),('iSz163',52,'ST102','4','https://app.saha.ng'),('ITv203',68,'ST104','3','https://www3.gogoanimes.fi'),('jaT148',42,'ST101','2','https://github.com/EryBody'),('K3Z173',54,'ST104','4','https://app.saha.ng'),('k9H195',66,'ST104','1','link'),('KQw162',52,'ST101','3','https://app.saha.ng'),('KzL159',50,'ST102','3','https://github.com/EryBody/iVoiceAfrica-frontend'),('lBQ169',53,'ST104','1','https://app.saha.ng'),('lWY129',33,'ST102','3','https://github.com/EryBody'),('MDu175',56,'ST103','1','https://localhost:8080/'),('Mif174',55,'ST103','1','http://localhost:8080'),('MIq184',63,'ST104','4','link'),('n0r144',41,'ST101','2','https://github.com/EryBody'),('N6a111',21,'ST102','1','https://mylink.com'),('NdC199',67,'ST104','1','link'),('NlF164',52,'ST103','5','https://app.saha.ng'),('Noc127',32,'ST101','4','https://mylink.com'),('NsS143',41,'ST101','2','https://github.com/EryBody'),('NZH121',28,'ST101','1','https://mylink.com'),('o2z105',15,'ST101','5','https://mylink.comp'),('oEi185',64,'ST101','1','link'),('OfX102',12,'ST101','5','https://mylink.comp'),('oZJ115',24,'ST101','3','httpstps://mylink.com'),('P83131',34,'ST101','2','https://github.com/EryBody/'),('piL120',27,'ST101','1','httpsssstps://mylink.com'),('PlT117',24,'ST103','1','https://mylink.com'),('PsY171',54,'ST102','2','https://app.saha.ng'),('QZm138',39,'ST101','3','https://github.com/EryBody/iVoiceAfrica-frontend'),('rBz186',64,'ST102','1','link'),('RWO165',52,'ST104','4','https://app.saha.ng'),('SB2201',68,'ST101','2','http://app.saha.ng'),('sGh189',65,'ST101','1','link'),('si8176',57,'ST103','2','link'),('sJK119',26,'ST101','1','httpssstps://mylink.com'),('SK6136',36,'ST101','2','https://github.com/EryBody/'),('t6q211',72,'ST104','1','https://developer.flutterwave.com/docs/integration-guides/testing-helpers/'),('TDj204',68,'ST103','3','https://www3.gogoanimes.fi'),('u3h128',33,'ST101','3','https://github.com/EryBody'),('UHH116',24,'ST102','1','https://mylink.com'),('uiQ130',34,'ST101','2','https://github.com/EryBody/'),('UUf192',65,'ST103','1','link'),('v1Q158',50,'ST101','3','httpss://github.com/EryBody'),('V83106',18,'ST101','2','https://mylink.comp'),('V8M124',29,'ST101','1','httpss://mylink.com'),('VB5187',64,'ST104','1','link'),('VD2140',39,'ST101','3','https://github.com/EryBody/iVoiceAfrica-frontend'),('vgd212',72,'ST103','5','https://developer.flutterwave.com/docs/integration-guides/testing-helpers/'),('W9j151',43,'ST102','2','https://github.com/EryBody/'),('wFa172',54,'ST103','3','https://app.saha.ng'),('wkB112',22,'ST101','1','https://mylink.com'),('WnB168',53,'ST103','6','https://app.saha.ng'),('wwp150',43,'ST101','1','https://github.com/EryBody'),('X38179',59,'ST103','1','link'),('xCD133',34,'ST101','2','https://github.com/EryBody/'),('XHv202',68,'ST102','3','https://app.saha.ng'),('Xik126',31,'ST101','2','https://mylink.com'),('yMK180',62,'ST101','2','https://app.saha.ng'),('Ynp190',65,'ST102','1','link'),('ytp156',48,'ST103','1','httpss://github.com/EryBody'),('YX1139',39,'ST101','3','https://github.com/EryBody/iVoiceAfrica-frontend'),('Zhs206',71,'ST102','3','https://localhost:8080'),('ZiN110',21,'ST101','1','https://mylink.com'),('ZKg114',22,'ST101','1','https://mylink.com'),('zN5132',34,'ST101','2','https://github.com/EryBody/'),('ZoJ108',20,'ST101','1','httpssps://mylink.compp');
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
INSERT INTO `trans_id` VALUES (70);
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
INSERT INTO `user_roles` VALUES (1,1),(2,2),(3,3),(4,4),(5,4),(9,4),(10,4),(11,4),(12,4),(13,4),(14,4),(15,4),(16,3),(17,3),(18,4),(19,4),(20,4),(21,4),(22,4),(23,4),(24,4),(25,4),(26,4),(27,4),(28,4),(29,4),(30,4),(31,4),(32,4),(33,4),(34,4),(35,3),(36,4),(37,3),(38,3),(39,4),(40,3),(41,4),(42,4),(43,4),(46,1),(47,3),(48,4),(49,3),(50,4),(51,3),(52,4),(53,4),(54,4),(55,4),(56,4),(57,4),(58,4),(59,4),(60,3),(61,3),(62,4),(63,4),(64,4),(65,4),(66,4),(67,4),(68,4),(69,3),(70,3),(71,4),(72,4),(73,3);
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
  `country_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `user_status_id` (`user_status_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`user_status_id`) REFERENCES `users_status` (`user_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'tom@gmail.com','$2a$10$dZ/AzyBRozu.GEhQDUlruub/p.PTBpfA7pSmtHkRI3cTlTSJgVIU.','Tom','Smith','Gabby','Male','Nigeria','Nigerian','No 3 Fassy Adesina','08102578666','tom@gmail.com','Tom is a man','BSC',2,'tom@gmail.com_profilepicture','2022-10-30 00:00:00','2022-10-30 11:07:00','100001','+234'),(2,'presh@gmail.com','$2a$12$tYL/N5ZA2DZ2efrlC.4Hm.yrFnxoTPFkiXTxDqKdiL6/jkCFPXOGy','Presh','Mick','Liam','Male','Nigeria','Nigerian','No 3 Fassy Adesina','08102578666','tom@gmail.com','Tom is a man','BSC',2,'tom@gmail.com_profilepicture','2022-10-30 00:00:00','2022-10-30 11:07:00','100001','+234'),(3,'liam@gmail.com','$2a$12$tYL/N5ZA2DZ2efrlC.4Hm.yrFnxoTPFkiXTxDqKdiL6/jkCFPXOGy','Laim','Lane','Bruce','Male','Nigeria','Nigerian','No 3 Fassy Adesina','08102578666','tom@gmail.com','Tom is a man','BSC',2,'tom@gmail.com_profilepicture','2022-10-30 00:00:00','2022-10-30 11:07:00','100001','+234'),(4,'bukky@gmail.com','$2a$10$ICstN/JSViniEr8zYX2TOuQDKhEf3cHIc2C0BkyrCGYmNHlENS9RW','Bukky','Ade','Bimpe','Select','Nigeria','Nigerian','No 3, Fassy Adesina','08102578667','tom@gmail.com','Tom is a man','BSC',2,'tom@gmail.com_profilepicture','2022-10-30 00:00:00','2022-10-30 11:07:00','100001','+234'),(5,'jimmy@gmail.com','$2a$10$OKGHL3p6F.Uq4ySXTrLq/uOm2jD4i7PsJ9QSnFKVEFVf2QcW92wry','Tom','Precious','','Male','Nigeria','Nigerian','No 3, fassy adesina street','08102578666','tom@gmail.com','Headline','',2,'logo-dark-removebg-preview.png','2022-11-09 21:58:15','2022-11-09 21:58:15','100001','+234'),(9,'nnamdiObi@gmail.com','$2a$10$gnumWChTAhxdEpwNzd75AuNNW4CbuaVsJnU/UBCxjtyLNHLzLeY/G','Nnamdi','Obi','','Male','Nigeria','Nigerian','3 Fassy Street','08102578666','nnamdiObi@gmail.com','Headline','',2,'IMG_E4DB348353A1-1.jpeg','2022-11-12 08:51:42','2022-11-12 08:51:42','100001','+234'),(10,'madu@gmail.com','$2a$10$oiwlunH6Fb0VUMC99dcs9OhT86cJN2J3rE9S.DS.7HFq.PU3MP036','Ekwere','Madu','','Male','Nigerian','Nigerian','No 3, Fassy Adesina ','08102578666','madu@gmail.com','Madu Headline','',2,'IMG_E4DB348353A1-1.jpeg','2022-11-12 08:53:50','2022-11-12 08:53:50','100001','+234'),(11,'ptrObi@gmail.com','$2a$10$QTfd3.07t0uJy2nlQs7j6eHqxtlNrmEbc4a4c2ccPqd50GF.3OmIe','Peter','Obi','','Female','Nigerian','Nigerian','No 4, Fassy Adesina Street','08125006919','ptrObi@gmail.com','Peter Obi Headline','',2,'IMG_E4DB348353A1-1.jpeg','2022-11-12 08:56:16','2022-11-12 08:56:16','100001','+234'),(12,'bbOmori@gmail.com','$2a$10$F2W4o.K2pQki7rkdGpOzOORHfSI1YgOzTZDQfzt0TsHRDIjfZ18pa','BB','Omori','','Male','Nigerian','Nigerian','No 2, Fassy Adesina Street','08102578666','bbOmori@gmail.com','bbOmori Headline','',2,'logo-white-removebg-preview.png','2022-11-13 08:19:23','2022-11-13 08:19:23','100001','+234'),(13,'omori@gmail.com','$2a$10$ciOb5cMO8U9JseOetFIQ3OYMcrS8IW7tPaLqsNCoEVmF0nhbTpCPW','TT','Omori','','Male','Nigeria','Nigerian','No 2, Fassy Adesina Street','08102578666','omori@gmail.com','ttOmoriHeadline','',2,'IMG_E4DB348353A1-1.jpeg','2022-11-13 08:33:40','2022-11-13 08:33:40','100001','+234'),(14,'ppOmori@gmail.com','$2a$10$Gy82M0CxIXjs83DN4dA8QOjjvBQaObrnCbhBKkMxzTRY6nN.ZJTRm','PP','Omori','','Male','Nigeria','Nigerian','No 2, Fassy Adesina Street','08102578666','ppOmori@gmail.com','ppOmori Headline','',2,'IMG_E4DB348353A1-1.jpeg','2022-11-13 08:54:50','2022-11-13 08:54:50','10001','+234'),(15,'ggOmori@gmail.com','$2a$10$Mn2OZ0eDSrPTlqk4D1xkXOPMwRMozOJ6DHzWA5irYNfPWdiJoi59i','GG','Omori','','Male','Nigeria','Nigerian','No 2,Fassy Adesina Street','08102578666','ggOmori@gmail.com','GG Omori Headline','',2,'IMG_E4DB348353A1-1.jpeg','2022-11-13 09:05:20','2022-11-13 09:05:20','100001','+234'),(16,'johndoe@gmail.com','$2a$10$DkvkeirNRAY/kqzvnP5dLeragxiNwqDHNf94r/AL1ilnfk39Wyl9u','John','Doe','','Male','Nigeria','Nigerian','No 2, Fassy Adesina Street','08102578666','johndoe@gmail.com','','',2,'pic.jpg','2022-11-13 15:46:27','2022-11-13 15:46:27','100001','+234'),(17,'lookman@gmail.com','$2a$10$IN.ldzMkPzTCngn2G3lsTOqea7pWFIYcase5aITHi8dA2vH4DBsju','Lookman','Doe','','Male','Nigeria','Nigerian','No 2, Fassy Adesina Street','08102578666','lookman@gmail.com','','',2,'pic.jpg','2022-11-16 00:24:31','2022-11-16 00:24:31','10001','+234'),(18,'alicia@gmail.com','$2a$10$WW6rQpDf7ocBzS5tgTkm2uTY7oj44PY0QbBR3yiYR6hHwO28sqp3a','Alicia','Klara','','Female','Nigeria','Nigerian','No 3, Fassy Adesina Street','08102578666','alicia@gmail.com','Alicia Headline','',2,'pic.jpg','2022-11-16 00:29:55','2022-11-16 00:29:55','100001','+234'),(19,'ppOmori@gmail.com','$2a$10$LKiRqDamfTcjCLlPJ6M6JeJCiD3JWsJmJKWHUJalWeWC03poDWMBi','pp','Omori','','Female','Nigeria','Nigerian','No 2, Fassy Adesina Street','08102578666','ppOmori@gmail.com','PP Headline','',2,'pic.jpg','2022-11-16 07:55:28','2022-11-16 07:55:28','100001','+234'),(20,'llOmori@gmail.com','$2a$10$nq94xCzT/jahwuEhpxFc8Op4ee.18J1uKpBp8MxIWgD9XRvaqnN36','LL','Omori','','Male','Nigeria','Nigerian','No 2, Fassy Adesina','08102578666','llOmori@gmail.com','LL Omori','',2,'pic.jpg','2022-11-16 08:00:43','2022-11-16 08:00:43','100001','+234'),(21,'pre@gmail.com','$2a$10$4MLFn3Hj02IrUP4JKWgfn.r/OyNij5SYlwoXEHFvnxVUa5pHG06Fq','Pre','Thompson','','Male','Nigeria','Nigerian','No 2, Fassy Adesina Street','08102578666','pre@gmail.com','Pre Headline','',2,'pic.jpg','2022-11-16 08:35:46','2022-11-16 08:35:46','10001','+234'),(22,'koprecious@gmail.com','$2a$10$Ero3DW4D018hoyy476baL.wQZSNgayhC2rflrpRDoklVDuDjwoZS.','KO','Precious','','Male','Nigeria','Peru','No 2 Kin Street','08102578666','koprecious@gmail.com','Ko Headline','',2,'IMG_E4DB348353A1-1.jpeg','2022-11-16 08:49:44','2022-11-16 08:49:44','10001','+234'),(23,'koprecious@gmail.com','$2a$10$YO/yu1cN33pkuxvkW/hrK.ZmMU3nDEURMYZrWE2L/TJjRnOZkujQa','KO','Precious','','Male','Nigeria','Peru','No 2 Kin Street','08102578666','koprecious@gmail.com','','',2,'tom@gmail.com','2022-11-16 08:49:47','2022-11-16 08:49:47','10001','+234'),(24,'irpre@gmail.com','$2a$10$hMnj41.qBqZqB4AQUJfWM.mqEwufwZ/YgobuICbcNKv9/ZswUw9Sa','IR','Precious','','Male','Nigeria','Nigerian','No 2, Fassy Adesina','100001','irpre@gmail.com','IR Precious','',2,'IMG_E4DB348353A1-1.jpeg','2022-11-16 11:26:36','2022-11-16 11:26:36','10001','+234'),(25,'feel@gmail.com','$2a$10$61p2eeHVKt7.ikJg0pPpuuLbHC45aX73kblfzLOx4tnypBd5PdoX2','Feel','Gray','','Male','Nigeria','Nigerian','No 2 , Fassy Adesina','08102578666','feel@gmail.com','heading','',2,'IMG_E4DB348353A1-1.jpeg','2022-11-16 12:05:51','2022-11-16 12:05:51','100001','+234'),(26,'test1tom@gmail.com','$2a$10$WV1idEO6/dZyIwbyjv6PJu3nyqN7g2rrMILTwyKrAh3xc2JmucRMy','Test1','tom','','Male','Nigeria','Nigerian','No 2, Fassy Adesina ','08102578666','test1tom@gmail.com','test1','',2,'IMG_E4DB348353A1-1.jpeg','2022-11-16 12:44:08','2022-11-16 12:44:08','10001','+234'),(27,'Ricky@gmail.com','$2a$10$SNQss5QvKVs7AT2kJW876ekFGrDMJaJ1DfT19MRcwhWLdY1RM3IEG','Ricky','Quan','','Female','Nigeria','Nigerian','No 2, Fassy Adeniran','08102578666','Ricky@gmail.com','Ricky Headline','',2,'IMG_E4DB348353A1-1.jpeg','2022-11-16 14:33:29','2022-11-16 14:33:29','100001','+234'),(28,'BuckyTom@gmail.com','$2a$10$fs9AVbBpZqNM0wDfB.r9lOhrIs2ozQ7snIaS2c2NDN6hsQ4m8bbKG','Bucky','Tom','','Female','Nigeria','Nigerian','No 2, Fassy Adesina ','08102578666','BuckyTom@gmail.com','Bucky Headline','',2,'IMG_E4DB348353A1-1.jpeg','2022-11-16 14:40:58','2022-11-16 14:40:58','100001','+234'),(29,'GubbyTom@gmail.com','$2a$10$.VhfgtVyLU6r4xJF/3YKKeewleWidJuBWn333xEdy.4EvBMxRO3SK','Gubby','Precious','','Male','Nigeria','Nigerian','No 2, Fassy Adesina Strret','08102578666','GubbyTom@gmail.com','Headline','',2,'IMG_E4DB348353A1-1.jpeg','2022-11-16 15:01:56','2022-11-16 15:01:56','100001','+234'),(30,'GubbyTom@gmail.com','$2a$10$OJrHf1rf1Si2pTdwgOSNBuifGQgVqpuOBs8fp6Efc1IcxYftZ4iqi','Gubby','Thompson','','Male','Nigeria','Nigerian','No 2, Fassy Adesina Strret','08102578666','GubbyTom@gmail.com','Buggy Headline','',2,'IMG_E4DB348353A1-1.jpeg','2022-11-16 15:07:03','2022-11-16 15:07:03','100001','+234'),(31,'don@gmail.com','$2a$10$HwBSSB.tdyuNwZJnaAKjgeDKXmOHOsbQ8hHpKKlpqxUYWlfijJl.m','Don','Pedro','','Male','Nigeria','Nigerian','No 2, Fassy adesina street','08102578666','don@gmail.com','Don Headline','',2,'IMG_E4DB348353A1-1.jpeg','2022-11-17 22:58:04','2022-11-17 22:58:04','100001','+234'),(32,'DonMuna@gmail.com','$2a$10$UTIoO6QaAHEjmOcolVGkEuThx1jdk5hNehrqoepHsuuIJw.RGr6UG','Don','Muna','','Female','Nigeria','Nigerian','No 2, Fassy Adesina Street','08102578666','DonMuna@gmail.com','Donmuna Headline','',2,'IMG_E4DB348353A1-1.jpeg','2022-11-17 23:03:49','2022-11-17 23:03:49','100001','+234'),(33,'donpre@gmail.com','$2a$10$vDdLcYjOle5PdoS/NrKAXe4Zl9Zik7.9W/oDVWcifW7/9MzG.wFda','Don','Pre','','Male','Nigeria','Nigerian','No 2, Fassy Adesina Street','08102578666','donpre@gmail.com','Donpre headline','',2,'IMG_E4DB348353A1-1.jpeg','2022-11-17 23:11:45','2022-11-17 23:11:45','100001','+234'),(34,'rita.ipheghe@gmail.com','$2a$10$g1XX.ZpPzxObs6Y9IuDlgufYa6mMy2NnCmIgcYNpsDlv.2JUQVPdW','Ochuko','Ipheghe','','Male','Nigeria','Nigerian','Oshodi Avenue, dolphin estate','08102578666','rita.ipheghe@gmail.com','Ochkoko Ipheghe Summary','',2,'pic.jpg','2022-12-02 21:05:45','2022-12-02 21:05:45','100001','+234'),(35,'tp@gmail.com','$2a$10$6ohgGpUP4cERaOITgyTz8uRcTCxe1VOUp9eXTqsRGUfuW33kTp.He','Tom','Precious','','Male','Nigeria','Nigerian','No 2 , Adetola street, lagos','08102578666','tp@gmail.com','','',2,'LWScreenShot 2022-12-12 at 1.08.44 PM.png','2022-12-12 19:55:27','2022-12-12 19:55:27','100001','+234'),(36,'genzee@gmail.com','$2a$10$0AWvIgglMsJepUahUi1tfuzFWYtPoW8mhN.3jpazDYBCJUAEnpxv6','Christian','Nwankwo','','Male','Nigeria','Nigerian','1360 N 73rd Way, Hollywood, Florida City','08102578666','genzee@gmail.com','i am a entrepreneur specialized in translating','',2,'pic.jpg','2022-12-19 18:53:06','2022-12-19 18:53:06','33024','+234'),(37,'chima@gmail.com','$2a$10$Ohb9nK/UvB5NOV8ddtNOLuNUbi1j5aAHpNj5.AuaLTilQcIOGfrXu','Chima','Joe','','Male','Nigeria','Nigerian','No 3, Fassy Adesina Street','08102578666','chima@gmail.com','','',2,'pic.jpg','2023-01-04 22:11:07','2023-01-04 22:11:07','100001','+234'),(38,'rich@gmail.com','$2a$10$S58sSambQ5zQnie.ZJX2qO1IjOLrs3iB.yNA/eoGX5v65WQyL8eLe','Rich','Mond','','Male','Nigerian','Nigeria','No 2, Fassy Adesina Street','08102578666','rich@gmail.com','','',2,'IMG_1922.JPG','2023-01-08 20:14:25','2023-01-08 20:14:25','10001','+234'),(39,'richy@gmail.com','$2a$10$cGtzPrqneHS0eMFz1xlgYOqR46RkIueeCPZk8dIIHzud042bnAKti','Richy','Mond','','Male','Nigerian','Nigerian','No 3, Fassy adesina street','08102578666','richy@gmail.com','I am a translator and voice over artist.','',2,'IMG_1922.JPG','2023-01-08 20:19:50','2023-01-08 20:19:50','100001','+234'),(40,'Daniel@gmail.com','$2a$10$4rCKKguy8sYViIQz/NpXVel240jaL83TWhOznHQ8kH80K.bw8k0yG','Daniel','Onazi','','Male','Nigeria','Nigerian','No 2, Fassy adesina street','08102578666','Daniel@gmail.com','','',2,'IMG_1922.JPG','2023-01-10 23:40:12','2023-01-10 23:40:12','100001','+234'),(41,'mabel@gmail.com','$2a$10$TS5zLcDDqj0Qk8gbjU5DjuglK0IfwwuWEzxqslCccGzDTVXcRPvoi','Mabel','Onazi','','Female','Nigeria','Nigerian','No 2 Fassy Adesina Streeg','08102578666','mabel@gmail.com','Hi, my name is Mabel Onazi','',2,'IMG_1922.JPG','2023-01-10 23:49:06','2023-01-10 23:49:06','100001','+234'),(42,'thomas@gmail.com','$2a$10$AKTLV4XXZWBNSYSP0PHZtuUCMra74btJk.9IPj2rbfFgFd.x9XglK','Thomas','Partey','','Male','Nigeria','Nigerian','No 2, Fassy Adesina Street','08102578666','thomas@gmail.com','My Name is Thomas partey','',2,'pic.jpg','2023-01-17 22:18:31','2023-01-17 22:18:31','100001','+234'),(43,'sean@gmail.com','$2a$10$SpZbPupTjbq/xxB4/kysx.gIDPFKUkqta6luzH2ZnMNo7nHyh31U6','Sean','Micheal','','Male','USA','American','4 Huston, block 5','08102579888','sean@gmail.com','My Name is Sean Micheal','',2,'id card.jpeg','2023-01-17 23:39:56','2023-01-17 23:39:56','120001','+234'),(46,'tom2@gmail.com','$2a$10$ObuZowLX2aQrw4bUUmZFfeQHgXikFZIeZBcsnN2qpK1a40QaC7yau','Tommy','Shelby','John','Male','Nigeria','Nigerian','No 2, Fassy Adesina Street','08102578666','tom2@gmail.com','This is an admin page','',2,'','2023-01-19 20:30:22','2023-01-19 20:30:22','110001','+234'),(47,'favour@gmail.com','$2a$10$9eDcAEueVs3MvoYAikawhemMAPCufLdOR8QY/VIETkIrWvI8l2aPS','Favour','Obi','','Male','Nigeria','Nigerian','08102578666','08102578666','favour@gmail.com','','',2,'pic.jpg','2023-01-25 19:08:47','2023-01-25 19:08:47','100001','+234'),(48,'faith@gmail.com','$2a$10$UznFM.POI3nYAyfREXakOeJIfF34Ulls8k8icVN.vVJ.P21YuaYai','Faith','Obi','','Male','Nigeria','Nigerian','No 2, Fassy adesina Street','08102578666','faith@gmail.com','I am faithful','',2,'pic.jpg','2023-01-25 19:20:28','2023-01-25 19:20:28','100001','+234'),(49,'remi@gmail.com','$2a$10$FxWRaW3VO6XR4LWq/yQnOuDd2K6qRXuKF0pVDjvgUVno8dv6KRpwm','Remi','Martins','','Male','Nigeria','Nigerian','No 2, Fassy Adesina Street','08102578666','remi@gmail.com','','',2,'avatar.png','2023-02-21 13:41:33','2023-02-21 13:41:33','1000001','+234'),(50,'tobi@gmail.com','$2a$10$NMY15nRhLnFrN8kr8MVNJeSsrVWviSaYkODiCJKihXGnIamslfwvi','Tobi','Ramal','','Male','Nigeria','Nigerian','N0 3, Fassy Adesina Street','08102578666','tobi@gmail.com','This is Tobi profile.','',2,'avatar.png','2023-02-21 13:52:44','2023-02-21 13:52:44','10001','+234'),(51,'ria@gmail.com','$2a$10$NMY15nRhLnFrN8kr8MVNJeSsrVWviSaYkODiCJKihXGnIamslfwvi','Ria','Sean','','Male','Nigeria','Nigerian','No 2, Fassy Adesina Street','08102578666','ria@gmail.com','','',2,'IMG_E4DB348353A1-1.jpeg','2023-04-12 11:59:05','2023-04-12 11:59:05','100001','+234'),(52,'luke@gmail.com','$2a$10$1wQxC13pNanttLZH.uSrY.feTw0GXXBKFUZbOhDrKrhdrcIdwRy7u','Luke','Sky','','Male','Nigeria','Nigerian','No 2, Fassy Adesina','08102578666','luke@gmail.com','Headline Profile Picture','',2,'playstore.png','2023-04-12 12:11:04','2023-04-12 12:11:04','100001','+234'),(53,'rami@gmail.com','$2a$10$Uwo9bhSwOXK7G4j82C.nEefMrqg2c8xtIO3km12kam.7OVMgOdidO','Rami','Malek','','Male','Nigeria','Nigerian','No 2, Fassy Adesina Street','08102578666','rami@gmail.com','Healine','',2,'playstore.png','2023-04-12 16:49:02','2023-04-12 16:49:02','100001','+234'),(54,'dinma@gmail.com','$2a$10$mJS/YlxwJAAhp/kd7IORJ.DIFD3fPckjJmvQdYo7/9SowVOrmns5G','Dinma','Eze','','Male','Nigeria','Nigerian','No 2, Fassy Adesina Street','08102578666','dinma@gmail.com','HEADLINE','',2,'avatar.png','2023-04-14 14:51:31','2023-04-14 14:51:31','100001','+234'),(55,'vio@gmail.com','$2a$10$7MXilHmnRwsbZGvLLhrDue5plWJo1X3vX5xOHeGoiv1pIHxLR4E9G','Vio','Daniel','','Male','Nigeria','Nigerian','No 2, Fassy adesina street','08102578666','vio@gmail.com','Headline','',2,'avatar.png','2023-04-14 22:15:05','2023-04-14 22:15:05','100001','+234'),(56,'vix@gmail.com','$2a$10$SP14ShDYuDV2IlaJmLU58e8ZFZuADoRoctvT.oOeqPd34MaO7s7sq','Vix','Daniel','','Male','NIgeria','Nigerian','No 2, Fassy Adesina Street','08102578666','vix@gmail.com','Headline','',2,'avatar.png','2023-04-14 22:29:14','2023-04-14 22:29:14','100001','+234'),(57,'van@gmail.com','$2a$10$Ni9PJxiD6gk7dbCN/c89f.SMuSH0rQ5WJbIMHrEldXsfoKLMCMJ6e','Van','Dame','','Male','Nigeria','Nigerian','No 2, Fassy Adesina Street','08102578666','van@gmail.com','Headline','',2,'avatar.png','2023-04-15 15:20:06','2023-04-15 15:20:06','100001','+234'),(58,'vet@gmail.com','$2a$10$9VI4gL5tyMmbKG9NJRMAX.2yTTtYRjJoVJ3maZwaq/C3t5Gl3kH.i','Vetta','Dame','','Male','Nigeria','Nigerian','No 2, Fassy Adesina Street','08102578666','vet@gmail.com','Headline','',2,'logo.png','2023-04-15 15:28:37','2023-04-15 15:28:37','100001','+234'),(59,'vetta@gmail.com','$2a$10$0Ee13G9vfBkLisemT06Z4ORUCQFgqKJg6Rcne5m8Vu5882ca.yHSi','Vetta','Dine','','Male','Nigeria','Nigerian','No 2, Fassy Adesina','08102578666','vetta@gmail.com','Headline','',2,'pdf-icon-png-2058.png','2023-04-15 15:34:59','2023-04-15 15:34:59','100001','+234'),(60,'Ballad@gmail.com','$2a$10$mbB8DQtZm6QT953MQHkP8uVoWwvWp7519.7rUUT8cq82mL4h9cQUe','Ballad','Scrugge','','Male','Nigeria','Nigerian','No 2, Fassy Adesina Street','08102578666','Ballad@gmail.com','','',2,'avatar.png','2023-04-16 09:26:45','2023-04-16 09:26:45','100001','+234'),(61,'ben@gmail.com','$2a$10$M6x88RpiL7F.cBZsQDTzW.7aQNcAq4ejtSP0r0P9zQ6xpT0jbFWRu','Ben','Tenn','','Male','Nigeria','Nigerian','No 2, Fassy Adesina street','08102578666','ben@gmail.com','','',2,'thumb_show.php.jpeg','2023-04-16 09:29:08','2023-04-16 09:29:08','100001','+234'),(62,'mac@gmail.com','$2a$10$LE4Ml6Uf3M0mV5U8HVjRce9iREpbklAE4HL.qrVfbKVhvOgDeiaXa','Penny','Mac','','Female','Nigeria','Nigerian','No 2, Fassy Adesina Street','08102578666','mac@gmail.com','Profile picture','',2,'face-viewer.png','2023-04-16 11:39:24','2023-04-16 11:39:24','10001','+234'),(63,'pat@gmai','$2a$10$puvQl/aWUr0yvKxJjVlUHukPdF2GyrTWNONzTHqu.VhWRA/0sTwZm','pat','lin','','Male','Nigeria','Nigeria','No 2, bale street','08102578666','pat@gmai','Headline','',2,'avatar.png','2023-04-16 12:05:07','2023-04-16 12:05:07','10001','+234'),(64,'of@gmail.com','$2a$10$5xUOTV8Cy1Yf54cxXebxAew7A.qTWRzxnBFrNI1bGn416aHR8a5/S','Of','Steven','','Male','Nigeria','Nigerian','No 2, bale street','08102578666','of@gmail.com','Headline','',2,'avatar.png','2023-04-16 12:27:27','2023-04-16 12:27:27','100001','+234'),(65,'seth@gmail.com','$2a$10$mR9z34mkgMGYuhUopBYSSOyRiMbJNv5H1eEw8bIVY3lZjJcvrnvkm','Seth','Fac','','Male','Nigeria','Nigerian','No 2, Fassy Adesina Street','08102578666','seth@gmail.com','Headline','',2,'carting-image.png','2023-04-16 13:43:21','2023-04-16 13:43:21','10001','+234'),(66,'logic@gmail.com','$2a$10$TzmDQfo3Rd.IIewUbPsRreUG.Q0T.cVMxSVfw4i07ljl63QgGV/ia','Logic','Goat','','Male','Nigeria','Nigerian','No 2, bale','08102578666','logic@gmail.com','Headline','',2,'MTN-removebg-preview.png','2023-04-16 14:16:58','2023-04-16 14:16:58','10001','+234'),(67,'cdot@gmail.com','$2a$10$CdXiiyy58RE3s/8/NSNoJei4QDk7o5LDLioI73afO5jtfDbpffowO','Cdot','Castro','','Male','Nigeria','Nigerian','No 2, Fassy Adesina','08102578666','cdot@gmail.com','Headline','',2,'avatar.png','2023-04-16 14:27:25','2023-04-16 14:27:25','100001','+234'),(68,'dera@gmail.com','$2a$10$X4APK0E3DPnnIkthjwfWQu9GaIR4XKn.vYgnWo0Bk6qvmfPwmO7pO','deep','dera','','Female','Nigeria','Nigerian','No 2, Fassy Adesina Street','08102578666','dera@gmail.com','Dera Headline','',2,'unnamed.jpg','2023-04-21 08:22:25','2023-04-21 08:22:25','100001','+234'),(69,'debo@gmail.com','$2a$10$wVx2N/XW2ODIGBJ.tsn1dO3GgApLnS/KAMbB9gW9uoAkn0/GlFxXu','Debo','Deep','','Male','Nigeria','Nigerian','No 2, Fassy Adesina Street','08102578666','debo@gmail.com','','',2,'unnamed-3.jpg','2023-04-21 08:24:00','2023-04-21 08:24:00','10001','+234'),(70,'idris@gmail.com','$2a$10$dEryBYSSpltXHNM1Vv9P3elFdFIbkubotYwl.5rNDudUrF2BXg2O2','Idris','Abulkareem','','Male','Nigeria','Nigerian','No 2, Fassy Adesina','08102578666','idris@gmail.com','','',2,'ic_launcher-web.png','2023-04-22 11:59:55','2023-04-22 11:59:55','100001','+234'),(71,'lakes@gmail.com','$2a$10$sIP6m.pUqt.Qy/Fjrs0kwOCKq7shLk.j7hAFseAUoUyqNzKsbhhle','Lakes','Steven','','Male','Nigeria','Nigerian','No 2, Fassy Adesina street','08102578666','lakes@gmail.com','Headline','',2,'IMG_E4DB348353A1-1.jpeg','2023-04-22 12:10:42','2023-04-22 12:10:42','100001','+234'),(72,'bless@gmail.com','$2a$10$aBpuiI5d/azdtjiS560.tuPwR4n5kyuy1CXZ.2jyseFXK14lruQo.','Bless','Chukwu','','Female','Nigeria','Nigerian','No 2, Fassy Adesina street','8102578666','bless@gmail.com','Headline','',2,'IMG_E4DB348353A1-1.jpeg','2023-04-25 08:51:56','2023-04-25 08:51:56','100001','+234'),(73,'ford@gmail.com','$2a$10$wo/05UzgdW/1nzRf2Xv4Le109OnLpFntUZG/pmntTp0vkeYATV9dq','Ford','Bale','','Male','Nigeria','Nigerian','No 2, fassy adesina street','8102578666','ford@gmail.com','','',2,'face-viewer.png','2023-04-25 08:53:52','2023-04-25 08:53:52','100001','+234');
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
  `timer_count` varchar(255) DEFAULT NULL,
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
INSERT INTO `wo_attachments` VALUES ('06a146','E5k122','1','3','Description','07 Trust Fund Baby _ JustNaija.com.mp3',NULL,NULL,NULL),('09j133','cTB115','4','4','Description','IEC Property Management Proposed Flow - Corrected Copy.docx',NULL,NULL,NULL),('18h123','bwn110','7','8','Description','IEC PROPERTY MANAGEMENT SOLUTIONS FEATURES.pdf',NULL,NULL,NULL),('1rW139','eUl118','4','5','Description','07 Trust Fund Baby _ JustNaija.com.mp3',NULL,NULL,NULL),('3Wx154','drB127','2','3','Description','GST 302 Business Creation and Growth.pdf',NULL,NULL,NULL),('4lx149','mbk124','2','2','Description','next-gen-js-summary.pdf',NULL,NULL,NULL),('6lZ101','U65104','2','2','Description','National Open University of Nigeria.m4a','20','10','30'),('9aQ136','FOi117','2','3','Description','New Recording (1).m4a',NULL,NULL,NULL),('a2C132','cTB115','3','5','Description','next-gen-js-summary.pdf',NULL,NULL,NULL),('aUc153','VTp126','52','57','Description','07 Trust Fund Baby _ JustNaija.com.mp3',NULL,NULL,NULL),('b1a105','j1u102','3','4','Description','Kofo Abayomi Road.m4a','2','100',NULL),('BS7145','JgK121','5','3','Description','IEC Property Management Proposed Flow - Corrected Copy.docx',NULL,NULL,NULL),('BwI128','p9q113','1','5','Description','next-gen-js-summary.pdf',NULL,NULL,NULL),('Bx0120','OCq108','5','9','Description','New Recording (1).m4a',NULL,NULL,NULL),('BxN119','OCq108','2','3','Description','answers_javaplus.pdf',NULL,NULL,NULL),('CqQ143','RVQ120','20','21','Description','05 New Again - SongsLover.com.mp3',NULL,NULL,NULL),('DHy110','H97105','','','Description','pdf-icon-png-2058.png',NULL,NULL,NULL),('Dkr151','Ut2125','5','24','Description','01 We\'re All Alone - SongsLover.com.mp3',NULL,NULL,NULL),('dns150','Ut2125','4','6','Description','02 Easy On Me - SongsLover.com.mp3',NULL,NULL,NULL),('DqT152','VTp126','14','13','Description','07 Trust Fund Baby _ JustNaija.com.mp3',NULL,NULL,NULL),('e3x103','U65104','2','4','Description','Kofo Abayomi Road.m4a','20','10','30'),('e9q148','Exm123','7','24','Description','12 3AM _ JustNaija.com.mp3',NULL,NULL,NULL),('E9u115','DLc107','2','3','Description','New Recording (1).m4a','','',''),('flG113','JSd106','2','3','Description','New Recording.m4a',NULL,NULL,NULL),('g4Z104','j1u102','2','3','Description','National Open University of Nigeria.m4a','4','3',NULL),('GfK157','Xaj130','1','6','Description','namecheap-order-112193899.pdf',NULL,NULL,NULL),('gHT125','eUb111','4','3','Description','IEC Property Management Proposed Flow - Corrected Copy.docx',NULL,NULL,NULL),('gtX117','DLc107','3','2','Description','pdf-icon-png-2058 (1).png','','0',''),('Hbv130','Wcd114','1','7','Description','next-gen-js-summary.pdf',NULL,NULL,NULL),('HNW142','RVQ120','1','5','Description','07 Trust Fund Baby _ JustNaija.com.mp3',NULL,NULL,NULL),('hW2131','Wcd114','5','13','Description','IEC Property Management Proposed Flow - Corrected Copy.docx',NULL,NULL,NULL),('HxP106','Wkn103','2','4','Description','Kofo Abayomi Road.m4a',NULL,NULL,NULL),('igo137','FOi117','2','6','Description','KEL-P One More Night (Instrumental Remake) Tola the Boy.mp3',NULL,NULL,NULL),('Ihx121','t5g109','2','2','Description','New Recording (1).m4a',NULL,NULL,NULL),('Ihx127','Tkc112','2','6','Description','IEC Property Management Proposed Flow - Corrected Copy.docx',NULL,NULL,NULL),('iiT141','AxD119','4','3','Description','07 Trust Fund Baby _ JustNaija.com.mp3',NULL,NULL,NULL),('ikR138','eUl118','2','1','Description','KEL-P One More Night (Instrumental Remake) Tola the Boy.mp3',NULL,NULL,NULL),('kY6140','AxD119','3','7','Description','09 Céline (feat. Kyu Steed & 6) _ JustNaija.com.mp3',NULL,NULL,NULL),('lQj112','H97105','4','4','Description','pdf-icon-png-2058.png',NULL,NULL,NULL),('MAX102','U65104','3','2','Description','Kofo Abayomi Road.m4a','20','10','30'),('mTc126','Tkc112','2','2','Description','answers_javaplus.pdf',NULL,NULL,NULL),('N1m155','xZT128','4','4','Description','Student-Template-for-Business-Plan.pdf',NULL,NULL,NULL),('Pd6107','Wkn103','2','3','Description','Kofo Abayomi Road.m4a',NULL,NULL,NULL),('pKi135','6fZ116','3','4','Description','IEC Property Management Proposed Flow - Corrected Copy.docx',NULL,NULL,NULL),('Rh0111','H97105','1','3','Description','New Recording.m4a',NULL,NULL,NULL),('Rox122','bwn110','8','6','Description','answers_javaplus.pdf',NULL,NULL,NULL),('sCZ134','6fZ116','2','1','Description','next-gen-js-summary.pdf',NULL,NULL,NULL),('swF109','gLi104','8','9','Description','New Recording.m4a','50','100',NULL),('tb3147','Exm123','3','5','Description','07 Trust Fund Baby _ JustNaija.com.mp3',NULL,NULL,NULL),('uho144','JgK121','1','3','Description','next-gen-js-summary.pdf',NULL,NULL,NULL),('v5B108','gLi104','6','7','Description','Kofo Abayomi Road.m4a','10','200',NULL),('VCL114','JSd106','3','5','Description','pdf-icon-png-2058.png',NULL,NULL,NULL),('XRv118','DLc107','4','4','Description','pdf-icon-png-2058 (1).png','','',''),('YFl124','eUb111','2','6','Description','IEC PROPERTY MANAGEMENT SOLUTIONS FEATURES.pdf',NULL,NULL,NULL),('YZp116','DLc107','3','6','Description','New Recording (1).m4a','','',''),('Z5q129','p9q113','5','13','Description','IEC Property Management Proposed Flow - Corrected Copy.docx',NULL,NULL,NULL),('zpP156','pVm129','1','3','Description','namecheap-order-112193899.pdf',NULL,NULL,NULL);
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
INSERT INTO `wo_delivery` VALUES ('4hB131','eUb111','60',54,1454.00,9,'2023-04-22','2023-05-22','2023-04-22 11:03:42',NULL),('4Or113','Wkn103','40',41,25.00,5,'2023-02-12','2023-04-12','2023-02-12 15:58:28',NULL),('5nZ117','Wkn103','40',41,25.00,5,'2023-02-14','2023-04-14','2023-02-14 20:06:34',NULL),('5W2121','DLc107','49',50,20.00,5,'2023-03-11','2023-05-11','2023-03-11 11:24:19',NULL),('6bG115','Wkn103','40',41,25.00,5,'2023-02-12','2023-04-12','2023-02-12 16:58:47',NULL),('Adw103','U65104','3',31,5000.00,12,'2022-11-30','2023-03-31','2022-11-30 02:03:34','2022-11-30 02:03:34'),('b7m114','Wkn103','40',41,25.00,5,'2023-02-12','2023-04-12','2023-02-12 15:58:55',NULL),('bce102','U65104','3',32,7000.00,9,'2022-11-30','2023-03-31','2022-11-30 02:00:00','2022-11-30 02:03:34'),('Czk130','bwn110','69',41,10.00,5,'2023-04-21','2023-05-21','2023-04-21 11:10:35',NULL),('Dn1104','j1u102','37',33,1000.00,9,'2023-01-07','2023-03-07','2023-01-07 11:16:53',NULL),('Egu124','t5g109','60',54,10.00,5,'2023-04-20','2023-06-20','2023-04-20 16:56:49',NULL),('f0d108','Wkn103','40',41,25.00,5,'2023-02-12','2023-04-12','2023-02-12 14:28:07',NULL),('G17131','bwn110','69',64,10.00,5,'2023-04-21','2023-05-21','2023-04-21 11:14:23',NULL),('GOy133','AxD119','70',71,552.00,9,'2023-04-23','2023-06-23','2023-04-23 22:23:00',NULL),('gPj110','Wkn103','40',41,25.00,5,'2023-02-12','2023-04-12','2023-02-12 15:53:41',NULL),('iuJ111','Wkn103','40',41,25.00,5,'2023-02-12','2023-04-12','2023-02-12 15:56:33',NULL),('J6V106','gLi104','47',48,100.00,9,'2023-01-25','2023-04-25','2023-01-25 19:30:33',NULL),('JXA134','E5k122','70',71,192.00,5,'2023-04-24','2023-05-24','2023-04-24 09:58:22',NULL),('kEn135','Exm123','70',71,600.00,5,'2023-04-24','2023-05-24','2023-04-24 16:22:17',NULL),('Kox130','bwn110','69',68,10.00,5,'2023-04-21','2023-05-21','2023-04-21 14:07:19',NULL),('ldM116','Wkn103','40',41,25.00,5,'2023-02-14','2023-04-14','2023-02-14 20:05:15',NULL),('ltp123','t5g109','60',54,10.00,5,'2023-04-20','2023-06-20','2023-04-20 16:35:22',NULL),('PbV109','Wkn103','40',41,25.00,5,'2023-02-12','2023-04-12','2023-02-12 14:29:04',NULL),('pNC120','JSd106','49',50,400.00,9,'2023-02-22','2023-05-22','2023-02-22 17:19:48',NULL),('pSR105','Wkn103','40',41,1000.00,9,'2023-01-11','2023-03-11','2023-01-11 00:46:50',NULL),('RmB126','t5g109','60',67,10.00,5,'2023-04-20','2023-06-20','2023-04-20 19:09:40',NULL),('SM6118','Wkn103','40',41,25.00,5,'2023-02-19','2023-04-19','2023-02-19 11:07:56',NULL),('t1v107','Wkn103','40',41,25.00,5,'2023-02-12','2023-04-12','2023-02-12 14:06:29',NULL),('TK4101','U65104','3',33,6000.00,5,'2022-11-30','2022-12-07','2022-11-30 01:52:00','2022-11-30 02:03:34'),('utm112','Wkn103','40',41,25.00,5,'2023-02-12','2023-04-12','2023-02-12 15:56:39',NULL),('w2a119','Wkn103','40',41,25.00,5,'2023-02-19','2023-04-19','2023-02-19 11:17:47',NULL),('Y9D136','Xaj130','73',72,300.00,9,'2023-04-25','2023-05-25','2023-04-25 09:08:20','2023-04-25 10:09:41'),('z5H125','t5g109','60',67,10.00,5,'2023-04-20','2023-06-20','2023-04-20 18:49:50',NULL),('ZC2127','t5g109','60',64,10.00,5,'2023-04-20','2023-06-20','2023-04-20 19:17:10',NULL),('zdf122','OCq108','60',54,20.00,5,'2023-04-16','2023-06-16','2023-04-16 16:44:07',NULL),('zeV132','Tkc112','70',71,2056.00,9,'2023-04-22','2023-05-22','2023-04-22 12:24:23',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_status_type`
--

LOCK TABLES `wo_status_type` WRITE;
/*!40000 ALTER TABLE `wo_status_type` DISABLE KEYS */;
INSERT INTO `wo_status_type` VALUES (1,'Pending'),(2,'Completed'),(3,'Declined'),(4,'Reviewing'),(5,'In Progress'),(6,'Corrections'),(7,'Freelancer Searching'),(9,'Finished'),(12,'Forward to client'),(13,'bidding');
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
  `is_released` bit(1) DEFAULT NULL,
  `released_date` datetime DEFAULT NULL,
  `entry_date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`trans_id`),
  KEY `client_id` (`client_id`),
  KEY `freelancer_id` (`freelancer_id`),
  KEY `work_id` (`work_id`),
  CONSTRAINT `work_escrow_transactions_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `work_escrow_transactions_ibfk_2` FOREIGN KEY (`freelancer_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `work_escrow_transactions_ibfk_3` FOREIGN KEY (`work_id`) REFERENCES `work_orders` (`work_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_escrow_transactions`
--

LOCK TABLES `work_escrow_transactions` WRITE;
/*!40000 ALTER TABLE `work_escrow_transactions` DISABLE KEYS */;
INSERT INTO `work_escrow_transactions` VALUES (2,40,41,'Wkn103',25.00,'NGN',_binary '\0','2023-02-14 20:08:59','2023-02-14 20:08:59'),(4,40,41,'Wkn103',25.00,'NGN',_binary '\0','2023-02-19 11:09:49','2023-02-19 11:09:49'),(8,40,41,'Wkn103',25.00,'NGN',_binary '\0','2023-02-19 11:18:31','2023-02-19 11:18:31'),(12,49,50,'JSd106',400.00,'NGN',_binary '\0','2023-02-22 17:21:05','2023-02-22 17:21:05'),(16,49,50,'DLc107',20.00,'NGN',_binary '\0','2023-03-11 11:32:11','2023-03-11 11:32:11'),(20,60,54,'t5g109',10.00,'NGN',_binary '\0','2023-04-20 16:37:07','2023-04-20 16:37:07'),(24,60,64,'t5g109',10.00,'NGN',_binary '\0','2023-04-20 19:19:07','2023-04-20 19:19:07'),(28,69,68,'bwn110',10.00,'NGN',_binary '\0','2023-04-21 10:49:40','2023-04-21 10:49:40'),(32,60,54,'eUb111',1454.00,'NGN',_binary '\0','2023-04-22 10:56:54','2023-04-22 10:56:54'),(36,70,71,'Tkc112',2056.00,'NGN',_binary '\0','2023-04-22 12:19:38','2023-04-22 12:19:38'),(40,70,71,'AxD119',552.00,'USD',_binary '\0','2023-04-23 18:39:49','2023-04-23 18:39:49'),(46,70,71,'RVQ120',390.00,'USD',_binary '\0','2023-04-24 09:41:09','2023-04-24 09:41:09'),(50,70,71,'E5k122',192.00,'USD',_binary '\0','2023-04-24 09:49:04','2023-04-24 09:49:04'),(54,70,71,'Exm123',600.00,'USD',_binary '\0','2023-04-24 16:12:24','2023-04-24 16:12:24'),(58,70,71,'pVm129',243.00,'USD',_binary '\0','2023-04-25 08:42:20','2023-04-25 08:42:20'),(62,70,54,'mbk124',30.00,'USD',_binary '\0','2023-04-25 08:44:53','2023-04-25 08:44:53'),(66,73,72,'Xaj130',300.00,'USD',_binary '\0','2023-04-25 09:05:41','2023-04-25 09:05:41');
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
  PRIMARY KEY (`trans_id`),
  KEY `work_id` (`work_id`),
  KEY `freelancer_id` (`freelancer_id`),
  KEY `payment_status_id` (`payment_status_id`),
  CONSTRAINT `work_freelancer_payments_ibfk_1` FOREIGN KEY (`work_id`) REFERENCES `work_orders` (`work_id`),
  CONSTRAINT `work_freelancer_payments_ibfk_2` FOREIGN KEY (`freelancer_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `work_freelancer_payments_ibfk_3` FOREIGN KEY (`payment_status_id`) REFERENCES `work_payments_status` (`payment_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_freelancer_payments`
--

LOCK TABLES `work_freelancer_payments` WRITE;
/*!40000 ALTER TABLE `work_freelancer_payments` DISABLE KEYS */;
INSERT INTO `work_freelancer_payments` VALUES (7,'Wkn103',41,25.00,4,'NGN','Flutterwave Gateway','2023-02-19 11:09:49'),(11,'Wkn103',41,25.00,4,'NGN','Flutterwave Gateway','2023-02-19 11:18:31'),(15,'JSd106',50,400.00,6,'NGN','Flutterwave Gateway','2023-02-22 17:21:05'),(19,'DLc107',50,20.00,4,'NGN','Flutterwave Gateway','2023-03-11 11:32:11'),(23,'t5g109',54,10.00,4,'NGN','Flutterwave Gateway','2023-04-20 16:37:07'),(27,'t5g109',64,10.00,4,'NGN','Flutterwave Gateway','2023-04-20 19:19:07'),(31,'bwn110',68,10.00,4,'NGN','Flutterwave Gateway','2023-04-21 10:49:40'),(35,'eUb111',54,1454.00,6,'NGN','Flutterwave Gateway','2023-04-22 10:56:54'),(39,'Tkc112',71,2056.00,6,'NGN','Flutterwave Gateway','2023-04-22 12:19:38'),(43,'AxD119',71,552.00,6,'USD','Flutterwave Gateway','2023-04-23 18:39:49'),(49,'RVQ120',71,390.00,4,'USD','Flutterwave Gateway','2023-04-24 09:41:09'),(53,'E5k122',71,192.00,4,'USD','Flutterwave Gateway','2023-04-24 09:49:04'),(57,'Exm123',71,600.00,4,'USD','Flutterwave Gateway','2023-04-24 16:12:24'),(61,'pVm129',71,243.00,4,'USD','Flutterwave Gateway','2023-04-25 08:42:20'),(65,'mbk124',54,30.00,4,'USD','Flutterwave Gateway','2023-04-25 08:44:53'),(69,'Xaj130',72,300.00,6,'USD','Flutterwave Gateway','2023-04-25 09:05:41');
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
  `work_rate` varchar(255) DEFAULT NULL,
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
INSERT INTO `work_orders` VALUES ('6fZ116','xxx-voiceover',70,'ST103',2,1,'xxxx',2.00,4.00,'perseconds','2023-04-23 17:45:53','2023-04-23 17:45:53'),('AxD119','VoiceOver-test-2',70,'ST103',2,9,'xxxxxxxxxx',2.00,4.00,'perseconds','2023-04-23 18:35:48','2023-04-23 18:35:48'),('bwn110','The Godfather',69,'ST101',1,5,'Don Vito Corleone, head of a mafia family, decides to hand over his empire to his youngest son Michael. However, his decision unintentionally puts the lives of his loved ones in grave danger.',2.00,3.00,'perword','2023-04-21 10:42:43','2023-04-21 10:42:43'),('cTB115','xxxx',70,'ST101',1,1,'xxx',2.00,4.00,'perword','2023-04-23 15:16:12','2023-04-23 15:16:12'),('DLc107','Testing the application flow',49,'ST101',2,5,'Testing the application flow',10.00,20.00,'perword','2023-03-01 12:04:40','2023-03-01 12:04:40'),('drB127','Testing-03',70,'ST102',1,1,'Testing-03',2.00,4.00,'perword','2023-04-24 23:05:19','2023-04-24 23:05:19'),('E5k122','VoiceOver-05',70,'ST103',1,5,'VoiceOver-05',2.00,4.00,'perseconds','2023-04-24 09:48:18','2023-04-24 09:48:18'),('eUb111','Visual Studio',60,'ST101',1,9,'Visual Studio Code is a text editor for writing codes',2.00,4.00,'perword','2023-04-22 10:55:20','2023-04-22 10:55:20'),('eUl118','VoiceOver-02',70,'ST103',1,1,'xxxxxx',2.00,4.00,'perseconds','2023-04-23 18:28:23','2023-04-23 18:28:23'),('Exm123','voiceover-o6',70,'ST103',1,5,'voiceover-o6',2.00,4.00,'perseconds','2023-04-24 16:02:55','2023-04-24 16:02:55'),('FOi117','xxx-voiceover-01',70,'ST103',1,1,'xxxx',2.00,4.00,'perseconds','2023-04-23 17:57:33','2023-04-23 17:57:33'),('gLi104','The undiluted truth of Albert Einstein',47,'ST101',3,9,'The undiluted truth of Albert Einstein is a story about a genius who changed the idea of physics.',100.00,200.00,'perword','2023-01-25 19:24:17','2023-01-25 19:24:17'),('H97105','The Secrets of Dumbledore',49,'ST101',3,1,'The Secrets of Dumbledore is third installation of the fantastic beast franchise. this focuses on the story of Dumbledore and how he was able to save the world and britain.',100.00,200.00,'perword','2023-02-21 15:32:31','2023-02-21 15:32:31'),('j1u102','The early life of leonardo',37,'ST101',2,9,'The early life of leonardo',10.00,20.00,'perword','2023-01-04 22:16:46','2023-01-04 22:16:46'),('JgK121','VoiceOver-05',70,'ST101',1,1,'VoiceOver-05',2.00,4.00,'perword','2023-04-24 09:45:14','2023-04-24 09:45:14'),('JSd106','Fantastic beast and where to find them',49,'ST101',3,9,'Fantastic beast and where to find them',100.00,400.00,'perword','2023-02-21 19:10:12','2023-02-21 19:10:12'),('mbk124','transcribe-07',70,'ST102',1,1,'transcribe-07',2.00,4.00,'perpage','2023-04-24 17:07:03','2023-04-24 17:07:03'),('OCq108','The Ballad of Scrooge',60,'ST101',2,5,'The Movie focuses on four individuals',10.00,20.00,'perword','2023-04-16 15:28:54','2023-04-16 15:28:54'),('p9q113','The Legend of the seeker',70,'ST103',1,1,'The Legend of the seeker is a fictional show about a boy know as the seeker who fights to fulfill his destiny',2.00,3.00,'perseconds','2023-04-23 12:42:18','2023-04-23 12:42:18'),('pVm129','invoice-test03',70,'ST101',1,1,'invoice-test03',2.00,4.00,'perword','2023-04-25 08:39:40','2023-04-25 08:39:40'),('RVQ120','VoiceOver-03',70,'ST103',1,1,'VoiceOver-03',2.00,4.00,'perseconds','2023-04-24 09:35:03','2023-04-24 09:35:03'),('t5g109','Justice League',60,'ST104',2,5,'Justice League is a band of super heroes which include Superman, batman, Diana, flash, aqua man, cyborg and manhunter.',10.00,20.00,'perword','2023-04-16 17:04:09','2023-04-16 17:04:09'),('Tkc112','Destruction of Ikeja',70,'ST101',1,9,'Destruction of Ikeja',2.00,4.00,'perword','2023-04-22 12:15:14','2023-04-22 12:15:14'),('U65104','Transalte Can i Show my Love Audio to text',3,'ST103',4,12,'Can I Show my love',10.00,20.00,'perseconds','2022-11-20 13:18:53','2022-11-20 13:18:53'),('Ut2125','testing-flutter wave-changes',70,'ST103',1,1,'testing-flutter wave-changes',2.00,4.00,'perseconds','2023-04-24 21:46:42','2023-04-24 21:46:42'),('VTp126','Testing-02',70,'ST103',1,1,'Testing-02',2.00,4.00,'perseconds','2023-04-24 21:48:34','2023-04-24 21:48:34'),('Wcd114','The Legend of the seeker',70,'ST103',1,1,'The Legend of the seeker is a fictional show about a boy know as the seeker who fights to fulfill his destiny',2.00,3.00,'perseconds','2023-04-23 12:48:13','2023-04-23 12:48:13'),('Wkn103','Avengers',40,'ST101',2,5,'Avengers Description',20.00,30.00,'perword','2023-01-11 00:08:55','2023-01-11 00:08:55'),('Xaj130','ivoice-test01',73,'ST101',1,9,'ivoice-test01',2.00,4.00,'perword','2023-04-25 08:55:31','2023-04-25 08:55:31'),('xZT128','Invoice-test01',70,'ST101',1,1,'Invoice-test01',2.00,4.00,'perword','2023-04-25 08:28:57','2023-04-25 08:28:57');
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_payments`
--

LOCK TABLES `work_payments` WRITE;
/*!40000 ALTER TABLE `work_payments` DISABLE KEYS */;
INSERT INTO `work_payments` VALUES (6,40,'Wkn103',25.00,'NGN',4,'Flutterwave Gateway','2023-02-19 11:09:49'),(10,40,'Wkn103',25.00,'NGN',4,'Flutterwave Gateway','2023-02-19 11:18:31'),(14,49,'JSd106',400.00,'NGN',6,'Flutterwave Gateway','2023-02-22 17:21:05'),(18,49,'DLc107',20.00,'NGN',4,'Flutterwave Gateway','2023-03-11 11:32:11'),(22,60,'t5g109',10.00,'NGN',4,'Flutterwave Gateway','2023-04-20 16:37:07'),(26,60,'t5g109',10.00,'NGN',4,'Flutterwave Gateway','2023-04-20 19:19:07'),(30,69,'bwn110',10.00,'NGN',4,'Flutterwave Gateway','2023-04-21 10:49:40'),(34,60,'eUb111',1454.00,'NGN',6,'Flutterwave Gateway','2023-04-22 10:56:54'),(38,70,'Tkc112',2056.00,'NGN',6,'Flutterwave Gateway','2023-04-22 12:19:38'),(42,70,'AxD119',552.00,'USD',6,'Flutterwave Gateway','2023-04-23 18:39:49'),(48,70,'RVQ120',390.00,'USD',4,'Flutterwave Gateway','2023-04-24 09:41:09'),(52,70,'E5k122',192.00,'USD',4,'Flutterwave Gateway','2023-04-24 09:49:04'),(56,70,'Exm123',600.00,'USD',4,'Flutterwave Gateway','2023-04-24 16:12:24'),(60,70,'pVm129',243.00,'USD',4,'Flutterwave Gateway','2023-04-25 08:42:20'),(64,70,'mbk124',30.00,'USD',4,'Flutterwave Gateway','2023-04-25 08:44:53'),(68,73,'Xaj130',300.00,'USD',6,'Flutterwave Gateway','2023-04-25 09:05:41');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_payments_status`
--

LOCK TABLES `work_payments_status` WRITE;
/*!40000 ALTER TABLE `work_payments_status` DISABLE KEYS */;
INSERT INTO `work_payments_status` VALUES (1,'Pending'),(2,'Failed'),(3,'Successful'),(4,'Escrow'),(5,'Withdrawal'),(6,'In Account');
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
  `is_in_flow` bit(1) DEFAULT NULL,
  `entry_date` datetime DEFAULT NULL,
  PRIMARY KEY (`trans_id`),
  KEY `user_id` (`user_id`),
  KEY `work_id` (`work_id`),
  CONSTRAINT `work_transactions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `work_transactions_ibfk_2` FOREIGN KEY (`work_id`) REFERENCES `work_orders` (`work_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_transactions`
--

LOCK TABLES `work_transactions` WRITE;
/*!40000 ALTER TABLE `work_transactions` DISABLE KEYS */;
INSERT INTO `work_transactions` VALUES (3,41,'Wkn103',25.00,'NGN',_binary '','2023-02-14 20:08:59'),(5,41,'Wkn103',25.00,'NGN',_binary '','2023-02-19 11:09:49'),(9,41,'Wkn103',25.00,'NGN',_binary '','2023-02-19 11:18:31'),(13,50,'JSd106',400.00,'NGN',_binary '','2023-02-22 17:21:05'),(17,50,'DLc107',20.00,'NGN',_binary '','2023-03-11 11:32:11'),(21,54,'t5g109',10.00,'NGN',_binary '','2023-04-20 16:37:07'),(25,64,'t5g109',10.00,'NGN',_binary '','2023-04-20 19:19:07'),(29,68,'bwn110',10.00,'NGN',_binary '','2023-04-21 10:49:40'),(33,54,'eUb111',1454.00,'NGN',_binary '','2023-04-22 10:56:54'),(37,71,'Tkc112',2056.00,'NGN',_binary '','2023-04-22 12:19:38'),(41,71,'AxD119',552.00,'USD',_binary '','2023-04-23 18:39:49'),(44,71,'AxD119',500.00,'USD',_binary '\0','2023-04-23 22:58:38'),(45,71,'AxD119',500.00,'USD',_binary '\0','2023-04-23 23:04:04'),(47,71,'RVQ120',390.00,'USD',_binary '','2023-04-24 09:41:09'),(51,71,'E5k122',192.00,'USD',_binary '','2023-04-24 09:49:04'),(55,71,'Exm123',600.00,'USD',_binary '','2023-04-24 16:12:24'),(59,71,'pVm129',243.00,'USD',_binary '','2023-04-25 08:42:20'),(63,54,'mbk124',30.00,'USD',_binary '','2023-04-25 08:44:53'),(67,72,'Xaj130',300.00,'USD',_binary '','2023-04-25 09:05:41');
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

-- Dump completed on 2023-04-25 16:04:50
