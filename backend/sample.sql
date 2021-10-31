-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: offer14m
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customerNumber` int NOT NULL AUTO_INCREMENT,
  `customerName` varchar(255) NOT NULL,
  `contactLastName` varchar(255) NOT NULL,
  `contactFirstName` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `addressLine1` varchar(255) NOT NULL,
  `addressLine2` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) DEFAULT NULL,
  `postalCode` varchar(255) DEFAULT NULL,
  `country` varchar(255) NOT NULL,
  `creditLimit` int NOT NULL,
  `salesRepEmployeeNumber` int DEFAULT NULL,
  PRIMARY KEY (`customerNumber`),
  UNIQUE KEY `phone` (`phone`),
  KEY `salesRepEmployeeNumber` (`salesRepEmployeeNumber`),
  CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`salesRepEmployeeNumber`) REFERENCES `employees` (`employeeNumber`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Neville','Long','Bottom','062326565','Co Nhue 1','Nam Tu Liem','Ha Noi','Nam Tu Liem','10000','Viet Nam',1000,1),(2,'Aloha','Kim','Bum','03265895','Co Nhue 1','Nam Tu Liem','Ha Noi','Nam Tu Liem','10000','Viet Nam',1000,2),(3,'Hoangud','Bung','Jan','02356895','Co Nhue 2','Nam Tu Liem','Ha Noi','Nam Tu Liem','10000','Viet Nam',1000,3),(4,'TungKinh','Bang','Bang','02326566','Co Nhue 2','Nam Tu Liem','Ha Noi','Nam Tu Liem','10000','Viet Nam',1000,1),(6,'KinhKong','Max','Xio','0232665656','Co Nhue 2','Nam Tu Liem','Ha Noi','Nam Tu Liem','10000','Viet Nam',1000,2),(7,'Longhack','Bug','Vio','6554654654','Co Nhue 2','Nam Tu Liem','Ha Noi','Nam Tu Liem','10000','Viet Nam',1000,4),(8,'TUngLang','Hai','Vio','02326548964','Co Nhue 2','Nam Tu Liem','Ha Noi','Nam Tu Liem','10000','Viet Nam',1000,5),(9,'Hanghang','Xung','Tan','0235625','Co Nhue 2','Nam Tu Liem','Ha Noi','Nam Tu Liem','10000','Viet Nam',1000,6),(10,'AnKing','Milone','Tung','02365985','Co Nhue 2','Nam Tu Liem','Ha Noi','Nam Tu Liem','10000','Viet Nam',1000,7),(11,'XungHang','Ping','Pong','0323164665','Co Nhue 2','Nam Tu Liem','Ha Noi','Nam Tu Liem','10000','Viet Nam',1000,8),(12,'KangChung','Hung','Pi','06235945','Co Nhue 2','Nam Tu Liem','Ha Noi','Nam Tu Liem','10000','Viet Nam',1000,9),(13,'Longha','Hu','Pi','01245875','Co Nhue 2','Nam Tu Liem','Ha Noi','Nam Tu Liem','10000','Viet Nam',1000,9),(14,'Pata','Pa','Ta','023154875','Co Nhue 2','Nam Tu Liem','Ha Noi','Nam Tu Liem','10000','Viet Nam',1000,10),(15,'Pingchung','Ku','Ta','32342352','Co Nhue 2','Nam Tu Liem','Ha Noi','Nam Tu Liem','10000','Viet Nam',1000,6),(16,'Aloank','Manta','Hu','02135689','Co Nhue 2','Nam Tu Liem','Ha Noi','Nam Tu Liem','10000','Viet Nam',1000,7),(17,'Pik','Hulex','Ma','56562666','Co Nhue 1',NULL,'Ha Noi','Nam Tu Liem','10000','Viet Nam',1000,4),(18,'Rolex','Orient','Ha','012458','Co Nhue 1',NULL,'Ha Noi','Nam Tu Liem','10000','Viet Nam',1000,5),(19,'Seiko','Chaien','Ha','032569','Co Nhue 1',NULL,'Ha Noi','Nam Tu Liem','10000','Viet Nam',1000,8),(20,'Xukaka','Xu','Ka','0526539','Co Nhue 1',NULL,'Ha Noi','Nam Tu Liem','10000','Viet Nam',1000,2);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `employeeNumber` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `extension` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `officeCode` int DEFAULT NULL,
  `jobTitle` varchar(255) NOT NULL,
  `reportsTo` int DEFAULT NULL,
  PRIMARY KEY (`employeeNumber`),
  UNIQUE KEY `email` (`email`),
  KEY `reportsTo` (`reportsTo`),
  KEY `officeCode` (`officeCode`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`reportsTo`) REFERENCES `employees` (`employeeNumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`officeCode`) REFERENCES `offices` (`officeCode`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Harry','Potter','x890','harry@gmail.com',1,'Sale',NULL),(2,'Hermione','Granger','x865','hermione@gmail.com',2,'Sale',1),(3,'Rubeus','Hagrid','x8625','rubeus@gmail.com',1,'Sale',2),(4,'Ron','Weasley','x8625','ron@gmail.com',1,'Assistant',2),(5,'Draco','Malfoy','x8625','draco@gmail.com',1,'Sale',4),(6,'Minerva','McGonagall','x8625','minerva@gmail.com',2,'Assistant',5),(7,'Cedric','Diggory','x8625','cedric@gmail.com',1,'Sale',6),(8,'Cho','Chang','x8625','cho@gmail.com',1,'Sale',4),(9,'Severus','Snape','x8625','severus@gmail.com',2,'Sale',5),(10,'Luna','Lovegood','x8625','luna@gmail.com',2,'Assistant',6);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offices`
--

DROP TABLE IF EXISTS `offices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offices` (
  `officeCode` int NOT NULL AUTO_INCREMENT,
  `city` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `addressLine2` varchar(255) DEFAULT NULL,
  `addressLine1` varchar(255) NOT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) NOT NULL,
  `postalCode` varchar(255) NOT NULL,
  `terriory` varchar(255) NOT NULL,
  PRIMARY KEY (`officeCode`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offices`
--

LOCK TABLES `offices` WRITE;
/*!40000 ALTER TABLE `offices` DISABLE KEYS */;
INSERT INTO `offices` VALUES (1,'San Francisco','0254254','Me tri','Number 60, alley 1','Nam Tu Liem','VietNam','10000','Economical'),(2,'Philadelphia','0254678',NULL,'Number 58, alley 6','Nam Tu Liem','Viet Nam','10000','Economical');
/*!40000 ALTER TABLE `offices` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-31 10:43:50
