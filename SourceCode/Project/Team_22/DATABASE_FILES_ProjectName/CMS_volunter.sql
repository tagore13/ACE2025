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
-- Table structure for table `volunter`
--

DROP TABLE IF EXISTS `volunter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `volunter` (
  `vol_id` int NOT NULL,
  `vol_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `ph_numbber` varchar(100) NOT NULL,
  `organization_id` bigint DEFAULT NULL,
  PRIMARY KEY (`vol_id`),
  KEY `organization_id` (`organization_id`),
  CONSTRAINT `volunter_ibfk_1` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`organization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volunter`
--

LOCK TABLES `volunter` WRITE;
/*!40000 ALTER TABLE `volunter` DISABLE KEYS */;
INSERT INTO `volunter` VALUES (332,'tarun','pusalaarunkumar1@gmail.com','9282867673',13),(333,'anurag','pusalaarunkumar2@gmail.com','928286757',14),(334,'tagore','pusalaarunkumar3@gmail.com','928286367',15),(335,'suresh','pusalaarunkumar4@gmail.com','928283767',16),(336,'sai','pusalaarunkumar5@gmail.com','928246767',17),(337,'dilip','pusalaarunkuma6r@gmail.com','928256767',18),(338,'sampath','pusalaarunkumar7@gmail.com','928486767',19),(339,'lokesh','pusalaarunkumar8@gmail.com','928286767',20),(340,'koushik','pusalaarunkumar9@gmail.com','928282767',21);
/*!40000 ALTER TABLE `volunter` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-20 12:01:23
