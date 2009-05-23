-- MySQL dump 10.9
--
-- Host: localhost    Database: rdownie_otterprod
-- ------------------------------------------------------
-- Server version	4.1.22-standard-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE `events` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `date` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` (`id`, `name`, `date`) VALUES (17,'Chicken BBQ....BIG TOP WEEKEND','2007-10-13 00:00:00'),(19,'Live Music........Paul Strowe','2007-07-17 00:00:00'),(16,'Live Music......Greg Koch','2007-08-18 00:00:00'),(23,'Live Music......Greg Koch','2007-09-08 00:00:00'),(24,'Live Music.......Johnny Bauer','2007-10-06 00:00:00'),(11,'Taste of Brighton Festival','2007-10-12 00:00:00'),(12,'Live Music.......Johnny Bauer','2007-08-11 00:00:00'),(18,'Live Music......Paul Strowe','2007-07-28 00:00:00'),(20,'Live Music.......Dave McGrath','2007-07-07 00:00:00'),(21,'Live Music........Dave McGrath','2007-08-25 00:00:00'),(22,'Chicken BBQ....BIG TOP WEEKEND','2007-10-12 00:00:00'),(25,'Live Music......Paul Strowe','2007-10-13 00:00:00'),(26,'COSTUME CONTEST','2007-10-27 00:00:00'),(27,'Otter Lodge HALLOWEEN PARTY','2007-10-31 00:00:00'),(28,'NFL Preseason Starts','2007-08-09 00:00:00'),(29,'NFL Season Kick-Off','2007-09-06 00:00:00'),(30,'Buffalo Bills Home Opener','2007-09-09 00:00:00');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
CREATE TABLE `friends` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friends`
--

LOCK TABLES `friends` WRITE;
/*!40000 ALTER TABLE `friends` DISABLE KEYS */;
/*!40000 ALTER TABLE `friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `golfers`
--

DROP TABLE IF EXISTS `golfers`;
CREATE TABLE `golfers` (
  `id` int(11) NOT NULL auto_increment,
  `first_name` varchar(255) default NULL,
  `last_name` varchar(255) default NULL,
  `team_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `golfers`
--

LOCK TABLES `golfers` WRITE;
/*!40000 ALTER TABLE `golfers` DISABLE KEYS */;
INSERT INTO `golfers` (`id`, `first_name`, `last_name`, `team_id`) VALUES (1,'Rich','Downie',1),(2,'Jeff','Whitmire',1),(3,'Freddie','Couples',1),(4,'ChiChi','Rodriguez',1);
/*!40000 ALTER TABLE `golfers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` int(11) NOT NULL auto_increment,
  `position` varchar(255) default NULL,
  `description` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` (`id`, `position`, `description`) VALUES (1,'Chef','Line Cook.  At least 1 year experience.  Willing to work long hours.'),(2,'Waitress/Waitor','We are looking for  a waitress/waitor with at least 1 year experience.   This a part-time position and will only work 20 hours a week.');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
CREATE TABLE `schedules` (
  `id` int(11) NOT NULL auto_increment,
  `range` varchar(255) default NULL,
  `sunday` varchar(255) default NULL,
  `monday` varchar(255) default NULL,
  `tuesday` varchar(255) default NULL,
  `wednesday` varchar(255) default NULL,
  `thursday` varchar(255) default NULL,
  `friday` varchar(255) default NULL,
  `saturday` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedules`
--

LOCK TABLES `schedules` WRITE;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_info`
--

DROP TABLE IF EXISTS `schema_info`;
CREATE TABLE `schema_info` (
  `version` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schema_info`
--

LOCK TABLES `schema_info` WRITE;
/*!40000 ALTER TABLE `schema_info` DISABLE KEYS */;
INSERT INTO `schema_info` (`version`) VALUES (10);
/*!40000 ALTER TABLE `schema_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specials`
--

DROP TABLE IF EXISTS `specials`;
CREATE TABLE `specials` (
  `id` int(11) NOT NULL auto_increment,
  `day` varchar(255) default NULL,
  `lunch` varchar(255) default NULL,
  `dinner` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `specials`
--

LOCK TABLES `specials` WRITE;
/*!40000 ALTER TABLE `specials` DISABLE KEYS */;
INSERT INTO `specials` (`id`, `day`, `lunch`, `dinner`) VALUES (1,'Monday','Chicken Parm Wrap','Chef Special'),(2,'Tuesday','Patty Melt & BBQ Chicken Wrap','Chef Special'),(3,'Wednesday','Build your own Burger','Chef Special'),(4,'Thursday','Otter Club Sandwich with soup','Chef Special'),(5,'Friday','Fish Fry Sandwich','Fish Fry'),(6,'Saturday','Chef Special','Chef Special'),(7,'Sunday','Chef Special','Chef special');
/*!40000 ALTER TABLE `specials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suggestions`
--

DROP TABLE IF EXISTS `suggestions`;
CREATE TABLE `suggestions` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `address` varchar(255) default NULL,
  `phone` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `comments` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=177 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suggestions`
--

LOCK TABLES `suggestions` WRITE;
/*!40000 ALTER TABLE `suggestions` DISABLE KEYS */;
INSERT INTO `suggestions` (`id`, `name`, `address`, `phone`, `email`, `comments`) VALUES (176,'Charissa','','','charissa@rochester.rr.com','Hi!!!\r\n\r\nAny chance you can put the new menu online?  I was going to show it to a co-worker and it\'s the old menu.\r\n\r\nTake care,\r\nC');
/*!40000 ALTER TABLE `suggestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
CREATE TABLE `teams` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` (`id`, `name`) VALUES (1,'Sample Team');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tournaments`
--

DROP TABLE IF EXISTS `tournaments`;
CREATE TABLE `tournaments` (
  `id` int(11) NOT NULL auto_increment,
  `team_name` varchar(255) default NULL,
  `team_paid` varchar(255) default NULL,
  `player1` varchar(255) default NULL,
  `player1_paid` varchar(255) default NULL,
  `player2` varchar(255) default NULL,
  `player2_paid` varchar(255) default NULL,
  `player3` varchar(255) default NULL,
  `player3_paid` varchar(255) default NULL,
  `player4` varchar(255) default NULL,
  `player4_paid` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tournaments`
--

LOCK TABLES `tournaments` WRITE;
/*!40000 ALTER TABLE `tournaments` DISABLE KEYS */;
INSERT INTO `tournaments` (`id`, `team_name`, `team_paid`, `player1`, `player1_paid`, `player2`, `player2_paid`, `player3`, `player3_paid`, `player4`, `player4_paid`) VALUES (1,'Caddy Shack','Yes','Joe Smith','Yes','Jim Crow','Yes','Tom Golisano','Yes','Mike Johnson','Yes');
/*!40000 ALTER TABLE `tournaments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `login` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `crypted_password` varchar(40) default NULL,
  `salt` varchar(40) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `remember_token` varchar(255) default NULL,
  `remember_token_expires_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `login`, `email`, `crypted_password`, `salt`, `created_at`, `updated_at`, `remember_token`, `remember_token_expires_at`) VALUES (1,'otter99','otterlodge@hotmal.com','4805d5d8e9efc6dbec072f5f0e31d3cf6f0c5dc9','b1b489eb3748dc2ab7a385c443b9096d531a3d7a','2006-12-03 14:13:52','2006-12-03 14:13:52',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

