CREATE DATABASE  IF NOT EXISTS `ChargeFinder` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ChargeFinder`;
-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: ChargeFinder
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `station`
--

DROP TABLE IF EXISTS `station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `station` (
  `stationId` char(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `stationName` varchar(255) NOT NULL,
  `stationAddress` varchar(255) NOT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL,
  `stationStatus` varchar(255) NOT NULL,
  `stationOutput` varchar(255) NOT NULL,
  `stationCost` varchar(255) NOT NULL,
  `numStations` int NOT NULL,
  `stationAvailability` tinyint(1) NOT NULL,
  `stationSchedule` varchar(255) NOT NULL,
  `navigateLink` varchar(255) NOT NULL,
  `stationCity` varchar(255) NOT NULL,
  PRIMARY KEY (`stationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station`
--

LOCK TABLES `station` WRITE;
/*!40000 ALTER TABLE `station` DISABLE KEYS */;
INSERT INTO `station` VALUES ('2a256441-4a90-42f2-bb1c-e4cd25727c4a','283 Cyr Avenue','283 Cyr Avenue',45.4503,-75.6724,'Operational','30 kW','$0.25/kWh',2,2,'24/7','Ottawa','https://www.google.com/maps/dir/?api=1&destination=45.440291, -75.661184'),('56b079be-884e-471b-a373-e5ae14af9f61','170 Primrose Avenue','170 Primrose Ave, Ottawa, ON',45.3813,-75.7274,'Operational','30 kW','$0.30/kWh',3,1,'24/7','https://www.google.com/maps/dir/?api=1&destination=170+Primrose+Ave,+Ottawa,+ON','Ottawa'),('579b2450-63b2-4f15-bc80-38d509e69d83','190 Richmond Road','190 Richmond Road',45.397,-75.7483,'Operational','40 kW','$0.25/kWh',2,1,'24/7','https://www.google.com/maps/dir/?api=1&destination=45.396963,-75.748318','Ottawa'),('8477b56d-cb67-4be4-a366-2266b7e94c2e','186 Main Street','186 Main St, Ottawa, ON',45.4332,-75.6872,'Operational','25 kW','$0.20/kWh',3,1,'24/7','https://www.google.com/maps/dir/?api=1&destination=45.433162,-75.687214','Ottawa'),('997127e7-973c-4b2b-a630-b9aae07eb760','301 Laurier Avenue East','301 Laurier Avenue East',45.4218,-75.6834,'Operational','50 kW','$0.30/kWh',2,1,'24/7','https://www.google.com/maps/dir/?api=1&destination=45.433162,-75.687214','Ottawa'),('9cfc31b4-4f45-47b3-b621-f5fbf7a696fd','122 Daly Avenue','122 Daly Ave, Ottawa, ON',45.4271,-75.6927,'Operational','20 kW','$0.20/kWh',2,0,'24/7','https://www.google.com/maps/dir/?api=1&destination=122+Daly+Ave,+Ottawa,+ON','Ottawa'),('d3c3c525-62d9-4433-afaa-61e0bf25e707','930 Wellington Street West charging station','930 Wellington Street West charging station',45.4045,-75.728,'Out of service','60 kW','$0.40/kWh',2,0,'24/7','https://www.google.com/maps/dir/?api=1&destination=45.421771,-75.683386','Ottawa'),('ebd94274-3400-4cd2-bafe-fe4ba1cdfadf','113 Beechwood Avenue','113 Beechwood Avenue',45.4464,-75.6759,'Operational','50 kW','$0.25/kWh',1,2,'24/7','Ottawa','https://www.google.com/maps/dir/?api=1&destination=113+Beechwood+Ave,+Ottawa,+ON'),('fbbdaa98-e5f8-4f4c-a3d6-d9a6e9b56800','245 Crichton Street','245 Crichton Street',45.4451,-75.6823,'Operational','15 kW','$0.15/kWh',2,1,'24/7','https://www.google.com/maps/dir/?api=1&destination=45.445085,-75.682266','Ottawa');
/*!40000 ALTER TABLE `station` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userId` char(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phoneNumber` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userType` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('0462cd00-297f-4913-835a-1c2c46d1cd8d','vincent','macdonnell.vincent@gmail.com','sql','613-830-3333','Admin'),('2acc3d6e-b6fa-4b48-a928-03bbc6fe415b','nick',NULL,'sql','613-830-3333','Client'),('3d19d143-097d-46ed-8d6c-a6f94ad80ad4','sam','vincent@gmail.com','sql','613-830-3333','Admin'),('7c0cf995-ab26-4775-8a77-dda3150fc157','sam','macdonnell.vincent@gmail.com','sql','613-830-3333','Client'),('7c6b3014-3381-41a8-8354-452e881c7276','Allison','macdonnell.vincent@gmail.com','sql','613-830-3333','Admin'),('9adbdc86-bc66-42d1-85e4-1787182dca41','david','david@gmail.com','sql','613-830-7777','Admin'),('b9faac7d-8e84-4979-a662-81b3f03d4a4a','david','macdonnell.vincent@gmail.com','sql','613-830-3333','Admin'),('d22c3db1-d5b5-4fc0-8124-a6ea018e767c','vincentt44444','macdonnell.vincent@gmail.com','sql','613-830-3333','Admin'),('d2e44d38-23f2-4f0a-a823-424b4b5fd997','david','macdonnell.vincent@gmail.com','sql','613-830-3333','Owner');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-22 18:06:31
