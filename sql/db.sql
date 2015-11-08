--
-- Create database
--
CREATE DATABASE IF NOT EXISTS vagrant;

--
-- Create a user for the DB
--
GRANT ALL ON vagrant.* TO 'vagrant'@'%'  IDENTIFIED BY 'vagrant';


USE vagrant;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `value` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'Book 1','10'),(2,'Book 2','15'),(3,'Book 3','20');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

