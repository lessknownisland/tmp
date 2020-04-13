-- MySQL dump 10.14  Distrib 5.5.64-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: saWeb2
-- ------------------------------------------------------
-- Server version	5.5.64-MariaDB

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add telegram_chat_group_t',7,'add_telegram_chat_group_t'),(26,'Can change telegram_chat_group_t',7,'change_telegram_chat_group_t'),(27,'Can delete telegram_chat_group_t',7,'delete_telegram_chat_group_t'),(28,'Can view telegram_chat_group_t',7,'view_telegram_chat_group_t'),(29,'Can add telegram_user_id_t',8,'add_telegram_user_id_t'),(30,'Can change telegram_user_id_t',8,'change_telegram_user_id_t'),(31,'Can delete telegram_user_id_t',8,'delete_telegram_user_id_t'),(32,'Can view telegram_user_id_t',8,'view_telegram_user_id_t'),(33,'Can add department_user_t',9,'add_department_user_t'),(34,'Can change department_user_t',9,'change_department_user_t'),(35,'Can delete department_user_t',9,'delete_department_user_t'),(36,'Can view department_user_t',9,'view_department_user_t'),(37,'Can add telegram user id tb',8,'add_telegramuseridtb'),(38,'Can change telegram user id tb',8,'change_telegramuseridtb'),(39,'Can delete telegram user id tb',8,'delete_telegramuseridtb'),(40,'Can view telegram user id tb',8,'view_telegramuseridtb'),(41,'Can add department user tb',9,'add_departmentusertb'),(42,'Can change department user tb',9,'change_departmentusertb'),(43,'Can delete department user tb',9,'delete_departmentusertb'),(44,'Can view department user tb',9,'view_departmentusertb'),(45,'Can add telegram chat group tb',7,'add_telegramchatgrouptb'),(46,'Can change telegram chat group tb',7,'change_telegramchatgrouptb'),(47,'Can delete telegram chat group tb',7,'delete_telegramchatgrouptb'),(48,'Can view telegram chat group tb',7,'view_telegramchatgrouptb'),(49,'Can add web uri second level tb',10,'add_weburisecondleveltb'),(50,'Can change web uri second level tb',10,'change_weburisecondleveltb'),(51,'Can delete web uri second level tb',10,'delete_weburisecondleveltb'),(52,'Can view web uri second level tb',10,'view_weburisecondleveltb'),(53,'Can add web uri third level tb',11,'add_weburithirdleveltb'),(54,'Can change web uri third level tb',11,'change_weburithirdleveltb'),(55,'Can delete web uri third level tb',11,'delete_weburithirdleveltb'),(56,'Can view web uri third level tb',11,'view_weburithirdleveltb'),(57,'Can add web uri first level tb',12,'add_weburifirstleveltb'),(58,'Can change web uri first level tb',12,'change_weburifirstleveltb'),(59,'Can delete web uri first level tb',12,'delete_weburifirstleveltb'),(60,'Can view web uri first level tb',12,'view_weburifirstleveltb'),(61,'Can add user web uri permissions tb',13,'add_userweburipermissionstb'),(62,'Can change user web uri permissions tb',13,'change_userweburipermissionstb'),(63,'Can delete user web uri permissions tb',13,'delete_userweburipermissionstb'),(64,'Can view user web uri permissions tb',13,'view_userweburipermissionstb'),(65,'Can add user web uri group permissions tb',14,'add_userweburigrouppermissionstb'),(66,'Can change user web uri group permissions tb',14,'change_userweburigrouppermissionstb'),(67,'Can delete user web uri group permissions tb',14,'delete_userweburigrouppermissionstb'),(68,'Can view user web uri group permissions tb',14,'view_userweburigrouppermissionstb'),(69,'Can add web uri tb',15,'add_weburitb'),(70,'Can change web uri tb',15,'change_weburitb'),(71,'Can delete web uri tb',15,'delete_weburitb'),(72,'Can view web uri tb',15,'view_weburitb'),(73,'Can add aws account tb',16,'add_awsaccounttb'),(74,'Can change aws account tb',16,'change_awsaccounttb'),(75,'Can delete aws account tb',16,'delete_awsaccounttb'),(76,'Can view aws account tb',16,'view_awsaccounttb'),(77,'Can add cf account tb',17,'add_cfaccounttb'),(78,'Can change cf account tb',17,'change_cfaccounttb'),(79,'Can delete cf account tb',17,'delete_cfaccounttb'),(80,'Can view cf account tb',17,'view_cfaccounttb'),(81,'Can add dnspod account tb',18,'add_dnspodaccounttb'),(82,'Can change dnspod account tb',18,'change_dnspodaccounttb'),(83,'Can delete dnspod account tb',18,'delete_dnspodaccounttb'),(84,'Can view dnspod account tb',18,'view_dnspodaccounttb'),(85,'Can add user group permissions tb',14,'add_usergrouppermissionstb'),(86,'Can change user group permissions tb',14,'change_usergrouppermissionstb'),(87,'Can delete user group permissions tb',14,'delete_usergrouppermissionstb'),(88,'Can view user group permissions tb',14,'view_usergrouppermissionstb'),(89,'Can add user permissions tb',13,'add_userpermissionstb'),(90,'Can change user permissions tb',13,'change_userpermissionstb'),(91,'Can delete user permissions tb',13,'delete_userpermissionstb'),(92,'Can view user permissions tb',13,'view_userpermissionstb'),(93,'Can add alter history',19,'add_alterhistory'),(94,'Can change alter history',19,'change_alterhistory'),(95,'Can delete alter history',19,'delete_alterhistory'),(96,'Can view alter history',19,'view_alterhistory'),(97,'Can add alter history tb',19,'add_alterhistorytb'),(98,'Can change alter history tb',19,'change_alterhistorytb'),(99,'Can delete alter history tb',19,'delete_alterhistorytb'),(100,'Can view alter history tb',19,'view_alterhistorytb'),(101,'Can add cdn account tb',20,'add_cdnaccounttb'),(102,'Can change cdn account tb',20,'change_cdnaccounttb'),(103,'Can delete cdn account tb',20,'delete_cdnaccounttb'),(104,'Can view cdn account tb',20,'view_cdnaccounttb'),(105,'Can add domain tb',21,'add_domaintb'),(106,'Can change domain tb',21,'change_domaintb'),(107,'Can delete domain tb',21,'delete_domaintb'),(108,'Can view domain tb',21,'view_domaintb'),(109,'Can add domain detect group tb',22,'add_domaindetectgrouptb'),(110,'Can change domain detect group tb',22,'change_domaindetectgrouptb'),(111,'Can delete domain detect group tb',22,'delete_domaindetectgrouptb'),(112,'Can view domain detect group tb',22,'view_domaindetectgrouptb'),(113,'Can add doamin project tb',23,'add_doaminprojecttb'),(114,'Can change doamin project tb',23,'change_doaminprojecttb'),(115,'Can delete doamin project tb',23,'delete_doaminprojecttb'),(116,'Can view doamin project tb',23,'view_doaminprojecttb'),(117,'Can add domains',24,'add_domains'),(118,'Can change domains',24,'change_domains'),(119,'Can delete domains',24,'delete_domains'),(120,'Can view domains',24,'view_domains'),(121,'Can add cdn_account_t',20,'add_cdn_account_t'),(122,'Can change cdn_account_t',20,'change_cdn_account_t'),(123,'Can delete cdn_account_t',20,'delete_cdn_account_t'),(124,'Can view cdn_account_t',20,'view_cdn_account_t'),(125,'Can add groups',22,'add_groups'),(126,'Can change groups',22,'change_groups'),(127,'Can delete groups',22,'delete_groups'),(128,'Can view groups',22,'view_groups'),(129,'Can add doamin project tb',25,'add_doaminprojecttb'),(130,'Can change doamin project tb',25,'change_doaminprojecttb'),(131,'Can delete doamin project tb',25,'delete_doaminprojecttb'),(132,'Can view doamin project tb',25,'view_doaminprojecttb'),(133,'Can add telegram ssl alert tb',26,'add_telegramsslalerttb'),(134,'Can change telegram ssl alert tb',26,'change_telegramsslalerttb'),(135,'Can delete telegram ssl alert tb',26,'delete_telegramsslalerttb'),(136,'Can view telegram ssl alert tb',26,'view_telegramsslalerttb'),(137,'Can add telegram domain alert tb',27,'add_telegramdomainalerttb'),(138,'Can change telegram domain alert tb',27,'change_telegramdomainalerttb'),(139,'Can delete telegram domain alert tb',27,'delete_telegramdomainalerttb'),(140,'Can view telegram domain alert tb',27,'view_telegramdomainalerttb'),(141,'Can add minion ip tb',28,'add_minioniptb'),(142,'Can change minion ip tb',28,'change_minioniptb'),(143,'Can delete minion ip tb',28,'delete_minioniptb'),(144,'Can view minion ip tb',28,'view_minioniptb'),(145,'Can add minion tb',29,'add_miniontb'),(146,'Can change minion tb',29,'change_miniontb'),(147,'Can delete minion tb',29,'delete_miniontb'),(148,'Can view minion tb',29,'view_miniontb'),(149,'Can add project tb',30,'add_projecttb'),(150,'Can change project tb',30,'change_projecttb'),(151,'Can delete project tb',30,'delete_projecttb'),(152,'Can view project tb',30,'view_projecttb'),(153,'Can add svn record tb',31,'add_svnrecordtb'),(154,'Can change svn record tb',31,'change_svnrecordtb'),(155,'Can delete svn record tb',31,'delete_svnrecordtb'),(156,'Can view svn record tb',31,'view_svnrecordtb'),(157,'Can add svn master tb',32,'add_svnmastertb'),(158,'Can change svn master tb',32,'change_svnmastertb'),(159,'Can delete svn master tb',32,'delete_svnmastertb'),(160,'Can view svn master tb',32,'view_svnmastertb'),(161,'Can add svn zyp front gray lock tb',33,'add_svnzypfrontgraylocktb'),(162,'Can change svn zyp front gray lock tb',33,'change_svnzypfrontgraylocktb'),(163,'Can delete svn zyp front gray lock tb',33,'delete_svnzypfrontgraylocktb'),(164,'Can view svn zyp front gray lock tb',33,'view_svnzypfrontgraylocktb'),(165,'Can add svn gray lock tb',34,'add_svngraylocktb'),(166,'Can change svn gray lock tb',34,'change_svngraylocktb'),(167,'Can delete svn gray lock tb',34,'delete_svngraylocktb'),(168,'Can view svn gray lock tb',34,'view_svngraylocktb'),(169,'Can add svn customer tb',35,'add_svncustomertb'),(170,'Can change svn customer tb',35,'change_svncustomertb'),(171,'Can delete svn customer tb',35,'delete_svncustomertb'),(172,'Can view svn customer tb',35,'view_svncustomertb'),(173,'Can add svn zyp lottery gray lock tb',36,'add_svnzyplotterygraylocktb'),(174,'Can change svn zyp lottery gray lock tb',36,'change_svnzyplotterygraylocktb'),(175,'Can delete svn zyp lottery gray lock tb',36,'delete_svnzyplotterygraylocktb'),(176,'Can view svn zyp lottery gray lock tb',36,'view_svnzyplotterygraylocktb');
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
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$150000$NvjpAHRC9ybx$Pi5yXCNT0aHWlVnzA/pTfyUiqih6ULC4c1ZlUFgfoRk=','2020-03-23 13:40:19.642239',1,'arno','','','arnode125@gmail.com',1,1,'2019-09-09 08:09:21.806733'),(2,'pbkdf2_sha256$150000$R7723B7hv3Ok$9MPKOQ0O9FWmeFAnLZskLlISFbsFJu/oo7lJ+o9ylNc=','2019-10-08 05:54:12.640270',0,'test','','','',1,1,'2019-09-16 05:27:21.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control_usergrouppermissionstb`
--

DROP TABLE IF EXISTS `control_usergrouppermissionstb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `control_usergrouppermissionstb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_usergrouppermissionstb`
--

LOCK TABLES `control_usergrouppermissionstb` WRITE;
/*!40000 ALTER TABLE `control_usergrouppermissionstb` DISABLE KEYS */;
INSERT INTO `control_usergrouppermissionstb` VALUES (1,'运维',1),(2,'客服',1);
/*!40000 ALTER TABLE `control_usergrouppermissionstb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control_usergrouppermissionstb_cdn_account_p`
--

DROP TABLE IF EXISTS `control_usergrouppermissionstb_cdn_account_p`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `control_usergrouppermissionstb_cdn_account_p` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usergrouppermissionstb_id` int(11) NOT NULL,
  `cdnaccounttb_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `control_usergrouppermiss_usergrouppermissionstb_i_e293c7c5_uniq` (`usergrouppermissionstb_id`,`cdnaccounttb_id`),
  KEY `control_usergroupper_cdnaccounttb_id_6802a869_fk_domainns_` (`cdnaccounttb_id`),
  CONSTRAINT `control_usergroupper_cdnaccounttb_id_6802a869_fk_domainns_` FOREIGN KEY (`cdnaccounttb_id`) REFERENCES `domainns_cdnaccounttb` (`id`),
  CONSTRAINT `control_usergroupper_usergrouppermissions_699f8da6_fk_control_u` FOREIGN KEY (`usergrouppermissionstb_id`) REFERENCES `control_usergrouppermissionstb` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_usergrouppermissionstb_cdn_account_p`
--

LOCK TABLES `control_usergrouppermissionstb_cdn_account_p` WRITE;
/*!40000 ALTER TABLE `control_usergrouppermissionstb_cdn_account_p` DISABLE KEYS */;
INSERT INTO `control_usergrouppermissionstb_cdn_account_p` VALUES (2,1,7);
/*!40000 ALTER TABLE `control_usergrouppermissionstb_cdn_account_p` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control_usergrouppermissionstb_cf_account_p`
--

DROP TABLE IF EXISTS `control_usergrouppermissionstb_cf_account_p`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `control_usergrouppermissionstb_cf_account_p` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usergrouppermissionstb_id` int(11) NOT NULL,
  `cfaccounttb_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `control_usergrouppermiss_usergrouppermissionstb_i_19aa511e_uniq` (`usergrouppermissionstb_id`,`cfaccounttb_id`),
  KEY `control_usergroupper_cfaccounttb_id_9ba6b41b_fk_domainns_` (`cfaccounttb_id`),
  CONSTRAINT `control_usergroupper_cfaccounttb_id_9ba6b41b_fk_domainns_` FOREIGN KEY (`cfaccounttb_id`) REFERENCES `domainns_cfaccounttb` (`id`),
  CONSTRAINT `control_usergroupper_usergrouppermissions_fda087d6_fk_control_u` FOREIGN KEY (`usergrouppermissionstb_id`) REFERENCES `control_usergrouppermissionstb` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_usergrouppermissionstb_cf_account_p`
--

LOCK TABLES `control_usergrouppermissionstb_cf_account_p` WRITE;
/*!40000 ALTER TABLE `control_usergrouppermissionstb_cf_account_p` DISABLE KEYS */;
INSERT INTO `control_usergrouppermissionstb_cf_account_p` VALUES (1,1,1),(12,1,2),(13,1,3),(14,1,4),(15,1,5),(16,1,6),(17,1,7),(8,1,9),(18,1,10),(19,1,11),(20,1,17);
/*!40000 ALTER TABLE `control_usergrouppermissionstb_cf_account_p` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control_usergrouppermissionstb_dnspod_account_p`
--

DROP TABLE IF EXISTS `control_usergrouppermissionstb_dnspod_account_p`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `control_usergrouppermissionstb_dnspod_account_p` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usergrouppermissionstb_id` int(11) NOT NULL,
  `dnspodaccounttb_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `control_usergrouppermiss_usergrouppermissionstb_i_c2ceb7f8_uniq` (`usergrouppermissionstb_id`,`dnspodaccounttb_id`),
  KEY `control_usergroupper_dnspodaccounttb_id_97209d9b_fk_domainns_` (`dnspodaccounttb_id`),
  CONSTRAINT `control_usergroupper_dnspodaccounttb_id_97209d9b_fk_domainns_` FOREIGN KEY (`dnspodaccounttb_id`) REFERENCES `domainns_dnspodaccounttb` (`id`),
  CONSTRAINT `control_usergroupper_usergrouppermissions_0034841d_fk_control_u` FOREIGN KEY (`usergrouppermissionstb_id`) REFERENCES `control_usergrouppermissionstb` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_usergrouppermissionstb_dnspod_account_p`
--

LOCK TABLES `control_usergrouppermissionstb_dnspod_account_p` WRITE;
/*!40000 ALTER TABLE `control_usergrouppermissionstb_dnspod_account_p` DISABLE KEYS */;
INSERT INTO `control_usergrouppermissionstb_dnspod_account_p` VALUES (1,1,1),(2,1,2);
/*!40000 ALTER TABLE `control_usergrouppermissionstb_dnspod_account_p` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control_usergrouppermissionstb_weburi_p`
--

DROP TABLE IF EXISTS `control_usergrouppermissionstb_weburi_p`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `control_usergrouppermissionstb_weburi_p` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usergrouppermissionstb_id` int(11) NOT NULL,
  `weburitb_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `control_userweburigroupp_userweburigrouppermissio_eec0a13e_uniq` (`usergrouppermissionstb_id`,`weburitb_id`),
  KEY `control_usergroupper_weburitb_id_7023a744_fk_control_w` (`weburitb_id`),
  CONSTRAINT `control_usergroupper_usergrouppermissions_a95b6b42_fk_control_u` FOREIGN KEY (`usergrouppermissionstb_id`) REFERENCES `control_usergrouppermissionstb` (`id`),
  CONSTRAINT `control_usergroupper_weburitb_id_7023a744_fk_control_w` FOREIGN KEY (`weburitb_id`) REFERENCES `control_weburitb` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_usergrouppermissionstb_weburi_p`
--

LOCK TABLES `control_usergrouppermissionstb_weburi_p` WRITE;
/*!40000 ALTER TABLE `control_usergrouppermissionstb_weburi_p` DISABLE KEYS */;
INSERT INTO `control_usergrouppermissionstb_weburi_p` VALUES (1,1,1),(2,1,2),(5,1,3),(6,1,4),(7,1,5),(8,1,6),(9,1,7),(10,1,8),(11,1,9),(12,1,10),(13,1,11),(14,1,12),(15,1,13),(18,1,14),(17,1,15),(19,1,16),(20,1,17),(21,1,18),(22,1,19),(23,1,20),(3,2,1),(4,2,2);
/*!40000 ALTER TABLE `control_usergrouppermissionstb_weburi_p` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control_usergrouppermissionstb_weburifirst_l`
--

DROP TABLE IF EXISTS `control_usergrouppermissionstb_weburifirst_l`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `control_usergrouppermissionstb_weburifirst_l` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usergrouppermissionstb_id` int(11) NOT NULL,
  `weburifirstleveltb_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `control_userweburigroupp_userweburigrouppermissio_1f6c372a_uniq` (`usergrouppermissionstb_id`,`weburifirstleveltb_id`),
  KEY `control_userweburigr_weburifirstleveltb_i_38e44302_fk_control_w` (`weburifirstleveltb_id`),
  CONSTRAINT `control_usergroupper_usergrouppermissions_66df4054_fk_control_u` FOREIGN KEY (`usergrouppermissionstb_id`) REFERENCES `control_usergrouppermissionstb` (`id`),
  CONSTRAINT `control_userweburigr_weburifirstleveltb_i_38e44302_fk_control_w` FOREIGN KEY (`weburifirstleveltb_id`) REFERENCES `control_weburifirstleveltb` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_usergrouppermissionstb_weburifirst_l`
--

LOCK TABLES `control_usergrouppermissionstb_weburifirst_l` WRITE;
/*!40000 ALTER TABLE `control_usergrouppermissionstb_weburifirst_l` DISABLE KEYS */;
INSERT INTO `control_usergrouppermissionstb_weburifirst_l` VALUES (1,1,3),(3,1,4),(4,1,5),(2,2,3);
/*!40000 ALTER TABLE `control_usergrouppermissionstb_weburifirst_l` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control_usergrouppermissionstb_weburisecond_l`
--

DROP TABLE IF EXISTS `control_usergrouppermissionstb_weburisecond_l`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `control_usergrouppermissionstb_weburisecond_l` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usergrouppermissionstb_id` int(11) NOT NULL,
  `weburisecondleveltb_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `control_userweburigroupp_userweburigrouppermissio_a2613612_uniq` (`usergrouppermissionstb_id`,`weburisecondleveltb_id`),
  KEY `control_userweburigr_weburisecondleveltb__a52f2e2f_fk_control_w` (`weburisecondleveltb_id`),
  CONSTRAINT `control_usergroupper_usergrouppermissions_cd64a81d_fk_control_u` FOREIGN KEY (`usergrouppermissionstb_id`) REFERENCES `control_usergrouppermissionstb` (`id`),
  CONSTRAINT `control_userweburigr_weburisecondleveltb__a52f2e2f_fk_control_w` FOREIGN KEY (`weburisecondleveltb_id`) REFERENCES `control_weburisecondleveltb` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_usergrouppermissionstb_weburisecond_l`
--

LOCK TABLES `control_usergrouppermissionstb_weburisecond_l` WRITE;
/*!40000 ALTER TABLE `control_usergrouppermissionstb_weburisecond_l` DISABLE KEYS */;
INSERT INTO `control_usergrouppermissionstb_weburisecond_l` VALUES (2,1,4),(4,1,5),(5,1,6),(6,1,7),(7,1,8),(8,1,9),(3,2,4);
/*!40000 ALTER TABLE `control_usergrouppermissionstb_weburisecond_l` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control_usergrouppermissionstb_weburithird_l`
--

DROP TABLE IF EXISTS `control_usergrouppermissionstb_weburithird_l`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `control_usergrouppermissionstb_weburithird_l` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usergrouppermissionstb_id` int(11) NOT NULL,
  `weburithirdleveltb_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `control_userweburigroupp_userweburigrouppermissio_ead394a2_uniq` (`usergrouppermissionstb_id`,`weburithirdleveltb_id`),
  KEY `control_userweburigr_weburithirdleveltb_i_a4f1f903_fk_control_w` (`weburithirdleveltb_id`),
  CONSTRAINT `control_usergroupper_usergrouppermissions_8cc51351_fk_control_u` FOREIGN KEY (`usergrouppermissionstb_id`) REFERENCES `control_usergrouppermissionstb` (`id`),
  CONSTRAINT `control_userweburigr_weburithirdleveltb_i_a4f1f903_fk_control_w` FOREIGN KEY (`weburithirdleveltb_id`) REFERENCES `control_weburithirdleveltb` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_usergrouppermissionstb_weburithird_l`
--

LOCK TABLES `control_usergrouppermissionstb_weburithird_l` WRITE;
/*!40000 ALTER TABLE `control_usergrouppermissionstb_weburithird_l` DISABLE KEYS */;
/*!40000 ALTER TABLE `control_usergrouppermissionstb_weburithird_l` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control_userpermissionstb`
--

DROP TABLE IF EXISTS `control_userpermissionstb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `control_userpermissionstb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `control_userweburipermissionstb_user_id_d5372630_uniq` (`user_id`),
  CONSTRAINT `control_userweburipermissionstb_user_id_d5372630_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_userpermissionstb`
--

LOCK TABLES `control_userpermissionstb` WRITE;
/*!40000 ALTER TABLE `control_userpermissionstb` DISABLE KEYS */;
INSERT INTO `control_userpermissionstb` VALUES (3,2);
/*!40000 ALTER TABLE `control_userpermissionstb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control_userpermissionstb_cdn_account_p`
--

DROP TABLE IF EXISTS `control_userpermissionstb_cdn_account_p`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `control_userpermissionstb_cdn_account_p` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userpermissionstb_id` int(11) NOT NULL,
  `cdnaccounttb_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `control_userpermissionst_userpermissionstb_id_cdn_e7be0bc5_uniq` (`userpermissionstb_id`,`cdnaccounttb_id`),
  KEY `control_userpermissi_cdnaccounttb_id_5043eb9b_fk_domainns_` (`cdnaccounttb_id`),
  CONSTRAINT `control_userpermissi_cdnaccounttb_id_5043eb9b_fk_domainns_` FOREIGN KEY (`cdnaccounttb_id`) REFERENCES `domainns_cdnaccounttb` (`id`),
  CONSTRAINT `control_userpermissi_userpermissionstb_id_8f3e64fd_fk_control_u` FOREIGN KEY (`userpermissionstb_id`) REFERENCES `control_userpermissionstb` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_userpermissionstb_cdn_account_p`
--

LOCK TABLES `control_userpermissionstb_cdn_account_p` WRITE;
/*!40000 ALTER TABLE `control_userpermissionstb_cdn_account_p` DISABLE KEYS */;
/*!40000 ALTER TABLE `control_userpermissionstb_cdn_account_p` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control_userpermissionstb_cf_account_p`
--

DROP TABLE IF EXISTS `control_userpermissionstb_cf_account_p`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `control_userpermissionstb_cf_account_p` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userpermissionstb_id` int(11) NOT NULL,
  `cfaccounttb_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `control_userpermissionst_userpermissionstb_id_cfa_37481480_uniq` (`userpermissionstb_id`,`cfaccounttb_id`),
  KEY `control_userpermissi_cfaccounttb_id_4f265c9e_fk_domainns_` (`cfaccounttb_id`),
  CONSTRAINT `control_userpermissi_cfaccounttb_id_4f265c9e_fk_domainns_` FOREIGN KEY (`cfaccounttb_id`) REFERENCES `domainns_cfaccounttb` (`id`),
  CONSTRAINT `control_userpermissi_userpermissionstb_id_52a0dd98_fk_control_u` FOREIGN KEY (`userpermissionstb_id`) REFERENCES `control_userpermissionstb` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_userpermissionstb_cf_account_p`
--

LOCK TABLES `control_userpermissionstb_cf_account_p` WRITE;
/*!40000 ALTER TABLE `control_userpermissionstb_cf_account_p` DISABLE KEYS */;
/*!40000 ALTER TABLE `control_userpermissionstb_cf_account_p` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control_userpermissionstb_dnspod_account_p`
--

DROP TABLE IF EXISTS `control_userpermissionstb_dnspod_account_p`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `control_userpermissionstb_dnspod_account_p` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userpermissionstb_id` int(11) NOT NULL,
  `dnspodaccounttb_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `control_userpermissionst_userpermissionstb_id_dns_89e50fbb_uniq` (`userpermissionstb_id`,`dnspodaccounttb_id`),
  KEY `control_userpermissi_dnspodaccounttb_id_dc83bd7f_fk_domainns_` (`dnspodaccounttb_id`),
  CONSTRAINT `control_userpermissi_dnspodaccounttb_id_dc83bd7f_fk_domainns_` FOREIGN KEY (`dnspodaccounttb_id`) REFERENCES `domainns_dnspodaccounttb` (`id`),
  CONSTRAINT `control_userpermissi_userpermissionstb_id_708e38c0_fk_control_u` FOREIGN KEY (`userpermissionstb_id`) REFERENCES `control_userpermissionstb` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_userpermissionstb_dnspod_account_p`
--

LOCK TABLES `control_userpermissionstb_dnspod_account_p` WRITE;
/*!40000 ALTER TABLE `control_userpermissionstb_dnspod_account_p` DISABLE KEYS */;
/*!40000 ALTER TABLE `control_userpermissionstb_dnspod_account_p` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control_userpermissionstb_usergroup_p`
--

DROP TABLE IF EXISTS `control_userpermissionstb_usergroup_p`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `control_userpermissionstb_usergroup_p` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userpermissionstb_id` int(11) NOT NULL,
  `usergrouppermissionstb_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `control_userweburipermis_userweburipermissionstb__05560460_uniq` (`userpermissionstb_id`,`usergrouppermissionstb_id`),
  KEY `control_userpermissi_usergrouppermissions_7194e1d6_fk_control_u` (`usergrouppermissionstb_id`),
  CONSTRAINT `control_userpermissi_usergrouppermissions_7194e1d6_fk_control_u` FOREIGN KEY (`usergrouppermissionstb_id`) REFERENCES `control_usergrouppermissionstb` (`id`),
  CONSTRAINT `control_userpermissi_userpermissionstb_id_0007cdb9_fk_control_u` FOREIGN KEY (`userpermissionstb_id`) REFERENCES `control_userpermissionstb` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_userpermissionstb_usergroup_p`
--

LOCK TABLES `control_userpermissionstb_usergroup_p` WRITE;
/*!40000 ALTER TABLE `control_userpermissionstb_usergroup_p` DISABLE KEYS */;
INSERT INTO `control_userpermissionstb_usergroup_p` VALUES (2,3,1);
/*!40000 ALTER TABLE `control_userpermissionstb_usergroup_p` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control_userpermissionstb_weburi_p`
--

DROP TABLE IF EXISTS `control_userpermissionstb_weburi_p`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `control_userpermissionstb_weburi_p` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userpermissionstb_id` int(11) NOT NULL,
  `weburitb_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `control_userweburipermis_userweburipermissionstb__7fa48f55_uniq` (`userpermissionstb_id`,`weburitb_id`),
  KEY `control_userpermissi_weburitb_id_9b4ff706_fk_control_w` (`weburitb_id`),
  CONSTRAINT `control_userpermissi_userpermissionstb_id_04d3560f_fk_control_u` FOREIGN KEY (`userpermissionstb_id`) REFERENCES `control_userpermissionstb` (`id`),
  CONSTRAINT `control_userpermissi_weburitb_id_9b4ff706_fk_control_w` FOREIGN KEY (`weburitb_id`) REFERENCES `control_weburitb` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_userpermissionstb_weburi_p`
--

LOCK TABLES `control_userpermissionstb_weburi_p` WRITE;
/*!40000 ALTER TABLE `control_userpermissionstb_weburi_p` DISABLE KEYS */;
/*!40000 ALTER TABLE `control_userpermissionstb_weburi_p` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control_userpermissionstb_weburifirst_l`
--

DROP TABLE IF EXISTS `control_userpermissionstb_weburifirst_l`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `control_userpermissionstb_weburifirst_l` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userpermissionstb_id` int(11) NOT NULL,
  `weburifirstleveltb_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `control_userweburipermis_userweburipermissionstb__87078159_uniq` (`userpermissionstb_id`,`weburifirstleveltb_id`),
  KEY `control_userweburipe_weburifirstleveltb_i_7ae5dcd0_fk_control_w` (`weburifirstleveltb_id`),
  CONSTRAINT `control_userpermissi_userpermissionstb_id_526eb51a_fk_control_u` FOREIGN KEY (`userpermissionstb_id`) REFERENCES `control_userpermissionstb` (`id`),
  CONSTRAINT `control_userweburipe_weburifirstleveltb_i_7ae5dcd0_fk_control_w` FOREIGN KEY (`weburifirstleveltb_id`) REFERENCES `control_weburifirstleveltb` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_userpermissionstb_weburifirst_l`
--

LOCK TABLES `control_userpermissionstb_weburifirst_l` WRITE;
/*!40000 ALTER TABLE `control_userpermissionstb_weburifirst_l` DISABLE KEYS */;
/*!40000 ALTER TABLE `control_userpermissionstb_weburifirst_l` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control_userpermissionstb_weburisecond_l`
--

DROP TABLE IF EXISTS `control_userpermissionstb_weburisecond_l`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `control_userpermissionstb_weburisecond_l` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userpermissionstb_id` int(11) NOT NULL,
  `weburisecondleveltb_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `control_userweburipermis_userweburipermissionstb__0fdc5435_uniq` (`userpermissionstb_id`,`weburisecondleveltb_id`),
  KEY `control_userweburipe_weburisecondleveltb__2259ec63_fk_control_w` (`weburisecondleveltb_id`),
  CONSTRAINT `control_userpermissi_userpermissionstb_id_4b1658ad_fk_control_u` FOREIGN KEY (`userpermissionstb_id`) REFERENCES `control_userpermissionstb` (`id`),
  CONSTRAINT `control_userweburipe_weburisecondleveltb__2259ec63_fk_control_w` FOREIGN KEY (`weburisecondleveltb_id`) REFERENCES `control_weburisecondleveltb` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_userpermissionstb_weburisecond_l`
--

LOCK TABLES `control_userpermissionstb_weburisecond_l` WRITE;
/*!40000 ALTER TABLE `control_userpermissionstb_weburisecond_l` DISABLE KEYS */;
/*!40000 ALTER TABLE `control_userpermissionstb_weburisecond_l` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control_userpermissionstb_weburithird_l`
--

DROP TABLE IF EXISTS `control_userpermissionstb_weburithird_l`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `control_userpermissionstb_weburithird_l` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userpermissionstb_id` int(11) NOT NULL,
  `weburithirdleveltb_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `control_userweburipermis_userweburipermissionstb__7b741071_uniq` (`userpermissionstb_id`,`weburithirdleveltb_id`),
  KEY `control_userweburipe_weburithirdleveltb_i_5572ee60_fk_control_w` (`weburithirdleveltb_id`),
  CONSTRAINT `control_userpermissi_userpermissionstb_id_89f9ca6a_fk_control_u` FOREIGN KEY (`userpermissionstb_id`) REFERENCES `control_userpermissionstb` (`id`),
  CONSTRAINT `control_userweburipe_weburithirdleveltb_i_5572ee60_fk_control_w` FOREIGN KEY (`weburithirdleveltb_id`) REFERENCES `control_weburithirdleveltb` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_userpermissionstb_weburithird_l`
--

LOCK TABLES `control_userpermissionstb_weburithird_l` WRITE;
/*!40000 ALTER TABLE `control_userpermissionstb_weburithird_l` DISABLE KEYS */;
/*!40000 ALTER TABLE `control_userpermissionstb_weburithird_l` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control_weburifirstleveltb`
--

DROP TABLE IF EXISTS `control_weburifirstleveltb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `control_weburifirstleveltb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `jump` varchar(128) NOT NULL,
  `icon` varchar(32) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_weburifirstleveltb`
--

LOCK TABLES `control_weburifirstleveltb` WRITE;
/*!40000 ALTER TABLE `control_weburifirstleveltb` DISABLE KEYS */;
INSERT INTO `control_weburifirstleveltb` VALUES (3,'主页','/','','layui-icon-home',1),(4,'域名中心','domainns','','layui-icon-component',1),(5,'远程执行','saltstack','','layui-icon-templeate-1',1);
/*!40000 ALTER TABLE `control_weburifirstleveltb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control_weburifirstleveltb_next_l`
--

DROP TABLE IF EXISTS `control_weburifirstleveltb_next_l`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `control_weburifirstleveltb_next_l` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weburifirstleveltb_id` int(11) NOT NULL,
  `weburisecondleveltb_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `control_weburifirstlevel_weburifirstleveltb_id_we_fd4e9be2_uniq` (`weburifirstleveltb_id`,`weburisecondleveltb_id`),
  KEY `control_weburifirstleveltb_next_l_weburifirstleveltb_id_7555e52f` (`weburifirstleveltb_id`),
  KEY `control_weburifirstleveltb__weburisecondleveltb_id_f4f3f01c` (`weburisecondleveltb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_weburifirstleveltb_next_l`
--

LOCK TABLES `control_weburifirstleveltb_next_l` WRITE;
/*!40000 ALTER TABLE `control_weburifirstleveltb_next_l` DISABLE KEYS */;
INSERT INTO `control_weburifirstleveltb_next_l` VALUES (1,3,4),(2,4,5),(3,4,6),(4,4,7),(5,4,8),(6,5,9);
/*!40000 ALTER TABLE `control_weburifirstleveltb_next_l` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control_weburisecondleveltb`
--

DROP TABLE IF EXISTS `control_weburisecondleveltb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `control_weburisecondleveltb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `jump` varchar(128) NOT NULL,
  `icon` varchar(32) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_weburisecondleveltb`
--

LOCK TABLES `control_weburisecondleveltb` WRITE;
/*!40000 ALTER TABLE `control_weburisecondleveltb` DISABLE KEYS */;
INSERT INTO `control_weburisecondleveltb` VALUES (4,'Telegram','telegram/','','',1),(5,'CloudFlare','cloudflare','/domainns/cloudflare','',1),(6,'DnsPod','dnspod','/domainns/dnspod','',1),(7,'域名缓存','reflesh','/domainns/reflesh','',1),(8,'域名列表','list','/domainns/list','',1),(9,'SaltStack','saltstack','/saltstack/basic','',1);
/*!40000 ALTER TABLE `control_weburisecondleveltb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control_weburisecondleveltb_next_l`
--

DROP TABLE IF EXISTS `control_weburisecondleveltb_next_l`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `control_weburisecondleveltb_next_l` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weburisecondleveltb_id` int(11) NOT NULL,
  `weburithirdleveltb_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `control_weburisecondleve_weburisecondleveltb_id_w_f02ff35a_uniq` (`weburisecondleveltb_id`,`weburithirdleveltb_id`),
  KEY `control_weburisecondleveltb_weburisecondleveltb_id_aa5bdf9f` (`weburisecondleveltb_id`),
  KEY `control_weburisecondleveltb_weburithirdleveltb_id_689a6340` (`weburithirdleveltb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_weburisecondleveltb_next_l`
--

LOCK TABLES `control_weburisecondleveltb_next_l` WRITE;
/*!40000 ALTER TABLE `control_weburisecondleveltb_next_l` DISABLE KEYS */;
/*!40000 ALTER TABLE `control_weburisecondleveltb_next_l` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control_weburitb`
--

DROP TABLE IF EXISTS `control_weburitb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `control_weburitb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `uri` varchar(128) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_weburitb`
--

LOCK TABLES `control_weburitb` WRITE;
/*!40000 ALTER TABLE `control_weburitb` DISABLE KEYS */;
INSERT INTO `control_weburitb` VALUES (1,'获取telegram 群组以及部门信息','/detect/telegram',1),(2,'发送telegram 信息','/detect/telegram/sendgroupmessage',1),(3,'获取CloudFlare 账号信息','/domainns/cloudflare/get_accounts',1),(4,'获取CF域名解析记录','/domainns/cloudflare/get_zone_records',1),(5,'更新CF域名解析记录','/domainns/cloudflare/update_records',1),(6,'新增CF域名解析记录','/domainns/cloudflare/add_records',1),(7,'删除CF域名解析记录','/domainns/cloudflare/delete_records',1),(8,'获取DNSPOD 账号记录','/domainns/dnspod/get_accounts',1),(9,'获取DNSPOD域名解析记录','/domainns/dnspod/get_zone_records',1),(10,'新增DNSPOD域名解析记录','/domainns/dnspod/add_records',1),(11,'删除DNSPOD域名解析记录','/domainns/dnspod/delete_records',1),(12,'更新DNSPOD域名解析记录','/domainns/dnspod/update_records',1),(13,'获取清缓存数据','/domainns/reflesh',1),(14,'根据CDN 账号进行缓存清理','/domainns/reflesh/execute/cdn',1),(15,'根据域名项目进行缓存清理','/domainns/reflesh/execute/project',1),(16,'获取域名的参数','/domainns/domain/args',1),(17,'获取域名列表','/domainns/domain/get_records',1),(18,'新增域名记录','/domainns/domain/add_records',1),(19,'修改域名记录','/domainns/domain/edit_records',1),(20,'saltstack 基础命令','/saltstack/basic/execute',1);
/*!40000 ALTER TABLE `control_weburitb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control_weburithirdleveltb`
--

DROP TABLE IF EXISTS `control_weburithirdleveltb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `control_weburithirdleveltb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `jump` varchar(128) NOT NULL,
  `icon` varchar(32) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_weburithirdleveltb`
--

LOCK TABLES `control_weburithirdleveltb` WRITE;
/*!40000 ALTER TABLE `control_weburithirdleveltb` DISABLE KEYS */;
/*!40000 ALTER TABLE `control_weburithirdleveltb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detect_departmentusertb`
--

DROP TABLE IF EXISTS `detect_departmentusertb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detect_departmentusertb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `status` int(11) NOT NULL,
  `department` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `detect_department_user_t_name_department_8028f503_uniq` (`name`,`department`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detect_departmentusertb`
--

LOCK TABLES `detect_departmentusertb` WRITE;
/*!40000 ALTER TABLE `detect_departmentusertb` DISABLE KEYS */;
INSERT INTO `detect_departmentusertb` VALUES (2,'yunwei',1,'运维组'),(3,'ceshi',1,'测试组'),(4,'manage',0,'管理组'),(5,'kefu',1,'客服组'),(6,'qianduan',1,'前端组'),(7,'fenghuangphp',1,'凤凰组'),(8,'ios',1,'IOS 组'),(9,'android',1,'安卓组'),(10,'warriorphp',1,'勇士组'),(11,'ubsphp',1,'瑞银组'),(12,'lianfayunwei',1,'联发运维组'),(13,'pm',1,'产品组');
/*!40000 ALTER TABLE `detect_departmentusertb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detect_departmentusertb_user`
--

DROP TABLE IF EXISTS `detect_departmentusertb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detect_departmentusertb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `departmentusertb_id` int(11) NOT NULL,
  `telegramuseridtb_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `detect_department_user_t_department_user_t_id_tel_405c3eb8_uniq` (`departmentusertb_id`,`telegramuseridtb_id`),
  KEY `detect_department_user_t_user_department_user_t_id_5fc23920` (`departmentusertb_id`),
  KEY `detect_department_user_t_user_telegram_user_id_t_id_111ee4cc` (`telegramuseridtb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detect_departmentusertb_user`
--

LOCK TABLES `detect_departmentusertb_user` WRITE;
/*!40000 ALTER TABLE `detect_departmentusertb_user` DISABLE KEYS */;
INSERT INTO `detect_departmentusertb_user` VALUES (3,2,1),(52,2,65),(54,2,68),(61,2,76),(62,2,77),(6,3,8),(9,3,37),(7,3,42),(33,3,53),(51,3,66),(63,4,2),(13,5,24),(41,5,56),(14,6,19),(15,6,36),(16,6,38),(43,6,59),(44,6,60),(47,6,63),(53,6,67),(17,7,3),(21,7,5),(19,7,11),(20,7,12),(34,7,29),(29,7,49),(30,7,50),(58,7,64),(22,8,41),(24,8,46),(28,8,51),(42,8,57),(26,9,43),(27,9,47),(25,9,48),(40,9,54),(60,9,75),(36,10,6),(35,10,17),(37,10,22),(59,10,74),(39,11,15),(38,11,16),(48,12,25),(49,12,55),(55,13,35),(56,13,69),(57,13,73);
/*!40000 ALTER TABLE `detect_departmentusertb_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detect_telegramchatgrouptb`
--

DROP TABLE IF EXISTS `detect_telegramchatgrouptb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detect_telegramchatgrouptb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `group` varchar(32) NOT NULL,
  `group_id` varchar(32) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `detect_telegram_chat_group_t_group_60db4cda_uniq` (`group`,`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detect_telegramchatgrouptb`
--

LOCK TABLES `detect_telegramchatgrouptb` WRITE;
/*!40000 ALTER TABLE `detect_telegramchatgrouptb` DISABLE KEYS */;
INSERT INTO `detect_telegramchatgrouptb` VALUES (1,'阿诺测试','arno_test','-204952096',1),(2,'域名续费|证书续费','domain_renew','-238289840',1),(3,'服务监控','service_alert','-275535278',1),(4,'域名监控','domain_alert','-1001301491264',1),(5,'学前班','kindergarten','-1001249952742',1),(6,'运维','yunwei','-1001246941540',1),(7,'JAVA域名监控','java_domain','-281290225',1),(8,'瑞银域名监控','ruiying_domain','-246192532',1),(9,'二年二班','yongshi','-167897790',1),(10,'亚马逊-芒果(体育)','mango','-265887050',1),(11,'668技术','sd668','-249104254',1),(12,'LV技术群','lv','-250107231',1),(13,'长江-技术','ali_guangda','-246374807',1),(14,'Diamond','le7','-196300472',1),(15,'熊猫【技术】','leying','-240917630',1),(16,'域名线路自动切换','domain_autoMdns','-335596805',1),(17,'阿诺测试2','arno_test2','-384809717',1),(18,'运维内部组','yunweiin','-353834053',1),(19,'专业盘彩票','zhuanyepan','-1001448402705',1),(20,'越众-域名监控','yuezhong_domain','-330662548',1),(21,'UC','uc','-258009694',1),(22,'188计划任务群','188cron','-390201364',1),(23,'骑士技术(彩投）','caitou','-291412857',1),(24,'google彩票','9393cp','-287566747',1),(25,'新版体育2.0','sport2','-301035081',1);
/*!40000 ALTER TABLE `detect_telegramchatgrouptb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detect_telegramdomainalerttb`
--

DROP TABLE IF EXISTS `detect_telegramdomainalerttb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detect_telegramdomainalerttb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `product` int(11) NOT NULL,
  `customer` int(11) NOT NULL,
  `project` varchar(10) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detect_telegramdomainalerttb`
--

LOCK TABLES `detect_telegramdomainalerttb` WRITE;
/*!40000 ALTER TABLE `detect_telegramdomainalerttb` DISABLE KEYS */;
/*!40000 ALTER TABLE `detect_telegramdomainalerttb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detect_telegramdomainalerttb_chat_group`
--

DROP TABLE IF EXISTS `detect_telegramdomainalerttb_chat_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detect_telegramdomainalerttb_chat_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `telegramdomainalerttb_id` int(11) NOT NULL,
  `telegramchatgrouptb_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detect_telegramdomainalerttb_chat_group`
--

LOCK TABLES `detect_telegramdomainalerttb_chat_group` WRITE;
/*!40000 ALTER TABLE `detect_telegramdomainalerttb_chat_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `detect_telegramdomainalerttb_chat_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detect_telegramdomainalerttb_user_id`
--

DROP TABLE IF EXISTS `detect_telegramdomainalerttb_user_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detect_telegramdomainalerttb_user_id` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `telegramdomainalerttb_id` int(11) NOT NULL,
  `telegramuseridtb_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detect_telegramdomainalerttb_user_id`
--

LOCK TABLES `detect_telegramdomainalerttb_user_id` WRITE;
/*!40000 ALTER TABLE `detect_telegramdomainalerttb_user_id` DISABLE KEYS */;
/*!40000 ALTER TABLE `detect_telegramdomainalerttb_user_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detect_telegramsslalerttb`
--

DROP TABLE IF EXISTS `detect_telegramsslalerttb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detect_telegramsslalerttb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `product` int(11) NOT NULL,
  `customer` int(11) NOT NULL,
  `project` varchar(10) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `detect_telegramsslalerttb_product_customer_2189c704_uniq` (`product`,`customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detect_telegramsslalerttb`
--

LOCK TABLES `detect_telegramsslalerttb` WRITE;
/*!40000 ALTER TABLE `detect_telegramsslalerttb` DISABLE KEYS */;
/*!40000 ALTER TABLE `detect_telegramsslalerttb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detect_telegramsslalerttb_chat_group`
--

DROP TABLE IF EXISTS `detect_telegramsslalerttb_chat_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detect_telegramsslalerttb_chat_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `telegramsslalerttb_id` int(11) NOT NULL,
  `telegramchatgrouptb_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `detect_telegramsslal_telegramsslalerttb_i_7c369b3d_fk_detect_te` (`telegramsslalerttb_id`),
  CONSTRAINT `detect_telegramsslal_telegramsslalerttb_i_7c369b3d_fk_detect_te` FOREIGN KEY (`telegramsslalerttb_id`) REFERENCES `detect_telegramsslalerttb` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detect_telegramsslalerttb_chat_group`
--

LOCK TABLES `detect_telegramsslalerttb_chat_group` WRITE;
/*!40000 ALTER TABLE `detect_telegramsslalerttb_chat_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `detect_telegramsslalerttb_chat_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detect_telegramsslalerttb_user_id`
--

DROP TABLE IF EXISTS `detect_telegramsslalerttb_user_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detect_telegramsslalerttb_user_id` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `telegramsslalerttb_id` int(11) NOT NULL,
  `telegramuseridtb_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detect_telegramsslalerttb_user_id`
--

LOCK TABLES `detect_telegramsslalerttb_user_id` WRITE;
/*!40000 ALTER TABLE `detect_telegramsslalerttb_user_id` DISABLE KEYS */;
/*!40000 ALTER TABLE `detect_telegramsslalerttb_user_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detect_telegramuseridtb`
--

DROP TABLE IF EXISTS `detect_telegramuseridtb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detect_telegramuseridtb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `detect_telegram_user_id_t_user_5189b1ba_uniq` (`user`,`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detect_telegramuseridtb`
--

LOCK TABLES `detect_telegramuseridtb` WRITE;
/*!40000 ALTER TABLE `detect_telegramuseridtb` DISABLE KEYS */;
INSERT INTO `detect_telegramuseridtb` VALUES (1,'arno','阿诺',538338514,1),(2,'qiuge','丘哥',182587891,1),(3,'xiaowu','小五',379040163,1),(5,'xiaoye','小叶',359511473,1),(6,'xiaoxuan','小玄',357998555,1),(8,'xiaoyu','小鱼',757885754,1),(9,'wenwen','雯雯',471120806,1),(30,'conan','柯南',625531248,1),(11,'xiaoran','小然',344772090,1),(12,'alan','阿兰',629892418,1),(14,'itachi','Itachi',313545674,1),(15,'ray','小雷',366054757,1),(16,'dennis','Dennis',331608918,1),(17,'power','Power',544180728,1),(18,'john','John',430259312,1),(19,'xiaowen','小雯',628567747,1),(29,'stephen','Stephen',577729495,1),(28,'henry','Henry',432030594,1),(22,'v7','V7',364875690,1),(23,'lucky','lucky',503506517,1),(24,'service','凤凰客服',366844260,1),(25,'white','White',333649602,1),(26,'hugoking','虎哥',173111003,1),(27,'trevor','拖雷弗',603951060,1),(31,'yongshiservice','勇士 带班号',173551266,1),(32,'mangoservice','芒果 带班',261136993,1),(33,'668service','富豪668领班',479143459,1),(34,'still','still',548989799,1),(35,'selina','selina',668258048,1),(36,'lacy','lacy',653050427,1),(37,'susan','susan',619231193,1),(38,'siro','siro',727553810,1),(39,'tonny','tonny',670822320,1),(40,'phexussa','阿诺',538338514,1),(41,'evan','Evan',450000417,1),(42,'rita','Rita',747968160,1),(43,'xiaoyan','小炎',359914915,1),(44,'michael','Michael',432093066,1),(45,'jack','丘哥',182587891,1),(46,'xander','Xander',525891574,1),(47,'young','young',480399188,1),(48,'eric','Eric',575628610,1),(49,'shooter','shooter',718086866,1),(50,'gunner','Gunner',718520370,1),(51,'newman','Newman',741399667,1),(52,'matt','Matt',800989476,1),(53,'zoe','Zoe',376666137,1),(54,'angus','Angus',725936668,1),(55,'aries','Aries',599038969,1),(56,'lianfaservice','联发客服',814839628,1),(57,'reggis','Reggis',696246595,1),(58,'curry','Curry',577729495,1),(59,'abel','Abel',772754366,1),(60,'zonpine','Zonpine',741001767,1),(61,'alex','Alex',867860201,1),(62,'jelly','Jelly',715686120,1),(63,'edwin','edwin',855167871,1),(64,'kylen','KYLEN',859348555,1),(65,'coeus','coeus',638028556,1),(66,'quinton','Quinton',881345482,1),(67,'judith','Judith',700695775,1),(68,'devin','Devin',844268125,1),(69,'echo','echo',484895593,1),(70,'xiaolei','小雷',366054757,1),(71,'caca','菜爷',452211390,1),(72,'caiye','菜爷',452211390,1),(73,'niki','Niki',825578320,1),(74,'allen','Allen',790335774,1),(75,'green','Green',609668145,1),(76,'kobe','科比',908494216,1),(77,'wayen','韦恩',986481961,1);
/*!40000 ALTER TABLE `detect_telegramuseridtb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-09-10 08:26:30.679757','72','caiye | ?? | 452211390',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',8,1),(2,'2019-09-10 08:26:44.722098','45','jack | ?? | 182587891',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',8,1),(3,'2019-09-10 08:26:59.608226','72','caiye | ?? | 452211390',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',8,1),(4,'2019-09-10 08:27:36.403587','1','arno | ?? | 538338514',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',8,1),(5,'2019-09-10 08:28:09.948590','1','arno | ?? | 538338514',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',8,1),(6,'2019-09-10 08:40:18.623335','1','arno | ?? | 538338514',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',8,1),(7,'2019-09-10 09:50:55.987680','1','arno | ?? | 538338514',2,'[]',8,1),(8,'2019-09-10 09:51:05.055381','1','arno | ????2 | 538338514',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',8,1),(9,'2019-09-10 09:51:13.295465','1','arno | ?? | 538338514',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',8,1),(10,'2019-09-16 03:49:06.364701','3','?? | / |  | ??',1,'[{\"added\": {}}]',12,1),(11,'2019-09-16 03:49:29.745737','4','Telegram | telegram/ |  | ??',1,'[{\"added\": {}}]',10,1),(12,'2019-09-16 03:49:33.032367','3','?? | / |  | ??',2,'[{\"changed\": {\"fields\": [\"icon\", \"next_l\"]}}]',12,1),(13,'2019-09-16 04:37:01.028308','1','arno',1,'[{\"added\": {}}]',13,1),(14,'2019-09-16 04:50:37.820528','2','arno',1,'[{\"added\": {}}]',13,1),(15,'2019-09-16 04:50:50.881371','2','arno',3,'',13,1),(16,'2019-09-16 05:11:46.596196','1','arno',2,'[{\"changed\": {\"fields\": [\"weburisecond_l\"]}}]',13,1),(17,'2019-09-16 05:12:17.503506','1','arno',2,'[{\"changed\": {\"fields\": [\"weburisecond_l\"]}}]',13,1),(18,'2019-09-16 05:15:10.601389','1','arno',3,'',13,1),(19,'2019-09-16 05:27:22.019764','2','test',1,'[{\"added\": {}}]',4,1),(20,'2019-09-16 05:27:35.273388','2','test',2,'[]',4,1),(21,'2019-09-16 05:28:08.810315','1','??',1,'[{\"added\": {}}]',14,1),(22,'2019-09-16 05:39:21.290522','3','test',1,'[{\"added\": {}}]',13,1),(23,'2019-09-16 05:48:01.152548','3','test',2,'[{\"changed\": {\"fields\": [\"weburisecond_l\"]}}]',13,1),(24,'2019-09-16 05:48:10.159507','1','??',2,'[{\"changed\": {\"fields\": [\"weburisecond_l\"]}}]',14,1),(25,'2019-09-16 05:51:56.611576','4','Telegram | telegram/ |  | ??',2,'[{\"changed\": {\"fields\": [\"status\"]}}]',10,1),(26,'2019-09-16 05:52:26.071937','4','Telegram | telegram/ |  | ??',2,'[{\"changed\": {\"fields\": [\"status\"]}}]',10,1),(27,'2019-09-16 06:00:58.535603','1','??telegram ???????? | /detect/telegram | ??',1,'[{\"added\": {}}]',15,1),(28,'2019-09-16 06:01:30.523145','2','??telegram ?? | /detect/telegram/sendgroupmessage | ??',1,'[{\"added\": {}}]',15,1),(29,'2019-09-16 06:26:33.813030','3','test',2,'[{\"changed\": {\"fields\": [\"weburifirst_l\"]}}]',13,1),(30,'2019-09-16 06:27:11.113305','3','test',2,'[{\"changed\": {\"fields\": [\"weburigroup_permissions\"]}}]',13,1),(31,'2019-09-16 06:36:05.615033','3','test',2,'[{\"changed\": {\"fields\": [\"weburifirst_l\", \"weburisecond_l\", \"weburigroup_permissions\"]}}]',13,1),(32,'2019-09-16 06:36:15.309010','1','??',2,'[{\"changed\": {\"fields\": [\"weburi_permissions\"]}}]',14,1),(33,'2019-09-16 06:43:32.229817','1','??',2,'[{\"changed\": {\"fields\": [\"weburisecond_l\", \"weburi_permissions\"]}}]',14,1),(34,'2019-09-16 07:05:08.451458','2','??',1,'[{\"added\": {}}]',14,1),(35,'2019-09-16 07:06:20.491450','3','test',2,'[{\"changed\": {\"fields\": [\"weburifirst_l\", \"weburisecond_l\"]}}]',13,1),(36,'2019-09-16 07:06:36.679135','3','test',2,'[{\"changed\": {\"fields\": [\"weburifirst_l\", \"weburisecond_l\"]}}]',13,1),(37,'2019-09-16 07:15:07.775960','5','CloudFlare | cloudflare |  | ??',1,'[{\"added\": {}}]',10,1),(38,'2019-09-16 07:15:27.276666','4','???? | domainns |  | ??',1,'[{\"added\": {}}]',12,1),(39,'2019-09-16 07:18:39.307026','5','CloudFlare | cloudflare |  | ??',2,'[{\"changed\": {\"fields\": [\"status\"]}}]',10,1),(40,'2019-09-16 07:19:39.388621','5','CloudFlare | cloudflare |  | ??',2,'[{\"changed\": {\"fields\": [\"status\"]}}]',10,1),(41,'2019-09-16 07:21:40.120677','5','CloudFlare | cloudflare.html |  | ??',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',10,1),(42,'2019-09-16 07:21:55.299553','5','CloudFlare | cloudflare |  | ??',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',10,1),(43,'2019-09-16 07:22:17.155732','5','CloudFlare | cloudflare | /domainns/cloudflare | ??',2,'[{\"changed\": {\"fields\": [\"jump\"]}}]',10,1),(44,'2019-09-16 08:40:25.392180','1','??',2,'[{\"changed\": {\"fields\": [\"cf_account_p\", \"dnspod_account_p\"]}}]',14,1),(45,'2019-09-16 08:40:52.121123','1','??',2,'[{\"changed\": {\"fields\": [\"weburifirst_l\", \"weburisecond_l\"]}}]',14,1),(46,'2019-09-16 08:44:00.788322','3','/domainns/cloudflare/get_accounts | ??CloudFlare ???? | ??',1,'[{\"added\": {}}]',15,1),(47,'2019-09-16 08:44:11.189383','1','??',2,'[{\"changed\": {\"fields\": [\"weburi_p\"]}}]',14,1),(48,'2019-09-17 05:41:55.647969','4','/domainns/cloudflare/get_zone_records | ??CF?????? | ??',1,'[{\"added\": {}}]',15,1),(49,'2019-09-17 05:41:57.820974','1','??',2,'[{\"changed\": {\"fields\": [\"weburi_p\"]}}]',14,1),(50,'2019-09-19 04:39:57.946259','5','/domainns/cloudflare/update_records | ??CF?????? | ??',1,'[{\"added\": {}}]',15,1),(51,'2019-09-19 04:40:01.555324','1','??',2,'[{\"changed\": {\"fields\": [\"weburi_p\"]}}]',14,1),(52,'2019-09-19 06:33:59.907357','6','/domainns/cloudflare/add_records | ??CF?????? | ??',1,'[{\"added\": {}}]',15,1),(53,'2019-09-19 06:34:02.724022','1','??',2,'[{\"changed\": {\"fields\": [\"weburi_p\"]}}]',14,1),(54,'2019-09-19 06:39:04.226352','7','/domainns/cloudflare/delete_records | ??CF?????? | ??',1,'[{\"added\": {}}]',15,1),(55,'2019-09-19 06:39:06.320223','1','??',2,'[{\"changed\": {\"fields\": [\"weburi_p\"]}}]',14,1),(56,'2019-09-20 03:53:54.388467','6','DnsPod | dnspod | /domains/dnspod | ??',1,'[{\"added\": {}}]',10,1),(57,'2019-09-20 03:54:25.553044','4','???? | domainns |  | ??',2,'[{\"changed\": {\"fields\": [\"next_l\"]}}]',12,1),(58,'2019-09-20 04:26:25.496419','1','??',2,'[{\"changed\": {\"fields\": [\"weburisecond_l\"]}}]',14,1),(59,'2019-09-20 04:26:54.643753','6','DnsPod | dnspod | /domainns/dnspod | ??',2,'[{\"changed\": {\"fields\": [\"jump\"]}}]',10,1),(60,'2019-09-20 07:09:38.381551','8','/domainns/dnspod/get_accounts | ??DNSPOD ???? | ??',1,'[{\"added\": {}}]',15,1),(61,'2019-09-20 07:09:44.257898','1','??',2,'[{\"changed\": {\"fields\": [\"weburi_p\"]}}]',14,1),(62,'2019-09-20 07:48:38.935927','9','/domainns/dnspod/get_zone_records | ??DNSPOD?????? | ??',1,'[{\"added\": {}}]',15,1),(63,'2019-09-20 07:48:41.000995','1','??',2,'[{\"changed\": {\"fields\": [\"weburi_p\"]}}]',14,1),(64,'2019-09-22 03:06:09.511523','10','/domainns/dnspod/add_records | ??DNSPOD?????? | ??',1,'[{\"added\": {}}]',15,1),(65,'2019-09-22 03:06:16.367674','1','??',2,'[{\"changed\": {\"fields\": [\"weburi_p\"]}}]',14,1),(66,'2019-09-22 07:45:18.165794','11','/domainns/dnspod/delete_records | ??DNSPOD?????? | ??',1,'[{\"added\": {}}]',15,1),(67,'2019-09-22 07:45:21.517406','1','??',2,'[{\"changed\": {\"fields\": [\"weburi_p\"]}}]',14,1),(68,'2019-09-22 08:17:20.196738','12','/domainns/dnspod/update_records | ??DNSPOD?????? | ??',1,'[{\"added\": {}}]',15,1),(69,'2019-09-22 08:17:25.132941','1','??',2,'[{\"changed\": {\"fields\": [\"weburi_p\"]}}]',14,1),(70,'2019-09-23 02:43:44.314014','75','green | Green | 609668145',1,'[{\"added\": {}}]',8,1),(71,'2019-09-23 02:43:48.895116','9','android | ??? | ?? young Eric Angus Green ',2,'[{\"changed\": {\"fields\": [\"user\"]}}]',9,1),(72,'2019-09-23 05:24:58.698944','7','Reflesh | reflesh | /domainns/reflesh | ??',1,'[{\"added\": {}}]',10,1),(73,'2019-09-23 05:25:02.252488','1','??',2,'[{\"changed\": {\"fields\": [\"weburisecond_l\"]}}]',14,1),(74,'2019-09-23 05:25:57.603447','4','???? | domainns |  | ??',2,'[{\"changed\": {\"fields\": [\"next_l\"]}}]',12,1),(75,'2019-09-23 05:26:27.521061','7','???? | reflesh | /domainns/reflesh | ??',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',10,1),(76,'2019-09-23 08:30:08.872708','1','APP??????',2,'[{\"changed\": {\"fields\": [\"project\"]}}]',25,1),(77,'2019-09-23 08:31:02.278087','5','4',3,'',25,1),(78,'2019-09-23 08:31:02.398755','4','1',3,'',25,1),(79,'2019-09-23 08:31:02.503144','3','3',3,'',25,1),(80,'2019-09-23 08:31:02.624103','2','2',3,'',25,1),(81,'2019-09-23 08:34:02.974864','6','?????',2,'[{\"changed\": {\"fields\": [\"project\"]}}]',25,1),(82,'2019-09-23 08:35:22.309868','7','????????',2,'[{\"changed\": {\"fields\": [\"project\"]}}]',25,1),(83,'2019-09-23 09:30:33.206243','2','tencent | lebo.technical001',2,'[{\"changed\": {\"fields\": [\"status\"]}}]',20,1),(84,'2019-09-27 05:13:52.871439','8','???? | list | /domainns/list | ??',1,'[{\"added\": {}}]',10,1),(85,'2019-09-27 05:14:04.024375','1','??',2,'[{\"changed\": {\"fields\": [\"weburisecond_l\"]}}]',14,1),(86,'2019-09-27 05:14:14.940231','4','???? | domainns |  | ??',2,'[{\"changed\": {\"fields\": [\"next_l\"]}}]',12,1),(87,'2019-09-27 05:22:10.764262','2','test',2,'[{\"changed\": {\"fields\": [\"is_staff\"]}}]',4,1),(88,'2019-09-27 05:24:56.737819','13','/domainns/reflesh | ??????? | ??',1,'[{\"added\": {}}]',15,1),(89,'2019-09-27 05:25:49.227852','14','/domainns/reflesh/execute/cdn | ??CDN ???????? | ??',1,'[{\"added\": {}}]',15,1),(90,'2019-09-27 05:26:40.132978','15','/domainns/reflesh/execute/project | ???????????? | ??',1,'[{\"added\": {}}]',15,1),(91,'2019-09-27 05:28:38.230475','1','??',2,'[{\"changed\": {\"fields\": [\"weburi_p\"]}}]',14,1),(92,'2019-09-27 05:33:33.035449','1','??',2,'[{\"changed\": {\"fields\": [\"cdn_account_p\"]}}]',14,1),(93,'2019-09-27 05:49:20.113491','1','??',2,'[{\"changed\": {\"fields\": [\"weburi_p\"]}}]',14,1),(94,'2019-09-27 05:49:39.701706','1','??',2,'[{\"changed\": {\"fields\": [\"weburi_p\"]}}]',14,1),(95,'2019-09-27 05:55:57.948067','1','??',2,'[{\"changed\": {\"fields\": [\"cf_account_p\"]}}]',14,1),(96,'2019-09-27 06:22:57.961491','24','google?? | 9393cp | -287566747',1,'[{\"added\": {}}]',7,1),(97,'2019-09-27 09:27:04.752041','16','/domainns/domain/args | ??????? | ??',1,'[{\"added\": {}}]',15,1),(98,'2019-09-27 09:27:09.420722','1','??',2,'[{\"changed\": {\"fields\": [\"weburi_p\"]}}]',14,1),(99,'2019-09-28 03:18:07.832075','17','/domainns/domain/get_records | ?????? | ??',1,'[{\"added\": {}}]',15,1),(100,'2019-09-28 03:18:11.872106','1','??',2,'[{\"changed\": {\"fields\": [\"weburi_p\"]}}]',14,1),(101,'2019-09-28 10:05:51.804272','25','????2.0 | sport2 | -301035081',1,'[{\"added\": {}}]',7,1),(102,'2019-09-30 08:44:08.805526','1','??',2,'[{\"changed\": {\"fields\": [\"cdn_account_p\"]}}]',14,1),(103,'2019-09-30 08:50:36.943795','1','??',2,'[{\"changed\": {\"fields\": [\"cf_account_p\", \"cdn_account_p\"]}}]',14,1),(104,'2019-09-30 09:45:02.478017','18','/domainns/domain/add_records | ?????? | ??',1,'[{\"added\": {}}]',15,1),(105,'2019-09-30 09:45:07.275891','1','??',2,'[{\"changed\": {\"fields\": [\"weburi_p\"]}}]',14,1),(106,'2019-09-30 09:52:36.744752','2028','567?[567bet] | https://www.567mcp.com | pc : head : ssl | ??',3,'',21,1),(107,'2019-09-30 11:16:01.747953','2029','567?[567bet] | https://www.567mcp.com | pc : head : ssl | ??',2,'[{\"changed\": {\"fields\": [\"content\", \"cdn\"]}}]',21,1),(108,'2019-09-30 11:16:29.218423','2029','567?[567bet] | https://www.567mcp.com | pc : head : ssl | ??',2,'[{\"changed\": {\"fields\": [\"cf\"]}}]',21,1),(109,'2019-09-30 12:46:48.086453','19','/domainns/domain/edit_records | ?????? | ??',1,'[{\"added\": {}}]',15,1),(110,'2019-09-30 12:46:50.988035','1','??',2,'[{\"changed\": {\"fields\": [\"weburi_p\"]}}]',14,1),(111,'2019-10-01 06:24:41.936629','76','kobe | ?? | 908494216',1,'[{\"added\": {}}]',8,1),(112,'2019-10-01 06:25:06.612173','77','wayen | ?? | 986481961',1,'[{\"added\": {}}]',8,1),(113,'2019-10-01 06:25:09.480763','2','yunwei | ??? | ?? Alex coeus Devin ?? ?? ',2,'[{\"changed\": {\"fields\": [\"user\"]}}]',9,1),(114,'2019-10-04 03:25:55.048914','9','SaltStack | saltstack | /saltstack/basic | ??',1,'[{\"added\": {}}]',10,1),(115,'2019-10-04 03:25:58.071783','5','???? | saltstack |  | ??',1,'[{\"added\": {}}]',12,1),(116,'2019-10-04 03:26:41.342936','1','??',2,'[{\"changed\": {\"fields\": [\"weburifirst_l\", \"weburisecond_l\"]}}]',14,1),(117,'2019-10-08 06:08:01.001510','20','/saltstack/basic/execute | saltstack ???? | ??',1,'[{\"added\": {}}]',15,1),(118,'2019-10-08 06:08:08.873163','1','??',2,'[{\"changed\": {\"fields\": [\"weburi_p\"]}}]',14,1),(119,'2019-10-08 09:47:24.921975','2','yunwei | ??? | ?? coeus Devin ?? ?? ',2,'[{\"changed\": {\"fields\": [\"user\"]}}]',9,1),(120,'2019-10-09 04:59:28.655561','4','manage | ??? | ?? ',2,'[{\"changed\": {\"fields\": [\"user\", \"status\"]}}]',9,1),(121,'2019-10-09 07:28:51.649946','4','???? | domain_alert | -1001301491264',2,'[{\"changed\": {\"fields\": [\"group_id\"]}}]',7,1),(122,'2020-01-05 10:11:40.086696','6','wangsu | fenghuangcdn',3,'',20,1),(123,'2020-01-05 10:11:40.114711','5','wangsu | leyoutss',3,'',20,1),(124,'2020-01-05 10:11:40.140662','4','wangsu | fgadmin',3,'',20,1),(125,'2020-01-05 10:11:40.167666','3','wangsu | speedfeng2',3,'',20,1),(126,'2020-01-05 10:11:40.194607','2','tencent | lebo.technical001',3,'',20,1),(127,'2020-01-05 10:11:40.221790','1','wangsu | speedfeng',3,'',20,1),(128,'2020-01-07 01:56:08.638870','5','??? | kindergarten | -1001249952742',2,'[{\"changed\": {\"fields\": [\"group_id\"]}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(14,'control','usergrouppermissionstb'),(13,'control','userpermissionstb'),(12,'control','weburifirstleveltb'),(10,'control','weburisecondleveltb'),(15,'control','weburitb'),(11,'control','weburithirdleveltb'),(9,'detect','departmentusertb'),(7,'detect','telegramchatgrouptb'),(27,'detect','telegramdomainalerttb'),(26,'detect','telegramsslalerttb'),(8,'detect','telegramuseridtb'),(19,'domainns','alterhistorytb'),(16,'domainns','awsaccounttb'),(20,'domainns','cdnaccounttb'),(23,'domainns','cdn_proj_t'),(17,'domainns','cfaccounttb'),(18,'domainns','dnspodaccounttb'),(25,'domainns','doaminprojecttb'),(22,'domainns','domaindetectgrouptb'),(24,'domainns','domains'),(21,'domainns','domaintb'),(28,'saltstack','minioniptb'),(29,'saltstack','miniontb'),(6,'sessions','session'),(30,'upgrade','projecttb'),(35,'upgrade','svncustomertb'),(34,'upgrade','svngraylocktb'),(32,'upgrade','svnmastertb'),(31,'upgrade','svnrecordtb'),(33,'upgrade','svnzypfrontgraylocktb'),(36,'upgrade','svnzyplotterygraylocktb');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-09-09 08:07:24.921876'),(2,'auth','0001_initial','2019-09-09 08:07:25.632165'),(3,'admin','0001_initial','2019-09-09 08:07:26.317723'),(4,'admin','0002_logentry_remove_auto_add','2019-09-09 08:07:26.464368'),(5,'admin','0003_logentry_add_action_flag_choices','2019-09-09 08:07:26.509401'),(6,'contenttypes','0002_remove_content_type_name','2019-09-09 08:07:26.667165'),(7,'auth','0002_alter_permission_name_max_length','2019-09-09 08:07:26.733122'),(8,'auth','0003_alter_user_email_max_length','2019-09-09 08:07:26.834238'),(9,'auth','0004_alter_user_username_opts','2019-09-09 08:07:26.900084'),(10,'auth','0005_alter_user_last_login_null','2019-09-09 08:07:27.005775'),(11,'auth','0006_require_contenttypes_0002','2019-09-09 08:07:27.044689'),(12,'auth','0007_alter_validators_add_error_messages','2019-09-09 08:07:27.088705'),(13,'auth','0008_alter_user_username_max_length','2019-09-09 08:07:27.155740'),(14,'auth','0009_alter_user_last_name_max_length','2019-09-09 08:07:27.222573'),(15,'auth','0010_alter_group_name_max_length','2019-09-09 08:07:27.289763'),(16,'auth','0011_update_proxy_permissions','2019-09-09 08:07:27.390341'),(17,'sessions','0001_initial','2019-09-09 08:07:27.509092'),(18,'detect','0001_initial','2019-09-10 07:52:23.626184'),(19,'detect','0002_auto_20190915_0833','2019-09-15 08:36:49.972298'),(20,'detect','0003_auto_20190915_0836','2019-09-15 08:36:51.008085'),(21,'detect','0004_auto_20190915_0837','2019-09-15 08:37:54.893468'),(22,'control','0001_initial','2019-09-16 03:34:23.241662'),(23,'control','0002_auto_20190916_1136','2019-09-16 03:36:27.075814'),(24,'control','0003_auto_20190916_1138','2019-09-16 03:38:54.440000'),(25,'control','0004_auto_20190916_1148','2019-09-16 03:48:54.510437'),(26,'control','0005_userweburipermissionstb','2019-09-16 04:36:39.478745'),(27,'control','0006_auto_20190916_1252','2019-09-16 04:52:31.817739'),(28,'control','0007_userweburigrouppermissionstb','2019-09-16 05:25:42.439036'),(29,'control','0008_auto_20190916_1326','2019-09-16 05:26:22.001724'),(30,'control','0009_auto_20190916_1338','2019-09-16 05:38:38.039351'),(31,'control','0010_auto_20190916_1357','2019-09-16 05:57:40.110275'),(32,'control','0011_userweburigrouppermissionstb_status','2019-09-16 06:35:01.177918'),(33,'domainns','0001_initial','2019-09-16 07:37:55.793092'),(34,'domainns','0002_delete_awsaccounttb','2019-09-16 07:42:18.033086'),(35,'control','0012_auto_20190916_1615','2019-09-16 08:15:19.119135'),(36,'control','0013_auto_20190916_1616','2019-09-16 08:16:09.608955'),(37,'control','0014_auto_20190916_1629','2019-09-16 08:29:04.853624'),(38,'control','0015_auto_20190916_1635','2019-09-16 08:35:52.127352'),(39,'control','0016_auto_20190916_1638','2019-09-16 08:39:05.601736'),(40,'domainns','0003_alterhistory','2019-09-19 04:25:14.233749'),(41,'domainns','0004_auto_20190919_1229','2019-09-19 04:30:00.011690'),(42,'domainns','0005_cdnaccounttb_domaindetectgrouptb_domaintb','2019-09-23 06:11:10.996235'),(43,'domainns','0006_doaminprojecttb','2019-09-23 06:29:57.775692'),(44,'domainns','0007_remove_domaintb_cdn','2019-09-23 06:56:24.249530'),(45,'domainns','0008_auto_20190923_1508','2019-09-23 07:18:28.742633'),(46,'domainns','0009_delete_cdn_proj_t','2019-09-23 07:18:29.054236'),(47,'domainns','0010_remove_domains_cdn','2019-09-23 07:28:11.298583'),(48,'domainns','0011_remove_domains_group','2019-09-23 07:33:44.950919'),(49,'domainns','0012_auto_20190923_1534','2019-09-23 07:34:50.362321'),(50,'domainns','0013_remove_domains_group','2019-09-23 07:49:37.447217'),(51,'domainns','0014_domains_group','2019-09-23 08:00:41.266607'),(52,'domainns','0015_auto_20190923_1604','2019-09-23 08:04:13.895420'),(53,'domainns','0016_auto_20190923_1624','2019-09-23 08:24:28.421262'),(54,'control','0017_auto_20190923_1649','2019-09-23 08:49:54.108591'),(55,'domainns','0017_doaminprojecttb_status','2019-09-23 08:53:25.444865'),(56,'domainns','0018_auto_20190926_1516','2019-09-26 07:16:36.173034'),(57,'domainns','0019_auto_20190928_1804','2019-09-28 10:04:36.568585'),(58,'detect','0005_auto_20190928_1806','2019-09-28 10:06:57.430407'),(59,'detect','0006_telegramdomainalerttb_telegramsslalerttb','2019-10-04 02:20:24.663207'),(60,'saltstack','0001_initial','2019-10-04 02:22:45.912039'),(61,'upgrade','0001_initial','2019-10-04 02:22:49.877979'),(62,'upgrade','0002_auto_20191004_1033','2019-10-04 02:33:37.648620'),(63,'detect','0007_auto_20191013_1619','2019-10-13 08:20:03.960679'),(64,'upgrade','0003_auto_20191013_1619','2019-10-13 08:20:04.045348'),(65,'detect','0008_auto_20191028_1308','2019-10-28 05:09:05.436038'),(66,'domainns','0020_auto_20191028_1308','2019-10-28 05:09:05.501174'),(67,'upgrade','0004_auto_20191028_1308','2019-10-28 05:09:05.569333');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('1ran5qx5sgrelcu3yr5glj9ncrvgcenf','Mjc5MDZiODk1YWI5NzcxZjZiMDBhNDBiYmRmNGEwMTRjYmI1YjhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkZDcwN2ZkYzlmZmU5NGUwOGM0ODg5NjljMGFlY2E5MWE2NWE2ZTEwIn0=','2020-01-19 09:51:52.230295'),('1u9o0o349w65fr4wwbkt7ndkcwz53tdx','Mjc5MDZiODk1YWI5NzcxZjZiMDBhNDBiYmRmNGEwMTRjYmI1YjhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkZDcwN2ZkYzlmZmU5NGUwOGM0ODg5NjljMGFlY2E5MWE2NWE2ZTEwIn0=','2019-10-15 06:24:12.501337'),('2c8qquw5cii1nvjiemtcdciboymgcfys','MjAyNjYxYzhkNGI4ZjNlMTlhNTU0MmRmNzRlMzU3YjhmMzExYThkMTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5MDg2NzZhZmIwYzE1MGZmZjdmMGEzYWY0ZTMxYTdhOGMxNGUwZDBlIn0=','2019-10-22 05:54:12.675065'),('3y117tsre0nzh7xd2qwedqkp5qom2cba','Mjc5MDZiODk1YWI5NzcxZjZiMDBhNDBiYmRmNGEwMTRjYmI1YjhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkZDcwN2ZkYzlmZmU5NGUwOGM0ODg5NjljMGFlY2E5MWE2NWE2ZTEwIn0=','2019-09-24 06:11:34.013308'),('blcgc9016crziz3a6r2cc29y9rn6gu1v','ZmIxYzg0MjY0YTU3ZmYwYWNjZjY5OGUxZmQ1NzMwODM0NDA2MTRmNjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZjVlOWQ2MjM2ODliZmFlZWY3ZmNkOWJkNDM5M2Q0YzhlYWE2ODdmIn0=','2020-04-01 15:08:17.112666'),('gv31eahz1r7dzsh9gw23oz24lr6xp0ww','Mjc5MDZiODk1YWI5NzcxZjZiMDBhNDBiYmRmNGEwMTRjYmI1YjhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkZDcwN2ZkYzlmZmU5NGUwOGM0ODg5NjljMGFlY2E5MWE2NWE2ZTEwIn0=','2020-01-24 10:30:17.365433'),('pu5m3dtxkm7x2y0ws985xjdswz60kqjd','Mjc5MDZiODk1YWI5NzcxZjZiMDBhNDBiYmRmNGEwMTRjYmI1YjhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkZDcwN2ZkYzlmZmU5NGUwOGM0ODg5NjljMGFlY2E5MWE2NWE2ZTEwIn0=','2019-09-29 08:13:58.996476'),('urdjc4psa5ta0sy685g78zumvtz2u4tu','Mjc5MDZiODk1YWI5NzcxZjZiMDBhNDBiYmRmNGEwMTRjYmI1YjhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkZDcwN2ZkYzlmZmU5NGUwOGM0ODg5NjljMGFlY2E5MWE2NWE2ZTEwIn0=','2020-04-06 13:40:20.013817'),('viak7e7wpujszsl1swpzkmzd0zmxetdf','MjAyNjYxYzhkNGI4ZjNlMTlhNTU0MmRmNzRlMzU3YjhmMzExYThkMTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5MDg2NzZhZmIwYzE1MGZmZjdmMGEzYWY0ZTMxYTdhOGMxNGUwZDBlIn0=','2019-10-11 05:18:41.939507'),('wo3c3k7ydbnl91cmtk471zquku7y54r9','Mjc5MDZiODk1YWI5NzcxZjZiMDBhNDBiYmRmNGEwMTRjYmI1YjhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkZDcwN2ZkYzlmZmU5NGUwOGM0ODg5NjljMGFlY2E5MWE2NWE2ZTEwIn0=','2019-09-26 05:19:29.155175'),('yaft1knfyej6s8z4t8wradoj2a8ia5wr','Mjc5MDZiODk1YWI5NzcxZjZiMDBhNDBiYmRmNGEwMTRjYmI1YjhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkZDcwN2ZkYzlmZmU5NGUwOGM0ODg5NjljMGFlY2E5MWE2NWE2ZTEwIn0=','2020-01-24 08:24:38.725817'),('zaj4p7ry5vih1w0ljsk6mdy4986x7jvm','Mjc5MDZiODk1YWI5NzcxZjZiMDBhNDBiYmRmNGEwMTRjYmI1YjhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkZDcwN2ZkYzlmZmU5NGUwOGM0ODg5NjljMGFlY2E5MWE2NWE2ZTEwIn0=','2019-10-01 02:07:36.607824');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domainns_alterhistorytb`
--

DROP TABLE IF EXISTS `domainns_alterhistorytb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domainns_alterhistorytb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(32) NOT NULL,
  `req_ip` varchar(128) NOT NULL,
  `user` varchar(32) NOT NULL,
  `pre_rec` varchar(256) NOT NULL,
  `now_rec` varchar(256) NOT NULL,
  `action` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domainns_alterhistorytb`
--

LOCK TABLES `domainns_alterhistorytb` WRITE;
/*!40000 ALTER TABLE `domainns_alterhistorytb` DISABLE KEYS */;
INSERT INTO `domainns_alterhistorytb` VALUES (1,'2019-09-19 12:42:37','127.0.0.1','test','\'type\':CNAME, \'name\': www.222.com.228365365.info, \'content\': www.222.com, \'proxied\':False','\'type\':CNAME, \'name\': www.222.com.228365365.info, \'content\': 222.com, \'proxied\':False','change',1),(2,'2019-09-19 12:50:03','127.0.0.1','test','\'type\':CNAME, \'name\': www.222.com.228365365.info, \'content\': 222.com, \'proxied\':False','\'type\':CNAME, \'name\': www.222.com.228365365.info, \'content\': www.222.com, \'proxied\':False','change',1),(3,'2019-09-19 12:52:24','127.0.0.1','test','\'type\':CNAME, \'name\': www.222.com.228365365.info, \'content\': www.222.com, \'proxied\':False','\'type\':CNAME, \'name\': www.222.com.228365365.info, \'content\': 222.com, \'proxied\':False','change',1),(4,'2019-09-19 13:19:52','127.0.0.1','test','\'type\':CNAME, \'name\': www.222.com.228365365.info, \'content\': 222.com, \'proxied\':False','\'type\':CNAME, \'name\': www.222.com.228365365.info, \'content\': www.222.com, \'proxied\':False','change',1),(5,'2019-09-19 13:36:56','127.0.0.1','test','\'type\':CNAME, \'name\': www.222.com.228365365.info, \'content\': www.222.com, \'proxied\':False','\'type\':CNAME, \'name\': www.222.com.228365365.info, \'content\': 222.com, \'proxied\':False','change',1),(6,'2019-09-19 13:37:28','127.0.0.1','test','\'type\':CNAME, \'name\': www.222.com.228365365.info, \'content\': 222.com, \'proxied\':False','\'type\':CNAME, \'name\': www.222.com.228365365.info, \'content\': www.222.com, \'proxied\':False','change',1),(7,'2019-09-19 14:36:43','127.0.0.1','test','null','\'type\':A, \'name\': test.228365365.info, \'content\': 8.8.8.8, \'enabled\':1','add',0),(8,'2019-09-19 14:37:21','127.0.0.1','test','null','\'type\':A, \'name\': test.228365365.info, \'content\': 8.8.8.8, \'enabled\':1','add',0),(9,'2019-09-19 14:38:01','127.0.0.1','test','null','\'type\':A, \'name\': test.228365365.info, \'content\': 8.8.8.8, \'enabled\':1','add',0),(10,'2019-09-19 14:55:51','127.0.0.1','test','\'type\':A, \'name\': test.228365365.info, \'content\': 8.8.8.8, \'enabled\':True','null','delete',1),(11,'2019-09-19 14:57:09','127.0.0.1','test','null','\'type\':A, \'name\': test.228365365.info, \'content\': 8.8.8.8, \'enabled\':1','add',1),(12,'2019-09-19 14:57:13','127.0.0.1','test','\'type\':A, \'name\': test.228365365.info, \'content\': 8.8.8.8, \'enabled\':True','null','delete',1),(13,'2019-09-19 15:06:50','127.0.0.1','test','null','\'type\':A, \'name\': test.228365365.info, \'content\': 8.8.8.8, \'enabled\':1','add',1),(14,'2019-09-19 15:12:41','127.0.0.1','test','null','\'type\':A, \'name\': test.63513.com, \'content\': 8.8.8.8, \'enabled\':1','add',1),(15,'2019-09-19 15:12:49','127.0.0.1','test','\'type\':A, \'name\': test.63513.com, \'content\': 8.8.8.8, \'enabled\':True','null','delete',1),(16,'2019-09-19 15:14:28','127.0.0.1','test','\'type\':CNAME, \'name\': _1ff302cea3b29837021cfee186722982.hgbspace.com, \'content\': e43f1fcf141a2d10bbe01f6c33f5a6ee.e83a28db00e62266aacc666dc93d8008.pssl7241596324653282.comodoca.com, \'enabled\':False','null','delete',1),(17,'2019-09-19 15:16:16','127.0.0.1','test','null','\'type\':A, \'name\': test.91yzl.com, \'content\': 8.8.8.8, \'enabled\':1','add',1),(18,'2019-09-19 15:16:24','127.0.0.1','test','\'type\':A, \'name\': test.91yzl.com, \'content\': 8.8.8.8, \'enabled\':True','null','delete',1),(19,'2019-09-19 15:19:32','127.0.0.1','test','null','\'type\':A, \'name\': test.91yzl.com, \'content\': 8.8.8.8, \'enabled\':1','add',1),(20,'2019-09-19 15:19:44','127.0.0.1','test','null','\'type\':A, \'name\': test.91yzl.com, \'content\': 8.8.8.8, \'enabled\':1','add',0),(21,'2019-09-19 15:23:17','127.0.0.1','test','\'type\':A, \'name\': test.91yzl.com, \'content\': 8.8.8.8, \'enabled\':True','null','delete',1),(22,'2019-09-20 09:39:58','127.0.0.1','test','\'type\':A, \'name\': test.228365365.info, \'content\': 8.8.8.8, \'enabled\':True','null','delete',1),(23,'2019-09-20 10:42:35','127.0.0.1','test','\'type\':CNAME, \'name\': www.222.com.228365365.info, \'content\': www.222.com, \'proxied\':False','\'type\':CNAME, \'name\': www.222.com.228365365.info, \'content\': 222.com, \'proxied\':False','change',1),(24,'2019-09-20 10:43:41','127.0.0.1','test','\'type\':CNAME, \'name\': www.222.com.228365365.info, \'content\': 222.com, \'proxied\':False','\'type\':CNAME, \'name\': www.222.com.228365365.info, \'content\': www.222.com, \'proxied\':False','change',1),(25,'2019-09-20 10:44:01','127.0.0.1','test','\'type\':CNAME, \'name\': www.222.com.228365365.info, \'content\': www.222.com, \'proxied\':False','\'type\':CNAME, \'name\': www.222.com.228365365.info, \'content\': 222.com, \'proxied\':False','change',1),(26,'2019-09-20 10:44:20','127.0.0.1','test','\'type\':CNAME, \'name\': www.222.com.228365365.info, \'content\': 222.com, \'proxied\':False','\'type\':CNAME, \'name\': www.222.com.228365365.info, \'content\': 222.com, \'proxied\':False','change',1),(27,'2019-09-20 10:46:55','127.0.0.1','test','\'type\':CNAME, \'name\': www.222.com.228365365.info, \'content\': 222.com, \'proxied\':False','\'type\':CNAME, \'name\': www.222.com.228365365.info, \'content\': 222.com, \'proxied\':False','change',1),(28,'2019-09-20 10:47:10','127.0.0.1','test','\'type\':CNAME, \'name\': www.222.com.228365365.info, \'content\': 222.com, \'proxied\':False','\'type\':CNAME, \'name\': www.222.com.228365365.info, \'content\': www.222.com, \'proxied\':False','change',1),(29,'2019-09-20 10:55:00','127.0.0.1','test','null','\'type\':A, \'name\': test.228365365.info, \'content\': 8.8.8.8, \'enabled\':1','add',1),(30,'2019-09-20 10:55:48','127.0.0.1','test','\'type\':A, \'name\': test.228365365.info, \'content\': 8.8.8.8, \'enabled\':True','null','delete',1),(31,'2019-09-20 10:59:25','127.0.0.1','test','null','\'type\':A, \'name\': test.228365365.info, \'content\': 8.8.8.8, \'enabled\':1','add',1),(32,'2019-09-20 10:59:34','127.0.0.1','test','\'type\':A, \'name\': test.228365365.info, \'content\': 8.8.8.8, \'enabled\':True','null','delete',1),(33,'2019-09-20 11:00:12','127.0.0.1','test','null','\'type\':A, \'name\': test.228365365.info, \'content\': 8.8.8.8, \'enabled\':1','add',1),(34,'2019-09-20 11:01:47','127.0.0.1','test','null','\'type\':A, \'name\': test1.228365365.info, \'content\': 8.8.8.8, \'enabled\':1','add',1),(35,'2019-09-20 11:02:07','127.0.0.1','test','null','\'type\':A, \'name\': test3.228365365.info, \'content\': 8.8.8.8, \'enabled\':1','add',1),(36,'2019-09-20 11:03:10','127.0.0.1','test','\'type\':A, \'name\': test1.228365365.info, \'content\': 8.8.8.8, \'enabled\':True','null','delete',1),(37,'2019-09-20 11:03:15','127.0.0.1','test','\'type\':A, \'name\': test3.228365365.info, \'content\': 8.8.8.8, \'enabled\':False','null','delete',1),(38,'2019-09-20 11:03:19','127.0.0.1','test','\'type\':A, \'name\': test.228365365.info, \'content\': 8.8.8.8, \'enabled\':True','null','delete',1),(39,'2019-09-20 11:50:08','127.0.0.1','test','\'type\':CNAME, \'name\': www.222.com.228365365.info, \'content\': www.222.com, \'proxied\':False','\'type\':CNAME, \'name\': www.222.com.228365365.info, \'content\': 222.com, \'proxied\':False','change',1),(40,'2019-09-20 11:51:01','127.0.0.1','test','\'type\':CNAME, \'name\': www.222.com.228365365.info, \'content\': 222.com, \'proxied\':False','\'type\':CNAME, \'name\': www.222.com.228365365.info, \'content\': www.222.com, \'proxied\':False','change',1),(41,'2019-09-22 11:19:39','127.0.0.1','test','\'type\':null, \'name\': null, \'content\': null, \'enabled\':null','\'type\':A, \'name\': test2.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','add',1),(42,'2019-09-22 11:21:06','127.0.0.1','test','\'type\':null, \'name\': null, \'content\': null, \'enabled\':null','\'type\':A, \'name\': test3.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','add',1),(43,'2019-09-22 11:24:15','127.0.0.1','test','\'type\':null, \'name\': null, \'content\': null, \'enabled\':null','\'type\':A, \'name\': test4.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','add',1),(44,'2019-09-22 11:45:49','127.0.0.1','test','\'type\':null, \'name\': null, \'content\': null, \'enabled\':null','\'type\':A, \'name\': test5.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','add',1),(45,'2019-09-22 11:48:40','127.0.0.1','test','\'type\':null, \'name\': null, \'content\': null, \'enabled\':null','\'type\':A, \'name\': test6.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','add',1),(46,'2019-09-22 11:49:44','127.0.0.1','test','\'type\':null, \'name\': null, \'content\': null, \'enabled\':null','\'type\':A, \'name\': test7.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','add',1),(47,'2019-09-22 15:36:35','127.0.0.1','test','\'type\':null, \'name\': null, \'content\': null, \'enabled\':null','\'type\':A, \'name\': test8.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','add',1),(48,'2019-09-22 15:46:59','127.0.0.1','test','\'type\':A, \'name\': test7.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','null','delete',1),(49,'2019-09-22 15:47:03','127.0.0.1','test','\'type\':A, \'name\': test6.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','null','delete',1),(50,'2019-09-22 15:47:49','127.0.0.1','test','\'type\':A, \'name\': test5.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','null','delete',1),(51,'2019-09-22 15:47:52','127.0.0.1','test','\'type\':A, \'name\': test4.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','null','delete',1),(52,'2019-09-22 15:47:55','127.0.0.1','test','\'type\':A, \'name\': test3.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','null','delete',1),(53,'2019-09-22 15:48:13','127.0.0.1','test','\'type\':A, \'name\': test2.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','null','delete',1),(54,'2019-09-22 15:48:28','127.0.0.1','test','\'type\':null, \'name\': null, \'content\': null, \'enabled\':null','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','add',1),(55,'2019-09-22 16:14:07','127.0.0.1','test','null','\'type\':A, \'name\': test.91yzl.com, \'content\': 8.8.8.9, \'enabled\':1','add',1),(56,'2019-09-22 16:14:31','127.0.0.1','test','\'type\':A, \'name\': test.91yzl.com, \'content\': 8.8.8.9, \'enabled\':True','null','delete',1),(57,'2019-09-22 16:17:41','127.0.0.1','test','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.9, \'enabled\':1','change',1),(58,'2019-09-22 16:17:42','127.0.0.1','test','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.9, \'enabled\':1','change',1),(59,'2019-09-22 16:17:43','127.0.0.1','test','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.9, \'enabled\':1','change',1),(60,'2019-09-22 16:17:58','127.0.0.1','test','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.9, \'enabled\':1','null','delete',1),(61,'2019-09-22 16:19:07','127.0.0.1','test','\'type\':null, \'name\': null, \'content\': null, \'enabled\':null','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','add',1),(62,'2019-09-23 11:46:19','127.0.0.1','arno','\'type\':null, \'name\': null, \'content\': null, \'enabled\':null','\'type\':A, \'name\': test2.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','add',1),(63,'2019-09-23 11:46:27','127.0.0.1','arno','\'type\':A, \'name\': test2.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','null','delete',1),(64,'2019-09-23 11:58:31','127.0.0.1','arno','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','null','delete',1),(65,'2019-09-23 12:00:20','127.0.0.1','arno','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.9, \'enabled\':1','null','delete',1),(66,'2019-09-23 12:01:15','127.0.0.1','arno','\'type\':null, \'name\': null, \'content\': null, \'enabled\':null','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','add',1),(67,'2019-09-23 12:01:26','127.0.0.1','arno','\'type\':null, \'name\': null, \'content\': null, \'enabled\':null','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','add',1),(68,'2019-09-23 12:12:53','127.0.0.1','arno','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.9, \'enabled\':1','null','delete',1),(69,'2019-09-23 12:27:00','127.0.0.1','arno','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':0','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':0','change',1),(70,'2019-09-23 12:27:03','127.0.0.1','arno','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','change',1),(71,'2019-09-23 12:27:05','127.0.0.1','arno','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':0','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':0','change',1),(72,'2019-09-23 12:27:12','127.0.0.1','arno','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','change',1),(73,'2019-09-23 12:27:23','127.0.0.1','arno','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':0','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':0','change',1),(74,'2019-09-23 12:40:29','127.0.0.1','arno','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','change',1),(75,'2019-09-23 12:40:57','127.0.0.1','arno','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':0','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':0','change',1),(76,'2019-09-23 12:41:28','127.0.0.1','arno','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','change',1),(77,'2019-09-23 12:41:37','127.0.0.1','arno','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':0','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':0','change',1),(78,'2019-09-23 12:41:48','127.0.0.1','arno','\'type\':A, \'name\': hengda.aws.l5ali.com, \'content\': 13.124.141.173, \'enabled\':1','\'type\':A, \'name\': hengda.aws.l5ali.com, \'content\': 13.124.141.173, \'enabled\':1','change',1),(79,'2019-09-23 12:42:00','127.0.0.1','arno','\'type\':A, \'name\': ceshi.l5ali.com, \'content\': 8.8.8.8, \'enabled\':0','\'type\':A, \'name\': ceshi.l5ali.com, \'content\': 8.8.8.8, \'enabled\':0','change',1),(80,'2019-09-23 12:42:02','127.0.0.1','arno','\'type\':A, \'name\': ceshi.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','\'type\':A, \'name\': ceshi.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','change',1),(81,'2019-09-23 12:43:43','127.0.0.1','arno','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','change',1),(82,'2019-09-23 12:43:48','127.0.0.1','arno','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':0','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':0','change',1),(83,'2019-09-23 12:43:51','127.0.0.1','arno','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','change',1),(84,'2019-09-23 13:07:32','127.0.0.1','arno','null','\'type\':A, \'name\': test.63513.com, \'content\': 8.8.8.8, \'enabled\':1','add',1),(85,'2019-09-23 13:07:38','127.0.0.1','arno','\'type\':A, \'name\': test.63513.com, \'content\': 8.8.8.8, \'enabled\':True','null','delete',1),(86,'2019-09-23 13:08:19','127.0.0.1','arno','null','\'type\':A, \'name\': test.63513.com, \'content\': 8.8.8.8, \'enabled\':1','add',1),(87,'2019-09-23 13:08:31','127.0.0.1','arno','\'type\':A, \'name\': test.63513.com, \'content\': 8.8.8.8, \'enabled\':True','null','delete',1),(88,'2019-09-23 13:09:35','127.0.0.1','arno','null','\'type\':A, \'name\': test.63513.com, \'content\': 8.8.8.8, \'enabled\':1','add',1),(89,'2019-09-23 13:09:40','127.0.0.1','arno','\'type\':A, \'name\': test.63513.com, \'content\': 8.8.8.8, \'enabled\':True','null','delete',1),(90,'2019-09-23 13:11:32','127.0.0.1','arno','\'type\':null, \'name\': null, \'content\': null, \'enabled\':null','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','add',1),(91,'2019-09-23 13:11:41','127.0.0.1','arno','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':0','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':0','change',1),(92,'2019-09-23 13:16:09','127.0.0.1','arno','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':0','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':0','change',1),(93,'2019-09-23 13:16:14','127.0.0.1','arno','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','change',1),(94,'2019-09-23 13:20:11','127.0.0.1','arno','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':0','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':0','change',1),(95,'2019-09-23 13:20:15','127.0.0.1','arno','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','change',1),(96,'2019-09-24 09:15:52','127.0.0.1','arno','null','\'type\':A, \'name\': test.al012.com, \'content\': 8.8.8.8, \'enabled\':1','add',1),(97,'2019-09-24 09:16:00','127.0.0.1','arno','\'type\':A, \'name\': test.al012.com, \'content\': 8.8.8.8, \'enabled\':True','null','delete',1),(98,'2019-09-24 09:17:08','127.0.0.1','arno','\'type\':CNAME, \'name\': al012.com, \'content\': al012.com.whecloud.com, \'proxied\':False','\'type\':CNAME, \'name\': al012.com, \'content\': speed.l5ali.com, \'proxied\':False','change',1),(99,'2019-09-24 09:17:26','127.0.0.1','arno','\'type\':CNAME, \'name\': al012.com, \'content\': speed.l5ali.com, \'proxied\':False','\'type\':CNAME, \'name\': al012.com, \'content\': al012.com.whecloud.com, \'proxied\':False','change',1),(100,'2019-09-24 10:19:31','127.0.0.1','arno','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','null','delete',1),(101,'2019-09-24 10:20:23','127.0.0.1','arno','\'type\':null, \'name\': null, \'content\': null, \'enabled\':null','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.9, \'enabled\':1','add',1),(102,'2019-09-24 10:20:36','127.0.0.1','arno','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','null','delete',1),(103,'2019-09-24 10:21:14','127.0.0.1','arno','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':0','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':0','change',1),(104,'2019-09-24 10:21:16','127.0.0.1','arno','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','change',1),(105,'2019-09-24 10:21:20','127.0.0.1','arno','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':0','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':0','change',1),(106,'2019-09-24 10:21:27','127.0.0.1','arno','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','change',1),(107,'2019-09-24 10:21:30','127.0.0.1','arno','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.9, \'enabled\':0','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.9, \'enabled\':0','change',1),(108,'2019-09-24 10:21:32','127.0.0.1','arno','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.9, \'enabled\':1','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.9, \'enabled\':1','change',1),(109,'2019-09-24 10:26:17','127.0.0.1','arno','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':0','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':0','change',1),(110,'2019-09-24 10:26:20','127.0.0.1','arno','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','\'type\':A, \'name\': test.l5ali.com, \'content\': 8.8.8.8, \'enabled\':1','change',1),(111,'2019-09-24 14:33:26','127.0.0.1','arno','\'type\':CNAME, \'name\': _26121bb597266bed8a9c51aa8007f29c.gdcp168.com, \'content\': 70a0a27964e148e22c0055542bfd2818.a48cf952d6af402b93ade1b22ebe9d90.t57f30e1e069e4963d37.comodoca.com, \'enabled\':False','null','delete',1),(112,'2019-09-24 14:33:29','127.0.0.1','arno','\'type\':CNAME, \'name\': _6a1e26dd07bbba0d6f0270dc7240da37.gdcp168.com, \'content\': 8c02cc563eb9de330c761cf4e496d419.e7c00144abae3e1404fe72613ba551be.v6177e7c31c3370b3be6.comodoca.com, \'enabled\':False','null','delete',1),(113,'2019-09-24 14:33:43','127.0.0.1','arno','null','\'type\':CNAME, \'name\': _ce39ae8481aaf59896a91df90f5a8009.gdcp168.com, \'content\': cbff5f29f3746b85c105b2d54380ba6d.a9b20f3b9914aad5d5210081bc6a6fbb.qk18b22906032.comodoca.com, \'enabled\':1','add',1),(114,'2019-09-27 09:24:15','127.0.0.1','arno','\'type\':A, \'name\': hk_web1.l5ali.com, \'content\': 59.188.233.204, \'enabled\':1','\'type\':A, \'name\': hk_web1.l5ali.com, \'content\': 59.188.233.198, \'enabled\':1','change',1),(115,'2019-09-27 09:24:51','127.0.0.1','arno','\'type\':A, \'name\': hk_web1.l5ali.com, \'content\': 59.188.233.218, \'enabled\':0','\'type\':A, \'name\': hk_web1.l5ali.com, \'content\': 61.244.190.2, \'enabled\':1','change',1),(116,'2019-09-27 09:25:20','127.0.0.1','arno','\'type\':A, \'name\': hk_web1.l5ali.com, \'content\': 59.188.233.219, \'enabled\':0','\'type\':A, \'name\': hk_web1.l5ali.com, \'content\': 59.188.233.212, \'enabled\':1','change',1),(117,'2019-09-29 11:00:50','127.0.0.1','test','\'type\':TXT, \'name\': 63513.com, \'content\': ca3-3fdf716ba4114c86979d7db2450bb353, \'enabled\':False','null','delete',1),(118,'2019-09-30 20:54:04','127.0.0.1','test','\'type\':A, \'name\': web1.l5ali.com, \'content\': 119.47.83.166, \'enabled\':0','\'type\':A, \'name\': web1.l5ali.com, \'content\': 119.47.83.166, \'enabled\':0','change',1),(119,'2019-09-30 20:54:07','127.0.0.1','test','\'type\':A, \'name\': web1.l5ali.com, \'content\': 119.47.83.166, \'enabled\':1','\'type\':A, \'name\': web1.l5ali.com, \'content\': 119.47.83.166, \'enabled\':1','change',1),(120,'2019-10-03 17:39:06','127.0.0.1','arno','\'type\':A, \'name\': hk_web1.l5ali.com, \'content\': 61.244.190.2, \'enabled\':0','\'type\':A, \'name\': hk_web1.l5ali.com, \'content\': 61.244.190.2, \'enabled\':0','change',1),(121,'2019-10-03 17:39:11','127.0.0.1','arno','\'type\':A, \'name\': hk_web1.l5ali.com, \'content\': 59.188.233.212, \'enabled\':0','\'type\':A, \'name\': hk_web1.l5ali.com, \'content\': 59.188.233.212, \'enabled\':0','change',1),(122,'2019-10-04 13:09:05','127.0.0.1','arno','\'type\':A, \'name\': hk_web1.l5ali.com, \'content\': 61.244.190.2, \'enabled\':0','\'type\':A, \'name\': hk_web1.l5ali.com, \'content\': 61.244.190.2, \'enabled\':0','change',1),(123,'2019-10-04 13:09:07','127.0.0.1','arno','\'type\':A, \'name\': hk_web1.l5ali.com, \'content\': 61.244.190.2, \'enabled\':1','\'type\':A, \'name\': hk_web1.l5ali.com, \'content\': 61.244.190.2, \'enabled\':1','change',1),(124,'2019-10-04 13:09:30','127.0.0.1','arno','\'type\':A, \'name\': hk_web1.l5ali.com, \'content\': 61.244.190.2, \'enabled\':0','\'type\':A, \'name\': hk_web1.l5ali.com, \'content\': 61.244.190.2, \'enabled\':0','change',1),(125,'2019-10-04 13:43:28','127.0.0.1','arno','\'type\':CNAME, \'name\': 567mcp.co, \'content\': speed2.l5caitou.com, \'proxied\':False','\'type\':A, \'name\': 567mcp.co, \'content\': 8.8.8.8, \'proxied\':True','change',1),(126,'2019-10-04 13:43:29','127.0.0.1','arno','\'type\':CNAME, \'name\': m.567mcp.co, \'content\': speed2.l5caitou.com, \'proxied\':False','\'type\':A, \'name\': m.567mcp.co, \'content\': 8.8.8.8, \'proxied\':True','change',1),(127,'2019-10-04 13:43:29','127.0.0.1','arno','\'type\':CNAME, \'name\': www.567mcp.co, \'content\': speed2.l5caitou.com, \'proxied\':False','\'type\':A, \'name\': www.567mcp.co, \'content\': 8.8.8.8, \'proxied\':True','change',1),(128,'2019-10-09 17:37:43','127.0.0.1','test','\'type\':null, \'name\': null, \'content\': null, \'enabled\':null','\'type\':A, \'name\': zypsport.wgle5.com, \'content\': 13.209.114.206, \'enabled\':1','add',1),(129,'2019-10-09 17:42:29','127.0.0.1','test','\'type\':A, \'name\': zyp-grayapi.wgle5.com, \'content\': 103.248.137.15, \'enabled\':1','\'type\':CNAME, \'name\': zyp-grayapi.wgle5.com, \'content\': speed.l5ali.com, \'enabled\':1','change',1),(130,'2019-10-09 17:42:51','127.0.0.1','test','\'type\':null, \'name\': null, \'content\': null, \'enabled\':null','\'type\':CNAME, \'name\': zypsport-grayapi.wgle5.com, \'content\': speed.l5ali.com, \'enabled\':1','add',1),(131,'2019-10-09 17:46:39','127.0.0.1','test','\'type\':CNAME, \'name\': zyp-grayapi.wgle5.com, \'content\': speed.l5ali.com., \'enabled\':1','\'type\':A, \'name\': zyp-grayapi.wgle5.com, \'content\': 103.248.137.15, \'enabled\':1','change',1),(132,'2019-10-09 17:46:40','127.0.0.1','test','\'type\':CNAME, \'name\': zypsport-grayapi.wgle5.com, \'content\': speed.l5ali.com., \'enabled\':1','\'type\':A, \'name\': zypsport-grayapi.wgle5.com, \'content\': 103.248.137.15, \'enabled\':1','change',1),(133,'2019-10-11 17:20:39','127.0.0.1','test','\'type\':A, \'name\': web1.l5xm.com, \'content\': 207.148.42.50, \'enabled\':1','null','delete',1),(134,'2019-10-11 17:20:42','127.0.0.1','test','\'type\':A, \'name\': web1.l5xm.com, \'content\': 207.148.42.48, \'enabled\':1','null','delete',1),(135,'2019-10-11 17:20:45','127.0.0.1','test','\'type\':A, \'name\': web1.l5xm.com, \'content\': 207.148.43.240, \'enabled\':1','null','delete',1),(136,'2019-10-11 17:20:48','127.0.0.1','test','\'type\':A, \'name\': web1.l5xm.com, \'content\': 207.148.43.219, \'enabled\':1','null','delete',1),(137,'2019-10-11 17:20:51','127.0.0.1','test','\'type\':CNAME, \'name\': web1.l5xm.com, \'content\': speed.l5xm.com., \'enabled\':1','\'type\':CNAME, \'name\': web1.l5xm.com, \'content\': speed.l5xm.com., \'enabled\':1','change',1),(138,'2019-10-11 17:20:59','127.0.0.1','test','\'type\':A, \'name\': web2.l5xm.com, \'content\': 182.16.106.226, \'enabled\':1','null','delete',1),(139,'2019-10-11 17:21:03','127.0.0.1','test','\'type\':A, \'name\': web2.l5xm.com, \'content\': 207.148.43.220, \'enabled\':1','null','delete',1),(140,'2019-10-11 17:21:06','127.0.0.1','test','\'type\':A, \'name\': web2.l5xm.com, \'content\': 47.75.86.181, \'enabled\':1','null','delete',1),(141,'2019-10-11 17:21:08','127.0.0.1','test','\'type\':CNAME, \'name\': web2.l5xm.com, \'content\': speed.l5xm.com., \'enabled\':1','\'type\':CNAME, \'name\': web2.l5xm.com, \'content\': speed.l5xm.com., \'enabled\':1','change',1),(142,'2019-10-11 17:25:33','127.0.0.1','test','\'type\':CNAME, \'name\': www.cp9393.co, \'content\': www.cp9393.co.whecloud.com, \'proxied\':False','\'type\':A, \'name\': www.cp9393.co, \'content\': 14.0.43.166, \'proxied\':False','change',1),(143,'2019-10-11 17:25:34','127.0.0.1','test','\'type\':CNAME, \'name\': www.8868hgcp.com, \'content\': www.8868hgcp.com.whecloud.com, \'proxied\':False','\'type\':A, \'name\': www.8868hgcp.com, \'content\': 14.0.43.166, \'proxied\':False','change',1),(144,'2019-10-11 17:25:34','127.0.0.1','test','\'type\':CNAME, \'name\': www.mcp3535.com, \'content\': www.mcp3535.com.whecloud.com, \'proxied\':False','\'type\':A, \'name\': www.mcp3535.com, \'content\': 14.0.43.166, \'proxied\':False','change',1),(145,'2019-10-11 17:25:35','127.0.0.1','test','\'type\':CNAME, \'name\': www.338caip.com, \'content\': www.338caip.com.whecloud.com, \'proxied\':False','\'type\':A, \'name\': www.338caip.com, \'content\': 14.0.43.166, \'proxied\':False','change',1),(146,'2019-10-11 17:25:35','127.0.0.1','test','\'type\':CNAME, \'name\': www.ldccp999.com, \'content\': www.ldccp999.com.whecloud.com, \'proxied\':False','\'type\':A, \'name\': www.ldccp999.com, \'content\': 14.0.43.166, \'proxied\':False','change',1),(147,'2019-10-11 17:31:56','127.0.0.1','test','\'type\':A, \'name\': www.8868hgcp.com, \'content\': 14.0.43.166, \'proxied\':False','\'type\':CNAME, \'name\': www.8868hgcp.com, \'content\': www.8868hgcp.com.whecloud.com, \'proxied\':False','change',1),(148,'2020-03-23 13:42:35','127.0.0.1','arno','\'type\':A, \'name\': zyp-gray.wgle5.com, \'content\': 182.16.84.75, \'enabled\':1','\'type\':A, \'name\': zyp-gray.wgle5.com, \'content\': 182.16.84.75, \'enabled\':1','change',1),(149,'2020-03-23 13:43:19','127.0.0.1','arno','\'type\':A, \'name\': zyp-online.wgle5.com, \'content\': 182.16.84.75, \'enabled\':1','\'type\':A, \'name\': zyp-online.wgle5.com, \'content\': 182.16.84.76, \'enabled\':1','change',1);
/*!40000 ALTER TABLE `domainns_alterhistorytb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domainns_cdnaccounttb`
--

DROP TABLE IF EXISTS `domainns_cdnaccounttb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domainns_cdnaccounttb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` int(11) NOT NULL,
  `account` varchar(64) NOT NULL,
  `secretid` varchar(128) NOT NULL,
  `secretkey` varchar(128) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `domainns_cdnaccounttb_name_account_31e45aac_uniq` (`name`,`account`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domainns_cdnaccounttb`
--

LOCK TABLES `domainns_cdnaccounttb` WRITE;
/*!40000 ALTER TABLE `domainns_cdnaccounttb` DISABLE KEYS */;
INSERT INTO `domainns_cdnaccounttb` VALUES (7,2,'ph_fenghuang','AKIA2RITXKQ5LT5TRB44','k25T11Md8QP4bCFgdKhwVcE+kvYb1vlbPmpfgixj',1);
/*!40000 ALTER TABLE `domainns_cdnaccounttb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domainns_cfaccounttb`
--

DROP TABLE IF EXISTS `domainns_cfaccounttb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domainns_cfaccounttb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `email` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domainns_cfaccounttb`
--

LOCK TABLES `domainns_cfaccounttb` WRITE;
/*!40000 ALTER TABLE `domainns_cfaccounttb` DISABLE KEYS */;
INSERT INTO `domainns_cfaccounttb` VALUES (1,'凤凰01','lebo.technical001@gmail.com','be7a47dea417a6e2ecefacedce5908b292f5a',1),(2,'熊猫|乐盈','lycplycp1212@outlook.com','7174c702d57d7ff2572cce0931758855dbb6c',1),(3,'阿里','alcpalcp1212@outlook.com','bc4a4aa5751ce4e49f14cc1b5bbc9e34ff76c',1),(4,'光大','gdcpgdcp1212@outlook.com','78ae89a46c08fc9ae8833f0bc542c525d7dfb',1),(5,'三德|富豪|668','sdcpsdcp1212@outlook.com','912bf351941d93e14e29bf79a50eef1d50cc5',1),(6,'勇士02','xiaoxuanzi120@gmail.com','c105c007dca8e66533b68875a3311b8dd56bc',1),(7,'勇士01','xiaoxuanzi120001@gmail.com','af7231e4263c5a73c4038d21d084e51485573',1),(9,'凤凰02','L5yirencp@gmail.com','5321b5c5022b60107a9e5ad295539c58ee551',1),(10,'恒达','hdcphdcp1212@outlook.com','51d1510b91ea02e75729c18c9c5f3cb68f124',1),(11,'瑞银','le1.tech001@gmail.com','29697a07614e03226eb4d32e08b0c2e337cf2',1),(17,'熊猫棋牌','marco88990011@gmail.com','0ec04ccb1bb9f791bf87414029e5a4ec62500',1);
/*!40000 ALTER TABLE `domainns_cfaccounttb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domainns_dnspodaccounttb`
--

DROP TABLE IF EXISTS `domainns_dnspodaccounttb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domainns_dnspodaccounttb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `email` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domainns_dnspodaccounttb`
--

LOCK TABLES `domainns_dnspodaccounttb` WRITE;
/*!40000 ALTER TABLE `domainns_dnspodaccounttb` DISABLE KEYS */;
INSERT INTO `domainns_dnspodaccounttb` VALUES (1,'凤凰|勇士','lebo.technical001@gmail.com','61345,d9fe9578670af59743cd173219288182',1),(2,'瑞银','leyou.tss@gmail.com','61348,fed90b9c4b8cc1b56bca0e34f0534929',1);
/*!40000 ALTER TABLE `domainns_dnspodaccounttb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domainns_doaminprojecttb`
--

DROP TABLE IF EXISTS `domainns_doaminprojecttb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domainns_doaminprojecttb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project` varchar(32) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `project` (`project`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domainns_doaminprojecttb`
--

LOCK TABLES `domainns_doaminprojecttb` WRITE;
/*!40000 ALTER TABLE `domainns_doaminprojecttb` DISABLE KEYS */;
INSERT INTO `domainns_doaminprojecttb` VALUES (1,'APP下载专用域名',1),(6,'亚马逊彩票',1),(7,'凤凰彩票后台',1);
/*!40000 ALTER TABLE `domainns_doaminprojecttb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domainns_doaminprojecttb_domain`
--

DROP TABLE IF EXISTS `domainns_doaminprojecttb_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domainns_doaminprojecttb_domain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doaminprojecttb_id` int(11) NOT NULL,
  `domaintb_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `domainns_doaminprojecttb_doaminprojecttb_id_domai_20cb9c67_uniq` (`doaminprojecttb_id`,`domaintb_id`),
  KEY `domainns_doaminproje_domaintb_id_3f9be93b_fk_domainns_` (`domaintb_id`),
  CONSTRAINT `domainns_doaminproje_doaminprojecttb_id_1cef5530_fk_domainns_` FOREIGN KEY (`doaminprojecttb_id`) REFERENCES `domainns_doaminprojecttb` (`id`),
  CONSTRAINT `domainns_doaminproje_domaintb_id_3f9be93b_fk_domainns_` FOREIGN KEY (`domaintb_id`) REFERENCES `domainns_domaintb` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domainns_doaminprojecttb_domain`
--

LOCK TABLES `domainns_doaminprojecttb_domain` WRITE;
/*!40000 ALTER TABLE `domainns_doaminprojecttb_domain` DISABLE KEYS */;
INSERT INTO `domainns_doaminprojecttb_domain` VALUES (72,1,1823),(76,1,1829),(82,6,1404),(81,6,1722),(80,6,1811),(83,6,1821),(77,6,1831),(78,6,1833),(104,6,1966),(85,7,1836),(86,7,1837),(87,7,1838),(88,7,1839),(90,7,1841),(91,7,1842),(93,7,1844),(94,7,1845),(95,7,1846),(96,7,1847),(97,7,1848),(98,7,1849),(99,7,1850),(100,7,1851),(101,7,1852),(102,7,1853),(121,7,2019);
/*!40000 ALTER TABLE `domainns_doaminprojecttb_domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domainns_domaindetectgrouptb`
--

DROP TABLE IF EXISTS `domainns_domaindetectgrouptb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domainns_domaindetectgrouptb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group` varchar(128) NOT NULL,
  `client` varchar(12) NOT NULL,
  `method` varchar(12) NOT NULL,
  `ssl` int(11) NOT NULL,
  `retry` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group` (`group`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domainns_domaindetectgrouptb`
--

LOCK TABLES `domainns_domaindetectgrouptb` WRITE;
/*!40000 ALTER TABLE `domainns_domaindetectgrouptb` DISABLE KEYS */;
INSERT INTO `domainns_domaindetectgrouptb` VALUES (1,'PC-主站','pc','head',1,3),(2,'WAP-主站','wap','head',1,3),(3,'PC-主站-nossl','pc','head',0,3),(4,'wap-主站-nossl','wap','head',0,3),(5,'PC-主站-GET','pc','get',1,3),(6,'PC-主站-POST','pc','post',1,3),(7,'WAP-主站-POST','wap','post',1,3);
/*!40000 ALTER TABLE `domainns_domaindetectgrouptb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domainns_domaintb`
--

DROP TABLE IF EXISTS `domainns_domaintb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domainns_domaintb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `product` int(11) NOT NULL,
  `customer` int(11) NOT NULL,
  `content` varchar(128) NOT NULL,
  `status` int(11) NOT NULL,
  `cf_content` varchar(128) NOT NULL,
  `ws_content` varchar(128) NOT NULL,
  `ng_content` varchar(128) NOT NULL,
  `auto_m_dns` int(11) NOT NULL,
  `mod_date` datetime(6) NOT NULL,
  `cf_id` int(11) DEFAULT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `domainns_domains_cf_id_5d7934be_fk_domainns_cfaccounttb_id` (`cf_id`),
  KEY `domainns_domains_group_id_c62815f6_fk_domainns_` (`group_id`),
  CONSTRAINT `domainns_domains_cf_id_5d7934be_fk_domainns_cfaccounttb_id` FOREIGN KEY (`cf_id`) REFERENCES `domainns_cfaccounttb` (`id`),
  CONSTRAINT `domainns_domains_group_id_c62815f6_fk_domainns_` FOREIGN KEY (`group_id`) REFERENCES `domainns_domaindetectgrouptb` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2034 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domainns_domaintb`
--

LOCK TABLES `domainns_domaintb` WRITE;
/*!40000 ALTER TABLE `domainns_domaintb` DISABLE KEYS */;
INSERT INTO `domainns_domaintb` VALUES (1,'https://alcp00.com',12,1,'域名被墙，关闭监控',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(10,'https://alcp33.com',12,1,'被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(11,'https://www.alcp33.com',12,1,'被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(12,'https://wap.alcp33.com',12,1,'被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,4),(13,'https://www.alcp44.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(14,'https://alcp44.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(15,'https://wap.alcp44.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,4),(16,'https://vip.alcp33.com',12,1,'被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(17,'https://m.alcp33.com',12,1,'被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,4),(18,'https://vip.alcp44.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(19,'https://m.alcp44.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,4),(20,'https://vip.alcp00.com',12,1,'域名被墙，关闭监控',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(21,'https://wap.alcp00.com',12,1,'域名被墙，关闭监控',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(22,'https://m.alcp00.com',12,1,'域名被墙，关闭监控',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(23,'https://www.alcp00.com',12,1,'域名被墙，关闭监控',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(24,'https://alcp1.com',12,1,'客户要求更改解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(25,'https://www.alcp1.com',12,1,'客户要求更改解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(26,'https://vip.alcp1.com',12,1,'客户要求更改解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(27,'https://m.alcp1.com',12,1,'客户要求更改解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(28,'https://wap.alcp1.com',12,1,'客户要求更改解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(29,'https://alcp2.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(30,'https://www.alcp2.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(31,'https://vip.alcp2.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(32,'https://m.alcp2.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(33,'https://wap.alcp2.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(34,'https://alcp08.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(35,'https://www.alcp08.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(36,'https://vip.alcp08.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(38,'https://wap.alcp08.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(39,'https://t0325.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(40,'https://www.t0325.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(41,'https://vip.t0325.com',12,1,'解析掉了',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(42,'https://wap.t0325.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(43,'https://m.t0325.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(44,'https://jmyl555.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(45,'https://www.jmyl555.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(46,'https://vip.jmyl555.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(47,'https://m.jmyl555.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(48,'https://wap.jmyl555.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(49,'https://alcp777.com',12,1,'DNS被劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(50,'https://www.alcp777.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(51,'https://vip.alcp777.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(52,'https://wap.alcp777.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(53,'https://m.alcp777.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(54,'https://jmcp000.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(55,'https://www.jmcp000.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(56,'https://vip.jmcp000.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(57,'https://wap.jmcp000.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(58,'https://m.jmcp000.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(59,'https://alcp48.com ',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(60,'https://www.alcp48.com ',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(61,'https://vip.alcp48.com ',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(62,'https://wap.alcp48.com ',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(63,'https://m.alcp48.com ',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(64,'https://alcp58.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(65,'https://www.alcp58.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(66,'https://vip.alcp58.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(67,'https://wap.alcp58.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(68,'https://m.alcp58.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(69,'https://apiweb.alcpapi.com/user/getPicturesAndAnnouncements',12,1,'弃用',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(70,'http://apiweb.alcpapi.com/user/getPicturesAndAnnouncements',12,1,'弃用',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(71,'https://apiad.alcpapi.com/user/getPicturesAndAnnouncements',12,1,'弃用',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(72,'http://apiad.alcpapi.com/user/getPicturesAndAnnouncements',12,1,'弃用',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(73,'https://apiios.alcpapi.com/user/getPicturesAndAnnouncements',12,1,'弃用',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(74,'http://apiios.alcpapi.com/user/getPicturesAndAnnouncements',12,1,'弃用',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,4),(77,'https://gdcp999.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(78,'https://www.gdcp999.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(79,'https://vip.gdcp999.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(80,'https://wap.gdcp999.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(81,'https://m.gdcp999.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(82,'https://gdcp77.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(83,'https://www.gdcp77.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(84,'https://vip.gdcp77.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(85,'https://wap.gdcp77.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(86,'https://m.gdcp77.com',12,2,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(87,'https://gdcp000.com',12,2,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(88,'https://www.gdcp000.com',12,2,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(89,'https://vip.gdcp000.com',12,2,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(90,'https://wap.gdcp000.com',12,2,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(91,'https://m.gdcp000.com',12,2,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(92,'https://gdcp55.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(93,'https://www.gdcp55.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(94,'https://vip.gdcp55.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(95,'https://wap.gdcp55.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(96,'https://m.gdcp55.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(97,'https://gdcp66.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(98,'https://www.gdcp66.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(99,'https://vip.gdcp66.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(100,'https://wap.gdcp66.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(101,'https://m.gdcp66.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(102,'https://gdcp158.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(103,'https://www.gdcp158.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(104,'https://vip.gdcp158.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(105,'https://wap.gdcp158.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(106,'https://m.gdcp158.com',12,2,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(107,'https://apiweb.gdcpapi.com/user/getPicturesAndAnnouncements',12,2,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(108,'http://apiweb.gdcpapi.com/user/getPicturesAndAnnouncements',12,2,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(109,'https://apiad.gdcpapi.com/user/getPicturesAndAnnouncements',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(110,'http://apiad.gdcpapi.com/user/getPicturesAndAnnouncements',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(111,'https://apiios.gdcpapi.com/user/getPicturesAndAnnouncements',12,2,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(112,'http://apiios.gdcpapi.com/user/getPicturesAndAnnouncements',12,2,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,4),(113,'http://2805s.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(114,'http://www.2805s.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(115,'http://m.2805s.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,4),(116,'http://vip.2805s.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(117,'https://m.670038.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(118,'https://2805z.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(119,'https://www.2805z.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(120,'http://m.2805z.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,4),(121,'http://2805.com',12,6,'客户解析错误，已提醒客户，暂时关闭监控报警',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(122,'http://www.2805.com',12,6,'客户解析错误，已提醒客户，暂时关闭监控报警',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(123,'https://668cp.me',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(124,'https://www.668cp.me',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(125,'https://vip.668cp.me',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(126,'https://m.668cp.me',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(131,'https://m.668cp.cn',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(132,'http://cpn8.com',12,6,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(133,'http://www.cpn8.com',12,6,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(134,'http://vip.cpn8.com',12,6,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(135,'http://m.cpn8.com',12,6,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,4),(136,'https://2805u.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(137,'https://www.2805u.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(138,'http://m.2805u.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,4),(139,'http://668cp00.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(140,'http://www.668cp00.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(141,'http://vip.668cp00.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(142,'http://m.668cp00.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,4),(143,'http://apiios.fhcp168.net/user/getPicturesAndAnnouncements',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(144,'http://asd.208608.com',12,6,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(145,'https://ct860.com',12,4,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(146,'https://www.ct860.com',12,4,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(147,'https://vip.ct860.com',12,4,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(148,'https://m.ct860.com',12,4,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,4),(149,'https://ct186.com',12,4,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(150,'https://www.ct186.com',12,4,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(151,'https://vip.ct186.com',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(152,'https://m.ct186.com',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,4),(153,'https://ct581.com',12,4,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(154,'https://www.ct581.com',12,4,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(155,'https://m.ct581.com',12,4,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,4),(156,'https://ct6801.com',12,4,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(157,'https://www.ct6801.com',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(158,'https://vip.ct6801.com',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(159,'https://m.ct6801.com',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,4),(160,'https://ct66888.com',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(161,'https://www.ct66888.com',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(162,'https://vip.ct66888.com',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(163,'https://m.ct66888.com',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,4),(164,'https://ct991.com',12,4,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(165,'https://www.ct991.com',12,4,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(166,'https://vip.ct991.com',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(167,'https://m.ct991.com',12,4,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,4),(168,'https://caitou08.com',12,4,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(169,'https://www.caitou08.com',12,4,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(170,'https://m.caitou08.com',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,4),(171,'https://caitou06.com',12,4,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(172,'https://www.caitou06.com',12,4,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(173,'https://m.caitou06.com',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(174,'http://caitou111.com',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(175,'http://www.caitou111.com',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(176,'http://vip.caitou111.com',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(177,'http://m.caitou111.com',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,4),(178,'https://caitou999.com',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(179,'https://www.caitou999.com',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(180,'https://m.caitou999.com',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,4),(181,'https://le672.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(182,'https://www.le672.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(183,'https://vip.le672.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(184,'https://wap.le672.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(185,'https://le075.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(186,'https://www.le075.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(187,'https://vip.le075.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(188,'https://wap.le075.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(189,'https://le083.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(190,'https://www.le083.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(191,'https://vip.le083.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(192,'https://wap.le083.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(193,'https://le968.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(194,'https://www.le968.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(195,'https://vip.le968.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(196,'https://wap.le968.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(197,'https://www.le671.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(198,'https://le671.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(199,'https://vip.le671.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(200,'https://wap.le671.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(201,'https://www.le670.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(202,'https://le670.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(203,'http://vip.le670.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(204,'http://wap.le670.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(205,'https://le969.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(206,'https://www.le969.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(207,'https://vip.le969.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(208,'https://wap.le969.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(209,'https://le011.com',12,3,'国内被墙，做了跳转',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(210,'https://www.le011.com',12,3,'国内被墙，做了跳转',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(211,'https://vip.le011.com',12,3,'国内被墙，做了跳转',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(212,'https://wap.le011.com',12,3,'国内被墙，做了跳转',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(213,'https://le599.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(214,'https://www.le599.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(215,'https://vip.le599.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(216,'https://wap.le599.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(217,'https://le095.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(218,'https://www.le095.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(219,'https://vip.le095.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(220,'https://wap.le095.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(221,'http://androidapi.le079.com/user/getPicturesAndAnnouncements',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(222,'https://androidapi.le079.com/user/getPicturesAndAnnouncements',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(223,'https://apiios.fhcp168.net/user/getPicturesAndAnnouncements',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(224,'https://uccp22.com',12,7,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(225,'https://www.uccp22.com',12,7,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(226,'http://vip.uccp22.com',12,7,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(227,'http://m.uccp22.com',12,7,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,4),(228,'https://uc22.cc',12,7,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(229,'https://www.uc22.cc',12,7,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(230,'http://vip.uc22.cc',12,7,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(231,'http://m.uc22.cc',12,7,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,4),(232,'https://uc22.org',12,7,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(233,'https://www.uc22.org',12,7,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(234,'http://vip.uc22.org',12,7,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(235,'http://m.uc22.org',12,7,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(236,'https://uc22222.com',12,7,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(237,'https://www.uc22222.com',12,7,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(238,'http://vip.uc22222.com',12,7,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(239,'https://m.uc222.com',12,7,'    ',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(240,'https://vip.uc222.com',12,7,'    ',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(241,'https://www.uc222.com',12,7,'    ',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(242,'https://uc222.com',12,7,'    ',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(243,'https://m.uc22.com',12,7,'国内被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(244,'https://vip.uc22.com',12,7,'DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(245,'https://www.uc22.com',12,7,'域名被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(246,'https://uc22.com',12,7,'域名被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(262,'https://apps.le079.com/user/getPicturesAndAnnouncements',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(263,'http://apps.le079.com/user/getPicturesAndAnnouncements',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(270,'https://www.alcp000.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(271,'https://www.alcp86.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(272,'https://www.t0322.com',12,1,' ',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(273,'https://www.jmyl888.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(274,'https://www.jmcp999.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(275,'https://www.jmcp888.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(276,'https://www.jmcp777.com',12,1,'域名被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(277,'https://www.jmcp333.com',12,1,'域名被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(278,'https://www.alcp088.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(279,'https://www.alcp688.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(280,'https://www.alcp188.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(281,'https://www.al108.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(282,'https://www.al308.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(283,'https://www.alcp222.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(284,'https://www.t0320.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(285,'https://m.jmcp88.com',12,1,'2018/6/14 主域名DNS劫持中',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(286,'https://wap.alcp000.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(287,'https://wap.alcp86.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(288,'https://wap.t0322.com',12,1,' ',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(289,'https://www.sc9kofq3vibt4y8lu2.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(290,'https://m.alcp88.com',12,1,'被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(291,'https://m.alcp99.com',12,1,'被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(292,'https://wap.jmcp333.com',12,1,'域名被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(293,'https://wap.jmcp777.com',12,1,'域名被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(294,'https://wap.jmcp888.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(295,'https://wap.jmcp999.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(296,'https://wap.jmyl888.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(297,'https://wap.alcp088.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(298,'https://apiios.alcp168.net/user/getPicturesAndAnnouncements',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(299,'https://apiweb.alcp168.net',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(300,'https://androidapi.alcp66.com',12,1,'被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(301,'https://wap.al108.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(302,'https://wap.alcp222.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(303,'https://androidapi.alcp188.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(304,'https://iosapi.alcp188.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(305,'https://api.alcp188.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(306,'https://m.t0320.com',12,1,'解析掉了',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(309,'https://pay.alcp33.com',12,1,'被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(310,'https://ag.alcp777.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(311,'https://ag.alcp33.com',12,1,'被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(312,'https://ag.jmcp88.com',12,1,'2018/6/14 主域名DNS劫持中',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(314,'http://ag.alcp000.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(315,'https://ag.alcp86.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(316,'https://ag.t0322.com',12,1,' ',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(317,'https://ag.jmyl888.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(318,'https://ag.jmyl555.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(319,'https://ag.jmcp999.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(320,'https://ag.jmcp888.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(321,'https://ag.jmcp777.com',12,1,'域名被劫持，修改了解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(322,'https://ag.jmcp333.com',12,1,'域名被劫持，修改了解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(323,'https://ag.alcp99.com',12,1,'被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(324,'https://ag.alcp88.com',12,1,'被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(326,'https://ag.alcp48.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(327,'https://ag.alcp58.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(328,'https://ag.alcp088.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(329,'https://ag.alcp688.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(330,'https://ag.alcp08.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(331,'https://ag.t0325.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(332,'https://ag.alcp44.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(333,'https://ag.alcp1.com',12,1,'客户要求更改解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(334,'https://ag.alcp2.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(335,'https://ag.t0320.com',12,1,'解析掉了',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(336,'https://www.ctcp8.com',12,4,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(337,'https://ctcp8.com',12,4,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(338,'https://www.caitou111.com',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(339,'http://caitou07.com',12,4,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(340,'http://www.caitou07.com',12,4,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(341,'https://101606.com',12,4,'取消https',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(342,'https://www.101606.com',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(343,'https://063630.com',12,4,'取消https',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(344,'https://www.063630.com',12,4,'取消https',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(345,'https://065650.com',12,4,'取消https',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(346,'https://www.065650.com',12,4,'取消https',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(347,'https://www.098191.com',12,4,'DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(348,'https://181005.com',12,4,'取消https',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(349,'https://www.181005.com',12,4,'取消https',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(350,'https://m.ct680.com',12,4,'域名被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(351,'https://api.caitou999.com',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(352,'https://iosapi.caitou999.com',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(353,'https://androidapi.caitou999.com',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(354,'https://apiweb.ctphoneapi.com',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(355,'https://apiios.ctphoneapi.com',12,4,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(356,'https://apiad.ctphoneapi.com',12,4,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(357,'https://m.ctcp8.com',12,4,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(358,'https://m.caitou07.com',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(359,'https://m.caitou111.com',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(360,'https://m.101606.com',12,4,'取消https',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(361,'https://m.063630.com',12,4,'取消https',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(362,'https://m.065650.com',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(363,'https://m.181005.com',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(364,'https://ct680.com',12,4,'域名被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(365,'https://www.ct680.com',12,4,'域名被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(366,'https://vip.ctcp8.com',12,4,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(367,'https://vip.caitou08.com',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(368,'https://vip.ct581.com',12,4,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(369,'https://vip.caitou06.com',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(370,'https://vip.caitou999.com',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(371,'https://vip.caitou111.com',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(372,'https://vip.caitou07.com',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(373,'https://vip.101606.com',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(374,'https://vip.063630.com',12,4,'取消https',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(375,'https://vip.065650.com',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(376,'https://vip.181005.com',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(377,'https://www.alcp99.com',12,1,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(378,'https://www.alcp88.com',12,1,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(379,'https://www.alcp77.com',12,1,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(380,'https://vip.alcp77.com',12,1,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(381,'https://www.alcp66.com',12,1,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(382,'https://wap.alcp66.com',12,1,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(383,'https://m.alcp77.com',12,1,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(384,'https://vip.jmcp88.com',12,1,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(385,'http://www.yoonfw.com',12,1,'洗LOG',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(387,'https://098191.com',12,4,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(388,'https://m.098191.com',12,4,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(389,'https://le690.com',12,3,'国内被墙，做了跳转',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(390,'https://www.le690.com',12,3,'国内被墙，做了跳转',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(391,'https://le674.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(392,'https://www.le674.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(393,'https://le033.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(394,'https://www.le033.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(395,'https://le044.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(396,'https://www.le044.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(397,'https://le077.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(398,'https://www.le077.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(399,'https://le098.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(400,'https://www.le098.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(401,'https://www.le0111.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(402,'https://le0111.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(403,'https://le0222.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(404,'https://www.le0222.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(405,'https://www.le0333.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(406,'https://le0333.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(407,'https://le499.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(408,'https://www.le499.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(409,'https://le0555.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(410,'https://www.le0555.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(411,'https://le660.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(412,'https://www.le660.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(413,'https://le661.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(414,'https://www.le661.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(415,'https://le662.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(416,'https://www.le662.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(417,'https://le664.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(418,'https://www.le664.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(419,'https://le665.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(420,'https://www.le665.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(421,'https://le0666.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(422,'https://www.le0666.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(423,'https://le667.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(424,'https://www.le667.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(425,'https://le673.com',12,3,'国内被墙，做了跳转',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(426,'https://www.le673.com',12,3,'国内被墙，做了跳转',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(427,'https://le679.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(428,'https://www.le679.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(429,'https://le681.com',12,3,'解析掉了，客户还在确认',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(430,'https://www.le681.com',12,3,'解析掉了，客户还在确认',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(431,'https://le0777.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(432,'https://www.le0777.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(433,'https://le798.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(434,'https://www.le798.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(435,'https://le809.com',12,3,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(436,'https://www.le809.com',12,3,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(437,'https://le839.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(438,'https://www.le839.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(439,'https://le849.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(440,'https://www.le849.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(441,'https://le859.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(442,'https://www.le859.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(443,'https://le889.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(444,'https://www.le889.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(445,'https://le898.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(446,'https://www.le898.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(449,'https://le022.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(450,'https://www.le022.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(451,'https://le0888.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(452,'https://www.le0888.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(453,'https://le099.com',12,3,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(454,'https://www.le099.com',12,3,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(455,'https://le829.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(456,'https://www.le829.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(457,'https://le0444.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(458,'https://www.le0444.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(459,'https://le081.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(460,'https://www.le081.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(461,'https://le082.com',12,3,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(462,'https://www.le082.com',12,3,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(463,'https://le084.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(464,'https://www.le084.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(465,'https://le085.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(466,'https://www.le085.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(467,'https://le086.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(468,'https://www.le086.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(469,'https://le089.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(470,'https://www.le089.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(471,'https://le090.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(472,'https://www.le090.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(473,'https://le091.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(474,'https://www.le091.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(475,'https://le093.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(476,'https://www.le093.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(477,'https://le094.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(478,'https://www.le094.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(479,'https://le096.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(480,'https://www.le096.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(481,'https://le097.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(482,'https://www.le097.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(483,'https://le071.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(484,'https://www.le071.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(485,'https://le074.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(486,'https://www.le074.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(487,'https://le076.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(488,'https://www.le076.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(489,'https://le079.com',12,3,'业主要求关闭www@解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(490,'https://www.le079.com',12,3,'业主要求关闭www@解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(491,'https://le682.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(492,'https://www.le682.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(493,'https://le683.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(494,'https://www.le683.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(495,'https://le684.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(496,'https://www.le684.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(497,'https://le685.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(498,'https://www.le685.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(499,'https://le687.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(500,'https://www.le687.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(501,'https://le691.com',12,3,'域名被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(502,'https://www.le691.com',12,3,'域名被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(503,'https://le692.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(504,'https://www.le692.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(505,'https://le693.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(506,'https://www.le693.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(507,'https://le694.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(508,'https://www.le694.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(509,'https://le695.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(510,'https://www.le695.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(511,'https://le697.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(512,'https://www.le697.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(513,'https://le070.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(514,'https://www.le070.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(515,'https://le701.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(516,'https://www.le701.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(517,'https://le709.com',12,3,'此域名走网宿线路，HEAD和GET请求经常性400，故使用POST请求检测',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,6),(518,'https://www.le709.com',12,3,'此域名走网宿线路，HEAD和GET请求经常性400，故使用POST请求检测',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,6),(519,'https://le719.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(520,'https://www.le719.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(521,'https://le729.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(522,'https://www.le729.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(523,'https://le740.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(524,'https://www.le740.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(525,'https://le750.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(526,'https://www.le750.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(527,'https://le756.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(528,'https://www.le756.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(529,'https://le774.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(530,'https://www.le774.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(531,'https://le793.com',12,3,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(532,'https://www.le793.com',12,3,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(533,'https://le824.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(534,'https://www.le824.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(535,'https://le860.com',12,3,'解析掉了',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(536,'https://www.le860.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(537,'https://le874.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(538,'https://www.le874.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(539,'https://le904.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(540,'https://www.le904.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(541,'https://le913.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(542,'https://www.le913.com',12,3,'解析掉了',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(543,'https://le926.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(544,'https://www.le926.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(545,'https://le935.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(546,'https://www.le935.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(547,'https://le952.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(548,'https://www.le952.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(549,'https://le985.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(550,'https://www.le985.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(551,'https://le838.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(552,'https://www.le838.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(553,'https://595988.com',12,3,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(554,'https://www.595988.com',12,3,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(555,'https://le060.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(556,'https://www.le060.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(557,'https://le061.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(558,'https://www.le061.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(559,'https://le062.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(560,'https://www.le062.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(561,'https://le064.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(562,'https://www.le064.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(563,'https://le065.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(564,'https://www.le065.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(565,'https://le067.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(566,'https://www.le067.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(567,'https://le087.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(568,'https://www.le087.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(569,'https://le658.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(570,'https://www.le658.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(571,'https://le663.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(572,'https://www.le663.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(573,'https://le668.com',12,3,'此域名走网宿线路，HEAD和GET请求经常性400，故使用POST请求检测',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,7),(574,'https://www.le668.com',12,3,'此域名走网宿线路，HEAD和GET请求经常性400，故使用POST请求检测',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,7),(575,'https://le676.com',12,3,' ',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(576,'https://www.le676.com',12,3,' ',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(577,'https://le0999.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(578,'https://www.le0999.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(579,'https://wap.le690.com',12,3,'国内被墙，做了跳转',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(580,'https://wap.le674.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(581,'https://wap.le033.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(582,'https://wap.le044.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(583,'https://wap.le077.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(584,'https://wap.le098.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(585,'https://wap.le0111.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(586,'https://wap.le022.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(587,'https://wap.le0222.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(588,'https://wap.le0333.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(589,'https://wap.le499.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(590,'https://wap.le0555.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(591,'https://wap.le660.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(592,'https://wap.le661.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(593,'https://wap.le662.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(594,'https://wap.le664.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(595,'https://wap.le665.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(596,'https://wap.le0666.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(597,'https://wap.le691.com',12,3,'域名被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(598,'https://wap.le692.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(599,'https://wap.le693.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(600,'https://wap.le694.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(601,'https://wap.le695.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(602,'https://wap.le667.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(603,'https://wap.le673.com',12,3,'国内被墙，做了跳转',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(604,'https://wap.le679.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(605,'https://wap.le681.com',12,3,'解析掉了，客户还在确认',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(606,'https://wap.le0777.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(607,'https://wap.le798.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(608,'https://wap.le809.com',12,3,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(609,'https://wap.le839.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(610,'https://wap.le849.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(611,'https://wap.le859.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(612,'https://wap.le889.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(613,'https://wap.le898.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(615,'https://wap.le063.com',12,3,'DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(616,'https://wap.le064.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(617,'https://wap.le065.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(618,'https://wap.le067.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(619,'https://wap.le087.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(620,'https://wap.le060.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(621,'https://wap.le061.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(622,'https://wap.le062.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(623,'https://wap.le0999.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(624,'https://wap.le0444.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(625,'https://wap.le829.com',12,3,' ',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(626,'https://wap.le099.com',12,3,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(627,'https://wap.le0888.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(628,'https://wap.le663.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(629,'https://wap.le676.com',12,3,' ',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(630,'https://wap.le668.com',12,3,'此域名走网宿线路，HEAD和GET请求经常性400，故使用POST请求检测',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,7),(631,'https://wap.le658.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(632,'https://wap.le081.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(633,'https://wap.le082.com',12,3,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(634,'https://wap.le084.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(635,'https://wap.le085.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(636,'https://wap.le086.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(637,'https://wap.le089.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(638,'https://wap.le090.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(639,'https://wap.le091.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(640,'https://wap.le093.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(641,'https://wap.le094.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(642,'https://wap.le096.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(643,'https://wap.le097.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(644,'https://wap.le071.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(645,'https://wap.le074.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(646,'https://wap.le076.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(647,'https://wap.le079.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(648,'https://wap.le682.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(649,'https://wap.le683.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(650,'https://wap.le684.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(651,'https://wap.le685.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(652,'https://wap.le687.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(653,'https://wap.le697.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(654,'https://wap.le070.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(655,'https://wap.le701.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(656,'https://wap.le709.com',12,3,'此域名走网宿线路，HEAD和GET请求经常性400，故使用POST请求检测',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,7),(657,'https://wap.le719.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(658,'https://wap.le729.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(659,'https://wap.le740.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(660,'https://wap.le750.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(661,'https://wap.le756.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(662,'https://wap.le774.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(663,'https://wap.le793.com/',12,3,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(664,'https://wap.le824.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(665,'https://wap.le860.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(666,'https://wap.le874.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(667,'https://wap.le904.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(668,'https://wap.le913.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(669,'https://wap.le926.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(670,'https://wap.le935.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(671,'https://wap.le952.com',12,3,'解析掉了',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(672,'https://wap.le985.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(673,'https://wap.le838.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(674,'https://vip.le690.com',12,3,'国内被墙，做了跳转',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(675,'https://vip.le674.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(676,'https://vip.le033.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(677,'https://vip.le044.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(678,'https://vip.le077.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(679,'https://vip.le098.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(680,'https://vip.le0111.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(681,'https://vip.le0222.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(682,'https://vip.le0333.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(683,'https://vip.le499.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(684,'https://vip.le0555.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(685,'https://vip.le660.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(686,'https://vip.le661.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(687,'https://vip.le662.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(688,'https://vip.le664.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(689,'https://vip.le0666.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(690,'https://vip.le667.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(691,'https://vip.le673.com',12,3,'国内被墙，做了跳转',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(692,'https://vip.le679.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(693,'https://vip.le681.com',12,3,'解析掉了，客户还在确认',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(694,'https://vip.le0777.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(695,'https://vip.le798.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(696,'https://vip.le809.com',12,3,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(697,'https://vip.le839.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(698,'https://vip.le849.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(699,'https://vip.le859.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(700,'https://vip.le889.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(701,'https://vip.le898.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(703,'https://vip.le063.com',12,3,'DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(704,'https://vip.le064.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(705,'https://vip.le065.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(706,'https://vip.le067.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(707,'https://vip.le087.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(708,'https://vip.le0999.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(709,'https://vip.le0444.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(710,'https://vip.le829.com',12,3,'被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(711,'https://vip.le099.com',12,3,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(712,'https://vip.le0888.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(713,'https://vip.le022.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(714,'https://vip.le663.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(715,'https://vip.le676.com',12,3,' ',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(716,'https://vip.le668.com',12,3,'此域名走网宿线路，HEAD和GET请求经常性400，故使用POST请求检测',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,7),(717,'https://vip.le658.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(718,'https://vip.le060.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(719,'https://vip.le061.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(720,'https://vip.le062.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(721,'https://vip.le081.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(722,'https://vip.le082.com',12,3,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(723,'https://vip.le084.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(724,'https://vip.le085.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(725,'https://vip.le086.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(726,'https://vip.le089.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(727,'https://vip.le090.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(728,'https://vip.le091.com',12,3,'解析去掉了',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(729,'https://vip.le093.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(730,'https://vip.le094.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(731,'https://vip.le096.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(732,'https://vip.le097.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(733,'https://vip.le071.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(734,'https://vip.le074.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(735,'https://vip.le076.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(736,'https://vip.le079.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(737,'https://vip.le683.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(738,'https://vip.le684.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(739,'https://vip.le682.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(740,'https://vip.le685.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(741,'https://vip.le687.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(742,'https://vip.le691.com',12,3,'域名被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(743,'https://vip.le692.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(744,'https://vip.le693.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(745,'https://vip.le694.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(746,'https://vip.le695.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(747,'https://vip.le697.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(748,'https://vip.le070.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(749,'https://vip.le701.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(750,'https://vip.le709.com',12,3,'此域名走网宿线路，HEAD和GET请求经常性400，故使用POST请求检测',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,6),(751,'https://vip.le719.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(752,'https://vip.le729.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(753,'https://vip.le740.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(754,'https://vip.le750.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(755,'https://vip.le756.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(756,'https://vip.le774.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(757,'https://vip.le824.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(758,'https://vip.le860.com',12,3,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(759,'https://vip.le874.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(760,'https://vip.le904.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(761,'https://vip.le913.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(762,'https://vip.le926.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(763,'https://vip.le935.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(764,'https://vip.le952.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(765,'https://vip.le985.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(766,'https://vip.le838.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(767,'https://androidapi.le079.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(768,'https://apis.le079.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(769,'https://apps.le079.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(770,'https://apiad.lycp168.net',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(771,'https://apiios.lycp168.net',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(772,'https://ag.le011.com',12,3,'国内被墙，做了跳转',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(773,'https://ag.le599.com',12,3,' ',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(774,'https://ag.le658.com',12,3,'解析掉了',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(775,'https://pay.leyingcdn.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(776,'https://pay.lingyueguangguo.com',12,3,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(777,'https://gdcp308.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(778,'https://www.gdcp308.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(779,'https://gdcp188.com',12,2,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(780,'https://www.gdcp188.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(781,'https://gdcp208.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(782,'https://www.gdcp208.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(783,'https://gdcp008.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(784,'https://www.gdcp008.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(785,'https://gdcp888.com',12,2,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(786,'https://www.gdcp888.com',12,2,'  域名被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(787,'https://gdcp666.com',12,2,'被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(788,'https://www.gdcp666.com',12,2,'被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(789,'https://gdcp111.com',12,2,'域名被墙了',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(790,'https://www.gdcp111.com',12,2,'域名被墙了',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(791,'https://gdcp00.com',12,2,'客户转走了，解析掉了',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(792,'https://www.gdcp00.com',12,2,'客户转走了，解析掉了',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(793,'https://gdcp44.com',12,2,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(794,'https://www.gdcp44.com',12,2,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(795,'https://gdcp168.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(796,'https://www.gdcp168.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(797,'https://gdcp99.com',12,2,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(798,'https://www.gdcp99.com',12,2,'  ',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(799,'https://gdcp508.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(800,'https://www.gdcp508.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(801,'https://dongxu8.com/wap/img/hot.9da41c9.png',12,2,'光大 静态域名 |备案掉了',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(802,'https://www.dongxu8.com/wap/img/hot.9da41c9.png',12,2,'光大 静态域名 |备案掉了',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(803,'https://tongwangfa.com',12,2,' 證書失效待處理',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(804,'https://www.tongwangfa.com',12,2,' 證書失效待處理',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(805,'https://wap.gdcp308.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(806,'https://hifd6m4nufy3srl2wu.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(807,'https://www.hifd6m4nufy3srl2wu.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(808,'https://wap.gdcp188.com',12,2,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(809,'https://wap.gdcp888.com',12,2,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(810,'https://wap.gdcp666.com',12,2,'被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(811,'https://wap.gdcp99.com',12,2,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(812,'https://wap.gdcp00.com',12,2,'客户转走了，解析掉了',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(813,'https://wap.gdcp44.com',12,2,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(814,'https://wap.gdcp168.com',12,2,'无法访问',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(817,'https://vip.gdcp666.com',12,2,'被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(818,'https://vip.gdcp99.com',12,2,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(819,'https://vip.gdcp888.com',12,2,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(820,'https://ag.gdcp188.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(821,'https://ag.gdcp55.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(822,'https://ag.gdcp66.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(823,'https://ag.gdcp158.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(824,'https://ag.gdcp77.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(825,'https://ag.gdcp666.com',12,2,'被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(826,'https://ag.gdcp000.com',12,2,'DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(827,'https://ag.gdcp00.com',12,2,'客户转走了，解析掉了',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(829,'https://ag.gdcp999.com/',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(830,'https://www.uccp222.com/',12,7,' 證書失效待處理',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(831,'https://uc2222.com',12,7,'域名被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(832,'https://www.uc2222.com',12,7,'域名被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(833,'https://uc222.cc',12,7,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(834,'https://www.uc222.cc',12,7,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(835,'https://uccp33.com',12,7,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(836,'https://www.uccp33.com',12,7,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(839,'http://vip.uc2222.com',12,7,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(840,'https://api.uc22.com',12,7,'国内被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(841,'https://iosapi.uc22.com',12,7,'国内被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(842,'https://androidapi.uc22.com',12,7,'国内被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(843,'https://ag.uc22.com',12,7,'国内被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(844,'https://ag.uc222.com',12,7,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(845,'http://ag.uc22.org',12,7,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(846,'https://cp.128365365.tv',12,9,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(847,'https://cpwap.716614.com',12,9,' 證書失效待處理',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(848,'https://cp.bet338.com',12,9,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(849,'https://h9393.me',12,8,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(850,'https://1717h.net',12,19,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(851,'http://ag.ca668.com',12,6,'解析掉了',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(852,'https://n668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(853,'https://www.n668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(854,'https://2805y.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(855,'https://www.2805y.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(856,'https://2805w.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(857,'https://www.2805w.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(858,'https://2805x.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(859,'https://www.2805x.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(860,'https://2805v.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(861,'https://www.2805v.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(862,'https://b668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(863,'https://c668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(864,'https://d668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(865,'https://f668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(866,'https://g668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(867,'https://h668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(868,'https://j668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(869,'https://m668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(870,'https://p668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(871,'https://q668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(873,'https://r668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(874,'https://www.zz509.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(875,'https://668cp00.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(876,'https://668cp11.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(877,'https://668cp22.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(878,'https://668cp33.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(879,'https://668cp44.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(880,'https://668cp55.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(881,'https://668cp66.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(882,'https://668cp77.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(883,'https://668cp88.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(886,'https://338cp.com',12,6,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(887,'https://399cp.com',12,6,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(888,'https://208608.com',12,6,' 證書失效待處理',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(889,'https://668cp.biz',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(890,'https://668cp.bz',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(891,'https://668cp.cc',12,6,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(892,'https://668cp.cn',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(893,'https://668cp.co',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(894,'https://668cp.com',12,6,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(895,'https://668cp.cz',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(896,'https://668cp.info',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(897,'https://668cp.mx',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(898,'https://668cp.ph',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(899,'https://668cp.ws',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(900,'https://668cp.pe',12,6,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(901,'https://668cp.tv',12,6,'DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(902,'https://670038.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(903,'https://a668cp.com',12,6,'国内被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(904,'https://zz509.com',12,6,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(905,'https://vip.668cp00.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(906,'https://vip.668cp11.com',12,6,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(907,'https://vip.668cp22.com',12,6,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(908,'https://vip.668cp33.com',12,6,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(909,'https://vip.668cp44.com',12,6,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(910,'https://vip.668cp55.com',12,6,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(911,'https://vip.668cp66.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(912,'https://vip.668cp77.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(913,'https://vip.668cp88.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(914,'https://vip.668cp99.com',12,6,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(915,'https://vip.1kcp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(916,'https://vip.208608.com',12,6,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(917,'https://vip.338cp.com',12,6,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(918,'https://vip.668cp.biz',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(919,'https://vip.668cp.bz',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(920,'https://vip.668cp.cn',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(921,'https://vip.668cp.co',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(922,'https://vip.668cp.com',12,6,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(923,'https://vip.668cp.cz',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(924,'https://vip.668cp.info',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(925,'https://vip.668cp.mx',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(926,'https://vip.668cp.ph',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(927,'https://vip.668cp.pe',12,6,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(928,'https://vip.668cp.tv',12,6,'DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(929,'https://vip.668cp.ws',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(930,'https://vip.670038.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(931,'https://vip.a668cp.com',12,6,'国内被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(932,'https://vip.zz509.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(933,'https://www.668cp00.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(934,'https://www.668cp11.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(935,'https://www.668cp22.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(936,'https://www.668cp33.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(937,'https://www.668cp44.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(938,'https://www.668cp55.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(939,'https://www.668cp66.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(940,'https://www.668cp77.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(941,'https://www.668cp88.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(944,'https://www.208608.com',12,6,' 證書失效待處理',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(945,'https://www.338cp.com',12,6,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(946,'https://www.399cp.com',12,6,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(947,'https://www.668cp.biz',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(948,'https://www.668cp.bz',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(949,'https://www.668cp.cc',12,6,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(950,'https://www.668cp.cn',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(951,'https://www.668cp.co',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(952,'https://www.668cp.com',12,6,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(953,'https://www.668cp.cz',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(954,'https://www.668cp.info',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(955,'https://www.668cp.mx',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(956,'https://www.668cp.pe',12,6,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(957,'https://www.668cp.ph',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(958,'https://www.668cp.tv',12,6,'DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(959,'https://www.668cp.ws',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(960,'https://www.670038.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(961,'https://www.a668cp.com',12,6,'国内被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(962,'https://2805app.com',12,6,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(963,'https://www.2805app.com',12,6,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(964,'https://app.2805app.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(965,'https://www.2805a.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(966,'https://2805a.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(967,'https://vip.b668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(968,'https://vip.c668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(969,'https://vip.d668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(970,'https://vip.f668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(971,'https://vip.g668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(972,'https://vip.h668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(973,'https://vip.j668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(974,'https://vip.k668cp.com',12,6,'客户解析到其他地方了，不用监控',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(975,'https://vip.m668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(976,'https://vip.n668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(977,'https://vip.p668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(978,'https://vip.q668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(979,'https://vip.r668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(980,'https://app.97bei.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(981,'https://m.d668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(982,'https://m.f668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(983,'https://m.g668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(984,'https://m.h668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(985,'https://m.j668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(986,'https://m.k668cp.com',12,6,'客户解析到其他地方了，不用监控',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(987,'https://m.m668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(988,'https://m.n668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(989,'https://m.p668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(990,'https://m.q668cp.com',12,6,'DNS劫持',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(991,'https://m.r668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(992,'https://m.a668cp.com',12,6,'国内被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(993,'https://m.b668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(994,'https://m.c668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(995,'https://m.668cp00.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(996,'https://m.668cp11.com',12,6,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(997,'https://m.668cp22.com',12,6,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(998,'https://m.668cp33.com',12,6,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(999,'https://m.668cp44.com',12,6,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1000,'https://m.668cp55.com',12,6,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1001,'https://m.668cp66.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1002,'https://m.668cp77.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1003,'https://m.668cp88.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1004,'https://m.668cp99.com',12,6,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1005,'https://api.668cp.cc',12,6,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1006,'https://apiad.fhcp168.net',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1007,'https://apiios.fhcp168.net',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1008,'https://apiweb.fhcp168.net',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1009,'https://m.1kcp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1010,'https://m.zz509.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1011,'https://m.208608.com',12,6,'域名被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1012,'https://m.338cp.com',12,6,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1013,'https://m.399cp.com',12,6,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1014,'https://m.668cp.biz',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1015,'https://m.668cp.bz',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1016,'https://m.668cp.cc',12,6,'DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1017,'https://m.668cp.co',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1018,'https://m.668cp.cz',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1019,'https://m.668cp.info',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1020,'https://m.668cp.mx',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1021,'https://m.668cp.pe',12,6,'被墙或者被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1022,'https://m.668cp.ph',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1023,'https://m.668cp.tv',12,6,'DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1024,'https://m.668cp.ws',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1029,'http://arno.com/teset222',0,29,'测试',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1040,'https://ldccp88.com',16,21,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1041,'https://ldc881.com',16,21,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1077,'http://et226.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1078,'http://www.et226.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1079,'http://et300.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1080,'http://www.et300.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1081,'http://et441.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1082,'http://www.et441.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1083,'http://et469.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1084,'http://www.et469.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1085,'http://et471.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1086,'http://www.et471.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1087,'http://et495.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1088,'http://www.et495.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1089,'http://et533.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1090,'http://www.et533.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1091,'http://et593.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1092,'http://www.et593.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1093,'http://et605.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1094,'http://www.et605.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1095,'http://et630.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1096,'http://www.et630.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1097,'http://et656.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1098,'http://www.et656.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1099,'http://et739.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1100,'http://www.et739.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1101,'http://et770.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1102,'http://www.et770.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1103,'http://et826.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1104,'http://www.et826.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1105,'http://et976.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1106,'http://www.et976.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1107,'http://it031.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1108,'http://www.it031.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1109,'https://it223.com',12,23,'被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1110,'https://www.it223.com',12,23,'被DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1111,'http://it277.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1112,'http://www.it277.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1113,'http://it291.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1114,'http://www.it291.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1115,'http://it433.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1116,'http://www.it433.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1117,'http://it441.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1118,'http://www.it441.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1119,'https://it510.com',12,23,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1120,'https://www.it510.com',12,23,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1121,'http://it595.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1122,'https://www.it595.com',12,23,'无解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1123,'http://it820.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1124,'http://www.it820.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1125,'http://it891.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1126,'http://www.it891.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1127,'http://yt044.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1128,'http://www.yt044.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1129,'http://yt272.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1130,'http://www.yt272.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1131,'https://yt340.com',12,23,'API域名，不做其他解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1132,'https://www.yt340.com',12,23,'API域名，不做其他解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1133,'https://apiad.yt340.com',12,23,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1134,'http://apiweb.yt340.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1135,'https://apiios.yt340.com',12,23,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1136,'http://yt363.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1137,'http://www.yt363.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1138,'http://yt373.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1139,'http://www.yt373.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1140,'http://yt383.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1141,'http://www.yt383.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1142,'https://yt455.com',12,23,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1143,'https://www.yt455.com',12,23,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1144,'http://yt556.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1145,'http://www.yt556.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1146,'http://yt640.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1147,'http://www.yt640.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1148,'http://yt690.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1149,'http://www.yt690.com',12,23,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1150,'https://ag.et226.com',12,23,'亿腾ag域名只保留https://ag.yt556.com',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1151,'https://ag.et300.com',12,23,'亿腾ag域名只保留https://ag.yt556.com',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1152,'https://ag.et441.com',12,23,'亿腾ag域名只保留https://ag.yt556.com',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1153,'https://ag.et469.com',12,23,'亿腾ag域名只保留https://ag.yt556.com',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1154,'https://ag.et471.com',12,23,'亿腾ag域名只保留https://ag.yt556.com',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1155,'https://ag.et495.com',12,23,'亿腾ag域名只保留https://ag.yt556.com',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1156,'https://ag.et533.com',12,23,'亿腾ag域名只保留https://ag.yt556.com',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1157,'https://ag.et593.com',12,23,'亿腾ag域名只保留https://ag.yt556.com',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1158,'https://ag.et605.com',12,23,'亿腾ag域名只保留https://ag.yt556.com',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1159,'https://ag.et630.com',12,23,'亿腾ag域名只保留https://ag.yt556.com',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1160,'https://ag.et656.com',12,23,'亿腾ag域名只保留https://ag.yt556.com',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1161,'https://ag.et739.com',12,23,'亿腾ag域名只保留https://ag.yt556.com',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1162,'https://ag.et770.com',12,23,'亿腾ag域名只保留https://ag.yt556.com',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1163,'https://ag.et826.com',12,23,'亿腾ag域名只保留https://ag.yt556.com',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1164,'https://ag.et976.com',12,23,'亿腾ag域名只保留https://ag.yt556.com',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1165,'https://ag.it031.com',12,23,'亿腾ag域名只保留https://ag.yt556.com',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1166,'https://ag.it223.com',12,23,'亿腾ag域名只保留https://ag.yt556.com',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1167,'https://ag.it277.com',12,23,'亿腾ag域名只保留https://ag.yt556.com',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1168,'https://ag.it291.com',12,23,'亿腾ag域名只保留https://ag.yt556.com',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1169,'https://ag.it433.com',12,23,'亿腾ag域名只保留https://ag.yt556.com',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1170,'https://ag.it441.com',12,23,'亿腾ag域名只保留https://ag.yt556.com',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1171,'https://ag.it510.com',12,23,'亿腾ag域名只保留https://ag.yt556.com',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1172,'https://ag.it595.com',12,23,'亿腾ag域名只保留https://ag.yt556.com',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1173,'https://ag.it820.com',12,23,'亿腾ag域名只保留https://ag.yt556.com',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1174,'https://ag.it891.com',12,23,'亿腾ag域名只保留https://ag.yt556.com',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1175,'https://ag.yt044.com',12,23,'亿腾ag域名只保留https://ag.yt556.com',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1176,'https://ag.yt272.com',12,23,'亿腾ag域名只保留https://ag.yt556.com',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1177,'https://ag.yt340.com',12,23,'亿腾ag域名只保留https://ag.yt556.com',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1178,'https://ag.yt363.com',12,23,'亿腾ag域名只保留https://ag.yt556.com',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1179,'https://ag.yt373.com',12,23,'亿腾ag域名只保留https://ag.yt556.com',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1180,'https://ag.yt383.com',12,23,'亿腾ag域名只保留https://ag.yt556.com',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1181,'https://ag.yt455.com',12,23,'亿腾ag域名只保留https://ag.yt556.com',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1182,'http://ag.yt556.com',12,23,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1183,'https://ag.yt640.com',12,23,'亿腾ag域名只保留https://ag.yt556.com',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1184,'https://ag.yt690.com',12,23,'亿腾ag域名只保留https://ag.yt556.com',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1191,'https://api.ag10086.cc',12,10,'停止使用',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1192,'https://apiad.ag10086.cc',12,10,'停止使用',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1193,'https://apiios.ag10086.cc',12,10,'停止使用',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1194,'https://api.ag10000.cc',12,10,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1195,'https://apiad.ag10000.cc',12,10,'域名解析无效',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1196,'https://apiios.ag10000.cc',12,10,'域名解析无效',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1197,'https://ag10000.cc',12,10,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1198,'https://www.ag10000.cc',12,10,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1199,'https://www.ag11111.cc',12,10,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1200,'https://www.ag22222.cc',12,10,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1201,'https://ag.ag10000.cc',12,10,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1202,'https://pay.ag10000.cc',12,10,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1203,'https://ag10086.cc',12,10,'无法解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1204,'https://www.ag10086.cc',12,10,'无法解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1205,'https://pay.ag10086.cc',12,10,'无法解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1206,'https://ag.ag10086.cc',12,10,'无法解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1207,'https://app.ag10086.cc',12,10,'Forbidden无权限察看',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1208,'https://app.ag10000.cc',12,10,'Forbidden无权限察看',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1209,'https://www.ag33333.cc',12,10,'Forbidden无权限察看',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1210,'https://cp.hg3535.cc',12,9,'证书失效待处理',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1220,'https://668cp.coco',12,6,'无法解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1221,'https://vip.399cp.com',12,6,'无法解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1222,'https://vip.668cp.cc',12,6,'无法解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1223,'https://vip.668cp.coco',12,6,'无法解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1224,'https://www.668cp.coco',12,6,'无法解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1225,'https://iosapi.668cp.cc',12,6,'DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1226,'https://androidapi.668cp.cc',12,6,'无法解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1227,'https://m.668cp.com',12,6,'DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1228,'https://m.668cp.coco',12,6,'无法解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1231,'https://cpapi.128365365.tv',12,8,'无法解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1232,'https://api.yy9393.com',12,8,'无法解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1234,'https://uccp222.com',12,7,'证书失效',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1235,'https://vip.uc222.cc',12,7,'无法解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1236,'https://app.gdappdown.com/download/apk',12,2,'无法解析',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1237,'https://app.gdcp508.com',12,2,'无法解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1238,'https://ios.gdcp508.com',12,2,'无法解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1239,'https://api.gdcp888.com',12,2,'无法解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1240,'https://vip.gdcp44.com',12,2,'无法解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1241,'https://apiad.gdcp168.net/user/getPicturesAndAnnouncements',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1242,'https://apiios.gdcp168.net',12,2,'无法解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1243,'https://apiweb.gdcp168.net',12,2,'无法解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1244,'https://androidapi.gdcp188.com',12,2,'无法解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1245,'https://apiios.gdcp508.com',12,2,'无法解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1246,'https://apiweb.gdcp508.com',12,2,'无法解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1248,'https://apiios.gdcpapi.com',12,2,'无法解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1249,'https://apiweb.gdcpapi.com',12,2,'无法解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1250,'https://ag.gdcp99.com',12,2,'无法解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1251,'https://ag.gdcp888.com',12,2,'无法解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1252,'https://ag.gdcp44.com',12,2,'无法解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1253,'https://ag.gdcp508.com',12,2,'无法解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1254,'https://le063.com',12,3,'DNS劫持',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1255,'https://vip.595988.com/',12,3,'无法解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1256,'https://vip.le665.com',12,3,'无法解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1257,'https://vip.le793.com',12,3,'无法解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1258,'https://apiweb.lycp168.net',12,3,'无法解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1259,'https://ag.le0999.com',12,3,'无法解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1260,'https://ag.le099.com',12,3,'无法解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1261,'https://ag.le022.com',12,3,'无法解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1262,'https://ag.le0888.com',12,3,'无法解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1263,'https://ag.le968.com',12,3,'无法解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1264,'https://ag.le829.com',12,3,'无法解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1265,'https://wap.595988.com',12,3,'无法解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1268,'http://www.ifc99.com:8089/IFC/api.do?appid=2322&name=dsds',12,19,' ',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1269,'http://ifc99.com:8089/IFC/api.do?appid=2322&name=dsds',12,19,' ',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1270,'http://yy.l510881.com/appinterface/crud/insertdata.do?appid=1265734746&name=xst-hg',12,19,' ',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1271,'https://iosappapi.com/IFC/api.do?appid=2322&name=dsds',12,19,'NS 改回客户那里了',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1272,'https://www.iosappapi.com/IFC/api.do?appid=2322&name=dsds',12,19,'NS 改回客户那里了',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1273,'https://apiappios.com/IFC/api.do?appid=2322&name=dsds',12,19,'NS 改回客户那里了',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1274,'https://api3618.com/IFC/api.do?appid=2322&name=dsds',12,19,'NS 改回客户那里了',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1275,'https://ad3535.com/IFC/api.do?appid=2322&name=dsds',12,19,'NS 改回客户那里了',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1276,'https://appifc.com/IFC/api.do?appid=2322&name=dsds',12,19,' ',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1277,'https://app.hhy988.com/test',12,29,'此APP下载域名在国内被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1278,'https://app.hgb168.com/test',12,29,'凤凰APP CDN域名',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1279,'https://app.fanyingsh.com/test',12,29,'无法续费，弃用',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1280,'https://fanyingsh.com/images/member/index_error.png',27,29,'无法续费，弃用',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1281,'https://www.fanyingsh.com/images/member/index_error.png',27,29,'无法续费，弃用',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1282,'https://manage.wgle5.com',26,29,'解析已关，JAVA留着后用',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1283,'https://image.wgle5.com',26,29,'解析已关，JAVA留着后用',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1285,'https://wgle5.com',26,29,'解析已关，JAVA留着后用',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,5),(1286,'https://www.wgle5.com',26,29,'解析已关，JAVA留着后用',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,5),(1287,'http://api.wgle5.com',26,29,'解析已关，JAVA留着后用',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1288,'http://arno.com/teset333asdfasdf',0,29,'测试',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1289,'https://yitengstatic.yuchaojinshu.com/static/images/yiteng/logo_main.png',12,23,'亿腾 静态文件域名',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1290,'https://yitengstatic.lingyueguangguo.com/static/images/yiteng/feiting.png',12,23,'亿腾静态文件域名',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1291,'https://leyingstatic.yuchaojinshu.com/home/ly/images/tel.png',12,3,'乐盈 静态文件域名',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1292,'https://leyingstatic.lingyueguangguo.com/home/ly/images/tel.png',12,3,'乐盈静态文件域名',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1294,'http://pay.ytcpwpay.com',12,23,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1295,'http://pay.ytcppay.com',12,23,'客户不用了',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1296,'http://pay.ccpppay.com',12,23,'客户不用了',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1297,'http://alcp3.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1298,'http://alcp4.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1299,'https://uccp44.com/static/images/common/icon/ico-right-weijie.png',12,7,'UC CDN静态域名',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1300,'https://manage.hl669.com',26,31,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1301,'https://image.hl669.com',26,31,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1302,'https://ag.hl669.com',26,31,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1303,'https://www.hl669.com',26,31,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,5),(1304,'https://api.hl669.com',26,31,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1305,'https://mg.hl669.com',26,31,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1307,'https://hl669.com',26,31,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,5),(1365,'https://apiad.tongwangfa.com/user/getPicturesAndAnnouncements',12,2,'解析掉了',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1366,'https://androidapi.gdcp188.com/user/getPicturesAndAnnouncements',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1367,'https://app.58wfx.com/download/app',12,4,'解析有问题，已反馈给业主，先暂停报警 20190329',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1368,'https://gdcp198.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1370,'https://hgb168.com',12,3,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1371,'https://www.hgb168.com',12,3,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1372,'https://m.hgb168.com',12,3,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1373,'https://ag.hgb168.com',12,3,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1374,'https://www.b668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1375,'https://www.c668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1376,'https://www.d668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1377,'https://www.f668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1378,'https://www.g668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1379,'https://www.h668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1380,'https://www.j668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1381,'https://www.m668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1382,'https://www.p668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1383,'https://www.q668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1384,'https://www.r668cp.com',12,6,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1385,'https://titicp.com',12,5,'产品已取消',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1392,'https://1717h.co',12,19,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1393,'https://www.1717h.net',12,19,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1394,'https://hg1717.ag',12,19,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1395,'https://www.hg1717.ag',12,19,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1396,'https://37773.vet',12,19,'不使用证书',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1397,'https://q37773.bet',12,19,'不使用证书\n',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1398,'https://q37773.ceo',12,19,'不使用证书',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1399,'https://q37773.co',12,19,'不使用证书',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1400,'https://www.37773.vet',12,19,'不使用证书',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1401,'https://www.q37773.ceo',12,19,'不使用证书',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1402,'https://www.q37773.co',12,19,'不使用证书',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1404,'https://www.cp9393.co',12,8,'谷歌彩票',1,'','','',0,'2018-12-27 09:13:22.000000',9,1),(1405,'https://cp9393.co',12,8,'谷歌彩票',1,'','','',0,'2018-12-27 09:13:22.000000',9,1),(1427,'https://653-228.com',12,13,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1428,'https://www.653-228.com',12,13,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1434,'https://congsumy.com/static/images/ct/logo.png',12,4,'备案掉了',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1435,'https://www.congsumy.com/static/images/ct/logo.png',12,4,'备案掉了',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1436,'https://vieze.net/static/images/ct/logo.png',12,4,'静态域名 解析掉了',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1437,'https://www.vieze.net/static/images/ct/logo.png',12,4,'静态域名 解析掉了',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1474,'https://apiad.ctcp8.com/user/getPicturesAndAnnouncements',12,4,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1475,'https://apiios.ctcp8.com/user/getPicturesAndAnnouncements',12,4,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1542,'https://www.qiguw.com/javaimage/hldown.png',26,31,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1546,'https://m.dongxu8.com/wap/img/hot.9da41c9.png',12,2,'光大 静态域名 |备案掉了',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1548,'https://arno.comdd',0,29,'测试',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1549,'https://hd.hgb168.net/dns/getDns?domain=gdcp00.com',0,29,'httpdns防劫持程序',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,5),(1552,'https://arnoasdfafafad.com/asdfasfasdf',0,29,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,3),(1556,'https://www.uccp44.com/static/images/common/icon/ico-right-weijie.png',12,7,'UC CDN静态域名',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1557,'https://sadfasfdadfasfasdfs.com',0,29,'测试',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1559,'https://vip.alcp22.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1560,'https://www.jmcp222.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1561,'https://vip.jmcp222.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1562,'https://www.alcp3.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1563,'https://vip.alcp3.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1564,'https://www.alcp4.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1565,'https://vip.alcp4.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1566,'https://www.jmyl444.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1567,'https://vip.jmyl444.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1568,'https://www.alcp11.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1569,'https://vip.alcp11.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1570,'https://www.alcp68.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1571,'https://vip.alcp68.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1572,'https://ag.0698kk.com',12,6,'没有做解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1573,'https://pay.0698kk.com',12,6,'没有做解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1574,'https://0698kk.com',12,6,'客户不用了',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1575,'https://www.0698kk.com',12,6,'客户不用了',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1578,'https://apiopen.l5jiamei.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1579,'https://ag.cbi9hf26f0l3gi5psk.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1580,'https://ag.alcp68.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1581,'https://ag.alcp000.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1582,'https://ag.al108.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1583,'https://ag.al308.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1584,'https://ag.alcp11.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1585,'https://ag.alcp22.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1586,'https://ag.jmcp222.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1587,'https://pay.zhaopinaa.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1588,'https://pay.alcp44.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1589,'https://vip.alcp000.com',12,1,'客户做了跳转到www',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1590,'https://vip.alcp86.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1591,'https://vip.t0322.com',12,1,' ',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1592,'https://vip.alcp66.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1593,'https://vip.alcp88.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1594,'https://vip.alcp99.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1595,'https://vip.jmcp333.com',12,1,'域名被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1596,'https://vip.jmcp777.com',12,1,'域名被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1597,'https://vip.jmcp888.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1598,'https://vip.jmcp999.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1599,'https://vip.jmyl888.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1600,'https://vip.alcp088.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1601,'https://vip.alcp688.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1602,'https://vip.al108.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1603,'https://vip.al308.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1604,'https://wap.cbi9hf26f0l3gi5psk.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1605,'https://wap.alcp68.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1606,'https://wap.jmcp88.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1607,'https://sc9kofq3vibt4y8lu2.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1608,'https://wap.alcp77.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1609,'https://wap.alcp88.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1610,'https://wap.alcp99.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1611,'https://api.alcp66.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1612,'https://apiad.alcp168.net/user/getPicturesAndAnnouncements',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1613,'https://apiad.fanyingsh.com',12,1,'无法续费，弃用',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1614,'https://iosapi.alcp66.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1615,'https://wap.al308.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1616,'https://wap.t0320.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1617,'https://apiad.alcpapi.com',12,1,'弃用',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1618,'https://apiad.hhy988.com',12,1,'域名被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1619,'https://wap.alcp11.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1620,'https://wap.alcp22.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1621,'https://wap.jmcp222.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1622,'https://wap.alcp4.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1623,'https://wap.alcp3.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1624,'https://wap.alcp688.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1625,'https://m.cbi9hf26f0l3gi5psk.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1626,'https://m.alcp68.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1627,'https://m.alcp33.com	',12,1,'被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1628,'https://m.jmcp88.com	',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1629,'https://m.alcp77.com	',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1630,'https://m.alcp88.com	',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1631,'https://m.alcp99.com	',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1632,'https://apiios.fanyingsh.com',12,1,'无法续费，弃用',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1634,'https://m.alcp44.com	',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1635,'https://m.alcp1.com	',12,1,'客户要求更改解析',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1636,'https://m.alcp2.com	',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1642,'https://apiios.alcpapi.com',12,1,'弃用',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1643,'https://apiweb.alcpapi.com',12,1,'弃用',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1644,'https://apiweb.hhy988.com',12,1,'域名被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1645,'https://apiios.hhy988.com',12,1,'域名被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1646,'https://app.alappdown.com/download/apk',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1647,'https://alcpapi.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1648,'https://jmcp88.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1649,'https://alcp000.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1650,'https://alcp86.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1651,'https://t0322.com',12,1,' ',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1652,'https://alcp99.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1653,'https://alcp88.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1654,'https://alcp77.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1655,'https://alcp66.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1656,'https://jmyl888.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1657,'https://jmcp999.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1658,'https://jmcp888.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1659,'https://jmcp777.com',12,1,'域名被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1660,'https://jmcp333.com',12,1,'域名被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1661,'https://alcp088.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1662,'https://alcp688.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1663,'https://alcp188.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1664,'https://al108.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1665,'https://al308.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1666,'https://yoonfw.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1667,'https://hhy988.com',12,1,'域名被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1668,'https://alcp222.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1669,'https://t0320.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1670,'https://alcp11.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1671,'https://alcp68.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1672,'https://cbi9hf26f0l3gi5psk.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1673,'https://alcp22.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1674,'https://jmcp222.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1675,'https://alcp3.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1676,'https://alcp4.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1677,'https://jmyl444.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1678,'https://www.alcpapi.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1679,'https://www.jmcp88.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1680,'https://www.jmcp999.com	',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1681,'https://www.yoonfw.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1682,'https://www.hhy988.com',12,1,'域名被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1683,'https://vip.t0320.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1684,'https://www.cbi9hf26f0l3gi5psk.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1685,'https://vip.cbi9hf26f0l3gi5psk.com',12,1,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1686,'https://www.alcp22.com',12,1,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1687,'https://apiopen.l5jinfu.com',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1688,'https://vip.ct680.com',12,4,'域名被墙',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1690,'https://vip.098191.com',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1692,'https://congsumy.com',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1694,'https://www.congsumy.com',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1696,'https://apiios.ctcp8.com',12,4,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1697,'https://caitou111.com',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1698,'https://www.101606.com	',12,4,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1699,'https://apiopen.l5dafa.com',12,2,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1700,'https://ag.gdcp999.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1701,'https://ag.gdcp178.com',12,2,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1702,'https://ag.gdcp198.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1703,'https://api.gdcp188.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1704,'https://apiad.gdcp168.net',12,2,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1705,'https://apiad.gdcp508.com',12,2,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1706,'https://apiad.gdcpapi.com',12,2,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1707,'https://apiios.tongwangfa.com',12,2,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1708,'https://pay.gdcp99.com',12,2,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1709,'https://pay.yinzhiaa.top',12,2,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1710,'https://vip.gdcp308.com 	',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1711,'https://vip.gdcp188.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1712,'https://vip.gdcp208.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1713,'https://vip.gdcp00.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1714,'https://vip.gdcp168.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1716,'https://wap.gdcp198.com',12,2,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1717,'https://wap.gdcp178.com',12,2,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1719,'https://gdcp178.com',12,2,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1720,'https://ldccp999.com',16,21,'乐都城 彩票',1,'ldccp.aws.lebole2.com','','ldccp.speed.lebole2.com',0,'2018-12-27 09:13:22.000000',7,1),(1721,'https://www.ldccp88.com',16,21,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1722,'https://www.ldccp999.com',16,21,'乐都城 彩票',1,'ldccp.aws.lebole2.com','','ldccp.speed.lebole2.com',1,'2019-01-11 17:42:42.000000',7,1),(1729,'https://pay.yicihy.top',12,3,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1730,'https://pay1.yicihy.top',12,3,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1731,'https://apiad.hgb168.com',12,3,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1732,'https://apiios.hgb168.com',12,3,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1733,'https://apiweb.hgb168.com',12,3,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1735,'https://apiopen.hgb168.com',12,3,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1736,'https://vip.595988.com',12,3,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1737,'https://wap.le793.com',12,3,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1738,'https://leyingstatic.yuchaojinshu.com',12,3,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1739,'https://leyingstatic.lingyueguangguo.com',12,3,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1740,'https://www.le063.com',12,3,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1741,'https://apiopen.l5668cp.com',12,6,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1742,'https://androidapi.668cp.cc	',12,6,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1743,'https://k668cp.com',12,6,'客户解析到其他地方了，不用监控',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1744,'https://www.k668cp.com',12,6,'客户解析到其他地方了，不用监控',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1745,'https://www.cp1717.cc',12,19,'',0,'','','',0,'2018-12-27 09:13:22.000000',9,1),(1746,'https://cp1717.cc',12,19,'',0,'','','',0,'2018-12-27 09:13:22.000000',9,1),(1747,'https://test.hgb168.com',12,11,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1748,'https://apiopen.l5uc.com',12,7,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1749,'https://ag.uc22.org',12,7,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1750,'https://vip.uc22.cc',12,7,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1751,'https://vip.uc22222.com',12,7,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1752,'https://vip.uc2222.com',12,7,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1753,'https://uccp44.com',12,7,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1754,'https://www.uccp44.com',12,7,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1755,'https://www.uccp222.com',12,7,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1756,'https://app.uc22.com',12,7,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1757,'https://m.uc22.org',12,7,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1758,'https://vip.uc22.org',12,7,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1759,'https://yitengstatic.yuchaojinshu.com',12,23,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1760,'https://yitengstatic.lingyueguangguo.com',12,23,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1761,'http://app.yt272.com',12,23,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1762,'https://app.yt340.com',12,23,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1768,'https://pc.hgbweb.com',12,19,'彩票体育域名',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1769,'https://m.hgbweb.com',12,19,'彩票体育域名',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1770,'https://ag.hgbweb.com',12,19,'彩票体育域名',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1771,'http://pc.hgbpro.com',12,19,'彩票体育域名',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1772,'http://m.hgbpro.com',12,19,'彩票体育域名',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1773,'http://ag.hgbpro.com',12,19,'彩票体育域名',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1774,'http://pc.hgbspace.com',12,19,'彩票体育域名',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1775,'http://m.hgbspace.com',12,19,'彩票体育域名',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1776,'http://ag.hgbspace.com',12,19,'彩票体育域名 ',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1777,'https://www.54321kai.com/',27,29,'彩票移动端域名',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,2),(1778,'https://pay3.qm6686.com/',27,29,'支付域名,域名证书已到期',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1779,'https://6686sky.cc',27,29,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1780,'https://cdn3721.com/uc/201808/1.jpg',12,29,'凤凰图片域名',1,'','','',0,'2018-12-27 09:13:22.000000',1,1),(1781,'https://www.cdn3721.com/uc/201808/1.jpg',12,29,'凤凰图片域名',1,'','','',0,'2018-12-27 09:13:22.000000',1,1),(1782,'https://hd296.com',12,34,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1783,'https://www.hd296.com',12,34,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1784,'https://hdcp08.com',12,34,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1785,'https://www.hdcp08.com',12,34,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1786,'https://hdcp018.com',12,34,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1787,'https://www.hdcp018.com',12,34,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1788,'https://hdcp68.com',12,34,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1789,'https://www.hdcp68.com',12,34,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1790,'https://hdcp78.com',12,34,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1791,'https://www.hdcp78.com',12,34,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1792,'https://hdcp106.com',12,34,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1793,'https://www.hdcp106.com',12,34,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1794,'https://hdcp155.com',12,34,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1795,'https://www.hdcp155.com',12,34,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1796,'https://hdcp258.com',12,34,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1797,'https://www.hdcp258.com',12,34,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1798,'https://hdcp699.com',12,34,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1799,'https://www.hdcp699.com',12,34,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1800,'https://pay.yipin6888.com',12,34,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1801,'https://www.pay.yipin6888.com',12,34,'此域名没有在用',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1802,'http://1111.com',0,29,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1806,'http://yy.l510881.com:8089/appinterface/crud/insertdata.do?appid=1265734746&name=xst-hg',12,19,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1807,'https://77778.co',12,13,'',0,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1808,'https://8868ssc.com',16,29,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1809,'https://www.8868ssc.com',16,29,'',1,'','','',0,'2018-12-27 09:13:22.000000',NULL,1),(1810,'https://8868hgcp.com',16,37,'勇士彩票',1,'warriorcp.aws.lebole2.com','','warriorcp.speed.lebole2.com',0,'2018-12-27 09:13:22.000000',6,1),(1811,'https://www.8868hgcp.com',16,37,'勇士彩票',1,'warriorcp.aws.lebole2.com','','warriorcp.speed.lebole2.com',1,'2019-01-16 21:40:52.000000',6,1),(1812,'https://jkysxh.cn/img/wap/images/cl_5.png',12,29,' ',0,'static.lebocdn.com','jkysxh.cn.whecloud.com','static.lebocdn.com',0,'2018-12-27 09:13:22.000000',5,1),(1813,'https://www.jkysxh.cn/img/wap/images/cl_5.png',12,29,'',0,'','','',0,'2018-12-27 09:13:22.000000',5,1),(1814,'https://live-cf001.com',27,29,'',0,'','','',0,'0000-00-00 00:00:00.000000',11,1),(1815,'https://live-cf002.com',27,29,'',0,'','','',0,'2018-12-27 09:40:04.000000',11,1),(1816,'https://www.live-cf002.com',27,29,'',0,'','','',0,'2018-12-27 09:40:04.000000',11,1),(1817,'https://www.live-cf001.com',27,29,'',0,'','','',0,'2018-12-27 09:40:04.000000',11,1),(1818,'http://wap.gdcp108.com',12,2,'光大推广域名，很重要',0,'','','',0,'2018-12-29 10:54:11.000000',10,2),(1819,'http://wap.gd44.cc',12,2,'光大推广域名，很重要',0,'','','',0,'2018-12-29 10:54:11.000000',10,2),(1820,'http://test.alcp08.com',12,1,'',0,'hk_web2.l5ali.com','','speed.l5ali.com',1,'2019-01-16 13:09:25.000000',3,1),(1821,'https://www.338caip.com',12,13,'钻石彩票',1,'','','',0,'2018-12-31 15:23:51.000000',9,1),(1822,'https://338caip.com',12,13,'钻石彩票',1,'','','',0,'2018-12-31 15:23:51.000000',9,1),(1823,'https://www.suoweiyiren.com/test',101,101001,'越众棋牌 APP 下载',0,'','','',0,'2019-01-25 14:14:05.000000',9,1),(1824,'https://suoweiyiren.com/test',101,101001,'越众棋牌 APP 下载',0,'','','',0,'2019-01-25 14:14:05.000000',9,1),(1825,'https://www.aplustechart.com/test',101,101001,'越众棋牌 APP 下载',0,'','','',0,'2019-01-27 14:34:40.000000',9,1),(1826,'https://aplustechart.com/test',101,101001,'越众棋牌 APP 下载',0,'','','',0,'2019-01-27 14:34:40.000000',9,1),(1827,'https://app2.fanyingsh.com/test',12,29,'无法续费，弃用',0,'','','',0,'2019-01-27 17:25:53.000000',NULL,1),(1828,'https://app3.fanyingsh.com/test',12,29,'无法续费，弃用',0,'','','',0,'2019-02-04 14:56:35.000000',NULL,1),(1829,'https://app.91yzl.com/test',12,29,'凤凰APP CDN域名',1,'','','',0,'2019-02-08 17:07:32.000000',NULL,1),(1830,'https://6686cp.com',27,36,'瑞银彩票',1,'','','',0,'2019-02-21 20:39:13.000000',11,1),(1831,'https://www.6686cp.com/?demo=1&game_code=51',27,36,'瑞银彩票',1,'','','',0,'2019-02-21 20:39:13.000000',11,1),(1832,'https://mcp3535.com',12,9,'3535彩票',1,'','','',0,'2019-02-21 20:41:52.000000',1,1),(1833,'https://www.mcp3535.com',12,9,'3535彩票',1,'','','',0,'2019-02-21 20:41:52.000000',1,1),(1834,'https://2805r.com',12,6,'',1,'','','',0,'2019-03-03 20:29:21.000000',NULL,1),(1835,'https://www.2805r.com',12,6,'',1,'','','',0,'2019-03-03 20:29:21.000000',NULL,1),(1836,'http://manage.uc222.co',12,7,'',0,'','','',0,'2019-03-09 17:35:17.000000',1,1),(1837,'http://manage.alcp08.com',12,1,'',0,'','','',0,'2019-03-09 17:56:08.000000',3,1),(1838,'http://manage.gdcp158.com',12,2,'',0,'','','',0,'2019-03-09 17:56:53.000000',4,1),(1839,'http://manage.hdcp018.com',12,34,'',0,'','','',0,'2019-03-09 17:57:19.000000',10,1),(1840,'http://manage.caitou999.com',12,4,'',0,'','','',0,'2019-03-09 17:57:43.000000',1,1),(1841,'http://manage.208608.com',12,6,'',0,'','','',0,'2019-03-09 17:58:12.000000',5,1),(1842,'http://manage.le064.com',12,3,'',0,'','','',0,'2019-03-09 17:58:43.000000',2,1),(1843,'http://manage.ag99999.cc',12,7,'',0,'','','',0,'2019-03-09 17:59:03.000000',9,1),(1844,'http://manage.et533.com',12,23,'',0,'','','',0,'2019-03-09 17:59:30.000000',9,1),(1845,'http://manage.fx5533.com',12,42,'',0,'','','',0,'2019-03-09 17:59:53.000000',9,1),(1846,'http://manage.2222789.com',12,40,'',0,'','','',0,'2019-03-09 18:00:11.000000',9,1),(1847,'http://manage.6686cp.com',12,36,'',0,'','','',0,'2019-03-09 18:00:37.000000',11,1),(1848,'http://manage.8868hgcp.com',12,37,'',0,'','','',0,'2019-03-09 18:00:54.000000',6,1),(1849,'http://manage.338caip.com',12,13,'',0,'','','',0,'2019-03-09 18:01:11.000000',9,1),(1850,'http://manage.ldccp999.com',12,21,'',0,'','','',0,'2019-03-09 18:01:35.000000',7,1),(1851,'http://manage.mcp3535.com',12,9,'',0,'','','',0,'2019-03-09 18:01:50.000000',1,1),(1852,'http://manage.cp9393.co',12,8,'',0,'','','',0,'2019-03-09 18:02:10.000000',9,1),(1853,'http://manage.cp1717.cc',12,19,'',0,'','','',0,'2019-03-09 18:02:26.000000',9,1),(1854,'https://52tmnbg.cn',12,4,'',0,'','','',0,'2019-03-22 21:18:29.000000',NULL,1),(1855,'https://www.52tmnbg.cn',12,4,'',0,'','','',0,'2019-03-22 21:18:29.000000',NULL,1),(1856,'https://androidapi1.alcp188.com',12,1,'',1,'','','',0,'2019-04-02 12:29:01.000000',NULL,2),(1857,'https://le714.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1858,'https://le717.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1859,'https://le721.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1860,'https://le722.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1861,'https://le723.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1862,'https://le725.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1863,'https://le726.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1864,'https://le727.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1865,'https://le730.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1866,'https://le731.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1867,'https://le732.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1868,'https://le734.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1869,'https://le735.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1870,'https://le736.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1871,'https://le737.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1872,'https://le739.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1874,'https://www.le714.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1875,'https://www.le717.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1876,'https://www.le721.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1877,'https://www.le722.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1878,'https://www.le723.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1879,'https://www.le725.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1880,'https://www.le726.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1881,'https://www.le727.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1882,'https://www.le730.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1883,'https://www.le731.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1884,'https://www.le732.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1885,'https://www.le734.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1886,'https://www.le735.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1887,'https://www.le736.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1888,'https://www.le737.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1889,'https://www.le739.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1890,'https://vip.le714.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1891,'https://vip.le717.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1892,'https://vip.le721.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1893,'https://vip.le722.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1894,'https://vip.le723.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1895,'https://vip.le725.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1896,'https://vip.le726.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1897,'https://vip.le727.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1898,'https://vip.le730.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1899,'https://vip.le731.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1900,'https://vip.le732.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1901,'https://vip.le734.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1902,'https://vip.le735.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1903,'https://vip.le736.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1904,'https://vip.le737.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1905,'https://vip.le739.com',12,3,'',1,'','','',0,'2019-04-07 19:36:37.000000',NULL,1),(1906,'https://wap.le714.com',12,3,'',1,'','','',0,'2019-04-07 19:37:07.000000',NULL,2),(1907,'https://wap.le717.com',12,3,'',1,'','','',0,'2019-04-07 19:37:07.000000',NULL,2),(1908,'https://wap.le721.com',12,3,'',1,'','','',0,'2019-04-07 19:37:07.000000',NULL,2),(1909,'https://wap.le722.com',12,3,'',1,'','','',0,'2019-04-07 19:37:07.000000',NULL,2),(1910,'https://wap.le723.com',12,3,'',1,'','','',0,'2019-04-07 19:37:07.000000',NULL,2),(1911,'https://wap.le725.com',12,3,'',1,'','','',0,'2019-04-07 19:37:07.000000',NULL,2),(1912,'https://wap.le726.com',12,3,'',1,'','','',0,'2019-04-07 19:37:07.000000',NULL,2),(1913,'https://wap.le727.com',12,3,'',1,'','','',0,'2019-04-07 19:37:07.000000',NULL,2),(1914,'https://wap.le730.com',12,3,'',1,'','','',0,'2019-04-07 19:37:07.000000',NULL,2),(1915,'https://wap.le731.com',12,3,'',1,'','','',0,'2019-04-07 19:37:07.000000',NULL,2),(1916,'https://wap.le732.com',12,3,'',1,'','','',0,'2019-04-07 19:37:07.000000',NULL,2),(1917,'https://wap.le734.com',12,3,'',1,'','','',0,'2019-04-07 19:37:07.000000',NULL,2),(1918,'https://wap.le735.com',12,3,'',1,'','','',0,'2019-04-07 19:37:07.000000',NULL,2),(1919,'https://wap.le736.com',12,3,'',1,'','','',0,'2019-04-07 19:37:07.000000',NULL,2),(1920,'https://wap.le737.com',12,3,'',1,'','','',0,'2019-04-07 19:37:07.000000',NULL,2),(1921,'https://wap.le739.com',12,3,'',1,'','','',0,'2019-04-07 19:37:07.000000',NULL,2),(1922,'https://gdcp408.com',12,2,'',1,'','','',0,'2019-04-22 16:43:01.000000',NULL,1),(1923,'https://www.gdcp408.com',12,2,'',1,'','','',0,'2019-04-22 16:43:02.000000',NULL,1),(1925,'https://11hg8868.com',16,37,'',1,'','','',0,'2019-04-24 17:23:05.000000',NULL,1),(1926,'https://22hg8868.com',16,37,'',1,'','','',0,'2019-04-24 17:23:05.000000',NULL,1),(1927,'https://33hg8868.com',16,37,'',1,'','','',0,'2019-04-24 17:23:05.000000',NULL,1),(1928,'https://www.11hg8868.com',16,37,'',1,'','','',0,'2019-04-24 17:23:05.000000',NULL,1),(1929,'https://www.22hg8868.com',16,37,'',1,'','','',0,'2019-04-24 17:23:05.000000',NULL,1),(1930,'https://www.33hg8868.com',16,37,'',1,'','','',0,'2019-04-24 17:23:05.000000',NULL,1),(1931,'http://8868hh.net',16,37,'',1,'','','',0,'2019-04-24 17:23:05.000000',NULL,1),(1932,'http://8868hh.me',16,37,'',1,'','','',0,'2019-04-24 17:23:05.000000',NULL,1),(1933,'https://8868sky.org',16,37,'解析取消',0,'','','',0,'2019-04-24 17:23:05.000000',NULL,1),(1934,'http://www.8868hh.net',16,37,'',1,'','','',0,'2019-04-24 17:23:05.000000',NULL,1),(1935,'http://www.8868hh.me',16,37,'',1,'','','',0,'2019-04-24 17:23:05.000000',NULL,1),(1936,'https://www.8868sky.org',16,37,'解析取消',0,'','','',0,'2019-04-24 17:23:05.000000',NULL,1),(1938,'http://paytest.apple.yzqp66.net',101,29,'',1,'','','',0,'2019-05-07 11:06:00.000000',NULL,1),(1939,'http://pay.eqqp11.com',101,29,'',1,'','','',0,'2019-05-07 11:06:00.000000',NULL,1),(1940,'http://pay.apple.yzqp66.net',101,29,'',1,'','','',0,'2019-05-07 11:06:00.000000',NULL,1),(1942,'https://apiad.567mcp.vip',12,40,'',1,'','','',0,'2019-06-02 17:16:29.000000',NULL,1),(1943,'https://apiios.567mcp.vip',12,40,'',1,'','','',0,'2019-06-02 17:16:29.000000',NULL,1),(1944,'https://567mcp.cc',12,40,'',1,'','','',0,'2019-06-02 17:16:29.000000',NULL,1),(1945,'https://www.567mcp.cc',12,40,'',1,'','','',0,'2019-06-02 17:16:29.000000',NULL,1),(1946,'https://567mcp.net',12,40,'',1,'','','',0,'2019-06-02 17:16:29.000000',NULL,1),(1947,'https://www.567mcp.net',12,40,'',1,'','','',0,'2019-06-02 17:16:29.000000',NULL,1),(1948,'https://3333668.com',12,40,'',1,'','','',0,'2019-06-02 17:16:29.000000',NULL,1),(1949,'https://www.3333668.com',12,40,'',1,'','','',0,'2019-06-02 17:16:29.000000',NULL,1),(1950,'https://6996699.com',12,40,'',1,'','','',0,'2019-06-02 17:16:29.000000',NULL,1),(1951,'https://www.6996699.com',12,40,'',1,'','','',0,'2019-06-02 17:16:29.000000',NULL,1),(1952,'https://6777788.com',12,40,'',1,'','','',0,'2019-06-02 17:16:29.000000',NULL,1),(1953,'https://www.6777788.com',12,40,'',1,'','','',0,'2019-06-02 17:16:29.000000',NULL,1),(1954,'https://9776655.com',12,40,'',1,'','','',0,'2019-06-02 17:16:29.000000',NULL,1),(1955,'https://www.9776655.com',12,40,'',1,'','','',0,'2019-06-02 17:16:29.000000',NULL,1),(1956,'https://6887766.com',12,40,'',1,'','','',0,'2019-06-02 17:16:29.000000',NULL,1),(1957,'https://www.6887766.com',12,40,'',1,'','','',0,'2019-06-02 17:16:29.000000',NULL,1),(1958,'https://8332211.com',12,40,'',1,'','','',0,'2019-06-02 17:16:29.000000',NULL,1),(1959,'https://www.8332211.com',12,40,'',1,'','','',0,'2019-06-02 17:16:29.000000',NULL,1),(1960,'https://3333553.com',12,40,'',1,'','','',0,'2019-06-02 17:16:29.000000',NULL,1),(1961,'https://www.3333553.com',12,40,'',1,'','','',0,'2019-06-02 17:16:29.000000',NULL,1),(1962,'https://6776655.com',12,40,'',1,'','','',0,'2019-06-02 17:16:29.000000',NULL,1),(1963,'https://www.6776655.com',12,40,'',1,'','','',0,'2019-06-02 17:16:29.000000',NULL,1),(1964,'https://www.chatroomtech.com',0,29,'聊天室',1,'','','',0,'2019-06-05 12:22:12.000000',NULL,1),(1965,'https://www.cp171717.com',12,19,'',1,'','','',0,'2019-06-12 19:42:08.000000',NULL,1),(1966,'https://www.1717cp.vip',12,19,'',1,'','','',0,'2019-06-18 14:01:07.000000',NULL,1),(1967,'https://gscp01.com',26,31,'',0,'','','',0,'2019-06-27 14:52:30.000000',9,5),(1968,'https://www.gscp01.com',26,31,'',0,'','','',0,'2019-06-27 14:52:30.000000',9,5),(1969,'https://gscp02.com',26,31,'',0,'','','',0,'2019-06-27 14:52:30.000000',9,5),(1970,'https://www.gscp02.com',26,31,'',0,'','','',0,'2019-06-27 14:52:30.000000',9,5),(1971,'https://gscp03.com',26,31,'',0,'','','',0,'2019-06-27 14:52:30.000000',9,5),(1972,'https://www.gscp03.com',26,31,'',0,'','','',0,'2019-06-27 14:52:30.000000',9,5),(1973,'https://gscp04.com',26,31,'',0,'','','',0,'2019-06-27 14:52:30.000000',9,5),(1974,'https://www.gscp04.com',26,31,'',0,'','','',0,'2019-06-27 14:52:30.000000',9,5),(1975,'https://gscp05.com',26,31,'',0,'','','',0,'2019-06-27 14:52:30.000000',9,5),(1976,'https://www.gscp05.com',26,31,'',0,'','','',0,'2019-06-27 14:52:30.000000',9,5),(1977,'https://gscp09.com',26,31,'',0,'','','',0,'2019-06-27 14:52:30.000000',9,5),(1978,'https://www.gscp09.com',26,31,'',0,'','','',0,'2019-06-27 14:52:30.000000',9,5),(1979,'http://gscp06.com',26,31,'',0,'','','',0,'2019-06-27 14:52:30.000000',9,5),(1980,'http://www.gscp06.com',26,31,'',0,'','','',0,'2019-06-27 14:52:30.000000',9,5),(1981,'http://gscp07.com',26,31,'',0,'','','',0,'2019-06-27 14:52:30.000000',9,5),(1982,'http://www.gscp07.com',26,31,'',0,'','','',0,'2019-06-27 14:52:30.000000',9,5),(1983,'https://hx5501.com/',12,121001,'',1,'','','',0,'2019-08-09 16:59:24.000000',NULL,1),(1984,'https://www.hx5501.com/',12,121001,'',1,'','','',0,'2019-08-09 16:59:55.000000',NULL,1),(1985,'https://hx5506.com/',12,121001,'',1,'','','',0,'2019-08-09 17:03:28.000000',NULL,1),(1986,'https://www.hx5506.com/',12,121001,'',1,'','','',0,'2019-08-09 17:03:48.000000',NULL,1),(1987,'https://www.hx5508.com/',12,121001,'',1,'','','',0,'2019-08-09 17:05:53.000000',NULL,1),(1988,'https://hx5508.com/',12,121001,'',1,'','','',0,'2019-08-09 17:06:13.000000',NULL,1),(1989,'https://hx8801.com/',12,121001,'',1,'','','',0,'2019-08-09 17:06:35.000000',NULL,1),(1990,'https://www.hx8801.com/',12,121001,'',1,'','','',0,'2019-08-09 17:06:46.000000',NULL,1),(1991,'https://www.hx8802.com/',12,121001,'',1,'','','',0,'2019-08-09 17:10:19.000000',NULL,1),(1992,'https://hx8802.com/',12,121001,'',1,'','','',0,'2019-08-09 17:10:33.000000',NULL,1),(1993,'https://hx8803.com/',12,121001,'',1,'','','',0,'2019-08-09 17:10:52.000000',NULL,1),(1994,'https://www.hx8803.com/',12,121001,'',1,'','','',0,'2019-08-09 17:11:07.000000',NULL,1),(1995,'https://www.hx8805.com/',12,121001,'',1,'','','',0,'2019-08-09 17:11:28.000000',NULL,1),(1996,'https://hx8805.com/',12,121001,'',1,'','','',0,'2019-08-09 17:11:40.000000',NULL,1),(1997,'https://hx8806.com/',12,121001,'',1,'','','',0,'2019-08-09 17:12:22.000000',NULL,1),(1998,'https://www.hx8806.com/',12,121001,'',1,'','','',0,'2019-08-09 17:12:33.000000',NULL,1),(1999,'https://hx8807.com/',12,121001,'',1,'','','',0,'2019-08-09 17:12:56.000000',NULL,1),(2000,'https://www.hx8807.com/',12,121001,'',1,'','','',0,'2019-08-09 17:13:09.000000',NULL,1),(2001,'https://hx8809.com/',12,121001,'',1,'','','',0,'2019-08-09 17:13:27.000000',NULL,1),(2002,'https://www.hx8809.com/',12,121001,'',1,'','','',0,'2019-08-09 17:13:40.000000',NULL,1),(2003,'https://m85.com',12,1,'',1,'','','',0,'2019-08-10 17:23:47.000000',NULL,1),(2004,'https://www.m85.com',12,1,'',1,'','','',0,'2019-08-10 17:23:47.000000',NULL,1),(2005,'https://www.al6677.com/',12,1,'',1,'','','',0,'2019-08-14 14:16:37.000000',NULL,1),(2006,'https://uc078.com',12,7,'',1,'','','',0,'2019-08-15 16:20:50.000000',NULL,1),(2007,'https://www.uc078.com',12,7,'',1,'','','',0,'2019-08-15 16:23:41.000000',NULL,1),(2009,'https://image.cdn3721.com',0,29,'',1,'','','',0,'2019-08-26 13:55:53.000000',1,1),(2010,'https://ucqipai888.uc074.com',12,7,'UC家聯發棋牌',1,'','','',0,'2019-08-27 21:24:08.000000',1,1),(2011,'http://h1717.net.co',12,19,'',1,'','','',0,'2019-09-02 14:23:31.000000',NULL,1),(2012,'http://www.h1717.net.co',12,19,'',1,'','','',0,'2019-09-02 14:23:31.000000',NULL,1),(2013,'https://216933.com',12,3,'熊猫棋牌',1,'','','',0,'2019-09-04 14:04:10.000000',17,1),(2014,'https://www.216933.com',12,3,'熊猫棋牌',1,'','','',0,'2019-09-04 14:04:10.000000',17,1),(2015,'https://2165599.com',12,3,'熊猫棋牌',1,'','','',0,'2019-09-04 14:04:10.000000',17,1),(2016,'https://www.2165599.com',12,3,'熊猫棋牌',1,'','','',0,'2019-09-04 14:04:10.000000',17,1),(2017,'https://2168866.com',12,3,'熊猫棋牌',1,'','','',0,'2019-09-04 14:04:10.000000',17,1),(2018,'https://www.2168866.com',12,3,'熊猫棋牌',1,'','','',0,'2019-09-04 14:04:10.000000',17,1),(2019,'http://manage.hxcp995.com/',12,121001,'',1,'','','',0,'2019-09-11 16:56:16.000000',NULL,1),(2020,'https://hdh5manage.hd798.com',12,34,'H5棋牌後台用，需續費',1,'','','',0,'2019-09-18 20:47:09.000000',10,1),(2021,'https://www.al858.com/',12,1,'',1,'','','',0,'2019-09-19 17:35:04.000000',NULL,1),(2022,'https://www.al881.com/',12,1,'',1,'','','',0,'2019-09-19 17:35:40.000000',NULL,1),(2023,'https://www.al882.com/',12,1,'',1,'','','',0,'2019-09-19 17:36:02.000000',NULL,1),(2024,'https://www.al883.com/',12,1,'',1,'','','',0,'2019-09-19 17:36:24.000000',NULL,1),(2025,'https://www.t0327.com/',12,1,'',1,'','','',0,'2019-09-23 14:10:34.000000',NULL,1),(2026,'https://www.t0328.com/',12,1,'',1,'','','',0,'2019-09-23 14:14:12.000000',NULL,1),(2029,'https://www.567mcp.com/',12,40,'567bet 主站',1,'','','',0,'2019-09-30 10:07:50.000000',1,1),(2033,'https://567mcp.com',12,40,'',0,'','','',0,'2019-10-03 05:15:08.944910',NULL,1);
/*!40000 ALTER TABLE `domainns_domaintb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domainns_domaintb_cdn`
--

DROP TABLE IF EXISTS `domainns_domaintb_cdn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domainns_domaintb_cdn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domaintb_id` int(11) NOT NULL,
  `cdnaccounttb_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `domainns_domains_cdn_domains_id_cdn_account_t_id_ac479b79_uniq` (`domaintb_id`,`cdnaccounttb_id`),
  KEY `domainns_domains_cdn_cdnaccounttb_id_298e8271_fk_domainns_` (`cdnaccounttb_id`),
  CONSTRAINT `domainns_domains_cdn_cdnaccounttb_id_298e8271_fk_domainns_` FOREIGN KEY (`cdnaccounttb_id`) REFERENCES `domainns_cdnaccounttb` (`id`),
  CONSTRAINT `domainns_domaintb_cd_domaintb_id_b3db1b02_fk_domainns_` FOREIGN KEY (`domaintb_id`) REFERENCES `domainns_domaintb` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domainns_domaintb_cdn`
--

LOCK TABLES `domainns_domaintb_cdn` WRITE;
/*!40000 ALTER TABLE `domainns_domaintb_cdn` DISABLE KEYS */;
INSERT INTO `domainns_domaintb_cdn` VALUES (132,2029,7);
/*!40000 ALTER TABLE `domainns_domaintb_cdn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saltstack_minioniptb`
--

DROP TABLE IF EXISTS `saltstack_minioniptb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saltstack_minioniptb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `minion_id` varchar(32) NOT NULL,
  `ip_addr` char(39) NOT NULL,
  `alive` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `saltstack_minioniptb_minion_id_ip_addr_fa8019f2_uniq` (`minion_id`,`ip_addr`)
) ENGINE=InnoDB AUTO_INCREMENT=391 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saltstack_minioniptb`
--

LOCK TABLES `saltstack_minioniptb` WRITE;
/*!40000 ALTER TABLE `saltstack_minioniptb` DISABLE KEYS */;
INSERT INTO `saltstack_minioniptb` VALUES (1,'CP_NG_HK_179_204','116.206.179.204',1,0),(2,'CP_NG_HK_179_204','116.206.179.205',1,0),(3,'CP_NG_HK_179_204','116.206.179.206',1,0),(4,'CP_NG_HK_42_48','207.148.42.48',1,1),(5,'CP_NG_HK_42_48','207.148.42.49',1,1),(6,'CP_NG_HK_42_48','207.148.42.50',1,1),(7,'CP_NG_HK_8_82','180.178.43.14',1,1),(8,'CP_NG_HK_8_82','180.178.43.13',1,1),(9,'CP_NG_HK_8_82','180.178.43.12',1,1),(10,'CP_NG_HK_8_82','180.178.43.11',1,1),(11,'CP_NG_HK_8_82','180.178.43.10',1,1),(12,'CP_NG_HK_160_59','103.40.160.59',1,1),(13,'CP_NG_HK_160_59','103.40.160.60',1,1),(14,'CP_NG_HK_160_59','103.40.160.61',1,1),(15,'CP_NG_HK_83_36','119.47.83.36',0,0),(16,'CP_NG_HK_83_36','119.47.83.78',1,1),(17,'CP_NG_HK_83_36','119.47.83.102',1,1),(18,'CP_NG_HK_83_36','119.47.83.129',1,0),(19,'CP_NG_HK_83_36','119.47.83.166',1,1),(20,'CP_NG_HK_85_10','182.16.85.10',1,1),(21,'CP_NG_HK_85_10','182.16.85.11',1,1),(22,'CP_NG_HK_85_10','182.16.85.12',1,1),(23,'CP_NG_HK_85_10','182.16.85.13',1,1),(24,'CP_NG_HK_85_10','182.16.85.14',1,1),(25,'CP_NG_HK_137_13','103.248.137.13',1,1),(26,'CP_NG_HK_137_13','103.248.137.14',1,1),(27,'CP_NG_HK_137_13','103.248.137.15',1,1),(28,'HT_NG_HK_55_50','182.16.55.50',1,1),(29,'HT_NG_HK_55_50','182.16.55.51',1,1),(30,'HT_NG_HK_55_50','182.16.55.52',1,1),(31,'HT_NG_HK_55_50','182.16.55.53',1,1),(32,'HT_NG_HK_55_50','182.16.55.54',1,1),(33,'HT_NG_HK_84_74','182.16.84.74',1,1),(34,'HT_NG_HK_84_74','182.16.84.75',1,1),(35,'HT_NG_HK_84_74','182.16.84.76',1,1),(36,'HT_NG_HK_84_74','182.16.84.77',1,1),(37,'HT_NG_HK_84_74','182.16.84.78',1,1),(38,'SP_NG_HK_173_3','69.160.173.3',1,1),(39,'SP_NG_HK_173_3','69.160.173.4',1,1),(40,'SP_NG_HK_173_3','69.160.173.5',1,1),(41,'SP_NG_HK_55_122','110.173.55.122',1,1),(42,'SP_NG_HK_55_122','110.173.55.123',1,1),(43,'SP_NG_HK_55_122','110.173.55.124',1,1),(44,'SP_NG_HK_55_122','110.173.55.125',1,1),(45,'SP_NG_HK_55_122','110.173.55.126',1,1),(46,'SP_NG_HK_91_122','182.16.91.122',1,1),(47,'SP_NG_HK_91_122','182.16.91.123',1,1),(48,'SP_NG_HK_91_122','182.16.91.124',1,1),(49,'SP_NG_HK_91_122','182.16.91.125',1,1),(50,'SP_NG_HK_91_122','182.16.91.126',1,1),(51,'JAVATEST_TOMCAT_HK_153_113','103.71.153.113',1,1),(52,'JAVATEST_TOMCAT_HK_153_113','103.71.153.173',1,1),(53,'JAVATEST_TOMCAT_HK_153_113','103.71.153.180',1,1),(54,'IMAGE_NG_HK_33_76','207.148.33.76',1,1),(55,'IMAGE_NG_HK_33_76','207.148.33.77',1,1),(56,'IMAGE_NG_HK_33_76','207.148.33.78',1,1),(57,'PUB_DNS_HK_181_165','103.243.181.165',1,1),(58,'DXGGZ_NG_HK_153_74','103.71.153.74',1,1),(59,'DXGGZ_NG_HK_153_74','103.71.153.185',1,1),(60,'DXGGZ_NG_HK_153_74','103.71.153.245',1,1),(61,'SPGGZ_NG_US_254_108','45.61.254.108',1,1),(62,'SPGGZ_NG_US_254_108','45.61.254.109',1,1),(63,'SPGGZ_NG_US_254_108','45.61.254.116',1,1),(64,'SPGGZ_NG_US_254_108','45.61.254.118',1,1),(65,'JAVA_NG_HK_33_71','118.99.33.71',1,1),(66,'JAVA_NG_HK_33_71','118.99.33.72',1,0),(67,'JAVA_NG_HK_33_71','118.99.33.73',1,1),(68,'JAVA_NG_HK_33_71','118.99.33.74',1,1),(69,'JAVA_NG_HK_33_71','118.99.33.75',1,1),(70,'JAVA_NG_HK_83_86','119.47.83.85',1,1),(71,'JAVA_NG_HK_83_86','119.47.83.87',1,1),(72,'JAVA_NG_HK_83_86','119.47.83.88',1,1),(73,'JAVA_NG_HK_83_86','119.47.83.89',1,1),(74,'JAVA_NG_HK_83_86','119.47.83.90',1,1),(75,'YSHT_NG_HK_9_22','103.233.8.92',1,1),(76,'YSHT_NG_HK_9_22','103.233.8.89',1,1),(77,'YSHT_NG_HK_77_181','103.30.77.181',1,1),(78,'YSHT_NG_HK_77_181','103.30.77.182',1,1),(79,'YSHT_NG_HK_77_181','103.30.77.183',1,1),(80,'YS_NG_HK_44_202','103.255.44.202',1,1),(81,'YS_NG_HK_44_202','103.255.44.205',1,1),(82,'YS_NG_HK_40_76','207.148.40.76',1,1),(83,'YS_NG_HK_40_76','207.148.40.77',1,1),(84,'YS_NG_HK_40_76','207.148.40.78',1,1),(85,'YS_NG_HK_84_110','202.61.84.110',1,1),(86,'YS_NG_HK_84_110','202.61.84.109',1,1),(87,'YS_NG_HK_94_40','103.24.94.40',1,1),(88,'YS_NG_HK_94_40','103.24.94.41',1,1),(89,'YS_NG_HK_94_40','103.24.94.42',1,1),(90,'YS_NG_HK_8_92','103.233.8.92',1,1),(91,'YS_NG_HK_8_92','103.233.8.89',1,0),(92,'RYHT_NG_HK_2_194','122.9.2.194',1,1),(93,'RYHT_NG_HK_2_194','122.9.2.195',1,1),(94,'RYHT_NG_HK_2_194','122.9.2.196',1,1),(95,'RYHT_NG_HK_2_194','122.9.2.197',1,1),(96,'RYHT_NG_HK_2_194','122.9.2.198',1,1),(97,'RYHT_NG_HK_83_53','119.47.83.51',1,1),(98,'RYHT_NG_HK_83_53','119.47.83.52',1,1),(99,'RYHT_NG_HK_83_53','119.47.83.53',1,1),(100,'RYHT_NG_HK_83_53','119.47.83.54',1,1),(101,'RYHT_NG_HK_83_53','119.47.83.55',1,1),(102,'RYCP_NG_HK_97_82','182.16.97.82',1,1),(103,'RYCP_NG_HK_97_82','182.16.97.83',1,1),(104,'RYCP_NG_HK_97_82','182.16.97.84',1,1),(105,'RYCP_NG_HK_97_82','182.16.97.85',1,1),(106,'RYCP_NG_HK_97_82','182.16.97.86',1,1),(107,'RYCP_NG_HK_8_90','182.16.8.90',1,1),(108,'RYCP_NG_HK_8_90','182.16.8.91',1,1),(109,'RYCP_NG_HK_8_90','182.16.8.92',1,1),(110,'RYCP_NG_HK_8_90','182.16.8.93',1,1),(111,'RYCP_NG_HK_8_90','182.16.8.94',1,1),(112,'RYCP_NG_HK_136_171','47.52.136.171',1,1),(113,'RYCP_NG_HK_100_71','47.52.100.71',1,1),(114,'RYCP_NG_HK_79_130','182.16.79.130',1,1),(115,'RYCP_NG_HK_79_130','182.16.79.131',1,1),(116,'RYCP_NG_HK_79_130','182.16.79.132',1,1),(117,'RYCP_NG_HK_79_130','182.16.79.133',1,1),(118,'RYCP_NG_HK_79_130','182.16.79.134',1,1),(119,'RYPAY_NG_HK_174_92','103.193.174.92',1,1),(120,'RYPAY_NG_HK_174_92','103.193.174.103',1,1),(121,'RYPAY_NG_HK_174_92','103.193.174.112',1,1),(122,'RYPAY_NG_HK_153_108','47.52.153.108',1,1),(123,'RY_NG_HK_62_31','118.99.62.31',1,1),(124,'RY_NG_HK_62_31','118.99.62.32',1,1),(125,'RY_NG_HK_62_31','118.99.62.33',1,1),(126,'RY_NG_HK_62_31','118.99.62.34',1,1),(127,'RY_NG_HK_62_31','118.99.62.35',1,1),(128,'RY_NG_HK_77_83','103.94.77.83',1,1),(129,'RY_NG_HK_77_83','103.94.77.84',1,1),(130,'RY_NG_HK_77_83','103.94.77.85',1,1),(131,'RY_NG_HK_77_83','103.94.77.93',1,1),(132,'RY_NG_HK_77_83','103.94.77.94',1,1),(133,'RY_NG_HK_50_34','182.16.50.34',1,1),(134,'RY_NG_HK_50_34','182.16.50.35',1,1),(135,'RY_NG_HK_50_34','182.16.50.36',1,1),(136,'RY_NG_HK_50_34','182.16.50.37',1,1),(137,'RY_NG_HK_50_34','182.16.50.38',1,1),(138,'RY_NG_HK_33_146','118.99.33.146',1,1),(139,'RY_NG_HK_33_146','118.99.33.147',1,1),(140,'RY_NG_HK_33_146','118.99.33.148',1,1),(141,'RY_NG_HK_33_146','118.99.33.149',1,1),(142,'RY_NG_HK_33_146','118.99.33.150',1,1),(143,'RY_NG_HK_46_105','118.99.46.105',1,1),(144,'RY_NG_HK_46_105','118.99.46.106',1,1),(145,'RY_NG_HK_46_105','118.99.46.107',1,1),(146,'RY_NG_HK_46_105','118.99.46.108',1,1),(147,'RY_NG_HK_46_105','118.99.46.109',1,1),(148,'RY_NG_HK_179_5','116.206.179.5',1,1),(149,'RY_NG_HK_179_5','116.206.179.6',1,1),(150,'RY_NG_HK_179_5','116.206.179.7',1,1),(151,'RY_NG_HK_33_161','118.99.33.161',1,1),(152,'RY_NG_HK_33_161','118.99.33.162',1,1),(153,'RY_NG_HK_33_161','118.99.33.163',1,1),(154,'RY_NG_HK_33_161','118.99.33.164',1,1),(155,'RY_NG_HK_33_161','118.99.33.165',1,1),(156,'RY_NG_HK_187_122','112.121.187.122',1,1),(157,'RY_NG_HK_187_122','112.121.187.123',1,1),(158,'RY_NG_HK_187_122','112.121.187.124',1,1),(159,'RY_NG_HK_187_122','112.121.187.125',1,1),(160,'RY_NG_HK_187_122','112.121.187.126',1,1),(161,'RY_NG_HK_33_56','118.99.33.56',1,1),(162,'RY_NG_HK_33_56','118.99.33.57',1,1),(163,'RY_NG_HK_33_56','118.99.33.58',1,1),(164,'RY_NG_HK_33_56','118.99.33.59',1,1),(165,'RY_NG_HK_33_56','118.99.33.60',1,1),(166,'SPTEST_NG_HK_40_94','207.148.40.94',1,1),(167,'SPTEST_NG_HK_40_94','207.148.40.95',1,1),(168,'SPTEST_NG_HK_40_94','207.148.40.96',1,1),(169,'YS_NG_HK_64_71','110.92.64.71',1,1),(170,'YS_NG_HK_64_71','110.92.64.78',1,1),(171,'YS_NG_HK_64_71','110.92.64.80',1,1),(172,'YS_NG_HK_64_71','110.92.64.82',1,1),(173,'YS_NG_HK_64_71','110.92.64.91',1,1),(174,'YSGGZ_APA_HK_5_34','122.9.5.34',1,1),(175,'YSGGZ_APA_HK_5_34','122.9.5.35',1,1),(176,'YSGGZ_APA_HK_5_34','122.9.5.36',1,1),(177,'YSGGZ_APA_HK_5_34','122.9.5.37',1,1),(178,'YSGGZ_APA_HK_5_34','122.9.5.38',1,1),(179,'DX_APA_TW_148_197','202.65.216.196',1,1),(180,'DX_APA_TW_148_197','115.85.148.197',1,1),(181,'DX_APA_TW_148_211','115.85.148.211',1,1),(182,'DX_APA_TW_148_211','202.65.216.204',1,1),(183,'DX_DBS_TW_148_215','202.65.216.206',1,1),(184,'DX_DBS_TW_148_215','115.85.148.215',1,1),(185,'LE7_DBS_TW_148_199','202.65.216.197',1,1),(186,'LE7_DBS_TW_148_199','115.85.148.199',1,1),(187,'YJF_APA_HK_239_10','52.128.239.10',1,1),(188,'YJF_APA_HK_239_10','52.128.239.11',1,1),(189,'YJF_APA_HK_239_10','52.128.239.12',1,1),(190,'YJF_APA_HK_239_10','52.128.239.13',1,1),(191,'YJF_APA_HK_239_10','52.128.239.14',1,1),(192,'YJF_DB_HK_47_154','180.178.47.154',1,1),(193,'YJF_DB_HK_47_154','180.178.47.155',1,1),(194,'YJF_DB_HK_47_154','180.178.47.156',1,1),(195,'YJF_DB_HK_47_154','180.178.47.157',1,1),(196,'YJF_DB_HK_47_154','180.178.47.158',1,1),(197,'YSHT_NG_HK_169_9','69.160.169.9',1,1),(198,'YSHT_NG_HK_169_9','69.160.169.10',1,1),(199,'YSHT_NG_HK_169_9','69.160.169.11',1,1),(200,'PUB_LOG_HK_22_96','118.99.22.96',1,1),(201,'PUB_LOG_HK_22_96','118.99.22.97',1,1),(202,'PUB_LOG_HK_22_96','118.99.22.98',1,1),(203,'PUB_LOG_HK_22_96','118.99.22.99',1,1),(204,'PUB_LOG_HK_22_96','118.99.22.100',1,1),(205,'RY_NG_HK_62_172','103.99.62.172',1,1),(206,'RY_NG_HK_62_172','103.99.62.212',1,1),(207,'RY_NG_HK_62_172','103.99.62.242',1,1),(208,'YSGGZ_NG_HK_146_89','103.115.146.89',1,1),(209,'YSGGZ_NG_HK_146_89','103.115.146.90',1,1),(210,'YSGGZ_NG_HK_146_89','103.115.146.91',1,1),(211,'JAVATEST_DBS_HK_5_218','111.68.5.218',1,1),(212,'JAVATEST_DBS_HK_5_218','111.68.5.219',1,1),(213,'JAVATEST_DBS_HK_5_218','111.68.5.220',1,1),(214,'JAVATEST_DBS_HK_5_218','111.68.5.221',1,1),(215,'JAVATEST_DBS_HK_5_218','111.68.5.222',1,1),(216,'JAVATEST_DBM_HK_6_10','111.68.6.10',1,1),(217,'JAVATEST_DBM_HK_6_10','111.68.6.11',1,1),(218,'JAVATEST_DBM_HK_6_10','111.68.6.12',1,1),(219,'JAVATEST_DBM_HK_6_10','111.68.6.13',1,1),(220,'JAVATEST_DBM_HK_6_10','111.68.6.14',1,1),(221,'JAVA_NODEJS_HK_77_146','182.16.77.146',1,1),(222,'JAVA_NODEJS_HK_77_146','182.16.77.147',1,1),(223,'JAVA_NODEJS_HK_77_146','182.16.77.148',1,1),(224,'JAVA_NODEJS_HK_77_146','182.16.77.149',1,1),(225,'JAVA_NODEJS_HK_77_146','182.16.77.150',1,1),(226,'JAVA_TOMCAT_HK_231_114','216.118.231.114',1,1),(227,'JAVA_TOMCAT_HK_231_114','216.118.231.115',1,1),(228,'JAVA_TOMCAT_HK_231_114','216.118.231.116',1,1),(229,'JAVA_TOMCAT_HK_231_114','216.118.231.117',1,1),(230,'JAVA_TOMCAT_HK_231_114','216.118.231.118',1,1),(231,'JAVA_DBS_HK_79_98','182.16.79.98',0,0),(232,'JAVA_DBS_HK_79_98','182.16.79.99',0,0),(233,'JAVA_DBS_HK_79_98','182.16.79.100',0,0),(234,'JAVA_DBS_HK_79_98','182.16.79.101',0,0),(235,'JAVA_DBS_HK_79_98','182.16.79.102',0,0),(236,'JAVA_DBM_HK_3_130','182.16.3.130',0,0),(237,'JAVA_DBM_HK_3_130','182.16.3.131',0,0),(238,'JAVA_DBM_HK_3_130','182.16.3.132',0,0),(239,'JAVA_DBM_HK_3_130','182.16.3.133',0,0),(240,'JAVA_DBM_HK_3_130','182.16.3.134',0,0),(241,'RY_NG_HK_242_82','216.118.242.82',1,1),(242,'RY_NG_HK_242_82','216.118.242.83',1,1),(243,'RY_NG_HK_242_82','216.118.242.84',1,1),(244,'RY_NG_HK_242_82','216.118.242.85',1,1),(245,'RY_NG_HK_242_82','216.118.242.86',1,1),(246,'RY_NG_HK_27_170','182.16.27.170',1,1),(247,'RY_NG_HK_27_170','182.16.27.171',1,1),(248,'RY_NG_HK_27_170','182.16.27.172',1,1),(249,'RY_NG_HK_27_170','182.16.27.173',1,1),(250,'RY_NG_HK_27_170','182.16.27.174',1,1),(251,'RYPAY_NG_HK_62_82','180.178.62.82',1,1),(252,'RYPAY_NG_HK_62_82','180.178.62.83',1,1),(253,'RYPAY_NG_HK_62_82','180.178.62.84',1,1),(254,'RYPAY_NG_HK_62_82','180.178.62.85',1,1),(255,'RYPAY_NG_HK_62_82','180.178.62.86',1,1),(256,'RYPAY_NG_HK_112_122','182.16.112.122',1,1),(257,'RYPAY_NG_HK_112_122','182.16.112.123',1,1),(258,'RYPAY_NG_HK_112_122','182.16.112.124',1,1),(259,'RYPAY_NG_HK_112_122','182.16.112.125',1,1),(260,'RYPAY_NG_HK_112_122','182.16.112.126',1,1),(261,'CP_NG_HK_153_89','103.226.153.89',1,1),(262,'CP_NG_HK_153_89','103.226.153.90',1,1),(263,'CP_NG_HK_153_89','103.226.153.91',1,1),(264,'CP_NG_HK_43_240','207.148.43.240',1,1),(265,'CP_NG_HK_43_240','207.148.43.241',1,1),(266,'CP_NG_HK_43_240','207.148.43.242',1,1),(267,'CP_NG_HK_54_119','103.36.54.119',1,1),(268,'CP_NG_HK_54_119','103.36.54.120',1,1),(269,'CP_NG_HK_54_119','103.36.54.121',1,1),(270,'CP_NG_HK_43_219','207.148.43.219',1,1),(271,'CP_NG_HK_43_219','207.148.43.220',1,1),(272,'CP_NG_HK_43_219','207.148.43.221',1,0),(273,'CP_NG_HK_86_181','47.75.92.108',0,1),(274,'CP_NG_HK_86_181','47.75.86.181',1,1),(275,'CP_NG_HK_86_181','47.75.90.28',1,1),(276,'YSGGZ_NG_HK_43_158','207.148.43.158',1,1),(277,'YSGGZ_NG_HK_43_158','207.148.43.159',1,1),(278,'YSGGZ_NG_HK_43_158','207.148.43.160',1,1),(279,'JAVA_NG_HK_52_98','180.178.52.98',1,1),(280,'JAVA_NG_HK_52_98','180.178.52.99',1,1),(281,'JAVA_NG_HK_52_98','180.178.52.100',1,1),(282,'JAVA_NG_HK_52_98','180.178.52.101',1,1),(283,'JAVA_NG_HK_52_98','180.178.52.102',1,1),(284,'JAVA_NG_HK_91_170','182.16.91.170',1,1),(285,'JAVA_NG_HK_91_170','182.16.91.171',1,1),(286,'JAVA_NG_HK_91_170','182.16.91.172',1,1),(287,'JAVA_NG_HK_91_170','182.16.91.173',1,1),(288,'JAVA_NG_HK_91_170','182.16.91.174',1,1),(289,'HT_NG_HK_134_105','43.247.134.105',1,1),(290,'HT_NG_HK_134_105','43.247.134.106',1,1),(291,'HT_NG_HK_134_105','43.247.134.107',1,1),(292,'HT_NG_HK_78_226','103.30.78.226',1,1),(293,'HT_NG_HK_78_226','103.30.78.227',1,1),(294,'HT_NG_HK_78_226','103.30.78.228',1,1),(295,'YS_NG_HK_8_204','66.232.8.204',1,1),(296,'YS_NG_HK_8_204','66.232.8.205',1,1),(297,'YS_NG_HK_8_204','66.232.8.206',1,1),(298,'EQQP_NG_HK_213_193','58.82.213.193',1,1),(299,'EQQP_NG_HK_213_193','58.82.213.194',1,1),(300,'EQQP_NG_HK_213_193','58.82.213.195',1,1),(301,'CP_NG_HK_106_226','182.16.106.226',1,1),(302,'CP_NG_HK_106_226','182.16.106.227',1,1),(303,'CP_NG_HK_106_226','182.16.106.228',1,1),(304,'CP_NG_HK_106_226','182.16.106.229',1,1),(305,'CP_NG_HK_106_226','182.16.106.230',1,1),(306,'RYHT_NG_HK_153_108','47.52.153.108',1,1),(307,'RYCP_NG_HK_101_228','47.244.101.228',1,1),(308,'RYCP_NG_HK_101_228','47.244.101.225',1,1),(309,'RYCP_NG_HK_101_228','47.244.101.224',1,1),(310,'YS_NG_HK_7_90','182.16.7.90',1,1),(311,'YS_NG_HK_7_90','182.16.7.91',1,1),(312,'YS_NG_HK_7_90','182.16.7.92',1,1),(313,'YS_NG_HK_7_90','182.16.7.93',1,1),(314,'YS_NG_HK_7_90','182.16.7.94',1,1),(315,'YS_NG_HK_46_175','103.84.46.175',1,1),(316,'YS_NG_HK_46_175','103.84.46.176',1,1),(317,'YS_NG_HK_46_175','103.84.46.177',1,1),(318,'YSHT_NG_HK_191_140','47.52.191.140',1,1),(319,'YSHT_NG_HK_191_140','47.52.191.40',1,1),(320,'YSHT_NG_HK_191_140','47.244.106.36',1,1),(321,'JAVATEST_TOMCAT_HK_49_122','110.173.49.122',1,1),(322,'JAVATEST_TOMCAT_HK_49_122','110.173.49.123',1,1),(323,'JAVATEST_TOMCAT_HK_49_122','110.173.49.124',1,1),(324,'JAVATEST_TOMCAT_HK_49_122','110.173.49.125',1,1),(325,'JAVATEST_TOMCAT_HK_49_122','110.173.49.126',1,1),(326,'APPLEQP_NG_HK_106_52','47.244.106.52',1,1),(327,'APPLEQP_NG_HK_106_52','47.244.106.47',1,1),(328,'APPLEQP_NG_HK_245_122','52.128.245.122',1,1),(329,'APPLEQP_NG_HK_245_122','52.128.245.123',1,1),(330,'APPLEQP_NG_HK_245_122','52.128.245.124',1,1),(331,'APPLEQP_NG_HK_245_122','52.128.245.125',1,1),(332,'APPLEQP_NG_HK_245_122','52.128.245.126',1,1),(333,'APPLEQP_NG_HK_139_26','47.75.139.26',0,1),(334,'APPLEQP_NG_HK_139_26','47.75.140.240',1,1),(335,'APPLEQP_NG_HK_139_26','47.75.141.163',1,1),(336,'APPLEQP_NG_HK_106_52','47.244.106.53',1,1),(337,'APPLEQP_NG_HK_228_178','216.118.228.178',1,1),(338,'APPLEQP_NG_HK_228_178','216.118.228.179',1,1),(339,'APPLEQP_NG_HK_228_178','216.118.228.180',1,1),(340,'APPLEQP_NG_HK_228_178','216.118.228.181',1,1),(341,'APPLEQP_NG_HK_228_178','216.118.228.182',1,1),(342,'APPLEQP_NG_HK_32_98','180.178.32.98',1,1),(343,'APPLEQP_NG_HK_32_98','180.178.32.99',1,1),(344,'APPLEQP_NG_HK_32_98','180.178.32.100',1,1),(345,'APPLEQP_NG_HK_32_98','180.178.32.101',1,1),(346,'APPLEQP_NG_HK_32_98','180.178.32.102',1,1),(347,'YS_NG_HK_206_18','46.149.206.18',1,1),(348,'YS_NG_HK_206_18','46.149.206.19',1,1),(349,'YS_NG_HK_206_18','46.149.206.20',1,1),(350,'YS_NG_HK_205_27','46.149.205.27',1,1),(351,'YS_NG_HK_205_27','46.149.205.28',1,1),(352,'YS_NG_HK_205_27','46.149.205.29',1,1),(353,'YS_NG_HK_207_3','46.149.207.3',1,1),(354,'YS_NG_HK_207_3','46.149.207.4',1,1),(355,'YS_NG_HK_207_3','46.149.207.5',1,1),(356,'APPLEQP_NG_HK_117_178','182.16.117.178',1,1),(357,'APPLEQP_NG_HK_117_178','182.16.117.179',1,1),(358,'APPLEQP_NG_HK_117_178','182.16.117.180',1,1),(359,'APPLEQP_NG_HK_117_178','182.16.117.181',1,1),(360,'APPLEQP_NG_HK_117_178','182.16.117.182',1,1),(361,'CP_NG_HK_8_154','111.68.8.154',1,1),(362,'CP_NG_HK_8_154','111.68.8.155',1,1),(363,'CP_NG_HK_8_154','111.68.8.156',1,1),(364,'CP_NG_HK_8_154','111.68.8.157',1,1),(365,'CP_NG_HK_8_154','111.68.8.158',1,1),(366,'CP_NG_HK_1_90','148.66.1.90',1,1),(367,'CP_NG_HK_1_90','148.66.1.91',1,1),(368,'CP_NG_HK_1_90','148.66.1.92',1,1),(369,'CP_NG_HK_1_90','148.66.1.93',1,1),(370,'CP_NG_HK_1_90','148.66.1.94',1,1),(371,'PUB_SM_KR_1_90','13.125.1.90',1,1),(372,'PUB_SM_HK_117_186','182.16.117.186',1,1),(373,'PUB_SM_HK_117_186','182.16.117.187',1,1),(374,'PUB_SM_HK_117_186','182.16.117.188',1,1),(375,'PUB_SM_HK_117_186','182.16.117.189',1,1),(376,'PUB_SM_HK_117_186','182.16.117.190',1,1),(377,'SA-VPN-HK-4-12','119.28.4.12',1,1),(378,'SA-VPN-HK-73-146','150.109.73.146',1,1),(379,'EQQP_NG_HK_10_219','14.192.10.219',1,1),(380,'EQQP_NG_HK_10_219','14.192.10.223',1,1),(381,'EQQP_NG_HK_10_219','14.192.10.227',1,1),(382,'EQQP_NG_HK_191_65','47.52.191.65',1,1),(383,'EQQP_NG_HK_191_65','47.244.43.232',1,1),(384,'EQQP_NG_HK_191_65','47.75.241.241',1,1),(385,'PUB_SM_KR_91_211','13.125.91.211',1,1),(386,'RYHT_NG_HK_22_106','118.99.22.106',1,1),(387,'RYHT_NG_HK_22_106','118.99.22.107',1,1),(388,'RYHT_NG_HK_22_106','118.99.22.108',1,1),(389,'RYHT_NG_HK_22_106','118.99.22.109',1,1),(390,'RYHT_NG_HK_22_106','118.99.22.110',1,1);
/*!40000 ALTER TABLE `saltstack_minioniptb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saltstack_miniontb`
--

DROP TABLE IF EXISTS `saltstack_miniontb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saltstack_miniontb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `minion_id` varchar(32) NOT NULL,
  `system` varchar(32) NOT NULL,
  `user` varchar(24) NOT NULL,
  `port` int(11) NOT NULL,
  `service_type` varchar(10) NOT NULL,
  `password` longtext NOT NULL,
  `price` int(11) DEFAULT NULL,
  `provider` int(11) NOT NULL,
  `alive` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `info` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `minion_id` (`minion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saltstack_miniontb`
--

LOCK TABLES `saltstack_miniontb` WRITE;
/*!40000 ALTER TABLE `saltstack_miniontb` DISABLE KEYS */;
INSERT INTO `saltstack_miniontb` VALUES (1,'HT_NG_HK_84_74','linux','root',11223,'nginx','Byo6OL+AT2ME6+YzCrlT+HOg0++PGX1HWCPgZ9LB8I9poPbCBBM6X/zVCvrSBv3NOBz4OtWKh8Vo\r\n5XORxkOKkT4TL+5OtJMC+C5amg676lo+2eqBwTeF6B4GKj2t3exul6XzfMgqKGxlVcDnv8nKF/V+\r\niyIeXQvWmrSGOMWXyIg=',1500,3,1,1,''),(2,'HT_NG_HK_55_50','linux','root',11223,'nginx','Byo6OL+AT2ME6+YzCrlT+HOg0++PGX1HWCPgZ9LB8I9poPbCBBM6X/zVCvrSBv3NOBz4OtWKh8Vo\r\n5XORxkOKkT4TL+5OtJMC+C5amg676lo+2eqBwTeF6B4GKj2t3exul6XzfMgqKGxlVcDnv8nKF/V+\r\niyIeXQvWmrSGOMWXyIg=',1500,3,1,1,''),(4,'CP_NG_HK_83_36','linux','root',11223,'nginx','Byo6OL+AT2ME6+YzCrlT+HOg0++PGX1HWCPgZ9LB8I9poPbCBBM6X/zVCvrSBv3NOBz4OtWKh8Vo\r\n5XORxkOKkT4TL+5OtJMC+C5amg676lo+2eqBwTeF6B4GKj2t3exul6XzfMgqKGxlVcDnv8nKF/V+\r\niyIeXQvWmrSGOMWXyIg=',1500,3,1,1,'备用'),(5,'CP_NG_HK_8_82','linux','root',11223,'nginx','Byo6OL+AT2ME6+YzCrlT+HOg0++PGX1HWCPgZ9LB8I9poPbCBBM6X/zVCvrSBv3NOBz4OtWKh8Vo\r\n5XORxkOKkT4TL+5OtJMC+C5amg676lo+2eqBwTeF6B4GKj2t3exul6XzfMgqKGxlVcDnv8nKF/V+\r\niyIeXQvWmrSGOMWXyIg=',1500,3,1,1,'阿里 光大 恒达'),(6,'CP_NG_HK_85_10','linux','root',11223,'nginx','Byo6OL+AT2ME6+YzCrlT+HOg0++PGX1HWCPgZ9LB8I9poPbCBBM6X/zVCvrSBv3NOBz4OtWKh8Vo\r\n5XORxkOKkT4TL+5OtJMC+C5amg676lo+2eqBwTeF6B4GKj2t3exul6XzfMgqKGxlVcDnv8nKF/V+\r\niyIeXQvWmrSGOMWXyIg=',1500,3,1,1,'UC'),(9,'CP_NG_HK_179_204','linux','root',11223,'nginx','rEohk/H47JVODOTlW5G4Ph3bWji1YGFeYxwOZYlCZsDSCVLe054nXccnRpGuiCl3IjQvSihH8CQc\nH96o0jGAZ2AIkt3BDnwQHVtH8illau4OwoCKkmPTmeXUf47V/GkzFqnAIn7b9yL5+hPNLem6z6q/\nd+GDZM+Q59O99ZiHcjw=\n',1800,8,1,1,''),(11,'SP_NG_HK_173_3','linux','root',11223,'nginx','g5aCy6pMM/e92neBPiX7DFWSMpW1dW9gt/WIhoNztN9/ucoYVzkP27sLfTG6LqU7HCaPGlkpoyzR\r\nnHVA5o/Qka5LkKvjjfPRw9QbbuKeLH5nc+Ih3BOaEiAVfJOmqqMqCvvBYv2vXoLR1KyWBmq615th\r\nJWfcAnlQDnMjo2vBI1U=',1800,5,1,1,''),(12,'SP_NG_HK_55_122','linux','root',11223,'nginx','g5aCy6pMM/e92neBPiX7DFWSMpW1dW9gt/WIhoNztN9/ucoYVzkP27sLfTG6LqU7HCaPGlkpoyzR\r\nnHVA5o/Qka5LkKvjjfPRw9QbbuKeLH5nc+Ih3BOaEiAVfJOmqqMqCvvBYv2vXoLR1KyWBmq615th\r\nJWfcAnlQDnMjo2vBI1U=',1500,3,1,1,''),(13,'SP_NG_HK_91_122','linux','root',11223,'nginx','g5aCy6pMM/e92neBPiX7DFWSMpW1dW9gt/WIhoNztN9/ucoYVzkP27sLfTG6LqU7HCaPGlkpoyzR\r\nnHVA5o/Qka5LkKvjjfPRw9QbbuKeLH5nc+Ih3BOaEiAVfJOmqqMqCvvBYv2vXoLR1KyWBmq615th\r\nJWfcAnlQDnMjo2vBI1U=',1500,3,1,1,''),(14,'JAVATEST_TOMCAT_HK_49_122','linux','root',55888,'tomcat','GkFYbD0xcRpaU11Hk2mlzKpHH0A+0R/32dfym9gjxPKP1a+wRfmz9QO468V1AM+dxrgWU7c4Hx4T\nOrnlHc93E82Q/bLA4YDSkcHfDX23MJIdUwLqB7GMSD6t93bSbBvQ90XHivAQPVch7ReiNKCfRft5\nUJXl4UTtqlfYvDI0XHk=\n',2200,3,1,1,'JAVA 测试站 tomcat以及前端nodejs'),(15,'SA-VPN-SH-101-236','linux','root',11223,'nginx','/',NULL,1,1,1,''),(16,'SA-VPN-BJ-35-62','linux','root',11223,'nginx','/',NULL,1,1,1,''),(17,'SA-VPN-HK-4-12','linux','root',11223,'nginx','/',600,2,1,1,''),(19,'YS_NG_HK_44_202','linux','root',11223,'nginx','Z5rsjfDO49FRfCklIMG8oEOgzid4b5BiIJJx1Yi6vFtET4G8ePzUM0BY4M0fuoWEA4lnhH3og5Q8\r\nTMHVOtNdVbYaMPkLRtoJib60wdF/Rf2huiAemWHMEH8fNN/WZxflw3AxeZJIJvcF4VleFrN2Idgf\r\nbeDmwbIBQmyNulTpUvs=',3330,7,1,1,''),(21,'YS_NG_HK_40_76','linux','root',11223,'nginx','Z5rsjfDO49FRfCklIMG8oEOgzid4b5BiIJJx1Yi6vFtET4G8ePzUM0BY4M0fuoWEA4lnhH3og5Q8\r\nTMHVOtNdVbYaMPkLRtoJib60wdF/Rf2huiAemWHMEH8fNN/WZxflw3AxeZJIJvcF4VleFrN2Idgf\r\nbeDmwbIBQmyNulTpUvs=',1800,5,1,1,'乐都城彩票'),(23,'YS_NG_HK_8_204','linux','root',33923,'nginx','QjE23y/C4UIo9pSQQaTs9jc5yqUmC68w3K5LzyZpjP/PMUR9SFdv+KvtsY4HQKJRytv/pduteJhB\n9wmeS3ozs5b8v0KHHnVNTFdsOoakIFufzcsh7KmTS79N94nr18DAiB4yk80jAiQxwYv6QgN6Mkjf\nTBxBblAaxiPijzaQUhI=\n',2200,5,1,1,'微码专用反代'),(24,'YS_NG_HK_94_40','linux','root',11223,'nginx','Z5rsjfDO49FRfCklIMG8oEOgzid4b5BiIJJx1Yi6vFtET4G8ePzUM0BY4M0fuoWEA4lnhH3og5Q8\r\nTMHVOtNdVbYaMPkLRtoJib60wdF/Rf2huiAemWHMEH8fNN/WZxflw3AxeZJIJvcF4VleFrN2Idgf\r\nbeDmwbIBQmyNulTpUvs=',1500,3,1,1,'勇士彩票'),(25,'YS_NG_HK_8_92','linux','root',11223,'nginx','Z5rsjfDO49FRfCklIMG8oEOgzid4b5BiIJJx1Yi6vFtET4G8ePzUM0BY4M0fuoWEA4lnhH3og5Q8\r\nTMHVOtNdVbYaMPkLRtoJib60wdF/Rf2huiAemWHMEH8fNN/WZxflw3AxeZJIJvcF4VleFrN2Idgf\r\nbeDmwbIBQmyNulTpUvs=',3330,7,1,1,''),(26,'YSHT_NG_HK_169_9','linux','root',11223,'nginx','Z5rsjfDO49FRfCklIMG8oEOgzid4b5BiIJJx1Yi6vFtET4G8ePzUM0BY4M0fuoWEA4lnhH3og5Q8\r\nTMHVOtNdVbYaMPkLRtoJib60wdF/Rf2huiAemWHMEH8fNN/WZxflw3AxeZJIJvcF4VleFrN2Idgf\r\nbeDmwbIBQmyNulTpUvs=',1300,5,1,1,''),(27,'YSHT_NG_HK_77_181','linux','root',11223,'nginx','Z5rsjfDO49FRfCklIMG8oEOgzid4b5BiIJJx1Yi6vFtET4G8ePzUM0BY4M0fuoWEA4lnhH3og5Q8\r\nTMHVOtNdVbYaMPkLRtoJib60wdF/Rf2huiAemWHMEH8fNN/WZxflw3AxeZJIJvcF4VleFrN2Idgf\r\nbeDmwbIBQmyNulTpUvs=',900,3,1,0,''),(28,'CP_NG_HK_137_13','linux','root',11223,'nginx','Byo6OL+AT2ME6+YzCrlT+HOg0++PGX1HWCPgZ9LB8I9poPbCBBM6X/zVCvrSBv3NOBz4OtWKh8Vo\r\n5XORxkOKkT4TL+5OtJMC+C5amg676lo+2eqBwTeF6B4GKj2t3exul6XzfMgqKGxlVcDnv8nKF/V+\r\niyIeXQvWmrSGOMWXyIg=',1800,5,1,1,'阿里 光大 恒达'),(29,'JAVA_NG_HK_52_98','linux','root',33889,'nginx','QBbTADGixzI5kowU9S2njjFIuX56PLofm9w0q4XHbewqmKLhQXk/PoCPyWbjD2JGGMNcAKv33dCD\nxv2FWSQcPdL2MqWEHQdQ3KVoszH5pl61U7Hw1CI2xMQrCLjR+3WJGqqnt+0QVjQ+sypJ5wkI/V2l\nfN/K+QWW07fSU4NU1XE=\n',0,3,1,1,''),(30,'JAVA_NG_HK_33_71','linux','root',22,'nginx','HkB6B8p6MEroMK9sfjec8pQfowmmje8IGgC+y9u7YnfEB2nCiGnSalYTQNkuKxAF7pCdxGgi92U/\r\n5Ip8nLSgnCgGFgV8FStU3mc1ucSloB6keeMIqnJQgrvVXeh6h437xR8kTq5u5WhrY7HkrmUfOnCj\r\nHpPv1y0WJVOEU5SsTAQ=',0,3,1,0,''),(31,'JAVA_NG_HK_91_170','linux','root',33889,'nginx','hHl+SdtchIZujfAJOFmQJDCw140UWHZHV8TvhMwTtpmKbxvAYyiY0dC9ZqnfqAJHNpjZj6KRasto\nAPu8R2pTE19WK79TGRBwmfrNIb2Szo5VrYoa9AxFqT8cJJyI20Xo1xbG5RRWUOWc46TQ5X8MT8mX\nE7r15fKc/hm4xpC2hks=\n',0,3,1,1,''),(32,'JAVA_NG_HK_83_86','linux','root',22,'nginx','HkB6B8p6MEroMK9sfjec8pQfowmmje8IGgC+y9u7YnfEB2nCiGnSalYTQNkuKxAF7pCdxGgi92U/\r\n5Ip8nLSgnCgGFgV8FStU3mc1ucSloB6keeMIqnJQgrvVXeh6h437xR8kTq5u5WhrY7HkrmUfOnCj\r\nHpPv1y0WJVOEU5SsTAQ=',0,3,1,0,''),(34,'CP_NG_HK_42_48','linux','root',11223,'nginx','Byo6OL+AT2ME6+YzCrlT+HOg0++PGX1HWCPgZ9LB8I9poPbCBBM6X/zVCvrSBv3NOBz4OtWKh8Vo\r\n5XORxkOKkT4TL+5OtJMC+C5amg676lo+2eqBwTeF6B4GKj2t3exul6XzfMgqKGxlVcDnv8nKF/V+\r\niyIeXQvWmrSGOMWXyIg=',1800,5,1,1,'乐盈'),(35,'IMAGE_NG_HK_33_76','linux','root',11223,'nginx','DL1MnT2pIP8k8hgUSQO3EbH8LExgDV3xoXoAhmWyBv87+JcUotSvGYUget/dohKR5qnSGQX/YRl6\ndo/MHN0vMTqWLLcPcsRjMrpuYlmPHxEaO/hKJdegM77fI2BRY1ATKkPoH5cecL/E68x32kx8jvCf\nvGYIq3F0m+vREPq2SbI=\n',2200,5,1,1,'凤凰彩票图片服务器'),(36,'PUB_DNS_HK_181_165','linux','root',11223,'flask','adNlob/koRcI98eoUsMhQJsQ3Vl2ZhlkwHS0NNfEyXSALbhf6jX+zssnyf4QoVOVcRqhUcpu0dNN\n5lDQE1F0+5onEeNK2FQw0HEkB4IU1LgUVf3veyA8pdepstwR482kaYMhNLHBORualZuUAA0/4scn\nv1M+HFnGSjPwEvB9Wzw=\n',1800,6,1,1,'用于防DNS劫持'),(37,'DXGGZ_NG_HK_153_74','linux','root',11221,'nginx','mjQWW1AGv0GHDr983sHPtsgvoUAuJesZ5C5pBnjJnmJU6MP+Qdx0n6AJQ+9mniD94VH6AcyePMf5\r\nm635S7pSNmHouldmnE2vxwXV0GU81mpwpl7C4eTHDhkuZjXJXpu1DEVVvb+jL/f4N45Zq0K13OB8\r\nArQ5o21kDCxefCHArDU=',1350,4,1,1,'凤凰大象广告站 主服务器'),(38,'SPGGZ_NG_US_254_108','linux','root',11221,'nginx','mjQWW1AGv0GHDr983sHPtsgvoUAuJesZ5C5pBnjJnmJU6MP+Qdx0n6AJQ+9mniD94VH6AcyePMf5\r\nm635S7pSNmHouldmnE2vxwXV0GU81mpwpl7C4eTHDhkuZjXJXpu1DEVVvb+jL/f4N45Zq0K13OB8\r\nArQ5o21kDCxefCHArDU=',1900,3,1,1,'凤凰大象广告站 备用服务器'),(39,'RYHT_NG_HK_2_194','linux','root',22,'nginx','VRRxnv09uj3OuBR0Wdbnt+plBkGP0kcpHW8iHknkTAmihygnhEz3TuQHtGIiVq/mzKicPWI86hUz\r\nvHwf06O+70XnODlBnISUB5KgN7WzetmzbVs8eB+V200LERsxjdujLXolvkfyEA+EVOhPyRJ6Yvkc\r\nVxlO2ATZMDikMFszYEU=',0,6,1,1,''),(40,'RYHT_NG_HK_83_53','linux','root',22,'nginx','VRRxnv09uj3OuBR0Wdbnt+plBkGP0kcpHW8iHknkTAmihygnhEz3TuQHtGIiVq/mzKicPWI86hUz\r\nvHwf06O+70XnODlBnISUB5KgN7WzetmzbVs8eB+V200LERsxjdujLXolvkfyEA+EVOhPyRJ6Yvkc\r\nVxlO2ATZMDikMFszYEU=',0,3,1,1,''),(41,'RYCP_NG_HK_97_82','linux','root',22,'nginx','VRRxnv09uj3OuBR0Wdbnt+plBkGP0kcpHW8iHknkTAmihygnhEz3TuQHtGIiVq/mzKicPWI86hUz\r\nvHwf06O+70XnODlBnISUB5KgN7WzetmzbVs8eB+V200LERsxjdujLXolvkfyEA+EVOhPyRJ6Yvkc\r\nVxlO2ATZMDikMFszYEU=',0,4,1,0,''),(42,'RYCP_NG_HK_8_90','linux','root',22,'nginx','VRRxnv09uj3OuBR0Wdbnt+plBkGP0kcpHW8iHknkTAmihygnhEz3TuQHtGIiVq/mzKicPWI86hUz\r\nvHwf06O+70XnODlBnISUB5KgN7WzetmzbVs8eB+V200LERsxjdujLXolvkfyEA+EVOhPyRJ6Yvkc\r\nVxlO2ATZMDikMFszYEU=',0,4,1,0,''),(43,'RYCP_NG_HK_136_171','linux','root',22,'nginx','VRRxnv09uj3OuBR0Wdbnt+plBkGP0kcpHW8iHknkTAmihygnhEz3TuQHtGIiVq/mzKicPWI86hUz\r\nvHwf06O+70XnODlBnISUB5KgN7WzetmzbVs8eB+V200LERsxjdujLXolvkfyEA+EVOhPyRJ6Yvkc\r\nVxlO2ATZMDikMFszYEU=',0,9,1,1,''),(44,'RYCP_NG_HK_100_71','linux','root',22,'nginx','VRRxnv09uj3OuBR0Wdbnt+plBkGP0kcpHW8iHknkTAmihygnhEz3TuQHtGIiVq/mzKicPWI86hUz\r\nvHwf06O+70XnODlBnISUB5KgN7WzetmzbVs8eB+V200LERsxjdujLXolvkfyEA+EVOhPyRJ6Yvkc\r\nVxlO2ATZMDikMFszYEU=',0,9,1,1,''),(45,'RYCP_NG_HK_79_130','linux','root',22,'nginx','VRRxnv09uj3OuBR0Wdbnt+plBkGP0kcpHW8iHknkTAmihygnhEz3TuQHtGIiVq/mzKicPWI86hUz\r\nvHwf06O+70XnODlBnISUB5KgN7WzetmzbVs8eB+V200LERsxjdujLXolvkfyEA+EVOhPyRJ6Yvkc\r\nVxlO2ATZMDikMFszYEU=',0,3,1,1,''),(46,'RYPAY_NG_HK_174_92','linux','root',22,'nginx','VRRxnv09uj3OuBR0Wdbnt+plBkGP0kcpHW8iHknkTAmihygnhEz3TuQHtGIiVq/mzKicPWI86hUz\r\nvHwf06O+70XnODlBnISUB5KgN7WzetmzbVs8eB+V200LERsxjdujLXolvkfyEA+EVOhPyRJ6Yvkc\r\nVxlO2ATZMDikMFszYEU=',0,4,0,0,''),(47,'RYPAY_NG_HK_153_108','linux','root',22,'nginx','VRRxnv09uj3OuBR0Wdbnt+plBkGP0kcpHW8iHknkTAmihygnhEz3TuQHtGIiVq/mzKicPWI86hUz\r\nvHwf06O+70XnODlBnISUB5KgN7WzetmzbVs8eB+V200LERsxjdujLXolvkfyEA+EVOhPyRJ6Yvkc\r\nVxlO2ATZMDikMFszYEU=',0,9,1,1,''),(48,'RY_NG_HK_62_31','linux','root',22,'nginx','VRRxnv09uj3OuBR0Wdbnt+plBkGP0kcpHW8iHknkTAmihygnhEz3TuQHtGIiVq/mzKicPWI86hUz\r\nvHwf06O+70XnODlBnISUB5KgN7WzetmzbVs8eB+V200LERsxjdujLXolvkfyEA+EVOhPyRJ6Yvkc\r\nVxlO2ATZMDikMFszYEU=',0,3,1,1,''),(49,'RY_NG_HK_77_83','linux','root',22,'nginx','VRRxnv09uj3OuBR0Wdbnt+plBkGP0kcpHW8iHknkTAmihygnhEz3TuQHtGIiVq/mzKicPWI86hUz\r\nvHwf06O+70XnODlBnISUB5KgN7WzetmzbVs8eB+V200LERsxjdujLXolvkfyEA+EVOhPyRJ6Yvkc\r\nVxlO2ATZMDikMFszYEU=',0,4,1,0,''),(50,'RY_NG_HK_50_34','linux','root',22,'nginx','mCAPFfDeFpQrjeKpQdbTZhiX5cT/mWS4yS6DEqGMC6fu1fnzNQFZ/mS/MlNbzMGdOLR/34++4SN8\r\ngkZ1nJA0E6j1YF1PQE+a4yn3tlo95HjyuXR8OyA8st4yIv8/B/MdpNzH1yccLyoL39O842mvASkF\r\n1hRQlZyh70v0zoExjhU=',0,3,1,0,''),(51,'RY_NG_HK_33_146','linux','root',22,'nginx','VRRxnv09uj3OuBR0Wdbnt+plBkGP0kcpHW8iHknkTAmihygnhEz3TuQHtGIiVq/mzKicPWI86hUz\r\nvHwf06O+70XnODlBnISUB5KgN7WzetmzbVs8eB+V200LERsxjdujLXolvkfyEA+EVOhPyRJ6Yvkc\r\nVxlO2ATZMDikMFszYEU=',0,3,1,1,''),(52,'RY_NG_HK_46_105','linux','root',22,'nginx','VRRxnv09uj3OuBR0Wdbnt+plBkGP0kcpHW8iHknkTAmihygnhEz3TuQHtGIiVq/mzKicPWI86hUz\r\nvHwf06O+70XnODlBnISUB5KgN7WzetmzbVs8eB+V200LERsxjdujLXolvkfyEA+EVOhPyRJ6Yvkc\r\nVxlO2ATZMDikMFszYEU=',0,3,1,1,''),(53,'RY_NG_HK_179_5','linux','root',22,'nginx','VRRxnv09uj3OuBR0Wdbnt+plBkGP0kcpHW8iHknkTAmihygnhEz3TuQHtGIiVq/mzKicPWI86hUz\r\nvHwf06O+70XnODlBnISUB5KgN7WzetmzbVs8eB+V200LERsxjdujLXolvkfyEA+EVOhPyRJ6Yvkc\r\nVxlO2ATZMDikMFszYEU=',0,4,1,1,''),(54,'RY_NG_HK_33_161','linux','root',22,'nginx','VRRxnv09uj3OuBR0Wdbnt+plBkGP0kcpHW8iHknkTAmihygnhEz3TuQHtGIiVq/mzKicPWI86hUz\r\nvHwf06O+70XnODlBnISUB5KgN7WzetmzbVs8eB+V200LERsxjdujLXolvkfyEA+EVOhPyRJ6Yvkc\r\nVxlO2ATZMDikMFszYEU=',0,3,1,1,''),(55,'RY_NG_HK_187_122','linux','root',22,'nginx','VRRxnv09uj3OuBR0Wdbnt+plBkGP0kcpHW8iHknkTAmihygnhEz3TuQHtGIiVq/mzKicPWI86hUz\r\nvHwf06O+70XnODlBnISUB5KgN7WzetmzbVs8eB+V200LERsxjdujLXolvkfyEA+EVOhPyRJ6Yvkc\r\nVxlO2ATZMDikMFszYEU=',0,3,1,1,''),(56,'RY_NG_HK_33_56','linux','root',22,'nginx','VRRxnv09uj3OuBR0Wdbnt+plBkGP0kcpHW8iHknkTAmihygnhEz3TuQHtGIiVq/mzKicPWI86hUz\r\nvHwf06O+70XnODlBnISUB5KgN7WzetmzbVs8eB+V200LERsxjdujLXolvkfyEA+EVOhPyRJ6Yvkc\r\nVxlO2ATZMDikMFszYEU=',0,3,1,1,''),(57,'SPTEST_NG_HK_40_94','linux','root',11223,'nginx','TdsjpOLQzHIrzjlRwIcLs5Aqg5Ugm2xuqJJiks07Q9yF3idj04JVKkg2hgrTqgGmElNIkYuhxZIk\n8eowCNX7nEkOj1gDu1K/jiLivMxtWk3IYuhmf6CtBTtsFKQ1+DzyDRM6a8H1/uycomIaicfWvbOk\nwGWv5AGOHYx6fmapf0Y=\n',1600,5,1,1,'凤凰体育测试站[test envir of fenghuang\'s sport]'),(58,'YSGGZ_APA_HK_5_34','linux','root',60000,'apache','Z5rsjfDO49FRfCklIMG8oEOgzid4b5BiIJJx1Yi6vFtET4G8ePzUM0BY4M0fuoWEA4lnhH3og5Q8\r\nTMHVOtNdVbYaMPkLRtoJib60wdF/Rf2huiAemWHMEH8fNN/WZxflw3AxeZJIJvcF4VleFrN2Idgf\r\nbeDmwbIBQmyNulTpUvs=',1390,6,1,1,'勇士全讯网 APACHE'),(59,'YS_NG_HK_64_71','linux','root',11223,'nginx','Z5rsjfDO49FRfCklIMG8oEOgzid4b5BiIJJx1Yi6vFtET4G8ePzUM0BY4M0fuoWEA4lnhH3og5Q8\r\nTMHVOtNdVbYaMPkLRtoJib60wdF/Rf2huiAemWHMEH8fNN/WZxflw3AxeZJIJvcF4VleFrN2Idgf\r\nbeDmwbIBQmyNulTpUvs=',1390,6,1,1,''),(60,'DX_APA_TW_148_197','linux','root',22,'apache','jJOIwSAXPRC0C3lt/LnI8X3ZzBFXS9F8YCRF9xp7zxMfML1J9TPch6eKlQD0iSl+CXEU8k8bzLqk\r\nrazq0DsyxTZjVJNuaHwoxWM5pVmk5U56kHQHTEUO9xzfboJfgVApcTCF2J+a7kL6TtAVC5PrUy7X\r\nGbe/GE1QmYZHmaBSYw0=',0,1,1,1,''),(61,'DX_APA_TW_148_211','linux','root',22,'apache','/',0,1,1,1,''),(62,'DX_DBS_TW_148_215','linux','root',22,'apache','/',0,1,1,1,'大象数据库备[dx_dbs]'),(63,'LE7_DBS_TW_148_199','linux','root',22,'apache','/',0,1,1,1,'钻石数据库备|大象和钻石公用源后台[LE7_DBS|manage of dx and le7]'),(64,'YJF_DB_HK_47_154','linux','root',33889,'apache','Ho0xzvqdOBMsVM9Hlp1bmhh41K9XnOjHuAv7rRgcS7ExRd7Uu3iM5jtloH3ZHaX+F4kJoUrbV6OL\r\n4bQRyU4W7ifhdQRcIvhUf5qO2Wg3q9R67PrCeIrqrkGBVpl+lfW2W+Cl2NAstM0tqnh5c876yZB9\r\nQEu3Xh1YAIav7osNVno=',2800,3,1,1,'圆角分数据库'),(65,'YJF_APA_HK_239_10','linux','root',33889,'apache','MrlPqmg4nXedWOu63N0pLf88nGPP+6f0TGDzla1H3/Ncqj5swNXI81EtpJjrhyPN/SqCoR7kf9yc\r\njiaOHAASb9R6xS4sOdlRJ8H8lfK7ZfN0ObLIc6FAlG0knE7eX6YiCuFa4bW+dMkslbOf/iQPIYP9\r\n/4vOCS2HghSoavrXEoo=',1500,3,1,1,''),(66,'PUB_LOG_HK_22_96','linux','root',19917,'logstash','nZOFPz9QFBGe+KRhqg3PDZNYQQZqvVOuDv9LPuqBljKxJFedaAcJqf5WNoQkpdLjBr9Pb4NJCA6G\r\nedhsoTqV74xVT1cploxjpiaBcBHgwOg/Tu/YaEoBhUXQuuKRdY7iixSDPPJdw/YCpNrGE8j29LMv\r\nTvHU8mX6VLY0fYgVf8E=',1500,3,1,1,'zabbix，日志收集，代码备份等'),(67,'RY_NG_HK_62_172','linux','root',22,'nginx','VRRxnv09uj3OuBR0Wdbnt+plBkGP0kcpHW8iHknkTAmihygnhEz3TuQHtGIiVq/mzKicPWI86hUz\r\nvHwf06O+70XnODlBnISUB5KgN7WzetmzbVs8eB+V200LERsxjdujLXolvkfyEA+EVOhPyRJ6Yvkc\r\nVxlO2ATZMDikMFszYEU=',0,4,1,1,''),(68,'YSGGZ_NG_HK_146_89','linux','root',33922,'nginx','AFCKt4Xsn5TiYBtKqDpNOBNet9Pb6EexDdp2VssbKUsE3ZgN7jngZT9Wpsi53G0y0SyHpEzmYY6b\r\nAveMBmXHGRdA0VQiQVzEho3XSx9y5j7G83qURWMvAjpJHE2hD2U0asuTd2Ye+1MLQYWu4pOcmJ4t\r\nHgzmHu3URQ4kHhm8ElA=',1800,5,1,0,'勇士广告站 主 宝塔NGINX'),(69,'JAVATEST_DBS_HK_5_218','linux','root',11223,'mysql','SFFKfNWslu5XepsPvcIq+uBqpfXfcMDppkPtAeTbVEXJNXDwWDB3wMYP+/KMVdZnXAkSpIFLZhd9\n53BEdr17z2o5sDFGLV7u+eKmdM/fVZq1w9cqoiK0C95u+IMpUnp/demt2i+aXtCNG/uxYMc814qd\npJ3PfLj1hhXOLKvJtOw=\n',2200,3,1,1,'JAVA 测试站 DB SLAVE'),(70,'JAVATEST_DBM_HK_6_10','linux','root',11223,'mysql','iDpudBdsaMqnFmYs8ua8chJZ+DYvjbBFt8QeOOxXo9yRf97ncDWW+SHrONtsk9b43SEegO0gKU11\nCqF4LZoRb8EM3RPMjXpym7kr3m+g1TYkJwJ0gaeKlqu99zZxRm/kRfaldo+0b81bsPJGgOsRS+U3\nGm6RrtTu7D0txgTRLU0=\n',2200,3,1,1,'JAVA 测试站 DB MASTER'),(71,'JAVA_NODEJS_HK_77_146','linux','root',22,'nodejs','ihyka9LtDV3VxtpiRoZWktffik2emzIQGBA271Z/l5MeaErW47W9SPE75jvHH2dfVwbBd4JjSF3N\ncGJ/9AqhHtGbQQULAP4Ls1FTkDShA516e6ZN7i6Jr1RCW+PTI6QCZo3f7CF+maxmPXe1o3j/PfgF\n3vj+Y+iOsRp7NsAG0cw=\n',2200,3,1,1,'JAVA 前台nodejs'),(73,'JAVA_DBS_HK_79_98','linux','root',22,'mysql','YefktaesZw9UoHoOE2wAiPYKEae8ctAjaiQbjt4lB+ajYZMuzxUW0UXQ284U/EFWFfnNGGiVQZFg\nC+rJbL9PXU/SoiKoJYc1I7i49KT4vDwMlOsgAKhx7u617GBH21CZdkyp/CChx2np9KX94vwD/goR\nNojiqneRzFUK5FGOTFA=\n',2800,3,1,1,'JAVA DB SLAVE'),(74,'JAVA_DBM_HK_3_130','linux','root',22,'mysql','1yrzyTmo0FDJWtYIxfIUgcYhKFipvwIQA0u2jC2YIf4UWhuN+VjAT/zzAxLaLyf3cbN2bgGukKjP\n4ZxGmlLFQ0HcUf3kSIkom/n02mnJhbDttPidDZyMRWzSIs7Fmx0LTNPS4iYZLg74mC18hAHEWOMa\nG+4pEFAN1tUD/dxI5CU=\n',2800,3,1,1,'JAVA DB MASTER'),(75,'RY_NG_HK_242_82','linux','root',55888,'nginx','qX5l6Chfv2hQ3BxxdMaLj2EKiIIvvbbQtkLjFbbQpXdQiyiTCxAL1QxPUdPWkpMLgdAZ1fHACVmo\n+8JzrJ+UIj/Y+vX9l4eXmnGJO4ulsuPRPAvZC46QHuLOP+ajR7BogAjqBoheO2/vsbt0vNuNWJLP\njuVSc1E0cyGq+iq6dCw=\n',1350,3,1,1,'瑞银 旧版支付反代'),(76,'RY_NG_HK_27_170','linux','root',33888,'nginx','hHFzY2wqujK5vnv/4He8Ru9TLBBaACP4SlHEHKLaUCku43TQrX9fh48zY1BCtq90yGKHnWQYzHDi\nS0TsAZI/LEgGt/PS2YemwtMZLTXbPoiAH9LXruUirzDWWXMxUjWkkEVpI5AB1jQca/JzNaTeGmtJ\n0r5Yc1uI7X34Kq/VACs=\n',1350,3,1,1,'瑞银 旧版支付反代'),(77,'RYPAY_NG_HK_62_82','linux','root',33888,'nginx','MBFrw/wx/8njcY7J+MRJ0bCvPx3Iz7frnzrFqROXzNwzjvqnxbmiMovNAMHVHSNIhN6ErZfvNGlS\nG6PMEFxinVy9xCgxorYtf6ARoiFtNJRoI4Erg7pK/lj3yqQ5RNU8bBMRi66XIES3kKfJWqI6NDOq\nxfcAYY5EFLdYW2OXPMw=\n',1350,3,1,1,'瑞银 新版支付反代'),(78,'RYPAY_NG_HK_112_122','linux','root',31285,'nginx','izJeR0LO7HI2vEDKcRRWhbjLS7tyJRWeA8D8AOzznIig8A+dMEfk3EsIXI0aTLpFdY/xr6zaeQZn\nhZ4NCJ3RWvYq5OuyVPOsIKs75mSJN7qGZD3DTlYTLXf/zQf+DBlcTkGPRws3u+GQ3E60+kca7KlZ\nA7ZOnpSvTua1gUVmbto=\n',1350,3,1,1,'瑞银 新版支付反代'),(79,'CP_NG_HK_43_240','linux','root',11223,'nginx','JmGgeGNKk8AGFNaEVnccRgGIIo7F8Nn7rMSPefW4xcaguH9RFJrdr7baxWGJKXK1fY9U/2ck83dG\r\nealRIZ2qdTUUH6MIkPiT8luX/4mxxJYm14b6dSRjSzJuhm23Lt/tg4wedcLSM1VLt5z8fQQWUDcV\r\nFDGlxUaSF6EP9ENpDoI=\r\n',1600,5,1,1,'富豪'),(80,'CP_NG_HK_86_181','linux','root',11223,'nginx','GxdlEZIAjYmG9q+fmCcKvqUMWBXM3DGjiLJV3fupzdJv3T8dlSNmRT9bB7vOfCMJvRQSq5zaT+W3\r\neIT4yjz43+l9wRxJvX6ngLJnuvB/qUq8pZN4HqdCDzzbZjmWqQwE7tY1mQXN4Y/6s3Setk+SHddp\r\nBCIP6A+wQtNAZu2f17c=\r\n',1600,4,1,1,'公用'),(81,'CP_NG_HK_153_89','linux','root',11223,'nginx','Plqatb6vujXQjgFc1vzw6V6QhJlOoBbBZaFs98Qh8t8iimNtmntmD3V+SHSWUlm7tIYj56T4iKG7\r\nMV108SjYyDkWIlr+NBlY/0htq2sipBRu7cEmUudGBJ+VGxYbp2Meg2yIHjDopNv5SSqanNhLfvFw\r\nEL+YGcIMr1+HKUNghy0=\r\n',1800,3,1,1,'彩投 新站及小站 [ag彩 乐天等]'),(82,'CP_NG_HK_54_119','linux','root',11223,'nginx','MvAgvbsLYLDsj16s375N5vz7w7dH6YMgRA0FEzwMTyKiVyP68zil4GBWyPJZmJYeUq3dfTLFlS05\r\nLhDKizpFRBwEtdBP2/Po9LK3UqTx60vfMaD/1QCuxhu8USXfK56jTyXNYU9vbmOHESTd2TSbSlhW\r\ngSPqwySp7naNf7q0riw=',1800,3,1,1,'体彩'),(83,'CP_NG_HK_43_219','linux','root',11223,'nginx','mbpnlvzRAXPd3ChE1A8HziIuSv5JQV/MCtoopOLINbZmPQmU0vP8j3E/Nptz6rn89C1ZtaoJMocK\r\nbHgeHXl9n6FQoiG4Og1SGc5epV9lB3Ln+IiA2oeWYhGpmW04VydjCsvhMf4Sx8BeuzFEOTAkErsQ\r\ngbFkvMJRAWEeTKLVY/w=\r\n',1600,5,1,1,'公用'),(84,'YSGGZ_NG_HK_43_158','linux','root',33923,'nginx','IJtfCJQ/f3rlTszWPQnqBydRaH9wwN8osCuuCARuiJM0krOn0+t4nDcE+nldEqWUS6uYrG2CIvzZ\nRL+cSA2TNQ5YLvtmH/WN0l/oLcmlVw8bmZQMygr3Vyn6wpOa+ltN+AHIp96UVjchrt0oFSzESVoc\nxHjpJTS8BgK8SR6yw/k=\n',1800,5,1,1,''),(85,'HT_NG_HK_134_105','linux','root',11223,'nginx','Xd79plhX8cdaXH38hp24xtGDUW2w5WnHSMCvXNyMr5fYXkv0/p/BHvoC4CtMV9g2OibXdZha4IXK\nUjgczW7nNSh66P3KyKzYLeVDVLq47Xzymg+yB/1uz78v7E1KBEs4QI/oncrmdlTcARRAqqxuShZR\nRMHI11kYayWDIc4J9JA=\n',1500,3,1,1,''),(86,'HT_NG_HK_78_226','linux','root',11223,'nginx','jTHhLpN8YFc8BauXWk8dOFg6ZvkTxJu19hqcViY3PU6IK+3kk1kfqxSXpeL6wx+tRvJkC7FvxQIb\no5h+DUDZpvwmv90d0bH7EB4wxRcDiAgxdvIKAYLZBtOe1R9Anlx9RPFOMuMN8mbZSm8QVsMwERnD\noREpSLQWjKFrcRYIoA0=\n',1500,3,1,1,''),(87,'FH_SVN_AWS_53_187','linux','root',22,'svn','/',0,10,1,1,'凤凰代码SVN 主控服务器'),(88,'CP_NG_HK_106_226','linux','root',33888,'nginx','K8DM+jV00zQzjiAhuQjBhtvGWipR2mI1e0YYL9qhliGetZ9lcF+ITB127IgKxeyogbFCoGghFbrN\nqEj8Gtca4CRVxHFBMLCgBQBiG2GaVz5ehvF1mdD/nKVYw34iHvMoKfQ/3Xrcfk4hZduB5rjFTbPC\nwPmtf/tSh3B31MGocgI=\n',1800,5,1,1,'光大和恒达'),(89,'EQQP_NG_HK_213_193','linux','root',33923,'nginx','qeEBXrkXZIqGCs6zdGopP+K55sNuRPC8Qczv0IFomQ3sUBZbBZe4FRgKbVfrCfBvIDPaOMelXMRd\nMPp+If3pAb1G92Z5J3SZMts36AduCMcpfv4/A/+u7sgtYkroLj+U7YtWhXQLXILrHg/srdpMfsyW\n/aGJMzK/vno1l34/nKQ=\n',1500,3,1,1,''),(90,'RYHT_NG_HK_153_108','linux','root',22,'nginx','jud6QF+DazJUec6UooKCODOhc8vYulbxTBNov1932zx+/0uLSTlEfopCyAj1hCmwh/CuzWHlJBvs\nWF146I48W6KNHdjGzxr8q4PZidrbOs++xtFPYpKA0EZPpU9D8VkoDcNjP/N9caKh7QrufUk2cavh\nE73CI5+LlXSvOMu/4k8=\n',0,9,1,1,''),(91,'RYCP_NG_HK_101_228','linux','root',22,'nginx','pbri1eBN/hWicZalog4WBsNKY49jkLvUE+CN/5h2qrqtKLGqjXBKYbeA2CQTWUNX7RuglLcQYK28\nmNl+B3AmWusWIiPXhCE3xkEXGilU3i+AGbeXBIKkSJC2klXWA4Pwv7dShA2QuEDj7v/57r2sFizQ\nSurjkI0TcFq810FdaTw=\n',0,4,1,1,''),(92,'YS_NG_HK_7_90','linux','root',31285,'nginx','RwyjrLdYcPHW60w0lFHas16tKbNxy3BSSV/gKcVW5SB+vbt+Wx96cgmyfz818QHwoE8YTk8A9BLh\n7/2homoEWbYmc00esL4W7MUyhNNO0skkA33HmrcOY/vMK2cAblnX+C1IjhVhc7djavVC/hyeO9bc\n1KhSq5AqtTNuNf/isJE=\n',1500,3,1,1,'正代'),(93,'YS_NG_HK_46_175','linux','root',33923,'nginx','jmdLSshls6qRNUUhIfO1MSsddFMs/vRGrKpyPFU6y6+Ni8wV9BkO3ki1JTGtOpw0Ko6Wn12h9u9i\n2xmm7Sm3fV/uVsBH/CP51IzT1kfwh8ZcY3MgPmq3ZyOSEbvS9EPhZ3bM6COz2Kbzivx/wgIwNm/F\nyqUj3N6dXHCCrWgFs+w=\n',1500,5,1,1,'正代'),(94,'YSHT_NG_HK_191_140','linux','root',22,'nginx','b3iX+fIMgRFE/7QZHDzKg3KGF14bcZ+o1yXTSALLloZv5XQjlc35osd3OCXqL7CdfQL3gOt0znit\r\nXnoQ1nyiEBx2+JvnYx7wKFNS7SpI2msF40acj1vIxrnQLufQ+tyqi4HhHNv16RSr3FyASk8BC1vy\r\ny+GjfeSiiioq9n6TwP4=',1600,4,1,1,'正代'),(95,'YS_LOG_HK_186_1','linux','root',2323,'nginx','/',0,2,1,1,'香港机房主控机器'),(96,'CP_NG_HK_8_154','linux','root',22,'nginx','ZkR9BHKGih2Etf+um527ZH2qyYGbXk0y5TynZjpKUgnu0OkFMXhNaU9xlcVQMBZId9kmgdd9ed52\nwGuJqPJlLfB2Hgai0KRaFG6J1GYCSx/yDQPkvG86UbAYXfAfgg5iJZh7dN1o9FDcXkm6mQtRzeEH\njy5a81Xi8D1oXl4zQiE=\n',1500,3,1,1,'支付转发'),(97,'CP_NG_HK_1_90','linux','root',22992,'nginx','ak34vnV0PrdQxGvEqHlUhtLIWrY2ChraWQ0rKaLlo7LIW/hWLjmsj3oI2C5Dj7utQts1ZTIftnHd\r\nhpfH0d93G4mP1m5kpdoyypCHW6jNKZEqV0l19M0/yhuViwA9xSwp95EHuOA0oQIQ91wx2mNNRsvz\r\nVEdhGMWz1997934AhEA=',1500,3,1,1,'支付转发'),(98,'APPLEQP_NG_HK_106_52','linux','root',22,'nginx','oWAAw9laCEaGW2Xt4tPGl35rnDSL+BeDbbttJKiWY8X30D8ZfS+9vcuQS6IYHtOiWZnQuVxjSApo\njTvu/dfQQ1hu4W4TIg9YRQMqBN450iwZOiGDqqp0i5h7uusj3NcTJ4oOF6x2IodA13J0+GB9XoPB\n5P/kIqQ58HpfjCiAvoE=\n',3500,4,1,1,''),(99,'APPLEQP_NG_HK_245_122','linux','root',33888,'nginx','KMfJU/q4RiictBR1FAdgBTrOmHOiLnVG0Hm1YJxGohqN06VCEugFnJaaR/HEkbKhklvyJHNynf90\nIiIZbcl9ki/19uz+h56fWvlT6dmxjxGHMwrvGOFjOfOXBjrM1In23l2gNV/i29rVlp/4EASF10hp\nvRBg3pK4LuHNGxIPsXY=\n',1500,3,1,1,''),(100,'APPLEQP_NG_HK_139_26','linux','root',22,'nginx','OCeZ9C4NU0akpADmuvczU+5/3gPiALw/gHIVO7fCxkBsJDpUFhlMXDAcBEJaxOZL9dqXN+PYkRjQ\nzI/jViZKzYuXsPStADy4b/YGeEtidS3rPU9V+ebV0KaVo6UWxgW8m+QZZK+R7h5LaOtJoi0miTZN\naOVM3ScwQdjvyVswgQg=\n',3500,4,1,1,''),(101,'YS_NG_HK_205_27','linux','root',33923,'nginx','U5h9JQud9iAm7q4Y/5duEBUDAuKKWShT9W6E9aELE1ln5maipA94xenVugg6oU2C8ZYG9Ll/X00z\r\nAnMUSm9+zK3Ezp+DwM5tWomBIszvIo0+kAikV3nTi/OwbuJjLDWmYpXV5IDfbpFtdIZDDAZ8d0a4\r\n2G4OU7F5IKN4pQvrs5s=',2200,5,1,1,'勇士旧版体育反代 专用'),(102,'YS_NG_HK_206_18','linux','root',33923,'nginx','GlsDAcIvxq2tRRl/Aph8I4NXV0cGXEwGRYrm17Y421W22v0/YKAd4pY518FF7uY8DnhLjvZ5iJKs\r\nCe09fjm1YroYJSMthlOrBab7jo9FHvMJsUBv8Ghtaq+zQr7BmuDYDG92LNWrzMfwSXbZb+xVLd5U\r\n3azfbrfU0v+P8IpQtz8=',2200,5,1,1,'勇士旧版体育反代 专用'),(103,'YS_NG_HK_207_3','linux','root',33923,'nginx','YOLeLknwAzysResTA+Irs82XmjMTm5FkI2BuvWrdPkCfRaRTtn+wSFvHQOyBa4JqFhMcLrDZoysf\r\nldHY4aD/ocb0pGrb9rVlEUTBymMohsNJ1sxnMD/MKB4iTykOi0z4bMbBA9L9tbx2zBqD83lWupNn\r\nMhO3lJM9NLqm9NJMjvo=',2200,5,1,1,'勇士旧版体育反代 专用'),(104,'APPLEQP_NG_HK_228_178','linux','root',33888,'nginx','csv4U2Uocfm43Kvl+XmDZdNZK+JaTkgehvzAG5MvXnaXA2tpC1W9aSfBb0T7baH0XX0v0DXw15IU\n2e5cppxwjNneEHQewX06Bi0ZBlY3aoGdaMOKsgkO1V9hSA87w7xsqi349pWnwFEOpXNHINfPD2Uq\nabUT1/2SCnAbPDbQK3o=\n',1500,3,1,1,''),(105,'APPLEQP_NG_HK_32_98','linux','root',33888,'nginx','zfYN0pqY16Gecl9as3B6CnTqyVjlFo0QphCHCg5i0fmCP2NMNGFvUIl2y7n7Vbsnzp4ueJjDfGBZ\nC9AHN2JyMTWN2YFp0MqYne9MpLp/OyzLIcDfufmeLNS2dsm7rwY6Ksm8EvEh5B1qcuQzCPMUd4tI\nHyfQ+WWdyzngHLtJJKM=\n',1500,3,1,1,''),(106,'APPLEQP_NG_HK_117_178','linux','root',33888,'nginx','Vng47q9qn9Iwm5+d1qXda0gnFv+aCtFxPSp3Lwi1GCTfPk7LWCh+REKtNCiAHb0SWxkLbbR3+b0l\nxbn8hbxJCXqsgZoWzLfQaur0pNGueSTiom3bVGJF2TfIU9/xmEAYJ3pGDawZ8Dl1rXJ0EZLIzdGC\n0pxA0aKsQTRre+5q7V0=\n',1500,3,1,1,''),(107,'PUB_SM_KR_1_90','linux','root',22992,'svn','kxkduqqYEwUpFBx4JjPeRbu3s+I/+emAIWW23ruExVMbfoZpmwzDwUdh5xRMvZahiOn7ezIO7E7G\r\nTfqPfZFm3HAB1v5Sprt2IAtOBcpNomexerNYJZrEiGrShiYWcDIVa3U3UUfjYeMOMmmh1VAmnp9j\r\ni/kPBPRBkiWXhUz9MUw=',0,10,1,1,''),(108,'PUB_SM_HK_117_186','linux','root',39393,'svn','ut63p2jtqrilZGbiQ7+EX8eVbg4C3HJvJ9SvmDuAlbGNvaoPCyuPRAcr+8nJfChXUHDdNGFHdWI5\nBkk1U8SZJhnsAAsamNX1rjmomqdC1lIq4hyPRz+KIjVjAGSV2LAkQ5F41psOmhakJbLl++Kz4/7G\nnI4bHlZ5QPuxUXmZNcI=\n',1800,3,1,1,''),(109,'SA-VPN-HK-73-146','linux','root',22,'nginx','/',189,2,1,1,''),(110,'EQQP_NG_HK_191_65','linux','root',22,'nginx','reDf2eM3TryaZUN4UhLkM05Q1ukiprrkrqBA39rRXUBLl2EoEpKgcbgMS3qcKXAm9fEgjyrj9x2g\nu7JYHf8j5fWBsOazNnwPgHMT9XU/gKEjRbyrPSzuHNWIkfs//Heg+H8UprUKhzFS5Wym7Eb7EoMj\nUH1VQYp8fdDHSSVkU0s=\n',1500,3,1,1,''),(111,'EQQP_NG_HK_10_219','linux','root',22,'nginx','Mk85U8igzPWxn93Vy7Y3OB6+0UaZHAC9GubN4reJ+Qq6PUQd0R9eS9S2kS8mahY6TNQu1zjQnsgY\njpiddPiYKJCyFAedAAlyEySoy1uAzCpZAlGq/jF93EWKiZ6SYzeXbSYVBVgswqSLM15LU3ajzPUD\npAZwJEPZGWbRoteLZbQ=\n',1500,3,1,1,''),(112,'PUB_SM_KR_91_211','linux','root',22,'svn','jKkmHLbblD6dvyreXCzAkw8Eq6N1IjRL6cIV9VUY7aBiReARxVAjB+SEwPXAyfEO3CnxGj1H06aH\nP713HPFwMVqYkDJIUqLcfEnGKu6y0VS+yLG26NAV28heeA822z7hDoXVect5iGvrD6x3M4GvgZUb\nOUO0+gUeLlh9t9cSpBg=\n',0,10,1,1,''),(113,'RYHT_NG_HK_22_106','linux','root',22,'nginx','PbnfbUOxlBiQnirPhEGPbix3cjltu4L+JcfGUo9vwJLYiOZcATLbHqlFZUexoETcgJHqZvVKBCl/\r\nzDKxeQx3996yLcRcHqR62nvs6Zw0zPIgFpfU/1pbLpHXNgf91bIitOyGdYnQJQF/RicptcaWzZWP\r\nuPVljWWWX5Lng7fEF2c=',1350,3,1,1,'');
/*!40000 ALTER TABLE `saltstack_miniontb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upgrade_projecttb`
--

DROP TABLE IF EXISTS `upgrade_projecttb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upgrade_projecttb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `envir` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `project` varchar(10) NOT NULL,
  `customer` int(11) NOT NULL,
  `svn_customer_together` longtext,
  `user` varchar(24) NOT NULL,
  `port` int(11) NOT NULL,
  `password` longtext NOT NULL,
  `server_type` varchar(10) NOT NULL,
  `role` varchar(10) NOT NULL,
  `url` varchar(128) NOT NULL,
  `alive` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `svn` int(11) NOT NULL,
  `svn_mst_alive` int(11) NOT NULL,
  `svn_mst_lock` int(11) NOT NULL,
  `privatekey` longtext NOT NULL,
  `publickey` longtext NOT NULL,
  `info` varchar(128) NOT NULL,
  `svn_master_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `upgrade_projecttb_product_project_envir_cu_d8aeca23_uniq` (`product`,`project`,`envir`,`customer`,`server_type`),
  KEY `upgrade_projecttb_svn_master_id_3847b7f5` (`svn_master_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upgrade_projecttb`
--

LOCK TABLES `upgrade_projecttb` WRITE;
/*!40000 ALTER TABLE `upgrade_projecttb` DISABLE KEYS */;
INSERT INTO `upgrade_projecttb` VALUES (1,1,12,'houtai',29,NULL,'root',11223,'/','front','main','http://manage2.uc22.co/',1,1,1,0,0,'-----BEGIN RSA PRIVATE KEY-----\r\nMIICXAIBAAKBgQDOHF/idTvIic+t8yTAsIYVL3z0Sz/UmbVjHQeAT3GmqoQtlddDZe1E0Bgg09papMhrIM7K+POZp/0tFWviZs0C+9p3tK03s9o4e79NYFtnNp0LF7wMmzQmDVpWmUZprFxEc0pd2nwyGtiOD73jpi838nvG/5Uv+6FKNNVpaczv3wIDAQABAoGANc6YhZEfY1H+4qWIIbmzt1InZ8tBRao+/Tn13FxhCiaXzSLCCLlSQNWmhuNnrKQ6IiV1du2ZArMlWCCwgnFd8YJ5Xn5qEHWM6vakA/W83/pud/3a0LqiVqwlxpTGv5IjfsqjbbgbFjIo2Ql4YUK4xL3vDJEDo38uhLoqLMzGNqECQQDtKwKoomo/7EAA9wes8tlDJeQdUHi0ZGb9UQcvUodmZKPMq27RdIw4bqiL7u99L2qiuJcUUVF34+7PRGrlItNxAkEA3noOHt9DL8SbA1lQQNrj4NhMyNngGdGoMSwl2osfn3HBco/JM3uEHAj6n2x1BN0JSYqAEwDjPt2DfK99NbCwTwJBAIMxoKXiOj4kFP+zpwZPzEltw3NH2Y2IYMRON1hBIe9NSqLkTkgFXa+13vyRbt9kBGwBCmnN1fApISh8o1kfW7ECQADYY99YJ9AxpgkgOL7WVhFPoRMOSNywQDxXl5k5+BfJ/dsqkrAgYwMcQZ+DcPpgwJ1H6m6oDTT68HnzzLz8e98CQC2dY1lAijYWwe1gXDSr8dX7PpFs66lB72QRV5cpg0ku6pdt7uokl/Ymkv26gNtFCL67Nq0tDIgbLaEcxUY4Muo=\r\n-----END RSA PRIVATE KEY-----','-----BEGIN PUBLIC KEY-----\r\nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDOHF/idTvIic+t8yTAsIYVL3z0Sz/UmbVjHQeAT3GmqoQtlddDZe1E0Bgg09papMhrIM7K+POZp/0tFWviZs0C+9p3tK03s9o4e79NYFtnNp0LF7wMmzQmDVpWmUZprFxEc0pd2nwyGtiOD73jpi838nvG/5Uv+6FKNNVpaczv3wIDAQAB\r\n-----END PUBLIC KEY-----','',NULL),(5,1,12,'caipiao',29,'','root',11223,'Byo6OL+AT2ME6+YzCrlT+HOg0++PGX1HWCPgZ9LB8I9poPbCBBM6X/zVCvrSBv3NOBz4OtWKh8Vo\r\n5XORxkOKkT4TL+5OtJMC+C5amg676lo+2eqBwTeF6B4GKj2t3exul6XzfMgqKGxlVcDnv8nKF/V+\r\niyIeXQvWmrSGOMWXyIg=','front','main','https://uccp44.com',1,1,1,0,0,'-----BEGIN RSA PRIVATE KEY-----\r\nMIICXAIBAAKBgQDOHF/idTvIic+t8yTAsIYVL3z0Sz/UmbVjHQeAT3GmqoQtlddDZe1E0Bgg09papMhrIM7K+POZp/0tFWviZs0C+9p3tK03s9o4e79NYFtnNp0LF7wMmzQmDVpWmUZprFxEc0pd2nwyGtiOD73jpi838nvG/5Uv+6FKNNVpaczv3wIDAQABAoGANc6YhZEfY1H+4qWIIbmzt1InZ8tBRao+/Tn13FxhCiaXzSLCCLlSQNWmhuNnrKQ6IiV1du2ZArMlWCCwgnFd8YJ5Xn5qEHWM6vakA/W83/pud/3a0LqiVqwlxpTGv5IjfsqjbbgbFjIo2Ql4YUK4xL3vDJEDo38uhLoqLMzGNqECQQDtKwKoomo/7EAA9wes8tlDJeQdUHi0ZGb9UQcvUodmZKPMq27RdIw4bqiL7u99L2qiuJcUUVF34+7PRGrlItNxAkEA3noOHt9DL8SbA1lQQNrj4NhMyNngGdGoMSwl2osfn3HBco/JM3uEHAj6n2x1BN0JSYqAEwDjPt2DfK99NbCwTwJBAIMxoKXiOj4kFP+zpwZPzEltw3NH2Y2IYMRON1hBIe9NSqLkTkgFXa+13vyRbt9kBGwBCmnN1fApISh8o1kfW7ECQADYY99YJ9AxpgkgOL7WVhFPoRMOSNywQDxXl5k5+BfJ/dsqkrAgYwMcQZ+DcPpgwJ1H6m6oDTT68HnzzLz8e98CQC2dY1lAijYWwe1gXDSr8dX7PpFs66lB72QRV5cpg0ku6pdt7uokl/Ymkv26gNtFCL67Nq0tDIgbLaEcxUY4Muo=\r\n-----END RSA PRIVATE KEY-----','-----BEGIN PUBLIC KEY-----\r\nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDOHF/idTvIic+t8yTAsIYVL3z0Sz/UmbVjHQeAT3GmqoQtlddDZe1E0Bgg09papMhrIM7K+POZp/0tFWviZs0C+9p3tK03s9o4e79NYFtnNp0LF7wMmzQmDVpWmUZprFxEc0pd2nwyGtiOD73jpi838nvG/5Uv+6FKNNVpaczv3wIDAQAB\r\n-----END PUBLIC KEY-----','',NULL),(6,1,12,'sport',29,NULL,'root',11223,'/','front','main','https://www.653-228.com',1,1,1,0,0,'-----BEGIN RSA PRIVATE KEY-----\r\nMIICXAIBAAKBgQCuELCcuGD24Mi4bu/1ZWOL7XJDE1cCzi6uDBZmCCbr7THCpH9m2pl3PfNzvXI2QbemZDz6Dxr2aYfb6477wD6TfYnm3CgxaOksNk4UGoBP8rLE06moiBQRjDhxWPfokqic5kEb/TZB50S/K10mh8Jc8RVmCCronxm+06MhnoesWwIDAQABAoGAQ3byjPulkWpUQa+1z54JdD2G0NqZGdxCGXFT6R31v/GCHNfXDU1it+XKCyz9LGxSOuqU+7KJF8KVRrbJB2hel/WVO9cm0FCojG1AeYDr2Dv0BetKkyJamZ3m8g0wmaY0R4ap9Ld1O1Xs/5j8ssIdKdIfO/BCylLMD0jsbBfYuvkCQQDlkLOdgb8JX4wH0xXvlhuKHyg5m2ivXax1UJn0Yd9Gctv/syUSvmQLY1N6iDmH5Dfx/+GLOoDjxYRufGbL5NylAkEAwhvqcemA3HCcQ1qLBME264gxulTk8MrVhLat//J/JU7r/wUYxmNmTEVXmDzTc+kcRAT1TM7B/1/G7X57U5cU/wJAbCLQaPZQHcMzPBBTuer0iAiLMy+gjVLLxOs1yic8PHwoY3dolD6486BTF1oJ95gqPkVxYdsqEaDd9AmHhq4EvQJAUdOIykpf6w2BohcKIY/9wd5g8CaXeDZZOh/0S8AC/0w8yf1xCzidyCs3GNMTZHpxUu8wJRfHygqrBjTacktvKwJBAJ1GDh0zyV02PNIeCoUrw/IzjL2+MineaUXauOeUG9UgDu5d+anEvvTEI1co4fHgqtVaydX8ayGPpfl2gQ3UI7M=\r\n-----END RSA PRIVATE KEY-----','-----BEGIN PUBLIC KEY-----\r\nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCuELCcuGD24Mi4bu/1ZWOL7XJDE1cCzi6uDBZmCCbr7THCpH9m2pl3PfNzvXI2QbemZDz6Dxr2aYfb6477wD6TfYnm3CgxaOksNk4UGoBP8rLE06moiBQRjDhxWPfokqic5kEb/TZB50S/K10mh8Jc8RVmCCronxm+06MhnoesWwIDAQAB\r\n-----END PUBLIC KEY-----','',NULL),(7,1,0,'vpn',29,'','root',11223,'/','front','main','https://arno.com',1,1,0,0,0,'-----BEGIN RSA PRIVATE KEY-----\r\nMIICXAIBAAKBgQDOHF/idTvIic+t8yTAsIYVL3z0Sz/UmbVjHQeAT3GmqoQtlddDZe1E0Bgg09papMhrIM7K+POZp/0tFWviZs0C+9p3tK03s9o4e79NYFtnNp0LF7wMmzQmDVpWmUZprFxEc0pd2nwyGtiOD73jpi838nvG/5Uv+6FKNNVpaczv3wIDAQABAoGANc6YhZEfY1H+4qWIIbmzt1InZ8tBRao+/Tn13FxhCiaXzSLCCLlSQNWmhuNnrKQ6IiV1du2ZArMlWCCwgnFd8YJ5Xn5qEHWM6vakA/W83/pud/3a0LqiVqwlxpTGv5IjfsqjbbgbFjIo2Ql4YUK4xL3vDJEDo38uhLoqLMzGNqECQQDtKwKoomo/7EAA9wes8tlDJeQdUHi0ZGb9UQcvUodmZKPMq27RdIw4bqiL7u99L2qiuJcUUVF34+7PRGrlItNxAkEA3noOHt9DL8SbA1lQQNrj4NhMyNngGdGoMSwl2osfn3HBco/JM3uEHAj6n2x1BN0JSYqAEwDjPt2DfK99NbCwTwJBAIMxoKXiOj4kFP+zpwZPzEltw3NH2Y2IYMRON1hBIe9NSqLkTkgFXa+13vyRbt9kBGwBCmnN1fApISh8o1kfW7ECQADYY99YJ9AxpgkgOL7WVhFPoRMOSNywQDxXl5k5+BfJ/dsqkrAgYwMcQZ+DcPpgwJ1H6m6oDTT68HnzzLz8e98CQC2dY1lAijYWwe1gXDSr8dX7PpFs66lB72QRV5cpg0ku6pdt7uokl/Ymkv26gNtFCL67Nq0tDIgbLaEcxUY4Muo=\r\n-----END RSA PRIVATE KEY-----','-----BEGIN PUBLIC KEY-----\r\nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDOHF/idTvIic+t8yTAsIYVL3z0Sz/UmbVjHQeAT3GmqoQtlddDZe1E0Bgg09papMhrIM7K+POZp/0tFWviZs0C+9p3tK03s9o4e79NYFtnNp0LF7wMmzQmDVpWmUZprFxEc0pd2nwyGtiOD73jpi838nvG/5Uv+6FKNNVpaczv3wIDAQAB\r\n-----END PUBLIC KEY-----','',NULL),(8,1,16,'sport',29,'','root',11223,'/','front','main','https://8868tk.org/',1,1,1,0,0,'-----BEGIN RSA PRIVATE KEY-----\r\nMIICXAIBAAKBgQCs/K7jMZgZDDIqqa5yQy+aC6MoQdAPZW03Bm8u7xrFCtZIOAi/7ncbjPwj8sUQXrdPtdHwVmu+7TTwbFsSAPsyOYM3nD5LpIWQeq8woDO5GDYTffKuXs0wmZhnDjZIcaAaxcXFgWOOWJsb+i9iylBN6trZOQcOYvKIO3jYz0C/wQIDAQABAoGAVPQPC0Ja2Mo1hOAp7LF0Ginm6alQfY8pEKHXTmxccDI/Q95I5cE9u0kEtr7N6pkpWzsGrAo1BeHGYuBD5VaYBaYrFB5kBnvAm8fpFPgAFSfEr7EDzTSXLYIfKTjYEsT15WRrKLg3G0RGmqtZEs62IpIRcfpso0L68GgX8ZcWqqUCQQDhd77u/IPYf/YRaTOsdzPJU7sAtZbQ0cdEwLeFhu2ek/b+3dfRZ6nUBniO5WkAbfxjxTixYCCIp/egIJu+Xr3nAkEAxGmY0LLrXHM+uqbqrFEf1wa/Xmu9lWh32mKXhU1bPuYJhrZyCAU4CDJd7uXty7CoyBev0YxFDjzC9qNZz77QFwJAHOtVDCZLavuOvlD2Fcr8U3hv5flkrMgbfRAS+geCdvKXnb0qr2tSdyWVVQ7L1whEdS+Yw/eGdMDGnD1SfKp+RQJAXBKsYlkdYA9ePp10sSauaFxvZVHYY6u/U46YPRMQTSIFITNxrTTVGXKS+iSrHqtH09TWxMKetJfjRT86INrwLQJBAINFTZXu4qss/B8+rPzCrWdcHxhYDdtr7SqLtI/ogwuxcPuQY4aQb5W9YEkKJ3rHrNJUqoT2pwWtoHX4XUsnsZg=\r\n-----END RSA PRIVATE KEY-----','-----BEGIN PUBLIC KEY-----\r\nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCs/K7jMZgZDDIqqa5yQy+aC6MoQdAPZW03Bm8u7xrFCtZIOAi/7ncbjPwj8sUQXrdPtdHwVmu+7TTwbFsSAPsyOYM3nD5LpIWQeq8woDO5GDYTffKuXs0wmZhnDjZIcaAaxcXFgWOOWJsb+i9iylBN6trZOQcOYvKIO3jYz0C/wQIDAQAB\r\n-----END PUBLIC KEY-----','',NULL),(9,1,16,'houtai',29,'','root',11223,'/','front','main','http://www.hg8383hg12345.com',1,1,1,0,0,'-----BEGIN RSA PRIVATE KEY-----\r\nMIICXAIBAAKBgQCs/K7jMZgZDDIqqa5yQy+aC6MoQdAPZW03Bm8u7xrFCtZIOAi/7ncbjPwj8sUQXrdPtdHwVmu+7TTwbFsSAPsyOYM3nD5LpIWQeq8woDO5GDYTffKuXs0wmZhnDjZIcaAaxcXFgWOOWJsb+i9iylBN6trZOQcOYvKIO3jYz0C/wQIDAQABAoGAVPQPC0Ja2Mo1hOAp7LF0Ginm6alQfY8pEKHXTmxccDI/Q95I5cE9u0kEtr7N6pkpWzsGrAo1BeHGYuBD5VaYBaYrFB5kBnvAm8fpFPgAFSfEr7EDzTSXLYIfKTjYEsT15WRrKLg3G0RGmqtZEs62IpIRcfpso0L68GgX8ZcWqqUCQQDhd77u/IPYf/YRaTOsdzPJU7sAtZbQ0cdEwLeFhu2ek/b+3dfRZ6nUBniO5WkAbfxjxTixYCCIp/egIJu+Xr3nAkEAxGmY0LLrXHM+uqbqrFEf1wa/Xmu9lWh32mKXhU1bPuYJhrZyCAU4CDJd7uXty7CoyBev0YxFDjzC9qNZz77QFwJAHOtVDCZLavuOvlD2Fcr8U3hv5flkrMgbfRAS+geCdvKXnb0qr2tSdyWVVQ7L1whEdS+Yw/eGdMDGnD1SfKp+RQJAXBKsYlkdYA9ePp10sSauaFxvZVHYY6u/U46YPRMQTSIFITNxrTTVGXKS+iSrHqtH09TWxMKetJfjRT86INrwLQJBAINFTZXu4qss/B8+rPzCrWdcHxhYDdtr7SqLtI/ogwuxcPuQY4aQb5W9YEkKJ3rHrNJUqoT2pwWtoHX4XUsnsZg=\r\n-----END RSA PRIVATE KEY-----','-----BEGIN PUBLIC KEY-----\r\nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCs/K7jMZgZDDIqqa5yQy+aC6MoQdAPZW03Bm8u7xrFCtZIOAi/7ncbjPwj8sUQXrdPtdHwVmu+7TTwbFsSAPsyOYM3nD5LpIWQeq8woDO5GDYTffKuXs0wmZhnDjZIcaAaxcXFgWOOWJsb+i9iylBN6trZOQcOYvKIO3jYz0C/wQIDAQAB\r\n-----END PUBLIC KEY-----','',NULL),(10,1,26,'caipiao',29,NULL,'root',11223,'/','front','main','https://www.gscp02.com',0,1,1,0,0,'-----BEGIN RSA PRIVATE KEY-----\r\nMIICXAIBAAKBgQDUVky9BGk0htYt9cjVA8jZYf4xkTSfRyHO/dazvYFfpbIRZDNeXSriCY8Dsygr6smeWPo3l0YL3QsJsCzr70vyJz+8B8imQj7lGriDQzN57B6ZECqoQG+MKD/ijZjETaGPi3E6eQNtMcI3RDawGemf6Hx7MG8FfwZZe8N7YIWNOwIDAQABAoGAWW+QGv1Eos84X1trH+3cJ1PTEWWr2HrJjrn0OPjVCUhtXE3sJQ7xBQwppNFNVlIqYfvwSIH7CvwrrgT6ptXAEpY6NV8kdC0zsXBIQF9s+evu3bUwF1AQiiGYG0psHGusoZj3jWwb0i0vZjaoJ5uQKkDJIx4p8xjW6Cy1/GqgqkECQQD0wigNBXoo+kh6qX1Pjm8kqnFa+m7xcRrUblYTMTPuvNBNf8xOwSi/RVaqRNcEnTZDk/94l7Kq5O4QUZayt4wpAkEA3hbv2p7JjmGrr7wSAs3yUwn4juN3qmZnEbFN1iYQIazeWcqkjRI+baaUM5Me5o8+MiN3iGKlC3WUyQ4rJ+C6wwJARt9lu4eHfRAkJqinaX8D/ekA0+hKcc1fiH2+nOYVdJ7l7lsALRnPk7sfQkSWwnZHfUAArMm4abXKnZ0SdwOhKQJARffF8wNJjrDYrRG8PuPxLxYaF7I0FhwS5rEMS6ZMOL/EgVdlRgh0YIk1cZYtCwgf2R3xX6dsRdLyX/E1yWd0jwJBANiRNSx0Bzsz4GOFaZXYQohRCXjmtPVev/cev4w78xzQknKdctAxeVD0sXKF32XMnaRpk2otkuzI9QH/0+PVZfU=\r\n-----END RSA PRIVATE KEY-----','-----BEGIN PUBLIC KEY-----\r\nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDUVky9BGk0htYt9cjVA8jZYf4xkTSfRyHO/dazvYFfpbIRZDNeXSriCY8Dsygr6smeWPo3l0YL3QsJsCzr70vyJz+8B8imQj7lGriDQzN57B6ZECqoQG+MKD/ijZjETaGPi3E6eQNtMcI3RDawGemf6Hx7MG8FfwZZe8N7YIWNOwIDAQAB\r\n-----END PUBLIC KEY-----','',NULL),(11,1,12,'image',29,NULL,'root',11223,'/','backend','main','https://www.cdn3721.com',0,1,0,0,0,'-----BEGIN RSA PRIVATE KEY-----\r\nMIICXAIBAAKBgQDOHF/idTvIic+t8yTAsIYVL3z0Sz/UmbVjHQeAT3GmqoQtlddDZe1E0Bgg09papMhrIM7K+POZp/0tFWviZs0C+9p3tK03s9o4e79NYFtnNp0LF7wMmzQmDVpWmUZprFxEc0pd2nwyGtiOD73jpi838nvG/5Uv+6FKNNVpaczv3wIDAQABAoGANc6YhZEfY1H+4qWIIbmzt1InZ8tBRao+/Tn13FxhCiaXzSLCCLlSQNWmhuNnrKQ6IiV1du2ZArMlWCCwgnFd8YJ5Xn5qEHWM6vakA/W83/pud/3a0LqiVqwlxpTGv5IjfsqjbbgbFjIo2Ql4YUK4xL3vDJEDo38uhLoqLMzGNqECQQDtKwKoomo/7EAA9wes8tlDJeQdUHi0ZGb9UQcvUodmZKPMq27RdIw4bqiL7u99L2qiuJcUUVF34+7PRGrlItNxAkEA3noOHt9DL8SbA1lQQNrj4NhMyNngGdGoMSwl2osfn3HBco/JM3uEHAj6n2x1BN0JSYqAEwDjPt2DfK99NbCwTwJBAIMxoKXiOj4kFP+zpwZPzEltw3NH2Y2IYMRON1hBIe9NSqLkTkgFXa+13vyRbt9kBGwBCmnN1fApISh8o1kfW7ECQADYY99YJ9AxpgkgOL7WVhFPoRMOSNywQDxXl5k5+BfJ/dsqkrAgYwMcQZ+DcPpgwJ1H6m6oDTT68HnzzLz8e98CQC2dY1lAijYWwe1gXDSr8dX7PpFs66lB72QRV5cpg0ku6pdt7uokl/Ymkv26gNtFCL67Nq0tDIgbLaEcxUY4Muo=\r\n-----END RSA PRIVATE KEY-----','-----BEGIN PUBLIC KEY-----\r\nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDOHF/idTvIic+t8yTAsIYVL3z0Sz/UmbVjHQeAT3GmqoQtlddDZe1E0Bgg09papMhrIM7K+POZp/0tFWviZs0C+9p3tK03s9o4e79NYFtnNp0LF7wMmzQmDVpWmUZprFxEc0pd2nwyGtiOD73jpi838nvG/5Uv+6FKNNVpaczv3wIDAQAB\r\n-----END PUBLIC KEY-----','凤凰彩票图片服务器',NULL),(12,1,0,'other',29,'','root',11223,'/','other','main','https://arno.com',1,1,0,0,0,'-----BEGIN RSA PRIVATE KEY-----\r\nMIICXAIBAAKBgQDOHF/idTvIic+t8yTAsIYVL3z0Sz/UmbVjHQeAT3GmqoQtlddDZe1E0Bgg09papMhrIM7K+POZp/0tFWviZs0C+9p3tK03s9o4e79NYFtnNp0LF7wMmzQmDVpWmUZprFxEc0pd2nwyGtiOD73jpi838nvG/5Uv+6FKNNVpaczv3wIDAQABAoGANc6YhZEfY1H+4qWIIbmzt1InZ8tBRao+/Tn13FxhCiaXzSLCCLlSQNWmhuNnrKQ6IiV1du2ZArMlWCCwgnFd8YJ5Xn5qEHWM6vakA/W83/pud/3a0LqiVqwlxpTGv5IjfsqjbbgbFjIo2Ql4YUK4xL3vDJEDo38uhLoqLMzGNqECQQDtKwKoomo/7EAA9wes8tlDJeQdUHi0ZGb9UQcvUodmZKPMq27RdIw4bqiL7u99L2qiuJcUUVF34+7PRGrlItNxAkEA3noOHt9DL8SbA1lQQNrj4NhMyNngGdGoMSwl2osfn3HBco/JM3uEHAj6n2x1BN0JSYqAEwDjPt2DfK99NbCwTwJBAIMxoKXiOj4kFP+zpwZPzEltw3NH2Y2IYMRON1hBIe9NSqLkTkgFXa+13vyRbt9kBGwBCmnN1fApISh8o1kfW7ECQADYY99YJ9AxpgkgOL7WVhFPoRMOSNywQDxXl5k5+BfJ/dsqkrAgYwMcQZ+DcPpgwJ1H6m6oDTT68HnzzLz8e98CQC2dY1lAijYWwe1gXDSr8dX7PpFs66lB72QRV5cpg0ku6pdt7uokl/Ymkv26gNtFCL67Nq0tDIgbLaEcxUY4Muo=\r\n-----END RSA PRIVATE KEY-----','-----BEGIN PUBLIC KEY-----\r\nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDOHF/idTvIic+t8yTAsIYVL3z0Sz/UmbVjHQeAT3GmqoQtlddDZe1E0Bgg09papMhrIM7K+POZp/0tFWviZs0C+9p3tK03s9o4e79NYFtnNp0LF7wMmzQmDVpWmUZprFxEc0pd2nwyGtiOD73jpi838nvG/5Uv+6FKNNVpaczv3wIDAQAB\r\n-----END PUBLIC KEY-----','此项目用于防DNS劫持',NULL),(13,1,12,'ggz',29,NULL,'root',11221,'/','backend','main','https://arno.com',1,0,0,0,0,'-----BEGIN RSA PRIVATE KEY-----\r\nMIICWwIBAAKBgQC+nZLWfjSP1z+4RIXRHL6t1TPXfA8qq/DoTPcdD+hTYBUu7jEe/homKzgHq/ToeFFOzG0QxLLIeejC42F7hU7+/mCZLcGeNPPL9oDVwgR+mnHoiPK/ZIY8F8FBR7IRliWS+4+f+LZfh1yhQUyHSLoU5fOWsuv7M++khDwclUAqDQIDAQABAoGAT9a8PC8cYOste0boLdA2ZaUZU7ZYu+zMuOAT2Q5ipxllhgSqemrAFSChFUWHDR/oHnMtc4qPv7ygK5EFsbEChr1xijlv+rWsviGf7d7rgwD6h/K4Nr0kW5bV/3UNkhUdKNfvbgmAxSI+XMJz83yHgkh/G+W4IL9MIk5wfw229EECQQD2AR1IafMOyoTWhc2m29yKBFGW5bo1Wcm5/axo0pwZdzs/A4wZtNan7cAUa9zrhJxIXBoqAbHp4TI8qcFgdfbFAkEAxlxQ8xsVzhKPtye+1S6L5qIRZ0viAy6HadEtGWTBPtZ2ueCb8ra3FU4ZN51U/S25E8IopgytKG/oRHMGhhNaqQJAKMawguNE7Yu2DxTorKK+4IWsvHVhsxwp6tFYdZuLUlFIGb7NxykJd5ZaA0iJuuQlP308vP/A7MJuIE4HBqUm/QJAMXWRRZyqSjC8numNHrC1d3NPrZbxKuPuJcdfXGaP/LAS+HP1zoYajnhjt0dGir5c2H1gD0832c5VdsPLi6DFyQJAJRPjPt+mTlLMSSRIqZLpiR92pMH6rCVDOTAAu35Ch+gKgvjJOxfBluISo1qzL49yB6qP8JvqiG+yjfQhi2ZR1Q==\r\n-----END RSA PRIVATE KEY-----','-----BEGIN PUBLIC KEY-----\r\nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC+nZLWfjSP1z+4RIXRHL6t1TPXfA8qq/DoTPcdD+hTYBUu7jEe/homKzgHq/ToeFFOzG0QxLLIeejC42F7hU7+/mCZLcGeNPPL9oDVwgR+mnHoiPK/ZIY8F8FBR7IRliWS+4+f+LZfh1yhQUyHSLoU5fOWsuv7M++khDwclUAqDQIDAQAB\r\n-----END PUBLIC KEY-----','',NULL),(14,1,27,'houtai',29,'','root',22,'VRRxnv09uj3OuBR0Wdbnt+plBkGP0kcpHW8iHknkTAmihygnhEz3TuQHtGIiVq/mzKicPWI86hUz\r\nvHwf06O+70XnODlBnISUB5KgN7WzetmzbVs8eB+V200LERsxjdujLXolvkfyEA+EVOhPyRJ6Yvkc\r\nVxlO2ATZMDikMFszYEU=','front','main','https://www.appweiphone.com',1,1,1,0,0,'-----BEGIN RSA PRIVATE KEY-----\r\nMIICXgIBAAKBgQC2dqZVOoy8FSSkz9q/uCE4171KsKTS2Sm1i5AsOZXXJOe6NfsS1cNtnEQt1bLsRy/4FK1s2U4gTkZnk7Lum1S6RX6yaGTalNJTFSAFHT69ksD9DvcnTlX/0ExE4qRGosJ3ABNkOEHVfecfWHKbVdV7XUM4DNOiyOe9gGVyp1y7vwIDAQABAoGAQd6lf4Eqiz+qweDTnICxZZ7klBEe/4ssNoDSpFSJlmiZSyzvncYTzf8q0c0i0Y+Fbq6wSOpN/PWlDwFQCDmFJTi4ISWYC6CnbGLtwn2em1pCozLh/mfRuXwr9DNzrCs5T1CDfRd3X3E1Kc6A+PjGmlBboJ6kQfC6aJ+wNZ1pqKECQQDw5CQuB6UYGDAav12Fs8EOz25nMWxN3we6DTPzfVK5x5A1I6QNh1DjrTaa19I1kAs0HH/KERnQgSSp6TQOqSxPAkEAwehd15UgW7Physbp7YKOvmrLgPJZyFD0Jj63QtarYcuqJXDHBwx2P5D4UJdnj6k+nVHcaKpE9ta/KaRXd0NtkQJBAJfrGVIaKikm3/eOZjmy4ncnpHXZ+nalyGayeuf9SlW1oKGSp5yMkRv1GjHPGFgFTrt/mavi2wfe2jN5ygXQ9QsCQQC8rfgyP79eu+gnQep526I+Evi2HhvS2ULYvAnilbPp0x1alSR07WFadRvKf6ibl5l/xxnrFlNIxKj6QhmByTChAkEArZ5ah6gGMRvRASr8yYdCndYxATaECaPO6LgbJWImf+Tz8mDVzTq74d0I0r2wjXFmiOt4hgp1GSjYzOU61YD8WQ==\r\n-----END RSA PRIVATE KEY-----','-----BEGIN PUBLIC KEY-----\r\nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC2dqZVOoy8FSSkz9q/uCE4171KsKTS2Sm1i5AsOZXXJOe6NfsS1cNtnEQt1bLsRy/4FK1s2U4gTkZnk7Lum1S6RX6yaGTalNJTFSAFHT69ksD9DvcnTlX/0ExE4qRGosJ3ABNkOEHVfecfWHKbVdV7XUM4DNOiyOe9gGVyp1y7vwIDAQAB\r\n-----END PUBLIC KEY-----','',NULL),(15,1,27,'caipiao',29,'','root',22,'/','front','main','https://www.54321kai.com/',1,1,1,0,0,'-----BEGIN RSA PRIVATE KEY-----\r\nMIICXgIBAAKBgQC2dqZVOoy8FSSkz9q/uCE4171KsKTS2Sm1i5AsOZXXJOe6NfsS1cNtnEQt1bLsRy/4FK1s2U4gTkZnk7Lum1S6RX6yaGTalNJTFSAFHT69ksD9DvcnTlX/0ExE4qRGosJ3ABNkOEHVfecfWHKbVdV7XUM4DNOiyOe9gGVyp1y7vwIDAQABAoGAQd6lf4Eqiz+qweDTnICxZZ7klBEe/4ssNoDSpFSJlmiZSyzvncYTzf8q0c0i0Y+Fbq6wSOpN/PWlDwFQCDmFJTi4ISWYC6CnbGLtwn2em1pCozLh/mfRuXwr9DNzrCs5T1CDfRd3X3E1Kc6A+PjGmlBboJ6kQfC6aJ+wNZ1pqKECQQDw5CQuB6UYGDAav12Fs8EOz25nMWxN3we6DTPzfVK5x5A1I6QNh1DjrTaa19I1kAs0HH/KERnQgSSp6TQOqSxPAkEAwehd15UgW7Physbp7YKOvmrLgPJZyFD0Jj63QtarYcuqJXDHBwx2P5D4UJdnj6k+nVHcaKpE9ta/KaRXd0NtkQJBAJfrGVIaKikm3/eOZjmy4ncnpHXZ+nalyGayeuf9SlW1oKGSp5yMkRv1GjHPGFgFTrt/mavi2wfe2jN5ygXQ9QsCQQC8rfgyP79eu+gnQep526I+Evi2HhvS2ULYvAnilbPp0x1alSR07WFadRvKf6ibl5l/xxnrFlNIxKj6QhmByTChAkEArZ5ah6gGMRvRASr8yYdCndYxATaECaPO6LgbJWImf+Tz8mDVzTq74d0I0r2wjXFmiOt4hgp1GSjYzOU61YD8WQ==\r\n-----END RSA PRIVATE KEY-----','-----BEGIN PUBLIC KEY-----\r\nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC2dqZVOoy8FSSkz9q/uCE4171KsKTS2Sm1i5AsOZXXJOe6NfsS1cNtnEQt1bLsRy/4FK1s2U4gTkZnk7Lum1S6RX6yaGTalNJTFSAFHT69ksD9DvcnTlX/0ExE4qRGosJ3ABNkOEHVfecfWHKbVdV7XUM4DNOiyOe9gGVyp1y7vwIDAQAB\r\n-----END PUBLIC KEY-----','',NULL),(16,1,27,'pay',29,'','root',22,'/','front','main','https://pay3.qm6686.com/',1,0,1,0,0,'-----BEGIN RSA PRIVATE KEY-----\r\nMIICXgIBAAKBgQC2dqZVOoy8FSSkz9q/uCE4171KsKTS2Sm1i5AsOZXXJOe6NfsS1cNtnEQt1bLsRy/4FK1s2U4gTkZnk7Lum1S6RX6yaGTalNJTFSAFHT69ksD9DvcnTlX/0ExE4qRGosJ3ABNkOEHVfecfWHKbVdV7XUM4DNOiyOe9gGVyp1y7vwIDAQABAoGAQd6lf4Eqiz+qweDTnICxZZ7klBEe/4ssNoDSpFSJlmiZSyzvncYTzf8q0c0i0Y+Fbq6wSOpN/PWlDwFQCDmFJTi4ISWYC6CnbGLtwn2em1pCozLh/mfRuXwr9DNzrCs5T1CDfRd3X3E1Kc6A+PjGmlBboJ6kQfC6aJ+wNZ1pqKECQQDw5CQuB6UYGDAav12Fs8EOz25nMWxN3we6DTPzfVK5x5A1I6QNh1DjrTaa19I1kAs0HH/KERnQgSSp6TQOqSxPAkEAwehd15UgW7Physbp7YKOvmrLgPJZyFD0Jj63QtarYcuqJXDHBwx2P5D4UJdnj6k+nVHcaKpE9ta/KaRXd0NtkQJBAJfrGVIaKikm3/eOZjmy4ncnpHXZ+nalyGayeuf9SlW1oKGSp5yMkRv1GjHPGFgFTrt/mavi2wfe2jN5ygXQ9QsCQQC8rfgyP79eu+gnQep526I+Evi2HhvS2ULYvAnilbPp0x1alSR07WFadRvKf6ibl5l/xxnrFlNIxKj6QhmByTChAkEArZ5ah6gGMRvRASr8yYdCndYxATaECaPO6LgbJWImf+Tz8mDVzTq74d0I0r2wjXFmiOt4hgp1GSjYzOU61YD8WQ==\r\n-----END RSA PRIVATE KEY-----','-----BEGIN PUBLIC KEY-----\r\nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC2dqZVOoy8FSSkz9q/uCE4171KsKTS2Sm1i5AsOZXXJOe6NfsS1cNtnEQt1bLsRy/4FK1s2U4gTkZnk7Lum1S6RX6yaGTalNJTFSAFHT69ksD9DvcnTlX/0ExE4qRGosJ3ABNkOEHVfecfWHKbVdV7XUM4DNOiyOe9gGVyp1y7vwIDAQAB\r\n-----END PUBLIC KEY-----','',NULL),(17,1,27,'sport',29,'','root',22,'/','front','main','https://6686sky.cc',1,1,1,0,0,'-----BEGIN RSA PRIVATE KEY-----\r\nMIICXgIBAAKBgQC2dqZVOoy8FSSkz9q/uCE4171KsKTS2Sm1i5AsOZXXJOe6NfsS1cNtnEQt1bLsRy/4FK1s2U4gTkZnk7Lum1S6RX6yaGTalNJTFSAFHT69ksD9DvcnTlX/0ExE4qRGosJ3ABNkOEHVfecfWHKbVdV7XUM4DNOiyOe9gGVyp1y7vwIDAQABAoGAQd6lf4Eqiz+qweDTnICxZZ7klBEe/4ssNoDSpFSJlmiZSyzvncYTzf8q0c0i0Y+Fbq6wSOpN/PWlDwFQCDmFJTi4ISWYC6CnbGLtwn2em1pCozLh/mfRuXwr9DNzrCs5T1CDfRd3X3E1Kc6A+PjGmlBboJ6kQfC6aJ+wNZ1pqKECQQDw5CQuB6UYGDAav12Fs8EOz25nMWxN3we6DTPzfVK5x5A1I6QNh1DjrTaa19I1kAs0HH/KERnQgSSp6TQOqSxPAkEAwehd15UgW7Physbp7YKOvmrLgPJZyFD0Jj63QtarYcuqJXDHBwx2P5D4UJdnj6k+nVHcaKpE9ta/KaRXd0NtkQJBAJfrGVIaKikm3/eOZjmy4ncnpHXZ+nalyGayeuf9SlW1oKGSp5yMkRv1GjHPGFgFTrt/mavi2wfe2jN5ygXQ9QsCQQC8rfgyP79eu+gnQep526I+Evi2HhvS2ULYvAnilbPp0x1alSR07WFadRvKf6ibl5l/xxnrFlNIxKj6QhmByTChAkEArZ5ah6gGMRvRASr8yYdCndYxATaECaPO6LgbJWImf+Tz8mDVzTq74d0I0r2wjXFmiOt4hgp1GSjYzOU61YD8WQ==\r\n-----END RSA PRIVATE KEY-----','-----BEGIN PUBLIC KEY-----\r\nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC2dqZVOoy8FSSkz9q/uCE4171KsKTS2Sm1i5AsOZXXJOe6NfsS1cNtnEQt1bLsRy/4FK1s2U4gTkZnk7Lum1S6RX6yaGTalNJTFSAFHT69ksD9DvcnTlX/0ExE4qRGosJ3ABNkOEHVfecfWHKbVdV7XUM4DNOiyOe9gGVyp1y7vwIDAQAB\r\n-----END PUBLIC KEY-----','',NULL),(18,0,12,'sport',29,'','root',11223,'/','backend','main','https://jkysxh.cn',0,1,0,0,0,'-----BEGIN RSA PRIVATE KEY-----\r\nMIICXAIBAAKBgQCfTF/IdsIzqZLciDkpBPI4d2PAP5CXYWyAtWn5CIjRLc7t/7xs+cbpJ25bDISRedsnvqSZViSIcCP3DFcRFgwD8yPJ8RvOAMpPlg+bYDDne2ysx1i7SU0h5G/y1lX5abtAgA7V5jYkJnkFcXF0yBzw2G3aUxGrwxWp8YxuBJRXOwIDAQABAoGAb9C6QwopUv4qmiX8iXBxXXVgTWfQ5JF8CfRNSILXFo1i/OhPqObC2pHVApAM1diFHqbQ/tjal/KvLBA7ZUDmeRvAxLRLc59fiaaoIXyD91UyorhaDtdMb7FbAHCijtjeXJOle5rb4kfBlx7mXPUNWSFjssoCpp8isFypGBGq/MECQQDM1HnfX87N6CwB47P8f/JmqZct7NkoN930zyb6p+PDo/PGoHll4T5/08+lMqRAasC0K1RQV3j0PbwyemK8sGHxAkEAxxgBaHJqz0ZkUhVDxooUzl2DTT5jeVYi50yOC13GEqVVBB+1y4RtP8h3Bxp54CIIK31d1Ulv+ri5Hc/IjXJf6wJBAJ7nvADSWCMgGnwAxhJ+xHRm3zUuyS3NYbFZwDi3ZRjTKf0PY/7o5s7OaQoVJp4e848TCl8l7V02Q7m5fr457FECQF3TNU6opSdbcAmy1cbp6dY7AZbUcQKMklRYopQ+tAqzebZAz2bC2M13RojFdGwo/ZqpMSBDxI7uoOaotkXagdMCQEK4I0IzVEcYWtfp3+9DYFXhZhH4sVxXN/5E2iBhA6A5IY5PXJmTg/TU3HEdnQ4+A3dMthOnIxg93fyPIBwLP+w=\r\n-----END RSA PRIVATE KEY-----','-----BEGIN PUBLIC KEY-----\r\nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCfTF/IdsIzqZLciDkpBPI4d2PAP5CXYWyAtWn5CIjRLc7t/7xs+cbpJ25bDISRedsnvqSZViSIcCP3DFcRFgwD8yPJ8RvOAMpPlg+bYDDne2ysx1i7SU0h5G/y1lX5abtAgA7V5jYkJnkFcXF0yBzw2G3aUxGrwxWp8YxuBJRXOwIDAQAB\r\n-----END PUBLIC KEY-----','',NULL),(19,1,16,'ggz',29,'','root',11223,'/','backend','main','https://fz999880.com',0,1,0,0,0,'-----BEGIN RSA PRIVATE KEY-----\r\nMIICXAIBAAKBgQCs/K7jMZgZDDIqqa5yQy+aC6MoQdAPZW03Bm8u7xrFCtZIOAi/7ncbjPwj8sUQXrdPtdHwVmu+7TTwbFsSAPsyOYM3nD5LpIWQeq8woDO5GDYTffKuXs0wmZhnDjZIcaAaxcXFgWOOWJsb+i9iylBN6trZOQcOYvKIO3jYz0C/wQIDAQABAoGAVPQPC0Ja2Mo1hOAp7LF0Ginm6alQfY8pEKHXTmxccDI/Q95I5cE9u0kEtr7N6pkpWzsGrAo1BeHGYuBD5VaYBaYrFB5kBnvAm8fpFPgAFSfEr7EDzTSXLYIfKTjYEsT15WRrKLg3G0RGmqtZEs62IpIRcfpso0L68GgX8ZcWqqUCQQDhd77u/IPYf/YRaTOsdzPJU7sAtZbQ0cdEwLeFhu2ek/b+3dfRZ6nUBniO5WkAbfxjxTixYCCIp/egIJu+Xr3nAkEAxGmY0LLrXHM+uqbqrFEf1wa/Xmu9lWh32mKXhU1bPuYJhrZyCAU4CDJd7uXty7CoyBev0YxFDjzC9qNZz77QFwJAHOtVDCZLavuOvlD2Fcr8U3hv5flkrMgbfRAS+geCdvKXnb0qr2tSdyWVVQ7L1whEdS+Yw/eGdMDGnD1SfKp+RQJAXBKsYlkdYA9ePp10sSauaFxvZVHYY6u/U46YPRMQTSIFITNxrTTVGXKS+iSrHqtH09TWxMKetJfjRT86INrwLQJBAINFTZXu4qss/B8+rPzCrWdcHxhYDdtr7SqLtI/ogwuxcPuQY4aQb5W9YEkKJ3rHrNJUqoT2pwWtoHX4XUsnsZg=\r\n-----END RSA PRIVATE KEY-----','-----BEGIN PUBLIC KEY-----\r\nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCs/K7jMZgZDDIqqa5yQy+aC6MoQdAPZW03Bm8u7xrFCtZIOAi/7ncbjPwj8sUQXrdPtdHwVmu+7TTwbFsSAPsyOYM3nD5LpIWQeq8woDO5GDYTffKuXs0wmZhnDjZIcaAaxcXFgWOOWJsb+i9iylBN6trZOQcOYvKIO3jYz0C/wQIDAQAB\r\n-----END PUBLIC KEY-----','',NULL),(20,1,12,'sport',29,NULL,'root',22,'/','backend','main','https://arno.com',0,0,0,0,0,'-----BEGIN RSA PRIVATE KEY-----\r\nMIICXQIBAAKBgQCn0LalvH8ds3htfP7p7JOtXuF4tFIGLWjq8+EocNTnvyQBNy0Aw9MMLz/wv83u7vGEaGS+WmAckjYQ/Q9X4ZclAWk98FDpRFp8TvCnWNkQ0v3SAfachdA8yM7ZQBzQqfPTqAjatrkY3yv4/JQ5rHo8jmT625wbjFs6m/PIGfOYpQIDAQABAoGBAKbdhCA81HEmGeNU3Oyhjx5fL/ej5cO6t46YvhRGTY26pASJZrhR/7Mn8H5lWlHxSjoMy8/zcYo3YId3+h+6c1x+IBnzDaHT5xXt6MBLTVO3CMbIaMkOs5tle/ZxLUcHjMY/CdkWciKedTjU63ogKpyQgtfu11ISCoLCzGctzGWpAkEA1nqGTchaLw1K8ePd/vQYefY1gHAbJrIThwBXYYRUof5eqUj8nRb8qFQOHZfLUrB15A7dNSxeHzYQw/h6qzryCwJBAMhNkqfux/HzL3FHV8eyC7quQYrecP/3+fhfAsvLl7EcIReryvWs6sTJOlm3gbAXxqs3+6eeMafFUIKOrHPafg8CQFzNVTFwwHzdbpEtfI/lhHW5L7ssRsM+iC6A2k5KmOgjDUiIWS2LlbUr8ZOia4qS6d/NArAQS4WLukNhT4qpjbMCQA0NuSQGlLM45Pud6aOS/96voofZTUXxNDIyhu0fHIinS6TORlDSbw5aCtpz8hi2w/S+lkDrN1M2sbOAds6qC5MCQQCOa3hKJ6u8EPi/KGav7E5iM63CWaaYQadhRNSZBZlyCdNOYQeuH0oDwAu/O2sVnpQmVWLhO0xkGm/vL7lZgyKA\r\n-----END RSA PRIVATE KEY-----','-----BEGIN PUBLIC KEY-----\r\nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCn0LalvH8ds3htfP7p7JOtXuF4tFIGLWjq8+EocNTnvyQBNy0Aw9MMLz/wv83u7vGEaGS+WmAckjYQ/Q9X4ZclAWk98FDpRFp8TvCnWNkQ0v3SAfachdA8yM7ZQBzQqfPTqAjatrkY3yv4/JQ5rHo8jmT625wbjFs6m/PIGfOYpQIDAQAB\r\n-----END PUBLIC KEY-----','',NULL),(21,1,12,'houtai',29,NULL,'root',22,'/','backend','main','https://arno.com',1,0,0,0,0,'-----BEGIN RSA PRIVATE KEY-----\r\nMIICXQIBAAKBgQCn0LalvH8ds3htfP7p7JOtXuF4tFIGLWjq8+EocNTnvyQBNy0Aw9MMLz/wv83u7vGEaGS+WmAckjYQ/Q9X4ZclAWk98FDpRFp8TvCnWNkQ0v3SAfachdA8yM7ZQBzQqfPTqAjatrkY3yv4/JQ5rHo8jmT625wbjFs6m/PIGfOYpQIDAQABAoGBAKbdhCA81HEmGeNU3Oyhjx5fL/ej5cO6t46YvhRGTY26pASJZrhR/7Mn8H5lWlHxSjoMy8/zcYo3YId3+h+6c1x+IBnzDaHT5xXt6MBLTVO3CMbIaMkOs5tle/ZxLUcHjMY/CdkWciKedTjU63ogKpyQgtfu11ISCoLCzGctzGWpAkEA1nqGTchaLw1K8ePd/vQYefY1gHAbJrIThwBXYYRUof5eqUj8nRb8qFQOHZfLUrB15A7dNSxeHzYQw/h6qzryCwJBAMhNkqfux/HzL3FHV8eyC7quQYrecP/3+fhfAsvLl7EcIReryvWs6sTJOlm3gbAXxqs3+6eeMafFUIKOrHPafg8CQFzNVTFwwHzdbpEtfI/lhHW5L7ssRsM+iC6A2k5KmOgjDUiIWS2LlbUr8ZOia4qS6d/NArAQS4WLukNhT4qpjbMCQA0NuSQGlLM45Pud6aOS/96voofZTUXxNDIyhu0fHIinS6TORlDSbw5aCtpz8hi2w/S+lkDrN1M2sbOAds6qC5MCQQCOa3hKJ6u8EPi/KGav7E5iM63CWaaYQadhRNSZBZlyCdNOYQeuH0oDwAu/O2sVnpQmVWLhO0xkGm/vL7lZgyKA\r\n-----END RSA PRIVATE KEY-----','-----BEGIN PUBLIC KEY-----\r\nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCn0LalvH8ds3htfP7p7JOtXuF4tFIGLWjq8+EocNTnvyQBNy0Aw9MMLz/wv83u7vGEaGS+WmAckjYQ/Q9X4ZclAWk98FDpRFp8TvCnWNkQ0v3SAfachdA8yM7ZQBzQqfPTqAjatrkY3yv4/JQ5rHo8jmT625wbjFs6m/PIGfOYpQIDAQAB\r\n-----END PUBLIC KEY-----','',NULL),(22,1,12,'caipiao',32,NULL,'root',33889,'/','backend','main','https://arno.com',1,1,0,0,0,'-----BEGIN RSA PRIVATE KEY-----\r\nMIICXgIBAAKBgQCzO/6ENl6VofRXCPjCx5KBWXQmIkma25Izttu8rZ4kfSsfs9zJlqhWBEb/Vbqc7RQk/aaaLrCkLeFeew4g6kflxd7MQORMtTEck1k5jstrn9YsAs2xuvFSSNxX5BGUM9X8NFGzkbxzkiRkgCHRaxHZFSmudKoakpp9j3XscxTBSwIDAQABAoGBAJWGjXSbLxlB/WfGslE80XpbuEw/+ovYdgXynSqw5OeoDJvsH1uF9nWcJ+bIDGDyYAXkHmMuZGrzY7rAii7nhIZEfVgn2VQV55bCtMU/nDkfuWPU0qva6kjBy/woOGYxAwcPCgwKIQttUvnY++zXG6iIws5p9ReQHSzBU3oP5TsRAkEA3nslOj5PdNhlgxzzXhwH0MhoRIHsIl5URWEac/WKVyfoZLFDvLSNwxPfv1H9YOGCS76Woz7f+BYfNhNGPS5BbQJBAM483uFVOEx5qBjv9liIsSHtlKEJ44SPt1ausHZaZTwz2a9GtaddLuNwpAMroVgqXbbx8A/O4T2urt98PHfskpcCQQDCk4cCgl5xfZSCb/50ryUytyNhzxMbF86yAvPkuLlt8kwwTExGrM5S732/UNC+O1v+LMiIK0QsMATKAV9rwJmdAkBDNhc0vD8ivSsJJXrVE4cWlYSwjrZ1BxkqyLd9eqwvWH6C3rpolrenK5hn6Bomz3fHHUWtATDqlzkqYCScuJ51AkEA12mcC8Vjjzo/9K4+YUoGSzSXaPcZxO/Ck5e7ohpPjYPVlScUYhImUiCTVsr0V0azOUaBlinC6NWcZkujuOEYGA==\r\n-----END RSA PRIVATE KEY-----','-----BEGIN PUBLIC KEY-----\r\nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCzO/6ENl6VofRXCPjCx5KBWXQmIkma25Izttu8rZ4kfSsfs9zJlqhWBEb/Vbqc7RQk/aaaLrCkLeFeew4g6kflxd7MQORMtTEck1k5jstrn9YsAs2xuvFSSNxX5BGUM9X8NFGzkbxzkiRkgCHRaxHZFSmudKoakpp9j3XscxTBSwIDAQAB\r\n-----END PUBLIC KEY-----','',NULL),(23,0,26,'caipiao',29,NULL,'root',11223,'/','backend','main','http://wgle5.com',0,1,0,0,0,'-----BEGIN RSA PRIVATE KEY-----\r\nMIICXAIBAAKBgQCfTF/IdsIzqZLciDkpBPI4d2PAP5CXYWyAtWn5CIjRLc7t/7xs+cbpJ25bDISRedsnvqSZViSIcCP3DFcRFgwD8yPJ8RvOAMpPlg+bYDDne2ysx1i7SU0h5G/y1lX5abtAgA7V5jYkJnkFcXF0yBzw2G3aUxGrwxWp8YxuBJRXOwIDAQABAoGAb9C6QwopUv4qmiX8iXBxXXVgTWfQ5JF8CfRNSILXFo1i/OhPqObC2pHVApAM1diFHqbQ/tjal/KvLBA7ZUDmeRvAxLRLc59fiaaoIXyD91UyorhaDtdMb7FbAHCijtjeXJOle5rb4kfBlx7mXPUNWSFjssoCpp8isFypGBGq/MECQQDM1HnfX87N6CwB47P8f/JmqZct7NkoN930zyb6p+PDo/PGoHll4T5/08+lMqRAasC0K1RQV3j0PbwyemK8sGHxAkEAxxgBaHJqz0ZkUhVDxooUzl2DTT5jeVYi50yOC13GEqVVBB+1y4RtP8h3Bxp54CIIK31d1Ulv+ri5Hc/IjXJf6wJBAJ7nvADSWCMgGnwAxhJ+xHRm3zUuyS3NYbFZwDi3ZRjTKf0PY/7o5s7OaQoVJp4e848TCl8l7V02Q7m5fr457FECQF3TNU6opSdbcAmy1cbp6dY7AZbUcQKMklRYopQ+tAqzebZAz2bC2M13RojFdGwo/ZqpMSBDxI7uoOaotkXagdMCQEK4I0IzVEcYWtfp3+9DYFXhZhH4sVxXN/5E2iBhA6A5IY5PXJmTg/TU3HEdnQ4+A3dMthOnIxg93fyPIBwLP+w=\r\n-----END RSA PRIVATE KEY-----','-----BEGIN PUBLIC KEY-----\r\nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCfTF/IdsIzqZLciDkpBPI4d2PAP5CXYWyAtWn5CIjRLc7t/7xs+cbpJ25bDISRedsnvqSZViSIcCP3DFcRFgwD8yPJ8RvOAMpPlg+bYDDne2ysx1i7SU0h5G/y1lX5abtAgA7V5jYkJnkFcXF0yBzw2G3aUxGrwxWp8YxuBJRXOwIDAQAB\r\n-----END PUBLIC KEY-----','',NULL),(24,1,26,'caipiao',29,NULL,'root',11223,'/','backend','main','https://hl669.com',1,1,0,0,0,'-----BEGIN RSA PRIVATE KEY-----\r\nMIICWwIBAAKBgQDyfmJwKAthrIRwvkObPyXom8XyGTP3Kj975040DnoyUbuWxRlGbo+uA8kT+M7whxDz472liQMe+0OgZ/tWys6vZ+OhHd7jSzju/XQHPM1WrBpiiyf5o7syG8PjWRCb37ly7SslXX7qOt2O24/EZPn8qfrBz2hy61ZoQ1Ju5p8UpwIDAQABAoGAPEg26HLMAYgFlJF39QwJvH2dA8ZIKNWT2pVx13cR4Zh37c8prVym0zeVsSVVLG4nRLoE1zXsVLNZ6HJxBO592pktccOJND2hfaaH4avmm6r1L18LcTSwKng/bRdwNoMRlvJJiTFDworKidjH7u6N+v8AT97NUyOnsxShhIW2BgECQQD+VwnjXRiydpBhcvlZXsn7w7CDm/mZgiLlYdDvdEaC0bQuQjSCJEteLT/kWcWMOJL3vHaqlZQV3O608pqRleJBAkEA9BONeI8epj7UZTwyGFmAKA9iM+B4ds+rFMoyvJ5wluq6+fvuPGJKqXJTUC7FnIcvyxTD9grXhw1jPPhrEMzs5wJAJ6aYEwsLc58KSTbsaqNdZ9ONLCdf1S+1kv8Z3IrLB0/8AA4wM23HFiqFwGrCYmbbeqW19kgVawcja7A6qqGsQQJAC9fXCX6IUjDCRZdCJwRQv6DfdvzxW3KALqYRCC338Jq7L94VlUB/tvEhMcbTN+EnZIdBavLjul3f7tlu+IW5CQJAW1J6hcAxXvW6PZJxnMwPVlFp3fYE6yqSNMPtP1GtRIOfK5EgJdUwqBB6DK+VRtl3MGC+hL9svaYRTlwqKq+FDw==\r\n-----END RSA PRIVATE KEY-----','-----BEGIN PUBLIC KEY-----\r\nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDyfmJwKAthrIRwvkObPyXom8XyGTP3Kj975040DnoyUbuWxRlGbo+uA8kT+M7whxDz472liQMe+0OgZ/tWys6vZ+OhHd7jSzju/XQHPM1WrBpiiyf5o7syG8PjWRCb37ly7SslXX7qOt2O24/EZPn8qfrBz2hy61ZoQ1Ju5p8UpwIDAQAB\r\n-----END PUBLIC KEY-----','',NULL),(25,1,12,'caipiao',29,'9393cp, tc\r\nldc, 188cp\r\nklc, ag_transfer','root',11223,'/','backend','main','https://arno.com',1,1,0,1,0,'thisisdefaultprivatekey','thisisdefaultpublickey','临时测试修改',2),(26,1,12,'zhuanyepan',41,'','root',11223,'/','backend','main','https://arno.com',0,1,0,1,0,'thisisdefaultprivatekey','thisisdefaultpublickey','',3),(27,1,101,'appleqp',9,'','root',11223,'/','front','main','https://arno.com',1,1,1,0,0,'-----BEGIN RSA PRIVATE KEY-----\r\nMIICXAIBAAKBgQDUVky9BGk0htYt9cjVA8jZYf4xkTSfRyHO/dazvYFfpbIRZDNeXSriCY8Dsygr6smeWPo3l0YL3QsJsCzr70vyJz+8B8imQj7lGriDQzN57B6ZECqoQG+MKD/ijZjETaGPi3E6eQNtMcI3RDawGemf6Hx7MG8FfwZZe8N7YIWNOwIDAQABAoGAWW+QGv1Eos84X1trH+3cJ1PTEWWr2HrJjrn0OPjVCUhtXE3sJQ7xBQwppNFNVlIqYfvwSIH7CvwrrgT6ptXAEpY6NV8kdC0zsXBIQF9s+evu3bUwF1AQiiGYG0psHGusoZj3jWwb0i0vZjaoJ5uQKkDJIx4p8xjW6Cy1/GqgqkECQQD0wigNBXoo+kh6qX1Pjm8kqnFa+m7xcRrUblYTMTPuvNBNf8xOwSi/RVaqRNcEnTZDk/94l7Kq5O4QUZayt4wpAkEA3hbv2p7JjmGrr7wSAs3yUwn4juN3qmZnEbFN1iYQIazeWcqkjRI+baaUM5Me5o8+MiN3iGKlC3WUyQ4rJ+C6wwJARt9lu4eHfRAkJqinaX8D/ekA0+hKcc1fiH2+nOYVdJ7l7lsALRnPk7sfQkSWwnZHfUAArMm4abXKnZ0SdwOhKQJARffF8wNJjrDYrRG8PuPxLxYaF7I0FhwS5rEMS6ZMOL/EgVdlRgh0YIk1cZYtCwgf2R3xX6dsRdLyX/E1yWd0jwJBANiRNSx0Bzsz4GOFaZXYQohRCXjmtPVev/cev4w78xzQknKdctAxeVD0sXKF32XMnaRpk2otkuzI9QH/0+PVZfU=\r\n-----END RSA PRIVATE KEY-----','-----BEGIN PUBLIC KEY-----\r\nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDUVky9BGk0htYt9cjVA8jZYf4xkTSfRyHO/dazvYFfpbIRZDNeXSriCY8Dsygr6smeWPo3l0YL3QsJsCzr70vyJz+8B8imQj7lGriDQzN57B6ZECqoQG+MKD/ijZjETaGPi3E6eQNtMcI3RDawGemf6Hx7MG8FfwZZe8N7YIWNOwIDAQAB\r\n-----END PUBLIC KEY-----','',NULL),(28,1,101,'eqqp',29,'','root',11223,'/','front','main','http://arno.com',1,1,1,0,0,'-----BEGIN RSA PRIVATE KEY-----\r\nMIICXAIBAAKBgQDUVky9BGk0htYt9cjVA8jZYf4xkTSfRyHO/dazvYFfpbIRZDNeXSriCY8Dsygr6smeWPo3l0YL3QsJsCzr70vyJz+8B8imQj7lGriDQzN57B6ZECqoQG+MKD/ijZjETaGPi3E6eQNtMcI3RDawGemf6Hx7MG8FfwZZe8N7YIWNOwIDAQABAoGAWW+QGv1Eos84X1trH+3cJ1PTEWWr2HrJjrn0OPjVCUhtXE3sJQ7xBQwppNFNVlIqYfvwSIH7CvwrrgT6ptXAEpY6NV8kdC0zsXBIQF9s+evu3bUwF1AQiiGYG0psHGusoZj3jWwb0i0vZjaoJ5uQKkDJIx4p8xjW6Cy1/GqgqkECQQD0wigNBXoo+kh6qX1Pjm8kqnFa+m7xcRrUblYTMTPuvNBNf8xOwSi/RVaqRNcEnTZDk/94l7Kq5O4QUZayt4wpAkEA3hbv2p7JjmGrr7wSAs3yUwn4juN3qmZnEbFN1iYQIazeWcqkjRI+baaUM5Me5o8+MiN3iGKlC3WUyQ4rJ+C6wwJARt9lu4eHfRAkJqinaX8D/ekA0+hKcc1fiH2+nOYVdJ7l7lsALRnPk7sfQkSWwnZHfUAArMm4abXKnZ0SdwOhKQJARffF8wNJjrDYrRG8PuPxLxYaF7I0FhwS5rEMS6ZMOL/EgVdlRgh0YIk1cZYtCwgf2R3xX6dsRdLyX/E1yWd0jwJBANiRNSx0Bzsz4GOFaZXYQohRCXjmtPVev/cev4w78xzQknKdctAxeVD0sXKF32XMnaRpk2otkuzI9QH/0+PVZfU=\r\n-----END RSA PRIVATE KEY-----','-----BEGIN PUBLIC KEY-----\r\nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDUVky9BGk0htYt9cjVA8jZYf4xkTSfRyHO/dazvYFfpbIRZDNeXSriCY8Dsygr6smeWPo3l0YL3QsJsCzr70vyJz+8B8imQj7lGriDQzN57B6ZECqoQG+MKD/ijZjETaGPi3E6eQNtMcI3RDawGemf6Hx7MG8FfwZZe8N7YIWNOwIDAQAB\r\n-----END PUBLIC KEY-----','',NULL);
/*!40000 ALTER TABLE `upgrade_projecttb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upgrade_projecttb_minion_id`
--

DROP TABLE IF EXISTS `upgrade_projecttb_minion_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upgrade_projecttb_minion_id` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projecttb_id` int(11) NOT NULL,
  `miniontb_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `upgrade_projecttb_minion_projecttb_id_miniontb_id_dfbd1ae9_uniq` (`projecttb_id`,`miniontb_id`),
  KEY `upgrade_projecttb_mi_miniontb_id_de1d7974_fk_saltstack` (`miniontb_id`),
  CONSTRAINT `upgrade_projecttb_mi_miniontb_id_de1d7974_fk_saltstack` FOREIGN KEY (`miniontb_id`) REFERENCES `saltstack_miniontb` (`id`),
  CONSTRAINT `upgrade_projecttb_mi_projecttb_id_42c5a121_fk_upgrade_p` FOREIGN KEY (`projecttb_id`) REFERENCES `upgrade_projecttb` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=489 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upgrade_projecttb_minion_id`
--

LOCK TABLES `upgrade_projecttb_minion_id` WRITE;
/*!40000 ALTER TABLE `upgrade_projecttb_minion_id` DISABLE KEYS */;
INSERT INTO `upgrade_projecttb_minion_id` VALUES (207,1,1),(208,1,2),(359,1,85),(360,1,86),(393,5,4),(486,5,5),(394,5,6),(409,5,28),(412,5,34),(450,5,79),(451,5,80),(452,5,81),(453,5,82),(454,5,83),(459,5,88),(466,5,96),(467,5,97),(267,6,11),(268,6,12),(272,7,17),(390,7,109),(222,8,21),(363,8,23),(219,8,24),(368,8,92),(369,8,93),(381,8,101),(382,8,102),(383,8,103),(224,9,26),(371,9,94),(227,10,29),(228,10,30),(229,10,31),(226,10,32),(331,11,35),(231,12,36),(230,12,66),(388,12,107),(389,12,108),(487,12,112),(205,13,37),(206,13,38),(284,14,40),(488,14,113),(283,15,45),(367,15,91),(344,16,46),(347,16,47),(345,16,77),(346,16,78),(335,17,48),(338,17,51),(339,17,52),(341,17,54),(342,17,55),(343,17,56),(264,18,57),(275,19,59),(276,19,68),(358,19,84),(196,20,60),(197,20,61),(198,20,62),(199,20,63),(200,21,63),(201,22,64),(202,22,65),(321,23,14),(322,23,69),(323,23,70),(330,24,71),(328,24,73),(329,24,74),(372,26,1),(373,26,2),(374,26,85),(375,26,86),(378,27,98),(379,27,99),(380,27,100),(385,27,105),(387,27,106),(483,28,89),(484,28,110),(485,28,111);
/*!40000 ALTER TABLE `upgrade_projecttb_minion_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upgrade_projecttb_svn_customer`
--

DROP TABLE IF EXISTS `upgrade_projecttb_svn_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upgrade_projecttb_svn_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projecttb_id` int(11) NOT NULL,
  `svncustomertb_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `upgrade_projecttb_svn_cu_projecttb_id_svncustomer_7f1435b6_uniq` (`projecttb_id`,`svncustomertb_id`),
  KEY `upgrade_projecttb_svn_customer_projecttb_id_bb5a3752` (`projecttb_id`),
  KEY `upgrade_projecttb_svn_customer_svncustomertb_id_18f12ce7` (`svncustomertb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upgrade_projecttb_svn_customer`
--

LOCK TABLES `upgrade_projecttb_svn_customer` WRITE;
/*!40000 ALTER TABLE `upgrade_projecttb_svn_customer` DISABLE KEYS */;
INSERT INTO `upgrade_projecttb_svn_customer` VALUES (1,25,1),(2,25,2),(3,25,3),(4,25,4),(5,25,5),(8,25,7),(6,25,8),(9,25,9),(10,25,10),(13,25,12),(35,25,13),(15,25,14),(12,25,16),(18,25,18),(20,25,20),(34,25,21),(32,25,22),(23,25,23),(24,25,24),(25,25,25),(26,25,26),(33,25,28),(31,25,29),(36,25,30),(37,25,31),(38,25,32),(28,26,9);
/*!40000 ALTER TABLE `upgrade_projecttb_svn_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upgrade_svncustomertb`
--

DROP TABLE IF EXISTS `upgrade_svncustomertb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upgrade_svncustomertb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `customer` int(11) NOT NULL,
  `project` varchar(10) NOT NULL,
  `master_ip` longtext,
  `port` varchar(6) NOT NULL,
  `ip` longtext,
  `minion` longtext,
  `ismaster` int(11) NOT NULL,
  `iszypmaster` int(11) NOT NULL,
  `isrsynccode` int(11) NOT NULL,
  `isrsynczypcode` int(11) NOT NULL,
  `cmd` longtext,
  `gray_domain` varchar(128) NOT NULL,
  `online_domain` varchar(128) NOT NULL,
  `src_d` varchar(128) NOT NULL,
  `dst_d` varchar(128) NOT NULL,
  `status` int(11) NOT NULL,
  `info` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `upgrade_svncustomertb_name_customer_project_21e233a2_uniq` (`name`,`customer`,`project`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upgrade_svncustomertb`
--

LOCK TABLES `upgrade_svncustomertb` WRITE;
/*!40000 ALTER TABLE `upgrade_svncustomertb` DISABLE KEYS */;
INSERT INTO `upgrade_svncustomertb` VALUES (1,'ubs',36,'caipiao','','22','10.0.80.146\r\n10.0.80.238\r\n10.0.80.213\r\n10.0.80.50','',0,0,1,0,'','https://ubs-gray.wgle5.com?demo=1&game_code=51','https://www.6686cp.com?demo=1&game_code=51','/home/centos/httpd','/etc/httpd',1,''),(2,'warrior',37,'caipiao','','22','10.0.80.246\r\n10.0.80.171\r\n10.0.80.204\r\n10.0.80.103','',0,0,1,0,'','https://warrior-gray.wgle5.com?demo=1&game_code=51','https://www.8868ssc.com','/home/centos/httpd','/etc/httpd',1,''),(3,'diamond',13,'caipiao','','22','10.0.80.244\r\n10.0.80.56\r\n10.0.80.76','',0,0,1,0,'','http://diamond-gray.wgle5.com?demo=1&game_code=51','http://www.338caip.com','/home/centos/httpd','/etc/httpd',1,''),(4,'1717cp',19,'caipiao','','22','10.0.80.177\r\n10.0.80.191\r\n10.0.80.194','',0,0,1,0,'','https://1717cp-gray.wgle5.com?demo=1&game_code=51','https://www.cp1717.cc','/home/centos/httpd','/etc/httpd',1,''),(5,'9393cp',8,'caipiao','','22','10.0.80.148\r\n10.0.80.155\r\n10.0.80.136\r\n10.0.80.222','',0,0,1,0,'','https://9393cp-gray.wgle5.com?demo=1&game_code=51','https://www.cp9393.co','/home/centos/httpd','/etc/httpd',1,''),(6,'68bet',39,'caipiao','13.125.157.19','22','127.0.0.1\r\n10.0.108.103\r\n10.0.108.52','',1,0,1,0,'','https://68bet-gray.wgle5.com','https://www.0698kk.com','/home/centos/httpd','/etc/httpd',0,''),(7,'ldc',21,'caipiao','','22','10.0.80.122\r\n10.0.80.135\r\n10.0.80.58\r\n10.0.80.223','',0,0,1,0,'','https://ldc-gray.wgle5.com?demo=1&game_code=51','https://www.ldccp999.com','/home/centos/httpd','/etc/httpd',1,''),(8,'ali',1,'caipiao','59.188.233.198','22','127.0.0.1\r\n192.168.10.108\r\n192.168.10.109\r\n192.168.10.111\r\n192.168.10.112','',1,0,1,0,'','https://ali-gray.wgle5.com 新葡京: https://alixpj-gray.wgle5.com','https://www.alcp33.com','/home/centos/httpd','/etc/httpd',1,'192.168.10 内网段 香港机房\r\n59.188.233.198|59.188.233.212 同一台\r\n59.188.233.204|59.188.233.218\r\n59.188.233.205|59.188.233.219\r\n59.188.233.208|59.188.233.222 阿里后台'),(9,'zyp',41,'zhuanyepan','58.177.186.1','2323','192.168.10.114\r\n192.168.10.115\r\n192.168.10.116\r\n192.168.10.117','HT_NG_HK_84_74\r\nHT_NG_HK_55_50\r\nHT_NG_HK_134_105\r\nHT_NG_HK_78_226',1,0,0,1,'','后端：https://zyp-grayapi.wgle5.com 后台：http://zyp-graymanage.wgle5.com 前端：https://zyp-gray.wgle5.com','后端：http://api.98766789.com 后台：http://manage.98766789.com 前端：http://www.98766789.com','/home/centos/httpd','/etc/httpd',1,'192.168.10 内网段 香港机房\r\n58.177.186.1|58.64.189.4 主控'),(10,'leying',3,'caipiao','','22','10.0.21.196\r\n10.0.22.212\r\n10.0.20.39\r\n10.0.16.150','',0,0,1,0,'','https://ly-gray.wgle5.com','https://www.le687.com','/home/centos/httpd','/etc/httpd',1,''),(11,'yiteng',23,'caipiao','','22','10.0.21.196\r\n10.0.22.212\r\n10.0.20.39\r\n10.0.16.150','',0,0,0,0,'','https://yiteng-gray.wgle5.com','https://www.et226.com','/home/centos/httpd','/etc/httpd',0,''),(12,'tc',38,'caipiao','','22','10.0.80.148\r\n10.0.80.155\r\n10.0.80.136\r\n10.0.80.222','',0,0,1,0,'','','http://hg7838.lebole5.com','/home/centos/httpd','/etc/httpd',1,''),(13,'567bet',40,'caipiao','','22','10.0.45.51\r\n10.0.41.185\r\n10.0.38.245','',0,0,1,0,'','https://567bet-gray.wgle5.com','https://567mcp.cc','/home/centos/httpd','/etc/httpd',1,''),(14,'188cp',9,'caipiao','','22','10.0.80.122\r\n10.0.80.135\r\n10.0.80.58\r\n10.0.80.223','',0,0,1,0,'','https://188cp-gray.wgle5.com?demo=1&game_code=51','https://cp.hg3535.cc','/home/centos/httpd','/etc/httpd',1,''),(15,'hengda',34,'caipiao','','22','127.0.0.1\r\n10.0.26.18\r\n10.0.22.77\r\n10.0.43.232','',0,0,0,0,'','https://hengda-gray.wgle5.com','https://www.hdcp08.com','/home/centos/httpd','/etc/httpd',0,''),(16,'uc',7,'caipiao','','22','10.0.43.207\r\n10.0.37.131\r\n10.0.35.207\r\n10.0.40.46','',0,0,1,0,'','https://uc-gray.wgle5.com 后台: http://uc-gray-manage.wgle5.com','https://www.uccp22.com','/home/centos/httpd','/etc/httpd',1,''),(17,'sct',43,'caipiao','','22','10.0.34.83\r\n10.0.39.179\r\n10.0.41.68','',0,0,1,0,'','https://sct-gray.wgle5.com','https://www.sct188.com','/home/centos/httpd','/etc/httpd',0,''),(18,'sd',6,'caipiao','','22','10.0.18.188\r\n10.0.22.249\r\n10.0.28.155\r\n10.0.21.46','',0,0,1,0,'','https://sd-gray.wgle5.com','https://www.668cp99.com','/home/centos/httpd','/etc/httpd',1,''),(19,'feixin',42,'caipiao','','22','10.0.25.112\r\n10.0.21.54\r\n10.0.19.173\r\n10.0.41.4','',0,0,0,0,'','https://feixin-gray.wgle5.com','https://www.fx5566.com','/home/centos/httpd','/etc/httpd',0,''),(20,'ct',4,'caipiao','','22','10.0.42.46\r\n10.0.37.18\r\n10.0.34.179\r\n10.0.46.146','',0,0,1,0,'','https://ct-gray.wgle5.com','https://www.caitou08.com','/home/centos/httpd','/etc/httpd',1,''),(21,'gd',2,'caipiao','','22','10.0.16.170\r\n10.0.44.140\r\n10.0.23.60\r\n10.0.35.8','',0,0,1,0,'','https://gd-gray.wgle5.com','https://www.gdcp308.com','/home/centos/httpd','/etc/httpd',1,''),(22,'agcai',10,'caipiao','','22','10.0.18.165\r\n10.0.23.220','',0,0,1,0,'','https://agcai-gray.wgle5.com','https://www.ag22222.cc','/home/centos/httpd','/etc/httpd',1,''),(23,'klc',11,'caipiao','','22','10.0.21.229\r\n10.0.45.159','',0,0,1,0,'','','https://www.hgb168.com','/home/centos/httpd','/etc/httpd',1,''),(24,'test',29,'caipiao','','22','10.0.45.159','',0,0,0,0,'','','','/home/centos/httpd','/etc/httpd',1,''),(25,'layout_pay',29,'caipiao','','22','10.0.45.159\r\n10.0.23.220','',0,0,1,0,'','','','/home/centos/httpd','/etc/httpd',1,''),(26,'ag_transfer',29,'caipiao','','22','10.0.21.229\r\n10.0.45.159','',0,0,1,0,'','','','/home/centos/httpd','/etc/httpd',1,''),(27,'shalv',29,'caipiao','','22','10.0.19.147\r\n10.0.25.167\r\n10.0.29.56\r\n10.0.22.233\r\n10.0.18.163\r\n10.0.31.101',NULL,0,0,1,0,'','','','','',1,''),(28,'565sport',29,'caipiao','','22','10.0.80.75\r\n10.0.80.41\r\n10.0.80.189','',0,0,1,0,'','https://565sport-gray.wgle5.com?demo=1&game_code=51','https://www.565ty10.com?demo=1&game_code=51','/home/centos/httpd','/etc/httpd',1,''),(29,'new_shalv',29,'caipiao','','22','10.0.39.187\r\n10.0.35.118\r\n10.0.41.255\r\n10.0.33.173\r\n10.0.32.58\r\n10.0.40.241\r\n10.0.42.174','',0,0,0,0,'','','','','',1,''),(30,'hengxin',121001,'caipiao','','22','10.0.30.13\r\n10.0.26.234\r\n10.0.22.134\r\n10.0.22.213','',0,0,1,0,'','https://hengxin-gray.wgle5.com/','https://www.hxcp962.com/','/home/centos/httpd','/etc/httpd',1,''),(31,'newregal',29,'caipiao','','22','10.0.80.120\r\n10.0.80.190\r\n10.0.80.126','',0,0,1,0,'','https://newregal-gray.wgle5.com?demo=1&game_code=51','','/home/centos/httpd','/etc/httpd',1,''),(32,'venetian',29,'caipiao','','22','10.0.80.250\r\n10.0.80.236\r\n10.0.80.206','',0,0,1,0,'','https://venetian-gray.wgle5.com?demo=1&game_code=51','https://www.5765cc.com','/home/centos/httpd','/etc/httpd',1,'');
/*!40000 ALTER TABLE `upgrade_svncustomertb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upgrade_svngraylocktb`
--

DROP TABLE IF EXISTS `upgrade_svngraylocktb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upgrade_svngraylocktb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `revision` int(11) NOT NULL,
  `author` varchar(32) NOT NULL,
  `date` varchar(32) NOT NULL,
  `log` longtext,
  `changelist` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `revision` (`revision`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upgrade_svngraylocktb`
--

LOCK TABLES `upgrade_svngraylocktb` WRITE;
/*!40000 ALTER TABLE `upgrade_svngraylocktb` DISABLE KEYS */;
/*!40000 ALTER TABLE `upgrade_svngraylocktb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upgrade_svnmastertb`
--

DROP TABLE IF EXISTS `upgrade_svnmastertb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upgrade_svnmastertb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `api` varchar(128) NOT NULL,
  `front_api` varchar(128) DEFAULT NULL,
  `svn_code_url` varchar(128) NOT NULL,
  `svn_code_u` varchar(32) NOT NULL,
  `svn_code_p` varchar(32) NOT NULL,
  `svn_frontcode_url` varchar(128) DEFAULT NULL,
  `svn_frontcode_u` varchar(32) DEFAULT NULL,
  `svn_frontcode_p` varchar(32) DEFAULT NULL,
  `gray_lock` longtext,
  `gray_env` longtext,
  `online_env` longtext,
  `rollback` longtext,
  `minion_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `upgrade_svnmastertb_minion_id_id_e82614d9` (`minion_id_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upgrade_svnmastertb`
--

LOCK TABLES `upgrade_svnmastertb` WRITE;
/*!40000 ALTER TABLE `upgrade_svnmastertb` DISABLE KEYS */;
INSERT INTO `upgrade_svnmastertb` VALUES (2,'凤凰代码','http://13.124.136.14:8080','none','svn://13.124.136.14/caipiao','admin','qqq111','none','none','none','','python /home/centos/rsync/httpd/lottery_code_grayEnv.py /home/centos/caipiao','python /home/centos/rsync/httpd/lottery_code_onlineEnv.py','python /home/centos/rsync/httpd/lottery_code_rollback.py',87),(3,'凤凰专业盘彩票代码','http://58.177.186.1:8000','http://182.16.117.186:8888','svn://58.177.186.1/zyp','admin','qqqq1111','http://svn.lebole5.com/nginx/fenghuang/houtai/html/zhuanyepan','admin2','qwe123','','','','',95);
/*!40000 ALTER TABLE `upgrade_svnmastertb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upgrade_svnmastertb_svn_gray_lock`
--

DROP TABLE IF EXISTS `upgrade_svnmastertb_svn_gray_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upgrade_svnmastertb_svn_gray_lock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `svnmastertb_id` int(11) NOT NULL,
  `svngraylocktb_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `upgrade_svnmastertb_svn__svnmastertb_id_svngraylo_e3c300b3_uniq` (`svnmastertb_id`,`svngraylocktb_id`),
  KEY `upgrade_svnmastertb__svngraylocktb_id_b537f71a_fk_upgrade_s` (`svngraylocktb_id`),
  CONSTRAINT `upgrade_svnmastertb__svngraylocktb_id_b537f71a_fk_upgrade_s` FOREIGN KEY (`svngraylocktb_id`) REFERENCES `upgrade_svngraylocktb` (`id`),
  CONSTRAINT `upgrade_svnmastertb__svnmastertb_id_6a82c6dc_fk_upgrade_s` FOREIGN KEY (`svnmastertb_id`) REFERENCES `upgrade_svnmastertb` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upgrade_svnmastertb_svn_gray_lock`
--

LOCK TABLES `upgrade_svnmastertb_svn_gray_lock` WRITE;
/*!40000 ALTER TABLE `upgrade_svnmastertb_svn_gray_lock` DISABLE KEYS */;
/*!40000 ALTER TABLE `upgrade_svnmastertb_svn_gray_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upgrade_svnmastertb_svnzyp_gray_lock`
--

DROP TABLE IF EXISTS `upgrade_svnmastertb_svnzyp_gray_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upgrade_svnmastertb_svnzyp_gray_lock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `svnmastertb_id` int(11) NOT NULL,
  `svnzyplotterygraylocktb_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `upgrade_svnmastertb_svnz_svnmastertb_id_svnzyplot_f50d84f0_uniq` (`svnmastertb_id`,`svnzyplotterygraylocktb_id`),
  KEY `upgrade_svnmastertb__svnzyplotterygrayloc_03389c5a_fk_upgrade_s` (`svnzyplotterygraylocktb_id`),
  CONSTRAINT `upgrade_svnmastertb__svnmastertb_id_18469010_fk_upgrade_s` FOREIGN KEY (`svnmastertb_id`) REFERENCES `upgrade_svnmastertb` (`id`),
  CONSTRAINT `upgrade_svnmastertb__svnzyplotterygrayloc_03389c5a_fk_upgrade_s` FOREIGN KEY (`svnzyplotterygraylocktb_id`) REFERENCES `upgrade_svnzyplotterygraylocktb` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upgrade_svnmastertb_svnzyp_gray_lock`
--

LOCK TABLES `upgrade_svnmastertb_svnzyp_gray_lock` WRITE;
/*!40000 ALTER TABLE `upgrade_svnmastertb_svnzyp_gray_lock` DISABLE KEYS */;
/*!40000 ALTER TABLE `upgrade_svnmastertb_svnzyp_gray_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upgrade_svnmastertb_svnzypfront_gray_lock`
--

DROP TABLE IF EXISTS `upgrade_svnmastertb_svnzypfront_gray_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upgrade_svnmastertb_svnzypfront_gray_lock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `svnmastertb_id` int(11) NOT NULL,
  `svnzypfrontgraylocktb_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `upgrade_svnmastertb_svnz_svnmastertb_id_svnzypfro_1fa7c809_uniq` (`svnmastertb_id`,`svnzypfrontgraylocktb_id`),
  KEY `upgrade_svnmastertb__svnzypfrontgraylockt_870cf404_fk_upgrade_s` (`svnzypfrontgraylocktb_id`),
  CONSTRAINT `upgrade_svnmastertb__svnmastertb_id_5db0bbcc_fk_upgrade_s` FOREIGN KEY (`svnmastertb_id`) REFERENCES `upgrade_svnmastertb` (`id`),
  CONSTRAINT `upgrade_svnmastertb__svnzypfrontgraylockt_870cf404_fk_upgrade_s` FOREIGN KEY (`svnzypfrontgraylocktb_id`) REFERENCES `upgrade_svnzypfrontgraylocktb` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upgrade_svnmastertb_svnzypfront_gray_lock`
--

LOCK TABLES `upgrade_svnmastertb_svnzypfront_gray_lock` WRITE;
/*!40000 ALTER TABLE `upgrade_svnmastertb_svnzypfront_gray_lock` DISABLE KEYS */;
/*!40000 ALTER TABLE `upgrade_svnmastertb_svnzypfront_gray_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upgrade_svnrecordtb`
--

DROP TABLE IF EXISTS `upgrade_svnrecordtb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upgrade_svnrecordtb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `revision` int(11) NOT NULL,
  `author` varchar(32) NOT NULL,
  `date` varchar(32) NOT NULL,
  `log` longtext,
  `changelist` longtext NOT NULL,
  `mod_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `revision` (`revision`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upgrade_svnrecordtb`
--

LOCK TABLES `upgrade_svnrecordtb` WRITE;
/*!40000 ALTER TABLE `upgrade_svnrecordtb` DISABLE KEYS */;
/*!40000 ALTER TABLE `upgrade_svnrecordtb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upgrade_svnrecordtb_svn_gray`
--

DROP TABLE IF EXISTS `upgrade_svnrecordtb_svn_gray`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upgrade_svnrecordtb_svn_gray` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `svnrecordtb_id` int(11) NOT NULL,
  `svncustomertb_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `upgrade_svnrecordtb_svn__svnrecordtb_id_svncustom_70d21917_uniq` (`svnrecordtb_id`,`svncustomertb_id`),
  KEY `upgrade_svnrecordtb_svn_gray_svnrecordtb_id_a75907a8` (`svnrecordtb_id`),
  KEY `upgrade_svnrecordtb_svn_gray_svncustomertb_id_e80a0dc2` (`svncustomertb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upgrade_svnrecordtb_svn_gray`
--

LOCK TABLES `upgrade_svnrecordtb_svn_gray` WRITE;
/*!40000 ALTER TABLE `upgrade_svnrecordtb_svn_gray` DISABLE KEYS */;
/*!40000 ALTER TABLE `upgrade_svnrecordtb_svn_gray` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upgrade_svnrecordtb_svn_online`
--

DROP TABLE IF EXISTS `upgrade_svnrecordtb_svn_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upgrade_svnrecordtb_svn_online` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `svnrecordtb_id` int(11) NOT NULL,
  `svncustomertb_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `upgrade_svnrecordtb_svn__svnrecordtb_id_svncustom_199f85e1_uniq` (`svnrecordtb_id`,`svncustomertb_id`),
  KEY `upgrade_svnrecordtb_svn_online_svnrecordtb_id_417d342e` (`svnrecordtb_id`),
  KEY `upgrade_svnrecordtb_svn_online_svncustomertb_id_717eac2f` (`svncustomertb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upgrade_svnrecordtb_svn_online`
--

LOCK TABLES `upgrade_svnrecordtb_svn_online` WRITE;
/*!40000 ALTER TABLE `upgrade_svnrecordtb_svn_online` DISABLE KEYS */;
/*!40000 ALTER TABLE `upgrade_svnrecordtb_svn_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upgrade_svnzypfrontgraylocktb`
--

DROP TABLE IF EXISTS `upgrade_svnzypfrontgraylocktb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upgrade_svnzypfrontgraylocktb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `revision` int(11) NOT NULL,
  `author` varchar(32) NOT NULL,
  `date` varchar(32) NOT NULL,
  `log` longtext,
  `changelist` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `revision` (`revision`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upgrade_svnzypfrontgraylocktb`
--

LOCK TABLES `upgrade_svnzypfrontgraylocktb` WRITE;
/*!40000 ALTER TABLE `upgrade_svnzypfrontgraylocktb` DISABLE KEYS */;
/*!40000 ALTER TABLE `upgrade_svnzypfrontgraylocktb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upgrade_svnzyplotterygraylocktb`
--

DROP TABLE IF EXISTS `upgrade_svnzyplotterygraylocktb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upgrade_svnzyplotterygraylocktb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `revision` int(11) NOT NULL,
  `author` varchar(32) NOT NULL,
  `date` varchar(32) NOT NULL,
  `log` longtext,
  `changelist` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `revision` (`revision`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upgrade_svnzyplotterygraylocktb`
--

LOCK TABLES `upgrade_svnzyplotterygraylocktb` WRITE;
/*!40000 ALTER TABLE `upgrade_svnzyplotterygraylocktb` DISABLE KEYS */;
/*!40000 ALTER TABLE `upgrade_svnzyplotterygraylocktb` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-13 21:44:25
