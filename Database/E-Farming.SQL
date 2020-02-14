/*
SQLyog Community Edition- MySQL GUI v7.15 
MySQL - 5.5.29 : Database - eform
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`eform` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `eform`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `user` varchar(10) DEFAULT NULL,
  `pwd` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`user`,`pwd`) values ('admin','admin');

/*Table structure for table `buyer` */

DROP TABLE IF EXISTS `buyer`;

CREATE TABLE `buyer` (
  `ename` varchar(20) DEFAULT NULL,
  `uname` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `phoneno` varchar(20) DEFAULT NULL,
  `dat` varchar(20) DEFAULT NULL,
  `idd` int(11) NOT NULL AUTO_INCREMENT,
  `trade` varchar(30) DEFAULT NULL,
  UNIQUE KEY `idd` (`idd`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `buyer` */

insert  into `buyer`(`ename`,`uname`,`password`,`address`,`city`,`state`,`email`,`phoneno`,`dat`,`idd`,`trade`) values ('sel','sel','sel','sel','sel','sels','sel@gmail.com','7097020816','2016-07-28',3,'abc '),('seller','seller','seller','hyd','hyd','ap','seller@gmail.com','9963258741','11-11-2016',5,'hyd'),('shiva','shiva','shiva','h.no-5','vijayawada','andhrapradesh','A@GMAIL.COM','7896541230','11-11-2016',6,'bejawada');

/*Table structure for table `sale` */

DROP TABLE IF EXISTS `sale`;

CREATE TABLE `sale` (
  `company` varchar(20) DEFAULT NULL,
  `item` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `quantity` varchar(20) DEFAULT NULL,
  `phonenumber` varchar(20) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sale` */

insert  into `sale`(`company`,`item`,`name`,`quantity`,`phonenumber`,`address`,`status`) values ('abc','cutton','adsad','23','1231','asd','buy'),('abc','zd','z','z','z','z','buy'),('abc','1','1','300','9999999999','z','buy'),('abc','','','','','','buy'),('abc','f','f','f','f','f','buy'),('abc','2','ss','45','9963259866','sd','buy'),('abc','','','','','','buy'),('abc','cotton','aa','2','1234567890','hyd','buy'),(NULL,NULL,NULL,NULL,NULL,NULL,'new'),('abc','guy','hl','hl','lh','hl','new'),('abc','beer','shiva','100','9865325632','nalgonda','buy'),('abc','','','','','','buy'),('abc','fjgj','jf','1000','10101010101','xd','new'),('hyd','colgate','colgate','200','9865325896','sczj','buy');

/*Table structure for table `seller` */

DROP TABLE IF EXISTS `seller`;

CREATE TABLE `seller` (
  `ename` varchar(20) DEFAULT NULL,
  `uname` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `phoneno` varchar(20) DEFAULT NULL,
  `dat` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `seller` */

insert  into `seller`(`ename`,`uname`,`password`,`address`,`city`,`state`,`email`,`phoneno`,`dat`) values ('DB','DGS','AA','AA','aa','AA','A@GMAIL.COM','7896541230','11-11-2016'),('buyer','buyer','buyer','nalgonda','hyderbad','ap','buyer@gmail.com','9985286470','11-11-2016'),('krish','krish','krish','236','vijayawada','andhrapradesh','buyer@gmail.com','7896541230','11-11-2016');

/*Table structure for table `statu` */

DROP TABLE IF EXISTS `statu`;

CREATE TABLE `statu` (
  `name` varchar(20) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `statu` */

insert  into `statu`(`name`,`status`) values ('adsad','asdasdasd'),('1','dughiudgjiasjkgf'),('1','yes'),('','xdhdfh'),('colgate','i want 2000 packets of colgates ');

/*Table structure for table `trade` */

DROP TABLE IF EXISTS `trade`;

CREATE TABLE `trade` (
  `company` varchar(20) DEFAULT NULL,
  `item` varchar(20) DEFAULT NULL,
  `rate` varchar(20) DEFAULT NULL,
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `add` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  UNIQUE KEY `no` (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `trade` */

insert  into `trade`(`company`,`item`,`rate`,`no`,`add`,`city`,`phone`,`state`) values ('abc ','abc ','4',3,'hyd','hyd','ts','7097020816'),(NULL,'dd','10',17,NULL,NULL,NULL,NULL),(NULL,'bn bn','10',18,NULL,NULL,NULL,NULL),(NULL,'dh','10',19,NULL,NULL,NULL,NULL),('hyd','colgate3','200',20,'hyd','hyd','ap','9963258741');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
