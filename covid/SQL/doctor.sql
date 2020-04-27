CREATE DATABASE  IF NOT EXISTS `doctor_directory`;
USE `doctor_directory`;


CREATE TABLE `doctor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` LONGBLOB NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `qualification` varchar(45) DEFAULT NULL,
  `speciality` varchar(45) DEFAULT NULL,
  `country` varchar(45)  DEFAULT  NULL,
  `area` varchar(45)  DEFAULT NULL,
  
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

