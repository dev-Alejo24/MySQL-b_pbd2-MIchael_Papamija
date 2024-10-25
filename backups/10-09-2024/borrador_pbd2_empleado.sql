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
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `id_empleado` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `id_tipo_documento` int DEFAULT NULL,
  `documento` varchar(12) NOT NULL,
  `telefono` varchar(12) DEFAULT NULL,
  `email` varchar(35) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `id_cargo` int DEFAULT NULL,
  `id_turno` int DEFAULT NULL,
  `fecha_contratacion` datetime NOT NULL,
  `salario` double NOT NULL,
  `antiguedad` timestamp NULL DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_empleado`),
  UNIQUE KEY `documento` (`documento`),
  KEY `id_tipo_documento` (`id_tipo_documento`),
  KEY `id_cargo` (`id_cargo`),
  KEY `id_turno` (`id_turno`),
  CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`id_tipo_documento`) REFERENCES `tipo_documento` (`id_tipo_documento`),
  CONSTRAINT `empleado_ibfk_2` FOREIGN KEY (`id_cargo`) REFERENCES `cargo` (`id_cargo`),
  CONSTRAINT `empleado_ibfk_3` FOREIGN KEY (`id_turno`) REFERENCES `turno` (`id_turno`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,'Carlos','García',1,'44444444','4444444444','carlos.garcia@example.com','Calle 6',1,1,'2020-01-01 00:00:00',50000,NULL,'2024-09-10 11:51:06','2024-09-10 11:51:06'),(2,'Sofía','Díaz',2,'55555555','5555555555','sofia.diaz@example.com','Calle 7',2,2,'2020-02-01 00:00:00',60000,NULL,'2024-09-10 11:51:06','2024-09-10 11:51:06'),(3,'Miguel','Hernández',3,'66666666','6666666666','miguel.hernandez@example.com','Calle 8',3,3,'2020-03-01 00:00:00',70000,NULL,'2024-09-10 11:51:06','2024-09-10 11:51:06'),(4,'Laura','Gómez',4,'77777777','7777777777','laura.gomez@example.com','Calle 9',4,4,'2020-04-01 00:00:00',80000,NULL,'2024-09-10 11:51:06','2024-09-10 11:51:06'),(5,'Javier','López',5,'88888888','8888888888','javier.lopez@example.com','Calle 10',5,5,'2020-05-01 00:00:00',90000,NULL,'2024-09-10 11:51:06','2024-09-10 11:51:06');
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-10 12:05:36
