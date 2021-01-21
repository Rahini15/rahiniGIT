# HeidiSQL Dump 
#
# --------------------------------------------------------
# Host:                         127.0.0.1
# Database:                     softwaredisplaydb
# Server version:               5.1.53-community-log
# Server OS:                    Win64
# Target compatibility:         ANSI SQL
# HeidiSQL version:             4.0
# Date/time:                    1/19/2021 12:42:23 AM
# --------------------------------------------------------

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ANSI,NO_BACKSLASH_ESCAPES';*/
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;*/


#
# Database structure for database 'softwaredisplaydb'
#

CREATE DATABASE /*!32312 IF NOT EXISTS*/ "softwaredisplaydb" /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_german1_ci */;

USE "softwaredisplaydb";


#
# Table structure for table 'adminlogin'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "adminlogin" (
  "uname" varchar(50) COLLATE latin1_german1_ci NOT NULL,
  "pwd" varchar(50) COLLATE latin1_german1_ci NOT NULL
);



#
# Dumping data for table 'adminlogin'
#

LOCK TABLES "adminlogin" WRITE;
/*!40000 ALTER TABLE "adminlogin" DISABLE KEYS;*/
REPLACE INTO "adminlogin" ("uname", "pwd") VALUES
	('admin','admin');
/*!40000 ALTER TABLE "adminlogin" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'softwares'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "softwares" (
  "id" int(10) unsigned NOT NULL AUTO_INCREMENT,
  "sid" varchar(50) COLLATE latin1_german1_ci NOT NULL,
  "sname" varchar(50) COLLATE latin1_german1_ci NOT NULL,
  "author" varchar(50) COLLATE latin1_german1_ci NOT NULL,
  "version" varchar(50) COLLATE latin1_german1_ci NOT NULL,
  "pub_year" varchar(50) COLLATE latin1_german1_ci NOT NULL,
  "price" varchar(50) COLLATE latin1_german1_ci DEFAULT NULL,
  PRIMARY KEY ("id")
) AUTO_INCREMENT=9;



#
# Dumping data for table 'softwares'
#

LOCK TABLES "softwares" WRITE;
/*!40000 ALTER TABLE "softwares" DISABLE KEYS;*/
REPLACE INTO "softwares" ("id", "sid", "sname", "author", "version", "pub_year", "price") VALUES
	('1','1','ERP SOLUTION','BALAGURUSAMY','1','2021','32500');
REPLACE INTO "softwares" ("id", "sid", "sname", "author", "version", "pub_year", "price") VALUES
	('5','5','TALLY','RAJA ','2','2010','25000');
REPLACE INTO "softwares" ("id", "sid", "sname", "author", "version", "pub_year", "price") VALUES
	('8','SAP2.0','SAP2.0','UST','2.0','2017','15000');
REPLACE INTO "softwares" ("id", "sid", "sname", "author", "version", "pub_year", "price") VALUES
	('7','SAP1.0','SAP1.0','UST','1.0','2016','12000');
/*!40000 ALTER TABLE "softwares" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'user'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "user" (
  "fname" varchar(50) COLLATE latin1_german1_ci NOT NULL,
  "lname" varchar(50) COLLATE latin1_german1_ci NOT NULL,
  "age" varchar(50) COLLATE latin1_german1_ci NOT NULL,
  "gender" varchar(50) COLLATE latin1_german1_ci NOT NULL,
  "email" varchar(50) COLLATE latin1_german1_ci NOT NULL,
  "native" varchar(50) COLLATE latin1_german1_ci NOT NULL,
  "phone" varchar(50) COLLATE latin1_german1_ci DEFAULT NULL,
  "pwd" varchar(50) COLLATE latin1_german1_ci NOT NULL,
  PRIMARY KEY ("email")
);



#
# Dumping data for table 'user'
#

LOCK TABLES "user" WRITE;
/*!40000 ALTER TABLE "user" DISABLE KEYS;*/
REPLACE INTO "user" ("fname", "lname", "age", "gender", "email", "native", "phone", "pwd") VALUES
	('a','a','a','a','a','a','9629595205','a');
REPLACE INTO "user" ("fname", "lname", "age", "gender", "email", "native", "phone", "pwd") VALUES
	('nanda','s','35','M','nandapoy@gmail.com','cbe','9629595205','nanda');
REPLACE INTO "user" ("fname", "lname", "age", "gender", "email", "native", "phone", "pwd") VALUES
	('ravi','d','35','M','ravimca07@gmail.com','coimbatore','9003502338','ravi');
/*!40000 ALTER TABLE "user" ENABLE KEYS;*/
UNLOCK TABLES;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE;*/
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;*/
