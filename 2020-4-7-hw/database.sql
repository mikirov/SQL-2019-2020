CREATE DATABASE  IF NOT EXISTS `hw3` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hw3`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hw3
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `accomodation`
--

DROP TABLE IF EXISTS `accomodation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accomodation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `price` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `size` int NOT NULL,
  `location` enum('Mladost1','Mladost2','Mladost3','Suhata Reka','Poligona','Izgrev') DEFAULT NULL,
  `broker_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `broker_id` (`broker_id`),
  CONSTRAINT `accomodation_ibfk_1` FOREIGN KEY (`broker_id`) REFERENCES `broker` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accomodation`
--

LOCK TABLES `accomodation` WRITE;
/*!40000 ALTER TABLE `accomodation` DISABLE KEYS */;
INSERT INTO `accomodation` VALUES (1,342,'Super qkata kvartira',134,'Mladost1',1),(2,598,'Super skupata kvartira',64,'Poligona',1),(3,163,'Super mizernata kvartira',56,'Mladost3',1),(4,1789,'Super  ne-kvartira',193,'Suhata Reka',1),(5,1345,'Super kvartira',234,'Poligona',2),(6,1623,'Super kvartira',354,'Mladost3',2),(7,1893,'Super kvartira',186,'Mladost2',2),(8,3543,'Super kvartira',632,'Suhata Reka',2),(9,324,'Super skupata kvartira',679,'Mladost2',3),(10,666,'skupata kvartira',55,'Mladost3',3),(11,654,'Super kvartira',70,'Poligona',3),(12,1563,'kvartira',163,'Suhata Reka',3),(13,555,'ne tuk hodete ',55,'Izgrev',4),(14,777,'ne tuk',66,'Suhata Reka',4),(15,1563,'Super tuk hodete',482,'Suhata Reka',4),(16,635,'ne hodete tuk',68,'Izgrev',4),(17,1345,'ne hodete tuk',486,'Mladost2',5),(18,1345,'hodete tuk',421,'Suhata Reka',5),(19,1450,'ne tuk',345,'Mladost1',5),(20,745,'ne hodete tuk',345,'Mladost3',5);
/*!40000 ALTER TABLE `accomodation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `broker`
--

DROP TABLE IF EXISTS `broker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `broker` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `age` int DEFAULT NULL,
  `phone` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `broker`
--

LOCK TABLES `broker` WRITE;
/*!40000 ALTER TABLE `broker` DISABLE KEYS */;
INSERT INTO `broker` VALUES (1,'Mishu',18,'0886991516'),(2,'Petar',25,'234567878'),(3,'Toni',19,'7894532'),(4,'Denis',26,'189634'),(5,'Alex',21,'18651184');
/*!40000 ALTER TABLE `broker` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-07 17:26:02
