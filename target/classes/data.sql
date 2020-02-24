CREATE DATABASE  IF NOT EXISTS `s4dx_db` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `s4dx_db`;


DROP TABLE IF EXISTS `xdevices`;

CREATE TABLE `xdevices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturer_id` varchar(45) NOT NULL,
  `hcp_id` int(11) DEFAULT NULL,
  `hardware_state` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `manufacturer_id_UNIQUE` (`manufacturer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

LOCK TABLES `xdevices` WRITE;
INSERT INTO `xdevices` VALUES (1,'X1',NULL,'UNASSIGNED'),(2,'X2',NULL,'UNASSIGNED'),(3,'X3',NULL,'UNASSIGNED'),(4,'X4',NULL,'UNASSIGNED'),(5,'X5',NULL,'UNASSIGNED'),(6,'X6',NULL,'UNASSIGNED');
UNLOCK TABLES;
DROP TABLE IF EXISTS `hcps`;
CREATE TABLE `hcps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hcpid` varchar(45) DEFAULT NULL,
  `street` varchar(145) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `city_code` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;


LOCK TABLES `hcps` WRITE;
INSERT INTO `hcps` VALUES (18,'Schäfer','Sredzkistr. 67','Berlin','10405','Schäfer'),(19,'Buschhaus','Prenzlauer Allee 217','Berlin','10405','Buschhaus'),(20,'Falsafi Amin','Kolmarer Str. 1','Berlin','10405','Falsafi Amin'),(21,'Fink','Marienburger Str. 3-4','Berlin','10405','Fink'),(22,'Fischer','Jablonskistr. 16','Berlin','10405','Fischer'),(23,'Glaunsinger','Danziger Str. 78 b','Berlin','10405','Glaunsinger'),(24,'Jürgens','Prenzlauer Allee 19','Berlin','10405','Jürgens'),(25,'Knobloch','Winsstr. 45','Berlin','10405','Knobloch'),(26,'Krüger','Kollwitzstr. 14','Berlin','10405','Krüger'),(27,'Kubo','Sredzkistr. 47','Berlin','10405','Kubo'),(28,'Lammerschmidt','Winsstr. 40','Berlin','10405','Lammerschmidt'),(29,'Pomrenke','Greifswalder Str. 5','Berlin','10405','Pomrenke'),(30,'Schafranka','Immanuelkirchstr. 30','Berlin','10405','Schafranka'),(31,'Scholz','Chodowieckistr. 15','Berlin','10405','Scholz'),(32,'Schreen','Winsstr. 56','Berlin','10405','Schreen'),(33,'Wagner','Greifswalder Str. 23','Berlin','10405','Wagner'),(34,'Wullkopf','Prenzlauer Allee 187','Berlin','10405','Wullkopf'),(35,'1','street','Berlin','10405','1');
UNLOCK TABLES;

