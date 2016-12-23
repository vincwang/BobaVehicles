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
-- Table structure for table `Bid`
--

DROP TABLE IF EXISTS `Bid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Bid` (
  `bidid` int(11) NOT NULL AUTO_INCREMENT,
  `buyer` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `bidprice` int(11) NOT NULL,
  `bidtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`bidid`),
  KEY `buyer` (`buyer`),
  KEY `item` (`item`),
  CONSTRAINT `bid_ibfk_1` FOREIGN KEY (`buyer`) REFERENCES `Buyers` (`buyerid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bid_ibfk_2` FOREIGN KEY (`item`) REFERENCES `Items` (`itemid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Buyers`
--

DROP TABLE IF EXISTS `Buyers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Buyers` (
  `buyerid` int(11) NOT NULL,
  `points` int(11) DEFAULT '0',
  PRIMARY KEY (`buyerid`),
  CONSTRAINT `buyers_ibfk_1` FOREIGN KEY (`buyerid`) REFERENCES `USERS` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ClearanceItem`
--

DROP TABLE IF EXISTS `ClearanceItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ClearanceItem` (
  `clearnceitemid` int(11) NOT NULL,
  `discount` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`clearnceitemid`),
  CONSTRAINT `clearanceitem_ibfk_1` FOREIGN KEY (`clearnceitemid`) REFERENCES `Items` (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Deliveries`
--

DROP TABLE IF EXISTS `Deliveries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Deliveries` (
  `item` int(11) NOT NULL,
  `deliverytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`item`),
  CONSTRAINT `deliveries_ibfk_1` FOREIGN KEY (`item`) REFERENCES `Items` (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Items`
--

DROP TABLE IF EXISTS `Items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Items` (
  `itemid` int(11) NOT NULL AUTO_INCREMENT,
  `supplier` int(11) NOT NULL,
  `year` int(11) NOT NULL DEFAULT '1900',
  `color` char(20) NOT NULL,
  `vehicletype` char(20) NOT NULL,
  `vehiclecondition` char(20) NOT NULL,
  `mileage` int(11) NOT NULL DEFAULT '0',
  `model` char(20) NOT NULL,
  `brand` char(20) NOT NULL,
  `price` int(11) NOT NULL,
  `sold` int(11) NOT NULL DEFAULT '0',
  `biddable` int(11) DEFAULT '0',
  `minimumprice` int(11) DEFAULT NULL,
  `currentbid` int(11) DEFAULT '0',
  `bidendtime` varchar(45) DEFAULT NULL,
  `listedtime` varchar(45) DEFAULT NULL,
  `isonsale` int(11) DEFAULT '0',
  PRIMARY KEY (`itemid`),
  KEY `supplier` (`supplier`),
  CONSTRAINT `items_ibfk_1` FOREIGN KEY (`supplier`) REFERENCES `Suppliers` (`supplierid`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Ratings`
--

DROP TABLE IF EXISTS `Ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ratings` (
  `ratingid` int(11) NOT NULL AUTO_INCREMENT,
  `supplier` int(11) NOT NULL,
  `ratedby` int(11) NOT NULL,
  `rating` int(11) NOT NULL DEFAULT '0',
  `ratingtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment` text,
  PRIMARY KEY (`ratingid`),
  KEY `supplier` (`supplier`),
  KEY `ratedby` (`ratedby`),
  CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`supplier`) REFERENCES `Suppliers` (`supplierid`),
  CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`ratedby`) REFERENCES `Buyers` (`buyerid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Suppliers`
--

DROP TABLE IF EXISTS `Suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Suppliers` (
  `supplierid` int(11) NOT NULL,
  `totalRating` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`supplierid`),
  CONSTRAINT `suppliers_ibfk_1` FOREIGN KEY (`supplierid`) REFERENCES `USERS` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `USERS`
--

DROP TABLE IF EXISTS `USERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USERS` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `password` char(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `bankacct` int(11) NOT NULL,
  `userName` char(20) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VehicleTransaction`
--

DROP TABLE IF EXISTS `VehicleTransaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VehicleTransaction` (
  `item` int(11) NOT NULL,
  `buyer` int(11) NOT NULL,
  `transtype` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL,
  `transtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`item`),
  KEY `buyer` (`buyer`),
  CONSTRAINT `vehicletransaction_ibfk_1` FOREIGN KEY (`item`) REFERENCES `Items` (`itemid`),
  CONSTRAINT `vehicletransaction_ibfk_2` FOREIGN KEY (`buyer`) REFERENCES `Buyers` (`buyerid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VipRequirements`
--

DROP TABLE IF EXISTS `VipRequirements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VipRequirements` (
  `viplevel` int(11) NOT NULL,
  `discount` float NOT NULL,
  `startingpoint` int(11) NOT NULL,
  `endingpoint` int(11) NOT NULL,
  PRIMARY KEY (`viplevel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-23 20:56:51
