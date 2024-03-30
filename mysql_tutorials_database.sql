-- MariaDB dump 10.19  Distrib 10.11.6-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: mysql_tutorials
-- ------------------------------------------------------
-- Server version	10.11.6-MariaDB-0+deb12u1

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
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `grade` char(1) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` VALUES
(1,1,'A','2023-02-03'),
(2,2,'B','2023-03-04'),
(3,3,'C','2023-04-05'),
(4,4,'D','2023-05-06'),
(5,5,'A','2023-02-03'),
(6,6,'B','2023-03-04'),
(7,7,'C','2023-04-05'),
(8,8,'D','2023-05-06'),
(9,9,'D','2023-05-06');
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lessons`
--

DROP TABLE IF EXISTS `lessons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lessons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lessons`
--

LOCK TABLES `lessons` WRITE;
/*!40000 ALTER TABLE `lessons` DISABLE KEYS */;
INSERT INTO `lessons` VALUES
(1,'#1 Introduction',NULL),
(2,'#2 Install and uninstall','2024-03-18 17:09:30'),
(3,'#3 Databases',NULL),
(4,'#4 Tables',NULL),
(5,'#5 Inserting into tables',NULL),
(6,'#6 Loading Data From TXT Files',NULL);
/*!40000 ALTER TABLE `lessons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`details`)),
  PRIMARY KEY (`id`),
  KEY `isx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES
(1,'Product A',NULL),
(2,'Product B',NULL),
(3,'Product C',NULL),
(4,'Product D',NULL),
(5,'Product D','{\"Brand\": \"AAA\", \"Color\": \"Black\"}');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales` (
  `sale_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `sale_date` date DEFAULT NULL,
  `revenue` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`sale_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES
(1,1,'2023-01-15',5000.50),
(2,2,'2023-01-15',7500.75),
(3,1,'2023-02-20',3000.25),
(4,3,'2023-02-20',12000.00),
(5,2,'2023-03-10',8000.80),
(6,4,'2023-03-10',15000.00);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `score` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_student` (`last_name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES
(1,'Ario','Farhoodi',9),
(2,'John','McFaden',8.5),
(3,'Jasem','Asbaq',7.25),
(4,'Federico','Conti',7.8),
(5,'Marco','Fiore',8.9),
(6,'Dimitri','Pavlov',8.9),
(7,'Okal','Bankole',6.3),
(8,'Aiyana','Kiowa',9);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=16069 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES
(317,104,'ppv','a:5:{s:3:\"doc\";s:108:\"https://press.arashtad.com/wp-content/uploads/pdf/a-complete-introduction-to-opengl-and-its-applications.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(344,108,'ppv','a:5:{s:3:\"doc\";s:110:\"https://press.arashtad.com/wp-content/uploads/pdf/threejs-and-babylonjs-which-is-the-best-choice.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(371,112,'ppv','a:5:{s:3:\"doc\";s:105:\"https://press.arashtad.com/wp-content/uploads/pdf/what-is-babylonjs-a-complete-introduction.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(398,115,'ppv','a:5:{s:3:\"doc\";s:124:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-manually-submit-your-website-to-google-bing-and-yahoo.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(404,119,'ppv','a:5:{s:3:\"doc\";s:101:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-redirect-non-www-to-www-urls-in-htaccess.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(411,121,'ppv','a:5:{s:3:\"doc\";s:102:\"https://press.arashtad.com/wp-content/uploads/pdf/what-is-a-dns-record-and-how-to-set-it.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(417,123,'ppv','a:5:{s:3:\"doc\";s:100:\"https://press.arashtad.com/wp-content/uploads/pdf/best-linux-smartphones-in-the-market.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(422,125,'ppv','a:5:{s:3:\"doc\";s:104:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-redirect-http-to-https-in-htacces.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(428,127,'ppv','a:5:{s:3:\"doc\";s:105:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-create-a-contact-form-in-wordpress.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(435,129,'ppv','a:5:{s:3:\"doc\";s:101:\"https://press.arashtad.com/wp-content/uploads/pdf/what-is-tor-browser-and-how-to-use-it.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(447,133,'ppv','a:5:{s:3:\"doc\";s:110:\"https://press.arashtad.com/wp-content/uploads/pdf/the-ultimate-guide-to-wordpress-security-checklist.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(1176,198,'ppv','a:5:{s:3:\"doc\";s:102:\"https://press.arashtad.com/wp-content/uploads/pdf/what-is-amazon-ec2-a-complete-introduction.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(1181,200,'ppv','a:5:{s:3:\"doc\";s:96:\"https://press.arashtad.com/wp-content/uploads/pdf/a-complete-introduction-to-amazon-s3.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(1191,204,'ppv','a:5:{s:3:\"doc\";s:108:\"https://press.arashtad.com/wp-content/uploads/pdf/7-aws-services-every-developer-should-know-about.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(1201,208,'ppv','a:5:{s:3:\"doc\";s:112:\"https://press.arashtad.com/wp-content/uploads/pdf/using-containers-for-microservices-the-pros-and-cons.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(1214,213,'ppv','a:5:{s:3:\"doc\";s:111:\"https://press.arashtad.com/wp-content/uploads/pdf/why-is-kubernetes-an-essential-skill-for-developers.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(1219,215,'ppv','a:5:{s:3:\"doc\";s:116:\"https://press.arashtad.com/wp-content/uploads/pdf/django-vs-react-the-key-differences-no-one-will-tell-you.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(1458,238,'ppv','a:5:{s:3:\"doc\";s:112:\"https://press.arashtad.com/wp-content/uploads/pdf/a-complete-list-of-the-top-online-marketing-services.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(1514,250,'ppv','a:5:{s:3:\"doc\";s:112:\"https://press.arashtad.com/wp-content/uploads/pdf/what-is-the-domain-authority-how-can-you-increase-it.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(1566,257,'ppv','a:5:{s:3:\"doc\";s:131:\"https://press.arashtad.com/wp-content/uploads/pdf/the-top-7-network-marketing-secrets-that-you-need-to-grow-your-business.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(1608,265,'ppv','a:5:{s:3:\"doc\";s:0:\"\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(1655,269,'ppv','a:5:{s:3:\"doc\";s:107:\"https://press.arashtad.com/wp-content/uploads/pdf/an-ultimate-guide-to-video-marketing-strategies.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(1696,275,'ppv','a:5:{s:3:\"doc\";s:116:\"https://press.arashtad.com/wp-content/uploads/pdf/the-top-10-creative-secrets-about-social-media-marketing.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(1742,281,'ppv','a:5:{s:3:\"doc\";s:113:\"https://press.arashtad.com/wp-content/uploads/pdf/10-secrets-about-email-marketing-that-you-should-know.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(1808,295,'ppv','a:5:{s:3:\"doc\";s:106:\"https://press.arashtad.com/wp-content/uploads/pdf/seo-vs-google-ads-which-one-is-a-better-option.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(1853,301,'ppv','a:5:{s:3:\"doc\";s:105:\"https://press.arashtad.com/wp-content/uploads/pdf/best-unity-game-ideas-for-the-game-developers.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(1911,313,'ppv','a:5:{s:3:\"doc\";s:111:\"https://press.arashtad.com/wp-content/uploads/pdf/an-insightful-guide-to-wordpress-plugin-development.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(1952,317,'ppv','a:5:{s:3:\"doc\";s:107:\"https://press.arashtad.com/wp-content/uploads/pdf/a-complete-guide-to-becoming-a-nodejs-developer.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(1994,321,'ppv','a:5:{s:3:\"doc\";s:107:\"https://press.arashtad.com/wp-content/uploads/pdf/the-best-technologies-for-empower-the-metaverse.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(2048,326,'ppv','a:5:{s:3:\"doc\";s:110:\"https://press.arashtad.com/wp-content/uploads/pdf/online-business-ideas-that-can-make-a-lot-of-money.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(2114,348,'ppv','a:5:{s:3:\"doc\";s:103:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-start-a-blockchain-services-business.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(2156,352,'ppv','a:5:{s:3:\"doc\";s:119:\"https://press.arashtad.com/wp-content/uploads/pdf/what-is-affiliate-marketing-and-how-to-make-money-out-of-it.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(2198,356,'ppv','a:5:{s:3:\"doc\";s:118:\"https://press.arashtad.com/wp-content/uploads/pdf/devops-engineer-job-description-roles-and-responsibilities.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(2240,361,'ppv','a:5:{s:3:\"doc\";s:88:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-become-a-scrum-master.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(2282,365,'ppv','a:5:{s:3:\"doc\";s:105:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-set-up-rules-and-redirects-in-htaccess.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(2324,369,'ppv','a:5:{s:3:\"doc\";s:100:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-increase-sales-of-an-online-store.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(2402,392,'ppv','a:5:{s:3:\"doc\";s:112:\"https://press.arashtad.com/wp-content/uploads/pdf/a-complete-roadmap-for-becoming-a-back-end-developer.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(2446,398,'ppv','a:5:{s:3:\"doc\";s:114:\"https://press.arashtad.com/wp-content/uploads/pdf/an-ultimate-roadmap-for-becoming-a-front-end-developer.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(2491,401,'ppv','a:5:{s:3:\"doc\";s:113:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-become-a-laravel-developer-an-insightful-guide.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(2533,405,'ppv','a:5:{s:3:\"doc\";s:117:\"https://press.arashtad.com/wp-content/uploads/pdf/an-ultimate-guide-for-beginner-php-developers-php-roadmap.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(2587,409,'ppv','a:5:{s:3:\"doc\";s:106:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-make-money-blogging-a-complete-tutorial.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(2653,431,'ppv','a:5:{s:3:\"doc\";s:90:\"https://press.arashtad.com/wp-content/uploads/pdf/a-complete-guide-to-google-ads.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(2695,435,'ppv','a:5:{s:3:\"doc\";s:116:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-become-a-python-developer-complete-python-roadmap.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(2737,439,'ppv','a:5:{s:3:\"doc\";s:95:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-become-an-animation-designer.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(2779,443,'ppv','a:5:{s:3:\"doc\";s:102:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-earn-money-from-animation-designing.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(2821,447,'ppv','a:5:{s:3:\"doc\";s:104:\"https://press.arashtad.com/wp-content/uploads/pdf/a-complete-guide-to-game-development-roadmap.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(2880,451,'ppv','a:5:{s:3:\"doc\";s:102:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-make-money-from-3d-game-development.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(2939,469,'ppv','a:5:{s:3:\"doc\";s:114:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-find-a-professional-3d-modeler-a-flawless-guide.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(2981,473,'ppv','a:5:{s:3:\"doc\";s:109:\"https://press.arashtad.com/wp-content/uploads/pdf/a-complete-guide-to-webgpu-and-webgl-technologies.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(3022,477,'ppv','a:5:{s:3:\"doc\";s:93:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-start-a-metaverse-business.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(3062,481,'ppv','a:5:{s:3:\"doc\";s:93:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-find-a-metaverse-developer.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(3102,486,'ppv','a:5:{s:3:\"doc\";s:106:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-design-a-great-uiux-for-your-mobile-app.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(3160,494,'ppv','a:5:{s:3:\"doc\";s:106:\"https://press.arashtad.com/wp-content/uploads/pdf/key-ux-ui-design-tips-to-optimize-your-website.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(3224,515,'ppv','a:5:{s:3:\"doc\";s:108:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-migrate-your-wordpress-site-to-a-new-host.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(3266,519,'ppv','a:5:{s:3:\"doc\";s:106:\"https://press.arashtad.com/wp-content/uploads/pdf/fastest-ways-to-make-mobile-apps-worth-of-200k.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(3308,523,'ppv','a:5:{s:3:\"doc\";s:111:\"https://press.arashtad.com/wp-content/uploads/pdf/how-can-metaverse-revolutionize-the-web-development.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(3350,527,'ppv','a:5:{s:3:\"doc\";s:92:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-create-your-own-metaverse.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(3393,531,'ppv','a:5:{s:3:\"doc\";s:97:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-create-a-metaverse-marketplace.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(3432,537,'ppv','a:5:{s:3:\"doc\";s:119:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-recover-joomla-administrator-password-via-phpmyadmin.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(3493,544,'ppv','a:5:{s:3:\"doc\";s:114:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-write-terra-smart-contracts-a-complete-tutorial.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(3561,566,'ppv','a:5:{s:3:\"doc\";s:136:\"https://press.arashtad.com/wp-content/uploads/pdf/what-is-the-relationship-between-the-chinese-blockchain-and-digital-currency.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(3603,570,'ppv','a:5:{s:3:\"doc\";s:77:\"https://press.arashtad.com/wp-content/uploads/pdf/what-is-metaverse.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(3647,576,'ppv','a:5:{s:3:\"doc\";s:100:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-make-user-sudoer-in-debian-ubuntu.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(3689,580,'ppv','a:5:{s:3:\"doc\";s:111:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-turn-off-update-notification-icons-in-joomla.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(3731,585,'ppv','a:5:{s:3:\"doc\";s:89:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-access-joomla-base-uri.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(3780,589,'ppv','a:5:{s:3:\"doc\";s:116:\"https://press.arashtad.com/wp-content/uploads/pdf/harmony-blockchain-getting-familiar-with-it-using-python.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(3829,600,'ppv','a:5:{s:3:\"doc\";s:135:\"https://press.arashtad.com/wp-content/uploads/pdf/How-to-Set-Up-the-Dependencies-For-Running-Local-Terra-All-You-Need-to-Know.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(3885,610,'ppv','a:5:{s:3:\"doc\";s:125:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-use-solidity-for-funding-in-blockchain-a-flawless-tutorial.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(4001,619,'ppv','a:5:{s:3:\"doc\";s:118:\"https://press.arashtad.com/wp-content/uploads/pdf/learning-rust-for-cosmwasm-smart-contracts-a-perfect-guide.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(4045,627,'ppv','a:5:{s:3:\"doc\";s:125:\"https://press.arashtad.com/wp-content/uploads/pdf/working-with-crowdfunding-on-etherscan-using-brownie-and-solidity.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(4123,650,'ppv','a:5:{s:3:\"doc\";s:138:\"https://press.arashtad.com/wp-content/uploads/pdf/crowdfunding-smart-contract-on-mainnet-and-other-networks-a-perfect-tutorial-1.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(4165,654,'ppv','a:5:{s:3:\"doc\";s:127:\"https://press.arashtad.com/wp-content/uploads/pdf/using-brownie-for-interacting-with-aave-protocol-borrowing-repaying.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(4207,659,'ppv','a:5:{s:3:\"doc\";s:125:\"https://press.arashtad.com/wp-content/uploads/pdf/using-python-framework-brownie-for-interacting-with-aave-protocol.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(4249,663,'ppv','a:5:{s:3:\"doc\";s:139:\"https://press.arashtad.com/wp-content/uploads/pdf/introduction-to-brownie-mix-a-boilerplate-for-important-smart-contract-projects.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(4291,667,'ppv','a:5:{s:3:\"doc\";s:130:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-interact-with-the-aave-protocol-directly-testnet-user-interface.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(4346,675,'ppv','a:5:{s:3:\"doc\";s:112:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-create-an-erc-20-token-writing-smart-contract.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(4412,697,'ppv','a:5:{s:3:\"doc\";s:110:\"https://press.arashtad.com/wp-content/uploads/pdf/using-brownie-to-switch-between-different-networks.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(4454,701,'ppv','a:5:{s:3:\"doc\";s:113:\"https://press.arashtad.com/wp-content/uploads/pdf/testing-deploypy-script-using-brownie-a-full-analysis.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(4497,705,'ppv','a:5:{s:3:\"doc\";s:110:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-interact-with-smart-contracts-using-brownie.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(4540,710,'ppv','a:5:{s:3:\"doc\";s:117:\"https://press.arashtad.com/wp-content/uploads/pdf/using-ganache-cli-with-brownie-to-deploy-a-smart-contract.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(4582,716,'ppv','a:5:{s:3:\"doc\";s:117:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-install-and-use-brownie-to-deploy-a-smart-contract.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(4624,718,'ppv','a:5:{s:3:\"doc\";s:105:\"https://press.arashtad.com/wp-content/uploads/pdf/lottery-project-compiling-a-complete-tutorial.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(4704,742,'ppv','a:5:{s:3:\"doc\";s:107:\"https://press.arashtad.com/wp-content/uploads/pdf/lottery-project-using-brownie-a-full-scale-dapp.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(4746,746,'ppv','a:5:{s:3:\"doc\";s:118:\"https://press.arashtad.com/wp-content/uploads/pdf/getting-started-with-decentralized-apps-dapps-using-python.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(4788,750,'ppv','a:5:{s:3:\"doc\";s:107:\"https://press.arashtad.com/wp-content/uploads/pdf/erc-20-event-and-function-sample-smart-contract.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(4830,754,'ppv','a:5:{s:3:\"doc\";s:110:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-share-your-scripts-on-github-a-useful-intro.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(4872,758,'ppv','a:5:{s:3:\"doc\";s:106:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-interact-with-the-erc-20-smart-contract.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(4926,762,'ppv','a:5:{s:3:\"doc\";s:113:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-apply-boolean-union-of-many-objects-in-blender.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(4992,784,'ppv','a:5:{s:3:\"doc\";s:118:\"https://press.arashtad.com/wp-content/uploads/pdf/a-quick-way-to-automatically-remove-loose-parts-in-blender.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(5034,788,'ppv','a:5:{s:3:\"doc\";s:107:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-instantly-translate-an-object-in-blender.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(5076,792,'ppv','a:5:{s:3:\"doc\";s:108:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-automate-your-tasks-and-design-in-blender.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(5118,796,'ppv','a:5:{s:3:\"doc\";s:113:\"https://press.arashtad.com/wp-content/uploads/pdf/creating-nfts-with-smart-contracts-and-python-brownie.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(5160,800,'ppv','a:5:{s:3:\"doc\";s:107:\"https://press.arashtad.com/wp-content/uploads/pdf/an-introduction-to-the-non-fungible-tokens-nfts.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(5226,804,'ppv','a:5:{s:3:\"doc\";s:116:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-design-a-wearable-in-blender-a-step-by-step-guide.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(5281,827,'ppv','a:5:{s:3:\"doc\";s:110:\"https://press.arashtad.com/wp-content/uploads/pdf/different-kinds-of-lattice-structure-using-blender.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(5323,831,'ppv','a:5:{s:3:\"doc\";s:134:\"https://press.arashtad.com/wp-content/uploads/pdf/creating-different-kinds-of-internal-lattice-structure-a-complete-tutorial.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(5365,835,'ppv','a:5:{s:3:\"doc\";s:114:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-easily-trim-objects-in-blender-with-a-clean-cut.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(5407,839,'ppv','a:5:{s:3:\"doc\";s:115:\"https://press.arashtad.com/wp-content/uploads/pdf/retrieve-the-coordinates-of-a-selected-point-in-blender.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(5449,843,'ppv','a:5:{s:3:\"doc\";s:97:\"https://press.arashtad.com/wp-content/uploads/pdf/fixing-non-manifold-meshes-in-blender.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(5511,847,'ppv','a:5:{s:3:\"doc\";s:106:\"https://press.arashtad.com/wp-content/uploads/pdf/three-js-lights-create-a-more-realistic-design.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(5565,867,'ppv','a:5:{s:3:\"doc\";s:105:\"https://press.arashtad.com/wp-content/uploads/pdf/threejs-object3d-a-tool-to-manipulate-objects.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(5607,871,'ppv','a:5:{s:3:\"doc\";s:107:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-create-and-use-custom-shaders-in-threejs.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(5649,875,'ppv','a:5:{s:3:\"doc\";s:98:\"https://press.arashtad.com/wp-content/uploads/pdf/introduction-to-3d-modeling-in-threejs.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(5727,879,'ppv','a:5:{s:3:\"doc\";s:117:\"https://press.arashtad.com/wp-content/uploads/pdf/interacting-with-local-terra-smart-contracts-using-python.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(5809,889,'ppv','a:5:{s:3:\"doc\";s:114:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-add-background-using-orbit-controls-in-three-js.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(5865,903,'ppv','a:5:{s:3:\"doc\";s:105:\"https://press.arashtad.com/wp-content/uploads/pdf/harmony-blockchain-introduction-pros-and-cons.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(5983,911,'ppv','a:5:{s:3:\"doc\";s:109:\"https://press.arashtad.com/wp-content/uploads/pdf/creating-glowing-sphere-in-three-js-notable-hints.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(6031,921,'ppv','a:5:{s:3:\"doc\";s:98:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-create-a-contact-form-in-joomla.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(6079,929,'ppv','a:5:{s:3:\"doc\";s:130:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-deploy-a-smart-contract-using-python-web3-tools-a-full-coverage.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(6129,936,'ppv','a:5:{s:3:\"doc\";s:127:\"https://press.arashtad.com/wp-content/uploads/pdf/getting-started-with-smart-contracts-using-solidity-a-helpful-intro.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(6205,948,'ppv','a:5:{s:3:\"doc\";s:113:\"https://press.arashtad.com/wp-content/uploads/pdf/interacting-with-terra-network-using-terra-python-sdk.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(6217,953,'ppv','a:5:{s:3:\"doc\";s:97:\"https://press.arashtad.com/wp-content/uploads/pdf/making-a-three-js-cube-a-useful-guide.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(6231,957,'ppv','a:5:{s:3:\"doc\";s:101:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-use-perspective-camera-in-three-js.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(6279,964,'ppv','a:5:{s:3:\"doc\";s:94:\"https://press.arashtad.com/wp-content/uploads/pdf/what-is-blockchain-in-simple-words.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(6289,968,'ppv','a:5:{s:3:\"doc\";s:124:\"https://press.arashtad.com/wp-content/uploads/pdf/what-skills-do-you-need-as-a-django-developer-a-complete-roadmap.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(6309,972,'ppv','a:5:{s:3:\"doc\";s:98:\"https://press.arashtad.com/wp-content/uploads/pdf/texture-of-a-dice-cube-texture-example.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(6375,994,'ppv','a:5:{s:3:\"doc\";s:101:\"https://press.arashtad.com/wp-content/uploads/pdf/terra-luna-what-it-is-how-to-deal-with-it.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(6417,998,'ppv','a:5:{s:3:\"doc\";s:94:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-design-textures-in-three-js.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(6460,1003,'ppv','a:5:{s:3:\"doc\";s:102:\"https://press.arashtad.com/wp-content/uploads/pdf/three-js-vs-webgl-what-are-the-differences.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(6502,1007,'ppv','a:5:{s:3:\"doc\";s:102:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-use-orbit-controls-a-complete-guide.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(6544,1011,'ppv','a:5:{s:3:\"doc\";s:98:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-create-threejs-tube-efficiently.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(6598,1015,'ppv','a:5:{s:3:\"doc\";s:96:\"https://press.arashtad.com/wp-content/uploads/pdf/using-video-as-a-texture-in-three-js.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(6664,1037,'ppv','a:5:{s:3:\"doc\";s:94:\"https://press.arashtad.com/wp-content/uploads/pdf/bump-map-vs-normal-map-in-three-js.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(6706,1041,'ppv','a:5:{s:3:\"doc\";s:99:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-use-multiple-cameras-in-three-js.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(6748,1045,'ppv','a:5:{s:3:\"doc\";s:103:\"https://press.arashtad.com/wp-content/uploads/pdf/threejs-realistic-shadows-a-practical-guide.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(6790,1049,'ppv','a:5:{s:3:\"doc\";s:117:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-rotate-objects-using-transform-control-in-three-js.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(6832,1053,'ppv','a:5:{s:3:\"doc\";s:96:\"https://press.arashtad.com/wp-content/uploads/pdf/migration-to-terra-2-a-perfect-guide.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(6886,1058,'ppv','a:5:{s:3:\"doc\";s:100:\"https://press.arashtad.com/wp-content/uploads/pdf/what-is-a-decentralized-application-dapp.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(6952,1081,'ppv','a:5:{s:3:\"doc\";s:102:\"https://press.arashtad.com/wp-content/uploads/pdf/specular-map-three-js-a-fantastic-tutorial.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(6994,1086,'ppv','a:5:{s:3:\"doc\";s:97:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-load-stl-3d-models-in-three-js.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(7036,1090,'ppv','a:5:{s:3:\"doc\";s:92:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-rotate-camera-in-three-js.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(7078,1094,'ppv','a:5:{s:3:\"doc\";s:90:\"https://press.arashtad.com/wp-content/uploads/pdf/point-cloud-effect-in-three-js.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(7120,1098,'ppv','a:5:{s:3:\"doc\";s:107:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-make-a-skybox-in-threejs-a-perfect-guide.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(7173,1103,'ppv','a:5:{s:3:\"doc\";s:98:\"https://press.arashtad.com/wp-content/uploads/pdf/what-is-a-restful-api-a-complete-guide.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(7240,1125,'ppv','a:5:{s:3:\"doc\";s:112:\"https://press.arashtad.com/wp-content/uploads/pdf/apache-vs-nginx-which-is-the-best-web-server-for-you.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(7282,1129,'ppv','a:5:{s:3:\"doc\";s:113:\"https://press.arashtad.com/wp-content/uploads/pdf/what-is-a-reverse-proxy-introduction-to-proxy-servers.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(7324,1133,'ppv','a:5:{s:3:\"doc\";s:80:\"https://press.arashtad.com/wp-content/uploads/pdf/what-is-a-web-server.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(7366,1138,'ppv','a:5:{s:3:\"doc\";s:101:\"https://press.arashtad.com/wp-content/uploads/pdf/top-15-commands-every-developer-must-know.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(7408,1142,'ppv','a:5:{s:3:\"doc\";s:116:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-load-an-obj-3d-model-with-its-texture-in-three-js.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(7462,1146,'ppv','a:5:{s:3:\"doc\";s:105:\"https://press.arashtad.com/wp-content/uploads/pdf/a-complete-guide-to-microservice-architecture.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(7528,1166,'ppv','a:5:{s:3:\"doc\";s:84:\"https://press.arashtad.com/wp-content/uploads/pdf/what-is-a-web-socket-api.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(7570,1172,'ppv','a:5:{s:3:\"doc\";s:103:\"https://press.arashtad.com/wp-content/uploads/pdf/what-is-a-linux-server-and-why-do-we-use-it.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(7612,1176,'ppv','a:5:{s:3:\"doc\";s:94:\"https://press.arashtad.com/wp-content/uploads/pdf/what-is-tcpip-and-how-does-it-work.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(7654,1180,'ppv','a:5:{s:3:\"doc\";s:104:\"https://press.arashtad.com/wp-content/uploads/pdf/how-do-restful-apis-work-an-insightful-guide.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(7696,1184,'ppv','a:5:{s:3:\"doc\";s:115:\"https://press.arashtad.com/wp-content/uploads/pdf/getting-started-with-nginx-on-linux-a-complete-tutorial.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(7750,1189,'ppv','a:5:{s:3:\"doc\";s:110:\"https://press.arashtad.com/wp-content/uploads/pdf/what-is-sql-injection-and-how-should-we-prevent-it.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(7816,1211,'ppv','a:5:{s:3:\"doc\";s:96:\"https://press.arashtad.com/wp-content/uploads/pdf/what-is-wsgi-and-why-is-it-necessary.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(7858,1215,'ppv','a:5:{s:3:\"doc\";s:100:\"https://press.arashtad.com/wp-content/uploads/pdf/introduction-to-docker-and-its-use-cases.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(7900,1219,'ppv','a:5:{s:3:\"doc\";s:98:\"https://press.arashtad.com/wp-content/uploads/pdf/what-is-mongo-db-and-why-do-we-need-it.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(7943,1223,'ppv','a:5:{s:3:\"doc\";s:100:\"https://press.arashtad.com/wp-content/uploads/pdf/introduction-to-docker-and-its-use-cases.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(7984,1227,'ppv','a:5:{s:3:\"doc\";s:106:\"https://press.arashtad.com/wp-content/uploads/pdf/what-is-an-api-gateway-and-why-is-it-important.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(8038,1231,'ppv','a:5:{s:3:\"doc\";s:102:\"https://press.arashtad.com/wp-content/uploads/pdf/what-is-postgresql-and-why-is-it-so-useful.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(8104,1253,'ppv','a:5:{s:3:\"doc\";s:103:\"https://press.arashtad.com/wp-content/uploads/pdf/decentralizaed-oracle-vs-centralized-oracle.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(8146,1257,'ppv','a:5:{s:3:\"doc\";s:105:\"https://press.arashtad.com/wp-content/uploads/pdf/introduction-to-tron-network-and-its-features.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(8188,1262,'ppv','a:5:{s:3:\"doc\";s:97:\"https://press.arashtad.com/wp-content/uploads/pdf/fast-api-compared-to-django-and-flask.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(8230,1266,'ppv','a:5:{s:3:\"doc\";s:100:\"https://press.arashtad.com/wp-content/uploads/pdf/what-is-dos-attack-and-how-to-prevent-it.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(8272,1270,'ppv','a:5:{s:3:\"doc\";s:96:\"https://press.arashtad.com/wp-content/uploads/pdf/why-is-kubernetes-an-important-tool-.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(8326,1274,'ppv','a:5:{s:3:\"doc\";s:129:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-quickly-create-and-deploy-a-vuejs-web-application-using-github.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(8392,1296,'ppv','a:5:{s:3:\"doc\";s:92:\"https://press.arashtad.com/wp-content/uploads/pdf/wordpress-and-python-integration.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(8434,1300,'ppv','a:5:{s:3:\"doc\";s:98:\"https://press.arashtad.com/wp-content/uploads/pdf/vuejs-comparison-with-other-frameworks.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(8476,1304,'ppv','a:5:{s:3:\"doc\";s:97:\"https://press.arashtad.com/wp-content/uploads/pdf/what-is-agile-and-why-is-it-important.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(8518,1308,'ppv','a:5:{s:3:\"doc\";s:96:\"https://press.arashtad.com/wp-content/uploads/pdf/why-is-ipfs-essential-for-blockchain.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(8560,1312,'ppv','a:5:{s:3:\"doc\";s:90:\"https://press.arashtad.com/wp-content/uploads/pdf/what-is-moralis-a-useful-intro.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(8616,1318,'ppv','a:5:{s:3:\"doc\";s:110:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-transfer-usdt-on-tron-network-using-tronweb.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(8690,1341,'ppv','a:5:{s:3:\"doc\";s:101:\"https://press.arashtad.com/wp-content/uploads/pdf/github-vs-gitlab-what-are-the-differences.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(8732,1345,'ppv','a:5:{s:3:\"doc\";s:104:\"https://press.arashtad.com/wp-content/uploads/pdf/a-useful-guide-to-all-linux-os-distributions.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(8774,1349,'ppv','a:5:{s:3:\"doc\";s:108:\"https://press.arashtad.com/wp-content/uploads/pdf/why-has-amazon-web-service-aws-become-so-popular.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(8816,1353,'ppv','a:5:{s:3:\"doc\";s:92:\"https://press.arashtad.com/wp-content/uploads/pdf/what-is-saas-an-insightful-guide.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(8858,1357,'ppv','a:5:{s:3:\"doc\";s:108:\"https://press.arashtad.com/wp-content/uploads/pdf/what-is-the-role-of-bootstrap-in-web-development.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(8912,1361,'ppv','a:5:{s:3:\"doc\";s:114:\"https://press.arashtad.com/wp-content/uploads/pdf/a-quick-guide-to-tron-network-interaction-using-python.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(8978,1383,'ppv','a:5:{s:3:\"doc\";s:108:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-choose-the-best-ecommerce-for-online-shop.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(9020,1387,'ppv','a:5:{s:3:\"doc\";s:99:\"https://press.arashtad.com/wp-content/uploads/pdf/five-best-nft-marketplaces-for-creators.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(9062,1391,'ppv','a:5:{s:3:\"doc\";s:109:\"https://press.arashtad.com/wp-content/uploads/pdf/the-top-3-types-of-cloud-computing-service-models.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(9104,1395,'ppv','a:5:{s:3:\"doc\";s:106:\"https://press.arashtad.com/wp-content/uploads/pdf/what-is-solana-blockchain-and-how-does-it-work.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(9146,1399,'ppv','a:5:{s:3:\"doc\";s:105:\"https://press.arashtad.com/wp-content/uploads/pdf/heroku-vs-netlify-vs-aws-vs-azure-vs-firebase.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(9200,1403,'ppv','a:5:{s:3:\"doc\";s:83:\"https://press.arashtad.com/wp-content/uploads/pdf/the-best-metaverse-apps.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(9266,1425,'ppv','a:5:{s:3:\"doc\";s:83:\"https://press.arashtad.com/wp-content/uploads/pdf/cosmos-network-overview.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(9308,1429,'ppv','a:5:{s:3:\"doc\";s:98:\"https://press.arashtad.com/wp-content/uploads/pdf/what-are-the-applications-of-metaverse.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(9350,1433,'ppv','a:5:{s:3:\"doc\";s:91:\"https://press.arashtad.com/wp-content/uploads/pdf/introduction-to-polygon-network.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(9392,1437,'ppv','a:5:{s:3:\"doc\";s:84:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-use-google-trends.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(9434,1441,'ppv','a:5:{s:3:\"doc\";s:111:\"https://press.arashtad.com/wp-content/uploads/pdf/what-is-avalanche-network-avax-and-how-does-it-work.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(9488,1445,'ppv','a:5:{s:3:\"doc\";s:106:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-buy-virtual-real-estate-in-decentraland.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(9554,1467,'ppv','a:5:{s:3:\"doc\";s:110:\"https://press.arashtad.com/wp-content/uploads/pdf/the-best-ways-to-protect-your-devices-from-hackers.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(9596,1471,'ppv','a:5:{s:3:\"doc\";s:91:\"https://press.arashtad.com/wp-content/uploads/pdf/introduction-to-cloud-of-things.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(9638,1475,'ppv','a:5:{s:3:\"doc\";s:91:\"https://press.arashtad.com/wp-content/uploads/pdf/cloud-computing-security-issues.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(9680,1479,'ppv','a:5:{s:3:\"doc\";s:113:\"https://press.arashtad.com/wp-content/uploads/pdf/a-comparison-of-virtual-reality-and-augmented-reality.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(9723,1484,'ppv','a:5:{s:3:\"doc\";s:81:\"https://press.arashtad.com/wp-content/uploads/pdf/best-seo-marketplaces.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(9776,1487,'ppv','a:5:{s:3:\"doc\";s:103:\"https://press.arashtad.com/wp-content/uploads/pdf/popular-blockchains-used-in-nft-development.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(9842,1512,'ppv','a:5:{s:3:\"doc\";s:89:\"https://press.arashtad.com/wp-content/uploads/pdf/a-full-guide-to-create-an-nft.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(9884,1517,'ppv','a:5:{s:3:\"doc\";s:112:\"https://press.arashtad.com/wp-content/uploads/pdf/the-complete-guide-to-virtual-network-functions-vnfs.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(9926,1521,'ppv','a:5:{s:3:\"doc\";s:91:\"https://press.arashtad.com/wp-content/uploads/pdf/fungible-vs-non-fungible-tokens.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(9968,1525,'ppv','a:5:{s:3:\"doc\";s:115:\"https://press.arashtad.com/wp-content/uploads/pdf/why-is-btc-halving-cycle-important-and-how-does-it-work.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(10010,1529,'ppv','a:5:{s:3:\"doc\";s:97:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-trade-nfts-an-insightful-guide.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(10064,1533,'ppv','a:5:{s:3:\"doc\";s:102:\"https://press.arashtad.com/wp-content/uploads/pdf/an-insightful-guide-to-binance-smart-chain.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(10130,1556,'ppv','a:5:{s:3:\"doc\";s:99:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-develop-nft-with-flow-blockchain.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(10172,1560,'ppv','a:5:{s:3:\"doc\";s:98:\"https://press.arashtad.com/wp-content/uploads/pdf/upwork-what-is-it-and-how-does-it-work.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(10214,1564,'ppv','a:5:{s:3:\"doc\";s:120:\"https://press.arashtad.com/wp-content/uploads/pdf/the-importance-of-a-digital-platform-strategy-for-businesses.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(10256,1569,'ppv','a:5:{s:3:\"doc\";s:99:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-overcome-top-big-data-challenges.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(10298,1573,'ppv','a:5:{s:3:\"doc\";s:99:\"https://press.arashtad.com/wp-content/uploads/pdf/what-is-devsecops-a-comprehensive-guide.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(10352,1577,'ppv','a:5:{s:3:\"doc\";s:111:\"https://press.arashtad.com/wp-content/uploads/pdf/iot-analytics-platform-for-real-time-data-ingestion.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(10418,1599,'ppv','a:5:{s:3:\"doc\";s:123:\"https://press.arashtad.com/wp-content/uploads/pdf/internal-developer-platform-idp-key-components-and-its-benefits.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(10460,1603,'ppv','a:5:{s:3:\"doc\";s:105:\"https://press.arashtad.com/wp-content/uploads/pdf/key-elements-for-a-successful-cloud-migration.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(10502,1607,'ppv','a:5:{s:3:\"doc\";s:119:\"https://press.arashtad.com/wp-content/uploads/pdf/bitcoin-etfs-a-comprehensive-guide-to-exchange-traded-funds.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(10544,1611,'ppv','a:5:{s:3:\"doc\";s:99:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-mine-bitcoin-an-insightful-guide.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(10586,1615,'ppv','a:5:{s:3:\"doc\";s:79:\"https://press.arashtad.com/wp-content/uploads/pdf/what-is-bitcoin-atm.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(10640,1619,'ppv','a:5:{s:3:\"doc\";s:104:\"https://press.arashtad.com/wp-content/uploads/pdf/optimistic-rollups-vs-zero-knowledge-rollups.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(10706,1641,'ppv','a:5:{s:3:\"doc\";s:96:\"https://press.arashtad.com/wp-content/uploads/pdf/cebp-vs-ceba-vs-cbse-key-differences.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(10748,1645,'ppv','a:5:{s:3:\"doc\";s:115:\"https://press.arashtad.com/wp-content/uploads/pdf/vyper-vs-solidity-smart-contract-languages-for-ethereum.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(10790,1649,'ppv','a:5:{s:3:\"doc\";s:96:\"https://press.arashtad.com/wp-content/uploads/pdf/hardhat-vs-truffle-which-one-is-best.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(10832,1653,'ppv','a:5:{s:3:\"doc\";s:99:\"https://press.arashtad.com/wp-content/uploads/pdf/the-rpa-security-checklist-and-best-practices.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(10874,1657,'ppv','a:5:{s:3:\"doc\";s:135:\"https://press.arashtad.com/wp-content/uploads/pdf/the-intelligent-enterprise-an-insightful-guide-to-its-components-and-capabilities.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(10928,1661,'ppv','a:5:{s:3:\"doc\";s:94:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-utilize-website-structure-for-seo.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(10994,1684,'ppv','a:5:{s:3:\"doc\";s:101:\"https://press.arashtad.com/wp-content/uploads/pdf/a-comprehensive-guide-to-tcpip-network-security.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(11038,1690,'ppv','a:5:{s:3:\"doc\";s:117:\"https://press.arashtad.com/wp-content/uploads/pdf/why-smart-contracts-are-revolutionary-smart-contracts-use-cases.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(11080,1694,'ppv','a:5:{s:3:\"doc\";s:109:\"https://press.arashtad.com/wp-content/uploads/pdf/on-page-seo-a-comprehensive-guide-to-on-site-techniques.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(11122,1698,'ppv','a:5:{s:3:\"doc\";s:95:\"https://press.arashtad.com/wp-content/uploads/pdf/the-best-way-to-research-keywords-for-seo.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(11164,1702,'ppv','a:5:{s:3:\"doc\";s:81:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-improve-seo-rankings.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(11228,1708,'ppv','a:5:{s:3:\"doc\";s:104:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-speed-up-your-wordpress-site-in-depth-guide.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(11294,1730,'ppv','a:5:{s:3:\"doc\";s:101:\"https://press.arashtad.com/wp-content/uploads/pdf/a-comprehensive-guide-to-mobile-app-development.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(11336,1735,'ppv','a:5:{s:3:\"doc\";s:107:\"https://press.arashtad.com/wp-content/uploads/pdf/how-to-create-a-wordpress-website-for-free-in-minutes.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(11378,1739,'ppv','a:5:{s:3:\"doc\";s:103:\"https://press.arashtad.com/wp-content/uploads/pdf/wordpress-the-best-cms-platform-to-create-website.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(11420,1743,'ppv','a:5:{s:3:\"doc\";s:75:\"https://press.arashtad.com/wp-content/uploads/pdf/why-is-uiux-important.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(11462,1747,'ppv','a:5:{s:3:\"doc\";s:95:\"https://press.arashtad.com/wp-content/uploads/pdf/the-best-ways-to-optimize-content-for-seo.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(11516,1751,'ppv','a:5:{s:3:\"doc\";s:102:\"https://press.arashtad.com/wp-content/uploads/pdf/metaverse-and-3d-development-revolutionary-ideas.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(11582,1773,'ppv','a:5:{s:3:\"doc\";s:105:\"https://press.arashtad.com/wp-content/uploads/pdf/how-can-branding-and-logo-influence-the-uiux-design.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(11624,1777,'ppv','a:5:{s:3:\"doc\";s:113:\"https://press.arashtad.com/wp-content/uploads/pdf/the-ultimate-guide-to-customer-service-management-with-tips.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(11666,1781,'ppv','a:5:{s:3:\"doc\";s:110:\"https://press.arashtad.com/wp-content/uploads/pdf/top-trending-million-dollar-apps-startups-must-invest-in.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(11708,1785,'ppv','a:5:{s:3:\"doc\";s:93:\"https://press.arashtad.com/wp-content/uploads/pdf/wordpress-vs-joomla-which-one-is-better.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}'),
(11750,1789,'ppv','a:5:{s:3:\"doc\";s:96:\"https://press.arashtad.com/wp-content/uploads/pdf/main-reasons-to-choose-joomla-for-your-cms.pdf\";s:5:\"width\";a:2:{s:5:\"width\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:6:\"height\";s:3:\"600\";s:4:\"unit\";s:2:\"px\";}s:8:\"showName\";s:1:\"0\";s:8:\"download\";s:1:\"1\";}');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-31  1:22:42
