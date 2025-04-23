-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: mini_project
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `class_fare`
--

DROP TABLE IF EXISTS `class_fare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_fare` (
  `fare_id` int NOT NULL AUTO_INCREMENT,
  `class_type` enum('Sleeper','AC 3-Tier','AC 2-Tier','First Class') DEFAULT NULL,
  `base_fare_per_km` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`fare_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_fare`
--

LOCK TABLES `class_fare` WRITE;
/*!40000 ALTER TABLE `class_fare` DISABLE KEYS */;
INSERT INTO `class_fare` VALUES (1,'Sleeper',1.40),(2,'AC 3-Tier',1.86),(3,'AC 2-Tier',1.19),(4,'First Class',2.26);
/*!40000 ALTER TABLE `class_fare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passenger`
--

DROP TABLE IF EXISTS `passenger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passenger` (
  `passenger_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL,
  `age` int DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `concession_type` enum('None','Senior Citizen','Student','Disabled') DEFAULT 'None',
  PRIMARY KEY (`passenger_id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passenger`
--

LOCK TABLES `passenger` WRITE;
/*!40000 ALTER TABLE `passenger` DISABLE KEYS */;
INSERT INTO `passenger` VALUES (1,'Tiya Soni','Female',74,'arhaanswaminathan@iyer-desai.com','9195376724','Senior Citizen'),(2,'Srinivas','Male',23,'ogolla@gmail.com','7101226916','None'),(3,'Kimaya Kaur','Other',64,'sanghasaira@gmail.com','8451462704','None'),(4,'Dishani Bera','Female',21,'indransgrover@gmail.com','8095701543','None'),(5,'Nakul Vyas','Male',74,'settyaradhya@sidhu.com','9178248963','Senior Citizen'),(6,'Yakshit Sampath','Other',35,'hyogi@yahoo.com','9133150983','Disabled'),(7,'Devansh Sathe','Male',67,'darshitzachariah@vasa.com','7473829973','Senior Citizen'),(8,'Zara Jani','Female',30,'bavanirvi@goel-kakar.biz','9106513338','Disabled'),(9,'Hiran Kakar','Male',45,'anahi31@swamy-venkataraman.net','8801326773','None'),(10,'Biju Butala','Male',53,'hayerprerak@yahoo.com','6872343098','None'),(11,'Siya Dugar','Female',58,'masteranvi@varkey.com','9219136193','None'),(12,'Miraya Baria','Female',19,'pranay35@gmail.com','6247510799','Student'),(13,'Devansh Luthra','Male',68,'hansh51@goyal.com','8498084124','Senior Citizen'),(14,'Emir Sharaf','Male',20,'raunak93@garg.com','7401640052','Student'),(15,'Ishaan Shanker','Other',56,'amand@gmail.com','8205982620','Disabled'),(16,'Tejas Yogi','Other',39,'lakshay31@sridhar-mammen.biz','6322602563','None'),(17,'Indranil Subramaniam','Other',18,'cviswanathan@choudhry-chaudhry.info','7330365414','Student'),(18,'Nayantara Kumar','Female',39,'aniruddh14@gmail.com','6019655698','None'),(19,'Veer Yogi','Male',45,'azad60@swaminathan.com','6159514846','Disabled'),(20,'Yuvaan Sarin','Other',56,'kartikkade@hotmail.com','8994680443','None'),(21,'Vedika Mann','Female',55,'ckant@hotmail.com','8721489513','None'),(22,'Mamooty Swaminathan','Other',44,'anaybajaj@khanna.com','6936763201','None'),(23,'Madhup Chakrabarti','Other',31,'mallicknishith@gmail.com','8788957986','None'),(24,'Indranil Sharaf','Male',69,'wdayal@gmail.com','7873471434','Senior Citizen'),(25,'Samar Warrior','Male',18,'indrajitdalia@saran-bose.com','6658760366','Student'),(26,'Tarini Mani','Female',39,'waggarwal@yahoo.com','6889373467','None'),(27,'Vidur Ganguly','Male',19,'anahitabhatt@hotmail.com','6990162725','Student'),(28,'Pranay Gupta','Male',20,'amanigade@yahoo.com','7641708053','Student'),(29,'Vanya Sachdev','Male',73,'dasguptakrish@rastogi.com','7193745299','Senior Citizen'),(30,'Vanya Tank','Other',68,'emir90@mani-sandhu.biz','8193149190','Senior Citizen'),(31,'Hazel Kala','Female',27,'kulkarnineelofar@yahoo.com','6716572628','None'),(32,'Mannat Swamy','Other',43,'ukamdar@hotmail.com','9314737996','Disabled'),(33,'Aniruddh Kota','Other',21,'aradhyacherian@yahoo.com','9494808313','Student'),(34,'Ayesha Mall','Female',27,'troy@kapur-sule.com','9363495788','Disabled'),(35,'Aarna Sharma','Female',16,'rati74@yahoo.com','9135182337','Student'),(36,'Samaira Raja','Female',30,'thamankartik@yahoo.com','7240824008','Disabled'),(37,'Rasha Bhatnagar','Other',18,'viswanathanabram@hotmail.com','7775204711','Disabled'),(38,'Ayesha Bansal','Female',69,'indrajittak@doshi.com','6999386774','Senior Citizen'),(39,'Ryan Mane','Other',11,'singhlakshay@cherian.com','9874564453','None'),(40,'Arhaan Ali','Other',19,'rati71@hotmail.com','9936183242','Student'),(41,'Biju Butala','Male',47,'advika17@hotmail.com','6488771906','Disabled'),(42,'Lavanya Dass','Female',68,'contractorpari@raj.com','6278742967','Senior Citizen'),(43,'Anaya Ghosh','Other',43,'samarth12@yahoo.com','7468071545','None'),(44,'Trisha Jaggi','Other',23,'djhaveri@lad.org','7034824771','Student'),(45,'Mohanlal Ramanathan','Other',74,'sahilmajumdar@majumdar.com','9712748467','Senior Citizen'),(46,'Nirvaan Kari','Male',57,'mchandran@shenoy.com','6584044997','None'),(47,'Alia Luthra','Other',10,'shamik88@yahoo.com','8339636057','Student'),(48,'Veer Saini','Male',12,'ibadami@rajagopal.com','8702621745','None'),(49,'Misha Saraf','Female',49,'varkeyshalv@hotmail.com','6578091343','None'),(50,'Adira Bawa','Female',40,'schacko@zacharia-atwal.com','8556238698','None'),(51,'Jayan Chahal','Male',72,'rrao@kothari.com','9747407482','Senior Citizen'),(52,'Shray Raj','Other',26,'qsant@yahoo.com','6713695943','None'),(53,'Akarsh Thakkar','Other',70,'aayush90@hotmail.com','7439533942','Senior Citizen'),(54,'Mishti Roy','Female',64,'vedika70@gopal.com','6232858845','None'),(55,'Onkar Tella','Other',35,'siya51@yahoo.com','9368516048','None'),(56,'Amani Gour','Female',57,'otata@yahoo.com','9137098593','Disabled'),(57,'Nehmat Jayaraman','Other',67,'azadbahl@koshy-bhardwaj.com','9826758926','Senior Citizen'),(58,'Ayesha Randhawa','Male',38,'arhaan53@yahoo.com','9515850643','None'),(59,'Amani Bath','Female',12,'bakshivedika@dara-bhatnagar.org','9839335290','None'),(60,'Hunar Bhattacharyya','Other',38,'faiyazsahota@gmail.com','9053952402','None'),(61,'Eshan Bhandari','Male',17,'xkapur@kunda-rajagopalan.com','8390847007','Student'),(62,'Aaryahi Sankar','Female',14,'csawhney@yogi.com','6124998569','Student'),(63,'Aman Krishnan','Male',75,'sundaramrati@gmail.com','8367365766','Senior Citizen'),(64,'Saksham Kala','Male',72,'umang27@gmail.com','9111615098','Senior Citizen'),(65,'Oorja Bhat','Other',26,'nitya60@yahoo.com','6519832731','Disabled'),(66,'Ivana Gour','Female',70,'kaira36@sinha.org','8094024455','Senior Citizen'),(67,'Jivin Virk','Male',22,'jbanerjee@ravel.net','9166752549','None'),(68,'Baiju Brahmbhatt','Other',18,'sandaldhanush@kant-sahota.biz','9764381561','Student'),(69,'Parinaaz Sane','Female',62,'azad36@hotmail.com','9343244510','Disabled'),(70,'Siya Kale','Other',16,'vaibhavlata@contractor.com','9160715969','None');
/*!40000 ALTER TABLE `passenger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `ticket_id` int DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `payment_mode` enum('Online','Counter','UPI','Card','Cash') DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `refund_status` enum('Yes','No') DEFAULT 'No',
  `refund_amount` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`payment_id`),
  KEY `ticket_id` (`ticket_id`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `ticket` (`ticket_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,1,652.91,'Counter','2025-04-02','Yes',62.46),(2,2,559.79,'UPI','2025-03-30','Yes',64.47),(3,3,309.89,'Card','2025-04-12','Yes',96.03),(4,4,1167.20,'Cash','2025-03-16','Yes',552.85),(5,5,1370.08,'Counter','2025-03-30','Yes',35.85),(6,6,877.35,'Cash','2025-03-17','Yes',640.77),(7,7,273.44,'UPI','2025-03-30','No',0.00),(8,8,535.59,'Card','2025-03-18','Yes',35.10),(9,9,206.67,'Card','2025-04-10','No',0.00),(10,10,992.10,'Counter','2025-04-01','Yes',574.75),(11,11,712.35,'Cash','2025-03-27','No',0.00),(12,12,451.98,'Card','2025-03-26','No',0.00),(13,13,1036.83,'UPI','2025-04-12','Yes',97.91),(14,14,1435.70,'Cash','2025-03-21','Yes',785.70),(15,15,658.83,'Card','2025-03-30','Yes',315.04),(16,16,470.04,'Online','2025-03-17','No',0.00),(17,17,1208.16,'UPI','2025-04-11','No',0.00),(18,18,1131.46,'Cash','2025-03-20','Yes',714.56),(19,19,304.11,'UPI','2025-03-30','No',0.00),(20,20,1242.64,'Counter','2025-03-29','No',0.00),(21,21,1473.53,'Card','2025-04-02','No',0.00),(22,22,1239.87,'Card','2025-03-20','Yes',87.61),(23,23,524.95,'Counter','2025-04-11','Yes',32.56),(24,24,555.52,'Card','2025-03-18','Yes',179.15),(25,25,469.57,'Counter','2025-03-29','No',0.00),(26,26,612.62,'Online','2025-04-10','No',0.00),(27,27,497.04,'UPI','2025-04-01','No',0.00),(28,28,1347.49,'Card','2025-03-29','No',0.00),(29,29,587.87,'Counter','2025-03-20','No',0.00),(30,30,1075.05,'UPI','2025-04-08','No',0.00),(31,31,1225.58,'Card','2025-03-18','No',0.00),(32,32,714.24,'Counter','2025-04-03','Yes',710.79),(33,33,563.27,'Online','2025-04-07','No',0.00),(34,34,1032.07,'UPI','2025-03-31','No',0.00),(35,35,951.62,'Card','2025-03-14','No',0.00),(36,36,1071.88,'Online','2025-03-31','Yes',383.30),(37,37,968.50,'Card','2025-03-28','No',0.00),(38,38,1002.47,'Online','2025-03-22','No',0.00),(39,39,1046.23,'Cash','2025-03-24','Yes',430.93),(40,40,1434.85,'Cash','2025-03-30','Yes',213.44),(41,41,168.02,'Online','2025-04-06','No',0.00),(42,42,1194.35,'Card','2025-03-23','Yes',443.86),(43,43,955.03,'UPI','2025-03-24','Yes',651.73),(44,44,732.64,'Online','2025-03-20','No',0.00),(45,45,850.65,'UPI','2025-03-21','Yes',344.61),(46,46,1445.52,'Counter','2025-03-17','Yes',47.20),(47,47,834.49,'Cash','2025-03-28','No',0.00),(48,48,481.25,'Card','2025-03-18','Yes',132.66),(49,49,1494.98,'Card','2025-04-07','Yes',434.08),(50,50,289.24,'Card','2025-04-09','Yes',248.14),(51,51,1360.18,'Online','2025-04-08','Yes',610.98),(52,52,1041.62,'Online','2025-03-15','No',0.00),(53,53,1350.04,'Counter','2025-03-30','No',0.00),(54,54,1215.30,'Online','2025-03-20','Yes',623.20),(55,55,1213.05,'Card','2025-04-11','Yes',294.81),(56,56,618.04,'Card','2025-04-01','Yes',357.97),(57,57,964.49,'UPI','2025-03-21','Yes',92.29),(58,58,1499.44,'Card','2025-03-21','No',0.00),(59,59,1181.45,'Cash','2025-03-22','No',0.00),(60,60,292.95,'Online','2025-03-22','Yes',99.70);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `route`
--

DROP TABLE IF EXISTS `route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `route` (
  `route_id` int NOT NULL AUTO_INCREMENT,
  `train_id` int DEFAULT NULL,
  `station_id` int DEFAULT NULL,
  `stop_number` int DEFAULT NULL,
  `arrival_time` time DEFAULT NULL,
  `departure_time` time DEFAULT NULL,
  `distance_from_source` int DEFAULT NULL,
  PRIMARY KEY (`route_id`),
  KEY `train_id` (`train_id`),
  KEY `station_id` (`station_id`),
  CONSTRAINT `route_ibfk_1` FOREIGN KEY (`train_id`) REFERENCES `train` (`train_id`),
  CONSTRAINT `route_ibfk_2` FOREIGN KEY (`station_id`) REFERENCES `station` (`station_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route`
--

LOCK TABLES `route` WRITE;
/*!40000 ALTER TABLE `route` DISABLE KEYS */;
INSERT INTO `route` VALUES (1,1,1,1,'23:38:44','16:36:52',0),(2,1,7,2,'19:22:44','20:09:07',50),(3,1,12,3,'22:32:57','15:35:40',100),(4,1,6,4,'03:10:57','09:25:09',150),(5,1,2,5,'03:46:06','22:20:45',200),(6,1,4,6,'23:16:49','14:04:54',250),(7,2,4,1,'18:29:26','08:24:42',0),(8,2,15,2,'21:32:20','11:31:21',50),(9,2,9,3,'12:43:26','05:49:16',100),(10,2,8,4,'15:55:48','19:10:12',150),(11,2,3,5,'11:24:24','05:37:07',200),(12,2,7,6,'03:50:00','18:49:03',250),(13,3,3,1,'20:01:41','21:59:01',0),(14,3,5,2,'01:54:35','15:33:45',50),(15,3,8,3,'04:52:55','11:10:22',100),(16,3,4,4,'01:54:45','23:04:14',150),(17,3,2,5,'10:04:22','03:08:30',200),(18,3,13,6,'21:13:39','03:32:24',250),(19,4,13,1,'06:06:23','22:15:15',0),(20,4,14,2,'12:03:50','06:10:30',50),(21,4,9,3,'18:27:56','15:08:52',100),(22,4,2,4,'02:32:07','13:43:46',150),(23,4,1,5,'20:25:04','11:51:30',200),(24,4,15,6,'05:17:25','21:22:49',250);
/*!40000 ALTER TABLE `route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule` (
  `schedule_id` int NOT NULL AUTO_INCREMENT,
  `train_id` int DEFAULT NULL,
  `travel_date` date DEFAULT NULL,
  PRIMARY KEY (`schedule_id`),
  KEY `train_id` (`train_id`),
  CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`train_id`) REFERENCES `train` (`train_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES (1,1,'2025-04-26'),(2,1,'2025-04-23'),(3,2,'2025-04-22'),(4,2,'2025-04-21'),(5,4,'2025-04-17'),(6,3,'2025-04-22'),(7,4,'2025-05-07'),(8,2,'2025-05-06'),(9,4,'2025-05-11'),(10,1,'2025-05-12');
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seat`
--

DROP TABLE IF EXISTS `seat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seat` (
  `seat_id` int NOT NULL AUTO_INCREMENT,
  `schedule_id` int DEFAULT NULL,
  `coach_number` varchar(10) DEFAULT NULL,
  `seat_number` varchar(10) DEFAULT NULL,
  `class_type` enum('Sleeper','AC 3-Tier','AC 2-Tier','First Class') DEFAULT NULL,
  `booking_status` enum('Available','Booked','RAC','Waitlisted') DEFAULT 'Available',
  PRIMARY KEY (`seat_id`),
  KEY `schedule_id` (`schedule_id`),
  CONSTRAINT `seat_ibfk_1` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`schedule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat`
--

LOCK TABLES `seat` WRITE;
/*!40000 ALTER TABLE `seat` DISABLE KEYS */;
INSERT INTO `seat` VALUES (1,1,'C1','13','Sleeper','Waitlisted'),(2,1,'C2','30','First Class','RAC'),(3,1,'C2','23','First Class','Booked'),(4,1,'C1','10','AC 3-Tier','Available'),(5,1,'C3','24','Sleeper','RAC'),(6,1,'C1','2','First Class','Booked'),(7,1,'C1','17','Sleeper','Booked'),(8,1,'C1','20','Sleeper','Booked'),(9,1,'C2','4','AC 3-Tier','Available'),(10,1,'C3','3','First Class','RAC'),(11,1,'C2','7','AC 2-Tier','Booked'),(12,1,'C2','13','AC 3-Tier','RAC'),(13,1,'C2','11','Sleeper','Available'),(14,1,'C2','20','Sleeper','Available'),(15,1,'C3','7','AC 2-Tier','Booked'),(16,1,'C2','29','Sleeper','Booked'),(17,1,'C2','10','AC 3-Tier','Waitlisted'),(18,1,'C3','23','AC 2-Tier','Available'),(19,1,'C3','27','AC 2-Tier','Available'),(20,1,'C1','9','Sleeper','Available'),(21,1,'C3','18','AC 3-Tier','RAC'),(22,1,'C2','20','AC 3-Tier','RAC'),(23,1,'C1','22','AC 2-Tier','Waitlisted'),(24,1,'C2','29','Sleeper','Available'),(25,1,'C3','14','AC 2-Tier','Available'),(26,1,'C1','11','AC 3-Tier','RAC'),(27,1,'C1','24','First Class','Waitlisted'),(28,1,'C3','1','Sleeper','Available'),(29,1,'C3','29','AC 3-Tier','Available'),(30,1,'C2','19','AC 3-Tier','Waitlisted'),(31,2,'C1','2','AC 2-Tier','RAC'),(32,2,'C1','29','AC 2-Tier','Booked'),(33,2,'C3','8','Sleeper','RAC'),(34,2,'C3','29','First Class','Booked'),(35,2,'C1','28','AC 3-Tier','Booked'),(36,2,'C2','1','AC 3-Tier','RAC'),(37,2,'C2','26','AC 3-Tier','RAC'),(38,2,'C1','26','Sleeper','Waitlisted'),(39,2,'C1','28','First Class','Booked'),(40,2,'C1','27','First Class','RAC'),(41,2,'C2','27','AC 3-Tier','Booked'),(42,2,'C1','22','AC 3-Tier','Waitlisted'),(43,2,'C2','9','Sleeper','RAC'),(44,2,'C2','21','First Class','RAC'),(45,2,'C1','4','AC 2-Tier','Booked'),(46,2,'C3','9','Sleeper','Available'),(47,2,'C3','14','AC 2-Tier','RAC'),(48,2,'C2','20','Sleeper','Waitlisted'),(49,2,'C3','7','AC 2-Tier','Available'),(50,2,'C3','14','Sleeper','Booked'),(51,2,'C2','14','Sleeper','RAC'),(52,2,'C3','11','Sleeper','RAC'),(53,2,'C3','10','First Class','RAC'),(54,2,'C2','23','AC 2-Tier','Booked'),(55,2,'C1','14','First Class','Booked'),(56,2,'C3','19','AC 2-Tier','Waitlisted'),(57,2,'C3','27','Sleeper','RAC'),(58,2,'C2','7','First Class','RAC'),(59,2,'C2','15','First Class','Booked'),(60,2,'C3','16','AC 3-Tier','Available'),(61,3,'C2','17','AC 2-Tier','Available'),(62,3,'C1','22','AC 2-Tier','Booked'),(63,3,'C1','5','Sleeper','Available'),(64,3,'C1','16','Sleeper','Waitlisted'),(65,3,'C2','29','AC 3-Tier','Waitlisted'),(66,3,'C2','13','AC 3-Tier','Booked'),(67,3,'C3','23','Sleeper','Available'),(68,3,'C2','8','AC 3-Tier','Waitlisted'),(69,3,'C1','18','AC 3-Tier','Available'),(70,3,'C2','5','First Class','RAC'),(71,3,'C2','20','First Class','Waitlisted'),(72,3,'C1','24','First Class','Waitlisted'),(73,3,'C2','25','AC 3-Tier','RAC'),(74,3,'C3','16','AC 3-Tier','RAC'),(75,3,'C2','3','AC 2-Tier','Booked'),(76,3,'C2','11','AC 2-Tier','Available'),(77,3,'C1','5','AC 3-Tier','Waitlisted'),(78,3,'C3','5','AC 3-Tier','Available'),(79,3,'C2','14','AC 2-Tier','Waitlisted'),(80,3,'C2','2','AC 3-Tier','Waitlisted'),(81,3,'C2','29','Sleeper','Waitlisted'),(82,3,'C2','1','AC 2-Tier','RAC'),(83,3,'C2','28','First Class','Booked'),(84,3,'C2','8','AC 2-Tier','Waitlisted'),(85,3,'C2','1','First Class','RAC'),(86,3,'C3','22','First Class','Booked'),(87,3,'C2','30','AC 3-Tier','Available'),(88,3,'C2','19','Sleeper','Available'),(89,3,'C3','14','AC 3-Tier','Waitlisted'),(90,3,'C1','2','AC 2-Tier','Waitlisted'),(91,4,'C2','7','First Class','RAC'),(92,4,'C2','25','First Class','RAC'),(93,4,'C2','9','Sleeper','Waitlisted'),(94,4,'C1','24','Sleeper','RAC'),(95,4,'C1','21','Sleeper','Available'),(96,4,'C1','8','AC 3-Tier','Available'),(97,4,'C3','5','AC 3-Tier','Booked'),(98,4,'C2','22','Sleeper','Booked'),(99,4,'C2','23','AC 2-Tier','RAC'),(100,4,'C1','20','Sleeper','Booked'),(101,4,'C2','4','Sleeper','RAC'),(102,4,'C3','22','First Class','Waitlisted'),(103,4,'C3','7','Sleeper','Booked'),(104,4,'C1','23','AC 2-Tier','Available'),(105,4,'C3','26','Sleeper','RAC'),(106,4,'C3','14','AC 2-Tier','Available'),(107,4,'C3','21','AC 2-Tier','Available'),(108,4,'C2','27','First Class','Available'),(109,4,'C2','12','First Class','Booked'),(110,4,'C2','6','AC 2-Tier','Waitlisted'),(111,4,'C2','14','AC 2-Tier','RAC'),(112,4,'C1','27','Sleeper','RAC'),(113,4,'C2','8','First Class','Waitlisted'),(114,4,'C2','1','First Class','RAC'),(115,4,'C1','16','AC 3-Tier','RAC'),(116,4,'C2','11','AC 2-Tier','RAC'),(117,4,'C3','1','AC 3-Tier','Available'),(118,4,'C1','24','First Class','Waitlisted'),(119,4,'C3','25','AC 3-Tier','Waitlisted'),(120,4,'C3','23','First Class','Waitlisted'),(121,5,'C1','3','AC 2-Tier','Booked'),(122,5,'C2','23','AC 3-Tier','RAC'),(123,5,'C3','19','AC 2-Tier','Waitlisted'),(124,5,'C3','17','AC 2-Tier','Waitlisted'),(125,5,'C3','18','AC 2-Tier','RAC'),(126,5,'C3','15','AC 2-Tier','RAC'),(127,5,'C2','8','Sleeper','Booked'),(128,5,'C2','4','AC 3-Tier','Booked'),(129,5,'C1','24','First Class','RAC'),(130,5,'C3','19','AC 2-Tier','Available'),(131,5,'C1','10','AC 3-Tier','RAC'),(132,5,'C1','10','Sleeper','Booked'),(133,5,'C2','2','Sleeper','RAC'),(134,5,'C3','5','First Class','Available'),(135,5,'C1','19','AC 2-Tier','Waitlisted'),(136,5,'C2','15','AC 2-Tier','Booked'),(137,5,'C1','9','First Class','Available'),(138,5,'C1','13','First Class','Available'),(139,5,'C3','21','Sleeper','Booked'),(140,5,'C1','26','AC 2-Tier','Available'),(141,5,'C1','4','First Class','Booked'),(142,5,'C3','13','First Class','Waitlisted'),(143,5,'C2','28','First Class','RAC'),(144,5,'C3','20','Sleeper','Available'),(145,5,'C1','21','AC 3-Tier','RAC'),(146,5,'C3','3','AC 3-Tier','Booked'),(147,5,'C1','18','Sleeper','Booked'),(148,5,'C1','14','First Class','Waitlisted'),(149,5,'C2','2','AC 3-Tier','RAC'),(150,5,'C3','10','First Class','Available'),(151,6,'C3','8','AC 2-Tier','Booked'),(152,6,'C2','4','AC 3-Tier','Booked'),(153,6,'C2','27','AC 3-Tier','Available'),(154,6,'C1','6','AC 2-Tier','RAC'),(155,6,'C2','4','First Class','RAC'),(156,6,'C3','13','AC 2-Tier','Waitlisted'),(157,6,'C2','3','Sleeper','Waitlisted'),(158,6,'C3','11','AC 2-Tier','Available'),(159,6,'C1','8','Sleeper','RAC'),(160,6,'C3','2','AC 3-Tier','Waitlisted'),(161,6,'C3','21','First Class','RAC'),(162,6,'C1','19','First Class','Waitlisted'),(163,6,'C1','16','AC 2-Tier','Waitlisted'),(164,6,'C2','11','Sleeper','Booked'),(165,6,'C2','14','First Class','RAC'),(166,6,'C3','13','Sleeper','Waitlisted'),(167,6,'C1','11','AC 2-Tier','RAC'),(168,6,'C1','25','First Class','Available'),(169,6,'C3','28','First Class','Waitlisted'),(170,6,'C1','7','AC 2-Tier','Waitlisted'),(171,6,'C3','15','Sleeper','Booked'),(172,6,'C2','18','AC 3-Tier','RAC'),(173,6,'C2','29','First Class','Available'),(174,6,'C1','21','AC 3-Tier','Booked'),(175,6,'C2','18','Sleeper','Waitlisted'),(176,6,'C1','8','Sleeper','Waitlisted'),(177,6,'C1','21','AC 3-Tier','Waitlisted'),(178,6,'C3','10','AC 2-Tier','Waitlisted'),(179,6,'C2','16','AC 3-Tier','Waitlisted'),(180,6,'C3','5','First Class','Booked'),(181,7,'C3','17','AC 3-Tier','Available'),(182,7,'C2','25','First Class','RAC'),(183,7,'C3','9','Sleeper','RAC'),(184,7,'C3','10','First Class','Booked'),(185,7,'C2','18','First Class','RAC'),(186,7,'C2','18','First Class','Waitlisted'),(187,7,'C2','28','AC 3-Tier','Booked'),(188,7,'C3','13','AC 3-Tier','Waitlisted'),(189,7,'C1','11','First Class','Waitlisted'),(190,7,'C2','22','AC 3-Tier','Waitlisted'),(191,7,'C1','5','AC 2-Tier','Available'),(192,7,'C2','4','First Class','Available'),(193,7,'C3','5','First Class','Available'),(194,7,'C1','16','AC 2-Tier','RAC'),(195,7,'C3','23','First Class','Available'),(196,7,'C2','28','First Class','RAC'),(197,7,'C3','23','First Class','Available'),(198,7,'C3','3','AC 3-Tier','RAC'),(199,7,'C1','24','Sleeper','Waitlisted'),(200,7,'C1','25','Sleeper','Waitlisted'),(201,7,'C1','23','AC 2-Tier','Available'),(202,7,'C1','11','Sleeper','RAC'),(203,7,'C2','12','First Class','Booked'),(204,7,'C1','17','First Class','Booked'),(205,7,'C1','6','Sleeper','Waitlisted'),(206,7,'C3','22','AC 3-Tier','Waitlisted'),(207,7,'C3','5','AC 3-Tier','Waitlisted'),(208,7,'C3','9','First Class','RAC'),(209,7,'C3','1','First Class','RAC'),(210,7,'C3','18','AC 3-Tier','Available'),(211,8,'C2','12','AC 2-Tier','Waitlisted'),(212,8,'C3','9','First Class','RAC'),(213,8,'C1','13','First Class','Available'),(214,8,'C1','13','AC 2-Tier','RAC'),(215,8,'C3','10','Sleeper','Waitlisted'),(216,8,'C2','1','Sleeper','Waitlisted'),(217,8,'C2','25','AC 3-Tier','RAC'),(218,8,'C1','21','AC 3-Tier','RAC'),(219,8,'C3','25','AC 3-Tier','Available'),(220,8,'C3','21','Sleeper','RAC'),(221,8,'C2','2','AC 2-Tier','Booked'),(222,8,'C1','30','AC 2-Tier','RAC'),(223,8,'C3','14','AC 3-Tier','Booked'),(224,8,'C1','26','AC 2-Tier','RAC'),(225,8,'C1','9','First Class','RAC'),(226,8,'C3','28','AC 2-Tier','Available'),(227,8,'C2','3','AC 3-Tier','Booked'),(228,8,'C3','24','First Class','RAC'),(229,8,'C1','26','First Class','Available'),(230,8,'C2','18','Sleeper','Waitlisted'),(231,8,'C2','22','AC 2-Tier','Waitlisted'),(232,8,'C3','12','Sleeper','Booked'),(233,8,'C2','1','AC 2-Tier','Booked'),(234,8,'C3','3','First Class','RAC'),(235,8,'C3','14','Sleeper','Booked'),(236,8,'C1','2','AC 2-Tier','Waitlisted'),(237,8,'C1','4','AC 3-Tier','Booked'),(238,8,'C2','15','AC 2-Tier','Waitlisted'),(239,8,'C3','24','AC 3-Tier','Waitlisted'),(240,8,'C3','4','First Class','Waitlisted'),(241,9,'C2','2','AC 2-Tier','Booked'),(242,9,'C2','15','AC 3-Tier','RAC'),(243,9,'C1','22','AC 2-Tier','RAC'),(244,9,'C1','13','AC 2-Tier','Booked'),(245,9,'C1','28','First Class','Available'),(246,9,'C3','7','Sleeper','Available'),(247,9,'C2','8','AC 3-Tier','Booked'),(248,9,'C1','27','AC 3-Tier','Booked'),(249,9,'C1','11','AC 3-Tier','Available'),(250,9,'C2','28','AC 3-Tier','Booked'),(251,9,'C3','9','AC 3-Tier','Available'),(252,9,'C3','28','Sleeper','Booked'),(253,9,'C1','12','AC 3-Tier','RAC'),(254,9,'C1','6','AC 2-Tier','Available'),(255,9,'C1','24','First Class','Available'),(256,9,'C3','3','First Class','Waitlisted'),(257,9,'C2','17','Sleeper','Waitlisted'),(258,9,'C3','8','Sleeper','RAC'),(259,9,'C2','21','Sleeper','Available'),(260,9,'C2','28','First Class','Waitlisted'),(261,9,'C3','4','First Class','Waitlisted'),(262,9,'C1','29','Sleeper','RAC'),(263,9,'C3','5','Sleeper','Booked'),(264,9,'C2','20','AC 2-Tier','Waitlisted'),(265,9,'C3','17','AC 2-Tier','Waitlisted'),(266,9,'C3','20','First Class','Available'),(267,9,'C3','4','AC 3-Tier','Waitlisted'),(268,9,'C2','29','AC 3-Tier','Waitlisted'),(269,9,'C2','27','First Class','Waitlisted'),(270,9,'C2','24','Sleeper','RAC'),(271,10,'C2','11','AC 2-Tier','RAC'),(272,10,'C1','22','First Class','Available'),(273,10,'C1','27','Sleeper','Available'),(274,10,'C2','4','AC 2-Tier','Booked'),(275,10,'C3','2','AC 2-Tier','Available'),(276,10,'C2','12','First Class','Available'),(277,10,'C2','20','AC 2-Tier','RAC'),(278,10,'C1','19','AC 3-Tier','Booked'),(279,10,'C3','16','AC 3-Tier','Available'),(280,10,'C2','28','AC 2-Tier','Available'),(281,10,'C2','19','AC 3-Tier','Waitlisted'),(282,10,'C3','25','Sleeper','RAC'),(283,10,'C1','6','AC 2-Tier','RAC'),(284,10,'C2','12','Sleeper','Booked'),(285,10,'C1','19','First Class','Available'),(286,10,'C1','24','Sleeper','Available'),(287,10,'C3','17','AC 3-Tier','Waitlisted'),(288,10,'C2','15','AC 2-Tier','Booked'),(289,10,'C2','10','AC 2-Tier','Available'),(290,10,'C1','5','AC 3-Tier','Available'),(291,10,'C3','3','AC 2-Tier','Waitlisted'),(292,10,'C3','14','First Class','Waitlisted'),(293,10,'C2','9','AC 3-Tier','Available'),(294,10,'C2','14','Sleeper','RAC'),(295,10,'C3','22','First Class','RAC'),(296,10,'C1','8','First Class','Available'),(297,10,'C1','7','AC 2-Tier','Booked'),(298,10,'C1','25','AC 2-Tier','RAC'),(299,10,'C2','4','Sleeper','Waitlisted'),(300,10,'C3','14','AC 3-Tier','Booked');
/*!40000 ALTER TABLE `seat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `station`
--

DROP TABLE IF EXISTS `station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `station` (
  `station_id` int NOT NULL AUTO_INCREMENT,
  `station_name` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`station_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station`
--

LOCK TABLES `station` WRITE;
/*!40000 ALTER TABLE `station` DISABLE KEYS */;
INSERT INTO `station` VALUES (1,'Nagpur Junction','Nagpur','Maharashtra'),(2,'Kota Junction','Kota','Rajasthan'),(3,'Ludhiana Junction','Ludhiana','Punjab'),(4,'Kishanganj Junction','Kishanganj','Bihar'),(5,'Sultan Pur Majra Junction','North-West Delhi','Delhi'),(6,' Abhanpur Junction','Raipur','Chhattisgarh'),(7,'Naihati Junction','Naihati','West Bengal'),(8,'Secunderabad Junction','Hyderabad','Telangana'),(9,'Jaunpur Junction','Jaunpur','Uttar pradesh'),(10,'Tadipatri Junction','Tadipatri','Andhra Pradesh'),(11,'Ranchi Junction','Ranchi','Jharkhand'),(12,'Eranakulam Junction','Kochi','Kerala'),(13,'Ahmedabad Junction','Ahmedabad','Gujarat'),(14,'Madurai Junction','Madhurai','Tamil Nadu'),(15,'Ujjain Junction','Ujjain','Madhya Pradesh');
/*!40000 ALTER TABLE `station` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket` (
  `ticket_id` int NOT NULL AUTO_INCREMENT,
  `passenger_id` int DEFAULT NULL,
  `schedule_id` int DEFAULT NULL,
  `booking_date` date DEFAULT NULL,
  `from_station_id` int DEFAULT NULL,
  `to_station_id` int DEFAULT NULL,
  `pnr_number` varchar(20) DEFAULT NULL,
  `booking_status` enum('Confirmed','RAC','Waitlisted','Cancelled') DEFAULT NULL,
  `seat_id` int DEFAULT NULL,
  PRIMARY KEY (`ticket_id`),
  UNIQUE KEY `pnr_number` (`pnr_number`),
  KEY `passenger_id` (`passenger_id`),
  KEY `schedule_id` (`schedule_id`),
  KEY `from_station_id` (`from_station_id`),
  KEY `to_station_id` (`to_station_id`),
  KEY `seat_id` (`seat_id`),
  CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`passenger_id`) REFERENCES `passenger` (`passenger_id`),
  CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`schedule_id`),
  CONSTRAINT `ticket_ibfk_3` FOREIGN KEY (`from_station_id`) REFERENCES `station` (`station_id`),
  CONSTRAINT `ticket_ibfk_4` FOREIGN KEY (`to_station_id`) REFERENCES `station` (`station_id`),
  CONSTRAINT `ticket_ibfk_5` FOREIGN KEY (`seat_id`) REFERENCES `seat` (`seat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (1,65,7,'2025-04-04',9,13,'PNR100001','Waitlisted',188),(2,46,9,'2025-04-10',14,11,'PNR100002','Cancelled',266),(3,6,2,'2025-03-29',7,15,'PNR100003','Confirmed',54),(4,10,7,'2025-03-29',1,9,'PNR100004','Confirmed',210),(5,52,6,'2025-03-21',10,7,'PNR100005','Waitlisted',169),(6,3,7,'2025-04-04',5,2,'PNR100006','Cancelled',193),(7,59,6,'2025-03-17',3,14,'PNR100007','Waitlisted',170),(8,14,6,'2025-04-05',2,8,'PNR100008','Waitlisted',178),(9,68,4,'2025-04-04',7,11,'PNR100009','Confirmed',103),(10,44,2,'2025-03-28',7,15,'PNR100010','RAC',40),(11,10,4,'2025-03-27',6,14,'PNR100011','Confirmed',96),(12,66,9,'2025-04-11',11,2,'PNR100012','Waitlisted',257),(13,45,4,'2025-03-16',15,13,'PNR100013','Waitlisted',102),(14,33,3,'2025-03-31',4,2,'PNR100014','Waitlisted',65),(15,10,4,'2025-04-07',3,11,'PNR100015','Confirmed',95),(16,60,3,'2025-03-17',13,11,'PNR100016','Confirmed',76),(17,42,10,'2025-03-29',13,10,'PNR100017','Confirmed',285),(18,61,6,'2025-04-05',3,9,'PNR100018','Confirmed',153),(19,36,8,'2025-04-04',11,5,'PNR100019','Waitlisted',236),(20,10,10,'2025-03-15',1,7,'PNR100020','Waitlisted',287),(21,8,5,'2025-03-16',8,9,'PNR100021','RAC',122),(22,12,6,'2025-03-31',14,5,'PNR100022','Confirmed',153),(23,60,10,'2025-03-27',10,9,'PNR100023','RAC',283),(24,6,10,'2025-03-17',9,14,'PNR100024','RAC',294),(25,25,8,'2025-03-18',15,13,'PNR100025','Confirmed',229),(26,20,6,'2025-04-12',10,8,'PNR100026','RAC',167),(27,44,1,'2025-04-11',8,2,'PNR100027','RAC',26),(28,6,2,'2025-04-07',9,12,'PNR100028','RAC',36),(29,68,4,'2025-04-01',12,8,'PNR100029','RAC',105),(30,48,9,'2025-04-05',10,3,'PNR100030','Confirmed',252),(31,44,5,'2025-04-11',7,8,'PNR100031','RAC',145),(32,43,10,'2025-04-09',1,14,'PNR100032','Waitlisted',291),(33,50,2,'2025-03-15',6,2,'PNR100033','Waitlisted',48),(34,20,5,'2025-04-04',5,13,'PNR100034','Waitlisted',148),(35,19,6,'2025-04-10',2,11,'PNR100035','RAC',172),(36,51,6,'2025-03-23',5,12,'PNR100036','Confirmed',173),(37,40,3,'2025-03-29',10,13,'PNR100037','Confirmed',63),(38,43,9,'2025-04-12',7,12,'PNR100038','Confirmed',266),(39,68,3,'2025-04-06',11,13,'PNR100039','Confirmed',87),(40,66,2,'2025-04-07',11,12,'PNR100040','RAC',44),(41,24,6,'2025-03-21',1,7,'PNR100041','Waitlisted',160),(42,25,4,'2025-03-17',6,14,'PNR100042','Confirmed',106),(43,38,4,'2025-04-04',3,4,'PNR100043','Waitlisted',93),(44,68,2,'2025-03-19',9,14,'PNR100044','Waitlisted',48),(45,17,1,'2025-03-30',11,6,'PNR100045','Confirmed',29),(46,24,10,'2025-03-18',7,3,'PNR100046','Confirmed',276),(47,57,10,'2025-04-07',13,3,'PNR100047','RAC',294),(48,31,1,'2025-03-22',7,6,'PNR100048','RAC',22),(49,58,8,'2025-03-15',10,5,'PNR100049','Confirmed',235),(50,61,4,'2025-03-26',9,4,'PNR100050','Confirmed',100),(51,57,4,'2025-04-04',6,12,'PNR100051','Confirmed',109),(52,49,8,'2025-04-04',13,5,'PNR100052','Confirmed',235),(53,26,9,'2025-04-08',9,7,'PNR100053','Confirmed',246),(54,7,10,'2025-04-08',3,15,'PNR100054','Confirmed',279),(55,14,8,'2025-04-12',14,6,'PNR100055','RAC',228),(56,11,9,'2025-03-21',14,2,'PNR100056','Confirmed',250),(57,66,3,'2025-03-31',5,9,'PNR100057','Waitlisted',89),(58,29,3,'2025-04-01',14,7,'PNR100058','Confirmed',63),(59,4,8,'2025-03-27',15,6,'PNR100059','Waitlisted',240),(60,48,7,'2025-04-01',1,8,'PNR100060','Confirmed',197);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_prevent_overbooking` BEFORE INSERT ON `ticket` FOR EACH ROW BEGIN
    DECLARE seat_status VARCHAR(20);
    SELECT booking_status INTO seat_status
    FROM Seat
    WHERE seat_id = NEW.seat_id;

    IF seat_status != 'Available' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Seat is not available. Cannot book ticket.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_book_seat` AFTER INSERT ON `ticket` FOR EACH ROW BEGIN
    IF NEW.booking_status = 'Confirmed' THEN
        UPDATE Seat
        SET booking_status = 'Booked'
        WHERE seat_id = NEW.seat_id;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_cancel_ticket` AFTER UPDATE ON `ticket` FOR EACH ROW BEGIN
    IF NEW.booking_status = 'Cancelled' THEN
        UPDATE Seat
        SET booking_status = 'Available'
        WHERE seat_id = NEW.seat_id;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `train`
--

DROP TABLE IF EXISTS `train`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `train` (
  `train_id` int NOT NULL AUTO_INCREMENT,
  `train_name` varchar(100) DEFAULT NULL,
  `train_type` enum('Express','Superfast','Passenger') DEFAULT NULL,
  PRIMARY KEY (`train_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `train`
--

LOCK TABLES `train` WRITE;
/*!40000 ALTER TABLE `train` DISABLE KEYS */;
INSERT INTO `train` VALUES (1,'Navya Express','Passenger'),(2,'Prisha Express','Express'),(3,'Ivana Express','Express'),(4,'Madhup Express','Passenger');
/*!40000 ALTER TABLE `train` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-15  1:01:55
