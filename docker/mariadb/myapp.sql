-- MariaDB dump 10.19  Distrib 10.7.8-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: designsystem
-- ------------------------------------------------------
-- Server version	10.7.8-MariaDB-1:10.7.8+maria~ubu2004

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `designsystem`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `designsystem` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci */;

USE `designsystem`;

--
-- Table structure for table `prjc_dico_data`
--

DROP TABLE IF EXISTS `prjc_dico_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_dico_data` (
  `id_data` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_owner` int(10) unsigned DEFAULT NULL,
  `sys_creation_date` datetime DEFAULT NULL,
  `sys_last_mod_date` datetime DEFAULT NULL,
  `sys_last_mod_user` int(10) unsigned DEFAULT NULL,
  `dico_name` varchar(100) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `short_label` varchar(30) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `dico_id` varchar(40) DEFAULT NULL,
  `dico_value_id` varchar(40) DEFAULT NULL,
  `archived` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_data`),
  KEY `id_owner` (`id_owner`),
  KEY `sys_last_mod_user` (`sys_last_mod_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_dico_data`
--

LOCK TABLES `prjc_dico_data` WRITE;
/*!40000 ALTER TABLE `prjc_dico_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_dico_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_dico_data_group`
--

DROP TABLE IF EXISTS `prjc_dico_data_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_dico_data_group` (
  `id_data_group` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_data` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_data_group`),
  UNIQUE KEY `id_data` (`id_data`,`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_dico_data_group`
--

LOCK TABLES `prjc_dico_data_group` WRITE;
/*!40000 ALTER TABLE `prjc_dico_data_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_dico_data_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_dico_data_group_mode`
--

DROP TABLE IF EXISTS `prjc_dico_data_group_mode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_dico_data_group_mode` (
  `id_data_group_mode` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_data_group` int(10) unsigned NOT NULL,
  `mode` int(10) unsigned NOT NULL,
  `date_valid` date DEFAULT NULL,
  PRIMARY KEY (`id_data_group_mode`),
  UNIQUE KEY `id_data_group` (`id_data_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_dico_data_group_mode`
--

LOCK TABLES `prjc_dico_data_group_mode` WRITE;
/*!40000 ALTER TABLE `prjc_dico_data_group_mode` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_dico_data_group_mode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_dico_deleted`
--

DROP TABLE IF EXISTS `prjc_dico_deleted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_dico_deleted` (
  `id_data` int(10) unsigned NOT NULL,
  `id_owner` int(10) unsigned DEFAULT NULL,
  `sys_creation_date` datetime DEFAULT NULL,
  `sys_last_mod_date` datetime DEFAULT NULL,
  `sys_last_mod_user` int(10) unsigned DEFAULT NULL,
  `dico_name` varchar(100) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `short_label` varchar(30) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `dico_id` varchar(40) DEFAULT NULL,
  `dico_value_id` varchar(40) DEFAULT NULL,
  `archived` int(1) DEFAULT NULL,
  KEY `id_data` (`id_data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_dico_deleted`
--

LOCK TABLES `prjc_dico_deleted` WRITE;
/*!40000 ALTER TABLE `prjc_dico_deleted` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_dico_deleted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_dicostatus_data`
--

DROP TABLE IF EXISTS `prjc_dicostatus_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_dicostatus_data` (
  `id_data` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_owner` int(10) unsigned DEFAULT NULL,
  `sys_creation_date` datetime DEFAULT NULL,
  `sys_last_mod_date` datetime DEFAULT NULL,
  `sys_last_mod_user` int(10) unsigned DEFAULT NULL,
  `id_dico` int(10) unsigned DEFAULT NULL,
  `status` int(10) unsigned DEFAULT NULL,
  `effective_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id_data`),
  KEY `id_owner` (`id_owner`),
  KEY `sys_last_mod_user` (`sys_last_mod_user`),
  KEY `id_dico` (`id_dico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_dicostatus_data`
--

LOCK TABLES `prjc_dicostatus_data` WRITE;
/*!40000 ALTER TABLE `prjc_dicostatus_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_dicostatus_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_dicostatus_data_group`
--

DROP TABLE IF EXISTS `prjc_dicostatus_data_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_dicostatus_data_group` (
  `id_data_group` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_data` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_data_group`),
  UNIQUE KEY `id_data` (`id_data`,`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_dicostatus_data_group`
--

LOCK TABLES `prjc_dicostatus_data_group` WRITE;
/*!40000 ALTER TABLE `prjc_dicostatus_data_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_dicostatus_data_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_dicostatus_data_group_mode`
--

DROP TABLE IF EXISTS `prjc_dicostatus_data_group_mode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_dicostatus_data_group_mode` (
  `id_data_group_mode` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_data_group` int(10) unsigned NOT NULL,
  `mode` int(10) unsigned NOT NULL,
  `date_valid` date DEFAULT NULL,
  PRIMARY KEY (`id_data_group_mode`),
  UNIQUE KEY `id_data_group` (`id_data_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_dicostatus_data_group_mode`
--

LOCK TABLES `prjc_dicostatus_data_group_mode` WRITE;
/*!40000 ALTER TABLE `prjc_dicostatus_data_group_mode` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_dicostatus_data_group_mode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_dicostatus_deleted`
--

DROP TABLE IF EXISTS `prjc_dicostatus_deleted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_dicostatus_deleted` (
  `id_data` int(10) unsigned NOT NULL,
  `id_owner` int(10) unsigned DEFAULT NULL,
  `sys_creation_date` datetime DEFAULT NULL,
  `sys_last_mod_date` datetime DEFAULT NULL,
  `sys_last_mod_user` int(10) unsigned DEFAULT NULL,
  `id_dico` int(10) unsigned DEFAULT NULL,
  `status` int(10) unsigned DEFAULT NULL,
  `effective_date` datetime DEFAULT NULL,
  KEY `id_data` (`id_data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_dicostatus_deleted`
--

LOCK TABLES `prjc_dicostatus_deleted` WRITE;
/*!40000 ALTER TABLE `prjc_dicostatus_deleted` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_dicostatus_deleted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_evtlog_data`
--

DROP TABLE IF EXISTS `prjc_evtlog_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_evtlog_data` (
  `id_data` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_owner` int(10) unsigned DEFAULT NULL,
  `sys_creation_date` datetime DEFAULT NULL,
  `sys_last_mod_date` datetime DEFAULT NULL,
  `sys_last_mod_user` int(10) unsigned DEFAULT NULL,
  `evt_datetime` datetime DEFAULT NULL,
  `evt_type` int(10) unsigned DEFAULT NULL,
  `evt_name` varchar(50) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `id_sudoer` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_data`),
  KEY `id_owner` (`id_owner`),
  KEY `sys_last_mod_user` (`sys_last_mod_user`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_evtlog_data`
--

LOCK TABLES `prjc_evtlog_data` WRITE;
/*!40000 ALTER TABLE `prjc_evtlog_data` DISABLE KEYS */;
INSERT INTO `prjc_evtlog_data` VALUES
(1,NULL,'2025-11-06 14:06:52','2025-11-06 14:06:52',NULL,'2025-11-06 14:06:52',16,'VZN_REC_INSERT','Core_Library_Group::AddDataGroup',NULL),
(2,NULL,'2025-11-06 14:06:52','2025-11-06 14:06:52',NULL,'2025-11-06 14:06:52',16,'VZN_REC_INSERT','Core_Library_Resource_XML_VarSet::SimpleInsertData',NULL),
(3,NULL,'2025-11-06 14:06:52','2025-11-06 14:06:52',NULL,'2025-11-06 14:06:52',16,'VZN_REC_INSERT','Core_Library_Group::AddDataGroup',NULL),
(4,NULL,'2025-11-06 14:06:52','2025-11-06 14:06:52',NULL,'2025-11-06 14:06:52',16,'VZN_REC_INSERT','Core_Library_Resource_XML_VarSet::SimpleInsertData',NULL),
(5,NULL,'2025-11-06 14:06:52','2025-11-06 14:06:52',NULL,'2025-11-06 14:06:52',16,'VZN_REC_INSERT','Core_Library_Group::AddDataGroup',NULL),
(6,NULL,'2025-11-06 14:06:52','2025-11-06 14:06:52',NULL,'2025-11-06 14:06:52',16,'VZN_REC_INSERT','Core_Library_Resource_XML_VarSet::SimpleInsertData',NULL),
(7,NULL,'2025-11-06 14:06:52','2025-11-06 14:06:52',NULL,'2025-11-06 14:06:52',16,'VZN_REC_INSERT','Core_Library_Group::AddDataGroup',NULL),
(8,NULL,'2025-11-06 14:06:52','2025-11-06 14:06:52',NULL,'2025-11-06 14:06:52',16,'VZN_REC_INSERT','Core_Library_Resource_XML_VarSet::SimpleInsertData',NULL),
(9,NULL,'2025-11-06 14:06:53','2025-11-06 14:06:53',NULL,'2025-11-06 14:06:53',16,'VZN_REC_INSERT','Core_Library_Group::AddDataGroup',NULL),
(10,NULL,'2025-11-06 14:06:53','2025-11-06 14:06:53',NULL,'2025-11-06 14:06:53',16,'VZN_REC_INSERT','Core_Library_Resource_XML_VarSet::SimpleInsertData',NULL),
(11,NULL,'2025-11-06 14:06:53','2025-11-06 14:06:53',NULL,'2025-11-06 14:06:53',16,'VZN_REC_INSERT','Core_Library_Group::AddDataGroup',NULL),
(12,NULL,'2025-11-06 14:06:53','2025-11-06 14:06:53',NULL,'2025-11-06 14:06:53',16,'VZN_REC_INSERT','Core_Library_Resource_XML_VarSet::SimpleInsertData',NULL),
(13,NULL,'2025-11-06 14:06:53','2025-11-06 14:06:53',NULL,'2025-11-06 14:06:53',16,'VZN_REC_INSERT','Core_Library_Group::AddDataGroup',NULL),
(14,NULL,'2025-11-06 14:06:53','2025-11-06 14:06:53',NULL,'2025-11-06 14:06:53',16,'VZN_REC_INSERT','Core_Library_Resource_XML_VarSet::SimpleInsertData',NULL),
(15,NULL,'2025-11-06 14:06:54','2025-11-06 14:06:54',NULL,'2025-11-06 14:06:54',16,'VZN_REC_INSERT','Core_Library_Group::AddDataGroup',NULL),
(16,NULL,'2025-11-06 14:06:54','2025-11-06 14:06:54',NULL,'2025-11-06 14:06:54',16,'VZN_REC_INSERT','Core_Library_Resource_XML_VarSet::SimpleInsertData',NULL),
(17,NULL,'2025-11-06 14:06:54','2025-11-06 14:06:54',NULL,'2025-11-06 14:06:54',31,'VZN_EVT_GRP_ADD','Add root group \"Main\" (1), axis = 1',NULL),
(18,NULL,'2025-11-06 14:06:54','2025-11-06 14:06:54',NULL,'2025-11-06 14:06:54',16,'VZN_REC_INSERT','InitApi::_createUser',NULL),
(19,NULL,'2025-11-06 14:06:54','2025-11-06 14:06:54',NULL,'2025-11-06 14:06:54',16,'VZN_REC_INSERT','InitApi::_insertDataGroup',NULL),
(20,NULL,'2025-11-06 14:06:54','2025-11-06 14:06:54',NULL,'2025-11-06 14:06:54',16,'VZN_REC_INSERT','InitApi::_insertDataGroup',NULL),
(21,NULL,'2025-11-06 14:06:54','2025-11-06 14:06:54',NULL,'2025-11-06 14:06:54',16,'VZN_REC_INSERT','Core_Library_Group::AddDataGroup',NULL),
(22,NULL,'2025-11-06 14:06:54','2025-11-06 14:06:54',NULL,'2025-11-06 14:06:54',16,'VZN_REC_INSERT','Core_Library_Resource_XML_VarSet::SimpleInsertData',NULL),
(23,2,'2025-11-06 14:06:54','2025-11-06 14:06:54',2,'2025-11-06 14:06:54',16,'VZN_REC_INSERT','Core_Library_Group::AddDataGroup',NULL),
(24,2,'2025-11-06 14:06:54','2025-11-06 14:06:54',2,'2025-11-06 14:06:54',16,'VZN_REC_INSERT','Core_Library_Resource_XML_VarSet::SimpleInsertData',NULL);
/*!40000 ALTER TABLE `prjc_evtlog_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_evtlog_data_group`
--

DROP TABLE IF EXISTS `prjc_evtlog_data_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_evtlog_data_group` (
  `id_data_group` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_data` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_data_group`),
  UNIQUE KEY `id_data` (`id_data`,`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_evtlog_data_group`
--

LOCK TABLES `prjc_evtlog_data_group` WRITE;
/*!40000 ALTER TABLE `prjc_evtlog_data_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_evtlog_data_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_evtlog_data_group_mode`
--

DROP TABLE IF EXISTS `prjc_evtlog_data_group_mode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_evtlog_data_group_mode` (
  `id_data_group_mode` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_data_group` int(10) unsigned NOT NULL,
  `mode` int(10) unsigned NOT NULL,
  `date_valid` date DEFAULT NULL,
  PRIMARY KEY (`id_data_group_mode`),
  UNIQUE KEY `id_data_group` (`id_data_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_evtlog_data_group_mode`
--

LOCK TABLES `prjc_evtlog_data_group_mode` WRITE;
/*!40000 ALTER TABLE `prjc_evtlog_data_group_mode` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_evtlog_data_group_mode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_evtlog_deleted`
--

DROP TABLE IF EXISTS `prjc_evtlog_deleted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_evtlog_deleted` (
  `id_data` int(10) unsigned NOT NULL,
  `id_owner` int(10) unsigned DEFAULT NULL,
  `sys_creation_date` datetime DEFAULT NULL,
  `sys_last_mod_date` datetime DEFAULT NULL,
  `sys_last_mod_user` int(10) unsigned DEFAULT NULL,
  `evt_datetime` datetime DEFAULT NULL,
  `evt_type` int(10) unsigned DEFAULT NULL,
  `evt_name` varchar(50) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `id_sudoer` int(10) unsigned DEFAULT NULL,
  KEY `id_data` (`id_data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_evtlog_deleted`
--

LOCK TABLES `prjc_evtlog_deleted` WRITE;
/*!40000 ALTER TABLE `prjc_evtlog_deleted` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_evtlog_deleted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_hl7message_data`
--

DROP TABLE IF EXISTS `prjc_hl7message_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_hl7message_data` (
  `id_data` int(10) unsigned NOT NULL,
  `id_owner` int(10) unsigned DEFAULT NULL,
  `sys_creation_date` datetime DEFAULT NULL,
  `sys_last_mod_date` datetime DEFAULT NULL,
  `sys_last_mod_user` int(10) unsigned DEFAULT NULL,
  `id_message` varchar(200) DEFAULT NULL,
  `app_src` varchar(200) DEFAULT NULL,
  `app_fac` varchar(200) DEFAULT NULL,
  `nature` varchar(50) DEFAULT NULL,
  `date_message` date DEFAULT NULL,
  `id_reponse` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  PRIMARY KEY (`id_data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_hl7message_data`
--

LOCK TABLES `prjc_hl7message_data` WRITE;
/*!40000 ALTER TABLE `prjc_hl7message_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_hl7message_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_hl7message_data_group`
--

DROP TABLE IF EXISTS `prjc_hl7message_data_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_hl7message_data_group` (
  `id_data_group` int(10) unsigned NOT NULL,
  `id_data` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_data_group`),
  UNIQUE KEY `id_data` (`id_data`,`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_hl7message_data_group`
--

LOCK TABLES `prjc_hl7message_data_group` WRITE;
/*!40000 ALTER TABLE `prjc_hl7message_data_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_hl7message_data_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_hl7message_data_group_mode`
--

DROP TABLE IF EXISTS `prjc_hl7message_data_group_mode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_hl7message_data_group_mode` (
  `id_data_group_mode` int(10) unsigned NOT NULL,
  `id_data_group` int(10) unsigned NOT NULL,
  `mode` int(10) unsigned NOT NULL,
  `date_valid` date DEFAULT NULL,
  PRIMARY KEY (`id_data_group_mode`),
  UNIQUE KEY `id_data_group` (`id_data_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_hl7message_data_group_mode`
--

LOCK TABLES `prjc_hl7message_data_group_mode` WRITE;
/*!40000 ALTER TABLE `prjc_hl7message_data_group_mode` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_hl7message_data_group_mode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_hl7message_deleted`
--

DROP TABLE IF EXISTS `prjc_hl7message_deleted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_hl7message_deleted` (
  `id_data` int(10) unsigned NOT NULL,
  `id_owner` int(10) unsigned DEFAULT NULL,
  `sys_creation_date` datetime DEFAULT NULL,
  `sys_last_mod_date` datetime DEFAULT NULL,
  `sys_last_mod_user` int(10) unsigned DEFAULT NULL,
  `id_message` varchar(200) DEFAULT NULL,
  `app_src` varchar(200) DEFAULT NULL,
  `app_fac` varchar(200) DEFAULT NULL,
  `nature` varchar(50) DEFAULT NULL,
  `date_message` date DEFAULT NULL,
  `id_reponse` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  KEY `id_data` (`id_data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_hl7message_deleted`
--

LOCK TABLES `prjc_hl7message_deleted` WRITE;
/*!40000 ALTER TABLE `prjc_hl7message_deleted` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_hl7message_deleted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_pj_auth_flooding`
--

DROP TABLE IF EXISTS `prjc_pj_auth_flooding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_pj_auth_flooding` (
  `id_auth_flooding` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(100) NOT NULL,
  `creation_date` int(11) NOT NULL,
  PRIMARY KEY (`id_auth_flooding`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_pj_auth_flooding`
--

LOCK TABLES `prjc_pj_auth_flooding` WRITE;
/*!40000 ALTER TABLE `prjc_pj_auth_flooding` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_pj_auth_flooding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_pj_auth_lock`
--

DROP TABLE IF EXISTS `prjc_pj_auth_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_pj_auth_lock` (
  `id_auth_lock` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(100) NOT NULL,
  `lock_until` int(11) NOT NULL,
  `creation_date` int(11) NOT NULL,
  PRIMARY KEY (`id_auth_lock`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_pj_auth_lock`
--

LOCK TABLES `prjc_pj_auth_lock` WRITE;
/*!40000 ALTER TABLE `prjc_pj_auth_lock` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_pj_auth_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_pj_axis`
--

DROP TABLE IF EXISTS `prjc_pj_axis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_pj_axis` (
  `id_axis` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_axis`),
  UNIQUE KEY `prjc_pj_axis_name` (`name`),
  UNIQUE KEY `prjc_pj_axis_group` (`id_group`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_pj_axis`
--

LOCK TABLES `prjc_pj_axis` WRITE;
/*!40000 ALTER TABLE `prjc_pj_axis` DISABLE KEYS */;
INSERT INTO `prjc_pj_axis` VALUES
(1,'Main axis',1);
/*!40000 ALTER TABLE `prjc_pj_axis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_pj_group`
--

DROP TABLE IF EXISTS `prjc_pj_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_pj_group` (
  `id_group` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `id_axis` int(10) unsigned DEFAULT NULL,
  `disabled` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_group`),
  KEY `id_axis` (`id_axis`),
  KEY `name` (`name`),
  CONSTRAINT `prjc_pj_group_ibfk_1` FOREIGN KEY (`id_axis`) REFERENCES `prjc_pj_axis` (`id_axis`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_pj_group`
--

LOCK TABLES `prjc_pj_group` WRITE;
/*!40000 ALTER TABLE `prjc_pj_group` DISABLE KEYS */;
INSERT INTO `prjc_pj_group` VALUES
(1,'Main',1,0),
(2,'user-root',NULL,0);
/*!40000 ALTER TABLE `prjc_pj_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_pj_group_link`
--

DROP TABLE IF EXISTS `prjc_pj_group_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_pj_group_link` (
  `id_group_link` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_group` int(10) unsigned NOT NULL,
  `id_group_parent` int(10) unsigned DEFAULT NULL,
  `id_role` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_group_link`),
  UNIQUE KEY `id_group` (`id_group`,`id_group_parent`,`id_role`),
  KEY `id_group_parent` (`id_group_parent`),
  KEY `id_role` (`id_role`),
  CONSTRAINT `prjc_pj_group_link_ibfk_1` FOREIGN KEY (`id_group`) REFERENCES `prjc_pj_group` (`id_group`) ON DELETE CASCADE,
  CONSTRAINT `prjc_pj_group_link_ibfk_2` FOREIGN KEY (`id_group_parent`) REFERENCES `prjc_pj_group` (`id_group`) ON DELETE SET NULL,
  CONSTRAINT `prjc_pj_group_link_ibfk_3` FOREIGN KEY (`id_role`) REFERENCES `prjc_pj_role` (`id_role`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_pj_group_link`
--

LOCK TABLES `prjc_pj_group_link` WRITE;
/*!40000 ALTER TABLE `prjc_pj_group_link` DISABLE KEYS */;
INSERT INTO `prjc_pj_group_link` VALUES
(1,2,1,1);
/*!40000 ALTER TABLE `prjc_pj_group_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_pj_group_mode`
--

DROP TABLE IF EXISTS `prjc_pj_group_mode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_pj_group_mode` (
  `id_group_mode` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_group_link` int(10) unsigned NOT NULL,
  `id_varset` int(10) unsigned NOT NULL,
  `mode` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_group_mode`),
  KEY `id_group_link` (`id_group_link`),
  KEY `id_varset` (`id_varset`),
  CONSTRAINT `prjc_pj_group_mode_ibfk_1` FOREIGN KEY (`id_group_link`) REFERENCES `prjc_pj_group_link` (`id_group_link`) ON DELETE CASCADE,
  CONSTRAINT `prjc_pj_group_mode_ibfk_2` FOREIGN KEY (`id_varset`) REFERENCES `prjc_pj_varset` (`id_varset`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_pj_group_mode`
--

LOCK TABLES `prjc_pj_group_mode` WRITE;
/*!40000 ALTER TABLE `prjc_pj_group_mode` DISABLE KEYS */;
INSERT INTO `prjc_pj_group_mode` VALUES
(1,1,5,256),
(2,1,6,256),
(3,1,2,256),
(4,1,3,256),
(5,1,7,448),
(6,1,9,448),
(7,1,8,448),
(8,1,1,448),
(9,1,4,448),
(10,1,10,7);
/*!40000 ALTER TABLE `prjc_pj_group_mode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_pj_notice_data`
--

DROP TABLE IF EXISTS `prjc_pj_notice_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_pj_notice_data` (
  `id_data` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_owner` int(10) unsigned DEFAULT NULL,
  `sys_creation_date` datetime DEFAULT NULL,
  `sys_last_mod_date` datetime DEFAULT NULL,
  `sys_last_mod_user` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `content` text DEFAULT NULL,
  `preview` int(10) unsigned DEFAULT NULL,
  `show_title` int(1) DEFAULT NULL,
  `show_content` int(1) DEFAULT NULL,
  `show_attachments` int(1) DEFAULT NULL,
  `show_begin_date` int(1) DEFAULT NULL,
  `show_end_date` int(1) DEFAULT NULL,
  `open` int(1) DEFAULT NULL,
  `groups` int(11) DEFAULT NULL,
  `roles` varchar(255) DEFAULT NULL,
  `color` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_data`),
  KEY `id_owner` (`id_owner`),
  KEY `sys_last_mod_user` (`sys_last_mod_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_pj_notice_data`
--

LOCK TABLES `prjc_pj_notice_data` WRITE;
/*!40000 ALTER TABLE `prjc_pj_notice_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_pj_notice_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_pj_notice_data_group`
--

DROP TABLE IF EXISTS `prjc_pj_notice_data_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_pj_notice_data_group` (
  `id_data_group` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_data` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_data_group`),
  UNIQUE KEY `id_data` (`id_data`,`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_pj_notice_data_group`
--

LOCK TABLES `prjc_pj_notice_data_group` WRITE;
/*!40000 ALTER TABLE `prjc_pj_notice_data_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_pj_notice_data_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_pj_notice_data_group_mode`
--

DROP TABLE IF EXISTS `prjc_pj_notice_data_group_mode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_pj_notice_data_group_mode` (
  `id_data_group_mode` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_data_group` int(10) unsigned NOT NULL,
  `mode` int(10) unsigned NOT NULL,
  `date_valid` date DEFAULT NULL,
  PRIMARY KEY (`id_data_group_mode`),
  UNIQUE KEY `id_data_group` (`id_data_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_pj_notice_data_group_mode`
--

LOCK TABLES `prjc_pj_notice_data_group_mode` WRITE;
/*!40000 ALTER TABLE `prjc_pj_notice_data_group_mode` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_pj_notice_data_group_mode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_pj_notice_deleted`
--

DROP TABLE IF EXISTS `prjc_pj_notice_deleted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_pj_notice_deleted` (
  `id_data` int(10) unsigned NOT NULL,
  `id_owner` int(10) unsigned DEFAULT NULL,
  `sys_creation_date` datetime DEFAULT NULL,
  `sys_last_mod_date` datetime DEFAULT NULL,
  `sys_last_mod_user` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `content` text DEFAULT NULL,
  `preview` int(10) unsigned DEFAULT NULL,
  `show_title` int(1) DEFAULT NULL,
  `show_content` int(1) DEFAULT NULL,
  `show_attachments` int(1) DEFAULT NULL,
  `show_begin_date` int(1) DEFAULT NULL,
  `show_end_date` int(1) DEFAULT NULL,
  `open` int(1) DEFAULT NULL,
  `groups` int(11) DEFAULT NULL,
  `roles` varchar(255) DEFAULT NULL,
  `color` int(10) unsigned DEFAULT NULL,
  KEY `id_data` (`id_data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_pj_notice_deleted`
--

LOCK TABLES `prjc_pj_notice_deleted` WRITE;
/*!40000 ALTER TABLE `prjc_pj_notice_deleted` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_pj_notice_deleted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_pj_old_passwords`
--

DROP TABLE IF EXISTS `prjc_pj_old_passwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_pj_old_passwords` (
  `id_old_password` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_group` int(10) unsigned NOT NULL,
  `date_renew` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `password` char(81) NOT NULL,
  PRIMARY KEY (`id_old_password`),
  KEY `id_group` (`id_group`),
  CONSTRAINT `prjc_pj_old_passwords_ibfk_1` FOREIGN KEY (`id_group`) REFERENCES `prjc_pj_group` (`id_group`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci COMMENT='Gestion des anciens mdp';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_pj_old_passwords`
--

LOCK TABLES `prjc_pj_old_passwords` WRITE;
/*!40000 ALTER TABLE `prjc_pj_old_passwords` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_pj_old_passwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_pj_resource_settings`
--

DROP TABLE IF EXISTS `prjc_pj_resource_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_pj_resource_settings` (
  `id_resource_settings` int(11) NOT NULL AUTO_INCREMENT,
  `id_resource` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_settings` int(11) NOT NULL,
  PRIMARY KEY (`id_resource_settings`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_pj_resource_settings`
--

LOCK TABLES `prjc_pj_resource_settings` WRITE;
/*!40000 ALTER TABLE `prjc_pj_resource_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_pj_resource_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_pj_role`
--

DROP TABLE IF EXISTS `prjc_pj_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_pj_role` (
  `id_role` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `label` varchar(100) NOT NULL,
  PRIMARY KEY (`id_role`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_pj_role`
--

LOCK TABLES `prjc_pj_role` WRITE;
/*!40000 ALTER TABLE `prjc_pj_role` DISABLE KEYS */;
INSERT INTO `prjc_pj_role` VALUES
(1,'admin','Administrator');
/*!40000 ALTER TABLE `prjc_pj_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_pj_token`
--

DROP TABLE IF EXISTS `prjc_pj_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_pj_token` (
  `id_token` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(8) NOT NULL,
  `id_group` int(10) unsigned DEFAULT NULL,
  `acl_resources` varchar(255) DEFAULT NULL,
  `group_mode` text DEFAULT NULL,
  `context` text DEFAULT NULL,
  `expire_date` datetime DEFAULT NULL,
  `session_id` varchar(32) DEFAULT NULL,
  `otp` varchar(8) DEFAULT NULL,
  `classname` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id_token`),
  KEY `idx_id_group` (`id_group`),
  KEY `token` (`token`),
  KEY `otp` (`otp`),
  CONSTRAINT `prjc_pj_token_ibfk_1` FOREIGN KEY (`id_group`) REFERENCES `prjc_pj_group` (`id_group`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_pj_token`
--

LOCK TABLES `prjc_pj_token` WRITE;
/*!40000 ALTER TABLE `prjc_pj_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_pj_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_pj_varset`
--

DROP TABLE IF EXISTS `prjc_pj_varset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_pj_varset` (
  `id_varset` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `label` varchar(200) NOT NULL,
  `varset_table_prefix` varchar(20) DEFAULT NULL,
  `id_resource` int(10) unsigned NOT NULL,
  `type` varchar(4) NOT NULL DEFAULT 'sys',
  PRIMARY KEY (`id_varset`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `varset_table_prefix` (`varset_table_prefix`),
  KEY `id_resource` (`id_resource`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_pj_varset`
--

LOCK TABLES `prjc_pj_varset` WRITE;
/*!40000 ALTER TABLE `prjc_pj_varset` DISABLE KEYS */;
INSERT INTO `prjc_pj_varset` VALUES
(1,'resource','Resources','resource',1,'sys'),
(2,'evtlog','Event log','evtlog',2,'sys'),
(3,'monitoring','Monitoring','varsetmonitor',3,'sys'),
(4,'pj_notice','Announcement','pj_notice',4,'sys'),
(5,'dico','Dictionary','dico',6,'sys'),
(6,'dicostatus','Dictionary status','dicostatus',7,'sys'),
(7,'query','Query','query',8,'sys'),
(8,'queryvar','Query Var','queryvar',9,'sys'),
(9,'querycache','Query cache','querycache',10,'sys'),
(10,'user','User','user',11,'sys');
/*!40000 ALTER TABLE `prjc_pj_varset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_query_data`
--

DROP TABLE IF EXISTS `prjc_query_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_query_data` (
  `id_data` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_owner` int(10) unsigned DEFAULT NULL,
  `sys_creation_date` datetime DEFAULT NULL,
  `sys_last_mod_date` datetime DEFAULT NULL,
  `sys_last_mod_user` int(10) unsigned DEFAULT NULL,
  `type_request` int(11) DEFAULT NULL,
  `id_resource` int(10) unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `request` text DEFAULT NULL,
  `message` varchar(200) DEFAULT NULL,
  `level` int(10) unsigned DEFAULT NULL,
  `runlevel` int(10) unsigned DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `mode_avance` int(10) unsigned DEFAULT NULL,
  `cron_minute` varchar(200) DEFAULT NULL,
  `cron_hour` varchar(200) DEFAULT NULL,
  `cron_day` varchar(200) DEFAULT NULL,
  `cron_month` varchar(200) DEFAULT NULL,
  `cron_by_day` varchar(200) DEFAULT NULL,
  `cron_freq` int(10) unsigned DEFAULT NULL,
  `varset` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_data`),
  KEY `id_owner` (`id_owner`),
  KEY `sys_last_mod_user` (`sys_last_mod_user`),
  KEY `id_resource` (`id_resource`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_query_data`
--

LOCK TABLES `prjc_query_data` WRITE;
/*!40000 ALTER TABLE `prjc_query_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_query_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_query_data_group`
--

DROP TABLE IF EXISTS `prjc_query_data_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_query_data_group` (
  `id_data_group` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_data` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_data_group`),
  UNIQUE KEY `id_data` (`id_data`,`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_query_data_group`
--

LOCK TABLES `prjc_query_data_group` WRITE;
/*!40000 ALTER TABLE `prjc_query_data_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_query_data_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_query_data_group_mode`
--

DROP TABLE IF EXISTS `prjc_query_data_group_mode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_query_data_group_mode` (
  `id_data_group_mode` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_data_group` int(10) unsigned NOT NULL,
  `mode` int(10) unsigned NOT NULL,
  `date_valid` date DEFAULT NULL,
  PRIMARY KEY (`id_data_group_mode`),
  UNIQUE KEY `id_data_group` (`id_data_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_query_data_group_mode`
--

LOCK TABLES `prjc_query_data_group_mode` WRITE;
/*!40000 ALTER TABLE `prjc_query_data_group_mode` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_query_data_group_mode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_query_deleted`
--

DROP TABLE IF EXISTS `prjc_query_deleted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_query_deleted` (
  `id_data` int(10) unsigned NOT NULL,
  `id_owner` int(10) unsigned DEFAULT NULL,
  `sys_creation_date` datetime DEFAULT NULL,
  `sys_last_mod_date` datetime DEFAULT NULL,
  `sys_last_mod_user` int(10) unsigned DEFAULT NULL,
  `type_request` int(11) DEFAULT NULL,
  `id_resource` int(10) unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `request` text DEFAULT NULL,
  `message` varchar(200) DEFAULT NULL,
  `level` int(10) unsigned DEFAULT NULL,
  `runlevel` int(10) unsigned DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `mode_avance` int(10) unsigned DEFAULT NULL,
  `cron_minute` varchar(200) DEFAULT NULL,
  `cron_hour` varchar(200) DEFAULT NULL,
  `cron_day` varchar(200) DEFAULT NULL,
  `cron_month` varchar(200) DEFAULT NULL,
  `cron_by_day` varchar(200) DEFAULT NULL,
  `cron_freq` int(10) unsigned DEFAULT NULL,
  `varset` varchar(200) DEFAULT NULL,
  KEY `id_data` (`id_data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_query_deleted`
--

LOCK TABLES `prjc_query_deleted` WRITE;
/*!40000 ALTER TABLE `prjc_query_deleted` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_query_deleted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_query_dico_runlevel_data`
--

DROP TABLE IF EXISTS `prjc_query_dico_runlevel_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_query_dico_runlevel_data` (
  `id_data` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_query` int(10) unsigned DEFAULT NULL,
  `id_owner` int(10) unsigned DEFAULT NULL,
  `id_dico` int(10) unsigned DEFAULT NULL,
  UNIQUE KEY `id_data` (`id_data`),
  KEY `id_query` (`id_query`),
  KEY `id_dico` (`id_dico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_query_dico_runlevel_data`
--

LOCK TABLES `prjc_query_dico_runlevel_data` WRITE;
/*!40000 ALTER TABLE `prjc_query_dico_runlevel_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_query_dico_runlevel_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_query_dico_runlevel_deleted`
--

DROP TABLE IF EXISTS `prjc_query_dico_runlevel_deleted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_query_dico_runlevel_deleted` (
  `id_data` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_query` int(10) unsigned DEFAULT NULL,
  `id_owner` int(10) unsigned DEFAULT NULL,
  `id_dico` int(10) unsigned DEFAULT NULL,
  UNIQUE KEY `id_data` (`id_data`),
  KEY `id_query` (`id_query`),
  KEY `id_dico` (`id_dico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_query_dico_runlevel_deleted`
--

LOCK TABLES `prjc_query_dico_runlevel_deleted` WRITE;
/*!40000 ALTER TABLE `prjc_query_dico_runlevel_deleted` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_query_dico_runlevel_deleted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_querycache_data`
--

DROP TABLE IF EXISTS `prjc_querycache_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_querycache_data` (
  `id_data` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_owner` int(10) unsigned DEFAULT NULL,
  `sys_creation_date` datetime DEFAULT NULL,
  `sys_last_mod_date` datetime DEFAULT NULL,
  `sys_last_mod_user` int(10) unsigned DEFAULT NULL,
  `id_record` int(11) DEFAULT NULL,
  `varset_name` varchar(50) DEFAULT NULL,
  `id_query` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_data`),
  KEY `id_owner` (`id_owner`),
  KEY `sys_last_mod_user` (`sys_last_mod_user`),
  KEY `id_query` (`id_query`),
  KEY `id_record` (`id_record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_querycache_data`
--

LOCK TABLES `prjc_querycache_data` WRITE;
/*!40000 ALTER TABLE `prjc_querycache_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_querycache_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_querycache_data_group`
--

DROP TABLE IF EXISTS `prjc_querycache_data_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_querycache_data_group` (
  `id_data_group` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_data` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_data_group`),
  UNIQUE KEY `id_data` (`id_data`,`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_querycache_data_group`
--

LOCK TABLES `prjc_querycache_data_group` WRITE;
/*!40000 ALTER TABLE `prjc_querycache_data_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_querycache_data_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_querycache_data_group_mode`
--

DROP TABLE IF EXISTS `prjc_querycache_data_group_mode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_querycache_data_group_mode` (
  `id_data_group_mode` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_data_group` int(10) unsigned NOT NULL,
  `mode` int(10) unsigned NOT NULL,
  `date_valid` date DEFAULT NULL,
  PRIMARY KEY (`id_data_group_mode`),
  UNIQUE KEY `id_data_group` (`id_data_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_querycache_data_group_mode`
--

LOCK TABLES `prjc_querycache_data_group_mode` WRITE;
/*!40000 ALTER TABLE `prjc_querycache_data_group_mode` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_querycache_data_group_mode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_querycache_deleted`
--

DROP TABLE IF EXISTS `prjc_querycache_deleted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_querycache_deleted` (
  `id_data` int(10) unsigned NOT NULL,
  `id_owner` int(10) unsigned DEFAULT NULL,
  `sys_creation_date` datetime DEFAULT NULL,
  `sys_last_mod_date` datetime DEFAULT NULL,
  `sys_last_mod_user` int(10) unsigned DEFAULT NULL,
  `id_record` int(11) DEFAULT NULL,
  `varset_name` varchar(50) DEFAULT NULL,
  `id_query` int(10) unsigned DEFAULT NULL,
  KEY `id_data` (`id_data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_querycache_deleted`
--

LOCK TABLES `prjc_querycache_deleted` WRITE;
/*!40000 ALTER TABLE `prjc_querycache_deleted` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_querycache_deleted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_queryvar_data`
--

DROP TABLE IF EXISTS `prjc_queryvar_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_queryvar_data` (
  `id_data` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_owner` int(10) unsigned DEFAULT NULL,
  `sys_creation_date` datetime DEFAULT NULL,
  `sys_last_mod_date` datetime DEFAULT NULL,
  `sys_last_mod_user` int(10) unsigned DEFAULT NULL,
  `id_query` int(10) unsigned DEFAULT NULL,
  `id_varset` int(11) DEFAULT NULL,
  `id_var` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_data`),
  KEY `id_owner` (`id_owner`),
  KEY `sys_last_mod_user` (`sys_last_mod_user`),
  KEY `id_query` (`id_query`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_queryvar_data`
--

LOCK TABLES `prjc_queryvar_data` WRITE;
/*!40000 ALTER TABLE `prjc_queryvar_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_queryvar_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_queryvar_data_group`
--

DROP TABLE IF EXISTS `prjc_queryvar_data_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_queryvar_data_group` (
  `id_data_group` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_data` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_data_group`),
  UNIQUE KEY `id_data` (`id_data`,`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_queryvar_data_group`
--

LOCK TABLES `prjc_queryvar_data_group` WRITE;
/*!40000 ALTER TABLE `prjc_queryvar_data_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_queryvar_data_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_queryvar_data_group_mode`
--

DROP TABLE IF EXISTS `prjc_queryvar_data_group_mode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_queryvar_data_group_mode` (
  `id_data_group_mode` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_data_group` int(10) unsigned NOT NULL,
  `mode` int(10) unsigned NOT NULL,
  `date_valid` date DEFAULT NULL,
  PRIMARY KEY (`id_data_group_mode`),
  UNIQUE KEY `id_data_group` (`id_data_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_queryvar_data_group_mode`
--

LOCK TABLES `prjc_queryvar_data_group_mode` WRITE;
/*!40000 ALTER TABLE `prjc_queryvar_data_group_mode` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_queryvar_data_group_mode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_queryvar_deleted`
--

DROP TABLE IF EXISTS `prjc_queryvar_deleted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_queryvar_deleted` (
  `id_data` int(10) unsigned NOT NULL,
  `id_owner` int(10) unsigned DEFAULT NULL,
  `sys_creation_date` datetime DEFAULT NULL,
  `sys_last_mod_date` datetime DEFAULT NULL,
  `sys_last_mod_user` int(10) unsigned DEFAULT NULL,
  `id_query` int(10) unsigned DEFAULT NULL,
  `id_varset` int(11) DEFAULT NULL,
  `id_var` varchar(50) DEFAULT NULL,
  KEY `id_data` (`id_data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_queryvar_deleted`
--

LOCK TABLES `prjc_queryvar_deleted` WRITE;
/*!40000 ALTER TABLE `prjc_queryvar_deleted` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_queryvar_deleted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_resource_data`
--

DROP TABLE IF EXISTS `prjc_resource_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_resource_data` (
  `id_data` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_owner` int(10) unsigned DEFAULT NULL,
  `sys_creation_date` datetime DEFAULT NULL,
  `sys_last_mod_date` datetime DEFAULT NULL,
  `sys_last_mod_user` int(10) unsigned DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `type` int(10) unsigned DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `filename` varchar(150) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `resource_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id_data`),
  KEY `id_owner` (`id_owner`),
  KEY `sys_last_mod_user` (`sys_last_mod_user`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_resource_data`
--

LOCK TABLES `prjc_resource_data` WRITE;
/*!40000 ALTER TABLE `prjc_resource_data` DISABLE KEYS */;
INSERT INTO `prjc_resource_data` VALUES
(1,2,NULL,NULL,NULL,'[SYSTEM] Resource',54,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<varset name=\"resource\" prefix=\"resource\" type=\"sys\" label=\"Resources\">\n  <var uid=\"1\" id=\"name\" type=\"string\" mandatory=\"true\" default_label=\"Resource name\" default_short_label=\"Name\">\n    <string length=\"45\"/>\n  </var>\n  <var uid=\"2\" id=\"type\" type=\"fkey_sysdico\" mandatory=\"true\" default_label=\"Type\" default_short_label=\"Type\">\n    <fkey_sysdico dico_name=\"resource_type\"/>\n  </var>\n  <var uid=\"3\" id=\"content\" type=\"longtext\" mandatory=\"false\" default_label=\"Content\" default_short_label=\"Content\"/>\n  <var uid=\"4\" id=\"filename\" type=\"string\" mandatory=\"false\" default_label=\"Filename\" default_short_label=\"Filename\">\n    <string length=\"150\"/>\n  </var>\n  <var uid=\"5\" id=\"description\" type=\"text\" mandatory=\"false\" default_label=\"Description\"/>\n  <var uid=\"6\" id=\"resource_id\" type=\"string\" mandatory=\"false\" default_label=\"Resource ID\">\n    <string length=\"40\"/>\n  </var>\n</varset>\n',NULL,NULL,NULL),
(2,2,NULL,NULL,NULL,'[SYSTEM] Evtlog',54,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<varset name=\"evtlog\" prefix=\"evtlog\" type=\"sys\" label=\"Event log\">\n  <var uid=\"1\" id=\"evt_datetime\" type=\"datetime\" default_label=\"Date\" default_short_label=\"Date\"/>\n  <var uid=\"2\" id=\"evt_type\" type=\"fkey_sysdico\" default_label=\"Event type\" default_short_label=\"Type\">\n    <fkey_sysdico dico_name=\"type_evt\"/>\n  </var>\n  <var uid=\"3\" id=\"evt_name\" type=\"string\" default_label=\"Event\" default_short_label=\"Event\">\n    <string length=\"50\"/>\n  </var>\n  <var uid=\"4\" id=\"message\" type=\"string\" default_label=\"Message\" default_short_label=\"Message\">\n    <string length=\"255\"/>\n  </var>\n  <var uid=\"5\" id=\"id_sudoer\" type=\"fkey_varset_ref\" default_label=\"Id sudoer\" default_short_label=\"Id sudoer\">\n    <fkey_varset_ref varset_name=\"user\" key=\"id_group\"/>\n  </var>\n</varset>\n',NULL,NULL,NULL),
(3,2,NULL,NULL,NULL,'[SYSTEM] Monitoring',54,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<varset name=\"monitoring\" prefix=\"varsetmonitor\" type=\"sys\" label=\"Monitoring\">\n  <var uid=\"1\" id=\"id_evtlog\" type=\"fkey_varset\">\n    <fkey_varset varset_name=\"evtlog\" multiple=\"false\"/>\n  </var>\n  <var uid=\"2\" id=\"id_varset\" type=\"integer\" default_label=\"VarSet ID\" default_short_label=\"VarSet ID\">\n    <integer min=\"1\"/>\n  </var>\n  <var uid=\"3\" id=\"id_data_monitored\" type=\"integer\" default_label=\"Record ID\" default_short_label=\"Record ID\">\n    <integer min=\"1\"/>\n  </var>\n  <var uid=\"4\" id=\"var_name\" type=\"string\" default_label=\"Var name\" default_short_label=\"Variable\">\n    <string length=\"64\"/>\n  </var>\n  <var uid=\"5\" id=\"value\" type=\"string\" default_label=\"Value\" default_short_label=\"Value\">\n    <string length=\"255\"/>\n  </var>\n</varset>\n',NULL,NULL,NULL),
(4,2,'2025-11-06 14:06:52','2025-11-06 14:06:52',NULL,'[SYSTEM] Announcement',54,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<varset name=\"pj_notice\" prefix=\"pj_notice\" type=\"sys\" label=\"Announcement\">\n  <var uid=\"1\" id=\"title\" type=\"string\" default_label=\"Title\" mandatory=\"false\" translate=\"true\">\n    <string length=\"255\"/>\n  </var>\n  <var uid=\"2\" id=\"start_date\" type=\"date\" default_label=\"Start date\" mandatory=\"false\"/>\n  <var uid=\"3\" id=\"end_date\" type=\"date\" default_label=\"End date\" mandatory=\"false\"/>\n  <var uid=\"4\" id=\"content\" type=\"text\" default_label=\"Message\" mandatory=\"false\" translate=\"true\"/>\n  <var uid=\"7\" id=\"preview\" type=\"fkey_dico\" default_label=\"Preview\" mandatory=\"false\">\n    <fkey_dico dico_name=\"preview\"/>\n  </var>\n  <var uid=\"8\" id=\"show_title\" type=\"boolean\" default_label=\"Show title\" mandatory=\"false\" default_value=\"1\">\n    <fkey_dico dico_name=\"yorn\"/>\n  </var>\n  <var uid=\"9\" id=\"show_content\" type=\"boolean\" default_label=\"Show message\" mandatory=\"false\" default_value=\"1\">\n    <fkey_dico dico_name=\"yorn\"/>\n  </var>\n  <var uid=\"10\" id=\"show_attachments\" type=\"boolean\" default_label=\"Show attachment(s)\" mandatory=\"false\" default_value=\"0\"/>\n  <var uid=\"11\" id=\"show_begin_date\" type=\"boolean\" default_label=\"Show start date\" mandatory=\"false\" default_value=\"0\"/>\n  <var uid=\"12\" id=\"show_end_date\" type=\"boolean\" default_label=\"Show end date\" mandatory=\"false\" default_value=\"0\"/>\n  <var uid=\"13\" id=\"open\" type=\"boolean\" default_label=\"Initially opened\" mandatory=\"false\" default_value=\"1\"/>\n  <var uid=\"14\" id=\"groups\" type=\"integer\" default_label=\"Group\" mandatory=\"true\"/>\n  <var uid=\"15\" id=\"roles\" type=\"string\" default_label=\"Roles\" mandatory=\"true\">\n    <string length=\"255\"/>\n  </var>\n  <var uid=\"16\" id=\"color\" type=\"fkey_sysdico\" mandatory=\"true\" default_label=\"Color\" default_value=\"default\">\n    <fkey_sysdico dico_name=\"bootstrap_colors\"/>\n  </var>\n</varset>\n',NULL,'',''),
(5,2,'2025-11-06 14:06:52','2025-11-06 14:06:52',NULL,'[SYSTEM] Project configuration',52,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<project><params><param name=\"id_style_resource\" value=\"0\" comment=\"Style du thème\"/><param name=\"conform_pssi\" value=\"0\" comment=\"Conformité à la PSSI\"/><param name=\"select_lang_enabled\" value=\"0\" comment=\"Sélection de la langue possible ?\"/><param name=\"salt_key\" value=\"88f14b4f59755962cac8ea2088f0cd6b28933a8a\" comment=\"Clé de salage pour les mots-de-passe\"/><param name=\"prj_key\" value=\"ba327f078cff63c35b98c70bcfa61869e8049882\" comment=\"Clé de cryptage projet\"/><param name=\"strong_username\" value=\"1\" comment=\"Utiliser les nom d\'utilisateur forts ?\"/><param name=\"strong_password\" value=\"1\" comment=\"Utiliser les mots de passe forts ?\"/><param name=\"password_expiration\" value=\"1\" comment=\"Password expiration?\"/><param name=\"password_duration\" value=\"2\" comment=\"Password duration?\"/><param name=\"auth_mode\" value=\"1\" comment=\"Mode d\'authentification\"/><param name=\"varset_patient\" value=\"\" comment=\"Dossier patient\"/><param name=\"field_name_patient\" value=\"\" filter=\"0\" print=\"0\" comment=\"Champ nom de la table patient\"/><param name=\"field_firstname_patient\" value=\"\" filter=\"0\" print=\"0\" comment=\"Champ prénom de la table patient\"/><param name=\"field_identifiant_patient\" value=\"\" filter=\"0\" print=\"0\" comment=\"Champ identifiant de la table patient\"/><param name=\"field_ddn_patient\" value=\"\" filter=\"0\" print=\"0\" comment=\"Date de naissance du patient\"/><param name=\"field_sexe_patient\" value=\"\" filter=\"0\" print=\"0\" comment=\"Sexe du patient\"/><param name=\"sys_group_setting\" value=\"NO\" comment=\"Corrélation entre sys_group et group_link\"/></params></project>\n',NULL,'',''),
(6,2,'2025-11-06 14:06:52','2025-11-06 14:06:52',NULL,'[SYSTEM] Dico',54,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<varset name=\"dico\" prefix=\"dico\" type=\"sys\" label=\"Dictionary\">\n  <var uid=\"1\" id=\"dico_name\" type=\"string\" mandatory=\"true\" default_label=\"Dictionary\" default_short_label=\"Dictionary\">\n    <string length=\"100\" regexp=\"^[\\.a-zA-Z0-9_-]*$\"/>\n  </var>\n  <var uid=\"2\" id=\"label\" type=\"string\" mandatory=\"true\" default_label=\"Label\" default_short_label=\"Label\" translate=\"true\">\n    <string length=\"255\"/>\n  </var>\n  <var uid=\"3\" id=\"short_label\" type=\"string\" mandatory=\"false\" default_label=\"Short label\" default_short_label=\"Short label\" translate=\"true\">\n    <string length=\"30\"/>\n  </var>\n  <var uid=\"4\" id=\"position\" type=\"integer\" mandatory=\"false\" default_label=\"Position\" default_short_label=\"Pos.\">\n    <integer min=\"0\" max=\"99999\"/>\n  </var>\n  <var uid=\"5\" id=\"code\" type=\"string\" mandatory=\"true\" default_label=\"Code\" default_short_label=\"Code\">\n    <string length=\"50\"/>\n  </var>\n  <var uid=\"6\" id=\"dico_id\" type=\"string\" mandatory=\"false\" default_label=\"Dico id\" default_short_label=\"Dico id\">\n    <string length=\"40\"/>\n  </var>\n  <var uid=\"7\" id=\"dico_value_id\" type=\"string\" mandatory=\"false\" default_label=\"Dico id\" default_short_label=\"Dico id\">\n    <string length=\"40\"/>\n  </var>\n  <var uid=\"8\" id=\"archived\" type=\"boolean\" mandatory=\"false\" default_label=\"Is archived\" default_short_label=\"Is archived\"/>\n</varset>\n',NULL,'',''),
(7,2,'2025-11-06 14:06:52','2025-11-06 14:06:52',NULL,'[SYSTEM] Dico Status',54,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<varset name=\"dicostatus\" prefix=\"dicostatus\" type=\"sys\" label=\"Dictionary status\">\n  <var uid=\"1\" id=\"id_dico\" type=\"fkey_varset\" mandatory=\"true\" default_label=\"ID Dico\" default_short_label=\"ID Dico\">\n    <fkey_varset varset_name=\"dico\"/>\n  </var>\n  <var uid=\"2\" id=\"status\" type=\"fkey_sysdico\" mandatory=\"true\" default_label=\"Status\" default_short_label=\"Status\">\n    <fkey_sysdico dico_name=\"dico_value_status\"/>\n  </var>\n  <var uid=\"3\" id=\"effective_date\" type=\"datetime\" mandatory=\"true\" default_label=\"Effective date\" default_short_label=\"Effective date\"/>\n</varset>\n',NULL,'',''),
(8,2,'2025-11-06 14:06:53','2025-11-06 14:06:53',NULL,'[SYSTEM] Query',54,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<varset name=\"query\" prefix=\"query\" type=\"sys\" label=\"Query\">\n  <var uid=\"1\" id=\"type_request\" type=\"integer\" default_label=\"Type\" default_short_label=\"Type\">\n    <integer min=\"0\" max=\"99999999999\"/>\n  </var>\n  <var uid=\"2\" id=\"id_resource\" type=\"fkey_varset\" default_label=\"ID resource\" default_short_label=\"ID resource\">\n    <fkey_varset varset_name=\"resource\"/>\n  </var>\n  <var uid=\"3\" id=\"name\" type=\"string\" default_label=\"Query name\" default_short_label=\"Name\" mandatory=\"true\" translate=\"true\">\n    <string length=\"100\"/>\n  </var>\n  <var uid=\"4\" id=\"request\" type=\"text\" default_label=\"SQL request\" default_short_label=\"Request\" mandatory=\"true\">\n    </var>\n  <var uid=\"5\" id=\"message\" type=\"string\" default_label=\"Message\" default_short_label=\"Message\" translate=\"true\">\n    <string length=\"200\"/>\n  </var>\n  <var uid=\"6\" id=\"level\" type=\"fkey_sysdico\" default_label=\"Error level\" default_short_label=\"Level\">\n    <fkey_sysdico dico_name=\"consistency_test_lvl\"/>\n  </var>\n  <var uid=\"7\" id=\"runlevel\" type=\"fkey_sysdico_ext\" default_label=\"Run level\" default_short_label=\"Run Level\">\n    <fkey_sysdico_ext dico_name=\"consistency_test_run\"/>\n  </var>\n  <var uid=\"8\" id=\"tags\" type=\"string\" mandatory=\"false\" default_label=\"Tags\" default_short_label=\"Tags\">\n    <string length=\"255\"/>\n  </var>\n  <var uid=\"9\" id=\"mode_avance\" type=\"fkey_sysdico\" mandatory=\"false\" default_label=\"Advanced mode\" default_short_label=\"Advanced mode\">\n    <fkey_sysdico dico_name=\"yorn\"/>\n  </var>\n  <var uid=\"10\" id=\"cron_minute\" type=\"string\" default_label=\"Minute\" default_short_label=\"Minute\">\n    <string length=\"200\"/>\n  </var>\n  <var uid=\"11\" id=\"cron_hour\" type=\"string\" default_label=\"Hour\" default_short_label=\"Hour\">\n    <string length=\"200\"/>\n  </var>\n  <var uid=\"12\" id=\"cron_day\" type=\"string\" default_label=\"Day of the week\" default_short_label=\"Day of the week\">\n    <string length=\"200\"/>\n  </var>\n  <var uid=\"13\" id=\"cron_month\" type=\"string\" default_label=\"Month\" default_short_label=\"Month\">\n    <string length=\"200\"/>\n  </var>\n  <var uid=\"14\" id=\"cron_by_day\" type=\"string\" default_label=\"Day\" default_short_label=\"Day\">\n    <string length=\"200\"/>\n  </var>\n  <var uid=\"15\" id=\"cron_freq\" type=\"fkey_sysdico\" default_label=\"Frequency\" default_short_label=\"Frequency\">\n    <fkey_sysdico dico_name=\"consistency_test_frq\"/>\n  </var>\n  <var uid=\"16\" id=\"varset\" type=\"string\" default_label=\"Varset\" default_short_label=\"Varset\">\n    <string length=\"200\"/>\n  </var>\n</varset>\n',NULL,'',''),
(9,2,'2025-11-06 14:06:53','2025-11-06 14:06:53',NULL,'[SYSTEM] Queryvar',54,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<varset name=\"queryvar\" prefix=\"queryvar\" type=\"sys\" label=\"Query Var\">\n  <var uid=\"1\" id=\"id_query\" type=\"fkey_varset\" default_label=\"Query ID\" default_short_label=\"Query ID\">\n    <fkey_varset varset_name=\"query\"/>\n  </var>\n  <var uid=\"2\" id=\"id_varset\" type=\"integer\" default_label=\"Varset ID\" default_short_label=\"Varset ID\">\n    <integer min=\"1\" max=\"999999\"/>\n  </var>\n  <var uid=\"3\" id=\"id_var\" type=\"string\" default_label=\"Var ID\" default_short_label=\"Var ID\">\n    <string length=\"50\"/>\n  </var>\n</varset>\n',NULL,'',''),
(10,2,'2025-11-06 14:06:53','2025-11-06 14:06:53',NULL,'[SYSTEM] Querycache',54,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<varset name=\"querycache\" prefix=\"querycache\" type=\"sys\" label=\"Query cache\">\n  <var uid=\"1\" id=\"id_record\" type=\"integer\" default_label=\"Main varset record id\" default_short_label=\"Record id\"/>\n  <var uid=\"2\" id=\"varset_name\" type=\"string\" default_label=\"Main varset name\" default_short_label=\"Main varset name\">\n    <string length=\"50\"/>\n  </var>\n  <var uid=\"3\" id=\"id_query\" type=\"fkey_varset\" default_label=\"Query id\" default_short_label=\"Query id\">\n    <fkey_varset varset_name=\"query\"/>\n  </var>\n</varset>\n',NULL,'',''),
(11,2,'2025-11-06 14:06:54','2025-11-06 14:06:54',NULL,'[SYSTEM] User',54,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<varset name=\"user\" prefix=\"user\" type=\"sys\" label=\"User\">\n  <var uid=\"1\" id=\"id_group\" type=\"integer\" mandatory=\"true\" default_label=\"Linked Group\" default_short_label=\"Linked group\">\n    <integer min=\"0\" max=\"4294967295\"/>\n  </var>\n  <var uid=\"2\" id=\"username\" type=\"string\" mandatory=\"true\" default_label=\"User ID\" default_short_label=\"User ID\">\n    <string length=\"50\"/>\n  </var>\n  <var uid=\"3\" id=\"firstname\" type=\"string\" mandatory=\"false\" default_label=\"First name\" default_short_label=\"First name\">\n    <string length=\"50\"/>\n  </var>\n  <var uid=\"4\" id=\"lastname\" type=\"string\" mandatory=\"false\" default_label=\"Last name\" default_short_label=\"Last name\">\n    <string length=\"50\"/>\n  </var>\n  <var uid=\"5\" id=\"email\" type=\"string\" mandatory=\"false\" default_label=\"Email\" default_short_label=\"Email\">\n    <string length=\"200\" validator=\"email\"/>\n  </var>\n  <var uid=\"6\" id=\"status\" type=\"fkey_sysdico\" mandatory=\"true\" default_label=\"Status\" default_short_label=\"Status\">\n    <fkey_sysdico dico_name=\"user_status\"/>\n  </var>\n  <var uid=\"7\" id=\"creation_date\" type=\"date\" mandatory=\"true\" default_label=\"Creation date\" default_short_label=\"Creation date\" default_value=\"NOW()\">\n    <date min=\"1900-01-01\"/>\n  </var>\n  <var uid=\"8\" id=\"password\" type=\"string\" mandatory=\"false\" default_label=\"Password\" default_short_label=\"Pwd\">\n    <string length=\"105\"/>\n  </var>\n  <var uid=\"9\" id=\"expire_date\" type=\"date\" mandatory=\"false\" default_label=\"Expiration date\" default_short_label=\"Expiration date\">\n    <date min=\"1900-01-01\"/>\n  </var>\n  <var uid=\"10\" id=\"cps_id\" type=\"string\" mandatory=\"false\" default_label=\"CPS ID\" default_short_label=\"CPS ID\">\n    <string length=\"30\"/>\n  </var>\n  <var uid=\"11\" id=\"oauth_provider_id_user\" type=\"integer\" mandatory=\"false\" default_label=\"ID on Provider\" default_short_label=\"ID on provider\">\n    <integer min=\"0\" max=\"4294967295\"/>\n  </var>\n  <var uid=\"12\" id=\"locale\" type=\"fkey_sysdico\" mandatory=\"true\" default_label=\"Language\" default_short_label=\"Language\">\n    <fkey_sysdico dico_name=\"locale\"/>\n  </var>\n  <var uid=\"13\" id=\"rpps\" type=\"string\" mandatory=\"false\" default_label=\"Doctor RPPS\" default_short_label=\"RPPS\">\n    <string length=\"11\"/>\n  </var>\n  <var uid=\"14\" id=\"otp_phone_number\" type=\"string\" mandatory=\"false\" default_label=\"Phone number\" default_short_label=\"Phone number\">\n    <string length=\"20\"/>\n  </var>\n  <var uid=\"15\" id=\"pwd_last_mod_date\" type=\"date\" default_label=\"Date of last password change\" default_short_label=\"Date of last password change\"/>\n  <var uid=\"16\" id=\"end_access_delegation\" type=\"datetime\" default_label=\"End of the access delegation\" default_short_label=\"End access delegation\"/>\n  <var uid=\"17\" id=\"pin_access_delegation\" type=\"string\" default_label=\"Access delegation pin code\" default_short_label=\"Access delegation pin\">\n    <string length=\"4\"/>\n  </var>\n  <var uid=\"18\" id=\"sys_last_connection_date\" type=\"date\" default_label=\"Last connection date\" default_short_label=\"Last connection date\">\n    <date min=\"1900-01-01\"/>\n  </var>\n  <var uid=\"19\" id=\"sys_last_mfa_date\" type=\"date\" default_label=\"Last multi-factor authentication date\" default_short_label=\"Latest MFA success date\">\n    <date min=\"1900-01-01\"/>\n  </var>\n<var uid=\"20\" id=\"flagged_user\" type=\"boolean\" default_label=\"This account cannot be automatically deactivated.\" mandatory=\"true\" default_value=\"0\"/>\n</varset>\n',NULL,'',''),
(12,2,'2025-11-06 14:06:54','2025-11-06 14:06:54',NULL,'[SYSTEM] ACL',55,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<acl_roles><role id=\"1\"><access><allow name=\"form/frame/get\"/><allow name=\"form/frame/save\"/><allow name=\"form/frame/delete\"/><allow name=\"upload/upload\"/><allow name=\"migration/index/tests\"/><allow name=\"audit/frame/get\"/><allow name=\"varset/var-list/index\"/><allow name=\"project/role\"/><allow name=\"project/user/getusers\"/><allow name=\"project/user/createuser\"/><allow name=\"project/user/updateuser\"/><allow name=\"project/user/setstatus\"/><allow name=\"project/user/deleteuser\"/><allow name=\"project/pwd/resetpwd\"/><allow name=\"project/pwd/updatepwd\"/><allow name=\"ws/user\"/><allow name=\"ws/user-token\"/><allow name=\"project/user/take-control\"/><allow name=\"project/user/my-account\"/><allow name=\"project/pwd/update-current-user-pwd\"/><allow name=\"project/oauth/getconsumers\"/><allow name=\"project/oauth/getuserconsumer\"/><allow name=\"oauth/consumer/provideruserlist\"/><allow name=\"listing/index\"/><allow name=\"listing/builder\"/><allow name=\"export/index\"/><allow name=\"export/prepare\"/><allow name=\"export/builder\"/><allow name=\"notice.upsert\"/><allow name=\"notice.delete\"/><allow name=\"auth/multi-factor/index\"/></access><varsets><varset name=\"dico\" mode=\"256\"/><varset name=\"dicostatus\" mode=\"256\"/><varset name=\"evtlog\" mode=\"256\"/><varset name=\"monitoring\" mode=\"256\"/><varset name=\"pj_notice\" mode=\"448\"/><varset name=\"query\" mode=\"448\"/><varset name=\"querycache\" mode=\"448\"/><varset name=\"queryvar\" mode=\"448\"/><varset name=\"resource\" mode=\"448\"/><varset name=\"user\" mode=\"7\"/></varsets></role></acl_roles>\n',NULL,'',''),
(13,2,'2025-11-06 14:06:54','2025-11-06 14:06:54',2,'Homepage',77,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<form>\n    <data_structure/>\n\n    <layout title=\"Home Page\" hide_title=\"true\">\n\n        <group>\n            <option output=\"html\" option_name=\"transparent_group\" value=\"true\"/>\n            <group title=\"Users and rights\">\n                <form_row class=\"columns\">\n                    <box class=\"col-md-4\">\n                        <statictext class=\"width-100pc\">\n                            <![CDATA[<p style=\"text-align: center;\"><br></p><p style=\"text-align: center;\">&lt;i class=\"fa fa-users fa-5x\"&gt;&lt;/i&gt;</p>]]></statictext>\n                    </box>\n                    <box class=\"col-md-8\">\n                        <box class=\"widget_bulk\">\n                            <box>\n                                <button class=\"btn btn-block\" label=\"Users\"\n                                        action=\"~({user-&gt;access}.indexOf(\'project/user/getusers\') !== -1) ? \'exit\' : \'disabled\'~\">\n                                    <option output=\"html\" option_name=\"fa\" value=\"fa-user\"/>\n                                    <redirection module=\"project\" ctrl=\"user\" action=\"getusers\"/>\n                                </button>\n                                <button class=\"btn btn-block\" label=\"Roles\"\n                                        action=\"~({user-&gt;access}.indexOf(\'project/role\') !== -1) ? \'exit\' : \'disabled\' ~\">\n                                    <option output=\"html\" option_name=\"fa\" value=\"fa-check-square\"/>\n                                    <redirection module=\"project\" ctrl=\"role\" action=\"getroles\"/>\n                                </button>\n                                <button class=\"btn btn-block\" label=\"Groups\" action=\"exit\">\n                                    <option output=\"html\" option_name=\"fa\" value=\"fa-sitemap\"/>\n                                    <redirection module=\"project\" ctrl=\"group\" action=\"getgroups\"/>\n                                </button>\n                            </box>\n                        </box>\n                    </box>\n                </form_row>\n                <option output=\"html\" option_name=\"transparent_group\" value=\"false\"/>\n            </group>\n            <option output=\"html\" option_name=\"color_class\" value=\"col-md-6\"/>\n        </group>\n\n        <group>\n            <option output=\"html\" option_name=\"transparent_group\" value=\"true\"/>\n            <group title=\"Data control\">\n                <form_row class=\"columns\">\n                    <box class=\"col-md-4\">\n                        <statictext class=\"width-100pc\">\n                            <![CDATA[<p style=\"text-align: center;\"><br></p><p style=\"text-align: center;\">&lt;i class=\"fa fa-tasks fa-5x\"&gt;&lt;/i&gt;</p>]]></statictext>\n                    </box>\n                    <box class=\"col-md-8\">\n                        <box class=\"widget_bulk\">\n                            <box>\n                                <button class=\"btn btn-block\" label=\"Consistency tests\" action=\"exit\">\n                                    <option output=\"html\" option_name=\"fa\" value=\"fa-balance-scale\"/>\n                                    <redirection module=\"query\" ctrl=\"index\" action=\"index\"/>\n                                </button>\n                                <button class=\"btn btn-block\" label=\"Calculated variables\" action=\"exit\">\n                                    <option output=\"html\" option_name=\"fa\" value=\"fa-calculator\"/>\n                                    <redirection module=\"query\" ctrl=\"calculatedvar\" action=\"index\"/>\n                                </button>\n                            </box>\n                        </box>\n                    </box>\n                </form_row>\n                <option output=\"html\" option_name=\"transparent_group\" value=\"false\"/>\n            </group>\n            <option output=\"html\" option_name=\"color_class\" value=\"col-md-6\"/>\n        </group>\n\n        <box class=\"clearfix\"/>\n\n        <group>\n            <option output=\"html\" option_name=\"color_class\" value=\"col-md-6\"/>\n            <option output=\"html\" option_name=\"transparent_group\" value=\"true\"/>\n            <group title=\"Data exploitation\">\n                <form_row class=\"columns\">\n                    <box class=\"col-md-4\">\n                        <statictext class=\"center width-100pc\">\n                            <![CDATA[<p style=\"text-align: center;\"><br></p><p style=\"text-align: center;\">&lt;i class=\"fa fa-database fa-5x\"&gt;&lt;/i&gt;</p>]]></statictext>\n                    </box>\n                    <box class=\"col-md-8\">\n                        <box class=\"widget_bulk\">\n                            <box>\n                                <button class=\"btn btn-block\" label=\"Listings\"\n                                        action=\"~({user-&gt;access}.indexOf(\'listing/index\') !== -1) ? \'exit\' : \'disabled\' ~\">\n                                    <option output=\"html\" option_name=\"fa\" value=\"fa-list-ol\"/>\n                                    <redirection module=\"listing\" ctrl=\"index\" action=\"getlisting\"/>\n                                </button>\n                                <button class=\"btn btn-block\" label=\"Exports\"\n                                        action=\"~({user-&gt;access}.indexOf(\'export/index\') !== -1) ? \'exit\' : \'disabled\' ~\">\n                                    <option output=\"html\" option_name=\"fa\" value=\"fa-download\"/>\n                                    <redirection module=\"export\" ctrl=\"home\" action=\"display\"/>\n                                </button>\n                                <button class=\"btn btn-block\" label=\"Filters\" action=\"exit\">\n                                    <option output=\"html\" option_name=\"fa\" value=\"fa-filter\"/>\n                                    <redirection module=\"filter\" ctrl=\"index\" action=\"display\"/>\n                                </button>\n                            </box>\n                        </box>\n                    </box>\n                </form_row>\n                <option output=\"html\" option_name=\"transparent_group\" value=\"false\"/>\n            </group>\n        </group>\n\n        <group>\n            <option output=\"html\" option_name=\"color_class\" value=\"col-md-6\"/>\n            <option output=\"html\" option_name=\"transparent_group\" value=\"true\"/>\n            <group title=\"SSO connection management\">\n                <form_row class=\"columns\">\n                    <box class=\"col-md-4\">\n                        <statictext class=\"width-100pc\">\n                            <![CDATA[<p style=\"text-align: center;\"><br></p><p style=\"text-align: center;\">&lt;i class=\"fa fa-th fa-5x\"&gt;&lt;/i&gt;</p>]]></statictext>\n                    </box>\n                    <box class=\"col-md-8\">\n                        <box class=\"widget_bulk\">\n                            <box>\n                                <button class=\"btn btn-block\" label=\"Import users from the portal\"\n                                        action=\"~{user-&gt;access}.indexOf(\'oauth/consumer/provideruserlist\') !== -1 ? \'exit\' : \'disabled\' ~\">\n                                    <option output=\"html\" option_name=\"fa\" value=\"fa-download\"/>\n                                    <redirection module=\"oauth\" ctrl=\"consumer\" action=\"provideruserlist\" type=\"window\"/>\n                                </button>\n                                <button class=\"btn btn-block\" label=\"Register a project\"\n                                        action=\"~({user-&gt;access}.indexOf(\'project/oauth/getconsumers\') !== -1 &amp;&amp; Y.Voozanoo.properties.is_oauth_provider === true) ? \'exit\' : \'disabled\' ~\">\n                                    <option output=\"html\" option_name=\"fa\" value=\"fa-th\"/>\n                                    <redirection module=\"project\" ctrl=\"oauth\" action=\"getconsumers\"/>\n                                </button>\n                                <button class=\"btn btn-block\" label=\"Assign users to projects\"\n                                        action=\"~({user-&gt;access}.indexOf(\'project/oauth/getuserconsumer\') !== -1 &amp;&amp; Y.Voozanoo.properties.is_oauth_provider === true) ? \'exit\' : \'disabled\' ~\">\n                                    <option output=\"html\" option_name=\"fa\" value=\"fa-user\"/>\n                                    <redirection module=\"project\" ctrl=\"oauth\" action=\"getuserconsumer\"/>\n                                </button>\n                            </box>\n                        </box>\n                    </box>\n                </form_row>\n                <option output=\"html\" option_name=\"transparent_group\" value=\"false\"/>\n            </group>\n        </group>\n\n        <box class=\"clearfix\"/>\n\n        <group>\n            <option output=\"html\" option_name=\"color_class\" value=\"col-md-6\"/>\n            <option output=\"html\" option_name=\"transparent_group\" value=\"true\"/>\n            <group title=\"Administration\">\n                <form_row class=\"columns\">\n                    <box class=\"col-md-4\">\n                        <statictext class=\"width-100pc\">\n                            <![CDATA[<p style=\"text-align: center;\"><br></p><p style=\"text-align: center;\">&lt;i class=\"fa fa-cogs fa-5x\"&gt;&lt;/i&gt;</p>]]></statictext>\n                    </box>\n                    <box class=\"col-md-8\">\n                        <box class=\"widget_bulk\">\n                            <box>\n                                <button class=\"btn btn-block\" label=\"General settings\" action=\"exit\">\n                                    <option output=\"html\" option_name=\"fa\" value=\"fa-wrench\"/>\n                                    <redirection module=\"project\" ctrl=\"index\" action=\"index\"/>\n                                </button>\n                                <button class=\"btn btn-block\" label=\"Dictionaries\" action=\"exit\">\n                                    <option output=\"html\" option_name=\"fa\" value=\"fa-book\"/>\n                                    <redirection module=\"dico\" ctrl=\"list\" action=\"index\"/>\n                                </button>\n                                <button class=\"btn btn-block\" label=\"Resources\" action=\"exit\">\n                                    <option output=\"html\" option_name=\"fa\" value=\"fa-gear\"/>\n                                    <redirection module=\"resource\" ctrl=\"list\" action=\"index\"/>\n                                </button>\n                                <button class=\"btn btn-block\" label=\"Varset map\"\n                                        action=\"~{user-&gt;access}.indexOf(\'varset/var-list/index\') !== -1 ? \'exit\' : \'disabled\' ~\">\n                                    <option output=\"html\" option_name=\"fa\" value=\"fa-list-alt\"/>\n                                    <redirection module=\"varset\" ctrl=\"var-list\" action=\"index\"/>\n                                </button>\n                                <button class=\"btn btn-block\" label=\"Announcements\" action=\"exit\">\n                                    <option output=\"html\" option_name=\"fa\" value=\"fa-bullhorn\"/>\n                                    <redirection module=\"project\" ctrl=\"notice\" action=\"get-notices\"/>\n                                </button>\n                            </box>\n                        </box>\n                    </box>\n                </form_row>\n                <option output=\"html\" option_name=\"transparent_group\" value=\"false\"/>\n            </group>\n        </group>\n\n        <box class=\"clearfix\"/>\n\n        <box class=\"widget_bulk\">\n            <box class=\"text-right\">\n                <link href=\"auth/index/disconnect\" method=\"window\" class=\"btn btn-danger btn-sm\">Logout</link>\n            </box>\n        </box>\n\n    </layout>\n</form>\n',NULL,'','');
/*!40000 ALTER TABLE `prjc_resource_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_resource_data_group`
--

DROP TABLE IF EXISTS `prjc_resource_data_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_resource_data_group` (
  `id_data_group` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_data` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_data_group`),
  UNIQUE KEY `id_data` (`id_data`,`id_group`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_resource_data_group`
--

LOCK TABLES `prjc_resource_data_group` WRITE;
/*!40000 ALTER TABLE `prjc_resource_data_group` DISABLE KEYS */;
INSERT INTO `prjc_resource_data_group` VALUES
(1,1,1),
(2,2,1),
(3,3,1),
(4,4,1),
(5,5,1),
(6,6,1),
(7,7,1),
(8,8,1),
(9,9,1),
(10,10,1),
(11,11,1),
(12,12,1),
(13,13,1);
/*!40000 ALTER TABLE `prjc_resource_data_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_resource_data_group_mode`
--

DROP TABLE IF EXISTS `prjc_resource_data_group_mode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_resource_data_group_mode` (
  `id_data_group_mode` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_data_group` int(10) unsigned NOT NULL,
  `mode` int(10) unsigned NOT NULL,
  `date_valid` date DEFAULT NULL,
  PRIMARY KEY (`id_data_group_mode`),
  UNIQUE KEY `id_data_group` (`id_data_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_resource_data_group_mode`
--

LOCK TABLES `prjc_resource_data_group_mode` WRITE;
/*!40000 ALTER TABLE `prjc_resource_data_group_mode` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_resource_data_group_mode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_resource_deleted`
--

DROP TABLE IF EXISTS `prjc_resource_deleted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_resource_deleted` (
  `id_data` int(10) unsigned NOT NULL,
  `id_owner` int(10) unsigned DEFAULT NULL,
  `sys_creation_date` datetime DEFAULT NULL,
  `sys_last_mod_date` datetime DEFAULT NULL,
  `sys_last_mod_user` int(10) unsigned DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `type` int(10) unsigned DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `filename` varchar(150) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `resource_id` varchar(40) DEFAULT NULL,
  KEY `id_data` (`id_data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_resource_deleted`
--

LOCK TABLES `prjc_resource_deleted` WRITE;
/*!40000 ALTER TABLE `prjc_resource_deleted` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_resource_deleted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_user_data`
--

DROP TABLE IF EXISTS `prjc_user_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_user_data` (
  `id_data` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_owner` int(10) unsigned DEFAULT NULL,
  `sys_creation_date` datetime DEFAULT NULL,
  `sys_last_mod_date` datetime DEFAULT NULL,
  `sys_last_mod_user` int(10) unsigned DEFAULT NULL,
  `id_group` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `status` int(10) unsigned DEFAULT NULL,
  `creation_date` date DEFAULT NULL,
  `password` varchar(105) DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `cps_id` varchar(30) DEFAULT NULL,
  `oauth_provider_id_user` int(11) DEFAULT NULL,
  `locale` int(10) unsigned DEFAULT NULL,
  `rpps` varchar(11) DEFAULT NULL,
  `otp_phone_number` varchar(20) DEFAULT NULL,
  `pwd_last_mod_date` date DEFAULT NULL,
  `end_access_delegation` datetime DEFAULT NULL,
  `pin_access_delegation` varchar(4) DEFAULT NULL,
  `sys_last_connection_date` date DEFAULT NULL,
  `sys_last_mfa_date` date DEFAULT NULL,
  `flagged_user` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_data`),
  KEY `id_owner` (`id_owner`),
  KEY `sys_last_mod_user` (`sys_last_mod_user`),
  KEY `id_group` (`id_group`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_user_data`
--

LOCK TABLES `prjc_user_data` WRITE;
/*!40000 ALTER TABLE `prjc_user_data` DISABLE KEYS */;
INSERT INTO `prjc_user_data` VALUES
(1,2,NULL,NULL,NULL,2,'user-root','Administrator',NULL,'fake@mail.com',43,'2025-11-06','cc09f8b475bd90b147558407f716ccb13cd3442f7741ee33018ca7d7ba31dc1f:9ec72c52e27d5f79ad7b6e34d8d01cbde54fa806',NULL,NULL,NULL,49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `prjc_user_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_user_data_group`
--

DROP TABLE IF EXISTS `prjc_user_data_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_user_data_group` (
  `id_data_group` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_data` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_data_group`),
  UNIQUE KEY `id_data` (`id_data`,`id_group`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_user_data_group`
--

LOCK TABLES `prjc_user_data_group` WRITE;
/*!40000 ALTER TABLE `prjc_user_data_group` DISABLE KEYS */;
INSERT INTO `prjc_user_data_group` VALUES
(1,1,1),
(2,1,2);
/*!40000 ALTER TABLE `prjc_user_data_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_user_data_group_mode`
--

DROP TABLE IF EXISTS `prjc_user_data_group_mode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_user_data_group_mode` (
  `id_data_group_mode` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_data_group` int(10) unsigned NOT NULL,
  `mode` int(10) unsigned NOT NULL,
  `date_valid` date DEFAULT NULL,
  PRIMARY KEY (`id_data_group_mode`),
  UNIQUE KEY `id_data_group` (`id_data_group`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_user_data_group_mode`
--

LOCK TABLES `prjc_user_data_group_mode` WRITE;
/*!40000 ALTER TABLE `prjc_user_data_group_mode` DISABLE KEYS */;
INSERT INTO `prjc_user_data_group_mode` VALUES
(1,2,438,NULL);
/*!40000 ALTER TABLE `prjc_user_data_group_mode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_user_deleted`
--

DROP TABLE IF EXISTS `prjc_user_deleted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_user_deleted` (
  `id_data` int(10) unsigned NOT NULL,
  `id_owner` int(10) unsigned DEFAULT NULL,
  `sys_creation_date` datetime DEFAULT NULL,
  `sys_last_mod_date` datetime DEFAULT NULL,
  `sys_last_mod_user` int(10) unsigned DEFAULT NULL,
  `id_group` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `status` int(10) unsigned DEFAULT NULL,
  `creation_date` date DEFAULT NULL,
  `password` varchar(105) DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `cps_id` varchar(30) DEFAULT NULL,
  `oauth_provider_id_user` int(11) DEFAULT NULL,
  `locale` int(10) unsigned DEFAULT NULL,
  `rpps` varchar(11) DEFAULT NULL,
  `otp_phone_number` varchar(20) DEFAULT NULL,
  `pwd_last_mod_date` date DEFAULT NULL,
  `end_access_delegation` datetime DEFAULT NULL,
  `pin_access_delegation` varchar(4) DEFAULT NULL,
  `sys_last_connection_date` date DEFAULT NULL,
  `sys_last_mfa_date` date DEFAULT NULL,
  `flagged_user` tinyint(1) DEFAULT NULL,
  KEY `id_data` (`id_data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_user_deleted`
--

LOCK TABLES `prjc_user_deleted` WRITE;
/*!40000 ALTER TABLE `prjc_user_deleted` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_user_deleted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_varsetmonitor_data`
--

DROP TABLE IF EXISTS `prjc_varsetmonitor_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_varsetmonitor_data` (
  `id_data` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_owner` int(10) unsigned DEFAULT NULL,
  `sys_creation_date` datetime DEFAULT NULL,
  `sys_last_mod_date` datetime DEFAULT NULL,
  `sys_last_mod_user` int(10) unsigned DEFAULT NULL,
  `id_evtlog` int(10) unsigned DEFAULT NULL,
  `id_varset` int(11) DEFAULT NULL,
  `id_data_monitored` int(11) DEFAULT NULL,
  `var_name` varchar(64) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_data`),
  KEY `id_owner` (`id_owner`),
  KEY `sys_last_mod_user` (`sys_last_mod_user`),
  KEY `id_varset` (`id_varset`,`id_data_monitored`),
  KEY `id_evtlog` (`id_evtlog`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_varsetmonitor_data`
--

LOCK TABLES `prjc_varsetmonitor_data` WRITE;
/*!40000 ALTER TABLE `prjc_varsetmonitor_data` DISABLE KEYS */;
INSERT INTO `prjc_varsetmonitor_data` VALUES
(1,NULL,'2025-11-06 14:06:52','2025-11-06 14:06:52',NULL,2,1,4,'content','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<varset name=\"pj_notice\" prefix=\"pj_notice\" type=\"sys\" label=\"Announcement\">\n  <var uid=\"1\" id=\"title\" type=\"string\" default_label=\"Title\" mandatory=\"false\" translate=\"true\">\n    <string length=\"255\"/>\n  </var>\n  <va'),
(2,NULL,'2025-11-06 14:06:52','2025-11-06 14:06:52',NULL,2,1,4,'name','[SYSTEM] Announcement'),
(3,NULL,'2025-11-06 14:06:52','2025-11-06 14:06:52',NULL,2,1,4,'type','54'),
(4,NULL,'2025-11-06 14:06:52','2025-11-06 14:06:52',NULL,2,1,4,'description',''),
(5,NULL,'2025-11-06 14:06:52','2025-11-06 14:06:52',NULL,2,1,4,'resource_id',''),
(6,NULL,'2025-11-06 14:06:52','2025-11-06 14:06:52',NULL,2,1,4,'sys_creation_date','2025-11-06 14:06:52'),
(7,NULL,'2025-11-06 14:06:52','2025-11-06 14:06:52',NULL,2,1,4,'sys_last_mod_date','2025-11-06 14:06:52'),
(8,NULL,'2025-11-06 14:06:52','2025-11-06 14:06:52',NULL,4,1,5,'content','<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<project><params><param name=\"id_style_resource\" value=\"0\" comment=\"Style du thème\"/><param name=\"conform_pssi\" value=\"0\" comment=\"Conformité à la PSSI\"/><param name=\"select_lang_enabled\" value=\"0\" comment=\"Sélec'),
(9,NULL,'2025-11-06 14:06:52','2025-11-06 14:06:52',NULL,4,1,5,'name','[SYSTEM] Project configuration'),
(10,NULL,'2025-11-06 14:06:52','2025-11-06 14:06:52',NULL,4,1,5,'type','52'),
(11,NULL,'2025-11-06 14:06:52','2025-11-06 14:06:52',NULL,4,1,5,'description',''),
(12,NULL,'2025-11-06 14:06:52','2025-11-06 14:06:52',NULL,4,1,5,'resource_id',''),
(13,NULL,'2025-11-06 14:06:52','2025-11-06 14:06:52',NULL,4,1,5,'sys_creation_date','2025-11-06 14:06:52'),
(14,NULL,'2025-11-06 14:06:52','2025-11-06 14:06:52',NULL,4,1,5,'sys_last_mod_date','2025-11-06 14:06:52'),
(15,NULL,'2025-11-06 14:06:52','2025-11-06 14:06:52',NULL,6,1,6,'content','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<varset name=\"dico\" prefix=\"dico\" type=\"sys\" label=\"Dictionary\">\n  <var uid=\"1\" id=\"dico_name\" type=\"string\" mandatory=\"true\" default_label=\"Dictionary\" default_short_label=\"Dictionary\">\n    <string length=\"100\" rege'),
(16,NULL,'2025-11-06 14:06:52','2025-11-06 14:06:52',NULL,6,1,6,'name','[SYSTEM] Dico'),
(17,NULL,'2025-11-06 14:06:52','2025-11-06 14:06:52',NULL,6,1,6,'type','54'),
(18,NULL,'2025-11-06 14:06:52','2025-11-06 14:06:52',NULL,6,1,6,'description',''),
(19,NULL,'2025-11-06 14:06:52','2025-11-06 14:06:52',NULL,6,1,6,'resource_id',''),
(20,NULL,'2025-11-06 14:06:52','2025-11-06 14:06:52',NULL,6,1,6,'sys_creation_date','2025-11-06 14:06:52'),
(21,NULL,'2025-11-06 14:06:52','2025-11-06 14:06:52',NULL,6,1,6,'sys_last_mod_date','2025-11-06 14:06:52'),
(22,NULL,'2025-11-06 14:06:52','2025-11-06 14:06:52',NULL,8,1,7,'content','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<varset name=\"dicostatus\" prefix=\"dicostatus\" type=\"sys\" label=\"Dictionary status\">\n  <var uid=\"1\" id=\"id_dico\" type=\"fkey_varset\" mandatory=\"true\" default_label=\"ID Dico\" default_short_label=\"ID Dico\">\n    <fkey_var'),
(23,NULL,'2025-11-06 14:06:52','2025-11-06 14:06:52',NULL,8,1,7,'name','[SYSTEM] Dico Status'),
(24,NULL,'2025-11-06 14:06:52','2025-11-06 14:06:52',NULL,8,1,7,'type','54'),
(25,NULL,'2025-11-06 14:06:52','2025-11-06 14:06:52',NULL,8,1,7,'description',''),
(26,NULL,'2025-11-06 14:06:52','2025-11-06 14:06:52',NULL,8,1,7,'resource_id',''),
(27,NULL,'2025-11-06 14:06:52','2025-11-06 14:06:52',NULL,8,1,7,'sys_creation_date','2025-11-06 14:06:52'),
(28,NULL,'2025-11-06 14:06:52','2025-11-06 14:06:52',NULL,8,1,7,'sys_last_mod_date','2025-11-06 14:06:52'),
(29,NULL,'2025-11-06 14:06:53','2025-11-06 14:06:53',NULL,10,1,8,'content','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<varset name=\"query\" prefix=\"query\" type=\"sys\" label=\"Query\">\n  <var uid=\"1\" id=\"type_request\" type=\"integer\" default_label=\"Type\" default_short_label=\"Type\">\n    <integer min=\"0\" max=\"99999999999\"/>\n  </var>\n  <var '),
(30,NULL,'2025-11-06 14:06:53','2025-11-06 14:06:53',NULL,10,1,8,'name','[SYSTEM] Query'),
(31,NULL,'2025-11-06 14:06:53','2025-11-06 14:06:53',NULL,10,1,8,'type','54'),
(32,NULL,'2025-11-06 14:06:53','2025-11-06 14:06:53',NULL,10,1,8,'description',''),
(33,NULL,'2025-11-06 14:06:53','2025-11-06 14:06:53',NULL,10,1,8,'resource_id',''),
(34,NULL,'2025-11-06 14:06:53','2025-11-06 14:06:53',NULL,10,1,8,'sys_creation_date','2025-11-06 14:06:53'),
(35,NULL,'2025-11-06 14:06:53','2025-11-06 14:06:53',NULL,10,1,8,'sys_last_mod_date','2025-11-06 14:06:53'),
(36,NULL,'2025-11-06 14:06:53','2025-11-06 14:06:53',NULL,12,1,9,'content','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<varset name=\"queryvar\" prefix=\"queryvar\" type=\"sys\" label=\"Query Var\">\n  <var uid=\"1\" id=\"id_query\" type=\"fkey_varset\" default_label=\"Query ID\" default_short_label=\"Query ID\">\n    <fkey_varset varset_name=\"query\"/>\n'),
(37,NULL,'2025-11-06 14:06:53','2025-11-06 14:06:53',NULL,12,1,9,'name','[SYSTEM] Queryvar'),
(38,NULL,'2025-11-06 14:06:53','2025-11-06 14:06:53',NULL,12,1,9,'type','54'),
(39,NULL,'2025-11-06 14:06:53','2025-11-06 14:06:53',NULL,12,1,9,'description',''),
(40,NULL,'2025-11-06 14:06:53','2025-11-06 14:06:53',NULL,12,1,9,'resource_id',''),
(41,NULL,'2025-11-06 14:06:53','2025-11-06 14:06:53',NULL,12,1,9,'sys_creation_date','2025-11-06 14:06:53'),
(42,NULL,'2025-11-06 14:06:53','2025-11-06 14:06:53',NULL,12,1,9,'sys_last_mod_date','2025-11-06 14:06:53'),
(43,NULL,'2025-11-06 14:06:53','2025-11-06 14:06:53',NULL,14,1,10,'content','<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<varset name=\"querycache\" prefix=\"querycache\" type=\"sys\" label=\"Query cache\">\n  <var uid=\"1\" id=\"id_record\" type=\"integer\" default_label=\"Main varset record id\" default_short_label=\"Record id\"/>\n  <var uid=\"2\" id=\"va'),
(44,NULL,'2025-11-06 14:06:53','2025-11-06 14:06:53',NULL,14,1,10,'name','[SYSTEM] Querycache'),
(45,NULL,'2025-11-06 14:06:53','2025-11-06 14:06:53',NULL,14,1,10,'type','54'),
(46,NULL,'2025-11-06 14:06:53','2025-11-06 14:06:53',NULL,14,1,10,'description',''),
(47,NULL,'2025-11-06 14:06:53','2025-11-06 14:06:53',NULL,14,1,10,'resource_id',''),
(48,NULL,'2025-11-06 14:06:53','2025-11-06 14:06:53',NULL,14,1,10,'sys_creation_date','2025-11-06 14:06:53'),
(49,NULL,'2025-11-06 14:06:53','2025-11-06 14:06:53',NULL,14,1,10,'sys_last_mod_date','2025-11-06 14:06:53'),
(50,NULL,'2025-11-06 14:06:54','2025-11-06 14:06:54',NULL,16,1,11,'content','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<varset name=\"user\" prefix=\"user\" type=\"sys\" label=\"User\">\n  <var uid=\"1\" id=\"id_group\" type=\"integer\" mandatory=\"true\" default_label=\"Linked Group\" default_short_label=\"Linked group\">\n    <integer min=\"0\" max=\"42949'),
(51,NULL,'2025-11-06 14:06:54','2025-11-06 14:06:54',NULL,16,1,11,'name','[SYSTEM] User'),
(52,NULL,'2025-11-06 14:06:54','2025-11-06 14:06:54',NULL,16,1,11,'type','54'),
(53,NULL,'2025-11-06 14:06:54','2025-11-06 14:06:54',NULL,16,1,11,'description',''),
(54,NULL,'2025-11-06 14:06:54','2025-11-06 14:06:54',NULL,16,1,11,'resource_id',''),
(55,NULL,'2025-11-06 14:06:54','2025-11-06 14:06:54',NULL,16,1,11,'sys_creation_date','2025-11-06 14:06:54'),
(56,NULL,'2025-11-06 14:06:54','2025-11-06 14:06:54',NULL,16,1,11,'sys_last_mod_date','2025-11-06 14:06:54'),
(57,NULL,'2025-11-06 14:06:54','2025-11-06 14:06:54',NULL,18,10,1,'username','user-root'),
(58,NULL,'2025-11-06 14:06:54','2025-11-06 14:06:54',NULL,18,10,1,'firstname','Administrator'),
(59,NULL,'2025-11-06 14:06:54','2025-11-06 14:06:54',NULL,18,10,1,'status','43'),
(60,NULL,'2025-11-06 14:06:54','2025-11-06 14:06:54',NULL,18,10,1,'locale','49'),
(61,NULL,'2025-11-06 14:06:54','2025-11-06 14:06:54',NULL,18,10,1,'id_group','2'),
(62,NULL,'2025-11-06 14:06:54','2025-11-06 14:06:54',NULL,18,10,1,'password','cc09f8b475bd90b147558407f716ccb13cd3442f7741ee33018ca7d7ba31dc1f:9ec72c52e27d5f79ad7b6e34d8d01cbde54fa806'),
(63,NULL,'2025-11-06 14:06:54','2025-11-06 14:06:54',NULL,18,10,1,'creation_date','2025-11-06'),
(64,NULL,'2025-11-06 14:06:54','2025-11-06 14:06:54',NULL,18,10,1,'group_link','{\"id_role\":\"1\",\"id_group\":\"1\"}'),
(65,NULL,'2025-11-06 14:06:54','2025-11-06 14:06:54',NULL,19,10,1,'sys_group','1'),
(66,NULL,'2025-11-06 14:06:54','2025-11-06 14:06:54',NULL,20,10,1,'sys_group','2'),
(67,NULL,'2025-11-06 14:06:54','2025-11-06 14:06:54',NULL,22,1,12,'content','<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<acl_roles><role id=\"1\"><access><allow name=\"form/frame/get\"/><allow name=\"form/frame/save\"/><allow name=\"form/frame/delete\"/><allow name=\"upload/upload\"/><allow name=\"migration/index/tests\"/><allow name=\"audit/frame'),
(68,NULL,'2025-11-06 14:06:54','2025-11-06 14:06:54',NULL,22,1,12,'name','[SYSTEM] ACL'),
(69,NULL,'2025-11-06 14:06:54','2025-11-06 14:06:54',NULL,22,1,12,'type','55'),
(70,NULL,'2025-11-06 14:06:54','2025-11-06 14:06:54',NULL,22,1,12,'description',''),
(71,NULL,'2025-11-06 14:06:54','2025-11-06 14:06:54',NULL,22,1,12,'resource_id',''),
(72,NULL,'2025-11-06 14:06:54','2025-11-06 14:06:54',NULL,22,1,12,'sys_creation_date','2025-11-06 14:06:54'),
(73,NULL,'2025-11-06 14:06:54','2025-11-06 14:06:54',NULL,22,1,12,'sys_last_mod_date','2025-11-06 14:06:54'),
(74,2,'2025-11-06 14:06:54','2025-11-06 14:06:54',2,23,1,13,'sys_group','1'),
(75,2,'2025-11-06 14:06:54','2025-11-06 14:06:54',2,24,1,13,'content','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<form>\n    <data_structure/>\n\n    <layout title=\"Home Page\" hide_title=\"true\">\n\n        <group>\n            <option output=\"html\" option_name=\"transparent_group\" value=\"true\"/>\n            <group title=\"Users and rig'),
(76,2,'2025-11-06 14:06:54','2025-11-06 14:06:54',2,24,1,13,'name','Homepage'),
(77,2,'2025-11-06 14:06:54','2025-11-06 14:06:54',2,24,1,13,'type','77'),
(78,2,'2025-11-06 14:06:54','2025-11-06 14:06:54',2,24,1,13,'description',''),
(79,2,'2025-11-06 14:06:54','2025-11-06 14:06:54',2,24,1,13,'resource_id',''),
(80,2,'2025-11-06 14:06:54','2025-11-06 14:06:54',2,24,1,13,'sys_creation_date','2025-11-06 14:06:54'),
(81,2,'2025-11-06 14:06:54','2025-11-06 14:06:54',2,24,1,13,'sys_last_mod_date','2025-11-06 14:06:54'),
(82,2,'2025-11-06 14:06:54','2025-11-06 14:06:54',2,24,1,13,'sys_last_mod_user','2');
/*!40000 ALTER TABLE `prjc_varsetmonitor_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_varsetmonitor_data_group`
--

DROP TABLE IF EXISTS `prjc_varsetmonitor_data_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_varsetmonitor_data_group` (
  `id_data_group` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_data` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_data_group`),
  UNIQUE KEY `id_data` (`id_data`,`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_varsetmonitor_data_group`
--

LOCK TABLES `prjc_varsetmonitor_data_group` WRITE;
/*!40000 ALTER TABLE `prjc_varsetmonitor_data_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_varsetmonitor_data_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_varsetmonitor_data_group_mode`
--

DROP TABLE IF EXISTS `prjc_varsetmonitor_data_group_mode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_varsetmonitor_data_group_mode` (
  `id_data_group_mode` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_data_group` int(10) unsigned NOT NULL,
  `mode` int(10) unsigned NOT NULL,
  `date_valid` date DEFAULT NULL,
  PRIMARY KEY (`id_data_group_mode`),
  UNIQUE KEY `id_data_group` (`id_data_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_varsetmonitor_data_group_mode`
--

LOCK TABLES `prjc_varsetmonitor_data_group_mode` WRITE;
/*!40000 ALTER TABLE `prjc_varsetmonitor_data_group_mode` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_varsetmonitor_data_group_mode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjc_varsetmonitor_deleted`
--

DROP TABLE IF EXISTS `prjc_varsetmonitor_deleted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjc_varsetmonitor_deleted` (
  `id_data` int(10) unsigned NOT NULL,
  `id_owner` int(10) unsigned DEFAULT NULL,
  `sys_creation_date` datetime DEFAULT NULL,
  `sys_last_mod_date` datetime DEFAULT NULL,
  `sys_last_mod_user` int(10) unsigned DEFAULT NULL,
  `id_evtlog` int(10) unsigned DEFAULT NULL,
  `id_varset` int(11) DEFAULT NULL,
  `id_data_monitored` int(11) DEFAULT NULL,
  `var_name` varchar(64) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  KEY `id_data` (`id_data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjc_varsetmonitor_deleted`
--

LOCK TABLES `prjc_varsetmonitor_deleted` WRITE;
/*!40000 ALTER TABLE `prjc_varsetmonitor_deleted` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjc_varsetmonitor_deleted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `session` (
  `id` char(32) NOT NULL,
  `modified` int(11) DEFAULT NULL,
  `lifetime` int(11) DEFAULT NULL,
  `data` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
/*!40000 ALTER TABLE `session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_context`
--

DROP TABLE IF EXISTS `sys_context`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_context` (
  `id_sys_config` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(80) NOT NULL,
  `name` varchar(80) NOT NULL,
  `value` varchar(80) NOT NULL,
  `last_update` datetime NOT NULL,
  PRIMARY KEY (`id_sys_config`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_context`
--

LOCK TABLES `sys_context` WRITE;
/*!40000 ALTER TABLE `sys_context` DISABLE KEYS */;
INSERT INTO `sys_context` VALUES
(1,'system','version','2.26','2025-11-06 14:06:50');
/*!40000 ALTER TABLE `sys_context` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dico_data`
--

DROP TABLE IF EXISTS `sys_dico_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dico_data` (
  `id_data` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_owner` int(10) unsigned DEFAULT NULL,
  `dico_name` varchar(100) NOT NULL,
  `label` varchar(255) NOT NULL,
  `short_label` varchar(30) NOT NULL,
  `position` int(11) DEFAULT 0,
  `code` char(50) DEFAULT NULL,
  `dico_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id_data`),
  KEY `idx_dico_name` (`dico_name`)
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dico_data`
--

LOCK TABLES `sys_dico_data` WRITE;
/*!40000 ALTER TABLE `sys_dico_data` DISABLE KEYS */;
INSERT INTO `sys_dico_data` VALUES
(1,NULL,'dmcp_modalite','Directly','DMCP_MDIRECT',3,'D',NULL),
(2,NULL,'dmcp_modalite','By phone','DMCP_MTEL',2,'T',NULL),
(3,NULL,'dmcp_modalite','By mail','DMCP_MMAIL',1,'M',NULL),
(4,NULL,'dmcp_demande','History','DMCP_HDEM',3,'H',NULL),
(5,NULL,'dmcp_demande','Modification','DMCP_RDEM',2,'R',NULL),
(6,NULL,'dmcp_demande','Data access','DMCP_ADEM',1,'A',NULL),
(7,NULL,'dmcp_access_mode','Modifications','DMCP_UACCESS',3,'U',NULL),
(8,NULL,'dmcp_access_mode','Insert','DMCP_CACCESS',2,'C',NULL),
(9,NULL,'dmcp_access_mode','Read','DMCP_RACCESS',1,'R',NULL),
(10,NULL,'dmcp','Protected','DMCP_PROTECTED',4,'4',NULL),
(11,NULL,'dmcp','Accessible','DMCP_ACCESS',2,'1',NULL),
(12,NULL,'dmcp','Not subject to','DMCP_NO',1,'0',NULL),
(13,NULL,'dmcp','Nominative','DMCP_NOM',3,'2',NULL),
(14,NULL,'type_evt','Information','INFO',1,'6',NULL),
(15,NULL,'type_evt','Debug','DEBUG',2,'7',NULL),
(16,NULL,'type_evt','Insert','VZN_REC_INSERT',3,'8',NULL),
(17,NULL,'type_evt','Update','VZN_REC_UPDATE',4,'9',NULL),
(18,NULL,'type_evt','Delete','VZN_REC_DELETE',5,'10',NULL),
(19,NULL,'type_evt','Connection','VZN_EVT_CONNEXION',6,'11',NULL),
(20,NULL,'type_evt','Connection CPSx','VZN_EVT_CONNEXIONCPS',7,'12',NULL),
(21,NULL,'type_evt','Connection oAuth','VZN_EVT_CONNEXION_OAUTH',8,'13',NULL),
(22,NULL,'type_evt','Connection Webservices','VZN_EVT_CONNEXION_WS',9,'14',NULL),
(23,NULL,'type_evt','Connection OTP','VZN_EVT_CONNEXION_OTP',10,'15',NULL),
(24,NULL,'type_evt','Connection token','VZN_EVT_CONNEXION_TOKEN',11,'16',NULL),
(25,NULL,'type_evt','Connection sudo','VZN_EVT_CONNEXION_SUDO',12,'17',NULL),
(26,NULL,'type_evt','Connection sudo','VZN_EVT_CONNEXION_SAML',13,'18',NULL),
(27,NULL,'type_evt','Connection Webservices OAuth 2.0','VZN_EVT_CONNEXION_WS_OAUTH2',14,'19',NULL),
(28,NULL,'type_evt','Group merge','VZN_EVT_GRP_MERGE',201,'201',NULL),
(29,NULL,'type_evt','Group rm','VZN_EVT_GRP_RM',202,'202',NULL),
(30,NULL,'type_evt','Group rename','VZN_EVT_GRP_RENAME',203,'203',NULL),
(31,NULL,'type_evt','Group add','VZN_EVT_GRP_ADD',204,'204',NULL),
(32,NULL,'type_evt','Group disable','VZN_EVT_GRP_DISABLE',205,'205',NULL),
(33,NULL,'type_evt','Group enable','VZN_EVT_GRP_ENABLE',206,'206',NULL),
(34,NULL,'type_evt','Group move','VZN_EVT_GRP_MOVE',207,'207',NULL),
(35,NULL,'type_evt','Dico delete','VZN_EVT_DICO_DELETE',301,'301',NULL),
(36,NULL,'type_evt','Dico value delete','VZN_EVT_DICO_DELETE_VALUE',302,'302',NULL),
(37,NULL,'type_evt','User add','VZN_EVT_USER_ADD',401,'401',NULL),
(38,NULL,'type_evt','User disable','VZN_EVT_USER_DISABLE',402,'402',NULL),
(39,NULL,'type_evt','User enable','VZN_EVT_USER_ENABLE',403,'403',NULL),
(40,NULL,'type_evt','User delete','VZN_EVT_USER_DELETE',404,'404',NULL),
(41,NULL,'type_evt','Data export','VZN_EVT_EXPORT',501,'501',NULL),
(42,NULL,'type_evt','Data export async','VZN_EVT_EXPORT_ASYNC',502,'502',NULL),
(43,NULL,'user_status','Enabled','on',1,'on',NULL),
(44,NULL,'user_status','Disabled','off',2,'off',NULL),
(45,NULL,'user_status','Deleted','del',3,'del',NULL),
(46,NULL,'yorn','Yes','yes',1,'y',NULL),
(47,NULL,'yorn','No','no',2,'n',NULL),
(48,NULL,'locale','English (UK)','UK',1,'en_GB',NULL),
(49,NULL,'locale','French (FR)','FR',2,'fr_FR',NULL),
(50,NULL,'locale','English (US)','US',3,'en_US',NULL),
(51,NULL,'resource_type','Form','form',1,'frm',NULL),
(52,NULL,'resource_type','Project','project',2,'prj',NULL),
(53,NULL,'resource_type','Style','style',3,'stl',NULL),
(54,NULL,'resource_type','Varset','varset',4,'vst',NULL),
(55,NULL,'resource_type','ACL','acl',5,'acl',NULL),
(56,NULL,'resource_type','XML','xml',6,'xml',NULL),
(57,NULL,'resource_type','DataSet','dataset',7,'dst',NULL),
(58,NULL,'resource_type','Data Structure','data_structure',8,'str',NULL),
(59,NULL,'resource_type','DataQuery','dataquery',9,'dqy',NULL),
(60,NULL,'resource_type','Query','query',10,'qry',NULL),
(61,NULL,'resource_type','Group','group',11,'grp',NULL),
(62,NULL,'resource_type','ACL Roles','acl_roles',12,'arl',NULL),
(63,NULL,'resource_type','ACL Resources','acl_resources',13,'ars',NULL),
(64,NULL,'resource_type','PHP','php',14,'php',NULL),
(65,NULL,'resource_type','SQL','sql',15,'sql',NULL),
(66,NULL,'resource_type','TPL','tpl',16,'tpl',NULL),
(67,NULL,'resource_type','XSD','xsd',17,'xsd',NULL),
(68,NULL,'resource_type','XSL','xsl',18,'xsl',NULL),
(69,NULL,'resource_type','PO','po',19,'po',NULL),
(70,NULL,'resource_type','MO','mo',20,'mo',NULL),
(71,NULL,'resource_type','CSV','csv',21,'csv',NULL),
(72,NULL,'resource_type','Fixed length','fixed len',22,'fln',NULL),
(73,NULL,'resource_type','Standard class','stdclass',23,'scl',NULL),
(74,NULL,'resource_type','ODK','odk',24,'odk',NULL),
(75,NULL,'resource_type','Listing','listing',25,'lst',NULL),
(76,NULL,'resource_type','Filter','filter',26,'flt',NULL),
(77,NULL,'resource_type','Homepage','homepage',27,'hmp',NULL),
(78,NULL,'resource_type','Script','script',28,'scr',NULL),
(79,NULL,'resource_type','R','r',29,'r',NULL),
(80,NULL,'resource_type','JSON','json',30,'json',NULL),
(81,NULL,'resource_type','Layout','layout',31,'lyt',NULL),
(82,NULL,'resource_type','My account','my account',32,'mya',NULL),
(83,NULL,'resource_type','CSS','CSS',33,'css',NULL),
(84,NULL,'resource_type','Export','export',34,'exp',NULL),
(85,NULL,'resource_type','Text','text',35,'txt',NULL),
(86,NULL,'resource_type','Menu','menu',36,'menu',NULL),
(87,NULL,'consistency_test_lvl','Warning (non-blocking)','Warning',2,'wrn',NULL),
(88,NULL,'consistency_test_lvl','Error (blocking)','Error',1,'err',NULL),
(89,NULL,'consistency_test_run','When exiting field','Runtime',1,'rtm',NULL),
(90,NULL,'consistency_test_run','Accumulated (batch)','Batch',2,'bch',NULL),
(91,NULL,'provider_type','Webservice Voozanoo4','ws vzn4',1,'ws_vzn4',NULL),
(92,NULL,'provider_type','Webservice','ws',1,'ws',NULL),
(93,NULL,'provider_type','File','file',1,'file',NULL),
(94,NULL,'consistency_test_lvl','Alert','Alert',3,'alt',NULL),
(95,NULL,'consistency_test_lvl','Notice','Notice',4,'ntc',NULL),
(96,NULL,'consistency_test_frq','Every month','Every month',1,'0 0 1 * *',NULL),
(97,NULL,'consistency_test_frq','Every week','Every week',2,'0 0 * * 0',NULL),
(98,NULL,'consistency_test_frq','Every day at midnight','Every day at midnight',3,'0 0 * * *',NULL),
(99,NULL,'consistency_test_frq','Every hour','Every hour',4,'0 * * * *',NULL),
(100,NULL,'listing_rows_number','20','20',1,'20',NULL),
(101,NULL,'listing_rows_number','50','50',2,'50',NULL),
(102,NULL,'listing_rows_number','100','100',3,'100',NULL),
(103,1,'listing_action','View','View',1,'view',NULL),
(104,1,'listing_action','Edit','Edit',2,'edit',NULL),
(105,1,'listing_action','Delete','Delete',3,'delete',NULL),
(106,1,'filter_approximation_scope','-','-',1,'-',NULL),
(107,1,'filter_approximation_scope','+','+',2,'+',NULL),
(108,1,'filter_approximation_scope','+/-','+/-',3,'+/-',NULL),
(109,1,'filter_approximation_func_date','Days','Days',1,'days',NULL),
(110,1,'filter_approximation_func_date','Months','Months',2,'months',NULL),
(111,1,'filter_approximation_func_date','Years','Years',3,'years',NULL),
(112,1,'filter_approximation_func_datetime','Hours','Hours',1,'hours',NULL),
(113,1,'filter_approximation_func_datetime','Days','Days',2,'days',NULL),
(114,1,'filter_approximation_func_datetime','Months','Months',3,'months',NULL),
(115,1,'filter_approximation_func_datetime','Years','Years',4,'years',NULL),
(116,1,'filter_approximation_func_time','Minutes','Minutes',1,'minutes',NULL),
(117,1,'filter_approximation_func_time','Hours','Hours',2,'hours',NULL),
(118,1,'filter_approximation_func_numeric','%','%',1,'%',NULL),
(119,1,'filter_comparator_numeric','greater than','greater than',1,'>',NULL),
(120,1,'filter_comparator_numeric','greater than or equal to','greater than or equal to',2,'>=',NULL),
(121,1,'filter_comparator_numeric','equal to','equal to',3,'=',NULL),
(122,1,'filter_comparator_numeric','not equal to','not equal to',4,'!=',NULL),
(123,1,'filter_comparator_numeric','less than','less than',5,'<',NULL),
(124,1,'filter_comparator_numeric','less than or equal to','less than or equal to',6,'<=',NULL),
(125,1,'filter_comparator_numeric','empty','empty',7,'empty',NULL),
(126,1,'filter_comparator_numeric','not empty','not empty',8,'not_empty',NULL),
(127,1,'filter_comparator_string','equal to','equal to',1,'=',NULL),
(128,1,'filter_comparator_string','different than','different than',2,'!=',NULL),
(129,1,'filter_comparator_string','contains','contains',3,'contain',NULL),
(130,1,'filter_comparator_string','begins with','begins with',4,'begin',NULL),
(131,1,'filter_comparator_string','ends with','ends with',5,'end',NULL),
(132,1,'filter_comparator_string','empty','empty',6,'empty',NULL),
(133,1,'filter_comparator_numeric','not empty','not empty',7,'not_empty',NULL),
(134,1,'filter_comparator_dico','equal to','equal to',1,'=',NULL),
(135,1,'filter_comparator_dico','different than','different than',2,'!=',NULL),
(136,1,'filter_comparator_dico','empty','empty',3,'empty',NULL),
(137,1,'filter_comparator_numeric','not empty','not empty',4,'not_empty',NULL),
(138,1,'filter_action','Value','Value',1,'value',NULL),
(139,1,'filter_action','Enter during use','Enter during use',2,'dynamic',NULL),
(140,1,'function_date','NOW()','NOW()',1,'now()',NULL),
(141,1,'dico_value_status','Created','Created',1,'C',NULL),
(142,1,'dico_value_status','Archived','Archived',2,'A',NULL),
(143,1,'dico_value_status','Unarchived','Unarchived',3,'UA',NULL),
(144,1,'var_type','String','String',1,'string',NULL),
(145,1,'var_type','Integer','Integer',2,'integer',NULL),
(146,1,'var_type','Float','Float',3,'float',NULL),
(147,1,'var_type','Date','Date',4,'date',NULL),
(148,1,'var_type','Time','Time',5,'time',NULL),
(149,1,'var_type','Date-time','Date-time',6,'datetime',NULL),
(150,1,'var_type','Boolean','Boolean',7,'boolean',NULL),
(151,1,'var_type','Text multiline','Text multiline',8,'text',NULL),
(152,1,'var_type','Dictionary','Dictionary',9,'fkey_dico',NULL),
(153,1,'dico_format','Raw','Raw',1,'raw',NULL),
(154,1,'dico_format','Code','Code',2,'code',NULL),
(155,1,'dico_format','Short label','Short label',3,'short_label',NULL),
(156,1,'dico_format','Label','Label',4,'label',NULL),
(157,NULL,'epimob_data_storage','Local: data is stored on the mobile device (user can send data to the server at anytime).','local',1,'local',NULL),
(158,NULL,'epimob_data_storage','Server: when the user saves the form, data is saved directly on the server.','server',2,'server',NULL),
(159,NULL,'epimob_gateway','Default','Default',1,'default',NULL),
(160,NULL,'epimob_gateway','Twilio','Twilio',2,'twilio',NULL),
(161,NULL,'bootstrap_colors','Default','Default',1,'default',NULL),
(162,NULL,'bootstrap_colors','Primary','Primary',2,'primary',NULL),
(163,NULL,'bootstrap_colors','Success','Success',3,'success',NULL),
(164,NULL,'bootstrap_colors','Info','Info',4,'info',NULL),
(165,NULL,'bootstrap_colors','Warning','Warning',5,'warning',NULL),
(166,NULL,'bootstrap_colors','Danger','Danger',6,'danger',NULL),
(167,NULL,'multi_factor_channel','None','None',1,'none',NULL),
(168,NULL,'multi_factor_channel','Verification code sent by email','Email',2,'email',NULL),
(169,NULL,'multi_factor_channel','Verification code sent by text message','SMS',3,'sms',NULL),
(170,NULL,'multi_factor_frequency','At each connection','Connection',1,'connection',NULL),
(171,NULL,'multi_factor_frequency','Once a day','Daily',2,'daily',NULL),
(172,NULL,'multi_factor_frequency','Less frequently','Custom',3,'custom',NULL);
/*!40000 ALTER TABLE `sys_dico_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_editor`
--

DROP TABLE IF EXISTS `sys_editor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_editor` (
  `id_sys_editor` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_sys_project` int(11) NOT NULL,
  `id_editor` varchar(23) NOT NULL,
  `last_action_id` varchar(23) DEFAULT NULL,
  `last_action_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id_sys_editor`),
  KEY `id_sys_editor` (`id_sys_editor`),
  KEY `id_editor` (`id_editor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_editor`
--

LOCK TABLES `sys_editor` WRITE;
/*!40000 ALTER TABLE `sys_editor` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_editor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_editor_publication`
--

DROP TABLE IF EXISTS `sys_editor_publication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_editor_publication` (
  `id_sys_editor_publication` int(11) NOT NULL AUTO_INCREMENT,
  `uniq_id` varchar(23) NOT NULL,
  `environment_id` varchar(23) NOT NULL,
  `last_update_timestamp` int(11) NOT NULL,
  `id_sys_editor` int(11) NOT NULL,
  `action_page_uploaded` int(11) NOT NULL,
  `action_page_total` int(11) NOT NULL,
  `action_applied` int(11) NOT NULL,
  `action_total` int(11) NOT NULL,
  `action_file` varchar(255) NOT NULL,
  `backup_path` varchar(255) NOT NULL,
  `sql_dump_size` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id_sys_editor_publication`),
  KEY `publication_id` (`environment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_editor_publication`
--

LOCK TABLES `sys_editor_publication` WRITE;
/*!40000 ALTER TABLE `sys_editor_publication` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_editor_publication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_project`
--

DROP TABLE IF EXISTS `sys_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_project` (
  `id_sys_project` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(200) NOT NULL,
  `name` varchar(20) NOT NULL,
  `tables_prefix` varchar(4) NOT NULL,
  `lang` varchar(10) NOT NULL,
  `id_style_resource` int(10) unsigned DEFAULT NULL,
  `id_resource` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_sys_project`),
  UNIQUE KEY `sys_project_tables_prefix` (`tables_prefix`),
  UNIQUE KEY `sys_project_name` (`name`),
  KEY `idx_project_resource` (`id_style_resource`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_project`
--

LOCK TABLES `sys_project` WRITE;
/*!40000 ALTER TABLE `sys_project` DISABLE KEYS */;
INSERT INTO `sys_project` VALUES
(1,'\"Mon projet\"','myproject','prjc','en_GB',NULL,5);
/*!40000 ALTER TABLE `sys_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_project_user`
--

DROP TABLE IF EXISTS `sys_project_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_project_user` (
  `id_sys_project_user` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_sys_user` int(11) NOT NULL,
  `id_sys_project` int(11) NOT NULL,
  `mode` int(11) NOT NULL,
  PRIMARY KEY (`id_sys_project_user`),
  KEY `id_sys_user_sys_project` (`id_sys_user`,`id_sys_project`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_project_user`
--

LOCK TABLES `sys_project_user` WRITE;
/*!40000 ALTER TABLE `sys_project_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_project_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `id_sys_user` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `password` varchar(105) NOT NULL,
  `expire_date` date DEFAULT NULL,
  `cps_id` varchar(30) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `project_creator` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `creation_date` datetime NOT NULL,
  PRIMARY KEY (`id_sys_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-06 14:09:02
