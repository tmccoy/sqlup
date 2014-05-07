-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: sad
-- ------------------------------------------------------
-- Server version	5.1.73

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
-- Table structure for table `auth_cas`
--

DROP TABLE IF EXISTS `auth_cas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_cas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `service` varchar(512) DEFAULT NULL,
  `ticket` varchar(512) DEFAULT NULL,
  `renew` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id__idx` (`user_id`),
  CONSTRAINT `auth_cas_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_cas`
--

LOCK TABLES `auth_cas` WRITE;
/*!40000 ALTER TABLE `auth_cas` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_cas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_event`
--

DROP TABLE IF EXISTS `auth_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time_stamp` datetime DEFAULT NULL,
  `client_ip` varchar(512) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `origin` varchar(512) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`id`),
  KEY `user_id__idx` (`user_id`),
  CONSTRAINT `auth_event_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_event`
--

LOCK TABLES `auth_event` WRITE;
/*!40000 ALTER TABLE `auth_event` DISABLE KEYS */;
INSERT INTO `auth_event` VALUES (1,'2014-04-26 23:59:13','127.0.0.1',NULL,'auth','Group 1 created'),(5,'2014-04-27 00:32:11','127.0.0.1',2,'auth','User 2 Logged-in'),(6,'2014-04-27 00:48:01','127.0.0.1',2,'auth','User 2 Logged-in'),(7,'2014-04-27 01:19:02','127.0.0.1',2,'auth','User 2 Logged-out'),(8,'2014-04-27 01:19:02','127.0.0.1',2,'auth','User 2 Logged-out'),(9,'2014-04-27 01:19:18','127.0.0.1',2,'auth','User 2 Logged-in'),(10,'2014-04-27 01:22:02','127.0.0.1',2,'auth','User 2 Logged-out'),(11,'2014-04-27 01:22:02','127.0.0.1',2,'auth','User 2 Logged-out'),(12,'2014-04-27 01:25:09','127.0.0.1',2,'auth','User 2 Logged-in'),(13,'2014-04-27 11:00:17','127.0.0.1',2,'auth','User 2 Logged-in'),(14,'2014-04-27 12:38:42','127.0.0.1',2,'auth','User 2 Logged-out'),(15,'2014-04-27 12:38:42','127.0.0.1',2,'auth','User 2 Logged-out'),(16,'2014-04-27 12:38:54','127.0.0.1',2,'auth','User 2 Logged-in'),(17,'2014-04-27 12:38:59','127.0.0.1',2,'auth','User 2 Logged-out'),(18,'2014-04-27 12:38:59','127.0.0.1',2,'auth','User 2 Logged-out'),(19,'2014-04-27 12:39:14','127.0.0.1',2,'auth','User 2 Logged-in'),(20,'2014-04-27 15:20:57','127.0.0.1',2,'auth','User 2 Logged-out'),(21,'2014-04-27 15:20:57','127.0.0.1',2,'auth','User 2 Logged-out'),(22,'2014-04-27 15:21:32','127.0.0.1',2,'auth','User 2 Logged-in'),(23,'2014-04-27 20:40:39','127.0.0.1',2,'auth','User 2 Logged-in'),(24,'2014-04-27 23:17:06','127.0.0.1',2,'auth','User 2 Logged-in'),(25,'2014-04-27 23:22:04','127.0.0.1',2,'auth','User 2 Logged-out'),(26,'2014-04-27 23:22:04','127.0.0.1',2,'auth','User 2 Logged-out'),(27,'2014-04-27 23:25:09','127.0.0.1',5,'auth','User 5 Logged-in'),(28,'2014-04-27 23:27:16','127.0.0.1',5,'auth','User 5 Logged-out'),(29,'2014-04-27 23:27:17','127.0.0.1',5,'auth','User 5 Logged-out'),(30,'2014-04-27 23:27:29','127.0.0.1',5,'auth','User 5 Logged-in'),(31,'2014-04-27 23:27:59','127.0.0.1',5,'auth','User 5 Logged-out'),(32,'2014-04-27 23:27:59','127.0.0.1',5,'auth','User 5 Logged-out'),(33,'2014-04-27 23:28:13','127.0.0.1',5,'auth','User 5 Logged-in'),(34,'2014-04-27 23:29:34','127.0.0.1',5,'auth','User 5 Logged-out'),(35,'2014-04-27 23:29:34','127.0.0.1',5,'auth','User 5 Logged-out'),(36,'2014-04-27 23:29:47','127.0.0.1',5,'auth','User 5 Logged-in'),(37,'2014-04-27 23:41:01','127.0.0.1',5,'auth','User 5 Logged-out'),(38,'2014-04-27 23:41:01','127.0.0.1',5,'auth','User 5 Logged-out'),(39,'2014-04-27 23:41:05','127.0.0.1',2,'auth','User 2 Logged-in'),(40,'2014-04-27 23:42:59','127.0.0.1',2,'auth','User 2 Logged-out'),(41,'2014-04-27 23:42:59','127.0.0.1',2,'auth','User 2 Logged-out'),(42,'2014-04-27 23:45:53','127.0.0.1',2,'auth','User 2 Logged-in'),(43,'2014-04-27 23:45:57','127.0.0.1',2,'auth','User 2 Logged-out'),(44,'2014-04-27 23:45:57','127.0.0.1',2,'auth','User 2 Logged-out'),(45,'2014-04-27 23:46:42','127.0.0.1',2,'auth','User 2 Logged-in'),(46,'2014-04-27 23:47:09','127.0.0.1',2,'auth','User 2 Logged-out'),(47,'2014-04-27 23:47:09','127.0.0.1',2,'auth','User 2 Logged-out'),(48,'2014-04-27 23:47:16','127.0.0.1',5,'auth','User 5 Logged-in'),(49,'2014-04-27 23:47:29','127.0.0.1',5,'auth','User 5 Logged-out'),(50,'2014-04-27 23:47:29','127.0.0.1',5,'auth','User 5 Logged-out'),(51,'2014-04-27 23:47:36','127.0.0.1',2,'auth','User 2 Logged-in'),(52,'2014-04-27 23:55:03','127.0.0.1',2,'auth','User 2 Logged-out'),(53,'2014-04-27 23:55:03','127.0.0.1',2,'auth','User 2 Logged-out'),(54,'2014-04-27 23:55:11','127.0.0.1',2,'auth','User 2 Logged-in'),(55,'2014-04-27 23:56:27','127.0.0.1',2,'auth','User 2 Logged-out'),(56,'2014-04-27 23:56:27','127.0.0.1',2,'auth','User 2 Logged-out'),(57,'2014-04-27 23:56:33','127.0.0.1',2,'auth','User 2 Logged-in'),(58,'2014-04-27 23:58:18','127.0.0.1',2,'auth','User 2 Logged-out'),(59,'2014-04-27 23:58:18','127.0.0.1',2,'auth','User 2 Logged-out'),(60,'2014-04-27 23:58:23','127.0.0.1',5,'auth','User 5 Logged-in'),(61,'2014-04-28 00:24:01','127.0.0.1',5,'auth','User 5 Logged-out'),(62,'2014-04-28 00:24:02','127.0.0.1',5,'auth','User 5 Logged-out'),(63,'2014-04-28 00:24:06','127.0.0.1',2,'auth','User 2 Logged-in'),(64,'2014-04-28 02:02:49','127.0.0.1',2,'auth','User 2 Logged-out'),(65,'2014-04-28 02:02:49','127.0.0.1',2,'auth','User 2 Logged-out'),(66,'2014-04-28 02:04:05','127.0.0.1',2,'auth','User 2 Logged-in'),(67,'2014-04-28 02:11:35','127.0.0.1',2,'auth','User 2 Logged-in'),(68,'2014-04-30 12:39:40','75.70.2.207',2,'auth','User 2 Logged-in'),(69,'2014-04-30 12:53:16','75.70.2.207',2,'auth','User 2 Logged-out'),(70,'2014-04-30 12:53:16','75.70.2.207',2,'auth','User 2 Logged-out'),(71,'2014-04-30 12:53:24','75.70.2.207',5,'auth','User 5 Logged-in'),(72,'2014-04-30 12:53:41','75.70.2.207',5,'auth','User 5 Logged-out'),(73,'2014-04-30 13:00:08','75.70.2.207',2,'auth','User 2 Logged-in'),(74,'2014-04-30 13:00:31','75.70.2.207',2,'auth','User 2 Logged-out'),(75,'2014-04-30 13:00:31','75.70.2.207',2,'auth','User 2 Logged-out'),(76,'2014-04-30 13:00:39','75.70.2.207',5,'auth','User 5 Logged-in'),(77,'2014-04-30 13:00:44','75.70.2.207',5,'auth','User 5 Profile updated'),(78,'2014-04-30 13:00:50','75.70.2.207',5,'auth','User 5 Profile updated'),(79,'2014-04-30 13:01:03','75.70.2.207',5,'auth','User 5 Logged-out'),(80,'2014-04-30 13:02:35','75.70.2.207',2,'auth','User 2 Logged-in'),(81,'2014-04-30 13:53:23','75.70.2.207',2,'auth','User 2 Logged-out'),(82,'2014-04-30 13:53:23','75.70.2.207',2,'auth','User 2 Logged-out'),(83,'2014-04-30 17:52:45','75.70.2.207',2,'auth','User 2 Logged-in'),(84,'2014-04-30 19:49:29','172.56.9.30',27,'auth','User 27 Logged-in'),(85,'2014-04-30 20:29:31','172.56.9.30',27,'auth','User 27 Logged-out'),(86,'2014-05-03 16:14:56','75.70.2.207',2,'auth','User 2 Logged-in'),(87,'2014-05-03 16:42:26','75.70.2.207',2,'auth','User 2 Logged-out'),(88,'2014-05-04 20:45:35','75.70.2.207',2,'auth','User 2 Logged-in'),(89,'2014-05-04 22:23:56','75.70.2.207',2,'auth','User 2 Logged-out'),(90,'2014-05-04 22:24:26','75.70.2.207',5,'auth','User 5 Logged-in'),(91,'2014-05-04 22:35:25','75.70.2.207',5,'auth','User 5 Logged-out'),(92,'2014-05-04 22:35:53','75.70.2.207',6,'auth','User 6 Logged-in'),(93,'2014-05-04 22:36:42','75.70.2.207',6,'auth','User 6 Logged-out'),(94,'2014-05-04 22:36:48','75.70.2.207',2,'auth','User 2 Logged-in'),(95,'2014-05-05 19:17:49','75.70.2.207',2,'auth','User 2 Logged-in'),(96,'2014-05-05 22:45:05','75.70.2.207',2,'auth','User 2 Logged-in'),(97,'2014-05-06 12:33:26','66.11.55.98',2,'auth','User 2 Logged-in'),(98,'2014-05-06 12:36:01','66.11.55.98',2,'auth','User 2 Logged-out'),(99,'2014-05-06 12:36:12','66.11.55.98',2,'auth','User 2 Logged-in'),(100,'2014-05-06 12:37:15','66.11.55.98',2,'auth','User 2 Logged-out'),(101,'2014-05-06 12:37:21','66.11.55.98',2,'auth','User 2 Logged-in'),(102,'2014-05-06 14:26:48','66.11.55.98',2,'auth','User 2 Logged-out'),(103,'2014-05-06 15:22:27','66.11.55.98',27,'auth','User 27 Logged-in'),(104,'2014-05-06 15:30:06','66.11.55.98',2,'auth','User 2 Logged-in'),(105,'2014-05-06 15:50:43','66.11.55.98',27,'auth','User 27 Logged-out'),(106,'2014-05-06 15:53:19','66.11.55.98',27,'auth','User 27 Logged-in'),(107,'2014-05-06 16:01:37','66.11.55.98',27,'auth','User 27 Logged-out'),(108,'2014-05-06 20:52:54','66.11.55.98',2,'auth','User 2 Logged-in'),(109,'2014-05-06 21:34:55','71.211.185.83',27,'auth','User 27 Logged-in'),(110,'2014-05-06 21:38:37','71.211.185.83',27,'auth','User 27 Logged-in');
/*!40000 ALTER TABLE `auth_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(512) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'user_1','Group uniquely assigned to user 1');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_membership`
--

DROP TABLE IF EXISTS `auth_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_membership` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id__idx` (`user_id`),
  KEY `group_id__idx` (`group_id`),
  CONSTRAINT `auth_membership_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `auth_membership_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_membership`
--

LOCK TABLES `auth_membership` WRITE;
/*!40000 ALTER TABLE `auth_membership` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) DEFAULT NULL,
  `name` varchar(512) DEFAULT NULL,
  `table_name` varchar(512) DEFAULT NULL,
  `record_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `group_id__idx` (`group_id`),
  CONSTRAINT `auth_permission_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(128) DEFAULT NULL,
  `last_name` varchar(128) DEFAULT NULL,
  `email` varchar(512) DEFAULT NULL,
  `password` varchar(512) DEFAULT NULL,
  `registration_key` varchar(512) DEFAULT NULL,
  `reset_password_key` varchar(512) DEFAULT NULL,
  `registration_id` varchar(512) DEFAULT NULL,
  `is_manager` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (2,'Tyler','McCoy','tyler.l2k@gmail.com','pbkdf2(1000,20,sha512)$a681cb968f258957$46d3cb1d74db32e20f35bbe4021f48e5b0def5f7','','','','T'),(5,'Stan','Marsh','stan@southpark.com','pbkdf2(1000,20,sha512)$a7ee9737c3f40300$b810644064a29dd8bc68fc6f39fe235959e075f9','','','','F'),(6,'Eric','Cartmen','eric@southpark.com','pbkdf2(1000,20,sha512)$b8058a7f35cd6122$993d84e3836eb5591651fdc5e2c316651c235b39','','','','F'),(7,'Kyle','Broflovski','kyle@southpark.com','pbkdf2(1000,20,sha512)$af6441a673befc33$ab8b52b4c185173c77ba6a403f4715b7f6b0ea9b','','','','F'),(8,'Kenny','McCormick','kenny@southpark.com','pbkdf2(1000,20,sha512)$8f6512f178e7fb50$0a889128e49b19616c18c341dd755f26b6442508','','','','F'),(9,'Butters','Stotch','butters@southpark.com','pbkdf2(1000,20,sha512)$94a91f39887f72e5$75a1f481e5e413911ecd93930f7dfdb885fe6a23','','','','F'),(10,'Bradley','Biggle','bradley@southpark.com','pbkdf2(1000,20,sha512)$917d3c8b434e845c$50d566534064a85d660d20de221d66304e589d2e','','','','F'),(11,'Shelly','Marsh','shelly@southpark.com','pbkdf2(1000,20,sha512)$b98e3b16532d1ecd$f9970842411e8c2ec606dafa25b3b3218a0cbde7','','','','F'),(12,'Tammy','Warner','tammy@southpark.com','pbkdf2(1000,20,sha512)$acf11a37bc8648e8$a3373dbb6ee238f4cb70d110735562783b4d254c','','','','F'),(13,'Token','Black','token@southpark.com','pbkdf2(1000,20,sha512)$bb5144a47beef22f$fba9f1f01782df3e91e692a6cceedfbcf7496c78','','','','F'),(14,'Wendy','Testaburger','wendy@southpark.com','pbkdf2(1000,20,sha512)$8845c3e95b71bd8c$cc6d03b42cafbbd1c145f3e96ca34432a2226181','','','','F'),(15,'Thad','Jarvis','thad@southpark.com','pbkdf2(1000,20,sha512)$9d20fd7719f12375$86f13ec4ef1315448481c7690a92341a85dfc1c3','','','','F'),(16,'Jimmy','Valmer','jimmy@southpark.com','pbkdf2(1000,20,sha512)$b7e4c1281bf8b9c8$cf687f29cec69374a9f78ac6db1f348e08ec99ea','','','','F'),(17,'Ike','Broflovski','ike@southpark.com','pbkdf2(1000,20,sha512)$8aabd74bdd156fcf$1bf9c128983c3abd2344f4a6a711e036fe62b0df','','','','F'),(18,'Josh','Meyers','josh@southpark.com','pbkdf2(1000,20,sha512)$827cdbed5eee7688$6b9fad5f2d19729db6c861436678fa6ee694d44d','','','','F'),(19,'Craig','Tucker','craig@southpark.com','pbkdf2(1000,20,sha512)$bc8083bb7c7b153f$ef15d47b869991bb91155f017c3ae7a4c0655e5b','','','','F'),(20,'Randy','Marsh','randy@southpark.com','pbkdf2(1000,20,sha512)$953988e442fed8a5$6b64bd5f8ca9c8b73ed7abdaba1b51baea43576a','','','','T'),(21,'Sharon','Marsh','sharon@southpark.com','pbkdf2(1000,20,sha512)$97930b91cb724c31$6c15d3b077a828bf1bf1ea6baecd096edc8879a4','','','','T'),(22,'Sheila','Broflovski','sheila@southpark.com','pbkdf2(1000,20,sha512)$89c85f72637219cf$dc1a56dc432da51b11ad66d309f9889fbbd489d9','','','','T'),(23,'Uncle','Jimbo','jimbo@southpark.com','pbkdf2(1000,20,sha512)$861f1b346a9b5200$d84f50c39a7c64b47028b53d0544f3a7a2fd80c8','','','','T'),(24,'Bat','Dad','bat@southpark.com','pbkdf2(1000,20,sha512)$b12ee9f2b551aa2f$f05b868e95d220f266f75685fee58f77e8481fdb','','','','F'),(25,'Officer','Barbrady','barbrady@southpark.com','pbkdf2(1000,20,sha512)$af4294103d499db6$d5d2fbbf0397e1a3e43da6a736159c8071316508','','','','T'),(26,'Gerald','Broflovski','gerald@southpark.com','pbkdf2(1000,20,sha512)$80a5bc8d7fb009f2$888cb4bae61974cb1c33ed2b87cac799e981f51a','','','','F'),(27,'Colin','Mercer','greengamer39@gmail.com','pbkdf2(1000,20,sha512)$aff4813005884a70$e26faeb71b5cc370677b02eb8129a1345b3906f5','','','','T'),(28,'Dennis','Driver','ddriver2@msudenver.edu','pbkdf2(1000,20,sha512)$b0ee2d784dc66f85$52b2625d2049f06b55bdc9e7fde8b048b35be551','','','','T');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shift`
--

DROP TABLE IF EXISTS `shift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shift` (
  `shift_id` int(11) NOT NULL AUTO_INCREMENT,
  `listed_by_id` int(11) NOT NULL,
  `taken_by_id` int(11) DEFAULT NULL,
  `manager_id` int(11) NOT NULL,
  `shift_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `creation_dt` datetime NOT NULL,
  PRIMARY KEY (`shift_id`),
  KEY `listed_by_id` (`listed_by_id`),
  CONSTRAINT `shift_ibfk_1` FOREIGN KEY (`listed_by_id`) REFERENCES `auth_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shift`
--

LOCK TABLES `shift` WRITE;
/*!40000 ALTER TABLE `shift` DISABLE KEYS */;
INSERT INTO `shift` VALUES (3,2,2,2,'2014-04-09','02:14:53','02:14:56','2014-04-09 01:14:56'),(4,2,2,2,'2014-04-08','05:58:55','07:58:57','2014-04-16 17:58:58'),(5,2,NULL,2,'2014-04-08','06:02:47','08:02:48','0000-00-00 00:00:00'),(6,2,2,2,'2014-04-16','06:15:20','08:15:20','0000-00-00 00:00:00'),(7,2,2,2,'2014-04-15','04:16:06','08:16:06','2014-04-27 21:16:08'),(8,5,NULL,3,'2014-04-08','04:00:00','06:00:00','2014-04-27 23:28:34'),(9,5,NULL,3,'2014-04-22','17:00:00','18:00:00','2014-04-27 23:30:38'),(10,5,NULL,3,'2014-04-16','07:33:54','09:33:55','2014-04-27 23:33:57'),(11,5,4,3,'2014-04-30','07:23:11','08:23:12','2014-04-28 00:23:14'),(12,2,5,3,'2014-04-30','07:42:43','06:42:45','2014-04-28 00:42:48'),(13,2,NULL,3,'2014-04-30','07:13:25','09:13:27','2014-04-28 01:13:31'),(14,2,NULL,3,'2014-05-21','04:00:00','06:00:00','2014-04-30 12:41:03'),(15,27,NULL,2,'2014-05-01','12:30:51','07:30:56','2014-04-30 19:56:19'),(16,2,27,23,'2015-05-13','06:00:00','07:00:00','2014-05-04 20:46:47'),(17,2,5,22,'2014-05-22','05:00:00','06:00:00','2014-05-04 21:57:30'),(18,5,2,21,'2014-05-14','05:00:00','12:00:00','2014-05-04 22:24:41'),(19,5,2,2,'2014-05-20','04:00:00','07:00:00','2014-05-04 22:35:03'),(20,5,2,25,'2014-05-27','03:00:00','07:00:00','2014-05-04 22:35:19'),(21,6,2,22,'2014-05-21','04:00:00','07:00:00','2014-05-04 22:36:06'),(22,6,2,21,'2014-05-27','07:00:00','09:00:00','2014-05-04 22:36:38'),(24,2,NULL,22,'2014-05-21','12:00:00','04:00:00','2014-05-06 13:28:26'),(25,2,2,25,'2014-05-21','02:00:00','05:00:00','2014-05-06 13:33:45'),(26,2,NULL,21,'2014-05-22','01:00:00','07:00:00','2014-05-06 13:34:50'),(27,2,27,27,'2014-05-30','12:00:00','15:00:00','2014-05-06 13:37:23'),(28,2,NULL,27,'2014-05-26','12:00:00','03:00:00','2014-05-06 13:41:20'),(29,2,2,2,'2014-05-28','04:00:00','07:00:00','2014-05-06 13:48:16'),(30,2,2,2,'2014-05-28','04:00:00','08:00:00','2014-05-06 13:49:15'),(31,2,2,28,'2014-05-30','01:00:00','02:00:00','2014-05-06 15:45:54'),(32,27,NULL,2,'2014-05-15','01:00:23','14:00:34','2014-05-06 15:54:40'),(33,27,NULL,28,'2014-05-08','07:00:00','13:00:00','2014-05-06 21:43:23');
/*!40000 ALTER TABLE `shift` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-05-07 12:40:27
