/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.5.59 : Database - test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`test` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `test`;

/*Table structure for table `country` */

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `countryname` varchar(255) DEFAULT NULL COMMENT '名称',
  `countrycode` varchar(255) DEFAULT NULL COMMENT '代码',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8 COMMENT='国家信息';

/*Data for the table `country` */

insert  into `country`(`Id`,`countryname`,`countrycode`) values (1,'Angola','AO'),(2,'Afghanistan','AF'),(3,'Albania','AL'),(4,'Algeria','DZ'),(5,'Andorra','AD'),(6,'Anguilla','AI'),(7,'Antigua and Barbuda','AG'),(8,'Argentina','AR'),(9,'Armenia','AM'),(10,'Australia','AU'),(11,'Austria','AT'),(12,'Azerbaijan','AZ'),(13,'Bahamas','BS'),(14,'Bahrain','BH'),(15,'Bangladesh','BD'),(16,'Barbados','BB'),(17,'Belarus','BY'),(18,'Belgium','BE'),(19,'Belize','BZ'),(20,'Benin','BJ'),(21,'Bermuda Is.','BM'),(22,'Bolivia','BO'),(23,'Botswana','BW'),(24,'Brazil','BR'),(25,'Brunei','BN'),(26,'Bulgaria','BG'),(27,'Burkina-faso','BF'),(28,'Burma','MM'),(29,'Burundi','BI'),(30,'Cameroon','CM'),(31,'Canada','CA'),(32,'Central African Republic','CF'),(33,'Chad','TD'),(34,'Chile','CL'),(35,'China','CN'),(36,'Colombia','CO'),(37,'Congo','CG'),(38,'Cook Is.','CK'),(39,'Costa Rica','CR'),(40,'Cuba','CU'),(41,'Cyprus','CY'),(42,'Czech Republic','CZ'),(43,'Denmark','DK'),(44,'Djibouti','DJ'),(45,'Dominica Rep.','DO'),(46,'Ecuador','EC'),(47,'Egypt','EG'),(48,'EI Salvador','SV'),(49,'Estonia','EE'),(50,'Ethiopia','ET'),(51,'Fiji','FJ'),(52,'Finland','FI'),(53,'France','FR'),(54,'French Guiana','GF'),(55,'Gabon','GA'),(56,'Gambia','GM'),(57,'Georgia','GE'),(58,'Germany','DE'),(59,'Ghana','GH'),(60,'Gibraltar','GI'),(61,'Greece','GR'),(62,'Grenada','GD'),(63,'Guam','GU'),(64,'Guatemala','GT'),(65,'Guinea','GN'),(66,'Guyana','GY'),(67,'Haiti','HT'),(68,'Honduras','HN'),(69,'Hongkong','HK'),(70,'Hungary','HU'),(71,'Iceland','IS'),(72,'India','IN'),(73,'Indonesia','ID'),(74,'Iran','IR'),(75,'Iraq','IQ'),(76,'Ireland','IE'),(77,'Israel','IL'),(78,'Italy','IT'),(79,'Jamaica','JM'),(80,'Japan','JP'),(81,'Jordan','JO'),(82,'Kampuchea (Cambodia )','KH'),(83,'Kazakstan','KZ'),(84,'Kenya','KE'),(85,'Korea','KR'),(86,'Kuwait','KW'),(87,'Kyrgyzstan','KG'),(88,'Laos','LA'),(89,'Latvia','LV'),(90,'Lebanon','LB'),(91,'Lesotho','LS'),(92,'Liberia','LR'),(93,'Libya','LY'),(94,'Liechtenstein','LI'),(95,'Lithuania','LT'),(96,'Luxembourg','LU'),(97,'Macao','MO'),(98,'Madagascar','MG'),(99,'Malawi','MW'),(100,'Malaysia','MY'),(101,'Maldives','MV'),(102,'Mali','ML'),(103,'Malta','MT'),(104,'Mauritius','MU'),(105,'Mexico','MX'),(106,'Moldova, Republic of','MD'),(107,'Monaco','MC'),(108,'Mongolia','MN'),(109,'Montserrat Is','MS'),(110,'Morocco','MA'),(111,'Mozambique','MZ'),(112,'Namibia','NA'),(113,'Nauru','NR'),(114,'Nepal','NP'),(115,'Netherlands','NL'),(116,'New Zealand','NZ'),(117,'Nicaragua','NI'),(118,'Niger','NE'),(119,'Nigeria','NG'),(120,'North Korea','KP'),(121,'Norway','NO'),(122,'Oman','OM'),(123,'Pakistan','PK'),(124,'Panama','PA'),(125,'Papua New Cuinea','PG'),(126,'Paraguay','PY'),(127,'Peru','PE'),(128,'Philippines','PH'),(129,'Poland','PL'),(130,'French Polynesia','PF'),(131,'Portugal','PT'),(132,'Puerto Rico','PR'),(133,'Qatar','QA'),(134,'Romania','RO'),(135,'Russia','RU'),(136,'Saint Lueia','LC'),(137,'Saint Vincent','VC'),(138,'San Marino','SM'),(139,'Sao Tome and Principe','ST'),(140,'Saudi Arabia','SA'),(141,'Senegal','SN'),(142,'Seychelles','SC'),(143,'Sierra Leone','SL'),(144,'Singapore','SG'),(145,'Slovakia','SK'),(146,'Slovenia','SI'),(147,'Solomon Is','SB'),(148,'Somali','SO'),(149,'South Africa','ZA'),(150,'Spain','ES'),(151,'Sri Lanka','LK'),(152,'St.Lucia','LC'),(153,'St.Vincent','VC'),(154,'Sudan','SD'),(155,'Suriname','SR'),(156,'Swaziland','SZ'),(157,'Sweden','SE'),(158,'Switzerland','CH'),(159,'Syria','SY'),(160,'Taiwan','TW'),(161,'Tajikstan','TJ'),(162,'Tanzania','TZ'),(163,'Thailand','TH'),(164,'Togo','TG'),(165,'Tonga','TO'),(166,'Trinidad and Tobago','TT'),(167,'Tunisia','TN'),(168,'Turkey','TR'),(169,'Turkmenistan','TM'),(170,'Uganda','UG'),(171,'Ukraine','UA'),(172,'United Arab Emirates','AE'),(173,'United Kiongdom','GB'),(174,'United States of America','US'),(175,'Uruguay','UY'),(176,'Uzbekistan','UZ'),(177,'Venezuela','VE'),(178,'Vietnam','VN'),(179,'Yemen','YE'),(180,'Yugoslavia','YU'),(181,'Zimbabwe','ZW'),(182,'Zaire','ZR'),(183,'Zambia','ZM');

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `create_date` date NOT NULL,
  `location` varchar(50) NOT NULL,
  `count` int(11) NOT NULL,
  `unit` varchar(10) DEFAULT NULL COMMENT '个斤两',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `goods` */

insert  into `goods`(`id`,`name`,`price`,`create_date`,`location`,`count`,`unit`) values (2,'小布丁',3,'2018-09-12','冰工厂',2,'支'),(4,'棒棒糖',5,'2018-09-20','小卖铺',3,'斤'),(6,'猫猫小饼干',1,'2018-09-06','我的制作',100,'两');

/*Table structure for table `shop` */

DROP TABLE IF EXISTS `shop`;

CREATE TABLE `shop` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `goodsName` varchar(100) NOT NULL,
  `billStatus` bigint(5) NOT NULL COMMENT '0待处理1处理中2已处理',
  `goodsDistrict` bigint(5) NOT NULL COMMENT '商品区域编号',
  `goodsPrice` bigint(10) NOT NULL,
  `goodsCount` bigint(10) NOT NULL,
  `creationTime` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `shop` */

insert  into `shop`(`id`,`goodsName`,`billStatus`,`goodsDistrict`,`goodsPrice`,`goodsCount`,`creationTime`) values (2,'猫猫小饼干',1,1,5,2,'2018-09-12'),(3,'冰糖葫芦',2,3,20,3,'2018-09-21'),(4,'旺仔牛奶',1,2,3,20,'2018-09-06'),(5,'小面包',0,4,5,10,'2018-09-05'),(6,'小猫猫薯片',1,5,10,20,'2018-09-05'),(7,'1',1,0,2,5,'2018-10-01'),(8,'甜心',1,0,5,20,'2018-10-01'),(9,'甜心',1,0,5,20,'2018-10-01'),(10,'甜心',1,0,5,20,'2018-10-01'),(11,'甜心',1,0,5,20,'2018-10-01'),(12,'甜心',1,0,5,20,'2018-10-01'),(13,'甜心',1,0,5,20,'2018-10-01');

/*Table structure for table `user login info` */

DROP TABLE IF EXISTS `user login info`;

CREATE TABLE `user login info` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '登录名',
  `logindate` datetime DEFAULT NULL COMMENT '登录时间',
  `loginip` varchar(16) DEFAULT NULL COMMENT '登录IP',
  PRIMARY KEY (`Id`,`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户登录日志';

/*Data for the table `user login info` */

/*Table structure for table `user_info` */

DROP TABLE IF EXISTS `user_info`;

CREATE TABLE `user_info` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(32) DEFAULT NULL COMMENT '密码',
  `usertype` varchar(2) DEFAULT NULL COMMENT '用户类型',
  `enabled` int(2) DEFAULT NULL COMMENT '是否可用',
  `realname` varchar(32) DEFAULT NULL COMMENT '真实姓名',
  `qq` varchar(14) DEFAULT NULL COMMENT 'QQ',
  `email` varchar(100) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户信息表';

/*Data for the table `user_info` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
