CREATE DATABASE  IF NOT EXISTS `ffcc` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `ffcc`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ffcc
-- ------------------------------------------------------
-- Server version	5.5.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `productID` int(11) NOT NULL AUTO_INCREMENT,
  `repoID` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prodType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `dateStored` date DEFAULT NULL,
  `isPromised` tinyint(1) DEFAULT NULL,
  `expire` date DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `clotheCond` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`productID`),
  KEY `repoID_idx` (`repoID`),
  CONSTRAINT `repoID` FOREIGN KEY (`repoID`) REFERENCES `repository` (`repoID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (2,17,'test','food',5,NULL,0,NULL,NULL,NULL),(3,17,'test2','food',2,NULL,0,NULL,NULL,NULL),(4,17,'milk','food',5,NULL,0,NULL,NULL,NULL),(5,17,'testdate',NULL,4,NULL,0,NULL,NULL,NULL),(6,17,'daasda',NULL,5,NULL,0,NULL,NULL,NULL),(7,17,'date',NULL,3,NULL,0,NULL,NULL,NULL),(8,17,'lastdatetest','food',13,NULL,0,NULL,NULL,NULL),(9,17,'testupdate','food',1,NULL,0,NULL,NULL,NULL),(10,17,'asdasda','food',2,NULL,0,NULL,NULL,NULL),(11,17,'dasdasdas','food',3,NULL,0,NULL,NULL,NULL),(12,17,'dsdas','food',2,NULL,0,NULL,NULL,NULL),(13,17,'fdfsd','food',3,NULL,0,NULL,NULL,NULL),(14,17,'asddddd','food',4,NULL,0,NULL,NULL,NULL),(15,17,'bitchplease','food',5,NULL,0,NULL,NULL,NULL),(16,17,'dadsadadddddd','food',1,NULL,0,'2017-06-21',NULL,NULL),(17,17,'abc','food',4,NULL,0,'2017-06-15',NULL,NULL),(18,17,'abcd','food',1,NULL,0,'2017-06-16',NULL,NULL),(19,17,'aaa','food',1,'2017-06-05',0,'2017-06-13',NULL,NULL),(20,17,'prom1','food',3,'2017-06-05',1,'2017-06-29',NULL,NULL),(21,18,'depon','pharm',200,'2017-06-05',0,'2017-08-09',NULL,NULL),(24,19,'Puma Black',NULL,3,'2017-06-05',0,NULL,NULL,NULL),(25,19,'Nike white',NULL,1,'2017-06-05',0,NULL,NULL,NULL),(26,19,'blabla',NULL,1,'2017-06-05',0,NULL,NULL,NULL),(27,19,'dadas',NULL,3,'2017-06-05',0,NULL,NULL,NULL),(28,19,'jjkljkljkljkld',NULL,2,'2017-06-05',0,NULL,NULL,NULL),(29,19,'dasdasddada','clothing',2,'2017-06-05',0,NULL,'S',NULL),(30,19,'dasdasas',NULL,3,'2017-06-05',0,NULL,NULL,NULL),(31,19,'jjkldskjlkjlas','clothing',1,'2017-06-05',0,NULL,'L','Very-Good'),(32,19,'sasdsda','clothing',2,'2017-06-05',0,NULL,'XL','Mint'),(33,19,'newpromise','clothing',5,'2017-06-05',0,NULL,'S','Near-Mint'),(34,19,'aaaaaaa','clothing',1,NULL,0,NULL,'L','Good'),(35,17,'expired','food',2,'2017-06-05',0,'2017-06-01',NULL,NULL),(37,19,'freaky','clothing',4,'2017-06-06',0,NULL,'XL','Mint'),(39,19,'bigchunk','clothing',80,NULL,1,NULL,'L','Mint'),(40,19,'oktostore','clothing',2,'2017-06-06',0,NULL,'M','Near-Mint');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-07 10:21:10
