CREATE DATABASE  IF NOT EXISTS `golf_club` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `golf_club`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: golf_club
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `golf_clubs`
--

DROP TABLE IF EXISTS `golf_clubs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `golf_clubs` (
  `Club Id` int(11) NOT NULL,
  `Club Name` varchar(45) NOT NULL,
  `Year` int(11) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `Details` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Club Id`,`Club Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `golf_clubs`
--

LOCK TABLES `golf_clubs` WRITE;
/*!40000 ALTER TABLE `golf_clubs` DISABLE KEYS */;
INSERT INTO `golf_clubs` VALUES (1732,'Alpha',2018,'Dhaka,bangladesh',NULL);
/*!40000 ALTER TABLE `golf_clubs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `No.` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `password` int(11) NOT NULL,
  PRIMARY KEY (`No.`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'shuvo',12345),(2,'admin',12345);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_lesson`
--

DROP TABLE IF EXISTS `member_lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_lesson` (
  `Id` int(11) NOT NULL,
  `Date` varchar(45) DEFAULT NULL,
  `Time` varchar(45) DEFAULT NULL,
  `Fees` varchar(45) DEFAULT NULL,
  `Code` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_lesson`
--

LOCK TABLES `member_lesson` WRITE;
/*!40000 ALTER TABLE `member_lesson` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_locker`
--

DROP TABLE IF EXISTS `member_locker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_locker` (
  `lockerno` int(11) NOT NULL,
  `id` varchar(45) DEFAULT NULL,
  `rentrate` int(11) DEFAULT '1000',
  `rentdate` varchar(45) DEFAULT NULL,
  `expiredate` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT 'Free',
  PRIMARY KEY (`lockerno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_locker`
--

LOCK TABLES `member_locker` WRITE;
/*!40000 ALTER TABLE `member_locker` DISABLE KEYS */;
INSERT INTO `member_locker` VALUES (901,' ',1000,' ',' ','Free'),(902,NULL,1000,NULL,NULL,'Free'),(903,NULL,1000,NULL,NULL,'Free'),(904,NULL,1000,NULL,NULL,'Free'),(905,NULL,1000,NULL,NULL,'Free'),(906,NULL,1000,NULL,NULL,'Free'),(907,NULL,1000,NULL,NULL,'Free'),(908,NULL,1000,NULL,NULL,'Free'),(909,NULL,1000,NULL,NULL,'Free'),(910,NULL,1000,NULL,NULL,'Free'),(911,NULL,1000,NULL,NULL,'Free'),(912,NULL,1000,NULL,NULL,'Free'),(913,NULL,1000,NULL,NULL,'Free'),(914,NULL,1000,NULL,NULL,'Free'),(915,NULL,1000,NULL,NULL,'Free'),(916,NULL,1000,NULL,NULL,'Free'),(917,NULL,1000,NULL,NULL,'Free'),(918,NULL,1000,NULL,NULL,'Free'),(919,NULL,1000,NULL,NULL,'Free'),(920,NULL,1000,NULL,NULL,'Free'),(921,NULL,1000,NULL,NULL,'Free'),(922,NULL,1000,NULL,NULL,'Free'),(923,NULL,1000,NULL,NULL,'Free'),(924,NULL,1000,NULL,NULL,'Free'),(925,NULL,1000,NULL,NULL,'Free');
/*!40000 ALTER TABLE `member_locker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memberlesson`
--

DROP TABLE IF EXISTS `memberlesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memberlesson` (
  `id` int(11) NOT NULL,
  `lessondateline` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `bookingdate` varchar(45) DEFAULT NULL,
  `lessonfee` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memberlesson`
--

LOCK TABLES `memberlesson` WRITE;
/*!40000 ALTER TABLE `memberlesson` DISABLE KEYS */;
/*!40000 ALTER TABLE `memberlesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `Id` int(11) NOT NULL,
  `First_Name` varchar(45) NOT NULL,
  `Last_Name` varchar(45) NOT NULL,
  `nid` int(11) DEFAULT NULL,
  `Phone` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `Others` varchar(45) DEFAULT NULL,
  `mtype` varchar(45) DEFAULT NULL,
  `blood` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1001,'Shuvo','Podder',123456789,'01731261732','shuvopodder9@gmail.com','Dhaka,Bangladesh',NULL,NULL,'O+','11.04.18','Male'),(1002,'Shuvo','Podder',123456789,'01731261732','shuvopodder9@gmail.com','Dhaka,Bangladesh',NULL,NULL,'O+','11.04.18','Male'),(1003,'Shuvo','Podder',123456789,'01731261732','shuvopodder9@gmail.com','Dhaka,Bangladesh',NULL,NULL,'O+','11.04.18','Male'),(1005,'Alpha','Beta',123456789,'12345','qwert','null',NULL,NULL,'O+','01.01.18','Male');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membership_type`
--

DROP TABLE IF EXISTS `membership_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membership_type` (
  `Code` int(11) NOT NULL AUTO_INCREMENT,
  `AnnualFees` varchar(45) DEFAULT NULL,
  `Description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB AUTO_INCREMENT=6008 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership_type`
--

LOCK TABLES `membership_type` WRITE;
/*!40000 ALTER TABLE `membership_type` DISABLE KEYS */;
INSERT INTO `membership_type` VALUES (6001,'20000','General'),(6005,'500000','Premium'),(6007,'250000','Gold');
/*!40000 ALTER TABLE `membership_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_method`
--

DROP TABLE IF EXISTS `pay_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_method` (
  `cardno` int(11) NOT NULL,
  `eiin` int(11) NOT NULL,
  `ValidDate` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cardno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_method`
--

LOCK TABLES `pay_method` WRITE;
/*!40000 ALTER TABLE `pay_method` DISABLE KEYS */;
INSERT INTO `pay_method` VALUES (123456789,123,'2020','Visa');
/*!40000 ALTER TABLE `pay_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payrecord`
--

DROP TABLE IF EXISTS `payrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payrecord` (
  `id` int(11) NOT NULL,
  `totalpay` varchar(45) NOT NULL,
  `status` varchar(45) DEFAULT 'due',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payrecord`
--

LOCK TABLES `payrecord` WRITE;
/*!40000 ALTER TABLE `payrecord` DISABLE KEYS */;
INSERT INTO `payrecord` VALUES (1000,'500000','due'),(1001,'500000','Paid'),(1002,'20000','Paid'),(1003,'500000','due'),(1005,'500000','due'),(1008,'500000','due'),(10011,'500000','due');
/*!40000 ALTER TABLE `payrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pro_shop`
--

DROP TABLE IF EXISTS `pro_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pro_shop` (
  `Shop Id` int(11) NOT NULL,
  `Club Id` int(11) DEFAULT NULL,
  `Opening Time` varchar(45) DEFAULT NULL,
  `Shop Details` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Shop Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pro_shop`
--

LOCK TABLES `pro_shop` WRITE;
/*!40000 ALTER TABLE `pro_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `pro_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professionals`
--

DROP TABLE IF EXISTS `professionals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professionals` (
  `ProId` int(11) NOT NULL,
  `ClubId` int(11) NOT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `Blood` varchar(45) DEFAULT NULL,
  `OthersDetails` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ProId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professionals`
--

LOCK TABLES `professionals` WRITE;
/*!40000 ALTER TABLE `professionals` DISABLE KEYS */;
INSERT INTO `professionals` VALUES (9001,1001,'Shuvo','Podder','Male','O+','null'),(9002,1006,'Alpha','Beta','Male','O+','null');
/*!40000 ALTER TABLE `professionals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `register` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `phone` int(11) NOT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `password` int(11) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-12  3:03:53
