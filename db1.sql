CREATE DATABASE  IF NOT EXISTS `cdg_pos` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `cdg_pos`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 21.21.16.56    Database: cdg_pos
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.21-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank` (
  `BANK_ID` int(15) NOT NULL AUTO_INCREMENT,
  `BANK_NAME` char(150) CHARACTER SET latin1 DEFAULT NULL,
  `COUNTRY_CODE` int(15) DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  PRIMARY KEY (`BANK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This table store information of banks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank`
--

LOCK TABLES `bank` WRITE;
/*!40000 ALTER TABLE `bank` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `COUNTRY_ID` int(15) NOT NULL AUTO_INCREMENT,
  `COUNTRY_NAME` char(150) CHARACTER SET latin1 DEFAULT NULL,
  `COUNTRY_CODE` char(10) CHARACTER SET latin1 DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  PRIMARY KEY (`COUNTRY_ID`),
  KEY `COUNTRY_CODE` (`COUNTRY_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This table store all information of country';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpg_products`
--

DROP TABLE IF EXISTS `cpg_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cpg_products` (
  `PRODUCT_ID` int(15) NOT NULL AUTO_INCREMENT,
  `PART_NO` char(50) CHARACTER SET latin1 DEFAULT NULL,
  `DESCRIPTION` varchar(200) DEFAULT NULL,
  `QTY` int(15) DEFAULT NULL,
  `PRICE` decimal(10,2) DEFAULT NULL,
  `BARCODE` char(20) CHARACTER SET latin1 DEFAULT NULL,
  `QR_CODE` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `UPDATED_BY` int(15) DEFAULT NULL,
  `CREATED_BY` int(15) DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_ID`),
  KEY `PART_NO` (`PART_NO`),
  KEY `DESCRIPTION` (`DESCRIPTION`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='This table will store all store products';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpg_products`
--

LOCK TABLES `cpg_products` WRITE;
/*!40000 ALTER TABLE `cpg_products` DISABLE KEYS */;
INSERT INTO `cpg_products` VALUES (1,'1601041912','Assorted Item  (Brown Tag)',38,100.00,NULL,NULL,'2017-06-22 17:04:34','2017-06-22 16:57:53',NULL,NULL),(2,'1601041913','Assorted Items (Blue Tag)',15,150.00,NULL,NULL,'2017-06-22 17:04:36','2017-06-22 16:57:55',NULL,NULL),(3,'1703134327','Metal Single Bed Frame',0,5000.00,NULL,NULL,'2017-06-28 11:03:24','2017-06-22 16:57:57',1,NULL),(4,'1703134337','Metal Single Bed Frame',1,5000.00,NULL,NULL,'2017-06-22 17:05:24','2017-06-22 16:57:59',NULL,NULL),(5,'1703218208','Reception/Guest Fabric Chair w/ Arms',1,1300.00,NULL,NULL,'2017-06-22 17:05:26','2017-06-22 16:58:01',NULL,NULL),(6,'1703224307','Study Table',22,1000.00,NULL,NULL,'2017-06-22 17:05:28','2017-06-22 16:58:03',NULL,NULL),(7,'1705034303','Stackable Chair (Blue)',5,500.00,NULL,NULL,'2017-06-22 17:04:50','2017-06-22 16:58:05',NULL,NULL),(8,'1706074307','Red Metal Folding Chair',1,600.00,NULL,NULL,'2017-06-22 17:04:52','2017-06-22 16:58:07',NULL,NULL),(9,'1706094309','Conference Vinyl Leather Chair',4,1500.00,NULL,NULL,'2017-06-22 17:04:54','2017-06-22 16:58:09',NULL,NULL),(10,'1706109512','Wood Open Shelves',1,3000.00,NULL,NULL,'2017-06-22 17:04:56','2017-06-22 16:58:11',NULL,NULL),(11,'1706139501','Dining Chair w/ Armrest',4,1600.00,NULL,NULL,'2017-06-22 17:04:58','2017-06-22 16:58:13',NULL,NULL),(12,'1706214304','The Home Store Foaming Super Oxygen Bathroom Cleaner, 12-oz.',9,150.00,NULL,NULL,'2017-06-22 17:05:00','2017-06-22 16:58:15',NULL,NULL),(13,'1706214319','Dell 20\" Widescreen LCD Monitor',1,2600.00,NULL,NULL,'2017-06-22 17:05:02','2017-06-22 16:58:17',NULL,NULL),(14,'1706214321','Dell 19\" Widescreen Flat Panel LCD Monitor',1,2200.00,NULL,NULL,'2017-06-22 17:05:04','2017-06-22 16:58:19',NULL,NULL),(15,'1706214322','View Sonic 22\"LCD Monitor',1,4000.00,NULL,NULL,'2017-06-22 17:05:06','2017-06-22 16:58:21',NULL,NULL),(16,'1706214323','CMV CT-934D 19\" LCD Monitor',1,1800.00,NULL,NULL,'2017-06-22 17:05:08','2017-06-22 16:58:23',NULL,NULL),(17,'1603124302','Assorted Items (Gray Tag)',137,200.00,NULL,NULL,'2017-06-22 17:05:20','2017-06-22 16:58:37',NULL,NULL),(18,'1602164333','Kids Chair Navy Blue',3,400.00,NULL,NULL,'2017-06-28 11:03:24','2017-06-22 16:59:19',1,NULL);
/*!40000 ALTER TABLE `cpg_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `CUSTOMER_ID` int(15) NOT NULL AUTO_INCREMENT,
  `LAST_NAME` char(50) CHARACTER SET latin1 DEFAULT NULL,
  `FIRST_NAME` char(50) CHARACTER SET latin1 DEFAULT NULL,
  `MIDDLE_NAME` char(50) CHARACTER SET latin1 DEFAULT NULL,
  `GENDER` tinyint(4) DEFAULT NULL COMMENT '0-MALE, 1-FEMALE',
  `PREFIXES_NAME` char(10) CHARACTER SET latin1 DEFAULT NULL,
  `ADDRESS` varchar(300) DEFAULT NULL,
  `EMAIL_ADDRESS` char(50) CHARACTER SET latin1 DEFAULT NULL,
  `CONTACT_NO` char(30) CHARACTER SET latin1 DEFAULT NULL,
  `PHOTO` blob,
  `UPDATED_AT` int(11) DEFAULT NULL,
  `CREATED_AT` int(11) DEFAULT NULL,
  `UPDATED_BY` int(15) DEFAULT NULL,
  `CREATED_BY` int(15) DEFAULT NULL,
  PRIMARY KEY (`CUSTOMER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='This store all customers information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'AGUIRRE','RONALD','EUBRA',NULL,NULL,'OLONGAPO','crossnodes@gmail.com','09345886578',NULL,NULL,NULL,NULL,NULL),(2,'Bayani','Von Romson','E',NULL,'','Olongapo','von@yahoo.com','0949635212',NULL,NULL,2147483647,NULL,1);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_emergency_info`
--

DROP TABLE IF EXISTS `emp_emergency_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_emergency_info` (
  `EMERGENCY_ID` int(15) NOT NULL AUTO_INCREMENT,
  `EMP_ID` int(15) NOT NULL,
  `NAME` char(150) CHARACTER SET latin1 DEFAULT NULL,
  `ADDRESS` varchar(300) DEFAULT NULL,
  `CONTACT_NO` char(30) CHARACTER SET latin1 DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `UPDATED_BY` int(15) DEFAULT NULL,
  `CREATED_BY` int(15) DEFAULT NULL,
  PRIMARY KEY (`EMERGENCY_ID`),
  KEY `EMP_ID` (`EMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This table store information of person to be contacted in case of emergency';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_emergency_info`
--

LOCK TABLES `emp_emergency_info` WRITE;
/*!40000 ALTER TABLE `emp_emergency_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `emp_emergency_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_info`
--

DROP TABLE IF EXISTS `emp_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_info` (
  `EMPLOYEE_ID` int(15) NOT NULL AUTO_INCREMENT,
  `ROLE_ID` int(15) NOT NULL,
  `EMP_NAME` char(100) CHARACTER SET latin1 DEFAULT NULL,
  `EMP_ADDRESS` varchar(300) DEFAULT NULL,
  `EMP_STATUS` tinyint(4) DEFAULT NULL COMMENT '0-ACTIVE, 1-RESIGNED',
  `EMAIL_ADDRESS` char(100) CHARACTER SET latin1 DEFAULT NULL,
  `CONTACT_NO` char(25) CHARACTER SET latin1 DEFAULT NULL,
  `BIRTH_DATE` date DEFAULT NULL,
  `GENDER` tinyint(4) DEFAULT NULL COMMENT '0-MALE, 1-FEMALE',
  `USER_NAME` char(30) CHARACTER SET latin1 DEFAULT NULL,
  `PASSWORD` char(16) CHARACTER SET latin1 DEFAULT NULL,
  `STORE_ID` int(15) DEFAULT NULL,
  `PHOTO` blob,
  `UPDATED_AT` datetime DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `UPDATED_BY` int(15) DEFAULT NULL,
  `CREATED_BY` int(15) DEFAULT NULL,
  PRIMARY KEY (`EMPLOYEE_ID`),
  KEY `ROLE_ID` (`ROLE_ID`),
  KEY `USER_NAME` (`USER_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='This table store information of employee';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_info`
--

LOCK TABLES `emp_info` WRITE;
/*!40000 ALTER TABLE `emp_info` DISABLE KEYS */;
INSERT INTO `emp_info` VALUES (1,1,'James Bond','OLONGAPO CITY',0,'james@yahoo.com',NULL,NULL,0,'james','1234',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `emp_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_role`
--

DROP TABLE IF EXISTS `emp_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_role` (
  `ROLE_ID` int(15) NOT NULL AUTO_INCREMENT,
  `ROLE_NAME` char(50) CHARACTER SET latin1 DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`),
  KEY `ROLE_NAME` (`ROLE_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='This table store information of employee role';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_role`
--

LOCK TABLES `emp_role` WRITE;
/*!40000 ALTER TABLE `emp_role` DISABLE KEYS */;
INSERT INTO `emp_role` VALUES (1,'MANAGER',NULL,'2017-06-21 00:00:00'),(2,'CASHIER',NULL,'2017-06-21 00:00:00'),(3,'TECHNICAL',NULL,'2017-06-21 00:00:00');
/*!40000 ALTER TABLE `emp_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pos_sales`
--

DROP TABLE IF EXISTS `pos_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pos_sales` (
  `SALES_ID` int(15) NOT NULL AUTO_INCREMENT,
  `CUSTOMER_ID` int(15) DEFAULT NULL,
  `EMPLOYEE_ID` int(15) DEFAULT NULL,
  `STORE_ID` int(15) DEFAULT NULL,
  `INVOICE_NO` char(50) CHARACTER SET latin1 DEFAULT NULL,
  `TRANS_DT` datetime DEFAULT NULL,
  `DEPOSIT_AMT` decimal(10,2) DEFAULT NULL,
  `TRANS_STATUS` tinyint(4) DEFAULT NULL COMMENT '0-PAID, 1-DEPOSIT',
  `TRANS_TYPE` tinyint(4) DEFAULT NULL COMMENT '0-CASH, 1-CHECKED, 2-CREDIT CARD',
  `UPLOAD_TAG` tinyint(4) DEFAULT NULL COMMENT '0-NOT UPLOAD, 1-UPLOADED',
  `BANK_ID` int(15) DEFAULT NULL,
  `CHECKED_DT` date DEFAULT NULL,
  `CHECKED_NO` int(15) DEFAULT NULL,
  `CREDIT_CARD_NAME` char(30) CHARACTER SET latin1 DEFAULT NULL,
  `CREDIT_CARD_NO` char(30) CHARACTER SET latin1 DEFAULT NULL,
  `DISCOUNT_TYPE` tinyint(1) DEFAULT NULL COMMENT '0-PER ITEM, 1-BULK',
  `TOTAL_ITEM` tinyint(4) DEFAULT NULL,
  `TOTAL_DISCOUNT` decimal(10,2) DEFAULT NULL,
  `TOTAL_AMT` decimal(10,2) DEFAULT NULL,
  `CANCEL_TAG` tinyint(4) DEFAULT NULL COMMENT '0-NOT CANCEL, 1-CANCEL TRANSACTION',
  `UPDATED_AT` datetime DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `UPDATED_BY` int(15) DEFAULT NULL,
  `CREATED_BY` int(15) DEFAULT NULL,
  PRIMARY KEY (`SALES_ID`),
  KEY `TRANS_STATUS` (`TRANS_STATUS`),
  KEY `TRANS_TYPE` (`TRANS_TYPE`),
  KEY `EMPLOYEE_ID` (`EMPLOYEE_ID`),
  KEY `STORE_ID` (`STORE_ID`),
  KEY `BANK_ID` (`BANK_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='This store all sales transaction';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pos_sales`
--

LOCK TABLES `pos_sales` WRITE;
/*!40000 ALTER TABLE `pos_sales` DISABLE KEYS */;
INSERT INTO `pos_sales` VALUES (1,1,1,1,'321654','2017-06-23 00:00:00',1000.00,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,2,NULL,1,'CP1-1-201761','2017-06-28 00:00:00',NULL,0,0,1,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2017-06-28 11:03:24',NULL,1);
/*!40000 ALTER TABLE `pos_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pos_sales_dtls`
--

DROP TABLE IF EXISTS `pos_sales_dtls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pos_sales_dtls` (
  `SALES_DTLS_ID` int(15) NOT NULL AUTO_INCREMENT,
  `SALES_ID` int(15) NOT NULL,
  `PRODUCT_ID` int(15) NOT NULL,
  `CDG_PRICE` decimal(10,2) DEFAULT NULL,
  `QTY` int(15) DEFAULT NULL,
  `SOLD_AMT` decimal(10,2) DEFAULT NULL,
  `DISCOUNT` decimal(10,2) DEFAULT NULL,
  `TOTAL_AMT` decimal(10,2) DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `CREATED_BY` int(15) DEFAULT NULL COMMENT 'EMPLOYEE ID FK',
  `UPDATED_AT` datetime DEFAULT NULL,
  `UPDATED_BY` int(15) DEFAULT NULL COMMENT 'EMPLOYEE ID FOR FK',
  PRIMARY KEY (`SALES_DTLS_ID`),
  KEY `SALES_ID` (`SALES_ID`),
  KEY `PRODUCT_ID` (`PRODUCT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pos_sales_dtls`
--

LOCK TABLES `pos_sales_dtls` WRITE;
/*!40000 ALTER TABLE `pos_sales_dtls` DISABLE KEYS */;
INSERT INTO `pos_sales_dtls` VALUES (1,1,1,100.00,5,100.00,20.00,80.00,NULL,NULL,NULL,NULL),(8,5,18,400.00,2,400.00,80.00,720.00,'2017-06-28 11:03:24',1,NULL,NULL),(9,5,3,5000.00,1,5000.00,250.00,4750.00,'2017-06-28 11:03:24',1,NULL,NULL);
/*!40000 ALTER TABLE `pos_sales_dtls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pos_store`
--

DROP TABLE IF EXISTS `pos_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pos_store` (
  `STORE_ID` int(15) NOT NULL AUTO_INCREMENT,
  `HASHED_CODE` varchar(60) DEFAULT NULL,
  `NAME` varchar(200) DEFAULT NULL,
  `ADDRESS` varchar(300) DEFAULT NULL,
  `MGR_NAME` char(100) CHARACTER SET latin1 DEFAULT NULL,
  `LATITUDE` int(15) DEFAULT NULL,
  `LONGITUDE` int(15) DEFAULT NULL,
  `EMAIL_ADDRESS` char(100) CHARACTER SET latin1 DEFAULT NULL,
  `CONTACT_NO` char(30) CHARACTER SET latin1 DEFAULT NULL,
  `STATUS` tinyint(4) DEFAULT NULL COMMENT '0-ACTIVE, 1-INACTIVE',
  `COUNTRY_CODE` int(15) DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `UPDATED_BY` int(15) DEFAULT NULL,
  `CREATED_BY` int(15) DEFAULT NULL,
  PRIMARY KEY (`STORE_ID`),
  KEY `NAME` (`NAME`),
  KEY `COUNTRY_CODE` (`COUNTRY_CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='This store all information of store and branches';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pos_store`
--

LOCK TABLES `pos_store` WRITE;
/*!40000 ALTER TABLE `pos_store` DISABLE KEYS */;
INSERT INTO `pos_store` VALUES (1,'4a52b9040ecdfc8fa584a85f59808368','CDG',NULL,NULL,NULL,NULL,NULL,NULL,2,3,NULL,NULL,NULL,NULL),(2,'3dce7d7690b126eca8e16e8764545dbe','Cheap Parts Guy',NULL,NULL,NULL,NULL,NULL,NULL,2,3,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `pos_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pos_table_seq`
--

DROP TABLE IF EXISTS `pos_table_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pos_table_seq` (
  `SEQ_ID` int(15) NOT NULL AUTO_INCREMENT,
  `TABLE_NAME` char(30) CHARACTER SET latin1 NOT NULL,
  `STORE_ID` int(15) DEFAULT NULL,
  `SEQ_YEAR` int(4) DEFAULT NULL COMMENT 'RESET SEQUENCE NUMBER EVERY YEAR',
  `SEQ_MM` int(4) DEFAULT NULL,
  `SEQ_NUM` int(15) DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `UPDATED_BY` int(11) DEFAULT NULL,
  PRIMARY KEY (`SEQ_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='THIS TABLE SAVE SEQ DATA FOR EACH STORE FOR INVOICE NO';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pos_table_seq`
--

LOCK TABLES `pos_table_seq` WRITE;
/*!40000 ALTER TABLE `pos_table_seq` DISABLE KEYS */;
INSERT INTO `pos_table_seq` VALUES (1,'pos_sales',1,2017,6,1,'2017-06-28 11:03:24',1,NULL,NULL);
/*!40000 ALTER TABLE `pos_table_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'cdg_pos'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-28 13:30:34
