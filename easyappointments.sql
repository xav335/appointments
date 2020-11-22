-- MySQL dump 10.17  Distrib 10.3.25-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: easyappointments
-- ------------------------------------------------------
-- Server version	10.3.25-MariaDB-0+deb10u1

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
-- Table structure for table `ea_appointments`
--

DROP TABLE IF EXISTS `ea_appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ea_appointments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_datetime` datetime DEFAULT NULL,
  `start_datetime` datetime DEFAULT NULL,
  `end_datetime` datetime DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `hash` text DEFAULT NULL,
  `is_unavailable` tinyint(4) DEFAULT 0,
  `id_users_provider` int(11) DEFAULT NULL,
  `id_users_customer` int(11) DEFAULT NULL,
  `id_services` int(11) DEFAULT NULL,
  `id_google_calendar` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_users_customer` (`id_users_customer`),
  KEY `id_services` (`id_services`),
  KEY `id_users_provider` (`id_users_provider`),
  CONSTRAINT `appointments_services` FOREIGN KEY (`id_services`) REFERENCES `ea_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `appointments_users_customer` FOREIGN KEY (`id_users_customer`) REFERENCES `ea_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `appointments_users_provider` FOREIGN KEY (`id_users_provider`) REFERENCES `ea_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ea_appointments`
--

LOCK TABLES `ea_appointments` WRITE;
/*!40000 ALTER TABLE `ea_appointments` DISABLE KEYS */;
INSERT INTO `ea_appointments` VALUES (1,'2020-11-21 00:48:43','2020-08-01 02:00:00','2020-11-25 03:00:00','',NULL,1,2,NULL,NULL,NULL),(2,'2020-11-21 00:49:39','2020-11-25 23:00:00','2021-03-31 03:00:00','',NULL,1,2,NULL,NULL,NULL),(5,'2020-11-21 00:48:43','2020-08-01 02:00:00','2020-11-25 03:00:00','',NULL,1,4,NULL,NULL,NULL),(6,'2020-11-21 00:49:39','2020-11-25 23:00:00','2021-03-31 03:00:00','',NULL,1,4,NULL,NULL,NULL),(8,'2020-11-21 01:42:57','2020-11-25 18:20:00','2020-11-25 18:28:00','','ac8b790fa637861ef547d09db42d7acd',0,4,6,1,NULL),(9,'2020-11-21 01:46:31','2020-11-25 17:08:00','2020-11-25 17:16:00','','43116f17b5acf33dcb2adbe3097752d2',0,4,7,1,NULL),(10,'2020-11-21 17:22:52','2020-11-25 17:00:00','2020-11-25 17:08:00','','746babd678d2bc6f9713379a6756eb1d',0,4,8,1,NULL),(11,'2020-11-21 17:33:25','2020-11-25 17:00:00','2020-11-25 17:08:00','','bf49554d557e8d4b5e87ef911ff1f052',0,2,9,1,NULL),(12,'2020-11-21 17:35:45','2020-11-25 18:20:00','2020-11-25 18:28:00','','d9ec20f368ab84eb60afc860a59e0bf0',0,2,10,1,NULL),(13,'2020-11-21 17:37:56','2020-11-25 17:08:00','2020-11-25 17:16:00','','2e26a48cd78904d67c14860a3971fd7b',0,2,11,1,NULL),(14,'2020-11-21 00:48:43','2020-08-01 02:00:00','2020-11-25 03:00:00','',NULL,1,12,NULL,NULL,NULL),(15,'2020-11-21 00:49:39','2020-11-25 23:00:00','2021-03-31 03:00:00','',NULL,1,12,NULL,NULL,NULL),(16,'2020-11-21 17:47:51','2020-11-25 17:08:00','2020-11-25 17:16:00','','6192f942cf59b736613810a0e1a0b7db',0,12,9,1,NULL),(17,'2020-11-21 17:50:21','2020-11-25 19:23:00','2020-11-25 19:31:00','pardon si j\'ai un peu de retard','9c9f5135dc9571d580654cab4e6cd860',0,12,13,1,NULL),(18,'2020-11-21 18:01:49','2020-11-25 17:56:00','2020-11-25 18:04:00','J\'aurais peut être un léger retard','271e11e80e7e06eb1dba811b1ed1fa3f',0,12,15,1,NULL),(19,'2020-11-21 18:05:06','2020-11-25 19:47:00','2020-11-25 19:55:00','','09ad08d97359f8e46ccfaaf4edf52ce8',0,4,16,1,NULL),(20,'2020-11-21 20:49:06','2020-11-25 19:47:00','2020-11-25 19:55:00','','4a9bd4a8b9e506b3b8350e8ca24cb1e1',0,12,17,1,NULL),(21,'2020-11-21 20:54:53','2020-11-25 19:40:00','2020-11-25 19:45:00','','77a14b8f3eb772aafc3a21e0640b74ab',0,2,18,1,NULL),(22,'2020-11-21 20:58:44','2020-11-25 19:55:00','2020-11-25 20:00:00','','409ce73830fe7287c7008ee6841c5714',0,4,19,1,NULL),(23,'2020-11-21 21:03:30','2020-11-25 19:40:00','2020-11-25 19:45:00','','4512e24799b2854b66d7328f9fadc4c7',0,4,20,1,NULL),(24,'2020-11-22 07:37:29','2020-11-25 19:36:00','2020-11-25 19:41:00','','17bc0ec73170c6c0b0b2a2f70c29ccf6',0,12,21,1,NULL),(25,'2020-11-22 07:39:06','2020-11-25 18:06:00','2020-11-25 18:11:00','','d015ec0d92854c9676231b2d62e42b82',0,2,22,1,NULL);
/*!40000 ALTER TABLE `ea_appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ea_consents`
--

DROP TABLE IF EXISTS `ea_consents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ea_consents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT current_timestamp(),
  `modified` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `first_name` varchar(256) DEFAULT NULL,
  `last_name` varchar(256) DEFAULT NULL,
  `email` varchar(512) DEFAULT NULL,
  `ip` varchar(256) DEFAULT NULL,
  `type` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ea_consents`
--

LOCK TABLES `ea_consents` WRITE;
/*!40000 ALTER TABLE `ea_consents` DISABLE KEYS */;
/*!40000 ALTER TABLE `ea_consents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ea_migrations`
--

DROP TABLE IF EXISTS `ea_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ea_migrations` (
  `version` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ea_migrations`
--

LOCK TABLES `ea_migrations` WRITE;
/*!40000 ALTER TABLE `ea_migrations` DISABLE KEYS */;
INSERT INTO `ea_migrations` VALUES (12);
/*!40000 ALTER TABLE `ea_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ea_roles`
--

DROP TABLE IF EXISTS `ea_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ea_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) DEFAULT NULL,
  `slug` varchar(256) DEFAULT NULL,
  `is_admin` tinyint(4) DEFAULT NULL,
  `appointments` int(11) DEFAULT NULL,
  `customers` int(11) DEFAULT NULL,
  `services` int(11) DEFAULT NULL,
  `users` int(11) DEFAULT NULL,
  `system_settings` int(11) DEFAULT NULL,
  `user_settings` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ea_roles`
--

LOCK TABLES `ea_roles` WRITE;
/*!40000 ALTER TABLE `ea_roles` DISABLE KEYS */;
INSERT INTO `ea_roles` VALUES (1,'Administrator','admin',1,15,15,15,15,15,15),(2,'Provider','provider',0,15,15,0,0,0,15),(3,'Customer','customer',0,0,0,0,0,0,0),(4,'Secretary','secretary',0,15,15,0,0,0,15);
/*!40000 ALTER TABLE `ea_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ea_secretaries_providers`
--

DROP TABLE IF EXISTS `ea_secretaries_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ea_secretaries_providers` (
  `id_users_secretary` int(11) NOT NULL,
  `id_users_provider` int(11) NOT NULL,
  PRIMARY KEY (`id_users_secretary`,`id_users_provider`),
  KEY `id_users_secretary` (`id_users_secretary`),
  KEY `id_users_provider` (`id_users_provider`),
  CONSTRAINT `secretaries_users_provider` FOREIGN KEY (`id_users_provider`) REFERENCES `ea_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `secretaries_users_secretary` FOREIGN KEY (`id_users_secretary`) REFERENCES `ea_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ea_secretaries_providers`
--

LOCK TABLES `ea_secretaries_providers` WRITE;
/*!40000 ALTER TABLE `ea_secretaries_providers` DISABLE KEYS */;
INSERT INTO `ea_secretaries_providers` VALUES (14,2),(14,4),(14,12);
/*!40000 ALTER TABLE `ea_secretaries_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ea_service_categories`
--

DROP TABLE IF EXISTS `ea_service_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ea_service_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) DEFAULT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ea_service_categories`
--

LOCK TABLES `ea_service_categories` WRITE;
/*!40000 ALTER TABLE `ea_service_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ea_service_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ea_services`
--

DROP TABLE IF EXISTS `ea_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ea_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `currency` varchar(32) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `availabilities_type` varchar(32) DEFAULT 'flexible',
  `attendants_number` int(11) DEFAULT 1,
  `id_service_categories` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_service_categories` (`id_service_categories`),
  CONSTRAINT `services_service_categories` FOREIGN KEY (`id_service_categories`) REFERENCES `ea_service_categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ea_services`
--

LOCK TABLES `ea_services` WRITE;
/*!40000 ALTER TABLE `ea_services` DISABLE KEYS */;
INSERT INTO `ea_services` VALUES (1,'Rendez-vous Parents Professeurs VISIO du 25 novembre',5,0.00,'','Le lien pour la réunion vous sera transmis par email.','fixed',1,NULL);
/*!40000 ALTER TABLE `ea_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ea_services_providers`
--

DROP TABLE IF EXISTS `ea_services_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ea_services_providers` (
  `id_users` int(11) NOT NULL,
  `id_services` int(11) NOT NULL,
  PRIMARY KEY (`id_users`,`id_services`),
  KEY `id_services` (`id_services`),
  CONSTRAINT `services_providers_services` FOREIGN KEY (`id_services`) REFERENCES `ea_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `services_providers_users_provider` FOREIGN KEY (`id_users`) REFERENCES `ea_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ea_services_providers`
--

LOCK TABLES `ea_services_providers` WRITE;
/*!40000 ALTER TABLE `ea_services_providers` DISABLE KEYS */;
INSERT INTO `ea_services_providers` VALUES (2,1),(4,1),(12,1);
/*!40000 ALTER TABLE `ea_services_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ea_settings`
--

DROP TABLE IF EXISTS `ea_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ea_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(512) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ea_settings`
--

LOCK TABLES `ea_settings` WRITE;
/*!40000 ALTER TABLE `ea_settings` DISABLE KEYS */;
INSERT INTO `ea_settings` VALUES (1,'company_working_plan','{\"sunday\":null,\"monday\":{\"start\":\"09:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"11:20\",\"end\":\"11:30\"},{\"start\":\"14:30\",\"end\":\"15:00\"}]},\"tuesday\":{\"start\":\"09:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"11:20\",\"end\":\"11:30\"},{\"start\":\"14:30\",\"end\":\"15:00\"}]},\"wednesday\":{\"start\":\"09:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"11:20\",\"end\":\"11:30\"},{\"start\":\"14:30\",\"end\":\"15:00\"}]},\"thursday\":{\"start\":\"09:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"11:20\",\"end\":\"11:30\"},{\"start\":\"14:30\",\"end\":\"15:00\"}]},\"friday\":{\"start\":\"09:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"11:20\",\"end\":\"11:30\"},{\"start\":\"14:30\",\"end\":\"15:00\"}]},\"saturday\":null}'),(2,'book_advance_timeout','30'),(3,'google_analytics_code',''),(4,'customer_notifications','1'),(5,'date_format','DMY'),(6,'time_format','military'),(7,'require_captcha','0'),(8,'display_cookie_notice','0'),(9,'cookie_notice_content','Cookie notice content.'),(10,'display_terms_and_conditions','0'),(11,'terms_and_conditions_content','Terms and conditions content.'),(12,'display_privacy_policy','0'),(13,'privacy_policy_content','Privacy policy content.'),(14,'company_name','Collège Emmanuel D\'alzon'),(15,'company_email','fjavi.gonzalez@gmail.com'),(16,'company_link','https://dalzonsaintmedardenjalles.fr/');
/*!40000 ALTER TABLE `ea_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ea_user_settings`
--

DROP TABLE IF EXISTS `ea_user_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ea_user_settings` (
  `id_users` int(11) NOT NULL,
  `username` varchar(256) DEFAULT NULL,
  `password` varchar(512) DEFAULT NULL,
  `salt` varchar(512) DEFAULT NULL,
  `working_plan` text DEFAULT NULL,
  `notifications` tinyint(4) DEFAULT 0,
  `google_sync` tinyint(4) DEFAULT 0,
  `google_token` text DEFAULT NULL,
  `google_calendar` varchar(128) DEFAULT NULL,
  `sync_past_days` int(11) DEFAULT 5,
  `sync_future_days` int(11) DEFAULT 5,
  `calendar_view` varchar(32) DEFAULT 'default',
  PRIMARY KEY (`id_users`),
  CONSTRAINT `user_settings_users` FOREIGN KEY (`id_users`) REFERENCES `ea_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ea_user_settings`
--

LOCK TABLES `ea_user_settings` WRITE;
/*!40000 ALTER TABLE `ea_user_settings` DISABLE KEYS */;
INSERT INTO `ea_user_settings` VALUES (1,'admin','8a744292a0c5d981153980c70042f46174a645f4d12f91d002cd229473bab926','e06e4a926830e98b696c30e46c2a808cc0df1b2347195c47144815c63981cda8',NULL,0,0,NULL,NULL,5,5,'table'),(2,'maud','543dfa1fa00ccbb8aa826426204089ae18436bfc53735bcba022b3e6d2e76537','655bfb1f5722d06452470c04419052748834cfec4998785465bb1328432b65bc','{\"sunday\":null,\"monday\":null,\"tuesday\":null,\"wednesday\":{\"start\":\"17:00\",\"end\":\"20:00\",\"breaks\":[{\"start\":\"19:00\",\"end\":\"19:15\"}]},\"thursday\":null,\"friday\":null,\"saturday\":null}',0,0,NULL,NULL,5,5,'table'),(4,'xavier','543dfa1fa00ccbb8aa826426204089ae18436bfc53735bcba022b3e6d2e76537','655bfb1f5722d06452470c04419052748834cfec4998785465bb1328432b65bc','{\"sunday\":null,\"monday\":null,\"tuesday\":null,\"wednesday\":{\"start\":\"17:00\",\"end\":\"20:00\",\"breaks\":[{\"start\":\"19:00\",\"end\":\"19:15\"}]},\"thursday\":null,\"friday\":null,\"saturday\":null}',0,0,NULL,NULL,5,5,'table'),(12,'virginie','543dfa1fa00ccbb8aa826426204089ae18436bfc53735bcba022b3e6d2e76537','655bfb1f5722d06452470c04419052748834cfec4998785465bb1328432b65bc','{\"sunday\":null,\"monday\":null,\"tuesday\":null,\"wednesday\":{\"start\":\"17:00\",\"end\":\"20:00\",\"breaks\":[{\"start\":\"19:00\",\"end\":\"19:15\"}]},\"thursday\":null,\"friday\":null,\"saturday\":null}',0,0,NULL,NULL,5,5,'table'),(14,'check','145a849791c91cc1becc162bdfb0fd86da313498e2369e63af765f26342de360','9cc798e2ad65371d6822e495a5ea687744bd45f64c069ad5d0b0af390821bb3b',NULL,0,0,NULL,NULL,5,5,'table');
/*!40000 ALTER TABLE `ea_user_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ea_users`
--

DROP TABLE IF EXISTS `ea_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ea_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(256) DEFAULT NULL,
  `last_name` varchar(512) DEFAULT NULL,
  `email` varchar(512) DEFAULT NULL,
  `mobile_number` varchar(128) DEFAULT NULL,
  `phone_number` varchar(128) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL,
  `city` varchar(256) DEFAULT NULL,
  `state` varchar(128) DEFAULT NULL,
  `zip_code` varchar(64) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `id_roles` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_roles` (`id_roles`),
  CONSTRAINT `users_roles` FOREIGN KEY (`id_roles`) REFERENCES `ea_roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ea_users`
--

LOCK TABLES `ea_users` WRITE;
/*!40000 ALTER TABLE `ea_users` DISABLE KEYS */;
INSERT INTO `ea_users` VALUES (1,'admin','Gonzalez','fjavi.gonzalez@gmail.com','','+33681731870','','','','','',1),(2,'Mathématiques (PP 6AE)','Mme. Pasquet','M@P.FR','','0123456789','','','','','',2),(4,'Mathématiques ','M. Gonzalez','xavier@gonzalez.pm','','0123456789','','','','','',2),(6,'Isabel','AlVAREZ','fjavi.gonza@ail.com',NULL,'0681731870','Alvarez','Jean',NULL,'5LV',NULL,3),(7,'Geaoge','droute','dd@dd.d',NULL,'123','Drout','Maxime',NULL,'5MM',NULL,3),(8,'John','John','John@f.f',NULL,'1233','','',NULL,'',NULL,3),(9,'Rob ','Redf','r@r.r',NULL,'34343','Redford','Elliot',NULL,'6AE',NULL,3),(10,'Jav','Gonz','G@g.h',NULL,'234','Dali','Loris',NULL,'5MM',NULL,3),(11,'John','Vernon','J@V.D',NULL,'5466','Vernon','Raphael',NULL,'5LV',NULL,3),(12,'Anglais (PP 6AE)','Mme. Dubois','Vir@duboi.d','','23456789','','','','','',2),(13,'Javier','Gonzalez','F@F.de',NULL,'87686','Gonzalez','Andrea',NULL,'4E',NULL,3),(14,'Laurie','Comte','l@FR.Z','','1233','','','','','',4),(15,'véronique','laces','ver@lac.fr',NULL,'3333','Laces','Jérome',NULL,'5LV',NULL,3),(16,'Paul ','Perez','pa@PP.fr',NULL,'5675','Perez','Amandine',NULL,'6AE',NULL,3),(17,'pp','pp','pp@pp.pp',NULL,'99','pp','pp',NULL,'pp',NULL,3),(18,'ZZ','ZZ','ZZ@ZZ.ZZ',NULL,'99','ZZ','ZZ',NULL,'ZZ',NULL,3),(19,'IJ','IJ','IJ@IJ.TF',NULL,'88','ij','ij',NULL,'ij',NULL,3),(20,'CD','cd','cd@c.cdd',NULL,'222','CD','CD',NULL,'CD',NULL,3),(21,'AE','AE','A@SD.FG',NULL,'22','','',NULL,'',NULL,3),(22,'RE','RE','RE@RE.RE',NULL,'33','','',NULL,'',NULL,3);
/*!40000 ALTER TABLE `ea_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-22  8:03:46
