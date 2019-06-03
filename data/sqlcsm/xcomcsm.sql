-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: tkck4yllxdrw0bhi.cbetxkdyhwsb.us-east-1.rds.amazonaws.com    Database: odz0mgdasa2ev63v
-- ------------------------------------------------------
-- Server version	5.7.23-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,NULL,1,'Category 1','category-1','2019-05-13 20:27:45','2019-05-13 20:27:45'),(2,NULL,1,'Category 2','category-2','2019-05-13 20:27:45','2019-05-13 20:27:45');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,NULL,1),(2,1,'name','text','Name',1,1,1,1,1,1,NULL,2),(3,1,'email','text','Email',1,1,1,1,1,1,NULL,3),(4,1,'password','password','Password',1,0,0,1,1,0,NULL,4),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,NULL,5),(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,6),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,NULL,8),(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}',10),(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),(11,1,'settings','hidden','Settings',0,0,0,0,0,0,NULL,12),(12,2,'id','number','ID',1,0,0,0,0,0,NULL,1),(13,2,'name','text','Name',1,1,1,1,1,1,NULL,2),(14,2,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(15,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(16,3,'id','number','ID',1,0,0,0,0,0,NULL,1),(17,3,'name','text','Name',1,1,1,1,1,1,NULL,2),(18,3,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(20,3,'display_name','text','Display Name',1,1,1,1,1,1,NULL,5),(21,1,'role_id','text','Role',1,1,1,1,1,1,NULL,9),(22,4,'id','number','ID',1,0,0,0,0,0,NULL,1),(23,4,'parent_id','select_dropdown','Parent',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),(24,4,'order','text','Order',1,1,1,1,1,1,'{\"default\":1}',3),(25,4,'name','text','Name',1,1,1,1,1,1,NULL,4),(26,4,'slug','text','Slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"name\"}}',5),(27,4,'created_at','timestamp','Created At',0,0,1,0,0,0,NULL,6),(28,4,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(70,8,'id','text','Id',1,0,0,0,0,0,'{}',1),(71,8,'category','text','Category',1,1,1,0,1,1,'{}',2),(72,8,'content','text_area','Content',1,1,1,1,1,1,'{}',3),(73,8,'section','select_dropdown','Section',0,0,0,0,0,0,'{\"default\":\"\",\"null\":\"\",\"options\":{\"info\":\"XCOM Information\",\"service\":\"Service\",\"about\":\"About\"}}',4),(74,8,'part','text','Part',0,1,1,0,0,0,'{}',5);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','TCG\\Voyager\\Http\\Controllers\\VoyagerUserController','',1,0,NULL,'2019-05-13 20:27:39','2019-05-13 20:27:39'),(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2019-05-13 20:27:39','2019-05-13 20:27:39'),(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'','',1,0,NULL,'2019-05-13 20:27:39','2019-05-13 20:27:39'),(4,'categories','categories','Category','Categories','voyager-categories','TCG\\Voyager\\Models\\Category',NULL,'','',1,0,NULL,'2019-05-13 20:27:44','2019-05-13 20:27:44'),(8,'xcomcontent','xcomcontent','Xcomcontent','Xcomcontents',NULL,'App\\Models\\Xcomcontent',NULL,'App\\Http\\Controllers\\Voyager\\XcomContentController',NULL,1,0,'{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2019-05-14 15:30:05','2019-05-29 13:30:39');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2019-05-13 20:27:39','2019-05-13 20:27:39','voyager.dashboard',NULL),(2,1,'Media','','_self','voyager-images',NULL,NULL,4,'2019-05-13 20:27:40','2019-05-14 15:34:48','voyager.media.index',NULL),(3,1,'Users','','_self','voyager-person',NULL,NULL,3,'2019-05-13 20:27:40','2019-05-13 20:27:40','voyager.users.index',NULL),(4,1,'Roles','','_self','voyager-lock',NULL,NULL,2,'2019-05-13 20:27:40','2019-05-13 20:27:40','voyager.roles.index',NULL),(5,1,'Tools','','_self','voyager-tools',NULL,NULL,7,'2019-05-13 20:27:40','2019-05-14 15:53:08',NULL,NULL),(6,1,'Menu Builder','','_self','voyager-list',NULL,5,1,'2019-05-13 20:27:40','2019-05-14 15:34:49','voyager.menus.index',NULL),(7,1,'Database','','_self','voyager-data',NULL,5,2,'2019-05-13 20:27:40','2019-05-14 15:34:49','voyager.database.index',NULL),(8,1,'Compass','','_self','voyager-compass',NULL,5,3,'2019-05-13 20:27:40','2019-05-14 15:34:49','voyager.compass.index',NULL),(9,1,'BREAD','','_self','voyager-bread',NULL,5,4,'2019-05-13 20:27:40','2019-05-14 15:34:49','voyager.bread.index',NULL),(10,1,'Settings','','_self','voyager-settings',NULL,NULL,8,'2019-05-13 20:27:40','2019-05-14 15:53:08','voyager.settings.index',NULL),(14,1,'Hooks','','_self','voyager-hook',NULL,5,5,'2019-05-13 20:27:48','2019-05-14 15:34:49','voyager.hooks',NULL),(15,1,'Pages','','_self','voyager-pen','#000000',NULL,6,'2019-05-14 15:30:06','2019-05-23 00:08:50','voyager.xcomcontent.index','null');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2019-05-13 20:27:39','2019-05-13 20:27:39'),(2,'xcom','2019-05-23 00:13:45','2019-05-23 00:13:53');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_01_000000_add_voyager_user_fields',1),(4,'2016_01_01_000000_create_data_types_table',1),(5,'2016_05_19_173453_create_menu_table',1),(6,'2016_10_21_190000_create_roles_table',1),(7,'2016_10_21_190000_create_settings_table',1),(8,'2016_11_30_135954_create_permission_table',1),(9,'2016_11_30_141208_create_permission_role_table',1),(10,'2016_12_26_201236_data_types__add__server_side',1),(11,'2017_01_13_000000_add_route_to_menu_items_table',1),(12,'2017_01_14_005015_create_translations_table',1),(13,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(14,'2017_03_06_000000_add_controller_to_data_types_table',1),(15,'2017_04_21_000000_add_order_to_data_rows_table',1),(16,'2017_07_05_210000_add_policyname_to_data_types_table',1),(17,'2017_08_05_000000_add_group_to_settings_table',1),(18,'2017_11_26_013050_add_user_role_relationship',1),(19,'2017_11_26_015000_create_user_roles_table',1),(20,'2018_03_11_000000_add_user_settings',1),(21,'2018_03_14_000000_add_details_to_data_types_table',1),(22,'2018_03_16_000000_make_settings_value_nullable',1),(23,'2016_01_01_000000_create_pages_table',2),(24,'2016_01_01_000000_create_posts_table',2),(25,'2016_02_15_204651_create_categories_table',2),(26,'2017_04_11_000000_alter_post_nullable_fields_table',2),(27,'2019_05_15_141422_create_categories_table',0),(28,'2019_05_15_141422_create_data_rows_table',0),(29,'2019_05_15_141422_create_data_types_table',0),(30,'2019_05_15_141422_create_menu_items_table',0),(31,'2019_05_15_141422_create_menus_table',0),(32,'2019_05_15_141422_create_password_resets_table',0),(33,'2019_05_15_141422_create_permission_role_table',0),(34,'2019_05_15_141422_create_permissions_table',0),(35,'2019_05_15_141422_create_roles_table',0),(36,'2019_05_15_141422_create_settings_table',0),(37,'2019_05_15_141422_create_translations_table',0),(38,'2019_05_15_141422_create_user_roles_table',0),(39,'2019_05_15_141422_create_users_table',0),(40,'2019_05_15_141422_create_xcomcontent_table',0),(41,'2019_05_15_141425_add_foreign_keys_to_categories_table',0),(42,'2019_05_15_141425_add_foreign_keys_to_data_rows_table',0),(43,'2019_05_15_141425_add_foreign_keys_to_menu_items_table',0),(44,'2019_05_15_141425_add_foreign_keys_to_permission_role_table',0),(45,'2019_05_15_141425_add_foreign_keys_to_user_roles_table',0),(46,'2019_05_15_141425_add_foreign_keys_to_users_table',0);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(1,3),(2,1),(3,1),(4,1),(4,3),(5,1),(5,3),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(16,3),(17,1),(17,3),(18,1),(18,3),(19,1),(19,3),(20,1),(20,3),(21,1),(21,3),(22,1),(22,3),(23,1),(24,1),(25,1),(26,1),(26,3),(27,1),(27,3),(28,1),(28,3),(29,1),(29,3),(30,1),(30,3),(42,1),(42,3),(43,1),(43,3),(44,1),(44,3),(45,1),(45,3),(46,1),(46,3);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2019-05-13 20:27:40','2019-05-13 20:27:40'),(2,'browse_bread',NULL,'2019-05-13 20:27:40','2019-05-13 20:27:40'),(3,'browse_database',NULL,'2019-05-13 20:27:40','2019-05-13 20:27:40'),(4,'browse_media',NULL,'2019-05-13 20:27:40','2019-05-13 20:27:40'),(5,'browse_compass',NULL,'2019-05-13 20:27:40','2019-05-13 20:27:40'),(6,'browse_menus','menus','2019-05-13 20:27:40','2019-05-13 20:27:40'),(7,'read_menus','menus','2019-05-13 20:27:40','2019-05-13 20:27:40'),(8,'edit_menus','menus','2019-05-13 20:27:40','2019-05-13 20:27:40'),(9,'add_menus','menus','2019-05-13 20:27:40','2019-05-13 20:27:40'),(10,'delete_menus','menus','2019-05-13 20:27:41','2019-05-13 20:27:41'),(11,'browse_roles','roles','2019-05-13 20:27:41','2019-05-13 20:27:41'),(12,'read_roles','roles','2019-05-13 20:27:41','2019-05-13 20:27:41'),(13,'edit_roles','roles','2019-05-13 20:27:41','2019-05-13 20:27:41'),(14,'add_roles','roles','2019-05-13 20:27:41','2019-05-13 20:27:41'),(15,'delete_roles','roles','2019-05-13 20:27:41','2019-05-13 20:27:41'),(16,'browse_users','users','2019-05-13 20:27:41','2019-05-13 20:27:41'),(17,'read_users','users','2019-05-13 20:27:41','2019-05-13 20:27:41'),(18,'edit_users','users','2019-05-13 20:27:41','2019-05-13 20:27:41'),(19,'add_users','users','2019-05-13 20:27:41','2019-05-13 20:27:41'),(20,'delete_users','users','2019-05-13 20:27:41','2019-05-13 20:27:41'),(21,'browse_settings','settings','2019-05-13 20:27:41','2019-05-13 20:27:41'),(22,'read_settings','settings','2019-05-13 20:27:41','2019-05-13 20:27:41'),(23,'edit_settings','settings','2019-05-13 20:27:41','2019-05-13 20:27:41'),(24,'add_settings','settings','2019-05-13 20:27:41','2019-05-13 20:27:41'),(25,'delete_settings','settings','2019-05-13 20:27:41','2019-05-13 20:27:41'),(26,'browse_categories','categories','2019-05-13 20:27:45','2019-05-13 20:27:45'),(27,'read_categories','categories','2019-05-13 20:27:45','2019-05-13 20:27:45'),(28,'edit_categories','categories','2019-05-13 20:27:45','2019-05-13 20:27:45'),(29,'add_categories','categories','2019-05-13 20:27:45','2019-05-13 20:27:45'),(30,'delete_categories','categories','2019-05-13 20:27:45','2019-05-13 20:27:45'),(41,'browse_hooks',NULL,'2019-05-13 20:27:48','2019-05-13 20:27:48'),(42,'browse_xcomcontent','xcomcontent','2019-05-14 15:30:06','2019-05-14 15:30:06'),(43,'read_xcomcontent','xcomcontent','2019-05-14 15:30:06','2019-05-14 15:30:06'),(44,'edit_xcomcontent','xcomcontent','2019-05-14 15:30:06','2019-05-14 15:30:06'),(45,'add_xcomcontent','xcomcontent','2019-05-14 15:30:06','2019-05-14 15:30:06'),(46,'delete_xcomcontent','xcomcontent','2019-05-14 15:30:06','2019-05-14 15:30:06');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrator','2019-05-13 20:27:40','2019-05-13 20:27:40'),(2,'user','Normal User','2019-05-13 20:27:40','2019-05-13 20:27:40'),(3,'XCOM','XCOM ADMIN','2019-05-23 00:18:46','2019-05-23 00:18:46');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site.title','Site Title','XCOM IT SOLUTIONS','','text',1,'Site'),(2,'site.description','Site Description','we provide the resources & stability necessary for you to focus your efforts on where they belong.','','text',2,'Site'),(3,'site.logo','Site Logo','settings/May2019/zxzRmLFGa55QlSmbkNYt.png','','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID',NULL,'','text',4,'Site'),(5,'admin.bg_image','Admin Background Image','','','image',5,'Admin'),(6,'admin.title','Admin Title','XCOM','','text',1,'Admin'),(7,'admin.description','Admin Description','Powered by Cavaon Pty. Ltd.','','text',2,'Admin'),(8,'admin.loader','Admin Loader','settings/May2019/39a00tNFDTDEsTdwre45.png','','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image','settings/May2019/M4CspWQW72pf97SsetNM.png','','image',4,'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES (1,'data_types','display_name_singular',5,'pt','Post','2019-05-13 20:27:47','2019-05-13 20:27:47'),(2,'data_types','display_name_singular',6,'pt','Página','2019-05-13 20:27:47','2019-05-13 20:27:47'),(3,'data_types','display_name_singular',1,'pt','Utilizador','2019-05-13 20:27:47','2019-05-13 20:27:47'),(4,'data_types','display_name_singular',4,'pt','Categoria','2019-05-13 20:27:47','2019-05-13 20:27:47'),(5,'data_types','display_name_singular',2,'pt','Menu','2019-05-13 20:27:47','2019-05-13 20:27:47'),(6,'data_types','display_name_singular',3,'pt','Função','2019-05-13 20:27:47','2019-05-13 20:27:47'),(7,'data_types','display_name_plural',5,'pt','Posts','2019-05-13 20:27:47','2019-05-13 20:27:47'),(8,'data_types','display_name_plural',6,'pt','Páginas','2019-05-13 20:27:47','2019-05-13 20:27:47'),(9,'data_types','display_name_plural',1,'pt','Utilizadores','2019-05-13 20:27:47','2019-05-13 20:27:47'),(10,'data_types','display_name_plural',4,'pt','Categorias','2019-05-13 20:27:47','2019-05-13 20:27:47'),(11,'data_types','display_name_plural',2,'pt','Menus','2019-05-13 20:27:47','2019-05-13 20:27:47'),(12,'data_types','display_name_plural',3,'pt','Funções','2019-05-13 20:27:47','2019-05-13 20:27:47'),(13,'categories','slug',1,'pt','categoria-1','2019-05-13 20:27:47','2019-05-13 20:27:47'),(14,'categories','name',1,'pt','Categoria 1','2019-05-13 20:27:47','2019-05-13 20:27:47'),(15,'categories','slug',2,'pt','categoria-2','2019-05-13 20:27:47','2019-05-13 20:27:47'),(16,'categories','name',2,'pt','Categoria 2','2019-05-13 20:27:47','2019-05-13 20:27:47'),(17,'pages','title',1,'pt','Olá Mundo','2019-05-13 20:27:47','2019-05-13 20:27:47'),(18,'pages','slug',1,'pt','ola-mundo','2019-05-13 20:27:47','2019-05-13 20:27:47'),(19,'pages','body',1,'pt','<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','2019-05-13 20:27:47','2019-05-13 20:27:47'),(20,'menu_items','title',1,'pt','Painel de Controle','2019-05-13 20:27:47','2019-05-13 20:27:47'),(21,'menu_items','title',2,'pt','Media','2019-05-13 20:27:48','2019-05-13 20:27:48'),(22,'menu_items','title',12,'pt','Publicações','2019-05-13 20:27:48','2019-05-13 20:27:48'),(23,'menu_items','title',3,'pt','Utilizadores','2019-05-13 20:27:48','2019-05-13 20:27:48'),(24,'menu_items','title',11,'pt','Categorias','2019-05-13 20:27:48','2019-05-13 20:27:48'),(25,'menu_items','title',13,'pt','Páginas','2019-05-13 20:27:48','2019-05-13 20:27:48'),(26,'menu_items','title',4,'pt','Funções','2019-05-13 20:27:48','2019-05-13 20:27:48'),(27,'menu_items','title',5,'pt','Ferramentas','2019-05-13 20:27:48','2019-05-13 20:27:48'),(28,'menu_items','title',6,'pt','Menus','2019-05-13 20:27:48','2019-05-13 20:27:48'),(29,'menu_items','title',7,'pt','Base de dados','2019-05-13 20:27:48','2019-05-13 20:27:48'),(30,'menu_items','title',10,'pt','Configurações','2019-05-13 20:27:48','2019-05-13 20:27:48');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_roles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'Admin','admin@admin.com','../images/default.png',NULL,'$2y$10$POmERZoweizu1dAURn48buYc9D2ES4C60qOyCcrIe02QZLTjGfq9W','E3Y7cGAyYKSa3LXUmXx7EdzmObr7gOU9YxNj2pwfuAzV4ULCXzEqcjbgtgNO','{\"locale\":\"en\"}','2019-05-13 20:27:45','2019-05-14 18:55:13'),(2,3,'XCOM','support@xcomit.com.au','../images/default.png',NULL,'$2y$10$Ze.iEHgGtC5KzoPRpT6mvenhTrKhC3dEY/FLd8nsrqKRdt5JcYCOy',NULL,'{\"locale\":\"en\"}','2019-05-23 00:10:17','2019-05-23 00:19:07');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xcomcontent`
--

DROP TABLE IF EXISTS `xcomcontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `xcomcontent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` text NOT NULL,
  `content` text NOT NULL,
  `section` char(20) DEFAULT NULL,
  `part` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xcomcontent`
--

LOCK TABLES `xcomcontent` WRITE;
/*!40000 ALTER TABLE `xcomcontent` DISABLE KEYS */;
INSERT INTO `xcomcontent` VALUES (1,'PhoneNumber','+61430429687','info','Header'),(2,'HeroTitle','Experienced IT Specialists','info','HeroBanner'),(4,'HeroContents','With over 15 years of experience, we provide the resources & stability necessary for you to focus your efforts on where they belong.','info','HeroBanner'),(5,'ServiceTitle','Our Services','service','servicetitle'),(6,'01Title','Email Hosting and Security','service','01'),(7,'01Description','Not really up to speed with your IT Infrastructure we can audit your infrastructure and propose technology upgrades that suite your needs and budget. This can be scoped and applied in transitional stages to limit downtime and maximize up-time.','service','01'),(8,'02Title','Support Desk','service','02'),(9,'02Description','Remote and onsite support from our Sydney based Engineers with guaranteed response and resolution times.','service','02'),(10,'03Title','File Sharing','service','03'),(11,'03Description','Your data is secure and available across any device. Share files within your organization or externally with a few clicks.','service','03'),(12,'04Title','Business Continuity and Disaster Recovery','service','04'),(13,'04Description','We provide the tools and assurance that your data is protected and recoverable. 24 x 7 monitoring and management of your networks and servers whether they’re in the cloud or in your office.','service','04'),(14,'AboutDescription','XCOM understands small business because we too are a small business. XCOM Small Business IT Support solutions provide the right people, technology and best practice to deliver an experience which is tailored to small businesses and their budget. Xcom strive to provide simplified and robust IT solutions for all business models. If you are a new and growing company or a well-established business out team can maintain or integrate a system that is Taylor made to your needs.','about','about'),(15,'Copyright','Copyright © 2019 Xcom IT Solution. All rights reserved.','info','Footer'),(16,'HeroBackgroundImage','https://xcom-layout.herokuapp.com/images/xcommain.png','info','HeroBanner'),(17,'AboutBackgroundImage','https://xcom-layout.herokuapp.com/images/xcomabout.png','about','about'),(18,'LogoImage','https://xcom-layout.herokuapp.com/images/xcomlogo.png','info','Header'),(19,'PhoneIconImage','https://xcom-layout.herokuapp.com/images/phoneicon.png','info','Header'),(20,'LogoImageUrl','https://xcom-layout.herokuapp.com','info','Header'),(21,'FooterLogoImage','https://xcom-layout.herokuapp.com/images/Footerlogo.png','info','Footer'),(22,'FooterLogoImageUrl','https://xcom-layout.herokuapp.com','info','Footer'),(23,'ToEmail','admin@admin.com','info','toemail'),(24,'HeroButton','Go Started Now','info','HeroBanner'),(25,'HeroButtonUrl','#contactform','info','HeroBanner');
/*!40000 ALTER TABLE `xcomcontent` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-03 10:31:17
