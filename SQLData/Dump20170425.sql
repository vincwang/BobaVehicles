-- MySQL dump 10.13  Distrib 5.7.12, for osx10.9 (x86_64)
--
-- Host: localhost    Database: BobaVehicles
-- ------------------------------------------------------
-- Server version	5.6.25

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
-- Dumping data for table `Bid`
--

LOCK TABLES `Bid` WRITE;
/*!40000 ALTER TABLE `Bid` DISABLE KEYS */;
INSERT INTO `Bid` VALUES (15,33,112,30500,'2016-11-30 07:27:20'),(16,2,112,30600,'2016-11-30 07:28:06'),(17,4,112,40000,'2016-11-30 07:28:38'),(18,33,105,200000,'2016-11-30 07:37:23'),(19,4,105,200010,'2016-11-30 07:38:04'),(20,33,105,200050,'2016-11-30 07:38:16'),(21,4,105,200500,'2016-11-30 07:38:29'),(22,33,108,4500,'2016-11-30 07:43:54'),(23,3,105,200550,'2016-11-30 22:53:10'),(24,1,112,40001,'2016-12-04 21:52:18'),(25,1,112,40002,'2016-12-04 21:52:32'),(26,1,117,40200,'2017-01-10 23:30:48');
/*!40000 ALTER TABLE `Bid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Buyers`
--

LOCK TABLES `Buyers` WRITE;
/*!40000 ALTER TABLE `Buyers` DISABLE KEYS */;
INSERT INTO `Buyers` VALUES (0,0),(1,10000),(2,73684),(3,18973),(4,1983),(5,502),(6,2938),(7,0),(8,1983),(9,1083),(22,0),(24,0),(26,0),(27,0),(28,0),(29,0),(30,0),(33,0),(36,0),(37,0);
/*!40000 ALTER TABLE `Buyers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ClearanceItem`
--

LOCK TABLES `ClearanceItem` WRITE;
/*!40000 ALTER TABLE `ClearanceItem` DISABLE KEYS */;
/*!40000 ALTER TABLE `ClearanceItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Deliveries`
--

LOCK TABLES `Deliveries` WRITE;
/*!40000 ALTER TABLE `Deliveries` DISABLE KEYS */;
INSERT INTO `Deliveries` VALUES (83,'2016-11-30 10:23:44');
/*!40000 ALTER TABLE `Deliveries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Items`
--

LOCK TABLES `Items` WRITE;
/*!40000 ALTER TABLE `Items` DISABLE KEYS */;
INSERT INTO `Items` VALUES (1,10,1993,'Red','Motor Vehicle','Used',1000,'Camry','Honda',5000,0,0,4000,0,'2016-11-13 20:23:44','2016-11-26 03:36:47',0),(2,11,1994,'Orange','Motor Vehicle','Used',100,'R8','Audi',6000,0,0,0,0,'2016-11-13 20:23:44','2016-11-17 05:23:44',0),(3,12,1995,'Yellow','Motor Vehicle','Used',2000,'Terrain','GMC',7000,0,0,0,0,NULL,'2016-11-17 05:23:44',0),(4,13,1996,'Green','Bicycle','Used',3000,' Activa 3G','Honda',800,0,0,0,0,NULL,'2016-11-17 05:23:44',0),(5,14,1997,'Blue','Motor Vehicle','New',10,'Tacoma','Toyota',8100,0,0,0,0,NULL,'2016-11-17 05:23:44',0),(6,15,1998,'Purple','Bicycle','New',40,'Livo','Honda',800,0,0,0,0,NULL,'2016-11-17 05:23:44',0),(7,14,1999,'White','Motor Vehicle','Used',5000,'Yukon','GMC',6300,0,0,0,0,NULL,'2016-11-17 05:23:44',0),(8,13,2000,'Black','Motor Vehicle','Used',6000,'Sierra','GMC',6000,0,0,0,0,NULL,'2016-11-17 05:23:44',0),(9,12,2001,'Pink','Bicycle','New',3,'Livo','Honda',500,0,0,0,0,NULL,'2016-11-17 05:23:44',0),(10,11,2002,'Red','Motor Vehicle','Used',8000,'Insight','Honda',10000,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(11,10,2003,'Orange','Bicycle','Used',150,'Activa 3G','Honda',400,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(12,15,2004,'Yellow','Motor Vehicle','New',50,'A4','Audi',8000,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(13,16,2005,'Green','Motor Vehicle','Used',7000,'Camry','Honda',4000,1,0,0,0,NULL,'2016-11-17 14:23:44',0),(14,17,2006,'Blue','Bicycle','Used',80,'Livo','Honda',300,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(15,18,2007,'Purple','Motor Vehicle','Used',6000,'Tacoma','Toyota',7000,1,0,0,0,NULL,'2016-11-17 14:23:44',0),(16,19,2008,'Black','Motor Vehicle','Used',7000,'Camry','Honda',4000,0,0,0,4,NULL,'2016-11-17 14:23:44',0),(17,18,2009,'White','Bicycle','New',60,'Livo','Honda',200,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(18,17,2010,'Pink','Motor Vehicle','Used',8000,'M3','BMW',6000,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(19,16,2011,'Black','Motor Vehicle','Used',12000,'Camry','Honda',3000,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(20,15,2012,'Red','Motor Vehicle','Used',1100,'Yaris','Toyota',4000,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(21,19,2013,'Grey','Bicycle','Used',170,'Livo','Honda',200,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(22,13,2014,'Orange','Motor Vehicle','Used',3400,'Camry','Honda',7000,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(23,18,2015,'Yellow','Motor Vehicle','Used',35500,'Camry','Honda',6000,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(24,15,2014,'Green','Bicycle','Used',65,'Activa 3G','Honda',300,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(25,10,2016,'Black','Motor Vehicle','New',15000,'535','BMW',13883,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(26,10,2001,'White','Bicycle','Used',200,'Activa 3G','Honda',1999,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(27,10,2000,'Dark Blue','Motor Vehicle','Used',12000,'740e','BMW',13131,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(28,10,2008,'Black','Bicycle','Used',100,'CB Shine','Honda',18928,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(29,10,2010,'Black','Motor Vehicle','New',13000,'Juke','Nissan',13141,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(30,11,2009,'Yellow','Bicycle','Used',100,'Dio','Honda',9183,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(31,11,2011,'Black','Bicycle','Used',50,'Livo','Honda',8377,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(32,11,2016,'Black','Motor Vehicle','New',20,'Leaf','Nissan',13871,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(33,11,2015,'Yellow','Motor Vehicle','Used',10000,'Altima','Nissan',18871,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(34,11,2013,'Dark Blue','Bicycle','Used',40,'Activa 3G','Honda',93884,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(35,12,2014,'Black','Motor Vehicle','Used',10000,'Cayenne','Porsche',81871,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(36,12,2016,'Black','Bicycle','New',5,'Dio','Honda',9388,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(37,12,2010,'Grey','Motor Vehicle','Used',15000,'911','Porsche',81319,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(38,10,2000,'Grey','Bicycle','Used',10,'Dio','Honda',823,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(39,12,2016,'Black','Motor Vehicle','New',18000,'Boxer','Porsche',91883,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(40,13,2014,'White','Motor Vehicle','Used',10000,'Model X','Tesla',81828,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(41,19,2008,'White','Bicycle','Used',20,'Livo','Honda',18413,1,0,0,0,NULL,'2016-11-17 14:23:44',0),(42,19,2010,'Black','Motor Vehicle','Used',20000,'Model S','Tesla',81881,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(43,13,2016,'Black','Motor Vehicle','New',10,'Camry','Honda',12312,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(44,13,2015,'Green','Bicycle','Used',8,'Dio','Honda',13841,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(45,10,2016,'Black','Bicycle','New',2,'Livo','Honda',18472,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(46,16,2010,'Red','Motor Vehicle','Used',10000,'Accord','Honda',12192,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(47,14,2006,'Black','Motor Vehicle','Used',16000,'Civic','Honda',12312,0,0,10000,0,'2016-11-16 20:23:44','2016-11-17 14:23:44',0),(48,18,2005,'Dark Blue','Motor Vehicle','Used',20000,'CR-V','Honda',138133,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(49,14,2016,'Black','Bicycle','New',1,'Activa 3G','Honda',23244,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(50,15,2013,'Grey','Motor Vehicle','Used',23000,'528','BMW',11172,0,0,0,0,NULL,'2016-11-17 14:23:44',1),(51,10,2001,'White','Bicycle','Used',200,'Activa 3G','Honda',1999,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(52,10,2008,'Black','Bicycle','Used',100,'CB Shine','Honda',18928,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(53,11,2009,'Yellow','Bicycle','Used',100,'Dio','Honda',9183,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(54,11,2011,'Black','Bicycle','Used',50,'Livo','Honda',8377,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(55,11,2013,'Dark Blue','Bicycle','Used',40,'Activa 3G','Honda',93884,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(56,12,2016,'Black','Bicycle','New',5,'Dio','Honda',9388,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(57,10,2000,'Grey','Bicycle','Used',10,'Dio','Honda',823,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(58,19,2008,'White','Bicycle','Used',20,'Livo','Honda',123,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(59,13,2015,'Green','Bicycle','Used',8,'Dio','Honda',13841,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(60,10,2016,'Black','Bicycle','New',2,'Livo','Honda',18472,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(61,14,2016,'Black','Bicycle','New',1,'Activa 3G','Honda',23244,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(62,15,2013,'Grey','Motor Vehicle','Used',23000,'528','BMW',13144,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(63,10,2016,'Black','Motor Vehicle','New',15000,'535','BMW',2562346,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(64,10,2000,'Dark Blue','Motor Vehicle','Used',12000,'740e','BMW',2345624,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(65,10,2010,'Black','Motor Vehicle','New',13000,'Juke','Nissan',453463,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(66,11,2016,'Black','Motor Vehicle','New',20,'Leaf','Nissan',13871,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(67,11,2015,'Yellow','Motor Vehicle','Used',89878,'Altima','Nissan',18871,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(68,12,2014,'Black','Motor Vehicle','Used',10000,'Cayenne','Porsche',363724,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(69,12,2010,'Grey','Motor Vehicle','Used',15000,'911','Porsche',81319,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(70,12,2016,'Black','Motor Vehicle','New',89882,'Boxer','Porsche',5625724,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(71,13,2014,'White','Motor Vehicle','Used',10000,'Model X','Tesla',81828,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(72,19,2010,'Black','Motor Vehicle','Used',20000,'Model S','Tesla',81881,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(73,13,2016,'Black','Motor Vehicle','New',10,'Camry','Honda',12312,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(74,16,2010,'Red','Motor Vehicle','Used',10000,'Accord','Honda',12192,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(75,14,2006,'Black','Motor Vehicle','Used',16000,'Civic','Honda',12312,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(76,18,2005,'Dark Blue','Motor Vehicle','Used',20000,'CR-V','Honda',138133,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(77,10,1993,'Red','Motor Vehicle','Used',1000,'Camry','Honda',82834,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(78,11,1994,'Orange','Motor Vehicle','Used',100,'R8','Audi',6000,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(79,12,1995,'Yellow','Motor Vehicle','Used',2000,'Terrain','GMC',4522,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(80,13,1996,'Green','Bicycle','Used',3000,' Activa 3G','Honda',800,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(81,14,1997,'Blue','Motor Vehicle','New',10,'Tacoma','Toyota',9000,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(82,15,1998,'Purple','Bicycle','New',40,'Livo','Honda',800,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(83,14,1999,'White','Motor Vehicle','Used',5000,'Yukon','GMC',7000,1,0,0,0,NULL,'2016-11-17 14:23:44',0),(84,13,2000,'Black','Motor Vehicle','Used',6000,'Sierra','GMC',6000,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(85,12,2001,'Pink','Bicycle','New',3,'Livo','Honda',3423,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(86,11,2002,'Red','Motor Vehicle','Used',8000,'Insight','Honda',199098,0,0,0,0,NULL,'2016-11-17 14:23:44',1),(87,10,2003,'Orange','Bicycle','Used',150,'Activa 3G','Honda',23423,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(88,15,2004,'Yellow','Motor Vehicle','New',50,'A4','Audi',1435145,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(89,16,2005,'Green','Motor Vehicle','Used',7000,'Camry','Honda',123434,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(90,17,2006,'Blue','Bicycle','Used',80,'Livo','Honda',300,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(91,18,2007,'Purple','Motor Vehicle','Used',6000,'Tacoma','Toyota',19910,0,0,0,0,NULL,'2016-11-17 14:23:44',1),(92,19,2008,'Black','Motor Vehicle','Used',7000,'Camry','Honda',23423,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(93,18,2009,'White','Bicycle','New',60,'Livo','Honda',2910,0,0,0,0,NULL,'2016-11-17 14:23:44',1),(94,17,2010,'Pink','Motor Vehicle','Used',8000,'M3','BMW',23423,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(95,16,2011,'Black','Motor Vehicle','Used',12000,'Camry','Honda',234234,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(96,15,2012,'Red','Motor Vehicle','Used',1100,'Yaris','Toyota',199099,0,0,0,0,NULL,'2016-11-17 14:23:44',1),(97,19,2013,'Grey','Bicycle','Used',170,'Livo','Honda',200,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(98,13,2014,'Orange','Motor Vehicle','Used',3400,'Camry','Honda',234235,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(99,18,2015,'Yellow','Motor Vehicle','Used',35500,'Camry','Honda',19910,0,0,0,0,NULL,'2016-11-17 14:23:44',1),(100,15,2014,'Green','Bicycle','Used',65,'Activa 3G','Honda',23423,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(101,17,2013,'Blue','Motor Vehicle','New',800,'M3','BMW',234235,0,0,0,0,NULL,'2016-11-17 14:23:44',0),(102,15,1900,'green','Motor Vehicle','New',100000,'Test Model','Toyata',10000,0,0,0,0,'2016-11-15','2016-11-17 14:23:44',0),(103,14,1900,'blue','Motor Vehicle','New',100000,'testmodel','Testcar',10000000,0,0,100000,0,'2016-11-26 05:23:44','2016-11-17 14:23:44',0),(104,14,1900,'3','Motor Vehicle','New',3,'3','3',3,0,0,NULL,0,NULL,'2016-11-17 14:23:44',0),(105,14,1900,'red','Motor Vehicle','New',9999,'Something','Benz',400000,1,1,20000,200550,'2016-12-16 20:23:44','2016-11-26 03:36:47',0),(106,14,1900,'green','Motor Vehicle','New',1000000,'Somemodel','Somecar',3333,0,0,3444,0,'2016-11-29 16:30:00','2016-11-26 03:36:47',0),(107,14,1900,'green','Motor Vehicle','New',110101,'prium','Test',100000,1,0,33333,0,'2016-11-20 22:00:00','2016-11-26 03:36:47',0),(108,10,1900,'Blue','Motor Vehicle','New',100000,'C320','Kia',4000,1,1,4000,4500,'2016-11-29 17:05:00','2016-11-26 02:42:02.508',0),(109,14,1900,'blue','Motor Vehicle','Used',100,'Jetta','VW',4000000,0,0,NULL,0,NULL,'2016-11-29 19:53:27.648',0),(110,34,1900,'green','Motor Vehicle','New',10010,'Camry','Toyota',100000,0,0,10000,0,'2016-12-29 23:59:00','2016-11-30 02:22:55.392',0),(111,34,1900,'black','Motor Vehicle','New',1000,'Somemodel','Benz',3400,0,0,NULL,0,NULL,'2016-11-30 02:23:51.450',1),(112,34,1900,'yellow','Motor Vehicle','New',10010,'GoodModel','GoodBrand',4000000,1,1,30200,40002,'2016-12-28 17:59:00','2016-11-30 02:24:41.395',0),(113,34,1900,'blue','Motor Vehicle','New',100,'S500','Mercedes Benz',50000,1,0,NULL,0,NULL,'2016-11-30 02:26:05.652',0),(114,14,1900,'red','Motor Vehicle','New',100000,'Toyota Model 1','Toyota',500000,1,0,NULL,0,NULL,'2016-11-30 17:53:57.212',0),(115,14,1900,'green','Motor Vehicle','New',10000,'Khaha','BestBrand',1012,1,0,NULL,0,NULL,'2016-12-04 16:33:29.857',1),(116,35,1900,'green','Motor Vehicle','New',10000,'Model X','Starbucks',5000,1,0,NULL,0,NULL,'2016-12-06 17:31:10.902',0),(117,14,1900,'blue','Motor Vehicle','New',1000,'760','BMW',40000,1,1,30000,40200,'2017-01-19 23:59:00','2017-01-10 18:29:37.831',0),(118,14,1900,'red','Motor Vehicle','New',1000,'500','Mercedes Benz',30000,0,0,25000,0,'2017-01-22 23:59:00','2017-01-10 18:30:31.429',0),(119,15,1900,'blue','Motor Vehicle','New',4000,'Civic','Honda',425000,0,0,NULL,0,NULL,'2017-01-10 18:31:25.884',1),(120,34,1900,'black','Motor Vehicle','New',10000,'Z1','Hummer',40000,0,0,NULL,0,NULL,'2017-01-10 18:37:18.225',0);
/*!40000 ALTER TABLE `Items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Ratings`
--

LOCK TABLES `Ratings` WRITE;
/*!40000 ALTER TABLE `Ratings` DISABLE KEYS */;
INSERT INTO `Ratings` VALUES (8,14,1,4,'2016-11-30 07:33:14','Your car is amazing!'),(9,14,33,5,'2016-11-30 07:36:25','The service was very good!'),(10,16,1,3,'2016-11-30 18:23:30','Good'),(11,16,1,5,'2016-11-30 22:52:05','nice'),(12,14,37,5,'2016-12-09 13:27:21','I like your car');
/*!40000 ALTER TABLE `Ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Suppliers`
--

LOCK TABLES `Suppliers` WRITE;
/*!40000 ALTER TABLE `Suppliers` DISABLE KEYS */;
INSERT INTO `Suppliers` VALUES (10,0),(11,0),(12,0),(13,0),(14,0),(15,0),(16,0),(17,0),(18,0),(19,0),(25,0),(34,0),(35,0);
/*!40000 ALTER TABLE `Suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `USERS`
--

LOCK TABLES `USERS` WRITE;
/*!40000 ALTER TABLE `USERS` DISABLE KEYS */;
INSERT INTO `USERS` VALUES (1,'123456','9325 Gulfstream Rd, Frankfort, IL, 60423',123451,'Jack','1@boba.com'),(2,'123456','66 Woodsia Rd, Saunderstown, RI, 02874',513415,'Jose','2@boba.com'),(3,'123456','1222 Nickerson St, Marion, KS, 66861',1234,'Mike','3@boba.com'),(4,'123456','971 Gainsway Court Norwich, CT 06360',5413214,'Justin','4@boba.com'),(5,'123456','8725 Country St. Glenview, IL 60025',1234135,'Donald','5@boba.com'),(6,'123456','99 Schoolhouse St. Southgate, MI 48195',15143,'Steve','6@boba.com'),(7,'123456','38 S. Acacia Street Pittsfield, MA 01201',324235,'Lee','7@boba.com'),(8,'123456','7225 Grandrose Drive Clarksburg, WV 26301',2342352,'Wang','8@boba.com'),(9,'123456','38 S. Acacia Street Pittsfield, MA 01201',234234,'Jeff','9@boba.com'),(10,'123456','8725 Country St. Glenview, IL 60025',12341324,'Lion\'s Vehicles','10@boba.com'),(11,'123456','7255 Mayflower Ave. Cedar Rapids, IA 52402',1341234,'Pattee Vehicles','11@boba.com'),(12,'123456','7533 East Spring St. Council Bluffs, IA 51501',1021233,'Speedy Cars','12@boba.com'),(13,'123456','53 Clark Avenue Braintree, MA 02184',10091293,'Fast n Furious','13@boba.com'),(14,'123456','53 Pilgrim Street San Angelo, TX 76901',102901284,'Lambo Vehicles','14@boba.com'),(15,'123456','26 Clark St. Parkersburg, WV 26101',2467578,'Lux Vehicles','15@boba.com'),(16,'123456','269 Glenwood St. San Diego, CA 92111',1274589,'Cheap Like Water','16@boba.com'),(17,'123456','9361 Canal St. Defiance, OH 43512',6578997,'Nihao Vehicles','17@boba.com'),(18,'128128','336 Nut Swamp Lane Glen Allen, VA 23059',35678987,'Carrr','18@boba.com'),(19,'123456','97 S. White Street Medford, MA 02155',9778990,NULL,'19@boba.com'),(20,'123456','1230 North Ave, Spearfish, SD, 57783',1010101010,'Mary','20@boba.com'),(22,'123456','Address is my address hahah',1234567890,'Testing Mike','22@boba.com'),(24,'123456','addres addres',121212,'Mike Yeah','24@boba.com'),(25,'123456','aldjalsdfa',67890876,'Testing hah','25@boba.com'),(26,'123456789','wertyuiop',90909,'ertyuiop','26@boba.com'),(27,'23456789','qwertyui',67676,'1234567890','27@boba.com'),(28,'d','d',4,'j','28@boba.com'),(29,'j','j',8,'adf','29@boba.com'),(30,'j','j',3,'d','30@boba.com'),(33,'123456','100 Main Street, Santa Barbara, 9000 CA',10101010,'Mary','buyer@boba.com'),(34,'123456','101 Main Street, Santa Barbara, 9000 CA',121231,'Big Car Dealler','seller@boba.com'),(35,'123456','Old Main',101010,'cs431Seller','431seller@boba.com'),(36,'123456','fake address',103333,'Patrick McDaniel','pm@psu.edu'),(37,'123456','test',123456,'Dog','dog@boba.com');
/*!40000 ALTER TABLE `USERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `VehicleTransaction`
--

LOCK TABLES `VehicleTransaction` WRITE;
/*!40000 ALTER TABLE `VehicleTransaction` DISABLE KEYS */;
INSERT INTO `VehicleTransaction` VALUES (13,1,0,4000,'2016-11-30 07:32:25'),(15,33,0,7000,'2016-11-30 07:42:59'),(41,1,0,18413,'2016-11-30 22:51:46'),(83,33,0,7000,'2016-11-30 07:36:01'),(105,3,1,200550,'2017-01-10 23:28:40'),(107,1,0,100000,'2016-11-30 07:31:25'),(108,33,1,4500,'2016-11-30 07:44:35'),(112,1,1,40002,'2017-01-10 23:28:40'),(113,1,0,50000,'2016-11-30 19:17:30'),(114,1,0,500000,'2016-12-04 21:52:00'),(115,37,0,1012,'2016-12-09 13:27:02'),(116,1,0,5000,'2016-12-06 22:31:21'),(117,1,1,40200,'2017-01-25 20:18:35');
/*!40000 ALTER TABLE `VehicleTransaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `VipRequirements`
--

LOCK TABLES `VipRequirements` WRITE;
/*!40000 ALTER TABLE `VipRequirements` DISABLE KEYS */;
INSERT INTO `VipRequirements` VALUES (0,0,0,49999),(1,0.01,50000,89999),(2,0.02,90000,19999),(3,0.05,20000,999999999);
/*!40000 ALTER TABLE `VipRequirements` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-25 15:54:50
