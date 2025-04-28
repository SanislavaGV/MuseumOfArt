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
INSERT INTO `artworks` VALUES (1,'One-dollar Liberty Head Coin',NULL,NULL,'1853','1794','1869','Gold','Dimensions unavailable','Gift of Heinz L. Stoppelmann, 1979',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/1','https://www.wikidata.org/wiki/Q3806459',NULL,'1979.486.1','1979',11,'Maker',NULL,'James Barton Longacre','American, Delaware County, Pennsylvania 1794–1869 Philadelphia, Pennsylvania',NULL,'Longacre, James Barton','American',NULL,'http://vocab.getty.edu/page/ulan/500011409'),(2,'Ten-dollar Liberty Head Coin',NULL,NULL,'1901','1785','1844','Gold','Dimensions unavailable','Gift of Heinz L. Stoppelmann, 1980',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/2','https://www.wikidata.org/wiki/Q5109648',NULL,'1980.264.5','1980',7,'Maker',NULL,'Christian Gobrecht','1785–1844',NULL,'Gobrecht, Christian','American',NULL,'http://vocab.getty.edu/page/ulan/500077295'),(3,'Two-and-a-Half Dollar Coin',NULL,NULL,'1909–27',NULL,NULL,'Gold','Diam. 11/16 in. (1.7 cm)','Gift of C. Ruxton Love Jr., 1967',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/3',NULL,NULL,'67.265.9','1967',16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Two-and-a-Half Dollar Coin',NULL,NULL,'1909–27',NULL,NULL,'Gold','Diam. 11/16 in. (1.7 cm)','Gift of C. Ruxton Love Jr., 1967',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/4',NULL,NULL,'67.265.10','1967',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Two-and-a-Half Dollar Coin',NULL,NULL,'1909–27',NULL,NULL,'Gold','Diam. 11/16 in. (1.7 cm)','Gift of C. Ruxton Love Jr., 1967',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/5',NULL,NULL,'67.265.11','1967',16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'Two-and-a-Half Dollar Coin',NULL,NULL,'1909–27',NULL,NULL,'Gold','Diam. 11/16 in. (1.7 cm)','Gift of C. Ruxton Love Jr., 1967',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/6',NULL,NULL,'67.265.12','1967',17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'Two-and-a-Half Dollar Coin',NULL,NULL,'1909–27',NULL,NULL,'Gold','Diam. 11/16 in. (1.7 cm)','Gift of C. Ruxton Love Jr., 1967',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/7',NULL,NULL,'67.265.13','1967',16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'Two-and-a-Half Dollar Coin',NULL,NULL,'1909–27',NULL,NULL,'Gold','Diam. 11/16 in. (1.7 cm)','Gift of C. Ruxton Love Jr., 1967',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/8',NULL,NULL,'67.265.14','1967',9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'Two-and-a-Half Dollar Coin',NULL,NULL,'1909–27',NULL,NULL,'Gold','Diam. 11/16 in. (1.7 cm)','Gift of C. Ruxton Love Jr., 1967',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/9',NULL,NULL,'67.265.15','1967',14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'Two-and-a-half-dollar Indian Head Coin',NULL,NULL,'1912','1867','1917','Gold','Dimensions unavailable','Gift of Heinz L. Stoppelmann, 1979',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/10','https://www.wikidata.org/wiki/Q4881787',NULL,'1979.486.3','1979',5,'Maker',NULL,'Bela Lyon Pratt','1867–1917',NULL,'Pratt, Bela Lyon','American',NULL,'http://vocab.getty.edu/page/ulan/500095555'),(11,'Two-and-a-half-dollar Liberty Head Coin',NULL,NULL,'1907','1785','1844','Gold','Dimensions unavailable','Gift of Heinz L. Stoppelmann, 1979',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/11','https://www.wikidata.org/wiki/Q5109648',NULL,'1979.486.2','1979',16,'Maker',NULL,'Christian Gobrecht','1785–1844',NULL,'Gobrecht, Christian','American',NULL,'http://vocab.getty.edu/page/ulan/500077295'),(12,'Twenty-dollar Liberty Head Coin',NULL,NULL,'1876','1794','1869','Gold','Dimensions unavailable','Gift of Heinz L. Stoppelmann, 1979',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/12','https://www.wikidata.org/wiki/Q3806459',NULL,'1979.486.7','1979',10,'Maker',NULL,'James Barton Longacre','American, Delaware County, Pennsylvania 1794–1869 Philadelphia, Pennsylvania',NULL,'Longacre, James Barton','American',NULL,'http://vocab.getty.edu/page/ulan/500011409'),(13,'Five-dollar Indian Head Coin',NULL,NULL,'1910','1867','1917','Gold','Dimensions unavailable','Gift of Heinz L. Stoppelmann, 1979',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/13','https://www.wikidata.org/wiki/Q4881787',NULL,'1979.486.4','1979',21,'Maker',NULL,'Bela Lyon Pratt','1867–1917',NULL,'Pratt, Bela Lyon','American',NULL,'http://vocab.getty.edu/page/ulan/500095555'),(14,'Five-dollar Liberty Head Coin',NULL,NULL,'1907','1785','1844','Gold','Dimensions unavailable','Gift of Heinz L. Stoppelmann, 1979',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/14','https://www.wikidata.org/wiki/Q5109648',NULL,'1979.486.5','1979',10,'Maker',NULL,'Christian Gobrecht','1785–1844',NULL,'Gobrecht, Christian','American',NULL,'http://vocab.getty.edu/page/ulan/500077295'),(15,'Coin, 1/2 Real','Mexican',NULL,'1665–1700',NULL,NULL,'Silver','Diam. 1/2 in. (1.3 cm)','Gift of Mrs. Russell Sage, 1916',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/15',NULL,NULL,'16.74.49','1916',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'Coin, 1/4 Peso','Mexican',NULL,'1800–1900',NULL,NULL,'Bronze or copper','Diam. 1 1/8 in. (2.9 cm)','Gift of Mrs. Russell Sage, 1916',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/16',NULL,NULL,'16.74.27','1916',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'Coin, 1/4 Peso','Mexican',NULL,'1867',NULL,NULL,'Bronze or copper','Diam. 1 1/8 in. (2.9 cm)','Gift of Mrs. Russell Sage, 1916',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/17',NULL,NULL,'16.74.28','1916',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'Coin, 1/4 Peso','Mexican',NULL,'1860',NULL,NULL,'Bronze or copper','Diam. 1 1/8 in. (2.9 cm)','Gift of Mrs. Russell Sage, 1916',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/18',NULL,NULL,'16.74.29','1916',13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'Coin, 1/4 Peso','Mexican',NULL,'1859',NULL,NULL,'Bronze or copper','Diam. 1 1/8 in. (2.9 cm)','Gift of Mrs. Russell Sage, 1916',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/19',NULL,NULL,'16.74.30','1916',4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'Coin, 1/4 Peso','Mexican',NULL,'1860',NULL,NULL,'Bronze or copper','Diam. 1 1/8 in. (2.9 cm)','Gift of Mrs. Russell Sage, 1916',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/20',NULL,NULL,'16.74.31','1916',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'Coin, 1/4 Peso','Mexican',NULL,'1859',NULL,NULL,'Bronze or copper','Diam. 1 1/8 in. (2.9 cm)','Gift of Mrs. Russell Sage, 1916',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/21',NULL,NULL,'16.74.32','1916',13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'Coin, 1/4 Real','Guatemalan',NULL,'1881',NULL,NULL,'Silver','Diam. 1/2 in. (1.3 cm)','Gift of Mrs. Russell Sage, 1916',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/22',NULL,NULL,'16.74.43','1916',21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'Coin, 1/4 Real','Guatemalan',NULL,'1878',NULL,NULL,'Silver','Diam. 1/2 in. (1.3 cm)','Gift of Mrs. Russell Sage, 1916',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/23',NULL,NULL,'16.74.44','1916',4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,'Coin, 10 Centavos','Mexican',NULL,'1860–70',NULL,NULL,'Nickel','Diam. 3/4 in. (1.9 cm)','Gift of Mrs. Russell Sage, 1916',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/24',NULL,NULL,'16.74.33','1916',15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,'Coin, 10 Centavos','Mexican',NULL,'1860–70',NULL,NULL,'Nickel','Diam. 3/4 in. (1.9 cm)','Gift of Mrs. Russell Sage, 1916',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/25',NULL,NULL,'16.74.34','1916',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,'Coin, 10 Centavos','Mexican',NULL,'1860–70',NULL,NULL,'Nickel','Diam. 3/4 in. (1.9 cm)','Gift of Mrs. Russell Sage, 1916',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/26',NULL,NULL,'16.74.35','1916',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,'Coin, 10 Centavos','Mexican',NULL,'1860–70',NULL,NULL,'Nickel','Diam. 3/4 in. (1.9 cm)','Gift of Mrs. Russell Sage, 1916',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/27',NULL,NULL,'16.74.36','1916',8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,'Coin, 10 Centavos','Mexican',NULL,'1860–70',NULL,NULL,'Nickel','Diam. 3/4 in. (1.9 cm)','Gift of Mrs. Russell Sage, 1916',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/28',NULL,NULL,'16.74.38','1916',10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,'Coin, 10 Centavos','Mexican',NULL,'1860–70',NULL,NULL,'Nickel','Diam. 3/4 in. (1.9 cm)','Gift of Mrs. Russell Sage, 1916',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/29',NULL,NULL,'16.74.39','1916',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,'Coin, 10 Centavos','Mexican',NULL,'1885',NULL,NULL,'Nickel','Diam. 3/4 in. (1.9 cm)','Gift of Mrs. Russell Sage, 1916',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/30',NULL,NULL,'16.74.37','1916',16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,'Coin, 10 Centavos','Mexican',NULL,'1885',NULL,NULL,'Nickel','Diam. 3/4 in. (1.9 cm)','Gift of Mrs. Russell Sage, 1916',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/31',NULL,NULL,'16.74.40','1916',5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,'Coin, 20 Pesos','Mexican',NULL,'1866',NULL,NULL,'Gold','Diam. 2 1/8 in. (5.4 cm)','Gift of H. R. Ickelheimer, 1909',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/32',NULL,NULL,'09.9.15','1909',12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,'Bust of Abraham Lincoln','American',NULL,'1876','1861','1930','Pressed glass','2 3/4 x 3 1/2 x 2 3/4 in. (7 x 8.9 x 7 cm)','Gift of Teunis G. B. Cortelyou, 1964',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/33','https://www.wikidata.org/wiki/Q99264077',NULL,'64.62','1964',7,'Maker',NULL,'James Gillinder and Sons','American, 1861–ca. 1930',NULL,'Gillinder and Sons, James','American',NULL,'http://vocab.getty.edu/page/ulan/500524407'),(34,'Acorn Clock','American',NULL,'1847–50','1835','1853','Mahogany, laminated','24 3/8 x 14 5/8 x 5 1/8 in. (61.9 x 37.1 x 13 cm)','Gift of Mrs. Paul Moore, 1970',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/34',NULL,NULL,'1970.289.6','1970',15,'Maker',NULL,'Forestville Manufacturing Company','1835–1853',NULL,'Forestville Manufacturing Company','American',NULL,NULL),(35,'The Adams Vase','American',NULL,'1893–95','1859','1927','Gold, amethysts, spessartites, tourmalines, fresh water pearls, quartzes, rock crystal, and enamel','Overall: 19 7/16 x 13 x 9 1/4 in. (49.4 x 33 x 23.5 cm); 352 oz. 18 dwt. (10977 g)\r\nBody: H. 18 7/8 in. (47.9 cm)\r\nCover: 4 1/4 x 4 13/16 in. (10.8 x 12.2 cm); 19 oz. 6 dwt. (600.1 g)','Gift of Edward D. Adams, 1904',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/35','https://www.wikidata.org/wiki/Q13476260',NULL,'04.1a–c','1904',15,'Designer','Designed by','Paulding Farnham','1859–1927',NULL,'Farnham, Paulding','American',NULL,'http://vocab.getty.edu/page/ulan/500336597'),(36,'Side Chair','American',NULL,'ca. 1887','1885','1932','Oak, tulip poplar','40 x 25 1/2 x 34 1/2 in. (101.6 x 64.8 x 87.6 cm)','Gift of Charlotte Pickman-Gertz, 1976',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/36',NULL,NULL,'1976.319','1976',11,'Maker',NULL,'Conrad Henninger','active ca. 1888–1932',NULL,'Henninger, Conrad','American',NULL,NULL),(37,'Figure of Admiral George Rodney','British (American market)',NULL,'ca. 1785','1765','1795','Earthenware, basalt','H. 12 in. (30.5 cm)','Harris Brisbane Dick Fund, 1938',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/37',NULL,NULL,'38.165.51','1938',9,'Maker',NULL,'Pierre Stephan','French, active ca. 1770–95',NULL,'Stephan, Pierre','French',NULL,'http://vocab.getty.edu/page/ulan/500100483'),(38,'Figure of Admiral Samuel Hood','British (American market)',NULL,'ca. 1785','1765','1795','Earthenware, basalt','H. 12 3/8 in. (31.4 cm)','Harris Brisbane Dick Fund, 1938',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/38',NULL,NULL,'38.165.50','1938',8,'Maker',NULL,'Pierre Stephan','French, active ca. 1770–95',NULL,'Stephan, Pierre','French',NULL,'http://vocab.getty.edu/page/ulan/500100483'),(39,'Advertisement for Norwich Stone Ware Factory','American',NULL,'1770–1800',NULL,NULL,'Paper','11 x 9 in. (27.9 x 22.9 cm)','Rogers Fund, 1918',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/39',NULL,NULL,'18.11.10','1918',14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,'Ale Glass','American',NULL,'1830–70','1818','1888','Pressed glass','H. 6 9/16 in. (16.7 cm); Diam. 3 in. (7.6 cm)','Gift of Mrs. Emily Winthrop Miles, 1946',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/40','https://www.wikidata.org/wiki/Q17083157',NULL,'46.140.143','1946',5,'Maker',NULL,'New England Glass Company','American, East Cambridge, Massachusetts, 1818–1888',NULL,'New England Glass Company','American',NULL,'http://vocab.getty.edu/page/ulan/500356007'),(41,'Ale Glass','American',NULL,'1850–70',NULL,NULL,'Pressed glass','H. 6 1/4 in. (15.9 cm); Diam. 2 15/16 in. (7.5 cm)','Gift of Mrs. Emily Winthrop Miles, 1946',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/41','https://www.wikidata.org/wiki/Q18356496',NULL,'46.140.864','1946',18,'Maker',NULL,'Union Glass Company','American, Somerville, Massachusetts',NULL,'Union Glass Company','American',NULL,'(not assigned)'),(42,'Andiron','American',NULL,'1795–1810',NULL,NULL,'Brass, iron','30 7/8 x 25 x 13 7/8 in. (78.4 x 63.5 x 35.2 cm)','Sansbury-Mills Fund, 1960',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/42',NULL,NULL,'60.58.1','1960',17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,'Andiron','American',NULL,'1795–1810',NULL,NULL,'Brass, iron','30 7/8 x 25 x 13 7/8 in. (78.4 x 63.5 x 35.2 cm)','Sansbury-Mills Fund, 1960',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/43',NULL,NULL,'60.58.2','1960',10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,'Andiron',NULL,NULL,'ca. 1790',NULL,NULL,'Brass','H. 27 in. (68.6 cm)','Gift of Mrs. Russell Sage, 1909',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/44',NULL,NULL,'10.125.444a','1910',19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,'Andiron',NULL,NULL,'ca. 1790',NULL,NULL,'Brass','H. 27 in. (68.6 cm)','Gift of Mrs. Russell Sage, 1909',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/45',NULL,NULL,'10.125.444b','1910',4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,'Andiron',NULL,NULL,'1700–1800',NULL,NULL,'Brass','H. 16 in. (40.6 cm)','Gift of Mrs. Russell Sage, 1909',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/46',NULL,NULL,'10.125.445a','1910',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,'Andiron',NULL,NULL,'1700–1800',NULL,NULL,'Brass','H. 16 in. (40.6 cm)','Gift of Mrs. Russell Sage, 1909',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/47',NULL,NULL,'10.125.445b','1910',13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,'Andiron',NULL,NULL,'1770–1800',NULL,NULL,'Iron','H. 17 in. (43.2 cm)','Gift of Mrs. Russell Sage, 1909',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/48',NULL,NULL,'10.125.446a','1910',19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,'Andiron',NULL,NULL,'1770–1800',NULL,NULL,'Iron','H. 17 in. (43.2 cm)','Gift of Mrs. Russell Sage, 1909',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/49',NULL,NULL,'10.125.446b','1910',17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,'Andiron',NULL,NULL,'1770–1800',NULL,NULL,'Iron','H. 11 1/2 in. (29.2 cm)','Gift of Mrs. Russell Sage, 1909',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/50',NULL,NULL,'10.125.447a','1910',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,'Andiron',NULL,NULL,'1770–1800',NULL,NULL,'Iron','H. 11 1/2 in. (29.2 cm)','Gift of Mrs. Russell Sage, 1909',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/51',NULL,NULL,'10.125.447b','1910',16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,'Andiron',NULL,NULL,'1700–1800',NULL,NULL,'Bell metal','H. 16 1/2 in. (41.9 cm)','Gift of Mrs. Russell Sage, 1909',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/52',NULL,NULL,'10.125.452a','1910',4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,'Andiron',NULL,NULL,'1700–1800',NULL,NULL,'Bell metal','H. 16 1/2 in. (41.9 cm)','Gift of Mrs. Russell Sage, 1909',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/53',NULL,NULL,'10.125.452b','1910',9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(56,'Andiron',NULL,NULL,'1800–1830',NULL,NULL,'Bell metal','H. 23 in. (58.4 cm)','Gift of Mrs. Russell Sage, 1909',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/56',NULL,NULL,'10.125.454a','1910',13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(57,'Andiron',NULL,NULL,'1800–1830',NULL,NULL,'Bell metal','H. 23 in. (58.4 cm)','Gift of Mrs. Russell Sage, 1909',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/57',NULL,NULL,'10.125.454b','1910',18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(58,'Andiron',NULL,NULL,'1800–1900',NULL,NULL,'Iron','H. 16 in. (40.6 cm)','Gift of Mrs. Russell Sage, 1909',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/58',NULL,NULL,'10.125.499a','1910',11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(59,'Andiron',NULL,NULL,'1800–1900',NULL,NULL,'Iron','H. 16 in. (40.6 cm)','Gift of Mrs. Russell Sage, 1909',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/59',NULL,NULL,'10.125.499b','1910',17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(62,'Andiron',NULL,NULL,'ca. 1800',NULL,NULL,'Brass','22 1/2 x 23 in. (57.2 x 58.4 cm)','Rogers Fund, 1922',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/62',NULL,NULL,'22.120.1','1922',13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(63,'Andiron',NULL,NULL,'ca. 1800',NULL,NULL,'Brass','22 1/2 x 23 in. (57.2 x 58.4 cm)','Rogers Fund, 1922',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/63',NULL,NULL,'22.120.2','1922',13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(64,'Andiron','American',NULL,'1795–1810',NULL,NULL,'Brass, iron','25 1/4 x 21 1/2 x 13 1/2 in. (64.1 x 54.6 x 34.3 cm)','Gift of Mr. and Mrs. William A. Moore, 1923',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/64',NULL,NULL,'23.80.14','1923',4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(65,'Andiron','American',NULL,'1795–1810',NULL,NULL,'Brass, iron','25 1/4 x 21 1/2 x 13 1/2 in. (64.1 x 54.6 x 34.3 cm)','Gift of Mr. and Mrs. William A. Moore, 1923',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/65',NULL,NULL,'23.80.15','1923',18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(68,'Andiron',NULL,NULL,'1760–80',NULL,NULL,'Brass, iron','H. 23 1/2 in. (59.7 cm)','The Sylmaris Collection, Gift of George Coe Graves, 1930',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/68',NULL,NULL,'30.120.83','1930',18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(69,'Andiron',NULL,NULL,'1760–80',NULL,NULL,'Brass, iron','H. 23 1/2 in. (59.7 cm)','The Sylmaris Collection, Gift of George Coe Graves, 1930',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/69',NULL,NULL,'30.120.84','1930',17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(70,'Andiron',NULL,NULL,'1750–65',NULL,NULL,'Bell metal, possibly iron','18 1/2 x 22 1/4 x 13 1/2 in. (47 x 56.5 x 34.3 cm)','Rogers Fund, 1934',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/70',NULL,NULL,'34.90.1','1934',9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(71,'Andiron',NULL,NULL,'1750–65',NULL,NULL,'Bell metal, possibly iron','18 1/2 x 22 1/4 x 13 1/2 in. (47 x 56.5 x 34.3 cm)','Rogers Fund, 1934',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/71',NULL,NULL,'34.90.2','1934',12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(72,'Andiron','American',NULL,'1750–80',NULL,NULL,'Brass, iron','21 x 21 x 13 1/2 in. (53.3 x 53.3 x 34.3 cm)','Morris K. Jesup Fund, 1936',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/72',NULL,NULL,'36.31.1','1936',12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(73,'Andiron','American',NULL,'1750–80',NULL,NULL,'Brass, iron','21 x 21 x 13 1/2 in. (53.3 x 53.3 x 34.3 cm)','Morris K. Jesup Fund, 1936',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/73',NULL,NULL,'36.31.2','1936',4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(74,'Andiron',NULL,NULL,'1770–1800',NULL,NULL,'Iron','30 3/4 x 28 in. (78.1 x 71.1 cm)','Purchase, The Sylmaris Collection, Gift of George Coe Graves, by exchange, 1937',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/74',NULL,NULL,'37.15.1','1937',19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(75,'Andiron',NULL,NULL,'1770–1800',NULL,NULL,'Iron','30 3/4 x 28 in. (78.1 x 71.1 cm)','Purchase, The Sylmaris Collection, Gift of George Coe Graves, by exchange, 1937',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/75',NULL,NULL,'37.15.2','1937',5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(76,'Andiron',NULL,NULL,'1740–60',NULL,NULL,'Iron, brass','21 1/4 x 17 3/4 in. (54 x 45.1 cm)','Rogers Fund, 1937',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/76',NULL,NULL,'37.46.1','1937',4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(77,'Andiron',NULL,NULL,'1740–60',NULL,NULL,'Iron, brass','21 1/4 x 17 3/4 in. (54 x 45.1 cm)','Rogers Fund, 1937',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/77',NULL,NULL,'37.46.2','1937',4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(78,'Andiron',NULL,NULL,'ca. 1700',NULL,NULL,'Brass, iron','17 3/4 x 24 in. (45.1 x 61 cm)','Rogers Fund, 1937',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/78',NULL,NULL,'37.174.1','1937',5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(79,'Andiron',NULL,NULL,'ca. 1700',NULL,NULL,'Brass, iron','17 3/4 x 24 in. (45.1 x 61 cm)','Rogers Fund, 1937',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/79',NULL,NULL,'37.174.2','1937',15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(80,'Andiron',NULL,NULL,'1760–80',NULL,NULL,'Brass, iron','25 1/2 x 22 1/4 x 13 1/2 in. (64.8 x 56.5 x 34.3 cm)','Gift of James DeLancey Verplanck and John Bayard Rodgers Verplanck,  1939',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/80',NULL,NULL,'39.184.46','1939',17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(81,'Andiron',NULL,NULL,'1760–80',NULL,NULL,'Brass, iron','25 1/2 x 22 1/4 x 13 1/2 in. (64.8 x 56.5 x 34.3 cm)','Gift of James DeLancey Verplanck and John Bayard Rodgers Verplanck,  1939',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/81',NULL,NULL,'39.184.47','1939',21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(84,'Andiron',NULL,NULL,'1800–1850',NULL,NULL,'Brass','16 1/8 x 15 1/4 x 8 1/8 in. (41 x 38.7 x 20.6 cm)','Bequest of W. Gedney Beatty, 1941',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/84',NULL,NULL,'41.160.340','1941',11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(85,'Andiron',NULL,NULL,'1800–1850',NULL,NULL,'Brass','16 1/8 x 15 1/4 x 8 1/8 in. (41 x 38.7 x 20.6 cm)','Bequest of W. Gedney Beatty, 1941',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/85',NULL,NULL,'41.160.341','1941',13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(86,'Andiron',NULL,NULL,'1730–70',NULL,NULL,'Brass','19 1/4 x 19 1/2 x 11 3/4 in. (48.9 x 49.5 x 29.8 cm)','Bequest of W. Gedney Beatty, 1941',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/86',NULL,NULL,'41.160.344','1941',9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(87,'Andiron',NULL,NULL,'1730–70',NULL,NULL,'Brass','19 1/4 x 19 1/2 x 11 3/4 in. (48.9 x 49.5 x 29.8 cm)','Bequest of W. Gedney Beatty, 1941',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/87',NULL,NULL,'41.160.345','1941',5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(88,'Andiron',NULL,NULL,'1770–1800',NULL,NULL,'Brass','20 3/4 x 19 1/2 x 11 3/4 in. (52.7 x 49.5 x 29.8 cm)','Bequest of W. Gedney Beatty, 1941',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/88',NULL,NULL,'41.160.346','1941',16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(89,'Andiron',NULL,NULL,'1770–1800',NULL,NULL,'Brass','20 3/4 x 19 1/2 x 11 3/4 in. (52.7 x 49.5 x 29.8 cm)','Bequest of W. Gedney Beatty, 1941',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/89',NULL,NULL,'41.160.347','1941',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(90,'Andiron',NULL,NULL,'1770–1830',NULL,NULL,'Brass','18 3/4 x 17 in. (47.6 x 43.2 cm)','Bequest of W. Gedney Beatty, 1941',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/90',NULL,NULL,'41.160.372','1941',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(91,'Andiron',NULL,NULL,'1770–1830',NULL,NULL,'Brass','18 3/4 x 17 in. (47.6 x 43.2 cm)','Bequest of W. Gedney Beatty, 1941',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/91',NULL,NULL,'41.160.373','1941',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(92,'Andiron','American',NULL,'1795–1815',NULL,NULL,'Brass, iron','23 1/4 x 23 1/2 in. (59.1 x 59.7 cm)','Gift of the Members of the Committee of the Bertha King Benkard Memorial Fund, 1946',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/92',NULL,NULL,'46.67.126','1946',8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(93,'Andiron','American',NULL,'1795–1815',NULL,NULL,'Brass, iron','23 1/4 x 23 1/2 in. (59.1 x 59.7 cm)','Gift of the Members of the Committee of the Bertha King Benkard Memorial Fund, 1946',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/93',NULL,NULL,'46.67.127','1946',17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(94,'Andiron',NULL,NULL,'1700–1800',NULL,NULL,'Iron','21 x 15 3/4 in. (53.3 x 40 cm)','Gift of Mrs. J. Insley Blair, 1947',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/94',NULL,NULL,'47.137.1','1947',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(95,'Andiron',NULL,NULL,'1700–1800',NULL,NULL,'Iron','21 x 15 3/4 in. (53.3 x 40 cm)','Gift of Mrs. J. Insley Blair, 1947',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/95',NULL,NULL,'47.137.2','1947',17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(96,'Andiron',NULL,NULL,'1700–1800',NULL,NULL,'Brass, iron','23 1/4 x 18 1/4 in. (59.1 x 46.4 cm)','Bequest of Adeline R. Brown, 1947',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/96',NULL,NULL,'48.135.107','1948',21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(97,'Andiron',NULL,NULL,'1700–1800',NULL,NULL,'Brass, iron','23 1/4 x 18 1/4 in. (59.1 x 46.4 cm)','Bequest of Adeline R. Brown, 1947',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/97',NULL,NULL,'48.135.108','1948',8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(98,'Andiron',NULL,NULL,'1800–1900',NULL,NULL,'Brass, steel','11 3/8 x 14 1/2 x 12 in. (28.9 x 36.8 x 30.5 cm)','Gift of Mrs. J. Insley Blair, 1948',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/98',NULL,NULL,'48.158.2','1948',16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(99,'Andiron',NULL,NULL,'1800–1900',NULL,NULL,'Brass, steel','11 3/8 x 14 1/2 x 12 in. (28.9 x 36.8 x 30.5 cm)','Gift of Mrs. J. Insley Blair, 1948',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/99',NULL,NULL,'48.158.3','1948',18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(100,'Andiron','American or British',NULL,'1700–1800',NULL,NULL,'Iron','18 3/4 x 17 1/2 x 10 3/4 in. (47.6 x 44.5 x 27.3 cm)','Gift of Mrs. J. Insley Blair, 1949',NULL,'Metropolitan Museum of Art, New York, NY','https://www.metmuseum.org/art/collection/search/100',NULL,NULL,'49.73.4','1949',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'American Decorative Arts'),(3,'Ancient Near Eastern Art'),(4,'Arms and Armor'),(5,'Arts of Africa, Oceania, and the Americas'),(6,'Asian Art'),(7,'The Cloisters'),(8,'The Costume Institute'),(9,'Drawings and Prints'),(10,'Egyptian Art'),(11,'European Paintings'),(12,'European Sculpture and Decorative Arts'),(13,'Greek and Roman Art'),(14,'Islamic Art'),(15,'The Robert Lehman Collection'),(16,'The Libraries'),(17,'Medieval Art'),(18,'Musical Instruments'),(19,'Photographs'),(21,'Modern Art');
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

-- Dump completed on 2025-04-28 21:09:24
