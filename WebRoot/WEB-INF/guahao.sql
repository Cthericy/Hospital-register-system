drop database if exists guahao;
create database guahao;
use guahao;

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `admin_hosp`;
CREATE TABLE `admin_hosp` (
  `name` varchar(255) NOT NULL,
  `password` varchar(255) default NULL,
  PRIMARY KEY  (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

INSERT INTO `admin_hosp` (`name`, `password`) VALUES ('2', '123');



DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor` (
  
`id`         int(11)              NOT NULL  auto_increment,
 
`name`               varchar(255)                 NOT NULL,
 
`type`               varchar(255)                 NOT NULL,
  
`phone`              varchar(255)               NOT NULL,
 
`sex`                 varchar(255)                null, 
`address`             long varchar                   null,
`age`                integer                       NOT null,
 `title`              varchar(20)                    null,
`specialty`           varchar(10)                    null,
`introduction`        varchar(255)               NOT NULL,
 
PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;



DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `truename` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `phone` varchar(255) default NULL,
  `address` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;


DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL auto_increment,
  `truename` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `time` date NOT NULL,
  `type` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;



