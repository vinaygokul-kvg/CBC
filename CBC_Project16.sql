-- MySQL dump 10.13  Distrib 5.7.9, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: cbc
-- ------------------------------------------------------
-- Server version	6.0.8-alpha-community

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
-- Table structure for table `bank_user`
--

DROP TABLE IF EXISTS `bank_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_user` (
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `age` int(2) NOT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `contact_number` varchar(10) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `state` varchar(15) DEFAULT NULL,
  `user_id` varchar(15) NOT NULL,
  `password` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_user`
--

LOCK TABLES `bank_user` WRITE;
/*!40000 ALTER TABLE `bank_user` DISABLE KEYS */;
INSERT INTO `bank_user` VALUES ('fdwqsrd','dqwd',23,'Female','1236547892','sdfs','aff','afwfa','ddw'),('vinay','gokul',21,'Male','234234','Chennai','TN','vinay','123456');
/*!40000 ALTER TABLE `bank_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chargeback`
--

DROP TABLE IF EXISTS `chargeback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chargeback` (
  `account_number` bigint(16) NOT NULL,
  `chargeback_amount` double DEFAULT NULL,
  `chargeback_date` datetime DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`account_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chargeback`
--

LOCK TABLES `chargeback` WRITE;
/*!40000 ALTER TABLE `chargeback` DISABLE KEYS */;
INSERT INTO `chargeback` VALUES (100200300400123,205,'2019-04-24 00:00:00','Mani','2 Months Late'),(100200300400125,28.25,'2019-04-29 00:00:00','Rahul','Late Fees'),(100200300400126,4.106666666666667,'2019-04-29 00:00:00','Nivetha','Late Fees');
/*!40000 ALTER TABLE `chargeback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emi`
--

DROP TABLE IF EXISTS `emi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emi` (
  `loan_id` int(11) NOT NULL,
  `dueDate` datetime DEFAULT NULL,
  `paidDate` datetime DEFAULT NULL,
  PRIMARY KEY (`loan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emi`
--

LOCK TABLES `emi` WRITE;
/*!40000 ALTER TABLE `emi` DISABLE KEYS */;
INSERT INTO `emi` VALUES (1,'2019-03-23 00:00:00','2019-04-24 00:00:00'),(2,'2019-05-23 00:00:00','2019-04-18 00:00:00'),(3,'2019-05-23 00:00:00','2019-06-23 00:00:00'),(4,'2019-05-29 00:00:00','2019-06-29 00:00:00'),(5,'2019-05-29 00:00:00','2019-05-21 00:00:00');
/*!40000 ALTER TABLE `emi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan`
--

DROP TABLE IF EXISTS `loan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loan` (
  `loan_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_number` bigint(16) DEFAULT NULL,
  `customer_name` varchar(45) DEFAULT NULL,
  `emi_amount` double DEFAULT NULL,
  `interest_rate` double DEFAULT NULL,
  `loan_amount` double DEFAULT NULL,
  `no_of_years` int(11) DEFAULT NULL,
  `sanction_date` datetime DEFAULT NULL,
  PRIMARY KEY (`loan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan`
--

LOCK TABLES `loan` WRITE;
/*!40000 ALTER TABLE `loan` DISABLE KEYS */;
INSERT INTO `loan` VALUES (1,100200300400123,'Mani',57000,14,1200000,2,'2019-04-23 00:00:00'),(2,100200300400124,'Reddy',194750,14,12300000,6,'2019-04-23 00:00:00'),(3,100200300400125,'Rahul',28250,13,1500000,5,'2019-04-23 00:00:00'),(4,100200300400126,'Nivetha',4106.666666666667,12,220000,5,'2019-04-29 00:00:00'),(5,100200300400127,'Raffic',91666.66666666667,10,5000000,5,'2019-04-29 00:00:00'),(6,100200300400128,'Shravya',76000,14,4000000,5,'2019-04-29 00:00:00'),(7,100200300400129,'Susmaja',12325,16,510000,4,'2019-04-29 00:00:00'),(9,100200300400130,'Kalyani',12444.444444444445,12,400000,3,'2019-04-29 00:00:00'),(10,100200300400131,'Nivetha Pethuraj',3117.3333333333335,12,100200,3,'2019-04-29 00:00:00');
/*!40000 ALTER TABLE `loan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refund`
--

DROP TABLE IF EXISTS `refund`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refund` (
  `refund_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(45) DEFAULT NULL,
  `account_number` bigint(16) DEFAULT NULL,
  `chargeback_amount` double DEFAULT NULL,
  `refund_date` datetime DEFAULT NULL,
  `reason` varchar(45) DEFAULT NULL,
  `refund_status` varchar(45) DEFAULT NULL,
  `refund_amount` double DEFAULT NULL,
  `comments` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`refund_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refund`
--

LOCK TABLES `refund` WRITE;
/*!40000 ALTER TABLE `refund` DISABLE KEYS */;
INSERT INTO `refund` VALUES (1,'Mani',100200300400123,200,'2019-04-24 00:00:00','2 Months Late','yre',234,'dsfas');
/*!40000 ALTER TABLE `refund` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-30 17:19:41
