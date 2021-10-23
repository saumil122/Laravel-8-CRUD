-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: qed42
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `companies_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'Expanded analyzing superstructure','cgrimes@spinka.com',NULL,'morar.net','2010-06-13 15:03:29','1987-08-17 13:51:59'),(2,'Sharable logistical systemengine','teagan37@hintz.org',NULL,'spinka.info','1992-03-12 12:58:51','1973-08-27 17:56:27'),(3,'Exclusive local customerloyalty','kovacek.abdullah@grady.info',NULL,'williamson.com','1973-06-18 16:53:41','2001-05-19 23:52:19'),(4,'Diverse homogeneous opensystem','windler.jaycee@kub.net',NULL,'jacobi.com','1991-11-29 06:43:16','1976-08-25 03:43:37'),(5,'Inverse contextually-based collaboration','emily.murazik@osinski.com',NULL,'oconnell.info','1995-08-05 22:53:07','2014-11-28 17:47:56'),(6,'Re-contextualized multimedia encoding','bergstrom.jace@mcclure.com',NULL,'braun.com','2017-10-24 09:57:52','2002-03-16 00:01:56'),(7,'Multi-channelled bottom-line emulation','ebert.alden@hagenes.info',NULL,'boyer.com','1999-10-08 01:40:21','2013-04-11 14:15:10'),(8,'Focused well-modulated GraphicInterface','lhirthe@rice.com',NULL,'reinger.com','1984-04-04 06:10:02','2014-12-11 15:32:18'),(9,'Automated 4thgeneration superstructure','teffertz@dicki.com',NULL,'denesik.com','2019-11-04 11:46:09','1994-01-13 00:49:43'),(10,'Grass-roots client-server initiative','eli.jaskolski@welch.com',NULL,'beahan.biz','1975-04-17 16:01:17','2017-12-07 12:55:30');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` int NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employees_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Lindsay','Wehner',5,'ila34@example.net','3857947879','2018-06-24 14:16:01','1983-08-18 04:43:10'),(2,'Mustafa','Koss',8,'emilia.windler@example.com','7443635079','1994-05-03 00:26:23','2009-04-09 21:05:53'),(3,'Dashawn','Brakus',9,'arvel84@example.com','9815128445','2020-09-20 04:03:11','1982-01-26 09:38:57'),(4,'Magdalen','Bergstrom',9,'gleichner.myrl@example.org','4781615841','1992-06-14 11:20:35','1983-11-29 17:48:40'),(5,'Johan','Koelpin',9,'colson@example.org','0316903736','1977-03-23 18:50:12','2001-03-09 15:58:39'),(6,'Mabel','Pfannerstill',10,'savanna65@example.com','1550448203','2005-06-26 09:50:41','2017-12-08 05:01:20'),(7,'Veronica','Kessler',8,'tlangworth@example.org','4190899459','2009-01-04 02:29:55','1973-02-03 06:10:07'),(8,'Florine','Hansen',4,'cmoen@example.org','9979159296','1986-01-28 18:21:48','1999-12-17 12:02:13'),(9,'Adrienne','Marvin',8,'vkunze@example.com','0240049074','1984-11-01 15:33:33','2001-08-10 14:20:34'),(10,'Amparo','Greenfelder',9,'sfeil@example.net','1627719562','1980-01-23 05:21:11','1986-07-17 17:37:40'),(11,'Martina','Larson',2,'rowe.autumn@example.com','8554522588','1989-05-21 09:33:39','2016-12-26 04:32:11'),(12,'Carolina','Connelly',9,'sporer.isai@example.com','2545358106','2018-02-11 09:07:31','1980-06-10 20:57:10'),(13,'Demond','Gaylord',5,'rbode@example.net','6842653676','1988-11-29 18:00:33','2020-09-30 21:14:06'),(14,'Madge','Torp',2,'andre79@example.net','0511890048','1978-07-04 03:37:24','1972-01-06 04:42:23'),(15,'Norris','Keebler',1,'kessler.danielle@example.com','3146832114','1985-03-04 18:52:30','2020-05-27 19:11:02'),(16,'Brandyn','Ledner',1,'dubuque.patience@example.org','3551391942','1976-01-10 03:44:05','1983-10-21 21:33:20'),(17,'Aileen','Bauch',3,'aparker@example.net','4931606199','1980-04-23 19:58:16','2012-04-10 02:26:55'),(18,'Rocky','Huels',3,'andres15@example.com','2126687214','1982-07-28 01:49:25','2011-09-21 11:30:51'),(19,'Dana','Goyette',8,'junior.kshlerin@example.com','3428200281','2009-09-09 18:24:45','2003-04-29 01:43:18'),(20,'Kaden','Batz',10,'grace81@example.com','8764804820','1999-12-22 09:33:05','1994-08-27 05:30:38'),(21,'Andreane','Conroy',4,'qhammes@example.net','3138608038','1973-03-17 01:53:25','2017-09-25 23:18:17'),(22,'Joy','Medhurst',9,'maureen.conn@example.com','1581965611','2000-10-31 08:46:12','2006-02-01 10:59:34'),(23,'Hailee','Schowalter',1,'ayla.corkery@example.org','4743210082','2001-02-21 21:09:27','1975-04-02 07:50:55'),(24,'Allison','Wiza',3,'alessandra90@example.com','5783903206','1986-03-30 23:39:55','1992-05-10 16:17:51'),(25,'Althea','O\'Kon',9,'duncan.hauck@example.net','7957241874','1998-09-02 02:41:16','2000-02-01 18:36:31'),(26,'Russel','Roob',3,'dsauer@example.org','1963231799','2012-02-19 19:16:15','1998-11-21 05:09:49'),(27,'Greyson','Carroll',5,'parisian.cecile@example.com','6389397560','2012-01-04 20:47:40','2001-12-27 03:53:43'),(28,'Katheryn','Casper',7,'kyle84@example.net','7986993587','1992-12-02 07:55:58','2005-12-10 05:21:28'),(29,'Imelda','Grant',5,'halvorson.estell@example.net','9211765108','1977-04-25 02:29:45','2020-05-30 01:38:05'),(30,'Alanna','Schneider',4,'fanny28@example.org','1575996711','2014-04-21 04:09:13','2001-12-23 16:45:35'),(31,'Hailey','Hintz',2,'evelyn33@example.net','9816571467','1996-11-08 01:53:39','1981-11-23 21:46:31'),(32,'Torrey','Douglas',9,'jarod.rau@example.org','4689076776','1991-01-28 02:12:32','2010-03-23 08:20:12'),(33,'Mike','Johnson',10,'sage.mccullough@example.org','3149832081','1984-02-23 22:51:09','1982-07-16 03:27:00'),(34,'Elinore','Schaefer',5,'schmitt.esperanza@example.com','1870419126','1974-03-18 09:31:34','1977-11-12 13:20:32'),(35,'Susanna','Raynor',3,'ward.emard@example.com','4067628917','2017-12-14 19:38:08','2013-05-16 10:47:47'),(36,'Monty','Corkery',2,'foster64@example.net','7183751608','2018-12-05 09:52:23','1991-04-08 12:04:08'),(37,'Ruthie','Abbott',5,'mhackett@example.com','1361849253','2017-12-02 17:20:56','1991-09-29 21:52:12'),(38,'Stone','Veum',7,'maybell.leffler@example.org','5475591394','1977-10-06 04:32:33','1981-10-06 04:09:41'),(39,'Clemmie','Kassulke',6,'judd.nienow@example.net','3800118583','2015-10-24 09:09:10','2000-04-27 21:49:34'),(40,'Adah','Roob',3,'maynard.gutmann@example.com','0267515058','1973-10-08 06:40:40','1996-04-20 17:27:38'),(41,'Turner','Dach',5,'monahan.ophelia@example.net','7474626284','1975-01-14 23:31:42','1998-01-10 14:49:11'),(42,'Kacie','Schumm',5,'kyleigh14@example.com','0249369775','2000-02-12 08:02:43','2011-03-31 12:38:52'),(43,'Linnea','Tremblay',1,'daniella.carter@example.org','1056178761','2011-08-22 14:27:55','2014-09-26 13:11:58'),(44,'Eunice','Nitzsche',5,'bret.gutmann@example.net','8011251431','1986-08-26 14:02:09','2005-04-27 11:49:41'),(45,'Ian','Davis',5,'benedict97@example.net','1979004159','2016-05-31 21:30:12','1980-08-30 15:13:50'),(46,'Jermain','Shields',10,'mayert.kari@example.org','8322779252','1976-03-30 16:49:41','1995-06-28 21:03:42'),(47,'Karine','Feest',2,'mann.maiya@example.com','7729554890','2010-12-11 10:06:05','2015-04-14 23:58:31'),(48,'Darron','Schmeler',8,'coy28@example.com','3251811240','1982-04-22 19:42:20','1974-11-03 20:55:35'),(49,'Darion','Kovacek',2,'kmclaughlin@example.org','5795833874','2012-11-10 16:00:20','1985-03-21 06:57:14'),(50,'Adella','Gutmann',2,'lwilderman@example.net','9203114472','2015-03-21 19:52:19','2016-04-03 19:31:29');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2021_10_23_050106_create_companies_table',1),(6,'2021_10_23_050232_create_employees_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','admin@admin.com',NULL,'$2y$10$xxREf9B65ZsJYEi4bnqoe.LNaAJZGJBTlZhghe4ShlYCbjzuPDzu.',NULL,'2021-10-23 01:10:03','2021-10-23 01:10:03');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'qed42'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-23 16:58:43
