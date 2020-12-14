CREATE DATABASE  IF NOT EXISTS `Stock_List` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `Stock_List`;
-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: Stock_List
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `Customer_Table`
--

DROP TABLE IF EXISTS `Customer_Table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer_Table` (
  `Customer_ID` int NOT NULL,
  `Name` tinytext,
  `Phone_Number` int DEFAULT NULL,
  `Total` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`Customer_ID`),
  KEY `Total_idx` (`Total`),
  CONSTRAINT `Total` FOREIGN KEY (`Total`) REFERENCES `Vehicle_Table` (`Total`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer_Table`
--

LOCK TABLES `Customer_Table` WRITE;
/*!40000 ALTER TABLE `Customer_Table` DISABLE KEYS */;
/*!40000 ALTER TABLE `Customer_Table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Dealership_Table`
--

DROP TABLE IF EXISTS `Dealership_Table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Dealership_Table` (
  `Dealership_No` int NOT NULL,
  `Dealership_Name` tinytext,
  `Location` longtext,
  `Lot` longtext,
  `Employee_Number` varchar(20) DEFAULT NULL,
  `VIN` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Dealership_No`),
  KEY `VIN_idx` (`VIN`),
  CONSTRAINT `VIN` FOREIGN KEY (`VIN`) REFERENCES `Vehicle_Table` (`VIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dealership_Table`
--

LOCK TABLES `Dealership_Table` WRITE;
/*!40000 ALTER TABLE `Dealership_Table` DISABLE KEYS */;
/*!40000 ALTER TABLE `Dealership_Table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employee_Table`
--

DROP TABLE IF EXISTS `Employee_Table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employee_Table` (
  `Employee_Number` int NOT NULL,
  `Name` tinytext,
  `Phone` int DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Employee_Number`),
  CONSTRAINT `Employee_Number` FOREIGN KEY (`Employee_Number`) REFERENCES `Dealership_Table` (`Dealership_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee_Table`
--

LOCK TABLES `Employee_Table` WRITE;
/*!40000 ALTER TABLE `Employee_Table` DISABLE KEYS */;
/*!40000 ALTER TABLE `Employee_Table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Vehicle_Table`
--

DROP TABLE IF EXISTS `Vehicle_Table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Vehicle_Table` (
  `VIN` varchar(50) NOT NULL,
  `Mileage` int DEFAULT NULL,
  `Style` tinytext,
  `Color` tinytext,
  `Total` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`VIN`),
  KEY `Total_idx` (`Total`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vehicle_Table`
--

LOCK TABLES `Vehicle_Table` WRITE;
/*!40000 ALTER TABLE `Vehicle_Table` DISABLE KEYS */;
INSERT INTO `Vehicle_Table` VALUES ('ta2432646,',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `Vehicle_Table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Vehicle_Type`
--

DROP TABLE IF EXISTS `Vehicle_Type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Vehicle_Type` (
  `VIN` varchar(50) NOT NULL,
  `Make` tinytext,
  `Model` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`VIN`),
  CONSTRAINT `fk_vehicleType_VIN` FOREIGN KEY (`VIN`) REFERENCES `Vehicle_Table` (`VIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vehicle_Type`
--

LOCK TABLES `Vehicle_Type` WRITE;
/*!40000 ALTER TABLE `Vehicle_Type` DISABLE KEYS */;
/*!40000 ALTER TABLE `Vehicle_Type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'Stock_List'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-13 19:02:29
