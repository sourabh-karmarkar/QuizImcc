-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: QuizDB
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.18.04.1

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
-- Table structure for table `ANSWER`
--

DROP TABLE IF EXISTS `ANSWER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ANSWER` (
  `A_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Op1` text NOT NULL,
  `Op2` text NOT NULL,
  `Op3` text NOT NULL,
  `Ans` text NOT NULL,
  `Q_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`A_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ANSWER`
--

LOCK TABLES `ANSWER` WRITE;
/*!40000 ALTER TABLE `ANSWER` DISABLE KEYS */;
/*!40000 ALTER TABLE `ANSWER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUESTION`
--

DROP TABLE IF EXISTS `QUESTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUESTION` (
  `Q_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Q_Name` text NOT NULL,
  `Sub_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Q_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUESTION`
--

LOCK TABLES `QUESTION` WRITE;
/*!40000 ALTER TABLE `QUESTION` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUESTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REGISTRATION_DETAIL`
--

DROP TABLE IF EXISTS `REGISTRATION_DETAIL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REGISTRATION_DETAIL` (
  `Reg_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Reg_Name` text NOT NULL,
  `Reg_Phone` bigint(20) NOT NULL,
  `Reg_Email` text NOT NULL,
  `Reg_Password` text NOT NULL,
  PRIMARY KEY (`Reg_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REGISTRATION_DETAIL`
--

LOCK TABLES `REGISTRATION_DETAIL` WRITE;
/*!40000 ALTER TABLE `REGISTRATION_DETAIL` DISABLE KEYS */;
/*!40000 ALTER TABLE `REGISTRATION_DETAIL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESULT`
--

DROP TABLE IF EXISTS `RESULT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESULT` (
  `Res_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Marks` int(11) NOT NULL,
  `Sub_ID` int(11) DEFAULT NULL,
  `Reg_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Res_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESULT`
--

LOCK TABLES `RESULT` WRITE;
/*!40000 ALTER TABLE `RESULT` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESULT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SUBJECT`
--

DROP TABLE IF EXISTS `SUBJECT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SUBJECT` (
  `Sub_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Sub_Name` text NOT NULL,
  PRIMARY KEY (`Sub_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SUBJECT`
--

LOCK TABLES `SUBJECT` WRITE;
/*!40000 ALTER TABLE `SUBJECT` DISABLE KEYS */;
/*!40000 ALTER TABLE `SUBJECT` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-21 18:33:20
