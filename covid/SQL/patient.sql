CREATE DATABASE  IF NOT EXISTS `patient_directory`;
USE `patient_directory`;

DROP TABLE IF EXISTS `description`;
CREATE TABLE `description` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_descriptions` varchar(128) DEFAULT NULL,
  
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `patient`;

CREATE TABLE `patient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` LONGBLOB NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `qualification` varchar(45) DEFAULT NULL,
  `area` varchar(45) DEFAULT NULL,
  `experience` varchar(45) DEFAULT NULL,
  `description_id` int(11) DEFAULT NULL,
  
  PRIMARY KEY (`id`),
  
  KEY `FK_DETAIL_idx` (`description_id`),

  CONSTRAINT `FK_DETAIL`  foreign key (`description_id`)
  
  REFERENCES `description` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
  
  
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;



