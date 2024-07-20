CREATE DATABASE  IF NOT EXISTS `charity_management_sysytem` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `charity_management_sysytem`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: charity_management_sysytem
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `evennt`
--

DROP TABLE IF EXISTS `evennt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evennt` (
  `e_id` int NOT NULL,
  `e_title` varchar(100) NOT NULL,
  `e_description` varchar(100) NOT NULL,
  `event_date` varchar(100) NOT NULL,
  `organization_id` bigint DEFAULT NULL,
  PRIMARY KEY (`e_id`),
  KEY `organization_id` (`organization_id`),
  CONSTRAINT `evennt_ibfk_1` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`organization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evennt`
--

LOCK TABLES `evennt` WRITE;
/*!40000 ALTER TABLE `evennt` DISABLE KEYS */;
INSERT INTO `evennt` VALUES (771,'blooddonation','donating blood','oct 5',12),(772,'fooddonation','donating food','oct 6',13),(773,'mneydonation','donating money','oct 7',14),(774,'clothdonation','donating clothes','oct 8',15),(775,'drinksdonation','donating drinks','oct 9',16),(776,'waterbottledonation','waterbottleblood','oct 10',17),(777,'plantsdonation','donating plants','oct 11',18),(778,'blooddonation','donating blood','oct 12',19),(779,'eyedonation','donating eyes','oct 13',20),(780,'bodypartsdonation','donating bodyparts','oct 14',21);
/*!40000 ALTER TABLE `evennt` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-20 11:52:42
