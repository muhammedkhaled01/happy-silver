-- MySQL dump 10.13  Distrib 8.2.0, for macos14.0 (arm64)
--
-- Host: localhost    Database: wowy
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'x7EMaaq0VyBqG5bmQz6aHkADimCAsGdb',1,'2024-02-23 18:23:31','2024-02-23 18:23:31','2024-02-23 18:23:31'),(2,2,'i1ufIElZPweV4y1GMosobib5oYGUDULr',1,'2024-02-23 18:23:32','2024-02-23 18:23:32','2024-02-23 18:23:32');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Smart Offer','2029-02-24 00:00:00','not_set','IZ6WU8KUALYD','promotion/1.png','/products',0,1,'published','2024-02-23 18:23:32','2024-02-23 18:23:32',1,NULL,NULL),(2,'Sale off','2029-02-24 00:00:00','not_set','ILSFJVYFGCPZ','promotion/2.png','/products',0,2,'published','2024-02-23 18:23:32','2024-02-23 18:23:32',1,NULL,NULL),(3,'New Arrivals','2029-02-24 00:00:00','not_set','ILSDKVYFGXPH','promotion/3.png','/products',0,3,'published','2024-02-23 18:23:32','2024-02-23 18:23:32',1,NULL,NULL),(4,'Gaming Area','2029-02-24 00:00:00','not_set','ILSDKVYFGXPJ','promotion/4.png','/products',0,4,'published','2024-02-23 18:23:32','2024-02-23 18:23:32',1,NULL,NULL),(5,'Smart Offer','2029-02-24 00:00:00','not_set','IZ6WU8KUALYE','promotion/5.png','/products',0,5,'published','2024-02-23 18:23:32','2024-02-23 18:23:32',1,NULL,NULL),(6,'Repair Services','2029-02-24 00:00:00','banner-big','IZ6WU8KUALYF','promotion/6.png','/products',0,6,'published','2024-02-23 18:23:32','2024-02-23 18:23:32',1,NULL,NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Maiores velit explicabo sunt aliquam eius aut. Optio dignissimos est accusamus voluptas veritatis eum soluta quisquam. Quo iusto sint repellendus exercitationem numquam.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2024-02-23 18:23:31','2024-02-23 18:23:31'),(2,'Fashion',0,'Ut et quidem veritatis voluptatem animi deserunt repellendus. Omnis aut ad omnis sapiente. In qui non ipsam distinctio sed accusantium.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-02-23 18:23:31','2024-02-23 18:23:31'),(3,'Electronic',0,'Cumque optio et ullam. Iste qui esse in tenetur dolores ratione. Consequuntur et ipsum recusandae sit. Dolorem soluta eligendi excepturi dolor ullam est aut.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-02-23 18:23:31','2024-02-23 18:23:31'),(4,'Commercial',0,'Eos sit qui nobis. Est pariatur delectus odio facilis omnis eum dolorem. Omnis doloremque et nam quasi inventore iure atque. Rerum tenetur officia ipsum dolor.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-02-23 18:23:31','2024-02-23 18:23:31');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Perxsion',NULL,NULL,'brands/1.png','published',0,1,'2024-02-23 18:23:15','2024-02-23 18:23:15'),(2,'Hiching',NULL,NULL,'brands/2.png','published',1,1,'2024-02-23 18:23:15','2024-02-23 18:23:15'),(3,'Kepslo',NULL,NULL,'brands/3.png','published',2,1,'2024-02-23 18:23:15','2024-02-23 18:23:15'),(4,'Groneba',NULL,NULL,'brands/4.png','published',3,1,'2024-02-23 18:23:15','2024-02-23 18:23:15'),(5,'Babian',NULL,NULL,'brands/5.png','published',4,1,'2024-02-23 18:23:15','2024-02-23 18:23:15'),(6,'Valorant',NULL,NULL,'brands/6.png','published',5,1,'2024-02-23 18:23:15','2024-02-23 18:23:15'),(7,'Pure',NULL,NULL,'brands/7.png','published',6,1,'2024-02-23 18:23:15','2024-02-23 18:23:15');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2024-02-23 18:23:15','2024-02-23 18:23:15'),(2,'EUR','€',0,2,1,0,0.84,'2024-02-23 18:23:15','2024-02-23 18:23:15'),(3,'VND','₫',0,0,2,0,23203,'2024-02-23 18:23:15','2024-02-23 18:23:15'),(4,'NGN','₦',1,2,2,0,895.52,'2024-02-23 18:23:15','2024-02-23 18:23:15');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Bridgette Gleichner III','john.smith@botble.com','+15016336489','ER','Oregon','Lehnerview','69605 Spinka Ridge',1,1,'2024-02-23 18:23:22','2024-02-23 18:23:22','37860'),(2,'Bridgette Gleichner III','john.smith@botble.com','+19282567365','TN','Connecticut','Lottiemouth','6055 Bettie Inlet Suite 112',1,0,'2024-02-23 18:23:22','2024-02-23 18:23:22','68190-8380'),(3,'Dr. Verona Borer PhD','customer@botble.com','+15807444928','CW','Minnesota','Grahamberg','9366 Cronin Orchard',2,1,'2024-02-23 18:23:23','2024-02-23 18:23:23','25625-4872'),(4,'Dr. Verona Borer PhD','customer@botble.com','+13643824056','GW','Kentucky','West Arnoldchester','2850 Mayert Dam Apt. 147',2,0,'2024-02-23 18:23:23','2024-02-23 18:23:23','32521-2136'),(5,'Dr. Cheyenne Koelpin','littel.kaleigh@example.net','+15598080543','NO','South Carolina','Lake Wendell','4600 Emily Ports Apt. 709',3,1,'2024-02-23 18:23:23','2024-02-23 18:23:23','29907'),(6,'Moses Daugherty','cicero05@example.org','+18725742141','RW','North Carolina','East Lavern','3926 Lilly Crossing Apt. 498',4,1,'2024-02-23 18:23:23','2024-02-23 18:23:23','62578'),(7,'Conor Koss','delilah.pouros@example.net','+18386719600','LI','California','New Isabelle','29350 Hallie Loaf',5,1,'2024-02-23 18:23:23','2024-02-23 18:23:23','61623-2777'),(8,'Easter Wunsch','vondricka@example.org','+15736188840','SL','Colorado','Gottliebfurt','348 Macejkovic Street Suite 726',6,1,'2024-02-23 18:23:24','2024-02-23 18:23:24','54646-8254'),(9,'Mariam Moen PhD','tiffany27@example.net','+14752598827','SG','South Dakota','Kaylihaven','7564 Tyreek Divide',7,1,'2024-02-23 18:23:24','2024-02-23 18:23:24','73603'),(10,'Christian Bogan','vdonnelly@example.com','+15405087698','PW','Iowa','Kolbymouth','952 Era Forge',8,1,'2024-02-23 18:23:24','2024-02-23 18:23:24','45494-1556'),(11,'Estrella Pollich','lfunk@example.org','+16306123054','UG','Pennsylvania','North Melvinaborough','6436 Destany Heights Suite 938',9,1,'2024-02-23 18:23:25','2024-02-23 18:23:25','20200'),(12,'Declan Stoltenberg','walsh.jewell@example.com','+16578251184','HU','Indiana','Stoltenbergside','74993 Micaela Courts',10,1,'2024-02-23 18:23:25','2024-02-23 18:23:25','78760-6785');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Bridgette Gleichner III','john.smith@botble.com','$2y$12$h2oONiQR2fw.a/sFhEe0bO9i/r0OMDRgBkZeT321ZFow1Z9tT7456','customers/8.jpg','1981-02-13','+18186107460',NULL,'2024-02-23 18:23:22','2024-02-23 18:23:22','2024-02-24 01:23:22',NULL,'activated',NULL),(2,'Dr. Verona Borer PhD','customer@botble.com','$2y$12$u2FRyWlEDxNJXBMid8EnO..fLASCFzQcoybQZBL8ybsWpWodkO8DK','customers/3.jpg','1979-02-21','+18202732929',NULL,'2024-02-23 18:23:23','2024-02-23 18:23:23','2024-02-24 01:23:23',NULL,'activated',NULL),(3,'Dr. Cheyenne Koelpin','littel.kaleigh@example.net','$2y$12$01S5ApP/kx.kRX.3FFn7dOV994evvszlyaZ2fxnaX4fgnNwyByfSW','customers/1.jpg','1990-02-14','+14805004580',NULL,'2024-02-23 18:23:23','2024-02-23 18:23:23','2024-02-24 01:23:23',NULL,'activated',NULL),(4,'Moses Daugherty','cicero05@example.org','$2y$12$VdICmIL39oxTpBc4/CEvFegBTXQQwFBB277Iwg5.9Hw/dx/jOXY/.','customers/2.jpg','1986-02-02','+19544567741',NULL,'2024-02-23 18:23:23','2024-02-23 18:23:23','2024-02-24 01:23:23',NULL,'activated',NULL),(5,'Conor Koss','delilah.pouros@example.net','$2y$12$bxEFRCLxMJknDSAmG4ofl.owZCVkQ1fMFYNE9DqrpU/KH5L/rRbnK','customers/3.jpg','1982-02-20','+12392427526',NULL,'2024-02-23 18:23:23','2024-02-23 18:23:23','2024-02-24 01:23:23',NULL,'activated',NULL),(6,'Easter Wunsch','vondricka@example.org','$2y$12$K/cnG5bLWhBPuN34P42knOHR2QW9PwsPrETvRbnU0LP6zRhig55DO','customers/4.jpg','1992-01-26','+19529502695',NULL,'2024-02-23 18:23:24','2024-02-23 18:23:24','2024-02-24 01:23:24',NULL,'activated',NULL),(7,'Mariam Moen PhD','tiffany27@example.net','$2y$12$XecepDUM95vyqvoF5NO6NOjFAM1si.gLQOB69P91w1KEDqzO2Suzu','customers/5.jpg','1977-02-17','+15057533675',NULL,'2024-02-23 18:23:24','2024-02-23 18:23:24','2024-02-24 01:23:24',NULL,'activated',NULL),(8,'Christian Bogan','vdonnelly@example.com','$2y$12$iCfl.ZdJMbywq3vtaNyrgeF8fsPPs6QqtUwrYbCfTbrm/8nFVwDpK','customers/6.jpg','2002-02-22','+17815180098',NULL,'2024-02-23 18:23:24','2024-02-23 18:23:24','2024-02-24 01:23:24',NULL,'activated',NULL),(9,'Estrella Pollich','lfunk@example.org','$2y$12$WY7U3VC16Yo37RPuft/ilebe1ITx28PZfDau1g.tf4UJREisry7li','customers/7.jpg','1997-02-01','+18479350291',NULL,'2024-02-23 18:23:24','2024-02-23 18:23:24','2024-02-24 01:23:24',NULL,'activated',NULL),(10,'Declan Stoltenberg','walsh.jewell@example.com','$2y$12$oPkCpAEAFe2pMbQLRKK.HeTjahATAtZRzzLGhhgNLkQNdXC6zQK3W','customers/8.jpg','2000-02-15','+18286878303',NULL,'2024-02-23 18:23:25','2024-02-23 18:23:25','2024-02-24 01:23:25',NULL,'activated',NULL);
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_categories`
--

DROP TABLE IF EXISTS `ec_discount_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_categories` (
  `discount_id` bigint unsigned NOT NULL,
  `product_category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_categories`
--

LOCK TABLES `ec_discount_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint unsigned NOT NULL,
  `product_collection_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `apply_via_url` tinyint(1) NOT NULL DEFAULT '0',
  `display_at_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,13,79.8,16,5),(2,5,20.58,8,3);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Deal of the Day.','2024-04-01 00:00:00','published','2024-02-23 18:23:25','2024-02-23 18:23:25'),(2,'Gadgets &amp; Accessories','2024-04-13 00:00:00','published','2024-02-23 18:23:25','2024-02-23 18:23:25');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2024-02-23 18:23:29','2024-02-23 18:23:29'),(1,2,'2 Year',10,9999,0,'2024-02-23 18:23:29','2024-02-23 18:23:29'),(1,3,'3 Year',20,9999,0,'2024-02-23 18:23:29','2024-02-23 18:23:29'),(2,4,'4GB',0,9999,0,'2024-02-23 18:23:29','2024-02-23 18:23:29'),(2,5,'8GB',10,9999,0,'2024-02-23 18:23:29','2024-02-23 18:23:29'),(2,6,'16GB',20,9999,0,'2024-02-23 18:23:29','2024-02-23 18:23:29'),(3,7,'Core i5',0,9999,0,'2024-02-23 18:23:29','2024-02-23 18:23:29'),(3,8,'Core i7',10,9999,0,'2024-02-23 18:23:29','2024-02-23 18:23:29'),(3,9,'Core i9',20,9999,0,'2024-02-23 18:23:29','2024-02-23 18:23:29'),(4,10,'128GB',0,9999,0,'2024-02-23 18:23:29','2024-02-23 18:23:29'),(4,11,'256GB',10,9999,0,'2024-02-23 18:23:29','2024-02-23 18:23:29'),(4,12,'512GB',20,9999,0,'2024-02-23 18:23:29','2024-02-23 18:23:29');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-02-23 18:23:29','2024-02-23 18:23:29'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-02-23 18:23:29','2024-02-23 18:23:29'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-02-23 18:23:29','2024-02-23 18:23:29'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2024-02-23 18:23:29','2024-02-23 18:23:29');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
INSERT INTO `ec_invoice_items` VALUES (1,1,'Botble\\Ecommerce\\Models\\Product',45,'Macbook Pro 2015 (Digital)',NULL,'products/9-1.jpg',3,119.00,357.00,0.00,0.00,357.00,'{\"sku\":\"HS-141-A0-A1\",\"attributes\":\"(Size: L, Color: Black)\"}','2024-02-23 18:23:25','2024-02-23 18:23:25'),(2,1,'Botble\\Ecommerce\\Models\\Product',48,'Macbook Air 12 inch',NULL,'products/10-1.jpg',2,466.00,932.00,0.00,0.00,932.00,'{\"sku\":\"HS-163-A0-A1\",\"attributes\":\"(Color: Green, Size: L)\"}','2024-02-23 18:23:25','2024-02-23 18:23:25'),(3,2,'Botble\\Ecommerce\\Models\\Product',44,'Macbook Pro 2015 (Digital)',NULL,'products/9.jpg',3,119.00,357.00,0.00,0.00,357.00,'{\"sku\":\"HS-141-A0\",\"attributes\":\"(Color: Red, Size: L)\"}','2024-02-23 18:23:26','2024-02-23 18:23:26'),(4,2,'Botble\\Ecommerce\\Models\\Product',62,'Apple Airpods Serial 3',NULL,'products/16.jpg',2,127.00,254.00,0.00,0.00,254.00,'{\"sku\":\"HS-112-A0-A1\",\"attributes\":\"(Color: Green, Size: XXL)\"}','2024-02-23 18:23:26','2024-02-23 18:23:26'),(5,2,'Botble\\Ecommerce\\Models\\Product',74,'Macbook Pro 2015 13 inch',NULL,'products/20.jpg',3,112.00,336.00,0.00,0.00,336.00,'{\"sku\":\"HS-103-A0-A3\",\"attributes\":\"(Color: Red, Size: XL)\"}','2024-02-23 18:23:26','2024-02-23 18:23:26'),(6,2,'Botble\\Ecommerce\\Models\\Product',79,'Black Glasses',NULL,'products/22.jpg',1,110.00,110.00,0.00,0.00,110.00,'{\"sku\":\"HS-197-A0\",\"attributes\":\"(Color: Green, Size: S)\"}','2024-02-23 18:23:26','2024-02-23 18:23:26'),(7,3,'Botble\\Ecommerce\\Models\\Product',29,'Headphone Ultra Bass',NULL,'products/2-2.jpg',3,373.00,1119.00,0.00,0.00,1119.00,'{\"sku\":\"HS-130-A0-A2\",\"attributes\":\"(Size: S, Color: Red)\"}','2024-02-23 18:23:26','2024-02-23 18:23:26'),(8,3,'Botble\\Ecommerce\\Models\\Product',38,'Camera Samsung SS-24',NULL,'products/6.jpg',2,51.00,102.00,0.00,0.00,102.00,'{\"sku\":\"HS-176-A0\",\"attributes\":\"(Color: Red, Size: L)\"}','2024-02-23 18:23:26','2024-02-23 18:23:26'),(9,3,'Botble\\Ecommerce\\Models\\Product',43,'Apple iPhone 13 Plus',NULL,'products/8-1.jpg',1,125.00,125.00,0.00,0.00,125.00,'{\"sku\":\"HS-174-A0-A1\",\"attributes\":\"(Color: Brown, Size: XXL)\"}','2024-02-23 18:23:26','2024-02-23 18:23:26'),(10,4,'Botble\\Ecommerce\\Models\\Product',33,'Boxed - Bluetooth Headphone',NULL,'products/3-3.jpg',3,249.00,747.00,0.00,0.00,747.00,'{\"sku\":\"HS-140-A0-A3\",\"attributes\":\"(Color: Green, Size: M)\"}','2024-02-23 18:23:26','2024-02-23 18:23:26'),(11,4,'Botble\\Ecommerce\\Models\\Product',74,'Macbook Pro 2015 13 inch',NULL,'products/20.jpg',1,112.00,112.00,0.00,0.00,112.00,'{\"sku\":\"HS-103-A0-A3\",\"attributes\":\"(Color: Red, Size: XL)\"}','2024-02-23 18:23:26','2024-02-23 18:23:26'),(12,4,'Botble\\Ecommerce\\Models\\Product',78,'Historic Alarm Clock (Digital)',NULL,'products/21.jpg',3,114.00,342.00,0.00,0.00,342.00,'{\"sku\":\"HS-188-A0-A3\",\"attributes\":\"(Size: L, Color: Brown)\"}','2024-02-23 18:23:26','2024-02-23 18:23:26'),(13,5,'Botble\\Ecommerce\\Models\\Product',26,'Smart Home Speaker (Digital)',NULL,'products/1-1.jpg',2,268.00,536.00,0.00,0.00,536.00,'{\"sku\":\"HS-143-A0-A1\",\"attributes\":\"(Size: M, Color: Brown)\"}','2024-02-23 18:23:26','2024-02-23 18:23:26'),(14,5,'Botble\\Ecommerce\\Models\\Product',63,'Apple Airpods Serial 3',NULL,'products/16.jpg',1,127.00,127.00,0.00,0.00,127.00,'{\"sku\":\"HS-112-A0-A2\",\"attributes\":\"(Size: S, Color: Red)\"}','2024-02-23 18:23:26','2024-02-23 18:23:26'),(15,6,'Botble\\Ecommerce\\Models\\Product',27,'Headphone Ultra Bass',NULL,'products/2.jpg',3,373.00,1119.00,0.00,0.00,1119.00,'{\"sku\":\"HS-130-A0\",\"attributes\":\"(Color: Black, Size: XL)\"}','2024-02-23 18:23:26','2024-02-23 18:23:26'),(16,6,'Botble\\Ecommerce\\Models\\Product',44,'Macbook Pro 2015 (Digital)',NULL,'products/9.jpg',1,119.00,119.00,0.00,0.00,119.00,'{\"sku\":\"HS-141-A0\",\"attributes\":\"(Color: Red, Size: L)\"}','2024-02-23 18:23:26','2024-02-23 18:23:26'),(17,6,'Botble\\Ecommerce\\Models\\Product',78,'Historic Alarm Clock (Digital)',NULL,'products/21.jpg',1,114.00,114.00,0.00,0.00,114.00,'{\"sku\":\"HS-188-A0-A3\",\"attributes\":\"(Size: L, Color: Brown)\"}','2024-02-23 18:23:26','2024-02-23 18:23:26'),(18,7,'Botble\\Ecommerce\\Models\\Product',46,'Macbook Pro 2015 (Digital)',NULL,'products/9.jpg',1,119.00,119.00,0.00,0.00,119.00,'{\"sku\":\"HS-141-A0-A2\",\"attributes\":\"(Size: L, Color: Black)\"}','2024-02-23 18:23:27','2024-02-23 18:23:27'),(19,7,'Botble\\Ecommerce\\Models\\Product',48,'Macbook Air 12 inch',NULL,'products/10-1.jpg',3,466.00,1398.00,0.00,0.00,1398.00,'{\"sku\":\"HS-163-A0-A1\",\"attributes\":\"(Color: Green, Size: L)\"}','2024-02-23 18:23:27','2024-02-23 18:23:27'),(20,7,'Botble\\Ecommerce\\Models\\Product',55,'Apple Keyboard (Digital)',NULL,'products/13.jpg',2,114.00,228.00,0.00,0.00,228.00,'{\"sku\":\"HS-145-A0\",\"attributes\":\"(Size: S, Color: Blue)\"}','2024-02-23 18:23:27','2024-02-23 18:23:27'),(21,7,'Botble\\Ecommerce\\Models\\Product',82,'Phillips Mouse',NULL,'products/23-1.jpg',1,130.00,130.00,0.00,0.00,130.00,'{\"sku\":\"HS-177-A0-A1\",\"attributes\":\"(Color: Blue, Size: L)\"}','2024-02-23 18:23:27','2024-02-23 18:23:27'),(22,8,'Botble\\Ecommerce\\Models\\Product',34,'Chikie - Bluetooth Speaker',NULL,'products/4.jpg',1,86.00,86.00,0.00,0.00,86.00,'{\"sku\":\"HS-123-A0\",\"attributes\":\"(Size: L, Color: Black)\"}','2024-02-23 18:23:27','2024-02-23 18:23:27'),(23,8,'Botble\\Ecommerce\\Models\\Product',43,'Apple iPhone 13 Plus',NULL,'products/8-1.jpg',2,125.00,250.00,0.00,0.00,250.00,'{\"sku\":\"HS-174-A0-A1\",\"attributes\":\"(Color: Brown, Size: XXL)\"}','2024-02-23 18:23:27','2024-02-23 18:23:27'),(24,8,'Botble\\Ecommerce\\Models\\Product',80,'Black Glasses',NULL,'products/22-1.jpg',2,110.00,220.00,0.00,0.00,220.00,'{\"sku\":\"HS-197-A0-A1\",\"attributes\":\"(Color: Black, Size: XL)\"}','2024-02-23 18:23:27','2024-02-23 18:23:27'),(25,9,'Botble\\Ecommerce\\Models\\Product',44,'Macbook Pro 2015 (Digital)',NULL,'products/9.jpg',2,119.00,238.00,0.00,0.00,238.00,'{\"sku\":\"HS-141-A0\",\"attributes\":\"(Color: Red, Size: L)\"}','2024-02-23 18:23:27','2024-02-23 18:23:27'),(26,9,'Botble\\Ecommerce\\Models\\Product',51,'Apple Watch Serial 7',NULL,'products/11-1.jpg',1,113.00,113.00,0.00,0.00,113.00,'{\"sku\":\"HS-173-A0-A1\",\"attributes\":\"(Color: Blue, Size: XXL)\"}','2024-02-23 18:23:27','2024-02-23 18:23:27'),(27,10,'Botble\\Ecommerce\\Models\\Product',33,'Boxed - Bluetooth Headphone',NULL,'products/3-3.jpg',1,249.00,249.00,0.00,0.00,249.00,'{\"sku\":\"HS-140-A0-A3\",\"attributes\":\"(Color: Green, Size: M)\"}','2024-02-23 18:23:27','2024-02-23 18:23:27'),(28,10,'Botble\\Ecommerce\\Models\\Product',40,'Camera Samsung SS-24',NULL,'products/6.jpg',1,51.00,51.00,0.00,0.00,51.00,'{\"sku\":\"HS-176-A0-A2\",\"attributes\":\"(Size: XL, Color: Brown)\"}','2024-02-23 18:23:27','2024-02-23 18:23:27'),(29,10,'Botble\\Ecommerce\\Models\\Product',70,'Leather Watch Band Serial 3',NULL,'products/19-1.jpg',2,112.00,224.00,0.00,0.00,224.00,'{\"sku\":\"HS-192-A0-A1\",\"attributes\":\"(Color: Red, Size: XXL)\"}','2024-02-23 18:23:27','2024-02-23 18:23:27'),(30,10,'Botble\\Ecommerce\\Models\\Product',78,'Historic Alarm Clock (Digital)',NULL,'products/21.jpg',2,114.00,228.00,0.00,0.00,228.00,'{\"sku\":\"HS-188-A0-A3\",\"attributes\":\"(Size: L, Color: Brown)\"}','2024-02-23 18:23:27','2024-02-23 18:23:27'),(31,11,'Botble\\Ecommerce\\Models\\Product',43,'Apple iPhone 13 Plus',NULL,'products/8-1.jpg',1,125.00,125.00,0.00,0.00,125.00,'{\"sku\":\"HS-174-A0-A1\",\"attributes\":\"(Color: Brown, Size: XXL)\"}','2024-02-23 18:23:27','2024-02-23 18:23:27'),(32,11,'Botble\\Ecommerce\\Models\\Product',50,'Apple Watch Serial 7',NULL,'products/11.jpg',1,113.00,113.00,0.00,0.00,113.00,'{\"sku\":\"HS-173-A0\",\"attributes\":\"(Size: S, Color: Black)\"}','2024-02-23 18:23:27','2024-02-23 18:23:27'),(33,11,'Botble\\Ecommerce\\Models\\Product',65,'Cool Smart Watches (Digital)',NULL,'products/17.jpg',3,115.00,345.00,0.00,0.00,345.00,'{\"sku\":\"HS-100-A0\",\"attributes\":\"(Color: Green, Size: L)\"}','2024-02-23 18:23:27','2024-02-23 18:23:27'),(34,12,'Botble\\Ecommerce\\Models\\Product',45,'Macbook Pro 2015 (Digital)',NULL,'products/9-1.jpg',2,119.00,238.00,0.00,0.00,238.00,'{\"sku\":\"HS-141-A0-A1\",\"attributes\":\"(Size: L, Color: Black)\"}','2024-02-23 18:23:27','2024-02-23 18:23:27'),(35,12,'Botble\\Ecommerce\\Models\\Product',84,'Gaming Keyboard',NULL,'products/24.jpg',2,117.00,234.00,0.00,0.00,234.00,'{\"sku\":\"HS-177-A0\",\"attributes\":\"(Color: Black, Size: XXL)\"}','2024-02-23 18:23:27','2024-02-23 18:23:27'),(36,13,'Botble\\Ecommerce\\Models\\Product',29,'Headphone Ultra Bass',NULL,'products/2-2.jpg',1,373.00,373.00,0.00,0.00,373.00,'{\"sku\":\"HS-130-A0-A2\",\"attributes\":\"(Size: S, Color: Red)\"}','2024-02-23 18:23:28','2024-02-23 18:23:28'),(37,13,'Botble\\Ecommerce\\Models\\Product',34,'Chikie - Bluetooth Speaker',NULL,'products/4.jpg',2,86.00,172.00,0.00,0.00,172.00,'{\"sku\":\"HS-123-A0\",\"attributes\":\"(Size: L, Color: Black)\"}','2024-02-23 18:23:28','2024-02-23 18:23:28'),(38,13,'Botble\\Ecommerce\\Models\\Product',70,'Leather Watch Band Serial 3',NULL,'products/19-1.jpg',3,112.00,336.00,0.00,0.00,336.00,'{\"sku\":\"HS-192-A0-A1\",\"attributes\":\"(Color: Red, Size: XXL)\"}','2024-02-23 18:23:28','2024-02-23 18:23:28'),(39,13,'Botble\\Ecommerce\\Models\\Product',82,'Phillips Mouse',NULL,'products/23-1.jpg',3,130.00,390.00,0.00,0.00,390.00,'{\"sku\":\"HS-177-A0-A1\",\"attributes\":\"(Color: Blue, Size: L)\"}','2024-02-23 18:23:28','2024-02-23 18:23:28'),(40,14,'Botble\\Ecommerce\\Models\\Product',30,'Boxed - Bluetooth Headphone',NULL,'products/3.jpg',3,249.00,747.00,0.00,0.00,747.00,'{\"sku\":\"HS-140-A0\",\"attributes\":\"(Color: Blue, Size: XL)\"}','2024-02-23 18:23:28','2024-02-23 18:23:28'),(41,14,'Botble\\Ecommerce\\Models\\Product',39,'Camera Samsung SS-24',NULL,'products/6-1.jpg',2,51.00,102.00,0.00,0.00,102.00,'{\"sku\":\"HS-176-A0-A1\",\"attributes\":\"(Color: Blue, Size: L)\"}','2024-02-23 18:23:28','2024-02-23 18:23:28'),(42,14,'Botble\\Ecommerce\\Models\\Product',49,'Macbook Air 12 inch',NULL,'products/10.jpg',2,466.00,932.00,0.00,0.00,932.00,'{\"sku\":\"HS-163-A0-A2\",\"attributes\":\"(Size: XL, Color: Brown)\"}','2024-02-23 18:23:28','2024-02-23 18:23:28'),(43,14,'Botble\\Ecommerce\\Models\\Product',67,'Black Smart Watches',NULL,'products/18.jpg',2,120.00,240.00,0.00,0.00,240.00,'{\"sku\":\"HS-139-A0\",\"attributes\":\"(Size: S, Color: Black)\"}','2024-02-23 18:23:28','2024-02-23 18:23:28'),(44,15,'Botble\\Ecommerce\\Models\\Product',29,'Headphone Ultra Bass',NULL,'products/2-2.jpg',3,373.00,1119.00,0.00,0.00,1119.00,'{\"sku\":\"HS-130-A0-A2\",\"attributes\":\"(Size: S, Color: Red)\"}','2024-02-23 18:23:28','2024-02-23 18:23:28'),(45,15,'Botble\\Ecommerce\\Models\\Product',78,'Historic Alarm Clock (Digital)',NULL,'products/21.jpg',3,114.00,342.00,0.00,0.00,342.00,'{\"sku\":\"HS-188-A0-A3\",\"attributes\":\"(Size: L, Color: Brown)\"}','2024-02-23 18:23:28','2024-02-23 18:23:28'),(46,16,'Botble\\Ecommerce\\Models\\Product',26,'Smart Home Speaker (Digital)',NULL,'products/1-1.jpg',2,268.00,536.00,0.00,0.00,536.00,'{\"sku\":\"HS-143-A0-A1\",\"attributes\":\"(Size: M, Color: Brown)\"}','2024-02-23 18:23:28','2024-02-23 18:23:28'),(47,16,'Botble\\Ecommerce\\Models\\Product',30,'Boxed - Bluetooth Headphone',NULL,'products/3.jpg',1,249.00,249.00,0.00,0.00,249.00,'{\"sku\":\"HS-140-A0\",\"attributes\":\"(Color: Blue, Size: XL)\"}','2024-02-23 18:23:28','2024-02-23 18:23:28'),(48,16,'Botble\\Ecommerce\\Models\\Product',63,'Apple Airpods Serial 3',NULL,'products/16.jpg',3,127.00,381.00,0.00,0.00,381.00,'{\"sku\":\"HS-112-A0-A2\",\"attributes\":\"(Size: S, Color: Red)\"}','2024-02-23 18:23:28','2024-02-23 18:23:28'),(49,16,'Botble\\Ecommerce\\Models\\Product',74,'Macbook Pro 2015 13 inch',NULL,'products/20.jpg',1,112.00,112.00,0.00,0.00,112.00,'{\"sku\":\"HS-103-A0-A3\",\"attributes\":\"(Color: Red, Size: XL)\"}','2024-02-23 18:23:28','2024-02-23 18:23:28'),(50,17,'Botble\\Ecommerce\\Models\\Product',46,'Macbook Pro 2015 (Digital)',NULL,'products/9.jpg',3,119.00,357.00,0.00,0.00,357.00,'{\"sku\":\"HS-141-A0-A2\",\"attributes\":\"(Size: L, Color: Black)\"}','2024-02-23 18:23:28','2024-02-23 18:23:28'),(51,17,'Botble\\Ecommerce\\Models\\Product',51,'Apple Watch Serial 7',NULL,'products/11-1.jpg',3,113.00,339.00,0.00,0.00,339.00,'{\"sku\":\"HS-173-A0-A1\",\"attributes\":\"(Color: Blue, Size: XXL)\"}','2024-02-23 18:23:28','2024-02-23 18:23:28'),(52,17,'Botble\\Ecommerce\\Models\\Product',71,'Macbook Pro 2015 13 inch',NULL,'products/20.jpg',2,112.00,224.00,0.00,0.00,224.00,'{\"sku\":\"HS-103-A0\",\"attributes\":\"(Color: Blue, Size: L)\"}','2024-02-23 18:23:28','2024-02-23 18:23:28'),(53,18,'Botble\\Ecommerce\\Models\\Product',45,'Macbook Pro 2015 (Digital)',NULL,'products/9-1.jpg',3,119.00,357.00,0.00,0.00,357.00,'{\"sku\":\"HS-141-A0-A1\",\"attributes\":\"(Size: L, Color: Black)\"}','2024-02-23 18:23:28','2024-02-23 18:23:28'),(54,18,'Botble\\Ecommerce\\Models\\Product',47,'Macbook Air 12 inch',NULL,'products/10.jpg',2,466.00,932.00,0.00,0.00,932.00,'{\"sku\":\"HS-163-A0\",\"attributes\":\"(Size: M, Color: Brown)\"}','2024-02-23 18:23:28','2024-02-23 18:23:28'),(55,18,'Botble\\Ecommerce\\Models\\Product',55,'Apple Keyboard (Digital)',NULL,'products/13.jpg',2,114.00,228.00,0.00,0.00,228.00,'{\"sku\":\"HS-145-A0\",\"attributes\":\"(Size: S, Color: Blue)\"}','2024-02-23 18:23:28','2024-02-23 18:23:28'),(56,18,'Botble\\Ecommerce\\Models\\Product',70,'Leather Watch Band Serial 3',NULL,'products/19-1.jpg',3,112.00,336.00,0.00,0.00,336.00,'{\"sku\":\"HS-192-A0-A1\",\"attributes\":\"(Color: Red, Size: XXL)\"}','2024-02-23 18:23:29','2024-02-23 18:23:29'),(57,19,'Botble\\Ecommerce\\Models\\Product',35,'Chikie - Bluetooth Speaker',NULL,'products/4-1.jpg',2,86.00,172.00,0.00,0.00,172.00,'{\"sku\":\"HS-123-A0-A1\",\"attributes\":\"(Color: Red, Size: XXL)\"}','2024-02-23 18:23:29','2024-02-23 18:23:29'),(58,19,'Botble\\Ecommerce\\Models\\Product',36,'Chikie - Bluetooth Speaker',NULL,'products/4-2.jpg',1,86.00,86.00,0.00,0.00,86.00,'{\"sku\":\"HS-123-A0-A2\",\"attributes\":\"(Size: XL, Color: Brown)\"}','2024-02-23 18:23:29','2024-02-23 18:23:29'),(59,19,'Botble\\Ecommerce\\Models\\Product',59,'Hand playstation',NULL,'products/15.jpg',2,125.00,250.00,0.00,0.00,250.00,'{\"sku\":\"HS-126-A0\",\"attributes\":\"(Size: S, Color: Blue)\"}','2024-02-23 18:23:29','2024-02-23 18:23:29'),(60,19,'Botble\\Ecommerce\\Models\\Product',81,'Phillips Mouse',NULL,'products/23.jpg',1,130.00,130.00,0.00,0.00,130.00,'{\"sku\":\"HS-177-A0\",\"attributes\":\"(Color: Black, Size: XL)\"}','2024-02-23 18:23:29','2024-02-23 18:23:29'),(61,20,'Botble\\Ecommerce\\Models\\Product',43,'Apple iPhone 13 Plus',NULL,'products/8-1.jpg',2,125.00,250.00,0.00,0.00,250.00,'{\"sku\":\"HS-174-A0-A1\",\"attributes\":\"(Color: Brown, Size: XXL)\"}','2024-02-23 18:23:29','2024-02-23 18:23:29'),(62,20,'Botble\\Ecommerce\\Models\\Product',64,'Apple Airpods Serial 3',NULL,'products/16.jpg',2,127.00,254.00,0.00,0.00,254.00,'{\"sku\":\"HS-112-A0-A3\",\"attributes\":\"(Size: M, Color: Red)\"}','2024-02-23 18:23:29','2024-02-23 18:23:29');
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
INSERT INTO `ec_invoices` VALUES (1,'Botble\\Ecommerce\\Models\\Order',1,'INV-1','Dr. Verona Borer PhD','',NULL,'customer@botble.com','+15807444928','9366 Cronin Orchard, Grahamberg, Minnesota, CW',NULL,1289.00,0.00,0.00,0.00,'1','default',NULL,NULL,1289.00,NULL,1,'completed','2024-02-23 18:23:25','2024-02-08 18:23:25','2024-02-23 18:23:25'),(2,'Botble\\Ecommerce\\Models\\Order',2,'INV-2','Mariam Moen PhD','',NULL,'tiffany27@example.net','+14752598827','7564 Tyreek Divide, Kaylihaven, South Dakota, SG',NULL,1057.00,0.00,0.00,0.00,'1','default',NULL,NULL,1057.00,NULL,2,'completed','2024-02-23 18:23:26','2024-02-12 16:23:26','2024-02-23 18:23:26'),(3,'Botble\\Ecommerce\\Models\\Order',3,'INV-3','Christian Bogan','',NULL,'vdonnelly@example.com','+15405087698','952 Era Forge, Kolbymouth, Iowa, PW',NULL,1346.00,0.00,0.00,0.00,'1','default',NULL,NULL,1346.00,NULL,3,'completed','2024-02-23 18:23:26','2024-02-08 18:23:26','2024-02-23 18:23:26'),(4,'Botble\\Ecommerce\\Models\\Order',4,'INV-4','Declan Stoltenberg','',NULL,'walsh.jewell@example.com','+16578251184','74993 Micaela Courts, Stoltenbergside, Indiana, HU',NULL,1201.00,0.00,0.00,0.00,'1','default',NULL,NULL,1201.00,NULL,4,'pending',NULL,'2024-02-15 06:23:26','2024-02-23 18:23:26'),(5,'Botble\\Ecommerce\\Models\\Order',5,'INV-5','Moses Daugherty','',NULL,'cicero05@example.org','+18725742141','3926 Lilly Crossing Apt. 498, East Lavern, North Carolina, RW',NULL,663.00,0.00,0.00,0.00,'1','default',NULL,NULL,663.00,NULL,5,'pending',NULL,'2024-02-22 10:23:26','2024-02-23 18:23:26'),(6,'Botble\\Ecommerce\\Models\\Order',6,'INV-6','Bridgette Gleichner III','',NULL,'john.smith@botble.com','+15016336489','69605 Spinka Ridge, Lehnerview, Oregon, ER',NULL,1352.00,0.00,0.00,0.00,'1','default',NULL,NULL,1352.00,NULL,6,'completed','2024-02-23 18:23:26','2024-02-20 00:23:26','2024-02-23 18:23:26'),(7,'Botble\\Ecommerce\\Models\\Order',7,'INV-7','Easter Wunsch','',NULL,'vondricka@example.org','+15736188840','348 Macejkovic Street Suite 726, Gottliebfurt, Colorado, SL',NULL,1875.00,0.00,0.00,0.00,'1','default',NULL,NULL,1875.00,NULL,7,'completed','2024-02-23 18:23:27','2024-02-22 14:23:26','2024-02-23 18:23:27'),(8,'Botble\\Ecommerce\\Models\\Order',8,'INV-8','Dr. Cheyenne Koelpin','',NULL,'littel.kaleigh@example.net','+15598080543','4600 Emily Ports Apt. 709, Lake Wendell, South Carolina, NO',NULL,556.00,0.00,0.00,0.00,'1','default',NULL,NULL,556.00,NULL,8,'completed','2024-02-23 18:23:27','2024-02-18 08:23:27','2024-02-23 18:23:27'),(9,'Botble\\Ecommerce\\Models\\Order',9,'INV-9','Moses Daugherty','',NULL,'cicero05@example.org','+18725742141','3926 Lilly Crossing Apt. 498, East Lavern, North Carolina, RW',NULL,351.00,0.00,0.00,0.00,'1','default',NULL,NULL,351.00,NULL,9,'completed','2024-02-23 18:23:27','2024-02-19 18:23:27','2024-02-23 18:23:27'),(10,'Botble\\Ecommerce\\Models\\Order',10,'INV-10','Mariam Moen PhD','',NULL,'tiffany27@example.net','+14752598827','7564 Tyreek Divide, Kaylihaven, South Dakota, SG',NULL,752.00,0.00,0.00,0.00,'1','default',NULL,NULL,752.00,NULL,10,'completed','2024-02-23 18:23:27','2024-02-15 12:23:27','2024-02-23 18:23:27'),(11,'Botble\\Ecommerce\\Models\\Order',11,'INV-11','Bridgette Gleichner III','',NULL,'john.smith@botble.com','+15016336489','69605 Spinka Ridge, Lehnerview, Oregon, ER',NULL,583.00,0.00,0.00,0.00,'1','default',NULL,NULL,583.00,NULL,11,'completed','2024-02-23 18:23:27','2024-02-18 18:23:27','2024-02-23 18:23:27'),(12,'Botble\\Ecommerce\\Models\\Order',12,'INV-12','Conor Koss','',NULL,'delilah.pouros@example.net','+18386719600','29350 Hallie Loaf, New Isabelle, California, LI',NULL,472.00,0.00,0.00,0.00,'1','default',NULL,NULL,472.00,NULL,12,'pending',NULL,'2024-02-17 00:23:27','2024-02-23 18:23:27'),(13,'Botble\\Ecommerce\\Models\\Order',13,'INV-13','Mariam Moen PhD','',NULL,'tiffany27@example.net','+14752598827','7564 Tyreek Divide, Kaylihaven, South Dakota, SG',NULL,1271.00,0.00,0.00,0.00,'1','default',NULL,NULL,1271.00,NULL,13,'completed','2024-02-23 18:23:28','2024-02-19 02:23:28','2024-02-23 18:23:28'),(14,'Botble\\Ecommerce\\Models\\Order',14,'INV-14','Estrella Pollich','',NULL,'lfunk@example.org','+16306123054','6436 Destany Heights Suite 938, North Melvinaborough, Pennsylvania, UG',NULL,2021.00,0.00,0.00,0.00,'1','default',NULL,NULL,2021.00,NULL,14,'pending',NULL,'2024-02-20 06:23:28','2024-02-23 18:23:28'),(15,'Botble\\Ecommerce\\Models\\Order',15,'INV-15','Declan Stoltenberg','',NULL,'walsh.jewell@example.com','+16578251184','74993 Micaela Courts, Stoltenbergside, Indiana, HU',NULL,1461.00,0.00,0.00,0.00,'1','default',NULL,NULL,1461.00,NULL,15,'completed','2024-02-23 18:23:28','2024-02-22 18:23:28','2024-02-23 18:23:28'),(16,'Botble\\Ecommerce\\Models\\Order',16,'INV-16','Moses Daugherty','',NULL,'cicero05@example.org','+18725742141','3926 Lilly Crossing Apt. 498, East Lavern, North Carolina, RW',NULL,1278.00,0.00,0.00,0.00,'1','default',NULL,NULL,1278.00,NULL,16,'completed','2024-02-23 18:23:28','2024-02-20 10:23:28','2024-02-23 18:23:28'),(17,'Botble\\Ecommerce\\Models\\Order',17,'INV-17','Christian Bogan','',NULL,'vdonnelly@example.com','+15405087698','952 Era Forge, Kolbymouth, Iowa, PW',NULL,920.00,0.00,0.00,0.00,'1','default',NULL,NULL,920.00,NULL,17,'completed','2024-02-23 18:23:28','2024-02-23 02:23:28','2024-02-23 18:23:28'),(18,'Botble\\Ecommerce\\Models\\Order',18,'INV-18','Bridgette Gleichner III','',NULL,'john.smith@botble.com','+15016336489','69605 Spinka Ridge, Lehnerview, Oregon, ER',NULL,1853.00,0.00,0.00,0.00,'1','default',NULL,NULL,1853.00,NULL,18,'completed','2024-02-23 18:23:28','2024-02-22 18:23:28','2024-02-23 18:23:28'),(19,'Botble\\Ecommerce\\Models\\Order',19,'INV-19','Christian Bogan','',NULL,'vdonnelly@example.com','+15405087698','952 Era Forge, Kolbymouth, Iowa, PW',NULL,638.00,0.00,0.00,0.00,'1','default',NULL,NULL,638.00,NULL,19,'completed','2024-02-23 18:23:29','2024-02-22 10:23:29','2024-02-23 18:23:29'),(20,'Botble\\Ecommerce\\Models\\Order',20,'INV-20','Moses Daugherty','',NULL,'cicero05@example.org','+18725742141','3926 Lilly Crossing Apt. 498, East Lavern, North Carolina, RW',NULL,504.00,0.00,0.00,0.00,'1','default',NULL,NULL,504.00,NULL,20,'completed','2024-02-23 18:23:29','2024-02-23 08:23:29','2024-02-23 18:23:29');
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint unsigned NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
INSERT INTO `ec_order_addresses` VALUES (1,'Dr. Verona Borer PhD','+15807444928','customer@botble.com','CW','Minnesota','Grahamberg','9366 Cronin Orchard',1,'25625-4872','shipping_address'),(2,'Mariam Moen PhD','+14752598827','tiffany27@example.net','SG','South Dakota','Kaylihaven','7564 Tyreek Divide',2,'73603','shipping_address'),(3,'Christian Bogan','+15405087698','vdonnelly@example.com','PW','Iowa','Kolbymouth','952 Era Forge',3,'45494-1556','shipping_address'),(4,'Declan Stoltenberg','+16578251184','walsh.jewell@example.com','HU','Indiana','Stoltenbergside','74993 Micaela Courts',4,'78760-6785','shipping_address'),(5,'Moses Daugherty','+18725742141','cicero05@example.org','RW','North Carolina','East Lavern','3926 Lilly Crossing Apt. 498',5,'62578','shipping_address'),(6,'Bridgette Gleichner III','+15016336489','john.smith@botble.com','ER','Oregon','Lehnerview','69605 Spinka Ridge',6,'37860','shipping_address'),(7,'Easter Wunsch','+15736188840','vondricka@example.org','SL','Colorado','Gottliebfurt','348 Macejkovic Street Suite 726',7,'54646-8254','shipping_address'),(8,'Dr. Cheyenne Koelpin','+15598080543','littel.kaleigh@example.net','NO','South Carolina','Lake Wendell','4600 Emily Ports Apt. 709',8,'29907','shipping_address'),(9,'Moses Daugherty','+18725742141','cicero05@example.org','RW','North Carolina','East Lavern','3926 Lilly Crossing Apt. 498',9,'62578','shipping_address'),(10,'Mariam Moen PhD','+14752598827','tiffany27@example.net','SG','South Dakota','Kaylihaven','7564 Tyreek Divide',10,'73603','shipping_address'),(11,'Bridgette Gleichner III','+15016336489','john.smith@botble.com','ER','Oregon','Lehnerview','69605 Spinka Ridge',11,'37860','shipping_address'),(12,'Conor Koss','+18386719600','delilah.pouros@example.net','LI','California','New Isabelle','29350 Hallie Loaf',12,'61623-2777','shipping_address'),(13,'Mariam Moen PhD','+14752598827','tiffany27@example.net','SG','South Dakota','Kaylihaven','7564 Tyreek Divide',13,'73603','shipping_address'),(14,'Estrella Pollich','+16306123054','lfunk@example.org','UG','Pennsylvania','North Melvinaborough','6436 Destany Heights Suite 938',14,'20200','shipping_address'),(15,'Declan Stoltenberg','+16578251184','walsh.jewell@example.com','HU','Indiana','Stoltenbergside','74993 Micaela Courts',15,'78760-6785','shipping_address'),(16,'Moses Daugherty','+18725742141','cicero05@example.org','RW','North Carolina','East Lavern','3926 Lilly Crossing Apt. 498',16,'62578','shipping_address'),(17,'Christian Bogan','+15405087698','vdonnelly@example.com','PW','Iowa','Kolbymouth','952 Era Forge',17,'45494-1556','shipping_address'),(18,'Bridgette Gleichner III','+15016336489','john.smith@botble.com','ER','Oregon','Lehnerview','69605 Spinka Ridge',18,'37860','shipping_address'),(19,'Christian Bogan','+15405087698','vdonnelly@example.com','PW','Iowa','Kolbymouth','952 Era Forge',19,'45494-1556','shipping_address'),(20,'Moses Daugherty','+18725742141','cicero05@example.org','RW','North Carolina','East Lavern','3926 Lilly Crossing Apt. 498',20,'62578','shipping_address');
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
INSERT INTO `ec_order_histories` VALUES (1,'create_order_from_seeder','Order is created from the checkout page',NULL,1,NULL,'2024-02-08 18:23:25','2024-02-08 18:23:25'),(2,'confirm_order','Order was verified by %user_name%',0,1,NULL,'2024-02-08 18:23:25','2024-02-08 18:23:25'),(3,'confirm_payment','Payment was confirmed (amount $1,289.00) by %user_name%',0,1,NULL,'2024-02-23 18:23:25','2024-02-23 18:23:25'),(4,'create_shipment','Created shipment for order',0,1,NULL,'2024-02-23 18:23:26','2024-02-23 18:23:26'),(5,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,1,NULL,'2024-02-23 18:23:26','2024-02-23 18:23:26'),(6,'create_order_from_seeder','Order is created from the checkout page',NULL,2,NULL,'2024-02-12 16:23:26','2024-02-12 16:23:26'),(7,'confirm_order','Order was verified by %user_name%',0,2,NULL,'2024-02-12 16:23:26','2024-02-12 16:23:26'),(8,'confirm_payment','Payment was confirmed (amount $1,057.00) by %user_name%',0,2,NULL,'2024-02-23 18:23:26','2024-02-23 18:23:26'),(9,'create_shipment','Created shipment for order',0,2,NULL,'2024-02-23 18:23:26','2024-02-23 18:23:26'),(10,'create_order_from_seeder','Order is created from the checkout page',NULL,3,NULL,'2024-02-08 18:23:26','2024-02-08 18:23:26'),(11,'confirm_order','Order was verified by %user_name%',0,3,NULL,'2024-02-08 18:23:26','2024-02-08 18:23:26'),(12,'confirm_payment','Payment was confirmed (amount $1,346.00) by %user_name%',0,3,NULL,'2024-02-23 18:23:26','2024-02-23 18:23:26'),(13,'create_shipment','Created shipment for order',0,3,NULL,'2024-02-23 18:23:26','2024-02-23 18:23:26'),(14,'create_order_from_seeder','Order is created from the checkout page',NULL,4,NULL,'2024-02-15 06:23:26','2024-02-15 06:23:26'),(15,'confirm_order','Order was verified by %user_name%',0,4,NULL,'2024-02-15 06:23:26','2024-02-15 06:23:26'),(16,'create_shipment','Created shipment for order',0,4,NULL,'2024-02-23 18:23:26','2024-02-23 18:23:26'),(17,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,4,NULL,'2024-02-23 18:23:26','2024-02-23 18:23:26'),(18,'create_order_from_seeder','Order is created from the checkout page',NULL,5,NULL,'2024-02-22 10:23:26','2024-02-22 10:23:26'),(19,'confirm_order','Order was verified by %user_name%',0,5,NULL,'2024-02-22 10:23:26','2024-02-22 10:23:26'),(20,'create_shipment','Created shipment for order',0,5,NULL,'2024-02-23 18:23:26','2024-02-23 18:23:26'),(21,'create_order_from_seeder','Order is created from the checkout page',NULL,6,NULL,'2024-02-20 00:23:26','2024-02-20 00:23:26'),(22,'confirm_order','Order was verified by %user_name%',0,6,NULL,'2024-02-20 00:23:26','2024-02-20 00:23:26'),(23,'confirm_payment','Payment was confirmed (amount $1,352.00) by %user_name%',0,6,NULL,'2024-02-23 18:23:26','2024-02-23 18:23:26'),(24,'create_shipment','Created shipment for order',0,6,NULL,'2024-02-23 18:23:26','2024-02-23 18:23:26'),(25,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,6,NULL,'2024-02-23 18:23:26','2024-02-23 18:23:26'),(26,'create_order_from_seeder','Order is created from the checkout page',NULL,7,NULL,'2024-02-22 14:23:26','2024-02-22 14:23:26'),(27,'confirm_order','Order was verified by %user_name%',0,7,NULL,'2024-02-22 14:23:26','2024-02-22 14:23:26'),(28,'confirm_payment','Payment was confirmed (amount $1,875.00) by %user_name%',0,7,NULL,'2024-02-23 18:23:27','2024-02-23 18:23:27'),(29,'create_shipment','Created shipment for order',0,7,NULL,'2024-02-23 18:23:27','2024-02-23 18:23:27'),(30,'create_order_from_seeder','Order is created from the checkout page',NULL,8,NULL,'2024-02-18 08:23:27','2024-02-18 08:23:27'),(31,'confirm_order','Order was verified by %user_name%',0,8,NULL,'2024-02-18 08:23:27','2024-02-18 08:23:27'),(32,'confirm_payment','Payment was confirmed (amount $556.00) by %user_name%',0,8,NULL,'2024-02-23 18:23:27','2024-02-23 18:23:27'),(33,'create_shipment','Created shipment for order',0,8,NULL,'2024-02-23 18:23:27','2024-02-23 18:23:27'),(34,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,8,NULL,'2024-02-23 18:23:27','2024-02-23 18:23:27'),(35,'create_order_from_seeder','Order is created from the checkout page',NULL,9,NULL,'2024-02-19 18:23:27','2024-02-19 18:23:27'),(36,'confirm_order','Order was verified by %user_name%',0,9,NULL,'2024-02-19 18:23:27','2024-02-19 18:23:27'),(37,'confirm_payment','Payment was confirmed (amount $351.00) by %user_name%',0,9,NULL,'2024-02-23 18:23:27','2024-02-23 18:23:27'),(38,'create_shipment','Created shipment for order',0,9,NULL,'2024-02-23 18:23:27','2024-02-23 18:23:27'),(39,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,9,NULL,'2024-02-23 18:23:27','2024-02-23 18:23:27'),(40,'create_order_from_seeder','Order is created from the checkout page',NULL,10,NULL,'2024-02-15 12:23:27','2024-02-15 12:23:27'),(41,'confirm_order','Order was verified by %user_name%',0,10,NULL,'2024-02-15 12:23:27','2024-02-15 12:23:27'),(42,'confirm_payment','Payment was confirmed (amount $752.00) by %user_name%',0,10,NULL,'2024-02-23 18:23:27','2024-02-23 18:23:27'),(43,'create_shipment','Created shipment for order',0,10,NULL,'2024-02-23 18:23:27','2024-02-23 18:23:27'),(44,'create_order_from_seeder','Order is created from the checkout page',NULL,11,NULL,'2024-02-18 18:23:27','2024-02-18 18:23:27'),(45,'confirm_order','Order was verified by %user_name%',0,11,NULL,'2024-02-18 18:23:27','2024-02-18 18:23:27'),(46,'confirm_payment','Payment was confirmed (amount $583.00) by %user_name%',0,11,NULL,'2024-02-23 18:23:27','2024-02-23 18:23:27'),(47,'create_shipment','Created shipment for order',0,11,NULL,'2024-02-23 18:23:27','2024-02-23 18:23:27'),(48,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,11,NULL,'2024-02-23 18:23:27','2024-02-23 18:23:27'),(49,'create_order_from_seeder','Order is created from the checkout page',NULL,12,NULL,'2024-02-17 00:23:27','2024-02-17 00:23:27'),(50,'confirm_order','Order was verified by %user_name%',0,12,NULL,'2024-02-17 00:23:27','2024-02-17 00:23:27'),(51,'create_shipment','Created shipment for order',0,12,NULL,'2024-02-23 18:23:28','2024-02-23 18:23:28'),(52,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,12,NULL,'2024-02-23 18:23:28','2024-02-23 18:23:28'),(53,'create_order_from_seeder','Order is created from the checkout page',NULL,13,NULL,'2024-02-19 02:23:28','2024-02-19 02:23:28'),(54,'confirm_order','Order was verified by %user_name%',0,13,NULL,'2024-02-19 02:23:28','2024-02-19 02:23:28'),(55,'confirm_payment','Payment was confirmed (amount $1,271.00) by %user_name%',0,13,NULL,'2024-02-23 18:23:28','2024-02-23 18:23:28'),(56,'create_shipment','Created shipment for order',0,13,NULL,'2024-02-23 18:23:28','2024-02-23 18:23:28'),(57,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,13,NULL,'2024-02-23 18:23:28','2024-02-23 18:23:28'),(58,'create_order_from_seeder','Order is created from the checkout page',NULL,14,NULL,'2024-02-20 06:23:28','2024-02-20 06:23:28'),(59,'confirm_order','Order was verified by %user_name%',0,14,NULL,'2024-02-20 06:23:28','2024-02-20 06:23:28'),(60,'create_shipment','Created shipment for order',0,14,NULL,'2024-02-23 18:23:28','2024-02-23 18:23:28'),(61,'create_order_from_seeder','Order is created from the checkout page',NULL,15,NULL,'2024-02-22 18:23:28','2024-02-22 18:23:28'),(62,'confirm_order','Order was verified by %user_name%',0,15,NULL,'2024-02-22 18:23:28','2024-02-22 18:23:28'),(63,'confirm_payment','Payment was confirmed (amount $1,461.00) by %user_name%',0,15,NULL,'2024-02-23 18:23:28','2024-02-23 18:23:28'),(64,'create_shipment','Created shipment for order',0,15,NULL,'2024-02-23 18:23:28','2024-02-23 18:23:28'),(65,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,15,NULL,'2024-02-23 18:23:28','2024-02-23 18:23:28'),(66,'create_order_from_seeder','Order is created from the checkout page',NULL,16,NULL,'2024-02-20 10:23:28','2024-02-20 10:23:28'),(67,'confirm_order','Order was verified by %user_name%',0,16,NULL,'2024-02-20 10:23:28','2024-02-20 10:23:28'),(68,'confirm_payment','Payment was confirmed (amount $1,278.00) by %user_name%',0,16,NULL,'2024-02-23 18:23:28','2024-02-23 18:23:28'),(69,'create_shipment','Created shipment for order',0,16,NULL,'2024-02-23 18:23:28','2024-02-23 18:23:28'),(70,'create_order_from_seeder','Order is created from the checkout page',NULL,17,NULL,'2024-02-23 02:23:28','2024-02-23 02:23:28'),(71,'confirm_order','Order was verified by %user_name%',0,17,NULL,'2024-02-23 02:23:28','2024-02-23 02:23:28'),(72,'confirm_payment','Payment was confirmed (amount $920.00) by %user_name%',0,17,NULL,'2024-02-23 18:23:28','2024-02-23 18:23:28'),(73,'create_shipment','Created shipment for order',0,17,NULL,'2024-02-23 18:23:28','2024-02-23 18:23:28'),(74,'create_order_from_seeder','Order is created from the checkout page',NULL,18,NULL,'2024-02-22 18:23:28','2024-02-22 18:23:28'),(75,'confirm_order','Order was verified by %user_name%',0,18,NULL,'2024-02-22 18:23:28','2024-02-22 18:23:28'),(76,'confirm_payment','Payment was confirmed (amount $1,853.00) by %user_name%',0,18,NULL,'2024-02-23 18:23:28','2024-02-23 18:23:28'),(77,'create_shipment','Created shipment for order',0,18,NULL,'2024-02-23 18:23:29','2024-02-23 18:23:29'),(78,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,18,NULL,'2024-02-23 18:23:29','2024-02-23 18:23:29'),(79,'create_order_from_seeder','Order is created from the checkout page',NULL,19,NULL,'2024-02-22 10:23:29','2024-02-22 10:23:29'),(80,'confirm_order','Order was verified by %user_name%',0,19,NULL,'2024-02-22 10:23:29','2024-02-22 10:23:29'),(81,'confirm_payment','Payment was confirmed (amount $638.00) by %user_name%',0,19,NULL,'2024-02-23 18:23:29','2024-02-23 18:23:29'),(82,'create_shipment','Created shipment for order',0,19,NULL,'2024-02-23 18:23:29','2024-02-23 18:23:29'),(83,'create_order_from_seeder','Order is created from the checkout page',NULL,20,NULL,'2024-02-23 08:23:29','2024-02-23 08:23:29'),(84,'confirm_order','Order was verified by %user_name%',0,20,NULL,'2024-02-23 08:23:29','2024-02-23 08:23:29'),(85,'confirm_payment','Payment was confirmed (amount $504.00) by %user_name%',0,20,NULL,'2024-02-23 18:23:29','2024-02-23 18:23:29'),(86,'create_shipment','Created shipment for order',0,20,NULL,'2024-02-23 18:23:29','2024-02-23 18:23:29'),(87,'update_status','Order confirmed by %user_name%',0,1,NULL,'2024-02-23 18:23:29','2024-02-23 18:23:29'),(88,'update_status','Order confirmed by %user_name%',0,6,NULL,'2024-02-23 18:23:29','2024-02-23 18:23:29'),(89,'update_status','Order confirmed by %user_name%',0,8,NULL,'2024-02-23 18:23:29','2024-02-23 18:23:29'),(90,'update_status','Order confirmed by %user_name%',0,9,NULL,'2024-02-23 18:23:29','2024-02-23 18:23:29'),(91,'update_status','Order confirmed by %user_name%',0,11,NULL,'2024-02-23 18:23:29','2024-02-23 18:23:29'),(92,'update_status','Order confirmed by %user_name%',0,13,NULL,'2024-02-23 18:23:29','2024-02-23 18:23:29'),(93,'update_status','Order confirmed by %user_name%',0,15,NULL,'2024-02-23 18:23:29','2024-02-23 18:23:29'),(94,'update_status','Order confirmed by %user_name%',0,18,NULL,'2024-02-23 18:23:29','2024-02-23 18:23:29');
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  `license_code` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
INSERT INTO `ec_order_product` VALUES (1,1,3,119.00,0.00,'{\"sku\":\"HS-141-A0-A1\",\"attributes\":\"(Size: L, Color: Black)\"}',NULL,45,'Macbook Pro 2015 (Digital)','products/9-1.jpg',2292.00,0,'2024-02-23 18:23:25','2024-02-23 18:23:25','digital',6,NULL),(2,1,2,466.00,0.00,'{\"sku\":\"HS-163-A0-A1\",\"attributes\":\"(Color: Green, Size: L)\"}',NULL,48,'Macbook Air 12 inch','products/10-1.jpg',1446.00,0,'2024-02-23 18:23:25','2024-02-23 18:23:25','physical',0,NULL),(3,2,3,119.00,0.00,'{\"sku\":\"HS-141-A0\",\"attributes\":\"(Color: Red, Size: L)\"}',NULL,44,'Macbook Pro 2015 (Digital)','products/9.jpg',2292.00,0,'2024-02-23 18:23:26','2024-02-23 18:23:26','digital',0,NULL),(4,2,2,127.00,0.00,'{\"sku\":\"HS-112-A0-A1\",\"attributes\":\"(Color: Green, Size: XXL)\"}',NULL,62,'Apple Airpods Serial 3','products/16.jpg',1656.00,0,'2024-02-23 18:23:26','2024-02-23 18:23:26','physical',0,NULL),(5,2,3,112.00,0.00,'{\"sku\":\"HS-103-A0-A3\",\"attributes\":\"(Color: Red, Size: XL)\"}',NULL,74,'Macbook Pro 2015 13 inch','products/20.jpg',2040.00,0,'2024-02-23 18:23:26','2024-02-23 18:23:26','physical',0,NULL),(6,2,1,110.00,0.00,'{\"sku\":\"HS-197-A0\",\"attributes\":\"(Color: Green, Size: S)\"}',NULL,79,'Black Glasses','products/22.jpg',519.00,0,'2024-02-23 18:23:26','2024-02-23 18:23:26','physical',0,NULL),(7,3,3,373.00,0.00,'{\"sku\":\"HS-130-A0-A2\",\"attributes\":\"(Size: S, Color: Red)\"}',NULL,29,'Headphone Ultra Bass','products/2-2.jpg',2364.00,0,'2024-02-23 18:23:26','2024-02-23 18:23:26','physical',0,NULL),(8,3,2,51.00,0.00,'{\"sku\":\"HS-176-A0\",\"attributes\":\"(Color: Red, Size: L)\"}',NULL,38,'Camera Samsung SS-24','products/6.jpg',1642.00,0,'2024-02-23 18:23:26','2024-02-23 18:23:26','physical',0,NULL),(9,3,1,125.00,0.00,'{\"sku\":\"HS-174-A0-A1\",\"attributes\":\"(Color: Brown, Size: XXL)\"}',NULL,43,'Apple iPhone 13 Plus','products/8-1.jpg',543.00,0,'2024-02-23 18:23:26','2024-02-23 18:23:26','physical',0,NULL),(10,4,3,249.00,0.00,'{\"sku\":\"HS-140-A0-A3\",\"attributes\":\"(Color: Green, Size: M)\"}',NULL,33,'Boxed - Bluetooth Headphone','products/3-3.jpg',2526.00,0,'2024-02-23 18:23:26','2024-02-23 18:23:26','physical',0,NULL),(11,4,1,112.00,0.00,'{\"sku\":\"HS-103-A0-A3\",\"attributes\":\"(Color: Red, Size: XL)\"}',NULL,74,'Macbook Pro 2015 13 inch','products/20.jpg',680.00,0,'2024-02-23 18:23:26','2024-02-23 18:23:26','physical',0,NULL),(12,4,3,114.00,0.00,'{\"sku\":\"HS-188-A0-A3\",\"attributes\":\"(Size: L, Color: Brown)\"}',NULL,78,'Historic Alarm Clock (Digital)','products/21.jpg',2067.00,0,'2024-02-23 18:23:26','2024-02-23 18:23:26','digital',7,NULL),(13,5,2,268.00,0.00,'{\"sku\":\"HS-143-A0-A1\",\"attributes\":\"(Size: M, Color: Brown)\"}',NULL,26,'Smart Home Speaker (Digital)','products/1-1.jpg',1254.00,0,'2024-02-23 18:23:26','2024-02-23 18:23:26','digital',0,NULL),(14,5,1,127.00,0.00,'{\"sku\":\"HS-112-A0-A2\",\"attributes\":\"(Size: S, Color: Red)\"}',NULL,63,'Apple Airpods Serial 3','products/16.jpg',828.00,0,'2024-02-23 18:23:26','2024-02-23 18:23:26','physical',0,NULL),(15,6,3,373.00,0.00,'{\"sku\":\"HS-130-A0\",\"attributes\":\"(Color: Black, Size: XL)\"}',NULL,27,'Headphone Ultra Bass','products/2.jpg',2364.00,0,'2024-02-23 18:23:26','2024-02-23 18:23:26','physical',0,NULL),(16,6,1,119.00,0.00,'{\"sku\":\"HS-141-A0\",\"attributes\":\"(Color: Red, Size: L)\"}',NULL,44,'Macbook Pro 2015 (Digital)','products/9.jpg',764.00,0,'2024-02-23 18:23:26','2024-02-23 18:23:26','digital',3,NULL),(17,6,1,114.00,0.00,'{\"sku\":\"HS-188-A0-A3\",\"attributes\":\"(Size: L, Color: Brown)\"}',NULL,78,'Historic Alarm Clock (Digital)','products/21.jpg',689.00,0,'2024-02-23 18:23:26','2024-02-23 18:23:26','digital',5,NULL),(18,7,1,119.00,0.00,'{\"sku\":\"HS-141-A0-A2\",\"attributes\":\"(Size: L, Color: Black)\"}',NULL,46,'Macbook Pro 2015 (Digital)','products/9.jpg',764.00,0,'2024-02-23 18:23:26','2024-02-23 18:23:26','digital',4,NULL),(19,7,3,466.00,0.00,'{\"sku\":\"HS-163-A0-A1\",\"attributes\":\"(Color: Green, Size: L)\"}',NULL,48,'Macbook Air 12 inch','products/10-1.jpg',2169.00,0,'2024-02-23 18:23:27','2024-02-23 18:23:27','physical',0,NULL),(20,7,2,114.00,0.00,'{\"sku\":\"HS-145-A0\",\"attributes\":\"(Size: S, Color: Blue)\"}',NULL,55,'Apple Keyboard (Digital)','products/13.jpg',1654.00,0,'2024-02-23 18:23:27','2024-02-23 18:23:27','digital',7,NULL),(21,7,1,130.00,0.00,'{\"sku\":\"HS-177-A0-A1\",\"attributes\":\"(Color: Blue, Size: L)\"}',NULL,82,'Phillips Mouse','products/23-1.jpg',788.00,0,'2024-02-23 18:23:27','2024-02-23 18:23:27','physical',0,NULL),(22,8,1,86.00,0.00,'{\"sku\":\"HS-123-A0\",\"attributes\":\"(Size: L, Color: Black)\"}',NULL,34,'Chikie - Bluetooth Speaker','products/4.jpg',582.00,0,'2024-02-23 18:23:27','2024-02-23 18:23:27','physical',0,NULL),(23,8,2,125.00,0.00,'{\"sku\":\"HS-174-A0-A1\",\"attributes\":\"(Color: Brown, Size: XXL)\"}',NULL,43,'Apple iPhone 13 Plus','products/8-1.jpg',1086.00,0,'2024-02-23 18:23:27','2024-02-23 18:23:27','physical',0,NULL),(24,8,2,110.00,0.00,'{\"sku\":\"HS-197-A0-A1\",\"attributes\":\"(Color: Black, Size: XL)\"}',NULL,80,'Black Glasses','products/22-1.jpg',1038.00,0,'2024-02-23 18:23:27','2024-02-23 18:23:27','physical',0,NULL),(25,9,2,119.00,0.00,'{\"sku\":\"HS-141-A0\",\"attributes\":\"(Color: Red, Size: L)\"}',NULL,44,'Macbook Pro 2015 (Digital)','products/9.jpg',1528.00,0,'2024-02-23 18:23:27','2024-02-23 18:23:27','digital',2,NULL),(26,9,1,113.00,0.00,'{\"sku\":\"HS-173-A0-A1\",\"attributes\":\"(Color: Blue, Size: XXL)\"}',NULL,51,'Apple Watch Serial 7','products/11-1.jpg',717.00,0,'2024-02-23 18:23:27','2024-02-23 18:23:27','physical',0,NULL),(27,10,1,249.00,0.00,'{\"sku\":\"HS-140-A0-A3\",\"attributes\":\"(Color: Green, Size: M)\"}',NULL,33,'Boxed - Bluetooth Headphone','products/3-3.jpg',842.00,0,'2024-02-23 18:23:27','2024-02-23 18:23:27','physical',0,NULL),(28,10,1,51.00,0.00,'{\"sku\":\"HS-176-A0-A2\",\"attributes\":\"(Size: XL, Color: Brown)\"}',NULL,40,'Camera Samsung SS-24','products/6.jpg',821.00,0,'2024-02-23 18:23:27','2024-02-23 18:23:27','physical',0,NULL),(29,10,2,112.00,0.00,'{\"sku\":\"HS-192-A0-A1\",\"attributes\":\"(Color: Red, Size: XXL)\"}',NULL,70,'Leather Watch Band Serial 3','products/19-1.jpg',1094.00,0,'2024-02-23 18:23:27','2024-02-23 18:23:27','physical',0,NULL),(30,10,2,114.00,0.00,'{\"sku\":\"HS-188-A0-A3\",\"attributes\":\"(Size: L, Color: Brown)\"}',NULL,78,'Historic Alarm Clock (Digital)','products/21.jpg',1378.00,0,'2024-02-23 18:23:27','2024-02-23 18:23:27','digital',3,NULL),(31,11,1,125.00,0.00,'{\"sku\":\"HS-174-A0-A1\",\"attributes\":\"(Color: Brown, Size: XXL)\"}',NULL,43,'Apple iPhone 13 Plus','products/8-1.jpg',543.00,0,'2024-02-23 18:23:27','2024-02-23 18:23:27','physical',0,NULL),(32,11,1,113.00,0.00,'{\"sku\":\"HS-173-A0\",\"attributes\":\"(Size: S, Color: Black)\"}',NULL,50,'Apple Watch Serial 7','products/11.jpg',717.00,0,'2024-02-23 18:23:27','2024-02-23 18:23:27','physical',0,NULL),(33,11,3,115.00,0.00,'{\"sku\":\"HS-100-A0\",\"attributes\":\"(Color: Green, Size: L)\"}',NULL,65,'Cool Smart Watches (Digital)','products/17.jpg',2325.00,0,'2024-02-23 18:23:27','2024-02-23 18:23:27','digital',9,NULL),(34,12,2,119.00,0.00,'{\"sku\":\"HS-141-A0-A1\",\"attributes\":\"(Size: L, Color: Black)\"}',NULL,45,'Macbook Pro 2015 (Digital)','products/9-1.jpg',1528.00,0,'2024-02-23 18:23:27','2024-02-23 18:23:27','digital',10,NULL),(35,12,2,117.00,0.00,'{\"sku\":\"HS-177-A0\",\"attributes\":\"(Color: Black, Size: XXL)\"}',NULL,84,'Gaming Keyboard','products/24.jpg',1414.00,0,'2024-02-23 18:23:27','2024-02-23 18:23:27','physical',0,NULL),(36,13,1,373.00,0.00,'{\"sku\":\"HS-130-A0-A2\",\"attributes\":\"(Size: S, Color: Red)\"}',NULL,29,'Headphone Ultra Bass','products/2-2.jpg',788.00,0,'2024-02-23 18:23:28','2024-02-23 18:23:28','physical',0,NULL),(37,13,2,86.00,0.00,'{\"sku\":\"HS-123-A0\",\"attributes\":\"(Size: L, Color: Black)\"}',NULL,34,'Chikie - Bluetooth Speaker','products/4.jpg',1164.00,0,'2024-02-23 18:23:28','2024-02-23 18:23:28','physical',0,NULL),(38,13,3,112.00,0.00,'{\"sku\":\"HS-192-A0-A1\",\"attributes\":\"(Color: Red, Size: XXL)\"}',NULL,70,'Leather Watch Band Serial 3','products/19-1.jpg',1641.00,0,'2024-02-23 18:23:28','2024-02-23 18:23:28','physical',0,NULL),(39,13,3,130.00,0.00,'{\"sku\":\"HS-177-A0-A1\",\"attributes\":\"(Color: Blue, Size: L)\"}',NULL,82,'Phillips Mouse','products/23-1.jpg',2364.00,0,'2024-02-23 18:23:28','2024-02-23 18:23:28','physical',0,NULL),(40,14,3,249.00,0.00,'{\"sku\":\"HS-140-A0\",\"attributes\":\"(Color: Blue, Size: XL)\"}',NULL,30,'Boxed - Bluetooth Headphone','products/3.jpg',2526.00,0,'2024-02-23 18:23:28','2024-02-23 18:23:28','physical',0,NULL),(41,14,2,51.00,0.00,'{\"sku\":\"HS-176-A0-A1\",\"attributes\":\"(Color: Blue, Size: L)\"}',NULL,39,'Camera Samsung SS-24','products/6-1.jpg',1642.00,0,'2024-02-23 18:23:28','2024-02-23 18:23:28','physical',0,NULL),(42,14,2,466.00,0.00,'{\"sku\":\"HS-163-A0-A2\",\"attributes\":\"(Size: XL, Color: Brown)\"}',NULL,49,'Macbook Air 12 inch','products/10.jpg',1446.00,0,'2024-02-23 18:23:28','2024-02-23 18:23:28','physical',0,NULL),(43,14,2,120.00,0.00,'{\"sku\":\"HS-139-A0\",\"attributes\":\"(Size: S, Color: Black)\"}',NULL,67,'Black Smart Watches','products/18.jpg',1046.00,0,'2024-02-23 18:23:28','2024-02-23 18:23:28','physical',0,NULL),(44,15,3,373.00,0.00,'{\"sku\":\"HS-130-A0-A2\",\"attributes\":\"(Size: S, Color: Red)\"}',NULL,29,'Headphone Ultra Bass','products/2-2.jpg',2364.00,0,'2024-02-23 18:23:28','2024-02-23 18:23:28','physical',0,NULL),(45,15,3,114.00,0.00,'{\"sku\":\"HS-188-A0-A3\",\"attributes\":\"(Size: L, Color: Brown)\"}',NULL,78,'Historic Alarm Clock (Digital)','products/21.jpg',2067.00,0,'2024-02-23 18:23:28','2024-02-23 18:23:28','digital',2,NULL),(46,16,2,268.00,0.00,'{\"sku\":\"HS-143-A0-A1\",\"attributes\":\"(Size: M, Color: Brown)\"}',NULL,26,'Smart Home Speaker (Digital)','products/1-1.jpg',1254.00,0,'2024-02-23 18:23:28','2024-02-23 18:23:28','digital',10,NULL),(47,16,1,249.00,0.00,'{\"sku\":\"HS-140-A0\",\"attributes\":\"(Color: Blue, Size: XL)\"}',NULL,30,'Boxed - Bluetooth Headphone','products/3.jpg',842.00,0,'2024-02-23 18:23:28','2024-02-23 18:23:28','physical',0,NULL),(48,16,3,127.00,0.00,'{\"sku\":\"HS-112-A0-A2\",\"attributes\":\"(Size: S, Color: Red)\"}',NULL,63,'Apple Airpods Serial 3','products/16.jpg',2484.00,0,'2024-02-23 18:23:28','2024-02-23 18:23:28','physical',0,NULL),(49,16,1,112.00,0.00,'{\"sku\":\"HS-103-A0-A3\",\"attributes\":\"(Color: Red, Size: XL)\"}',NULL,74,'Macbook Pro 2015 13 inch','products/20.jpg',680.00,0,'2024-02-23 18:23:28','2024-02-23 18:23:28','physical',0,NULL),(50,17,3,119.00,0.00,'{\"sku\":\"HS-141-A0-A2\",\"attributes\":\"(Size: L, Color: Black)\"}',NULL,46,'Macbook Pro 2015 (Digital)','products/9.jpg',2292.00,0,'2024-02-23 18:23:28','2024-02-23 18:23:28','digital',4,NULL),(51,17,3,113.00,0.00,'{\"sku\":\"HS-173-A0-A1\",\"attributes\":\"(Color: Blue, Size: XXL)\"}',NULL,51,'Apple Watch Serial 7','products/11-1.jpg',2151.00,0,'2024-02-23 18:23:28','2024-02-23 18:23:28','physical',0,NULL),(52,17,2,112.00,0.00,'{\"sku\":\"HS-103-A0\",\"attributes\":\"(Color: Blue, Size: L)\"}',NULL,71,'Macbook Pro 2015 13 inch','products/20.jpg',1360.00,0,'2024-02-23 18:23:28','2024-02-23 18:23:28','physical',0,NULL),(53,18,3,119.00,0.00,'{\"sku\":\"HS-141-A0-A1\",\"attributes\":\"(Size: L, Color: Black)\"}',NULL,45,'Macbook Pro 2015 (Digital)','products/9-1.jpg',2292.00,0,'2024-02-23 18:23:28','2024-02-23 18:23:28','digital',2,NULL),(54,18,2,466.00,0.00,'{\"sku\":\"HS-163-A0\",\"attributes\":\"(Size: M, Color: Brown)\"}',NULL,47,'Macbook Air 12 inch','products/10.jpg',1446.00,0,'2024-02-23 18:23:28','2024-02-23 18:23:28','physical',0,NULL),(55,18,2,114.00,0.00,'{\"sku\":\"HS-145-A0\",\"attributes\":\"(Size: S, Color: Blue)\"}',NULL,55,'Apple Keyboard (Digital)','products/13.jpg',1654.00,0,'2024-02-23 18:23:28','2024-02-23 18:23:28','digital',2,NULL),(56,18,3,112.00,0.00,'{\"sku\":\"HS-192-A0-A1\",\"attributes\":\"(Color: Red, Size: XXL)\"}',NULL,70,'Leather Watch Band Serial 3','products/19-1.jpg',1641.00,0,'2024-02-23 18:23:28','2024-02-23 18:23:28','physical',0,NULL),(57,19,2,86.00,0.00,'{\"sku\":\"HS-123-A0-A1\",\"attributes\":\"(Color: Red, Size: XXL)\"}',NULL,35,'Chikie - Bluetooth Speaker','products/4-1.jpg',1164.00,0,'2024-02-23 18:23:29','2024-02-23 18:23:29','physical',0,NULL),(58,19,1,86.00,0.00,'{\"sku\":\"HS-123-A0-A2\",\"attributes\":\"(Size: XL, Color: Brown)\"}',NULL,36,'Chikie - Bluetooth Speaker','products/4-2.jpg',582.00,0,'2024-02-23 18:23:29','2024-02-23 18:23:29','physical',0,NULL),(59,19,2,125.00,0.00,'{\"sku\":\"HS-126-A0\",\"attributes\":\"(Size: S, Color: Blue)\"}',NULL,59,'Hand playstation','products/15.jpg',1280.00,0,'2024-02-23 18:23:29','2024-02-23 18:23:29','physical',0,NULL),(60,19,1,130.00,0.00,'{\"sku\":\"HS-177-A0\",\"attributes\":\"(Color: Black, Size: XL)\"}',NULL,81,'Phillips Mouse','products/23.jpg',788.00,0,'2024-02-23 18:23:29','2024-02-23 18:23:29','physical',0,NULL),(61,20,2,125.00,0.00,'{\"sku\":\"HS-174-A0-A1\",\"attributes\":\"(Color: Brown, Size: XXL)\"}',NULL,43,'Apple iPhone 13 Plus','products/8-1.jpg',1086.00,0,'2024-02-23 18:23:29','2024-02-23 18:23:29','physical',0,NULL),(62,20,2,127.00,0.00,'{\"sku\":\"HS-112-A0-A3\",\"attributes\":\"(Size: M, Color: Red)\"}',NULL,64,'Apple Airpods Serial 3','products/16.jpg',1656.00,0,'2024-02-23 18:23:29','2024-02-23 18:23:29','physical',0,NULL);
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint unsigned NOT NULL COMMENT 'Order product id',
  `product_id` bigint unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_tax_information`
--

DROP TABLE IF EXISTS `ec_order_tax_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_tax_information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `company_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_tax_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_tax_information_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_tax_information`
--

LOCK TABLES `ec_order_tax_information` WRITE;
/*!40000 ALTER TABLE `ec_order_tax_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_tax_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `proof_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
INSERT INTO `ec_orders` VALUES (1,'#10000001',2,'1','default','completed',1289.00,0.00,0.00,NULL,NULL,0.00,1289.00,1,NULL,1,'2024-02-23 18:23:29','w05D9FkeaizihwdFmC885sx50Q3l0',1,'2024-02-08 18:23:25','2024-02-23 18:23:29',NULL),(2,'#10000002',7,'1','default','pending',1057.00,0.00,0.00,NULL,NULL,0.00,1057.00,1,NULL,1,NULL,'arqhM2Bys8Jzbh3BhR43piaZvg8M8',2,'2024-02-12 16:23:26','2024-02-23 18:23:26',NULL),(3,'#10000003',8,'1','default','pending',1346.00,0.00,0.00,NULL,NULL,0.00,1346.00,1,NULL,1,NULL,'vrNRjXnaNeLR2ZGUCM7cGjKmkau97',3,'2024-02-08 18:23:26','2024-02-23 18:23:26',NULL),(4,'#10000004',10,'1','default','completed',1201.00,0.00,0.00,NULL,NULL,0.00,1201.00,1,NULL,1,'2024-02-23 18:23:26','JoGwjkLspLupGxk5n9GBY48ScgFOE',4,'2024-02-15 06:23:26','2024-02-23 18:23:26',NULL),(5,'#10000005',4,'1','default','pending',663.00,0.00,0.00,NULL,NULL,0.00,663.00,1,NULL,1,NULL,'Q48k6Zww4NSmlgnhx6KjYe2fYouYT',5,'2024-02-22 10:23:26','2024-02-23 18:23:26',NULL),(6,'#10000006',1,'1','default','completed',1352.00,0.00,0.00,NULL,NULL,0.00,1352.00,1,NULL,1,'2024-02-23 18:23:29','Fypz9nTzAUB0wrOSBplGjBEcCpFSa',6,'2024-02-20 00:23:26','2024-02-23 18:23:29',NULL),(7,'#10000007',6,'1','default','pending',1875.00,0.00,0.00,NULL,NULL,0.00,1875.00,1,NULL,1,NULL,'HMwDNLxor7K2jfCiKR4nYfQSB5fF1',7,'2024-02-22 14:23:26','2024-02-23 18:23:27',NULL),(8,'#10000008',3,'1','default','completed',556.00,0.00,0.00,NULL,NULL,0.00,556.00,1,NULL,1,'2024-02-23 18:23:29','rFxLuJeAWoFJIj9EYMagh8qzCVJQJ',8,'2024-02-18 08:23:27','2024-02-23 18:23:29',NULL),(9,'#10000009',4,'1','default','completed',351.00,0.00,0.00,NULL,NULL,0.00,351.00,1,NULL,1,'2024-02-23 18:23:29','uM3J62LVsMICvdnYFcEjVBNeHpHmd',9,'2024-02-19 18:23:27','2024-02-23 18:23:29',NULL),(10,'#10000010',7,'1','default','pending',752.00,0.00,0.00,NULL,NULL,0.00,752.00,1,NULL,1,NULL,'NORyMsEIsoCmJgHhKIuYteYuk979p',10,'2024-02-15 12:23:27','2024-02-23 18:23:27',NULL),(11,'#10000011',1,'1','default','completed',583.00,0.00,0.00,NULL,NULL,0.00,583.00,1,NULL,1,'2024-02-23 18:23:29','MhPVSGscCQEoNPvaeZo6ChGPeicZz',11,'2024-02-18 18:23:27','2024-02-23 18:23:29',NULL),(12,'#10000012',5,'1','default','completed',472.00,0.00,0.00,NULL,NULL,0.00,472.00,1,NULL,1,'2024-02-23 18:23:28','zJ9muyzAU5kB9TfkYNmCFsyLIbDyn',12,'2024-02-17 00:23:27','2024-02-23 18:23:28',NULL),(13,'#10000013',7,'1','default','completed',1271.00,0.00,0.00,NULL,NULL,0.00,1271.00,1,NULL,1,'2024-02-23 18:23:29','cmymWWa8z6hreMxRo7LI2kRDtDjBN',13,'2024-02-19 02:23:28','2024-02-23 18:23:29',NULL),(14,'#10000014',9,'1','default','pending',2021.00,0.00,0.00,NULL,NULL,0.00,2021.00,1,NULL,1,NULL,'JEVjcJkiuhDlk6Hj6TKCymqUK4Znu',14,'2024-02-20 06:23:28','2024-02-23 18:23:28',NULL),(15,'#10000015',10,'1','default','completed',1461.00,0.00,0.00,NULL,NULL,0.00,1461.00,1,NULL,1,'2024-02-23 18:23:29','qfSDozqHsLBe2NmzXGSQYEQFFBeEC',15,'2024-02-22 18:23:28','2024-02-23 18:23:29',NULL),(16,'#10000016',4,'1','default','pending',1278.00,0.00,0.00,NULL,NULL,0.00,1278.00,1,NULL,1,NULL,'qqG53jX4Oh9fSe6rmRNdSnQHXIO17',16,'2024-02-20 10:23:28','2024-02-23 18:23:28',NULL),(17,'#10000017',8,'1','default','pending',920.00,0.00,0.00,NULL,NULL,0.00,920.00,1,NULL,1,NULL,'aXVbjGTrx01rhqZxA4nG5e2d8UFej',17,'2024-02-23 02:23:28','2024-02-23 18:23:28',NULL),(18,'#10000018',1,'1','default','completed',1853.00,0.00,0.00,NULL,NULL,0.00,1853.00,1,NULL,1,'2024-02-23 18:23:29','QuRaoYskpc1hkl4wmZZfqO5aVhNwp',18,'2024-02-22 18:23:28','2024-02-23 18:23:29',NULL),(19,'#10000019',8,'1','default','pending',638.00,0.00,0.00,NULL,NULL,0.00,638.00,1,NULL,1,NULL,'cj64PZEw4d7yUArO49VpfLT0bUR2M',19,'2024-02-22 10:23:29','2024-02-23 18:23:29',NULL),(20,'#10000020',4,'1','default','pending',504.00,0.00,0.00,NULL,NULL,0.00,504.00,1,NULL,1,NULL,'WRrjli9e5BKXGlTFmv0UfkhbUbAOP',20,'2024-02-23 08:23:29','2024-02-23 18:23:29',NULL);
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2024-02-23 18:23:16','2024-02-23 18:23:16',0),(2,'Size','size','text',1,1,1,'published',1,'2024-02-23 18:23:16','2024-02-23 18:23:16',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_set_status_index` (`attribute_set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'2024-02-23 18:23:16','2024-02-23 18:23:16'),(2,1,'Blue','blue','#333333',NULL,0,2,'2024-02-23 18:23:16','2024-02-23 18:23:16'),(3,1,'Red','red','#DA323F',NULL,0,3,'2024-02-23 18:23:16','2024-02-23 18:23:16'),(4,1,'Black','black','#2F366C',NULL,0,4,'2024-02-23 18:23:16','2024-02-23 18:23:16'),(5,1,'Brown','brown','#87554B',NULL,0,5,'2024-02-23 18:23:16','2024-02-23 18:23:16'),(6,2,'S','s',NULL,NULL,1,1,'2024-02-23 18:23:16','2024-02-23 18:23:16'),(7,2,'M','m',NULL,NULL,0,2,'2024-02-23 18:23:16','2024-02-23 18:23:16'),(8,2,'L','l',NULL,NULL,0,3,'2024-02-23 18:23:16','2024-02-23 18:23:16'),(9,2,'XL','xl',NULL,NULL,0,4,'2024-02-23 18:23:16','2024-02-23 18:23:16'),(10,2,'XXL','xxl',NULL,NULL,0,5,'2024-02-23 18:23:16','2024-02-23 18:23:16');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Hot Promotions',0,NULL,'published',0,NULL,0,'2024-02-23 18:23:16','2024-02-23 18:23:16','far fa-star',NULL),(2,'Electronics',0,NULL,'published',1,'product-categories/1.jpg',1,'2024-02-23 18:23:16','2024-02-23 18:23:16','wowy-font-cpu',NULL),(3,'Home Audio & Theaters',2,NULL,'published',0,NULL,0,'2024-02-23 18:23:16','2024-02-23 18:23:16',NULL,NULL),(4,'TV & Videos',2,NULL,'published',1,NULL,0,'2024-02-23 18:23:16','2024-02-23 18:23:16',NULL,NULL),(5,'Camera, Photos & Videos',2,NULL,'published',2,NULL,0,'2024-02-23 18:23:16','2024-02-23 18:23:16',NULL,NULL),(6,'Cellphones & Accessories',2,NULL,'published',3,NULL,0,'2024-02-23 18:23:16','2024-02-23 18:23:16',NULL,NULL),(7,'Headphones',2,NULL,'published',4,NULL,0,'2024-02-23 18:23:16','2024-02-23 18:23:16',NULL,NULL),(8,'Videos games',2,NULL,'published',5,NULL,0,'2024-02-23 18:23:16','2024-02-23 18:23:16',NULL,NULL),(9,'Wireless Speakers',2,NULL,'published',6,NULL,0,'2024-02-23 18:23:16','2024-02-23 18:23:16',NULL,NULL),(10,'Office Electronic',2,NULL,'published',7,NULL,0,'2024-02-23 18:23:16','2024-02-23 18:23:16',NULL,NULL),(11,'Clothing',0,NULL,'published',2,'product-categories/2.jpg',1,'2024-02-23 18:23:16','2024-02-23 18:23:16','wowy-font-tshirt',NULL),(12,'Computers',0,NULL,'published',3,'product-categories/3.jpg',1,'2024-02-23 18:23:16','2024-02-23 18:23:16','wowy-font-desktop',NULL),(13,'Computer & Tablets',12,NULL,'published',0,NULL,0,'2024-02-23 18:23:16','2024-02-23 18:23:16',NULL,NULL),(14,'Laptop',12,NULL,'published',1,NULL,0,'2024-02-23 18:23:16','2024-02-23 18:23:16',NULL,NULL),(15,'Monitors',12,NULL,'published',2,NULL,0,'2024-02-23 18:23:16','2024-02-23 18:23:16',NULL,NULL),(16,'Computer Components',12,NULL,'published',3,NULL,0,'2024-02-23 18:23:16','2024-02-23 18:23:16',NULL,NULL),(17,'Home & Kitchen',0,NULL,'published',4,'product-categories/4.jpg',1,'2024-02-23 18:23:16','2024-02-23 18:23:16','wowy-font-home',NULL),(18,'Health & Beauty',0,NULL,'published',5,'product-categories/5.jpg',1,'2024-02-23 18:23:16','2024-02-23 18:23:16','wowy-font-dress',NULL),(19,'Jewelry & Watch',0,NULL,'published',6,'product-categories/6.jpg',1,'2024-02-23 18:23:16','2024-02-23 18:23:16','wowy-font-diamond',NULL),(20,'Technology Toys',0,NULL,'published',7,'product-categories/7.jpg',1,'2024-02-23 18:23:16','2024-02-23 18:23:16','far fa-microchip',NULL),(21,'Drive & Storages',20,NULL,'published',0,NULL,0,'2024-02-23 18:23:16','2024-02-23 18:23:16',NULL,NULL),(22,'Gaming Laptop',20,NULL,'published',1,NULL,0,'2024-02-23 18:23:16','2024-02-23 18:23:16',NULL,NULL),(23,'Security & Protection',20,NULL,'published',2,NULL,0,'2024-02-23 18:23:16','2024-02-23 18:23:16',NULL,NULL),(24,'Accessories',20,NULL,'published',3,NULL,0,'2024-02-23 18:23:16','2024-02-23 18:23:16',NULL,NULL),(25,'Phones',0,NULL,'published',8,'product-categories/8.jpg',1,'2024-02-23 18:23:16','2024-02-23 18:23:16','wowy-font-smartphone',NULL),(26,'Babies & Moms',0,NULL,'published',9,NULL,0,'2024-02-23 18:23:16','2024-02-23 18:23:16','wowy-font-teddy-bear',NULL),(27,'Sport & Outdoor',0,NULL,'published',10,NULL,0,'2024-02-23 18:23:16','2024-02-23 18:23:16','wowy-font-kite',NULL),(28,'Books & Office',0,NULL,'published',11,NULL,0,'2024-02-23 18:23:16','2024-02-23 18:23:16','far fa-book',NULL),(29,'Cars & Motorcycles',0,NULL,'published',12,NULL,0,'2024-02-23 18:23:16','2024-02-23 18:23:16','far fa-car',NULL),(30,'Home Improvements',0,NULL,'published',13,NULL,0,'2024-02-23 18:23:16','2024-02-23 18:23:16','wowy-font-home',NULL);
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categorizables`
--

DROP TABLE IF EXISTS `ec_product_categorizables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categorizables` (
  `category_id` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`,`reference_id`,`reference_type`),
  KEY `ec_product_categorizables_category_id_index` (`category_id`),
  KEY `ec_product_categorizables_reference_id_index` (`reference_id`),
  KEY `ec_product_categorizables_reference_type_index` (`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categorizables`
--

LOCK TABLES `ec_product_categorizables` WRITE;
/*!40000 ALTER TABLE `ec_product_categorizables` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categorizables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `category_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,1),(1,7),(1,21),(2,9),(2,10),(6,24),(8,23),(9,6),(12,16),(13,3),(13,8),(17,2),(17,17),(19,11),(22,19),(23,13),(25,12),(26,5),(26,14),(26,20),(32,4),(34,15),(36,22),(37,18);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_collection_id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,5),(1,8),(1,11),(1,15),(1,16),(1,18),(1,22),(1,23),(2,1),(2,2),(2,3),(2,7),(2,9),(2,13),(2,14),(2,17),(2,20),(2,21),(2,24),(3,4),(3,6),(3,10),(3,12),(3,19);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2024-02-23 18:23:16','2024-02-23 18:23:16',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2024-02-23 18:23:16','2024-02-23 18:23:16',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2024-02-23 18:23:16','2024-02-23 18:23:16',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  `is_variant` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(15,2) DEFAULT '0.00',
  `price_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `apply_to_all_variations` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,7,0,0.00,'fixed',1),(1,9,0,0.00,'fixed',1),(1,11,0,0.00,'fixed',1),(1,14,0,0.00,'fixed',1),(2,18,0,0.00,'fixed',1),(2,19,0,0.00,'fixed',1),(2,20,0,0.00,'fixed',1),(3,1,0,0.00,'fixed',1),(3,10,0,0.00,'fixed',1),(3,14,0,0.00,'fixed',1),(3,22,0,0.00,'fixed',1),(4,5,0,0.00,'fixed',1),(4,15,0,0.00,'fixed',1),(4,22,0,0.00,'fixed',1),(4,23,0,0.00,'fixed',1),(5,9,0,0.00,'fixed',1),(5,14,0,0.00,'fixed',1),(5,19,0,0.00,'fixed',1),(6,1,0,0.00,'fixed',1),(6,13,0,0.00,'fixed',1),(6,22,0,0.00,'fixed',1),(7,3,0,0.00,'fixed',1),(7,10,0,0.00,'fixed',1),(7,16,0,0.00,'fixed',1),(7,20,0,0.00,'fixed',1),(8,4,0,0.00,'fixed',1),(8,6,0,0.00,'fixed',1),(8,17,0,0.00,'fixed',1),(8,20,0,0.00,'fixed',1),(9,4,0,0.00,'fixed',1),(9,12,0,0.00,'fixed',1),(9,19,0,0.00,'fixed',1),(9,24,0,0.00,'fixed',1),(10,1,0,0.00,'fixed',1),(10,2,0,0.00,'fixed',1),(10,8,0,0.00,'fixed',1),(10,23,0,0.00,'fixed',1),(11,4,0,0.00,'fixed',1),(11,5,0,0.00,'fixed',1),(11,13,0,0.00,'fixed',1),(12,2,0,0.00,'fixed',1),(12,5,0,0.00,'fixed',1),(12,11,0,0.00,'fixed',1),(12,20,0,0.00,'fixed',1),(13,2,0,0.00,'fixed',1),(13,15,0,0.00,'fixed',1),(13,19,0,0.00,'fixed',1),(14,6,0,0.00,'fixed',1),(14,10,0,0.00,'fixed',1),(14,12,0,0.00,'fixed',1),(14,13,0,0.00,'fixed',1),(15,6,0,0.00,'fixed',1),(15,7,0,0.00,'fixed',1),(15,14,0,0.00,'fixed',1),(15,20,0,0.00,'fixed',1),(16,3,0,0.00,'fixed',1),(16,4,0,0.00,'fixed',1),(16,15,0,0.00,'fixed',1),(17,2,0,0.00,'fixed',1),(17,6,0,0.00,'fixed',1),(17,16,0,0.00,'fixed',1),(18,1,0,0.00,'fixed',1),(18,9,0,0.00,'fixed',1),(18,11,0,0.00,'fixed',1),(18,12,0,0.00,'fixed',1),(19,1,0,0.00,'fixed',1),(19,3,0,0.00,'fixed',1),(19,9,0,0.00,'fixed',1),(19,22,0,0.00,'fixed',1),(20,4,0,0.00,'fixed',1),(20,17,0,0.00,'fixed',1),(20,22,0,0.00,'fixed',1),(21,8,0,0.00,'fixed',1),(21,14,0,0.00,'fixed',1),(21,15,0,0.00,'fixed',1),(21,19,0,0.00,'fixed',1),(22,7,0,0.00,'fixed',1),(22,10,0,0.00,'fixed',1),(22,11,0,0.00,'fixed',1),(22,12,0,0.00,'fixed',1),(23,4,0,0.00,'fixed',1),(23,10,0,0.00,'fixed',1),(23,17,0,0.00,'fixed',1),(23,22,0,0.00,'fixed',1),(24,2,0,0.00,'fixed',1),(24,8,0,0.00,'fixed',1),(24,9,0,0.00,'fixed',1),(24,12,0,0.00,'fixed',1);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,25,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 01:23:20\",\"name\":\"1\",\"extension\":\"jpg\"}','2024-02-23 18:23:20','2024-02-23 18:23:20'),(2,25,'product-files/1-1.jpg','{\"filename\":\"1-1.jpg\",\"url\":\"product-files\\/1-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 01:23:20\",\"name\":\"1-1\",\"extension\":\"jpg\"}','2024-02-23 18:23:20','2024-02-23 18:23:20'),(3,25,'product-files/1-2.jpg','{\"filename\":\"1-2.jpg\",\"url\":\"product-files\\/1-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 01:23:20\",\"name\":\"1-2\",\"extension\":\"jpg\"}','2024-02-23 18:23:20','2024-02-23 18:23:20'),(4,25,'product-files/1-3.jpg','{\"filename\":\"1-3.jpg\",\"url\":\"product-files\\/1-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 01:23:20\",\"name\":\"1-3\",\"extension\":\"jpg\"}','2024-02-23 18:23:20','2024-02-23 18:23:20'),(5,26,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 01:23:20\",\"name\":\"1\",\"extension\":\"jpg\"}','2024-02-23 18:23:20','2024-02-23 18:23:20'),(6,26,'product-files/1-1.jpg','{\"filename\":\"1-1.jpg\",\"url\":\"product-files\\/1-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 01:23:20\",\"name\":\"1-1\",\"extension\":\"jpg\"}','2024-02-23 18:23:20','2024-02-23 18:23:20'),(7,26,'product-files/1-2.jpg','{\"filename\":\"1-2.jpg\",\"url\":\"product-files\\/1-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 01:23:20\",\"name\":\"1-2\",\"extension\":\"jpg\"}','2024-02-23 18:23:20','2024-02-23 18:23:20'),(8,26,'product-files/1-3.jpg','{\"filename\":\"1-3.jpg\",\"url\":\"product-files\\/1-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 01:23:20\",\"name\":\"1-3\",\"extension\":\"jpg\"}','2024-02-23 18:23:20','2024-02-23 18:23:20'),(9,37,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 01:23:21\",\"name\":\"5\",\"extension\":\"jpg\"}','2024-02-23 18:23:21','2024-02-23 18:23:21'),(10,37,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 01:23:21\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2024-02-23 18:23:21','2024-02-23 18:23:21'),(11,37,'product-files/5-2.jpg','{\"filename\":\"5-2.jpg\",\"url\":\"product-files\\/5-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 01:23:21\",\"name\":\"5-2\",\"extension\":\"jpg\"}','2024-02-23 18:23:21','2024-02-23 18:23:21'),(12,37,'product-files/5-3.jpg','{\"filename\":\"5-3.jpg\",\"url\":\"product-files\\/5-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 01:23:21\",\"name\":\"5-3\",\"extension\":\"jpg\"}','2024-02-23 18:23:21','2024-02-23 18:23:21'),(13,44,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 01:23:21\",\"name\":\"9\",\"extension\":\"jpg\"}','2024-02-23 18:23:21','2024-02-23 18:23:21'),(14,44,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 01:23:21\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2024-02-23 18:23:21','2024-02-23 18:23:21'),(15,45,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 01:23:21\",\"name\":\"9\",\"extension\":\"jpg\"}','2024-02-23 18:23:21','2024-02-23 18:23:21'),(16,45,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 01:23:21\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2024-02-23 18:23:21','2024-02-23 18:23:21'),(17,46,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 01:23:21\",\"name\":\"9\",\"extension\":\"jpg\"}','2024-02-23 18:23:21','2024-02-23 18:23:21'),(18,46,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 01:23:21\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2024-02-23 18:23:21','2024-02-23 18:23:21'),(19,55,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 01:23:21\",\"name\":\"13\",\"extension\":\"jpg\"}','2024-02-23 18:23:21','2024-02-23 18:23:21'),(20,55,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 01:23:21\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2024-02-23 18:23:21','2024-02-23 18:23:21'),(21,56,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 01:23:21\",\"name\":\"13\",\"extension\":\"jpg\"}','2024-02-23 18:23:21','2024-02-23 18:23:21'),(22,56,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 01:23:21\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2024-02-23 18:23:21','2024-02-23 18:23:21'),(23,65,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 01:23:21\",\"name\":\"17\",\"extension\":\"jpg\"}','2024-02-23 18:23:21','2024-02-23 18:23:21'),(24,66,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 01:23:21\",\"name\":\"17\",\"extension\":\"jpg\"}','2024-02-23 18:23:21','2024-02-23 18:23:21'),(25,75,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 01:23:21\",\"name\":\"21\",\"extension\":\"jpg\"}','2024-02-23 18:23:21','2024-02-23 18:23:21'),(26,75,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 01:23:21\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2024-02-23 18:23:21','2024-02-23 18:23:21'),(27,76,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 01:23:21\",\"name\":\"21\",\"extension\":\"jpg\"}','2024-02-23 18:23:21','2024-02-23 18:23:21'),(28,76,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 01:23:21\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2024-02-23 18:23:21','2024-02-23 18:23:21'),(29,77,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 01:23:21\",\"name\":\"21\",\"extension\":\"jpg\"}','2024-02-23 18:23:21','2024-02-23 18:23:21'),(30,77,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 01:23:21\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2024-02-23 18:23:21','2024-02-23 18:23:21'),(31,78,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 01:23:21\",\"name\":\"21\",\"extension\":\"jpg\"}','2024-02-23 18:23:21','2024-02-23 18:23:21'),(32,78,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 01:23:21\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2024-02-23 18:23:21','2024-02-23 18:23:21');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (2,7),(3,14),(3,21);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#d71e2d','published','2024-02-23 18:23:16','2024-02-23 18:23:16'),(2,'New','#02856e','published','2024-02-23 18:23:16','2024-02-23 18:23:16'),(3,'Sale','#fe9931','published','2024-02-23 18:23:16','2024-02-23 18:23:16');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,2),(1,5),(1,6),(2,1),(2,4),(3,1),(3,2),(3,4),(4,3),(4,4),(4,6),(5,1),(5,2),(5,6),(6,3),(6,5),(7,2),(7,4),(8,4),(8,5),(9,4),(9,5),(9,6),(10,2),(10,3),(11,2),(11,3),(11,6),(12,1),(12,4),(12,6),(13,2),(13,3),(13,4),(14,1),(14,3),(14,4),(15,3),(15,5),(15,6),(16,1),(16,3),(16,6),(17,2),(17,6),(18,2),(18,4),(19,1),(19,3),(19,5),(20,1),(20,2),(20,4),(21,1),(21,3),(21,6),(22,3),(22,4),(22,5),(23,1),(23,4),(24,2),(24,4);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Wallet',NULL,'published','2024-02-23 18:23:16','2024-02-23 18:23:16'),(2,'Bags',NULL,'published','2024-02-23 18:23:16','2024-02-23 18:23:16'),(3,'Shoes',NULL,'published','2024-02-23 18:23:16','2024-02-23 18:23:16'),(4,'Clothes',NULL,'published','2024-02-23 18:23:16','2024-02-23 18:23:16'),(5,'Hand bag',NULL,'published','2024-02-23 18:23:16','2024-02-23 18:23:16');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_variation_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (1,1,1),(17,1,9),(47,1,24),(55,1,28),(59,1,30),(75,1,38),(81,1,41),(103,1,52),(109,1,55),(11,2,6),(13,2,7),(29,2,15),(53,2,27),(61,2,31),(67,2,34),(69,2,35),(93,2,47),(95,2,48),(115,2,58),(117,2,59),(7,3,4),(9,3,5),(21,3,11),(27,3,14),(33,3,17),(39,3,20),(73,3,37),(77,3,39),(79,3,40),(91,3,46),(99,3,50),(125,3,63),(5,4,3),(15,4,8),(19,4,10),(25,4,13),(35,4,18),(41,4,21),(43,4,22),(51,4,26),(63,4,32),(65,4,33),(71,4,36),(83,4,42),(85,4,43),(97,4,49),(105,4,53),(111,4,56),(113,4,57),(119,4,60),(3,5,2),(23,5,12),(31,5,16),(37,5,19),(45,5,23),(49,5,25),(57,5,29),(87,5,44),(89,5,45),(101,5,51),(107,5,54),(121,5,61),(123,5,62),(10,6,5),(14,6,7),(16,6,8),(36,6,18),(52,6,26),(62,6,31),(64,6,32),(70,6,35),(72,6,36),(74,6,37),(78,6,39),(86,6,43),(90,6,45),(96,6,48),(110,6,55),(4,7,2),(18,7,9),(46,7,23),(66,7,33),(80,7,40),(84,7,42),(106,7,53),(118,7,59),(20,8,10),(28,8,14),(30,8,15),(40,8,20),(42,8,21),(44,8,22),(48,8,24),(58,8,29),(68,8,34),(82,8,41),(88,8,44),(94,8,47),(98,8,49),(108,8,54),(116,8,58),(122,8,61),(124,8,62),(126,8,63),(2,9,1),(6,9,3),(8,9,4),(12,9,6),(24,9,12),(26,9,13),(32,9,16),(34,9,17),(50,9,25),(56,9,28),(60,9,30),(100,9,50),(104,9,52),(112,9,56),(114,9,57),(22,10,11),(38,10,19),(54,10,27),(76,10,38),(92,10,46),(102,10,51),(120,10,60);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variations_product_id_configurable_product_id_unique` (`product_id`,`configurable_product_id`),
  KEY `configurable_product_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,25,1,1),(2,26,1,0),(3,27,2,1),(4,28,2,0),(5,29,2,0),(6,30,3,1),(7,31,3,0),(8,32,3,0),(9,33,3,0),(10,34,4,1),(11,35,4,0),(12,36,4,0),(13,37,5,1),(14,38,6,1),(15,39,6,0),(16,40,6,0),(17,41,7,1),(18,42,8,1),(19,43,8,0),(20,44,9,1),(21,45,9,0),(22,46,9,0),(23,47,10,1),(24,48,10,0),(25,49,10,0),(26,50,11,1),(27,51,11,0),(28,52,12,1),(29,53,12,0),(30,54,12,0),(31,55,13,1),(32,56,13,0),(33,57,14,1),(34,58,14,0),(35,59,15,1),(36,60,15,0),(37,61,16,1),(38,62,16,0),(39,63,16,0),(40,64,16,0),(41,65,17,1),(42,66,17,0),(43,67,18,1),(44,68,18,0),(45,69,19,1),(46,70,19,0),(47,71,20,1),(48,72,20,0),(49,73,20,0),(50,74,20,0),(51,75,21,1),(52,76,21,0),(53,77,21,0),(54,78,21,0),(55,79,22,1),(56,80,22,0),(57,81,23,1),(58,82,23,0),(59,83,23,0),(60,84,24,1),(61,85,24,0),(62,86,24,0),(63,87,24,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2024-02-24',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,0),(2,1,0),(1,2,0),(2,2,0),(1,3,0),(2,3,0),(1,4,0),(2,4,0),(1,5,0),(2,5,0),(1,6,0),(2,6,0),(1,7,0),(2,7,0),(1,8,0),(2,8,0),(1,9,0),(2,9,0),(1,10,0),(2,10,0),(1,11,0),(2,11,0),(1,12,0),(2,12,0),(1,13,0),(2,13,0),(1,14,0),(2,14,0),(1,15,0),(2,15,0),(1,16,0),(2,16,0),(1,17,0),(2,17,0),(1,18,0),(2,18,0),(1,19,0),(2,19,0),(1,20,0),(2,20,0),(1,21,0),(2,21,0),(1,22,0),(2,22,0),(1,23,0),(2,23,0),(1,24,0),(2,24,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` bigint unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `generate_license_code` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `sale_type_index` (`sale_type`),
  KEY `start_date_index` (`start_date`),
  KEY `end_date_index` (`end_date`),
  KEY `sale_price_index` (`sale_price`),
  KEY `is_variation_index` (`is_variation`),
  KEY `ec_products_sku_index` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Smart Home Speaker (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/1.jpg\",\"products\\/1-1.jpg\",\"products\\/1-2.jpg\",\"products\\/1-3.jpg\"]','HS-143-A0',0,16,0,1,1,2,0,0,268,NULL,NULL,NULL,15.00,18.00,11.00,627.00,NULL,62446,'2024-02-23 18:23:20','2024-02-23 18:23:20','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(2,'Headphone Ultra Bass','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\"]','HS-130-A0',0,16,0,1,1,3,0,0,373,NULL,NULL,NULL,16.00,15.00,11.00,788.00,NULL,130903,'2024-02-23 18:23:20','2024-02-23 18:23:20','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(3,'Boxed - Bluetooth Headphone','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/3.jpg\",\"products\\/3-1.jpg\",\"products\\/3-2.jpg\",\"products\\/3-3.jpg\"]','HS-140-A0',0,17,0,1,1,5,0,0,249,NULL,NULL,NULL,18.00,18.00,10.00,842.00,NULL,152678,'2024-02-23 18:23:20','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(4,'Chikie - Bluetooth Speaker','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\"]','HS-123-A0',0,19,0,1,1,2,0,0,86,71.38,NULL,NULL,14.00,18.00,14.00,582.00,NULL,186014,'2024-02-23 18:23:20','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(5,'Camera Hikvision HK-35VS8 (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\"]','HS-108-A0',0,14,0,1,1,3,0,0,49,NULL,NULL,NULL,10.00,20.00,15.00,753.00,NULL,118241,'2024-02-23 18:23:20','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(6,'Camera Samsung SS-24','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/6.jpg\",\"products\\/6-1.jpg\"]','HS-176-A0',0,11,0,1,1,5,0,0,51,NULL,NULL,NULL,11.00,19.00,15.00,821.00,NULL,135714,'2024-02-23 18:23:20','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(7,'Leather Watch Band','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/7.jpg\",\"products\\/7-1.jpg\"]','HS-191-A0',0,16,0,1,1,5,0,0,126,NULL,NULL,NULL,19.00,16.00,10.00,774.00,NULL,126138,'2024-02-23 18:23:20','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(8,'Apple iPhone 13 Plus','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\"]','HS-174-A0',0,19,0,1,1,1,0,0,125,98.75,NULL,NULL,17.00,15.00,20.00,543.00,NULL,132244,'2024-02-23 18:23:20','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(9,'Macbook Pro 2015 (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\"]','HS-141-A0',0,19,0,1,1,3,0,0,119,NULL,NULL,NULL,11.00,16.00,15.00,764.00,NULL,48414,'2024-02-23 18:23:20','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(10,'Macbook Air 12 inch','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\"]','HS-163-A0',0,16,0,1,1,3,0,0,466,NULL,NULL,NULL,17.00,14.00,15.00,723.00,NULL,24257,'2024-02-23 18:23:20','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(11,'Apple Watch Serial 7','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\"]','HS-173-A0',0,17,0,1,1,6,0,0,113,NULL,NULL,NULL,11.00,14.00,15.00,717.00,NULL,127615,'2024-02-23 18:23:20','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(12,'Macbook Pro 13 inch','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\"]','HS-132-A0',0,10,0,1,1,5,0,0,111,88.8,NULL,NULL,10.00,12.00,19.00,750.00,NULL,171467,'2024-02-23 18:23:20','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(13,'Apple Keyboard (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]','HS-145-A0',0,19,0,1,1,7,0,0,114,NULL,NULL,NULL,17.00,20.00,10.00,827.00,NULL,180077,'2024-02-23 18:23:20','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(14,'MacSafe 80W','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/14.jpg\",\"products\\/14-1.jpg\"]','HS-178-A0',0,10,0,1,1,6,0,0,127,NULL,NULL,NULL,10.00,15.00,16.00,860.00,NULL,17853,'2024-02-23 18:23:20','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(15,'Hand playstation','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]','HS-126-A0',0,12,0,1,1,5,0,0,125,NULL,NULL,NULL,14.00,19.00,20.00,640.00,NULL,64994,'2024-02-23 18:23:20','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(16,'Apple Airpods Serial 3','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/16.jpg\"]','HS-112-A0',0,20,0,1,1,7,0,0,127,92.71,NULL,NULL,19.00,11.00,16.00,828.00,NULL,18193,'2024-02-23 18:23:20','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(17,'Cool Smart Watches (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/17.jpg\"]','HS-100-A0',0,13,0,1,1,1,0,0,115,NULL,NULL,NULL,10.00,18.00,18.00,775.00,NULL,148806,'2024-02-23 18:23:20','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(18,'Black Smart Watches','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\",\"products\\/18-2.jpg\"]','HS-139-A0',0,13,0,1,1,1,0,0,120,NULL,NULL,NULL,11.00,19.00,17.00,523.00,NULL,91437,'2024-02-23 18:23:20','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(19,'Leather Watch Band Serial 3','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\"]','HS-192-A0',0,20,0,1,1,7,0,0,112,NULL,NULL,NULL,17.00,15.00,19.00,547.00,NULL,177707,'2024-02-23 18:23:20','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(20,'Macbook Pro 2015 13 inch','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\"]','HS-103-A0',0,11,0,1,1,7,0,0,112,96.32,NULL,NULL,18.00,17.00,15.00,680.00,NULL,67713,'2024-02-23 18:23:20','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(21,'Historic Alarm Clock (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\"]','HS-188-A0',0,20,0,1,1,2,0,0,114,NULL,NULL,NULL,13.00,17.00,17.00,689.00,NULL,34782,'2024-02-23 18:23:20','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(22,'Black Glasses','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\"]','HS-197-A0',0,11,0,1,1,5,0,0,110,NULL,NULL,NULL,19.00,13.00,13.00,519.00,NULL,26154,'2024-02-23 18:23:20','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(23,'Phillips Mouse','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\"]','HS-177-A0',0,11,0,1,1,4,0,0,130,NULL,NULL,NULL,12.00,18.00,18.00,788.00,NULL,180193,'2024-02-23 18:23:20','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(24,'Gaming Keyboard','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/24.jpg\",\"products\\/24-1.jpg\"]','HS-177-A0',0,17,0,1,1,2,0,0,117,97.11,NULL,NULL,10.00,18.00,15.00,707.00,NULL,163949,'2024-02-23 18:23:20','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(25,'Smart Home Speaker (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','HS-143-A0',0,16,0,1,0,2,1,0,268,NULL,NULL,NULL,15.00,18.00,11.00,627.00,NULL,0,'2024-02-23 18:23:20','2024-02-23 18:23:20','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(26,'Smart Home Speaker (Digital)',NULL,NULL,'published','[\"products\\/1-1.jpg\"]','HS-143-A0-A1',0,16,0,1,0,2,1,0,268,NULL,NULL,NULL,15.00,18.00,11.00,627.00,NULL,0,'2024-02-23 18:23:20','2024-02-23 18:23:20','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(27,'Headphone Ultra Bass',NULL,NULL,'published','[\"products\\/2.jpg\"]','HS-130-A0',0,16,0,1,0,3,1,0,373,NULL,NULL,NULL,16.00,15.00,11.00,788.00,NULL,0,'2024-02-23 18:23:20','2024-02-23 18:23:20','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(28,'Headphone Ultra Bass',NULL,NULL,'published','[\"products\\/2-1.jpg\"]','HS-130-A0-A1',0,16,0,1,0,3,1,0,373,NULL,NULL,NULL,16.00,15.00,11.00,788.00,NULL,0,'2024-02-23 18:23:20','2024-02-23 18:23:20','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(29,'Headphone Ultra Bass',NULL,NULL,'published','[\"products\\/2-2.jpg\"]','HS-130-A0-A2',0,16,0,1,0,3,1,0,373,NULL,NULL,NULL,16.00,15.00,11.00,788.00,NULL,0,'2024-02-23 18:23:20','2024-02-23 18:23:20','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(30,'Boxed - Bluetooth Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','HS-140-A0',0,17,0,1,0,5,1,0,249,NULL,NULL,NULL,18.00,18.00,10.00,842.00,NULL,0,'2024-02-23 18:23:20','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(31,'Boxed - Bluetooth Headphone',NULL,NULL,'published','[\"products\\/3-1.jpg\"]','HS-140-A0-A1',0,17,0,1,0,5,1,0,249,NULL,NULL,NULL,18.00,18.00,10.00,842.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(32,'Boxed - Bluetooth Headphone',NULL,NULL,'published','[\"products\\/3-2.jpg\"]','HS-140-A0-A2',0,17,0,1,0,5,1,0,249,NULL,NULL,NULL,18.00,18.00,10.00,842.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(33,'Boxed - Bluetooth Headphone',NULL,NULL,'published','[\"products\\/3-3.jpg\"]','HS-140-A0-A3',0,17,0,1,0,5,1,0,249,NULL,NULL,NULL,18.00,18.00,10.00,842.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(34,'Chikie - Bluetooth Speaker',NULL,NULL,'published','[\"products\\/4.jpg\"]','HS-123-A0',0,19,0,1,0,2,1,0,86,71.38,NULL,NULL,14.00,18.00,14.00,582.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(35,'Chikie - Bluetooth Speaker',NULL,NULL,'published','[\"products\\/4-1.jpg\"]','HS-123-A0-A1',0,19,0,1,0,2,1,0,86,69.66,NULL,NULL,14.00,18.00,14.00,582.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(36,'Chikie - Bluetooth Speaker',NULL,NULL,'published','[\"products\\/4-2.jpg\"]','HS-123-A0-A2',0,19,0,1,0,2,1,0,86,77.4,NULL,NULL,14.00,18.00,14.00,582.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(37,'Camera Hikvision HK-35VS8 (Digital)',NULL,NULL,'published','[\"products\\/5.jpg\"]','HS-108-A0',0,14,0,1,0,3,1,0,49,NULL,NULL,NULL,10.00,20.00,15.00,753.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(38,'Camera Samsung SS-24',NULL,NULL,'published','[\"products\\/6.jpg\"]','HS-176-A0',0,11,0,1,0,5,1,0,51,NULL,NULL,NULL,11.00,19.00,15.00,821.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(39,'Camera Samsung SS-24',NULL,NULL,'published','[\"products\\/6-1.jpg\"]','HS-176-A0-A1',0,11,0,1,0,5,1,0,51,NULL,NULL,NULL,11.00,19.00,15.00,821.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(40,'Camera Samsung SS-24',NULL,NULL,'published','[\"products\\/6.jpg\"]','HS-176-A0-A2',0,11,0,1,0,5,1,0,51,NULL,NULL,NULL,11.00,19.00,15.00,821.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(41,'Leather Watch Band',NULL,NULL,'published','[\"products\\/7.jpg\"]','HS-191-A0',0,16,0,1,0,5,1,0,126,NULL,NULL,NULL,19.00,16.00,10.00,774.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(42,'Apple iPhone 13 Plus',NULL,NULL,'published','[\"products\\/8.jpg\"]','HS-174-A0',0,19,0,1,0,1,1,0,125,98.75,NULL,NULL,17.00,15.00,20.00,543.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(43,'Apple iPhone 13 Plus',NULL,NULL,'published','[\"products\\/8-1.jpg\"]','HS-174-A0-A1',0,19,0,1,0,1,1,0,125,106.25,NULL,NULL,17.00,15.00,20.00,543.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(44,'Macbook Pro 2015 (Digital)',NULL,NULL,'published','[\"products\\/9.jpg\"]','HS-141-A0',0,19,0,1,0,3,1,0,119,NULL,NULL,NULL,11.00,16.00,15.00,764.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(45,'Macbook Pro 2015 (Digital)',NULL,NULL,'published','[\"products\\/9-1.jpg\"]','HS-141-A0-A1',0,19,0,1,0,3,1,0,119,NULL,NULL,NULL,11.00,16.00,15.00,764.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(46,'Macbook Pro 2015 (Digital)',NULL,NULL,'published','[\"products\\/9.jpg\"]','HS-141-A0-A2',0,19,0,1,0,3,1,0,119,NULL,NULL,NULL,11.00,16.00,15.00,764.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(47,'Macbook Air 12 inch',NULL,NULL,'published','[\"products\\/10.jpg\"]','HS-163-A0',0,16,0,1,0,3,1,0,466,NULL,NULL,NULL,17.00,14.00,15.00,723.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(48,'Macbook Air 12 inch',NULL,NULL,'published','[\"products\\/10-1.jpg\"]','HS-163-A0-A1',0,16,0,1,0,3,1,0,466,NULL,NULL,NULL,17.00,14.00,15.00,723.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(49,'Macbook Air 12 inch',NULL,NULL,'published','[\"products\\/10.jpg\"]','HS-163-A0-A2',0,16,0,1,0,3,1,0,466,NULL,NULL,NULL,17.00,14.00,15.00,723.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(50,'Apple Watch Serial 7',NULL,NULL,'published','[\"products\\/11.jpg\"]','HS-173-A0',0,17,0,1,0,6,1,0,113,NULL,NULL,NULL,11.00,14.00,15.00,717.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(51,'Apple Watch Serial 7',NULL,NULL,'published','[\"products\\/11-1.jpg\"]','HS-173-A0-A1',0,17,0,1,0,6,1,0,113,NULL,NULL,NULL,11.00,14.00,15.00,717.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(52,'Macbook Pro 13 inch',NULL,NULL,'published','[\"products\\/12.jpg\"]','HS-132-A0',0,10,0,1,0,5,1,0,111,88.8,NULL,NULL,10.00,12.00,19.00,750.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(53,'Macbook Pro 13 inch',NULL,NULL,'published','[\"products\\/12-1.jpg\"]','HS-132-A0-A1',0,10,0,1,0,5,1,0,111,88.8,NULL,NULL,10.00,12.00,19.00,750.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(54,'Macbook Pro 13 inch',NULL,NULL,'published','[\"products\\/12.jpg\"]','HS-132-A0-A2',0,10,0,1,0,5,1,0,111,89.91,NULL,NULL,10.00,12.00,19.00,750.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(55,'Apple Keyboard (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]','HS-145-A0',0,19,0,1,0,7,1,0,114,NULL,NULL,NULL,17.00,20.00,10.00,827.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(56,'Apple Keyboard (Digital)',NULL,NULL,'published','[\"products\\/13-1.jpg\"]','HS-145-A0-A1',0,19,0,1,0,7,1,0,114,NULL,NULL,NULL,17.00,20.00,10.00,827.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(57,'MacSafe 80W',NULL,NULL,'published','[\"products\\/14.jpg\"]','HS-178-A0',0,10,0,1,0,6,1,0,127,NULL,NULL,NULL,10.00,15.00,16.00,860.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(58,'MacSafe 80W',NULL,NULL,'published','[\"products\\/14-1.jpg\"]','HS-178-A0-A1',0,10,0,1,0,6,1,0,127,NULL,NULL,NULL,10.00,15.00,16.00,860.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(59,'Hand playstation',NULL,NULL,'published','[\"products\\/15.jpg\"]','HS-126-A0',0,12,0,1,0,5,1,0,125,NULL,NULL,NULL,14.00,19.00,20.00,640.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(60,'Hand playstation',NULL,NULL,'published','[\"products\\/15-1.jpg\"]','HS-126-A0-A1',0,12,0,1,0,5,1,0,125,NULL,NULL,NULL,14.00,19.00,20.00,640.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(61,'Apple Airpods Serial 3',NULL,NULL,'published','[\"products\\/16.jpg\"]','HS-112-A0',0,20,0,1,0,7,1,0,127,92.71,NULL,NULL,19.00,11.00,16.00,828.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(62,'Apple Airpods Serial 3',NULL,NULL,'published','[\"products\\/16.jpg\"]','HS-112-A0-A1',0,20,0,1,0,7,1,0,127,104.14,NULL,NULL,19.00,11.00,16.00,828.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(63,'Apple Airpods Serial 3',NULL,NULL,'published','[\"products\\/16.jpg\"]','HS-112-A0-A2',0,20,0,1,0,7,1,0,127,92.71,NULL,NULL,19.00,11.00,16.00,828.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(64,'Apple Airpods Serial 3',NULL,NULL,'published','[\"products\\/16.jpg\"]','HS-112-A0-A3',0,20,0,1,0,7,1,0,127,102.87,NULL,NULL,19.00,11.00,16.00,828.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(65,'Cool Smart Watches (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-100-A0',0,13,0,1,0,1,1,0,115,NULL,NULL,NULL,10.00,18.00,18.00,775.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(66,'Cool Smart Watches (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-100-A0-A1',0,13,0,1,0,1,1,0,115,NULL,NULL,NULL,10.00,18.00,18.00,775.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(67,'Black Smart Watches',NULL,NULL,'published','[\"products\\/18.jpg\"]','HS-139-A0',0,13,0,1,0,1,1,0,120,NULL,NULL,NULL,11.00,19.00,17.00,523.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(68,'Black Smart Watches',NULL,NULL,'published','[\"products\\/18-1.jpg\"]','HS-139-A0-A1',0,13,0,1,0,1,1,0,120,NULL,NULL,NULL,11.00,19.00,17.00,523.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(69,'Leather Watch Band Serial 3',NULL,NULL,'published','[\"products\\/19.jpg\"]','HS-192-A0',0,20,0,1,0,7,1,0,112,NULL,NULL,NULL,17.00,15.00,19.00,547.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(70,'Leather Watch Band Serial 3',NULL,NULL,'published','[\"products\\/19-1.jpg\"]','HS-192-A0-A1',0,20,0,1,0,7,1,0,112,NULL,NULL,NULL,17.00,15.00,19.00,547.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(71,'Macbook Pro 2015 13 inch',NULL,NULL,'published','[\"products\\/20.jpg\"]','HS-103-A0',0,11,0,1,0,7,1,0,112,96.32,NULL,NULL,18.00,17.00,15.00,680.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(72,'Macbook Pro 2015 13 inch',NULL,NULL,'published','[\"products\\/20-1.jpg\"]','HS-103-A0-A1',0,11,0,1,0,7,1,0,112,95.2,NULL,NULL,18.00,17.00,15.00,680.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(73,'Macbook Pro 2015 13 inch',NULL,NULL,'published','[\"products\\/20.jpg\"]','HS-103-A0-A2',0,11,0,1,0,7,1,0,112,98.56,NULL,NULL,18.00,17.00,15.00,680.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(74,'Macbook Pro 2015 13 inch',NULL,NULL,'published','[\"products\\/20.jpg\"]','HS-103-A0-A3',0,11,0,1,0,7,1,0,112,86.24,NULL,NULL,18.00,17.00,15.00,680.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(75,'Historic Alarm Clock (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]','HS-188-A0',0,20,0,1,0,2,1,0,114,NULL,NULL,NULL,13.00,17.00,17.00,689.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(76,'Historic Alarm Clock (Digital)',NULL,NULL,'published','[\"products\\/21-1.jpg\"]','HS-188-A0-A1',0,20,0,1,0,2,1,0,114,NULL,NULL,NULL,13.00,17.00,17.00,689.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(77,'Historic Alarm Clock (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]','HS-188-A0-A2',0,20,0,1,0,2,1,0,114,NULL,NULL,NULL,13.00,17.00,17.00,689.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(78,'Historic Alarm Clock (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]','HS-188-A0-A3',0,20,0,1,0,2,1,0,114,NULL,NULL,NULL,13.00,17.00,17.00,689.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(79,'Black Glasses',NULL,NULL,'published','[\"products\\/22.jpg\"]','HS-197-A0',0,11,0,1,0,5,1,0,110,NULL,NULL,NULL,19.00,13.00,13.00,519.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(80,'Black Glasses',NULL,NULL,'published','[\"products\\/22-1.jpg\"]','HS-197-A0-A1',0,11,0,1,0,5,1,0,110,NULL,NULL,NULL,19.00,13.00,13.00,519.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(81,'Phillips Mouse',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-177-A0',0,11,0,1,0,4,1,0,130,NULL,NULL,NULL,12.00,18.00,18.00,788.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(82,'Phillips Mouse',NULL,NULL,'published','[\"products\\/23-1.jpg\"]','HS-177-A0-A1',0,11,0,1,0,4,1,0,130,NULL,NULL,NULL,12.00,18.00,18.00,788.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(83,'Phillips Mouse',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-177-A0-A2',0,11,0,1,0,4,1,0,130,NULL,NULL,NULL,12.00,18.00,18.00,788.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(84,'Gaming Keyboard',NULL,NULL,'published','[\"products\\/24.jpg\"]','HS-177-A0',0,17,0,1,0,2,1,0,117,97.11,NULL,NULL,10.00,18.00,15.00,707.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(85,'Gaming Keyboard',NULL,NULL,'published','[\"products\\/24-1.jpg\"]','HS-177-A0-A1',0,17,0,1,0,2,1,0,117,101.79,NULL,NULL,10.00,18.00,15.00,707.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(86,'Gaming Keyboard',NULL,NULL,'published','[\"products\\/24.jpg\"]','HS-177-A0-A2',0,17,0,1,0,2,1,0,117,105.3,NULL,NULL,10.00,18.00,15.00,707.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(87,'Gaming Keyboard',NULL,NULL,'published','[\"products\\/24.jpg\"]','HS-177-A0-A3',0,17,0,1,0,2,1,0,117,85.41,NULL,NULL,10.00,18.00,15.00,707.00,NULL,0,'2024-02-23 18:23:21','2024-02-23 18:23:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_review_replies`
--

DROP TABLE IF EXISTS `ec_review_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_review_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `review_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_review_replies_review_id_user_id_unique` (`review_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_review_replies`
--

LOCK TABLES `ec_review_replies` WRITE;
/*!40000 ALTER TABLE `ec_review_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_review_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `review_relation_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,8,24,5.00,'Clean & perfect source code','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/2-1.jpg\"]'),(2,4,4,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/3-2.jpg\",\"products\\/16.jpg\"]'),(3,6,22,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/2-1.jpg\",\"products\\/19.jpg\",\"products\\/20-1.jpg\"]'),(4,9,21,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1-1.jpg\",\"products\\/10-1.jpg\",\"products\\/22-1.jpg\",\"products\\/23-1.jpg\"]'),(5,10,6,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/3-2.jpg\",\"products\\/11-1.jpg\"]'),(6,3,8,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1-2.jpg\",\"products\\/5-3.jpg\",\"products\\/9.jpg\",\"products\\/24-1.jpg\"]'),(7,9,23,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1-1.jpg\",\"products\\/5-2.jpg\",\"products\\/13.jpg\"]'),(8,2,6,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/5-1.jpg\",\"products\\/10.jpg\"]'),(9,10,15,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1-3.jpg\",\"products\\/18-2.jpg\"]'),(10,4,13,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1-3.jpg\",\"products\\/4-2.jpg\",\"products\\/11-1.jpg\",\"products\\/18-2.jpg\"]'),(11,10,3,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/6-1.jpg\"]'),(12,5,5,4.00,'Clean & perfect source code','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/2.jpg\",\"products\\/12.jpg\",\"products\\/19.jpg\"]'),(13,7,23,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/2.jpg\",\"products\\/9-1.jpg\",\"products\\/13-1.jpg\"]'),(14,3,24,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1-3.jpg\",\"products\\/8-1.jpg\",\"products\\/22-1.jpg\"]'),(15,8,20,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1-2.jpg\",\"products\\/14-1.jpg\"]'),(16,6,5,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/2-2.jpg\",\"products\\/22-1.jpg\",\"products\\/24-1.jpg\",\"products\\/24.jpg\"]'),(17,5,24,2.00,'Clean & perfect source code','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/4-1.jpg\",\"products\\/6-1.jpg\",\"products\\/7-1.jpg\"]'),(18,3,4,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/7.jpg\",\"products\\/14.jpg\"]'),(19,6,1,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/5-2.jpg\",\"products\\/9-1.jpg\",\"products\\/11.jpg\"]'),(20,3,15,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/14-1.jpg\",\"products\\/19-1.jpg\",\"products\\/20.jpg\",\"products\\/23-1.jpg\"]'),(21,10,13,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1.jpg\",\"products\\/8-1.jpg\",\"products\\/24.jpg\"]'),(22,9,4,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/9.jpg\"]'),(23,10,24,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/20.jpg\",\"products\\/22.jpg\",\"products\\/24-1.jpg\"]'),(24,3,11,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/16.jpg\"]'),(25,2,16,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/12-1.jpg\",\"products\\/16.jpg\",\"products\\/24-1.jpg\",\"products\\/24.jpg\"]'),(28,6,24,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/23-1.jpg\"]'),(29,5,13,4.00,'Good app, good backup service and support. Good documentation.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/5-1.jpg\",\"products\\/5-3.jpg\",\"products\\/9.jpg\",\"products\\/22-1.jpg\"]'),(30,6,11,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/2-1.jpg\",\"products\\/10.jpg\",\"products\\/21.jpg\"]'),(31,7,4,5.00,'Best ecommerce CMS online store!','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/2.jpg\",\"products\\/13.jpg\",\"products\\/18-2.jpg\",\"products\\/23-1.jpg\"]'),(32,1,10,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1-2.jpg\",\"products\\/7.jpg\",\"products\\/10.jpg\"]'),(34,4,19,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/3-3.jpg\",\"products\\/6.jpg\"]'),(35,4,24,1.00,'Best ecommerce CMS online store!','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/6.jpg\",\"products\\/19.jpg\",\"products\\/22-1.jpg\"]'),(36,2,24,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/3.jpg\",\"products\\/21-1.jpg\"]'),(37,4,15,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/9-1.jpg\"]'),(38,10,22,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/18-1.jpg\",\"products\\/20-1.jpg\"]'),(39,7,13,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/5-3.jpg\",\"products\\/5.jpg\",\"products\\/10-1.jpg\"]'),(40,8,6,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1.jpg\",\"products\\/4.jpg\",\"products\\/5-2.jpg\",\"products\\/8-1.jpg\"]'),(41,10,1,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1.jpg\",\"products\\/3-1.jpg\"]'),(43,1,18,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/6-1.jpg\"]'),(45,9,5,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/4-2.jpg\"]'),(46,3,22,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/5-1.jpg\"]'),(47,9,2,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/24-1.jpg\"]'),(48,8,11,2.00,'Good app, good backup service and support. Good documentation.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/2-2.jpg\",\"products\\/3-1.jpg\",\"products\\/11-1.jpg\",\"products\\/16.jpg\"]'),(49,10,19,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1.jpg\"]'),(50,6,17,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/3.jpg\"]'),(51,10,2,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/3-1.jpg\",\"products\\/4-3.jpg\",\"products\\/18-2.jpg\"]'),(52,5,10,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/5-2.jpg\",\"products\\/13.jpg\",\"products\\/20.jpg\"]'),(53,10,10,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/7-1.jpg\",\"products\\/12.jpg\",\"products\\/14.jpg\",\"products\\/18-1.jpg\"]'),(54,9,18,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/22.jpg\"]'),(55,9,14,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1-2.jpg\",\"products\\/3-2.jpg\",\"products\\/3.jpg\",\"products\\/21.jpg\"]'),(57,5,8,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/3.jpg\",\"products\\/8-1.jpg\",\"products\\/18.jpg\",\"products\\/21.jpg\"]'),(58,9,9,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/2-2.jpg\"]'),(59,1,23,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/2-1.jpg\"]'),(60,6,15,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/5.jpg\",\"products\\/24.jpg\"]'),(61,3,5,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/4-2.jpg\"]'),(62,10,5,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/18.jpg\"]'),(63,10,21,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/18-1.jpg\",\"products\\/21-1.jpg\"]'),(64,6,12,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/7-1.jpg\"]'),(65,3,17,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1-1.jpg\",\"products\\/10-1.jpg\",\"products\\/23.jpg\"]'),(67,9,8,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/9-1.jpg\"]'),(69,3,3,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/21-1.jpg\"]'),(70,5,1,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/9-1.jpg\",\"products\\/18.jpg\",\"products\\/23.jpg\",\"products\\/24-1.jpg\"]'),(71,6,4,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/3-3.jpg\",\"products\\/13.jpg\",\"products\\/14.jpg\",\"products\\/18.jpg\"]'),(72,3,9,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/5.jpg\"]'),(73,2,20,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/9.jpg\",\"products\\/20-1.jpg\"]'),(74,1,22,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/7.jpg\",\"products\\/12-1.jpg\",\"products\\/18.jpg\",\"products\\/22.jpg\"]'),(75,1,7,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/3.jpg\",\"products\\/4.jpg\",\"products\\/9-1.jpg\",\"products\\/24-1.jpg\"]'),(76,7,1,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/3-3.jpg\",\"products\\/4-2.jpg\",\"products\\/20-1.jpg\"]'),(77,6,21,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/21.jpg\"]'),(78,10,23,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/7-1.jpg\"]'),(80,8,19,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/22-1.jpg\",\"products\\/23.jpg\"]'),(82,9,22,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/21-1.jpg\"]'),(83,9,1,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/18.jpg\"]'),(84,9,3,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/3-2.jpg\",\"products\\/19.jpg\",\"products\\/22-1.jpg\",\"products\\/23.jpg\"]'),(85,1,21,1.00,'Best ecommerce CMS online store!','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/16.jpg\"]'),(86,2,14,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1-1.jpg\",\"products\\/3-2.jpg\",\"products\\/13-1.jpg\",\"products\\/22-1.jpg\"]'),(87,7,12,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/4-3.jpg\",\"products\\/6.jpg\",\"products\\/16.jpg\",\"products\\/17.jpg\"]'),(88,9,20,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/2-1.jpg\",\"products\\/5-3.jpg\",\"products\\/13-1.jpg\"]'),(90,2,3,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1-2.jpg\",\"products\\/8.jpg\",\"products\\/9-1.jpg\"]'),(93,8,18,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/4-3.jpg\",\"products\\/11.jpg\",\"products\\/20-1.jpg\",\"products\\/21-1.jpg\"]'),(95,3,6,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1-2.jpg\",\"products\\/14-1.jpg\",\"products\\/23.jpg\"]'),(96,8,22,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/20-1.jpg\",\"products\\/24.jpg\"]'),(97,10,20,1.00,'Best ecommerce CMS online store!','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/24-1.jpg\"]'),(98,4,16,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/9.jpg\",\"products\\/11-1.jpg\",\"products\\/17.jpg\",\"products\\/24-1.jpg\"]'),(99,9,13,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/2.jpg\",\"products\\/3-1.jpg\",\"products\\/14-1.jpg\",\"products\\/15.jpg\"]'),(100,10,9,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/3.jpg\",\"products\\/15.jpg\",\"products\\/17.jpg\",\"products\\/18-2.jpg\"]'),(101,7,9,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/8.jpg\"]'),(103,4,20,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/5-2.jpg\",\"products\\/11.jpg\",\"products\\/15.jpg\",\"products\\/18.jpg\"]'),(104,9,10,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/3-2.jpg\",\"products\\/23-1.jpg\",\"products\\/23.jpg\",\"products\\/24.jpg\"]'),(107,7,16,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/3-1.jpg\",\"products\\/5-2.jpg\",\"products\\/13-1.jpg\",\"products\\/17.jpg\"]'),(108,6,8,2.00,'Clean & perfect source code','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/24-1.jpg\"]'),(109,10,4,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/2-1.jpg\",\"products\\/3-3.jpg\"]'),(111,7,7,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/5.jpg\",\"products\\/6.jpg\",\"products\\/11-1.jpg\",\"products\\/14.jpg\"]'),(113,9,11,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/3-2.jpg\",\"products\\/4-2.jpg\"]'),(114,5,9,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/5.jpg\"]'),(115,2,21,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/13-1.jpg\",\"products\\/18-1.jpg\",\"products\\/24-1.jpg\"]'),(117,5,18,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/2-2.jpg\",\"products\\/10.jpg\",\"products\\/17.jpg\"]'),(119,5,3,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/8.jpg\",\"products\\/14-1.jpg\",\"products\\/19.jpg\"]'),(122,5,22,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/4-3.jpg\",\"products\\/17.jpg\"]'),(123,6,19,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/6-1.jpg\",\"products\\/9-1.jpg\",\"products\\/11.jpg\",\"products\\/13.jpg\"]'),(126,2,12,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/3-2.jpg\",\"products\\/12.jpg\",\"products\\/24-1.jpg\"]'),(127,6,10,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/2-3.jpg\"]'),(129,5,15,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/7.jpg\"]'),(131,4,22,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/8-1.jpg\",\"products\\/24-1.jpg\"]'),(132,7,19,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/11.jpg\"]'),(134,5,19,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/4-3.jpg\",\"products\\/18-2.jpg\",\"products\\/21.jpg\"]'),(135,1,4,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1-3.jpg\",\"products\\/5.jpg\",\"products\\/21-1.jpg\",\"products\\/23-1.jpg\"]'),(136,4,17,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1-1.jpg\",\"products\\/9-1.jpg\",\"products\\/12-1.jpg\",\"products\\/21-1.jpg\"]'),(138,4,6,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1-3.jpg\",\"products\\/23.jpg\"]'),(142,4,2,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/4-3.jpg\",\"products\\/10-1.jpg\",\"products\\/13.jpg\"]'),(143,4,5,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1-3.jpg\",\"products\\/12-1.jpg\",\"products\\/16.jpg\",\"products\\/22-1.jpg\"]'),(144,2,11,3.00,'Good app, good backup service and support. Good documentation.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/2-2.jpg\",\"products\\/3.jpg\",\"products\\/4-2.jpg\"]'),(149,3,7,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1-2.jpg\"]'),(150,7,15,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/10-1.jpg\"]'),(153,8,8,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/6-1.jpg\",\"products\\/8-1.jpg\",\"products\\/20.jpg\"]'),(154,3,18,5.00,'Clean & perfect source code','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/2-2.jpg\",\"products\\/3.jpg\",\"products\\/10-1.jpg\",\"products\\/11-1.jpg\"]'),(157,5,14,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/2-1.jpg\"]'),(158,4,23,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/16.jpg\"]'),(160,6,14,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/16.jpg\",\"products\\/23.jpg\"]'),(162,1,24,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/2.jpg\",\"products\\/19.jpg\",\"products\\/20-1.jpg\",\"products\\/20.jpg\"]'),(163,7,10,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1-2.jpg\",\"products\\/4-1.jpg\",\"products\\/11-1.jpg\",\"products\\/19.jpg\"]'),(164,8,12,2.00,'Best ecommerce CMS online store!','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/12.jpg\",\"products\\/15-1.jpg\"]'),(165,5,16,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/7-1.jpg\",\"products\\/9.jpg\",\"products\\/12-1.jpg\",\"products\\/19-1.jpg\"]'),(166,7,20,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1-2.jpg\",\"products\\/18-1.jpg\"]'),(167,8,7,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/2-3.jpg\",\"products\\/3.jpg\",\"products\\/10-1.jpg\",\"products\\/21.jpg\"]'),(170,6,6,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/16.jpg\"]'),(172,1,19,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/2-3.jpg\",\"products\\/5.jpg\"]'),(173,1,13,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1-3.jpg\",\"products\\/24.jpg\"]'),(174,10,17,4.00,'Good app, good backup service and support. Good documentation.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1-3.jpg\",\"products\\/2-1.jpg\",\"products\\/19.jpg\",\"products\\/20.jpg\"]'),(176,2,5,2.00,'Clean & perfect source code','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/8-1.jpg\",\"products\\/8.jpg\",\"products\\/9.jpg\",\"products\\/10-1.jpg\"]'),(181,8,9,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/14.jpg\"]'),(183,2,13,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1.jpg\",\"products\\/5.jpg\",\"products\\/8-1.jpg\",\"products\\/14.jpg\"]'),(184,6,23,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1-2.jpg\",\"products\\/18-1.jpg\",\"products\\/19-1.jpg\"]'),(186,8,15,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/14.jpg\",\"products\\/20-1.jpg\"]'),(195,2,15,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/6-1.jpg\",\"products\\/13.jpg\",\"products\\/22-1.jpg\"]'),(196,4,10,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1-1.jpg\",\"products\\/6-1.jpg\"]'),(197,2,10,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/5-1.jpg\",\"products\\/7-1.jpg\",\"products\\/8-1.jpg\",\"products\\/8.jpg\"]'),(198,3,23,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/24-1.jpg\"]'),(199,2,1,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/5-3.jpg\",\"products\\/19-1.jpg\"]'),(200,1,3,4.00,'Clean & perfect source code','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/2-1.jpg\",\"products\\/14.jpg\"]'),(203,5,6,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/10.jpg\",\"products\\/13-1.jpg\",\"products\\/17.jpg\",\"products\\/22.jpg\"]'),(207,9,15,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/11-1.jpg\",\"products\\/15.jpg\"]'),(208,3,1,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/2-3.jpg\",\"products\\/2.jpg\",\"products\\/4.jpg\",\"products\\/10-1.jpg\"]'),(216,1,12,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/9-1.jpg\",\"products\\/11-1.jpg\",\"products\\/18-2.jpg\"]'),(220,7,5,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1.jpg\",\"products\\/4.jpg\",\"products\\/5-2.jpg\",\"products\\/18-2.jpg\"]'),(222,4,3,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/9.jpg\",\"products\\/22.jpg\"]'),(225,1,5,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/13-1.jpg\",\"products\\/23.jpg\"]'),(226,10,11,2.00,'Clean & perfect source code','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/4.jpg\",\"products\\/18.jpg\",\"products\\/23-1.jpg\"]'),(227,1,16,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1-2.jpg\",\"products\\/14-1.jpg\",\"products\\/15.jpg\"]'),(228,1,8,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/4-1.jpg\",\"products\\/5-2.jpg\",\"products\\/10-1.jpg\"]'),(229,2,2,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1-3.jpg\",\"products\\/4.jpg\",\"products\\/5-1.jpg\",\"products\\/24-1.jpg\"]'),(232,4,1,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/21.jpg\",\"products\\/23.jpg\"]'),(234,10,12,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/3-2.jpg\"]'),(235,5,20,2.00,'Clean & perfect source code','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/13.jpg\"]'),(236,2,4,1.00,'Clean & perfect source code','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/14.jpg\",\"products\\/23-1.jpg\"]'),(237,1,2,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/2-1.jpg\",\"products\\/2-3.jpg\",\"products\\/24.jpg\"]'),(241,4,14,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/4-2.jpg\",\"products\\/11-1.jpg\",\"products\\/11.jpg\"]'),(243,6,18,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/18.jpg\"]'),(244,5,23,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1-3.jpg\",\"products\\/9.jpg\",\"products\\/22-1.jpg\",\"products\\/23-1.jpg\"]'),(246,7,2,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/8.jpg\",\"products\\/19-1.jpg\",\"products\\/20-1.jpg\",\"products\\/23.jpg\"]'),(249,8,16,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/18-2.jpg\",\"products\\/21-1.jpg\",\"products\\/22-1.jpg\",\"products\\/24.jpg\"]'),(252,9,16,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/2-1.jpg\",\"products\\/6-1.jpg\",\"products\\/12-1.jpg\"]'),(254,6,9,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/11.jpg\",\"products\\/13.jpg\",\"products\\/18-2.jpg\"]'),(255,10,18,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/3-3.jpg\",\"products\\/14-1.jpg\",\"products\\/14.jpg\"]'),(257,2,23,4.00,'Best ecommerce CMS online store!','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1-1.jpg\"]'),(259,5,21,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1-3.jpg\",\"products\\/11-1.jpg\",\"products\\/15-1.jpg\",\"products\\/18-2.jpg\"]'),(261,1,1,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/4-2.jpg\",\"products\\/24-1.jpg\"]'),(262,8,14,4.00,'Good app, good backup service and support. Good documentation.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/3.jpg\",\"products\\/12.jpg\"]'),(266,7,24,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/4-3.jpg\",\"products\\/4.jpg\",\"products\\/5-1.jpg\",\"products\\/7-1.jpg\"]'),(268,3,21,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/8.jpg\"]'),(272,9,19,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/12-1.jpg\"]'),(275,8,4,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/2-3.jpg\",\"products\\/13-1.jpg\",\"products\\/18-1.jpg\",\"products\\/18.jpg\"]'),(277,3,16,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1.jpg\",\"products\\/13.jpg\"]'),(278,1,11,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/5-2.jpg\",\"products\\/19-1.jpg\",\"products\\/23-1.jpg\"]'),(282,4,12,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/5-3.jpg\",\"products\\/15-1.jpg\",\"products\\/18.jpg\"]'),(287,1,20,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/8-1.jpg\",\"products\\/10.jpg\",\"products\\/22.jpg\"]'),(289,6,20,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/5-3.jpg\"]'),(296,8,23,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/11.jpg\",\"products\\/14-1.jpg\",\"products\\/19-1.jpg\"]'),(300,3,2,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/2.jpg\",\"products\\/8-1.jpg\",\"products\\/13.jpg\"]'),(304,6,16,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/3-3.jpg\",\"products\\/5.jpg\",\"products\\/15-1.jpg\"]'),(308,10,16,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/3-2.jpg\",\"products\\/5-2.jpg\"]'),(311,1,6,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/18-2.jpg\"]'),(313,5,17,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1-1.jpg\",\"products\\/3-3.jpg\",\"products\\/5-2.jpg\",\"products\\/15-1.jpg\"]'),(315,5,12,5.00,'Clean & perfect source code','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/2-3.jpg\",\"products\\/10.jpg\",\"products\\/18-1.jpg\"]'),(320,8,3,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/9-1.jpg\",\"products\\/9.jpg\"]'),(332,7,11,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/11-1.jpg\",\"products\\/22-1.jpg\"]'),(333,7,8,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/3-3.jpg\",\"products\\/14-1.jpg\",\"products\\/15.jpg\",\"products\\/22-1.jpg\"]'),(339,1,17,5.00,'Best ecommerce CMS online store!','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/11.jpg\",\"products\\/12.jpg\"]'),(343,7,6,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/4-1.jpg\",\"products\\/7-1.jpg\"]'),(348,3,14,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/4-3.jpg\",\"products\\/7-1.jpg\",\"products\\/13.jpg\",\"products\\/15.jpg\"]'),(349,9,24,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/3.jpg\",\"products\\/5-2.jpg\",\"products\\/5.jpg\"]'),(350,5,7,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/2.jpg\",\"products\\/9-1.jpg\"]'),(360,2,19,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1-3.jpg\"]'),(363,9,6,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/15.jpg\",\"products\\/18-1.jpg\",\"products\\/20-1.jpg\"]'),(372,5,4,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/24-1.jpg\"]'),(380,3,12,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/2-1.jpg\",\"products\\/18-2.jpg\"]'),(383,2,22,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/3-2.jpg\"]'),(385,2,17,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1-1.jpg\",\"products\\/9.jpg\",\"products\\/11.jpg\"]'),(390,2,8,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/4-1.jpg\",\"products\\/10-1.jpg\",\"products\\/16.jpg\",\"products\\/19-1.jpg\"]'),(392,8,1,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/10.jpg\",\"products\\/16.jpg\",\"products\\/18.jpg\"]'),(405,4,9,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/18-1.jpg\"]'),(425,4,7,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/2-2.jpg\",\"products\\/12-1.jpg\",\"products\\/19-1.jpg\"]'),(429,3,13,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/3.jpg\",\"products\\/19-1.jpg\"]'),(436,1,14,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/3-3.jpg\",\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/16.jpg\"]'),(443,5,11,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/5.jpg\"]'),(446,10,8,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1-3.jpg\",\"products\\/2.jpg\",\"products\\/4-2.jpg\",\"products\\/8.jpg\"]'),(452,7,14,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/2-1.jpg\",\"products\\/15-1.jpg\",\"products\\/15.jpg\"]'),(461,2,7,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/10-1.jpg\",\"products\\/19-1.jpg\",\"products\\/21-1.jpg\"]'),(463,8,2,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/15.jpg\"]'),(467,9,17,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/3-3.jpg\",\"products\\/18-1.jpg\",\"products\\/19.jpg\",\"products\\/22-1.jpg\"]'),(473,8,17,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1-3.jpg\",\"products\\/4-3.jpg\",\"products\\/18.jpg\",\"products\\/19-1.jpg\"]'),(474,7,3,5.00,'Good app, good backup service and support. Good documentation.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/3-2.jpg\"]'),(479,7,22,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/3.jpg\",\"products\\/8.jpg\",\"products\\/19.jpg\"]'),(493,3,10,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/14.jpg\",\"products\\/22.jpg\"]'),(495,6,3,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/3-1.jpg\",\"products\\/5-3.jpg\",\"products\\/14.jpg\",\"products\\/20.jpg\"]'),(524,9,7,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/8.jpg\",\"products\\/9.jpg\",\"products\\/11-1.jpg\",\"products\\/19.jpg\"]'),(527,8,13,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/7-1.jpg\"]'),(580,4,21,1.00,'Best ecommerce CMS online store!','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/3-3.jpg\"]'),(583,4,18,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1-2.jpg\",\"products\\/1.jpg\",\"products\\/9.jpg\",\"products\\/19.jpg\"]'),(590,9,12,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/3-1.jpg\",\"products\\/7-1.jpg\",\"products\\/15-1.jpg\",\"products\\/18-1.jpg\"]'),(595,1,9,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/16.jpg\"]'),(600,1,15,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1-2.jpg\",\"products\\/2.jpg\",\"products\\/19-1.jpg\"]'),(605,3,20,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/15-1.jpg\",\"products\\/18-2.jpg\"]'),(608,6,13,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/3-3.jpg\",\"products\\/5-3.jpg\",\"products\\/15.jpg\"]'),(613,10,14,1.00,'Best ecommerce CMS online store!','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/11.jpg\",\"products\\/13.jpg\",\"products\\/22-1.jpg\",\"products\\/24-1.jpg\"]'),(620,8,21,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/4-3.jpg\",\"products\\/13.jpg\"]'),(621,7,17,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/4-2.jpg\",\"products\\/9.jpg\",\"products\\/24-1.jpg\"]'),(623,8,10,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/9-1.jpg\"]'),(637,3,19,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/4-1.jpg\",\"products\\/5-2.jpg\",\"products\\/7-1.jpg\",\"products\\/13-1.jpg\"]'),(659,7,18,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/5-2.jpg\",\"products\\/16.jpg\"]'),(675,2,18,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/2-2.jpg\",\"products\\/5-1.jpg\",\"products\\/7.jpg\",\"products\\/8-1.jpg\"]'),(687,4,8,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1-1.jpg\",\"products\\/2-2.jpg\",\"products\\/5.jpg\",\"products\\/24.jpg\"]'),(712,7,21,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/1.jpg\",\"products\\/24.jpg\"]'),(720,5,2,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/3-2.jpg\",\"products\\/9-1.jpg\",\"products\\/18.jpg\",\"products\\/19.jpg\"]'),(749,6,7,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/20.jpg\",\"products\\/21.jpg\"]'),(789,4,11,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/6.jpg\"]'),(795,10,7,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/14-1.jpg\"]'),(801,6,2,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-23 18:23:25','2024-02-23 18:23:25','[\"products\\/6.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
INSERT INTO `ec_shipment_histories` VALUES (1,'create_from_order','Shipping was created from order %order_id%',0,1,1,'2024-02-08 18:23:25','2024-02-08 18:23:25','Botble\\ACL\\Models\\User'),(2,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,1,1,'2024-02-22 02:23:26','2024-02-23 18:23:26','Botble\\ACL\\Models\\User'),(3,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,1,1,'2024-02-23 18:23:26','2024-02-23 18:23:26','Botble\\ACL\\Models\\User'),(4,'create_from_order','Shipping was created from order %order_id%',0,2,2,'2024-02-12 16:23:26','2024-02-12 16:23:26','Botble\\ACL\\Models\\User'),(5,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,2,2,'2024-02-22 04:23:26','2024-02-23 18:23:26','Botble\\ACL\\Models\\User'),(6,'create_from_order','Shipping was created from order %order_id%',0,3,3,'2024-02-08 18:23:26','2024-02-08 18:23:26','Botble\\ACL\\Models\\User'),(7,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,3,3,'2024-02-22 06:23:26','2024-02-23 18:23:26','Botble\\ACL\\Models\\User'),(8,'create_from_order','Shipping was created from order %order_id%',0,4,4,'2024-02-15 06:23:26','2024-02-15 06:23:26','Botble\\ACL\\Models\\User'),(9,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,4,4,'2024-02-22 08:23:26','2024-02-23 18:23:26','Botble\\ACL\\Models\\User'),(10,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,4,4,'2024-02-23 18:23:26','2024-02-23 18:23:26','Botble\\ACL\\Models\\User'),(11,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,4,4,'2024-02-23 18:23:26','2024-02-23 18:23:26','Botble\\ACL\\Models\\User'),(12,'create_from_order','Shipping was created from order %order_id%',0,5,5,'2024-02-22 10:23:26','2024-02-22 10:23:26','Botble\\ACL\\Models\\User'),(13,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,5,5,'2024-02-22 10:23:26','2024-02-23 18:23:26','Botble\\ACL\\Models\\User'),(14,'create_from_order','Shipping was created from order %order_id%',0,6,6,'2024-02-20 00:23:26','2024-02-20 00:23:26','Botble\\ACL\\Models\\User'),(15,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,6,6,'2024-02-22 12:23:26','2024-02-23 18:23:26','Botble\\ACL\\Models\\User'),(16,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,6,6,'2024-02-23 18:23:26','2024-02-23 18:23:26','Botble\\ACL\\Models\\User'),(17,'create_from_order','Shipping was created from order %order_id%',0,7,7,'2024-02-22 14:23:26','2024-02-22 14:23:26','Botble\\ACL\\Models\\User'),(18,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,7,7,'2024-02-22 14:23:27','2024-02-23 18:23:27','Botble\\ACL\\Models\\User'),(19,'create_from_order','Shipping was created from order %order_id%',0,8,8,'2024-02-18 08:23:27','2024-02-18 08:23:27','Botble\\ACL\\Models\\User'),(20,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,8,8,'2024-02-22 16:23:27','2024-02-23 18:23:27','Botble\\ACL\\Models\\User'),(21,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,8,8,'2024-02-23 18:23:27','2024-02-23 18:23:27','Botble\\ACL\\Models\\User'),(22,'create_from_order','Shipping was created from order %order_id%',0,9,9,'2024-02-19 18:23:27','2024-02-19 18:23:27','Botble\\ACL\\Models\\User'),(23,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,9,9,'2024-02-22 18:23:27','2024-02-23 18:23:27','Botble\\ACL\\Models\\User'),(24,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,9,9,'2024-02-23 18:23:27','2024-02-23 18:23:27','Botble\\ACL\\Models\\User'),(25,'create_from_order','Shipping was created from order %order_id%',0,10,10,'2024-02-15 12:23:27','2024-02-15 12:23:27','Botble\\ACL\\Models\\User'),(26,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,10,10,'2024-02-22 20:23:27','2024-02-23 18:23:27','Botble\\ACL\\Models\\User'),(27,'create_from_order','Shipping was created from order %order_id%',0,11,11,'2024-02-18 18:23:27','2024-02-18 18:23:27','Botble\\ACL\\Models\\User'),(28,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,11,11,'2024-02-22 22:23:27','2024-02-23 18:23:27','Botble\\ACL\\Models\\User'),(29,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,11,11,'2024-02-23 18:23:27','2024-02-23 18:23:27','Botble\\ACL\\Models\\User'),(30,'create_from_order','Shipping was created from order %order_id%',0,12,12,'2024-02-17 00:23:27','2024-02-17 00:23:27','Botble\\ACL\\Models\\User'),(31,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,12,12,'2024-02-23 00:23:28','2024-02-23 18:23:28','Botble\\ACL\\Models\\User'),(32,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,12,12,'2024-02-23 18:23:28','2024-02-23 18:23:28','Botble\\ACL\\Models\\User'),(33,'create_from_order','Shipping was created from order %order_id%',0,13,13,'2024-02-19 02:23:28','2024-02-19 02:23:28','Botble\\ACL\\Models\\User'),(34,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,13,13,'2024-02-23 02:23:28','2024-02-23 18:23:28','Botble\\ACL\\Models\\User'),(35,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,13,13,'2024-02-23 18:23:28','2024-02-23 18:23:28','Botble\\ACL\\Models\\User'),(36,'create_from_order','Shipping was created from order %order_id%',0,14,14,'2024-02-20 06:23:28','2024-02-20 06:23:28','Botble\\ACL\\Models\\User'),(37,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,14,14,'2024-02-23 04:23:28','2024-02-23 18:23:28','Botble\\ACL\\Models\\User'),(38,'create_from_order','Shipping was created from order %order_id%',0,15,15,'2024-02-22 18:23:28','2024-02-22 18:23:28','Botble\\ACL\\Models\\User'),(39,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,15,15,'2024-02-23 06:23:28','2024-02-23 18:23:28','Botble\\ACL\\Models\\User'),(40,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,15,15,'2024-02-23 18:23:28','2024-02-23 18:23:28','Botble\\ACL\\Models\\User'),(41,'create_from_order','Shipping was created from order %order_id%',0,16,16,'2024-02-20 10:23:28','2024-02-20 10:23:28','Botble\\ACL\\Models\\User'),(42,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,16,16,'2024-02-23 08:23:28','2024-02-23 18:23:28','Botble\\ACL\\Models\\User'),(43,'create_from_order','Shipping was created from order %order_id%',0,17,17,'2024-02-23 02:23:28','2024-02-23 02:23:28','Botble\\ACL\\Models\\User'),(44,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,17,17,'2024-02-23 10:23:28','2024-02-23 18:23:28','Botble\\ACL\\Models\\User'),(45,'create_from_order','Shipping was created from order %order_id%',0,18,18,'2024-02-22 18:23:28','2024-02-22 18:23:28','Botble\\ACL\\Models\\User'),(46,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,18,18,'2024-02-23 12:23:29','2024-02-23 18:23:29','Botble\\ACL\\Models\\User'),(47,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,18,18,'2024-02-23 18:23:29','2024-02-23 18:23:29','Botble\\ACL\\Models\\User'),(48,'create_from_order','Shipping was created from order %order_id%',0,19,19,'2024-02-22 10:23:29','2024-02-22 10:23:29','Botble\\ACL\\Models\\User'),(49,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,19,19,'2024-02-23 14:23:29','2024-02-23 18:23:29','Botble\\ACL\\Models\\User'),(50,'create_from_order','Shipping was created from order %order_id%',0,20,20,'2024-02-23 08:23:29','2024-02-23 08:23:29','Botble\\ACL\\Models\\User'),(51,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,20,20,'2024-02-23 16:23:29','2024-02-23 18:23:29','Botble\\ACL\\Models\\User');
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
INSERT INTO `ec_shipments` VALUES (1,1,NULL,3738.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-23 18:23:26','2024-02-23 18:23:26','JJD0050121223','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-25 01:23:26','2024-02-24 01:23:26',NULL,NULL),(2,2,NULL,6507.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-23 18:23:26','2024-02-23 18:23:26','JJD0028684498','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-27 01:23:26',NULL,NULL,NULL),(3,3,NULL,4549.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-23 18:23:26','2024-02-23 18:23:26','JJD0090922481','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-01 01:23:26',NULL,NULL,NULL),(4,4,NULL,5273.00,NULL,NULL,'','delivered',1201.00,'completed','pending',0.00,0,'2024-02-23 18:23:26','2024-02-23 18:23:26','JJD0067253342','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-26 01:23:26','2024-02-24 01:23:26',NULL,NULL),(5,5,NULL,2082.00,NULL,NULL,'','approved',663.00,'pending','pending',0.00,0,'2024-02-23 18:23:26','2024-02-23 18:23:26','JJD0083417992','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-01 01:23:26',NULL,NULL,NULL),(6,6,NULL,3817.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-23 18:23:26','2024-02-23 18:23:26','JJD0081345890','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-02 01:23:26','2024-02-24 01:23:26',NULL,NULL),(7,7,NULL,5375.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-23 18:23:27','2024-02-23 18:23:27','JJD0048072383','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-01 01:23:27',NULL,NULL,NULL),(8,8,NULL,2706.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-23 18:23:27','2024-02-23 18:23:27','JJD0060378409','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-04 01:23:27','2024-02-24 01:23:27',NULL,NULL),(9,9,NULL,2245.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-23 18:23:27','2024-02-23 18:23:27','JJD0042850693','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-05 01:23:27','2024-02-24 01:23:27',NULL,NULL),(10,10,NULL,4135.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-23 18:23:27','2024-02-23 18:23:27','JJD0066321893','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-26 01:23:27',NULL,NULL,NULL),(11,11,NULL,3585.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-23 18:23:27','2024-02-23 18:23:27','JJD0053379798','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-28 01:23:27','2024-02-24 01:23:27',NULL,NULL),(12,12,NULL,2942.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-23 18:23:28','2024-02-23 18:23:28','JJD0031430483','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-29 01:23:28','2024-02-24 01:23:28',NULL,NULL),(13,13,NULL,5957.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-23 18:23:28','2024-02-23 18:23:28','JJD0084891630','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-01 01:23:28','2024-02-24 01:23:28',NULL,NULL),(14,14,NULL,6660.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-23 18:23:28','2024-02-23 18:23:28','JJD0085222256','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-26 01:23:28',NULL,NULL,NULL),(15,15,NULL,4431.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-23 18:23:28','2024-02-23 18:23:28','JJD001742512','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-04 01:23:28','2024-02-24 01:23:28',NULL,NULL),(16,16,NULL,5260.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-23 18:23:28','2024-02-23 18:23:28','JJD0034585629','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-03 01:23:28',NULL,NULL,NULL),(17,17,NULL,5803.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-23 18:23:28','2024-02-23 18:23:28','JJD0068846214','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-28 01:23:28',NULL,NULL,NULL),(18,18,NULL,7033.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-23 18:23:29','2024-02-23 18:23:29','JJD0097486529','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-27 01:23:29','2024-02-24 01:23:29',NULL,NULL),(19,19,NULL,3814.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-23 18:23:29','2024-02-23 18:23:29','JJD0010400242','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-25 01:23:29',NULL,NULL,NULL),(20,20,NULL,2742.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-23 18:23:29','2024-02-23 18:23:29','JJD0037027921','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-04 01:23:29',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2024-02-23 18:23:25','2024-02-23 18:23:25');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` bigint unsigned NOT NULL,
  `type` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',0.00,NULL,0.00,'2024-02-23 18:23:25','2024-02-23 18:23:25');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Wowy','sales@botble.com','18006268','North Link Building, 10 Admiralty Street','SG','Singapore','Singapore',1,1,'2024-02-23 18:23:25','2024-02-23 18:23:25');
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_products` (
  `tax_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tax_id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
INSERT INTO `ec_tax_products` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23),(1,24);
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_rules`
--

DROP TABLE IF EXISTS `ec_tax_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_rules`
--

LOCK TABLES `ec_tax_rules` WRITE;
/*!40000 ALTER TABLE `ec_tax_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2024-02-23 18:23:21','2024-02-23 18:23:21'),(2,'None',0.000000,2,'published','2024-02-23 18:23:21','2024-02-23 18:23:21'),(3,'Import Tax',15.000000,3,'published','2024-02-23 18:23:21','2024-02-23 18:23:21');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wishlist_relation_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Shipping',0,'published','2024-02-23 18:23:32','2024-02-23 18:23:32',NULL),(2,'Payment',1,'published','2024-02-23 18:23:32','2024-02-23 18:23:32',NULL),(3,'Order &amp; Returns',2,'published','2024-02-23 18:23:32','2024-02-23 18:23:32',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2024-02-23 18:23:32','2024-02-23 18:23:32'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2024-02-23 18:23:32','2024-02-23 18:23:32'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2024-02-23 18:23:32','2024-02-23 18:23:32'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2024-02-23 18:23:32','2024-02-23 18:23:32'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2024-02-23 18:23:32','2024-02-23 18:23:32'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2024-02-23 18:23:32','2024-02-23 18:23:32'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2024-02-23 18:23:32','2024-02-23 18:23:32'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2024-02-23 18:23:32','2024-02-23 18:23:32'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2024-02-23 18:23:32','2024-02-23 18:23:32'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2024-02-23 18:23:32','2024-02-23 18:23:32');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
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
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','8924bd022a591b5260dbb08a13b60632',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','06eb0561c1d5a18e8636031b221dd573',2,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(3,'en_US','537fad2c0c0b142bddb3a1ed45527bb5',3,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(4,'en_US','7575e71f905aa056fd61088fc1c596a4',4,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(5,'en_US','c87aaaeaf66497ea9fe3305e1adf901c',1,'Botble\\Menu\\Models\\MenuLocation'),(6,'en_US','c986503cddbf69869ba8d6ee91e6afa5',1,'Botble\\Menu\\Models\\Menu'),(7,'en_US','3d3cea64b1a39c17d21b0eef81e6965e',2,'Botble\\Menu\\Models\\Menu'),(8,'en_US','ff4b62863c2f2757d0c6b09e9b8183f1',3,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1','1',1,'image/png',981,'brands/1.png','[]','2024-02-23 18:23:15','2024-02-23 18:23:15',NULL),(2,0,'2','2',1,'image/png',981,'brands/2.png','[]','2024-02-23 18:23:15','2024-02-23 18:23:15',NULL),(3,0,'3','3',1,'image/png',981,'brands/3.png','[]','2024-02-23 18:23:15','2024-02-23 18:23:15',NULL),(4,0,'4','4',1,'image/png',981,'brands/4.png','[]','2024-02-23 18:23:15','2024-02-23 18:23:15',NULL),(5,0,'5','5',1,'image/png',981,'brands/5.png','[]','2024-02-23 18:23:15','2024-02-23 18:23:15',NULL),(6,0,'6','6',1,'image/png',981,'brands/6.png','[]','2024-02-23 18:23:15','2024-02-23 18:23:15',NULL),(7,0,'7','7',1,'image/png',981,'brands/7.png','[]','2024-02-23 18:23:15','2024-02-23 18:23:15',NULL),(8,0,'1','1',2,'image/jpeg',5327,'product-categories/1.jpg','[]','2024-02-23 18:23:15','2024-02-23 18:23:15',NULL),(9,0,'2','2',2,'image/jpeg',5327,'product-categories/2.jpg','[]','2024-02-23 18:23:16','2024-02-23 18:23:16',NULL),(10,0,'3','3',2,'image/jpeg',5327,'product-categories/3.jpg','[]','2024-02-23 18:23:16','2024-02-23 18:23:16',NULL),(11,0,'4','4',2,'image/jpeg',5327,'product-categories/4.jpg','[]','2024-02-23 18:23:16','2024-02-23 18:23:16',NULL),(12,0,'5','5',2,'image/jpeg',5327,'product-categories/5.jpg','[]','2024-02-23 18:23:16','2024-02-23 18:23:16',NULL),(13,0,'6','6',2,'image/jpeg',5327,'product-categories/6.jpg','[]','2024-02-23 18:23:16','2024-02-23 18:23:16',NULL),(14,0,'7','7',2,'image/jpeg',5327,'product-categories/7.jpg','[]','2024-02-23 18:23:16','2024-02-23 18:23:16',NULL),(15,0,'8','8',2,'image/jpeg',5327,'product-categories/8.jpg','[]','2024-02-23 18:23:16','2024-02-23 18:23:16',NULL),(16,0,'1-1','1-1',3,'image/jpeg',9803,'products/1-1.jpg','[]','2024-02-23 18:23:16','2024-02-23 18:23:16',NULL),(17,0,'1-2','1-2',3,'image/jpeg',9803,'products/1-2.jpg','[]','2024-02-23 18:23:16','2024-02-23 18:23:16',NULL),(18,0,'1-3','1-3',3,'image/jpeg',9803,'products/1-3.jpg','[]','2024-02-23 18:23:16','2024-02-23 18:23:16',NULL),(19,0,'1','1',3,'image/jpeg',9803,'products/1.jpg','[]','2024-02-23 18:23:16','2024-02-23 18:23:16',NULL),(20,0,'10-1','10-1',3,'image/jpeg',9803,'products/10-1.jpg','[]','2024-02-23 18:23:16','2024-02-23 18:23:16',NULL),(21,0,'10','10',3,'image/jpeg',9803,'products/10.jpg','[]','2024-02-23 18:23:17','2024-02-23 18:23:17',NULL),(22,0,'11-1','11-1',3,'image/jpeg',9803,'products/11-1.jpg','[]','2024-02-23 18:23:17','2024-02-23 18:23:17',NULL),(23,0,'11','11',3,'image/jpeg',9803,'products/11.jpg','[]','2024-02-23 18:23:17','2024-02-23 18:23:17',NULL),(24,0,'12-1','12-1',3,'image/jpeg',9803,'products/12-1.jpg','[]','2024-02-23 18:23:17','2024-02-23 18:23:17',NULL),(25,0,'12','12',3,'image/jpeg',9803,'products/12.jpg','[]','2024-02-23 18:23:17','2024-02-23 18:23:17',NULL),(26,0,'13-1','13-1',3,'image/jpeg',9803,'products/13-1.jpg','[]','2024-02-23 18:23:17','2024-02-23 18:23:17',NULL),(27,0,'13','13',3,'image/jpeg',9803,'products/13.jpg','[]','2024-02-23 18:23:17','2024-02-23 18:23:17',NULL),(28,0,'14-1','14-1',3,'image/jpeg',9803,'products/14-1.jpg','[]','2024-02-23 18:23:17','2024-02-23 18:23:17',NULL),(29,0,'14','14',3,'image/jpeg',9803,'products/14.jpg','[]','2024-02-23 18:23:17','2024-02-23 18:23:17',NULL),(30,0,'15-1','15-1',3,'image/jpeg',9803,'products/15-1.jpg','[]','2024-02-23 18:23:17','2024-02-23 18:23:17',NULL),(31,0,'15','15',3,'image/jpeg',9803,'products/15.jpg','[]','2024-02-23 18:23:17','2024-02-23 18:23:17',NULL),(32,0,'16','16',3,'image/jpeg',9803,'products/16.jpg','[]','2024-02-23 18:23:17','2024-02-23 18:23:17',NULL),(33,0,'17','17',3,'image/jpeg',9803,'products/17.jpg','[]','2024-02-23 18:23:17','2024-02-23 18:23:17',NULL),(34,0,'18-1','18-1',3,'image/jpeg',9803,'products/18-1.jpg','[]','2024-02-23 18:23:17','2024-02-23 18:23:17',NULL),(35,0,'18-2','18-2',3,'image/jpeg',9803,'products/18-2.jpg','[]','2024-02-23 18:23:17','2024-02-23 18:23:17',NULL),(36,0,'18','18',3,'image/jpeg',9803,'products/18.jpg','[]','2024-02-23 18:23:18','2024-02-23 18:23:18',NULL),(37,0,'19-1','19-1',3,'image/jpeg',9803,'products/19-1.jpg','[]','2024-02-23 18:23:18','2024-02-23 18:23:18',NULL),(38,0,'19','19',3,'image/jpeg',9803,'products/19.jpg','[]','2024-02-23 18:23:18','2024-02-23 18:23:18',NULL),(39,0,'2-1','2-1',3,'image/jpeg',9803,'products/2-1.jpg','[]','2024-02-23 18:23:18','2024-02-23 18:23:18',NULL),(40,0,'2-2','2-2',3,'image/jpeg',9803,'products/2-2.jpg','[]','2024-02-23 18:23:18','2024-02-23 18:23:18',NULL),(41,0,'2-3','2-3',3,'image/jpeg',9803,'products/2-3.jpg','[]','2024-02-23 18:23:18','2024-02-23 18:23:18',NULL),(42,0,'2','2',3,'image/jpeg',9803,'products/2.jpg','[]','2024-02-23 18:23:18','2024-02-23 18:23:18',NULL),(43,0,'20-1','20-1',3,'image/jpeg',9803,'products/20-1.jpg','[]','2024-02-23 18:23:18','2024-02-23 18:23:18',NULL),(44,0,'20','20',3,'image/jpeg',9803,'products/20.jpg','[]','2024-02-23 18:23:18','2024-02-23 18:23:18',NULL),(45,0,'21-1','21-1',3,'image/jpeg',9803,'products/21-1.jpg','[]','2024-02-23 18:23:18','2024-02-23 18:23:18',NULL),(46,0,'21','21',3,'image/jpeg',9803,'products/21.jpg','[]','2024-02-23 18:23:18','2024-02-23 18:23:18',NULL),(47,0,'22-1','22-1',3,'image/jpeg',9803,'products/22-1.jpg','[]','2024-02-23 18:23:18','2024-02-23 18:23:18',NULL),(48,0,'22','22',3,'image/jpeg',9803,'products/22.jpg','[]','2024-02-23 18:23:18','2024-02-23 18:23:18',NULL),(49,0,'23-1','23-1',3,'image/jpeg',9803,'products/23-1.jpg','[]','2024-02-23 18:23:18','2024-02-23 18:23:18',NULL),(50,0,'23','23',3,'image/jpeg',9803,'products/23.jpg','[]','2024-02-23 18:23:18','2024-02-23 18:23:18',NULL),(51,0,'24-1','24-1',3,'image/jpeg',9803,'products/24-1.jpg','[]','2024-02-23 18:23:19','2024-02-23 18:23:19',NULL),(52,0,'24','24',3,'image/jpeg',9803,'products/24.jpg','[]','2024-02-23 18:23:19','2024-02-23 18:23:19',NULL),(53,0,'3-1','3-1',3,'image/jpeg',9803,'products/3-1.jpg','[]','2024-02-23 18:23:19','2024-02-23 18:23:19',NULL),(54,0,'3-2','3-2',3,'image/jpeg',9803,'products/3-2.jpg','[]','2024-02-23 18:23:19','2024-02-23 18:23:19',NULL),(55,0,'3-3','3-3',3,'image/jpeg',9803,'products/3-3.jpg','[]','2024-02-23 18:23:19','2024-02-23 18:23:19',NULL),(56,0,'3','3',3,'image/jpeg',9803,'products/3.jpg','[]','2024-02-23 18:23:19','2024-02-23 18:23:19',NULL),(57,0,'4-1','4-1',3,'image/jpeg',9803,'products/4-1.jpg','[]','2024-02-23 18:23:19','2024-02-23 18:23:19',NULL),(58,0,'4-2','4-2',3,'image/jpeg',9803,'products/4-2.jpg','[]','2024-02-23 18:23:19','2024-02-23 18:23:19',NULL),(59,0,'4-3','4-3',3,'image/jpeg',9803,'products/4-3.jpg','[]','2024-02-23 18:23:19','2024-02-23 18:23:19',NULL),(60,0,'4','4',3,'image/jpeg',9803,'products/4.jpg','[]','2024-02-23 18:23:19','2024-02-23 18:23:19',NULL),(61,0,'5-1','5-1',3,'image/jpeg',9803,'products/5-1.jpg','[]','2024-02-23 18:23:19','2024-02-23 18:23:19',NULL),(62,0,'5-2','5-2',3,'image/jpeg',9803,'products/5-2.jpg','[]','2024-02-23 18:23:19','2024-02-23 18:23:19',NULL),(63,0,'5-3','5-3',3,'image/jpeg',9803,'products/5-3.jpg','[]','2024-02-23 18:23:19','2024-02-23 18:23:19',NULL),(64,0,'5','5',3,'image/jpeg',9803,'products/5.jpg','[]','2024-02-23 18:23:19','2024-02-23 18:23:19',NULL),(65,0,'6-1','6-1',3,'image/jpeg',9803,'products/6-1.jpg','[]','2024-02-23 18:23:19','2024-02-23 18:23:19',NULL),(66,0,'6','6',3,'image/jpeg',9803,'products/6.jpg','[]','2024-02-23 18:23:20','2024-02-23 18:23:20',NULL),(67,0,'7-1','7-1',3,'image/jpeg',9803,'products/7-1.jpg','[]','2024-02-23 18:23:20','2024-02-23 18:23:20',NULL),(68,0,'7','7',3,'image/jpeg',9803,'products/7.jpg','[]','2024-02-23 18:23:20','2024-02-23 18:23:20',NULL),(69,0,'8-1','8-1',3,'image/jpeg',9803,'products/8-1.jpg','[]','2024-02-23 18:23:20','2024-02-23 18:23:20',NULL),(70,0,'8','8',3,'image/jpeg',9803,'products/8.jpg','[]','2024-02-23 18:23:20','2024-02-23 18:23:20',NULL),(71,0,'9-1','9-1',3,'image/jpeg',9803,'products/9-1.jpg','[]','2024-02-23 18:23:20','2024-02-23 18:23:20',NULL),(72,0,'9','9',3,'image/jpeg',9803,'products/9.jpg','[]','2024-02-23 18:23:20','2024-02-23 18:23:20',NULL),(73,0,'1','1',4,'image/jpeg',9803,'customers/1.jpg','[]','2024-02-23 18:23:22','2024-02-23 18:23:22',NULL),(74,0,'10','10',4,'image/jpeg',9803,'customers/10.jpg','[]','2024-02-23 18:23:22','2024-02-23 18:23:22',NULL),(75,0,'2','2',4,'image/jpeg',9803,'customers/2.jpg','[]','2024-02-23 18:23:22','2024-02-23 18:23:22',NULL),(76,0,'3','3',4,'image/jpeg',9803,'customers/3.jpg','[]','2024-02-23 18:23:22','2024-02-23 18:23:22',NULL),(77,0,'4','4',4,'image/jpeg',9803,'customers/4.jpg','[]','2024-02-23 18:23:22','2024-02-23 18:23:22',NULL),(78,0,'5','5',4,'image/jpeg',9803,'customers/5.jpg','[]','2024-02-23 18:23:22','2024-02-23 18:23:22',NULL),(79,0,'6','6',4,'image/jpeg',9803,'customers/6.jpg','[]','2024-02-23 18:23:22','2024-02-23 18:23:22',NULL),(80,0,'7','7',4,'image/jpeg',9803,'customers/7.jpg','[]','2024-02-23 18:23:22','2024-02-23 18:23:22',NULL),(81,0,'8','8',4,'image/jpeg',9803,'customers/8.jpg','[]','2024-02-23 18:23:22','2024-02-23 18:23:22',NULL),(82,0,'9','9',4,'image/jpeg',9803,'customers/9.jpg','[]','2024-02-23 18:23:22','2024-02-23 18:23:22',NULL),(83,0,'1','1',5,'image/jpeg',9392,'flash-sales/1.jpg','[]','2024-02-23 18:23:25','2024-02-23 18:23:25',NULL),(84,0,'2','2',5,'image/jpeg',9392,'flash-sales/2.jpg','[]','2024-02-23 18:23:25','2024-02-23 18:23:25',NULL),(85,0,'1-1','1-1',6,'image/png',13746,'sliders/1-1.png','[]','2024-02-23 18:23:29','2024-02-23 18:23:29',NULL),(86,0,'1-2','1-2',6,'image/png',13801,'sliders/1-2.png','[]','2024-02-23 18:23:29','2024-02-23 18:23:29',NULL),(87,0,'1-3','1-3',6,'image/png',12820,'sliders/1-3.png','[]','2024-02-23 18:23:29','2024-02-23 18:23:29',NULL),(88,0,'2-1','2-1',6,'image/png',13746,'sliders/2-1.png','[]','2024-02-23 18:23:29','2024-02-23 18:23:29',NULL),(89,0,'2-2','2-2',6,'image/png',13801,'sliders/2-2.png','[]','2024-02-23 18:23:29','2024-02-23 18:23:29',NULL),(90,0,'2-3','2-3',6,'image/png',12820,'sliders/2-3.png','[]','2024-02-23 18:23:30','2024-02-23 18:23:30',NULL),(91,0,'3-1','3-1',6,'image/png',13702,'sliders/3-1.png','[]','2024-02-23 18:23:30','2024-02-23 18:23:30',NULL),(92,0,'3-2','3-2',6,'image/png',13702,'sliders/3-2.png','[]','2024-02-23 18:23:30','2024-02-23 18:23:30',NULL),(93,0,'4-1','4-1',6,'image/png',13746,'sliders/4-1.png','[]','2024-02-23 18:23:30','2024-02-23 18:23:30',NULL),(94,0,'4-2','4-2',6,'image/png',13746,'sliders/4-2.png','[]','2024-02-23 18:23:30','2024-02-23 18:23:30',NULL),(95,0,'4-3','4-3',6,'image/png',12820,'sliders/4-3.png','[]','2024-02-23 18:23:30','2024-02-23 18:23:30',NULL),(96,0,'1','1',7,'image/jpeg',9803,'news/1.jpg','[]','2024-02-23 18:23:30','2024-02-23 18:23:30',NULL),(97,0,'10','10',7,'image/jpeg',9803,'news/10.jpg','[]','2024-02-23 18:23:30','2024-02-23 18:23:30',NULL),(98,0,'11','11',7,'image/jpeg',9803,'news/11.jpg','[]','2024-02-23 18:23:30','2024-02-23 18:23:30',NULL),(99,0,'2','2',7,'image/jpeg',9803,'news/2.jpg','[]','2024-02-23 18:23:30','2024-02-23 18:23:30',NULL),(100,0,'3','3',7,'image/jpeg',9803,'news/3.jpg','[]','2024-02-23 18:23:30','2024-02-23 18:23:30',NULL),(101,0,'4','4',7,'image/jpeg',9803,'news/4.jpg','[]','2024-02-23 18:23:30','2024-02-23 18:23:30',NULL),(102,0,'5','5',7,'image/jpeg',9803,'news/5.jpg','[]','2024-02-23 18:23:31','2024-02-23 18:23:31',NULL),(103,0,'6','6',7,'image/jpeg',9803,'news/6.jpg','[]','2024-02-23 18:23:31','2024-02-23 18:23:31',NULL),(104,0,'7','7',7,'image/jpeg',9803,'news/7.jpg','[]','2024-02-23 18:23:31','2024-02-23 18:23:31',NULL),(105,0,'8','8',7,'image/jpeg',9803,'news/8.jpg','[]','2024-02-23 18:23:31','2024-02-23 18:23:31',NULL),(106,0,'9','9',7,'image/jpeg',9803,'news/9.jpg','[]','2024-02-23 18:23:31','2024-02-23 18:23:31',NULL),(107,0,'1','1',8,'image/png',5289,'promotion/1.png','[]','2024-02-23 18:23:32','2024-02-23 18:23:32',NULL),(108,0,'2','2',8,'image/png',5289,'promotion/2.png','[]','2024-02-23 18:23:32','2024-02-23 18:23:32',NULL),(109,0,'3','3',8,'image/png',5289,'promotion/3.png','[]','2024-02-23 18:23:32','2024-02-23 18:23:32',NULL),(110,0,'4','4',8,'image/png',8954,'promotion/4.png','[]','2024-02-23 18:23:32','2024-02-23 18:23:32',NULL),(111,0,'5','5',8,'image/png',5073,'promotion/5.png','[]','2024-02-23 18:23:32','2024-02-23 18:23:32',NULL),(112,0,'6','6',8,'image/png',7142,'promotion/6.png','[]','2024-02-23 18:23:32','2024-02-23 18:23:32',NULL),(113,0,'clock','clock',9,'image/png',4247,'general/clock.png','[]','2024-02-23 18:23:32','2024-02-23 18:23:32',NULL),(114,0,'credit-card','credit-card',9,'image/png',1400,'general/credit-card.png','[]','2024-02-23 18:23:32','2024-02-23 18:23:32',NULL),(115,0,'favicon','favicon',9,'image/png',3750,'general/favicon.png','[]','2024-02-23 18:23:33','2024-02-23 18:23:33',NULL),(116,0,'icon-bag','icon-bag',9,'image/png',19032,'general/icon-bag.png','[]','2024-02-23 18:23:33','2024-02-23 18:23:33',NULL),(117,0,'icon-operator','icon-operator',9,'image/png',29658,'general/icon-operator.png','[]','2024-02-23 18:23:33','2024-02-23 18:23:33',NULL),(118,0,'icon-purchase','icon-purchase',9,'image/png',29652,'general/icon-purchase.png','[]','2024-02-23 18:23:33','2024-02-23 18:23:33',NULL),(119,0,'icon-truck','icon-truck',9,'image/png',20962,'general/icon-truck.png','[]','2024-02-23 18:23:33','2024-02-23 18:23:33',NULL),(120,0,'logo-light','logo-light',9,'image/png',3902,'general/logo-light.png','[]','2024-02-23 18:23:33','2024-02-23 18:23:33',NULL),(121,0,'logo','logo',9,'image/png',4445,'general/logo.png','[]','2024-02-23 18:23:33','2024-02-23 18:23:33',NULL),(122,0,'open-graph-image','open-graph-image',9,'image/png',348710,'general/open-graph-image.png','[]','2024-02-23 18:23:33','2024-02-23 18:23:33',NULL),(123,0,'paper-plane','paper-plane',9,'image/png',5164,'general/paper-plane.png','[]','2024-02-23 18:23:33','2024-02-23 18:23:33',NULL),(124,0,'payment-methods','payment-methods',9,'image/png',476,'general/payment-methods.png','[]','2024-02-23 18:23:33','2024-02-23 18:23:33',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'brands',NULL,'brands',0,'2024-02-23 18:23:15','2024-02-23 18:23:15',NULL),(2,0,'product-categories',NULL,'product-categories',0,'2024-02-23 18:23:15','2024-02-23 18:23:15',NULL),(3,0,'products',NULL,'products',0,'2024-02-23 18:23:16','2024-02-23 18:23:16',NULL),(4,0,'customers',NULL,'customers',0,'2024-02-23 18:23:22','2024-02-23 18:23:22',NULL),(5,0,'flash-sales',NULL,'flash-sales',0,'2024-02-23 18:23:25','2024-02-23 18:23:25',NULL),(6,0,'sliders',NULL,'sliders',0,'2024-02-23 18:23:29','2024-02-23 18:23:29',NULL),(7,0,'news',NULL,'news',0,'2024-02-23 18:23:30','2024-02-23 18:23:30',NULL),(8,0,'promotion',NULL,'promotion',0,'2024-02-23 18:23:32','2024-02-23 18:23:32',NULL),(9,0,'general',NULL,'general',0,'2024-02-23 18:23:32','2024-02-23 18:23:32',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-02-23 18:23:32','2024-02-23 18:23:32');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',1,'2024-02-23 18:23:32','2024-02-23 18:23:32'),(2,1,1,1,'Botble\\Page\\Models\\Page','/homepage',NULL,0,'Home 1',NULL,'_self',0,'2024-02-23 18:23:32','2024-02-23 18:23:32'),(3,1,1,2,'Botble\\Page\\Models\\Page','/homepage-2',NULL,0,'Home 2',NULL,'_self',0,'2024-02-23 18:23:32','2024-02-23 18:23:32'),(4,1,1,3,'Botble\\Page\\Models\\Page','/homepage-3',NULL,0,'Home 3',NULL,'_self',0,'2024-02-23 18:23:32','2024-02-23 18:23:32'),(5,1,1,4,'Botble\\Page\\Models\\Page','/homepage-4',NULL,0,'Home 4',NULL,'_self',0,'2024-02-23 18:23:32','2024-02-23 18:23:32'),(6,1,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',1,'2024-02-23 18:23:32','2024-02-23 18:23:32'),(7,1,6,NULL,NULL,'/products',NULL,0,'Shop Grid - Full Width',NULL,'_self',0,'2024-02-23 18:23:32','2024-02-23 18:23:32'),(8,1,6,NULL,NULL,'/products?layout=product-right-sidebar',NULL,0,'Shop Grid - Right Sidebar',NULL,'_self',0,'2024-02-23 18:23:32','2024-02-23 18:23:32'),(9,1,6,NULL,NULL,'/products?layout=product-left-sidebar',NULL,0,'Shop Grid - Left Sidebar',NULL,'_self',0,'2024-02-23 18:23:32','2024-02-23 18:23:32'),(10,1,6,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/hot-promotions',NULL,0,'Products Of Category',NULL,'_self',0,'2024-02-23 18:23:32','2024-02-23 18:23:32'),(11,1,0,NULL,NULL,'#',NULL,0,'Product',NULL,'_self',1,'2024-02-23 18:23:32','2024-02-23 18:23:32'),(12,1,11,NULL,NULL,'/products/smart-home-speaker-digital',NULL,0,'Product Right Sidebar',NULL,'_self',0,'2024-02-23 18:23:32','2024-02-23 18:23:32'),(13,1,11,NULL,NULL,'/products/headphone-ultra-bass',NULL,0,'Product Left Sidebar',NULL,'_self',0,'2024-02-23 18:23:32','2024-02-23 18:23:32'),(14,1,11,NULL,NULL,'/products/boxed-bluetooth-headphone',NULL,0,'Product Full Width',NULL,'_self',0,'2024-02-23 18:23:32','2024-02-23 18:23:32'),(15,1,0,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',1,'2024-02-23 18:23:32','2024-02-23 18:23:32'),(16,1,15,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog Right Sidebar',NULL,'_self',0,'2024-02-23 18:23:32','2024-02-23 18:23:32'),(17,1,15,13,'Botble\\Page\\Models\\Page','/blog-left-sidebar',NULL,0,'Blog Left Sidebar',NULL,'_self',0,'2024-02-23 18:23:32','2024-02-23 18:23:32'),(18,1,15,NULL,NULL,'/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Single Post Right Sidebar',NULL,'_self',0,'2024-02-23 18:23:32','2024-02-23 18:23:32'),(19,1,15,NULL,NULL,'/blog/sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',NULL,0,'Single Post Left Sidebar',NULL,'_self',0,'2024-02-23 18:23:32','2024-02-23 18:23:32'),(20,1,15,NULL,NULL,'/blog/the-top-2020-handbag-trends-to-know',NULL,0,'Single Post Full Width',NULL,'_self',0,'2024-02-23 18:23:32','2024-02-23 18:23:32'),(21,1,15,NULL,NULL,'/blog/how-to-match-the-color-of-your-handbag-with-an-outfit',NULL,0,'Single Post with Product Listing',NULL,'_self',0,'2024-02-23 18:23:32','2024-02-23 18:23:32'),(22,1,0,14,'Botble\\Page\\Models\\Page','/faq',NULL,0,'FAQ',NULL,'_self',0,'2024-02-23 18:23:32','2024-02-23 18:23:32'),(23,1,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2024-02-23 18:23:32','2024-02-23 18:23:32'),(24,2,0,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/hot-promotions',NULL,0,'Men',NULL,'_self',0,'2024-02-23 18:23:32','2024-02-23 18:23:32'),(25,2,0,2,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/electronics',NULL,0,'Women',NULL,'_self',0,'2024-02-23 18:23:32','2024-02-23 18:23:32'),(26,2,0,3,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/home-audio-theaters',NULL,0,'Accessories',NULL,'_self',0,'2024-02-23 18:23:32','2024-02-23 18:23:32'),(27,2,0,4,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/tv-videos',NULL,0,'Shoes',NULL,'_self',0,'2024-02-23 18:23:32','2024-02-23 18:23:32'),(28,2,0,5,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/camera-photos-videos',NULL,0,'Denim',NULL,'_self',0,'2024-02-23 18:23:32','2024-02-23 18:23:32'),(29,2,0,6,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/cellphones-accessories',NULL,0,'Dress',NULL,'_self',0,'2024-02-23 18:23:32','2024-02-23 18:23:32'),(30,3,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact Us',NULL,'_self',0,'2024-02-23 18:23:32','2024-02-23 18:23:32'),(31,3,0,8,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'About Us',NULL,'_self',0,'2024-02-23 18:23:32','2024-02-23 18:23:32'),(32,3,0,9,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2024-02-23 18:23:32','2024-02-23 18:23:32'),(33,3,0,10,'Botble\\Page\\Models\\Page','/returns-exchanges',NULL,0,'Returns & Exchanges',NULL,'_self',0,'2024-02-23 18:23:32','2024-02-23 18:23:32'),(34,3,0,11,'Botble\\Page\\Models\\Page','/shipping-delivery',NULL,0,'Shipping & Delivery',NULL,'_self',0,'2024-02-23 18:23:32','2024-02-23 18:23:32'),(35,3,0,12,'Botble\\Page\\Models\\Page','/privacy-policy',NULL,0,'Privacy Policy',NULL,'_self',0,'2024-02-23 18:23:32','2024-02-23 18:23:32');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-02-23 18:23:32','2024-02-23 18:23:32'),(2,'Product categories','product-categories','published','2024-02-23 18:23:32','2024-02-23 18:23:32'),(3,'Information','information','published','2024-02-23 18:23:32','2024-02-23 18:23:32');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'layout','[\"product-right-sidebar\"]',1,'Botble\\Ecommerce\\Models\\Product','2024-02-23 18:23:20','2024-02-23 18:23:20'),(2,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',1,'Botble\\Ecommerce\\Models\\Product','2024-02-23 18:23:20','2024-02-23 18:23:20'),(3,'layout','[\"product-left-sidebar\"]',2,'Botble\\Ecommerce\\Models\\Product','2024-02-23 18:23:20','2024-02-23 18:23:20'),(4,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',2,'Botble\\Ecommerce\\Models\\Product','2024-02-23 18:23:20','2024-02-23 18:23:20'),(5,'layout','[\"product-full-width\"]',3,'Botble\\Ecommerce\\Models\\Product','2024-02-23 18:23:20','2024-02-23 18:23:20'),(6,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',3,'Botble\\Ecommerce\\Models\\Product','2024-02-23 18:23:20','2024-02-23 18:23:20'),(7,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',4,'Botble\\Ecommerce\\Models\\Product','2024-02-23 18:23:20','2024-02-23 18:23:20'),(8,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',5,'Botble\\Ecommerce\\Models\\Product','2024-02-23 18:23:20','2024-02-23 18:23:20'),(9,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',6,'Botble\\Ecommerce\\Models\\Product','2024-02-23 18:23:20','2024-02-23 18:23:20'),(10,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',7,'Botble\\Ecommerce\\Models\\Product','2024-02-23 18:23:20','2024-02-23 18:23:20'),(11,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',8,'Botble\\Ecommerce\\Models\\Product','2024-02-23 18:23:20','2024-02-23 18:23:20'),(12,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',9,'Botble\\Ecommerce\\Models\\Product','2024-02-23 18:23:20','2024-02-23 18:23:20'),(13,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',10,'Botble\\Ecommerce\\Models\\Product','2024-02-23 18:23:20','2024-02-23 18:23:20'),(14,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',11,'Botble\\Ecommerce\\Models\\Product','2024-02-23 18:23:20','2024-02-23 18:23:20'),(15,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',12,'Botble\\Ecommerce\\Models\\Product','2024-02-23 18:23:20','2024-02-23 18:23:20'),(16,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',13,'Botble\\Ecommerce\\Models\\Product','2024-02-23 18:23:20','2024-02-23 18:23:20'),(17,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',14,'Botble\\Ecommerce\\Models\\Product','2024-02-23 18:23:20','2024-02-23 18:23:20'),(18,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',15,'Botble\\Ecommerce\\Models\\Product','2024-02-23 18:23:20','2024-02-23 18:23:20'),(19,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',16,'Botble\\Ecommerce\\Models\\Product','2024-02-23 18:23:20','2024-02-23 18:23:20'),(20,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',17,'Botble\\Ecommerce\\Models\\Product','2024-02-23 18:23:20','2024-02-23 18:23:20'),(21,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',18,'Botble\\Ecommerce\\Models\\Product','2024-02-23 18:23:20','2024-02-23 18:23:20'),(22,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',19,'Botble\\Ecommerce\\Models\\Product','2024-02-23 18:23:20','2024-02-23 18:23:20'),(23,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',20,'Botble\\Ecommerce\\Models\\Product','2024-02-23 18:23:20','2024-02-23 18:23:20'),(24,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',21,'Botble\\Ecommerce\\Models\\Product','2024-02-23 18:23:20','2024-02-23 18:23:20'),(25,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',22,'Botble\\Ecommerce\\Models\\Product','2024-02-23 18:23:20','2024-02-23 18:23:20'),(26,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',23,'Botble\\Ecommerce\\Models\\Product','2024-02-23 18:23:20','2024-02-23 18:23:20'),(27,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',24,'Botble\\Ecommerce\\Models\\Product','2024-02-23 18:23:20','2024-02-23 18:23:20'),(28,'subtitle','[\"Limited quantities.\"]',1,'Botble\\Ecommerce\\Models\\FlashSale','2024-02-23 18:23:25','2024-02-23 18:23:25'),(29,'image','[\"flash-sales\\/1.jpg\"]',1,'Botble\\Ecommerce\\Models\\FlashSale','2024-02-23 18:23:25','2024-02-23 18:23:25'),(30,'subtitle','[\"Computers & Laptop\"]',2,'Botble\\Ecommerce\\Models\\FlashSale','2024-02-23 18:23:25','2024-02-23 18:23:25'),(31,'image','[\"flash-sales\\/2.jpg\"]',2,'Botble\\Ecommerce\\Models\\FlashSale','2024-02-23 18:23:25','2024-02-23 18:23:25'),(32,'button_text','[\"Shop now\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-23 18:23:30','2024-02-23 18:23:30'),(33,'subtitle','[\"Trade-In Offer\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-23 18:23:30','2024-02-23 18:23:30'),(34,'highlight_text','[\"On All Products\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-23 18:23:30','2024-02-23 18:23:30'),(35,'button_text','[\"Discover now\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-23 18:23:30','2024-02-23 18:23:30'),(36,'subtitle','[\"Tech Promotions\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-23 18:23:30','2024-02-23 18:23:30'),(37,'highlight_text','[\"Great Collection\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-23 18:23:30','2024-02-23 18:23:30'),(38,'button_text','[\"Shop now\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-23 18:23:30','2024-02-23 18:23:30'),(39,'subtitle','[\"Upcoming Offer\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-23 18:23:30','2024-02-23 18:23:30'),(40,'highlight_text','[\"Manufacturer\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-23 18:23:30','2024-02-23 18:23:30'),(41,'simple_slider_style','[\"style-2\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSlider','2024-02-23 18:23:30','2024-02-23 18:23:30'),(42,'button_text','[\"Shop now\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-23 18:23:30','2024-02-23 18:23:30'),(43,'subtitle','[\"Trade-In Offer\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-23 18:23:30','2024-02-23 18:23:30'),(44,'highlight_text','[\"On All Products\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-23 18:23:30','2024-02-23 18:23:30'),(45,'button_text','[\"Discover now\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-23 18:23:30','2024-02-23 18:23:30'),(46,'subtitle','[\"Tech Promotions\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-23 18:23:30','2024-02-23 18:23:30'),(47,'highlight_text','[\"Great Collection\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-23 18:23:30','2024-02-23 18:23:30'),(48,'button_text','[\"Shop now\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-23 18:23:30','2024-02-23 18:23:30'),(49,'subtitle','[\"Upcoming Offer\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-23 18:23:30','2024-02-23 18:23:30'),(50,'highlight_text','[\"Manufacturer\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-23 18:23:30','2024-02-23 18:23:30'),(51,'simple_slider_style','[\"style-3\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSlider','2024-02-23 18:23:30','2024-02-23 18:23:30'),(52,'button_text','[\"Shop now\"]',7,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-23 18:23:30','2024-02-23 18:23:30'),(53,'subtitle','[\"Trade-In Offer\"]',7,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-23 18:23:30','2024-02-23 18:23:30'),(54,'highlight_text','[\"On All Products\"]',7,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-23 18:23:30','2024-02-23 18:23:30'),(55,'button_text','[\"Discover now\"]',8,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-23 18:23:30','2024-02-23 18:23:30'),(56,'subtitle','[\"Tech Promotions\"]',8,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-23 18:23:30','2024-02-23 18:23:30'),(57,'highlight_text','[\"Great Collection\"]',8,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-23 18:23:30','2024-02-23 18:23:30'),(58,'simple_slider_style','[\"style-4\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSlider','2024-02-23 18:23:30','2024-02-23 18:23:30'),(59,'button_text','[\"Shop now\"]',9,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-23 18:23:30','2024-02-23 18:23:30'),(60,'subtitle','[\"Trade-In Offer\"]',9,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-23 18:23:30','2024-02-23 18:23:30'),(61,'highlight_text','[\"On All Products\"]',9,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-23 18:23:30','2024-02-23 18:23:30'),(62,'button_text','[\"Discover now\"]',10,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-23 18:23:30','2024-02-23 18:23:30'),(63,'subtitle','[\"Tech Promotions\"]',10,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-23 18:23:30','2024-02-23 18:23:30'),(64,'highlight_text','[\"Great Collection\"]',10,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-23 18:23:30','2024-02-23 18:23:30'),(65,'button_text','[\"Shop now\"]',11,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-23 18:23:30','2024-02-23 18:23:30'),(66,'subtitle','[\"Upcoming Offer\"]',11,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-23 18:23:30','2024-02-23 18:23:30'),(67,'highlight_text','[\"Manufacturer\"]',11,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-23 18:23:30','2024-02-23 18:23:30'),(68,'expanding_product_categories_on_the_homepage','[\"yes\"]',2,'Botble\\Page\\Models\\Page','2024-02-23 18:23:31','2024-02-23 18:23:31'),(69,'button_text','[\"Shop now\"]',1,'Botble\\Ads\\Models\\Ads','2024-02-23 18:23:32','2024-02-23 18:23:32'),(70,'subtitle','[\"Save 20% on\\niPhone 12\"]',1,'Botble\\Ads\\Models\\Ads','2024-02-23 18:23:32','2024-02-23 18:23:32'),(71,'button_text','[\"Shop now\"]',2,'Botble\\Ads\\Models\\Ads','2024-02-23 18:23:32','2024-02-23 18:23:32'),(72,'subtitle','[\"Great Camera\\nCollection\"]',2,'Botble\\Ads\\Models\\Ads','2024-02-23 18:23:32','2024-02-23 18:23:32'),(73,'button_text','[\"Shop now\"]',3,'Botble\\Ads\\Models\\Ads','2024-02-23 18:23:32','2024-02-23 18:23:32'),(74,'subtitle','[\"Shop Today\\u2019s\\nDeals & Offers\"]',3,'Botble\\Ads\\Models\\Ads','2024-02-23 18:23:32','2024-02-23 18:23:32'),(75,'button_text','[\"Shop now\"]',4,'Botble\\Ads\\Models\\Ads','2024-02-23 18:23:32','2024-02-23 18:23:32'),(76,'subtitle','[\"Save 17% on\\nAssus Laptop\"]',4,'Botble\\Ads\\Models\\Ads','2024-02-23 18:23:32','2024-02-23 18:23:32'),(77,'button_text','[\"Shop now\"]',5,'Botble\\Ads\\Models\\Ads','2024-02-23 18:23:32','2024-02-23 18:23:32'),(78,'subtitle','[\"Save 20% on\\niPhone 12\"]',5,'Botble\\Ads\\Models\\Ads','2024-02-23 18:23:32','2024-02-23 18:23:32'),(79,'button_text','[\"Learn more\"]',6,'Botble\\Ads\\Models\\Ads','2024-02-23 18:23:32','2024-02-23 18:23:32'),(80,'subtitle','[\"We\'re an Apple\\nAuthorised Service Provider\"]',6,'Botble\\Ads\\Models\\Ads','2024-02-23 18:23:32','2024-02-23 18:23:32');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2021_08_02_084121_fix_old_shortcode',1),(17,'2022_04_20_100851_add_index_to_media_table',1),(18,'2022_04_20_101046_add_index_to_menu_table',1),(19,'2022_07_10_034813_move_lang_folder_to_root',1),(20,'2022_08_04_051940_add_missing_column_expires_at',1),(21,'2022_09_01_000001_create_admin_notifications_tables',1),(22,'2022_09_27_084829_fix_footer_widget',1),(23,'2022_10_14_024629_drop_column_is_featured',1),(24,'2022_10_28_030106_improve-newsletter-widget',1),(25,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(26,'2022_12_02_093615_update_slug_index_columns',1),(27,'2023_01_30_024431_add_alt_to_media_table',1),(28,'2023_02_16_042611_drop_table_password_resets',1),(29,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(30,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(31,'2023_08_21_090810_make_page_content_nullable',1),(32,'2023_09_14_021936_update_index_for_slugs_table',1),(33,'2023_12_06_100448_change_random_hash_for_media',1),(34,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(35,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(36,'2020_11_18_150916_ads_create_ads_table',2),(37,'2021_12_02_035301_add_ads_translations_table',2),(38,'2023_04_17_062645_add_open_in_new_tab',2),(39,'2023_11_07_023805_add_tablet_mobile_image',2),(40,'2015_06_29_025744_create_audit_history',3),(41,'2023_11_14_033417_change_request_column_in_table_audit_histories',3),(42,'2015_06_18_033822_create_blog_table',4),(43,'2021_02_16_092633_remove_default_value_for_author_type',4),(44,'2021_12_03_030600_create_blog_translations',4),(45,'2022_04_19_113923_add_index_to_table_posts',4),(46,'2023_08_29_074620_make_column_author_id_nullable',4),(47,'2016_06_17_091537_create_contacts_table',5),(48,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',5),(49,'2020_03_05_041139_create_ecommerce_tables',6),(50,'2021_01_01_044147_ecommerce_create_flash_sale_table',6),(51,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',6),(52,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',6),(53,'2021_02_18_073505_update_table_ec_reviews',6),(54,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',6),(55,'2021_03_10_025153_change_column_tax_amount',6),(56,'2021_03_20_033103_add_column_availability_to_table_ec_products',6),(57,'2021_04_28_074008_ecommerce_create_product_label_table',6),(58,'2021_05_31_173037_ecommerce_create_ec_products_translations',6),(59,'2021_08_17_105016_remove_column_currency_id_in_some_tables',6),(60,'2021_08_30_142128_add_images_column_to_ec_reviews_table',6),(61,'2021_10_04_030050_add_column_created_by_to_table_ec_products',6),(62,'2021_10_05_122616_add_status_column_to_ec_customers_table',6),(63,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',6),(64,'2021_11_23_071403_correct_languages_for_product_variations',6),(65,'2021_11_28_031808_add_product_tags_translations',6),(66,'2021_12_01_031123_add_featured_image_to_ec_products',6),(67,'2022_01_01_033107_update_table_ec_shipments',6),(68,'2022_02_16_042457_improve_product_attribute_sets',6),(69,'2022_03_22_075758_correct_product_name',6),(70,'2022_04_19_113334_add_index_to_ec_products',6),(71,'2022_04_28_144405_remove_unused_table',6),(72,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',6),(73,'2022_05_18_143720_add_index_to_table_ec_product_categories',6),(74,'2022_06_16_095633_add_index_to_some_tables',6),(75,'2022_06_30_035148_create_order_referrals_table',6),(76,'2022_07_24_153815_add_completed_at_to_ec_orders_table',6),(77,'2022_08_14_032836_create_ec_order_returns_table',6),(78,'2022_08_14_033554_create_ec_order_return_items_table',6),(79,'2022_08_15_040324_add_billing_address',6),(80,'2022_08_30_091114_support_digital_products_table',6),(81,'2022_09_13_095744_create_options_table',6),(82,'2022_09_13_104347_create_option_value_table',6),(83,'2022_10_05_163518_alter_table_ec_order_product',6),(84,'2022_10_12_041517_create_invoices_table',6),(85,'2022_10_12_142226_update_orders_table',6),(86,'2022_10_13_024916_update_table_order_returns',6),(87,'2022_10_21_030830_update_columns_in_ec_shipments_table',6),(88,'2022_10_28_021046_update_columns_in_ec_shipments_table',6),(89,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',6),(90,'2022_11_19_041643_add_ec_tax_product_table',6),(91,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',6),(92,'2022_12_17_041532_fix_address_in_order_invoice',6),(93,'2022_12_26_070329_create_ec_product_views_table',6),(94,'2023_01_04_033051_fix_product_categories',6),(95,'2023_01_09_050400_add_ec_global_options_translations_table',6),(96,'2023_01_10_093754_add_missing_option_value_id',6),(97,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',6),(98,'2023_01_26_021854_add_ec_customer_used_coupons_table',6),(99,'2023_02_08_015900_update_options_column_in_ec_order_product_table',6),(100,'2023_02_27_095752_remove_duplicate_reviews',6),(101,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',6),(102,'2023_04_21_082427_create_ec_product_categorizables_table',6),(103,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',6),(104,'2023_05_17_025812_fix_invoice_issue',6),(105,'2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields',6),(106,'2023_05_27_144611_fix_exchange_rate_setting',6),(107,'2023_06_22_084331_add_generate_license_code_to_ec_products_table',6),(108,'2023_06_30_042512_create_ec_order_tax_information_table',6),(109,'2023_07_14_022724_remove_column_id_from_ec_product_collection_products',6),(110,'2023_08_09_012940_remove_column_status_in_ec_product_attributes',6),(111,'2023_08_15_064505_create_ec_tax_rules_table',6),(112,'2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable',6),(113,'2023_08_22_094114_drop_unique_for_barcode',6),(114,'2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table',6),(115,'2023_09_07_094312_add_index_to_product_sku_and_translations',6),(116,'2023_09_19_024955_create_discount_product_categories_table',6),(117,'2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table',6),(118,'2023_11_22_154643_add_unique_in_table_ec_products_variations',6),(119,'2023_11_27_032313_add_price_columns_to_ec_product_cross_sale_relations_table',6),(120,'2023_12_06_023945_add_display_on_checkout_column_to_ec_discounts_table',6),(121,'2023_12_25_040604_ec_create_review_replies_table',6),(122,'2023_12_26_090340_add_private_notes_column_to_ec_customers_table',6),(123,'2024_01_16_070706_fix_translation_tables',6),(124,'2024_01_23_075227_add_proof_file_to_ec_orders_table',6),(125,'2018_07_09_221238_create_faq_table',7),(126,'2021_12_03_082134_create_faq_translations',7),(127,'2023_11_17_063408_add_description_column_to_faq_categories_table',7),(128,'2016_10_03_032336_create_languages_table',8),(129,'2023_09_14_022423_add_index_for_language_table',8),(130,'2021_10_25_021023_fix-priority-load-for-language-advanced',9),(131,'2021_12_03_075608_create_page_translations',9),(132,'2023_07_06_011444_create_slug_translations_table',9),(133,'2019_11_18_061011_create_country_table',10),(134,'2021_12_03_084118_create_location_translations',10),(135,'2021_12_03_094518_migrate_old_location_data',10),(136,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',10),(137,'2022_01_16_085908_improve_plugin_location',10),(138,'2022_08_04_052122_delete_location_backup_tables',10),(139,'2023_04_23_061847_increase_state_translations_abbreviation_column',10),(140,'2023_07_26_041451_add_more_columns_to_location_table',10),(141,'2023_07_27_041451_add_more_columns_to_location_translation_table',10),(142,'2023_08_15_073307_drop_unique_in_states_cities_translations',10),(143,'2023_10_21_065016_make_state_id_in_table_cities_nullable',10),(144,'2017_10_24_154832_create_newsletter_table',11),(145,'2017_05_18_080441_create_payment_tables',12),(146,'2021_03_27_144913_add_customer_type_into_table_payments',12),(147,'2021_05_24_034720_make_column_currency_nullable',12),(148,'2021_08_09_161302_add_metadata_column_to_payments_table',12),(149,'2021_10_19_020859_update_metadata_field',12),(150,'2022_06_28_151901_activate_paypal_stripe_plugin',12),(151,'2022_07_07_153354_update_charge_id_in_table_payments',12),(152,'2017_07_11_140018_create_simple_slider_table',13),(153,'2016_10_07_193005_create_translations_table',14),(154,'2023_12_12_105220_drop_translations_table',14);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage','<div>[simple-slider key=\"home-slider-1\" is_autoplay=\"yes\" autoplay_speed=\"5000\"][/simple-slider]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Free Shipping\" subtitle1=\"Orders $50 or more\" icon2=\"general/icon-purchase.png\" title2=\"Free Returns\" subtitle2=\"Within 30 days\" icon3=\"general/icon-bag.png\" title3=\"Get 20% Off 1 Item\" subtitle3=\"When you sign up\" icon4=\"general/icon-operator.png\" title4=\"Support Center\" subtitle4=\"24/7 amazing services\"][/site-features]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[featured-brands title=\"Featured Brands\"][/featured-brands]</div><div>[product-category-products category_id=\"12\"][/product-category-products]</div><div>[featured-news title=\"Visit Our Blog\"][/featured-news]</div>',1,NULL,'homepage',NULL,'published','2024-02-23 18:23:31','2024-02-23 18:23:31'),(2,'Homepage 2','<div>[simple-slider key=\"home-slider-2\" is_autoplay=\"yes\" autoplay_speed=\"5000\"][/simple-slider]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYF\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[featured-brands title=\"Featured Brands\"][/featured-brands]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[product-category-products category_id=\"12\"][/product-category-products]</div><div>[featured-news title=\"Visit Our Blog\"][/featured-news]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Free Shipping\" subtitle1=\"Orders $50 or more\" icon2=\"general/icon-purchase.png\" title2=\"Free Returns\" subtitle2=\"Within 30 days\" icon3=\"general/icon-bag.png\" title3=\"Get 20% Off 1 Item\" subtitle3=\"When you sign up\" icon4=\"general/icon-operator.png\" title4=\"Support Center\" subtitle4=\"24/7 amazing services\"][/site-features]</div>',1,NULL,'homepage',NULL,'published','2024-02-23 18:23:31','2024-02-23 18:23:31'),(3,'Homepage 3','<div>[simple-slider key=\"home-slider-3\" ads_1=\"ILSDKVYFGXPJ\" ads_2=\"IZ6WU8KUALYE\" is_autoplay=\"yes\" autoplay_speed=\"5000\"][/simple-slider]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Free Shipping\" subtitle1=\"Orders $50 or more\" icon2=\"general/icon-purchase.png\" title2=\"Free Returns\" subtitle2=\"Within 30 days\" icon3=\"general/icon-bag.png\" title3=\"Get 20% Off 1 Item\" subtitle3=\"When you sign up\" icon4=\"general/icon-operator.png\" title4=\"Support Center\" subtitle4=\"24/7 amazing services\"][/site-features]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYF\"][/theme-ads]</div><div>[featured-brands title=\"Featured Brands\"][/featured-brands]</div><div>[product-category-products category_id=\"12\"][/product-category-products]</div><div>[featured-news title=\"Visit Our Blog\"][/featured-news]</div>',1,NULL,'homepage',NULL,'published','2024-02-23 18:23:31','2024-02-23 18:23:31'),(4,'Homepage 4','<div>[simple-slider key=\"home-slider-4\" is_autoplay=\"yes\" autoplay_speed=\"5000\"][/simple-slider]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Free Shipping\" subtitle1=\"Orders $50 or more\" icon2=\"general/icon-purchase.png\" title2=\"Free Returns\" subtitle2=\"Within 30 days\" icon3=\"general/icon-bag.png\" title3=\"Get 20% Off 1 Item\" subtitle3=\"When you sign up\" icon4=\"general/icon-operator.png\" title4=\"Support Center\" subtitle4=\"24/7 amazing services\"][/site-features]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYF\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[featured-brands title=\"Featured Brands\"][/featured-brands]</div><div>[product-category-products category_id=\"12\"][/product-category-products]</div><div>[featured-news title=\"Visit Our Blog\"][/featured-news]</div>',1,NULL,'homepage',NULL,'published','2024-02-23 18:23:31','2024-02-23 18:23:31'),(5,'Blog','<p>---</p>',1,NULL,'blog-right-sidebar',NULL,'published','2024-02-23 18:23:31','2024-02-23 18:23:31'),(6,'Contact','<p>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</p><p>[our-offices][/our-offices]</p><p>[contact-form][/contact-form]</p>',1,NULL,'default',NULL,'published','2024-02-23 18:23:31','2024-02-23 18:23:31'),(7,'About us','<p>Hatter: \'it\'s very rude.\' The Hatter looked at poor Alice, \'it would have made a rush at Alice for some way, and then dipped suddenly down, so suddenly that Alice quite jumped; but she thought it would be so proud as all that.\' \'With extras?\' asked the Gryphon, \'that they WOULD put their heads off?\' shouted the Queen. \'I never went to the beginning again?\' Alice ventured to ask. \'Suppose we change the subject of conversation. While she was now about a foot high: then she had never had to be.</p><p>Alice\'s shoulder, and it was indeed: she was in a large canvas bag, which tied up at the White Rabbit, jumping up and down in a minute or two the Caterpillar took the thimble, looking as solemn as she could, and waited till the eyes appeared, and then treading on my tail. See how eagerly the lobsters to the game. CHAPTER IX. The Mock Turtle said: \'no wise fish would go round a deal too far off to trouble myself about you: you must manage the best plan.\' It sounded an excellent plan, no doubt.</p><p>Dinah, if I might venture to go from here?\' \'That depends a good deal until she had to sing you a song?\' \'Oh, a song, please, if the Mock Turtle Soup is made from,\' said the Cat, as soon as she spoke, but no result seemed to be seen: she found herself safe in a hoarse growl, \'the world would go through,\' thought poor Alice, who was beginning to think about stopping herself before she had expected: before she gave one sharp kick, and waited till she was holding, and she could not be denied, so.</p><p>Alice was not a regular rule: you invented it just grazed his nose, you know?\' \'It\'s the stupidest tea-party I ever was at in all my limbs very supple By the use of repeating all that green stuff be?\' said Alice. \'It must be getting somewhere near the door that led into a line along the sea-shore--\' \'Two lines!\' cried the Mock Turtle recovered his voice, and, with tears again as she couldn\'t answer either question, it didn\'t much matter which way it was in the world! Oh, my dear Dinah! I.</p>',1,NULL,'default',NULL,'published','2024-02-23 18:23:31','2024-02-23 18:23:31'),(8,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2024-02-23 18:23:31','2024-02-23 18:23:31'),(9,'Terms &amp; Conditions','<p>ME, and told me he was obliged to say \'I once tasted--\' but checked herself hastily, and said \'No, never\') \'--so you can have no notion how delightful it will be the right way to change the subject,\' the March Hare. \'It was the first to speak. \'What size do you like the name: however, it only grinned when it saw mine coming!\' \'How do you like the look of the table, but it puzzled her too much, so she began thinking over all she could not answer without a moment\'s pause. The only things in the.</p><p>Gryphon. \'The reason is,\' said the King. Here one of the way--\' \'THAT generally takes some time,\' interrupted the Gryphon. \'They can\'t have anything to put everything upon Bill! I wouldn\'t say anything about it, so she tried the little golden key was too late to wish that! She went on again:-- \'I didn\'t know that Cheshire cats always grinned; in fact, I didn\'t know how to spell \'stupid,\' and that in the house, \"Let us both go to law: I will just explain to you to death.\"\' \'You are all dry, he.</p><p>Mock Turtle with a T!\' said the Hatter. \'You might just as if he were trying to box her own child-life, and the baby--the fire-irons came first; then followed a shower of saucepans, plates, and dishes. The Duchess took no notice of her hedgehog. The hedgehog was engaged in a great deal of thought, and looked at it again: but he would deny it too: but the great hall, with the distant sobs of the month, and doesn\'t tell what o\'clock it is!\' As she said this, she noticed that one of the lefthand.</p><p>KNOW IT TO BE TRUE--\" that\'s the queerest thing about it.\' (The jury all brightened up at the flowers and those cool fountains, but she had found the fan and two or three pairs of tiny white kid gloves, and was gone across to the heads of the Shark, But, when the Rabbit noticed Alice, as the other.\' As soon as the other.\' As soon as she added, to herself, (not in a tone of great surprise. \'Of course twinkling begins with an important air, \'are you all ready? This is the same size for going.</p>',1,NULL,'default',NULL,'published','2024-02-23 18:23:31','2024-02-23 18:23:31'),(10,'Returns &amp; Exchanges','<p>March Hare. Alice sighed wearily. \'I think you could only hear whispers now and then, if I only knew how to get rather sleepy, and went stamping about, and crept a little way off, panting, with its mouth and began whistling. \'Oh, there\'s no harm in trying.\' So she tucked her arm affectionately into Alice\'s, and they went up to her head, and she went in without knocking, and hurried upstairs, in great fear lest she should meet the real Mary Ann, and be turned out of their hearing her; and when.</p><p>This time there were no tears. \'If you\'re going to leave it behind?\' She said this she looked down, was an old conger-eel, that used to say.\' \'So he did, so he with his head!\' she said, \'and see whether it\'s marked \"poison\" or not\'; for she was walking by the hedge!\' then silence, and then added them up, and began to cry again. \'You ought to be a comfort, one way--never to be sure, this generally happens when you throw them, and then another confusion of voices--\'Hold up his head--Brandy.</p><p>Lory, with a large canvas bag, which tied up at the flowers and the soldiers remaining behind to execute the unfortunate gardeners, who ran to Alice a little timidly, \'why you are very dull!\' \'You ought to be sure; but I grow at a reasonable pace,\' said the Lory hastily. \'I thought it must be the right height to rest her chin upon Alice\'s shoulder, and it was done. They had not the smallest notice of them say, \'Look out now, Five! Don\'t go splashing paint over me like a tunnel for some time.</p><p>Alice went on without attending to her, so she felt that it felt quite unhappy at the window, and some were birds,) \'I suppose so,\' said Alice. \'I\'m glad they don\'t give birthday presents like that!\' By this time she found herself safe in a low trembling voice, \'--and I hadn\'t gone down that rabbit-hole--and yet--and yet--it\'s rather curious, you know, this sort in her hands, and was going to remark myself.\' \'Have you guessed the riddle yet?\' the Hatter added as an explanation; \'I\'ve none of.</p>',1,NULL,'default',NULL,'published','2024-02-23 18:23:31','2024-02-23 18:23:31'),(11,'Shipping &amp; Delivery','<p>English coast you find a thing,\' said the last concert!\' on which the wretched Hatter trembled so, that Alice had begun to repeat it, but her head down to her that she might as well say,\' added the Queen. \'Their heads are gone, if it thought that SOMEBODY ought to be seen--everything seemed to rise like a snout than a pig, my dear,\' said Alice, \'we learned French and music.\' \'And washing?\' said the Hatter. \'You MUST remember,\' remarked the King, looking round the refreshments!\' But there.</p><p>For, you see, as they lay sprawling about, reminding her very much pleased at having found out that one of them say, \'Look out now, Five! Don\'t go splashing paint over me like a snout than a pig, and she trembled till she too began dreaming after a pause: \'the reason is, that I\'m doubtful about the games now.\' CHAPTER X. The Lobster Quadrille The Mock Turtle had just begun to repeat it, but her head made her draw back in a hurry: a large one, but the Dodo solemnly presented the thimble.</p><p>Dodo. Then they both sat silent and looked along the course, here and there she saw them, they were nowhere to be sure; but I hadn\'t drunk quite so much!\' Alas! it was all very well without--Maybe it\'s always pepper that makes them sour--and camomile that makes them sour--and camomile that makes them sour--and camomile that makes them sour--and camomile that makes you forget to talk. I can\'t see you?\' She was a child,\' said the Caterpillar; and it set to work very carefully, with one foot.</p><p>I only wish it was,\' he said. (Which he certainly did NOT, being made entirely of cardboard.) \'All right, so far,\' thought Alice, \'it\'ll never do to ask: perhaps I shall have to fly; and the Mock Turtle sighed deeply, and began, in a deep, hollow tone: \'sit down, both of you, and don\'t speak a word till I\'ve finished.\' So they got thrown out to the shore. CHAPTER III. A Caucus-Race and a sad tale!\' said the King. The White Rabbit with pink eyes ran close by it, and fortunately was just in time.</p>',1,NULL,'default',NULL,'published','2024-02-23 18:23:31','2024-02-23 18:23:31'),(12,'Privacy Policy','<p>But they HAVE their tails in their mouths. So they couldn\'t get them out again. That\'s all.\' \'Thank you,\' said the Mock Turtle. \'Certainly not!\' said Alice indignantly. \'Ah! then yours wasn\'t a bit afraid of it. Presently the Rabbit came near her, about the same thing as a boon, Was kindly permitted to pocket the spoon: While the Owl and the Mock Turtle would be quite absurd for her neck kept getting entangled among the distant sobs of the sort,\' said the King. The White Rabbit read out, at.</p><p>WAS a curious plan!\' exclaimed Alice. \'That\'s the reason so many different sizes in a day did you do lessons?\' said Alice, very much at this, she was now more than nine feet high. \'I wish I had to fall upon Alice, as she had put the Lizard in head downwards, and the procession moved on, three of the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Gryphon, \'you first form into a tree. By the use of repeating all that green stuff be?\' said Alice. \'I\'ve tried the effect of.</p><p>Alice ventured to remark. \'Tut, tut, child!\' said the Queen. \'Never!\' said the Dodo could not think of any use, now,\' thought poor Alice, \'when one wasn\'t always growing larger and smaller, and being ordered about in the act of crawling away: besides all this, there was a body to cut it off from: that he shook his head contemptuously. \'I dare say you never even introduced to a mouse: she had not got into the garden door. Poor Alice! It was high time to begin at HIS time of life. The King\'s.</p><p>In a little more conversation with her head!\' the Queen ordering off her unfortunate guests to execution--once more the shriek of the trees upon her arm, with its mouth and yawned once or twice, half hoping that the meeting adjourn, for the hedgehogs; and in a confused way, \'Prizes! Prizes!\' Alice had got so much frightened to say \"HOW DOTH THE LITTLE BUSY BEE,\" but it is.\' \'I quite agree with you,\' said the Mouse was speaking, and this was her dream:-- First, she tried another question. \'What.</p>',1,NULL,'default',NULL,'published','2024-02-23 18:23:31','2024-02-23 18:23:31'),(13,'Blog Left Sidebar','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-left-sidebar',NULL,'published','2024-02-23 18:23:31','2024-02-23 18:23:31'),(14,'FAQ','<div>[faqs][/faqs]</div>',1,NULL,'default',NULL,'published','2024-02-23 18:23:31','2024-02-23 18:23:31');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'USD',0,'NPHQQ3UFHR','paystack',NULL,1289.00,1,'completed','confirm',2,NULL,NULL,'2024-02-23 18:23:25','2024-02-23 18:23:25','Botble\\Ecommerce\\Models\\Customer',NULL),(2,'USD',0,'O7NAGUKSRO','stripe',NULL,1057.00,2,'completed','confirm',7,NULL,NULL,'2024-02-23 18:23:26','2024-02-23 18:23:26','Botble\\Ecommerce\\Models\\Customer',NULL),(3,'USD',0,'7IVX9IDLVE','mollie',NULL,1346.00,3,'completed','confirm',8,NULL,NULL,'2024-02-23 18:23:26','2024-02-23 18:23:26','Botble\\Ecommerce\\Models\\Customer',NULL),(4,'USD',0,'4EYESILZZF','cod',NULL,1201.00,4,'pending','confirm',10,NULL,NULL,'2024-02-23 18:23:26','2024-02-23 18:23:26','Botble\\Ecommerce\\Models\\Customer',NULL),(5,'USD',0,'ZJKXAZOZ50','cod',NULL,663.00,5,'pending','confirm',4,NULL,NULL,'2024-02-23 18:23:26','2024-02-23 18:23:26','Botble\\Ecommerce\\Models\\Customer',NULL),(6,'USD',0,'PM0BH5OCRK','mollie',NULL,1352.00,6,'completed','confirm',1,NULL,NULL,'2024-02-23 18:23:26','2024-02-23 18:23:26','Botble\\Ecommerce\\Models\\Customer',NULL),(7,'USD',0,'D6UFSUEHL5','paystack',NULL,1875.00,7,'completed','confirm',6,NULL,NULL,'2024-02-23 18:23:27','2024-02-23 18:23:27','Botble\\Ecommerce\\Models\\Customer',NULL),(8,'USD',0,'TRVOXD7THJ','stripe',NULL,556.00,8,'completed','confirm',3,NULL,NULL,'2024-02-23 18:23:27','2024-02-23 18:23:27','Botble\\Ecommerce\\Models\\Customer',NULL),(9,'USD',0,'OKN6S5RDXS','razorpay',NULL,351.00,9,'completed','confirm',4,NULL,NULL,'2024-02-23 18:23:27','2024-02-23 18:23:27','Botble\\Ecommerce\\Models\\Customer',NULL),(10,'USD',0,'FLCLMGKBSJ','mollie',NULL,752.00,10,'completed','confirm',7,NULL,NULL,'2024-02-23 18:23:27','2024-02-23 18:23:27','Botble\\Ecommerce\\Models\\Customer',NULL),(11,'USD',0,'UCYNTYPNP1','razorpay',NULL,583.00,11,'completed','confirm',1,NULL,NULL,'2024-02-23 18:23:27','2024-02-23 18:23:27','Botble\\Ecommerce\\Models\\Customer',NULL),(12,'USD',0,'CW6LSP8ESC','bank_transfer',NULL,472.00,12,'pending','confirm',5,NULL,NULL,'2024-02-23 18:23:27','2024-02-23 18:23:27','Botble\\Ecommerce\\Models\\Customer',NULL),(13,'USD',0,'CSIASJJBAJ','stripe',NULL,1271.00,13,'completed','confirm',7,NULL,NULL,'2024-02-23 18:23:28','2024-02-23 18:23:28','Botble\\Ecommerce\\Models\\Customer',NULL),(14,'USD',0,'15CIFOMHET','bank_transfer',NULL,2021.00,14,'pending','confirm',9,NULL,NULL,'2024-02-23 18:23:28','2024-02-23 18:23:28','Botble\\Ecommerce\\Models\\Customer',NULL),(15,'USD',0,'NBEYRCNQJA','paypal',NULL,1461.00,15,'completed','confirm',10,NULL,NULL,'2024-02-23 18:23:28','2024-02-23 18:23:28','Botble\\Ecommerce\\Models\\Customer',NULL),(16,'USD',0,'V6UXRCJSHH','paystack',NULL,1278.00,16,'completed','confirm',4,NULL,NULL,'2024-02-23 18:23:28','2024-02-23 18:23:28','Botble\\Ecommerce\\Models\\Customer',NULL),(17,'USD',0,'H17NAXVG4L','paystack',NULL,920.00,17,'completed','confirm',8,NULL,NULL,'2024-02-23 18:23:28','2024-02-23 18:23:28','Botble\\Ecommerce\\Models\\Customer',NULL),(18,'USD',0,'L71WOUMHRT','paystack',NULL,1853.00,18,'completed','confirm',1,NULL,NULL,'2024-02-23 18:23:28','2024-02-23 18:23:28','Botble\\Ecommerce\\Models\\Customer',NULL),(19,'USD',0,'GNERNS3LRL','razorpay',NULL,638.00,19,'completed','confirm',8,NULL,NULL,'2024-02-23 18:23:29','2024-02-23 18:23:29','Botble\\Ecommerce\\Models\\Customer',NULL),(20,'USD',0,'UCXPHQN2TU','paypal',NULL,504.00,20,'completed','confirm',4,NULL,NULL,'2024-02-23 18:23:29','2024-02-23 18:23:29','Botble\\Ecommerce\\Models\\Customer',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
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
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,1),(4,1),(2,2),(3,2),(1,3),(4,3),(2,4),(3,4),(2,5),(3,5),(1,6),(3,6),(1,7),(4,7),(1,8),(4,8),(1,9),(4,9),(2,10),(4,10),(1,11),(3,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,2),(2,2),(3,2),(4,2),(5,2),(1,3),(2,3),(3,3),(4,3),(5,3),(1,4),(2,4),(3,4),(4,4),(5,4),(1,5),(2,5),(3,5),(4,5),(5,5),(1,6),(2,6),(3,6),(4,6),(5,6),(1,7),(2,7),(3,7),(4,7),(5,7),(1,8),(2,8),(3,8),(4,8),(5,8),(1,9),(2,9),(3,9),(4,9),(5,9),(1,10),(2,10),(3,10),(4,10),(5,10),(1,11),(2,11),(3,11),(4,11),(5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',974,NULL,'2024-02-23 18:23:31','2024-02-23 18:23:31'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',1073,NULL,'2024-02-23 18:23:31','2024-02-23 18:23:31'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',655,NULL,'2024-02-23 18:23:31','2024-02-23 18:23:31'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n[featured-products title=\"Shop The Look\" limit=\"6\"][/featured-products]\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',384,NULL,'2024-02-23 18:23:31','2024-02-23 18:23:31'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',1502,NULL,'2024-02-23 18:23:31','2024-02-23 18:23:31'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',1136,NULL,'2024-02-23 18:23:31','2024-02-23 18:23:31'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',632,NULL,'2024-02-23 18:23:31','2024-02-23 18:23:31'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',632,NULL,'2024-02-23 18:23:31','2024-02-23 18:23:31'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',2451,NULL,'2024-02-23 18:23:31','2024-02-23 18:23:31'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.jpg',956,NULL,'2024-02-23 18:23:31','2024-02-23 18:23:31'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',659,NULL,'2024-02-23 18:23:31','2024-02-23 18:23:31');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.manage.license\":true,\"extensions.index\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.cronjob\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"plugins.captcha\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.settings\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"shipping_methods.index\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.general\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"location.bulk-import.index\":true,\"location.export.index\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true}','Admin users role',1,2,2,'2024-02-23 18:23:32','2024-02-23 18:23:32');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (2,'api_enabled','0',NULL,'2024-02-23 18:23:32'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"newsletter\",\"payment\",\"paypal\",\"paystack\",\"razorpay\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"translation\"]',NULL,'2024-02-23 18:23:32'),(8,'language_hide_default','1',NULL,'2024-02-23 18:23:32'),(10,'language_display','all',NULL,'2024-02-23 18:23:32'),(11,'language_hide_languages','[]',NULL,'2024-02-23 18:23:32'),(12,'ecommerce_store_name','Wowy',NULL,NULL),(13,'ecommerce_store_phone','18006268',NULL,NULL),(14,'ecommerce_store_address','North Link Building, 10 Admiralty Street',NULL,NULL),(15,'ecommerce_store_state','Singapore',NULL,NULL),(16,'ecommerce_store_city','Singapore',NULL,NULL),(17,'ecommerce_store_country','SG',NULL,NULL),(18,'media_random_hash','5696851a4fd13cacebfd9845a548415a',NULL,NULL),(19,'payment_cod_status','1',NULL,NULL),(20,'payment_bank_transfer_status','1',NULL,NULL),(22,'show_admin_bar','1',NULL,NULL),(23,'language_switcher_display','dropdown',NULL,NULL),(26,'permalink-botble-blog-models-post','blog',NULL,NULL),(27,'permalink-botble-blog-models-category','blog',NULL,NULL),(28,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,NULL),(29,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,NULL),(30,'payment_stripe_payment_type','stripe_checkout',NULL,NULL),(31,'plugins_ecommerce_customer_new_order_status','0',NULL,NULL),(32,'plugins_ecommerce_admin_new_order_status','0',NULL,NULL),(33,'ecommerce_is_enabled_support_digital_products','1',NULL,NULL),(34,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,NULL),(35,'payment_bank_transfer_display_bank_info_at_the_checkout_success_page','1',NULL,NULL),(36,'ecommerce_product_sku_format','WW-2443-[%S]',NULL,NULL),(37,'theme','wowy',NULL,NULL),(38,'admin_favicon','general/favicon.png',NULL,NULL),(39,'admin_logo','general/logo-light.png',NULL,NULL),(40,'theme-wowy-site_title','Wowy - Laravel Multipurpose eCommerce Script',NULL,NULL),(41,'theme-wowy-copyright','Copyright © 2024 Wowy all rights reserved. Powered by Botble.',NULL,NULL),(42,'theme-wowy-favicon','general/favicon.png',NULL,NULL),(43,'theme-wowy-logo','general/logo.png',NULL,NULL),(44,'theme-wowy-logo_light','general/logo-light.png',NULL,NULL),(45,'theme-wowy-seo_og_image','general/open-graph-image.png',NULL,NULL),(46,'theme-wowy-seo_description','Wowy is an outstanding eCommerce Laravel script. It will be the perfect solution for your current or future web shop.',NULL,NULL),(47,'theme-wowy-address','562 Wellington Road, Street 32, San Francisco',NULL,NULL),(48,'theme-wowy-hotline','1900 - 888',NULL,NULL),(49,'theme-wowy-phone','+01 2222 365 /(+91) 01 2345 6789',NULL,NULL),(50,'theme-wowy-contact_email','sale@wowy.com',NULL,NULL),(51,'theme-wowy-working_hours','10:00 - 18:00, Mon - Sat',NULL,NULL),(52,'theme-wowy-homepage_id','1',NULL,NULL),(53,'theme-wowy-blog_page_id','5',NULL,NULL),(54,'theme-wowy-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(55,'theme-wowy-cookie_consent_learn_more_url','https://wowy.test/cookie-policy',NULL,NULL),(56,'theme-wowy-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(57,'theme-wowy-number_of_cross_sale_product','4',NULL,NULL),(58,'theme-wowy-preloader_enabled','yes',NULL,NULL),(59,'theme-wowy-preloader_version','v2',NULL,NULL),(60,'theme-wowy-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"fab fa-facebook-f\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"},{\"key\":\"social-color\",\"value\":\"#3b5999\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"fab fa-twitter\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"},{\"key\":\"social-color\",\"value\":\"#55ACF9\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"fab fa-instagram\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"},{\"key\":\"social-color\",\"value\":\"#E1306C\"}],[{\"key\":\"social-name\",\"value\":\"Linkedin\"},{\"key\":\"social-icon\",\"value\":\"fab fa-linkedin\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.linkedin.com\\/\"},{\"key\":\"social-color\",\"value\":\"#007bb6\"}],[{\"key\":\"social-name\",\"value\":\"Pinterest\"},{\"key\":\"social-icon\",\"value\":\"fab fa-pinterest\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"},{\"key\":\"social-color\",\"value\":\"#cb2027\"}]]',NULL,NULL),(61,'theme-wowy-header_messages','[[{\"key\":\"icon\",\"value\":\"fa fa-bell\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-success\\\"> Trendy 25<\\/b> silver jewelry, save up 35% off today\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Shop now\"}],[{\"key\":\"icon\",\"value\":\"fa fa-asterisk\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-danger\\\">Supper Value Deals<\\/b> - Save more with coupons\"},{\"key\":\"link\",\"value\":null},{\"key\":\"link_text\",\"value\":null}],[{\"key\":\"icon\",\"value\":\"fa fa-angle-double-right\"},{\"key\":\"message\",\"value\":\"Get great devices up to 50% off\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"View details\"}]]',NULL,NULL),(62,'theme-wowy-contact_info_boxes','[[{\"key\":\"name\",\"value\":\"Head Office\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"office@botble.com\"}],[{\"key\":\"name\",\"value\":\"Our Studio\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"studio@botble.com\"}],[{\"key\":\"name\",\"value\":\"Our Shop\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"shop@botble.com\"}]]',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Super Value Deals','sliders/1-1.png','/products','Save more with coupons &amp; up to 70% off',1,'2024-02-23 18:23:30','2024-02-23 18:23:30'),(2,1,'Tech Trending','sliders/1-2.png','/products','Save more with coupons &amp; up to 20% off',2,'2024-02-23 18:23:30','2024-02-23 18:23:30'),(3,1,'Big Deals From','sliders/1-3.png','/products','Headphone, Gaming Laptop, PC and more...',3,'2024-02-23 18:23:30','2024-02-23 18:23:30'),(4,2,'Super Value Deals','sliders/2-1.png','/products','Save more with coupons &amp; up to 70% off',1,'2024-02-23 18:23:30','2024-02-23 18:23:30'),(5,2,'Tech Trending','sliders/2-2.png','/products','Save more with coupons &amp; up to 20% off',2,'2024-02-23 18:23:30','2024-02-23 18:23:30'),(6,2,'Big Deals From','sliders/2-3.png','/products','Headphone, Gaming Laptop, PC and more...',3,'2024-02-23 18:23:30','2024-02-23 18:23:30'),(7,3,'Super Value Deals','sliders/3-1.png','/products','Save more with coupons &amp; up to 70% off',1,'2024-02-23 18:23:30','2024-02-23 18:23:30'),(8,3,'Tech Trending','sliders/3-2.png','/products','Save more with coupons &amp; up to 20% off',2,'2024-02-23 18:23:30','2024-02-23 18:23:30'),(9,4,'Super Value Deals','sliders/4-1.png','/products','Save more with coupons &amp; up to 70% off',1,'2024-02-23 18:23:30','2024-02-23 18:23:30'),(10,4,'Tech Trending','sliders/4-2.png','/products','Save more with coupons &amp; up to 20% off',2,'2024-02-23 18:23:30','2024-02-23 18:23:30'),(11,4,'Big Deals From','sliders/4-3.png','/products','Headphone, Gaming Laptop, PC and more...',3,'2024-02-23 18:23:30','2024-02-23 18:23:30');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider 1','home-slider-1',NULL,'published','2024-02-23 18:23:30','2024-02-23 18:23:30'),(2,'Home slider 2','home-slider-2',NULL,'published','2024-02-23 18:23:30','2024-02-23 18:23:30'),(3,'Home slider 3','home-slider-3',NULL,'published','2024-02-23 18:23:30','2024-02-23 18:23:30'),(4,'Home slider 4','home-slider-4',NULL,'published','2024-02-23 18:23:30','2024-02-23 18:23:30');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'perxsion',1,'Botble\\Ecommerce\\Models\\Brand','brands','2024-02-23 18:23:15','2024-02-23 18:23:15'),(2,'hiching',2,'Botble\\Ecommerce\\Models\\Brand','brands','2024-02-23 18:23:15','2024-02-23 18:23:15'),(3,'kepslo',3,'Botble\\Ecommerce\\Models\\Brand','brands','2024-02-23 18:23:15','2024-02-23 18:23:15'),(4,'groneba',4,'Botble\\Ecommerce\\Models\\Brand','brands','2024-02-23 18:23:15','2024-02-23 18:23:15'),(5,'babian',5,'Botble\\Ecommerce\\Models\\Brand','brands','2024-02-23 18:23:15','2024-02-23 18:23:15'),(6,'valorant',6,'Botble\\Ecommerce\\Models\\Brand','brands','2024-02-23 18:23:15','2024-02-23 18:23:15'),(7,'pure',7,'Botble\\Ecommerce\\Models\\Brand','brands','2024-02-23 18:23:15','2024-02-23 18:23:15'),(8,'hot-promotions',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-23 18:23:16','2024-02-23 18:23:16'),(9,'electronics',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-23 18:23:16','2024-02-23 18:23:16'),(10,'home-audio-theaters',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-23 18:23:16','2024-02-23 18:23:16'),(11,'tv-videos',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-23 18:23:16','2024-02-23 18:23:16'),(12,'camera-photos-videos',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-23 18:23:16','2024-02-23 18:23:16'),(13,'cellphones-accessories',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-23 18:23:16','2024-02-23 18:23:16'),(14,'headphones',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-23 18:23:16','2024-02-23 18:23:16'),(15,'videos-games',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-23 18:23:16','2024-02-23 18:23:16'),(16,'wireless-speakers',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-23 18:23:16','2024-02-23 18:23:16'),(17,'office-electronic',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-23 18:23:16','2024-02-23 18:23:16'),(18,'clothing',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-23 18:23:16','2024-02-23 18:23:16'),(19,'computers',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-23 18:23:16','2024-02-23 18:23:16'),(20,'computer-tablets',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-23 18:23:16','2024-02-23 18:23:16'),(21,'laptop',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-23 18:23:16','2024-02-23 18:23:16'),(22,'monitors',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-23 18:23:16','2024-02-23 18:23:16'),(23,'computer-components',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-23 18:23:16','2024-02-23 18:23:16'),(24,'home-kitchen',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-23 18:23:16','2024-02-23 18:23:16'),(25,'health-beauty',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-23 18:23:16','2024-02-23 18:23:16'),(26,'jewelry-watch',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-23 18:23:16','2024-02-23 18:23:16'),(27,'technology-toys',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-23 18:23:16','2024-02-23 18:23:16'),(28,'drive-storages',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-23 18:23:16','2024-02-23 18:23:16'),(29,'gaming-laptop',22,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-23 18:23:16','2024-02-23 18:23:16'),(30,'security-protection',23,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-23 18:23:16','2024-02-23 18:23:16'),(31,'accessories',24,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-23 18:23:16','2024-02-23 18:23:16'),(32,'phones',25,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-23 18:23:16','2024-02-23 18:23:16'),(33,'babies-moms',26,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-23 18:23:16','2024-02-23 18:23:16'),(34,'sport-outdoor',27,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-23 18:23:16','2024-02-23 18:23:16'),(35,'books-office',28,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-23 18:23:16','2024-02-23 18:23:16'),(36,'cars-motorcycles',29,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-23 18:23:16','2024-02-23 18:23:16'),(37,'home-improvements',30,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-23 18:23:16','2024-02-23 18:23:16'),(38,'wallet',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-02-23 18:23:16','2024-02-23 18:23:16'),(39,'bags',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-02-23 18:23:16','2024-02-23 18:23:16'),(40,'shoes',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-02-23 18:23:16','2024-02-23 18:23:16'),(41,'clothes',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-02-23 18:23:16','2024-02-23 18:23:16'),(42,'hand-bag',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-02-23 18:23:16','2024-02-23 18:23:16'),(43,'smart-home-speaker-digital',1,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:20','2024-02-23 18:23:20'),(44,'headphone-ultra-bass',2,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:20','2024-02-23 18:23:20'),(45,'boxed-bluetooth-headphone',3,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:20','2024-02-23 18:23:20'),(46,'chikie-bluetooth-speaker',4,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:20','2024-02-23 18:23:20'),(47,'camera-hikvision-hk-35vs8-digital',5,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:20','2024-02-23 18:23:20'),(48,'camera-samsung-ss-24',6,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:20','2024-02-23 18:23:20'),(49,'leather-watch-band',7,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:20','2024-02-23 18:23:20'),(50,'apple-iphone-13-plus',8,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:20','2024-02-23 18:23:20'),(51,'macbook-pro-2015-digital',9,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:20','2024-02-23 18:23:20'),(52,'macbook-air-12-inch',10,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:20','2024-02-23 18:23:20'),(53,'apple-watch-serial-7',11,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:20','2024-02-23 18:23:20'),(54,'macbook-pro-13-inch',12,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:20','2024-02-23 18:23:20'),(55,'apple-keyboard-digital',13,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:20','2024-02-23 18:23:20'),(56,'macsafe-80w',14,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:20','2024-02-23 18:23:20'),(57,'hand-playstation',15,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:20','2024-02-23 18:23:20'),(58,'apple-airpods-serial-3',16,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:20','2024-02-23 18:23:20'),(59,'cool-smart-watches-digital',17,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:20','2024-02-23 18:23:20'),(60,'black-smart-watches',18,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:20','2024-02-23 18:23:20'),(61,'leather-watch-band-serial-3',19,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:20','2024-02-23 18:23:20'),(62,'macbook-pro-2015-13-inch',20,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:20','2024-02-23 18:23:20'),(63,'historic-alarm-clock-digital',21,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:20','2024-02-23 18:23:20'),(64,'black-glasses',22,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:20','2024-02-23 18:23:20'),(65,'phillips-mouse',23,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:20','2024-02-23 18:23:20'),(66,'gaming-keyboard',24,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:20','2024-02-23 18:23:20'),(67,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2024-02-23 18:23:31','2024-02-23 18:23:32'),(68,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2024-02-23 18:23:31','2024-02-23 18:23:32'),(69,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2024-02-23 18:23:31','2024-02-23 18:23:32'),(70,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2024-02-23 18:23:31','2024-02-23 18:23:32'),(71,'general',1,'Botble\\Blog\\Models\\Tag','tag','2024-02-23 18:23:31','2024-02-23 18:23:31'),(72,'design',2,'Botble\\Blog\\Models\\Tag','tag','2024-02-23 18:23:31','2024-02-23 18:23:31'),(73,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2024-02-23 18:23:31','2024-02-23 18:23:31'),(74,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2024-02-23 18:23:31','2024-02-23 18:23:31'),(75,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2024-02-23 18:23:31','2024-02-23 18:23:31'),(76,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2024-02-23 18:23:31','2024-02-23 18:23:32'),(77,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2024-02-23 18:23:31','2024-02-23 18:23:32'),(78,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2024-02-23 18:23:31','2024-02-23 18:23:32'),(79,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2024-02-23 18:23:31','2024-02-23 18:23:32'),(80,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2024-02-23 18:23:31','2024-02-23 18:23:32'),(81,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2024-02-23 18:23:31','2024-02-23 18:23:32'),(82,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2024-02-23 18:23:31','2024-02-23 18:23:32'),(83,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2024-02-23 18:23:31','2024-02-23 18:23:32'),(84,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2024-02-23 18:23:31','2024-02-23 18:23:32'),(85,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2024-02-23 18:23:31','2024-02-23 18:23:32'),(86,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2024-02-23 18:23:31','2024-02-23 18:23:32'),(87,'homepage',1,'Botble\\Page\\Models\\Page','','2024-02-23 18:23:31','2024-02-23 18:23:31'),(88,'homepage-2',2,'Botble\\Page\\Models\\Page','','2024-02-23 18:23:31','2024-02-23 18:23:31'),(89,'homepage-3',3,'Botble\\Page\\Models\\Page','','2024-02-23 18:23:31','2024-02-23 18:23:31'),(90,'homepage-4',4,'Botble\\Page\\Models\\Page','','2024-02-23 18:23:31','2024-02-23 18:23:31'),(91,'blog',5,'Botble\\Page\\Models\\Page','','2024-02-23 18:23:31','2024-02-23 18:23:31'),(92,'contact',6,'Botble\\Page\\Models\\Page','','2024-02-23 18:23:31','2024-02-23 18:23:31'),(93,'about-us',7,'Botble\\Page\\Models\\Page','','2024-02-23 18:23:31','2024-02-23 18:23:31'),(94,'cookie-policy',8,'Botble\\Page\\Models\\Page','','2024-02-23 18:23:31','2024-02-23 18:23:31'),(95,'terms-conditions',9,'Botble\\Page\\Models\\Page','','2024-02-23 18:23:31','2024-02-23 18:23:31'),(96,'returns-exchanges',10,'Botble\\Page\\Models\\Page','','2024-02-23 18:23:31','2024-02-23 18:23:31'),(97,'shipping-delivery',11,'Botble\\Page\\Models\\Page','','2024-02-23 18:23:31','2024-02-23 18:23:31'),(98,'privacy-policy',12,'Botble\\Page\\Models\\Page','','2024-02-23 18:23:31','2024-02-23 18:23:31'),(99,'blog-left-sidebar',13,'Botble\\Page\\Models\\Page','','2024-02-23 18:23:31','2024-02-23 18:23:31'),(100,'faq',14,'Botble\\Page\\Models\\Page','','2024-02-23 18:23:31','2024-02-23 18:23:31'),(101,'smart-home-speaker-digital',25,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(102,'smart-home-speaker-digital',26,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(103,'headphone-ultra-bass',27,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(104,'headphone-ultra-bass',28,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(105,'headphone-ultra-bass',29,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(106,'boxed-bluetooth-headphone',30,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(107,'boxed-bluetooth-headphone',31,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(108,'boxed-bluetooth-headphone',32,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(109,'boxed-bluetooth-headphone',33,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(110,'chikie-bluetooth-speaker',34,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(111,'chikie-bluetooth-speaker',35,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(112,'chikie-bluetooth-speaker',36,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(113,'camera-hikvision-hk-35vs8-digital',37,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(114,'camera-samsung-ss-24',38,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(115,'camera-samsung-ss-24',39,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(116,'camera-samsung-ss-24',40,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(117,'leather-watch-band',41,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(118,'apple-iphone-13-plus',42,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(119,'apple-iphone-13-plus',43,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(120,'macbook-pro-2015-digital',44,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(121,'macbook-pro-2015-digital',45,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(122,'macbook-pro-2015-digital',46,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(123,'macbook-air-12-inch',47,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(124,'macbook-air-12-inch',48,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(125,'macbook-air-12-inch',49,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(126,'apple-watch-serial-7',50,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(127,'apple-watch-serial-7',51,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(128,'macbook-pro-13-inch',52,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(129,'macbook-pro-13-inch',53,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(130,'macbook-pro-13-inch',54,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(131,'apple-keyboard-digital',55,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(132,'apple-keyboard-digital',56,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(133,'macsafe-80w',57,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(134,'macsafe-80w',58,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(135,'hand-playstation',59,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(136,'hand-playstation',60,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(137,'apple-airpods-serial-3',61,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(138,'apple-airpods-serial-3',62,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(139,'apple-airpods-serial-3',63,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(140,'apple-airpods-serial-3',64,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(141,'cool-smart-watches-digital',65,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(142,'cool-smart-watches-digital',66,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(143,'black-smart-watches',67,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(144,'black-smart-watches',68,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(145,'leather-watch-band-serial-3',69,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(146,'leather-watch-band-serial-3',70,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(147,'macbook-pro-2015-13-inch',71,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(148,'macbook-pro-2015-13-inch',72,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(149,'macbook-pro-2015-13-inch',73,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(150,'macbook-pro-2015-13-inch',74,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(151,'historic-alarm-clock-digital',75,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(152,'historic-alarm-clock-digital',76,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(153,'historic-alarm-clock-digital',77,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(154,'historic-alarm-clock-digital',78,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(155,'black-glasses',79,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(156,'black-glasses',80,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(157,'phillips-mouse',81,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:33','2024-02-23 18:23:33'),(158,'phillips-mouse',82,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:34','2024-02-23 18:23:34'),(159,'phillips-mouse',83,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:34','2024-02-23 18:23:34'),(160,'gaming-keyboard',84,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:34','2024-02-23 18:23:34'),(161,'gaming-keyboard',85,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:34','2024-02-23 18:23:34'),(162,'gaming-keyboard',86,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:34','2024-02-23 18:23:34'),(163,'gaming-keyboard',87,'Botble\\Ecommerce\\Models\\Product','products','2024-02-23 18:23:34','2024-02-23 18:23:34');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User','','published','2024-02-23 18:23:31','2024-02-23 18:23:31'),(2,'Design',1,'Botble\\ACL\\Models\\User','','published','2024-02-23 18:23:31','2024-02-23 18:23:31'),(3,'Fashion',1,'Botble\\ACL\\Models\\User','','published','2024-02-23 18:23:31','2024-02-23 18:23:31'),(4,'Branding',1,'Botble\\ACL\\Models\\User','','published','2024-02-23 18:23:31','2024-02-23 18:23:31'),(5,'Modern',1,'Botble\\ACL\\Models\\User','','published','2024-02-23 18:23:31','2024-02-23 18:23:31');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'micah.welch@haley.com',NULL,'$2y$12$69jzpyz8fOPkoGbadYDddeC.B3OLgLkMSJ1Ztyc62gKmvnMh/jWXW',NULL,'2024-02-23 18:23:31','2024-02-23 18:23:31','Mac','Johnson','botble',NULL,1,1,NULL,NULL),(2,'olson.electa@osinski.net',NULL,'$2y$12$LmeRrcm3BHzoth8WSN7hV.xmT.wyN95Bz4mHvffmzR1N0hP7S3xz6',NULL,'2024-02-23 18:23:32','2024-02-23 18:23:32','Carrie','Crist','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'NewsletterWidget','top_footer_sidebar','wowy',1,'{\"id\":\"NewsletterWidget\",\"name\":\"Sign up to Newsletter\",\"subtitle\":\"...and receive $25 coupon for first shopping.\"}','2024-02-23 18:23:32','2024-02-23 18:23:32'),(2,'SiteInfoWidget','footer_sidebar','wowy',0,'{\"id\":\"SiteInfoWidget\",\"name\":\"Site information\"}','2024-02-23 18:23:32','2024-02-23 18:23:32'),(3,'CustomMenuWidget','footer_sidebar','wowy',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"product-categories\"}','2024-02-23 18:23:32','2024-02-23 18:23:32'),(4,'CustomMenuWidget','footer_sidebar','wowy',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Information\",\"menu_id\":\"information\"}','2024-02-23 18:23:32','2024-02-23 18:23:32'),(5,'PaymentMethodsWidget','footer_sidebar','wowy',3,'{\"id\":\"PaymentMethodsWidget\",\"name\":\"Payments\",\"description\":\"Secured Payment Gateways\",\"image\":\"general\\/payment-methods.png\"}','2024-02-23 18:23:32','2024-02-23 18:23:32'),(6,'BlogSearchWidget','primary_sidebar','wowy',0,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2024-02-23 18:23:32','2024-02-23 18:23:32'),(7,'BlogCategoriesWidget','primary_sidebar','wowy',1,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\"}','2024-02-23 18:23:32','2024-02-23 18:23:32'),(8,'RecentPostsWidget','primary_sidebar','wowy',2,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\"}','2024-02-23 18:23:32','2024-02-23 18:23:32'),(9,'TagsWidget','primary_sidebar','wowy',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2024-02-23 18:23:32','2024-02-23 18:23:32'),(10,'ProductCategoriesWidget','product_sidebar','wowy',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Categories\"}','2024-02-23 18:23:32','2024-02-23 18:23:32'),(11,'FeaturedProductsWidget','product_sidebar','wowy',2,'{\"id\":\"FeaturedProductsWidget\",\"name\":\"Featured Products\"}','2024-02-23 18:23:32','2024-02-23 18:23:32'),(12,'FeaturedBrandsWidget','product_sidebar','wowy',3,'{\"id\":\"FeaturedBrandsWidget\",\"name\":\"Manufacturers\"}','2024-02-23 18:23:32','2024-02-23 18:23:32');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-24  8:23:34
