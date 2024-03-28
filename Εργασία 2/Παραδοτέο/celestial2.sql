-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `black_holes`
--

DROP TABLE IF EXISTS `black_holes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `black_holes` (
  `name` varchar(25) NOT NULL,
  `mass` double DEFAULT NULL,
  `diameter` int DEFAULT NULL,
  `distance` double DEFAULT NULL,
  `galaxy_name` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `galaxy_name_idx` (`galaxy_name`),
  CONSTRAINT `black_holes_galaxy_name` FOREIGN KEY (`galaxy_name`) REFERENCES `galaxies` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `black_holes`
--

LOCK TABLES `black_holes` WRITE;
/*!40000 ALTER TABLE `black_holes` DISABLE KEYS */;
INSERT INTO `black_holes` VALUES ('AP Lib',123,12345,12534,'Andromeda'),('Arp 220',234,3244,7567,'Andromeda'),('Centaurus A',232,234,456,'Milky Way'),('Fornax A',534,2345,43567,'Andromeda'),('HE0450-2958',23,345636,5746,'Cygnus A'),('IC 1459',13,2344,324,'Milky Way'),('Messier 31',124,345,645,'Cygnus A'),('Messier 32',26,6346,345,'Milky Way'),('Messier 33',45,345345,7567,'Andromeda'),('Messier 35',235,634634,32456,'Andromeda'),('Mrk 501',645,346345,74564,'Ganis Major Dwarf'),('NGC 1023',213,345,3522,'Ganis Major Dwarf'),('PKS 0521-365',346,53345,62456,'Magellanic Clouds'),('RX J1131',63,4324,74567,'Magellanic Clouds'),('Sagittarius A',124,6456,345,'Milky Way');
/*!40000 ALTER TABLE `black_holes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chemical_elements`
--

DROP TABLE IF EXISTS `chemical_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chemical_elements` (
  `name` varchar(45) NOT NULL,
  `importance_for_like` enum('Very Low','Low','Medium','High','Very High') DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chemical_elements`
--

LOCK TABLES `chemical_elements` WRITE;
/*!40000 ALTER TABLE `chemical_elements` DISABLE KEYS */;
INSERT INTO `chemical_elements` VALUES ('Aluminum','Low'),('Arsenic','Very Low'),('Barium','Low'),('Boron','Low'),('Bromine','Medium'),('Calcium','High'),('Carbon','Very High'),('Chlorine','High'),('Chromium','Very Low'),('Cobalt','Very Low'),('Copper','Medium'),('Helium','Medium'),('Hydrogen','Very High'),('Iodine','Low'),('Iron','Medium'),('Lead','Low'),('Lithium','Very Low'),('Magnesium','High'),('Manganese','Low'),('Molybdenum','Low'),('Nickel','Very Low'),('Nitrogen','Very High'),('Oxygen','Very High'),('Phosphorus','High'),('Potassium','High'),('Rubidium','Medium'),('Selenium','Very Low'),('Silicon','Medium'),('Sodium','High'),('Strontium','Medium'),('Sulfur','Very High'),('Tin','Medium'),('Vanadium','Very Low'),('Zinc','Medium');
/*!40000 ALTER TABLE `chemical_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `constellations`
--

DROP TABLE IF EXISTS `constellations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `constellations` (
  `name` varchar(45) NOT NULL,
  `start_of_visible_date` date DEFAULT NULL,
  `end_of_visible_date` date DEFAULT NULL,
  `hemisphere` enum('North','South') DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `constellations`
--

LOCK TABLES `constellations` WRITE;
/*!40000 ALTER TABLE `constellations` DISABLE KEYS */;
INSERT INTO `constellations` VALUES ('Andromeda','0000-12-01','0000-01-03','North'),('Caelum','0000-06-23','0000-07-08','North'),('Corona','0000-08-09','0000-08-30','South'),('Dorado','0000-05-09','0000-05-20','North'),('Draco','0000-04-30','0000-05-08','South'),('Grus','0000-02-09','0000-02-27','North'),('Hercules','0000-03-04','0000-03-23','South'),('Lyra','0000-03-09','0000-04-30','South'),('Pavo','0000-10-06','0000-10-25','South'),('Pegasus','0000-11-09','0000-12-01','North'),('Phoenix','0000-04-08','0000-05-03','North'),('Sculptor','0000-07-09','0000-08-05','South'),('Scutum','0000-03-01','0000-03-30','North'),('Triangulum','0000-07-01','0000-08-04','South'),('Vela','0000-01-20','0000-02-15','South');
/*!40000 ALTER TABLE `constellations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galaxies`
--

DROP TABLE IF EXISTS `galaxies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galaxies` (
  `name` varchar(25) NOT NULL,
  `radial_size` double NOT NULL,
  `relative_speed` int DEFAULT NULL,
  `distance_from_milky_way` double DEFAULT NULL,
  `date_of_discovery` date DEFAULT NULL,
  `luminosity` float NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galaxies`
--

LOCK TABLES `galaxies` WRITE;
/*!40000 ALTER TABLE `galaxies` DISABLE KEYS */;
INSERT INTO `galaxies` VALUES ('Andromeda',150,301,2537000,'1612-01-01',3.4),('Centaurus',673,3455,123344442,'2008-11-11',6.43),('Cygnus A',1244,4566,10000000,'2001-12-12',1.2),('Ganis Major Dwarf',123,5777,5400000,'2000-04-06',2.4),('Maffei I',456,2345,32423555,'1995-11-15',5.1),('Magellanic Clouds',3244,7745,6234444,'1999-01-30',5.23),('Milky Way',233,3455,7855078,'2005-05-16',5.43),('Sculptor',2455,9787,134674566,'2004-12-22',2.34),('Triangulum',734,5344,9678834,'2009-06-30',2.34),('Virgo A',237,2345,23344234,'2021-04-23',1.11);
/*!40000 ALTER TABLE `galaxies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moons`
--

DROP TABLE IF EXISTS `moons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `moons` (
  `name` varchar(25) NOT NULL,
  `mass` decimal(15,15) DEFAULT NULL,
  `distance_from_planet` int DEFAULT NULL,
  `diameter` int DEFAULT NULL,
  `has_atmosphere` bit(1) DEFAULT NULL,
  `average_temperature` int DEFAULT NULL,
  `date of discovery` date DEFAULT NULL,
  `planet_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `planet_name_idx` (`planet_name`),
  CONSTRAINT `moons_planet_name` FOREIGN KEY (`planet_name`) REFERENCES `planets` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moons`
--

LOCK TABLES `moons` WRITE;
/*!40000 ALTER TABLE `moons` DISABLE KEYS */;
INSERT INTO `moons` VALUES ('AI Liger A',0.000000327000000,249853,32434,_binary '',-222,'1980-01-01','ML Pengu-2a'),('AI Liger B',0.000004232700000,5545853,68434,_binary '',122,'1989-01-01','ML Pengu-2a'),('AI Liger C',0.000023270000000,323853,8434,_binary '',-56,'1999-01-01','ML Pengu-2a'),('Amalthea',0.000000340000000,421860,1821,_binary '\0',-39,'1610-01-01','Jupiter'),('Ariel',0.000000056000000,235784,9834,_binary '',-3,'1615-01-01','Uranus'),('Callisto',0.000000400000000,1231860,7483,_binary '',-239,'1610-01-01','Jupiter'),('Deimos',0.000000001000000,23460,7,_binary '',39,'1877-01-01','Mars'),('Despina',0.000000352000000,576599,2354,_binary '',37,'1620-01-01','Neptune'),('Dione',0.000000003000000,377396,1123,_binary '',-79,'1655-03-25','Saturn'),('Elara',0.000000300000000,43360,364,_binary '\0',-139,'1610-01-01','Jupiter'),('Enceladus',0.000000013000000,237948,504,_binary '\0',-19,'1655-03-25','Saturn'),('Europa',0.000001400000000,92233,4586,_binary '',-94,'1610-01-01','Jupiter'),('Galatea',0.000000096000000,65868,536,_binary '\0',346,'1620-01-01','Neptune'),('Ganymede',0.000000904000000,120938,3466,_binary '',54,'1610-01-01','Jupiter'),('Himalia',0.000000870000000,12330,9685,_binary '',0,'1610-01-01','Jupiter'),('Iapetus',0.000000027000000,3560820,1470,_binary '',-372,'1655-03-25','Saturn'),('Io',0.000000940000000,49341,4563,_binary '',3,'1610-01-01','Jupiter'),('Mimas',0.000000032000000,185539,396,_binary '\0',-217,'1655-03-25','Saturn'),('Miranda',0.000000576000000,35623,345,_binary '\0',-9,'1615-01-01','Uranus'),('Moon',0.000000036000000,384400,3474,_binary '\0',-41,NULL,'Earth'),('Nereid',0.000000001000000,48564,194,_binary '\0',-63,'1620-01-01','Neptune'),('Oberon',0.000004350000000,9354,646,_binary '\0',124,'1615-01-01','Uranus'),('Pasiphae',0.000000530000000,923432,6758,_binary '',123,'1610-01-01','Jupiter'),('Phobos',0.000000903000000,9380,11267,_binary '',-239,'1877-01-01','Mars'),('Rhea',0.000000003000000,527108,1527,_binary '',12,'1655-03-25','Saturn'),('Sinope',0.000000090000000,92386,567,_binary '\0',-267,'1610-01-01','Jupiter'),('Tethys',0.000000087000000,294619,1062,_binary '\0',-17,'1655-03-25','Saturn'),('Thalassa',0.000000045000000,23444,1259,_binary '',-212,'1620-01-01','Neptune'),('Titan',0.000003003000000,1221870,5149,_binary '',-179,'1655-03-25','Saturn'),('Titania',0.000003500000000,39853,2365,_binary '',163,'1615-01-01','Uranus'),('TL SCP A',0.000000094000000,860,1821,_binary '\0',38,'1610-01-01','Galileo'),('TL SCP B',0.000000040000000,160,191,_binary '\0',212,'1610-01-01','Galileo'),('TL SCP C',0.000000087000000,243433,534,_binary '\0',-22,'1610-01-01','Galileo'),('Triton',0.000003456000000,873424,26734,_binary '',56,'1620-01-01','Neptune'),('Typhlo 2a',0.000002183700000,85253,987,_binary '\0',7,'2008-01-01','Poltergeist'),('Typhlo 2b',0.000065737000000,83453,387,_binary '',347,'2008-01-01','Poltergeist'),('Typhlo 2c',0.000054737000000,4553,77,_binary '',-47,'2008-01-01','Poltergeist'),('Typhlo 2d',0.000000097370000,434553,7227,_binary '',-147,'2008-01-01','Poltergeist'),('Typhlo 2e',0.000000043370000,3498553,91827,_binary '',-170,'2008-01-01','Poltergeist'),('Umbriel',0.000000716000000,238753,18934,_binary '',-26,'1615-01-01','Uranus');
/*!40000 ALTER TABLE `moons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moons_consist_of`
--

DROP TABLE IF EXISTS `moons_consist_of`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `moons_consist_of` (
  `percentage` float DEFAULT NULL,
  `moon_name` varchar(45) DEFAULT NULL,
  `chemical_element` varchar(45) DEFAULT NULL,
  KEY `moon_name_idx` (`moon_name`),
  KEY `chemical_element_idx` (`chemical_element`),
  CONSTRAINT `moons_consist_of_chemical_element` FOREIGN KEY (`chemical_element`) REFERENCES `chemical_elements` (`name`),
  CONSTRAINT `moons_consist_of_moon_name` FOREIGN KEY (`moon_name`) REFERENCES `moons` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moons_consist_of`
--

LOCK TABLES `moons_consist_of` WRITE;
/*!40000 ALTER TABLE `moons_consist_of` DISABLE KEYS */;
INSERT INTO `moons_consist_of` VALUES (40,'Amalthea','Hydrogen'),(40,'Amalthea','Carbon'),(20,'Amalthea','Iron'),(35,'Dione','Hydrogen'),(35,'Dione','Carbon'),(30,'Dione','Silicon'),(40,'Europa','Hydrogen'),(30,'Europa','Iron'),(30,'Europa','Silicon'),(50,'Miranda','Iron'),(25,'Miranda','Nitrogen'),(25,'Miranda','Oxygen'),(40,'Oberon','Carbon'),(31,'Oberon','Iron'),(9,'Oberon','Nitrogen'),(20,'Thalassa','Hydrogen'),(10,'Thalassa','Iodine'),(5,'Thalassa','Sodium'),(5,'Thalassa','Chlorine');
/*!40000 ALTER TABLE `moons_consist_of` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planetary_systems`
--

DROP TABLE IF EXISTS `planetary_systems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `planetary_systems` (
  `name` varchar(25) NOT NULL,
  `start_of_habitable_zone` int NOT NULL,
  `end_of_habitable_zone` int NOT NULL,
  `date_of_discovery` date DEFAULT NULL,
  `galaxy_name` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `planetary_systems_galaxy_name` (`galaxy_name`),
  CONSTRAINT `planetary_systems_galaxy_name` FOREIGN KEY (`galaxy_name`) REFERENCES `galaxies` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planetary_systems`
--

LOCK TABLES `planetary_systems` WRITE;
/*!40000 ALTER TABLE `planetary_systems` DISABLE KEYS */;
INSERT INTO `planetary_systems` VALUES ('55 Cancri',4230495,63498347,'1442-11-08','Andromeda'),('Eridani',5234234,6095656,'2021-11-23','Cygnus A'),('Gliese',2410123,2609435,'2009-08-11','Milky Way'),('HD 69830',2349042,34598455,'1534-06-30','Andromeda'),('L 98-59',893495,234235,'2004-02-23','Cygnus A'),('LHS 1140',4524302,60945094,'2013-10-10','Ganis Major Dwarf'),('Luyten\'s Star',2000000,3434443,'1645-06-04','Andromeda'),('Mu Arae',1231239,20039409,'2013-10-11','Andromeda'),('Solar',1000000,2000000,NULL,'Milky Way'),('TRAPPIST-1',5348955,64590455,'1800-12-03','Virgo A'),('Upsilon Andromadae',1020002,20090000,'1999-11-23','Andromeda'),('Virginis',643532,796045,'2005-01-30','Milky Way'),('Wolf',2134523,3093443,'2001-12-12','Virgo A');
/*!40000 ALTER TABLE `planetary_systems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planets`
--

DROP TABLE IF EXISTS `planets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `planets` (
  `name` varchar(25) NOT NULL,
  `mass` double NOT NULL,
  `distance_from_star` bigint NOT NULL,
  `duration_of_year` int NOT NULL,
  `duration_of_date` int NOT NULL,
  `has_atmosphere` bit(1) NOT NULL,
  `diameter` int NOT NULL,
  `average_temperature` int NOT NULL,
  `date_of_discovery` date DEFAULT NULL,
  `planetary_system_name` varchar(25) DEFAULT NULL,
  `planet_name` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `planetary_system_name_idx` (`planetary_system_name`),
  KEY `planet_name_idx` (`planet_name`),
  CONSTRAINT `planets_planet_name` FOREIGN KEY (`planet_name`) REFERENCES `planets` (`name`),
  CONSTRAINT `planets_planetary_system_name` FOREIGN KEY (`planetary_system_name`) REFERENCES `planetary_systems` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planets`
--

LOCK TABLES `planets` WRITE;
/*!40000 ALTER TABLE `planets` DISABLE KEYS */;
INSERT INTO `planets` VALUES ('COROT-3e',1.55,12375797,129,327,_binary '',5234460,20,'2016-02-03','Mu Arae',NULL),('COROT-6d',0.0000085,75797,9,7,_binary '\0',5460,290,'2021-07-03','Virginis',NULL),('COROT-7c',0.985,34527577,986,235,_binary '',96985460,2,'2014-07-07','55 Cancri',NULL),('DP Leonis A',0.00467,2846020,798,219,_binary '\0',923690,24,'1998-09-12','Mu Arae','DP Leonis B'),('DP Leonis B',0.000097,2236020,798,219,_binary '',23690,87,'1990-11-10','Mu Arae','DP Leonis A'),('Draugr',0.000673,24732200,164,18,_binary '',324690,10,'2003-01-04','Virginis',NULL),('Earth',0.000003,147840000,365,24,_binary '',12742,14,NULL,'Solar',NULL),('Galileo',2.36,88739897,289,47,_binary '',3128340,56,'1997-02-19','Virginis',NULL),('HW Virginis A',0.0038475,95387620,198,321,_binary '\0',132460,802,'1984-10-17','Mu Arae',NULL),('HW Virginis B',0.001327,8936020,98,21,_binary '',234690,43,'1988-10-17','Mu Arae',NULL),('HW Virginis C',0.043075,23387620,123,64,_binary '',132460,2,'2002-01-27','Virginis',NULL),('HW Virginis D',0.113,34520,1092,234,_binary '',9685460,26,'2009-05-27','Mu Arae',NULL),('Iota Draconis A',1.24,540897,347,12,_binary '',123340,523,'1995-08-14','55 Cancri',NULL),('Iota Draconis B',0.24,89897,398,56,_binary '\0',87340,423,'1992-09-14','TRAPPIST-1',NULL),('Jupiter',0.00095435435,778500000,4333,10,_binary '',140,-110,'1610-01-01','Solar',NULL),('Mars',0.00000051,227900000,687,25,_binary '',6779,-81,'1610-01-01','Solar',NULL),('Mercury',0.000000167,57320000,88,1408,_binary '\0',4880,167,'1610-01-01','Solar',NULL),('ML Pengu-2a',2.35,6475797,29,27,_binary '',657760,0,'2012-12-03','55 Cancri',NULL),('ML Pengu-2b',3.324,6857897,98,73,_binary '\0',6554534,-243,'2002-12-06','TRAPPIST-1',NULL),('ML Pengu-2c',1.324,687897,980,23,_binary '',684534,-23,'2012-05-06','55 Cancri',NULL),('ML Pengu-2d',0.64,95490897,198,2,_binary '',6123534,-123,'2012-05-01','TRAPPIST-1',NULL),('ML Pengu-2e',5.64,9870897,197,26,_binary '',615340,923,'2007-09-01','Wolf',NULL),('Neptune',0.000051051,4495000000,60200,16,_binary '',49244,-200,'1846-09-23','Solar',NULL),('Phobetor',0.0543,94322020,225,832,_binary '\0',533690,324,'1989-03-04','TRAPPIST-1',NULL),('Poltergeist',0.133,947322020,164,18,_binary '',3533690,34,'1994-03-04','Wolf',NULL),('Proxima Centauri A',0.000973,810720000,110,670,_binary '',827690,120,'2017-00-00','55 Cancri','Proxima Centauri B'),('Proxima Centauri B',0.0000037,107120000,11,67,_binary '\0',8290,1620,'2016-00-00','55 Cancri','Proxima Centauri A'),('Saturn',0.00028528528,1434000000,10756,11,_binary '',116460,-140,'1610-01-01','Solar',NULL),('Thestias',0.46,8879897,389,87,_binary '\0',8778340,356,'1994-09-19','TRAPPIST-1',NULL),('Uranus',0.000043663,2871000000,30687,17,_binary '',50724,-195,'1781-03-13','Solar',NULL),('Venus',0.00000244,108200000,225,5832,_binary '',12104,464,'1610-10-01','Solar',NULL);
/*!40000 ALTER TABLE `planets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planets_consist_of`
--

DROP TABLE IF EXISTS `planets_consist_of`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `planets_consist_of` (
  `percentage` float DEFAULT NULL,
  `planet_name` varchar(45) DEFAULT NULL,
  `chemical_element` varchar(45) DEFAULT NULL,
  KEY `planet_name_idx` (`planet_name`),
  KEY `chemical_element_idx` (`chemical_element`),
  CONSTRAINT `planet_consist_of_planet_name` FOREIGN KEY (`planet_name`) REFERENCES `planets` (`name`),
  CONSTRAINT `planets_consist_of_chemical_element` FOREIGN KEY (`chemical_element`) REFERENCES `chemical_elements` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planets_consist_of`
--

LOCK TABLES `planets_consist_of` WRITE;
/*!40000 ALTER TABLE `planets_consist_of` DISABLE KEYS */;
INSERT INTO `planets_consist_of` VALUES (40,'COROT-3e','Carbon'),(20,'COROT-3e','Hydrogen'),(20,'COROT-3e','Iron'),(35,'HW Virginis A','Iron'),(15,'HW Virginis A','Hydrogen'),(5,'HW Virginis A','Silicon'),(40,'Iota Draconis A','Silicon'),(30,'Iota Draconis A','Iron'),(10,'Iota Draconis A','Nitrogen'),(20,'Poltergeist','Nitrogen'),(15,'Poltergeist','Oxygen'),(5,'Poltergeist','Carbon'),(40,'Thestias','Oxygen'),(20,'Thestias','Iron'),(10,'Thestias','Nitrogen'),(20,'Galileo','Oxygen'),(10,'Galileo','Nitrogen'),(5,'Galileo','Sodium');
/*!40000 ALTER TABLE `planets_consist_of` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stars`
--

DROP TABLE IF EXISTS `stars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stars` (
  `name` varchar(45) NOT NULL,
  `mass` double DEFAULT NULL,
  `star_type` enum('Solar-Type','Hot Blue','Red Dwarf','Red Giant','White Dwarf','Neutron Star') DEFAULT NULL,
  `diameter` bigint DEFAULT NULL,
  `brightness` float DEFAULT NULL,
  `date_of_discovery` date DEFAULT NULL,
  `constelation_name` varchar(45) DEFAULT NULL,
  `planetary_system_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `constelation_name_idx` (`constelation_name`),
  KEY `planetary_system_name_idx` (`planetary_system_name`),
  CONSTRAINT `stars_constelation_name` FOREIGN KEY (`constelation_name`) REFERENCES `constellations` (`name`),
  CONSTRAINT `stars_planetary_system_name` FOREIGN KEY (`planetary_system_name`) REFERENCES `planetary_systems` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stars`
--

LOCK TABLES `stars` WRITE;
/*!40000 ALTER TABLE `stars` DISABLE KEYS */;
INSERT INTO `stars` VALUES ('Atlas',10.4,'Solar-Type',20000000,3.5,'1985-01-01',NULL,'Upsilon Andromadae'),('Bellatrix',165.5,'Solar-Type',100000000,6,'1999-01-01','Andromeda','TRAPPIST-1'),('Chaophraya',0.01,'Red Dwarf',15000,0.003,'2008-01-01',NULL,'Virginis'),('Dombay',100,'Solar-Type',10000000000,45,'2016-01-01',NULL,'Gliese'),('Felis',0.0001,'White Dwarf',3000,0.1,'2014-01-01','Triangulum','55 Cancri'),('Gloas',13.5,'Solar-Type',10000000,1.6,'2019-01-01','Caelum','LHS 1140'),('Irena',80,'Solar-Type',90000000,67,'2005-01-01',NULL,'Wolf'),('Kaveh',45,'Solar-Type',50000000,900,'1975-01-01','Grus','Mu Arae'),('Nashira',30,'Red Giant',35000000,300,'1992-01-01',NULL,'HD 69830'),('Piautos',5.5,'Solar-Type',4000000,4,'2016-01-01','Phoenix','TRAPPIST-1'),('Regulus',90,'Solar-Type',80000000,1000,'2020-01-01',NULL,'Gliese'),('Sceptrum',34,'Hot Blue',20000000,8.5,'2018-01-01',NULL,'Eridani'),('Vega',14,'Solar-Type',20000000,10,'2002-01-01',NULL,'Luyten\'s Star'),('Xihe',87.5,'Neutron Star',900000,2,'1999-01-01','Dorado','L 98-59'),('Zosma',0.05,'Red Dwarf',40000,0.0001,'2010-01-01',NULL,'HD 69830');
/*!40000 ALTER TABLE `stars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stars_consist_of`
--

DROP TABLE IF EXISTS `stars_consist_of`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stars_consist_of` (
  `percentage` float DEFAULT NULL,
  `star_name` varchar(45) DEFAULT NULL,
  `chemical_element` varchar(45) DEFAULT NULL,
  KEY `star_name_idx` (`star_name`),
  KEY `chemical_element_idx` (`chemical_element`),
  CONSTRAINT `stars_consist_of_chemical_element` FOREIGN KEY (`chemical_element`) REFERENCES `chemical_elements` (`name`),
  CONSTRAINT `stars_consist_of_star_name` FOREIGN KEY (`star_name`) REFERENCES `stars` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stars_consist_of`
--

LOCK TABLES `stars_consist_of` WRITE;
/*!40000 ALTER TABLE `stars_consist_of` DISABLE KEYS */;
INSERT INTO `stars_consist_of` VALUES (70,'Atlas','Hydrogen'),(50,'Bellatrix','Hydrogen'),(10,'Bellatrix','Carbon'),(70,'Chaophraya','Hydrogen'),(60,'Dombay','Hydrogen'),(80,'Felis','Hydrogen'),(63,'Gloas','Hydrogen'),(50,'Irena','Hydrogen'),(50,'Kaveh','Hydrogen'),(56,'Nashira','Hydrogen'),(50,'Piautos','Hydrogen'),(70,'Regulus','Hydrogen'),(75,'Sceptrum','Hydrogen'),(77,'Vega','Hydrogen'),(50,'Xihe','Hydrogen'),(6,'Xihe','Carbon'),(70,'Atlas','Hydrogen'),(20,'Atlas','Helium'),(50,'Bellatrix','Hydrogen'),(30,'Bellatrix','Helium'),(10,'Bellatrix','Carbon'),(70,'Chaophraya','Hydrogen'),(10,'Chaophraya','Helium'),(60,'Dombay','Hydrogen'),(17,'Dombay','Helium'),(80,'Felis','Hydrogen'),(10,'Felis','Helium'),(63,'Gloas','Hydrogen'),(23,'Gloas','Helium'),(50,'Irena','Hydrogen'),(30,'Irena','Helium'),(50,'Kaveh','Hydrogen'),(10,'Kaveh','Helium'),(56,'Nashira','Hydrogen'),(50,'Piautos','Hydrogen'),(20,'Piautos','Helium'),(70,'Regulus','Hydrogen'),(75,'Sceptrum','Hydrogen'),(10,'Sceptrum','Helium'),(77,'Vega','Hydrogen'),(7,'Vega','Helium'),(50,'Xihe','Hydrogen'),(30,'Xihe','Helium'),(6,'Xihe','Carbon');
/*!40000 ALTER TABLE `stars_consist_of` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-18 16:25:39
