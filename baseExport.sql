-- MySQL dump 10.13  Distrib 5.5.28, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: DakarParties_development
-- ------------------------------------------------------
-- Server version	5.5.28-0ubuntu0.12.04.3

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
-- Current Database: `DakarParties_development`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `DakarParties_development` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `DakarParties_development`;

--
-- Table structure for table `active_admin_comments`
--

DROP TABLE IF EXISTS `active_admin_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `active_admin_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resource_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_admin_notes_on_resource_type_and_resource_id` (`resource_type`,`resource_id`),
  KEY `index_active_admin_comments_on_namespace` (`namespace`),
  KEY `index_active_admin_comments_on_author_type_and_author_id` (`author_type`,`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_admin_comments`
--

LOCK TABLES `active_admin_comments` WRITE;
/*!40000 ALTER TABLE `active_admin_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `active_admin_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actualites`
--

DROP TABLE IF EXISTS `actualites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actualites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titleActu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contenu` text COLLATE utf8_unicode_ci,
  `categoryActu_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_actualites_on_categoryActu_id` (`categoryActu_id`),
  KEY `index_actualites_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actualites`
--

LOCK TABLES `actualites` WRITE;
/*!40000 ALTER TABLE `actualites` DISABLE KEYS */;
INSERT INTO `actualites` VALUES (1,'viviane','ma vivi',1,NULL,'2013-04-02 20:54:46','2013-04-04 23:22:27','salle-de-projection.jpg'),(2,'Jony Legend au Senegal!','Ce artiste trés connu sera au Sénégal le mois prochain',1,NULL,'2013-04-04 23:07:01','2013-04-04 23:07:01','Capture_du_2013-01-12_19_54_32.png');
/*!40000 ALTER TABLE `actualites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admin_users_on_email` (`email`),
  UNIQUE KEY `index_admin_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin@example.com','$2a$10$0052FZGgtvdzsRLQGR2TH.f9SZP2Kl5vEyYXblKjyLg1wfxrEajUS',NULL,NULL,NULL,12,'2013-04-07 13:43:12','2013-04-05 00:41:26','127.0.0.1','127.0.0.1','2013-03-23 20:04:11','2013-04-07 13:43:12');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `annonces`
--

DROP TABLE IF EXISTS `annonces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `annonces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titleAnnonce` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descAnnonce` text COLLATE utf8_unicode_ci,
  `date_debut` date DEFAULT NULL,
  `date_fin` date DEFAULT NULL,
  `categoryAnnonce_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_annonces_on_categoryAnnonce_id` (`categoryAnnonce_id`),
  KEY `index_annonces_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `annonces`
--

LOCK TABLES `annonces` WRITE;
/*!40000 ALTER TABLE `annonces` DISABLE KEYS */;
/*!40000 ALTER TABLE `annonces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_actus`
--

DROP TABLE IF EXISTS `category_actus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_actus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titleCategory` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descCategory` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_actus`
--

LOCK TABLES `category_actus` WRITE;
/*!40000 ALTER TABLE `category_actus` DISABLE KEYS */;
INSERT INTO `category_actus` VALUES (1,'People','je vais modifier','2013-04-02 20:47:48','2013-04-02 20:47:48');
/*!40000 ALTER TABLE `category_actus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_annonces`
--

DROP TABLE IF EXISTS `category_annonces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_annonces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titleCategory` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descCategory` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_annonces`
--

LOCK TABLES `category_annonces` WRITE;
/*!40000 ALTER TABLE `category_annonces` DISABLE KEYS */;
INSERT INTO `category_annonces` VALUES (1,'Technologie','c\'est tout ce qui sera en relation avec les téléphone portables, les appareils numériques, les lecteurs iPod, ...','2013-04-02 20:12:32','2013-04-02 20:12:32');
/*!40000 ALTER TABLE `category_annonces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_events`
--

DROP TABLE IF EXISTS `category_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titleCategory` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descCategory` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_events`
--

LOCK TABLES `category_events` WRITE;
/*!40000 ALTER TABLE `category_events` DISABLE KEYS */;
INSERT INTO `category_events` VALUES (1,'Concert','c\'est les concerts Rap et autre','2013-03-28 11:25:52','2013-03-28 11:25:52'),(2,'Rap','c\'est le rap ','2013-03-31 11:32:30','2013-03-31 11:32:30'),(3,'Soirée','ici la description ','2013-04-07 13:41:28','2013-04-07 13:41:28');
/*!40000 ALTER TABLE `category_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_galeries`
--

DROP TABLE IF EXISTS `category_galeries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_galeries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titleCategory` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_galeries`
--

LOCK TABLES `category_galeries` WRITE;
/*!40000 ALTER TABLE `category_galeries` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_galeries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djanoa_messages`
--

DROP TABLE IF EXISTS `djanoa_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djanoa_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `to` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djanoa_messages`
--

LOCK TABLES `djanoa_messages` WRITE;
/*!40000 ALTER TABLE `djanoa_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `djanoa_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titleEvent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descEvent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombrePersonne` int(11) DEFAULT NULL,
  `date_debut` date DEFAULT NULL,
  `date_fin` date DEFAULT NULL,
  `annuler` tinyint(1) DEFAULT '0',
  `categoryEvent_id` int(11) DEFAULT NULL,
  `structure_id` int(11) DEFAULT NULL,
  `lieu_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,SELECT * FROM `actualites` WHERE 1
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `heure_debut` datetime DEFAULT NULL,
  `heure_fin` time DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_events_on_categoryEvent_id` (`categoryEvent_id`),
  KEY `index_events_on_structure_id` (`structure_id`),
  KEY `index_events_on_lieu_id` (`lieu_id`),
  KEY `index_events_on_user_id` (`user_id`)SELECT * FROM `actualites` WHERE 1
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (2,'Soirée Salam Diallo2','soirée de Salam au ravin ne le raté surtout pas ',300,'2013-04-07','2013-04-07',0,1,1,1,NULL,'2013-03-31 12:08:06','2013-04-07 11:38:53','festiv2.jpg','2013-03-31 00:53:00','19:53:00'),(3,'Tonux\'s Party','c\'est ma soirée ça sera à l\'ESP',750,'2013-04-07','2013-04-07',0,1,1,1,NULL,'2013-03-31 13:28:11','2013-04-07 11:39:14','tonux.jpg','2013-04-01 13:25:00','23:25:00'),(4,'PPS','concert de PPS ',300,'2013-04-18','2013-04-18',0,1,1,1,NULL,'2013-04-07 11:42:29','2013-04-07 11:43:59','film.jpg','2013-04-07 19:00:00','23:00:00'),(5,'pps','concert de PPS ',400,'2013-04-07','2013-04-07',0,1,1,1,NULL,'2013-04-07 13:40:04','2013-04-07 13:40:04','art.jpg','2013-04-07 13:39:00','13:39:00');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galeries`
--

DROP TABLE IF EXISTS `galeries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galeries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galeries`
--

LOCK TABLES `galeries` WRITE;
/*!40000 ALTER TABLE `galeries` DISABLE KEYS */;
/*!40000 ALTER TABLE `galeries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lieus`
--

DROP TABLE IF EXISTS `lieus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lieus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomLieu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NomRegion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descLieu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lieus`
--

LOCK TABLES `lieus` WRITE;
/*!40000 ALTER TABLE `lieus` DISABLE KEYS */;
INSERT INTO `lieus` VALUES (1,'Ravin','Dakar','c\'est un lieu qui est a Dakar principalement à Guédiawaye','2013-03-31 11:31:53','2013-03-31 11:31:53');
/*!40000 ALTER TABLE `lieus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partenaires`
--

DROP TABLE IF EXISTS `partenaires`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partenaires` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomPartenaire` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descPartenaire` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partenaires`
--

LOCK TABLES `partenaires` WRITE;
/*!40000 ALTER TABLE `partenaires` DISABLE KEYS */;
/*!40000 ALTER TABLE `partenaires` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20130323175440'),('20130323175648'),('20130323175755'),('20130323175848'),('20130323180044'),('20130323180229'),('20130323180609'),('20130323181245'),('20130323182158'),('20130323182544'),('20130323192126'),('20130323200347'),('20130323200354'),('20130323200355'),('20130328013925'),('20130329093753'),('20130330204818'),('20130402123557'),('20130402202123'),('20130402203128'),('20130402203344'),('20130404225839'),('20130406204848'),('20130406204949'),('20130406214203'),('20130406214243');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `structures`
--

DROP TABLE IF EXISTS `structures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `structures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomStructure` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adresse` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descStructure` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `structures`
--

LOCK TABLES `structures` WRITE;
/*!40000 ALTER TABLE `structures` DISABLE KEYS */;
INSERT INTO `structures` VALUES (1,'Autres','pas défini','','','c\'est par défaut une structure qui n\'est pas définie.','2013-03-31 11:34:59','2013-03-31 11:34:59');
/*!40000 ALTER TABLE `structures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prenom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datenaiss` date DEFAULT NULL,
  `adresse` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin` tinyint(1) DEFAULT '0',
  `adminActu` tinyint(1) DEFAULT '0',
  `adminEvent` tinyint(1) DEFAULT '0',
  `sexe` tinyint(1) DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Tonux','Samb','Ndongo','1990-08-01','keur massar Parcelles assainies unité 5',1,1,1,1,'777155482','2013-03-23 21:40:04','2013-04-07 14:39:44','sambndongo@gmail.com','$2a$10$woxHr6/1a/53/UFdNbDAk.dzoSg/RjGLJAbcJTB7f2Nro8HhNg.yG',NULL,NULL,NULL,35,'2013-04-07 14:39:44','2013-04-07 13:38:52','127.0.0.1','127.0.0.1'),(2,'Atacraft','atakem','Emmanuel','1990-03-25','foire',NULL,NULL,NULL,1,'777155482','2013-03-25 09:29:20','2013-03-25 09:31:11','atak@gmail.com','$2a$10$HJhKuXfQffUaUxEFk2YprO99GOKxgtr.wU6nkf5Z8lnbnzBMNNK7G',NULL,NULL,NULL,2,'2013-03-25 09:31:11','2013-03-25 09:29:20','127.0.0.1','127.0.0.1'),(3,'mbeuryonline','Dioum','Mor','1977-03-25','dakar',NULL,NULL,NULL,1,'777155482','2013-03-25 09:37:30','2013-03-25 09:37:30','mbeury@gmail.com','$2a$10$tHAObDXRXBghPS9r4Zseg.eVVPwyKAabjSaT4wFr8jrvOpcgWZXoK',NULL,NULL,NULL,1,'2013-03-25 09:37:30','2013-03-25 09:37:30','127.0.0.1','127.0.0.1'),(4,'sister','Samb','astou','1995-03-25','camb',NULL,NULL,NULL,0,'777777777','2013-03-25 09:47:13','2013-04-02 00:07:23','sister@gmail.com','$2a$10$vM5mjeaceeNmtbhtRnE6rOO4HiDDwzqnpwlpYX8qdPhDT7TTdOcfO',NULL,NULL,NULL,4,'2013-04-02 00:07:23','2013-04-01 19:11:13','127.0.0.1','127.0.0.1'),(5,'maman','Samb','maman','1995-04-06','keur massar',0,0,0,0,'777777777','2013-04-06 20:05:31','2013-04-06 20:05:32','maman@gmail.com','$2a$10$qwu0RRbL2yK4W7UkAba0fOaAtsQbNrNySjmejCZBhf5gx/p5aJe3i',NULL,NULL,NULL,1,'2013-04-06 20:05:32','2013-04-06 20:05:32','127.0.0.1','127.0.0.1'),(6,'omar','Samb','omar','1995-04-06','keur massar',0,0,0,0,'777777777','2013-04-06 20:12:21','2013-04-06 20:12:21','omar@gmail.com','$2a$10$y53ArfVKvJZrvN.hOomXHup9hy59yphb2NwXQOiciY1LgmpUgtzrW',NULL,NULL,NULL,1,'2013-04-06 20:12:21','2013-04-06 20:12:21','127.0.0.1','127.0.0.1'),(7,'laye','Samb','Laye','1995-04-07','keur massar Parcelles assainies unité 5',0,0,0,1,'777155482','2013-04-07 13:37:40','2013-04-07 14:16:29','laye@gmail.com','$2a$10$dwJeHOx7vdoM9wA2tP2Qtub2p5pvsz7kE7IB6JmnsIn2sIIZqLXhC',NULL,NULL,NULL,2,'2013-04-07 14:16:29','2013-04-07 13:37:40','127.0.0.1','127.0.0.1');
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

-- Dump completed on 2013-04-13  1:30:05
