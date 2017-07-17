CREATE DATABASE  IF NOT EXISTS `cdg_pos` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `cdg_pos`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: cdg_pos
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This store all customers information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This table store information of employee';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_info`
--

LOCK TABLES `emp_info` WRITE;
/*!40000 ALTER TABLE `emp_info` DISABLE KEYS */;
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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='This table will store all store products';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'1612094318','Outdoor Dining High Chair',22,1800.00,NULL,NULL,'2017-06-25 16:45:13','2017-06-25 16:45:13',NULL,NULL),(2,'1701064304','Study Table',57,1500.00,NULL,NULL,'2017-06-25 16:45:14','2017-06-25 16:45:14',NULL,NULL),(3,'1701284307','Assorted Items (Brown Tag )CP1',166,100.00,NULL,NULL,'2017-06-25 16:45:16','2017-06-25 16:45:16',NULL,NULL),(4,'1701284309','Assorted Items (Gray Tag)CP1',126,200.00,NULL,NULL,'2017-06-25 16:45:17','2017-06-25 16:45:17',NULL,NULL),(5,'1701284310','Assorted Items (Gold Tag)CP1',175,300.00,NULL,NULL,'2017-06-25 16:45:18','2017-06-25 16:45:18',NULL,NULL),(6,'1702164372','5 Drawers Steel Age Vertical Letter Size Filing Cabinet',1,6000.00,NULL,NULL,'2017-06-25 16:45:20','2017-06-25 16:45:20',NULL,NULL),(7,'1702254313','2 Drawers Vertical Metal Letter Size Filing Cabinet',1,2700.00,NULL,NULL,'2017-06-25 16:45:21','2017-06-25 16:45:21',NULL,NULL),(8,'1703044334','Assorted Used Clothes',1,70.00,NULL,NULL,'2017-06-25 16:56:21','2017-06-25 16:45:22',NULL,NULL),(9,'1703184323','4 Drawers Anderson Hickey Vertical Letter Size Filing Cabinet',13,6000.00,NULL,NULL,'2017-06-25 16:45:24','2017-06-25 16:45:24',NULL,NULL),(10,'1704124306','Kitchen Knife',7,100.00,NULL,NULL,'2017-06-25 16:45:25','2017-06-25 16:45:25',NULL,NULL),(11,'1704274323','4 Drawers HON Vertical Letter Size Filing Cabinet',1,6000.00,NULL,NULL,'2017-06-25 16:45:27','2017-06-25 16:45:27',NULL,NULL),(12,'1705124309','5 Drawers Lateral Legal Size Filing Cabinet',1,7000.00,NULL,NULL,'2017-06-25 16:45:28','2017-06-25 16:45:28',NULL,NULL),(13,'1705124324','The Home Store Foaming Super Oxygen Bathroom Cleaner, 12-oz.',10,150.00,NULL,NULL,'2017-06-25 16:45:30','2017-06-25 16:45:30',NULL,NULL),(14,'1705124328','Pringles 125g (BBQ Flavor)',22,100.00,NULL,NULL,'2017-06-25 16:45:31','2017-06-25 16:45:31',NULL,NULL),(15,'1705124335','Santoku Knife',3,100.00,NULL,NULL,'2017-06-25 16:45:32','2017-06-25 16:45:32',NULL,NULL),(16,'1705224303','Wood Open Shelves',1,5000.00,NULL,NULL,'2017-06-25 16:45:34','2017-06-25 16:45:34',NULL,NULL),(17,'1705314333','Fusion Dining Table and Chair Set',1,5000.00,NULL,NULL,'2017-06-25 16:45:35','2017-06-25 16:45:35',NULL,NULL),(18,'1706034316','Trash Bin',1,500.00,NULL,NULL,'2017-06-25 16:45:37','2017-06-25 16:45:37',NULL,NULL),(19,'1706104371','Wood TV Stand with Shelves',1,4000.00,NULL,NULL,'2017-06-25 16:45:38','2017-06-25 16:45:38',NULL,NULL),(20,'1706104389','Wood Dining Table',1,4500.00,NULL,NULL,'2017-06-25 16:45:39','2017-06-25 16:45:39',NULL,NULL),(21,'1706134344','Wood Dining Chair',3,2500.00,NULL,NULL,'2017-06-25 16:45:41','2017-06-25 16:45:41',NULL,NULL),(22,'1706134375','Wood Horse Swing',1,600.00,NULL,NULL,'2017-06-25 16:45:42','2017-06-25 16:45:42',NULL,NULL),(23,'1706154351','Wood Stick Back Dining Chair',1,1500.00,NULL,NULL,'2017-06-25 16:45:44','2017-06-25 16:45:44',NULL,NULL),(24,'1706164307','Baby Walker',1,500.00,NULL,NULL,'2017-06-25 16:45:45','2017-06-25 16:45:45',NULL,NULL),(25,'1706164310','BabiesRUS Baby Green and White Walker',1,500.00,NULL,NULL,'2017-06-25 16:45:46','2017-06-25 16:45:46',NULL,NULL),(26,'1706214303','The Home Store Foaming Super Oxygen Bathroom Cleaner 13-oz.',10,150.00,NULL,NULL,'2017-06-25 16:45:48','2017-06-25 16:45:48',NULL,NULL),(27,'1706214337','Wood Foot Rest Stool Chair Green',1,600.00,NULL,NULL,'2017-06-25 16:45:49','2017-06-25 16:45:49',NULL,NULL),(28,'1706214341','Key Box with Lock',1,800.00,NULL,NULL,'2017-06-25 16:45:51','2017-06-25 16:45:51',NULL,NULL),(29,'1706214342','Key Box with Lock',1,500.00,NULL,NULL,'2017-06-25 16:45:52','2017-06-25 16:45:52',NULL,NULL),(30,'1706214346','Wood Dining Armrest Chair w/ Fabric Cushion',1,2000.00,NULL,NULL,'2017-06-25 16:45:53','2017-06-25 16:45:53',NULL,NULL),(31,'1706234304','Wood Fiddle-Back Dining Chair',2,2200.00,NULL,NULL,'2017-06-25 16:45:55','2017-06-25 16:45:55',NULL,NULL),(32,'1706234317','Wood High Faux Leather Chair',1,2500.00,NULL,NULL,'2017-06-25 16:45:56','2017-06-25 16:45:56',NULL,NULL),(33,'1706234325','Aluminum Outdoor Folding Chair w/ Armrest',2,400.00,NULL,NULL,'2017-06-25 16:45:57','2017-06-25 16:45:57',NULL,NULL),(34,'1706234326','Wood Stool Swivel Side Chair',1,1500.00,NULL,NULL,'2017-06-25 16:45:59','2017-06-25 16:45:59',NULL,NULL),(35,'1706234328','High-Back Black Office Task Chair w/ Armrest',1,2300.00,NULL,NULL,'2017-06-25 16:46:00','2017-06-25 16:46:00',NULL,NULL),(36,'1706234330','Mid-Back Office Chair w/ Armrest',1,1700.00,NULL,NULL,'2017-06-25 16:46:02','2017-06-25 16:46:02',NULL,NULL),(37,'1706234361','Metal Open Shelves Compartment Storage',1,1500.00,NULL,NULL,'2017-06-25 16:46:03','2017-06-25 16:46:03',NULL,NULL),(38,'1706234362','Metal Magazine Shelves',1,1500.00,NULL,NULL,'2017-06-25 16:46:04','2017-06-25 16:46:04',NULL,NULL),(39,'1706234363','Wood Shelves (Set of 2)',2,400.00,NULL,NULL,'2017-06-25 16:46:06','2017-06-25 16:46:06',NULL,NULL),(40,'1706234365','Floor Lamp',1,1500.00,NULL,NULL,'2017-06-25 16:46:07','2017-06-25 16:46:07',NULL,NULL),(41,'1706244302','2 Drawer Vertical Letter Size File Cabinet',1,2700.00,NULL,NULL,'2017-06-25 16:46:09','2017-06-25 16:46:09',NULL,NULL),(42,'1706244304','5 Drawers Lateral Legal Size Filing Cabinet',1,7000.00,NULL,NULL,'2017-06-25 16:46:10','2017-06-25 16:46:10',NULL,NULL),(43,'1706244305','Office Mid-Back Swivel Task Armless Chairs',8,1200.00,NULL,NULL,'2017-06-25 16:46:11','2017-06-25 16:46:11',NULL,NULL),(44,'1706244306','Metal Open Shelves 5-Tier Layers',1,5500.00,NULL,NULL,'2017-06-25 16:46:13','2017-06-25 16:46:13',NULL,NULL),(45,'1706244307','Aluminum Bike Frame',1,1500.00,NULL,NULL,'2017-06-25 16:46:14','2017-06-25 16:46:14',NULL,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales` (
  `SALES_ID` int(15) NOT NULL AUTO_INCREMENT,
  `PRODUCT_ID` int(15) DEFAULT NULL,
  `CUSTOMER_ID` int(15) DEFAULT NULL,
  `EMPLOYEE_ID` int(15) DEFAULT NULL,
  `STORE_ID` int(15) DEFAULT NULL,
  `TRANS_DT` datetime DEFAULT NULL,
  `SOLD_AMNT` decimal(10,2) DEFAULT NULL,
  `DEPOSIT_AMT` decimal(10,2) DEFAULT NULL,
  `TRANS_STATUS` tinyint(4) DEFAULT NULL COMMENT '0-PAID, 1-DEPOSIT',
  `TRANS_TYPE` tinyint(4) DEFAULT NULL COMMENT '0-CASH, 1-CHECKED, 2-CREDIT CARD',
  `UPLOAD_STATUS` tinyint(4) DEFAULT NULL COMMENT '0-NOT UPLOAD, 1-UPLOADED',
  `BANK_ID` int(15) DEFAULT NULL,
  `BANK_ACCOUNT_NO` int(15) DEFAULT NULL,
  `CHECKED_NO` int(15) DEFAULT NULL,
  `CREDIT_CARD_NAME` char(30) CHARACTER SET latin1 DEFAULT NULL,
  `CREDIT_CARD_NO` char(30) CHARACTER SET latin1 DEFAULT NULL,
  `DISCOUNT_TYPE` tinyint(1) DEFAULT NULL COMMENT '0-PER ITEM, 1-BULK',
  `DISCOUNT_AMT` decimal(10,2) DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `UPDATED_BY` int(15) DEFAULT NULL,
  `CREATED_BY` int(15) DEFAULT NULL,
  PRIMARY KEY (`SALES_ID`),
  KEY `PRODUCT_ID` (`PRODUCT_ID`),
  KEY `TRANS_STATUS` (`TRANS_STATUS`),
  KEY `TRANS_TYPE` (`TRANS_TYPE`),
  KEY `EMPLOYEE_ID` (`EMPLOYEE_ID`),
  KEY `STORE_ID` (`STORE_ID`),
  KEY `BANK_ID` (`BANK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This store all sales transaction';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store` (
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='This store all information of store and branches';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES (1,'15a3850c197a25644d3245be1e2f69bd','CDG Pacific','SBDMZ SBMA',NULL,NULL,NULL,NULL,'250-2622',2,3,NULL,NULL,NULL,NULL),(2,'77507d2d9305c830e433c4afe6a1657e','Cheap Parts Guy','14th St. Total Gas Station SBMA',NULL,NULL,NULL,NULL,'250-2622',2,3,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webhook`
--

DROP TABLE IF EXISTS `webhook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webhook` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) DEFAULT NULL,
  `post_url` varchar(200) DEFAULT NULL,
  `get_url` varchar(200) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webhook`
--

LOCK TABLES `webhook` WRITE;
/*!40000 ALTER TABLE `webhook` DISABLE KEYS */;
INSERT INTO `webhook` VALUES (1,1,'http://cheappartsguy.com','http://cheappartsguy.com',2,NULL,NULL);
/*!40000 ALTER TABLE `webhook` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-17 20:22:16
