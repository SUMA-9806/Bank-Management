-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: bank
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `chequebook`
--

DROP TABLE IF EXISTS `chequebook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chequebook` (
  `CBID` bigint NOT NULL AUTO_INCREMENT,
  `CHEQUEBOOKTYPE` int DEFAULT NULL,
  `CUSTID` bigint DEFAULT NULL,
  `REQUESTDATE` varchar(255) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CBID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chequebook`
--

LOCK TABLES `chequebook` WRITE;
/*!40000 ALTER TABLE `chequebook` DISABLE KEYS */;
INSERT INTO `chequebook` VALUES (1,2,4,'06/23/2022','Y'),(2,2,3,'06/23/2022','Y');
/*!40000 ALTER TABLE `chequebook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `CID` bigint NOT NULL AUTO_INCREMENT,
  `CAADHAR` bigint DEFAULT NULL,
  `CACCTYPE` varchar(255) DEFAULT NULL,
  `CADDDRESS` varchar(255) DEFAULT NULL,
  `CBALANCE` bigint DEFAULT NULL,
  `CEMAIL` varchar(255) DEFAULT NULL,
  `CGENDER` varchar(255) DEFAULT NULL,
  `CNAME` varchar(255) DEFAULT NULL,
  `CPASSWORD` varchar(255) DEFAULT NULL,
  `CPHONE` bigint DEFAULT NULL,
  `CSTATUS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,123324422,'savings','guntur',3500,'sai@gmail.com','f','sai','sai',7687584898,'Y'),(2,84782729119,'savings','hyderabad',4000,'suma@gmail.com','f','suma','welcome',8968583585,'Y'),(3,7118489292,'savings','vijayawada',4000,'usha@gmail.com','f','usha','usha',857662984,'Y'),(4,82797362617,'savings','vizag',4500,'ramya@gmail.com','f','ramya','ramya',8655367720,'Y'),(5,83791893844,'savings','chennai',7500,'teja@gmail.com','f','teja','teja',9584738927,'Y');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fixeddeposit`
--

DROP TABLE IF EXISTS `fixeddeposit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fixeddeposit` (
  `FDID` bigint NOT NULL AUTO_INCREMENT,
  `CID` bigint DEFAULT NULL,
  `FDDATE` varchar(255) DEFAULT NULL,
  `FDAMT` int DEFAULT NULL,
  `FDINTREST` int DEFAULT NULL,
  `FDTENURE` int DEFAULT NULL,
  PRIMARY KEY (`FDID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fixeddeposit`
--

LOCK TABLES `fixeddeposit` WRITE;
/*!40000 ALTER TABLE `fixeddeposit` DISABLE KEYS */;
INSERT INTO `fixeddeposit` VALUES (1,2,'06/23/2022',500,105,3);
/*!40000 ALTER TABLE `fixeddeposit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fundtransferdetails`
--

DROP TABLE IF EXISTS `fundtransferdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fundtransferdetails` (
  `FUNDID` bigint NOT NULL AUTO_INCREMENT,
  `FUNDDATE` varchar(255) DEFAULT NULL,
  `RECVID` bigint DEFAULT NULL,
  `SENDID` bigint DEFAULT NULL,
  `TRANTYPE` varchar(255) DEFAULT NULL,
  `TRANSAMT` int DEFAULT NULL,
  `TRANSSTATUS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`FUNDID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fundtransferdetails`
--

LOCK TABLES `fundtransferdetails` WRITE;
/*!40000 ALTER TABLE `fundtransferdetails` DISABLE KEYS */;
INSERT INTO `fundtransferdetails` VALUES (1,'06/23/2022',2,1,'FundTransfer',500,'Success'),(2,'06/23/2022',1,3,'FundTransfer',500,'Success'),(3,'06/23/2022',5,1,'Cash Deposit',1500,'Success'),(4,'06/23/2022',5,2,'FundTransfer',1000,'Success');
/*!40000 ALTER TABLE `fundtransferdetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-23 12:30:31
