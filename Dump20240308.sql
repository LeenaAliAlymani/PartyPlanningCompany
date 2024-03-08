-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: partyplanningcompany
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `balloon`
--

DROP TABLE IF EXISTS `balloon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `balloon` (
  `PartyNumber` int NOT NULL,
  `PartyType` char(20) NOT NULL,
  `Color` char(10) NOT NULL,
  PRIMARY KEY (`PartyNumber`,`PartyType`,`Color`),
  KEY `Balloon_FK2` (`PartyType`),
  CONSTRAINT `Balloon_FK1` FOREIGN KEY (`PartyNumber`) REFERENCES `party` (`PartyNumber`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Balloon_FK2` FOREIGN KEY (`PartyType`) REFERENCES `party` (`PartyType`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `balloon`
--

LOCK TABLES `balloon` WRITE;
/*!40000 ALTER TABLE `balloon` DISABLE KEYS */;
INSERT INTO `balloon` VALUES (1007,'GenderRevell','Blue'),(1007,'GenderRevell','Pink'),(1554,'Graduation','Gold'),(1554,'Graduation','White'),(2134,'Graduation','Black'),(2134,'Graduation','Gold'),(2987,'Wedding','Lavender');
/*!40000 ALTER TABLE `balloon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `M_ContactNumber` int NOT NULL,
  `C_ID` int NOT NULL,
  `FName` varchar(100) DEFAULT NULL,
  `LName` varchar(100) DEFAULT NULL,
  `C_Country` varchar(30) DEFAULT NULL,
  `C_City` varchar(30) DEFAULT NULL,
  `C_District` varchar(30) DEFAULT NULL,
  `C_Street` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`C_ID`),
  KEY `Client_FK` (`M_ContactNumber`),
  CONSTRAINT `Client_FK` FOREIGN KEY (`M_ContactNumber`) REFERENCES `mangment` (`M_ContactNumber`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (534564221,1,'Walaa','Alluqmani','Saudi arabia','Makkah','Aljaumum','Alsfa'),(504564222,2,'Lena','Alymani','Saudi arabia','Riyadh','Alsahafa','Street 56'),(524564223,3,'Reham','Almatrfi','Saudi arabia','Jeddah','Alsfa','Alzahab '),(564564224,4,'Amira','Alharthi','Saudi arabia','Taif','Alshafa','Street 34'),(574564225,5,'Khadija','Alajme','Saudi arabia','Asir','Abha','Street 23');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_phonenumber`
--

DROP TABLE IF EXISTS `client_phonenumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_phonenumber` (
  `C_ID` int NOT NULL,
  `C_PhoneNumber` int NOT NULL,
  PRIMARY KEY (`C_ID`,`C_PhoneNumber`),
  UNIQUE KEY `C_PhoneNumber` (`C_PhoneNumber`),
  CONSTRAINT `Client_Phone_FK` FOREIGN KEY (`C_ID`) REFERENCES `client` (`C_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_phonenumber`
--

LOCK TABLES `client_phonenumber` WRITE;
/*!40000 ALTER TABLE `client_phonenumber` DISABLE KEYS */;
INSERT INTO `client_phonenumber` VALUES (1,57323496),(3,502218263),(5,552611569),(2,563663809),(4,568231855);
/*!40000 ALTER TABLE `client_phonenumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_hall`
--

DROP TABLE IF EXISTS `event_hall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_hall` (
  `EventHall_Number` int NOT NULL,
  `B_Day` int DEFAULT NULL,
  `B_Month` int DEFAULT NULL,
  `B_Year` int DEFAULT NULL,
  `E_Country` varchar(30) DEFAULT NULL,
  `E_City` varchar(30) DEFAULT NULL,
  `E_District` varchar(30) DEFAULT NULL,
  `E_Street` varchar(30) DEFAULT NULL,
  `NumberOfCheers` int DEFAULT NULL,
  `M_ContactNumber` int NOT NULL,
  PRIMARY KEY (`EventHall_Number`),
  KEY `Event Hall_FK` (`M_ContactNumber`),
  CONSTRAINT `Event Hall_FK` FOREIGN KEY (`M_ContactNumber`) REFERENCES `mangment` (`M_ContactNumber`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_hall`
--

LOCK TABLES `event_hall` WRITE;
/*!40000 ALTER TABLE `event_hall` DISABLE KEYS */;
INSERT INTO `event_hall` VALUES (12987,18,8,2023,'Saudi arabia','Jeddah','Alsfa','Street 22',46,524564223),(35321,16,5,2024,'Saudi arabia','Makkah','Aljaumum','Alsfa',59,534564221),(42887,18,7,2023,'Saudi arabia','Asir','Abha','The Art Street',87,574564225),(65431,27,7,2023,'Saudi arabia','Riyadh','Alsahafa','Street 56',90,504564222),(75432,12,3,2024,'Saudi arabia','Jeddah','Aziziyah','Alsfa',85,524564223),(88765,25,10,2023,'Saudi arabia','Taif','Alshafa','Street 34',45,564564224);
/*!40000 ALTER TABLE `event_hall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guset`
--

DROP TABLE IF EXISTS `guset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guset` (
  `C_ID` int NOT NULL,
  `FName` varchar(20) NOT NULL,
  `LName` varchar(20) NOT NULL,
  `M_ContactNumber` int NOT NULL,
  `G_Country` varchar(30) DEFAULT NULL,
  `G_City` varchar(30) DEFAULT NULL,
  `G_District` varchar(30) DEFAULT NULL,
  `G_Street` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`C_ID`,`FName`,`LName`),
  KEY `Guset_FK2` (`M_ContactNumber`),
  CONSTRAINT `Guset_FK1` FOREIGN KEY (`C_ID`) REFERENCES `client` (`C_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Guset_FK2` FOREIGN KEY (`M_ContactNumber`) REFERENCES `mangment` (`M_ContactNumber`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guset`
--

LOCK TABLES `guset` WRITE;
/*!40000 ALTER TABLE `guset` DISABLE KEYS */;
INSERT INTO `guset` VALUES (1,'Amira','Alharbi',534564221,'Saudi arabia','Makkah','Aljaumum','Alsfa'),(1,'Nora','Alluqmani',534564221,'Saudi arabia','Makkah','Aljaumum','Alsfa'),(1,'Sara','Alluqmani',534564221,'Saudi arabia','Makkah','Aljaumum','Street 87'),(2,'Dalia','Alharbi',504564222,'Saudi arabia','Riyadh','Yarmouk','Street 33'),(2,'Sana','Almalki',504564222,'Saudi arabia','Riyadh','Alsahafa','Street 32'),(3,'Manar','Alsalm',524564223,'Saudi arabia','Jeddah','Alnaaym','street 2'),(3,'Rana','Almatrfi',524564223,'Saudi arabia','Jeddah','Alsfa','street 12'),(3,'zbuida','Alhla',524564223,'Saudi arabia','Jeddah','Alnasim','street 22'),(4,'Dania','Alharthi',564564224,'Saudi arabia','Taif','Alshafa','street 4'),(4,'Smayah','Alharthi',564564224,'Saudi arabia','Taif','Alshafa','street 5'),(5,'Sama','Alajme',574564225,'Saudi arabia','Asir','Abha','The Art Street'),(5,'Samira','Alajme',574564225,'Saudi arabia','Asir','Najran','street 45');
/*!40000 ALTER TABLE `guset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guset_phonenumber`
--

DROP TABLE IF EXISTS `guset_phonenumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guset_phonenumber` (
  `C_ID` int NOT NULL,
  `FName` varchar(30) NOT NULL,
  `LName` varchar(30) NOT NULL,
  `G_PhoneNumber` int NOT NULL,
  UNIQUE KEY `G_PhoneNumber` (`G_PhoneNumber`),
  KEY `Guset_Phone_FK` (`C_ID`),
  CONSTRAINT `Guset_Phone_FK` FOREIGN KEY (`C_ID`) REFERENCES `guset` (`C_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guset_phonenumber`
--

LOCK TABLES `guset_phonenumber` WRITE;
/*!40000 ALTER TABLE `guset_phonenumber` DISABLE KEYS */;
INSERT INTO `guset_phonenumber` VALUES (3,'Zbuida','Alhla',500532776),(4,'Dania','Alharthi',505053456),(1,'Nora','Alluqmani',522334455),(3,'Rana','Almatrfi',522548172),(2,'Dalia','Alharbi',525437654),(2,'Sana','Almalki',532185730),(1,'Sara','Alluqmani',534123456),(5,'Samira','Alajme',537281266),(3,'Manar','Alsalm',555441187),(4,'Smayah','Alharthi',563854217),(5,'Sama','Alajme',578675479),(1,'Amira','Alluqmani',599886543);
/*!40000 ALTER TABLE `guset_phonenumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mangment`
--

DROP TABLE IF EXISTS `mangment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mangment` (
  `M_ContactNumber` int NOT NULL,
  `MNGR_ID` int NOT NULL,
  `M_Country` varchar(30) DEFAULT NULL,
  `M_City` varchar(30) DEFAULT NULL,
  `M_District` varchar(30) DEFAULT NULL,
  `M_Street` varchar(30) DEFAULT NULL,
  `M_Email` varchar(30) DEFAULT NULL,
  `M_Name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`M_ContactNumber`),
  UNIQUE KEY `M_Email` (`M_Email`),
  KEY `MNGR_ID_Index` (`MNGR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mangment`
--

LOCK TABLES `mangment` WRITE;
/*!40000 ALTER TABLE `mangment` DISABLE KEYS */;
INSERT INTO `mangment` VALUES (504564222,54591,'Saudi arabia','Riyadh','Alsahafa','Alia Street','PartyPCR@html.com','Party Planning Company2'),(524564223,54532,'Saudi arabia','Jeddah','Alsfa','Street 56','PartyPCJ@html.com','Party Planning Company3'),(534564221,54595,'Saudi arabia','Makkah','Aljaumum','Alsfa Street','PartyPCM@html.com','Party Planning Company1'),(564564224,54512,'Saudi arabia','Taif','Alshafa','Street 25','PartyPCT@html.com','Party Planning Company4'),(574564225,54533,'Saudi arabia','Asir','Abha','The Art Street','PartyPCA@html.com','Party Planning Company5');
/*!40000 ALTER TABLE `mangment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mannger_information`
--

DROP TABLE IF EXISTS `mannger_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mannger_information` (
  `MNGR_ID` int NOT NULL,
  `MNGR_Name` varchar(30) DEFAULT NULL,
  `MNGR_Salary` int DEFAULT NULL,
  `MNGR_Gender` char(1) DEFAULT NULL,
  PRIMARY KEY (`MNGR_ID`),
  CONSTRAINT `Manneger Information_FK` FOREIGN KEY (`MNGR_ID`) REFERENCES `mangment` (`MNGR_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `mannger_information_chk_1` CHECK ((`MNGR_Gender` in (_utf8mb4'F',_utf8mb4'M')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mannger_information`
--

LOCK TABLES `mannger_information` WRITE;
/*!40000 ALTER TABLE `mannger_information` DISABLE KEYS */;
INSERT INTO `mannger_information` VALUES (54512,'Asma Waled',12000,'F'),(54532,'Hattan Salim',13400,'M'),(54533,'Manal Talal',15500,'F'),(54591,'Yousef Khalid',23000,'M'),(54595,'Sara Rakan',15000,'F');
/*!40000 ALTER TABLE `mannger_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mannger_phonenumber`
--

DROP TABLE IF EXISTS `mannger_phonenumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mannger_phonenumber` (
  `M_ContactNumber` int NOT NULL,
  `Mngr_PhoneNumber` int NOT NULL,
  PRIMARY KEY (`M_ContactNumber`,`Mngr_PhoneNumber`),
  UNIQUE KEY `Mngr_PhoneNumber` (`Mngr_PhoneNumber`),
  CONSTRAINT `Mannger PhoneNumber_FK` FOREIGN KEY (`M_ContactNumber`) REFERENCES `mangment` (`M_ContactNumber`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mannger_phonenumber`
--

LOCK TABLES `mannger_phonenumber` WRITE;
/*!40000 ALTER TABLE `mannger_phonenumber` DISABLE KEYS */;
INSERT INTO `mannger_phonenumber` VALUES (524564223,501232445),(534564221,501254276),(574564225,502312445),(504564222,502312665),(564564224,502332145);
/*!40000 ALTER TABLE `mannger_phonenumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `party`
--

DROP TABLE IF EXISTS `party`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `party` (
  `PartyNumber` int NOT NULL,
  `PartyType` char(20) NOT NULL,
  `M_ContactNumber` int NOT NULL,
  `P_Day` int DEFAULT NULL,
  `P_Month` int DEFAULT NULL,
  `P_Year` int DEFAULT NULL,
  PRIMARY KEY (`PartyNumber`,`PartyType`),
  KEY `Party_FK` (`M_ContactNumber`),
  KEY `Party_Type_Index` (`PartyType`),
  CONSTRAINT `Party_FK` FOREIGN KEY (`M_ContactNumber`) REFERENCES `mangment` (`M_ContactNumber`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `party`
--

LOCK TABLES `party` WRITE;
/*!40000 ALTER TABLE `party` DISABLE KEYS */;
INSERT INTO `party` VALUES (1007,'GenderRevell',524564223,12,3,2024),(1554,'Graduation',574564225,18,7,2023),(2134,'Graduation',564564224,25,10,2023),(2987,'Wedding',504564222,27,7,2023),(3005,'Birthday',534564221,16,5,2024);
/*!40000 ALTER TABLE `party` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `party_details`
--

DROP TABLE IF EXISTS `party_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `party_details` (
  `PartyNumber` int NOT NULL,
  `C_ID` int NOT NULL,
  `EventHall_Number` int NOT NULL,
  `Theme` varchar(40) DEFAULT NULL,
  `Flavor` varchar(30) DEFAULT NULL,
  `NoOfDrink` int DEFAULT NULL,
  `NoOfCandel` int DEFAULT NULL,
  `NoOfLevels` int DEFAULT NULL,
  `NoOfDishes` int DEFAULT NULL,
  `NoOfBalloon` int DEFAULT NULL,
  `WithHelium` char(3) DEFAULT NULL,
  PRIMARY KEY (`PartyNumber`,`C_ID`,`EventHall_Number`),
  KEY `PARTY_DETAILS_FK2` (`C_ID`),
  KEY `PARTY_DETAILS_FK3` (`EventHall_Number`),
  CONSTRAINT `PARTY_DETAILS_FK1` FOREIGN KEY (`PartyNumber`) REFERENCES `party` (`PartyNumber`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `PARTY_DETAILS_FK2` FOREIGN KEY (`C_ID`) REFERENCES `client` (`C_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `PARTY_DETAILS_FK3` FOREIGN KEY (`EventHall_Number`) REFERENCES `event_hall` (`EventHall_Number`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `party_details_chk_1` CHECK ((`WithHelium` in (_utf8mb4'Yes',_utf8mb4'No')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `party_details`
--

LOCK TABLES `party_details` WRITE;
/*!40000 ALTER TABLE `party_details` DISABLE KEYS */;
INSERT INTO `party_details` VALUES (1007,3,75432,'GenderRevell Theme','Red Velvet',85,0,4,85,40,'Yes'),(1554,5,42887,'Graduation Theme','Lemon with RaspBerry',87,6,5,87,45,'Yes'),(2134,4,88765,'Graduation Theme','Vanilla with Raspberry Filling',45,4,4,45,30,'Yes'),(2987,2,65431,'Wedding Theme','Chocolate with Vanilla Filling',90,0,6,90,20,'No'),(3005,1,35321,'Birthday Theme','Vanilla',59,4,4,59,45,'Yes');
/*!40000 ALTER TABLE `party_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `party_drink`
--

DROP TABLE IF EXISTS `party_drink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `party_drink` (
  `PartyNumber` int NOT NULL,
  `PartyType` char(20) NOT NULL,
  `TybeOfDrink` char(10) NOT NULL,
  PRIMARY KEY (`PartyNumber`,`PartyType`,`TybeOfDrink`),
  KEY `PARTY_TDrink_FK2` (`PartyType`),
  CONSTRAINT `PARTY_TDrink_FK` FOREIGN KEY (`PartyNumber`) REFERENCES `party` (`PartyNumber`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `PARTY_TDrink_FK2` FOREIGN KEY (`PartyType`) REFERENCES `party` (`PartyType`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `party_drink`
--

LOCK TABLES `party_drink` WRITE;
/*!40000 ALTER TABLE `party_drink` DISABLE KEYS */;
INSERT INTO `party_drink` VALUES (1007,'GenderRevell','Coffee'),(1007,'GenderRevell','Tea'),(1554,'Graduation','Coffee'),(1554,'Graduation','Water'),(2134,'Graduation','Mojito'),(2134,'Graduation','Soda'),(2134,'Graduation','Tea'),(2987,'Wedding','Coffee'),(2987,'Wedding','Mojito'),(2987,'Wedding','Soda'),(2987,'Wedding','Tea');
/*!40000 ALTER TABLE `party_drink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `party_tdish`
--

DROP TABLE IF EXISTS `party_tdish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `party_tdish` (
  `PartyNumber` int NOT NULL,
  `PartyType` char(20) NOT NULL,
  `TybeOfDish` char(10) NOT NULL,
  PRIMARY KEY (`PartyNumber`,`PartyType`,`TybeOfDish`),
  KEY `PARTY_TDISH_FK2` (`PartyType`),
  CONSTRAINT `PARTY_TDISH_FK` FOREIGN KEY (`PartyNumber`) REFERENCES `party` (`PartyNumber`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `PARTY_TDISH_FK2` FOREIGN KEY (`PartyType`) REFERENCES `party` (`PartyType`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `party_tdish`
--

LOCK TABLES `party_tdish` WRITE;
/*!40000 ALTER TABLE `party_tdish` DISABLE KEYS */;
INSERT INTO `party_tdish` VALUES (1007,'GenderRevell','Beaf'),(1007,'GenderRevell','Rice'),(1554,'Graduation','Rice'),(1554,'Graduation','Steak'),(2134,'Graduation','Appetaziar'),(2134,'Graduation','Burgar'),(2134,'Graduation','Pizza'),(2987,'Wedding','Pasta'),(2987,'Wedding','Pizza'),(2987,'Wedding','Salad'),(2987,'Wedding','Steak');
/*!40000 ALTER TABLE `party_tdish` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-08 18:09:38
