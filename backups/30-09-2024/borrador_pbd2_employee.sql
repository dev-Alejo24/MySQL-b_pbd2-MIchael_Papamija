-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: borrador_pbd2
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id_employee` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `middle_name` varchar(15) NOT NULL,
  `last_name_maternal` varchar(15) NOT NULL,
  `last_name_paternal` varchar(15) NOT NULL,
  `id_document_type` int DEFAULT NULL,
  `document` varchar(12) NOT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `email` varchar(35) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `id_position` int DEFAULT NULL,
  `id_shift` int DEFAULT NULL,
  `hiring_date` datetime NOT NULL,
  `salary` double NOT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_employee`),
  UNIQUE KEY `document` (`document`),
  KEY `id_document_type` (`id_document_type`),
  KEY `id_position` (`id_position`),
  KEY `id_shift` (`id_shift`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`id_document_type`) REFERENCES `document_type` (`id_document_type`),
  CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`id_position`) REFERENCES `pos` (`id_position`),
  CONSTRAINT `employee_ibfk_3` FOREIGN KEY (`id_shift`) REFERENCES `shift` (`id_shift`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Carlos','García','García','García',1,'44444444','4444444444','carlos.garcia@example.com','Street 6',1,1,'2020-01-01 00:00:00',50000,'2024-09-30 11:13:06','2024-09-30 11:13:06'),(2,'Sofía','Díaz','Díaz','Díaz',2,'55555555','5555555555','sofia.diaz@example.com','Street 7',2,2,'2020-02-01 00:00:00',60000,'2024-09-30 11:13:06','2024-09-30 11:13:06'),(3,'Miguel','Hernández','Hernández','Hernández',3,'66666666','6666666666','miguel.hernandez@example.com','Street 8',3,3,'2020-03-01 00:00:00',70000,'2024-09-30 11:13:06','2024-09-30 11:13:06'),(4,'Laura','Gómez','Gómez','Gómez',4,'77777777','7777777777','laura.gomez@example.com','Street 9',4,4,'2020-04-01 00:00:00',80000,'2024-09-30 11:13:06','2024-09-30 11:13:06'),(5,'Javier','López','López','López',5,'88888888','8888888888','javier.lopez@example.com','Street 10',5,5,'2020-05-01 00:00:00',90000,'2024-09-30 11:13:06','2024-09-30 11:13:06');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-30 11:19:44
