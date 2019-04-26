-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: teamka
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

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
-- Table structure for table `activity_logs`
--

DROP TABLE IF EXISTS `activity_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `action` enum('created','updated','deleted') COLLATE utf8_unicode_ci NOT NULL,
  `log_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `log_type_title` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `log_type_id` int(11) NOT NULL DEFAULT '0',
  `changes` mediumtext COLLATE utf8_unicode_ci,
  `log_for` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `log_for_id` int(11) NOT NULL DEFAULT '0',
  `log_for2` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_for_id2` int(11) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=781 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_logs`
--

LOCK TABLES `activity_logs` WRITE;
/*!40000 ALTER TABLE `activity_logs` DISABLE KEYS */;
INSERT INTO `activity_logs` VALUES (702,'2017-11-05 20:01:45',24,'created','task','demo task',367,NULL,'project',33,'',0,0),(703,'2017-11-06 06:44:47',5,'created','task','puuf',368,NULL,'project',34,'',0,0),(704,'2017-12-03 08:19:31',5,'created','project_comment','test comment',1,NULL,'project',34,'',0,0),(705,'2017-12-03 08:19:32',5,'created','project_comment','test comment',2,NULL,'project',34,'',0,0),(706,'2017-12-03 08:19:39',5,'deleted','project_comment','test comment',2,NULL,'project',34,NULL,NULL,0),(707,'2017-12-03 08:19:45',5,'deleted','project_comment','test comment',1,NULL,'project',34,NULL,NULL,0),(708,'2017-12-16 06:02:26',5,'created','task','task one',369,NULL,'project',35,'',0,0),(709,'2017-12-16 06:03:03',5,'created','task_comment','fdsgfdgfdbfd',3,NULL,'project',35,'task',369,0),(710,'2017-12-16 06:03:27',5,'updated','task','task one',369,'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:17:\"in_progress - 25%\";}}','project',35,'',0,0),(711,'2017-12-16 06:03:34',5,'updated','task','task one',369,'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:17:\"in_progress - 25%\";s:2:\"to\";s:11:\"done - 100%\";}}','project',35,'',0,0),(712,'2017-12-16 06:12:56',5,'created','project_file','_file5a34b968b6d00-ICT.pdf',1,NULL,'project',33,'',0,0),(713,'2017-12-16 06:13:42',5,'created','project_comment','jyfuyik',4,NULL,'project',33,'file',1,0),(714,'2017-12-16 06:13:55',5,'created','project_comment','gbfdbfb',5,NULL,'project',33,'',0,0),(715,'2017-12-19 11:29:34',5,'created','task','Planning and Design',370,NULL,'project',36,'',0,0),(716,'2017-12-19 11:30:40',5,'updated','task','Planning and Design',370,'a:1:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:0:\"\";}}','project',36,'',0,0),(717,'2017-12-19 11:31:22',5,'updated','task','Planning and Design',370,'a:1:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:2:\"80\";}}','project',36,'',0,0),(718,'2017-12-31 12:21:53',5,'created','task','demo task',371,NULL,'project',37,'',0,0),(719,'2017-12-31 12:22:22',5,'created','task_comment','am doing',6,NULL,'project',37,'task',371,0),(720,'2017-12-31 12:24:44',5,'updated','task','demo task',371,'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:17:\"in_progress - 50%\";}}','project',37,'',0,0),(721,'2018-01-03 11:43:56',5,'created','task','qwerty',372,NULL,'project',37,'',0,0),(722,'2018-01-03 11:44:46',5,'created','task','dem0 009',373,NULL,'project',37,'',0,0),(723,'2018-01-04 10:42:19',5,'updated','task','demo task',371,'a:2:{s:6:\"status\";a:2:{s:4:\"from\";s:17:\"in_progress - 50%\";s:2:\"to\";s:17:\"in_progress - 25%\";}s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:0:\"\";}}','project',37,'',0,0),(724,'2018-01-10 05:44:24',5,'created','task','Content Management System',374,NULL,'project',39,'',0,0),(725,'2018-01-11 05:51:47',5,'created','milestone','30% work done',1,NULL,'project',39,'',0,0),(726,'2018-01-13 09:15:42',5,'created','task','task one',381,NULL,'project',46,'',0,0),(727,'2018-01-13 09:16:51',5,'created','task_comment','hello am on it asap',7,NULL,'project',46,'task',381,0),(728,'2018-01-13 09:18:04',5,'created','project_comment','this a project comment test',8,NULL,'project',46,'',0,0),(729,'2018-01-13 09:21:08',5,'created','project_file','_file5a59cf8451af2-IMG_0595.JPG',2,NULL,'project',46,'',0,0),(730,'2018-01-13 09:41:29',5,'updated','task','Another one right there',371,'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:17:\"in_progress - 25%\";s:2:\"to\";s:11:\"done - 100%\";}}','project',37,'',0,0),(731,'2018-01-13 09:41:40',5,'updated','task','Project is an individual or collaborative enterprise, possibly involving research or design',372,'a:2:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:17:\"in_progress - 50%\";}s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:0:\"\";}}','project',37,'',0,0),(732,'2018-01-13 09:41:46',5,'updated','task','Project is an individual or collaborative enterprise, possibly involving research or design',373,'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:17:\"in_progress - 25%\";}}','project',37,'',0,0),(733,'2018-01-20 09:14:37',5,'updated','task','task one',381,'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:17:\"in_progress - 50%\";}}','project',46,'',0,0),(734,'2018-01-20 09:26:01',5,'updated','task','task one',381,'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:17:\"in_progress - 50%\";s:2:\"to\";s:11:\"done - 100%\";}}','project',46,'',0,0),(735,'2018-03-05 12:57:24',5,'updated','task','puuf',368,'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}','project',34,'',0,0),(736,'2018-09-04 11:33:22',5,'updated','task','task one',381,'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:17:\"in_progress - 50%\";}}','project',46,'',0,0),(737,'2018-09-28 08:51:14',19,'created','task','Create independent database files for Nike & Mina',392,NULL,'project',50,'',0,0),(738,'2018-09-28 08:52:03',19,'created','task','Inventory master for Nike',393,NULL,'project',50,'',0,0),(739,'2018-09-28 08:52:35',19,'created','task','Inventory master for Mina',394,NULL,'project',50,'',0,0),(740,'2018-09-28 08:52:58',19,'created','task','Supplier master import for Nike',395,NULL,'project',50,'',0,0),(741,'2018-09-28 08:53:23',19,'created','task','Supplier master import for Mina',396,NULL,'project',50,'',0,0),(742,'2018-09-28 08:54:02',19,'created','task','Purchase processing for Nike',397,NULL,'project',50,'',0,0),(743,'2018-09-28 08:54:24',19,'created','task','Purchase processing for Mina',398,NULL,'project',50,'',0,0),(744,'2018-09-28 08:55:26',19,'updated','task','Create independent database files for Nike & Mina',392,'a:3:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"2\";}s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-09-29\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-09-29\";}}','project',50,'',0,0),(745,'2018-09-28 08:55:48',19,'updated','task','Inventory master for Nike',393,'a:3:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"2\";}s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-09-29\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-09-29\";}}','project',50,'',0,0),(746,'2018-09-28 08:56:03',19,'updated','task','Inventory master for Mina',394,'a:3:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"2\";}s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-09-29\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-09-29\";}}','project',50,'',0,0),(747,'2018-09-28 08:56:16',19,'updated','task','Supplier master import for Nike',395,'a:3:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"2\";}s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-10-01\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-10-01\";}}','project',50,'',0,0),(748,'2018-09-28 08:56:29',19,'updated','task','Supplier master import for Mina',396,'a:3:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"2\";}s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-10-01\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-10-01\";}}','project',50,'',0,0),(749,'2018-09-28 11:25:04',19,'updated','task','Purchase processing for Nike',397,'a:4:{s:11:\"description\";a:2:{s:4:\"from\";s:11:\"<p><br></p>\";s:2:\"to\";s:62:\"> Excel to SAGE direct import\n> Costing process\n> Import split\";}s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"8\";}s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-10-02\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-10-04\";}}','project',50,'',0,0),(750,'2018-09-28 11:25:29',19,'updated','task','Purchase processing for Mina',398,'a:3:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"4\";}s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-09-25\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-09-28\";}}','project',50,'',0,0),(751,'2018-09-28 11:26:32',19,'created','task','Stock take for Nike',399,NULL,'project',50,'',0,0),(752,'2018-09-28 11:27:03',19,'created','task','Stock take for Mina',400,NULL,'project',50,'',0,0),(753,'2018-09-28 11:27:15',19,'updated','task','Stock take for Nike',399,'a:1:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"8\";}}','project',50,'',0,0),(754,'2018-09-28 11:27:42',19,'updated','task','Purchase processing for Mina',398,'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"2018-09-25\";s:2:\"to\";s:10:\"2018-10-01\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"2018-09-28\";s:2:\"to\";s:10:\"2018-10-02\";}}','project',50,'',0,0),(755,'2018-09-28 11:29:25',19,'created','task','Pricelist management for Nike and Mina',401,NULL,'project',50,'',0,0),(756,'2018-09-28 11:30:50',19,'created','task','Regular data back-ups to be introduced for DRM (Disaster Recovery Management)',402,NULL,'project',50,'',0,0),(757,'2018-09-28 11:34:28',19,'updated','task','Regular data back-ups to be introduced for DRM (Disaster Recovery Management)',402,'a:2:{s:5:\"title\";a:2:{s:4:\"from\";s:77:\"Regular data back-ups to be introduced for DRM (Disaster Recovery Management)\";s:2:\"to\";s:28:\"Disaster Recovery Management\";}s:11:\"description\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:234:\"Regular data back-ups to be introduced for DRM\nDaily midnight backups on the server, backup off site on the cloud, and one backup from back office. \nWe should be able to access logs of backups done to ensure they are being done as set\";}}','project',50,'',0,0),(758,'2018-09-28 11:37:09',19,'created','task','Segmentation Inventory Optimisation',403,NULL,'project',50,'',0,0),(759,'2018-09-28 11:37:55',19,'updated','task','Segmentation Inventory Optimisation',403,'a:1:{s:11:\"description\";a:2:{s:4:\"from\";s:79:\"Segmented stocks to be tested for fine-grained control on inventory management \";s:2:\"to\";s:166:\"Segmented stocks to be tested for fine-grained control on inventory management.\nThe segments need to be able to produce all sorts of reports needed by the management.\";}}','project',50,'',0,0),(760,'2018-09-28 11:39:25',19,'updated','task','Segmentation Inventory Optimisation',403,'a:1:{s:11:\"description\";a:2:{s:4:\"from\";s:166:\"Segmented stocks to be tested for fine-grained control on inventory management.\nThe segments need to be able to produce all sorts of reports needed by the management.\";s:2:\"to\";s:351:\"Segmented stocks to be tested for fine-grained control on inventory management.\nThe segments need to be able to produce all sorts of reports needed by the management.\nThe staff need to be trained in creation of new Segments such that the inventory items could be imported corresponding to the segments e.g. Silhouettes to be added for newer items etc.\";}}','project',50,'',0,0),(761,'2018-09-28 11:40:32',19,'created','task','SKU saved as Barcodes',404,NULL,'project',50,'',0,0),(762,'2018-09-28 11:41:40',19,'created','task','Barcode clean-up',405,NULL,'project',50,'',0,0),(763,'2018-09-28 11:42:37',19,'created','task','Item Descriptions to be optimised',406,NULL,'project',50,'',0,0),(764,'2018-09-28 11:43:38',19,'created','task','Item master optimisation',407,NULL,'project',50,'',0,0),(765,'2018-09-28 11:44:39',19,'created','task','MIS reports',408,NULL,'project',50,'',0,0),(766,'2018-09-28 11:45:22',19,'created','task','Reports',409,NULL,'project',50,'',0,0),(767,'2018-09-28 11:46:08',19,'created','task','SAGE General Issues',410,NULL,'project',50,'',0,0),(768,'2018-09-28 11:46:56',19,'created','task','Upgrade',411,NULL,'project',50,'',0,0),(769,'2018-09-28 11:57:01',19,'updated','task','Pricelist management for Nike and Mina',401,'a:1:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:2:\"19\";s:2:\"to\";s:2:\"54\";}}','project',50,'',0,0),(770,'2018-09-28 11:57:15',19,'updated','task','Stock take for Mina',400,'a:1:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:2:\"19\";s:2:\"to\";s:2:\"54\";}}','project',50,'',0,0),(771,'2018-09-28 11:57:27',19,'updated','task','Segmentation Inventory Optimisation',403,'a:1:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:2:\"19\";s:2:\"to\";s:2:\"54\";}}','project',50,'',0,0),(772,'2018-09-28 12:17:06',5,'updated','task','Create independent database files for Nike & Mina',392,'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}','project',50,'',0,0),(773,'2018-09-28 12:20:38',5,'updated','task','Item Descriptions to be optimised',406,'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}','project',50,'',0,0),(774,'2018-09-28 12:24:55',19,'updated','task','Item Descriptions to be optimised',406,'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}','project',50,'',0,0),(775,'2018-09-28 12:24:56',19,'updated','task','Create independent database files for Nike & Mina',392,'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}','project',50,'',0,0),(776,'2018-09-29 05:42:09',55,'created','customer_feedback','zz',9,NULL,'project',50,'customer_feedback',50,0),(777,'2018-09-30 03:45:03',5,'created','milestone','first',9,NULL,'project',49,'',0,0),(778,'2018-10-01 04:32:29',5,'created','task','testtest',412,NULL,'project',50,'',0,0),(779,'2018-10-01 04:34:05',5,'created','task','urgent project',413,NULL,'project',50,'',0,0),(780,'2018-10-01 11:04:54',5,'deleted','task','urgent project',413,NULL,'project',50,NULL,NULL,0);
/*!40000 ALTER TABLE `activity_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `share_with` mediumtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `read_by` mediumtext COLLATE utf8_unicode_ci,
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `created_by` (`created_by`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
INSERT INTO `announcements` VALUES (1,'meeting','<p>fbvfdvfdsvsfdvsdfvdsgvdsvdsvdsvds</p><p>hgm vf m</p>','2017-12-16','2017-12-16',5,'all_members','2017-12-16 06:37:55','0,5',0);
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` enum('incomplete','pending','approved','rejected','deleted') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'incomplete',
  `user_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `in_time` datetime NOT NULL,
  `out_time` datetime DEFAULT NULL,
  `difference` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `checked_by` int(11) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `checked_at` datetime DEFAULT NULL,
  `reject_reason` text COLLATE utf8_unicode_ci,
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `checked_by` (`checked_by`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (1,'pending',2,367,33,'2017-11-09 04:00:00','2017-11-09 19:00:00','54000',NULL,NULL,NULL,NULL,0),(2,'pending',3,367,33,'2017-11-08 22:00:00','2017-11-09 10:00:00','43200',NULL,NULL,NULL,NULL,0),(3,'pending',5,367,33,'2017-11-09 03:00:00','2017-11-09 10:00:00','25200',NULL,NULL,NULL,NULL,0),(4,'pending',2,367,33,'2017-11-07 22:00:00','2017-11-08 10:00:00','43200',NULL,NULL,NULL,NULL,0),(5,'pending',5,369,35,'2017-12-15 22:00:00','2017-12-22 09:55:00','561300',NULL,NULL,NULL,NULL,0),(6,'pending',2,368,34,'2017-12-18 22:00:00','2017-12-19 10:00:00','43200',NULL,NULL,NULL,NULL,0),(7,'pending',5,367,33,'2018-01-02 20:00:00','2018-01-01 23:05:00','75300',NULL,NULL,NULL,NULL,0),(8,'pending',6,368,34,'2018-01-10 22:00:00','2018-01-11 08:00:00','36000',NULL,NULL,NULL,NULL,0),(9,'incomplete',5,0,46,'2018-01-13 10:00:00','2018-01-13 22:00:00','43200',NULL,NULL,NULL,NULL,0),(10,'pending',1,371,37,'2018-01-24 22:00:00','2018-01-24 23:00:00','3600',NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci_sessions`
--

LOCK TABLES `ci_sessions` WRITE;
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` date NOT NULL,
  `website` text COLLATE utf8_unicode_ci,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `vat_number` text COLLATE utf8_unicode_ci,
  `currency` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `disable_online_payment` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (12,'Hillside Re-insurance Company','','','','','','2017-11-05','','',NULL,1,'',NULL,0),(13,'Rozane Properties Limited',NULL,NULL,NULL,NULL,NULL,'0000-00-00',NULL,NULL,NULL,1,NULL,NULL,0),(14,'Kenya Rural Rural Roads Authority','','Nairobi, Upperhill area, Blueshield Towers','','','Kenya','2017-12-19','http://www.kerra.go.ke/','+254 724 735 568','',0,'','KES',0),(15,'National Housing Corporation of Kenya','','NHC House, Aga Khan Walk, Nairobi.','','','Kenya','2017-12-19','http://www.nhckenya.co.ke','+254 (020) 3312 149','',0,'','KES',0),(16,'The World Bank Group','','Delta Center Menengai Road, Upper Hill','','','Kenya','2017-12-19','http://www.worldbank.org','+254-20-293-6000','',0,'','KES',0),(17,'Wizag','','Nairobi','Nairobi','','Kenya','2018-01-29','www.wizag.com','1516816872313','',0,'kj456231','KES',0),(18,'WIZAG',NULL,NULL,NULL,NULL,NULL,'0000-00-00',NULL,NULL,NULL,0,NULL,NULL,0),(19,'KPLC','','Nairobi','Nairobi','254','Kenya','2018-03-05','www.kplc.com','11112222','',0,'4455667889','USD',0),(20,'Martin Maina Solutions',NULL,NULL,NULL,NULL,NULL,'0000-00-00',NULL,NULL,NULL,0,NULL,NULL,0),(21,'OBSL LTD',NULL,NULL,NULL,NULL,NULL,'0000-00-00',NULL,NULL,NULL,0,NULL,NULL,0),(22,'HALAAL NAIROBI LIMITED','','NAIROBI','','','','2018-09-14','','','',0,'','',0),(23,'TRIDENT PLUMBERS LTD.','','','','','','2018-09-28','','','',0,'','',0),(24,'ALLIED TRADING','','','','','','2018-09-28','','','',0,'','',0),(25,'777','','','','','','2018-09-28','','','',0,'','',0),(26,'demo','','','','','','2018-09-28','','','',0,'','',0);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_field_values`
--

DROP TABLE IF EXISTS `custom_field_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_field_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `related_to_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `related_to_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_field_values`
--

LOCK TABLES `custom_field_values` WRITE;
/*!40000 ALTER TABLE `custom_field_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_field_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `placeholder` text COLLATE utf8_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `field_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `related_to` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
INSERT INTO `custom_fields` VALUES (1,'Service','Service','Consulting,New Business,Recruitment','multi_select','estimate_form-1',1,1,1);
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email_subject` text COLLATE utf8_unicode_ci NOT NULL,
  `default_message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom_message` mediumtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES (1,'login_info','Login details','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://teamkazi.com/files/system/default-stie-logo.png\" alt=\"TeamKazi\">\n  <h1>Login Details</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\"> Hello {USER_FIRST_NAME}, &nbsp;{USER_LAST_NAME},<br><br>An account has been created for you.</p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\"> Please use the following info to login your dashboard:</p>            <hr>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">Dashboard URL:&nbsp;<a href=\"{DASHBOARD_URL}\" target=\"_blank\">{DASHBOARD_URL}</a></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\"></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Email: {USER_LOGIN_EMAIL}</span><br></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Password:&nbsp;{USER_LOGIN_PASSWORD}</span></p>            <p style=\"color: rgb(85, 85, 85);\"><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://wizagsol.teamkazi.com/files/system/default-stie-logo.png\" alt=\"TeamKazi\">\n  <h1>Login Details</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\"> Hello {USER_FIRST_NAME}, &nbsp;{USER_LAST_NAME},<br><br>An account has been created for you.</p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\"> Please use the following info to login your dashboard:</p>            <hr>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">Dashboard URL:&nbsp;<a href=\"{DASHBOARD_URL}\" target=\"_blank\">{DASHBOARD_URL}</a></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\"></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Email: {USER_LOGIN_EMAIL}</span><br></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Password:&nbsp;{USER_LOGIN_PASSWORD}</span></p>            <p style=\"color: rgb(85, 85, 85);\"><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">\n<img src=\"https://www.wizag.biz/wp-content/uploads/2018/06/WizagLogo-e1535115318669.png\" alt=\"Wizag\">\n<br></p>        </div>    </div></div>',0),(2,'reset_password','Reset password','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://teamkazi.com/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Reset Password</h1>\n </div>\n <div style=\"padding: 20px; background-color: rgb(255, 255, 255); color:#555;\">                    <p style=\"font-size: 14px;\"> Hello {ACCOUNT_HOLDER_NAME},<br><br>A password reset request has been created for your account.&nbsp;</p>\n                    <p style=\"font-size: 14px;\"> To initiate the password reset process, please click on the following link:</p>\n                    <p style=\"font-size: 14px;\"><a href=\"{RESET_PASSWORD_URL}\" target=\"_blank\">Reset Password</a></p>\n                    <p style=\"font-size: 14px;\"></p>\n                    <p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\"><br></span></p>\n<p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">If you\'ve received this mail in error, it\'s likely that another user entered your email address by mistake while trying to reset a password.</span><br></p>\n<p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">If you didn\'t initiate the request, you don\'t need to take any further action and can safely disregard this email.</span><br></p>\n<p style=\"font-size: 14px;\"><br></p>\n<p style=\"font-size: 14px;\">{SIGNATURE}</p>\n                </div>\n            </div>\n        </div>','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://teamkazi.com/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Reset Password</h1>\n </div>\n <div style=\"padding: 20px; background-color: rgb(255, 255, 255); color:#555;\">                    <p style=\"font-size: 14px;\"> Hello {ACCOUNT_HOLDER_NAME},<br><br>A password reset request has been created for your account.&nbsp;</p>\n                    <p style=\"font-size: 14px;\"> To initiate the password reset process, please click on the following link:</p>\n                    <p style=\"font-size: 14px;\"><a href=\"{RESET_PASSWORD_URL}\" target=\"_blank\">Reset Password</a></p>\n                    <p style=\"font-size: 14px;\"></p>\n                    <p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\"><br></span></p>\n<p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">If you\'ve received this mail in error, it\'s likely that another user entered your email address by mistake while trying to reset a password.</span><br></p>\n<p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">If you didn\'t initiate the request, you don\'t need to take any further action and can safely disregard this email.</span><br></p>\n<p style=\"font-size: 14px;\"><br></p>\n<p style=\"font-size: 14px;\">{SIGNATURE}</p>\n                </div>\n            </div>\n        </div>',0),(3,'team_member_invitation','You are invited','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://teamkazi.com/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Account Invitation</h1>   </div>  <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello,</span><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\"><br></span></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\">{INVITATION_SENT_BY}</span> has sent you an invitation to join with a team.</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVITATION_URL}\" target=\"_blank\">Accept this Invitation</a></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">If you don\'t want to accept this invitation, simply ignore this email.</span><br><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://teamkazi.com/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Account Invitation</h1>   </div>  <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello,</span><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\"><br></span></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\">{INVITATION_SENT_BY}</span> has sent you an invitation to join with a team.</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVITATION_URL}\" target=\"_blank\">Accept this Invitation</a></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">If you don\'t want to accept this invitation, simply ignore this email.</span><br><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>',0),(4,'send_invoice','New invoice','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://teamkazi.com/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>INVOICE #{INVOICE_ID}</h1></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello {CONTACT_FIRST_NAME},</span><br></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">Thank you for your business cooperation.</span><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Your invoice for the project {PROJECT_TITLE} has been generated and is attached here.</span></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVOICE_URL}\" target=\"_blank\">Show Invoice</a></span></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">Invoice balance due is {BALANCE_DUE}</span><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Please pay this invoice within {DUE_DATE}.&nbsp;</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>  </div> </div></div>','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://teamkazi.com/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>INVOICE #{INVOICE_ID}</h1></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello {CONTACT_FIRST_NAME},</span><br></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">Thank you for your business cooperation.</span><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Your invoice for the project {PROJECT_TITLE} has been generated and is attached here.</span></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVOICE_URL}\" target=\"_blank\">Show Invoice</a></span></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">Invoice balance due is {BALANCE_DUE}</span><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Please pay this invoice within {DUE_DATE}.&nbsp;</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>  </div> </div></div>',0),(5,'signature','Signature','<p>Â© TeamKazi. Powered By: <a href=\"https://wizag.biz/\" target=\"_blank\">Wise &amp; Agile Solutions Limited. </a></p>','<p>&#169; TeamKazi. Powered By: <a href=\"https://wizag.biz/\" target=\"_blank\">Wise &amp; Agile Solutions Limited. </a></p>',0),(6,'client_contact_invitation','You are invited','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://teamkazi.com/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Account Invitation</h1> </div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello,</span><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\"><br></span></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\">{INVITATION_SENT_BY}</span> has sent you an invitation to a client portal.</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVITATION_URL}\" target=\"_blank\">Accept this Invitation</a></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">If you don\'t want to accept this invitation, simply ignore this email.</span><br><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://teamkazi.com/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Account Invitation</h1> </div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello,</span><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\"><br></span></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\">{INVITATION_SENT_BY}</span> has sent you an invitation to a client portal.</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVITATION_URL}\" target=\"_blank\">Accept this Invitation</a></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">If you don\'t want to accept this invitation, simply ignore this email.</span><br><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>',0),(7,'ticket_created','Ticket  #{TICKET_ID} - {TICKET_TITLE}','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://teamkazi.com/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Ticket #{TICKET_ID} Opened</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px; font-weight: bold;\">Title: {TICKET_TITLE}</span><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{TICKET_CONTENT}</span><br></p> <p style=\"\"><br></p> <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p> <p style=\"\"><br></p><p style=\"\">Regards,</p><p style=\"\"><span style=\"line-height: 18.5714px;\">{USER_NAME}</span><br></p>   </div>  </div> </div>','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://teamkazi.com/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Ticket #{TICKET_ID} Opened</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px; font-weight: bold;\">Title: {TICKET_TITLE}</span><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{TICKET_CONTENT}</span><br></p> <p style=\"\"><br></p> <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p> <p style=\"\"><br></p><p style=\"\">Regards,</p><p style=\"\"><span style=\"line-height: 18.5714px;\">{USER_NAME}</span><br></p>   </div>  </div> </div>',0),(8,'ticket_commented','Ticket  #{TICKET_ID} - {TICKET_TITLE}','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://teamkazi.com/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Ticket #{TICKET_ID} Replies</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px; font-weight: bold;\">Title: {TICKET_TITLE}</span><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{TICKET_CONTENT}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p></div></div></div>','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://teamkazi.com/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Ticket #{TICKET_ID} Replies</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px; font-weight: bold;\">Title: {TICKET_TITLE}</span><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{TICKET_CONTENT}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p></div></div></div>',0),(9,'ticket_closed','Ticket  #{TICKET_ID} - {TICKET_TITLE}','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://teamkazi.com/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Ticket #{TICKET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">The Ticket #{TICKET_ID} has been closed by&nbsp;</span><span style=\"line-height: 18.5714px;\">{USER_NAME}</span></p> <p style=\"\"><br></p> <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p>   </div>  </div> </div>','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://teamkazi.com/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Ticket #{TICKET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">The Ticket #{TICKET_ID} has been closed by&nbsp;</span><span style=\"line-height: 18.5714px;\">{USER_NAME}</span></p> <p style=\"\"><br></p> <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p>   </div>  </div> </div>',0),(10,'ticket_reopened','Ticket  #{TICKET_ID} - {TICKET_TITLE}','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://teamkazi.com/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Ticket #{TICKET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">The Ticket #{TICKET_ID} has been reopened by&nbsp;</span><span style=\"line-height: 18.5714px;\">{USER_NAME}</span></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p>  </div> </div></div>','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://teamkazi.com/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Ticket #{TICKET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">The Ticket #{TICKET_ID} has been reopened by&nbsp;</span><span style=\"line-height: 18.5714px;\">{USER_NAME}</span></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p>  </div> </div></div>',0),(11,'general_notification','{EVENT_TITLE}','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://teamkazi.com/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>{APP_TITLE}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">{EVENT_TITLE}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{EVENT_DETAILS}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #4f0158; padding: 10px 15px; color: #ffffff;\" href=\"{NOTIFICATION_URL}\" target=\"_blank\">View Details</a></span></p>  </div> </div></div>','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://teamkazi.com/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>{APP_TITLE}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">{EVENT_TITLE}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{EVENT_DETAILS}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #4f0158; padding: 10px 15px; color: #ffffff;\" href=\"{NOTIFICATION_URL}\" target=\"_blank\">View Details</a></span></p>  </div> </div></div>',0);
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estimate_forms`
--

DROP TABLE IF EXISTS `estimate_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estimate_forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estimate_forms`
--

LOCK TABLES `estimate_forms` WRITE;
/*!40000 ALTER TABLE `estimate_forms` DISABLE KEYS */;
INSERT INTO `estimate_forms` VALUES (1,'demo estimate','ccxbcxbcxbcx','active',0);
/*!40000 ALTER TABLE `estimate_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estimate_items`
--

DROP TABLE IF EXISTS `estimate_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estimate_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `quantity` double NOT NULL,
  `unit_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rate` double NOT NULL,
  `total` double NOT NULL,
  `estimate_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estimate_items`
--

LOCK TABLES `estimate_items` WRITE;
/*!40000 ALTER TABLE `estimate_items` DISABLE KEYS */;
INSERT INTO `estimate_items` VALUES (1,'car','ertergtergrtgr',2,'hardware',2000000,4000000,3,0),(2,'lorry','vvcxcxvcx vcx',2,'lorries',10000000,20000000,4,0),(3,'lorry','They need lorries to carry construction materials',5,'lorries',10000000,50000000,5,0);
/*!40000 ALTER TABLE `estimate_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estimate_requests`
--

DROP TABLE IF EXISTS `estimate_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estimate_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estimate_form_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `client_id` int(11) NOT NULL,
  `assigned_to` int(11) NOT NULL,
  `status` enum('new','processing','hold','canceled','estimated') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'new',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estimate_requests`
--

LOCK TABLES `estimate_requests` WRITE;
/*!40000 ALTER TABLE `estimate_requests` DISABLE KEYS */;
INSERT INTO `estimate_requests` VALUES (1,1,55,'2018-09-29 10:27:53',24,0,'new',0);
/*!40000 ALTER TABLE `estimate_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estimates`
--

DROP TABLE IF EXISTS `estimates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estimates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `estimate_request_id` int(11) NOT NULL DEFAULT '0',
  `estimate_date` date NOT NULL,
  `valid_until` date NOT NULL,
  `note` mediumtext COLLATE utf8_unicode_ci,
  `last_email_sent_date` date DEFAULT NULL,
  `status` enum('draft','sent','accepted','declined') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'draft',
  `tax_id` int(11) NOT NULL DEFAULT '0',
  `tax_id2` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estimates`
--

LOCK TABLES `estimates` WRITE;
/*!40000 ALTER TABLE `estimates` DISABLE KEYS */;
INSERT INTO `estimates` VALUES (1,12,0,'2017-12-16','2017-12-16','bvc vc vc vc',NULL,'draft',1,1,1),(2,15,0,'2017-12-31','2017-12-31','',NULL,'draft',1,0,0),(3,14,0,'2018-01-13','2018-01-13','hfdxbdfhbfd',NULL,'draft',1,0,0),(4,15,0,'2018-01-20','2018-01-20','bvcx bvcx ',NULL,'draft',1,0,0),(5,15,0,'2018-02-02','2018-02-02','Road Construction',NULL,'draft',1,1,0);
/*!40000 ALTER TABLE `estimates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `location` mediumtext COLLATE utf8_unicode_ci,
  `share_with` mediumtext COLLATE utf8_unicode_ci,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `color` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `created_by` (`created_by`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'meeting','vfdsvfds','2018-01-13','2018-01-13','01:00:00','13:00:00',5,'nairobi','',0,'#83c340'),(2,'Planning Meeting','Team Kazi App','2018-01-25','2018-01-25','00:00:00','00:00:00',5,'Cobeam','',0,'#83c340');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense_categories`
--

DROP TABLE IF EXISTS `expense_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expense_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_categories`
--

LOCK TABLES `expense_categories` WRITE;
/*!40000 ALTER TABLE `expense_categories` DISABLE KEYS */;
INSERT INTO `expense_categories` VALUES (1,'Miscellaneous expense',0);
/*!40000 ALTER TABLE `expense_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_date` date NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `amount` double NOT NULL,
  `files` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses`
--

LOCK TABLES `expenses` WRITE;
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
INSERT INTO `expenses` VALUES (1,'2017-12-16',1,'gfdsdsbfdsb',543,'a:1:{i:0;a:2:{s:9:\"file_name\";s:33:\"expense_file5a34ba196ae2a-ICT.pdf\";s:9:\"file_size\";s:6:\"153511\";}}','chai',33,5,0),(2,'2017-12-19',1,'',10000,'a:0:{}','Travel',33,2,0),(3,'2018-01-13',1,'wetlands to ngong',1200,'a:1:{i:0;a:2:{s:9:\"file_name\";s:48:\"expense_file5a59cf1b460f6-SantaSokoUIlow-(1).pdf\";s:9:\"file_size\";s:6:\"799545\";}}','transport',46,36,0),(4,'2018-01-12',1,'ggfd',3500,'a:1:{i:0;a:2:{s:9:\"file_name\";s:46:\"expense_file5a6309dd1c72e-Scanned-Document.pdf\";s:9:\"file_size\";s:4:\"1383\";}}','transport',46,5,0);
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_items`
--

DROP TABLE IF EXISTS `invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `quantity` double NOT NULL,
  `unit_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rate` double NOT NULL,
  `total` double NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_items`
--

LOCK TABLES `invoice_items` WRITE;
/*!40000 ALTER TABLE `invoice_items` DISABLE KEYS */;
INSERT INTO `invoice_items` VALUES (1,'lorry','',10,'lorries',10000000,100000000,2,0),(2,'tractor','gbfedvedvfedvfd',2,'car',15000000,30000000,3,0),(3,'Loading Fee','Loading Fees',1,'Hours',500,500,4,0),(4,'tractor','gbfedvedvfedvfd',3,'car',15000000,45000000,5,0);
/*!40000 ALTER TABLE `invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_payments`
--

DROP TABLE IF EXISTS `invoice_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `payment_date` date NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `invoice_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `transaction_id` tinytext COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE,
  KEY `id_2` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_payments`
--

LOCK TABLES `invoice_payments` WRITE;
/*!40000 ALTER TABLE `invoice_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `bill_date` date NOT NULL,
  `due_date` date NOT NULL,
  `note` mediumtext COLLATE utf8_unicode_ci,
  `last_email_sent_date` date DEFAULT NULL,
  `status` enum('draft','not_paid') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'draft',
  `tax_id` int(11) NOT NULL DEFAULT '0',
  `tax_id2` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` VALUES (1,12,34,'2017-12-16','2017-12-28',' fxcxbfdbvcx c',NULL,'draft',1,1,0),(2,14,36,'2018-01-13','2018-01-24','uyttfdhgfhgfh',NULL,'draft',1,0,0),(3,14,46,'2018-01-16','2018-01-23','hgjgfdjhgfjh',NULL,'draft',1,1,0),(4,14,36,'2018-01-25','2018-02-08','Notes',NULL,'draft',1,0,0),(5,14,46,'2018-04-26','2018-04-27','demo',NULL,'draft',1,0,0);
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leave_applications`
--

DROP TABLE IF EXISTS `leave_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leave_applications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `leave_type_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `total_hours` decimal(7,2) NOT NULL,
  `total_days` decimal(5,2) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `reason` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('pending','approved','rejected','canceled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `checked_at` datetime DEFAULT NULL,
  `checked_by` int(11) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `leave_type_id` (`leave_type_id`) USING BTREE,
  KEY `user_id` (`applicant_id`) USING BTREE,
  KEY `checked_by` (`checked_by`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave_applications`
--

LOCK TABLES `leave_applications` WRITE;
/*!40000 ALTER TABLE `leave_applications` DISABLE KEYS */;
INSERT INTO `leave_applications` VALUES (1,1,'2017-11-24','2017-12-14',168.00,21.00,26,'Sickness','rejected','2017-11-20 08:32:04',0,'2018-01-08 07:47:51',5,0),(2,1,'2018-01-09','2018-01-09',8.00,1.00,26,'demo','approved','2018-01-08 07:46:26',0,'2018-01-08 07:48:04',5,0),(3,1,'2018-01-24','2018-01-24',8.00,1.00,26,'I am going for a check up','pending','2018-01-18 09:37:30',0,'0000-00-00 00:00:00',0,0),(4,1,'2018-01-31','2018-01-31',8.00,1.00,1,'Visiting','approved','2018-01-29 13:43:27',5,'2018-01-29 13:43:27',5,0);
/*!40000 ALTER TABLE `leave_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leave_types`
--

DROP TABLE IF EXISTS `leave_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leave_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `color` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave_types`
--

LOCK TABLES `leave_types` WRITE;
/*!40000 ALTER TABLE `leave_types` DISABLE KEYS */;
INSERT INTO `leave_types` VALUES (1,'Casual Leave','active','#83c340','',0);
/*!40000 ALTER TABLE `leave_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_tasks`
--

DROP TABLE IF EXISTS `main_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `deleted` tinyint(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `PROJECTS_FK` (`project_id`) USING BTREE,
  CONSTRAINT `PROJECTS_FK` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_tasks`
--

LOCK TABLES `main_tasks` WRITE;
/*!40000 ALTER TABLE `main_tasks` DISABLE KEYS */;
INSERT INTO `main_tasks` VALUES (1,'main task','demo',37,0),(2,'Mainest task','This is mainest task ',39,0),(4,'Main Task two','This is the second main task',37,0),(5,'Main Task three','This is the third main task',37,0),(6,'Main Task four','This is the forth main task',37,0),(7,'Trial main task','This is a trial main task',37,0),(8,'Thanks','thanks',37,0),(9,'demo subtask one','short sub task',46,0),(10,'main task test','This is a main task for this project',37,0),(11,'Rectify mistakes','header for the website we published need to be styled as required by the clientele',45,0),(12,'Importation','',50,0),(13,'GRV','',50,0),(14,'Stock Take','',50,0),(15,'test','',50,0),(16,'test1','',50,0),(17,'test','<p>czcz</p>',49,0);
/*!40000 ALTER TABLE `main_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Untitled',
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `status` enum('unread','read') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unread',
  `message_id` int(11) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `files` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted_by_users` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `message_from` (`from_user_id`) USING BTREE,
  KEY `message_to` (`to_user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,'Demo','demo','2018-01-08 07:39:53',5,26,'read',0,0,'a:0:{}',''),(2,'test','vehtrhvtr','2018-01-13 09:23:28',5,16,'read',0,0,'a:1:{i:0;a:2:{s:9:\"file_name\";s:31:\"message_file5a59d010c6004-8.jpg\";s:9:\"file_size\";s:5:\"64008\";}}',''),(3,'Follow Up','Kindly remember the Quotation.','2018-01-18 09:33:14',26,20,'unread',0,0,'a:0:{}','');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `milestones`
--

DROP TABLE IF EXISTS `milestones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `milestones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `due_date` date NOT NULL,
  `deleted` tinyint(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `milestones`
--

LOCK TABLES `milestones` WRITE;
/*!40000 ALTER TABLE `milestones` DISABLE KEYS */;
INSERT INTO `milestones` VALUES (1,'30% work done',39,'2018-01-12',0),(2,'60% of work completed and validated',37,'2018-03-28',0),(3,'Project completed 100% done',37,'2018-04-26',0),(4,'ffdd',37,'2018-00-23',0),(5,'hi',37,'2018-00-11',0),(6,'Milestone 1',37,'2018-00-19',0),(7,'Milestone 1',37,'2018-00-19',0),(8,'mile 01',37,'2018-00-25',0),(9,'first',49,'2018-09-24',0);
/*!40000 ALTER TABLE `milestones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `client_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `labels` text COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (1,5,'2018-01-12 05:48:29','Note one','This is a very very great note.',0,0,0,'Important,private',0);
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_settings`
--

DROP TABLE IF EXISTS `notification_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event` varchar(250) NOT NULL,
  `category` varchar(50) NOT NULL,
  `enable_email` int(1) NOT NULL DEFAULT '0',
  `enable_web` int(1) NOT NULL DEFAULT '0',
  `notify_to_team` text NOT NULL,
  `notify_to_team_members` text NOT NULL,
  `notify_to_terms` text NOT NULL,
  `sort` int(11) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `event` (`event`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_settings`
--

LOCK TABLES `notification_settings` WRITE;
/*!40000 ALTER TABLE `notification_settings` DISABLE KEYS */;
INSERT INTO `notification_settings` VALUES (1,'project_created','project',0,0,'','','',1,0),(2,'project_deleted','project',0,0,'','','',2,0),(3,'project_task_created','project',1,1,'','','project_members,task_assignee',3,0),(4,'project_task_updated','project',0,1,'','','task_assignee',4,0),(5,'project_task_assigned','project',0,1,'','','task_assignee',5,0),(7,'project_task_started','project',0,0,'','','',7,0),(8,'project_task_finished','project',0,0,'','','',8,0),(9,'project_task_reopened','project',0,0,'','','',9,0),(10,'project_task_deleted','project',0,1,'','','task_assignee',10,0),(11,'project_task_commented','project',0,1,'','','task_assignee',11,0),(12,'project_member_added','project',0,1,'','','project_members',12,0),(13,'project_member_deleted','project',0,1,'','','project_members',13,0),(14,'project_file_added','project',0,1,'','','project_members',14,0),(15,'project_file_deleted','project',0,1,'','','project_members',15,0),(16,'project_file_commented','project',0,1,'','','project_members',16,0),(17,'project_comment_added','project',0,1,'','','project_members',17,0),(18,'project_comment_replied','project',0,1,'','','project_members,comment_creator',18,0),(19,'project_customer_feedback_added','project',0,1,'','','project_members',19,0),(20,'project_customer_feedback_replied','project',0,1,'','','project_members,comment_creator',20,0),(21,'client_signup','client',1,1,'','','',21,0),(22,'invoice_online_payment_received','invoice',0,0,'','','',22,0),(23,'leave_application_submitted','leave',0,0,'','','',23,0),(24,'leave_approved','leave',0,1,'','','leave_applicant',24,0),(25,'leave_assigned','leave',0,1,'','','leave_applicant',25,0),(26,'leave_rejected','leave',0,1,'','','leave_applicant',26,0),(27,'leave_canceled','leave',0,0,'','','',27,0),(28,'ticket_created','ticket',0,0,'','','',28,0),(29,'ticket_commented','ticket',0,1,'','','client_primary_contact,ticket_creator',29,0),(30,'ticket_closed','ticket',0,1,'','','client_primary_contact,ticket_creator',30,0),(31,'ticket_reopened','ticket',0,1,'','','client_primary_contact,ticket_creator',31,0),(32,'estimate_request_received','estimate',0,0,'','','',32,0),(33,'estimate_sent','estimate',0,0,'','','',33,0),(34,'estimate_accepted','estimate',0,0,'','','',34,0),(35,'estimate_rejected','estimate',0,0,'','','',35,0);
/*!40000 ALTER TABLE `notification_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `notify_to` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `read_by` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `event` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `project_comment_id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `ticket_comment_id` int(11) NOT NULL,
  `project_file_id` int(11) NOT NULL,
  `leave_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `activity_log_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `invoice_payment_id` int(11) NOT NULL,
  `estimate_id` int(11) NOT NULL,
  `estimate_request_id` int(11) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=806 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (712,24,'','2017-11-05 20:01:45','','','project_task_created',33,367,0,0,0,0,0,0,0,0,0,0,0,0,0),(713,5,'','2017-11-06 06:44:47','','','project_task_created',34,368,0,0,0,0,0,0,0,0,0,0,0,0,0),(714,5,'','2017-12-03 08:19:31','','','project_comment_added',34,0,1,0,0,0,0,0,0,0,0,0,0,0,0),(715,5,'','2017-12-03 08:19:32','','','project_comment_added',34,0,2,0,0,0,0,0,0,0,0,0,0,0,0),(716,27,'','2017-12-08 12:00:38','','','client_signup',0,0,0,0,0,0,0,0,0,0,13,0,0,0,0),(717,5,'','2017-12-16 06:02:26','','','project_task_created',35,369,0,0,0,0,0,0,0,0,0,0,0,0,0),(718,5,'','2017-12-16 06:03:03','','','project_task_commented',35,369,3,0,0,0,0,0,0,0,0,0,0,0,0),(719,5,'','2017-12-16 06:03:27','','','project_task_updated',35,369,0,0,0,0,0,0,0,0,0,0,0,0,0),(720,5,'','2017-12-16 06:03:35','','','project_task_updated',35,369,0,0,0,0,0,0,0,0,0,0,0,0,0),(721,5,'','2017-12-16 06:12:56','24','','project_file_added',33,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(722,5,'','2017-12-16 06:13:43','24','','project_file_commented',33,0,4,0,0,1,0,0,0,0,0,0,0,0,0),(723,5,'','2017-12-16 06:13:56','24','','project_comment_added',33,0,5,0,0,0,0,0,0,0,0,0,0,0,0),(724,5,'','2017-12-19 11:29:34','32','','project_task_created',36,370,0,0,0,0,0,0,0,0,0,0,0,0,0),(725,5,'','2017-12-19 11:30:40','32','','project_task_updated',36,370,0,0,0,0,0,0,0,716,0,0,0,0,0),(726,5,'','2017-12-19 11:31:22','32','','project_task_updated',36,370,0,0,0,0,0,0,0,717,0,0,0,0,0),(727,5,'','2017-12-31 12:21:53','','','project_task_created',37,371,0,0,0,0,0,0,0,0,0,0,0,0,0),(728,5,'','2017-12-31 12:22:22','','','project_task_commented',37,371,6,0,0,0,0,0,0,0,0,0,0,0,0),(729,5,'','2017-12-31 12:24:45','','','project_task_updated',37,371,0,0,0,0,0,0,0,0,0,0,0,0,0),(730,5,'','2018-01-03 11:43:56','','','project_task_created',37,372,0,0,0,0,0,0,0,0,0,0,0,0,0),(731,5,'','2018-01-03 11:44:47','','','project_task_created',37,373,0,0,0,0,0,0,0,0,0,0,0,0,0),(732,5,'','2018-01-04 10:42:20','','','project_task_updated',37,371,0,0,0,0,0,0,0,723,0,0,0,0,0),(733,5,'','2018-01-08 07:47:51','26',',26','leave_rejected',0,0,0,0,0,0,1,0,26,0,0,0,0,0,0),(734,5,'','2018-01-08 07:48:05','26',',26','leave_approved',0,0,0,0,0,0,2,0,26,0,0,0,0,0,0),(735,5,'','2018-01-10 05:44:24','20,28,32','','project_task_created',39,374,0,0,0,0,0,0,0,0,0,0,0,0,0),(736,37,'','2018-01-12 07:22:54','','','client_signup',0,0,0,0,0,0,0,0,0,0,17,0,0,0,0),(737,5,'','2018-01-13 09:15:42','','','project_task_created',46,381,0,0,0,0,0,0,0,0,0,0,0,0,0),(738,5,'','2018-01-13 09:16:51','','','project_task_commented',46,381,7,0,0,0,0,0,0,0,0,0,0,0,0),(739,5,'','2018-01-13 09:17:24','36','','project_member_added',46,0,0,0,0,0,0,0,36,0,0,0,0,0,0),(740,5,'','2018-01-13 09:18:04','36','','project_comment_added',46,0,8,0,0,0,0,0,0,0,0,0,0,0,0),(741,5,'','2018-01-13 09:21:08','36','','project_file_added',46,0,0,0,0,2,0,0,0,0,0,0,0,0,0),(742,5,'','2018-01-13 09:41:29','','','project_task_updated',37,371,0,0,0,0,0,0,0,0,0,0,0,0,0),(743,5,'','2018-01-13 09:41:40','','','project_task_updated',37,372,0,0,0,0,0,0,0,731,0,0,0,0,0),(744,5,'','2018-01-13 09:41:46','','','project_task_updated',37,373,0,0,0,0,0,0,0,0,0,0,0,0,0),(745,5,'','2018-01-20 09:14:37','','','project_task_updated',46,381,0,0,0,0,0,0,0,0,0,0,0,0,0),(746,5,'','2018-01-20 09:26:02','','','project_task_updated',46,381,0,0,0,0,0,0,0,0,0,0,0,0,0),(747,5,'','2018-01-29 13:43:27','1','','leave_assigned',0,0,0,0,0,0,4,0,1,0,0,0,0,0,0),(748,47,'','2018-03-05 08:34:31','','','client_signup',0,0,0,0,0,0,0,0,0,0,18,0,0,0,0),(749,5,'','2018-03-05 12:57:24','','','project_task_updated',34,368,0,0,0,0,0,0,0,0,0,0,0,0,0),(750,48,'','2018-04-17 08:14:46','','','client_signup',0,0,0,0,0,0,0,0,0,0,20,0,0,0,0),(751,51,'','2018-05-22 07:45:56','','','client_signup',0,0,0,0,0,0,0,0,0,0,21,0,0,0,0),(752,5,'','2018-09-04 11:33:23','','','project_task_updated',46,381,0,0,0,0,0,0,0,0,0,0,0,0,0),(753,19,'','2018-09-14 08:40:56','52','','project_member_added',48,0,0,0,0,0,0,0,52,0,0,0,0,0,0),(754,19,'','2018-09-14 08:41:39','','','project_task_deleted',0,5,0,47,0,0,0,0,0,0,0,0,0,0,0),(755,19,'','2018-09-14 08:41:42','','','project_task_deleted',0,1,0,33,0,0,0,0,0,0,0,0,0,0,0),(756,19,'','2018-09-28 06:51:29','53','','project_member_added',49,0,0,0,0,0,0,0,53,0,0,0,0,0,0),(757,19,'','2018-09-28 08:50:36','54','','project_member_added',50,0,0,0,0,0,0,0,54,0,0,0,0,0,0),(758,19,'','2018-09-28 08:51:14','54','','project_task_created',50,392,0,0,0,0,0,0,0,0,0,0,0,0,0),(759,19,'','2018-09-28 08:52:03','54','','project_task_created',50,393,0,0,0,0,0,0,0,0,0,0,0,0,0),(760,19,'','2018-09-28 08:52:36','54','','project_task_created',50,394,0,0,0,0,0,0,0,0,0,0,0,0,0),(761,19,'','2018-09-28 08:52:58','54','','project_task_created',50,395,0,0,0,0,0,0,0,0,0,0,0,0,0),(762,19,'','2018-09-28 08:53:23','54','','project_task_created',50,396,0,0,0,0,0,0,0,0,0,0,0,0,0),(763,19,'','2018-09-28 08:54:02','54','','project_task_created',50,397,0,0,0,0,0,0,0,0,0,0,0,0,0),(764,19,'','2018-09-28 08:54:24','54','','project_task_created',50,398,0,0,0,0,0,0,0,0,0,0,0,0,0),(765,19,'','2018-09-28 08:55:26','54','','project_task_updated',50,392,0,0,0,0,0,0,0,744,0,0,0,0,0),(766,19,'','2018-09-28 08:55:48','54','','project_task_updated',50,393,0,0,0,0,0,0,0,745,0,0,0,0,0),(767,19,'','2018-09-28 08:56:03','54','','project_task_updated',50,394,0,0,0,0,0,0,0,746,0,0,0,0,0),(768,19,'','2018-09-28 08:56:16','54','','project_task_updated',50,395,0,0,0,0,0,0,0,747,0,0,0,0,0),(769,19,'','2018-09-28 08:56:29','54','','project_task_updated',50,396,0,0,0,0,0,0,0,748,0,0,0,0,0),(770,19,'','2018-09-28 11:25:04','54','','project_task_updated',50,397,0,0,0,0,0,0,0,749,0,0,0,0,0),(771,19,'','2018-09-28 11:25:29','54','','project_task_updated',50,398,0,0,0,0,0,0,0,750,0,0,0,0,0),(772,19,'','2018-09-28 11:26:32','54','','project_task_created',50,399,0,0,0,0,0,0,0,0,0,0,0,0,0),(773,19,'','2018-09-28 11:27:04','54','','project_task_created',50,400,0,0,0,0,0,0,0,0,0,0,0,0,0),(774,19,'','2018-09-28 11:27:16','54','','project_task_updated',50,399,0,0,0,0,0,0,0,753,0,0,0,0,0),(775,19,'','2018-09-28 11:27:42','54','','project_task_updated',50,398,0,0,0,0,0,0,0,754,0,0,0,0,0),(776,19,'','2018-09-28 11:29:25','54','','project_task_created',50,401,0,0,0,0,0,0,0,0,0,0,0,0,0),(777,19,'','2018-09-28 11:30:50','54','','project_task_created',50,402,0,0,0,0,0,0,0,0,0,0,0,0,0),(778,19,'','2018-09-28 11:34:28','54','','project_task_updated',50,402,0,0,0,0,0,0,0,757,0,0,0,0,0),(779,19,'','2018-09-28 11:37:09','54','','project_task_created',50,403,0,0,0,0,0,0,0,0,0,0,0,0,0),(780,19,'','2018-09-28 11:37:55','','','project_task_updated',50,403,0,0,0,0,0,0,0,759,0,0,0,0,0),(781,19,'','2018-09-28 11:39:25','','','project_task_updated',50,403,0,0,0,0,0,0,0,760,0,0,0,0,0),(782,19,'','2018-09-28 11:40:32','54','','project_task_created',50,404,0,0,0,0,0,0,0,0,0,0,0,0,0),(783,19,'','2018-09-28 11:41:41','54','','project_task_created',50,405,0,0,0,0,0,0,0,0,0,0,0,0,0),(784,19,'','2018-09-28 11:42:37','54','','project_task_created',50,406,0,0,0,0,0,0,0,0,0,0,0,0,0),(785,19,'','2018-09-28 11:43:39','54','','project_task_created',50,407,0,0,0,0,0,0,0,0,0,0,0,0,0),(786,19,'','2018-09-28 11:44:39','54','','project_task_created',50,408,0,0,0,0,0,0,0,0,0,0,0,0,0),(787,19,'','2018-09-28 11:45:22','54','','project_task_created',50,409,0,0,0,0,0,0,0,0,0,0,0,0,0),(788,19,'','2018-09-28 11:46:08','54','','project_task_created',50,410,0,0,0,0,0,0,0,0,0,0,0,0,0),(789,19,'','2018-09-28 11:46:56','54','','project_task_created',50,411,0,0,0,0,0,0,0,0,0,0,0,0,0),(790,19,'','2018-09-28 11:57:01','54','','project_task_assigned',50,401,0,0,0,0,0,0,54,0,0,0,0,0,0),(791,19,'','2018-09-28 11:57:16','54','','project_task_assigned',50,400,0,0,0,0,0,0,54,0,0,0,0,0,0),(792,19,'','2018-09-28 11:57:27','54','','project_task_assigned',50,403,0,0,0,0,0,0,54,0,0,0,0,0,0),(793,19,'','2018-09-28 12:00:59','18','','project_member_added',51,0,0,0,0,0,0,0,18,0,0,0,0,0,0),(794,5,'','2018-09-28 12:17:06','54','','project_task_updated',50,392,0,0,0,0,0,0,0,0,0,0,0,0,0),(795,5,'','2018-09-28 12:17:06','54','','project_task_updated',50,392,0,0,0,0,0,0,0,0,0,0,0,0,0),(796,5,'','2018-09-28 12:17:06','54','','project_task_updated',50,392,0,0,0,0,0,0,0,0,0,0,0,0,0),(797,5,'','2018-09-28 12:20:38','54','','project_task_updated',50,406,0,0,0,0,0,0,0,0,0,0,0,0,0),(798,19,'','2018-09-28 12:24:55','54','','project_task_updated',50,406,0,0,0,0,0,0,0,0,0,0,0,0,0),(799,19,'','2018-09-28 12:24:56','54','','project_task_updated',50,392,0,0,0,0,0,0,0,0,0,0,0,0,0),(800,55,'','2018-09-29 05:42:09','19,54','','project_customer_feedback_added',50,0,9,0,0,0,0,0,0,0,0,0,0,0,0),(801,5,'','2018-10-01 04:20:37','3,6,8,19,20,26,52,54','','project_task_created',50,118,0,0,0,0,0,0,0,0,0,0,0,0,0),(802,5,'','2018-10-01 04:32:30','3,6,8,9,14,19,20,26,52,54','','project_task_created',50,412,0,0,0,0,0,0,0,0,0,0,0,0,0),(803,5,'','2018-10-01 04:34:05','3,6,8,9,14,19,20,26,52,54','','project_task_created',50,413,0,0,0,0,0,0,0,0,0,0,0,0,0),(804,5,'','2018-10-01 11:04:54','','','project_task_deleted',50,413,0,0,0,0,0,0,0,0,0,0,0,0,0),(805,1,'','2019-03-12 09:30:35','54','','project_task_updated',50,411,0,0,0,0,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_methods`
--

DROP TABLE IF EXISTS `payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'custom',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `online_payable` tinyint(1) NOT NULL DEFAULT '0',
  `available_on_invoice` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_payment_amount` double NOT NULL DEFAULT '0',
  `settings` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_methods`
--

LOCK TABLES `payment_methods` WRITE;
/*!40000 ALTER TABLE `payment_methods` DISABLE KEYS */;
INSERT INTO `payment_methods` VALUES (1,'Cash','custom','Cash payments',0,0,0,'',0),(2,'Stripe','stripe','Stripe online payments',1,0,0,'a:3:{s:15:\"pay_button_text\";s:6:\"Stripe\";s:10:\"secret_key\";s:6:\"\";s:15:\"publishable_key\";s:6:\"\";}',0),(3,'PayPal Payments Standard','paypal_payments_standard','PayPal Payments Standard Online Payments',1,0,0,'a:4:{s:15:\"pay_button_text\";s:6:\"PayPal\";s:5:\"email\";s:4:\"\";s:11:\"paypal_live\";s:1:\"0\";s:5:\"debug\";s:1:\"0\";}',0);
/*!40000 ALTER TABLE `payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paypal_ipn`
--

DROP TABLE IF EXISTS `paypal_ipn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paypal_ipn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` tinytext COLLATE utf8_unicode_ci,
  `ipn_hash` longtext COLLATE utf8_unicode_ci NOT NULL,
  `ipn_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paypal_ipn`
--

LOCK TABLES `paypal_ipn` WRITE;
/*!40000 ALTER TABLE `paypal_ipn` DISABLE KEYS */;
/*!40000 ALTER TABLE `paypal_ipn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `share_with` text COLLATE utf8_unicode_ci,
  `files` longtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,26,'2018-01-18 09:23:45','Bronze Model of website.',0,'','a:1:{i:0;a:2:{s:9:\"file_name\";s:42:\"timeline_post_file5a6067a1ca30d-bronze.jpg\";s:9:\"file_size\";s:6:\"641329\";}}',0),(2,5,'2018-01-20 09:32:12','demo TL',0,'','a:1:{i:0;a:2:{s:9:\"file_name\";s:71:\"timeline_post_file5a630c9ce05df-Screenshot-from-2017-12-01-16-47-44.png\";s:9:\"file_size\";s:6:\"162865\";}}',0),(3,5,'2018-01-24 14:10:47','Structural Engineering Division\n\nThis division deals in the design and detailing of steel, concrete and timber structures together with foundation design for buildings, bridge and water retaining structures.',0,'','a:0:{}',0);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_comments`
--

DROP TABLE IF EXISTS `project_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `comment_id` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `file_id` int(11) NOT NULL DEFAULT '0',
  `customer_feedback_id` int(11) NOT NULL DEFAULT '0',
  `files` longtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_comments`
--

LOCK TABLES `project_comments` WRITE;
/*!40000 ALTER TABLE `project_comments` DISABLE KEYS */;
INSERT INTO `project_comments` VALUES (1,5,'2017-12-03 08:19:31','test comment',34,0,0,0,0,'a:0:{}',1),(2,5,'2017-12-03 08:19:32','test comment',34,0,0,0,0,'a:0:{}',1),(3,5,'2017-12-16 06:03:03','fdsgfdgfdbfd',35,0,369,0,0,'a:0:{}',0),(4,5,'2017-12-16 06:13:42','jyfuyik',33,0,0,1,0,'a:0:{}',0),(5,5,'2017-12-16 06:13:55','gbfdbfb',33,0,0,0,0,'a:0:{}',0),(6,5,'2017-12-31 12:22:22','am doing',37,0,371,0,0,'a:0:{}',0),(7,5,'2018-01-13 09:16:51','hello am on it asap',46,0,381,0,0,'a:1:{i:0;a:2:{s:9:\"file_name\";s:62:\"project_comment_file5a59ce83320f8-Webp.net-resizeimage-(5).jpg\";s:9:\"file_size\";s:5:\"17868\";}}',0),(8,5,'2018-01-13 09:18:03','this a project comment test',46,0,0,0,0,'a:1:{i:0;a:2:{s:9:\"file_name\";s:43:\"project_comment_file5a59cecbec661-LOGIN.jpg\";s:9:\"file_size\";s:6:\"106764\";}}',0),(9,55,'2018-09-29 05:42:08','zz',50,0,0,0,50,'a:0:{}',0);
/*!40000 ALTER TABLE `project_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_files`
--

DROP TABLE IF EXISTS `project_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `file_size` double NOT NULL,
  `created_at` datetime NOT NULL,
  `project_id` int(11) NOT NULL,
  `uploaded_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_files`
--

LOCK TABLES `project_files` WRITE;
/*!40000 ALTER TABLE `project_files` DISABLE KEYS */;
INSERT INTO `project_files` VALUES (1,'_file5a34b968b6d00-ICT.pdf','',153511,'2017-12-16 06:12:56',33,5,0),(2,'_file5a59cf8451af2-IMG_0595.JPG','hello',587747,'2018-01-13 09:21:08',46,5,0);
/*!40000 ALTER TABLE `project_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_members`
--

DROP TABLE IF EXISTS `project_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `is_leader` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_members`
--

LOCK TABLES `project_members` WRITE;
/*!40000 ALTER TABLE `project_members` DISABLE KEYS */;
INSERT INTO `project_members` VALUES (87,24,33,1,0),(88,5,34,1,0),(89,5,35,1,0),(90,5,36,1,0),(91,5,37,1,0),(92,5,38,1,0),(93,32,36,0,0),(94,32,39,0,0),(95,20,39,0,0),(96,28,39,0,0),(97,5,46,1,0),(98,36,46,0,0),(99,5,47,1,0),(100,19,48,1,0),(101,52,48,0,0),(102,19,49,1,0),(103,53,49,0,0),(104,19,50,1,0),(105,54,50,0,0),(106,19,51,1,0),(107,18,51,0,0),(108,29,49,0,0),(109,26,49,0,0),(110,2,49,0,0),(111,20,49,0,0),(112,5,50,0,0),(113,8,50,0,0),(114,52,50,0,0),(115,3,50,0,0),(116,26,50,0,0),(117,20,50,0,0),(118,6,50,0,0),(119,9,50,0,0),(120,14,50,0,0);
/*!40000 ALTER TABLE `project_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_time`
--

DROP TABLE IF EXISTS `project_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_time` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` enum('open','logged','approved') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'logged',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_time`
--

LOCK TABLES `project_time` WRITE;
/*!40000 ALTER TABLE `project_time` DISABLE KEYS */;
INSERT INTO `project_time` VALUES (1,37,5,'2018-01-05 07:40:01','2018-01-08 12:51:04','logged',0),(2,46,5,'2018-01-24 14:00:07','2018-01-24 14:00:16','logged',0),(3,36,5,'2018-01-29 11:45:50','2018-01-29 11:46:00','logged',0);
/*!40000 ALTER TABLE `project_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `start_date` date NOT NULL,
  `deadline` date NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `status` enum('open','completed','canceled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `labels` text COLLATE utf8_unicode_ci,
  `price` double NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (34,'heheheheheh','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. In hac habitasse platea dictumst. A diam maecenas sed enim ut sem viverra aliquet. Suspendisse interdum consectetur libero id faucibus nisl tincidunt. Nulla pellentesque dignissim enim sit amet venenatis urna.','0000-00-00','0000-00-00',12,'2017-11-06','open','',0,1),(35,'rgfedbgfdbgfd','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. In hac habitasse platea dictumst. A diam maecenas sed enim ut sem viverra aliquet. Suspendisse interdum consectetur libero id faucibus nisl tincidunt. Nulla pellentesque dignissim enim sit amet venenatis urna.','2017-12-16','2017-12-21',12,'2017-12-16','open','high,low',34324324,1),(36,'Construction of Waa - Msambweni Road (Mombasa - Tanga Road), Kenya.','Road construction project Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. In hac habitasse platea dictumst. A diam maecenas sed enim ut sem viverra aliquet. Suspendisse interdum consectetur libero id faucibus nisl tincidunt. Nulla pellentesque dignissim enim sit amet venenatis urna.','2017-01-01','2019-03-01',14,'2017-12-19','open','',1000000,1),(37,'Zion Apartments Nairobi - Kenya. 3000 units, Medium Cost Highrise Shops and Flats','Construction of apartments inclusive of all amenities such as tarmac roads, water reticulation, sewers, drains and electric fittings and wiring.','2017-01-01','2019-01-03',15,'2018-01-03','open','',3000000,1),(38,'Construction of a Bridge Over the Galana River- Tsavo East National Park In Kenya','Construction of a bridge to provide access for the local population especially during the rainy season, where flooding occurs.','2017-08-01','2018-12-31',16,'2017-12-19','open','',850000,1),(39,'XXXXXXXXXXXXXXXXXXXXX XXXXXXXXXXXXXXXXXXXX ','TTTTTTTTTTTTT TTTTTTTTTTTTTTTTTT TTTTTTTTTTTTTTTTTTTTTTTTT','2018-08-09','2019-08-09',15,'2018-01-09','open','',2337876,1),(40,'Construction of a new classroom at umoja spring primary school','A standard classroom for lower primary kids as they usher in the new sylabus','2018-00-25','2018-09-10',16,'0000-00-00','open',NULL,455767676656,1),(42,'Video shooting','I have no idea','2018-00-09','2018-00-27',16,'0000-00-00','open',NULL,30000,1),(43,'This is a new project','we discussed get very very get very very she h gd hl fi his did she just from but his','2018-00-09','2018-00-27',16,'0000-00-00','open',NULL,300000,1),(45,'thanks','i get that kind of images I will be using it','2018-00-26','2018-03-26',16,'0000-00-00','open',NULL,280063,1),(46,'demo wizag  project','a short description','2018-01-13','2018-01-24',14,'2018-01-13','open','high,liquid',120000,1),(47,'Last Mile','xxxxx xxxx zzzz yyyy yyyy ','2018-04-01','2018-09-30',19,'2018-03-05','open','high',78000000,1),(48,'An Nisa Taxi','<p><br></p>','0000-00-00','0000-00-00',22,'2018-09-14','open','',0,0),(49,'TRIDENT TIME & ATTENDANCE','<p><br></p>','0000-00-00','0000-00-00',24,'2018-09-28','open','',0,0),(50,'ALLIED TRADING SAGE RE-IMPLEMENTATION','<p><br></p>','0000-00-00','0000-00-00',24,'2018-09-28','open','',0,0),(51,'TeamKazi Issues','','0000-00-00','0000-00-00',16,'2018-10-01','open','',0,0);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` mediumtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrators','a:24:{s:5:\"leave\";s:3:\"all\";s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";s:3:\"all\";s:19:\"attendance_specific\";s:0:\"\";s:7:\"invoice\";s:3:\"all\";s:8:\"estimate\";s:3:\"all\";s:7:\"expense\";s:3:\"all\";s:6:\"client\";s:3:\"all\";s:6:\"ticket\";s:3:\"all\";s:12:\"announcement\";s:3:\"all\";s:19:\"can_create_projects\";s:1:\"1\";s:17:\"can_edit_projects\";s:1:\"1\";s:19:\"can_delete_projects\";s:1:\"1\";s:30:\"can_add_remove_project_members\";s:1:\"1\";s:16:\"can_create_tasks\";s:1:\"1\";s:14:\"can_edit_tasks\";s:1:\"1\";s:16:\"can_delete_tasks\";s:1:\"1\";s:20:\"can_comment_on_tasks\";s:1:\"1\";s:21:\"can_create_milestones\";s:1:\"1\";s:19:\"can_edit_milestones\";s:1:\"1\";s:21:\"can_delete_milestones\";s:1:\"1\";s:16:\"can_delete_files\";s:1:\"1\";s:34:\"can_view_team_members_contact_info\";s:1:\"1\";s:34:\"can_view_team_members_social_links\";s:1:\"1\";}',0),(2,'developer','a:24:{s:5:\"leave\";s:3:\"all\";s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";s:3:\"all\";s:19:\"attendance_specific\";s:0:\"\";s:7:\"invoice\";s:3:\"all\";s:8:\"estimate\";s:3:\"all\";s:7:\"expense\";s:3:\"all\";s:6:\"client\";s:3:\"all\";s:6:\"ticket\";s:3:\"all\";s:12:\"announcement\";s:3:\"all\";s:19:\"can_create_projects\";s:1:\"1\";s:17:\"can_edit_projects\";s:1:\"1\";s:19:\"can_delete_projects\";s:1:\"1\";s:30:\"can_add_remove_project_members\";s:1:\"1\";s:16:\"can_create_tasks\";s:1:\"1\";s:14:\"can_edit_tasks\";s:1:\"1\";s:16:\"can_delete_tasks\";s:1:\"1\";s:20:\"can_comment_on_tasks\";s:1:\"1\";s:21:\"can_create_milestones\";s:1:\"1\";s:19:\"can_edit_milestones\";s:1:\"1\";s:21:\"can_delete_milestones\";s:1:\"1\";s:16:\"can_delete_files\";s:1:\"1\";s:34:\"can_view_team_members_contact_info\";s:1:\"1\";s:34:\"can_view_team_members_social_links\";s:1:\"1\";}',0),(3,'HR','a:24:{s:5:\"leave\";s:3:\"all\";s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";s:3:\"all\";s:19:\"attendance_specific\";s:0:\"\";s:7:\"invoice\";s:3:\"all\";s:8:\"estimate\";s:3:\"all\";s:7:\"expense\";s:3:\"all\";s:6:\"client\";s:3:\"all\";s:6:\"ticket\";s:3:\"all\";s:12:\"announcement\";s:3:\"all\";s:19:\"can_create_projects\";s:1:\"1\";s:17:\"can_edit_projects\";s:1:\"1\";s:19:\"can_delete_projects\";s:1:\"1\";s:30:\"can_add_remove_project_members\";s:1:\"1\";s:16:\"can_create_tasks\";s:1:\"1\";s:14:\"can_edit_tasks\";s:1:\"1\";s:16:\"can_delete_tasks\";s:1:\"1\";s:20:\"can_comment_on_tasks\";s:1:\"1\";s:21:\"can_create_milestones\";s:1:\"1\";s:19:\"can_edit_milestones\";s:1:\"1\";s:21:\"can_delete_milestones\";s:1:\"1\";s:16:\"can_delete_files\";s:1:\"1\";s:34:\"can_view_team_members_contact_info\";s:1:\"1\";s:34:\"can_view_team_members_social_links\";s:1:\"1\";}',0),(4,'Site Administrator',NULL,0),(5,'Supervisor ','a:24:{s:5:\"leave\";N;s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";s:3:\"all\";s:19:\"attendance_specific\";s:0:\"\";s:7:\"invoice\";N;s:8:\"estimate\";N;s:7:\"expense\";N;s:6:\"client\";N;s:6:\"ticket\";s:3:\"all\";s:12:\"announcement\";N;s:19:\"can_create_projects\";N;s:17:\"can_edit_projects\";N;s:19:\"can_delete_projects\";N;s:30:\"can_add_remove_project_members\";N;s:16:\"can_create_tasks\";s:1:\"1\";s:14:\"can_edit_tasks\";s:1:\"1\";s:16:\"can_delete_tasks\";s:1:\"1\";s:20:\"can_comment_on_tasks\";s:1:\"1\";s:21:\"can_create_milestones\";s:1:\"1\";s:19:\"can_edit_milestones\";s:1:\"1\";s:21:\"can_delete_milestones\";s:1:\"1\";s:16:\"can_delete_files\";s:1:\"1\";s:34:\"can_view_team_members_contact_info\";N;s:34:\"can_view_team_members_social_links\";N;}',0),(6,'Manual worker',NULL,0),(7,'Project Manager','a:24:{s:5:\"leave\";s:3:\"all\";s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";s:3:\"all\";s:19:\"attendance_specific\";s:0:\"\";s:7:\"invoice\";s:3:\"all\";s:8:\"estimate\";s:3:\"all\";s:7:\"expense\";s:3:\"all\";s:6:\"client\";s:3:\"all\";s:6:\"ticket\";s:3:\"all\";s:12:\"announcement\";s:3:\"all\";s:19:\"can_create_projects\";s:1:\"1\";s:17:\"can_edit_projects\";s:1:\"1\";s:19:\"can_delete_projects\";s:1:\"1\";s:30:\"can_add_remove_project_members\";s:1:\"1\";s:16:\"can_create_tasks\";s:1:\"1\";s:14:\"can_edit_tasks\";s:1:\"1\";s:16:\"can_delete_tasks\";s:1:\"1\";s:20:\"can_comment_on_tasks\";s:1:\"1\";s:21:\"can_create_milestones\";s:1:\"1\";s:19:\"can_edit_milestones\";s:1:\"1\";s:21:\"can_delete_milestones\";s:1:\"1\";s:16:\"can_delete_files\";s:1:\"1\";s:34:\"can_view_team_members_contact_info\";s:1:\"1\";s:34:\"can_view_team_members_social_links\";s:1:\"1\";}',0),(8,'Client','a:24:{s:5:\"leave\";N;s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";N;s:19:\"attendance_specific\";s:0:\"\";s:7:\"invoice\";N;s:8:\"estimate\";N;s:7:\"expense\";N;s:6:\"client\";s:3:\"all\";s:6:\"ticket\";s:3:\"all\";s:12:\"announcement\";s:3:\"all\";s:19:\"can_create_projects\";N;s:17:\"can_edit_projects\";N;s:19:\"can_delete_projects\";N;s:30:\"can_add_remove_project_members\";N;s:16:\"can_create_tasks\";N;s:14:\"can_edit_tasks\";N;s:16:\"can_delete_tasks\";N;s:20:\"can_comment_on_tasks\";s:1:\"1\";s:21:\"can_create_milestones\";N;s:19:\"can_edit_milestones\";N;s:21:\"can_delete_milestones\";N;s:16:\"can_delete_files\";N;s:34:\"can_view_team_members_contact_info\";N;s:34:\"can_view_team_members_social_links\";N;}',0);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `setting_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `setting_value` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `setting_name` (`setting_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES ('accepted_file_formats','jpg,jpeg,doc,png,gif,pdf,docx',0),('admin_costs','100000',0),('allowed_ip_addresses','',0),('app_title','Team-K',0),('client_can_add_project_files','',0),('client_can_comment_on_files','',0),('client_can_comment_on_tasks','',0),('client_can_create_tasks','',0),('client_can_edit_tasks','',0),('client_can_view_project_files','',0),('client_can_view_tasks','',0),('client_message_users','5',0),('company_address','',0),('company_email','info@wizag.biz',0),('company_name','Wise & Agile Solutions Ltd.',0),('company_phone','0711401108',0),('company_website','https://wizag.biz',0),('currency_symbol','KES',0),('date_format','d/m/Y',0),('decimal_separator','.',0),('default_currency','KES',0),('disable_client_login','',0),('disable_client_signup','',0),('email_protocol','smtp',0),('email_sent_from_address','wizag@teamkazi.biz',0),('email_sent_from_name','Wise & Agile Solutions Limited',0),('email_smtp_host','smtp.mailtrap.io',0),('email_smtp_pass','2176180c5483c4',0),('email_smtp_port','25',0),('email_smtp_security_type','tls',0),('email_smtp_user','e84a71a5ca5cc0',0),('first_day_of_week','0',0),('invoice_logo','default-invoice-logo.png',0),('item_purchase_code','ITEM-PURCHASE-CODE',0),('language','english',0),('module_announcement','1',0),('module_attendance','1',0),('module_estimate','1',0),('module_estimate_request','1',0),('module_event','1',0),('module_expense','1',0),('module_invoice','1',0),('module_leave','1',0),('module_message','1',0),('module_note','1',0),('module_ticket','1',0),('module_timeline','1',0),('opening_hours','8:30',0),('rows_per_page','50',0),('scrollbar','native',0),('show_background_image_in_signin_page','no',0),('show_logo_in_signin_page','yes',0),('site_logo','default-stie-logo.png',0),('time_format','capital',0),('timezone','Africa/Nairobi',0),('working_hours','176',0);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_links`
--

DROP TABLE IF EXISTS `social_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_links` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `facebook` text COLLATE utf8_unicode_ci,
  `twitter` text COLLATE utf8_unicode_ci,
  `linkedin` text COLLATE utf8_unicode_ci,
  `googleplus` text COLLATE utf8_unicode_ci,
  `digg` text COLLATE utf8_unicode_ci,
  `youtube` text COLLATE utf8_unicode_ci,
  `pinterest` text COLLATE utf8_unicode_ci,
  `instagram` text COLLATE utf8_unicode_ci,
  `github` text COLLATE utf8_unicode_ci,
  `tumblr` text COLLATE utf8_unicode_ci,
  `vine` text COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_links`
--

LOCK TABLES `social_links` WRITE;
/*!40000 ALTER TABLE `social_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `project_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `ticket_id` int(11) DEFAULT NULL,
  `milestone_id` int(11) NOT NULL DEFAULT '0',
  `assigned_to` int(11) NOT NULL,
  `deadline` date DEFAULT NULL,
  `labels` text COLLATE utf8_unicode_ci,
  `max_hours` int(11) NOT NULL DEFAULT '0',
  `points` tinyint(4) NOT NULL DEFAULT '1',
  `status` enum('to_do - 0%','in_progress - 25%','in_progress - 50%','in_progress - 75%','done - 100%') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'to_do - 0%',
  `start_date` date DEFAULT NULL,
  `collaborators` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(11) NOT NULL DEFAULT '0',
  `priority` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Normal',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=414 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (367,'Project is an individual or collaborative enterprise, possibly involving research or design','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. In hac habitasse platea dictumst. A diam maecenas sed enim ut sem viverra aliquet. Suspendisse interdum consectetur libero id faucibus nisl tincidunt. Nulla pellentesque dignissim enim sit amet venenatis urna.',33,0,NULL,0,24,'2018-01-31','',0,1,'to_do - 0%','0000-00-00','',0,'Normal','2017-11-05 20:01:45'),(368,'puuf','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. In hac habitasse platea dictumst. A diam maecenas sed enim ut sem viverra aliquet. Suspendisse interdum consectetur libero id faucibus nisl tincidunt. Nulla pellentesque dignissim enim sit amet venenatis urna.',34,0,NULL,0,5,'0000-00-00','',0,1,'done - 100%','0000-00-00','',0,'Normal','2017-11-06 06:44:47'),(369,'task one','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. In hac habitasse platea dictumst. A diam maecenas sed enim ut sem viverra aliquet. Suspendisse interdum consectetur libero id faucibus nisl tincidunt. Nulla pellentesque dignissim enim sit amet venenatis urna.',35,0,NULL,0,5,'2017-12-28','fdsfdsfds',32432,1,'done - 100%','2017-12-16','',0,'Normal','2017-12-16 06:02:26'),(370,'Planning and Design',' Analyze survey reports, maps, drawings, blueprints, aerial photography, and other topographical or geologic data to plan projects.\n',36,0,NULL,0,32,'2017-12-29','',80,1,'in_progress - 25%','2017-03-01','',0,'Normal','2017-12-19 11:29:34'),(371,'Another one right there','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. In hac habitasse platea dictumst. A diam maecenas sed enim ut sem viverra aliquet. Suspendisse interdum consectetur libero id faucibus nisl tincidunt. Nulla pellentesque dignissim enim sit amet venenatis urna.',37,0,NULL,0,5,'0000-00-00','',0,1,'done - 100%','0000-00-00','',0,'Normal','2017-12-31 12:21:53'),(372,'Project is an individual or collaborative enterprise, possibly involving research or design','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. In hac habitasse platea dictumst. A diam maecenas sed enim ut sem viverra aliquet. Suspendisse interdum consectetur libero id faucibus nisl tincidunt. Nulla pellentesque dignissim enim sit amet venenatis urna.',37,1,NULL,0,5,'2018-02-15','',0,1,'in_progress - 50%','0000-00-00','',0,'Normal','2018-01-03 11:43:56'),(373,'Project is an individual or collaborative enterprise, possibly involving research or design','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. In hac habitasse platea dictumst. A diam maecenas sed enim ut sem viverra aliquet. Suspendisse interdum consectetur libero id faucibus nisl tincidunt. Nulla pellentesque dignissim enim sit amet venenatis urna.',37,0,NULL,0,5,'2018-03-20','',0,1,'in_progress - 25%','0000-00-00','',0,'Normal','2018-01-03 11:44:46'),(374,'Content Management System','',39,0,NULL,0,32,'0000-00-00','cms',200,5,'in_progress - 50%','0000-00-00','20,28',0,'Normal','2018-01-10 05:44:24'),(375,'Thanks','thanks',37,4,NULL,0,5,'2018-00-11','thanks',2558,4,'','2018-00-11','',0,'High','2018-01-11 10:52:28'),(376,'Thanks','thanks',37,4,NULL,0,5,'2018-00-11','thanks',2558,4,'','2018-00-11','',0,'High','2018-01-11 10:52:33'),(377,'Thanks','i get that did not have been using it too for images to create introduction I will use it',15,4,NULL,0,5,'2018-09-24','hi',250,0,'','2018-02-15','',0,'High','2018-01-11 12:28:33'),(378,'Thanks','i get that did not have been using it too for images to create introduction I will use it',37,4,NULL,0,5,'2018-09-24','hi',250,0,'','2018-02-15','',0,'High','2018-01-11 12:28:38'),(379,'Test','test desc',37,4,NULL,0,5,'2018-00-14','test',12,4,'','2018-00-12','',0,'High','2018-01-12 04:41:50'),(380,'Develop a crm system','Develop a web application to manage customer relationships, manage leads and potential clients',37,4,NULL,0,5,'2018-05-21','crm ',250,5,'','2017-10-22','',0,'Normal','2018-01-12 05:38:50'),(381,'task one','short description',46,9,NULL,0,5,'2018-01-14','important',72,1,'in_progress - 50%','2018-01-13','',0,'Normal','2018-01-13 09:15:42'),(382,'Tttt new task','Describes the task',37,4,NULL,0,5,'2018-01-15','Holes',250,4,'','2017-00-18','',0,'High','2018-01-15 06:04:36'),(383,'Tttt new task','Describes the task',37,4,NULL,0,5,'2018-01-15','Holes',250,4,'','2017-00-18','',0,'High','2018-01-15 06:06:44'),(384,'The','bunchy hunchback',39,4,NULL,0,5,'2018-07-23','eggyhdd',4552,1,'','2018-03-26','',0,'High','2018-01-15 06:17:48'),(385,'Ex','dry by try get icy icy of',39,4,NULL,0,5,'2018-00-31','ytfdd',445888,3,'in_progress - 75%','2018-00-15','',0,'High','2018-01-15 06:24:08'),(386,'Tfygygyf','ugggftfyy',34,0,NULL,0,0,'2018-03-27','gygyf',2435425,3,'in_progress - 50%','2018-01-21','',0,'High','2018-01-15 06:42:12'),(387,'Ugufcgcfuvfyg','get by tug city in in',34,0,NULL,0,44,'2018-01-22','yufygyuuyf',25255225,5,'in_progress - 50%','2018-00-15','',0,'High','2018-01-15 06:44:51'),(388,'Ugufcgcfuvfyg','get by tug city in in',34,0,NULL,0,44,'2018-01-22','yufygyuuyf',25255225,5,'in_progress - 50%','2018-00-15','',0,'High','2018-01-15 06:45:09'),(389,'Ugufcgcfuvfyg','get by tug city in in',34,0,NULL,0,35,'2018-01-22','yufygyuuyf',25255225,5,'in_progress - 50%','2018-00-15','',0,'High','2018-01-15 06:45:57'),(390,'Yuttfuftutf','try hutch bibi by junk nihon',45,0,NULL,0,1,'2018-01-22','c ghvhug',125,3,'in_progress - 75%','2018-01-02','',0,'High','2018-01-15 07:45:39'),(391,'Yuttfuftutf','try hutch bibi by junk nihon',45,0,NULL,0,37,'2018-01-22','c ghvhug',125,3,'in_progress - 75%','2018-01-02','',0,'High','2018-01-15 07:46:01'),(392,'Create independent database files for Nike & Mina','',50,0,NULL,0,54,'2018-09-29','',2,1,'to_do - 0%','2018-09-29','',0,'Normal','2018-09-28 08:51:14'),(393,'Inventory master for Nike','<p><br></p>',50,12,NULL,0,54,'2018-09-29','',2,1,'to_do - 0%','2018-09-29','',0,'Normal','2018-09-28 08:52:03'),(394,'Inventory master for Mina','',50,12,NULL,0,54,'2018-09-29','',2,1,'to_do - 0%','2018-09-29','',0,'Normal','2018-09-28 08:52:35'),(395,'Supplier master import for Nike','',50,12,NULL,0,54,'2018-10-01','',2,1,'to_do - 0%','2018-10-01','',0,'Normal','2018-09-28 08:52:58'),(396,'Supplier master import for Mina','',50,12,NULL,0,54,'2018-10-01','',2,1,'to_do - 0%','2018-10-01','',0,'Normal','2018-09-28 08:53:23'),(397,'Purchase processing for Nike','> Excel to SAGE direct import\n> Costing process\n> Import split',50,13,NULL,0,54,'2018-10-04','',8,1,'to_do - 0%','2018-10-02','',0,'Normal','2018-09-28 08:54:02'),(398,'Purchase processing for Mina','',50,13,NULL,0,54,'2018-10-02','',4,1,'to_do - 0%','2018-10-01','',0,'Normal','2018-09-28 08:54:24'),(399,'Stock take for Nike','<p><br></p>',50,14,NULL,0,54,'2018-10-04','',8,1,'to_do - 0%','2018-10-02','',0,'Normal','2018-09-28 11:26:32'),(400,'Stock take for Mina','',50,14,NULL,0,54,'2018-10-04','',8,1,'to_do - 0%','2018-10-02','',0,'Normal','2018-09-28 11:27:03'),(401,'Pricelist management for Nike and Mina','> Derivation of price list from landed cost price\n> Bulk update of RRP from Excel into SAGE',50,0,NULL,0,54,'2018-10-06','',4,1,'to_do - 0%','2018-10-05','',0,'Normal','2018-09-28 11:29:25'),(402,'Disaster Recovery Management','Regular data back-ups to be introduced for DRM\nDaily midnight backups on the server, backup off site on the cloud, and one backup from back office. \nWe should be able to access logs of backups done to ensure they are being done as set',50,0,NULL,0,54,'2018-10-15','',3,1,'to_do - 0%','2018-10-15','',0,'Normal','2018-09-28 11:30:50'),(403,'Segmentation Inventory Optimisation','Segmented stocks to be tested for fine-grained control on inventory management.\nThe segments need to be able to produce all sorts of reports needed by the management.\nThe staff need to be trained in creation of new Segments such that the inventory items could be imported corresponding to the segments e.g. Silhouettes to be added for newer items etc.',50,0,NULL,0,54,'2018-10-01','',4,1,'to_do - 0%','2018-09-29','',0,'Normal','2018-09-28 11:37:08'),(404,'SKU saved as Barcodes','For the cosmetic brand (3INA) we are currently facing issues with the barcodes that were input in the system using back end- sql. The barcodes have inter-changed and we would want this to be cleaned up as it affects our stock takes. ',50,0,NULL,0,54,'2018-10-04','',4,1,'to_do - 0%','2018-10-03','',0,'Normal','2018-09-28 11:40:32'),(405,'Barcode clean-up','POS  - when scanning a product, the system picks a wrong product and therefore this wastes a lot of time at the stores when selling to customers. We have to ensure that the product is correct, by clearing the data and re-scanning and this at times is being done for over 15 products in one docket',50,0,NULL,0,54,'2018-10-05','',4,1,'to_do - 0%','2018-10-04','',0,'Normal','2018-09-28 11:41:40'),(406,'Item Descriptions to be optimised','POS – the size of the Nike products do not show when scanning, and we are receiving our stocks with size barcodes',50,0,NULL,0,54,'2018-10-02','',4,1,'to_do - 0%','2018-09-29','',0,'Normal','2018-09-28 11:42:37'),(407,'Item master optimisation','Need to review the inventory master management as the data keeps growing and it takes time to pull out reports',50,0,NULL,0,54,'2018-10-02','',4,1,'to_do - 0%','2018-09-29','',0,'Normal','2018-09-28 11:43:38'),(408,'MIS reports','Management reports to be produced on demand  ',50,0,NULL,0,54,'2018-10-20','',16,1,'to_do - 0%','2018-10-10','',0,'Normal','2018-09-28 11:44:39'),(409,'Reports','Regular reports to be produced for Stock-outs, Stock movement etc  ',50,0,NULL,0,54,'2018-10-20','',16,1,'to_do - 0%','2018-10-15','',0,'Normal','2018-09-28 11:45:22'),(410,'SAGE General Issues','Print supplier remittance – we are unable to print these remittances from Sage',50,0,NULL,0,54,'2018-10-25','',4,1,'to_do - 0%','2018-10-22','',0,'Normal','2018-09-28 11:46:08'),(411,'Upgrade','SAGE version upgrade to be carried out  ',50,0,NULL,0,54,'2018-10-15','',4,1,'to_do - 0%','2018-10-15','',0,'Normal','2018-09-28 11:46:55'),(412,'testtest','<p>sdssdc fs</p>',50,12,NULL,0,0,'1970-01-01','',7,4,'to_do - 0%','2018-10-04','',0,'Normal','2018-10-01 04:32:29'),(413,'urgent project','',50,12,NULL,0,5,'1970-01-01','',0,1,'to_do - 0%','0000-00-00','',1,'Normal','2018-10-01 04:34:05');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxes`
--

DROP TABLE IF EXISTS `taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `percentage` double NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxes`
--

LOCK TABLES `taxes` WRITE;
/*!40000 ALTER TABLE `taxes` DISABLE KEYS */;
INSERT INTO `taxes` VALUES (1,'Tax (16%)',16,0);
/*!40000 ALTER TABLE `taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `members` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,'HR TEAM','2,3,9',0),(2,'PAYROLL','2,6,8',0);
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_member_job_info`
--

DROP TABLE IF EXISTS `team_member_job_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_member_job_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `date_of_hire` date NOT NULL DEFAULT '0000-00-00',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `salary` double NOT NULL DEFAULT '0',
  `working_hours` double NOT NULL DEFAULT '1',
  `hourly_rate` double NOT NULL DEFAULT '1',
  `salary_term` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_member_job_info`
--

LOCK TABLES `team_member_job_info` WRITE;
/*!40000 ALTER TABLE `team_member_job_info` DISABLE KEYS */;
INSERT INTO `team_member_job_info` VALUES (1,2,'2016-01-01',0,30000,176,170.454545455,'Monthly'),(2,3,'2016-05-01',0,20000,176,113.636363636,'Monthly'),(3,4,'2016-05-01',0,35000,176,198.863636364,'Monthly'),(4,5,'2016-09-16',0,15000,176,85.2272727273,'Monthly'),(5,6,'2016-09-05',0,15000,176,85.2272727273,'Monthly'),(6,7,'0000-00-00',0,100000,176,568.181818182,'Monthly'),(7,8,'0000-00-00',0,20000,176,113.636363636,''),(8,9,'2016-03-07',0,20000,176,113.636363636,'Monthly'),(9,10,'2017-01-13',0,15000,176,85.2272727273,'Monthly'),(10,11,'2017-01-16',0,15000,176,85.2272727273,'Monthly'),(11,12,'0000-00-00',0,0,176,0,''),(12,13,'2017-08-03',0,200000,176,1136.36363636,'permanent'),(13,14,'0000-00-00',0,0,176,0,''),(14,15,'0000-00-00',0,0,176,0,''),(15,16,'0000-00-00',0,0,176,0,''),(16,17,'0000-00-00',0,0,176,0,''),(17,18,'0000-00-00',0,0,176,0,''),(18,19,'0000-00-00',0,0,176,0,''),(19,20,'0000-00-00',0,0,176,0,''),(20,22,'0000-00-00',0,0,176,0,''),(21,24,'0000-00-00',0,0,176,0,''),(22,25,'0000-00-00',0,0,176,0,''),(23,26,'0000-00-00',0,0,176,0,''),(24,28,'0000-00-00',0,0,176,0,''),(25,29,'0000-00-00',0,0,176,0,''),(26,30,'0000-00-00',0,0,176,0,''),(27,31,'0000-00-00',0,0,176,0,''),(28,32,'0000-00-00',0,0,176,0,''),(29,33,'0000-00-00',0,0,176,0,''),(30,34,'0000-00-00',0,0,176,0,''),(31,35,'0000-00-00',0,0,176,0,''),(32,36,'2018-01-11',0,6656,176,37.818181818182,'1'),(33,49,'2018-02-01',0,55,176,0.3125,'Monthly'),(34,50,'0000-00-00',0,0,176,0,''),(35,52,'0000-00-00',0,0,176,0,''),(36,53,'0000-00-00',0,0,176,0,''),(37,54,'0000-00-00',0,0,176,0,'');
/*!40000 ALTER TABLE `team_member_job_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_comments`
--

DROP TABLE IF EXISTS `ticket_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `files` longtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_comments`
--

LOCK TABLES `ticket_comments` WRITE;
/*!40000 ALTER TABLE `ticket_comments` DISABLE KEYS */;
INSERT INTO `ticket_comments` VALUES (1,5,'2017-12-16 06:32:16','printer error',1,'a:0:{}',0),(2,5,'2017-12-16 06:32:52','dsgfdsgdsgdsg',1,'a:0:{}',0),(3,5,'2018-01-13 09:30:14','thererher',2,'a:1:{i:0;a:2:{s:9:\"file_name\";s:37:\"ticket_file5a59d1a640746-IMG_0595.JPG\";s:9:\"file_size\";s:6:\"587747\";}}',0),(4,5,'2018-01-13 09:30:54','htertrntr',2,'a:0:{}',0),(5,5,'2018-01-20 09:27:10','dsfdsfds',3,'a:0:{}',0),(6,5,'2018-01-20 09:27:23','ghgdfg',3,'a:0:{}',0),(7,5,'2018-01-29 13:22:02','The system is not working well\n',4,'a:0:{}',0),(8,5,'2018-04-17 08:18:45','Working on it',4,'a:0:{}',0),(9,5,'2018-04-17 08:27:29','The speaker power cable needs to be checked to see if it has any fault.',5,'a:1:{i:0;a:2:{s:9:\"file_name\";s:66:\"ticket_file5ad5aff1ad25d-Screenshot-2018-2-3-Acting-Techniques.png\";s:9:\"file_size\";s:6:\"729070\";}}',0),(10,19,'2018-09-14 08:43:40','When a task is offered to a driver by the system, there needs to be a loud and distinct audio prompt / signal / sound raised. This will give the driver in indication that a new job has been offered.',6,'a:0:{}',0),(11,52,'2018-09-14 09:09:08','The Drivers request list is empty and cannot see the requests that have been sent by the rider.The Driver should see the rider that has requested for a ride.',7,'a:0:{}',0),(12,52,'2018-09-14 09:12:05','When the driver declines request from the rider,the  request cannot be sent to the other drivers around.',8,'a:0:{}',0),(13,52,'2018-09-14 09:29:44','The developers are working on it.They will finish working on the audio prompt by afternoon.',6,'a:0:{}',0),(14,52,'2018-09-14 13:43:41','The users cannot zoom around the map.They should be able to zoom around the map and see locations clearly.',9,'a:0:{}',0),(15,55,'2018-09-29 10:18:20','<p>cxzcc</p>',10,'a:0:{}',0),(16,53,'2018-09-30 03:35:54','<p>&nbsp;xz&nbsp;</p>',11,'a:0:{}',0),(17,5,'2018-10-01 04:38:25','<p>zxczsxs&nbsp;</p>',12,'a:0:{}',0),(18,5,'2018-10-01 04:39:14','<p>xczx scs</p>',13,'a:0:{}',0);
/*!40000 ALTER TABLE `ticket_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_types`
--

DROP TABLE IF EXISTS `ticket_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_types`
--

LOCK TABLES `ticket_types` WRITE;
/*!40000 ALTER TABLE `ticket_types` DISABLE KEYS */;
INSERT INTO `ticket_types` VALUES (1,'General Support',0),(2,'concrete preparation',0);
/*!40000 ALTER TABLE `ticket_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `external_reference` text COLLATE utf8_unicode_ci NOT NULL,
  `ticket_type_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `status` enum('new','client_replied','open','closed') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'new',
  `last_activity_at` datetime DEFAULT NULL,
  `assigned_to` int(11) NOT NULL DEFAULT '0',
  `labels` text COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (1,33,'',1,'issue one',5,'2017-12-16 06:32:16','open','2017-12-16 06:32:52',5,'low',1),(2,38,'fedbfdb',1,'issue with printer',5,'2018-01-13 09:30:14','closed','2018-01-13 09:30:54',16,'low',0),(3,38,'vdsvdsvds',1,'printer error',5,'2018-01-20 09:27:10','closed','2018-01-20 09:27:23',16,'high',0),(4,38,'',1,'Websites Developed',5,'2018-01-29 13:22:02','closed','2018-04-17 08:18:45',20,'high',0),(5,47,'The Director of Mustard Projectors raised the issue.',1,'Speaker Problem',5,'2018-04-17 08:27:29','new','2018-04-17 08:27:29',28,'high',1),(6,48,'',1,'Audio prompt for the Driver',19,'2018-09-14 08:43:40','closed','2018-09-14 09:29:44',0,'',0),(7,48,'',1,'Drivers request list',52,'2018-09-14 09:09:08','new','2018-09-14 09:09:08',0,'',0),(8,48,'',1,'Declination of requests',52,'2018-09-14 09:12:05','new','2018-09-14 09:12:05',0,'',0),(9,48,'',1,'Zooming around the map',52,'2018-09-14 13:43:41','new','2018-09-14 13:43:41',0,'',0),(10,50,'<ol><li>xzcz</li></ol>',1,'urgent',55,'2018-09-29 10:18:20','new','2018-09-29 10:18:20',0,NULL,0),(11,50,'<p>c xz</p>',2,'12345dfdf',53,'2018-09-30 03:35:54','new','2018-09-30 03:35:54',0,NULL,0),(12,49,'<p>zxcxz&nbsp; scsdc</p>',2,'xaz sds',5,'2018-10-01 04:38:25','new','2018-10-01 04:38:25',54,'high',0),(13,50,'<p>great</p>',2,'ttt',5,'2018-10-01 04:39:14','new','2018-10-01 04:39:14',0,'',0);
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` enum('staff','client') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'client',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `role_id` int(11) NOT NULL DEFAULT '0',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `message_checked_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `client_id` int(11) NOT NULL DEFAULT '0',
  `notification_checked_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_primary_contact` tinyint(1) NOT NULL DEFAULT '0',
  `job_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Untitled',
  `disable_login` tinyint(1) NOT NULL DEFAULT '0',
  `note` mediumtext COLLATE utf8_unicode_ci,
  `address` text COLLATE utf8_unicode_ci,
  `alternative_address` text COLLATE utf8_unicode_ci,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alternative_phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT '0000-00-00',
  `ssn` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` enum('male','female') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'male',
  `sticky_note` mediumtext COLLATE utf8_unicode_ci,
  `skype` text COLLATE utf8_unicode_ci,
  `enable_web_notification` tinyint(1) NOT NULL DEFAULT '1',
  `enable_email_notification` tinyint(1) NOT NULL DEFAULT '1',
  `landing_page` varchar(255) COLLATE utf8_unicode_ci DEFAULT '/dashboard',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_type` (`user_type`) USING BTREE,
  KEY `email` (`email`) USING BTREE,
  KEY `client_id` (`client_id`) USING BTREE,
  KEY `deleted` (`deleted`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'System1','Administrator','client',1,0,'test@teamkazi.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','0000-00-00 00:00:00',0,'2019-03-12 09:28:56',0,'Admin',0,NULL,'','','','','0000-00-00','','male',NULL,'',1,1,'/dashboard','2016-12-17 06:05:48',0),(2,'Team Member','2','staff',1,0,'team2@teamkazi.com','e10adc3949ba59abbe56e057f20f883e',NULL,'active','2017-04-18 09:48:23',0,'2017-04-18 12:49:24',0,'Lead Developer',0,NULL,'','','','','0000-00-00','','male',NULL,'',1,1,'/dashboard','2016-12-03 09:54:52',0),(3,'Team Member','5','staff',0,0,'team5@teamkazi.com','e10adc3949ba59abbe56e057f20f883e',NULL,'active','2017-01-01 10:30:00',0,'2017-01-19 09:09:41',0,'Developer',0,NULL,'','','','','0000-00-00','','male',NULL,'',1,1,'/dashboard','2016-12-07 09:45:10',0),(4,'Samson ','Mbuthia','staff',0,0,'s.mbuthia@wizag.biz','aafe06e46da6f8158e7a90926b1b7a84',NULL,'inactive','0000-00-00 00:00:00',0,'2016-12-28 09:11:35',0,'Developer',1,NULL,'',NULL,'',NULL,'0000-00-00',NULL,'male',NULL,NULL,1,1,'/dashboard','2016-12-07 09:46:17',0),(5,'Teamkazi','Adminstrator','staff',1,0,'admin@teamkazi.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','2018-03-20 12:54:07',0,'2018-04-26 13:21:38',0,'Full stack Developer',0,NULL,'2nd Floor UNGA House,\r\nWestlands, Nairobi, Kenya','10th Floor UNGA House,\r\nWestlands, Nairobi, Kenya',' +254 732456456 ','+254 711408108','2018-01-17','','male',NULL,'',1,1,'/dashboard','2016-12-07 09:48:20',0),(6,'Team Member','1','staff',1,0,'team1@teamkazi.com','e10adc3949ba59abbe56e057f20f883e',NULL,'active','2017-04-25 20:28:33',0,'2017-04-22 04:02:47',0,'Admin',0,NULL,'','','','','0000-00-00','','female','test\ntest','',1,1,'/dashboard','2016-12-07 09:49:40',0),(7,'Mr','Director','staff',1,0,'director@teamkazi.com','e10adc3949ba59abbe56e057f20f883e',NULL,'active','2017-04-19 08:57:09',0,'2017-04-19 09:07:17',0,'Director',0,NULL,'','','','','0000-00-00','','male','','',1,1,'/dashboard','2016-12-07 09:50:06',0),(8,'Team Member','4','staff',0,0,'team4@teamkazi.com','e10adc3949ba59abbe56e057f20f883e',NULL,'active','0000-00-00 00:00:00',0,'2017-01-19 08:49:36',0,'Administration & Support',0,NULL,'','','','','0000-00-00','','male',NULL,'',1,1,'/dashboard','2016-12-07 09:50:33',0),(9,'Team Member','6','staff',0,0,'team6@teamkazi.com','e10adc3949ba59abbe56e057f20f883e',NULL,'active','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'Consultant',0,NULL,'','','','','0000-00-00','','male',NULL,'',1,1,'/dashboard','2016-12-17 10:42:40',0),(10,'Team Member','7','staff',0,0,'team7@teamkazi.com','e10adc3949ba59abbe56e057f20f883e',NULL,'active','2017-01-14 07:32:02',0,'2017-01-19 13:08:13',0,'Web Developer',0,NULL,'','','','','0000-00-00','','male',NULL,'',1,1,'/dashboard','2017-01-14 06:55:10',0),(11,'Mansur','Demo','staff',0,0,'mansur@teamkazi.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','0000-00-00 00:00:00',0,'2017-04-18 08:45:05',0,'Developer',0,NULL,'','','','','0000-00-00','','male','','',1,1,'/dashboard','2017-01-17 15:06:25',0),(12,'RCP','RCP','staff',0,1,'team10@test.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'BA',0,NULL,'',NULL,'',NULL,'0000-00-00',NULL,'male',NULL,NULL,1,1,'/dashboard','2017-04-18 11:03:25',0),(13,'George','George','staff',0,5,'sammymwecher@gmail.com','e10adc3949ba59abbe56e057f20f883e',NULL,'active','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'Site manager',0,NULL,'s.nalwa@tikone.biz',NULL,'0719242846',NULL,'0000-00-00',NULL,'male',NULL,NULL,1,1,'/dashboard','2017-08-03 06:55:53',0),(14,'Harjot','Bambra','staff',0,7,'harjotb@gmail.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','2017-10-09 01:44:05',0,'2017-10-09 14:35:35',0,'Project Manager',0,NULL,'','','','','0000-00-00','','male',NULL,'',1,1,'/dashboard','2017-10-06 03:29:27',0),(15,'Mukul','Kishore','staff',0,8,'mukul@thinkstrawberries.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','2017-10-09 14:31:10',0,'2017-10-09 14:30:26',0,'Client',0,NULL,'','','','','0000-00-00','','male',NULL,'',1,1,'/projects/all_tasks','2017-10-06 03:32:15',0),(16,'Alvin','Musungu','staff',0,2,'a.musungu@wizag.biz','aafe06e46da6f8158e7a90926b1b7a84',NULL,'active','2018-03-08 12:12:47',0,'0000-00-00 00:00:00',0,'Lead Developer',0,NULL,'',NULL,'',NULL,'0000-00-00',NULL,'male',NULL,NULL,1,1,'/dashboard','2017-10-07 05:45:18',0),(17,'Lily','Kanaga','staff',0,0,'l.kanaga@wizag.biz','25d55ad283aa400af464c76d713c07ad',NULL,'active','0000-00-00 00:00:00',0,'2017-10-07 06:57:43',0,'UI / UX Designer',0,NULL,'',NULL,'',NULL,'0000-00-00',NULL,'female',NULL,NULL,1,1,'/dashboard','2017-10-07 05:46:25',0),(18,'Vincent','Kituyi','staff',0,0,'v.kituyi@wizag.biz','25d55ad283aa400af464c76d713c07ad',NULL,'active','0000-00-00 00:00:00',0,'2017-10-27 04:25:03',0,'Back-end Developer',0,NULL,'',NULL,'',NULL,'0000-00-00',NULL,'male',NULL,NULL,1,1,'/dashboard','2017-10-07 05:48:04',0),(19,'Paramjeet','Bhambra','staff',1,0,'pj@wizag.biz','25d55ad283aa400af464c76d713c07ad',NULL,'active','2017-10-07 05:55:05',0,'2017-10-07 05:55:04',0,'Project Manager - Development',0,NULL,'',NULL,'',NULL,'0000-00-00',NULL,'male',NULL,NULL,1,1,'/dashboard','2017-10-07 05:50:54',0),(20,'Charles','Mwakio','staff',1,0,'c.mwakio@tikone.biz','25d55ad283aa400af464c76d713c07ad',NULL,'active','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'Sales Manager ',0,NULL,'',NULL,'',NULL,'0000-00-00',NULL,'male',NULL,NULL,1,1,'/dashboard','2017-10-07 09:48:54',0),(22,'Kevin','Njenga','staff',0,0,'k.njenga@wizag.biz','25d55ad283aa400af464c76d713c07ad',NULL,'active','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'Web Developer',0,NULL,'',NULL,'',NULL,'0000-00-00',NULL,'male',NULL,NULL,1,1,'/dashboard','2017-10-25 07:16:01',0),(23,'maurice','wagura','client',0,0,'23','25d55ad283aa400af464c76d713c07ad',NULL,'active','2017-11-04 17:47:15',11,'2017-11-04 17:44:45',1,'',0,NULL,NULL,NULL,'0700000000',NULL,'0000-00-00',NULL,'male',NULL,'',1,1,'/dashboard','2017-11-04 17:42:51',0),(24,'Susan','Kingori','staff',0,2,'s.kingori@tikone.biz','25d55ad283aa400af464c76d713c07ad',NULL,'active','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'Sage Expert',0,NULL,'',NULL,'',NULL,'0000-00-00',NULL,'female',NULL,NULL,1,1,'/dashboard','2017-11-04 17:53:18',0),(25,'Soni','Tikone','staff',0,3,'soni@tikone.biz','25d55ad283aa400af464c76d713c07ad',NULL,'active','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'HR',0,NULL,'',NULL,'',NULL,'0000-00-00',NULL,'female',NULL,NULL,1,1,'/dashboard','2017-11-04 18:02:25',0),(26,'Demo','User','staff',0,0,'demo@teamkazi.com','e10adc3949ba59abbe56e057f20f883e',NULL,'active','2018-01-08 07:51:30',0,'2018-01-08 07:48:49',0,'Demo User',0,NULL,'',NULL,'',NULL,'0000-00-00',NULL,'male',NULL,NULL,1,1,'/dashboard','2017-11-10 11:50:44',0),(27,'Charles ','Muchiri','client',0,0,'muchiri@rozaneproperties.co.ke','50503e008161592400fb8eeeb1301efb',NULL,'active','0000-00-00 00:00:00',13,'0000-00-00 00:00:00',1,'Untitled',0,NULL,NULL,NULL,NULL,NULL,'0000-00-00',NULL,'male',NULL,NULL,1,1,'/dashboard','2017-12-08 12:00:38',0),(28,'Bernard','Baraza','staff',0,0,'b.baraza@wizag.biz','ca1f319d4c143b70017134a810a78ffb',NULL,'active','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'Project manager',0,NULL,'b.baraza@wizag.biz',NULL,'',NULL,'0000-00-00',NULL,'male',NULL,NULL,1,1,'/dashboard','2017-12-19 07:59:41',0),(29,'Tom','Hughes','staff',0,0,'tomhughes@gmail.com','ca1f319d4c143b70017134a810a78ffb',NULL,'active','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'Lead Consultant',0,NULL,'P.O BOX 75897 - 00100 NAIROBI, KENYA',NULL,'+254790450056',NULL,'0000-00-00',NULL,'male',NULL,NULL,1,1,'/dashboard','2017-12-19 08:01:22',0),(30,'Mathew ','Samuels','staff',0,0,'mathewsamuels@yahoo.com','ca1f319d4c143b70017134a810a78ffb',NULL,'active','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'Structural Engineer',0,NULL,'P.O BOX 45454 - 00900',NULL,'+2547905006',NULL,'0000-00-00',NULL,'male',NULL,NULL,1,1,'/dashboard','2017-12-19 08:08:51',0),(31,'Xu','Ming','staff',0,0,'xuming@gmail.com','ca1f319d4c143b70017134a810a78ffb',NULL,'active','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'Architect',0,NULL,'P.O BOX 9934- 00700, NAIROBI',NULL,'',NULL,'0000-00-00',NULL,'female',NULL,NULL,1,1,'/dashboard','2017-12-19 08:10:40',0),(32,'Stacey','Benz','staff',0,0,'sbenz@gmail.com','ca1f319d4c143b70017134a810a78ffb',NULL,'active','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'Civil engineer',0,NULL,'P.O BOX 888888-00500',NULL,'+254-20-293-6777',NULL,'0000-00-00',NULL,'male',NULL,NULL,1,1,'/dashboard','2017-12-19 08:15:11',0),(33,'Peter','waweru','staff',0,0,'pwaweru@gmail.com','ca1f319d4c143b70017134a810a78ffb',NULL,'active','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'Lead Designer',0,NULL,'',NULL,'+254-20-300-8800',NULL,'0000-00-00',NULL,'male',NULL,NULL,1,1,'/dashboard','2017-12-19 08:21:06',0),(34,'Intex Construction','LTD','staff',0,0,'intexconstruction@gmail.com','ca1f319d4c143b70017134a810a78ffb',NULL,'active','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'Contractor',0,NULL,'P.O BOX 778834',NULL,'',NULL,'0000-00-00',NULL,'male',NULL,NULL,1,1,'/dashboard','2017-12-19 08:24:53',0),(35,'Intex Construction','LTD','staff',0,0,'intex@webmail.com','ca1f319d4c143b70017134a810a78ffb',NULL,'active','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'Construction supplier',0,NULL,'P.O BOX 456-00100',NULL,'',NULL,'0000-00-00',NULL,'male',NULL,NULL,1,1,'/dashboard','2017-12-19 11:13:47',0),(36,'John','Wick','staff',0,0,'johnwick@teamkazi.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'.Net developer',0,NULL,'P.O.Box 634-00100 Nairobi',NULL,'073565676',NULL,'0000-00-00',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-01-11 05:41:28',0),(37,'Simon','Apps','client',0,0,'s.mwangi@wizag.biz','a1fa59e79bba1a38bb0684d3298c9ddd',NULL,'active','0000-00-00 00:00:00',17,'0000-00-00 00:00:00',1,'Untitled',0,NULL,NULL,NULL,NULL,NULL,'0000-00-00',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-01-12 07:22:54',0),(38,'Rhhjbuykff','Tyfyfyy','client',0,0,'fyigyh@gmail.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'Untitled',0,NULL,NULL,NULL,NULL,NULL,'0000-00-00',NULL,'',NULL,NULL,1,1,'/dashboard','0000-00-00 00:00:00',0),(39,'Big','Show','client',0,0,'bigshow@wwe.com','a1fa59e79bba1a38bb0684d3298c9ddd',NULL,'active','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'Untitled',0,NULL,NULL,NULL,NULL,NULL,'0000-00-00',NULL,'',NULL,NULL,1,1,'/dashboard','0000-00-00 00:00:00',0),(40,'His','Her','client',0,0,'hisher@grm.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'Untitled',0,NULL,NULL,NULL,NULL,NULL,'0000-00-00',NULL,'',NULL,NULL,1,1,'/dashboard','0000-00-00 00:00:00',0),(41,'Hy','Hd','client',0,0,'hyhd@teamkazi.com','2e9ec317e197819358fbc43afca7d837',NULL,'active','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'Untitled',0,NULL,NULL,NULL,NULL,NULL,'0000-00-00',NULL,'',NULL,NULL,1,1,'/dashboard','0000-00-00 00:00:00',0),(42,'Hy','Hd','client',0,0,'hyhd@teamkazi.com','2e9ec317e197819358fbc43afca7d837',NULL,'active','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'Untitled',0,NULL,NULL,NULL,NULL,NULL,'0000-00-00',NULL,'',NULL,NULL,1,1,'/dashboard','0000-00-00 00:00:00',0),(43,'Hdugyihi','Yufuifuugoogog','client',0,0,'dgihihyf@ggg.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'Untitled',0,NULL,NULL,NULL,NULL,NULL,'0000-00-00',NULL,'',NULL,NULL,1,1,'/dashboard','0000-00-00 00:00:00',0),(44,'Hdugyihi','Yufuifuugoogog','client',0,0,'dgihihyf@ggg.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'Untitled',0,NULL,NULL,NULL,NULL,NULL,'0000-00-00',NULL,'',NULL,NULL,1,1,'/dashboard','0000-00-00 00:00:00',0),(45,'Hdugyihi','Yufuifuugoogog','client',0,0,'dgihihyf@ggg.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'Untitled',0,NULL,NULL,NULL,NULL,NULL,'0000-00-00',NULL,'',NULL,NULL,1,1,'/dashboard','0000-00-00 00:00:00',0),(46,'Hdugyihi','Yufuifuugoogog','client',0,0,'dgihihyf@gggg.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'Untitled',0,NULL,NULL,NULL,NULL,NULL,'0000-00-00',NULL,'',NULL,NULL,1,1,'/dashboard','0000-00-00 00:00:00',0),(47,'ROBERT','KARUKU','client',0,0,'r.karuku@wizag.biz','886a39499fc8ada1ca185dc5ae911c48',NULL,'active','0000-00-00 00:00:00',18,'0000-00-00 00:00:00',1,'Untitled',0,NULL,NULL,NULL,NULL,NULL,'0000-00-00',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-03-05 08:34:31',0),(48,'Martin','Maina','client',0,0,'k.maina@tikone.biz','9642ed2b1526cd924b5b2ca6785eb705',NULL,'active','0000-00-00 00:00:00',20,'0000-00-00 00:00:00',1,'Untitled',0,NULL,NULL,NULL,NULL,NULL,'0000-00-00',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-04-17 08:14:46',0),(49,'Nelllys','Oneya','staff',0,1,'nellys@vexengineers.com','1d6376894535953bbf8cb4252b6eb453',NULL,'active','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'Accountant',0,NULL,'nellys@vexengineers.com',NULL,'0736778095',NULL,'0000-00-00',NULL,'female',NULL,NULL,1,1,'/dashboard','2018-04-17 08:41:39',0),(50,'SARK','Kenya','staff',0,0,'sark@teamkazi.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'Company',0,NULL,'',NULL,'',NULL,'0000-00-00',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-05-17 11:13:05',0),(51,'Samuel ','Kuria ','client',0,0,'kmaina@obsltd.biz','4c49ae02882fa3efa4cb27a5d391658c',NULL,'active','0000-00-00 00:00:00',21,'0000-00-00 00:00:00',1,'Untitled',0,NULL,NULL,NULL,NULL,NULL,'0000-00-00',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-05-22 07:45:56',0),(52,'Diram','Bora','staff',1,0,'dirambora97@gmail.com','b1bac6b9bbf0a0b129d14f8b96887e48',NULL,'active','0000-00-00 00:00:00',0,'2018-09-14 09:46:29',0,'Intern',0,NULL,'dirambora97@gmail.com',NULL,'0723212256',NULL,'0000-00-00',NULL,'female',NULL,NULL,1,1,'/dashboard','2018-09-14 08:29:13',0),(53,'Shyam','Kerai','client',0,0,'syamkerai14@gmail.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','0000-00-00 00:00:00',24,'0000-00-00 00:00:00',0,'Tester',0,NULL,'',NULL,'',NULL,'0000-00-00',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-09-28 06:50:57',0),(54,'Danson','Muchemi','staff',0,0,'d.muchemi@wizag.biz','25d55ad283aa400af464c76d713c07ad',NULL,'active','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'Consultant',0,NULL,'',NULL,'',NULL,'0000-00-00',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-09-28 08:50:09',0),(55,'Farzana','Charania','client',0,0,'info@wizag.biz','25d55ad283aa400af464c76d713c07ad',NULL,'active','0000-00-00 00:00:00',24,'0000-00-00 00:00:00',1,'',0,NULL,NULL,NULL,'',NULL,'0000-00-00',NULL,'female',NULL,'',1,1,'/dashboard','2018-09-28 11:49:33',0);
