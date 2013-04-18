-- MySQL dump 10.13  Distrib 5.1.66, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: hmixer
-- ------------------------------------------------------
-- Server version	5.1.66-0+squeeze1

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
-- Table structure for table `age_ranges`
--

DROP TABLE IF EXISTS `age_ranges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `age_ranges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `age_min` int(11) DEFAULT NULL,
  `age_max` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `age_ranges`
--

LOCK TABLES `age_ranges` WRITE;
/*!40000 ALTER TABLE `age_ranges` DISABLE KEYS */;
INSERT INTO `age_ranges` VALUES (1,'everyone',0,1000,'2013-02-18 15:00:11','2013-02-18 15:00:13');
/*!40000 ALTER TABLE `age_ranges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contributions`
--

DROP TABLE IF EXISTS `contributions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contributions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `submission_id` int(11) DEFAULT NULL,
  `metric_id` int(11) DEFAULT NULL,
  `healthy_min` decimal(10,0) DEFAULT NULL,
  `healthy_max` decimal(10,0) DEFAULT NULL,
  `total_min` decimal(10,0) DEFAULT NULL,
  `total_max` decimal(10,0) DEFAULT NULL,
  `score_weight` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `demographic_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_contributions_on_submission_id` (`submission_id`),
  KEY `index_contributions_on_metric_id` (`metric_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1784 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contributions`
--

LOCK TABLES `contributions` WRITE;
/*!40000 ALTER TABLE `contributions` DISABLE KEYS */;
INSERT INTO `contributions` VALUES (1,1,1,'64','95','0','160',10,'2013-02-12 01:35:57','2013-04-15 21:35:44',1),(2,1,2,'75','102','0','130',4,'2013-02-12 01:35:57','2013-04-15 21:35:44',1),(3,1,3,'366','522','0','600',3,'2013-02-12 01:35:57','2013-04-15 21:35:44',1),(4,1,4,'5','7','0','18',5,'2013-02-12 01:35:57','2013-04-15 21:35:44',1),(5,1,1,'61','94','0','160',10,'2013-02-12 01:35:57','2013-04-15 21:35:44',2),(6,1,2,'93','123','0','130',4,'2013-02-12 01:35:57','2013-04-15 21:35:44',2),(7,1,3,'403','564','0','600',3,'2013-02-12 01:35:57','2013-04-15 21:35:44',2),(8,1,4,'1','4','0','18',5,'2013-02-12 01:35:57','2013-04-15 21:35:44',2),(9,1,5,'35','63','0','120',5,'2013-02-12 01:35:57','2013-04-15 21:35:44',1),(10,1,5,'39','68','0','120',5,'2013-02-12 01:35:57','2013-04-15 21:35:44',2),(11,1,6,'6','9','0','10',3,'2013-04-04 15:54:29','2013-04-15 21:30:35',1),(12,1,6,'7','10','0','10',3,'2013-04-04 15:54:29','2013-04-15 21:35:44',2),(13,1,7,'61','100','0','160',10,'2013-04-04 15:56:31','2013-04-15 21:35:44',1),(14,1,7,'49','90','0','160',10,'2013-04-04 15:56:31','2013-04-15 21:35:44',2),(15,1,8,'99','148','50','230',5,'2013-04-04 15:58:01','2013-04-15 21:35:44',1),(16,1,8,'105','154','50','230',5,'2013-04-04 15:58:01','2013-04-15 21:35:44',2),(17,1,9,'65','95','35','140',5,'2013-04-04 15:59:02','2013-04-15 21:35:44',1),(18,1,9,'60','90','35','140',5,'2013-04-04 15:59:02','2013-04-15 21:35:44',2),(19,1,10,'2','4','0','20',5,'2013-04-04 16:00:29','2013-04-15 21:35:44',1),(20,1,10,'0','2','0','20',5,'2013-04-04 16:00:29','2013-04-15 21:35:44',2),(21,1,11,'0','1','0','10',5,'2013-04-04 16:00:29','2013-04-15 21:08:16',1),(22,1,11,'0','1','0','10',5,'2013-04-04 16:00:29','2013-04-15 21:08:16',2),(23,1,12,'66','75','0','200',10,'2013-04-04 16:08:41','2013-04-15 21:35:44',1),(24,1,12,'74','84','0','200',10,'2013-04-04 16:08:41','2013-04-15 21:35:44',2),(25,1,13,'1','4','0','10',3,'2013-04-04 15:54:29','2013-04-15 21:35:44',1),(26,1,13,'0','3','0','10',3,'2013-04-04 15:54:29','2013-04-15 21:35:44',2),(1654,26,1,'49','90','0','160',10,'2013-04-04 22:45:23','2013-04-04 22:45:23',1),(1655,26,2,'93','123','0','130',4,'2013-04-04 22:45:23','2013-04-04 22:45:23',1),(1656,26,3,'437','600','0','600',3,'2013-04-04 22:45:23','2013-04-04 22:45:23',1),(1657,26,4,'1','4','0','18',5,'2013-04-04 22:45:23','2013-04-04 22:45:23',1),(1658,26,5,'30','60','0','120',5,'2013-04-04 22:45:23','2013-04-04 22:45:23',1),(1659,26,6,'7','10','0','10',3,'2013-04-04 22:45:23','2013-04-04 22:45:23',1),(1660,26,7,'49','90','0','160',10,'2013-04-04 22:45:23','2013-04-04 22:45:23',1),(1661,26,8,'90','140','50','230',5,'2013-04-04 22:45:23','2013-04-04 22:45:23',1),(1662,26,9,'60','90','35','140',5,'2013-04-04 22:45:23','2013-04-04 22:45:23',1),(1663,26,10,'0','2','0','20',5,'2013-04-04 22:45:23','2013-04-04 22:45:23',1),(1664,26,11,'0','1','0','10',5,'2013-04-04 22:45:23','2013-04-04 22:45:23',1),(1665,26,12,'74','84','0','200',10,'2013-04-04 22:45:23','2013-04-04 22:45:23',1),(1666,26,13,'0','3','0','10',3,'2013-04-04 22:45:23','2013-04-04 22:45:23',1),(1667,26,1,'49','90','0','160',10,'2013-04-04 22:45:23','2013-04-04 22:45:23',2),(1668,26,2,'93','123','0','130',4,'2013-04-04 22:45:23','2013-04-04 22:45:23',2),(1669,26,3,'437','600','0','600',3,'2013-04-04 22:45:23','2013-04-04 22:45:23',2),(1670,26,4,'1','4','0','18',5,'2013-04-04 22:45:23','2013-04-04 22:45:23',2),(1671,26,5,'30','60','0','120',5,'2013-04-04 22:45:23','2013-04-04 22:45:23',2),(1672,26,6,'7','10','0','10',3,'2013-04-04 22:45:23','2013-04-04 22:45:23',2),(1673,26,7,'49','90','0','160',10,'2013-04-04 22:45:23','2013-04-04 22:45:23',2),(1674,26,8,'90','140','50','230',5,'2013-04-04 22:45:23','2013-04-04 22:45:23',2),(1675,26,9,'60','90','35','140',5,'2013-04-04 22:45:23','2013-04-04 22:45:23',2),(1676,26,10,'0','2','0','20',5,'2013-04-04 22:45:23','2013-04-04 22:45:23',2),(1677,26,11,'0','1','0','10',5,'2013-04-04 22:45:23','2013-04-04 22:45:23',2),(1678,26,12,'74','84','0','200',10,'2013-04-04 22:45:23','2013-04-04 22:45:23',2),(1679,26,13,'0','3','0','10',3,'2013-04-04 22:45:23','2013-04-04 22:45:23',2),(1680,27,1,'49','90','0','160',10,'2013-04-09 22:04:27','2013-04-09 22:04:27',1),(1681,27,2,'93','123','0','130',4,'2013-04-09 22:04:27','2013-04-09 22:04:27',1),(1682,27,3,'437','600','0','600',3,'2013-04-09 22:04:27','2013-04-09 22:04:27',1),(1683,27,4,'1','4','0','18',5,'2013-04-09 22:04:27','2013-04-09 22:04:27',1),(1684,27,5,'30','60','0','120',5,'2013-04-09 22:04:27','2013-04-09 22:04:27',1),(1685,27,6,'7','10','0','10',3,'2013-04-09 22:04:27','2013-04-09 22:04:27',1),(1686,27,7,'49','90','0','160',10,'2013-04-09 22:04:27','2013-04-09 22:04:27',1),(1687,27,8,'90','140','50','230',5,'2013-04-09 22:04:27','2013-04-09 22:04:27',1),(1688,27,9,'60','90','35','140',5,'2013-04-09 22:04:27','2013-04-09 22:04:27',1),(1689,27,10,'0','2','0','20',5,'2013-04-09 22:04:27','2013-04-09 22:04:27',1),(1690,27,11,'0','1','0','10',5,'2013-04-09 22:04:27','2013-04-09 22:04:27',1),(1691,27,12,'74','84','0','200',10,'2013-04-09 22:04:27','2013-04-09 22:04:27',1),(1692,27,13,'0','3','0','10',3,'2013-04-09 22:04:27','2013-04-09 22:04:27',1),(1693,27,1,'49','90','0','160',10,'2013-04-09 22:04:27','2013-04-09 22:04:27',2),(1694,27,2,'93','123','0','130',4,'2013-04-09 22:04:27','2013-04-09 22:04:27',2),(1695,27,3,'437','600','0','600',3,'2013-04-09 22:04:27','2013-04-09 22:04:27',2),(1696,27,4,'1','4','0','18',5,'2013-04-09 22:04:27','2013-04-09 22:04:27',2),(1697,27,5,'30','60','0','120',5,'2013-04-09 22:04:27','2013-04-09 22:04:27',2),(1698,27,6,'7','10','0','10',3,'2013-04-09 22:04:27','2013-04-09 22:04:27',2),(1699,27,7,'49','90','0','160',10,'2013-04-09 22:04:27','2013-04-09 22:04:27',2),(1700,27,8,'90','140','50','230',5,'2013-04-09 22:04:27','2013-04-09 22:04:27',2),(1701,27,9,'60','90','35','140',5,'2013-04-09 22:04:27','2013-04-09 22:04:27',2),(1702,27,10,'0','2','0','20',5,'2013-04-09 22:04:27','2013-04-09 22:04:27',2),(1703,27,11,'0','1','0','10',5,'2013-04-09 22:04:27','2013-04-09 22:04:27',2),(1704,27,12,'74','84','0','200',10,'2013-04-09 22:04:27','2013-04-09 22:04:27',2),(1705,27,13,'0','3','0','10',3,'2013-04-09 22:04:27','2013-04-09 22:04:27',2),(1706,28,1,'0','41','0','160',10,'2013-04-09 22:35:59','2013-04-11 21:39:32',1),(1707,28,2,'0','29','0','130',4,'2013-04-09 22:35:59','2013-04-11 21:39:46',1),(1708,28,3,'278','441','0','600',3,'2013-04-09 22:35:59','2013-04-09 22:35:59',1),(1709,28,4,'1','4','0','18',5,'2013-04-09 22:35:59','2013-04-09 22:35:59',1),(1710,28,5,'60','90','0','120',5,'2013-04-09 22:35:59','2013-04-09 22:35:59',1),(1711,28,6,'7','10','0','10',3,'2013-04-09 22:35:59','2013-04-09 22:35:59',1),(1712,28,7,'49','90','0','160',10,'2013-04-09 22:35:59','2013-04-09 22:35:59',1),(1713,28,8,'141','191','50','230',5,'2013-04-09 22:35:59','2013-04-09 22:35:59',1),(1714,28,9,'60','90','35','140',5,'2013-04-09 22:35:59','2013-04-09 22:35:59',1),(1715,28,10,'0','2','0','20',5,'2013-04-09 22:35:59','2013-04-09 22:35:59',1),(1716,28,11,'0','1','0','10',5,'2013-04-09 22:35:59','2013-04-09 22:35:59',1),(1717,28,12,'74','84','0','200',10,'2013-04-09 22:35:59','2013-04-09 22:35:59',1),(1718,28,13,'0','3','0','10',3,'2013-04-09 22:35:59','2013-04-09 22:35:59',1),(1719,28,1,'119','160','0','160',10,'2013-04-09 22:35:59','2013-04-11 21:39:32',2),(1720,28,2,'100','130','0','130',4,'2013-04-09 22:35:59','2013-04-11 21:39:46',2),(1721,28,3,'278','441','0','600',3,'2013-04-09 22:35:59','2013-04-09 22:35:59',2),(1722,28,4,'1','4','0','18',5,'2013-04-09 22:35:59','2013-04-09 22:35:59',2),(1723,28,5,'60','90','0','120',5,'2013-04-09 22:35:59','2013-04-09 22:35:59',2),(1724,28,6,'7','10','0','10',3,'2013-04-09 22:35:59','2013-04-09 22:35:59',2),(1725,28,7,'49','90','0','160',10,'2013-04-09 22:35:59','2013-04-09 22:35:59',2),(1726,28,8,'141','191','50','230',5,'2013-04-09 22:35:59','2013-04-09 22:35:59',2),(1727,28,9,'60','90','35','140',5,'2013-04-09 22:35:59','2013-04-09 22:35:59',2),(1728,28,10,'0','2','0','20',5,'2013-04-09 22:35:59','2013-04-09 22:35:59',2),(1729,28,11,'0','1','0','10',5,'2013-04-09 22:35:59','2013-04-09 22:35:59',2),(1730,28,12,'74','84','0','200',10,'2013-04-09 22:35:59','2013-04-09 22:35:59',2),(1731,28,13,'0','3','0','10',3,'2013-04-09 22:35:59','2013-04-09 22:35:59',2),(1732,29,1,'0','41','0','160',10,'2013-04-11 21:43:17','2013-04-11 21:43:18',1),(1733,29,2,'93','123','0','130',4,'2013-04-11 21:43:17','2013-04-11 21:43:18',1),(1734,29,3,'437','600','0','600',3,'2013-04-11 21:43:17','2013-04-11 21:43:18',1),(1735,29,4,'1','4','0','18',5,'2013-04-11 21:43:17','2013-04-11 21:43:18',1),(1736,29,5,'30','60','0','120',5,'2013-04-11 21:43:17','2013-04-11 21:43:18',1),(1737,29,6,'7','10','0','10',3,'2013-04-11 21:43:17','2013-04-11 21:43:18',1),(1738,29,7,'49','90','0','160',10,'2013-04-11 21:43:17','2013-04-11 21:43:18',1),(1739,29,8,'90','140','50','230',5,'2013-04-11 21:43:17','2013-04-11 21:43:18',1),(1740,29,9,'60','90','35','140',5,'2013-04-11 21:43:17','2013-04-11 21:43:18',1),(1741,29,10,'0','2','0','20',5,'2013-04-11 21:43:17','2013-04-11 21:43:18',1),(1742,29,11,'0','1','0','10',5,'2013-04-11 21:43:17','2013-04-11 21:43:18',1),(1743,29,12,'74','84','0','200',10,'2013-04-11 21:43:17','2013-04-11 21:43:18',1),(1744,29,13,'0','3','0','10',3,'2013-04-11 21:43:17','2013-04-11 21:43:18',1),(1745,29,1,'0','41','0','160',10,'2013-04-11 21:43:17','2013-04-11 21:43:18',2),(1746,29,2,'93','123','0','130',4,'2013-04-11 21:43:17','2013-04-11 21:43:18',2),(1747,29,3,'437','600','0','600',3,'2013-04-11 21:43:17','2013-04-11 21:43:18',2),(1748,29,4,'1','4','0','18',5,'2013-04-11 21:43:18','2013-04-11 21:43:18',2),(1749,29,5,'30','60','0','120',5,'2013-04-11 21:43:18','2013-04-11 21:43:18',2),(1750,29,6,'7','10','0','10',3,'2013-04-11 21:43:18','2013-04-11 21:43:18',2),(1751,29,7,'49','90','0','160',10,'2013-04-11 21:43:18','2013-04-11 21:43:18',2),(1752,29,8,'90','140','50','230',5,'2013-04-11 21:43:18','2013-04-11 21:43:18',2),(1753,29,9,'60','90','35','140',5,'2013-04-11 21:43:18','2013-04-11 21:43:18',2),(1754,29,10,'0','2','0','20',5,'2013-04-11 21:43:18','2013-04-11 21:43:18',2),(1755,29,11,'0','1','0','10',5,'2013-04-11 21:43:18','2013-04-11 21:43:18',2),(1756,29,12,'74','84','0','200',10,'2013-04-11 21:43:18','2013-04-11 21:43:18',2),(1757,29,13,'0','3','0','10',3,'2013-04-11 21:43:18','2013-04-11 21:43:18',2),(1758,30,1,'126','160','0','160',10,'2013-04-15 21:29:30','2013-04-15 21:31:17',1),(1759,30,2,'52','81','0','130',4,'2013-04-15 21:29:30','2013-04-15 21:30:35',1),(1760,30,3,'142','303','0','600',3,'2013-04-15 21:29:30','2013-04-15 21:30:35',1),(1761,30,4,'12','15','0','18',5,'2013-04-15 21:29:30','2013-04-15 21:30:35',1),(1762,30,5,'4','33','0','120',5,'2013-04-15 21:29:30','2013-04-15 21:30:35',1),(1763,30,6,'4','7','0','10',3,'2013-04-15 21:29:30','2013-04-15 21:30:35',1),(1764,30,7,'95','136','0','160',10,'2013-04-15 21:29:30','2013-04-15 21:30:35',1),(1765,30,8,'75','124','50','230',5,'2013-04-15 21:29:30','2013-04-15 21:30:35',1),(1766,30,9,'83','113','35','140',5,'2013-04-15 21:29:30','2013-04-15 21:30:35',1),(1767,30,10,'6','8','0','20',5,'2013-04-15 21:29:30','2013-04-15 21:30:35',1),(1768,30,11,'2','3','0','10',5,'2013-04-15 21:29:30','2013-04-15 21:30:35',1),(1769,30,12,'2','12','0','200',10,'2013-04-15 21:29:30','2013-04-15 21:30:35',1),(1770,30,13,'4','7','0','10',3,'2013-04-15 21:29:30','2013-04-15 21:30:35',1),(1771,30,1,'0','34','0','160',10,'2013-04-15 21:29:30','2013-04-15 21:31:26',2),(1772,30,2,'87','116','0','130',4,'2013-04-15 21:29:30','2013-04-15 21:29:30',2),(1773,30,3,'403','564','0','600',3,'2013-04-15 21:29:30','2013-04-15 21:29:30',2),(1774,30,4,'1','4','0','18',5,'2013-04-15 21:29:30','2013-04-15 21:29:30',2),(1775,30,5,'39','68','0','120',5,'2013-04-15 21:29:30','2013-04-15 21:29:30',2),(1776,30,6,'7','10','0','10',3,'2013-04-15 21:29:30','2013-04-15 21:29:30',2),(1777,30,7,'49','90','0','160',10,'2013-04-15 21:29:30','2013-04-15 21:29:30',2),(1778,30,8,'105','154','50','230',5,'2013-04-15 21:29:30','2013-04-15 21:29:30',2),(1779,30,9,'60','90','35','140',5,'2013-04-15 21:29:30','2013-04-15 21:29:30',2),(1780,30,10,'0','2','0','20',5,'2013-04-15 21:29:30','2013-04-15 21:29:30',2),(1781,30,11,'0','1','0','10',5,'2013-04-15 21:29:30','2013-04-15 21:29:30',2),(1782,30,12,'74','84','0','200',10,'2013-04-15 21:29:30','2013-04-15 21:29:30',2),(1783,30,13,'0','3','0','10',3,'2013-04-15 21:29:30','2013-04-15 21:29:30',2);
/*!40000 ALTER TABLE `contributions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demographics`
--

DROP TABLE IF EXISTS `demographics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demographics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gender` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `age_ranges_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demographics`
--

LOCK TABLES `demographics` WRITE;
/*!40000 ALTER TABLE `demographics` DISABLE KEYS */;
INSERT INTO `demographics` VALUES (1,'male','2013-02-18 14:59:36','2013-02-18 14:59:37',1),(2,'female','2013-02-18 14:59:50','2013-02-18 14:59:52',1);
/*!40000 ALTER TABLE `demographics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metrics`
--

DROP TABLE IF EXISTS `metrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metrics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metrics`
--

LOCK TABLES `metrics` WRITE;
/*!40000 ALTER TABLE `metrics` DISABLE KEYS */;
INSERT INTO `metrics` VALUES (1,'LDL','mg/dl','2013-02-12 01:30:13','2013-02-12 01:30:13'),(2,'HDL','mg/dl','2013-02-12 01:30:13','2013-02-12 01:30:13'),(3,'Triglycerides','mg/dl','2013-02-12 01:30:13','2013-02-12 01:30:13'),(4,'Sleep','hours/night','2013-02-12 01:30:13','2013-02-12 01:30:13'),(5,'Exercise','min','2013-02-12 01:32:54','2013-02-12 01:32:54'),(6,'Happiness','happiness scale','2013-02-12 01:32:54','2013-02-12 01:32:54'),(7,'Glucose','mg/dl','2013-02-12 01:32:54','2013-02-12 01:32:54'),(8,'Blood Pressure Systolic','mm Hg','2013-02-12 01:32:54','2013-02-12 01:32:54'),(9,'Blood Pressure Diastolic','mm Hg','2013-02-12 01:35:57','2013-02-12 01:35:57'),(10,'Alcohol','drinks/day','2013-02-12 01:35:57','2013-02-12 01:35:57'),(11,'Smoking','cigarettes/day','2013-02-12 01:35:57','2013-02-12 01:35:57'),(12,'Waistline','cm','2013-02-12 01:35:57','2013-02-12 01:35:57'),(13,'Pain','pain scale','2013-04-04 15:12:57','2013-04-04 15:12:59');
/*!40000 ALTER TABLE `metrics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20130211214156'),('20130211214221'),('20130211214319'),('20130211215510'),('20130211223441'),('20130212003231'),('20130212003901'),('20130213190849'),('20130213191346'),('20130213192205'),('20130213192911'),('20130214222723');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submissions`
--

DROP TABLE IF EXISTS `submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `message` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_submissions_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submissions`
--

LOCK TABLES `submissions` WRITE;
/*!40000 ALTER TABLE `submissions` DISABLE KEYS */;
INSERT INTO `submissions` VALUES (1,1,'Average data of all doctors','2013-02-12 01:35:57','2013-02-26 23:00:20'),(26,20,'ewrww','2013-04-04 22:45:23','2013-04-04 22:45:23'),(27,21,'tsese','2013-04-09 22:04:27','2013-04-09 22:04:27'),(28,22,'sdfsdfssdf','2013-04-09 22:35:59','2013-04-09 22:35:59'),(29,23,'Singe Male Test','2013-04-11 21:43:17','2013-04-11 21:43:18'),(30,24,'sdsdf','2013-04-15 21:29:30','2013-04-15 21:29:30');
/*!40000 ALTER TABLE `submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Default','default','2013-02-12 01:30:13','2013-02-26 22:19:59','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),(3,'Dr. Defacto 2','test2@defactomd.com','2013-02-12 01:35:57','2013-02-26 22:44:07','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),(5,'Dr. Bob','test4@test.com','2013-02-26 22:53:42','2013-02-26 22:53:42','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),(8,'Andrew','andrew@myimedia.com','2013-02-27 01:00:10','2013-02-27 01:00:10','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),(9,'Andrew','invo@myimedia.com','2013-03-04 22:32:48','2013-03-04 22:32:48','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),(10,'Dubious Guy','invo2@myimedia.com','2013-03-04 22:33:26','2013-03-04 22:33:26','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),(11,'kja;slkf','test5@test.org','2013-03-05 15:08:26','2013-03-05 15:08:26','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),(12,'testjlkj','test6@usr.com','2013-03-05 15:22:38','2013-03-05 15:22:38','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),(14,'test doctor','test7@test.com','2013-04-04 21:36:09','2013-04-04 21:36:09','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),(16,'test','test@test.com','2013-04-04 21:57:22','2013-04-04 21:57:22','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),(17,'test','test8@test.com','2013-04-04 21:59:38','2013-04-04 21:59:38','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),(18,'tets','test9@test.com','2013-04-04 22:06:21','2013-04-04 22:06:21','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),(20,'serwi','jmss@ns','2013-04-04 22:45:23','2013-04-04 22:45:23','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),(21,'teset','test@test','2013-04-09 22:04:27','2013-04-09 22:04:27','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),(22,'asdfasdfdfs','sfasdfasdfa@asdf','2013-04-09 22:35:59','2013-04-09 22:35:59','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),(23,'Singe Male Test','test@tessst.com','2013-04-11 21:43:17','2013-04-11 21:43:17','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),(24,'asdsd','asdfasd','2013-04-15 21:29:30','2013-04-15 21:29:30','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL);
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

-- Dump completed on 2013-04-17 17:35:34
