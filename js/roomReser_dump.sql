-- MySQL dump 10.13  Distrib 5.5.27, for Linux (i686)
--
-- Host: localhost    Database: roomReser
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
-- Table structure for table `Booking`
--

DROP TABLE IF EXISTS `Booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Booking` (
  `user` int(11) NOT NULL,
  `confirmedBy` int(11) NOT NULL,
  `madeAt` time NOT NULL,
  `madeOn` date NOT NULL,
  `roomId` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `description` varchar(300) DEFAULT NULL,
  `Start_Date` date NOT NULL DEFAULT '0000-00-00',
  `End_Date` date NOT NULL DEFAULT '0000-00-00',
  `Start_Time` time NOT NULL DEFAULT '00:00:00',
  `End_Time` time NOT NULL DEFAULT '00:00:00',
  `Repeat_Type` char(9) NOT NULL DEFAULT 'None',
  `booking_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`booking_id`),
  UNIQUE KEY `booking_id` (`booking_id`),
  KEY `user` (`user`),
  KEY `confirmedBy` (`confirmedBy`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Booking`
--

LOCK TABLES `Booking` WRITE;
/*!40000 ALTER TABLE `Booking` DISABLE KEYS */;
INSERT INTO `Booking` VALUES (2,2,'23:57:43','2011-11-17',1,1,'to delete others bookign','2011-11-18','2011-11-20','00:00:00','07:00:00','DAILY',8),(1,1,'17:34:41','2011-11-19',1,1,'dumb c','2011-11-19','2011-11-19','23:00:00','24:00:00','DAILY',11),(1,2,'00:03:56','2011-11-18',6,1,'adslfaf','2011-11-18','2011-11-18','08:00:00','09:30:00','DAILY',9),(9,5,'16:19:50','2011-11-22',1,0,'Exam.','2011-11-23','2011-11-30','16:00:00','19:00:00','DAILY',34),(1,1,'17:35:26','2011-11-19',1,1,'dumb c','2011-11-19','2011-11-19','23:00:00','24:00:00','DAILY',12),(1,1,'14:37:42','2011-11-20',5,1,'adf','2011-11-20','2011-11-20','21:00:00','23:30:00','DAILY',13),(1,1,'14:41:40','2011-11-20',11,1,'fff','2011-11-20','2011-11-20','21:30:00','23:00:00','DAILY',14),(1,2,'19:50:35','2011-11-20',1,0,'first ','2011-11-21','2011-11-21','05:00:00','05:30:00','DAILY',17),(2,2,'20:31:04','2011-11-20',1,1,'second','2011-11-21','2011-11-21','07:30:00','08:00:00','DAILY',18),(2,2,'20:31:41','2011-11-20',1,0,'morini','2011-11-21','2011-11-21','00:00:00','01:30:00','DAILY',19),(2,2,'20:32:29','2011-11-20',1,1,'colide','2011-11-21','2011-11-21','05:30:00','06:00:00','DAILY',20),(2,2,'20:32:54','2011-11-20',1,1,'asf','2011-11-21','2011-11-21','21:30:00','24:00:00','DAILY',21),(1,2,'02:45:31','2011-11-21',5,0,'sfasf','2011-11-21','2011-11-21','06:30:00','09:00:00','DAILY',22),(1,2,'02:48:08','2011-11-21',1,0,'asf;lakf','2011-11-21','2011-11-21','15:30:00','17:30:00','DAILY',23),(1,2,'07:13:15','2011-11-21',1,0,'asdf','2011-11-21','2011-11-21','08:00:00','15:30:00','DAILY',24),(1,2,'02:43:03','2011-11-22',6,0,'asdf','2011-11-22','2011-11-22','14:30:00','23:59:59','DAILY',25),(1,2,'02:44:42','2011-11-22',8,0,'ff','2011-11-26','2011-11-28','06:30:00','09:00:00','DAILY',26),(1,2,'02:50:06','2011-11-22',1,0,'fff','2011-11-22','2011-11-22','07:00:00','08:30:00','DAILY',27),(1,5,'14:30:22','2011-11-22',1,0,'Elocution Competition.','2011-11-22','2011-11-22','19:00:00','22:30:00','DAILY',28),(1,5,'15:59:19','2011-11-24',1,0,'DISCO PARTY','2011-11-25','2011-11-25','16:00:00','17:30:00','DAILY',38),(1,2,'00:00:00','0000-00-00',5,0,'asdfj','2011-11-18','2011-11-18','09:00:00','09:30:00','DAILY',30),(1,2,'00:00:00','0000-00-00',5,0,'asdfj','2011-11-20','2011-11-20','09:00:00','09:30:00','DAILY',31),(1,5,'16:41:32','2011-11-22',5,0,'Tute','2011-11-22','2011-11-22','17:30:00','22:00:00','WEEKLY',35),(1,5,'16:42:37','2011-11-22',1,0,'Algorithm Tute','2011-11-23','2011-11-24','15:00:00','18:00:00','DAILY',36),(1,5,'16:42:37','2011-11-22',1,0,'Algorithm Tute','2011-11-27','2011-11-30','15:00:00','18:00:00','DAILY',37),(1,7,'06:55:26','2012-04-25',1,0,'kjhkl','2012-04-26','2012-04-28','08:00:00','08:30:00','DAILY',39),(1,8,'08:28:59','2012-04-26',5,0,'sport','2012-04-28','2012-04-30','09:00:00','16:00:00','DAILY',40),(1,5,'00:02:51','2012-08-28',5,0,'xyz','2012-08-28','2012-08-28','09:00:00','11:00:00','DAILY',41);
/*!40000 ALTER TABLE `Booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Building`
--

DROP TABLE IF EXISTS `Building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Building` (
  `buildId` int(11) NOT NULL AUTO_INCREMENT,
  `buildingName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`buildId`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Building`
--

LOCK TABLES `Building` WRITE;
/*!40000 ALTER TABLE `Building` DISABLE KEYS */;
INSERT INTO `Building` VALUES (1,'Nilgiri'),(2,'Vindhya'),(3,'Himalayas');
/*!40000 ALTER TABLE `Building` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Category`
--

DROP TABLE IF EXISTS `Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Category` (
  `catId` int(11) NOT NULL AUTO_INCREMENT,
  `catName` varchar(30) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`catId`),
  UNIQUE KEY `catName` (`catName`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Category`
--

LOCK TABLES `Category` WRITE;
/*!40000 ALTER TABLE `Category` DISABLE KEYS */;
INSERT INTO `Category` VALUES (1,'Projector_Room',NULL),(2,'AC',NULL),(3,'Teach_lab',NULL),(6,'Public Addressing System','Speakers'),(7,'','');
/*!40000 ALTER TABLE `Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Instances`
--

DROP TABLE IF EXISTS `Instances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Instances` (
  `reqNo` int(11) NOT NULL AUTO_INCREMENT,
  `hash` varchar(100) DEFAULT NULL,
  `creator` varchar(25) DEFAULT NULL,
  `creatorEmail` varchar(50) DEFAULT NULL,
  `creatorPhone` varchar(15) DEFAULT NULL,
  `concernedPName` varchar(15) DEFAULT NULL,
  `concernedPEmail` varchar(50) DEFAULT NULL,
  `concernedPPhone` varchar(15) DEFAULT NULL,
  `appStatus` varchar(25) DEFAULT 'Pending',
  `reqGId` int(10) DEFAULT NULL,
  `reqDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `eventStartDate` date DEFAULT NULL,
  `eventEndDate` date DEFAULT NULL,
  `eventStartTime` time DEFAULT NULL,
  `eventEndTime` time DEFAULT NULL,
  `eventTitle` varchar(40) DEFAULT NULL,
  `eventDesc` varchar(1000) DEFAULT NULL,
  `concernedAdmin` int(2) DEFAULT NULL,
  `room` varchar(10) DEFAULT NULL,
  `reqType` varchar(10) DEFAULT 'One Time',
  PRIMARY KEY (`reqNo`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Instances`
--

LOCK TABLES `Instances` WRITE;
/*!40000 ALTER TABLE `Instances` DISABLE KEYS */;
INSERT INTO `Instances` VALUES (47,'818982b48c1a83c012faf97f6632b220e19f0c1b','Kshitij','kansal@gmail.com','9090909090','Nehal','nehal@gmail.com','9090909090','Pending',0,'2012-10-15 15:22:06','2012-10-18','2012-10-18','09:00:00','09:30:00','Felicity','Organize!',1,'N301','Multiple'),(48,'818982b48c1a83c012faf97f6632b220e19f0c1b','Kshitij','kansal@gmail.com','9090909090','Nehal','nehal@gmail.com','9090909090','Pending',0,'2012-10-15 15:22:06','2012-10-25','2012-10-25','09:00:00','09:30:00','Felicity','Organize!',1,'N301','Multiple'),(49,'818982b48c1a83c012faf97f6632b220e19f0c1b','Kshitij','kansal@gmail.com','9090909090','Nehal','nehal@gmail.com','9090909090','Pending',0,'2012-10-15 15:22:06','2012-11-01','2012-11-01','09:00:00','09:30:00','Felicity','Organize!',1,'N301','Multiple'),(50,'818982b48c1a83c012faf97f6632b220e19f0c1b','Kshitij','kansal@gmail.com','9090909090','Nehal','nehal@gmail.com','9090909090','Pending',0,'2012-10-15 15:22:06','2012-11-08','2012-11-08','09:00:00','09:30:00','Felicity','Organize!',1,'N301','Multiple'),(51,'818982b48c1a83c012faf97f6632b220e19f0c1b','Kshitij','kansal@gmail.com','9090909090','Nehal','nehal@gmail.com','9090909090','Pending',0,'2012-10-15 15:22:06','2012-11-15','2012-11-15','09:00:00','09:30:00','Felicity','Organize!',1,'N301','Multiple'),(52,'818982b48c1a83c012faf97f6632b220e19f0c1b','Kshitij','kansal@gmail.com','9090909090','Nehal','nehal@gmail.com','9090909090','Pending',0,'2012-10-15 15:22:06','2012-11-22','2012-11-22','09:00:00','09:30:00','Felicity','Organize!',1,'N301','Multiple'),(53,'818982b48c1a83c012faf97f6632b220e19f0c1b','Kshitij','kansal@gmail.com','9090909090','Nehal','nehal@gmail.com','9090909090','Pending',0,'2012-10-15 15:22:06','2012-11-29','2012-11-29','09:00:00','09:30:00','Felicity','Organize!',1,'N301','Multiple'),(54,'818982b48c1a83c012faf97f6632b220e19f0c1b','Kshitij','kansal@gmail.com','9090909090','Nehal','nehal@gmail.com','9090909090','Pending',0,'2012-10-15 15:22:06','2012-12-06','2012-12-06','09:00:00','09:30:00','Felicity','Organize!',1,'N301','Multiple'),(55,'818982b48c1a83c012faf97f6632b220e19f0c1b','Kshitij','kansal@gmail.com','9090909090','Nehal','nehal@gmail.com','9090909090','Pending',0,'2012-10-15 15:22:06','2012-12-13','2012-12-13','09:00:00','09:30:00','Felicity','Organize!',1,'N301','Multiple'),(56,'818982b48c1a83c012faf97f6632b220e19f0c1b','Kshitij','kansal@gmail.com','9090909090','Nehal','nehal@gmail.com','9090909090','Pending',0,'2012-10-15 15:22:06','2012-12-20','2012-12-20','09:00:00','09:30:00','Felicity','Organize!',1,'N301','Multiple'),(57,'818982b48c1a83c012faf97f6632b220e19f0c1b','Kshitij','kansal@gmail.com','9090909090','Nehal','nehal@gmail.com','9090909090','Pending',0,'2012-10-15 15:22:06','2012-10-19','2012-10-19','09:00:00','09:30:00','Felicity','Organize!',1,'N301','Multiple'),(58,'818982b48c1a83c012faf97f6632b220e19f0c1b','Kshitij','kansal@gmail.com','9090909090','Nehal','nehal@gmail.com','9090909090','Pending',0,'2012-10-15 15:22:06','2012-10-26','2012-10-26','09:00:00','09:30:00','Felicity','Organize!',1,'N301','Multiple'),(59,'818982b48c1a83c012faf97f6632b220e19f0c1b','Kshitij','kansal@gmail.com','9090909090','Nehal','nehal@gmail.com','9090909090','Pending',0,'2012-10-15 15:22:06','2012-11-02','2012-11-02','09:00:00','09:30:00','Felicity','Organize!',1,'N301','Multiple'),(60,'818982b48c1a83c012faf97f6632b220e19f0c1b','Kshitij','kansal@gmail.com','9090909090','Nehal','nehal@gmail.com','9090909090','Pending',0,'2012-10-15 15:22:06','2012-11-09','2012-11-09','09:00:00','09:30:00','Felicity','Organize!',1,'N301','Multiple'),(61,'818982b48c1a83c012faf97f6632b220e19f0c1b','Kshitij','kansal@gmail.com','9090909090','Nehal','nehal@gmail.com','9090909090','Pending',0,'2012-10-15 15:22:06','2012-11-16','2012-11-16','09:00:00','09:30:00','Felicity','Organize!',1,'N301','Multiple'),(62,'818982b48c1a83c012faf97f6632b220e19f0c1b','Kshitij','kansal@gmail.com','9090909090','Nehal','nehal@gmail.com','9090909090','Pending',0,'2012-10-15 15:22:06','2012-11-23','2012-11-23','09:00:00','09:30:00','Felicity','Organize!',1,'N301','Multiple'),(63,'818982b48c1a83c012faf97f6632b220e19f0c1b','Kshitij','kansal@gmail.com','9090909090','Nehal','nehal@gmail.com','9090909090','Pending',0,'2012-10-15 15:22:06','2012-11-30','2012-11-30','09:00:00','09:30:00','Felicity','Organize!',1,'N301','Multiple'),(64,'818982b48c1a83c012faf97f6632b220e19f0c1b','Kshitij','kansal@gmail.com','9090909090','Nehal','nehal@gmail.com','9090909090','Pending',0,'2012-10-15 15:22:06','2012-12-07','2012-12-07','09:00:00','09:30:00','Felicity','Organize!',1,'N301','Multiple'),(65,'818982b48c1a83c012faf97f6632b220e19f0c1b','Kshitij','kansal@gmail.com','9090909090','Nehal','nehal@gmail.com','9090909090','Pending',0,'2012-10-15 15:22:06','2012-12-14','2012-12-14','09:00:00','09:30:00','Felicity','Organize!',1,'N301','Multiple'),(66,'818982b48c1a83c012faf97f6632b220e19f0c1b','Kshitij','kansal@gmail.com','9090909090','Nehal','nehal@gmail.com','9090909090','Pending',0,'2012-10-15 15:22:06','2012-10-20','2012-10-20','09:00:00','09:30:00','Felicity','Organize!',1,'N301','Multiple'),(67,'818982b48c1a83c012faf97f6632b220e19f0c1b','Kshitij','kansal@gmail.com','9090909090','Nehal','nehal@gmail.com','9090909090','Pending',0,'2012-10-15 15:22:06','2012-10-27','2012-10-27','09:00:00','09:30:00','Felicity','Organize!',1,'N301','Multiple'),(68,'818982b48c1a83c012faf97f6632b220e19f0c1b','Kshitij','kansal@gmail.com','9090909090','Nehal','nehal@gmail.com','9090909090','Pending',0,'2012-10-15 15:22:06','2012-11-03','2012-11-03','09:00:00','09:30:00','Felicity','Organize!',1,'N301','Multiple'),(69,'818982b48c1a83c012faf97f6632b220e19f0c1b','Kshitij','kansal@gmail.com','9090909090','Nehal','nehal@gmail.com','9090909090','Pending',0,'2012-10-15 15:22:06','2012-11-10','2012-11-10','09:00:00','09:30:00','Felicity','Organize!',1,'N301','Multiple'),(70,'818982b48c1a83c012faf97f6632b220e19f0c1b','Kshitij','kansal@gmail.com','9090909090','Nehal','nehal@gmail.com','9090909090','Pending',0,'2012-10-15 15:22:06','2012-11-17','2012-11-17','09:00:00','09:30:00','Felicity','Organize!',1,'N301','Multiple'),(71,'818982b48c1a83c012faf97f6632b220e19f0c1b','Kshitij','kansal@gmail.com','9090909090','Nehal','nehal@gmail.com','9090909090','Pending',0,'2012-10-15 15:22:06','2012-11-24','2012-11-24','09:00:00','09:30:00','Felicity','Organize!',1,'N301','Multiple'),(72,'818982b48c1a83c012faf97f6632b220e19f0c1b','Kshitij','kansal@gmail.com','9090909090','Nehal','nehal@gmail.com','9090909090','Pending',0,'2012-10-15 15:22:06','2012-12-01','2012-12-01','09:00:00','09:30:00','Felicity','Organize!',1,'N301','Multiple'),(73,'818982b48c1a83c012faf97f6632b220e19f0c1b','Kshitij','kansal@gmail.com','9090909090','Nehal','nehal@gmail.com','9090909090','Pending',0,'2012-10-15 15:22:06','2012-12-08','2012-12-08','09:00:00','09:30:00','Felicity','Organize!',1,'N301','Multiple'),(74,'818982b48c1a83c012faf97f6632b220e19f0c1b','Kshitij','kansal@gmail.com','9090909090','Nehal','nehal@gmail.com','9090909090','Pending',0,'2012-10-15 15:22:06','2012-12-15','2012-12-15','09:00:00','09:30:00','Felicity','Organize!',1,'N301','Multiple'),(75,'2ce15a4e57c715fc38083fed0418c1c243376df3','Ayush','ayush.lodha@students.iiit.ac.in','9182736409','Ayush','ayush.lodha@students.iiit.ac.in','9182736409','Pending',0,'2012-10-15 16:11:32','2012-10-26','2012-10-26','08:00:00','08:30:00','Math 3 Tut','Facho ko maths nah ati',3,'302_NIL','Multiple'),(76,'2ce15a4e57c715fc38083fed0418c1c243376df3','Ayush','ayush.lodha@students.iiit.ac.in','9182736409','Ayush','ayush.lodha@students.iiit.ac.in','9182736409','Pending',0,'2012-10-15 16:11:32','2012-11-02','2012-11-02','08:00:00','08:30:00','Math 3 Tut','Facho ko maths nah ati',3,'302_NIL','Multiple'),(77,'2ce15a4e57c715fc38083fed0418c1c243376df3','Ayush','ayush.lodha@students.iiit.ac.in','9182736409','Ayush','ayush.lodha@students.iiit.ac.in','9182736409','Pending',0,'2012-10-15 16:11:32','2012-11-09','2012-11-09','08:00:00','08:30:00','Math 3 Tut','Facho ko maths nah ati',3,'302_NIL','Multiple'),(78,'2ce15a4e57c715fc38083fed0418c1c243376df3','Ayush','ayush.lodha@students.iiit.ac.in','9182736409','Ayush','ayush.lodha@students.iiit.ac.in','9182736409','Pending',0,'2012-10-15 16:11:32','2012-11-16','2012-11-16','08:00:00','08:30:00','Math 3 Tut','Facho ko maths nah ati',3,'302_NIL','Multiple'),(79,'2ce15a4e57c715fc38083fed0418c1c243376df3','Ayush','ayush.lodha@students.iiit.ac.in','9182736409','Ayush','ayush.lodha@students.iiit.ac.in','9182736409','Pending',0,'2012-10-15 16:11:32','2012-11-23','2012-11-23','08:00:00','08:30:00','Math 3 Tut','Facho ko maths nah ati',3,'302_NIL','Multiple'),(80,'2ce15a4e57c715fc38083fed0418c1c243376df3','Ayush','ayush.lodha@students.iiit.ac.in','9182736409','Ayush','ayush.lodha@students.iiit.ac.in','9182736409','Pending',0,'2012-10-15 16:11:32','2012-11-30','2012-11-30','08:00:00','08:30:00','Math 3 Tut','Facho ko maths nah ati',3,'302_NIL','Multiple'),(81,'2ce15a4e57c715fc38083fed0418c1c243376df3','Ayush','ayush.lodha@students.iiit.ac.in','9182736409','Ayush','ayush.lodha@students.iiit.ac.in','9182736409','Pending',0,'2012-10-15 16:11:32','2012-12-07','2012-12-07','08:00:00','08:30:00','Math 3 Tut','Facho ko maths nah ati',3,'302_NIL','Multiple'),(82,'2ce15a4e57c715fc38083fed0418c1c243376df3','Ayush','ayush.lodha@students.iiit.ac.in','9182736409','Ayush','ayush.lodha@students.iiit.ac.in','9182736409','Pending',0,'2012-10-15 16:11:32','2012-12-14','2012-12-14','08:00:00','08:30:00','Math 3 Tut','Facho ko maths nah ati',3,'302_NIL','Multiple');
/*!40000 ALTER TABLE `Instances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Requests`
--

DROP TABLE IF EXISTS `Requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Requests` (
  `reqNo` int(11) NOT NULL AUTO_INCREMENT,
  `hash` varchar(100) DEFAULT NULL,
  `creator` varchar(25) DEFAULT NULL,
  `creatorEmail` varchar(50) DEFAULT NULL,
  `creatorPhone` varchar(15) DEFAULT NULL,
  `concernedPName` varchar(15) DEFAULT NULL,
  `concernedPEmail` varchar(50) DEFAULT NULL,
  `concernedPPhone` varchar(15) DEFAULT NULL,
  `appStatus` varchar(25) DEFAULT 'Pending',
  `reqGId` int(10) DEFAULT NULL,
  `reqDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `eventStartDate` date DEFAULT NULL,
  `eventEndDate` date DEFAULT NULL,
  `eventStartTime` time DEFAULT NULL,
  `eventEndTime` time DEFAULT NULL,
  `eventTitle` varchar(40) DEFAULT NULL,
  `eventDesc` varchar(1000) DEFAULT NULL,
  `eventDays` varchar(50) DEFAULT NULL,
  `concernedAdmin` int(2) DEFAULT NULL,
  `room` varchar(10) DEFAULT NULL,
  `reqType` varchar(10) DEFAULT 'One Time',
  `reqRejectReason` varchar(1000) DEFAULT 'Your request is pending! :)',
  PRIMARY KEY (`reqNo`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Requests`
--

LOCK TABLES `Requests` WRITE;
/*!40000 ALTER TABLE `Requests` DISABLE KEYS */;
INSERT INTO `Requests` VALUES (1,'6598c37665dc0b70b0fe44a6a315011a8b3a636f','Nehal','nehal.wani@students','9052480529','Ayush Chug','ayush.chug@students.iiit.','9052400628','Pending',0,'2012-10-14 13:23:32','2012-11-01','2012-10-10','08:30:00','00:20:10','CProTute','Fachcho Ko C Nahi Ati',NULL,1,'SH2','One Time','Your request is pending! :)'),(2,'6598c17665dc0b70b0fe44a6a315011a8b3a636f','Amish','amish.wani@students','9052480529','Ankush Jain','ankush.jain@students.iiit','9052401628','Pending',0,'0000-00-00 00:00:00','2012-01-01','2011-10-10','09:30:00','00:00:00','CProTute','Fachcho Ko C Nahi Ati',NULL,1,'SH2','Weekly','Your request is pending! :)'),(3,'3f9487b2c99ae49c8a665b093b83d25e87916eb9','Amish','amish.wani@students.iiit.','9988619407','Nehal','nehal.wani@students.iiit.','9052480529','',0,'2012-10-14 14:30:23','2012-01-02','2012-10-10','06:00:00','00:20:06','CPro','Game!',NULL,0,'SH2','Daily','Your request is pending! :)'),(4,'f45bd55bbe34ceadb71ce14a9afc853f52bef30f','Amish','amish.wani@students.iiit.ac.in','9988619407','Nehal','nehal.wani@students.iiit.','9052480529','',0,'2012-10-14 14:32:57','2012-01-02','2012-10-10','06:00:00','00:20:06','CPro','Game!',NULL,0,'SH2','Daily','Your request is pending! :)'),(5,'d29cb78e88cd34425bc8563bcb90c66e13002263','Mayank','mayank.g@students.iiit.ac.in','9911223399','Kapil','kapil.kumar@students.iiit.ac.in','9052400628','',0,'2012-10-14 19:32:20','2012-11-02','2012-10-12','09:00:00','09:00:00','ITWS','To Teach!',NULL,0,'SH1','Daily','Your request is pending! :)'),(6,'1485eb3521ca2fea36f1be6022bcacac941822cf','Nehal','','9988619407','Nehal','','9988619407','Pending',0,'2012-10-15 06:27:06','2012-12-16','2012-09-15','01:30:00','01:30:00','Event','Bla!',NULL,3,'N301','Daily','Your request is pending! :)'),(7,'4b37d590af37224f63bd3eba0adb46c952a54d43','Nehal','','9988619407','Nehal','','9988619407','Pending',0,'2012-10-15 06:34:23','2012-12-16','2012-09-15','01:30:00','01:30:00','Event','Bla!',NULL,3,'N301','Daily','Your request is pending! :)'),(8,'fde760e161b1ccf07237aa2827a9e2613902c12a','Nehal','','9988619407','Nehal','','9988619407','Pending',0,'2012-10-15 06:34:32','2012-12-16','2012-09-15','01:30:00','01:30:00','Event','Bla!',NULL,3,'N301','One Time','Your request is pending! :)'),(12,'818982b48c1a83c012faf97f6632b220e19f0c1b','Kshitij','kansal@gmail.com','9090909090','Nehal','nehal@gmail.com','9090909090','Pending',0,'2012-10-15 15:22:06','2012-10-15','2012-12-20','09:00:00','09:30:00','Felicity','Organize!',NULL,1,'N301','Multiple','Your request is pending! :)'),(13,'2ce15a4e57c715fc38083fed0418c1c243376df3','Ayush','ayush.lodha@students.iiit.ac.in','9182736409','Ayush','ayush.lodha@students.iiit.ac.in','9182736409','Pending',0,'2012-10-15 16:11:32','2012-10-20','2012-12-15','08:00:00','08:30:00','Math 3 Tut','Facho ko maths nah ati',NULL,3,'302_NIL','Multiple','Your request is pending! :)'),(14,'b8589f501416b19c3d210ba86fbb11ffb64ccb8d','Ankus','ankush.jain@students.iiit.ac.in','9988619407','Ankus','ankush.jain@students.iiit.ac.in','9988619407','Pending',0,'2012-10-15 18:56:30','2012-10-16','2012-10-15','23:00:00','23:30:00','Kush','Tem Job!','',1,'N301','One Time','Your request is pending! :)'),(15,'fef52615422c7f74147a8e21be8b3b4bdf522fee','Ankus','ankush.jain@students.iiit.ac.in','9988619407','Ankus','ankush.jain@students.iiit.ac.in','9988619407','Pending',0,'2012-10-15 19:16:33','2012-10-16','2012-10-15','23:00:00','23:30:00','Kush','Tem Job!','',1,'N301','One Time','Your request is pending! :)'),(16,'da3a4adbc923a9961c963cf70e682693dbe8686a','Kapil','kapil.kuam@students.iiit.ac.in','9988619407','Kapil','kapil.kuam@students.iiit.ac.in','9988619407','Pending',0,'2012-10-15 19:25:27','2012-10-16','2012-12-15','23:00:00','23:30:00','Kush','Tem Job!','',1,'N301','Multiple','Your request is pending! :)'),(17,'205f91a4e0cfd26d8c1c5a64a49a0dc565be3eea','Kapil','kapil.kuam@students.iiit.ac.in','9988619407','Kapil','kapil.kuam@students.iiit.ac.in','9988619407','Pending',0,'2012-10-15 19:26:26','2012-10-16','2012-12-15','23:00:00','23:30:00','Kush','Tem Job!','1,7,',1,'N301','Multiple','Your request is pending! :)'),(18,'e8e505c4c56405411487df22a81e3fcdc7937915','Kapil','temp@u.com','9988619407','Kapil','temp@u.com','9988619407','Pending',0,'2012-10-15 19:30:22','2012-10-02','2012-10-02','23:00:00','23:30:00','Kush','Tem Job!','1,7,',1,'TS','One Time','Your request is pending! :)'),(19,'2fdb703bd5e7b263515c71a2b172d76e5fa02074','Kapil','temp@u.com','9988619407','Kapil','temp@u.com','9988619407','Pending',0,'2012-10-15 20:05:38','2012-10-02','2012-10-02','23:00:00','23:30:00','Kush','Tem Job!','1,7,',1,'TS','One Time','Your request is pending! :)'),(20,'ed11c8cf06a2d37b3d113027183b1ad56f46bbb2','Nehal','nehalwani@gmail.com','9012990129','Kisna','kisna@iit.ac.in','9196781230','Pending',0,'2012-10-15 23:57:01','2012-10-02','2012-10-02','23:00:00','23:30:00','Felicity','Live!','',1,'TS','One Time','Your request is pending! :)'),(21,'72f5c31574611242822bb7fe25c32a0fb775b8f4','Nehal','nehalwani@gmai.cpm','9012990129','Kisna','kisna@gmail.com','9196781230','Pending',0,'2012-10-16 00:24:46','2012-10-02','2012-10-02','23:00:00','23:30:00','Felicity','Live!','3',1,'TS','One Time','Your request is pending! :)'),(22,'8dfc4a54602c80f097387bf6f12e9327a6d53467','Nehal','nehalwani@gmai.cpm','9012990129','Kisna','kisna@gmail.com','9196781230','Pending',0,'2012-10-16 00:25:22','2012-10-02','2012-10-02','23:00:00','23:30:00','Felicity','Live!','3',1,'TS','One Time','Your request is pending! :)'),(23,'a54409ea7f17627a638f92afe63201637c9c8491','Deepsh Jain','deepesh.jain@iit.ac.in','9012990129','Anisa','anish@snig.com','9052480529','Pending',0,'2012-10-16 08:49:57','2012-10-16','2012-10-16','08:00:00','08:30:00','Science Tute','Masti!','3',1,'TS','One Time','Your request is pending! :)'),(24,'e66f0f0d493ed61d5ff51665cfdb27a4d7cbbe8c','Deepsh','jain@gmail.com','9012990129','Deepsh','jain@gmail.com','9012990129','Pending',0,'2012-10-16 08:50:33','2012-10-16','2012-10-16','08:00:00','09:00:00','Science Tute','Masti!','3',1,'TS','One Time','Your request is pending! :)'),(25,'11fa046ab5284948b7b7121be0b185a2213f6126','Deepsh','jain@gmail.com','9012990129','Deepsh','jain@gmail.com','9012990129','Pending',0,'2012-10-16 09:06:00','2012-10-16','2012-10-16','08:00:00','09:00:00','Science Tute','Masti!','3',1,'TS','One Time','Your request is pending! :)');
/*!40000 ALTER TABLE `Requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Room`
--

DROP TABLE IF EXISTS `Room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Room` (
  `roomId` int(11) NOT NULL AUTO_INCREMENT,
  `roomName` varchar(8) NOT NULL,
  `buildingName` int(11) NOT NULL,
  `blockName` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `capacity` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`roomId`),
  UNIQUE KEY `roomName` (`roomName`),
  KEY `building` (`buildingName`),
  KEY `block` (`blockName`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Room`
--

LOCK TABLES `Room` WRITE;
/*!40000 ALTER TABLE `Room` DISABLE KEYS */;
INSERT INTO `Room` VALUES (1,'N301',1,0,'EMPTY',100),(2,'302_NIL',1,0,NULL,100),(3,'TL1',1,0,NULL,0),(4,'TL2',1,0,NULL,0),(5,'SH1',2,0,NULL,250),(6,'SH2',2,0,NULL,250),(10,'305_NIL',1,0,NULL,100),(8,'CR1',2,0,NULL,0),(9,'CR2',2,0,NULL,0),(11,'TS',3,0,NULL,0);
/*!40000 ALTER TABLE `Room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Room_Cat`
--

DROP TABLE IF EXISTS `Room_Cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Room_Cat` (
  `roomId` int(11) NOT NULL,
  `catId` int(11) NOT NULL,
  PRIMARY KEY (`roomId`,`catId`),
  KEY `catId` (`catId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Room_Cat`
--

LOCK TABLES `Room_Cat` WRITE;
/*!40000 ALTER TABLE `Room_Cat` DISABLE KEYS */;
INSERT INTO `Room_Cat` VALUES (1,1),(2,1),(3,3),(4,3),(5,1),(5,2),(6,1),(6,2),(8,1),(9,1);
/*!40000 ALTER TABLE `Room_Cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Updates`
--

DROP TABLE IF EXISTS `Updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Updates` (
  `description` varchar(500) NOT NULL,
  `up_time` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Updates`
--

LOCK TABLES `Updates` WRITE;
/*!40000 ALTER TABLE `Updates` DISABLE KEYS */;
INSERT INTO `Updates` VALUES ('user requested for 301_NIL for dates 2011-11-19 to 2011-11-19 from 23:00:00 to 24:00:00. Description of activity : dumb c','838:59:59'),('user requested for Room TS for dates 2011-11-20 to 2011-11-20 from Hrs.21:30:00 to 23:00:00.<br/> Description of activity : fff','838:59:59'),('parag requested for Room 301_NIL for dates 2011-11-21 to 2011-11-21 from Hrs.05:00:00 to 05:30:00.<br/> Description of activity : dance','00:00:00'),('abhay requested for Room 301_NIL for dates 2011-11-21 to 2011-11-21 from Hrs.05:00:00 to 05:30:00.<br/> Description of activity : colli','00:00:00'),('parag requested for Room 301_NIL for dates 2011-11-21 to 2011-11-21 from Hrs.05:00:00 to 05:30:00.<br/> Description of activity : first ','00:00:00'),('abhay requested for Room 301_NIL for dates 2011-11-21 to 2011-11-21 from Hrs.07:30:00 to 08:00:00.<br/> Description of activity : second','00:00:00'),('abhay requested for Room 301_NIL for dates 2011-11-21 to 2011-11-21 from Hrs.00:00:00 to 01:30:00.<br/> Description of activity : morini','838:59:59'),('abhay requested for Room 301_NIL for dates 2011-11-21 to 2011-11-21 from Hrs.05:30:00 to 06:00:00.<br/> Description of activity : colide','838:59:59'),('abhay requested for Room 301_NIL for dates 2011-11-21 to 2011-11-21 from Hrs.21:30:00 to 24:00:00.<br/> Description of activity : asf','00:00:00'),('parag requested for Room SH1 for dates 2011-11-21 to 2011-11-21 from Hrs.06:30:00 to 09:00:00.<br/> Description of activity : sfasf','838:59:59'),('parag requested for Room 301_NIL for dates 2011-11-21 to 2011-11-21 from Hrs.15:30:00 to 17:30:00.<br/> Description of activity : asf;lakf','00:00:00'),('parag requested for Room 301_NIL for dates 2011-11-21 to 2011-11-21 from Hrs.08:00:00 to 15:30:00.<br/> Description of activity : asdf','00:00:00'),('parag requested for Room SH2 for dates 2011-11-22 to 2011-11-22 from Hrs.14:30:00 to 23:59:59.<br/> Description of activity : asdf','00:00:00'),('parag requested for Room CR1 for dates 2011-11-26 to 2011-11-28 from Hrs.06:30:00 to 09:00:00.<br/> Description of activity : ff','00:00:00'),('parag requested for Room 301_NIL for dates 2011-11-22 to 2011-11-22 from Hrs.07:00:00 to 08:30:00.<br/> Description of activity : fff','838:59:59'),('parag requested for Room 301_NIL for dates 2011-11-22 to 2011-11-22 from Hrs.19:00:00 to 22:30:00.<br/> Description of activity : Elocution Competition.','838:59:59'),('parag requested for Room 301_NIL for dates 2011-11-23 to 2011-11-23 from Hrs.17:00:00 to 18:30:00.<br/> Description of activity : Yoga activities.','838:59:59'),('anshul requested for Room 301_NIL for dates 2011-11-23 to 2011-12-22 from Hrs.15:30:00 to 18:00:00.<br/> Description of activity : Dance Club','00:00:00'),('parag requested for Room 301_NIL for dates 2011-11-23 to 2011-11-30 from Hrs.15:00:00 to 18:00:00.<br/> Description of activity : Algorithm Tute','00:00:00'),('anshul requested for Room 301_NIL for dates 2011-11-23 to 2011-11-30 from Hrs.16:00:00 to 19:00:00.<br/> Description of activity : Exam.','00:00:00'),('parag requested for Room SH1 for dates 2011-11-22 to 2011-11-22 from Hrs.17:30:00 to 22:00:00.<br/> Description of activity : Tute','00:00:00'),('parag requested for Room 301_NIL for dates 2011-11-25 to 2011-11-25 from Hrs.16:00:00 to 17:30:00.<br/> Description of activity : DISCO PARTY','838:59:59'),('user1 requested for Room 301_NIL for dates 2012-04-26 to 2012-04-28 from Hrs.08:00:00 to 08:30:00.<br/> Description of activity : kjhkl','00:00:00'),('user1 requested for Room SH1 for dates 2012-04-28 to 2012-04-30 from Hrs.09:00:00 to 16:00:00.<br/> Description of activity : sport','00:00:00'),('user1 requested for Room SH1 for dates 2012-08-28 to 2012-08-28 from Hrs.09:00:00 to 11:00:00.<br/> Description of activity : xyz','00:00:00');
/*!40000 ALTER TABLE `Updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `level` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userId`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'user1','user1','user1@students.iiit.ac.in',0),(2,'super.user','super.user','super.user@students.iiit.ac.in',1),(5,'priveleged.user1','priveleged.user1','priveleged.user1@students.iiit.ac.in',2),(8,'priveleged.user2','priveleged.user2','priveleged.user2@students.iiit.ac.in',2),(7,'priveleged.user3','priveleged.user3','priveleged.user3@students.iiit.ac.in',2),(9,'user2','user2','user2@students.iiit.ac.in',0),(11,'user3','user3','user3@students.iiit.ac.in',0),(12,'Ansh','password','anshul.soni@students.iiit.ac.in',0),(13,'nehaljwani','iiit123','nehal.wani@students.iiit.ac.in',0);
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-16 16:15:00
