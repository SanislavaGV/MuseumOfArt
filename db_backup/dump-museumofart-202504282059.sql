-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: museumofart
-- ------------------------------------------------------
-- Server version	9.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `artwork_tags`
--

DROP TABLE IF EXISTS `artwork_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artwork_tags` (
  `objectId` int NOT NULL,
  `tagId` int NOT NULL,
  PRIMARY KEY (`objectId`,`tagId`),
  KEY `artwork_tags_tags_fk` (`tagId`),
  CONSTRAINT `artwork_tags_artworks_fk` FOREIGN KEY (`objectId`) REFERENCES `artworks` (`objectId`),
  CONSTRAINT `artwork_tags_tags_fk` FOREIGN KEY (`tagId`) REFERENCES `tags` (`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artwork_tags`
--

LOCK TABLES `artwork_tags` WRITE;
/*!40000 ALTER TABLE `artwork_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `artwork_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artworks`
--

DROP TABLE IF EXISTS `artworks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artworks` (
  `objectId` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `culture` varchar(255) DEFAULT NULL,
  `period` varchar(255) DEFAULT NULL,
  `objectDate` varchar(50) DEFAULT NULL,
  `artistBeginDate` varchar(50) DEFAULT NULL,
  `artistEndDate` varchar(50) DEFAULT NULL,
  `medium` varchar(255) DEFAULT NULL,
  `dimensions` varchar(255) DEFAULT NULL,
  `creditLine` varchar(255) DEFAULT NULL,
  `classification` varchar(255) DEFAULT NULL,
  `repository` varchar(255) DEFAULT NULL,
  `objectURL` text,
  `artistWikidata_URL` text,
  `publicDomain` tinyint(1) DEFAULT NULL,
  `accessionNumber` varchar(50) DEFAULT NULL,
  `accessionYear` varchar(10) DEFAULT NULL,
  `departmentId` int DEFAULT NULL,
  `artistRole` varchar(100) DEFAULT NULL,
  `artistPrefix` varchar(100) DEFAULT NULL,
  `artistDisplayName` varchar(255) DEFAULT NULL,
  `artistDisplayBio` text,
  `artistSuffix` varchar(100) DEFAULT NULL,
  `artistAlphaSort` varchar(255) DEFAULT NULL,
  `artistNationality` varchar(100) DEFAULT NULL,
  `artistGender` varchar(50) DEFAULT NULL,
  `artistULAN_URL` text,
  PRIMARY KEY (`objectId`),
  KEY `departmentId` (`departmentId`),
  CONSTRAINT `artworks_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `departments` (`departmentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artworks`
--

LOCK TABLES `artworks` WRITE;
/*!40000 ALTER TABLE `artworks` DISABLE KEYS */;
/*!40000 ALTER TABLE `artworks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `departmentId` int NOT NULL AUTO_INCREMENT,
  `displayName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`departmentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `imageId` bigint NOT NULL,
  `objectId` int NOT NULL,
  `isPrimary` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`imageId`),
  KEY `images_artworks_fk` (`objectId`),
  CONSTRAINT `images_artworks_fk` FOREIGN KEY (`objectId`) REFERENCES `artworks` (`objectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `searchresults`
--

DROP TABLE IF EXISTS `searchresults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `searchresults` (
  `searchId` bigint NOT NULL,
  `total` int DEFAULT NULL,
  `objectId` int NOT NULL,
  `parameterName` varchar(50) NOT NULL,
  PRIMARY KEY (`searchId`),
  KEY `searchresults_artworks_fk` (`objectId`),
  CONSTRAINT `searchresults_artworks_fk` FOREIGN KEY (`objectId`) REFERENCES `artworks` (`objectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `searchresults`
--

LOCK TABLES `searchresults` WRITE;
/*!40000 ALTER TABLE `searchresults` DISABLE KEYS */;
/*!40000 ALTER TABLE `searchresults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `aatURL` varchar(255) DEFAULT NULL,
  `wikidataURL` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `tagId` int NOT NULL,
  `term` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'museumofart'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-28 20:59:39
