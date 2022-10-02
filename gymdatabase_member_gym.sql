CREATE DATABASE  IF NOT EXISTS `gymdatabase` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gymdatabase`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: gymdatabase
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
-- Table structure for table `member_gym`
--

DROP TABLE IF EXISTS `member_gym`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_gym` (
  `MemberId` int NOT NULL,
  `Complete_Name` int NOT NULL,
  `Contact_No` int NOT NULL,
  `Address` int NOT NULL,
  `Email` int NOT NULL,
  `Phone_No` int NOT NULL,
  `Joining_Date` int NOT NULL,
  `Completion_Date` int NOT NULL,
  `Gender` int NOT NULL,
  `Fees` int NOT NULL,
  `AdminId` int NOT NULL,
  `DietId` int NOT NULL,
  `MedicationId` int NOT NULL,
  `TrainerId` int NOT NULL,
  PRIMARY KEY (`MemberId`),
  KEY `AdminId` (`AdminId`),
  KEY `DietId` (`DietId`),
  KEY `MedicationId` (`MedicationId`),
  KEY `TrainerId` (`TrainerId`),
  CONSTRAINT `member_gym_ibfk_1` FOREIGN KEY (`AdminId`) REFERENCES `admin_gym` (`AdminId`),
  CONSTRAINT `member_gym_ibfk_2` FOREIGN KEY (`DietId`) REFERENCES `diet_gym` (`DietId`),
  CONSTRAINT `member_gym_ibfk_3` FOREIGN KEY (`MedicationId`) REFERENCES `medication_gym` (`MedicationId`),
  CONSTRAINT `member_gym_ibfk_4` FOREIGN KEY (`TrainerId`) REFERENCES `trainer_gym` (`TrainerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_gym`
--

LOCK TABLES `member_gym` WRITE;
/*!40000 ALTER TABLE `member_gym` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_gym` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-18 16:23:59
