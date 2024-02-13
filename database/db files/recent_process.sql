-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: recent_process
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `industry` varchar(50) NOT NULL,
  `email` text NOT NULL,
  `password` varchar(70) NOT NULL,
  `staff_image` text NOT NULL,
  `city` varchar(50) NOT NULL,
  `role` varchar(15) NOT NULL,
  `flag` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Abhishek','','','admin@gmail.com','$2y$10$AQqTUfeHXOHLb6eeGSjx7eYMkYglLH2DvJ39u7SXab.79qL8UvJAu','','','Admin',0);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authorise_accessms`
--

DROP TABLE IF EXISTS `authorise_accessms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authorise_accessms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `sidebar_id` int(11) NOT NULL,
  `can_view` int(11) NOT NULL DEFAULT 0 COMMENT 'Here 1 is  have access and 0 is not',
  `can_edit` int(11) NOT NULL DEFAULT 0 COMMENT 'Here 1 is  have access and 0 is not',
  `can_delete` int(11) NOT NULL DEFAULT 0 COMMENT 'Here 1 is  have access and 0 is not',
  `can_add` int(11) NOT NULL DEFAULT 0 COMMENT 'Here 1 is  have access and 0 is not',
  `can_change_pass` int(11) NOT NULL DEFAULT 0 COMMENT 'Here 1 is  have access and 0 is not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authorise_accessms`
--

LOCK TABLES `authorise_accessms` WRITE;
/*!40000 ALTER TABLE `authorise_accessms` DISABLE KEYS */;
INSERT INTO `authorise_accessms` VALUES (1,181,1,1,1,1,1,1,NULL,NULL),(2,181,2,1,1,1,1,1,NULL,NULL),(3,181,3,1,1,1,1,1,NULL,NULL),(4,181,4,1,1,1,1,1,NULL,NULL),(5,181,5,1,1,1,1,1,NULL,NULL),(6,181,6,1,1,1,1,1,NULL,NULL),(7,181,7,1,1,1,1,1,NULL,NULL),(8,181,8,1,1,1,1,1,NULL,NULL),(9,181,9,1,1,1,1,1,NULL,NULL);
/*!40000 ALTER TABLE `authorise_accessms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buyers`
--

DROP TABLE IF EXISTS `buyers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buyers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyers`
--

LOCK TABLES `buyers` WRITE;
/*!40000 ALTER TABLE `buyers` DISABLE KEYS */;
INSERT INTO `buyers` VALUES (1,'OKHAI AHMEDABAD',0,'2022-11-02 10:08:01',NULL);
/*!40000 ALTER TABLE `buyers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_location_id_foreign` (`location_id`),
  CONSTRAINT `categories_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `check_and_receiveds`
--

DROP TABLE IF EXISTS `check_and_receiveds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `check_and_receiveds` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `received_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `flag` int(11) NOT NULL DEFAULT 0 COMMENT 'here 0 is listed and 2 is deleted',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `check_and_receiveds`
--

LOCK TABLES `check_and_receiveds` WRITE;
/*!40000 ALTER TABLE `check_and_receiveds` DISABLE KEYS */;
INSERT INTO `check_and_receiveds` VALUES (1,7,'5','2022-11-02 10:14:52',NULL,NULL,0),(2,122,'40.5','2022-11-05 17:56:47',NULL,NULL,0);
/*!40000 ALTER TABLE `check_and_receiveds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
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
-- Table structure for table `inventories`
--

DROP TABLE IF EXISTS `inventories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventories`
--

LOCK TABLES `inventories` WRITE;
/*!40000 ALTER TABLE `inventories` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=564 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (538,'2014_10_12_100000_create_password_resets_table',1),(539,'2019_08_19_000000_create_failed_jobs_table',1),(540,'2019_12_14_000001_create_personal_access_tokens_table',1),(541,'2022_09_03_182923_create_users_table',1),(542,'2022_09_04_023849_create_locations_table',1),(543,'2022_09_04_032056_create_categories_table',1),(544,'2022_09_17_171900_create_products_table',1),(545,'2022_09_17_174742_create_orders_table',1),(546,'2022_09_17_180655_create_receipts_table',1),(547,'2022_09_17_182129_create_inventories_table',1),(548,'2022_09_17_184313_create_produces_table',1),(549,'2022_09_17_194411_create_processes_table',1),(550,'2022_09_17_201218_create_productions_table',1),(551,'2022_09_22_115520_product_process',1),(552,'2022_09_24_170222_create_process_steps_table',1),(553,'2022_09_24_192759_create_order_returns_table',1),(554,'2022_09_26_062918_create_jobs_table',1),(555,'2022_10_02_110811_add_receipt_session',1),(556,'2022_10_02_111946_add_receipt_session_date',1),(557,'2022_10_02_124209_add_check_and_received',1),(558,'2022_10_02_124808_add_check_and_received_date',1),(559,'2022_10_03_064357_create_product_boms_table',1),(560,'2022_10_17_183555_create_buyers_table',2),(561,'2022_11_05_160455_add_some_feilds_order',3),(562,'2022_11_06_111936_create_sidebar_attrs_table',4),(563,'2022_11_06_113640_create_authorise_accessms_table',5);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_returns`
--

DROP TABLE IF EXISTS `order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_returns` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `returned_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `return_product` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_returns`
--

LOCK TABLES `order_returns` WRITE;
/*!40000 ALTER TABLE `order_returns` DISABLE KEYS */;
INSERT INTO `order_returns` VALUES (1,1,'2022-11-13',0,'2022-11-05 11:39:34',NULL,'[\"BDK002\",\"BDK005\"]','[\"3\",\"4\"]','2000'),(2,2,'2022-11-12',0,'2022-11-05 11:52:12',NULL,'[\"BDK002\",\"BDK003\"]','[\"1\",\"4\"]','4000'),(3,3,'2022-11-13',0,'2022-11-05 12:24:45',NULL,'[\"bts\"]','[\"5.20\"]','5000');
/*!40000 ALTER TABLE `order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`product_id`)),
  `quantity` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`quantity`)),
  `order_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buyer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT 'here   1 is dispactched',
  `dispatched_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checked_and_received_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `returned` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT 'Here   1 is returned and  0 is not',
  `flag` int(11) NOT NULL DEFAULT 0 COMMENT 'here 0 is active and 1 is deactive and 2 is delete',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'[\"BDK002\",\"BDK005\"]','[\"3\",\"4\"]','order1','OKHAI AHMEDABAD','2000','','1','2022-11-05 17:20:33',NULL,'1',0,'2022-11-05 09:26:05','2022-11-05 11:39:34'),(2,'[\"BDK002\",\"BDK003\"]','[\"3\",\"4\"]','order2','OKHAI AHMEDABAD','6000','','0',NULL,NULL,'1',0,'2022-11-05 11:51:40','2022-11-05 11:52:12'),(3,'[\"bts\"]','[\"8.23\"]','ore','OKHAI AHMEDABAD','5000','','0',NULL,NULL,'1',0,'2022-11-05 12:23:16','2022-11-05 12:24:45'),(4,'[\"bts\"]','[\"36\"]','order5','OKHAI AHMEDABAD','3000','','0',NULL,NULL,'0',0,'2022-11-05 12:25:31',NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
-- Table structure for table `process_steps`
--

DROP TABLE IF EXISTS `process_steps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `process_steps` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `process_id` int(11) NOT NULL,
  `steps` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `process_steps`
--

LOCK TABLES `process_steps` WRITE;
/*!40000 ALTER TABLE `process_steps` DISABLE KEYS */;
INSERT INTO `process_steps` VALUES (1,1,'Print','0','2022-11-01 08:24:51',NULL),(2,1,'Stitch','0','2022-11-01 08:24:51',NULL),(3,1,'Press','0','2022-11-01 08:24:51',NULL),(4,1,'Finish','0','2022-11-01 08:24:51',NULL),(5,2,'Print','0','2022-11-01 08:25:18',NULL),(6,2,'Stitch','0','2022-11-01 08:25:18',NULL),(7,2,'Press','0','2022-11-01 08:25:18',NULL),(8,2,'Finish','0','2022-11-01 08:25:18',NULL),(9,3,'Print','0','2022-11-01 08:25:44',NULL),(10,3,'Stitch','0','2022-11-01 08:25:44',NULL),(11,3,'Press','0','2022-11-01 08:25:44',NULL),(12,3,'Finish','0','2022-11-01 08:25:44',NULL),(13,4,'Print','0','2022-11-01 08:26:22',NULL),(14,4,'Steam Dry','0','2022-11-01 08:26:22',NULL),(15,4,'Finish','0','2022-11-01 08:26:22',NULL),(16,5,'ORDER PLACE','0','2022-11-02 06:33:35',NULL),(17,5,'RECEIVED SENT TO WASH','0','2022-11-02 06:33:35',NULL),(18,5,'RECEIVED FROM WASH','0','2022-11-02 06:33:35',NULL);
/*!40000 ALTER TABLE `process_steps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `processes`
--

DROP TABLE IF EXISTS `processes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `processes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` int(11) NOT NULL DEFAULT 0 COMMENT 'here 0 is active and 1 is deactive and 2 is delete',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processes`
--

LOCK TABLES `processes` WRITE;
/*!40000 ALTER TABLE `processes` DISABLE KEYS */;
INSERT INTO `processes` VALUES (1,'Bedsheet',0,'2022-11-01 08:24:51',NULL),(2,'Curtain',0,'2022-11-01 08:25:18',NULL),(3,'Cushion Cover',0,'2022-11-01 08:25:44',NULL),(4,'Durrie',0,'2022-11-01 08:26:22',NULL),(5,'PURCHASE',0,'2022-11-02 06:33:35',NULL);
/*!40000 ALTER TABLE `processes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produces`
--

DROP TABLE IF EXISTS `produces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produces` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `quantity` float NOT NULL,
  `production` int(11) NOT NULL DEFAULT 0 COMMENT 'here 0 it is in too produce face and  1 is in production face',
  `process_step_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Here 0  is that production for the product not start yet',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `receipt_session` int(11) NOT NULL DEFAULT 0 COMMENT 'here 0 is this product is in production stage only',
  `receipt_session_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check_and_received` int(11) NOT NULL DEFAULT 0,
  `check_and_received_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produces`
--

LOCK TABLES `produces` WRITE;
/*!40000 ALTER TABLE `produces` DISABLE KEYS */;
INSERT INTO `produces` VALUES (2,7,5,1,0,'2022-11-02 10:16:49','2022-11-02 10:16:54',0,NULL,0,NULL);
/*!40000 ALTER TABLE `produces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_boms`
--

DROP TABLE IF EXISTS `product_boms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_boms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `bom_sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bom_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_boms`
--

LOCK TABLES `product_boms` WRITE;
/*!40000 ALTER TABLE `product_boms` DISABLE KEYS */;
INSERT INTO `product_boms` VALUES (2,8,'COTTON 20',3,'2022-11-02 06:54:02',NULL),(4,9,'COTTON 20',3,'2022-11-02 06:56:04',NULL),(5,11,'COTTON 20',3,'2022-11-02 06:58:25',NULL),(6,12,'COTTON 20',3,'2022-11-02 06:58:45',NULL),(7,13,'COTTON 20',3,'2022-11-02 06:59:05',NULL),(9,14,'COTTON 20',3,'2022-11-02 07:00:31',NULL),(12,15,'COTTON 20',3,'2022-11-02 07:01:15',NULL),(13,16,'COTTON 20',3,'2022-11-02 07:01:29',NULL),(14,17,'COTTON 20',3,'2022-11-02 07:01:44',NULL),(15,18,'COTTON 20',3,'2022-11-02 07:01:59',NULL),(16,19,'COTTON 20',3,'2022-11-02 07:02:21',NULL),(17,20,'COTTON 20',3,'2022-11-02 07:02:39',NULL),(18,21,'COTTON 20',3,'2022-11-02 07:02:58',NULL),(19,22,'COTTON 20',3,'2022-11-02 07:03:13',NULL),(20,23,'COTTON 20',3,'2022-11-02 07:03:29',NULL),(21,24,'COTTON 20',3,'2022-11-02 07:03:44',NULL),(22,25,'COTTON 20',3,'2022-11-02 07:04:02',NULL),(23,26,'COTTON 20',3,'2022-11-02 07:04:29',NULL),(24,27,'COTTON 20',3,'2022-11-02 07:04:46',NULL),(25,28,'COTTON 20',3,'2022-11-02 07:05:00',NULL),(26,29,'COTTON 20',3,'2022-11-02 07:05:16',NULL),(27,30,'COTTON 20',3,'2022-11-02 07:05:32',NULL),(28,31,'COTTON 20',3,'2022-11-02 07:05:52',NULL),(29,32,'COTTON 20',3,'2022-11-02 07:06:06',NULL),(30,33,'COTTON 20',3,'2022-11-02 07:06:25',NULL),(31,34,'COTTON 20',3,'2022-11-02 07:06:42',NULL),(32,35,'COTTON 20',3,'2022-11-02 07:06:59',NULL),(33,36,'COTTON 20',3,'2022-11-02 07:07:14',NULL),(34,37,'COTTON 20',3,'2022-11-02 07:07:28',NULL),(35,38,'COTTON 20',3,'2022-11-02 07:07:46',NULL),(36,39,'COTTON 20',3,'2022-11-02 07:08:00',NULL),(39,40,'COTTON 20',3,'2022-11-02 07:08:51',NULL),(40,41,'COTTON 20',3,'2022-11-02 07:09:12',NULL),(41,42,'COTTON 20',3,'2022-11-02 07:09:30',NULL),(42,43,'COTTON 20',3,'2022-11-02 07:09:48',NULL),(43,44,'COTTON 20',3,'2022-11-02 07:10:03',NULL),(44,45,'COTTON 20',3,'2022-11-02 07:10:19',NULL),(45,46,'COTTON 20',3,'2022-11-02 07:10:34',NULL),(46,47,'COTTON 20',3,'2022-11-02 07:10:49',NULL),(47,48,'COTTON 20',3,'2022-11-02 07:11:04',NULL),(48,49,'COTTON 20',3,'2022-11-02 07:11:19',NULL),(49,50,'COTTON 20',3,'2022-11-02 07:11:36',NULL),(50,51,'COTTON 20',3,'2022-11-02 07:11:55',NULL),(51,52,'COTTON 20',3,'2022-11-02 07:12:13',NULL),(53,53,'COTTON 20',3,'2022-11-02 07:12:43',NULL),(54,54,'COTTON 20',3,'2022-11-02 07:13:04',NULL),(58,55,'COTTON 20',3,'2022-11-02 07:15:07',NULL),(59,56,'COTTON 20',3,'2022-11-02 07:15:22',NULL),(60,57,'COTTON 20',3,'2022-11-02 07:15:44',NULL),(62,58,'COTTON 20',3,'2022-11-02 07:16:24',NULL),(63,59,'COTTON 20',3,'2022-11-02 07:17:09',NULL),(65,60,'COTTON 20',3,'2022-11-02 07:17:45',NULL),(66,61,'COTTON 20',3,'2022-11-02 07:18:29',NULL),(67,62,'COTTON 20',3,'2022-11-02 07:18:50',NULL),(68,63,'COTTON 20',3,'2022-11-02 07:19:08',NULL),(69,64,'COTTON 20',3,'2022-11-02 07:19:27',NULL),(70,65,'COTTON 20',3,'2022-11-02 07:19:45',NULL),(71,66,'COTTON 20',3,'2022-11-02 07:20:04',NULL),(72,67,'COTTON 20',3,'2022-11-02 07:20:36',NULL),(73,68,'COTTON 20',3,'2022-11-02 07:20:53',NULL),(74,69,'COTTON 20',3,'2022-11-02 07:21:08',NULL),(75,70,'COTTON 20',3,'2022-11-02 07:21:23',NULL),(79,71,'COTTON 20',3,'2022-11-02 07:24:27',NULL),(80,72,'COTTON 20',3,'2022-11-02 07:25:05',NULL),(84,73,'COTTON 20',3,'2022-11-02 07:29:03',NULL),(85,74,'COTTON 20',3,'2022-11-02 07:31:18',NULL),(87,75,'COTTON 20',3,'2022-11-02 07:31:57',NULL),(89,76,'COTTON 20',3,'2022-11-02 07:33:14',NULL),(91,77,'COTTON 20',3,'2022-11-02 07:33:59',NULL),(92,78,'COTTON 20',3,'2022-11-02 07:34:20',NULL),(94,79,'COTTON 20',3,'2022-11-02 07:34:54',NULL),(95,80,'COTTON 20',3,'2022-11-02 07:35:16',NULL),(96,81,'COTTON 20',3,'2022-11-02 07:35:40',NULL),(97,82,'COTTON 20',3,'2022-11-02 07:35:59',NULL),(98,84,'COTTON 20',3,'2022-11-02 07:36:26',NULL),(99,85,'COTTON 20',3,'2022-11-02 07:36:45',NULL),(101,86,'COTTON 20',3,'2022-11-02 08:38:58',NULL),(103,87,'COTTON 20',3,'2022-11-02 08:40:56',NULL),(105,88,'COTTON 20',3,'2022-11-02 08:42:25',NULL),(106,89,'COTTON 20',3,'2022-11-02 08:43:05',NULL),(109,90,'COTTON 20',3,'2022-11-02 08:49:41',NULL),(110,91,'COTTON 20',3,'2022-11-02 08:50:01',NULL),(113,92,'COTTON 20',3,'2022-11-02 09:11:08',NULL),(114,93,'COTTON 20',3,'2022-11-02 09:11:53',NULL),(115,94,'COTTON 20',3,'2022-11-02 09:12:36',NULL),(117,95,'COTTON 20',3,'2022-11-02 09:14:11',NULL),(118,96,'COTTON 20',3,'2022-11-02 09:14:28',NULL),(119,97,'COTTON 20',3,'2022-11-02 09:14:43',NULL),(120,98,'COTTON 20',3,'2022-11-02 09:15:05',NULL),(121,99,'COTTON 20',3,'2022-11-02 09:15:21',NULL),(122,100,'COTTON 20',3,'2022-11-02 09:15:37',NULL),(123,101,'COTTON 20',3,'2022-11-02 09:15:52',NULL),(124,102,'COTTON 20',3,'2022-11-02 09:16:05',NULL),(126,103,'COTTON 20',3,'2022-11-02 09:16:36',NULL),(127,104,'COTTON 20',3,'2022-11-02 09:16:49',NULL),(128,105,'COTTON 20',3,'2022-11-02 09:17:06',NULL),(129,106,'COTTON 20',3,'2022-11-02 09:17:21',NULL),(130,107,'COTTON 20',3,'2022-11-02 09:17:49',NULL),(131,108,'COTTON 20',3,'2022-11-02 09:18:05',NULL),(132,109,'COTTON 20',3,'2022-11-02 09:18:22',NULL),(133,110,'COTTON 20',3,'2022-11-02 09:18:39',NULL),(134,111,'COTTON 20',3,'2022-11-02 09:18:52',NULL),(135,112,'COTTON 20',3,'2022-11-02 09:19:07',NULL),(136,113,'COTTON 20',3,'2022-11-02 09:19:22',NULL),(137,114,'COTTON 20',3,'2022-11-02 09:19:37',NULL),(138,115,'COTTON 20',3,'2022-11-02 09:19:56',NULL),(139,116,'COTTON 20',3,'2022-11-02 09:20:10',NULL),(140,117,'COTTON 20',3,'2022-11-02 09:20:24',NULL),(141,7,'COTTON 20',3,'2022-11-02 10:17:57',NULL),(142,121,'BDK004',3,'2022-11-02 12:56:45',NULL),(143,122,'BDK002',4,'2022-11-05 12:21:15',NULL);
/*!40000 ALTER TABLE `product_boms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_process`
--

DROP TABLE IF EXISTS `product_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_process` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `step` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_process`
--

LOCK TABLES `product_process` WRITE;
/*!40000 ALTER TABLE `product_process` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_process` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productions`
--

DROP TABLE IF EXISTS `productions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productions`
--

LOCK TABLES `productions` WRITE;
/*!40000 ALTER TABLE `productions` DISABLE KEYS */;
/*!40000 ALTER TABLE `productions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `moq` float DEFAULT NULL,
  `quantity` float DEFAULT NULL,
  `bom_sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bom_quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `process_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'COTTON 20',NULL,'FABRIC',100,20,NULL,NULL,'5',0,NULL,'2022-11-02 10:16:54'),(2,'MUL 92X80',NULL,'FABRIC',100,NULL,NULL,NULL,'5',0,NULL,NULL),(3,'DUR  FAB 4*6',NULL,'FABRIC',5,NULL,NULL,NULL,'5',0,NULL,NULL),(4,'DUR FAB 3*5',NULL,'FABRIC',5,NULL,NULL,NULL,'5',0,NULL,NULL),(5,'DUR FAB 2*6',NULL,'FABRIC',5,NULL,NULL,NULL,'5',0,NULL,NULL),(6,'DUR FAB 2*3',NULL,'FABRIC',5,NULL,NULL,NULL,'5',0,NULL,NULL),(7,'BDK001','1667384277SSKR040J (6).jpg','BEDSHEET',2,2,NULL,NULL,'1',0,NULL,'2022-11-02 10:17:57'),(8,'BDK002',NULL,'BEDSHEET',2,8,NULL,NULL,'1',0,NULL,'2022-11-05 12:26:21'),(9,'BDK003',NULL,'BEDSHEET',2,4,NULL,NULL,'1',0,NULL,'2022-11-05 11:52:12'),(10,'BDK004',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,NULL),(11,'BDK005',NULL,'BEDSHEET',2,56,NULL,NULL,'1',0,NULL,'2022-11-05 11:39:34'),(12,'BDK006',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 06:58:45'),(13,'BDK007',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 06:59:05'),(14,'BDK008',NULL,'BEDSHEET',2,7,NULL,NULL,'1',0,NULL,'2022-11-04 13:53:42'),(15,'BDK009',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:01:15'),(16,'BDK010',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:01:29'),(17,'BDK011',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:01:44'),(18,'BDK012',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:01:59'),(19,'BDK013',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:02:21'),(20,'BDK014',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:02:39'),(21,'BDK015',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:02:58'),(22,'BDK016',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:03:13'),(23,'BDK017',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:03:29'),(24,'BDK018',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:03:44'),(25,'BDK019',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:04:02'),(26,'BDK020',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:04:29'),(27,'BDK021',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:04:46'),(28,'BDK022',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:05:00'),(29,'BDK023',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:05:16'),(30,'BDK024',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:05:32'),(31,'BDK025',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:05:52'),(32,'BDK026',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:06:06'),(33,'BDK027',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:06:25'),(34,'BDK028',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:06:42'),(35,'BDK029',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:06:59'),(36,'BDK030',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:07:14'),(37,'BDK031',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:07:28'),(38,'BDK032',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:07:46'),(39,'BDK033',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:08:00'),(40,'BDK034',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:08:51'),(41,'BDK035',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:09:12'),(42,'BDK036',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:09:30'),(43,'BDK037',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:09:48'),(44,'BDK038',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:10:03'),(45,'BDK039',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:10:19'),(46,'BDK040',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:10:34'),(47,'BDK041',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:10:49'),(48,'BDK042',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:11:04'),(49,'BDK043',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:11:19'),(50,'BDK044',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:11:36'),(51,'BDK045',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:11:55'),(52,'BDK046',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:12:13'),(53,'BDK047',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:12:43'),(54,'BDK048',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:13:04'),(55,'BDK049',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:15:06'),(56,'BDK050',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:15:22'),(57,'BDK051',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:15:44'),(58,'BDK052',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:16:24'),(59,'BDK053',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:17:09'),(60,'BDK054',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:17:45'),(61,'BDK055',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:18:29'),(62,'BDK056',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:18:50'),(63,'BDK057',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:19:08'),(64,'BDK058',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:19:27'),(65,'BDK059',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:19:45'),(66,'BDK060',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:20:04'),(67,'BDK061',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:20:36'),(68,'BDK062',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:20:53'),(69,'BDK063',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:21:08'),(70,'BDK064',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:21:23'),(71,'BDK065',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:24:27'),(72,'BDK066',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:25:05'),(73,'BDK067',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:29:03'),(74,'BDK068',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:31:18'),(75,'BDK069',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:31:57'),(76,'BDK070',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:33:14'),(77,'BDK071',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:33:59'),(78,'BDK072',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:34:20'),(79,'BDK073',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:34:54'),(80,'BDK074',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:35:16'),(81,'BDK075',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:35:40'),(82,'BDK076',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:35:59'),(83,'BDK077',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,NULL),(84,'BDK078',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:36:26'),(85,'BDK079',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 07:36:45'),(86,'BDK080',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 08:38:58'),(87,'BDK081',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 08:40:56'),(88,'BDK082',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 08:42:25'),(89,'BDK083',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 08:43:05'),(90,'BDK084',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 08:49:41'),(91,'BDK085',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 08:50:01'),(92,'BDK086',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 09:11:08'),(93,'BDK087',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 09:11:53'),(94,'BDK088',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 09:12:36'),(95,'BDK089',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 09:14:11'),(96,'BDK090',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 09:14:28'),(97,'BDK091',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 09:14:43'),(98,'BDK092',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 09:15:05'),(99,'BDK093',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 09:15:21'),(100,'BDK094',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 09:15:37'),(101,'BDK095',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 09:15:52'),(102,'BDK096',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 09:16:05'),(103,'BDK097',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 09:16:36'),(104,'BDK098',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 09:16:49'),(105,'BDK099',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 09:17:06'),(106,'BDK100',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 09:17:21'),(107,'BDK101',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 09:17:49'),(108,'BDK102',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 09:18:05'),(109,'BDK103',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 09:18:22'),(110,'BDK104',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 09:18:39'),(111,'BDK105',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 09:18:52'),(112,'BDK106',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 09:19:07'),(113,'BDK107',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 09:19:22'),(114,'BDK108',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 09:19:37'),(115,'BDK109',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 09:19:56'),(116,'BDK110',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 09:20:10'),(117,'BDK111',NULL,'BEDSHEET',2,NULL,NULL,NULL,'1',0,NULL,'2022-11-02 09:20:24'),(118,'sku 4',NULL,'cat 2',20,NULL,NULL,NULL,'1',0,NULL,NULL),(119,'sku 3',NULL,'cat 1',5,NULL,NULL,NULL,'1',0,NULL,NULL),(120,'sku 6',NULL,'cat 1',5,NULL,NULL,NULL,'1',0,NULL,NULL),(121,'sku 7',NULL,'cat 1',5,NULL,NULL,NULL,'1',0,NULL,NULL),(122,'bts',NULL,'test',2.45,41.68,NULL,NULL,'3',0,NULL,'2022-11-05 12:26:47');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receipts`
--

DROP TABLE IF EXISTS `receipts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receipts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipts`
--

LOCK TABLES `receipts` WRITE;
/*!40000 ALTER TABLE `receipts` DISABLE KEYS */;
/*!40000 ALTER TABLE `receipts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sidebar_attrs`
--

DROP TABLE IF EXISTS `sidebar_attrs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sidebar_attrs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sidebar_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` int(11) NOT NULL DEFAULT 1 COMMENT 'here 1 is active and 0 is not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sidebar_attrs`
--

LOCK TABLES `sidebar_attrs` WRITE;
/*!40000 ALTER TABLE `sidebar_attrs` DISABLE KEYS */;
INSERT INTO `sidebar_attrs` VALUES (1,'Buyers','buyers',1,NULL,NULL),(2,'Products','products',1,NULL,NULL),(3,'Orders','orders',1,NULL,NULL),(4,'Order Return','orders-return',1,NULL,NULL),(5,'Recepits','recepits',1,NULL,NULL),(6,'Inventory status','inventory',1,NULL,NULL),(7,'To Produce','produce',1,NULL,NULL),(8,'Process','process',1,NULL,NULL),(9,'Production Status & Plan','production',1,NULL,NULL);
/*!40000 ALTER TABLE `sidebar_attrs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` varchar(15) NOT NULL,
  `category_id` varchar(11) NOT NULL,
  `unique_id` text NOT NULL,
  `gender` text DEFAULT NULL,
  `dob` text DEFAULT NULL,
  `website` text DEFAULT NULL,
  `personal_chamber` text DEFAULT NULL,
  `degree` text DEFAULT NULL,
  `college` text DEFAULT NULL,
  `completion_year` text DEFAULT NULL,
  `registration_no` text DEFAULT NULL,
  `document` text DEFAULT NULL,
  `specialization` text DEFAULT NULL,
  `experience_year` text DEFAULT NULL,
  `achievement` text DEFAULT NULL,
  `experience_brief` text DEFAULT NULL,
  `flag` int(11) NOT NULL DEFAULT 0,
  `feature_flag` int(11) NOT NULL DEFAULT 0,
  `token` text DEFAULT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT 0,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (2,'188','93','TMD-101','male','2022-09-08','http://my-home-page.com','http://my-home-page.com','12','wqw','21212','212','202209071213Screenshot (2).png','93','32323','212','212',0,0,'',0,'2022-09-08 13:13:56'),(3,'189','91','TMD-102','female','2022-09-09','http://my-home-page.com','http://my-home-page.com','bachelor','212','121','2121','','91','32323','2212','21212',0,0,'',0,'2022-09-08 13:48:24');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_table`
--

DROP TABLE IF EXISTS `user_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `signature` varchar(100) DEFAULT NULL,
  `otp` varchar(10) DEFAULT NULL,
  `flag` int(11) NOT NULL DEFAULT 0,
  `genre` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_table`
--

LOCK TABLES `user_table` WRITE;
/*!40000 ALTER TABLE `user_table` DISABLE KEYS */;
INSERT INTO `user_table` VALUES (181,'Admin','8826269838','admin@gmail.com','$2y$10$qGuKiJVwyxAPsWudwnPOjubQ5rS6bMKEdAOifGy/RpXE.NLxCGE0C','','','',0,'admin');
/*!40000 ALTER TABLE `user_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vip_or_not` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternate_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `search_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `room_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `room_rent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `co_pay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kin_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kin_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kin_relationship` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adharcard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pancard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insurance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `investigation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `others` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webdetails`
--

DROP TABLE IF EXISTS `webdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) NOT NULL,
  `vendor_url` varchar(50) NOT NULL,
  `favicon` varchar(300) NOT NULL,
  `thumb_favicon` varchar(500) NOT NULL,
  `thumb_logo` varchar(500) NOT NULL,
  `logo` text NOT NULL,
  `title` text NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `website` varchar(55) NOT NULL,
  `terms` text NOT NULL,
  `privacy` text NOT NULL,
  `return` text NOT NULL,
  `refund` text NOT NULL,
  `disclaimer` text NOT NULL,
  `wallet_policy` text NOT NULL,
  `faqs` text NOT NULL,
  `about` text NOT NULL,
  `fb_link` text NOT NULL,
  `twitter_link` text DEFAULT NULL,
  `insta_link` text NOT NULL,
  `youtube_link` text NOT NULL,
  `minimum_amount` int(11) NOT NULL,
  `shipping_charge` int(11) NOT NULL,
  `gst_number` text NOT NULL,
  `city` varchar(55) NOT NULL,
  `country` varchar(55) NOT NULL,
  `state` varchar(55) NOT NULL,
  `description` text NOT NULL,
  `whatsapp` varchar(15) NOT NULL,
  `twakto` varchar(1500) NOT NULL,
  `flag` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webdetails`
--

LOCK TABLES `webdetails` WRITE;
/*!40000 ALTER TABLE `webdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `webdetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-06 23:02:05
