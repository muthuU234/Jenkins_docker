CREATE DATABASE  IF NOT EXISTS `EXPORT` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `EXPORT`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: backend
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `a`
--

DROP TABLE IF EXISTS `a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `a` (
  `value1` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a`
--

LOCK TABLES `a` WRITE;
/*!40000 ALTER TABLE `a` DISABLE KEYS */;
INSERT INTO `a` VALUES ('1'),('2'),('3'),('4'),('5');
/*!40000 ALTER TABLE `a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accepted`
--

DROP TABLE IF EXISTS `accepted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accepted` (
  `AID` int NOT NULL AUTO_INCREMENT,
  `BID` int DEFAULT NULL,
  `CID` int DEFAULT NULL,
  `BOOKED_TIME` datetime DEFAULT NULL,
  `PRODNAME` varchar(100) DEFAULT NULL,
  `ACCEPTED_TIME` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`AID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accepted`
--

LOCK TABLES `accepted` WRITE;
/*!40000 ALTER TABLE `accepted` DISABLE KEYS */;
INSERT INTO `accepted` VALUES (1,32,1,'2025-10-24 12:19:19','DOCUMENTS','2025-10-24 12:25:06'),(2,27,2,'2025-10-24 12:19:19','LAPTOP','2025-11-14 20:11:04'),(3,28,1,'2025-10-24 12:19:19','DOCUMENTS','2025-11-14 20:23:28'),(4,29,2,'2025-10-24 12:19:19','LAPTOP','2025-11-17 19:32:48'),(5,34,3,NULL,'Documents','2025-11-17 19:33:45'),(6,35,3,NULL,'Documents','2025-11-17 19:33:57'),(7,30,1,'2025-10-24 12:19:19','DOCUMENTS','2025-12-05 16:22:59'),(8,46,3,NULL,'Documents','2025-12-05 16:28:58'),(9,45,3,NULL,'Documents','2025-12-05 16:29:17'),(10,40,3,NULL,'Documents','2025-12-15 16:34:01'),(11,54,2,'2025-12-15 17:17:13','OTHERS','2025-12-15 17:37:15'),(12,59,2,'2025-12-15 17:57:15','others','2025-12-15 17:57:50'),(13,58,2,'2025-12-15 17:56:33','others','2025-12-19 14:08:16'),(14,36,3,NULL,'Documents','2026-03-27 10:53:38');
/*!40000 ALTER TABLE `accepted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `AID` int NOT NULL AUTO_INCREMENT,
  `ANAME` char(50) DEFAULT NULL,
  `APASS` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`AID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'string','string'),(2,NULL,NULL),(3,NULL,NULL),(4,NULL,NULL),(5,NULL,NULL),(6,'MUTHU','HELLO'),(7,'muthu','java'),(8,'',''),(9,'',''),(10,'',''),(11,'',''),(12,'',''),(13,'aa','ss'),(14,'raja','raja123'),(15,'',NULL),(16,'',NULL),(17,'raja','12345678'),(18,'muthu','muthu123'),(19,'class','class123'),(20,'muthu','muthu123'),(21,'sample','sample123'),(22,'client','client123'),(23,'raj','raj123'),(24,'raj','raj123'),(25,'client','client123');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b`
--

DROP TABLE IF EXISTS `b`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b` (
  `value2` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b`
--

LOCK TABLES `b` WRITE;
/*!40000 ALTER TABLE `b` DISABLE KEYS */;
INSERT INTO `b` VALUES ('2'),('4');
/*!40000 ALTER TABLE `b` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `BID` int NOT NULL AUTO_INCREMENT,
  `PRODNAME` varchar(30) DEFAULT NULL,
  `WEIGHT` double DEFAULT NULL,
  `PRICE` double DEFAULT NULL,
  `SRC` varchar(25) DEFAULT NULL,
  `DEST` varchar(25) DEFAULT NULL,
  `STATUS` varchar(10) DEFAULT 'PENDING',
  `CID` int DEFAULT NULL,
  `booked_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`BID`),
  KEY `CID` (`CID`),
  CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`CID`) REFERENCES `client` (`CID`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (3,'Laptop',23.67,234,'dcd','jad','ACCEPTED',1,'2025-10-21 11:59:17'),(20,'Documents',23.43,216.2589,'ch','md','REJECTED',2,NULL),(21,'Laptop',43.43,10857.5,'tr','sk','ACCEPTED',2,NULL),(22,'Laptop',43.43,10857.5,'tr','sk','ACCEPTED',2,NULL),(24,'Documents',13.43,123.9589,'dl','lcknw','Accepted',3,NULL),(25,'Documents',20.78,191.79940000000002,'chennai','salem','REJECTED',2,NULL),(26,'Documents',123.45,1139.4435,'trchy','mdri','REJECTED',2,NULL),(27,'LAPTOP',120.5,15000,'Chennai','Bangalore','ACCEPTED',2,'2025-10-24 12:19:19'),(28,'DOCUMENTS',300,18000,'Hyderabad','Chennai','ACCEPTED',1,'2025-10-24 12:19:19'),(29,'LAPTOP',75,9500,'Mumbai','Pune','ACCEPTED',2,'2025-10-24 12:19:19'),(30,'DOCUMENTS',200,22000,'Kochi','Trivandrum','ACCEPTED',1,'2025-10-24 12:19:19'),(31,'DOCUMENTS',50,12500,'Delhi','Jaipur','REJECTED',3,'2025-10-24 12:19:19'),(32,'DOCUMENTS',500,40000,'Ahmedabad','Surat','ACCEPTED',1,'2025-10-24 12:19:19'),(34,'Documents',234,2159.82,'ds','gt','ACCEPTED',3,NULL),(35,'Documents',234,2159.82,'df','ss','ACCEPTED',3,NULL),(36,'Documents',23,212.29000000000002,'ds','sa','ACCEPTED',3,NULL),(37,'Documents',34,313.82,'df','dss','PENDING',3,NULL),(38,'Documents',34,313.82,'ds','sa','PENDING',3,NULL),(39,'Documents',435,4015.05,'re','dss','PENDING',3,NULL),(40,'Documents',4343,40085.89,'asd','aa','ACCEPTED',3,NULL),(41,'Documents',4343,40085.89,'asd','aa','PENDING',3,NULL),(42,'Documents',4343,40085.89,'asd','aa','PENDING',3,NULL),(43,'Documents',23,212.29000000000002,'df','ertr','REJECTED',3,NULL),(44,'Documents',23,212.29000000000002,'df','ertr','REJECTED',3,NULL),(45,'Documents',23,235.29000000000002,'tiruchy','chennai','ACCEPTED',3,NULL),(46,'Documents',23,235.29000000000002,'tiruchy','chennai','ACCEPTED',3,NULL),(47,'groceries',12.89,45.888400000000004,'chennai','tiruchy','REJECTED',3,NULL),(48,'groceries',223.4,795.3040000000001,'chennai','salem','REJECTED',2,NULL),(49,'others',233,7197.37,'ui','uk','REJECTED',2,NULL),(50,'others',67.5,2085.075,'trk','chennai','REJECTED',2,NULL),(51,'others',23.4,722.826,'dk','ck','PENDING',2,NULL),(52,'groceries',342,1217.52,'dh','dk','PENDING',2,NULL),(53,'others',678.89,20970.9121,'hgg','gg','PENDING',2,NULL),(54,'OTHERS',234,7789,'CHENNAI','SALEM','ACCEPTED',2,'2025-12-15 17:17:13'),(55,'others',45.8,1414.762,'chennai','trchy','PENDING',2,'2025-12-15 11:53:48'),(56,'others',675.9,20878.551,'jgf','hgfh','REJECTED',2,NULL),(57,'others',12,370.68,'sdc','fvc','REJECTED',2,NULL),(58,'others',88,2718.32,'ch','dl','ACCEPTED',2,'2025-12-15 17:56:33'),(59,'others',67,2069.63,'hgc','gvj','ACCEPTED',2,'2025-12-15 17:57:15'),(60,'others',23.44,724.0616,'chennai','triuchy','PENDING',2,'2025-12-23 17:55:13');
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `CID` int NOT NULL AUTO_INCREMENT,
  `CNAME` char(50) DEFAULT NULL,
  `CPASS` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'hchc','35353'),(2,'muthu','muthu123'),(3,'raja','raja123'),(4,'string','string'),(5,'aa','ss'),(6,'aa','ZZ'),(7,'anathi','anathi123'),(8,'muthu','muthu123');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hacker`
--

DROP TABLE IF EXISTS `hacker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hacker` (
  `HACKER_ID` int NOT NULL,
  `NAME` char(200) DEFAULT NULL,
  PRIMARY KEY (`HACKER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hacker`
--

LOCK TABLES `hacker` WRITE;
/*!40000 ALTER TABLE `hacker` DISABLE KEYS */;
INSERT INTO `hacker` VALUES (1,'Alice Johnson'),(2,'Bob Smith'),(3,'Charlie Brown'),(4,'Diana Wilson'),(5,'Eve Davis');
/*!40000 ALTER TABLE `hacker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jv`
--

DROP TABLE IF EXISTS `jv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jv` (
  `JID` int NOT NULL,
  `JNAME` char(100) DEFAULT NULL,
  `JDEPID` int NOT NULL,
  PRIMARY KEY (`JDEPID`,`JID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jv`
--

LOCK TABLES `jv` WRITE;
/*!40000 ALTER TABLE `jv` DISABLE KEYS */;
/*!40000 ALTER TABLE `jv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `PNAME` varchar(100) DEFAULT NULL,
  `PRICE` double DEFAULT NULL,
  `STOCKS` int DEFAULT NULL,
  `UPLOADED_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `PID` int NOT NULL AUTO_INCREMENT,
  `PRODNAME` varchar(30) DEFAULT NULL,
  `PRICE` double DEFAULT NULL,
  PRIMARY KEY (`PID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Documents',11.22),(2,'Mobile Phone',98.9),(3,'Clothing Parcel',40),(4,'Laptop',250),(5,'Food Package',30),(6,'others',30.89),(7,'string',0),(8,'gadgets',15.77),(9,'Foods',11),(10,'cosmetics',23.44),(11,'groceries',3.56);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rejected`
--

DROP TABLE IF EXISTS `rejected`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rejected` (
  `RID` int NOT NULL AUTO_INCREMENT,
  `BID` int DEFAULT NULL,
  `CID` int DEFAULT NULL,
  `REJECTED_TIME` datetime DEFAULT CURRENT_TIMESTAMP,
  `PRODNAME` varchar(100) DEFAULT NULL,
  `booked_time` datetime DEFAULT NULL,
  PRIMARY KEY (`RID`),
  KEY `BID` (`BID`),
  KEY `CID` (`CID`),
  CONSTRAINT `rejected_ibfk_1` FOREIGN KEY (`BID`) REFERENCES `bookings` (`BID`),
  CONSTRAINT `rejected_ibfk_2` FOREIGN KEY (`CID`) REFERENCES `client` (`CID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rejected`
--

LOCK TABLES `rejected` WRITE;
/*!40000 ALTER TABLE `rejected` DISABLE KEYS */;
INSERT INTO `rejected` VALUES (1,31,3,'2025-10-24 12:24:52','DOCUMENTS',NULL),(2,44,3,'2025-12-15 16:33:44','Documents',NULL),(3,47,3,'2025-12-15 16:37:37','groceries',NULL),(4,43,3,'2025-12-15 16:45:18','Documents',NULL),(5,48,2,'2025-12-15 16:47:29','groceries',NULL),(6,49,2,'2025-12-15 16:51:35','others',NULL),(7,50,2,'2025-12-15 16:58:33','others',NULL),(8,56,2,'2025-12-15 17:28:16','others',NULL),(9,57,2,'2025-12-15 17:31:09','others',NULL);
/*!40000 ALTER TABLE `rejected` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submission`
--

DROP TABLE IF EXISTS `submission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `submission` (
  `SUBMISSION_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `SUBMISSION_ID` int NOT NULL,
  `HACKER_ID` int DEFAULT NULL,
  `SCORE` int DEFAULT NULL,
  PRIMARY KEY (`SUBMISSION_ID`),
  KEY `HACKER_ID` (`HACKER_ID`),
  CONSTRAINT `submission_ibfk_1` FOREIGN KEY (`HACKER_ID`) REFERENCES `hacker` (`HACKER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission`
--

LOCK TABLES `submission` WRITE;
/*!40000 ALTER TABLE `submission` DISABLE KEYS */;
INSERT INTO `submission` VALUES ('2025-12-01 04:30:00',1,1,85),('2025-12-01 06:00:00',2,1,92),('2025-12-02 03:45:00',3,2,78),('2025-12-02 08:50:00',4,2,88),('2025-12-02 11:15:00',5,1,95),('2025-12-03 03:00:00',6,3,70),('2025-12-03 06:30:00',7,1,89),('2025-12-03 11:40:00',8,4,82),('2025-12-04 05:15:00',9,2,91),('2025-12-04 07:50:00',10,5,76),('2025-12-05 03:30:00',11,1,94),('2025-12-05 10:00:00',12,3,85),('2025-12-06 05:45:00',13,2,87),('2025-12-06 08:30:00',14,4,90),('2025-12-07 02:50:00',15,1,96),('2025-12-07 11:10:00',16,5,83),('2025-12-08 04:40:00',17,3,79),('2025-12-08 08:25:00',18,2,93),('2025-12-09 07:00:00',19,4,86),('2025-12-09 12:45:00',20,1,97);
/*!40000 ALTER TABLE `submission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `userpassword` varchar(100) DEFAULT NULL,
  `usermail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Muthu','muthu123@gmail.com','muthu@gmail.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-09  4:06:51
