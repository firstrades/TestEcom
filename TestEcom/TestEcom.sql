CREATE DATABASE  IF NOT EXISTS `testecom` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `testecom`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: testecom
-- ------------------------------------------------------
-- Server version	5.5.8-log

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
-- Table structure for table `cart_wishlist`
--

DROP TABLE IF EXISTS `cart_wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_wishlist` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `product_id` int(15) DEFAULT NULL,
  `user_id` int(12) DEFAULT NULL,
  `cart_wishlist` enum('cart','wishlist') DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `size` varchar(20) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_wishlist`
--

LOCK TABLES `cart_wishlist` WRITE;
/*!40000 ALTER TABLE `cart_wishlist` DISABLE KEYS */;
INSERT INTO `cart_wishlist` VALUES (10,15,1,'cart',1,'S');
/*!40000 ALTER TABLE `cart_wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliverable_address`
--

DROP TABLE IF EXISTS `deliverable_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deliverable_address` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `user_id` int(12) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `address1` varchar(100) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `pin` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `contact` varchar(18) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `country` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliverable_address`
--

LOCK TABLES `deliverable_address` WRITE;
/*!40000 ALTER TABLE `deliverable_address` DISABLE KEYS */;
INSERT INTO `deliverable_address` VALUES (1,2,'Dipankar','Das','Surakha E-Commerce','151 Dum Dum Road','LP 1/14','Kolkata','700074','WB','7890000443','jewel.skypoint@gmail.com','IN'),(3,1,'Dipankar','Das','Individual','623 (OLD-592)','Purba Sinthee Road','Kolkata','700030','WB','7890000443','jewel.skypoint@gmail.com','IN'),(4,17,'Soumya','Paul',NULL,'22A Shah Industrial Estate',NULL,'Mumbai','400053','MH','9836965305','jewel.skypoint@gmail.com',NULL),(5,20,'q','q','sd','q','s','q','q','WB','q','q','IN'),(6,21,'w','w','sd','w','s','w','w','WB','w','w','IN'),(7,19,'r','r','sd','s','s','s','6','WB','5','5','IN');
/*!40000 ALTER TABLE `deliverable_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distributor_pin_area_map`
--

DROP TABLE IF EXISTS `distributor_pin_area_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `distributor_pin_area_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_id` int(11) DEFAULT NULL,
  `d_id` int(11) DEFAULT NULL,
  `pin` varchar(20) DEFAULT NULL,
  `area` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distributor_pin_area_map`
--

LOCK TABLES `distributor_pin_area_map` WRITE;
/*!40000 ALTER TABLE `distributor_pin_area_map` DISABLE KEYS */;
INSERT INTO `distributor_pin_area_map` VALUES (1,15,17,'700111','HumHum'),(2,15,18,'700073','Basirhat');
/*!40000 ALTER TABLE `distributor_pin_area_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fedexcharges`
--

DROP TABLE IF EXISTS `fedexcharges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fedexcharges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `COD` double DEFAULT NULL,
  `minWeight` double DEFAULT NULL,
  `weightUnit` varchar(10) DEFAULT NULL,
  `rateForMinWeight` double DEFAULT NULL,
  `octroiPercentageMH` double DEFAULT NULL,
  `octroiPercentageGJ` double DEFAULT NULL,
  `octroiPercentagePB` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='octroi - 3% to 6% of product value For (Gujrath, Maharastra, Punjab)\nCOD - Fixed rate from Fedex\nminWeight - bare minimum weight which fedex will bill upon';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fedexcharges`
--

LOCK TABLES `fedexcharges` WRITE;
/*!40000 ALTER TABLE `fedexcharges` DISABLE KEYS */;
INSERT INTO `fedexcharges` VALUES (1,50,0.5,'KG',45,6,NULL,NULL);
/*!40000 ALTER TABLE `fedexcharges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `franchise_pin_map`
--

DROP TABLE IF EXISTS `franchise_pin_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `franchise_pin_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_id` int(11) DEFAULT NULL,
  `pin` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `franchise_pin_map`
--

LOCK TABLES `franchise_pin_map` WRITE;
/*!40000 ALTER TABLE `franchise_pin_map` DISABLE KEYS */;
INSERT INTO `franchise_pin_map` VALUES (6,15,'400052'),(7,15,'700108'),(8,15,'700123'),(9,15,'700073'),(10,15,'700005'),(11,16,'700110'),(12,16,'700012'),(13,16,'700014'),(14,16,'700015'),(15,16,'700016');
/*!40000 ALTER TABLE `franchise_pin_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `garment_size`
--

DROP TABLE IF EXISTS `garment_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garment_size` (
  `id` int(18) NOT NULL AUTO_INCREMENT,
  `product_id` int(18) DEFAULT NULL,
  `s26` int(4) DEFAULT '0',
  `s28` int(4) DEFAULT '0',
  `s30` int(4) DEFAULT '0',
  `s32` int(4) DEFAULT '0',
  `s34` int(4) DEFAULT '0',
  `s36` int(4) DEFAULT '0',
  `s38` int(4) DEFAULT '0',
  `s40` int(4) DEFAULT '0',
  `s42` int(4) DEFAULT '0',
  `s44` int(4) DEFAULT '0',
  `s46` int(4) DEFAULT '0',
  `s48` int(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `garment_size`
--

LOCK TABLES `garment_size` WRITE;
/*!40000 ALTER TABLE `garment_size` DISABLE KEYS */;
INSERT INTO `garment_size` VALUES (1,12,0,0,0,5,9,0,0,0,0,0,0,10),(2,18,4,10,10,10,10,9,10,10,10,10,10,10),(3,20,10,10,10,9,10,6,9,10,10,10,10,10),(6,231,0,0,0,0,0,0,0,0,0,1,1,1),(7,235,13,1,3,12,11,12,12,12,12,12,12,12),(8,238,14,1,0,0,0,0,12,14,0,0,0,0),(9,239,1,1,1,1,1,1,1,1,1,1,1,1),(10,240,1,1,1,1,1,1,1,12,1,1,1,0);
/*!40000 ALTER TABLE `garment_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `key_features`
--

DROP TABLE IF EXISTS `key_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `key_features` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(18) DEFAULT NULL,
  `header` varchar(45) DEFAULT NULL,
  `value` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id_idx` (`product_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `key_features`
--

LOCK TABLES `key_features` WRITE;
/*!40000 ALTER TABLE `key_features` DISABLE KEYS */;
INSERT INTO `key_features` VALUES (5,13,'Processor','2.1 GHz'),(6,13,'Ram','2 GB'),(7,15,'new','newFeatures'),(9,17,'Sleeve','Half Sleeve'),(10,18,'Sleeve','Half Sleeve'),(11,19,'Sleeve','Half Sleeve'),(13,15,'old','oldFeature'),(18,15,'jewel','saha');
/*!40000 ALTER TABLE `key_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_table`
--

DROP TABLE IF EXISTS `order_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_table` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `customer_id` int(18) DEFAULT NULL,
  `product_id` int(18) DEFAULT NULL,
  `seller_id` int(18) DEFAULT NULL,
  `qty` int(4) DEFAULT NULL,
  `sell_price` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `warranty` varchar(200) DEFAULT NULL,
  `order_id` varchar(45) DEFAULT NULL,
  `date_time` varchar(45) DEFAULT NULL,
  `status` enum('Success','Failed') DEFAULT NULL,
  `size` varchar(20) DEFAULT '0',
  `order_state` enum('None','Booked','Pickup','Picked','Cancel','Cancelled','Delivered','Return','Paid') DEFAULT 'None',
  `payment_type` enum('BANK','COD') DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `address1` varchar(100) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `pin` varchar(45) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_table`
--

LOCK TABLES `order_table` WRITE;
/*!40000 ALTER TABLE `order_table` DISABLE KEYS */;
INSERT INTO `order_table` VALUES (7,1,15,2,1,100,0,'1 year warranty is applicable','J20160513152537537','2016-05-13 15:25:37','Success','M','Booked','COD','7890000443','623 (OLD-592)','Purba Sinthee Road','Kolkata','WB','700030','Dipankar','Das','jewel.skypoint@gmail.com','Individual',NULL),(8,1,15,2,1,100,0,'1 year warranty is applicable','J20160513152644544','2016-05-13 15:26:44','Success','M','Booked','BANK','7890000443','623 (OLD-592)','Purba Sinthee Road','Kolkata','WB','700030','Dipankar','Das','jewel.skypoint@gmail.com','Individual',NULL),(9,1,15,2,1,100,0,'1 year warranty is applicable','J20160513154037537','2016-05-13 15:40:37','Success','L','Booked','COD','7890000443','623 (OLD-592)','Purba Sinthee Road','Kolkata','WB','700030','Dipankar','Das','jewel.skypoint@gmail.com','Individual',NULL);
/*!40000 ALTER TABLE `order_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_table_accessories`
--

DROP TABLE IF EXISTS `order_table_accessories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_table_accessories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_table_id` int(18) DEFAULT NULL,
  `tracking_id_type` varchar(45) DEFAULT NULL,
  `form_id` varchar(45) DEFAULT NULL,
  `track_number` varchar(45) DEFAULT NULL,
  `image` mediumtext,
  `delivered_date` date DEFAULT NULL,
  `picked_up_date` varchar(45) DEFAULT NULL,
  `calcellation_after_booked` int(4) DEFAULT NULL,
  `courier` varchar(45) DEFAULT 'Not Set Yet',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_table_accessories`
--

LOCK TABLES `order_table_accessories` WRITE;
/*!40000 ALTER TABLE `order_table_accessories` DISABLE KEYS */;
INSERT INTO `order_table_accessories` VALUES (7,7,NULL,NULL,NULL,NULL,NULL,NULL,7,'Not Set Yet'),(8,8,NULL,NULL,NULL,NULL,NULL,NULL,7,'Not Set Yet'),(9,9,NULL,NULL,NULL,NULL,NULL,NULL,7,'Not Set Yet');
/*!40000 ALTER TABLE `order_table_accessories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(18) NOT NULL AUTO_INCREMENT,
  `seller_id` int(12) DEFAULT NULL,
  `seller_company` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `sub_category` varchar(100) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `manufacturingCost` double DEFAULT NULL,
  `profitMarginPercentage` double DEFAULT NULL,
  `sale_price` double DEFAULT NULL,
  `markup` double DEFAULT NULL,
  `salePriceCustomer` double DEFAULT NULL,
  `list_price` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `icon_image` longblob,
  `image1` longblob,
  `image2` longblob,
  `stock` int(11) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `warranty` varchar(150) DEFAULT NULL,
  `calcellation_after_booked` int(4) DEFAULT NULL,
  `status` enum('approved','awaiting','cancelled') DEFAULT NULL,
  `f_commission` double DEFAULT NULL,
  `d_commission` double DEFAULT NULL,
  `productAdditionDate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 COMMENT='sale_price : sale price to customer';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (12,2,'Surakha E Commerce Pvt Ltd','ELECTRONICS','Mobile','Naughty Ninos Printed Boy\'s Polo Neck T-Shirt','Pantaloons',1700,5,105,100,100,1000,89.5,'ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	( \Z%!1!%)+...383,7(-.+\n\n\n\r\Z\Z-% %--++5-/./+7.--1-+---.-7-+-----+-/5-+-.---+02++---7ÿÀ\0\0¨+\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0F\0\0\0\0\0!1AQ\"aq‘±2Rr‚¡ÑB’²ÁÂCbƒáğ#D¢Ò$3cs“ÃÿÄ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0-\0\0\0\0\0\0\0\0!1AQq\"Ba‘ğ2¡ÑáÁñÿÚ\0\0\0?\0î(ˆ€ˆˆˆ€ˆˆ‹MCccäy\rk\Z^ç€rPeEÎ«9Î!ÄEJÛäé%ÀOYhc­â¢?œÚƒ²šÛ#İúB ‹“KÎEoÙe0íWô\n3ùÂÒíÀ=ØOê ìH¸œÜ¸Ò\'eVv(?S\nŒşWé¶²^æÂßÃAİQp	yGXvÕÏİ+›øHPåÒÕmMAícú}¬|H¤ó\\µ/;^óï=Îó*ŒiÌ´xLK¥iÛëO{d`ó*œ«ÑíÛ[L?Ÿü1/œp¶7y(šF°FÒíç 8Ÿ¢£¦åö‹g­]sñy(2ó¥¡Ûşu‡±²&¯•^âIqÌ“rU}=/<Z!»\'{½ØŸù€¡ËÏ~‹C»\"ÍÁ|Úˆ>…—ŸŠêÓÔĞÁúŠ‡7?°RŠCÛ#[úJàÈƒµËÏû¾Í\0ïšşLPæçî«ìRB=ç<ù¹ êRóë¤NÈi›ğ¼ù¹C›­*v:öFšç(ƒÜËÎæ˜wù–v(Çä·|ç\'I>i§Ö±®mØàĞ}­¸iÍ¶#yß±r¥Ğ¹¡Ì‡J6Í+K¸†Şî=Ø¯ü²¬$¾—¥œHÆHßUìkÇc…ÇšÊ­ 4\0\0€¹Ex^u´¾®éZzS;º£aæì>^ép.[é¿J¬@nÆL|00‘qÔ\\\\ï‰¿X¦ÓIŒH_ŠæÖÃnAïòß¦d‚âç%¶ı¥0gkweÜ‚é¦ŠÄ2\'ß\0¸“Ò¾g#²ÙÛ‰à+;ğR$ÒLÀÆbÜ]lÜ]kw\0Ñ—Yâ°úszĞc1»Ù*ÓıŸ%”×µC\\8M;ø|Â´Ò¿«Åe5½JÓ[ÕóTbôõ|şŠƒFHHÄ“`\0$“{Xek\'§{eqcÑÁSÓİ—VÌÎ]œCôq\r..\0\r¦ÆÃ}¾Eyí%£÷’çÚÀY¥»ÌoÚTı\'¥\\Ãm¬{s?Ñkı-İJèG\Z{gÀ*ßiß/¢Íé.êğOHwQ”VXÆˆgx¢¼h˜úüUÆWÉòXİ+¶—X|û‘œãåî»öd^Éñ*V‹ĞĞÉ+#qk½Üç…öŸï¨ì:¹*Nâ|sX3½£âQ®^–\rFê‡Fe„u¥¸É …­‹¤Nyd.£Öhêf™5oÎko‹€6àÚ¼ùñ>%csD½&\ZĞÖ†s|€¯BŠôk$œ\\/Ø3? »×4ú3\\³‘”}÷xJ;ÂãÜ¦¼”Œ˜ßÒ>@w¯¤y±ÑÚš&<úÓ9ÓÃÑgqkC¾%|‘ëE›çMú%Òg¼jcãà‹Æ‡;á_=‰·ç«OkjÙHÓÑ§mİ×,€àÜ?x®y¬A4J®Ö¨\ZÅ]j	úÔÖ¨:Õ]j¢n±SZ¡ëU5¨&kUªµSZ‚^±F®«Â,6Ÿâ±É=%jä”¸’wª.º¹ªÖ5dSm”¤ÈVÃ3òªÀ-´Û¯éÖ°OS~‹roÌö£|Ú1ÇNì’ÌñQdœÉXÉV’Y´ÏuÄ«	BU¤¢«	BU¥@TUYhàÆö3ÚpÛşWAîù¢œèá‰¹>iÛğÄá™ì»<\núfšÆÆFÁf±­cG´X\0¹?6\Z/KnŒüoè´ã\'Ü®+)\"(¢\" \"\"\" \"\"…¦´“) ¦OV(ß!ë°¸¬›õ5rntş`Ñí=)œ&ÛŒôí}òÊ=[\\ù¤–y\rß$•Şó‰qîÍaÖ(ØÓ\Z	:Å]j‰SX‚fµ5Š±5ˆ&kU5ª&µ5Š‰zÕ*ÚY‰Ä‘7¸¶‹+m.s\07µÉZ°õ>OiÍÀ\"-p³„…×#0]´uA†©î‹\\q4]îów<]¤2Ö³\Zv}¡·t†Ñ49À7¤ÖÅŒb2\\‚Öì.³EÈ åÙWh÷æd„COFF°X\\XŞãfØ[&\r¹“ŠIìòKÄôƒ®Ûß\"m X÷¤Ëu1Í§¢3	ÈXn~eH7ä8o*´ĞÒ;”:Ê‚ó–Á±c¶ûj‘¨YSQˆğ†áıTw9T…n¬¬¶å´­%Rë&­{“lÕG?‚ÆJ\n¸ª\" -ÿ\0#)1Ì^FMÔüñZïù@íSCGNWµ­ësÈ\rı½Xî’îÙĞà¥tÄt¦‘ÎøXpë‡¸{Ë×(ô†(¡o«lŒv4\0<”„•@DDD@DDDABmšùC—šÓ«êª»õqâ¢Ëvæï‰wxyAèz6`Ói*?åc¶ÑŒn,ÀìøÙ|Â\n¸“Çtºñ*bV].‚ìJ—TD]Tb¹£z,F×İ_7•H›su2(n´ß&¸8i´°6;©°SñRb¦¶ìø)\"îÈ4“Ø¹§?«¾ôŒQË^íU\\—èk)NÛd½$Z\r±O9†2xd…eLQGœ¯>Ã6¢áäß—®ŸõåM¹ÿ\0Oo_/ïü<ói‰6\0“Àf’Óay¨f~Y-ŒÕ®B&µ­àßÏ}ÔWh:‡çÇ¸®Œq{y9òZ•ï?éª– }£9Ä­ë9316ÀG‡ÕM¿Gñ87åµoä—<ñ8cæ‡”EèæĞ°²åÓ7¸_Ì¨/§§$¿h²ËÂŸ>‹M-Ûij‘d©ÃˆáÙ±cXKtNÙ)áÆæ°}§õ>ºóe¢ñÕC—FVƒ¶îişZä<’¥Ç6#±‚ş;ü—ÑœÕĞa§– ŒæîGqøÌÖHìy½²\"(¢\" \"\"\" \"\"\"Õr§M6Š’¦±û\"‰ÎÚ~Æ7½Å£½çÓ”“¤=¦ñÒ³WÕ­}!îøJçMmÈyVyÜ÷>GœO{œ÷8ísœnâ{I*Öb7:j ,%§hXVÔJ&hÖİdn*M9fİ‡aÜ·g­wºöJîc«\n\"¾8‹¶¢#j±Â=ã¸¬ÌÑ‘¸÷Ÿ$µø´õjÚÛ¬ÍŠù-Ÿì™ĞÛô©ôš	Ù\r¸‘`|Uğí=¡ÛÂãŒ–è×RÒ`ôz?C1£ÏÀ=1<÷loyîR)`›]m×m²ï+f4•cké\\¶÷7énïKÈã3ÖŸ\r7iúvûÏGĞW—>»6#jz|ı¹.÷vØd<ZÁ©õÜ^ıö°c:†XoÖ¸-tÜ¦–øa8\rğ3 }ãö»îµoªpv±Ï7ë7ñ¾ÕÃ^óÍ®¾½ÿ\0Ï£Êâ\"Ù&bgáôş=Ù++¤}ÚÁ…§iÌÖIÍİä­SàhÍÄ¸øª­f“\'÷ØµsU“½zØøH§“–úí‰©\rØCzšš¾0öf×¸w­ç;–Hx­ñ3^Ğå¼Vß,=5O*æµµ‡ºÃÉhêt´9¸÷’ Zç%½ZãcÉ{åqÚUˆ‹zĞÆ\\æ°mq\rñQ^Ï’„Dt\0\ræû\0í\0‰};¢(DC\0ıÜmeø3=æç½qm´P’²–èÂİqm±oƒŒ?5ÜU”Qq_ø‡åTÚ5‡iô™mÀ]±4öœGá³Ë k\\÷5 ¸“°\0.I_!ò»N\ZêÊªÃ{I!ÀèÛÑŒ}Ğ;îƒPŠ—U@Ù…³¥Òf@ãÇ´-e•ÁŠÄÌu…‰Ó|ÚÒÍ½&ıB›K\r;3/¿PyºiŞÏT÷n[Ht›O®Îñcæ·W6¾XeábÉß§İ¾<¤dBÑ0_‡æ¬ı·[.Ç9­ã|-ñÈ-|zF-Ù|EWé;÷ |.\'æ°¶ky2Åÿ\0ŸÃDîyfÅµ/hÇ,ï?­Ø.Vº¯J=÷k‡Ìö•ŒËNzN‘ï=‡óU:^6Ó‹½ÙŸ¢ÕmßõNŞ­m‹rÓQ‹éé^EÜ<M‡iººgÆÏY×ìÈ-]^“‘ûOr‚ë•„c¤uåß¿ñı±¿;ulçÒàdÁ—‡õZÉ´ƒáóXœ75txÙ;o^İ98‰²¦¤ïS\\7Íc,V²Œù#ÍÏ6™JkØoığTt*5ÖVU8mÏ·êºqñ8íÓ$kØè©…U´Ë3+½¤vX¬Â²>¿Ù	n¼ğ±XõFôu\ZQbG”é4ƒ~Ë|¢×“½rq³‚\"+Šwê“ä-¿%é±Íˆì`¹</—–/¨^³“4øa.±&Ga\0m#}¾»Ä.a.áÌş´3Õ‘œ¯\roºËœ»Ü[ğĞV»“Ú;Ñé©àÊì¡ÖØ^syïqq[•@DDD@DDDAÎùñå£hç@Ói*¨D{e?w£ñ¯›ºçŸ”>—¤¥cMã¦ŒËl.ò»ït~\0¼\"‘²ë+bUl XF@‹£bÊÙÙ×àUˆ•â{j#ö¼ÖVÍ¶ßt\'è*Z{TI>ÆÖÅæc{Ş~ FL`qµó¸Q´„LÖ8FÖµ£z.sÚ\\\0ps`ºänµ–x+\Z\0hÕ;nĞs7Ûuk@ÈäsÙ¹]#qÈı\rO z‚0DDìÏyÌd¼Ì±NÂ,1v_%·ÖFs00íŞááJ1‹3•³ğYk£)´kMÿ\0&y+”²ÖT—aá¸NÜ9b\'y¸Ù±xñ[Éäš¶CqbÕ—Ş;ñÃ°µ°‹‹Ş×¶Ûo²ÓâÖ›N÷=>Ê÷¬ÄDF´ØhŞL‡ÓIU#Ë@kË\06ÍÆÄX“`.Õ­ıLÇT!lÏ,$FZ\0ßpsìP¢§Ø¸7\"nonÌ–U­ºó.KRb\"‘î“£9*ù©æª266°†o\"ÙÅ¶+Ï—®’ºcL)5Ñjš]¸q½¯lÆ\\<V‰\\¾òliR‘n¼Îzsny¥7“ü†­­aš±FYŠì!†à8!særZ\nº\'Fù\"x³Ø÷Æáplæ’×Œˆ#%Óù9Ë\ZŠ(#§’D­lšÒ)N7<¹#. 2\\åÌ\'2I\'2Nd“´µ–›\Zã°Æ¶ctjhA,VÙLtk£A]µQAXØ\\CFÒCGi6]w›Í%­¤†×l Lî Û~ñø×5äİ69šNÆãÛ°~g¹wÎe4øu5®Èı[:š,ãn«ÇÀ¬#¦¢\"Š\"\"\" \"\"\" -.´ğ¡¡ª«Ëc-Œò»£ëéOP+~¸oüEé——ÒP6ø\rSøèãØ^~!Ás‰$’I$’Nd“™%Q.ˆ2ÏPçáÄo…¡ƒ©£ ÓÕ9í¦Öcp‹p¹<NA`D$©¼mˆ4;vXœlFÛ\\ö\\ìtD±•WD#a>%dmKÇÛwŞ+ Ú>G¶Íé\r$¼³WŒ:A`ˆ¶Ù7;^÷¸9oYô£¤€S~7I&{p4ñ“…—Ïµí«H¨®äO\Z^_á?Ñ^4Ã÷µ¾~k\\‰Í#gûdûÄıF—Ùà¢Õ¢¼Ò6Ÿ´Ùì»ä«ûB?âğş«T¨œÒiµ5±ñ>PÎÃö‡Ífv›12’&†b¹/2½Øzn.Äa •œUÔ:j9ï}R^,\ri8C]rqØ73ê‡¬©6vDS#}¡â¬y&áI‚ª’Ñ‡Âã…–u€é»!{âíã®ú™%Ä’|‚mTDUkI \r¤€;NÅ¤äü`{÷ÈìİØ~XÊúƒ’\Z3Ñ¨é µ‹cpş7ôŞ>óˆî\\7ÚMYEMk±„HşhÄoÚGÆÑJÊ@ˆŠ(ˆˆˆ€ˆˆˆ€¼Ç,¹O¤p:BæK-dŒ9á&ø^69·ï6\"åztAÇjù™~x*˜x]­Ãä´õ<ÌÕUğ;´‘çæ»Ò+±ó•O4ÕíÙî¹ŸîjÕTsuZÍ´Rü7wá._PÙP´ ù*£’s³Ö‚¡½¬xüL_.‰¶Wpí\r?©}ˆb´Q»Öh= 4w;ıü®±;F¼}¦w’<À_\\Tr^ş½4.í‰ŸE®¨æûG;ü«º\\ÏÂB•}MÀÇ3ê­u£÷nîù/¦gæ£G;c$od®?ëYQÌÕ)Í²ÌßıgÉ¡Î®…Ãk\\;ZBÇußgæhúud{ÌwäğµõĞÕV¢\'{ØÛæ× âJ«¬TsO^?wûÂÔÆ­UO6µíÛC~¶–~‰?$ñ°©äUK=j)Çceÿ\0i[6€Ãë2V{Ö‰¡44(¶‡E7sİ÷Zï\'+¢¹Ş,pòºhk‘L:5ŞÓ<\\<ÚŸ³äàcÙõPFE!Ô2İ»¸_ÉbtXáÚÒX¶<Ÿ§Ç3x7¦{¶|Íû–¶ëÔòRŸ\\÷d^æÄ7`u»Iù$ÏÌöŠÕ5dgfÂY³İÙÑø•Ó—œä\\L‚œæë\\8œVî7á[áPŞ*ÈÊŠÑ â«ˆ(*ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆ)dÂ5c‚µÔí;B\"u\Zş¼1»Ş‡Ì-dü…ÑÎÌÑÁ~\"6´ø¶Êˆƒ_QÍwîK}Ùe,VZÚhhêºfüLwâiDMuG31}Š‡z6Ã…Aÿ\0ñùšz5,pàD±üÚòˆ®Äzk«3\rlg#b\'q±ÜpÉ~+\'ù«­dÚÊŒ8‡9ã{]Ànß—DØê0èÙwÙK‰ãz\"‚C)Ü²¶2ˆƒ#ZUàDUT@DDÿÙ','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	( \Z%!1!%)+...383,7(-.+\n\n\n\r\Z\Z-% %--++5-/./+7.--1-+---.-7-+-----+-/5-+-.---+02++---7ÿÀ\0\0¨+\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0F\0\0\0\0\0!1AQ\"aq‘±2Rr‚¡ÑB’²ÁÂCbƒáğ#D¢Ò$3cs“ÃÿÄ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0-\0\0\0\0\0\0\0\0!1AQq\"Ba‘ğ2¡ÑáÁñÿÚ\0\0\0?\0î(ˆ€ˆˆˆ€ˆˆ‹MCccäy\rk\Z^ç€rPeEÎ«9Î!ÄEJÛäé%ÀOYhc­â¢?œÚƒ²šÛ#İúB ‹“KÎEoÙe0íWô\n3ùÂÒíÀ=ØOê ìH¸œÜ¸Ò\'eVv(?S\nŒşWé¶²^æÂßÃAİQp	yGXvÕÏİ+›øHPåÒÕmMAícú}¬|H¤ó\\µ/;^óï=Îó*ŒiÌ´xLK¥iÛëO{d`ó*œ«ÑíÛ[L?Ÿü1/œp¶7y(šF°FÒíç 8Ÿ¢£¦åö‹g­]sñy(2ó¥¡Ûşu‡±²&¯•^âIqÌ“rU}=/<Z!»\'{½ØŸù€¡ËÏ~‹C»\"ÍÁ|Úˆ>…—ŸŠêÓÔĞÁúŠ‡7?°RŠCÛ#[úJàÈƒµËÏû¾Í\0ïšşLPæçî«ìRB=ç<ù¹ êRóë¤NÈi›ğ¼ù¹C›­*v:öFšç(ƒÜËÎæ˜wù–v(Çä·|ç\'I>i§Ö±®mØàĞ}­¸iÍ¶#yß±r¥Ğ¹¡Ì‡J6Í+K¸†Şî=Ø¯ü²¬$¾—¥œHÆHßUìkÇc…ÇšÊ­ 4\0\0€¹Ex^u´¾®éZzS;º£aæì>^ép.[é¿J¬@nÆL|00‘qÔ\\\\ï‰¿X¦ÓIŒH_ŠæÖÃnAïòß¦d‚âç%¶ı¥0gkweÜ‚é¦ŠÄ2\'ß\0¸“Ò¾g#²ÙÛ‰à+;ğR$ÒLÀÆbÜ]lÜ]kw\0Ñ—Yâ°úszĞc1»Ù*ÓıŸ%”×µC\\8M;ø|Â´Ò¿«Åe5½JÓ[ÕóTbôõ|şŠƒFHHÄ“`\0$“{Xek\'§{eqcÑÁSÓİ—VÌÎ]œCôq\r..\0\r¦ÆÃ}¾Eyí%£÷’çÚÀY¥»ÌoÚTı\'¥\\Ãm¬{s?Ñkı-İJèG\Z{gÀ*ßiß/¢Íé.êğOHwQ”VXÆˆgx¢¼h˜úüUÆWÉòXİ+¶—X|û‘œãåî»öd^Éñ*V‹ĞĞÉ+#qk½Üç…öŸï¨ì:¹*Nâ|sX3½£âQ®^–\rFê‡Fe„u¥¸É …­‹¤Nyd.£Öhêf™5oÎko‹€6àÚ¼ùñ>%csD½&\ZĞÖ†s|€¯BŠôk$œ\\/Ø3? »×4ú3\\³‘”}÷xJ;ÂãÜ¦¼”Œ˜ßÒ>@w¯¤y±ÑÚš&<úÓ9ÓÃÑgqkC¾%|‘ëE›çMú%Òg¼jcãà‹Æ‡;á_=‰·ç«OkjÙHÓÑ§mİ×,€àÜ?x®y¬A4J®Ö¨\ZÅ]j	úÔÖ¨:Õ]j¢n±SZ¡ëU5¨&kUªµSZ‚^±F®«Â,6Ÿâ±É=%jä”¸’wª.º¹ªÖ5dSm”¤ÈVÃ3òªÀ-´Û¯éÖ°OS~‹roÌö£|Ú1ÇNì’ÌñQdœÉXÉV’Y´ÏuÄ«	BU¤¢«	BU¥@TUYhàÆö3ÚpÛşWAîù¢œèá‰¹>iÛğÄá™ì»<\núfšÆÆFÁf±­cG´X\0¹?6\Z/KnŒüoè´ã\'Ü®+)\"(¢\" \"\"\" \"\"…¦´“) ¦OV(ß!ë°¸¬›õ5rntş`Ñí=)œ&ÛŒôí}òÊ=[\\ù¤–y\rß$•Şó‰qîÍaÖ(ØÓ\Z	:Å]j‰SX‚fµ5Š±5ˆ&kU5ª&µ5Š‰zÕ*ÚY‰Ä‘7¸¶‹+m.s\07µÉZ°õ>OiÍÀ\"-p³„…×#0]´uA†©î‹\\q4]îów<]¤2Ö³\Zv}¡·t†Ñ49À7¤ÖÅŒb2\\‚Öì.³EÈ åÙWh÷æd„COFF°X\\XŞãfØ[&\r¹“ŠIìòKÄôƒ®Ûß\"m X÷¤Ëu1Í§¢3	ÈXn~eH7ä8o*´ĞÒ;”:Ê‚ó–Á±c¶ûj‘¨YSQˆğ†áıTw9T…n¬¬¶å´­%Rë&­{“lÕG?‚ÆJ\n¸ª\" -ÿ\0#)1Ì^FMÔüñZïù@íSCGNWµ­ësÈ\rı½Xî’îÙĞà¥tÄt¦‘ÎøXpë‡¸{Ë×(ô†(¡o«lŒv4\0<”„•@DDD@DDDABmšùC—šÓ«êª»õqâ¢Ëvæï‰wxyAèz6`Ói*?åc¶ÑŒn,ÀìøÙ|Â\n¸“Çtºñ*bV].‚ìJ—TD]Tb¹£z,F×İ_7•H›su2(n´ß&¸8i´°6;©°SñRb¦¶ìø)\"îÈ4“Ø¹§?«¾ôŒQË^íU\\—èk)NÛd½$Z\r±O9†2xd…eLQGœ¯>Ã6¢áäß—®ŸõåM¹ÿ\0Oo_/ïü<ói‰6\0“Àf’Óay¨f~Y-ŒÕ®B&µ­àßÏ}ÔWh:‡çÇ¸®Œq{y9òZ•ï?éª– }£9Ä­ë9316ÀG‡ÕM¿Gñ87åµoä—<ñ8cæ‡”EèæĞ°²åÓ7¸_Ì¨/§§$¿h²ËÂŸ>‹M-Ûij‘d©ÃˆáÙ±cXKtNÙ)áÆæ°}§õ>ºóe¢ñÕC—FVƒ¶îişZä<’¥Ç6#±‚ş;ü—ÑœÕĞa§– ŒæîGqøÌÖHìy½²\"(¢\" \"\"\" \"\"\"Õr§M6Š’¦±û\"‰ÎÚ~Æ7½Å£½çÓ”“¤=¦ñÒ³WÕ­}!îøJçMmÈyVyÜ÷>GœO{œ÷8ísœnâ{I*Öb7:j ,%§hXVÔJ&hÖİdn*M9fİ‡aÜ·g­wºöJîc«\n\"¾8‹¶¢#j±Â=ã¸¬ÌÑ‘¸÷Ÿ$µø´õjÚÛ¬ÍŠù-Ÿì™ĞÛô©ôš	Ù\r¸‘`|Uğí=¡ÛÂãŒ–è×RÒ`ôz?C1£ÏÀ=1<÷loyîR)`›]m×m²ï+f4•cké\\¶÷7énïKÈã3ÖŸ\r7iúvûÏGĞW—>»6#jz|ı¹.÷vØd<ZÁ©õÜ^ıö°c:†XoÖ¸-tÜ¦–øa8\rğ3 }ãö»îµoªpv±Ï7ë7ñ¾ÕÃ^óÍ®¾½ÿ\0Ï£Êâ\"Ù&bgáôş=Ù++¤}ÚÁ…§iÌÖIÍİä­SàhÍÄ¸øª­f“\'÷ØµsU“½zØøH§“–úí‰©\rØCzšš¾0öf×¸w­ç;–Hx­ñ3^Ğå¼Vß,=5O*æµµ‡ºÃÉhêt´9¸÷’ Zç%½ZãcÉ{åqÚUˆ‹zĞÆ\\æ°mq\rñQ^Ï’„Dt\0\ræû\0í\0‰};¢(DC\0ıÜmeø3=æç½qm´P’²–èÂİqm±oƒŒ?5ÜU”Qq_ø‡åTÚ5‡iô™mÀ]±4öœGá³Ë k\\÷5 ¸“°\0.I_!ò»N\ZêÊªÃ{I!ÀèÛÑŒ}Ğ;îƒPŠ—U@Ù…³¥Òf@ãÇ´-e•ÁŠÄÌu…‰Ó|ÚÒÍ½&ıB›K\r;3/¿PyºiŞÏT÷n[Ht›O®Îñcæ·W6¾XeábÉß§İ¾<¤dBÑ0_‡æ¬ı·[.Ç9­ã|-ñÈ-|zF-Ù|EWé;÷ |.\'æ°¶ky2Åÿ\0ŸÃDîyfÅµ/hÇ,ï?­Ø.Vº¯J=÷k‡Ìö•ŒËNzN‘ï=‡óU:^6Ó‹½ÙŸ¢ÕmßõNŞ­m‹rÓQ‹éé^EÜ<M‡iººgÆÏY×ìÈ-]^“‘ûOr‚ë•„c¤uåß¿ñı±¿;ulçÒàdÁ—‡õZÉ´ƒáóXœ75txÙ;o^İ98‰²¦¤ïS\\7Íc,V²Œù#ÍÏ6™JkØoığTt*5ÖVU8mÏ·êºqñ8íÓ$kØè©…U´Ë3+½¤vX¬Â²>¿Ù	n¼ğ±XõFôu\ZQbG”é4ƒ~Ë|¢×“½rq³‚\"+Šwê“ä-¿%é±Íˆì`¹</—–/¨^³“4øa.±&Ga\0m#}¾»Ä.a.áÌş´3Õ‘œ¯\roºËœ»Ü[ğĞV»“Ú;Ñé©àÊì¡ÖØ^syïqq[•@DDD@DDDAÎùñå£hç@Ói*¨D{e?w£ñ¯›ºçŸ”>—¤¥cMã¦ŒËl.ò»ït~\0¼\"‘²ë+bUl XF@‹£bÊÙÙ×àUˆ•â{j#ö¼ÖVÍ¶ßt\'è*Z{TI>ÆÖÅæc{Ş~ FL`qµó¸Q´„LÖ8FÖµ£z.sÚ\\\0ps`ºänµ–x+\Z\0hÕ;nĞs7Ûuk@ÈäsÙ¹]#qÈı\rO z‚0DDìÏyÌd¼Ì±NÂ,1v_%·ÖFs00íŞááJ1‹3•³ğYk£)´kMÿ\0&y+”²ÖT—aá¸NÜ9b\'y¸Ù±xñ[Éäš¶CqbÕ—Ş;ñÃ°µ°‹‹Ş×¶Ûo²ÓâÖ›N÷=>Ê÷¬ÄDF´ØhŞL‡ÓIU#Ë@kË\06ÍÆÄX“`.Õ­ıLÇT!lÏ,$FZ\0ßpsìP¢§Ø¸7\"nonÌ–U­ºó.KRb\"‘î“£9*ù©æª266°†o\"ÙÅ¶+Ï—®’ºcL)5Ñjš]¸q½¯lÆ\\<V‰\\¾òliR‘n¼Îzsny¥7“ü†­­aš±FYŠì!†à8!særZ\nº\'Fù\"x³Ø÷Æáplæ’×Œˆ#%Óù9Ë\ZŠ(#§’D­lšÒ)N7<¹#. 2\\åÌ\'2I\'2Nd“´µ–›\Zã°Æ¶ctjhA,VÙLtk£A]µQAXØ\\CFÒCGi6]w›Í%­¤†×l Lî Û~ñø×5äİ69šNÆãÛ°~g¹wÎe4øu5®Èı[:š,ãn«ÇÀ¬#¦¢\"Š\"\"\" \"\"\" -.´ğ¡¡ª«Ëc-Œò»£ëéOP+~¸oüEé——ÒP6ø\rSøèãØ^~!Ás‰$’I$’Nd“™%Q.ˆ2ÏPçáÄo…¡ƒ©£ ÓÕ9í¦Öcp‹p¹<NA`D$©¼mˆ4;vXœlFÛ\\ö\\ìtD±•WD#a>%dmKÇÛwŞ+ Ú>G¶Íé\r$¼³WŒ:A`ˆ¶Ù7;^÷¸9oYô£¤€S~7I&{p4ñ“…—Ïµí«H¨®äO\Z^_á?Ñ^4Ã÷µ¾~k\\‰Í#gûdûÄıF—Ùà¢Õ¢¼Ò6Ÿ´Ùì»ä«ûB?âğş«T¨œÒiµ5±ñ>PÎÃö‡Ífv›12’&†b¹/2½Øzn.Äa •œUÔ:j9ï}R^,\ri8C]rqØ73ê‡¬©6vDS#}¡â¬y&áI‚ª’Ñ‡Âã…–u€é»!{âíã®ú™%Ä’|‚mTDUkI \r¤€;NÅ¤äü`{÷ÈìİØ~XÊúƒ’\Z3Ñ¨é µ‹cpş7ôŞ>óˆî\\7ÚMYEMk±„HşhÄoÚGÆÑJÊ@ˆŠ(ˆˆˆ€ˆˆˆ€¼Ç,¹O¤p:BæK-dŒ9á&ø^69·ï6\"åztAÇjù™~x*˜x]­Ãä´õ<ÌÕUğ;´‘çæ»Ò+±ó•O4ÕíÙî¹ŸîjÕTsuZÍ´Rü7wá._PÙP´ ù*£’s³Ö‚¡½¬xüL_.‰¶Wpí\r?©}ˆb´Q»Öh= 4w;ıü®±;F¼}¦w’<À_\\Tr^ş½4.í‰ŸE®¨æûG;ü«º\\ÏÂB•}MÀÇ3ê­u£÷nîù/¦gæ£G;c$od®?ëYQÌÕ)Í²ÌßıgÉ¡Î®…Ãk\\;ZBÇußgæhúud{ÌwäğµõĞÕV¢\'{ØÛæ× âJ«¬TsO^?wûÂÔÆ­UO6µíÛC~¶–~‰?$ñ°©äUK=j)Çceÿ\0i[6€Ãë2V{Ö‰¡44(¶‡E7sİ÷Zï\'+¢¹Ş,pòºhk‘L:5ŞÓ<\\<ÚŸ³äàcÙõPFE!Ô2İ»¸_ÉbtXáÚÒX¶<Ÿ§Ç3x7¦{¶|Íû–¶ëÔòRŸ\\÷d^æÄ7`u»Iù$ÏÌöŠÕ5dgfÂY³İÙÑø•Ó—œä\\L‚œæë\\8œVî7á[áPŞ*ÈÊŠÑ â«ˆ(*ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆ)dÂ5c‚µÔí;B\"u\Zş¼1»Ş‡Ì-dü…ÑÎÌÑÁ~\"6´ø¶Êˆƒ_QÍwîK}Ùe,VZÚhhêºfüLwâiDMuG31}Š‡z6Ã…Aÿ\0ñùšz5,pàD±üÚòˆ®Äzk«3\rlg#b\'q±ÜpÉ~+\'ù«­dÚÊŒ8‡9ã{]Ànß—DØê0èÙwÙK‰ãz\"‚C)Ü²¶2ˆƒ#ZUàDUT@DDÿÙ','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	( \Z%!1!%)+...383,7(-.+\n\n\n\r\Z\Z-% %--++5-/./+7.--1-+---.-7-+-----+-/5-+-.---+02++---7ÿÀ\0\0¨+\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0F\0\0\0\0\0!1AQ\"aq‘±2Rr‚¡ÑB’²ÁÂCbƒáğ#D¢Ò$3cs“ÃÿÄ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0-\0\0\0\0\0\0\0\0!1AQq\"Ba‘ğ2¡ÑáÁñÿÚ\0\0\0?\0î(ˆ€ˆˆˆ€ˆˆ‹MCccäy\rk\Z^ç€rPeEÎ«9Î!ÄEJÛäé%ÀOYhc­â¢?œÚƒ²šÛ#İúB ‹“KÎEoÙe0íWô\n3ùÂÒíÀ=ØOê ìH¸œÜ¸Ò\'eVv(?S\nŒşWé¶²^æÂßÃAİQp	yGXvÕÏİ+›øHPåÒÕmMAícú}¬|H¤ó\\µ/;^óï=Îó*ŒiÌ´xLK¥iÛëO{d`ó*œ«ÑíÛ[L?Ÿü1/œp¶7y(šF°FÒíç 8Ÿ¢£¦åö‹g­]sñy(2ó¥¡Ûşu‡±²&¯•^âIqÌ“rU}=/<Z!»\'{½ØŸù€¡ËÏ~‹C»\"ÍÁ|Úˆ>…—ŸŠêÓÔĞÁúŠ‡7?°RŠCÛ#[úJàÈƒµËÏû¾Í\0ïšşLPæçî«ìRB=ç<ù¹ êRóë¤NÈi›ğ¼ù¹C›­*v:öFšç(ƒÜËÎæ˜wù–v(Çä·|ç\'I>i§Ö±®mØàĞ}­¸iÍ¶#yß±r¥Ğ¹¡Ì‡J6Í+K¸†Şî=Ø¯ü²¬$¾—¥œHÆHßUìkÇc…ÇšÊ­ 4\0\0€¹Ex^u´¾®éZzS;º£aæì>^ép.[é¿J¬@nÆL|00‘qÔ\\\\ï‰¿X¦ÓIŒH_ŠæÖÃnAïòß¦d‚âç%¶ı¥0gkweÜ‚é¦ŠÄ2\'ß\0¸“Ò¾g#²ÙÛ‰à+;ğR$ÒLÀÆbÜ]lÜ]kw\0Ñ—Yâ°úszĞc1»Ù*ÓıŸ%”×µC\\8M;ø|Â´Ò¿«Åe5½JÓ[ÕóTbôõ|şŠƒFHHÄ“`\0$“{Xek\'§{eqcÑÁSÓİ—VÌÎ]œCôq\r..\0\r¦ÆÃ}¾Eyí%£÷’çÚÀY¥»ÌoÚTı\'¥\\Ãm¬{s?Ñkı-İJèG\Z{gÀ*ßiß/¢Íé.êğOHwQ”VXÆˆgx¢¼h˜úüUÆWÉòXİ+¶—X|û‘œãåî»öd^Éñ*V‹ĞĞÉ+#qk½Üç…öŸï¨ì:¹*Nâ|sX3½£âQ®^–\rFê‡Fe„u¥¸É …­‹¤Nyd.£Öhêf™5oÎko‹€6àÚ¼ùñ>%csD½&\ZĞÖ†s|€¯BŠôk$œ\\/Ø3? »×4ú3\\³‘”}÷xJ;ÂãÜ¦¼”Œ˜ßÒ>@w¯¤y±ÑÚš&<úÓ9ÓÃÑgqkC¾%|‘ëE›çMú%Òg¼jcãà‹Æ‡;á_=‰·ç«OkjÙHÓÑ§mİ×,€àÜ?x®y¬A4J®Ö¨\ZÅ]j	úÔÖ¨:Õ]j¢n±SZ¡ëU5¨&kUªµSZ‚^±F®«Â,6Ÿâ±É=%jä”¸’wª.º¹ªÖ5dSm”¤ÈVÃ3òªÀ-´Û¯éÖ°OS~‹roÌö£|Ú1ÇNì’ÌñQdœÉXÉV’Y´ÏuÄ«	BU¤¢«	BU¥@TUYhàÆö3ÚpÛşWAîù¢œèá‰¹>iÛğÄá™ì»<\núfšÆÆFÁf±­cG´X\0¹?6\Z/KnŒüoè´ã\'Ü®+)\"(¢\" \"\"\" \"\"…¦´“) ¦OV(ß!ë°¸¬›õ5rntş`Ñí=)œ&ÛŒôí}òÊ=[\\ù¤–y\rß$•Şó‰qîÍaÖ(ØÓ\Z	:Å]j‰SX‚fµ5Š±5ˆ&kU5ª&µ5Š‰zÕ*ÚY‰Ä‘7¸¶‹+m.s\07µÉZ°õ>OiÍÀ\"-p³„…×#0]´uA†©î‹\\q4]îów<]¤2Ö³\Zv}¡·t†Ñ49À7¤ÖÅŒb2\\‚Öì.³EÈ åÙWh÷æd„COFF°X\\XŞãfØ[&\r¹“ŠIìòKÄôƒ®Ûß\"m X÷¤Ëu1Í§¢3	ÈXn~eH7ä8o*´ĞÒ;”:Ê‚ó–Á±c¶ûj‘¨YSQˆğ†áıTw9T…n¬¬¶å´­%Rë&­{“lÕG?‚ÆJ\n¸ª\" -ÿ\0#)1Ì^FMÔüñZïù@íSCGNWµ­ësÈ\rı½Xî’îÙĞà¥tÄt¦‘ÎøXpë‡¸{Ë×(ô†(¡o«lŒv4\0<”„•@DDD@DDDABmšùC—šÓ«êª»õqâ¢Ëvæï‰wxyAèz6`Ói*?åc¶ÑŒn,ÀìøÙ|Â\n¸“Çtºñ*bV].‚ìJ—TD]Tb¹£z,F×İ_7•H›su2(n´ß&¸8i´°6;©°SñRb¦¶ìø)\"îÈ4“Ø¹§?«¾ôŒQË^íU\\—èk)NÛd½$Z\r±O9†2xd…eLQGœ¯>Ã6¢áäß—®ŸõåM¹ÿ\0Oo_/ïü<ói‰6\0“Àf’Óay¨f~Y-ŒÕ®B&µ­àßÏ}ÔWh:‡çÇ¸®Œq{y9òZ•ï?éª– }£9Ä­ë9316ÀG‡ÕM¿Gñ87åµoä—<ñ8cæ‡”EèæĞ°²åÓ7¸_Ì¨/§§$¿h²ËÂŸ>‹M-Ûij‘d©ÃˆáÙ±cXKtNÙ)áÆæ°}§õ>ºóe¢ñÕC—FVƒ¶îişZä<’¥Ç6#±‚ş;ü—ÑœÕĞa§– ŒæîGqøÌÖHìy½²\"(¢\" \"\"\" \"\"\"Õr§M6Š’¦±û\"‰ÎÚ~Æ7½Å£½çÓ”“¤=¦ñÒ³WÕ­}!îøJçMmÈyVyÜ÷>GœO{œ÷8ísœnâ{I*Öb7:j ,%§hXVÔJ&hÖİdn*M9fİ‡aÜ·g­wºöJîc«\n\"¾8‹¶¢#j±Â=ã¸¬ÌÑ‘¸÷Ÿ$µø´õjÚÛ¬ÍŠù-Ÿì™ĞÛô©ôš	Ù\r¸‘`|Uğí=¡ÛÂãŒ–è×RÒ`ôz?C1£ÏÀ=1<÷loyîR)`›]m×m²ï+f4•cké\\¶÷7énïKÈã3ÖŸ\r7iúvûÏGĞW—>»6#jz|ı¹.÷vØd<ZÁ©õÜ^ıö°c:†XoÖ¸-tÜ¦–øa8\rğ3 }ãö»îµoªpv±Ï7ë7ñ¾ÕÃ^óÍ®¾½ÿ\0Ï£Êâ\"Ù&bgáôş=Ù++¤}ÚÁ…§iÌÖIÍİä­SàhÍÄ¸øª­f“\'÷ØµsU“½zØøH§“–úí‰©\rØCzšš¾0öf×¸w­ç;–Hx­ñ3^Ğå¼Vß,=5O*æµµ‡ºÃÉhêt´9¸÷’ Zç%½ZãcÉ{åqÚUˆ‹zĞÆ\\æ°mq\rñQ^Ï’„Dt\0\ræû\0í\0‰};¢(DC\0ıÜmeø3=æç½qm´P’²–èÂİqm±oƒŒ?5ÜU”Qq_ø‡åTÚ5‡iô™mÀ]±4öœGá³Ë k\\÷5 ¸“°\0.I_!ò»N\ZêÊªÃ{I!ÀèÛÑŒ}Ğ;îƒPŠ—U@Ù…³¥Òf@ãÇ´-e•ÁŠÄÌu…‰Ó|ÚÒÍ½&ıB›K\r;3/¿PyºiŞÏT÷n[Ht›O®Îñcæ·W6¾XeábÉß§İ¾<¤dBÑ0_‡æ¬ı·[.Ç9­ã|-ñÈ-|zF-Ù|EWé;÷ |.\'æ°¶ky2Åÿ\0ŸÃDîyfÅµ/hÇ,ï?­Ø.Vº¯J=÷k‡Ìö•ŒËNzN‘ï=‡óU:^6Ó‹½ÙŸ¢ÕmßõNŞ­m‹rÓQ‹éé^EÜ<M‡iººgÆÏY×ìÈ-]^“‘ûOr‚ë•„c¤uåß¿ñı±¿;ulçÒàdÁ—‡õZÉ´ƒáóXœ75txÙ;o^İ98‰²¦¤ïS\\7Íc,V²Œù#ÍÏ6™JkØoığTt*5ÖVU8mÏ·êºqñ8íÓ$kØè©…U´Ë3+½¤vX¬Â²>¿Ù	n¼ğ±XõFôu\ZQbG”é4ƒ~Ë|¢×“½rq³‚\"+Šwê“ä-¿%é±Íˆì`¹</—–/¨^³“4øa.±&Ga\0m#}¾»Ä.a.áÌş´3Õ‘œ¯\roºËœ»Ü[ğĞV»“Ú;Ñé©àÊì¡ÖØ^syïqq[•@DDD@DDDAÎùñå£hç@Ói*¨D{e?w£ñ¯›ºçŸ”>—¤¥cMã¦ŒËl.ò»ït~\0¼\"‘²ë+bUl XF@‹£bÊÙÙ×àUˆ•â{j#ö¼ÖVÍ¶ßt\'è*Z{TI>ÆÖÅæc{Ş~ FL`qµó¸Q´„LÖ8FÖµ£z.sÚ\\\0ps`ºänµ–x+\Z\0hÕ;nĞs7Ûuk@ÈäsÙ¹]#qÈı\rO z‚0DDìÏyÌd¼Ì±NÂ,1v_%·ÖFs00íŞááJ1‹3•³ğYk£)´kMÿ\0&y+”²ÖT—aá¸NÜ9b\'y¸Ù±xñ[Éäš¶CqbÕ—Ş;ñÃ°µ°‹‹Ş×¶Ûo²ÓâÖ›N÷=>Ê÷¬ÄDF´ØhŞL‡ÓIU#Ë@kË\06ÍÆÄX“`.Õ­ıLÇT!lÏ,$FZ\0ßpsìP¢§Ø¸7\"nonÌ–U­ºó.KRb\"‘î“£9*ù©æª266°†o\"ÙÅ¶+Ï—®’ºcL)5Ñjš]¸q½¯lÆ\\<V‰\\¾òliR‘n¼Îzsny¥7“ü†­­aš±FYŠì!†à8!særZ\nº\'Fù\"x³Ø÷Æáplæ’×Œˆ#%Óù9Ë\ZŠ(#§’D­lšÒ)N7<¹#. 2\\åÌ\'2I\'2Nd“´µ–›\Zã°Æ¶ctjhA,VÙLtk£A]µQAXØ\\CFÒCGi6]w›Í%­¤†×l Lî Û~ñø×5äİ69šNÆãÛ°~g¹wÎe4øu5®Èı[:š,ãn«ÇÀ¬#¦¢\"Š\"\"\" \"\"\" -.´ğ¡¡ª«Ëc-Œò»£ëéOP+~¸oüEé——ÒP6ø\rSøèãØ^~!Ás‰$’I$’Nd“™%Q.ˆ2ÏPçáÄo…¡ƒ©£ ÓÕ9í¦Öcp‹p¹<NA`D$©¼mˆ4;vXœlFÛ\\ö\\ìtD±•WD#a>%dmKÇÛwŞ+ Ú>G¶Íé\r$¼³WŒ:A`ˆ¶Ù7;^÷¸9oYô£¤€S~7I&{p4ñ“…—Ïµí«H¨®äO\Z^_á?Ñ^4Ã÷µ¾~k\\‰Í#gûdûÄıF—Ùà¢Õ¢¼Ò6Ÿ´Ùì»ä«ûB?âğş«T¨œÒiµ5±ñ>PÎÃö‡Ífv›12’&†b¹/2½Øzn.Äa •œUÔ:j9ï}R^,\ri8C]rqØ73ê‡¬©6vDS#}¡â¬y&áI‚ª’Ñ‡Âã…–u€é»!{âíã®ú™%Ä’|‚mTDUkI \r¤€;NÅ¤äü`{÷ÈìİØ~XÊúƒ’\Z3Ñ¨é µ‹cpş7ôŞ>óˆî\\7ÚMYEMk±„HşhÄoÚGÆÑJÊ@ˆŠ(ˆˆˆ€ˆˆˆ€¼Ç,¹O¤p:BæK-dŒ9á&ø^69·ï6\"åztAÇjù™~x*˜x]­Ãä´õ<ÌÕUğ;´‘çæ»Ò+±ó•O4ÕíÙî¹ŸîjÕTsuZÍ´Rü7wá._PÙP´ ù*£’s³Ö‚¡½¬xüL_.‰¶Wpí\r?©}ˆb´Q»Öh= 4w;ıü®±;F¼}¦w’<À_\\Tr^ş½4.í‰ŸE®¨æûG;ü«º\\ÏÂB•}MÀÇ3ê­u£÷nîù/¦gæ£G;c$od®?ëYQÌÕ)Í²ÌßıgÉ¡Î®…Ãk\\;ZBÇußgæhúud{ÌwäğµõĞÕV¢\'{ØÛæ× âJ«¬TsO^?wûÂÔÆ­UO6µíÛC~¶–~‰?$ñ°©äUK=j)Çceÿ\0i[6€Ãë2V{Ö‰¡44(¶‡E7sİ÷Zï\'+¢¹Ş,pòºhk‘L:5ŞÓ<\\<ÚŸ³äàcÙõPFE!Ô2İ»¸_ÉbtXáÚÒX¶<Ÿ§Ç3x7¦{¶|Íû–¶ëÔòRŸ\\÷d^æÄ7`u»Iù$ÏÌöŠÕ5dgfÂY³İÙÑø•Ó—œä\\L‚œæë\\8œVî7á[áPŞ*ÈÊŠÑ â«ˆ(*ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆ)dÂ5c‚µÔí;B\"u\Zş¼1»Ş‡Ì-dü…ÑÎÌÑÁ~\"6´ø¶Êˆƒ_QÍwîK}Ùe,VZÚhhêºfüLwâiDMuG31}Š‡z6Ã…Aÿ\0ñùšz5,pàD±üÚòˆ®Äzk«3\rlg#b\'q±ÜpÉ~+\'ù«­dÚÊŒ8‡9ã{]Ànß—DØê0èÙwÙK‰ãz\"‚C)Ü²¶2ˆƒ#ZUàDUT@DDÿÙ',500,0.3,'1 year warranty is applicable',7,'approved',0,0,''),(13,2,'Surakha E Commerce Pvt Ltd','ELECTRONICS','Mobile','Naughty Ninos Printed Boy\'s Polo Neck T-Shirt','Pantaloons',1700,5,105,100,100,1000,89.5,'ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	( \Z%!1!%)+...383,7(-.+\n\n\n\r\Z\Z-% %--++5-/./+7.--1-+---.-7-+-----+-/5-+-.---+02++---7ÿÀ\0\0¨+\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0F\0\0\0\0\0!1AQ\"aq‘±2Rr‚¡ÑB’²ÁÂCbƒáğ#D¢Ò$3cs“ÃÿÄ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0-\0\0\0\0\0\0\0\0!1AQq\"Ba‘ğ2¡ÑáÁñÿÚ\0\0\0?\0î(ˆ€ˆˆˆ€ˆˆ‹MCccäy\rk\Z^ç€rPeEÎ«9Î!ÄEJÛäé%ÀOYhc­â¢?œÚƒ²šÛ#İúB ‹“KÎEoÙe0íWô\n3ùÂÒíÀ=ØOê ìH¸œÜ¸Ò\'eVv(?S\nŒşWé¶²^æÂßÃAİQp	yGXvÕÏİ+›øHPåÒÕmMAícú}¬|H¤ó\\µ/;^óï=Îó*ŒiÌ´xLK¥iÛëO{d`ó*œ«ÑíÛ[L?Ÿü1/œp¶7y(šF°FÒíç 8Ÿ¢£¦åö‹g­]sñy(2ó¥¡Ûşu‡±²&¯•^âIqÌ“rU}=/<Z!»\'{½ØŸù€¡ËÏ~‹C»\"ÍÁ|Úˆ>…—ŸŠêÓÔĞÁúŠ‡7?°RŠCÛ#[úJàÈƒµËÏû¾Í\0ïšşLPæçî«ìRB=ç<ù¹ êRóë¤NÈi›ğ¼ù¹C›­*v:öFšç(ƒÜËÎæ˜wù–v(Çä·|ç\'I>i§Ö±®mØàĞ}­¸iÍ¶#yß±r¥Ğ¹¡Ì‡J6Í+K¸†Şî=Ø¯ü²¬$¾—¥œHÆHßUìkÇc…ÇšÊ­ 4\0\0€¹Ex^u´¾®éZzS;º£aæì>^ép.[é¿J¬@nÆL|00‘qÔ\\\\ï‰¿X¦ÓIŒH_ŠæÖÃnAïòß¦d‚âç%¶ı¥0gkweÜ‚é¦ŠÄ2\'ß\0¸“Ò¾g#²ÙÛ‰à+;ğR$ÒLÀÆbÜ]lÜ]kw\0Ñ—Yâ°úszĞc1»Ù*ÓıŸ%”×µC\\8M;ø|Â´Ò¿«Åe5½JÓ[ÕóTbôõ|şŠƒFHHÄ“`\0$“{Xek\'§{eqcÑÁSÓİ—VÌÎ]œCôq\r..\0\r¦ÆÃ}¾Eyí%£÷’çÚÀY¥»ÌoÚTı\'¥\\Ãm¬{s?Ñkı-İJèG\Z{gÀ*ßiß/¢Íé.êğOHwQ”VXÆˆgx¢¼h˜úüUÆWÉòXİ+¶—X|û‘œãåî»öd^Éñ*V‹ĞĞÉ+#qk½Üç…öŸï¨ì:¹*Nâ|sX3½£âQ®^–\rFê‡Fe„u¥¸É …­‹¤Nyd.£Öhêf™5oÎko‹€6àÚ¼ùñ>%csD½&\ZĞÖ†s|€¯BŠôk$œ\\/Ø3? »×4ú3\\³‘”}÷xJ;ÂãÜ¦¼”Œ˜ßÒ>@w¯¤y±ÑÚš&<úÓ9ÓÃÑgqkC¾%|‘ëE›çMú%Òg¼jcãà‹Æ‡;á_=‰·ç«OkjÙHÓÑ§mİ×,€àÜ?x®y¬A4J®Ö¨\ZÅ]j	úÔÖ¨:Õ]j¢n±SZ¡ëU5¨&kUªµSZ‚^±F®«Â,6Ÿâ±É=%jä”¸’wª.º¹ªÖ5dSm”¤ÈVÃ3òªÀ-´Û¯éÖ°OS~‹roÌö£|Ú1ÇNì’ÌñQdœÉXÉV’Y´ÏuÄ«	BU¤¢«	BU¥@TUYhàÆö3ÚpÛşWAîù¢œèá‰¹>iÛğÄá™ì»<\núfšÆÆFÁf±­cG´X\0¹?6\Z/KnŒüoè´ã\'Ü®+)\"(¢\" \"\"\" \"\"…¦´“) ¦OV(ß!ë°¸¬›õ5rntş`Ñí=)œ&ÛŒôí}òÊ=[\\ù¤–y\rß$•Şó‰qîÍaÖ(ØÓ\Z	:Å]j‰SX‚fµ5Š±5ˆ&kU5ª&µ5Š‰zÕ*ÚY‰Ä‘7¸¶‹+m.s\07µÉZ°õ>OiÍÀ\"-p³„…×#0]´uA†©î‹\\q4]îów<]¤2Ö³\Zv}¡·t†Ñ49À7¤ÖÅŒb2\\‚Öì.³EÈ åÙWh÷æd„COFF°X\\XŞãfØ[&\r¹“ŠIìòKÄôƒ®Ûß\"m X÷¤Ëu1Í§¢3	ÈXn~eH7ä8o*´ĞÒ;”:Ê‚ó–Á±c¶ûj‘¨YSQˆğ†áıTw9T…n¬¬¶å´­%Rë&­{“lÕG?‚ÆJ\n¸ª\" -ÿ\0#)1Ì^FMÔüñZïù@íSCGNWµ­ësÈ\rı½Xî’îÙĞà¥tÄt¦‘ÎøXpë‡¸{Ë×(ô†(¡o«lŒv4\0<”„•@DDD@DDDABmšùC—šÓ«êª»õqâ¢Ëvæï‰wxyAèz6`Ói*?åc¶ÑŒn,ÀìøÙ|Â\n¸“Çtºñ*bV].‚ìJ—TD]Tb¹£z,F×İ_7•H›su2(n´ß&¸8i´°6;©°SñRb¦¶ìø)\"îÈ4“Ø¹§?«¾ôŒQË^íU\\—èk)NÛd½$Z\r±O9†2xd…eLQGœ¯>Ã6¢áäß—®ŸõåM¹ÿ\0Oo_/ïü<ói‰6\0“Àf’Óay¨f~Y-ŒÕ®B&µ­àßÏ}ÔWh:‡çÇ¸®Œq{y9òZ•ï?éª– }£9Ä­ë9316ÀG‡ÕM¿Gñ87åµoä—<ñ8cæ‡”EèæĞ°²åÓ7¸_Ì¨/§§$¿h²ËÂŸ>‹M-Ûij‘d©ÃˆáÙ±cXKtNÙ)áÆæ°}§õ>ºóe¢ñÕC—FVƒ¶îişZä<’¥Ç6#±‚ş;ü—ÑœÕĞa§– ŒæîGqøÌÖHìy½²\"(¢\" \"\"\" \"\"\"Õr§M6Š’¦±û\"‰ÎÚ~Æ7½Å£½çÓ”“¤=¦ñÒ³WÕ­}!îøJçMmÈyVyÜ÷>GœO{œ÷8ísœnâ{I*Öb7:j ,%§hXVÔJ&hÖİdn*M9fİ‡aÜ·g­wºöJîc«\n\"¾8‹¶¢#j±Â=ã¸¬ÌÑ‘¸÷Ÿ$µø´õjÚÛ¬ÍŠù-Ÿì™ĞÛô©ôš	Ù\r¸‘`|Uğí=¡ÛÂãŒ–è×RÒ`ôz?C1£ÏÀ=1<÷loyîR)`›]m×m²ï+f4•cké\\¶÷7énïKÈã3ÖŸ\r7iúvûÏGĞW—>»6#jz|ı¹.÷vØd<ZÁ©õÜ^ıö°c:†XoÖ¸-tÜ¦–øa8\rğ3 }ãö»îµoªpv±Ï7ë7ñ¾ÕÃ^óÍ®¾½ÿ\0Ï£Êâ\"Ù&bgáôş=Ù++¤}ÚÁ…§iÌÖIÍİä­SàhÍÄ¸øª­f“\'÷ØµsU“½zØøH§“–úí‰©\rØCzšš¾0öf×¸w­ç;–Hx­ñ3^Ğå¼Vß,=5O*æµµ‡ºÃÉhêt´9¸÷’ Zç%½ZãcÉ{åqÚUˆ‹zĞÆ\\æ°mq\rñQ^Ï’„Dt\0\ræû\0í\0‰};¢(DC\0ıÜmeø3=æç½qm´P’²–èÂİqm±oƒŒ?5ÜU”Qq_ø‡åTÚ5‡iô™mÀ]±4öœGá³Ë k\\÷5 ¸“°\0.I_!ò»N\ZêÊªÃ{I!ÀèÛÑŒ}Ğ;îƒPŠ—U@Ù…³¥Òf@ãÇ´-e•ÁŠÄÌu…‰Ó|ÚÒÍ½&ıB›K\r;3/¿PyºiŞÏT÷n[Ht›O®Îñcæ·W6¾XeábÉß§İ¾<¤dBÑ0_‡æ¬ı·[.Ç9­ã|-ñÈ-|zF-Ù|EWé;÷ |.\'æ°¶ky2Åÿ\0ŸÃDîyfÅµ/hÇ,ï?­Ø.Vº¯J=÷k‡Ìö•ŒËNzN‘ï=‡óU:^6Ó‹½ÙŸ¢ÕmßõNŞ­m‹rÓQ‹éé^EÜ<M‡iººgÆÏY×ìÈ-]^“‘ûOr‚ë•„c¤uåß¿ñı±¿;ulçÒàdÁ—‡õZÉ´ƒáóXœ75txÙ;o^İ98‰²¦¤ïS\\7Íc,V²Œù#ÍÏ6™JkØoığTt*5ÖVU8mÏ·êºqñ8íÓ$kØè©…U´Ë3+½¤vX¬Â²>¿Ù	n¼ğ±XõFôu\ZQbG”é4ƒ~Ë|¢×“½rq³‚\"+Šwê“ä-¿%é±Íˆì`¹</—–/¨^³“4øa.±&Ga\0m#}¾»Ä.a.áÌş´3Õ‘œ¯\roºËœ»Ü[ğĞV»“Ú;Ñé©àÊì¡ÖØ^syïqq[•@DDD@DDDAÎùñå£hç@Ói*¨D{e?w£ñ¯›ºçŸ”>—¤¥cMã¦ŒËl.ò»ït~\0¼\"‘²ë+bUl XF@‹£bÊÙÙ×àUˆ•â{j#ö¼ÖVÍ¶ßt\'è*Z{TI>ÆÖÅæc{Ş~ FL`qµó¸Q´„LÖ8FÖµ£z.sÚ\\\0ps`ºänµ–x+\Z\0hÕ;nĞs7Ûuk@ÈäsÙ¹]#qÈı\rO z‚0DDìÏyÌd¼Ì±NÂ,1v_%·ÖFs00íŞááJ1‹3•³ğYk£)´kMÿ\0&y+”²ÖT—aá¸NÜ9b\'y¸Ù±xñ[Éäš¶CqbÕ—Ş;ñÃ°µ°‹‹Ş×¶Ûo²ÓâÖ›N÷=>Ê÷¬ÄDF´ØhŞL‡ÓIU#Ë@kË\06ÍÆÄX“`.Õ­ıLÇT!lÏ,$FZ\0ßpsìP¢§Ø¸7\"nonÌ–U­ºó.KRb\"‘î“£9*ù©æª266°†o\"ÙÅ¶+Ï—®’ºcL)5Ñjš]¸q½¯lÆ\\<V‰\\¾òliR‘n¼Îzsny¥7“ü†­­aš±FYŠì!†à8!særZ\nº\'Fù\"x³Ø÷Æáplæ’×Œˆ#%Óù9Ë\ZŠ(#§’D­lšÒ)N7<¹#. 2\\åÌ\'2I\'2Nd“´µ–›\Zã°Æ¶ctjhA,VÙLtk£A]µQAXØ\\CFÒCGi6]w›Í%­¤†×l Lî Û~ñø×5äİ69šNÆãÛ°~g¹wÎe4øu5®Èı[:š,ãn«ÇÀ¬#¦¢\"Š\"\"\" \"\"\" -.´ğ¡¡ª«Ëc-Œò»£ëéOP+~¸oüEé——ÒP6ø\rSøèãØ^~!Ás‰$’I$’Nd“™%Q.ˆ2ÏPçáÄo…¡ƒ©£ ÓÕ9í¦Öcp‹p¹<NA`D$©¼mˆ4;vXœlFÛ\\ö\\ìtD±•WD#a>%dmKÇÛwŞ+ Ú>G¶Íé\r$¼³WŒ:A`ˆ¶Ù7;^÷¸9oYô£¤€S~7I&{p4ñ“…—Ïµí«H¨®äO\Z^_á?Ñ^4Ã÷µ¾~k\\‰Í#gûdûÄıF—Ùà¢Õ¢¼Ò6Ÿ´Ùì»ä«ûB?âğş«T¨œÒiµ5±ñ>PÎÃö‡Ífv›12’&†b¹/2½Øzn.Äa •œUÔ:j9ï}R^,\ri8C]rqØ73ê‡¬©6vDS#}¡â¬y&áI‚ª’Ñ‡Âã…–u€é»!{âíã®ú™%Ä’|‚mTDUkI \r¤€;NÅ¤äü`{÷ÈìİØ~XÊúƒ’\Z3Ñ¨é µ‹cpş7ôŞ>óˆî\\7ÚMYEMk±„HşhÄoÚGÆÑJÊ@ˆŠ(ˆˆˆ€ˆˆˆ€¼Ç,¹O¤p:BæK-dŒ9á&ø^69·ï6\"åztAÇjù™~x*˜x]­Ãä´õ<ÌÕUğ;´‘çæ»Ò+±ó•O4ÕíÙî¹ŸîjÕTsuZÍ´Rü7wá._PÙP´ ù*£’s³Ö‚¡½¬xüL_.‰¶Wpí\r?©}ˆb´Q»Öh= 4w;ıü®±;F¼}¦w’<À_\\Tr^ş½4.í‰ŸE®¨æûG;ü«º\\ÏÂB•}MÀÇ3ê­u£÷nîù/¦gæ£G;c$od®?ëYQÌÕ)Í²ÌßıgÉ¡Î®…Ãk\\;ZBÇußgæhúud{ÌwäğµõĞÕV¢\'{ØÛæ× âJ«¬TsO^?wûÂÔÆ­UO6µíÛC~¶–~‰?$ñ°©äUK=j)Çceÿ\0i[6€Ãë2V{Ö‰¡44(¶‡E7sİ÷Zï\'+¢¹Ş,pòºhk‘L:5ŞÓ<\\<ÚŸ³äàcÙõPFE!Ô2İ»¸_ÉbtXáÚÒX¶<Ÿ§Ç3x7¦{¶|Íû–¶ëÔòRŸ\\÷d^æÄ7`u»Iù$ÏÌöŠÕ5dgfÂY³İÙÑø•Ó—œä\\L‚œæë\\8œVî7á[áPŞ*ÈÊŠÑ â«ˆ(*ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆ)dÂ5c‚µÔí;B\"u\Zş¼1»Ş‡Ì-dü…ÑÎÌÑÁ~\"6´ø¶Êˆƒ_QÍwîK}Ùe,VZÚhhêºfüLwâiDMuG31}Š‡z6Ã…Aÿ\0ñùšz5,pàD±üÚòˆ®Äzk«3\rlg#b\'q±ÜpÉ~+\'ù«­dÚÊŒ8‡9ã{]Ànß—DØê0èÙwÙK‰ãz\"‚C)Ü²¶2ˆƒ#ZUàDUT@DDÿÙ','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	( \Z%!1!%)+...383,7(-.+\n\n\n\r\Z\Z-% %--++5-/./+7.--1-+---.-7-+-----+-/5-+-.---+02++---7ÿÀ\0\0¨+\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0F\0\0\0\0\0!1AQ\"aq‘±2Rr‚¡ÑB’²ÁÂCbƒáğ#D¢Ò$3cs“ÃÿÄ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0-\0\0\0\0\0\0\0\0!1AQq\"Ba‘ğ2¡ÑáÁñÿÚ\0\0\0?\0î(ˆ€ˆˆˆ€ˆˆ‹MCccäy\rk\Z^ç€rPeEÎ«9Î!ÄEJÛäé%ÀOYhc­â¢?œÚƒ²šÛ#İúB ‹“KÎEoÙe0íWô\n3ùÂÒíÀ=ØOê ìH¸œÜ¸Ò\'eVv(?S\nŒşWé¶²^æÂßÃAİQp	yGXvÕÏİ+›øHPåÒÕmMAícú}¬|H¤ó\\µ/;^óï=Îó*ŒiÌ´xLK¥iÛëO{d`ó*œ«ÑíÛ[L?Ÿü1/œp¶7y(šF°FÒíç 8Ÿ¢£¦åö‹g­]sñy(2ó¥¡Ûşu‡±²&¯•^âIqÌ“rU}=/<Z!»\'{½ØŸù€¡ËÏ~‹C»\"ÍÁ|Úˆ>…—ŸŠêÓÔĞÁúŠ‡7?°RŠCÛ#[úJàÈƒµËÏû¾Í\0ïšşLPæçî«ìRB=ç<ù¹ êRóë¤NÈi›ğ¼ù¹C›­*v:öFšç(ƒÜËÎæ˜wù–v(Çä·|ç\'I>i§Ö±®mØàĞ}­¸iÍ¶#yß±r¥Ğ¹¡Ì‡J6Í+K¸†Şî=Ø¯ü²¬$¾—¥œHÆHßUìkÇc…ÇšÊ­ 4\0\0€¹Ex^u´¾®éZzS;º£aæì>^ép.[é¿J¬@nÆL|00‘qÔ\\\\ï‰¿X¦ÓIŒH_ŠæÖÃnAïòß¦d‚âç%¶ı¥0gkweÜ‚é¦ŠÄ2\'ß\0¸“Ò¾g#²ÙÛ‰à+;ğR$ÒLÀÆbÜ]lÜ]kw\0Ñ—Yâ°úszĞc1»Ù*ÓıŸ%”×µC\\8M;ø|Â´Ò¿«Åe5½JÓ[ÕóTbôõ|şŠƒFHHÄ“`\0$“{Xek\'§{eqcÑÁSÓİ—VÌÎ]œCôq\r..\0\r¦ÆÃ}¾Eyí%£÷’çÚÀY¥»ÌoÚTı\'¥\\Ãm¬{s?Ñkı-İJèG\Z{gÀ*ßiß/¢Íé.êğOHwQ”VXÆˆgx¢¼h˜úüUÆWÉòXİ+¶—X|û‘œãåî»öd^Éñ*V‹ĞĞÉ+#qk½Üç…öŸï¨ì:¹*Nâ|sX3½£âQ®^–\rFê‡Fe„u¥¸É …­‹¤Nyd.£Öhêf™5oÎko‹€6àÚ¼ùñ>%csD½&\ZĞÖ†s|€¯BŠôk$œ\\/Ø3? »×4ú3\\³‘”}÷xJ;ÂãÜ¦¼”Œ˜ßÒ>@w¯¤y±ÑÚš&<úÓ9ÓÃÑgqkC¾%|‘ëE›çMú%Òg¼jcãà‹Æ‡;á_=‰·ç«OkjÙHÓÑ§mİ×,€àÜ?x®y¬A4J®Ö¨\ZÅ]j	úÔÖ¨:Õ]j¢n±SZ¡ëU5¨&kUªµSZ‚^±F®«Â,6Ÿâ±É=%jä”¸’wª.º¹ªÖ5dSm”¤ÈVÃ3òªÀ-´Û¯éÖ°OS~‹roÌö£|Ú1ÇNì’ÌñQdœÉXÉV’Y´ÏuÄ«	BU¤¢«	BU¥@TUYhàÆö3ÚpÛşWAîù¢œèá‰¹>iÛğÄá™ì»<\núfšÆÆFÁf±­cG´X\0¹?6\Z/KnŒüoè´ã\'Ü®+)\"(¢\" \"\"\" \"\"…¦´“) ¦OV(ß!ë°¸¬›õ5rntş`Ñí=)œ&ÛŒôí}òÊ=[\\ù¤–y\rß$•Şó‰qîÍaÖ(ØÓ\Z	:Å]j‰SX‚fµ5Š±5ˆ&kU5ª&µ5Š‰zÕ*ÚY‰Ä‘7¸¶‹+m.s\07µÉZ°õ>OiÍÀ\"-p³„…×#0]´uA†©î‹\\q4]îów<]¤2Ö³\Zv}¡·t†Ñ49À7¤ÖÅŒb2\\‚Öì.³EÈ åÙWh÷æd„COFF°X\\XŞãfØ[&\r¹“ŠIìòKÄôƒ®Ûß\"m X÷¤Ëu1Í§¢3	ÈXn~eH7ä8o*´ĞÒ;”:Ê‚ó–Á±c¶ûj‘¨YSQˆğ†áıTw9T…n¬¬¶å´­%Rë&­{“lÕG?‚ÆJ\n¸ª\" -ÿ\0#)1Ì^FMÔüñZïù@íSCGNWµ­ësÈ\rı½Xî’îÙĞà¥tÄt¦‘ÎøXpë‡¸{Ë×(ô†(¡o«lŒv4\0<”„•@DDD@DDDABmšùC—šÓ«êª»õqâ¢Ëvæï‰wxyAèz6`Ói*?åc¶ÑŒn,ÀìøÙ|Â\n¸“Çtºñ*bV].‚ìJ—TD]Tb¹£z,F×İ_7•H›su2(n´ß&¸8i´°6;©°SñRb¦¶ìø)\"îÈ4“Ø¹§?«¾ôŒQË^íU\\—èk)NÛd½$Z\r±O9†2xd…eLQGœ¯>Ã6¢áäß—®ŸõåM¹ÿ\0Oo_/ïü<ói‰6\0“Àf’Óay¨f~Y-ŒÕ®B&µ­àßÏ}ÔWh:‡çÇ¸®Œq{y9òZ•ï?éª– }£9Ä­ë9316ÀG‡ÕM¿Gñ87åµoä—<ñ8cæ‡”EèæĞ°²åÓ7¸_Ì¨/§§$¿h²ËÂŸ>‹M-Ûij‘d©ÃˆáÙ±cXKtNÙ)áÆæ°}§õ>ºóe¢ñÕC—FVƒ¶îişZä<’¥Ç6#±‚ş;ü—ÑœÕĞa§– ŒæîGqøÌÖHìy½²\"(¢\" \"\"\" \"\"\"Õr§M6Š’¦±û\"‰ÎÚ~Æ7½Å£½çÓ”“¤=¦ñÒ³WÕ­}!îøJçMmÈyVyÜ÷>GœO{œ÷8ísœnâ{I*Öb7:j ,%§hXVÔJ&hÖİdn*M9fİ‡aÜ·g­wºöJîc«\n\"¾8‹¶¢#j±Â=ã¸¬ÌÑ‘¸÷Ÿ$µø´õjÚÛ¬ÍŠù-Ÿì™ĞÛô©ôš	Ù\r¸‘`|Uğí=¡ÛÂãŒ–è×RÒ`ôz?C1£ÏÀ=1<÷loyîR)`›]m×m²ï+f4•cké\\¶÷7énïKÈã3ÖŸ\r7iúvûÏGĞW—>»6#jz|ı¹.÷vØd<ZÁ©õÜ^ıö°c:†XoÖ¸-tÜ¦–øa8\rğ3 }ãö»îµoªpv±Ï7ë7ñ¾ÕÃ^óÍ®¾½ÿ\0Ï£Êâ\"Ù&bgáôş=Ù++¤}ÚÁ…§iÌÖIÍİä­SàhÍÄ¸øª­f“\'÷ØµsU“½zØøH§“–úí‰©\rØCzšš¾0öf×¸w­ç;–Hx­ñ3^Ğå¼Vß,=5O*æµµ‡ºÃÉhêt´9¸÷’ Zç%½ZãcÉ{åqÚUˆ‹zĞÆ\\æ°mq\rñQ^Ï’„Dt\0\ræû\0í\0‰};¢(DC\0ıÜmeø3=æç½qm´P’²–èÂİqm±oƒŒ?5ÜU”Qq_ø‡åTÚ5‡iô™mÀ]±4öœGá³Ë k\\÷5 ¸“°\0.I_!ò»N\ZêÊªÃ{I!ÀèÛÑŒ}Ğ;îƒPŠ—U@Ù…³¥Òf@ãÇ´-e•ÁŠÄÌu…‰Ó|ÚÒÍ½&ıB›K\r;3/¿PyºiŞÏT÷n[Ht›O®Îñcæ·W6¾XeábÉß§İ¾<¤dBÑ0_‡æ¬ı·[.Ç9­ã|-ñÈ-|zF-Ù|EWé;÷ |.\'æ°¶ky2Åÿ\0ŸÃDîyfÅµ/hÇ,ï?­Ø.Vº¯J=÷k‡Ìö•ŒËNzN‘ï=‡óU:^6Ó‹½ÙŸ¢ÕmßõNŞ­m‹rÓQ‹éé^EÜ<M‡iººgÆÏY×ìÈ-]^“‘ûOr‚ë•„c¤uåß¿ñı±¿;ulçÒàdÁ—‡õZÉ´ƒáóXœ75txÙ;o^İ98‰²¦¤ïS\\7Íc,V²Œù#ÍÏ6™JkØoığTt*5ÖVU8mÏ·êºqñ8íÓ$kØè©…U´Ë3+½¤vX¬Â²>¿Ù	n¼ğ±XõFôu\ZQbG”é4ƒ~Ë|¢×“½rq³‚\"+Šwê“ä-¿%é±Íˆì`¹</—–/¨^³“4øa.±&Ga\0m#}¾»Ä.a.áÌş´3Õ‘œ¯\roºËœ»Ü[ğĞV»“Ú;Ñé©àÊì¡ÖØ^syïqq[•@DDD@DDDAÎùñå£hç@Ói*¨D{e?w£ñ¯›ºçŸ”>—¤¥cMã¦ŒËl.ò»ït~\0¼\"‘²ë+bUl XF@‹£bÊÙÙ×àUˆ•â{j#ö¼ÖVÍ¶ßt\'è*Z{TI>ÆÖÅæc{Ş~ FL`qµó¸Q´„LÖ8FÖµ£z.sÚ\\\0ps`ºänµ–x+\Z\0hÕ;nĞs7Ûuk@ÈäsÙ¹]#qÈı\rO z‚0DDìÏyÌd¼Ì±NÂ,1v_%·ÖFs00íŞááJ1‹3•³ğYk£)´kMÿ\0&y+”²ÖT—aá¸NÜ9b\'y¸Ù±xñ[Éäš¶CqbÕ—Ş;ñÃ°µ°‹‹Ş×¶Ûo²ÓâÖ›N÷=>Ê÷¬ÄDF´ØhŞL‡ÓIU#Ë@kË\06ÍÆÄX“`.Õ­ıLÇT!lÏ,$FZ\0ßpsìP¢§Ø¸7\"nonÌ–U­ºó.KRb\"‘î“£9*ù©æª266°†o\"ÙÅ¶+Ï—®’ºcL)5Ñjš]¸q½¯lÆ\\<V‰\\¾òliR‘n¼Îzsny¥7“ü†­­aš±FYŠì!†à8!særZ\nº\'Fù\"x³Ø÷Æáplæ’×Œˆ#%Óù9Ë\ZŠ(#§’D­lšÒ)N7<¹#. 2\\åÌ\'2I\'2Nd“´µ–›\Zã°Æ¶ctjhA,VÙLtk£A]µQAXØ\\CFÒCGi6]w›Í%­¤†×l Lî Û~ñø×5äİ69šNÆãÛ°~g¹wÎe4øu5®Èı[:š,ãn«ÇÀ¬#¦¢\"Š\"\"\" \"\"\" -.´ğ¡¡ª«Ëc-Œò»£ëéOP+~¸oüEé——ÒP6ø\rSøèãØ^~!Ás‰$’I$’Nd“™%Q.ˆ2ÏPçáÄo…¡ƒ©£ ÓÕ9í¦Öcp‹p¹<NA`D$©¼mˆ4;vXœlFÛ\\ö\\ìtD±•WD#a>%dmKÇÛwŞ+ Ú>G¶Íé\r$¼³WŒ:A`ˆ¶Ù7;^÷¸9oYô£¤€S~7I&{p4ñ“…—Ïµí«H¨®äO\Z^_á?Ñ^4Ã÷µ¾~k\\‰Í#gûdûÄıF—Ùà¢Õ¢¼Ò6Ÿ´Ùì»ä«ûB?âğş«T¨œÒiµ5±ñ>PÎÃö‡Ífv›12’&†b¹/2½Øzn.Äa •œUÔ:j9ï}R^,\ri8C]rqØ73ê‡¬©6vDS#}¡â¬y&áI‚ª’Ñ‡Âã…–u€é»!{âíã®ú™%Ä’|‚mTDUkI \r¤€;NÅ¤äü`{÷ÈìİØ~XÊúƒ’\Z3Ñ¨é µ‹cpş7ôŞ>óˆî\\7ÚMYEMk±„HşhÄoÚGÆÑJÊ@ˆŠ(ˆˆˆ€ˆˆˆ€¼Ç,¹O¤p:BæK-dŒ9á&ø^69·ï6\"åztAÇjù™~x*˜x]­Ãä´õ<ÌÕUğ;´‘çæ»Ò+±ó•O4ÕíÙî¹ŸîjÕTsuZÍ´Rü7wá._PÙP´ ù*£’s³Ö‚¡½¬xüL_.‰¶Wpí\r?©}ˆb´Q»Öh= 4w;ıü®±;F¼}¦w’<À_\\Tr^ş½4.í‰ŸE®¨æûG;ü«º\\ÏÂB•}MÀÇ3ê­u£÷nîù/¦gæ£G;c$od®?ëYQÌÕ)Í²ÌßıgÉ¡Î®…Ãk\\;ZBÇußgæhúud{ÌwäğµõĞÕV¢\'{ØÛæ× âJ«¬TsO^?wûÂÔÆ­UO6µíÛC~¶–~‰?$ñ°©äUK=j)Çceÿ\0i[6€Ãë2V{Ö‰¡44(¶‡E7sİ÷Zï\'+¢¹Ş,pòºhk‘L:5ŞÓ<\\<ÚŸ³äàcÙõPFE!Ô2İ»¸_ÉbtXáÚÒX¶<Ÿ§Ç3x7¦{¶|Íû–¶ëÔòRŸ\\÷d^æÄ7`u»Iù$ÏÌöŠÕ5dgfÂY³İÙÑø•Ó—œä\\L‚œæë\\8œVî7á[áPŞ*ÈÊŠÑ â«ˆ(*ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆ)dÂ5c‚µÔí;B\"u\Zş¼1»Ş‡Ì-dü…ÑÎÌÑÁ~\"6´ø¶Êˆƒ_QÍwîK}Ùe,VZÚhhêºfüLwâiDMuG31}Š‡z6Ã…Aÿ\0ñùšz5,pàD±üÚòˆ®Äzk«3\rlg#b\'q±ÜpÉ~+\'ù«­dÚÊŒ8‡9ã{]Ànß—DØê0èÙwÙK‰ãz\"‚C)Ü²¶2ˆƒ#ZUàDUT@DDÿÙ','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	( \Z%!1!%)+...383,7(-.+\n\n\n\r\Z\Z-% %--++5-/./+7.--1-+---.-7-+-----+-/5-+-.---+02++---7ÿÀ\0\0¨+\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0F\0\0\0\0\0!1AQ\"aq‘±2Rr‚¡ÑB’²ÁÂCbƒáğ#D¢Ò$3cs“ÃÿÄ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0-\0\0\0\0\0\0\0\0!1AQq\"Ba‘ğ2¡ÑáÁñÿÚ\0\0\0?\0î(ˆ€ˆˆˆ€ˆˆ‹MCccäy\rk\Z^ç€rPeEÎ«9Î!ÄEJÛäé%ÀOYhc­â¢?œÚƒ²šÛ#İúB ‹“KÎEoÙe0íWô\n3ùÂÒíÀ=ØOê ìH¸œÜ¸Ò\'eVv(?S\nŒşWé¶²^æÂßÃAİQp	yGXvÕÏİ+›øHPåÒÕmMAícú}¬|H¤ó\\µ/;^óï=Îó*ŒiÌ´xLK¥iÛëO{d`ó*œ«ÑíÛ[L?Ÿü1/œp¶7y(šF°FÒíç 8Ÿ¢£¦åö‹g­]sñy(2ó¥¡Ûşu‡±²&¯•^âIqÌ“rU}=/<Z!»\'{½ØŸù€¡ËÏ~‹C»\"ÍÁ|Úˆ>…—ŸŠêÓÔĞÁúŠ‡7?°RŠCÛ#[úJàÈƒµËÏû¾Í\0ïšşLPæçî«ìRB=ç<ù¹ êRóë¤NÈi›ğ¼ù¹C›­*v:öFšç(ƒÜËÎæ˜wù–v(Çä·|ç\'I>i§Ö±®mØàĞ}­¸iÍ¶#yß±r¥Ğ¹¡Ì‡J6Í+K¸†Şî=Ø¯ü²¬$¾—¥œHÆHßUìkÇc…ÇšÊ­ 4\0\0€¹Ex^u´¾®éZzS;º£aæì>^ép.[é¿J¬@nÆL|00‘qÔ\\\\ï‰¿X¦ÓIŒH_ŠæÖÃnAïòß¦d‚âç%¶ı¥0gkweÜ‚é¦ŠÄ2\'ß\0¸“Ò¾g#²ÙÛ‰à+;ğR$ÒLÀÆbÜ]lÜ]kw\0Ñ—Yâ°úszĞc1»Ù*ÓıŸ%”×µC\\8M;ø|Â´Ò¿«Åe5½JÓ[ÕóTbôõ|şŠƒFHHÄ“`\0$“{Xek\'§{eqcÑÁSÓİ—VÌÎ]œCôq\r..\0\r¦ÆÃ}¾Eyí%£÷’çÚÀY¥»ÌoÚTı\'¥\\Ãm¬{s?Ñkı-İJèG\Z{gÀ*ßiß/¢Íé.êğOHwQ”VXÆˆgx¢¼h˜úüUÆWÉòXİ+¶—X|û‘œãåî»öd^Éñ*V‹ĞĞÉ+#qk½Üç…öŸï¨ì:¹*Nâ|sX3½£âQ®^–\rFê‡Fe„u¥¸É …­‹¤Nyd.£Öhêf™5oÎko‹€6àÚ¼ùñ>%csD½&\ZĞÖ†s|€¯BŠôk$œ\\/Ø3? »×4ú3\\³‘”}÷xJ;ÂãÜ¦¼”Œ˜ßÒ>@w¯¤y±ÑÚš&<úÓ9ÓÃÑgqkC¾%|‘ëE›çMú%Òg¼jcãà‹Æ‡;á_=‰·ç«OkjÙHÓÑ§mİ×,€àÜ?x®y¬A4J®Ö¨\ZÅ]j	úÔÖ¨:Õ]j¢n±SZ¡ëU5¨&kUªµSZ‚^±F®«Â,6Ÿâ±É=%jä”¸’wª.º¹ªÖ5dSm”¤ÈVÃ3òªÀ-´Û¯éÖ°OS~‹roÌö£|Ú1ÇNì’ÌñQdœÉXÉV’Y´ÏuÄ«	BU¤¢«	BU¥@TUYhàÆö3ÚpÛşWAîù¢œèá‰¹>iÛğÄá™ì»<\núfšÆÆFÁf±­cG´X\0¹?6\Z/KnŒüoè´ã\'Ü®+)\"(¢\" \"\"\" \"\"…¦´“) ¦OV(ß!ë°¸¬›õ5rntş`Ñí=)œ&ÛŒôí}òÊ=[\\ù¤–y\rß$•Şó‰qîÍaÖ(ØÓ\Z	:Å]j‰SX‚fµ5Š±5ˆ&kU5ª&µ5Š‰zÕ*ÚY‰Ä‘7¸¶‹+m.s\07µÉZ°õ>OiÍÀ\"-p³„…×#0]´uA†©î‹\\q4]îów<]¤2Ö³\Zv}¡·t†Ñ49À7¤ÖÅŒb2\\‚Öì.³EÈ åÙWh÷æd„COFF°X\\XŞãfØ[&\r¹“ŠIìòKÄôƒ®Ûß\"m X÷¤Ëu1Í§¢3	ÈXn~eH7ä8o*´ĞÒ;”:Ê‚ó–Á±c¶ûj‘¨YSQˆğ†áıTw9T…n¬¬¶å´­%Rë&­{“lÕG?‚ÆJ\n¸ª\" -ÿ\0#)1Ì^FMÔüñZïù@íSCGNWµ­ësÈ\rı½Xî’îÙĞà¥tÄt¦‘ÎøXpë‡¸{Ë×(ô†(¡o«lŒv4\0<”„•@DDD@DDDABmšùC—šÓ«êª»õqâ¢Ëvæï‰wxyAèz6`Ói*?åc¶ÑŒn,ÀìøÙ|Â\n¸“Çtºñ*bV].‚ìJ—TD]Tb¹£z,F×İ_7•H›su2(n´ß&¸8i´°6;©°SñRb¦¶ìø)\"îÈ4“Ø¹§?«¾ôŒQË^íU\\—èk)NÛd½$Z\r±O9†2xd…eLQGœ¯>Ã6¢áäß—®ŸõåM¹ÿ\0Oo_/ïü<ói‰6\0“Àf’Óay¨f~Y-ŒÕ®B&µ­àßÏ}ÔWh:‡çÇ¸®Œq{y9òZ•ï?éª– }£9Ä­ë9316ÀG‡ÕM¿Gñ87åµoä—<ñ8cæ‡”EèæĞ°²åÓ7¸_Ì¨/§§$¿h²ËÂŸ>‹M-Ûij‘d©ÃˆáÙ±cXKtNÙ)áÆæ°}§õ>ºóe¢ñÕC—FVƒ¶îişZä<’¥Ç6#±‚ş;ü—ÑœÕĞa§– ŒæîGqøÌÖHìy½²\"(¢\" \"\"\" \"\"\"Õr§M6Š’¦±û\"‰ÎÚ~Æ7½Å£½çÓ”“¤=¦ñÒ³WÕ­}!îøJçMmÈyVyÜ÷>GœO{œ÷8ísœnâ{I*Öb7:j ,%§hXVÔJ&hÖİdn*M9fİ‡aÜ·g­wºöJîc«\n\"¾8‹¶¢#j±Â=ã¸¬ÌÑ‘¸÷Ÿ$µø´õjÚÛ¬ÍŠù-Ÿì™ĞÛô©ôš	Ù\r¸‘`|Uğí=¡ÛÂãŒ–è×RÒ`ôz?C1£ÏÀ=1<÷loyîR)`›]m×m²ï+f4•cké\\¶÷7énïKÈã3ÖŸ\r7iúvûÏGĞW—>»6#jz|ı¹.÷vØd<ZÁ©õÜ^ıö°c:†XoÖ¸-tÜ¦–øa8\rğ3 }ãö»îµoªpv±Ï7ë7ñ¾ÕÃ^óÍ®¾½ÿ\0Ï£Êâ\"Ù&bgáôş=Ù++¤}ÚÁ…§iÌÖIÍİä­SàhÍÄ¸øª­f“\'÷ØµsU“½zØøH§“–úí‰©\rØCzšš¾0öf×¸w­ç;–Hx­ñ3^Ğå¼Vß,=5O*æµµ‡ºÃÉhêt´9¸÷’ Zç%½ZãcÉ{åqÚUˆ‹zĞÆ\\æ°mq\rñQ^Ï’„Dt\0\ræû\0í\0‰};¢(DC\0ıÜmeø3=æç½qm´P’²–èÂİqm±oƒŒ?5ÜU”Qq_ø‡åTÚ5‡iô™mÀ]±4öœGá³Ë k\\÷5 ¸“°\0.I_!ò»N\ZêÊªÃ{I!ÀèÛÑŒ}Ğ;îƒPŠ—U@Ù…³¥Òf@ãÇ´-e•ÁŠÄÌu…‰Ó|ÚÒÍ½&ıB›K\r;3/¿PyºiŞÏT÷n[Ht›O®Îñcæ·W6¾XeábÉß§İ¾<¤dBÑ0_‡æ¬ı·[.Ç9­ã|-ñÈ-|zF-Ù|EWé;÷ |.\'æ°¶ky2Åÿ\0ŸÃDîyfÅµ/hÇ,ï?­Ø.Vº¯J=÷k‡Ìö•ŒËNzN‘ï=‡óU:^6Ó‹½ÙŸ¢ÕmßõNŞ­m‹rÓQ‹éé^EÜ<M‡iººgÆÏY×ìÈ-]^“‘ûOr‚ë•„c¤uåß¿ñı±¿;ulçÒàdÁ—‡õZÉ´ƒáóXœ75txÙ;o^İ98‰²¦¤ïS\\7Íc,V²Œù#ÍÏ6™JkØoığTt*5ÖVU8mÏ·êºqñ8íÓ$kØè©…U´Ë3+½¤vX¬Â²>¿Ù	n¼ğ±XõFôu\ZQbG”é4ƒ~Ë|¢×“½rq³‚\"+Šwê“ä-¿%é±Íˆì`¹</—–/¨^³“4øa.±&Ga\0m#}¾»Ä.a.áÌş´3Õ‘œ¯\roºËœ»Ü[ğĞV»“Ú;Ñé©àÊì¡ÖØ^syïqq[•@DDD@DDDAÎùñå£hç@Ói*¨D{e?w£ñ¯›ºçŸ”>—¤¥cMã¦ŒËl.ò»ït~\0¼\"‘²ë+bUl XF@‹£bÊÙÙ×àUˆ•â{j#ö¼ÖVÍ¶ßt\'è*Z{TI>ÆÖÅæc{Ş~ FL`qµó¸Q´„LÖ8FÖµ£z.sÚ\\\0ps`ºänµ–x+\Z\0hÕ;nĞs7Ûuk@ÈäsÙ¹]#qÈı\rO z‚0DDìÏyÌd¼Ì±NÂ,1v_%·ÖFs00íŞááJ1‹3•³ğYk£)´kMÿ\0&y+”²ÖT—aá¸NÜ9b\'y¸Ù±xñ[Éäš¶CqbÕ—Ş;ñÃ°µ°‹‹Ş×¶Ûo²ÓâÖ›N÷=>Ê÷¬ÄDF´ØhŞL‡ÓIU#Ë@kË\06ÍÆÄX“`.Õ­ıLÇT!lÏ,$FZ\0ßpsìP¢§Ø¸7\"nonÌ–U­ºó.KRb\"‘î“£9*ù©æª266°†o\"ÙÅ¶+Ï—®’ºcL)5Ñjš]¸q½¯lÆ\\<V‰\\¾òliR‘n¼Îzsny¥7“ü†­­aš±FYŠì!†à8!særZ\nº\'Fù\"x³Ø÷Æáplæ’×Œˆ#%Óù9Ë\ZŠ(#§’D­lšÒ)N7<¹#. 2\\åÌ\'2I\'2Nd“´µ–›\Zã°Æ¶ctjhA,VÙLtk£A]µQAXØ\\CFÒCGi6]w›Í%­¤†×l Lî Û~ñø×5äİ69šNÆãÛ°~g¹wÎe4øu5®Èı[:š,ãn«ÇÀ¬#¦¢\"Š\"\"\" \"\"\" -.´ğ¡¡ª«Ëc-Œò»£ëéOP+~¸oüEé——ÒP6ø\rSøèãØ^~!Ás‰$’I$’Nd“™%Q.ˆ2ÏPçáÄo…¡ƒ©£ ÓÕ9í¦Öcp‹p¹<NA`D$©¼mˆ4;vXœlFÛ\\ö\\ìtD±•WD#a>%dmKÇÛwŞ+ Ú>G¶Íé\r$¼³WŒ:A`ˆ¶Ù7;^÷¸9oYô£¤€S~7I&{p4ñ“…—Ïµí«H¨®äO\Z^_á?Ñ^4Ã÷µ¾~k\\‰Í#gûdûÄıF—Ùà¢Õ¢¼Ò6Ÿ´Ùì»ä«ûB?âğş«T¨œÒiµ5±ñ>PÎÃö‡Ífv›12’&†b¹/2½Øzn.Äa •œUÔ:j9ï}R^,\ri8C]rqØ73ê‡¬©6vDS#}¡â¬y&áI‚ª’Ñ‡Âã…–u€é»!{âíã®ú™%Ä’|‚mTDUkI \r¤€;NÅ¤äü`{÷ÈìİØ~XÊúƒ’\Z3Ñ¨é µ‹cpş7ôŞ>óˆî\\7ÚMYEMk±„HşhÄoÚGÆÑJÊ@ˆŠ(ˆˆˆ€ˆˆˆ€¼Ç,¹O¤p:BæK-dŒ9á&ø^69·ï6\"åztAÇjù™~x*˜x]­Ãä´õ<ÌÕUğ;´‘çæ»Ò+±ó•O4ÕíÙî¹ŸîjÕTsuZÍ´Rü7wá._PÙP´ ù*£’s³Ö‚¡½¬xüL_.‰¶Wpí\r?©}ˆb´Q»Öh= 4w;ıü®±;F¼}¦w’<À_\\Tr^ş½4.í‰ŸE®¨æûG;ü«º\\ÏÂB•}MÀÇ3ê­u£÷nîù/¦gæ£G;c$od®?ëYQÌÕ)Í²ÌßıgÉ¡Î®…Ãk\\;ZBÇußgæhúud{ÌwäğµõĞÕV¢\'{ØÛæ× âJ«¬TsO^?wûÂÔÆ­UO6µíÛC~¶–~‰?$ñ°©äUK=j)Çceÿ\0i[6€Ãë2V{Ö‰¡44(¶‡E7sİ÷Zï\'+¢¹Ş,pòºhk‘L:5ŞÓ<\\<ÚŸ³äàcÙõPFE!Ô2İ»¸_ÉbtXáÚÒX¶<Ÿ§Ç3x7¦{¶|Íû–¶ëÔòRŸ\\÷d^æÄ7`u»Iù$ÏÌöŠÕ5dgfÂY³İÙÑø•Ó—œä\\L‚œæë\\8œVî7á[áPŞ*ÈÊŠÑ â«ˆ(*ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆ)dÂ5c‚µÔí;B\"u\Zş¼1»Ş‡Ì-dü…ÑÎÌÑÁ~\"6´ø¶Êˆƒ_QÍwîK}Ùe,VZÚhhêºfüLwâiDMuG31}Š‡z6Ã…Aÿ\0ñùšz5,pàD±üÚòˆ®Äzk«3\rlg#b\'q±ÜpÉ~+\'ù«­dÚÊŒ8‡9ã{]Ànß—DØê0èÙwÙK‰ãz\"‚C)Ü²¶2ˆƒ#ZUàDUT@DDÿÙ',500,0.3,'1 year warranty is applicable',7,'approved',0,0,''),(15,2,'Surakha E Commerce Pvt Ltd','ELECTRONICS','Mobile','Naughty Ninos Printed Boy\'s Polo Neck T-Shirt','Pantaloons',1700,5,105,100,100,1000,89,'ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	( \Z&!1!%)+..0383.7(-.+\n\n\n\r5 --.7--7+77-++0-++-+0/50--7-7+--+-/-----/.---0,-10-ÿÀ\0\0·\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0K\0\n\0\0\0\0\01!AQq\"2ar±3RT‘’¡B²ÁÑÓ#Sb‚“¢¤ÃÒDUcdsƒ”³ÂáÿÄ\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0\'\0\0\0\0\0\0\0\0\0!12ağAQqBÁÑÿÚ\0\0\0?\0÷\0\0\0\0\0\0\0\0\0ä¤–ìÂ¬ñâö!H	]nåúŒIz—¸ûe¤^¯¤ıÜ¾Ÿ{k\'’0Eºî&>0\"ê—¯íÖÒ—ÚÌÏ±â«5ùÙñFqº—lW»‘’Š0©\'…Ä_«Ä˜Ö³:7:ZMù»xğà\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*Õ~w¹M•^UÚğüÊ¼üçèSIao‡É/[üO%âı.q+¹º<:‡Wœã«¦î®ZïK\r/»Ú½\'Ûøš!å_ ñ[ˆZÂKxºğ×÷SÏàx¿òS^ËUõ½zÔå†•íó¡¿ùYmxhG[aÑ¥ÄW*|*ƒï…\n—’ÇŒ´,¿¹éK‚Ã+å®m\'B´×ŞPÇâkktÅÂW¢îgìĞÇéÊ&5ú+uc¦¿ÊíT,hÑ‹^r)®„¬;n¯_„¨E}[ìúkáİ–×¯×¢Šÿ\0Áô×aõ[Ï»G÷…š}ğµ½KÉzİh/…4gùá_ñ_×¯òTM\\=ïmx½zh¿ñM…·K|&xÕR¼ì¼¤óÿ\0OQN§C\\1íRñxU¦ş4È£Ğ½ŠiÂîö2O1zè¶šÙ¯âĞ’¸4ŸáÅ÷U¥Z—éÁ#scå•Ç*¶Õ_Ñ…hJ_u<œ^ï:¾/7ù—V4®]Î\\™Îñ¾xŒÔ—UÂªæ-)¨Ô¶¬›[¥)öîQëí•®6gçú|?Ê.çBp§ÊrWvø]®œ\\¢—­¤u>Kô½\Z®4¯¡IòW³Ôçùñm¸x¬¯RÜƒÛé<Å?Rø•ø}U:Tä¶q‹O½`°P\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0äóèù_ßÜİñÎT•z‘¡má®œ^#)ÍsQÆÑ,çBá|6…´;z4éSú  Ÿ­ãwëdÕ¾r^àK$&HàJ!dÓ5¼^ú6ôjVœã¼JiÊ:ß(¦£ÍæM,.d·McÊÉ;Õ–|g[Ê»ÚS¸¥(ÓœãxĞÕEĞj½y¨ÅN\nrxÆ©syä¶Éjóˆq\nU\'BWpµUp£\nT§_JÄ7””Tšó–q³9ıiø{/Ëù&·”ëëúëéŞwÓ±f\r¾X‹ÊmÊyäáÏ–3áØpô|§¹«ÕÒ¡RR©7ZU&ì—[MRÑ¯©ë4·©¶ä¥³\\¹3®àwjP£:ğTëN+¬‹ä£>knÌãoZF°ä™^?ğ™ñc¼¯¾¿Ÿ×½¶Q¨õ(òy´ÓÏ,¥ú÷íæ*¾GËU;ŠjN-ÅaI®ßÇâeYr:W—ÊÒ8ï,|‰²¿R”éªw›sJ*55vk[T^§Ï¹£²‘JïgàECÑ½­z<:ŞÇÎRëio”éF´ãM¯S‚=X:b+X¥%²ŒRû	B€\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\05õşqø/$n>uø\"h,7>×“K<ñŸ;JÌ´ú—Ø|€«.q¬eIç–^1ÉgÇğ2ì„›O9Æ§§RÄœ;2¾ßÀ‚úÎxJ•hFtåP’Êxy_ŠDÖõ\\µ¦õi–•/¤°Ÿ<rÊÎ²]‚Ã¬Õ•ç×üRÒÚ½(S²¡òg\ZµIQ”IÛR•HNŒÚÓ%™4¤µg-ö¦å½ã–³†»»\nR«+zw5¢œ*bzhÃT’n¦düÜrævó£ŒÆ/1O¹|¿‹‡-¼ÕËÀë¾IàO?Šåõ/½ï‹p÷MF\\:ÜU¦±I(BE	Ê)l§Qé_JKŞv¶±ŒiÅujPŠT°±¨¯3—-°Œ¾O¡\r±è­³œ}¼Ì¤µ\'áµ”ÚkÁóİgrğt·>K5–[ôõû¤›©êêã¥,¸ÅùÊ?f=ÆRš”T–Ï\rV¸­(¸*8“Z\\³æãµ£=\nœ[ôW7ñ~¥’XÆ9uôa\"•æÏÀ»\"•æÌË£{CÑ²¾dt=û+àH\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0²çç_‚&ÏÎ¿O\0%%ZQ’Ä’k¹¬¢8 UXM-1QQŒ“pÇ†y®ÇåG„ßvøæñ•–½Ù$´bò“Î\ZYm¨§Ùö÷)\'³Oá§°¬ÍëU*ÅÍ*rr™:sœcô^^ÏsìÚ[©5‡èoÍ½ä³másoö‘N]:’ÙĞó«;gÜTíÓOJÕ¾¯s2§©9I¼-1Î,í»äŒiTRJKffŸ©¾|Ô},aíïÇâEé­­Ä¯uÏÆ¥¦\\³ËİÏ›ï3´Õ‡•$µ=\n^’†şü‹‡eóEF°R½Ù—dQ¼Ù’«}CÑ²¾„t=û+àH\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ªççŸ„K+Üüóğ‰b\0Kr“…Xå5ŞšûQY)jÕ\'éĞ”Síi¶óá±nEvÍ°«\rIÅìÓ_j Õ}::µ«ë–<pXgÆYS,w÷ÒzZ\"£İ¿rOOs*{‘dÔÒÌH®6%‰\rÆÁUdQ¼Ù—¤Q¼Ùo¨z1öWÀ‡£e|	\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\057_<ı˜–`UºùçìÄµL	bNWE€>H“È…bÌY“1a™Cs}†àZ‰\rÆÄ©ÜlVE+½™vE½™ĞPôcì¯™…F>Êø”\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0iîßñïÙë-S9o)|¯°³¸š¹¸Œ$”V„¥:—ĞŠo÷|\r^™ø\\yFäıq£¯íÔOğ ô´X<ôÛm&£JÂæR“QŠœéSÌ›Âç—ƒtü»¾|× —ûÎ\'¿~)cñ)· H…kÄºN¼¡	T—\r·qŠÌ´q57eSË9¹ôç_³‡Ñ^7ú mí¬Åúq»ú•·ß¨Çå¾óêvßz§í öö}†ç‡>›ï>¥m÷êÙtÕu9¨;;håãW[SÇâ“\"¸Øá-<º­8©%hßÑj¿®%/Òekuªv4êAs“£{™Åw¸J’åï)·#_{<&ÎÛ¦‹aU¶º§Ô©ÔŠñÄ“û´§åç¹MBòšo–šªT^_¶–}Ä•CÑ²¾e~Z5)Sœ^c(FI­šh°P\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0á¼O¢ùŞ_]Ö­z£	ÜÕœT!ÖT”%,¤ÜšQk8Ùú&Îß¡Nù×WÙ•(¯ülïjÅ+š¸XË‹÷¸G&Ê› à¨ô9Âêê^ÕÃ_¢‘ytOÁß¥mZ^ÕÕoÕ4v¨°™GK¢Ş\r¸t|eZ³Cìº5àÏıB>êõ×Â¡ÚH…‘\\äÓƒ}A__÷†/£.şÏşñqûÃ.¼¡©JJŞ›©\nqPíÍJê7(·³xm½ÒÆ)p:º!]Ğ­ªÊ­Jê¼]ëµæâú¬æ2K-îùlyù>\'.«èğ|¿Ç„Ï<æ2ö÷¹ıŞ³¦«µ—F\\êŞn?xGù-à¿Q÷W¼$òÕ¬åB¾¹y²«i^¢Juí”’óñÉÉj‡>Üóæ›}„Yß¦SqãçàË‡’á—xâ%ê2^5ÿ\0xE[¢ö¡^>\\™è\Zˆ«3N/3»è{†KĞİ7üÚ±’şÜÎñN‡Ô3+{ÖÚÚ5éïı8m÷Yìóf·ˆlü%èï‡NÛ‡[P©5)Â3ÔâÛŠÍIÉE7I4½ÇFVá‘J$¿“‡è¢É@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\07ÅŸWpå/F¤bâû3†¿ıåÊUÖ76Wv°«\"¥ğûz{§ëF³ı¢¶eêU?j \\.ó/”®ò¿ú=OùZÿ\0}~ÃWÆ¸oSÕõu*=M¦§$ñ…Ù„€Ş;¥Ş`îcŞh([Ëw)<ö7”¼\r­$â›Î|@æxç’Qº¸©pï\'ÔêóGFªjTã§Êk>y’ÿ\0×Î„¥«:µ|–ÕœçÒ6—PŒ=)F+*)É¤›{,¾Ò+•EÊrŒ`·”ÚŒW‹|‘Ï.<2óc+w“;$¹]F§€y)KˆWW“š§JTaEÃQ–vnM¤³²äuŸ*y®·¶Õ¾İ˜}…>!k$ñ5Ë¼ÜÔ\"eYİåwûo>V»Ì]Òï9kzJps™N“Ï<6“~\'T¼š¥ÛV³ş”Ê%Û,%p»Íuílù±ç)y±K›m›uäåÙU~5?anË…Q¢óyßJMÊ^æö÷X¶§¢ÑŒcŸ‚P\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0³ÒÊ„»#.~¬¬3ä–y=»P\ZJqE¨UI`«Æ<œëÜ];»›}9Ê·t±<÷ª°–1êÆçå­cJ‡â©RRP‹ù*št§Z«o©åŠtç÷„IÇø½ô:ú´Æq¨´MÁê‹Îë°Ï‹pº74¥Bª}\\±2q’ÇsGX]ñëšÔmmï*|¢Vß)¬ªº1¦“Ä“Œ£Má8N–ı²k°İÇÉO+÷´WX~ª$[mš½kN£GÑŠQŠm·¥,.o›ñfo\'’Bÿ\0ˆPœÕ×­ÕÒK¬­PVë•\n’MÅM¥q¦Í]ï+™¼áWTªU§o_ŞSº«UÓ…\nt)J2çËtd£İç=ÓìÀGoB†jÓÆúã/t^YÔí,áIb+r|å,w²Á@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0âzN¡9Ó·Ò³Š•“æ—*–µhËû5&üRğAœüµÛ‚KÉ%›aÑu	*u¥RÔªB”%…­R…½cVøjxïÏ»¸\0aå‰Ï$äºšxô.ªÖ©EÅ?ãêRótÇU7|®$÷ô•X,virXç“×¬ü‘´¥8ÔŠ¨IN9›Æ¤ò²»@:òIÓ£“~\00\0\0\0\0\0\0\0\0\0\0\0\0\0\0?ÿÙ','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	\Z(!\Z%!1!%)+...383,7(-.+\n\n\n\r\r-+-+-+-----+-7++++7++-----0-0-------+++-+++++-+-7--ÿÀ\0\0Â\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0E\0	\0\0\0\0\0!1AQaq\"‘¡ğ2±Á#BRr²Ñá$3‚’CSbc¢Âñ4s£ÒÿÄ\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0!1AÁaÿÚ\0\0\0?\0ÜP„ „ „ „ „ „ „ òğ4(š€@\0í“\n¥=&ê¦•\"1ıgk‡€ãî÷g¶ûŞĞ\\×cs„ö±á¨ á\'<Ç©A¯Q´™Ï>P›¾ş¦Ú’I³32Íf\ré•©®Å›Œ›Z\Z$‚`O\0oL-\0GPâH.uÓ#¹½óàæ‡4;Äy$.ÛĞÔ«R‘Ã\rÏy\"täBÊGMím`ciÄœ‰Ì’stïM,$¶\Zy&˜0Ii‚â\0`éäªwÑœ8ËI/nÇÇi¼şĞóæ´\nšö‡4‚„ QBBBBBBBBBBBBCôõ4)K}§Hp3ÏO\'j´²›Kê=¬hÕÎ ŞVoÓkôVp=†Œ¶LêcÁvÛj’L¦ô]!GÚmŸİ[Ş\\ÃM=×]RâÄÚØaª`ÒQè€öjëMù<¼Ë¦‘<BÈ©Ô‚¬\Z¾¾oQµu\r2FöıaÎ%ä…ÿ\0TPs°Óp¨p5ù°¸HòÏÑ„í]*¥N1ˆ’\03”œÀÑ\n.ËP~Ağx©&< ‚8 éBBBBBM/KÊ•›ªÖxc\Z	$ğØÓÃŠDÆe ûcóÈ~‹1§Ó“jy¨N\nÑMƒS‡<N?XÎ5:Î˜ÑÂN\00®øB[xnc»ğŠäÛ±ƒúÿ\0*£gé£8ºº Fn|ÎàÑïMktâ‡¬IÃ†˜í\05í;.[]¾sTé„wñÇTíMYÕ£§.n÷¼9Àé…­‘™Ï	Œ£Í1³t¾¥f¼·¬\"Hkœâ;M$I\"Nä\Z‹ºÍµúGÁ!R£vÕÿ\0Ø}À¬®ÕÒ\ZĞæŠ$\0X`Ä^s×EÍªú¨æ4Ta€\\¿hN§É§¦³9 d÷È3.$A“¯êyÛ$êš×¼ÆFZmĞ2¥®ºÁ²£l€*ÀÎÚ\r1PSv¡Èbİ„.îZĞïçczè[½AV¦àH2ÔDoZµÚ§g6ÆïP—½ 9Ğ¢ŸipÚ™T®ìÌ\'té<ÓAİSŸœåªbûQ9.:ÅÎËl©F®&<´ƒ‘Á_îîŸË:»U•›H€èÙ ‚ßÕÑJs\Z…ëÓ6ó‡7¸åç¡æ Ñèß7Ysjµµé¸h	q`:Nü.~Îå+céí*FYQÏ?d4ÃÀE“6Ò‰ğğ9ãÜ•¹í!µ˜÷šæäÁ˜³¹T}[L’\"	¸.”E¯ßœ±ÁÀ²&4 èGSˆ!!!!˜|§œUmï¢§ãí:S<Då±h÷…¤S¦ú‡ê´ıƒÅawõòqŸ¬âI3Å±\0@ À£m4YŠ	s¤‡	p$»#QËD…KÀ¾ÚÃ1ÈçÉ8³V\r8ƒ`ó”Z-”È4ê1‡´¶{{——eA«O1ì—ö‰Ëf\'g%jÛ½©™¸ÂBºĞÌúñ€76µ˜KˆÑí°T>eéK6¾<ÓntÙš¥ß7£ªU.È€ÀÚbOS‹–Ğq‰)Ç¿Ş™Û<iÉD^U–ìC\n•³^µÒ™IJU´õz7¸è8q+\n¸XJë}_Ôm\r¡U•™F¥!:Œ{š]¦ák‚2Ábã¤5N¤ÃÈGæºÿ\0¨Y¶”rÃú-n\Zm÷/I,tÚÀúåØÍAhëLN.Ğà\0³³œŒ¸…İŸ¥VF²7Zì4-,q-9œLş®RĞì¼Voºgc‡®&ûÚ÷y©àm7IìM³?ª¨Ü.¡HP£ú5Ø\\1a\"í4—mÀu”—N:]d­e¶R§]¯sú­¡®°–Ã²»–(ûÍ›1y¤y\rÎP;yÍ(×¨ÏÏÕóN¨U•à¼…à¶oh+Ç&µB†½#«HïN¬VÊl2Æç½Cµ+M¯òsÒ6Ñªê•†™i0Lmz…«\\İ!³Z±|Ş«jaö€F›â<WÏµ¼ì.i©‚4â¶ë­ÖšÖÖ×}öv\nE®/}2\\s °’uÔîD[P„ „ „ „ ¬|¡ÚK,¹}g€y\0ãğ	´8¹Ä¦VİòœÒl­zÀFïeÚ¬IÄb ä}ÜĞi®/*¤CFR$ù‚‘²ĞÖ‹ ¼µÃ\"Ñ‰\ZÁÜs0xèP\'^ÿ\0³:Èêo£ÕÔ§MÆ•AÖË{YqF†s^êÌDGfO„”ƒú8\\ğçÀ‚)Œä´è8@ïMúSo©š`öŞ\">È:’¨¢¼©¥İ ™Sn¤ìĞo\'O‰îOîú®‘:)t–á\09³ºDø(Ò¦e>Ö@ÿ\0Z(KÂĞ$€d\r¹lğÓ¹nÖJ]”äÉÙŸÀyÉşTñÖpWE1°ºO-ƒÜOó%¨SÂ™$úõÉ$S*¶A¹5}‰?µZÚŞ\'rŒ¯lqÓ$º	T±„ƒ¬á.À×jV,Ì@Âç¼å\0x®êİÌÀ^ÛK@İFí1ddáƒœƒ‘¬©ŸPºBmˆï]\nÅ@í´‚UŒLÙ],Ú¼Q-Ì.@½Á­ÍÎpcZ5sŒ\08f@ï^Ù2–:ıUfÔM:”ê¤áppÍ¨§6~=ÄVÎœXÁÖ\Z˜ê5­qc]I®h 9¹¸.¯o»ŒÙ‹.v,]¬”Éná¿5kX7«EŞ÷Ö§N¾ºç\n.©Ö×u\'ÀitÓé†öX\Z×–ªÅòèêØÒÎ«\0«L2›i¤\\æ‰%ı†‚I:WHqÑóÛn{G\0¾±¾i°ïkOˆåû—\"ÓñY¨©¥Oğä!!!!*_)÷v}ÿ\0Xå¶ƒ\\sÜv-‹å+şÙ¿àV=h9«4F“Èææœ~ÒxÒ£|ÿ\0qM*7—ŠeZ’Ò[/:Ä¥Dª­µ¢Iq.òñÖSëHëÖå	i|•š¥ì½£²ƒb•e:N[”]Ùª°1¾¶{â?Ud]è“\0¸˜\0NÌ»¥AÓis£kˆä«\r½ÑIÚæ\0Û·#ä|ÔEÑNj´î“à2ó!*m;\0d4C!ä™ÚmÈfÍO||Rõ‰qÛ©Ôî\ZJ’±Y 5 qã‹9Êwd­¢Ït=Â]Ùç™Òtï	ı+–œè]Ò~Ôh i*ZÍe©TI’‡=Äµ €2ŞvlQ—­\nì~U®²\0ÎD“±d*Û¨ìÚİ©ıû9¹M667dÎQÉ:µÑkØ¦M<,Ä;m%Ğq`™ï€•«g³—4õu²\Z€@Ê`“ˆáß©PAV¹éi–ÉoÕ;²ÕF×¸6ÓwsµÙ·¿r˜¿`4Ï=¦Œšt\0’áü¡sF•§«C–nÆ£A¤¨*–«ØaÀƒŸ|ïH±Êà+±ãÆ»Ò1hy•|] ËÆDjc\'“\ZmÍ}ßR8äŸZhò>#Ü|TKiÛà¦mƒ²ŞÓİ\"|¥½Šô©I…”ÚÆZ\\ü3QÁ§ZI%¸Aƒ\Z	%6­UÏv\'™9\rÙ\0\02\0\r&HØWMDJ]c0¾è‘›ºg¹|ãuĞ_Ft;şÆÍÿ\0‰ä(BBBBTşRGî£ïÿ\0´¬iÇ5´|¢İGß…Ëª!ÅXÀ£-à†‡OĞø)v	·¦Ö›0ã¾6OÃó+¢+W“#/8øy•YZo*Së¯Yµ¶\nçV»İXhºG?[§z­ØÎjzÊrX;½Ÿô\\È÷·’grŞíÀú\'Ñú1÷ÿ\0Úäty¹8ì‘ƒ N¼&U¾Ä¥šƒXç–€\'¶kxqJXí®pQi\rÏƒˆÚç»F,ã<”k\Zë]F†‚Y1M»j;kÏŸ!»5­YnëİC­´‘C3&£ Ä¤\"8ÍlVl·AO´çõdÏd–R$ÿ\0ˆæéƒ ŒµRŸ±,´YÑ]”[9FËKšàK$ÆZBˆé?L-6‰¦lÔ§ØûC³Ûf‘á›‚§õ@P¾ÛÉ}Oê3ğTYï[Öïiõ5\rZC[…®tÃ»PpŒËw@Qİ ¾,nÂ,ìêã7=.8D<ƒc½E¹îûnóÎ\'ì¨|Ï¸„J·U–¼‹®›Œˆkß‡ƒˆa\röY;x*ÚÛE•Áµa9€H-;ô%¹nÈ„ÂÓe.ÍÍ;ÇµçŸšN•ª­7²¤šİQ­¨\\Kp™hÌÌœŠÈ‘¥okå¯Í&H3„“”¬v™\Z¥\\Ş¬fK©œ±i“=—ïrw¹1e*u©š”ŞÖ>›\\ú¢¡ps³kCaÎ9I%ç Ÿn»ÎWR0»²	Ó?ªî×¦Wå”´ˆö$–Å<‚å¶ÆÃCÉ\0 ’J™¶Øˆ¢}’1R\'\\¾©;Û—qUš.sj0C|3„7o³œAÇ²gºôNÍ£Ô¤^\\N\"IpÎNdÆ£Á8 c1¦Ÿ?÷G´Ñ½lXìÃüš„/œî¯i}%p6,´ù4ÿ\0\0D?B€B€B€B‚³ò†?tşqø\\±KN«néğıÑßy¿‰ZuViãŞtŸZ!š.j\rŞ½dº2¼s\n§m«e»OZÇÁUo\rV2j8²•;d9z÷(2›²iëòHR·±š\\ˆßÄj¸¤ÃÔ2˜Ë—¸u> 4x®PÕ8\ZÒG\0çØ\Z~*jà±‡W\0û,Á‘½ÇÉ=Ñf¹lôìVs^¨úG\0@—\0ì™IƒíÇ’¯Ûï:•*½ÓPHÄ¶€ÛJ‰ßöªÉ ûéEè_V\ZObXÎ#éjs\0†7‹œ ê<4a\Z^­ø»\\\\CZ5Èo?’º\\ı¢Ú}e¡ØœFM\Z9í*‹u[0Ôã†ß’ÕÒ…ÀÅœµÇúéÒyYâ!zQ€>\0 ¡N/F#%5¦s\\æ÷¦íX,v|TÁ9>I*”šâZrsLHÔwí\nBæ`Â°lø¦6úeµjU=N\\r\0Ü¾wÚŞç}W.ÛËçê\"İb3¹ûÑãn[øzÃ¦Aš¥ öùƒ´…@[©ÁÇŒ9kï‘Ãb,W=~¾ÎêN?MFL^4™œíUëm1×’4,ÌINnkP¥^Cì‡|Xâ¼2=É×Hl]]gGÕ.`1bhÎQL)úøy®é·?à\0åãr]1+vëÜWÓ7[b!º›ƒBùší¯§è¶\Zà’„ „ „ ¼%rJ>œÜêsoâaÖ¡™[—LLØëroâjÃm^×z±2¹«ëşW´Ï¯AyS—— ¶#í‡óóË^áŞª×ˆÍZ-šzº{»Õfñ¬ä°ŞÌ¦hÉâø(k>Å5e9)«‚¬1Ãi\"wÀhü^jzçpcj?Ÿ”•]³`ûøëêÅ\'ıÇîZˆ†/%äŸª?Õí8ÿ\0[å5´ÔÉ(×gSï;ŞÔŞÕ¢ÍWßx|Æ¬(óVŸœ¥ÛT«]q¾4Uù¯i³=R2»cOeÕ4²\\w“)ö]åİ¢›­5G{\rh€\rá:’¤uXÈ†âç˜ğ<]ÜUŞÉ`©šµ]ì·ÈƒF\\`\0\0œ€“>Î·uŸ[¥O/Xık±â®Ô§…å»¼²(«ÆÇÁÃ>c/qòR€—>N¦Iá9Çœ&—ØŒïş¸WXOûÀø)[Ò¾71çkOŞ4Ø	ò>)±oÒ0ø/:mÌÆ½Î€˜\"WlS\rè}³û¡©¶Ñ†ÕÉàN`‰‘‰İ‹£ôT6ÕikišL¨\r2$â³0s˜ƒ”Àº=H¾«â{Dspéy_>üšÓ.·PËG­%olzåt\nI¥vv„!\0„!&â»rMÊ¢#¥lµ‡ø	ğÏà°Ûf«{¼iâ¦ö}¦¹¾ …‚[ÚCÈ9H#ˆTpÅëıd?4›‡»/^½ËA¥°ä«WˆVK[²õåà ml™Y«ôv)›.‰­é®@\"“ˆOé]vîà¤¡fúóO,ÏFñ	€»í\"~ÿ\0ÒS›\nÀÃ¨Ôh#\\&òæ®ÄilT{wçãú†¤Ù^Ì‚Úƒ“¹zø$HœÂ‚.µ9øp;4Ô¸ŒP¦*QÚwPQ>Dr?¦”ÉµûÓÊæ·<#Ésû?qñiüM–£u®g‹İå	ªmb¹ïƒÙcbI9à¤íW‹«4¤Ó‘>ÕW\r2ØÑ¬z+=6jÏ\Zõ-Iªq;&6Üî<æ?o’åò;±S&\\véã™ñL/c‰á£`üY~*f½@Æ“°nò@Uw´÷jf8¸äG&Œ»Êµ“FfùâO€ı&×!áí$¸‘¨-2Ò8ˆ	Ís…†$—d>\'ÜšQ²Uw³Mç“]ù.m:ğªá«QÃ,‹ÜFBDì\0å.\nBïè­ª¡ş½Çà3WŞ‹tSp}NÛÆ’!­ä6%¯É•Àh´Ö¨\"£Äö®|NKG¢£®û&¥©1£­Æ5(¨„(!9pI8%Êà…PÎ³2Y_Nú)PÔ5è´ºs{F³´ó¹kjoV€:…GÍøğœ.–‘¨#>ùºufìpõŞ·‹G(Uş%6;˜Ş¡küØİı‰âƒ¶WÊ”§G.§Zkµ‘-™~ì#=;ÖÆ>Mlsü?õ;óSWwG(ĞJ›Z8\ryïPBY.v€;#Á<kw=óeÉ¢‚\r×{w$*X¸)çÒMªÓTdİ-èù¤âæ´šO1<.?W¿b¦Z,ï óN£HàAm‚6-ò×@8¸H:…A¿ì;dÀ.êí-0Hma™h\r\0i¸ÉTf\0t]u ¯-–Iå¬{*µ‡vè/0¼m Dp#â?%­±ñ4µ;ø¼¿Uå;PÜ<GÅ-óĞ6ŞßÍPîÏdhÎ$ñÏËHOX4gúònÏ\0¢Å­ÇÙİ\'”˜×Uks{¤îIæíÜ¡ijœR\\a­Ûö7{“Z÷}WÔcC ;&\0A€\0\'²aÍ0`æ¦(ÑhsZæ¶µXìQ¦àæ3q~E±É;[\0í·\\—Qgn¡ÇUÙ½Ú	9Ğ\0\0Lœ†d’³j›]kvåOÙn†ıŸY¬êN…ÒÍ`b“¡fKR¢S¤¨â$éŒ^µ«¥\0„!\0„!\0„!\0„!%«’Ô¢\"X¼,K¯!]¡¹bà±:-\\– jX“sÂÅÃ˜‚=ìM*±J¾šmVŠ¢ÒÕj` ‚$ˆ9ƒÌ+¢Ê£«ØäU\Z¯GZÇš–r)¸‚ÒÒĞúnÔa9´@~Ã¨Ú¯uzEìv\":ˆ†¸™4`n‚´º–#¹7}„îAš›\rœsªÓÒqÑq\0öAÌÈí;fŒ;À-.æÑypy4â0–±Ï.ÌÎ[™qàµa+Ï˜{RÃ‰¸hÒ®òC¥Îi„·A¬È8²Ğ¥.ş†ÔqšÏ\r›Úw‰Èy­¶–§`;EÜ÷M*\r6:\\yªÃe¦Š¥l–$Ù¨©*4WV{2~Æ\0:t’ /P „ „ „ „ „ „ „ „ ñrP…QÁI9@‹Ânğ…B/hÜ.hÜ„\rÁà„ ô4n	F4nBNi4nO)êØºB„„„„„ÿÙ','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	\Z(!\Z%!1!%)+...383,7(-.+\n\n\n\r\r-+-+-+-----+-7++++7++-----0-0-------+++-+++++-+-7--ÿÀ\0\0Â\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0E\0	\0\0\0\0\0!1AQaq\"‘¡ğ2±Á#BRr²Ñá$3‚’CSbc¢Âñ4s£ÒÿÄ\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0!1AÁaÿÚ\0\0\0?\0ÜP„ „ „ „ „ „ „ òğ4(š€@\0í“\n¥=&ê¦•\"1ıgk‡€ãî÷g¶ûŞĞ\\×cs„ö±á¨ á\'<Ç©A¯Q´™Ï>P›¾ş¦Ú’I³32Íf\ré•©®Å›Œ›Z\Z$‚`O\0oL-\0GPâH.uÓ#¹½óàæ‡4;Äy$.ÛĞÔ«R‘Ã\rÏy\"täBÊGMím`ciÄœ‰Ì’stïM,$¶\Zy&˜0Ii‚â\0`éäªwÑœ8ËI/nÇÇi¼şĞóæ´\nšö‡4‚„ QBBBBBBBBBBBBCôõ4)K}§Hp3ÏO\'j´²›Kê=¬hÕÎ ŞVoÓkôVp=†Œ¶LêcÁvÛj’L¦ô]!GÚmŸİ[Ş\\ÃM=×]RâÄÚØaª`ÒQè€öjëMù<¼Ë¦‘<BÈ©Ô‚¬\Z¾¾oQµu\r2FöıaÎ%ä…ÿ\0TPs°Óp¨p5ù°¸HòÏÑ„í]*¥N1ˆ’\03”œÀÑ\n.ËP~Ağx©&< ‚8 éBBBBBM/KÊ•›ªÖxc\Z	$ğØÓÃŠDÆe ûcóÈ~‹1§Ó“jy¨N\nÑMƒS‡<N?XÎ5:Î˜ÑÂN\00®øB[xnc»ğŠäÛ±ƒúÿ\0*£gé£8ºº Fn|ÎàÑïMktâ‡¬IÃ†˜í\05í;.[]¾sTé„wñÇTíMYÕ£§.n÷¼9Àé…­‘™Ï	Œ£Í1³t¾¥f¼·¬\"Hkœâ;M$I\"Nä\Z‹ºÍµúGÁ!R£vÕÿ\0Ø}À¬®ÕÒ\ZĞæŠ$\0X`Ä^s×EÍªú¨æ4Ta€\\¿hN§É§¦³9 d÷È3.$A“¯êyÛ$êš×¼ÆFZmĞ2¥®ºÁ²£l€*ÀÎÚ\r1PSv¡Èbİ„.îZĞïçczè[½AV¦àH2ÔDoZµÚ§g6ÆïP—½ 9Ğ¢ŸipÚ™T®ìÌ\'té<ÓAİSŸœåªbûQ9.:ÅÎËl©F®&<´ƒ‘Á_îîŸË:»U•›H€èÙ ‚ßÕÑJs\Z…ëÓ6ó‡7¸åç¡æ Ñèß7Ysjµµé¸h	q`:Nü.~Îå+céí*FYQÏ?d4ÃÀE“6Ò‰ğğ9ãÜ•¹í!µ˜÷šæäÁ˜³¹T}[L’\"	¸.”E¯ßœ±ÁÀ²&4 èGSˆ!!!!˜|§œUmï¢§ãí:S<Då±h÷…¤S¦ú‡ê´ıƒÅawõòqŸ¬âI3Å±\0@ À£m4YŠ	s¤‡	p$»#QËD…KÀ¾ÚÃ1ÈçÉ8³V\r8ƒ`ó”Z-”È4ê1‡´¶{{——eA«O1ì—ö‰Ëf\'g%jÛ½©™¸ÂBºĞÌúñ€76µ˜KˆÑí°T>eéK6¾<ÓntÙš¥ß7£ªU.È€ÀÚbOS‹–Ğq‰)Ç¿Ş™Û<iÉD^U–ìC\n•³^µÒ™IJU´õz7¸è8q+\n¸XJë}_Ôm\r¡U•™F¥!:Œ{š]¦ák‚2Ábã¤5N¤ÃÈGæºÿ\0¨Y¶”rÃú-n\Zm÷/I,tÚÀúåØÍAhëLN.Ğà\0³³œŒ¸…İŸ¥VF²7Zì4-,q-9œLş®RĞì¼Voºgc‡®&ûÚ÷y©àm7IìM³?ª¨Ü.¡HP£ú5Ø\\1a\"í4—mÀu”—N:]d­e¶R§]¯sú­¡®°–Ã²»–(ûÍ›1y¤y\rÎP;yÍ(×¨ÏÏÕóN¨U•à¼…à¶oh+Ç&µB†½#«HïN¬VÊl2Æç½Cµ+M¯òsÒ6Ñªê•†™i0Lmz…«\\İ!³Z±|Ş«jaö€F›â<WÏµ¼ì.i©‚4â¶ë­ÖšÖÖ×}öv\nE®/}2\\s °’uÔîD[P„ „ „ „ ¬|¡ÚK,¹}g€y\0ãğ	´8¹Ä¦VİòœÒl­zÀFïeÚ¬IÄb ä}ÜĞi®/*¤CFR$ù‚‘²ĞÖ‹ ¼µÃ\"Ñ‰\ZÁÜs0xèP\'^ÿ\0³:Èêo£ÕÔ§MÆ•AÖË{YqF†s^êÌDGfO„”ƒú8\\ğçÀ‚)Œä´è8@ïMúSo©š`öŞ\">È:’¨¢¼©¥İ ™Sn¤ìĞo\'O‰îOîú®‘:)t–á\09³ºDø(Ò¦e>Ö@ÿ\0Z(KÂĞ$€d\r¹lğÓ¹nÖJ]”äÉÙŸÀyÉşTñÖpWE1°ºO-ƒÜOó%¨SÂ™$úõÉ$S*¶A¹5}‰?µZÚŞ\'rŒ¯lqÓ$º	T±„ƒ¬á.À×jV,Ì@Âç¼å\0x®êİÌÀ^ÛK@İFí1ddáƒœƒ‘¬©ŸPºBmˆï]\nÅ@í´‚UŒLÙ],Ú¼Q-Ì.@½Á­ÍÎpcZ5sŒ\08f@ï^Ù2–:ıUfÔM:”ê¤áppÍ¨§6~=ÄVÎœXÁÖ\Z˜ê5­qc]I®h 9¹¸.¯o»ŒÙ‹.v,]¬”Éná¿5kX7«EŞ÷Ö§N¾ºç\n.©Ö×u\'ÀitÓé†öX\Z×–ªÅòèêØÒÎ«\0«L2›i¤\\æ‰%ı†‚I:WHqÑóÛn{G\0¾±¾i°ïkOˆåû—\"ÓñY¨©¥Oğä!!!!*_)÷v}ÿ\0Xå¶ƒ\\sÜv-‹å+şÙ¿àV=h9«4F“Èææœ~ÒxÒ£|ÿ\0qM*7—ŠeZ’Ò[/:Ä¥Dª­µ¢Iq.òñÖSëHëÖå	i|•š¥ì½£²ƒb•e:N[”]Ùª°1¾¶{â?Ud]è“\0¸˜\0NÌ»¥AÓis£kˆä«\r½ÑIÚæ\0Û·#ä|ÔEÑNj´î“à2ó!*m;\0d4C!ä™ÚmÈfÍO||Rõ‰qÛ©Ôî\ZJ’±Y 5 qã‹9Êwd­¢Ït=Â]Ùç™Òtï	ı+–œè]Ò~Ôh i*ZÍe©TI’‡=Äµ €2ŞvlQ—­\nì~U®²\0ÎD“±d*Û¨ìÚİ©ıû9¹M667dÎQÉ:µÑkØ¦M<,Ä;m%Ğq`™ï€•«g³—4õu²\Z€@Ê`“ˆáß©PAV¹éi–ÉoÕ;²ÕF×¸6ÓwsµÙ·¿r˜¿`4Ï=¦Œšt\0’áü¡sF•§«C–nÆ£A¤¨*–«ØaÀƒŸ|ïH±Êà+±ãÆ»Ò1hy•|] ËÆDjc\'“\ZmÍ}ßR8äŸZhò>#Ü|TKiÛà¦mƒ²ŞÓİ\"|¥½Šô©I…”ÚÆZ\\ü3QÁ§ZI%¸Aƒ\Z	%6­UÏv\'™9\rÙ\0\02\0\r&HØWMDJ]c0¾è‘›ºg¹|ãuĞ_Ft;şÆÍÿ\0‰ä(BBBBTşRGî£ïÿ\0´¬iÇ5´|¢İGß…Ëª!ÅXÀ£-à†‡OĞø)v	·¦Ö›0ã¾6OÃó+¢+W“#/8øy•YZo*Së¯Yµ¶\nçV»İXhºG?[§z­ØÎjzÊrX;½Ÿô\\È÷·’grŞíÀú\'Ñú1÷ÿ\0Úäty¹8ì‘ƒ N¼&U¾Ä¥šƒXç–€\'¶kxqJXí®pQi\rÏƒˆÚç»F,ã<”k\Zë]F†‚Y1M»j;kÏŸ!»5­YnëİC­´‘C3&£ Ä¤\"8ÍlVl·AO´çõdÏd–R$ÿ\0ˆæéƒ ŒµRŸ±,´YÑ]”[9FËKšàK$ÆZBˆé?L-6‰¦lÔ§ØûC³Ûf‘á›‚§õ@P¾ÛÉ}Oê3ğTYï[Öïiõ5\rZC[…®tÃ»PpŒËw@Qİ ¾,nÂ,ìêã7=.8D<ƒc½E¹îûnóÎ\'ì¨|Ï¸„J·U–¼‹®›Œˆkß‡ƒˆa\röY;x*ÚÛE•Áµa9€H-;ô%¹nÈ„ÂÓe.ÍÍ;ÇµçŸšN•ª­7²¤šİQ­¨\\Kp™hÌÌœŠÈ‘¥okå¯Í&H3„“”¬v™\Z¥\\Ş¬fK©œ±i“=—ïrw¹1e*u©š”ŞÖ>›\\ú¢¡ps³kCaÎ9I%ç Ÿn»ÎWR0»²	Ó?ªî×¦Wå”´ˆö$–Å<‚å¶ÆÃCÉ\0 ’J™¶Øˆ¢}’1R\'\\¾©;Û—qUš.sj0C|3„7o³œAÇ²gºôNÍ£Ô¤^\\N\"IpÎNdÆ£Á8 c1¦Ÿ?÷G´Ñ½lXìÃüš„/œî¯i}%p6,´ù4ÿ\0\0D?B€B€B€B‚³ò†?tşqø\\±KN«néğıÑßy¿‰ZuViãŞtŸZ!š.j\rŞ½dº2¼s\n§m«e»OZÇÁUo\rV2j8²•;d9z÷(2›²iëòHR·±š\\ˆßÄj¸¤ÃÔ2˜Ë—¸u> 4x®PÕ8\ZÒG\0çØ\Z~*jà±‡W\0û,Á‘½ÇÉ=Ñf¹lôìVs^¨úG\0@—\0ì™IƒíÇ’¯Ûï:•*½ÓPHÄ¶€ÛJ‰ßöªÉ ûéEè_V\ZObXÎ#éjs\0†7‹œ ê<4a\Z^­ø»\\\\CZ5Èo?’º\\ı¢Ú}e¡ØœFM\Z9í*‹u[0Ôã†ß’ÕÒ…ÀÅœµÇúéÒyYâ!zQ€>\0 ¡N/F#%5¦s\\æ÷¦íX,v|TÁ9>I*”šâZrsLHÔwí\nBæ`Â°lø¦6úeµjU=N\\r\0Ü¾wÚŞç}W.ÛËçê\"İb3¹ûÑãn[øzÃ¦Aš¥ öùƒ´…@[©ÁÇŒ9kï‘Ãb,W=~¾ÎêN?MFL^4™œíUëm1×’4,ÌINnkP¥^Cì‡|Xâ¼2=É×Hl]]gGÕ.`1bhÎQL)úøy®é·?à\0åãr]1+vëÜWÓ7[b!º›ƒBùší¯§è¶\Zà’„ „ „ ¼%rJ>œÜêsoâaÖ¡™[—LLØëroâjÃm^×z±2¹«ëşW´Ï¯AyS—— ¶#í‡óóË^áŞª×ˆÍZ-šzº{»Õfñ¬ä°ŞÌ¦hÉâø(k>Å5e9)«‚¬1Ãi\"wÀhü^jzçpcj?Ÿ”•]³`ûøëêÅ\'ıÇîZˆ†/%äŸª?Õí8ÿ\0[å5´ÔÉ(×gSï;ŞÔŞÕ¢ÍWßx|Æ¬(óVŸœ¥ÛT«]q¾4Uù¯i³=R2»cOeÕ4²\\w“)ö]åİ¢›­5G{\rh€\rá:’¤uXÈ†âç˜ğ<]ÜUŞÉ`©šµ]ì·ÈƒF\\`\0\0œ€“>Î·uŸ[¥O/Xık±â®Ô§…å»¼²(«ÆÇÁÃ>c/qòR€—>N¦Iá9Çœ&—ØŒïş¸WXOûÀø)[Ò¾71çkOŞ4Ø	ò>)±oÒ0ø/:mÌÆ½Î€˜\"WlS\rè}³û¡©¶Ñ†ÕÉàN`‰‘‰İ‹£ôT6ÕikišL¨\r2$â³0s˜ƒ”Àº=H¾«â{Dspéy_>üšÓ.·PËG­%olzåt\nI¥vv„!\0„!&â»rMÊ¢#¥lµ‡ø	ğÏà°Ûf«{¼iâ¦ö}¦¹¾ …‚[ÚCÈ9H#ˆTpÅëıd?4›‡»/^½ËA¥°ä«WˆVK[²õåà ml™Y«ôv)›.‰­é®@\"“ˆOé]vîà¤¡fúóO,ÏFñ	€»í\"~ÿ\0ÒS›\nÀÃ¨Ôh#\\&òæ®ÄilT{wçãú†¤Ù^Ì‚Úƒ“¹zø$HœÂ‚.µ9øp;4Ô¸ŒP¦*QÚwPQ>Dr?¦”ÉµûÓÊæ·<#Ésû?qñiüM–£u®g‹İå	ªmb¹ïƒÙcbI9à¤íW‹«4¤Ó‘>ÕW\r2ØÑ¬z+=6jÏ\Zõ-Iªq;&6Üî<æ?o’åò;±S&\\véã™ñL/c‰á£`üY~*f½@Æ“°nò@Uw´÷jf8¸äG&Œ»Êµ“FfùâO€ı&×!áí$¸‘¨-2Ò8ˆ	Ís…†$—d>\'ÜšQ²Uw³Mç“]ù.m:ğªá«QÃ,‹ÜFBDì\0å.\nBïè­ª¡ş½Çà3WŞ‹tSp}NÛÆ’!­ä6%¯É•Àh´Ö¨\"£Äö®|NKG¢£®û&¥©1£­Æ5(¨„(!9pI8%Êà…PÎ³2Y_Nú)PÔ5è´ºs{F³´ó¹kjoV€:…GÍøğœ.–‘¨#>ùºufìpõŞ·‹G(Uş%6;˜Ş¡küØİı‰âƒ¶WÊ”§G.§Zkµ‘-™~ì#=;ÖÆ>Mlsü?õ;óSWwG(ĞJ›Z8\ryïPBY.v€;#Á<kw=óeÉ¢‚\r×{w$*X¸)çÒMªÓTdİ-èù¤âæ´šO1<.?W¿b¦Z,ï óN£HàAm‚6-ò×@8¸H:…A¿ì;dÀ.êí-0Hma™h\r\0i¸ÉTf\0t]u ¯-–Iå¬{*µ‡vè/0¼m Dp#â?%­±ñ4µ;ø¼¿Uå;PÜ<GÅ-óĞ6ŞßÍPîÏdhÎ$ñÏËHOX4gúònÏ\0¢Å­ÇÙİ\'”˜×Uks{¤îIæíÜ¡ijœR\\a­Ûö7{“Z÷}WÔcC ;&\0A€\0\'²aÍ0`æ¦(ÑhsZæ¶µXìQ¦àæ3q~E±É;[\0í·\\—Qgn¡ÇUÙ½Ú	9Ğ\0\0Lœ†d’³j›]kvåOÙn†ıŸY¬êN…ÒÍ`b“¡fKR¢S¤¨â$éŒ^µ«¥\0„!\0„!\0„!\0„!%«’Ô¢\"X¼,K¯!]¡¹bà±:-\\– jX“sÂÅÃ˜‚=ìM*±J¾šmVŠ¢ÒÕj` ‚$ˆ9ƒÌ+¢Ê£«ØäU\Z¯GZÇš–r)¸‚ÒÒĞúnÔa9´@~Ã¨Ú¯uzEìv\":ˆ†¸™4`n‚´º–#¹7}„îAš›\rœsªÓÒqÑq\0öAÌÈí;fŒ;À-.æÑypy4â0–±Ï.ÌÎ[™qàµa+Ï˜{RÃ‰¸hÒ®òC¥Îi„·A¬È8²Ğ¥.ş†ÔqšÏ\r›Úw‰Èy­¶–§`;EÜ÷M*\r6:\\yªÃe¦Š¥l–$Ù¨©*4WV{2~Æ\0:t’ /P „ „ „ „ „ „ „ „ ñrP…QÁI9@‹Ânğ…B/hÜ.hÜ„\rÁà„ ô4n	F4nBNi4nO)êØºB„„„„„ÿÙ',492,0.3,'1 year warranty is applicable',7,'approved',0,0,'2016-05-12 15:38:31'),(17,2,'Surakha E Commerce Pvt Ltd','ELECTRONICS','Mobile','Naughty Ninos Printed Boy\'s Polo Neck T-Shirt','Pantaloons',1700,5,105,100,100,1000,89.5,'ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	( \Z%!1!%)+...383,7(-.+\n\n\n\r\Z\Z-% %--++5-/./+7.--1-+---.-7-+-----+-/5-+-.---+02++---7ÿÀ\0\0¨+\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0F\0\0\0\0\0!1AQ\"aq‘±2Rr‚¡ÑB’²ÁÂCbƒáğ#D¢Ò$3cs“ÃÿÄ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0-\0\0\0\0\0\0\0\0!1AQq\"Ba‘ğ2¡ÑáÁñÿÚ\0\0\0?\0î(ˆ€ˆˆˆ€ˆˆ‹MCccäy\rk\Z^ç€rPeEÎ«9Î!ÄEJÛäé%ÀOYhc­â¢?œÚƒ²šÛ#İúB ‹“KÎEoÙe0íWô\n3ùÂÒíÀ=ØOê ìH¸œÜ¸Ò\'eVv(?S\nŒşWé¶²^æÂßÃAİQp	yGXvÕÏİ+›øHPåÒÕmMAícú}¬|H¤ó\\µ/;^óï=Îó*ŒiÌ´xLK¥iÛëO{d`ó*œ«ÑíÛ[L?Ÿü1/œp¶7y(šF°FÒíç 8Ÿ¢£¦åö‹g­]sñy(2ó¥¡Ûşu‡±²&¯•^âIqÌ“rU}=/<Z!»\'{½ØŸù€¡ËÏ~‹C»\"ÍÁ|Úˆ>…—ŸŠêÓÔĞÁúŠ‡7?°RŠCÛ#[úJàÈƒµËÏû¾Í\0ïšşLPæçî«ìRB=ç<ù¹ êRóë¤NÈi›ğ¼ù¹C›­*v:öFšç(ƒÜËÎæ˜wù–v(Çä·|ç\'I>i§Ö±®mØàĞ}­¸iÍ¶#yß±r¥Ğ¹¡Ì‡J6Í+K¸†Şî=Ø¯ü²¬$¾—¥œHÆHßUìkÇc…ÇšÊ­ 4\0\0€¹Ex^u´¾®éZzS;º£aæì>^ép.[é¿J¬@nÆL|00‘qÔ\\\\ï‰¿X¦ÓIŒH_ŠæÖÃnAïòß¦d‚âç%¶ı¥0gkweÜ‚é¦ŠÄ2\'ß\0¸“Ò¾g#²ÙÛ‰à+;ğR$ÒLÀÆbÜ]lÜ]kw\0Ñ—Yâ°úszĞc1»Ù*ÓıŸ%”×µC\\8M;ø|Â´Ò¿«Åe5½JÓ[ÕóTbôõ|şŠƒFHHÄ“`\0$“{Xek\'§{eqcÑÁSÓİ—VÌÎ]œCôq\r..\0\r¦ÆÃ}¾Eyí%£÷’çÚÀY¥»ÌoÚTı\'¥\\Ãm¬{s?Ñkı-İJèG\Z{gÀ*ßiß/¢Íé.êğOHwQ”VXÆˆgx¢¼h˜úüUÆWÉòXİ+¶—X|û‘œãåî»öd^Éñ*V‹ĞĞÉ+#qk½Üç…öŸï¨ì:¹*Nâ|sX3½£âQ®^–\rFê‡Fe„u¥¸É …­‹¤Nyd.£Öhêf™5oÎko‹€6àÚ¼ùñ>%csD½&\ZĞÖ†s|€¯BŠôk$œ\\/Ø3? »×4ú3\\³‘”}÷xJ;ÂãÜ¦¼”Œ˜ßÒ>@w¯¤y±ÑÚš&<úÓ9ÓÃÑgqkC¾%|‘ëE›çMú%Òg¼jcãà‹Æ‡;á_=‰·ç«OkjÙHÓÑ§mİ×,€àÜ?x®y¬A4J®Ö¨\ZÅ]j	úÔÖ¨:Õ]j¢n±SZ¡ëU5¨&kUªµSZ‚^±F®«Â,6Ÿâ±É=%jä”¸’wª.º¹ªÖ5dSm”¤ÈVÃ3òªÀ-´Û¯éÖ°OS~‹roÌö£|Ú1ÇNì’ÌñQdœÉXÉV’Y´ÏuÄ«	BU¤¢«	BU¥@TUYhàÆö3ÚpÛşWAîù¢œèá‰¹>iÛğÄá™ì»<\núfšÆÆFÁf±­cG´X\0¹?6\Z/KnŒüoè´ã\'Ü®+)\"(¢\" \"\"\" \"\"…¦´“) ¦OV(ß!ë°¸¬›õ5rntş`Ñí=)œ&ÛŒôí}òÊ=[\\ù¤–y\rß$•Şó‰qîÍaÖ(ØÓ\Z	:Å]j‰SX‚fµ5Š±5ˆ&kU5ª&µ5Š‰zÕ*ÚY‰Ä‘7¸¶‹+m.s\07µÉZ°õ>OiÍÀ\"-p³„…×#0]´uA†©î‹\\q4]îów<]¤2Ö³\Zv}¡·t†Ñ49À7¤ÖÅŒb2\\‚Öì.³EÈ åÙWh÷æd„COFF°X\\XŞãfØ[&\r¹“ŠIìòKÄôƒ®Ûß\"m X÷¤Ëu1Í§¢3	ÈXn~eH7ä8o*´ĞÒ;”:Ê‚ó–Á±c¶ûj‘¨YSQˆğ†áıTw9T…n¬¬¶å´­%Rë&­{“lÕG?‚ÆJ\n¸ª\" -ÿ\0#)1Ì^FMÔüñZïù@íSCGNWµ­ësÈ\rı½Xî’îÙĞà¥tÄt¦‘ÎøXpë‡¸{Ë×(ô†(¡o«lŒv4\0<”„•@DDD@DDDABmšùC—šÓ«êª»õqâ¢Ëvæï‰wxyAèz6`Ói*?åc¶ÑŒn,ÀìøÙ|Â\n¸“Çtºñ*bV].‚ìJ—TD]Tb¹£z,F×İ_7•H›su2(n´ß&¸8i´°6;©°SñRb¦¶ìø)\"îÈ4“Ø¹§?«¾ôŒQË^íU\\—èk)NÛd½$Z\r±O9†2xd…eLQGœ¯>Ã6¢áäß—®ŸõåM¹ÿ\0Oo_/ïü<ói‰6\0“Àf’Óay¨f~Y-ŒÕ®B&µ­àßÏ}ÔWh:‡çÇ¸®Œq{y9òZ•ï?éª– }£9Ä­ë9316ÀG‡ÕM¿Gñ87åµoä—<ñ8cæ‡”EèæĞ°²åÓ7¸_Ì¨/§§$¿h²ËÂŸ>‹M-Ûij‘d©ÃˆáÙ±cXKtNÙ)áÆæ°}§õ>ºóe¢ñÕC—FVƒ¶îişZä<’¥Ç6#±‚ş;ü—ÑœÕĞa§– ŒæîGqøÌÖHìy½²\"(¢\" \"\"\" \"\"\"Õr§M6Š’¦±û\"‰ÎÚ~Æ7½Å£½çÓ”“¤=¦ñÒ³WÕ­}!îøJçMmÈyVyÜ÷>GœO{œ÷8ísœnâ{I*Öb7:j ,%§hXVÔJ&hÖİdn*M9fİ‡aÜ·g­wºöJîc«\n\"¾8‹¶¢#j±Â=ã¸¬ÌÑ‘¸÷Ÿ$µø´õjÚÛ¬ÍŠù-Ÿì™ĞÛô©ôš	Ù\r¸‘`|Uğí=¡ÛÂãŒ–è×RÒ`ôz?C1£ÏÀ=1<÷loyîR)`›]m×m²ï+f4•cké\\¶÷7énïKÈã3ÖŸ\r7iúvûÏGĞW—>»6#jz|ı¹.÷vØd<ZÁ©õÜ^ıö°c:†XoÖ¸-tÜ¦–øa8\rğ3 }ãö»îµoªpv±Ï7ë7ñ¾ÕÃ^óÍ®¾½ÿ\0Ï£Êâ\"Ù&bgáôş=Ù++¤}ÚÁ…§iÌÖIÍİä­SàhÍÄ¸øª­f“\'÷ØµsU“½zØøH§“–úí‰©\rØCzšš¾0öf×¸w­ç;–Hx­ñ3^Ğå¼Vß,=5O*æµµ‡ºÃÉhêt´9¸÷’ Zç%½ZãcÉ{åqÚUˆ‹zĞÆ\\æ°mq\rñQ^Ï’„Dt\0\ræû\0í\0‰};¢(DC\0ıÜmeø3=æç½qm´P’²–èÂİqm±oƒŒ?5ÜU”Qq_ø‡åTÚ5‡iô™mÀ]±4öœGá³Ë k\\÷5 ¸“°\0.I_!ò»N\ZêÊªÃ{I!ÀèÛÑŒ}Ğ;îƒPŠ—U@Ù…³¥Òf@ãÇ´-e•ÁŠÄÌu…‰Ó|ÚÒÍ½&ıB›K\r;3/¿PyºiŞÏT÷n[Ht›O®Îñcæ·W6¾XeábÉß§İ¾<¤dBÑ0_‡æ¬ı·[.Ç9­ã|-ñÈ-|zF-Ù|EWé;÷ |.\'æ°¶ky2Åÿ\0ŸÃDîyfÅµ/hÇ,ï?­Ø.Vº¯J=÷k‡Ìö•ŒËNzN‘ï=‡óU:^6Ó‹½ÙŸ¢ÕmßõNŞ­m‹rÓQ‹éé^EÜ<M‡iººgÆÏY×ìÈ-]^“‘ûOr‚ë•„c¤uåß¿ñı±¿;ulçÒàdÁ—‡õZÉ´ƒáóXœ75txÙ;o^İ98‰²¦¤ïS\\7Íc,V²Œù#ÍÏ6™JkØoığTt*5ÖVU8mÏ·êºqñ8íÓ$kØè©…U´Ë3+½¤vX¬Â²>¿Ù	n¼ğ±XõFôu\ZQbG”é4ƒ~Ë|¢×“½rq³‚\"+Šwê“ä-¿%é±Íˆì`¹</—–/¨^³“4øa.±&Ga\0m#}¾»Ä.a.áÌş´3Õ‘œ¯\roºËœ»Ü[ğĞV»“Ú;Ñé©àÊì¡ÖØ^syïqq[•@DDD@DDDAÎùñå£hç@Ói*¨D{e?w£ñ¯›ºçŸ”>—¤¥cMã¦ŒËl.ò»ït~\0¼\"‘²ë+bUl XF@‹£bÊÙÙ×àUˆ•â{j#ö¼ÖVÍ¶ßt\'è*Z{TI>ÆÖÅæc{Ş~ FL`qµó¸Q´„LÖ8FÖµ£z.sÚ\\\0ps`ºänµ–x+\Z\0hÕ;nĞs7Ûuk@ÈäsÙ¹]#qÈı\rO z‚0DDìÏyÌd¼Ì±NÂ,1v_%·ÖFs00íŞááJ1‹3•³ğYk£)´kMÿ\0&y+”²ÖT—aá¸NÜ9b\'y¸Ù±xñ[Éäš¶CqbÕ—Ş;ñÃ°µ°‹‹Ş×¶Ûo²ÓâÖ›N÷=>Ê÷¬ÄDF´ØhŞL‡ÓIU#Ë@kË\06ÍÆÄX“`.Õ­ıLÇT!lÏ,$FZ\0ßpsìP¢§Ø¸7\"nonÌ–U­ºó.KRb\"‘î“£9*ù©æª266°†o\"ÙÅ¶+Ï—®’ºcL)5Ñjš]¸q½¯lÆ\\<V‰\\¾òliR‘n¼Îzsny¥7“ü†­­aš±FYŠì!†à8!særZ\nº\'Fù\"x³Ø÷Æáplæ’×Œˆ#%Óù9Ë\ZŠ(#§’D­lšÒ)N7<¹#. 2\\åÌ\'2I\'2Nd“´µ–›\Zã°Æ¶ctjhA,VÙLtk£A]µQAXØ\\CFÒCGi6]w›Í%­¤†×l Lî Û~ñø×5äİ69šNÆãÛ°~g¹wÎe4øu5®Èı[:š,ãn«ÇÀ¬#¦¢\"Š\"\"\" \"\"\" -.´ğ¡¡ª«Ëc-Œò»£ëéOP+~¸oüEé——ÒP6ø\rSøèãØ^~!Ás‰$’I$’Nd“™%Q.ˆ2ÏPçáÄo…¡ƒ©£ ÓÕ9í¦Öcp‹p¹<NA`D$©¼mˆ4;vXœlFÛ\\ö\\ìtD±•WD#a>%dmKÇÛwŞ+ Ú>G¶Íé\r$¼³WŒ:A`ˆ¶Ù7;^÷¸9oYô£¤€S~7I&{p4ñ“…—Ïµí«H¨®äO\Z^_á?Ñ^4Ã÷µ¾~k\\‰Í#gûdûÄıF—Ùà¢Õ¢¼Ò6Ÿ´Ùì»ä«ûB?âğş«T¨œÒiµ5±ñ>PÎÃö‡Ífv›12’&†b¹/2½Øzn.Äa •œUÔ:j9ï}R^,\ri8C]rqØ73ê‡¬©6vDS#}¡â¬y&áI‚ª’Ñ‡Âã…–u€é»!{âíã®ú™%Ä’|‚mTDUkI \r¤€;NÅ¤äü`{÷ÈìİØ~XÊúƒ’\Z3Ñ¨é µ‹cpş7ôŞ>óˆî\\7ÚMYEMk±„HşhÄoÚGÆÑJÊ@ˆŠ(ˆˆˆ€ˆˆˆ€¼Ç,¹O¤p:BæK-dŒ9á&ø^69·ï6\"åztAÇjù™~x*˜x]­Ãä´õ<ÌÕUğ;´‘çæ»Ò+±ó•O4ÕíÙî¹ŸîjÕTsuZÍ´Rü7wá._PÙP´ ù*£’s³Ö‚¡½¬xüL_.‰¶Wpí\r?©}ˆb´Q»Öh= 4w;ıü®±;F¼}¦w’<À_\\Tr^ş½4.í‰ŸE®¨æûG;ü«º\\ÏÂB•}MÀÇ3ê­u£÷nîù/¦gæ£G;c$od®?ëYQÌÕ)Í²ÌßıgÉ¡Î®…Ãk\\;ZBÇußgæhúud{ÌwäğµõĞÕV¢\'{ØÛæ× âJ«¬TsO^?wûÂÔÆ­UO6µíÛC~¶–~‰?$ñ°©äUK=j)Çceÿ\0i[6€Ãë2V{Ö‰¡44(¶‡E7sİ÷Zï\'+¢¹Ş,pòºhk‘L:5ŞÓ<\\<ÚŸ³äàcÙõPFE!Ô2İ»¸_ÉbtXáÚÒX¶<Ÿ§Ç3x7¦{¶|Íû–¶ëÔòRŸ\\÷d^æÄ7`u»Iù$ÏÌöŠÕ5dgfÂY³İÙÑø•Ó—œä\\L‚œæë\\8œVî7á[áPŞ*ÈÊŠÑ â«ˆ(*ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆ)dÂ5c‚µÔí;B\"u\Zş¼1»Ş‡Ì-dü…ÑÎÌÑÁ~\"6´ø¶Êˆƒ_QÍwîK}Ùe,VZÚhhêºfüLwâiDMuG31}Š‡z6Ã…Aÿ\0ñùšz5,pàD±üÚòˆ®Äzk«3\rlg#b\'q±ÜpÉ~+\'ù«­dÚÊŒ8‡9ã{]Ànß—DØê0èÙwÙK‰ãz\"‚C)Ü²¶2ˆƒ#ZUàDUT@DDÿÙ','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	( \Z%!1!%)+...383,7(-.+\n\n\n\r\Z\Z-% %--++5-/./+7.--1-+---.-7-+-----+-/5-+-.---+02++---7ÿÀ\0\0¨+\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0F\0\0\0\0\0!1AQ\"aq‘±2Rr‚¡ÑB’²ÁÂCbƒáğ#D¢Ò$3cs“ÃÿÄ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0-\0\0\0\0\0\0\0\0!1AQq\"Ba‘ğ2¡ÑáÁñÿÚ\0\0\0?\0î(ˆ€ˆˆˆ€ˆˆ‹MCccäy\rk\Z^ç€rPeEÎ«9Î!ÄEJÛäé%ÀOYhc­â¢?œÚƒ²šÛ#İúB ‹“KÎEoÙe0íWô\n3ùÂÒíÀ=ØOê ìH¸œÜ¸Ò\'eVv(?S\nŒşWé¶²^æÂßÃAİQp	yGXvÕÏİ+›øHPåÒÕmMAícú}¬|H¤ó\\µ/;^óï=Îó*ŒiÌ´xLK¥iÛëO{d`ó*œ«ÑíÛ[L?Ÿü1/œp¶7y(šF°FÒíç 8Ÿ¢£¦åö‹g­]sñy(2ó¥¡Ûşu‡±²&¯•^âIqÌ“rU}=/<Z!»\'{½ØŸù€¡ËÏ~‹C»\"ÍÁ|Úˆ>…—ŸŠêÓÔĞÁúŠ‡7?°RŠCÛ#[úJàÈƒµËÏû¾Í\0ïšşLPæçî«ìRB=ç<ù¹ êRóë¤NÈi›ğ¼ù¹C›­*v:öFšç(ƒÜËÎæ˜wù–v(Çä·|ç\'I>i§Ö±®mØàĞ}­¸iÍ¶#yß±r¥Ğ¹¡Ì‡J6Í+K¸†Şî=Ø¯ü²¬$¾—¥œHÆHßUìkÇc…ÇšÊ­ 4\0\0€¹Ex^u´¾®éZzS;º£aæì>^ép.[é¿J¬@nÆL|00‘qÔ\\\\ï‰¿X¦ÓIŒH_ŠæÖÃnAïòß¦d‚âç%¶ı¥0gkweÜ‚é¦ŠÄ2\'ß\0¸“Ò¾g#²ÙÛ‰à+;ğR$ÒLÀÆbÜ]lÜ]kw\0Ñ—Yâ°úszĞc1»Ù*ÓıŸ%”×µC\\8M;ø|Â´Ò¿«Åe5½JÓ[ÕóTbôõ|şŠƒFHHÄ“`\0$“{Xek\'§{eqcÑÁSÓİ—VÌÎ]œCôq\r..\0\r¦ÆÃ}¾Eyí%£÷’çÚÀY¥»ÌoÚTı\'¥\\Ãm¬{s?Ñkı-İJèG\Z{gÀ*ßiß/¢Íé.êğOHwQ”VXÆˆgx¢¼h˜úüUÆWÉòXİ+¶—X|û‘œãåî»öd^Éñ*V‹ĞĞÉ+#qk½Üç…öŸï¨ì:¹*Nâ|sX3½£âQ®^–\rFê‡Fe„u¥¸É …­‹¤Nyd.£Öhêf™5oÎko‹€6àÚ¼ùñ>%csD½&\ZĞÖ†s|€¯BŠôk$œ\\/Ø3? »×4ú3\\³‘”}÷xJ;ÂãÜ¦¼”Œ˜ßÒ>@w¯¤y±ÑÚš&<úÓ9ÓÃÑgqkC¾%|‘ëE›çMú%Òg¼jcãà‹Æ‡;á_=‰·ç«OkjÙHÓÑ§mİ×,€àÜ?x®y¬A4J®Ö¨\ZÅ]j	úÔÖ¨:Õ]j¢n±SZ¡ëU5¨&kUªµSZ‚^±F®«Â,6Ÿâ±É=%jä”¸’wª.º¹ªÖ5dSm”¤ÈVÃ3òªÀ-´Û¯éÖ°OS~‹roÌö£|Ú1ÇNì’ÌñQdœÉXÉV’Y´ÏuÄ«	BU¤¢«	BU¥@TUYhàÆö3ÚpÛşWAîù¢œèá‰¹>iÛğÄá™ì»<\núfšÆÆFÁf±­cG´X\0¹?6\Z/KnŒüoè´ã\'Ü®+)\"(¢\" \"\"\" \"\"…¦´“) ¦OV(ß!ë°¸¬›õ5rntş`Ñí=)œ&ÛŒôí}òÊ=[\\ù¤–y\rß$•Şó‰qîÍaÖ(ØÓ\Z	:Å]j‰SX‚fµ5Š±5ˆ&kU5ª&µ5Š‰zÕ*ÚY‰Ä‘7¸¶‹+m.s\07µÉZ°õ>OiÍÀ\"-p³„…×#0]´uA†©î‹\\q4]îów<]¤2Ö³\Zv}¡·t†Ñ49À7¤ÖÅŒb2\\‚Öì.³EÈ åÙWh÷æd„COFF°X\\XŞãfØ[&\r¹“ŠIìòKÄôƒ®Ûß\"m X÷¤Ëu1Í§¢3	ÈXn~eH7ä8o*´ĞÒ;”:Ê‚ó–Á±c¶ûj‘¨YSQˆğ†áıTw9T…n¬¬¶å´­%Rë&­{“lÕG?‚ÆJ\n¸ª\" -ÿ\0#)1Ì^FMÔüñZïù@íSCGNWµ­ësÈ\rı½Xî’îÙĞà¥tÄt¦‘ÎøXpë‡¸{Ë×(ô†(¡o«lŒv4\0<”„•@DDD@DDDABmšùC—šÓ«êª»õqâ¢Ëvæï‰wxyAèz6`Ói*?åc¶ÑŒn,ÀìøÙ|Â\n¸“Çtºñ*bV].‚ìJ—TD]Tb¹£z,F×İ_7•H›su2(n´ß&¸8i´°6;©°SñRb¦¶ìø)\"îÈ4“Ø¹§?«¾ôŒQË^íU\\—èk)NÛd½$Z\r±O9†2xd…eLQGœ¯>Ã6¢áäß—®ŸõåM¹ÿ\0Oo_/ïü<ói‰6\0“Àf’Óay¨f~Y-ŒÕ®B&µ­àßÏ}ÔWh:‡çÇ¸®Œq{y9òZ•ï?éª– }£9Ä­ë9316ÀG‡ÕM¿Gñ87åµoä—<ñ8cæ‡”EèæĞ°²åÓ7¸_Ì¨/§§$¿h²ËÂŸ>‹M-Ûij‘d©ÃˆáÙ±cXKtNÙ)áÆæ°}§õ>ºóe¢ñÕC—FVƒ¶îişZä<’¥Ç6#±‚ş;ü—ÑœÕĞa§– ŒæîGqøÌÖHìy½²\"(¢\" \"\"\" \"\"\"Õr§M6Š’¦±û\"‰ÎÚ~Æ7½Å£½çÓ”“¤=¦ñÒ³WÕ­}!îøJçMmÈyVyÜ÷>GœO{œ÷8ísœnâ{I*Öb7:j ,%§hXVÔJ&hÖİdn*M9fİ‡aÜ·g­wºöJîc«\n\"¾8‹¶¢#j±Â=ã¸¬ÌÑ‘¸÷Ÿ$µø´õjÚÛ¬ÍŠù-Ÿì™ĞÛô©ôš	Ù\r¸‘`|Uğí=¡ÛÂãŒ–è×RÒ`ôz?C1£ÏÀ=1<÷loyîR)`›]m×m²ï+f4•cké\\¶÷7énïKÈã3ÖŸ\r7iúvûÏGĞW—>»6#jz|ı¹.÷vØd<ZÁ©õÜ^ıö°c:†XoÖ¸-tÜ¦–øa8\rğ3 }ãö»îµoªpv±Ï7ë7ñ¾ÕÃ^óÍ®¾½ÿ\0Ï£Êâ\"Ù&bgáôş=Ù++¤}ÚÁ…§iÌÖIÍİä­SàhÍÄ¸øª­f“\'÷ØµsU“½zØøH§“–úí‰©\rØCzšš¾0öf×¸w­ç;–Hx­ñ3^Ğå¼Vß,=5O*æµµ‡ºÃÉhêt´9¸÷’ Zç%½ZãcÉ{åqÚUˆ‹zĞÆ\\æ°mq\rñQ^Ï’„Dt\0\ræû\0í\0‰};¢(DC\0ıÜmeø3=æç½qm´P’²–èÂİqm±oƒŒ?5ÜU”Qq_ø‡åTÚ5‡iô™mÀ]±4öœGá³Ë k\\÷5 ¸“°\0.I_!ò»N\ZêÊªÃ{I!ÀèÛÑŒ}Ğ;îƒPŠ—U@Ù…³¥Òf@ãÇ´-e•ÁŠÄÌu…‰Ó|ÚÒÍ½&ıB›K\r;3/¿PyºiŞÏT÷n[Ht›O®Îñcæ·W6¾XeábÉß§İ¾<¤dBÑ0_‡æ¬ı·[.Ç9­ã|-ñÈ-|zF-Ù|EWé;÷ |.\'æ°¶ky2Åÿ\0ŸÃDîyfÅµ/hÇ,ï?­Ø.Vº¯J=÷k‡Ìö•ŒËNzN‘ï=‡óU:^6Ó‹½ÙŸ¢ÕmßõNŞ­m‹rÓQ‹éé^EÜ<M‡iººgÆÏY×ìÈ-]^“‘ûOr‚ë•„c¤uåß¿ñı±¿;ulçÒàdÁ—‡õZÉ´ƒáóXœ75txÙ;o^İ98‰²¦¤ïS\\7Íc,V²Œù#ÍÏ6™JkØoığTt*5ÖVU8mÏ·êºqñ8íÓ$kØè©…U´Ë3+½¤vX¬Â²>¿Ù	n¼ğ±XõFôu\ZQbG”é4ƒ~Ë|¢×“½rq³‚\"+Šwê“ä-¿%é±Íˆì`¹</—–/¨^³“4øa.±&Ga\0m#}¾»Ä.a.áÌş´3Õ‘œ¯\roºËœ»Ü[ğĞV»“Ú;Ñé©àÊì¡ÖØ^syïqq[•@DDD@DDDAÎùñå£hç@Ói*¨D{e?w£ñ¯›ºçŸ”>—¤¥cMã¦ŒËl.ò»ït~\0¼\"‘²ë+bUl XF@‹£bÊÙÙ×àUˆ•â{j#ö¼ÖVÍ¶ßt\'è*Z{TI>ÆÖÅæc{Ş~ FL`qµó¸Q´„LÖ8FÖµ£z.sÚ\\\0ps`ºänµ–x+\Z\0hÕ;nĞs7Ûuk@ÈäsÙ¹]#qÈı\rO z‚0DDìÏyÌd¼Ì±NÂ,1v_%·ÖFs00íŞááJ1‹3•³ğYk£)´kMÿ\0&y+”²ÖT—aá¸NÜ9b\'y¸Ù±xñ[Éäš¶CqbÕ—Ş;ñÃ°µ°‹‹Ş×¶Ûo²ÓâÖ›N÷=>Ê÷¬ÄDF´ØhŞL‡ÓIU#Ë@kË\06ÍÆÄX“`.Õ­ıLÇT!lÏ,$FZ\0ßpsìP¢§Ø¸7\"nonÌ–U­ºó.KRb\"‘î“£9*ù©æª266°†o\"ÙÅ¶+Ï—®’ºcL)5Ñjš]¸q½¯lÆ\\<V‰\\¾òliR‘n¼Îzsny¥7“ü†­­aš±FYŠì!†à8!særZ\nº\'Fù\"x³Ø÷Æáplæ’×Œˆ#%Óù9Ë\ZŠ(#§’D­lšÒ)N7<¹#. 2\\åÌ\'2I\'2Nd“´µ–›\Zã°Æ¶ctjhA,VÙLtk£A]µQAXØ\\CFÒCGi6]w›Í%­¤†×l Lî Û~ñø×5äİ69šNÆãÛ°~g¹wÎe4øu5®Èı[:š,ãn«ÇÀ¬#¦¢\"Š\"\"\" \"\"\" -.´ğ¡¡ª«Ëc-Œò»£ëéOP+~¸oüEé——ÒP6ø\rSøèãØ^~!Ás‰$’I$’Nd“™%Q.ˆ2ÏPçáÄo…¡ƒ©£ ÓÕ9í¦Öcp‹p¹<NA`D$©¼mˆ4;vXœlFÛ\\ö\\ìtD±•WD#a>%dmKÇÛwŞ+ Ú>G¶Íé\r$¼³WŒ:A`ˆ¶Ù7;^÷¸9oYô£¤€S~7I&{p4ñ“…—Ïµí«H¨®äO\Z^_á?Ñ^4Ã÷µ¾~k\\‰Í#gûdûÄıF—Ùà¢Õ¢¼Ò6Ÿ´Ùì»ä«ûB?âğş«T¨œÒiµ5±ñ>PÎÃö‡Ífv›12’&†b¹/2½Øzn.Äa •œUÔ:j9ï}R^,\ri8C]rqØ73ê‡¬©6vDS#}¡â¬y&áI‚ª’Ñ‡Âã…–u€é»!{âíã®ú™%Ä’|‚mTDUkI \r¤€;NÅ¤äü`{÷ÈìİØ~XÊúƒ’\Z3Ñ¨é µ‹cpş7ôŞ>óˆî\\7ÚMYEMk±„HşhÄoÚGÆÑJÊ@ˆŠ(ˆˆˆ€ˆˆˆ€¼Ç,¹O¤p:BæK-dŒ9á&ø^69·ï6\"åztAÇjù™~x*˜x]­Ãä´õ<ÌÕUğ;´‘çæ»Ò+±ó•O4ÕíÙî¹ŸîjÕTsuZÍ´Rü7wá._PÙP´ ù*£’s³Ö‚¡½¬xüL_.‰¶Wpí\r?©}ˆb´Q»Öh= 4w;ıü®±;F¼}¦w’<À_\\Tr^ş½4.í‰ŸE®¨æûG;ü«º\\ÏÂB•}MÀÇ3ê­u£÷nîù/¦gæ£G;c$od®?ëYQÌÕ)Í²ÌßıgÉ¡Î®…Ãk\\;ZBÇußgæhúud{ÌwäğµõĞÕV¢\'{ØÛæ× âJ«¬TsO^?wûÂÔÆ­UO6µíÛC~¶–~‰?$ñ°©äUK=j)Çceÿ\0i[6€Ãë2V{Ö‰¡44(¶‡E7sİ÷Zï\'+¢¹Ş,pòºhk‘L:5ŞÓ<\\<ÚŸ³äàcÙõPFE!Ô2İ»¸_ÉbtXáÚÒX¶<Ÿ§Ç3x7¦{¶|Íû–¶ëÔòRŸ\\÷d^æÄ7`u»Iù$ÏÌöŠÕ5dgfÂY³İÙÑø•Ó—œä\\L‚œæë\\8œVî7á[áPŞ*ÈÊŠÑ â«ˆ(*ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆ)dÂ5c‚µÔí;B\"u\Zş¼1»Ş‡Ì-dü…ÑÎÌÑÁ~\"6´ø¶Êˆƒ_QÍwîK}Ùe,VZÚhhêºfüLwâiDMuG31}Š‡z6Ã…Aÿ\0ñùšz5,pàD±üÚòˆ®Äzk«3\rlg#b\'q±ÜpÉ~+\'ù«­dÚÊŒ8‡9ã{]Ànß—DØê0èÙwÙK‰ãz\"‚C)Ü²¶2ˆƒ#ZUàDUT@DDÿÙ','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	( \Z%!1!%)+...383,7(-.+\n\n\n\r\Z\Z-% %--++5-/./+7.--1-+---.-7-+-----+-/5-+-.---+02++---7ÿÀ\0\0¨+\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0F\0\0\0\0\0!1AQ\"aq‘±2Rr‚¡ÑB’²ÁÂCbƒáğ#D¢Ò$3cs“ÃÿÄ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0-\0\0\0\0\0\0\0\0!1AQq\"Ba‘ğ2¡ÑáÁñÿÚ\0\0\0?\0î(ˆ€ˆˆˆ€ˆˆ‹MCccäy\rk\Z^ç€rPeEÎ«9Î!ÄEJÛäé%ÀOYhc­â¢?œÚƒ²šÛ#İúB ‹“KÎEoÙe0íWô\n3ùÂÒíÀ=ØOê ìH¸œÜ¸Ò\'eVv(?S\nŒşWé¶²^æÂßÃAİQp	yGXvÕÏİ+›øHPåÒÕmMAícú}¬|H¤ó\\µ/;^óï=Îó*ŒiÌ´xLK¥iÛëO{d`ó*œ«ÑíÛ[L?Ÿü1/œp¶7y(šF°FÒíç 8Ÿ¢£¦åö‹g­]sñy(2ó¥¡Ûşu‡±²&¯•^âIqÌ“rU}=/<Z!»\'{½ØŸù€¡ËÏ~‹C»\"ÍÁ|Úˆ>…—ŸŠêÓÔĞÁúŠ‡7?°RŠCÛ#[úJàÈƒµËÏû¾Í\0ïšşLPæçî«ìRB=ç<ù¹ êRóë¤NÈi›ğ¼ù¹C›­*v:öFšç(ƒÜËÎæ˜wù–v(Çä·|ç\'I>i§Ö±®mØàĞ}­¸iÍ¶#yß±r¥Ğ¹¡Ì‡J6Í+K¸†Şî=Ø¯ü²¬$¾—¥œHÆHßUìkÇc…ÇšÊ­ 4\0\0€¹Ex^u´¾®éZzS;º£aæì>^ép.[é¿J¬@nÆL|00‘qÔ\\\\ï‰¿X¦ÓIŒH_ŠæÖÃnAïòß¦d‚âç%¶ı¥0gkweÜ‚é¦ŠÄ2\'ß\0¸“Ò¾g#²ÙÛ‰à+;ğR$ÒLÀÆbÜ]lÜ]kw\0Ñ—Yâ°úszĞc1»Ù*ÓıŸ%”×µC\\8M;ø|Â´Ò¿«Åe5½JÓ[ÕóTbôõ|şŠƒFHHÄ“`\0$“{Xek\'§{eqcÑÁSÓİ—VÌÎ]œCôq\r..\0\r¦ÆÃ}¾Eyí%£÷’çÚÀY¥»ÌoÚTı\'¥\\Ãm¬{s?Ñkı-İJèG\Z{gÀ*ßiß/¢Íé.êğOHwQ”VXÆˆgx¢¼h˜úüUÆWÉòXİ+¶—X|û‘œãåî»öd^Éñ*V‹ĞĞÉ+#qk½Üç…öŸï¨ì:¹*Nâ|sX3½£âQ®^–\rFê‡Fe„u¥¸É …­‹¤Nyd.£Öhêf™5oÎko‹€6àÚ¼ùñ>%csD½&\ZĞÖ†s|€¯BŠôk$œ\\/Ø3? »×4ú3\\³‘”}÷xJ;ÂãÜ¦¼”Œ˜ßÒ>@w¯¤y±ÑÚš&<úÓ9ÓÃÑgqkC¾%|‘ëE›çMú%Òg¼jcãà‹Æ‡;á_=‰·ç«OkjÙHÓÑ§mİ×,€àÜ?x®y¬A4J®Ö¨\ZÅ]j	úÔÖ¨:Õ]j¢n±SZ¡ëU5¨&kUªµSZ‚^±F®«Â,6Ÿâ±É=%jä”¸’wª.º¹ªÖ5dSm”¤ÈVÃ3òªÀ-´Û¯éÖ°OS~‹roÌö£|Ú1ÇNì’ÌñQdœÉXÉV’Y´ÏuÄ«	BU¤¢«	BU¥@TUYhàÆö3ÚpÛşWAîù¢œèá‰¹>iÛğÄá™ì»<\núfšÆÆFÁf±­cG´X\0¹?6\Z/KnŒüoè´ã\'Ü®+)\"(¢\" \"\"\" \"\"…¦´“) ¦OV(ß!ë°¸¬›õ5rntş`Ñí=)œ&ÛŒôí}òÊ=[\\ù¤–y\rß$•Şó‰qîÍaÖ(ØÓ\Z	:Å]j‰SX‚fµ5Š±5ˆ&kU5ª&µ5Š‰zÕ*ÚY‰Ä‘7¸¶‹+m.s\07µÉZ°õ>OiÍÀ\"-p³„…×#0]´uA†©î‹\\q4]îów<]¤2Ö³\Zv}¡·t†Ñ49À7¤ÖÅŒb2\\‚Öì.³EÈ åÙWh÷æd„COFF°X\\XŞãfØ[&\r¹“ŠIìòKÄôƒ®Ûß\"m X÷¤Ëu1Í§¢3	ÈXn~eH7ä8o*´ĞÒ;”:Ê‚ó–Á±c¶ûj‘¨YSQˆğ†áıTw9T…n¬¬¶å´­%Rë&­{“lÕG?‚ÆJ\n¸ª\" -ÿ\0#)1Ì^FMÔüñZïù@íSCGNWµ­ësÈ\rı½Xî’îÙĞà¥tÄt¦‘ÎøXpë‡¸{Ë×(ô†(¡o«lŒv4\0<”„•@DDD@DDDABmšùC—šÓ«êª»õqâ¢Ëvæï‰wxyAèz6`Ói*?åc¶ÑŒn,ÀìøÙ|Â\n¸“Çtºñ*bV].‚ìJ—TD]Tb¹£z,F×İ_7•H›su2(n´ß&¸8i´°6;©°SñRb¦¶ìø)\"îÈ4“Ø¹§?«¾ôŒQË^íU\\—èk)NÛd½$Z\r±O9†2xd…eLQGœ¯>Ã6¢áäß—®ŸõåM¹ÿ\0Oo_/ïü<ói‰6\0“Àf’Óay¨f~Y-ŒÕ®B&µ­àßÏ}ÔWh:‡çÇ¸®Œq{y9òZ•ï?éª– }£9Ä­ë9316ÀG‡ÕM¿Gñ87åµoä—<ñ8cæ‡”EèæĞ°²åÓ7¸_Ì¨/§§$¿h²ËÂŸ>‹M-Ûij‘d©ÃˆáÙ±cXKtNÙ)áÆæ°}§õ>ºóe¢ñÕC—FVƒ¶îişZä<’¥Ç6#±‚ş;ü—ÑœÕĞa§– ŒæîGqøÌÖHìy½²\"(¢\" \"\"\" \"\"\"Õr§M6Š’¦±û\"‰ÎÚ~Æ7½Å£½çÓ”“¤=¦ñÒ³WÕ­}!îøJçMmÈyVyÜ÷>GœO{œ÷8ísœnâ{I*Öb7:j ,%§hXVÔJ&hÖİdn*M9fİ‡aÜ·g­wºöJîc«\n\"¾8‹¶¢#j±Â=ã¸¬ÌÑ‘¸÷Ÿ$µø´õjÚÛ¬ÍŠù-Ÿì™ĞÛô©ôš	Ù\r¸‘`|Uğí=¡ÛÂãŒ–è×RÒ`ôz?C1£ÏÀ=1<÷loyîR)`›]m×m²ï+f4•cké\\¶÷7énïKÈã3ÖŸ\r7iúvûÏGĞW—>»6#jz|ı¹.÷vØd<ZÁ©õÜ^ıö°c:†XoÖ¸-tÜ¦–øa8\rğ3 }ãö»îµoªpv±Ï7ë7ñ¾ÕÃ^óÍ®¾½ÿ\0Ï£Êâ\"Ù&bgáôş=Ù++¤}ÚÁ…§iÌÖIÍİä­SàhÍÄ¸øª­f“\'÷ØµsU“½zØøH§“–úí‰©\rØCzšš¾0öf×¸w­ç;–Hx­ñ3^Ğå¼Vß,=5O*æµµ‡ºÃÉhêt´9¸÷’ Zç%½ZãcÉ{åqÚUˆ‹zĞÆ\\æ°mq\rñQ^Ï’„Dt\0\ræû\0í\0‰};¢(DC\0ıÜmeø3=æç½qm´P’²–èÂİqm±oƒŒ?5ÜU”Qq_ø‡åTÚ5‡iô™mÀ]±4öœGá³Ë k\\÷5 ¸“°\0.I_!ò»N\ZêÊªÃ{I!ÀèÛÑŒ}Ğ;îƒPŠ—U@Ù…³¥Òf@ãÇ´-e•ÁŠÄÌu…‰Ó|ÚÒÍ½&ıB›K\r;3/¿PyºiŞÏT÷n[Ht›O®Îñcæ·W6¾XeábÉß§İ¾<¤dBÑ0_‡æ¬ı·[.Ç9­ã|-ñÈ-|zF-Ù|EWé;÷ |.\'æ°¶ky2Åÿ\0ŸÃDîyfÅµ/hÇ,ï?­Ø.Vº¯J=÷k‡Ìö•ŒËNzN‘ï=‡óU:^6Ó‹½ÙŸ¢ÕmßõNŞ­m‹rÓQ‹éé^EÜ<M‡iººgÆÏY×ìÈ-]^“‘ûOr‚ë•„c¤uåß¿ñı±¿;ulçÒàdÁ—‡õZÉ´ƒáóXœ75txÙ;o^İ98‰²¦¤ïS\\7Íc,V²Œù#ÍÏ6™JkØoığTt*5ÖVU8mÏ·êºqñ8íÓ$kØè©…U´Ë3+½¤vX¬Â²>¿Ù	n¼ğ±XõFôu\ZQbG”é4ƒ~Ë|¢×“½rq³‚\"+Šwê“ä-¿%é±Íˆì`¹</—–/¨^³“4øa.±&Ga\0m#}¾»Ä.a.áÌş´3Õ‘œ¯\roºËœ»Ü[ğĞV»“Ú;Ñé©àÊì¡ÖØ^syïqq[•@DDD@DDDAÎùñå£hç@Ói*¨D{e?w£ñ¯›ºçŸ”>—¤¥cMã¦ŒËl.ò»ït~\0¼\"‘²ë+bUl XF@‹£bÊÙÙ×àUˆ•â{j#ö¼ÖVÍ¶ßt\'è*Z{TI>ÆÖÅæc{Ş~ FL`qµó¸Q´„LÖ8FÖµ£z.sÚ\\\0ps`ºänµ–x+\Z\0hÕ;nĞs7Ûuk@ÈäsÙ¹]#qÈı\rO z‚0DDìÏyÌd¼Ì±NÂ,1v_%·ÖFs00íŞááJ1‹3•³ğYk£)´kMÿ\0&y+”²ÖT—aá¸NÜ9b\'y¸Ù±xñ[Éäš¶CqbÕ—Ş;ñÃ°µ°‹‹Ş×¶Ûo²ÓâÖ›N÷=>Ê÷¬ÄDF´ØhŞL‡ÓIU#Ë@kË\06ÍÆÄX“`.Õ­ıLÇT!lÏ,$FZ\0ßpsìP¢§Ø¸7\"nonÌ–U­ºó.KRb\"‘î“£9*ù©æª266°†o\"ÙÅ¶+Ï—®’ºcL)5Ñjš]¸q½¯lÆ\\<V‰\\¾òliR‘n¼Îzsny¥7“ü†­­aš±FYŠì!†à8!særZ\nº\'Fù\"x³Ø÷Æáplæ’×Œˆ#%Óù9Ë\ZŠ(#§’D­lšÒ)N7<¹#. 2\\åÌ\'2I\'2Nd“´µ–›\Zã°Æ¶ctjhA,VÙLtk£A]µQAXØ\\CFÒCGi6]w›Í%­¤†×l Lî Û~ñø×5äİ69šNÆãÛ°~g¹wÎe4øu5®Èı[:š,ãn«ÇÀ¬#¦¢\"Š\"\"\" \"\"\" -.´ğ¡¡ª«Ëc-Œò»£ëéOP+~¸oüEé——ÒP6ø\rSøèãØ^~!Ás‰$’I$’Nd“™%Q.ˆ2ÏPçáÄo…¡ƒ©£ ÓÕ9í¦Öcp‹p¹<NA`D$©¼mˆ4;vXœlFÛ\\ö\\ìtD±•WD#a>%dmKÇÛwŞ+ Ú>G¶Íé\r$¼³WŒ:A`ˆ¶Ù7;^÷¸9oYô£¤€S~7I&{p4ñ“…—Ïµí«H¨®äO\Z^_á?Ñ^4Ã÷µ¾~k\\‰Í#gûdûÄıF—Ùà¢Õ¢¼Ò6Ÿ´Ùì»ä«ûB?âğş«T¨œÒiµ5±ñ>PÎÃö‡Ífv›12’&†b¹/2½Øzn.Äa •œUÔ:j9ï}R^,\ri8C]rqØ73ê‡¬©6vDS#}¡â¬y&áI‚ª’Ñ‡Âã…–u€é»!{âíã®ú™%Ä’|‚mTDUkI \r¤€;NÅ¤äü`{÷ÈìİØ~XÊúƒ’\Z3Ñ¨é µ‹cpş7ôŞ>óˆî\\7ÚMYEMk±„HşhÄoÚGÆÑJÊ@ˆŠ(ˆˆˆ€ˆˆˆ€¼Ç,¹O¤p:BæK-dŒ9á&ø^69·ï6\"åztAÇjù™~x*˜x]­Ãä´õ<ÌÕUğ;´‘çæ»Ò+±ó•O4ÕíÙî¹ŸîjÕTsuZÍ´Rü7wá._PÙP´ ù*£’s³Ö‚¡½¬xüL_.‰¶Wpí\r?©}ˆb´Q»Öh= 4w;ıü®±;F¼}¦w’<À_\\Tr^ş½4.í‰ŸE®¨æûG;ü«º\\ÏÂB•}MÀÇ3ê­u£÷nîù/¦gæ£G;c$od®?ëYQÌÕ)Í²ÌßıgÉ¡Î®…Ãk\\;ZBÇußgæhúud{ÌwäğµõĞÕV¢\'{ØÛæ× âJ«¬TsO^?wûÂÔÆ­UO6µíÛC~¶–~‰?$ñ°©äUK=j)Çceÿ\0i[6€Ãë2V{Ö‰¡44(¶‡E7sİ÷Zï\'+¢¹Ş,pòºhk‘L:5ŞÓ<\\<ÚŸ³äàcÙõPFE!Ô2İ»¸_ÉbtXáÚÒX¶<Ÿ§Ç3x7¦{¶|Íû–¶ëÔòRŸ\\÷d^æÄ7`u»Iù$ÏÌöŠÕ5dgfÂY³İÙÑø•Ó—œä\\L‚œæë\\8œVî7á[áPŞ*ÈÊŠÑ â«ˆ(*ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆ)dÂ5c‚µÔí;B\"u\Zş¼1»Ş‡Ì-dü…ÑÎÌÑÁ~\"6´ø¶Êˆƒ_QÍwîK}Ùe,VZÚhhêºfüLwâiDMuG31}Š‡z6Ã…Aÿ\0ñùšz5,pàD±üÚòˆ®Äzk«3\rlg#b\'q±ÜpÉ~+\'ù«­dÚÊŒ8‡9ã{]Ànß—DØê0èÙwÙK‰ãz\"‚C)Ü²¶2ˆƒ#ZUàDUT@DDÿÙ',500,0.3,'1 year warranty is applicable',7,'approved',0,0,''),(18,2,'Surakha E Commerce Pvt Ltd','ELECTRONICS','Mobile','Naughty Ninos Printed Boy\'s Polo Neck T-Shirt','Pantaloons',1700,5,105,100,100,1000,89.5,'ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	( \Z%!1!%)+...383,7(-.+\n\n\n\r\Z\Z-% %--++5-/./+7.--1-+---.-7-+-----+-/5-+-.---+02++---7ÿÀ\0\0¨+\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0F\0\0\0\0\0!1AQ\"aq‘±2Rr‚¡ÑB’²ÁÂCbƒáğ#D¢Ò$3cs“ÃÿÄ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0-\0\0\0\0\0\0\0\0!1AQq\"Ba‘ğ2¡ÑáÁñÿÚ\0\0\0?\0î(ˆ€ˆˆˆ€ˆˆ‹MCccäy\rk\Z^ç€rPeEÎ«9Î!ÄEJÛäé%ÀOYhc­â¢?œÚƒ²šÛ#İúB ‹“KÎEoÙe0íWô\n3ùÂÒíÀ=ØOê ìH¸œÜ¸Ò\'eVv(?S\nŒşWé¶²^æÂßÃAİQp	yGXvÕÏİ+›øHPåÒÕmMAícú}¬|H¤ó\\µ/;^óï=Îó*ŒiÌ´xLK¥iÛëO{d`ó*œ«ÑíÛ[L?Ÿü1/œp¶7y(šF°FÒíç 8Ÿ¢£¦åö‹g­]sñy(2ó¥¡Ûşu‡±²&¯•^âIqÌ“rU}=/<Z!»\'{½ØŸù€¡ËÏ~‹C»\"ÍÁ|Úˆ>…—ŸŠêÓÔĞÁúŠ‡7?°RŠCÛ#[úJàÈƒµËÏû¾Í\0ïšşLPæçî«ìRB=ç<ù¹ êRóë¤NÈi›ğ¼ù¹C›­*v:öFšç(ƒÜËÎæ˜wù–v(Çä·|ç\'I>i§Ö±®mØàĞ}­¸iÍ¶#yß±r¥Ğ¹¡Ì‡J6Í+K¸†Şî=Ø¯ü²¬$¾—¥œHÆHßUìkÇc…ÇšÊ­ 4\0\0€¹Ex^u´¾®éZzS;º£aæì>^ép.[é¿J¬@nÆL|00‘qÔ\\\\ï‰¿X¦ÓIŒH_ŠæÖÃnAïòß¦d‚âç%¶ı¥0gkweÜ‚é¦ŠÄ2\'ß\0¸“Ò¾g#²ÙÛ‰à+;ğR$ÒLÀÆbÜ]lÜ]kw\0Ñ—Yâ°úszĞc1»Ù*ÓıŸ%”×µC\\8M;ø|Â´Ò¿«Åe5½JÓ[ÕóTbôõ|şŠƒFHHÄ“`\0$“{Xek\'§{eqcÑÁSÓİ—VÌÎ]œCôq\r..\0\r¦ÆÃ}¾Eyí%£÷’çÚÀY¥»ÌoÚTı\'¥\\Ãm¬{s?Ñkı-İJèG\Z{gÀ*ßiß/¢Íé.êğOHwQ”VXÆˆgx¢¼h˜úüUÆWÉòXİ+¶—X|û‘œãåî»öd^Éñ*V‹ĞĞÉ+#qk½Üç…öŸï¨ì:¹*Nâ|sX3½£âQ®^–\rFê‡Fe„u¥¸É …­‹¤Nyd.£Öhêf™5oÎko‹€6àÚ¼ùñ>%csD½&\ZĞÖ†s|€¯BŠôk$œ\\/Ø3? »×4ú3\\³‘”}÷xJ;ÂãÜ¦¼”Œ˜ßÒ>@w¯¤y±ÑÚš&<úÓ9ÓÃÑgqkC¾%|‘ëE›çMú%Òg¼jcãà‹Æ‡;á_=‰·ç«OkjÙHÓÑ§mİ×,€àÜ?x®y¬A4J®Ö¨\ZÅ]j	úÔÖ¨:Õ]j¢n±SZ¡ëU5¨&kUªµSZ‚^±F®«Â,6Ÿâ±É=%jä”¸’wª.º¹ªÖ5dSm”¤ÈVÃ3òªÀ-´Û¯éÖ°OS~‹roÌö£|Ú1ÇNì’ÌñQdœÉXÉV’Y´ÏuÄ«	BU¤¢«	BU¥@TUYhàÆö3ÚpÛşWAîù¢œèá‰¹>iÛğÄá™ì»<\núfšÆÆFÁf±­cG´X\0¹?6\Z/KnŒüoè´ã\'Ü®+)\"(¢\" \"\"\" \"\"…¦´“) ¦OV(ß!ë°¸¬›õ5rntş`Ñí=)œ&ÛŒôí}òÊ=[\\ù¤–y\rß$•Şó‰qîÍaÖ(ØÓ\Z	:Å]j‰SX‚fµ5Š±5ˆ&kU5ª&µ5Š‰zÕ*ÚY‰Ä‘7¸¶‹+m.s\07µÉZ°õ>OiÍÀ\"-p³„…×#0]´uA†©î‹\\q4]îów<]¤2Ö³\Zv}¡·t†Ñ49À7¤ÖÅŒb2\\‚Öì.³EÈ åÙWh÷æd„COFF°X\\XŞãfØ[&\r¹“ŠIìòKÄôƒ®Ûß\"m X÷¤Ëu1Í§¢3	ÈXn~eH7ä8o*´ĞÒ;”:Ê‚ó–Á±c¶ûj‘¨YSQˆğ†áıTw9T…n¬¬¶å´­%Rë&­{“lÕG?‚ÆJ\n¸ª\" -ÿ\0#)1Ì^FMÔüñZïù@íSCGNWµ­ësÈ\rı½Xî’îÙĞà¥tÄt¦‘ÎøXpë‡¸{Ë×(ô†(¡o«lŒv4\0<”„•@DDD@DDDABmšùC—šÓ«êª»õqâ¢Ëvæï‰wxyAèz6`Ói*?åc¶ÑŒn,ÀìøÙ|Â\n¸“Çtºñ*bV].‚ìJ—TD]Tb¹£z,F×İ_7•H›su2(n´ß&¸8i´°6;©°SñRb¦¶ìø)\"îÈ4“Ø¹§?«¾ôŒQË^íU\\—èk)NÛd½$Z\r±O9†2xd…eLQGœ¯>Ã6¢áäß—®ŸõåM¹ÿ\0Oo_/ïü<ói‰6\0“Àf’Óay¨f~Y-ŒÕ®B&µ­àßÏ}ÔWh:‡çÇ¸®Œq{y9òZ•ï?éª– }£9Ä­ë9316ÀG‡ÕM¿Gñ87åµoä—<ñ8cæ‡”EèæĞ°²åÓ7¸_Ì¨/§§$¿h²ËÂŸ>‹M-Ûij‘d©ÃˆáÙ±cXKtNÙ)áÆæ°}§õ>ºóe¢ñÕC—FVƒ¶îişZä<’¥Ç6#±‚ş;ü—ÑœÕĞa§– ŒæîGqøÌÖHìy½²\"(¢\" \"\"\" \"\"\"Õr§M6Š’¦±û\"‰ÎÚ~Æ7½Å£½çÓ”“¤=¦ñÒ³WÕ­}!îøJçMmÈyVyÜ÷>GœO{œ÷8ísœnâ{I*Öb7:j ,%§hXVÔJ&hÖİdn*M9fİ‡aÜ·g­wºöJîc«\n\"¾8‹¶¢#j±Â=ã¸¬ÌÑ‘¸÷Ÿ$µø´õjÚÛ¬ÍŠù-Ÿì™ĞÛô©ôš	Ù\r¸‘`|Uğí=¡ÛÂãŒ–è×RÒ`ôz?C1£ÏÀ=1<÷loyîR)`›]m×m²ï+f4•cké\\¶÷7énïKÈã3ÖŸ\r7iúvûÏGĞW—>»6#jz|ı¹.÷vØd<ZÁ©õÜ^ıö°c:†XoÖ¸-tÜ¦–øa8\rğ3 }ãö»îµoªpv±Ï7ë7ñ¾ÕÃ^óÍ®¾½ÿ\0Ï£Êâ\"Ù&bgáôş=Ù++¤}ÚÁ…§iÌÖIÍİä­SàhÍÄ¸øª­f“\'÷ØµsU“½zØøH§“–úí‰©\rØCzšš¾0öf×¸w­ç;–Hx­ñ3^Ğå¼Vß,=5O*æµµ‡ºÃÉhêt´9¸÷’ Zç%½ZãcÉ{åqÚUˆ‹zĞÆ\\æ°mq\rñQ^Ï’„Dt\0\ræû\0í\0‰};¢(DC\0ıÜmeø3=æç½qm´P’²–èÂİqm±oƒŒ?5ÜU”Qq_ø‡åTÚ5‡iô™mÀ]±4öœGá³Ë k\\÷5 ¸“°\0.I_!ò»N\ZêÊªÃ{I!ÀèÛÑŒ}Ğ;îƒPŠ—U@Ù…³¥Òf@ãÇ´-e•ÁŠÄÌu…‰Ó|ÚÒÍ½&ıB›K\r;3/¿PyºiŞÏT÷n[Ht›O®Îñcæ·W6¾XeábÉß§İ¾<¤dBÑ0_‡æ¬ı·[.Ç9­ã|-ñÈ-|zF-Ù|EWé;÷ |.\'æ°¶ky2Åÿ\0ŸÃDîyfÅµ/hÇ,ï?­Ø.Vº¯J=÷k‡Ìö•ŒËNzN‘ï=‡óU:^6Ó‹½ÙŸ¢ÕmßõNŞ­m‹rÓQ‹éé^EÜ<M‡iººgÆÏY×ìÈ-]^“‘ûOr‚ë•„c¤uåß¿ñı±¿;ulçÒàdÁ—‡õZÉ´ƒáóXœ75txÙ;o^İ98‰²¦¤ïS\\7Íc,V²Œù#ÍÏ6™JkØoığTt*5ÖVU8mÏ·êºqñ8íÓ$kØè©…U´Ë3+½¤vX¬Â²>¿Ù	n¼ğ±XõFôu\ZQbG”é4ƒ~Ë|¢×“½rq³‚\"+Šwê“ä-¿%é±Íˆì`¹</—–/¨^³“4øa.±&Ga\0m#}¾»Ä.a.áÌş´3Õ‘œ¯\roºËœ»Ü[ğĞV»“Ú;Ñé©àÊì¡ÖØ^syïqq[•@DDD@DDDAÎùñå£hç@Ói*¨D{e?w£ñ¯›ºçŸ”>—¤¥cMã¦ŒËl.ò»ït~\0¼\"‘²ë+bUl XF@‹£bÊÙÙ×àUˆ•â{j#ö¼ÖVÍ¶ßt\'è*Z{TI>ÆÖÅæc{Ş~ FL`qµó¸Q´„LÖ8FÖµ£z.sÚ\\\0ps`ºänµ–x+\Z\0hÕ;nĞs7Ûuk@ÈäsÙ¹]#qÈı\rO z‚0DDìÏyÌd¼Ì±NÂ,1v_%·ÖFs00íŞááJ1‹3•³ğYk£)´kMÿ\0&y+”²ÖT—aá¸NÜ9b\'y¸Ù±xñ[Éäš¶CqbÕ—Ş;ñÃ°µ°‹‹Ş×¶Ûo²ÓâÖ›N÷=>Ê÷¬ÄDF´ØhŞL‡ÓIU#Ë@kË\06ÍÆÄX“`.Õ­ıLÇT!lÏ,$FZ\0ßpsìP¢§Ø¸7\"nonÌ–U­ºó.KRb\"‘î“£9*ù©æª266°†o\"ÙÅ¶+Ï—®’ºcL)5Ñjš]¸q½¯lÆ\\<V‰\\¾òliR‘n¼Îzsny¥7“ü†­­aš±FYŠì!†à8!særZ\nº\'Fù\"x³Ø÷Æáplæ’×Œˆ#%Óù9Ë\ZŠ(#§’D­lšÒ)N7<¹#. 2\\åÌ\'2I\'2Nd“´µ–›\Zã°Æ¶ctjhA,VÙLtk£A]µQAXØ\\CFÒCGi6]w›Í%­¤†×l Lî Û~ñø×5äİ69šNÆãÛ°~g¹wÎe4øu5®Èı[:š,ãn«ÇÀ¬#¦¢\"Š\"\"\" \"\"\" -.´ğ¡¡ª«Ëc-Œò»£ëéOP+~¸oüEé——ÒP6ø\rSøèãØ^~!Ás‰$’I$’Nd“™%Q.ˆ2ÏPçáÄo…¡ƒ©£ ÓÕ9í¦Öcp‹p¹<NA`D$©¼mˆ4;vXœlFÛ\\ö\\ìtD±•WD#a>%dmKÇÛwŞ+ Ú>G¶Íé\r$¼³WŒ:A`ˆ¶Ù7;^÷¸9oYô£¤€S~7I&{p4ñ“…—Ïµí«H¨®äO\Z^_á?Ñ^4Ã÷µ¾~k\\‰Í#gûdûÄıF—Ùà¢Õ¢¼Ò6Ÿ´Ùì»ä«ûB?âğş«T¨œÒiµ5±ñ>PÎÃö‡Ífv›12’&†b¹/2½Øzn.Äa •œUÔ:j9ï}R^,\ri8C]rqØ73ê‡¬©6vDS#}¡â¬y&áI‚ª’Ñ‡Âã…–u€é»!{âíã®ú™%Ä’|‚mTDUkI \r¤€;NÅ¤äü`{÷ÈìİØ~XÊúƒ’\Z3Ñ¨é µ‹cpş7ôŞ>óˆî\\7ÚMYEMk±„HşhÄoÚGÆÑJÊ@ˆŠ(ˆˆˆ€ˆˆˆ€¼Ç,¹O¤p:BæK-dŒ9á&ø^69·ï6\"åztAÇjù™~x*˜x]­Ãä´õ<ÌÕUğ;´‘çæ»Ò+±ó•O4ÕíÙî¹ŸîjÕTsuZÍ´Rü7wá._PÙP´ ù*£’s³Ö‚¡½¬xüL_.‰¶Wpí\r?©}ˆb´Q»Öh= 4w;ıü®±;F¼}¦w’<À_\\Tr^ş½4.í‰ŸE®¨æûG;ü«º\\ÏÂB•}MÀÇ3ê­u£÷nîù/¦gæ£G;c$od®?ëYQÌÕ)Í²ÌßıgÉ¡Î®…Ãk\\;ZBÇußgæhúud{ÌwäğµõĞÕV¢\'{ØÛæ× âJ«¬TsO^?wûÂÔÆ­UO6µíÛC~¶–~‰?$ñ°©äUK=j)Çceÿ\0i[6€Ãë2V{Ö‰¡44(¶‡E7sİ÷Zï\'+¢¹Ş,pòºhk‘L:5ŞÓ<\\<ÚŸ³äàcÙõPFE!Ô2İ»¸_ÉbtXáÚÒX¶<Ÿ§Ç3x7¦{¶|Íû–¶ëÔòRŸ\\÷d^æÄ7`u»Iù$ÏÌöŠÕ5dgfÂY³İÙÑø•Ó—œä\\L‚œæë\\8œVî7á[áPŞ*ÈÊŠÑ â«ˆ(*ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆ)dÂ5c‚µÔí;B\"u\Zş¼1»Ş‡Ì-dü…ÑÎÌÑÁ~\"6´ø¶Êˆƒ_QÍwîK}Ùe,VZÚhhêºfüLwâiDMuG31}Š‡z6Ã…Aÿ\0ñùšz5,pàD±üÚòˆ®Äzk«3\rlg#b\'q±ÜpÉ~+\'ù«­dÚÊŒ8‡9ã{]Ànß—DØê0èÙwÙK‰ãz\"‚C)Ü²¶2ˆƒ#ZUàDUT@DDÿÙ','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	( \Z%!1!%)+...383,7(-.+\n\n\n\r\Z\Z-% %--++5-/./+7.--1-+---.-7-+-----+-/5-+-.---+02++---7ÿÀ\0\0¨+\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0F\0\0\0\0\0!1AQ\"aq‘±2Rr‚¡ÑB’²ÁÂCbƒáğ#D¢Ò$3cs“ÃÿÄ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0-\0\0\0\0\0\0\0\0!1AQq\"Ba‘ğ2¡ÑáÁñÿÚ\0\0\0?\0î(ˆ€ˆˆˆ€ˆˆ‹MCccäy\rk\Z^ç€rPeEÎ«9Î!ÄEJÛäé%ÀOYhc­â¢?œÚƒ²šÛ#İúB ‹“KÎEoÙe0íWô\n3ùÂÒíÀ=ØOê ìH¸œÜ¸Ò\'eVv(?S\nŒşWé¶²^æÂßÃAİQp	yGXvÕÏİ+›øHPåÒÕmMAícú}¬|H¤ó\\µ/;^óï=Îó*ŒiÌ´xLK¥iÛëO{d`ó*œ«ÑíÛ[L?Ÿü1/œp¶7y(šF°FÒíç 8Ÿ¢£¦åö‹g­]sñy(2ó¥¡Ûşu‡±²&¯•^âIqÌ“rU}=/<Z!»\'{½ØŸù€¡ËÏ~‹C»\"ÍÁ|Úˆ>…—ŸŠêÓÔĞÁúŠ‡7?°RŠCÛ#[úJàÈƒµËÏû¾Í\0ïšşLPæçî«ìRB=ç<ù¹ êRóë¤NÈi›ğ¼ù¹C›­*v:öFšç(ƒÜËÎæ˜wù–v(Çä·|ç\'I>i§Ö±®mØàĞ}­¸iÍ¶#yß±r¥Ğ¹¡Ì‡J6Í+K¸†Şî=Ø¯ü²¬$¾—¥œHÆHßUìkÇc…ÇšÊ­ 4\0\0€¹Ex^u´¾®éZzS;º£aæì>^ép.[é¿J¬@nÆL|00‘qÔ\\\\ï‰¿X¦ÓIŒH_ŠæÖÃnAïòß¦d‚âç%¶ı¥0gkweÜ‚é¦ŠÄ2\'ß\0¸“Ò¾g#²ÙÛ‰à+;ğR$ÒLÀÆbÜ]lÜ]kw\0Ñ—Yâ°úszĞc1»Ù*ÓıŸ%”×µC\\8M;ø|Â´Ò¿«Åe5½JÓ[ÕóTbôõ|şŠƒFHHÄ“`\0$“{Xek\'§{eqcÑÁSÓİ—VÌÎ]œCôq\r..\0\r¦ÆÃ}¾Eyí%£÷’çÚÀY¥»ÌoÚTı\'¥\\Ãm¬{s?Ñkı-İJèG\Z{gÀ*ßiß/¢Íé.êğOHwQ”VXÆˆgx¢¼h˜úüUÆWÉòXİ+¶—X|û‘œãåî»öd^Éñ*V‹ĞĞÉ+#qk½Üç…öŸï¨ì:¹*Nâ|sX3½£âQ®^–\rFê‡Fe„u¥¸É …­‹¤Nyd.£Öhêf™5oÎko‹€6àÚ¼ùñ>%csD½&\ZĞÖ†s|€¯BŠôk$œ\\/Ø3? »×4ú3\\³‘”}÷xJ;ÂãÜ¦¼”Œ˜ßÒ>@w¯¤y±ÑÚš&<úÓ9ÓÃÑgqkC¾%|‘ëE›çMú%Òg¼jcãà‹Æ‡;á_=‰·ç«OkjÙHÓÑ§mİ×,€àÜ?x®y¬A4J®Ö¨\ZÅ]j	úÔÖ¨:Õ]j¢n±SZ¡ëU5¨&kUªµSZ‚^±F®«Â,6Ÿâ±É=%jä”¸’wª.º¹ªÖ5dSm”¤ÈVÃ3òªÀ-´Û¯éÖ°OS~‹roÌö£|Ú1ÇNì’ÌñQdœÉXÉV’Y´ÏuÄ«	BU¤¢«	BU¥@TUYhàÆö3ÚpÛşWAîù¢œèá‰¹>iÛğÄá™ì»<\núfšÆÆFÁf±­cG´X\0¹?6\Z/KnŒüoè´ã\'Ü®+)\"(¢\" \"\"\" \"\"…¦´“) ¦OV(ß!ë°¸¬›õ5rntş`Ñí=)œ&ÛŒôí}òÊ=[\\ù¤–y\rß$•Şó‰qîÍaÖ(ØÓ\Z	:Å]j‰SX‚fµ5Š±5ˆ&kU5ª&µ5Š‰zÕ*ÚY‰Ä‘7¸¶‹+m.s\07µÉZ°õ>OiÍÀ\"-p³„…×#0]´uA†©î‹\\q4]îów<]¤2Ö³\Zv}¡·t†Ñ49À7¤ÖÅŒb2\\‚Öì.³EÈ åÙWh÷æd„COFF°X\\XŞãfØ[&\r¹“ŠIìòKÄôƒ®Ûß\"m X÷¤Ëu1Í§¢3	ÈXn~eH7ä8o*´ĞÒ;”:Ê‚ó–Á±c¶ûj‘¨YSQˆğ†áıTw9T…n¬¬¶å´­%Rë&­{“lÕG?‚ÆJ\n¸ª\" -ÿ\0#)1Ì^FMÔüñZïù@íSCGNWµ­ësÈ\rı½Xî’îÙĞà¥tÄt¦‘ÎøXpë‡¸{Ë×(ô†(¡o«lŒv4\0<”„•@DDD@DDDABmšùC—šÓ«êª»õqâ¢Ëvæï‰wxyAèz6`Ói*?åc¶ÑŒn,ÀìøÙ|Â\n¸“Çtºñ*bV].‚ìJ—TD]Tb¹£z,F×İ_7•H›su2(n´ß&¸8i´°6;©°SñRb¦¶ìø)\"îÈ4“Ø¹§?«¾ôŒQË^íU\\—èk)NÛd½$Z\r±O9†2xd…eLQGœ¯>Ã6¢áäß—®ŸõåM¹ÿ\0Oo_/ïü<ói‰6\0“Àf’Óay¨f~Y-ŒÕ®B&µ­àßÏ}ÔWh:‡çÇ¸®Œq{y9òZ•ï?éª– }£9Ä­ë9316ÀG‡ÕM¿Gñ87åµoä—<ñ8cæ‡”EèæĞ°²åÓ7¸_Ì¨/§§$¿h²ËÂŸ>‹M-Ûij‘d©ÃˆáÙ±cXKtNÙ)áÆæ°}§õ>ºóe¢ñÕC—FVƒ¶îişZä<’¥Ç6#±‚ş;ü—ÑœÕĞa§– ŒæîGqøÌÖHìy½²\"(¢\" \"\"\" \"\"\"Õr§M6Š’¦±û\"‰ÎÚ~Æ7½Å£½çÓ”“¤=¦ñÒ³WÕ­}!îøJçMmÈyVyÜ÷>GœO{œ÷8ísœnâ{I*Öb7:j ,%§hXVÔJ&hÖİdn*M9fİ‡aÜ·g­wºöJîc«\n\"¾8‹¶¢#j±Â=ã¸¬ÌÑ‘¸÷Ÿ$µø´õjÚÛ¬ÍŠù-Ÿì™ĞÛô©ôš	Ù\r¸‘`|Uğí=¡ÛÂãŒ–è×RÒ`ôz?C1£ÏÀ=1<÷loyîR)`›]m×m²ï+f4•cké\\¶÷7énïKÈã3ÖŸ\r7iúvûÏGĞW—>»6#jz|ı¹.÷vØd<ZÁ©õÜ^ıö°c:†XoÖ¸-tÜ¦–øa8\rğ3 }ãö»îµoªpv±Ï7ë7ñ¾ÕÃ^óÍ®¾½ÿ\0Ï£Êâ\"Ù&bgáôş=Ù++¤}ÚÁ…§iÌÖIÍİä­SàhÍÄ¸øª­f“\'÷ØµsU“½zØøH§“–úí‰©\rØCzšš¾0öf×¸w­ç;–Hx­ñ3^Ğå¼Vß,=5O*æµµ‡ºÃÉhêt´9¸÷’ Zç%½ZãcÉ{åqÚUˆ‹zĞÆ\\æ°mq\rñQ^Ï’„Dt\0\ræû\0í\0‰};¢(DC\0ıÜmeø3=æç½qm´P’²–èÂİqm±oƒŒ?5ÜU”Qq_ø‡åTÚ5‡iô™mÀ]±4öœGá³Ë k\\÷5 ¸“°\0.I_!ò»N\ZêÊªÃ{I!ÀèÛÑŒ}Ğ;îƒPŠ—U@Ù…³¥Òf@ãÇ´-e•ÁŠÄÌu…‰Ó|ÚÒÍ½&ıB›K\r;3/¿PyºiŞÏT÷n[Ht›O®Îñcæ·W6¾XeábÉß§İ¾<¤dBÑ0_‡æ¬ı·[.Ç9­ã|-ñÈ-|zF-Ù|EWé;÷ |.\'æ°¶ky2Åÿ\0ŸÃDîyfÅµ/hÇ,ï?­Ø.Vº¯J=÷k‡Ìö•ŒËNzN‘ï=‡óU:^6Ó‹½ÙŸ¢ÕmßõNŞ­m‹rÓQ‹éé^EÜ<M‡iººgÆÏY×ìÈ-]^“‘ûOr‚ë•„c¤uåß¿ñı±¿;ulçÒàdÁ—‡õZÉ´ƒáóXœ75txÙ;o^İ98‰²¦¤ïS\\7Íc,V²Œù#ÍÏ6™JkØoığTt*5ÖVU8mÏ·êºqñ8íÓ$kØè©…U´Ë3+½¤vX¬Â²>¿Ù	n¼ğ±XõFôu\ZQbG”é4ƒ~Ë|¢×“½rq³‚\"+Šwê“ä-¿%é±Íˆì`¹</—–/¨^³“4øa.±&Ga\0m#}¾»Ä.a.áÌş´3Õ‘œ¯\roºËœ»Ü[ğĞV»“Ú;Ñé©àÊì¡ÖØ^syïqq[•@DDD@DDDAÎùñå£hç@Ói*¨D{e?w£ñ¯›ºçŸ”>—¤¥cMã¦ŒËl.ò»ït~\0¼\"‘²ë+bUl XF@‹£bÊÙÙ×àUˆ•â{j#ö¼ÖVÍ¶ßt\'è*Z{TI>ÆÖÅæc{Ş~ FL`qµó¸Q´„LÖ8FÖµ£z.sÚ\\\0ps`ºänµ–x+\Z\0hÕ;nĞs7Ûuk@ÈäsÙ¹]#qÈı\rO z‚0DDìÏyÌd¼Ì±NÂ,1v_%·ÖFs00íŞááJ1‹3•³ğYk£)´kMÿ\0&y+”²ÖT—aá¸NÜ9b\'y¸Ù±xñ[Éäš¶CqbÕ—Ş;ñÃ°µ°‹‹Ş×¶Ûo²ÓâÖ›N÷=>Ê÷¬ÄDF´ØhŞL‡ÓIU#Ë@kË\06ÍÆÄX“`.Õ­ıLÇT!lÏ,$FZ\0ßpsìP¢§Ø¸7\"nonÌ–U­ºó.KRb\"‘î“£9*ù©æª266°†o\"ÙÅ¶+Ï—®’ºcL)5Ñjš]¸q½¯lÆ\\<V‰\\¾òliR‘n¼Îzsny¥7“ü†­­aš±FYŠì!†à8!særZ\nº\'Fù\"x³Ø÷Æáplæ’×Œˆ#%Óù9Ë\ZŠ(#§’D­lšÒ)N7<¹#. 2\\åÌ\'2I\'2Nd“´µ–›\Zã°Æ¶ctjhA,VÙLtk£A]µQAXØ\\CFÒCGi6]w›Í%­¤†×l Lî Û~ñø×5äİ69šNÆãÛ°~g¹wÎe4øu5®Èı[:š,ãn«ÇÀ¬#¦¢\"Š\"\"\" \"\"\" -.´ğ¡¡ª«Ëc-Œò»£ëéOP+~¸oüEé——ÒP6ø\rSøèãØ^~!Ás‰$’I$’Nd“™%Q.ˆ2ÏPçáÄo…¡ƒ©£ ÓÕ9í¦Öcp‹p¹<NA`D$©¼mˆ4;vXœlFÛ\\ö\\ìtD±•WD#a>%dmKÇÛwŞ+ Ú>G¶Íé\r$¼³WŒ:A`ˆ¶Ù7;^÷¸9oYô£¤€S~7I&{p4ñ“…—Ïµí«H¨®äO\Z^_á?Ñ^4Ã÷µ¾~k\\‰Í#gûdûÄıF—Ùà¢Õ¢¼Ò6Ÿ´Ùì»ä«ûB?âğş«T¨œÒiµ5±ñ>PÎÃö‡Ífv›12’&†b¹/2½Øzn.Äa •œUÔ:j9ï}R^,\ri8C]rqØ73ê‡¬©6vDS#}¡â¬y&áI‚ª’Ñ‡Âã…–u€é»!{âíã®ú™%Ä’|‚mTDUkI \r¤€;NÅ¤äü`{÷ÈìİØ~XÊúƒ’\Z3Ñ¨é µ‹cpş7ôŞ>óˆî\\7ÚMYEMk±„HşhÄoÚGÆÑJÊ@ˆŠ(ˆˆˆ€ˆˆˆ€¼Ç,¹O¤p:BæK-dŒ9á&ø^69·ï6\"åztAÇjù™~x*˜x]­Ãä´õ<ÌÕUğ;´‘çæ»Ò+±ó•O4ÕíÙî¹ŸîjÕTsuZÍ´Rü7wá._PÙP´ ù*£’s³Ö‚¡½¬xüL_.‰¶Wpí\r?©}ˆb´Q»Öh= 4w;ıü®±;F¼}¦w’<À_\\Tr^ş½4.í‰ŸE®¨æûG;ü«º\\ÏÂB•}MÀÇ3ê­u£÷nîù/¦gæ£G;c$od®?ëYQÌÕ)Í²ÌßıgÉ¡Î®…Ãk\\;ZBÇußgæhúud{ÌwäğµõĞÕV¢\'{ØÛæ× âJ«¬TsO^?wûÂÔÆ­UO6µíÛC~¶–~‰?$ñ°©äUK=j)Çceÿ\0i[6€Ãë2V{Ö‰¡44(¶‡E7sİ÷Zï\'+¢¹Ş,pòºhk‘L:5ŞÓ<\\<ÚŸ³äàcÙõPFE!Ô2İ»¸_ÉbtXáÚÒX¶<Ÿ§Ç3x7¦{¶|Íû–¶ëÔòRŸ\\÷d^æÄ7`u»Iù$ÏÌöŠÕ5dgfÂY³İÙÑø•Ó—œä\\L‚œæë\\8œVî7á[áPŞ*ÈÊŠÑ â«ˆ(*ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆ)dÂ5c‚µÔí;B\"u\Zş¼1»Ş‡Ì-dü…ÑÎÌÑÁ~\"6´ø¶Êˆƒ_QÍwîK}Ùe,VZÚhhêºfüLwâiDMuG31}Š‡z6Ã…Aÿ\0ñùšz5,pàD±üÚòˆ®Äzk«3\rlg#b\'q±ÜpÉ~+\'ù«­dÚÊŒ8‡9ã{]Ànß—DØê0èÙwÙK‰ãz\"‚C)Ü²¶2ˆƒ#ZUàDUT@DDÿÙ','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	( \Z%!1!%)+...383,7(-.+\n\n\n\r\Z\Z-% %--++5-/./+7.--1-+---.-7-+-----+-/5-+-.---+02++---7ÿÀ\0\0¨+\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0F\0\0\0\0\0!1AQ\"aq‘±2Rr‚¡ÑB’²ÁÂCbƒáğ#D¢Ò$3cs“ÃÿÄ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0-\0\0\0\0\0\0\0\0!1AQq\"Ba‘ğ2¡ÑáÁñÿÚ\0\0\0?\0î(ˆ€ˆˆˆ€ˆˆ‹MCccäy\rk\Z^ç€rPeEÎ«9Î!ÄEJÛäé%ÀOYhc­â¢?œÚƒ²šÛ#İúB ‹“KÎEoÙe0íWô\n3ùÂÒíÀ=ØOê ìH¸œÜ¸Ò\'eVv(?S\nŒşWé¶²^æÂßÃAİQp	yGXvÕÏİ+›øHPåÒÕmMAícú}¬|H¤ó\\µ/;^óï=Îó*ŒiÌ´xLK¥iÛëO{d`ó*œ«ÑíÛ[L?Ÿü1/œp¶7y(šF°FÒíç 8Ÿ¢£¦åö‹g­]sñy(2ó¥¡Ûşu‡±²&¯•^âIqÌ“rU}=/<Z!»\'{½ØŸù€¡ËÏ~‹C»\"ÍÁ|Úˆ>…—ŸŠêÓÔĞÁúŠ‡7?°RŠCÛ#[úJàÈƒµËÏû¾Í\0ïšşLPæçî«ìRB=ç<ù¹ êRóë¤NÈi›ğ¼ù¹C›­*v:öFšç(ƒÜËÎæ˜wù–v(Çä·|ç\'I>i§Ö±®mØàĞ}­¸iÍ¶#yß±r¥Ğ¹¡Ì‡J6Í+K¸†Şî=Ø¯ü²¬$¾—¥œHÆHßUìkÇc…ÇšÊ­ 4\0\0€¹Ex^u´¾®éZzS;º£aæì>^ép.[é¿J¬@nÆL|00‘qÔ\\\\ï‰¿X¦ÓIŒH_ŠæÖÃnAïòß¦d‚âç%¶ı¥0gkweÜ‚é¦ŠÄ2\'ß\0¸“Ò¾g#²ÙÛ‰à+;ğR$ÒLÀÆbÜ]lÜ]kw\0Ñ—Yâ°úszĞc1»Ù*ÓıŸ%”×µC\\8M;ø|Â´Ò¿«Åe5½JÓ[ÕóTbôõ|şŠƒFHHÄ“`\0$“{Xek\'§{eqcÑÁSÓİ—VÌÎ]œCôq\r..\0\r¦ÆÃ}¾Eyí%£÷’çÚÀY¥»ÌoÚTı\'¥\\Ãm¬{s?Ñkı-İJèG\Z{gÀ*ßiß/¢Íé.êğOHwQ”VXÆˆgx¢¼h˜úüUÆWÉòXİ+¶—X|û‘œãåî»öd^Éñ*V‹ĞĞÉ+#qk½Üç…öŸï¨ì:¹*Nâ|sX3½£âQ®^–\rFê‡Fe„u¥¸É …­‹¤Nyd.£Öhêf™5oÎko‹€6àÚ¼ùñ>%csD½&\ZĞÖ†s|€¯BŠôk$œ\\/Ø3? »×4ú3\\³‘”}÷xJ;ÂãÜ¦¼”Œ˜ßÒ>@w¯¤y±ÑÚš&<úÓ9ÓÃÑgqkC¾%|‘ëE›çMú%Òg¼jcãà‹Æ‡;á_=‰·ç«OkjÙHÓÑ§mİ×,€àÜ?x®y¬A4J®Ö¨\ZÅ]j	úÔÖ¨:Õ]j¢n±SZ¡ëU5¨&kUªµSZ‚^±F®«Â,6Ÿâ±É=%jä”¸’wª.º¹ªÖ5dSm”¤ÈVÃ3òªÀ-´Û¯éÖ°OS~‹roÌö£|Ú1ÇNì’ÌñQdœÉXÉV’Y´ÏuÄ«	BU¤¢«	BU¥@TUYhàÆö3ÚpÛşWAîù¢œèá‰¹>iÛğÄá™ì»<\núfšÆÆFÁf±­cG´X\0¹?6\Z/KnŒüoè´ã\'Ü®+)\"(¢\" \"\"\" \"\"…¦´“) ¦OV(ß!ë°¸¬›õ5rntş`Ñí=)œ&ÛŒôí}òÊ=[\\ù¤–y\rß$•Şó‰qîÍaÖ(ØÓ\Z	:Å]j‰SX‚fµ5Š±5ˆ&kU5ª&µ5Š‰zÕ*ÚY‰Ä‘7¸¶‹+m.s\07µÉZ°õ>OiÍÀ\"-p³„…×#0]´uA†©î‹\\q4]îów<]¤2Ö³\Zv}¡·t†Ñ49À7¤ÖÅŒb2\\‚Öì.³EÈ åÙWh÷æd„COFF°X\\XŞãfØ[&\r¹“ŠIìòKÄôƒ®Ûß\"m X÷¤Ëu1Í§¢3	ÈXn~eH7ä8o*´ĞÒ;”:Ê‚ó–Á±c¶ûj‘¨YSQˆğ†áıTw9T…n¬¬¶å´­%Rë&­{“lÕG?‚ÆJ\n¸ª\" -ÿ\0#)1Ì^FMÔüñZïù@íSCGNWµ­ësÈ\rı½Xî’îÙĞà¥tÄt¦‘ÎøXpë‡¸{Ë×(ô†(¡o«lŒv4\0<”„•@DDD@DDDABmšùC—šÓ«êª»õqâ¢Ëvæï‰wxyAèz6`Ói*?åc¶ÑŒn,ÀìøÙ|Â\n¸“Çtºñ*bV].‚ìJ—TD]Tb¹£z,F×İ_7•H›su2(n´ß&¸8i´°6;©°SñRb¦¶ìø)\"îÈ4“Ø¹§?«¾ôŒQË^íU\\—èk)NÛd½$Z\r±O9†2xd…eLQGœ¯>Ã6¢áäß—®ŸõåM¹ÿ\0Oo_/ïü<ói‰6\0“Àf’Óay¨f~Y-ŒÕ®B&µ­àßÏ}ÔWh:‡çÇ¸®Œq{y9òZ•ï?éª– }£9Ä­ë9316ÀG‡ÕM¿Gñ87åµoä—<ñ8cæ‡”EèæĞ°²åÓ7¸_Ì¨/§§$¿h²ËÂŸ>‹M-Ûij‘d©ÃˆáÙ±cXKtNÙ)áÆæ°}§õ>ºóe¢ñÕC—FVƒ¶îişZä<’¥Ç6#±‚ş;ü—ÑœÕĞa§– ŒæîGqøÌÖHìy½²\"(¢\" \"\"\" \"\"\"Õr§M6Š’¦±û\"‰ÎÚ~Æ7½Å£½çÓ”“¤=¦ñÒ³WÕ­}!îøJçMmÈyVyÜ÷>GœO{œ÷8ísœnâ{I*Öb7:j ,%§hXVÔJ&hÖİdn*M9fİ‡aÜ·g­wºöJîc«\n\"¾8‹¶¢#j±Â=ã¸¬ÌÑ‘¸÷Ÿ$µø´õjÚÛ¬ÍŠù-Ÿì™ĞÛô©ôš	Ù\r¸‘`|Uğí=¡ÛÂãŒ–è×RÒ`ôz?C1£ÏÀ=1<÷loyîR)`›]m×m²ï+f4•cké\\¶÷7énïKÈã3ÖŸ\r7iúvûÏGĞW—>»6#jz|ı¹.÷vØd<ZÁ©õÜ^ıö°c:†XoÖ¸-tÜ¦–øa8\rğ3 }ãö»îµoªpv±Ï7ë7ñ¾ÕÃ^óÍ®¾½ÿ\0Ï£Êâ\"Ù&bgáôş=Ù++¤}ÚÁ…§iÌÖIÍİä­SàhÍÄ¸øª­f“\'÷ØµsU“½zØøH§“–úí‰©\rØCzšš¾0öf×¸w­ç;–Hx­ñ3^Ğå¼Vß,=5O*æµµ‡ºÃÉhêt´9¸÷’ Zç%½ZãcÉ{åqÚUˆ‹zĞÆ\\æ°mq\rñQ^Ï’„Dt\0\ræû\0í\0‰};¢(DC\0ıÜmeø3=æç½qm´P’²–èÂİqm±oƒŒ?5ÜU”Qq_ø‡åTÚ5‡iô™mÀ]±4öœGá³Ë k\\÷5 ¸“°\0.I_!ò»N\ZêÊªÃ{I!ÀèÛÑŒ}Ğ;îƒPŠ—U@Ù…³¥Òf@ãÇ´-e•ÁŠÄÌu…‰Ó|ÚÒÍ½&ıB›K\r;3/¿PyºiŞÏT÷n[Ht›O®Îñcæ·W6¾XeábÉß§İ¾<¤dBÑ0_‡æ¬ı·[.Ç9­ã|-ñÈ-|zF-Ù|EWé;÷ |.\'æ°¶ky2Åÿ\0ŸÃDîyfÅµ/hÇ,ï?­Ø.Vº¯J=÷k‡Ìö•ŒËNzN‘ï=‡óU:^6Ó‹½ÙŸ¢ÕmßõNŞ­m‹rÓQ‹éé^EÜ<M‡iººgÆÏY×ìÈ-]^“‘ûOr‚ë•„c¤uåß¿ñı±¿;ulçÒàdÁ—‡õZÉ´ƒáóXœ75txÙ;o^İ98‰²¦¤ïS\\7Íc,V²Œù#ÍÏ6™JkØoığTt*5ÖVU8mÏ·êºqñ8íÓ$kØè©…U´Ë3+½¤vX¬Â²>¿Ù	n¼ğ±XõFôu\ZQbG”é4ƒ~Ë|¢×“½rq³‚\"+Šwê“ä-¿%é±Íˆì`¹</—–/¨^³“4øa.±&Ga\0m#}¾»Ä.a.áÌş´3Õ‘œ¯\roºËœ»Ü[ğĞV»“Ú;Ñé©àÊì¡ÖØ^syïqq[•@DDD@DDDAÎùñå£hç@Ói*¨D{e?w£ñ¯›ºçŸ”>—¤¥cMã¦ŒËl.ò»ït~\0¼\"‘²ë+bUl XF@‹£bÊÙÙ×àUˆ•â{j#ö¼ÖVÍ¶ßt\'è*Z{TI>ÆÖÅæc{Ş~ FL`qµó¸Q´„LÖ8FÖµ£z.sÚ\\\0ps`ºänµ–x+\Z\0hÕ;nĞs7Ûuk@ÈäsÙ¹]#qÈı\rO z‚0DDìÏyÌd¼Ì±NÂ,1v_%·ÖFs00íŞááJ1‹3•³ğYk£)´kMÿ\0&y+”²ÖT—aá¸NÜ9b\'y¸Ù±xñ[Éäš¶CqbÕ—Ş;ñÃ°µ°‹‹Ş×¶Ûo²ÓâÖ›N÷=>Ê÷¬ÄDF´ØhŞL‡ÓIU#Ë@kË\06ÍÆÄX“`.Õ­ıLÇT!lÏ,$FZ\0ßpsìP¢§Ø¸7\"nonÌ–U­ºó.KRb\"‘î“£9*ù©æª266°†o\"ÙÅ¶+Ï—®’ºcL)5Ñjš]¸q½¯lÆ\\<V‰\\¾òliR‘n¼Îzsny¥7“ü†­­aš±FYŠì!†à8!særZ\nº\'Fù\"x³Ø÷Æáplæ’×Œˆ#%Óù9Ë\ZŠ(#§’D­lšÒ)N7<¹#. 2\\åÌ\'2I\'2Nd“´µ–›\Zã°Æ¶ctjhA,VÙLtk£A]µQAXØ\\CFÒCGi6]w›Í%­¤†×l Lî Û~ñø×5äİ69šNÆãÛ°~g¹wÎe4øu5®Èı[:š,ãn«ÇÀ¬#¦¢\"Š\"\"\" \"\"\" -.´ğ¡¡ª«Ëc-Œò»£ëéOP+~¸oüEé——ÒP6ø\rSøèãØ^~!Ás‰$’I$’Nd“™%Q.ˆ2ÏPçáÄo…¡ƒ©£ ÓÕ9í¦Öcp‹p¹<NA`D$©¼mˆ4;vXœlFÛ\\ö\\ìtD±•WD#a>%dmKÇÛwŞ+ Ú>G¶Íé\r$¼³WŒ:A`ˆ¶Ù7;^÷¸9oYô£¤€S~7I&{p4ñ“…—Ïµí«H¨®äO\Z^_á?Ñ^4Ã÷µ¾~k\\‰Í#gûdûÄıF—Ùà¢Õ¢¼Ò6Ÿ´Ùì»ä«ûB?âğş«T¨œÒiµ5±ñ>PÎÃö‡Ífv›12’&†b¹/2½Øzn.Äa •œUÔ:j9ï}R^,\ri8C]rqØ73ê‡¬©6vDS#}¡â¬y&áI‚ª’Ñ‡Âã…–u€é»!{âíã®ú™%Ä’|‚mTDUkI \r¤€;NÅ¤äü`{÷ÈìİØ~XÊúƒ’\Z3Ñ¨é µ‹cpş7ôŞ>óˆî\\7ÚMYEMk±„HşhÄoÚGÆÑJÊ@ˆŠ(ˆˆˆ€ˆˆˆ€¼Ç,¹O¤p:BæK-dŒ9á&ø^69·ï6\"åztAÇjù™~x*˜x]­Ãä´õ<ÌÕUğ;´‘çæ»Ò+±ó•O4ÕíÙî¹ŸîjÕTsuZÍ´Rü7wá._PÙP´ ù*£’s³Ö‚¡½¬xüL_.‰¶Wpí\r?©}ˆb´Q»Öh= 4w;ıü®±;F¼}¦w’<À_\\Tr^ş½4.í‰ŸE®¨æûG;ü«º\\ÏÂB•}MÀÇ3ê­u£÷nîù/¦gæ£G;c$od®?ëYQÌÕ)Í²ÌßıgÉ¡Î®…Ãk\\;ZBÇußgæhúud{ÌwäğµõĞÕV¢\'{ØÛæ× âJ«¬TsO^?wûÂÔÆ­UO6µíÛC~¶–~‰?$ñ°©äUK=j)Çceÿ\0i[6€Ãë2V{Ö‰¡44(¶‡E7sİ÷Zï\'+¢¹Ş,pòºhk‘L:5ŞÓ<\\<ÚŸ³äàcÙõPFE!Ô2İ»¸_ÉbtXáÚÒX¶<Ÿ§Ç3x7¦{¶|Íû–¶ëÔòRŸ\\÷d^æÄ7`u»Iù$ÏÌöŠÕ5dgfÂY³İÙÑø•Ó—œä\\L‚œæë\\8œVî7á[áPŞ*ÈÊŠÑ â«ˆ(*ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆ)dÂ5c‚µÔí;B\"u\Zş¼1»Ş‡Ì-dü…ÑÎÌÑÁ~\"6´ø¶Êˆƒ_QÍwîK}Ùe,VZÚhhêºfüLwâiDMuG31}Š‡z6Ã…Aÿ\0ñùšz5,pàD±üÚòˆ®Äzk«3\rlg#b\'q±ÜpÉ~+\'ù«­dÚÊŒ8‡9ã{]Ànß—DØê0èÙwÙK‰ãz\"‚C)Ü²¶2ˆƒ#ZUàDUT@DDÿÙ',500,0.3,'1 year warranty is applicable',7,'approved',0,0,''),(19,2,'Surakha E Commerce Pvt Ltd','ELECTRONICS','Mobile','Naughty Ninos Printed Boy\'s Polo Neck T-Shirt','Pantaloons',1700,5,105,100,100,1000,89.5,'ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	( \Z%!1!%)+...383,7(-.+\n\n\n\r\Z\Z-% %--++5-/./+7.--1-+---.-7-+-----+-/5-+-.---+02++---7ÿÀ\0\0¨+\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0F\0\0\0\0\0!1AQ\"aq‘±2Rr‚¡ÑB’²ÁÂCbƒáğ#D¢Ò$3cs“ÃÿÄ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0-\0\0\0\0\0\0\0\0!1AQq\"Ba‘ğ2¡ÑáÁñÿÚ\0\0\0?\0î(ˆ€ˆˆˆ€ˆˆ‹MCccäy\rk\Z^ç€rPeEÎ«9Î!ÄEJÛäé%ÀOYhc­â¢?œÚƒ²šÛ#İúB ‹“KÎEoÙe0íWô\n3ùÂÒíÀ=ØOê ìH¸œÜ¸Ò\'eVv(?S\nŒşWé¶²^æÂßÃAİQp	yGXvÕÏİ+›øHPåÒÕmMAícú}¬|H¤ó\\µ/;^óï=Îó*ŒiÌ´xLK¥iÛëO{d`ó*œ«ÑíÛ[L?Ÿü1/œp¶7y(šF°FÒíç 8Ÿ¢£¦åö‹g­]sñy(2ó¥¡Ûşu‡±²&¯•^âIqÌ“rU}=/<Z!»\'{½ØŸù€¡ËÏ~‹C»\"ÍÁ|Úˆ>…—ŸŠêÓÔĞÁúŠ‡7?°RŠCÛ#[úJàÈƒµËÏû¾Í\0ïšşLPæçî«ìRB=ç<ù¹ êRóë¤NÈi›ğ¼ù¹C›­*v:öFšç(ƒÜËÎæ˜wù–v(Çä·|ç\'I>i§Ö±®mØàĞ}­¸iÍ¶#yß±r¥Ğ¹¡Ì‡J6Í+K¸†Şî=Ø¯ü²¬$¾—¥œHÆHßUìkÇc…ÇšÊ­ 4\0\0€¹Ex^u´¾®éZzS;º£aæì>^ép.[é¿J¬@nÆL|00‘qÔ\\\\ï‰¿X¦ÓIŒH_ŠæÖÃnAïòß¦d‚âç%¶ı¥0gkweÜ‚é¦ŠÄ2\'ß\0¸“Ò¾g#²ÙÛ‰à+;ğR$ÒLÀÆbÜ]lÜ]kw\0Ñ—Yâ°úszĞc1»Ù*ÓıŸ%”×µC\\8M;ø|Â´Ò¿«Åe5½JÓ[ÕóTbôõ|şŠƒFHHÄ“`\0$“{Xek\'§{eqcÑÁSÓİ—VÌÎ]œCôq\r..\0\r¦ÆÃ}¾Eyí%£÷’çÚÀY¥»ÌoÚTı\'¥\\Ãm¬{s?Ñkı-İJèG\Z{gÀ*ßiß/¢Íé.êğOHwQ”VXÆˆgx¢¼h˜úüUÆWÉòXİ+¶—X|û‘œãåî»öd^Éñ*V‹ĞĞÉ+#qk½Üç…öŸï¨ì:¹*Nâ|sX3½£âQ®^–\rFê‡Fe„u¥¸É …­‹¤Nyd.£Öhêf™5oÎko‹€6àÚ¼ùñ>%csD½&\ZĞÖ†s|€¯BŠôk$œ\\/Ø3? »×4ú3\\³‘”}÷xJ;ÂãÜ¦¼”Œ˜ßÒ>@w¯¤y±ÑÚš&<úÓ9ÓÃÑgqkC¾%|‘ëE›çMú%Òg¼jcãà‹Æ‡;á_=‰·ç«OkjÙHÓÑ§mİ×,€àÜ?x®y¬A4J®Ö¨\ZÅ]j	úÔÖ¨:Õ]j¢n±SZ¡ëU5¨&kUªµSZ‚^±F®«Â,6Ÿâ±É=%jä”¸’wª.º¹ªÖ5dSm”¤ÈVÃ3òªÀ-´Û¯éÖ°OS~‹roÌö£|Ú1ÇNì’ÌñQdœÉXÉV’Y´ÏuÄ«	BU¤¢«	BU¥@TUYhàÆö3ÚpÛşWAîù¢œèá‰¹>iÛğÄá™ì»<\núfšÆÆFÁf±­cG´X\0¹?6\Z/KnŒüoè´ã\'Ü®+)\"(¢\" \"\"\" \"\"…¦´“) ¦OV(ß!ë°¸¬›õ5rntş`Ñí=)œ&ÛŒôí}òÊ=[\\ù¤–y\rß$•Şó‰qîÍaÖ(ØÓ\Z	:Å]j‰SX‚fµ5Š±5ˆ&kU5ª&µ5Š‰zÕ*ÚY‰Ä‘7¸¶‹+m.s\07µÉZ°õ>OiÍÀ\"-p³„…×#0]´uA†©î‹\\q4]îów<]¤2Ö³\Zv}¡·t†Ñ49À7¤ÖÅŒb2\\‚Öì.³EÈ åÙWh÷æd„COFF°X\\XŞãfØ[&\r¹“ŠIìòKÄôƒ®Ûß\"m X÷¤Ëu1Í§¢3	ÈXn~eH7ä8o*´ĞÒ;”:Ê‚ó–Á±c¶ûj‘¨YSQˆğ†áıTw9T…n¬¬¶å´­%Rë&­{“lÕG?‚ÆJ\n¸ª\" -ÿ\0#)1Ì^FMÔüñZïù@íSCGNWµ­ësÈ\rı½Xî’îÙĞà¥tÄt¦‘ÎøXpë‡¸{Ë×(ô†(¡o«lŒv4\0<”„•@DDD@DDDABmšùC—šÓ«êª»õqâ¢Ëvæï‰wxyAèz6`Ói*?åc¶ÑŒn,ÀìøÙ|Â\n¸“Çtºñ*bV].‚ìJ—TD]Tb¹£z,F×İ_7•H›su2(n´ß&¸8i´°6;©°SñRb¦¶ìø)\"îÈ4“Ø¹§?«¾ôŒQË^íU\\—èk)NÛd½$Z\r±O9†2xd…eLQGœ¯>Ã6¢áäß—®ŸõåM¹ÿ\0Oo_/ïü<ói‰6\0“Àf’Óay¨f~Y-ŒÕ®B&µ­àßÏ}ÔWh:‡çÇ¸®Œq{y9òZ•ï?éª– }£9Ä­ë9316ÀG‡ÕM¿Gñ87åµoä—<ñ8cæ‡”EèæĞ°²åÓ7¸_Ì¨/§§$¿h²ËÂŸ>‹M-Ûij‘d©ÃˆáÙ±cXKtNÙ)áÆæ°}§õ>ºóe¢ñÕC—FVƒ¶îişZä<’¥Ç6#±‚ş;ü—ÑœÕĞa§– ŒæîGqøÌÖHìy½²\"(¢\" \"\"\" \"\"\"Õr§M6Š’¦±û\"‰ÎÚ~Æ7½Å£½çÓ”“¤=¦ñÒ³WÕ­}!îøJçMmÈyVyÜ÷>GœO{œ÷8ísœnâ{I*Öb7:j ,%§hXVÔJ&hÖİdn*M9fİ‡aÜ·g­wºöJîc«\n\"¾8‹¶¢#j±Â=ã¸¬ÌÑ‘¸÷Ÿ$µø´õjÚÛ¬ÍŠù-Ÿì™ĞÛô©ôš	Ù\r¸‘`|Uğí=¡ÛÂãŒ–è×RÒ`ôz?C1£ÏÀ=1<÷loyîR)`›]m×m²ï+f4•cké\\¶÷7énïKÈã3ÖŸ\r7iúvûÏGĞW—>»6#jz|ı¹.÷vØd<ZÁ©õÜ^ıö°c:†XoÖ¸-tÜ¦–øa8\rğ3 }ãö»îµoªpv±Ï7ë7ñ¾ÕÃ^óÍ®¾½ÿ\0Ï£Êâ\"Ù&bgáôş=Ù++¤}ÚÁ…§iÌÖIÍİä­SàhÍÄ¸øª­f“\'÷ØµsU“½zØøH§“–úí‰©\rØCzšš¾0öf×¸w­ç;–Hx­ñ3^Ğå¼Vß,=5O*æµµ‡ºÃÉhêt´9¸÷’ Zç%½ZãcÉ{åqÚUˆ‹zĞÆ\\æ°mq\rñQ^Ï’„Dt\0\ræû\0í\0‰};¢(DC\0ıÜmeø3=æç½qm´P’²–èÂİqm±oƒŒ?5ÜU”Qq_ø‡åTÚ5‡iô™mÀ]±4öœGá³Ë k\\÷5 ¸“°\0.I_!ò»N\ZêÊªÃ{I!ÀèÛÑŒ}Ğ;îƒPŠ—U@Ù…³¥Òf@ãÇ´-e•ÁŠÄÌu…‰Ó|ÚÒÍ½&ıB›K\r;3/¿PyºiŞÏT÷n[Ht›O®Îñcæ·W6¾XeábÉß§İ¾<¤dBÑ0_‡æ¬ı·[.Ç9­ã|-ñÈ-|zF-Ù|EWé;÷ |.\'æ°¶ky2Åÿ\0ŸÃDîyfÅµ/hÇ,ï?­Ø.Vº¯J=÷k‡Ìö•ŒËNzN‘ï=‡óU:^6Ó‹½ÙŸ¢ÕmßõNŞ­m‹rÓQ‹éé^EÜ<M‡iººgÆÏY×ìÈ-]^“‘ûOr‚ë•„c¤uåß¿ñı±¿;ulçÒàdÁ—‡õZÉ´ƒáóXœ75txÙ;o^İ98‰²¦¤ïS\\7Íc,V²Œù#ÍÏ6™JkØoığTt*5ÖVU8mÏ·êºqñ8íÓ$kØè©…U´Ë3+½¤vX¬Â²>¿Ù	n¼ğ±XõFôu\ZQbG”é4ƒ~Ë|¢×“½rq³‚\"+Šwê“ä-¿%é±Íˆì`¹</—–/¨^³“4øa.±&Ga\0m#}¾»Ä.a.áÌş´3Õ‘œ¯\roºËœ»Ü[ğĞV»“Ú;Ñé©àÊì¡ÖØ^syïqq[•@DDD@DDDAÎùñå£hç@Ói*¨D{e?w£ñ¯›ºçŸ”>—¤¥cMã¦ŒËl.ò»ït~\0¼\"‘²ë+bUl XF@‹£bÊÙÙ×àUˆ•â{j#ö¼ÖVÍ¶ßt\'è*Z{TI>ÆÖÅæc{Ş~ FL`qµó¸Q´„LÖ8FÖµ£z.sÚ\\\0ps`ºänµ–x+\Z\0hÕ;nĞs7Ûuk@ÈäsÙ¹]#qÈı\rO z‚0DDìÏyÌd¼Ì±NÂ,1v_%·ÖFs00íŞááJ1‹3•³ğYk£)´kMÿ\0&y+”²ÖT—aá¸NÜ9b\'y¸Ù±xñ[Éäš¶CqbÕ—Ş;ñÃ°µ°‹‹Ş×¶Ûo²ÓâÖ›N÷=>Ê÷¬ÄDF´ØhŞL‡ÓIU#Ë@kË\06ÍÆÄX“`.Õ­ıLÇT!lÏ,$FZ\0ßpsìP¢§Ø¸7\"nonÌ–U­ºó.KRb\"‘î“£9*ù©æª266°†o\"ÙÅ¶+Ï—®’ºcL)5Ñjš]¸q½¯lÆ\\<V‰\\¾òliR‘n¼Îzsny¥7“ü†­­aš±FYŠì!†à8!særZ\nº\'Fù\"x³Ø÷Æáplæ’×Œˆ#%Óù9Ë\ZŠ(#§’D­lšÒ)N7<¹#. 2\\åÌ\'2I\'2Nd“´µ–›\Zã°Æ¶ctjhA,VÙLtk£A]µQAXØ\\CFÒCGi6]w›Í%­¤†×l Lî Û~ñø×5äİ69šNÆãÛ°~g¹wÎe4øu5®Èı[:š,ãn«ÇÀ¬#¦¢\"Š\"\"\" \"\"\" -.´ğ¡¡ª«Ëc-Œò»£ëéOP+~¸oüEé——ÒP6ø\rSøèãØ^~!Ás‰$’I$’Nd“™%Q.ˆ2ÏPçáÄo…¡ƒ©£ ÓÕ9í¦Öcp‹p¹<NA`D$©¼mˆ4;vXœlFÛ\\ö\\ìtD±•WD#a>%dmKÇÛwŞ+ Ú>G¶Íé\r$¼³WŒ:A`ˆ¶Ù7;^÷¸9oYô£¤€S~7I&{p4ñ“…—Ïµí«H¨®äO\Z^_á?Ñ^4Ã÷µ¾~k\\‰Í#gûdûÄıF—Ùà¢Õ¢¼Ò6Ÿ´Ùì»ä«ûB?âğş«T¨œÒiµ5±ñ>PÎÃö‡Ífv›12’&†b¹/2½Øzn.Äa •œUÔ:j9ï}R^,\ri8C]rqØ73ê‡¬©6vDS#}¡â¬y&áI‚ª’Ñ‡Âã…–u€é»!{âíã®ú™%Ä’|‚mTDUkI \r¤€;NÅ¤äü`{÷ÈìİØ~XÊúƒ’\Z3Ñ¨é µ‹cpş7ôŞ>óˆî\\7ÚMYEMk±„HşhÄoÚGÆÑJÊ@ˆŠ(ˆˆˆ€ˆˆˆ€¼Ç,¹O¤p:BæK-dŒ9á&ø^69·ï6\"åztAÇjù™~x*˜x]­Ãä´õ<ÌÕUğ;´‘çæ»Ò+±ó•O4ÕíÙî¹ŸîjÕTsuZÍ´Rü7wá._PÙP´ ù*£’s³Ö‚¡½¬xüL_.‰¶Wpí\r?©}ˆb´Q»Öh= 4w;ıü®±;F¼}¦w’<À_\\Tr^ş½4.í‰ŸE®¨æûG;ü«º\\ÏÂB•}MÀÇ3ê­u£÷nîù/¦gæ£G;c$od®?ëYQÌÕ)Í²ÌßıgÉ¡Î®…Ãk\\;ZBÇußgæhúud{ÌwäğµõĞÕV¢\'{ØÛæ× âJ«¬TsO^?wûÂÔÆ­UO6µíÛC~¶–~‰?$ñ°©äUK=j)Çceÿ\0i[6€Ãë2V{Ö‰¡44(¶‡E7sİ÷Zï\'+¢¹Ş,pòºhk‘L:5ŞÓ<\\<ÚŸ³äàcÙõPFE!Ô2İ»¸_ÉbtXáÚÒX¶<Ÿ§Ç3x7¦{¶|Íû–¶ëÔòRŸ\\÷d^æÄ7`u»Iù$ÏÌöŠÕ5dgfÂY³İÙÑø•Ó—œä\\L‚œæë\\8œVî7á[áPŞ*ÈÊŠÑ â«ˆ(*ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆ)dÂ5c‚µÔí;B\"u\Zş¼1»Ş‡Ì-dü…ÑÎÌÑÁ~\"6´ø¶Êˆƒ_QÍwîK}Ùe,VZÚhhêºfüLwâiDMuG31}Š‡z6Ã…Aÿ\0ñùšz5,pàD±üÚòˆ®Äzk«3\rlg#b\'q±ÜpÉ~+\'ù«­dÚÊŒ8‡9ã{]Ànß—DØê0èÙwÙK‰ãz\"‚C)Ü²¶2ˆƒ#ZUàDUT@DDÿÙ','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	( \Z%!1!%)+...383,7(-.+\n\n\n\r\Z\Z-% %--++5-/./+7.--1-+---.-7-+-----+-/5-+-.---+02++---7ÿÀ\0\0¨+\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0F\0\0\0\0\0!1AQ\"aq‘±2Rr‚¡ÑB’²ÁÂCbƒáğ#D¢Ò$3cs“ÃÿÄ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0-\0\0\0\0\0\0\0\0!1AQq\"Ba‘ğ2¡ÑáÁñÿÚ\0\0\0?\0î(ˆ€ˆˆˆ€ˆˆ‹MCccäy\rk\Z^ç€rPeEÎ«9Î!ÄEJÛäé%ÀOYhc­â¢?œÚƒ²šÛ#İúB ‹“KÎEoÙe0íWô\n3ùÂÒíÀ=ØOê ìH¸œÜ¸Ò\'eVv(?S\nŒşWé¶²^æÂßÃAİQp	yGXvÕÏİ+›øHPåÒÕmMAícú}¬|H¤ó\\µ/;^óï=Îó*ŒiÌ´xLK¥iÛëO{d`ó*œ«ÑíÛ[L?Ÿü1/œp¶7y(šF°FÒíç 8Ÿ¢£¦åö‹g­]sñy(2ó¥¡Ûşu‡±²&¯•^âIqÌ“rU}=/<Z!»\'{½ØŸù€¡ËÏ~‹C»\"ÍÁ|Úˆ>…—ŸŠêÓÔĞÁúŠ‡7?°RŠCÛ#[úJàÈƒµËÏû¾Í\0ïšşLPæçî«ìRB=ç<ù¹ êRóë¤NÈi›ğ¼ù¹C›­*v:öFšç(ƒÜËÎæ˜wù–v(Çä·|ç\'I>i§Ö±®mØàĞ}­¸iÍ¶#yß±r¥Ğ¹¡Ì‡J6Í+K¸†Şî=Ø¯ü²¬$¾—¥œHÆHßUìkÇc…ÇšÊ­ 4\0\0€¹Ex^u´¾®éZzS;º£aæì>^ép.[é¿J¬@nÆL|00‘qÔ\\\\ï‰¿X¦ÓIŒH_ŠæÖÃnAïòß¦d‚âç%¶ı¥0gkweÜ‚é¦ŠÄ2\'ß\0¸“Ò¾g#²ÙÛ‰à+;ğR$ÒLÀÆbÜ]lÜ]kw\0Ñ—Yâ°úszĞc1»Ù*ÓıŸ%”×µC\\8M;ø|Â´Ò¿«Åe5½JÓ[ÕóTbôõ|şŠƒFHHÄ“`\0$“{Xek\'§{eqcÑÁSÓİ—VÌÎ]œCôq\r..\0\r¦ÆÃ}¾Eyí%£÷’çÚÀY¥»ÌoÚTı\'¥\\Ãm¬{s?Ñkı-İJèG\Z{gÀ*ßiß/¢Íé.êğOHwQ”VXÆˆgx¢¼h˜úüUÆWÉòXİ+¶—X|û‘œãåî»öd^Éñ*V‹ĞĞÉ+#qk½Üç…öŸï¨ì:¹*Nâ|sX3½£âQ®^–\rFê‡Fe„u¥¸É …­‹¤Nyd.£Öhêf™5oÎko‹€6àÚ¼ùñ>%csD½&\ZĞÖ†s|€¯BŠôk$œ\\/Ø3? »×4ú3\\³‘”}÷xJ;ÂãÜ¦¼”Œ˜ßÒ>@w¯¤y±ÑÚš&<úÓ9ÓÃÑgqkC¾%|‘ëE›çMú%Òg¼jcãà‹Æ‡;á_=‰·ç«OkjÙHÓÑ§mİ×,€àÜ?x®y¬A4J®Ö¨\ZÅ]j	úÔÖ¨:Õ]j¢n±SZ¡ëU5¨&kUªµSZ‚^±F®«Â,6Ÿâ±É=%jä”¸’wª.º¹ªÖ5dSm”¤ÈVÃ3òªÀ-´Û¯éÖ°OS~‹roÌö£|Ú1ÇNì’ÌñQdœÉXÉV’Y´ÏuÄ«	BU¤¢«	BU¥@TUYhàÆö3ÚpÛşWAîù¢œèá‰¹>iÛğÄá™ì»<\núfšÆÆFÁf±­cG´X\0¹?6\Z/KnŒüoè´ã\'Ü®+)\"(¢\" \"\"\" \"\"…¦´“) ¦OV(ß!ë°¸¬›õ5rntş`Ñí=)œ&ÛŒôí}òÊ=[\\ù¤–y\rß$•Şó‰qîÍaÖ(ØÓ\Z	:Å]j‰SX‚fµ5Š±5ˆ&kU5ª&µ5Š‰zÕ*ÚY‰Ä‘7¸¶‹+m.s\07µÉZ°õ>OiÍÀ\"-p³„…×#0]´uA†©î‹\\q4]îów<]¤2Ö³\Zv}¡·t†Ñ49À7¤ÖÅŒb2\\‚Öì.³EÈ åÙWh÷æd„COFF°X\\XŞãfØ[&\r¹“ŠIìòKÄôƒ®Ûß\"m X÷¤Ëu1Í§¢3	ÈXn~eH7ä8o*´ĞÒ;”:Ê‚ó–Á±c¶ûj‘¨YSQˆğ†áıTw9T…n¬¬¶å´­%Rë&­{“lÕG?‚ÆJ\n¸ª\" -ÿ\0#)1Ì^FMÔüñZïù@íSCGNWµ­ësÈ\rı½Xî’îÙĞà¥tÄt¦‘ÎøXpë‡¸{Ë×(ô†(¡o«lŒv4\0<”„•@DDD@DDDABmšùC—šÓ«êª»õqâ¢Ëvæï‰wxyAèz6`Ói*?åc¶ÑŒn,ÀìøÙ|Â\n¸“Çtºñ*bV].‚ìJ—TD]Tb¹£z,F×İ_7•H›su2(n´ß&¸8i´°6;©°SñRb¦¶ìø)\"îÈ4“Ø¹§?«¾ôŒQË^íU\\—èk)NÛd½$Z\r±O9†2xd…eLQGœ¯>Ã6¢áäß—®ŸõåM¹ÿ\0Oo_/ïü<ói‰6\0“Àf’Óay¨f~Y-ŒÕ®B&µ­àßÏ}ÔWh:‡çÇ¸®Œq{y9òZ•ï?éª– }£9Ä­ë9316ÀG‡ÕM¿Gñ87åµoä—<ñ8cæ‡”EèæĞ°²åÓ7¸_Ì¨/§§$¿h²ËÂŸ>‹M-Ûij‘d©ÃˆáÙ±cXKtNÙ)áÆæ°}§õ>ºóe¢ñÕC—FVƒ¶îişZä<’¥Ç6#±‚ş;ü—ÑœÕĞa§– ŒæîGqøÌÖHìy½²\"(¢\" \"\"\" \"\"\"Õr§M6Š’¦±û\"‰ÎÚ~Æ7½Å£½çÓ”“¤=¦ñÒ³WÕ­}!îøJçMmÈyVyÜ÷>GœO{œ÷8ísœnâ{I*Öb7:j ,%§hXVÔJ&hÖİdn*M9fİ‡aÜ·g­wºöJîc«\n\"¾8‹¶¢#j±Â=ã¸¬ÌÑ‘¸÷Ÿ$µø´õjÚÛ¬ÍŠù-Ÿì™ĞÛô©ôš	Ù\r¸‘`|Uğí=¡ÛÂãŒ–è×RÒ`ôz?C1£ÏÀ=1<÷loyîR)`›]m×m²ï+f4•cké\\¶÷7énïKÈã3ÖŸ\r7iúvûÏGĞW—>»6#jz|ı¹.÷vØd<ZÁ©õÜ^ıö°c:†XoÖ¸-tÜ¦–øa8\rğ3 }ãö»îµoªpv±Ï7ë7ñ¾ÕÃ^óÍ®¾½ÿ\0Ï£Êâ\"Ù&bgáôş=Ù++¤}ÚÁ…§iÌÖIÍİä­SàhÍÄ¸øª­f“\'÷ØµsU“½zØøH§“–úí‰©\rØCzšš¾0öf×¸w­ç;–Hx­ñ3^Ğå¼Vß,=5O*æµµ‡ºÃÉhêt´9¸÷’ Zç%½ZãcÉ{åqÚUˆ‹zĞÆ\\æ°mq\rñQ^Ï’„Dt\0\ræû\0í\0‰};¢(DC\0ıÜmeø3=æç½qm´P’²–èÂİqm±oƒŒ?5ÜU”Qq_ø‡åTÚ5‡iô™mÀ]±4öœGá³Ë k\\÷5 ¸“°\0.I_!ò»N\ZêÊªÃ{I!ÀèÛÑŒ}Ğ;îƒPŠ—U@Ù…³¥Òf@ãÇ´-e•ÁŠÄÌu…‰Ó|ÚÒÍ½&ıB›K\r;3/¿PyºiŞÏT÷n[Ht›O®Îñcæ·W6¾XeábÉß§İ¾<¤dBÑ0_‡æ¬ı·[.Ç9­ã|-ñÈ-|zF-Ù|EWé;÷ |.\'æ°¶ky2Åÿ\0ŸÃDîyfÅµ/hÇ,ï?­Ø.Vº¯J=÷k‡Ìö•ŒËNzN‘ï=‡óU:^6Ó‹½ÙŸ¢ÕmßõNŞ­m‹rÓQ‹éé^EÜ<M‡iººgÆÏY×ìÈ-]^“‘ûOr‚ë•„c¤uåß¿ñı±¿;ulçÒàdÁ—‡õZÉ´ƒáóXœ75txÙ;o^İ98‰²¦¤ïS\\7Íc,V²Œù#ÍÏ6™JkØoığTt*5ÖVU8mÏ·êºqñ8íÓ$kØè©…U´Ë3+½¤vX¬Â²>¿Ù	n¼ğ±XõFôu\ZQbG”é4ƒ~Ë|¢×“½rq³‚\"+Šwê“ä-¿%é±Íˆì`¹</—–/¨^³“4øa.±&Ga\0m#}¾»Ä.a.áÌş´3Õ‘œ¯\roºËœ»Ü[ğĞV»“Ú;Ñé©àÊì¡ÖØ^syïqq[•@DDD@DDDAÎùñå£hç@Ói*¨D{e?w£ñ¯›ºçŸ”>—¤¥cMã¦ŒËl.ò»ït~\0¼\"‘²ë+bUl XF@‹£bÊÙÙ×àUˆ•â{j#ö¼ÖVÍ¶ßt\'è*Z{TI>ÆÖÅæc{Ş~ FL`qµó¸Q´„LÖ8FÖµ£z.sÚ\\\0ps`ºänµ–x+\Z\0hÕ;nĞs7Ûuk@ÈäsÙ¹]#qÈı\rO z‚0DDìÏyÌd¼Ì±NÂ,1v_%·ÖFs00íŞááJ1‹3•³ğYk£)´kMÿ\0&y+”²ÖT—aá¸NÜ9b\'y¸Ù±xñ[Éäš¶CqbÕ—Ş;ñÃ°µ°‹‹Ş×¶Ûo²ÓâÖ›N÷=>Ê÷¬ÄDF´ØhŞL‡ÓIU#Ë@kË\06ÍÆÄX“`.Õ­ıLÇT!lÏ,$FZ\0ßpsìP¢§Ø¸7\"nonÌ–U­ºó.KRb\"‘î“£9*ù©æª266°†o\"ÙÅ¶+Ï—®’ºcL)5Ñjš]¸q½¯lÆ\\<V‰\\¾òliR‘n¼Îzsny¥7“ü†­­aš±FYŠì!†à8!særZ\nº\'Fù\"x³Ø÷Æáplæ’×Œˆ#%Óù9Ë\ZŠ(#§’D­lšÒ)N7<¹#. 2\\åÌ\'2I\'2Nd“´µ–›\Zã°Æ¶ctjhA,VÙLtk£A]µQAXØ\\CFÒCGi6]w›Í%­¤†×l Lî Û~ñø×5äİ69šNÆãÛ°~g¹wÎe4øu5®Èı[:š,ãn«ÇÀ¬#¦¢\"Š\"\"\" \"\"\" -.´ğ¡¡ª«Ëc-Œò»£ëéOP+~¸oüEé——ÒP6ø\rSøèãØ^~!Ás‰$’I$’Nd“™%Q.ˆ2ÏPçáÄo…¡ƒ©£ ÓÕ9í¦Öcp‹p¹<NA`D$©¼mˆ4;vXœlFÛ\\ö\\ìtD±•WD#a>%dmKÇÛwŞ+ Ú>G¶Íé\r$¼³WŒ:A`ˆ¶Ù7;^÷¸9oYô£¤€S~7I&{p4ñ“…—Ïµí«H¨®äO\Z^_á?Ñ^4Ã÷µ¾~k\\‰Í#gûdûÄıF—Ùà¢Õ¢¼Ò6Ÿ´Ùì»ä«ûB?âğş«T¨œÒiµ5±ñ>PÎÃö‡Ífv›12’&†b¹/2½Øzn.Äa •œUÔ:j9ï}R^,\ri8C]rqØ73ê‡¬©6vDS#}¡â¬y&áI‚ª’Ñ‡Âã…–u€é»!{âíã®ú™%Ä’|‚mTDUkI \r¤€;NÅ¤äü`{÷ÈìİØ~XÊúƒ’\Z3Ñ¨é µ‹cpş7ôŞ>óˆî\\7ÚMYEMk±„HşhÄoÚGÆÑJÊ@ˆŠ(ˆˆˆ€ˆˆˆ€¼Ç,¹O¤p:BæK-dŒ9á&ø^69·ï6\"åztAÇjù™~x*˜x]­Ãä´õ<ÌÕUğ;´‘çæ»Ò+±ó•O4ÕíÙî¹ŸîjÕTsuZÍ´Rü7wá._PÙP´ ù*£’s³Ö‚¡½¬xüL_.‰¶Wpí\r?©}ˆb´Q»Öh= 4w;ıü®±;F¼}¦w’<À_\\Tr^ş½4.í‰ŸE®¨æûG;ü«º\\ÏÂB•}MÀÇ3ê­u£÷nîù/¦gæ£G;c$od®?ëYQÌÕ)Í²ÌßıgÉ¡Î®…Ãk\\;ZBÇußgæhúud{ÌwäğµõĞÕV¢\'{ØÛæ× âJ«¬TsO^?wûÂÔÆ­UO6µíÛC~¶–~‰?$ñ°©äUK=j)Çceÿ\0i[6€Ãë2V{Ö‰¡44(¶‡E7sİ÷Zï\'+¢¹Ş,pòºhk‘L:5ŞÓ<\\<ÚŸ³äàcÙõPFE!Ô2İ»¸_ÉbtXáÚÒX¶<Ÿ§Ç3x7¦{¶|Íû–¶ëÔòRŸ\\÷d^æÄ7`u»Iù$ÏÌöŠÕ5dgfÂY³İÙÑø•Ó—œä\\L‚œæë\\8œVî7á[áPŞ*ÈÊŠÑ â«ˆ(*ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆ)dÂ5c‚µÔí;B\"u\Zş¼1»Ş‡Ì-dü…ÑÎÌÑÁ~\"6´ø¶Êˆƒ_QÍwîK}Ùe,VZÚhhêºfüLwâiDMuG31}Š‡z6Ã…Aÿ\0ñùšz5,pàD±üÚòˆ®Äzk«3\rlg#b\'q±ÜpÉ~+\'ù«­dÚÊŒ8‡9ã{]Ànß—DØê0èÙwÙK‰ãz\"‚C)Ü²¶2ˆƒ#ZUàDUT@DDÿÙ','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	( \Z%!1!%)+...383,7(-.+\n\n\n\r\Z\Z-% %--++5-/./+7.--1-+---.-7-+-----+-/5-+-.---+02++---7ÿÀ\0\0¨+\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0F\0\0\0\0\0!1AQ\"aq‘±2Rr‚¡ÑB’²ÁÂCbƒáğ#D¢Ò$3cs“ÃÿÄ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0-\0\0\0\0\0\0\0\0!1AQq\"Ba‘ğ2¡ÑáÁñÿÚ\0\0\0?\0î(ˆ€ˆˆˆ€ˆˆ‹MCccäy\rk\Z^ç€rPeEÎ«9Î!ÄEJÛäé%ÀOYhc­â¢?œÚƒ²šÛ#İúB ‹“KÎEoÙe0íWô\n3ùÂÒíÀ=ØOê ìH¸œÜ¸Ò\'eVv(?S\nŒşWé¶²^æÂßÃAİQp	yGXvÕÏİ+›øHPåÒÕmMAícú}¬|H¤ó\\µ/;^óï=Îó*ŒiÌ´xLK¥iÛëO{d`ó*œ«ÑíÛ[L?Ÿü1/œp¶7y(šF°FÒíç 8Ÿ¢£¦åö‹g­]sñy(2ó¥¡Ûşu‡±²&¯•^âIqÌ“rU}=/<Z!»\'{½ØŸù€¡ËÏ~‹C»\"ÍÁ|Úˆ>…—ŸŠêÓÔĞÁúŠ‡7?°RŠCÛ#[úJàÈƒµËÏû¾Í\0ïšşLPæçî«ìRB=ç<ù¹ êRóë¤NÈi›ğ¼ù¹C›­*v:öFšç(ƒÜËÎæ˜wù–v(Çä·|ç\'I>i§Ö±®mØàĞ}­¸iÍ¶#yß±r¥Ğ¹¡Ì‡J6Í+K¸†Şî=Ø¯ü²¬$¾—¥œHÆHßUìkÇc…ÇšÊ­ 4\0\0€¹Ex^u´¾®éZzS;º£aæì>^ép.[é¿J¬@nÆL|00‘qÔ\\\\ï‰¿X¦ÓIŒH_ŠæÖÃnAïòß¦d‚âç%¶ı¥0gkweÜ‚é¦ŠÄ2\'ß\0¸“Ò¾g#²ÙÛ‰à+;ğR$ÒLÀÆbÜ]lÜ]kw\0Ñ—Yâ°úszĞc1»Ù*ÓıŸ%”×µC\\8M;ø|Â´Ò¿«Åe5½JÓ[ÕóTbôõ|şŠƒFHHÄ“`\0$“{Xek\'§{eqcÑÁSÓİ—VÌÎ]œCôq\r..\0\r¦ÆÃ}¾Eyí%£÷’çÚÀY¥»ÌoÚTı\'¥\\Ãm¬{s?Ñkı-İJèG\Z{gÀ*ßiß/¢Íé.êğOHwQ”VXÆˆgx¢¼h˜úüUÆWÉòXİ+¶—X|û‘œãåî»öd^Éñ*V‹ĞĞÉ+#qk½Üç…öŸï¨ì:¹*Nâ|sX3½£âQ®^–\rFê‡Fe„u¥¸É …­‹¤Nyd.£Öhêf™5oÎko‹€6àÚ¼ùñ>%csD½&\ZĞÖ†s|€¯BŠôk$œ\\/Ø3? »×4ú3\\³‘”}÷xJ;ÂãÜ¦¼”Œ˜ßÒ>@w¯¤y±ÑÚš&<úÓ9ÓÃÑgqkC¾%|‘ëE›çMú%Òg¼jcãà‹Æ‡;á_=‰·ç«OkjÙHÓÑ§mİ×,€àÜ?x®y¬A4J®Ö¨\ZÅ]j	úÔÖ¨:Õ]j¢n±SZ¡ëU5¨&kUªµSZ‚^±F®«Â,6Ÿâ±É=%jä”¸’wª.º¹ªÖ5dSm”¤ÈVÃ3òªÀ-´Û¯éÖ°OS~‹roÌö£|Ú1ÇNì’ÌñQdœÉXÉV’Y´ÏuÄ«	BU¤¢«	BU¥@TUYhàÆö3ÚpÛşWAîù¢œèá‰¹>iÛğÄá™ì»<\núfšÆÆFÁf±­cG´X\0¹?6\Z/KnŒüoè´ã\'Ü®+)\"(¢\" \"\"\" \"\"…¦´“) ¦OV(ß!ë°¸¬›õ5rntş`Ñí=)œ&ÛŒôí}òÊ=[\\ù¤–y\rß$•Şó‰qîÍaÖ(ØÓ\Z	:Å]j‰SX‚fµ5Š±5ˆ&kU5ª&µ5Š‰zÕ*ÚY‰Ä‘7¸¶‹+m.s\07µÉZ°õ>OiÍÀ\"-p³„…×#0]´uA†©î‹\\q4]îów<]¤2Ö³\Zv}¡·t†Ñ49À7¤ÖÅŒb2\\‚Öì.³EÈ åÙWh÷æd„COFF°X\\XŞãfØ[&\r¹“ŠIìòKÄôƒ®Ûß\"m X÷¤Ëu1Í§¢3	ÈXn~eH7ä8o*´ĞÒ;”:Ê‚ó–Á±c¶ûj‘¨YSQˆğ†áıTw9T…n¬¬¶å´­%Rë&­{“lÕG?‚ÆJ\n¸ª\" -ÿ\0#)1Ì^FMÔüñZïù@íSCGNWµ­ësÈ\rı½Xî’îÙĞà¥tÄt¦‘ÎøXpë‡¸{Ë×(ô†(¡o«lŒv4\0<”„•@DDD@DDDABmšùC—šÓ«êª»õqâ¢Ëvæï‰wxyAèz6`Ói*?åc¶ÑŒn,ÀìøÙ|Â\n¸“Çtºñ*bV].‚ìJ—TD]Tb¹£z,F×İ_7•H›su2(n´ß&¸8i´°6;©°SñRb¦¶ìø)\"îÈ4“Ø¹§?«¾ôŒQË^íU\\—èk)NÛd½$Z\r±O9†2xd…eLQGœ¯>Ã6¢áäß—®ŸõåM¹ÿ\0Oo_/ïü<ói‰6\0“Àf’Óay¨f~Y-ŒÕ®B&µ­àßÏ}ÔWh:‡çÇ¸®Œq{y9òZ•ï?éª– }£9Ä­ë9316ÀG‡ÕM¿Gñ87åµoä—<ñ8cæ‡”EèæĞ°²åÓ7¸_Ì¨/§§$¿h²ËÂŸ>‹M-Ûij‘d©ÃˆáÙ±cXKtNÙ)áÆæ°}§õ>ºóe¢ñÕC—FVƒ¶îişZä<’¥Ç6#±‚ş;ü—ÑœÕĞa§– ŒæîGqøÌÖHìy½²\"(¢\" \"\"\" \"\"\"Õr§M6Š’¦±û\"‰ÎÚ~Æ7½Å£½çÓ”“¤=¦ñÒ³WÕ­}!îøJçMmÈyVyÜ÷>GœO{œ÷8ísœnâ{I*Öb7:j ,%§hXVÔJ&hÖİdn*M9fİ‡aÜ·g­wºöJîc«\n\"¾8‹¶¢#j±Â=ã¸¬ÌÑ‘¸÷Ÿ$µø´õjÚÛ¬ÍŠù-Ÿì™ĞÛô©ôš	Ù\r¸‘`|Uğí=¡ÛÂãŒ–è×RÒ`ôz?C1£ÏÀ=1<÷loyîR)`›]m×m²ï+f4•cké\\¶÷7énïKÈã3ÖŸ\r7iúvûÏGĞW—>»6#jz|ı¹.÷vØd<ZÁ©õÜ^ıö°c:†XoÖ¸-tÜ¦–øa8\rğ3 }ãö»îµoªpv±Ï7ë7ñ¾ÕÃ^óÍ®¾½ÿ\0Ï£Êâ\"Ù&bgáôş=Ù++¤}ÚÁ…§iÌÖIÍİä­SàhÍÄ¸øª­f“\'÷ØµsU“½zØøH§“–úí‰©\rØCzšš¾0öf×¸w­ç;–Hx­ñ3^Ğå¼Vß,=5O*æµµ‡ºÃÉhêt´9¸÷’ Zç%½ZãcÉ{åqÚUˆ‹zĞÆ\\æ°mq\rñQ^Ï’„Dt\0\ræû\0í\0‰};¢(DC\0ıÜmeø3=æç½qm´P’²–èÂİqm±oƒŒ?5ÜU”Qq_ø‡åTÚ5‡iô™mÀ]±4öœGá³Ë k\\÷5 ¸“°\0.I_!ò»N\ZêÊªÃ{I!ÀèÛÑŒ}Ğ;îƒPŠ—U@Ù…³¥Òf@ãÇ´-e•ÁŠÄÌu…‰Ó|ÚÒÍ½&ıB›K\r;3/¿PyºiŞÏT÷n[Ht›O®Îñcæ·W6¾XeábÉß§İ¾<¤dBÑ0_‡æ¬ı·[.Ç9­ã|-ñÈ-|zF-Ù|EWé;÷ |.\'æ°¶ky2Åÿ\0ŸÃDîyfÅµ/hÇ,ï?­Ø.Vº¯J=÷k‡Ìö•ŒËNzN‘ï=‡óU:^6Ó‹½ÙŸ¢ÕmßõNŞ­m‹rÓQ‹éé^EÜ<M‡iººgÆÏY×ìÈ-]^“‘ûOr‚ë•„c¤uåß¿ñı±¿;ulçÒàdÁ—‡õZÉ´ƒáóXœ75txÙ;o^İ98‰²¦¤ïS\\7Íc,V²Œù#ÍÏ6™JkØoığTt*5ÖVU8mÏ·êºqñ8íÓ$kØè©…U´Ë3+½¤vX¬Â²>¿Ù	n¼ğ±XõFôu\ZQbG”é4ƒ~Ë|¢×“½rq³‚\"+Šwê“ä-¿%é±Íˆì`¹</—–/¨^³“4øa.±&Ga\0m#}¾»Ä.a.áÌş´3Õ‘œ¯\roºËœ»Ü[ğĞV»“Ú;Ñé©àÊì¡ÖØ^syïqq[•@DDD@DDDAÎùñå£hç@Ói*¨D{e?w£ñ¯›ºçŸ”>—¤¥cMã¦ŒËl.ò»ït~\0¼\"‘²ë+bUl XF@‹£bÊÙÙ×àUˆ•â{j#ö¼ÖVÍ¶ßt\'è*Z{TI>ÆÖÅæc{Ş~ FL`qµó¸Q´„LÖ8FÖµ£z.sÚ\\\0ps`ºänµ–x+\Z\0hÕ;nĞs7Ûuk@ÈäsÙ¹]#qÈı\rO z‚0DDìÏyÌd¼Ì±NÂ,1v_%·ÖFs00íŞááJ1‹3•³ğYk£)´kMÿ\0&y+”²ÖT—aá¸NÜ9b\'y¸Ù±xñ[Éäš¶CqbÕ—Ş;ñÃ°µ°‹‹Ş×¶Ûo²ÓâÖ›N÷=>Ê÷¬ÄDF´ØhŞL‡ÓIU#Ë@kË\06ÍÆÄX“`.Õ­ıLÇT!lÏ,$FZ\0ßpsìP¢§Ø¸7\"nonÌ–U­ºó.KRb\"‘î“£9*ù©æª266°†o\"ÙÅ¶+Ï—®’ºcL)5Ñjš]¸q½¯lÆ\\<V‰\\¾òliR‘n¼Îzsny¥7“ü†­­aš±FYŠì!†à8!særZ\nº\'Fù\"x³Ø÷Æáplæ’×Œˆ#%Óù9Ë\ZŠ(#§’D­lšÒ)N7<¹#. 2\\åÌ\'2I\'2Nd“´µ–›\Zã°Æ¶ctjhA,VÙLtk£A]µQAXØ\\CFÒCGi6]w›Í%­¤†×l Lî Û~ñø×5äİ69šNÆãÛ°~g¹wÎe4øu5®Èı[:š,ãn«ÇÀ¬#¦¢\"Š\"\"\" \"\"\" -.´ğ¡¡ª«Ëc-Œò»£ëéOP+~¸oüEé——ÒP6ø\rSøèãØ^~!Ás‰$’I$’Nd“™%Q.ˆ2ÏPçáÄo…¡ƒ©£ ÓÕ9í¦Öcp‹p¹<NA`D$©¼mˆ4;vXœlFÛ\\ö\\ìtD±•WD#a>%dmKÇÛwŞ+ Ú>G¶Íé\r$¼³WŒ:A`ˆ¶Ù7;^÷¸9oYô£¤€S~7I&{p4ñ“…—Ïµí«H¨®äO\Z^_á?Ñ^4Ã÷µ¾~k\\‰Í#gûdûÄıF—Ùà¢Õ¢¼Ò6Ÿ´Ùì»ä«ûB?âğş«T¨œÒiµ5±ñ>PÎÃö‡Ífv›12’&†b¹/2½Øzn.Äa •œUÔ:j9ï}R^,\ri8C]rqØ73ê‡¬©6vDS#}¡â¬y&áI‚ª’Ñ‡Âã…–u€é»!{âíã®ú™%Ä’|‚mTDUkI \r¤€;NÅ¤äü`{÷ÈìİØ~XÊúƒ’\Z3Ñ¨é µ‹cpş7ôŞ>óˆî\\7ÚMYEMk±„HşhÄoÚGÆÑJÊ@ˆŠ(ˆˆˆ€ˆˆˆ€¼Ç,¹O¤p:BæK-dŒ9á&ø^69·ï6\"åztAÇjù™~x*˜x]­Ãä´õ<ÌÕUğ;´‘çæ»Ò+±ó•O4ÕíÙî¹ŸîjÕTsuZÍ´Rü7wá._PÙP´ ù*£’s³Ö‚¡½¬xüL_.‰¶Wpí\r?©}ˆb´Q»Öh= 4w;ıü®±;F¼}¦w’<À_\\Tr^ş½4.í‰ŸE®¨æûG;ü«º\\ÏÂB•}MÀÇ3ê­u£÷nîù/¦gæ£G;c$od®?ëYQÌÕ)Í²ÌßıgÉ¡Î®…Ãk\\;ZBÇußgæhúud{ÌwäğµõĞÕV¢\'{ØÛæ× âJ«¬TsO^?wûÂÔÆ­UO6µíÛC~¶–~‰?$ñ°©äUK=j)Çceÿ\0i[6€Ãë2V{Ö‰¡44(¶‡E7sİ÷Zï\'+¢¹Ş,pòºhk‘L:5ŞÓ<\\<ÚŸ³äàcÙõPFE!Ô2İ»¸_ÉbtXáÚÒX¶<Ÿ§Ç3x7¦{¶|Íû–¶ëÔòRŸ\\÷d^æÄ7`u»Iù$ÏÌöŠÕ5dgfÂY³İÙÑø•Ó—œä\\L‚œæë\\8œVî7á[áPŞ*ÈÊŠÑ â«ˆ(*ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆ)dÂ5c‚µÔí;B\"u\Zş¼1»Ş‡Ì-dü…ÑÎÌÑÁ~\"6´ø¶Êˆƒ_QÍwîK}Ùe,VZÚhhêºfüLwâiDMuG31}Š‡z6Ã…Aÿ\0ñùšz5,pàD±üÚòˆ®Äzk«3\rlg#b\'q±ÜpÉ~+\'ù«­dÚÊŒ8‡9ã{]Ànß—DØê0èÙwÙK‰ãz\"‚C)Ü²¶2ˆƒ#ZUàDUT@DDÿÙ',500,0.3,'1 year warranty is applicable',7,'approved',0,0,'');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `size`
--

DROP TABLE IF EXISTS `size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `size` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `size` varchar(10) DEFAULT NULL,
  `count` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `size`
--

LOCK TABLES `size` WRITE;
/*!40000 ALTER TABLE `size` DISABLE KEYS */;
INSERT INTO `size` VALUES (1,13,'XL',20),(2,13,'XXL',30),(3,15,'S',10),(11,13,'S',12),(12,15,'M',18),(13,15,'L',11);
/*!40000 ALTER TABLE `size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) DEFAULT 'None',
  `password1` varchar(25) DEFAULT 'None',
  `user_type` enum('customer','seller','distributor','franchise','admin') DEFAULT NULL,
  `first_name` varchar(45) DEFAULT 'None',
  `last_name` varchar(45) DEFAULT 'None',
  `company` varchar(100) DEFAULT 'None',
  `address` varchar(100) DEFAULT 'None',
  `address1` varchar(100) DEFAULT 'None',
  `pin` varchar(45) DEFAULT 'None',
  `city` varchar(45) DEFAULT 'None',
  `state` varchar(45) DEFAULT 'None',
  `country` varchar(10) DEFAULT NULL,
  `sex` enum('male','female') DEFAULT 'male',
  `status` enum('active','awaiting','inactive') DEFAULT 'inactive',
  `mobile1` varchar(18) DEFAULT 'None',
  `mobile2` varchar(18) DEFAULT 'None',
  `email1` varchar(50) DEFAULT 'None',
  `email2` varchar(50) DEFAULT 'None',
  `balance` double DEFAULT '0',
  `joining_date` varchar(45) DEFAULT NULL,
  `phone1` varchar(18) DEFAULT 'None',
  `phone2` varchar(18) DEFAULT 'None',
  `fax1` varchar(20) DEFAULT 'None',
  `fax2` varchar(20) DEFAULT 'None',
  `pan` varchar(15) DEFAULT 'None',
  `voter_id` varchar(20) DEFAULT 'None',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'9007785663','12345','customer','Dipankar','Das','Individual','623 (OLD-592)','Purba  Sinthee Road','700030','Kolkata','WB','IN','male','active','7890000443','7890000443','jewel.skypoint@gmail.com','',0,'16-11-2015 05:16 PM',NULL,NULL,NULL,NULL,NULL,NULL),(2,'seller1','12345','seller','Dipankar','Das','Surakha E Commerce Pvt Ltd','151 Dum Dum Road','LP 1/14','700074','Kolkata','WB','IN','male','active','7890000443','7890000443','jewel.skypoint@gmail.com',NULL,0,'18-11-2015 11:07 AM',NULL,NULL,NULL,NULL,NULL,NULL),(3,'admin','12345','admin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'male','active',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'1','2','franchise','jjjjjj','sssss','DF I P V T','ewhfehfvhewfhew',NULL,'888484','kol','west',NULL,'male','active','900055564','8','9','10',34200,'2015-12-16 17:54:39.949','11','12','13','14','19','20'),(16,'f2','f2','franchise','Raja','Mukherjee','RM Software','Dharmatala',NULL,'700001','Kolkata','WB',NULL,'male','active','900088877','8','9','10',100,'2015-12-17 12:32:11.903','11','12','13','14','JHJFD7D0','JNDFNJFD77F'),(17,'2','2','distributor','Soumya','Pal','Skypoint','15',NULL,'18','16','17',NULL,'male','active','7','8','9','10',250,'2015-12-21 17:24:52','11','12','13','14','19','20'),(18,'3','2','distributor','Sourav','Sirkar','Skypoint','15',NULL,'18','16','17',NULL,'male','active','7','8','9','10',250,'2015-12-22 10:28:26','11','12','13','14','19','20'),(19,'seller19','1','seller','Ramesh','Devyani','FlyHigh Aviation Tech Pvt. Ltd.','Ga3/4 VF, Dover Lane','Gariahat Road','700056','Kolkata','WB','IN','male','active','999999999','38383838383','ramesh@gmail.com','None',0,'2016-03-04 17:00:43','033256789','None','033678965','None','BFD5674BG','None'),(20,'s2','1','seller','j','s','sd','ff',NULL,'77','kol','MH','IN','male','awaiting','777',NULL,'t@4',NULL,0,NULL,'444',NULL,NULL,NULL,NULL,NULL),(21,'s3','1','seller','j','s','sd','ff',NULL,'77','kol','WB','IN','male','awaiting','777',NULL,'t@4',NULL,0,NULL,'444',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_commission`
--

DROP TABLE IF EXISTS `user_commission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_commission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type` enum('franchise','distributor') DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `up_line_type` enum('admin','franchise') DEFAULT NULL,
  `up_line_id` int(11) DEFAULT NULL,
  `commission` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_commission`
--

LOCK TABLES `user_commission` WRITE;
/*!40000 ALTER TABLE `user_commission` DISABLE KEYS */;
INSERT INTO `user_commission` VALUES (1,'franchise',15,'admin',3,50),(2,'franchise',16,'admin',3,50),(3,'distributor',17,'franchise',15,20),(4,'distributor',18,'franchise',15,30);
/*!40000 ALTER TABLE `user_commission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weight_rate`
--

DROP TABLE IF EXISTS `weight_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weight_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weight` double DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `user_id` int(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weight_rate`
--

LOCK TABLES `weight_rate` WRITE;
/*!40000 ALTER TABLE `weight_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `weight_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'testecom'
--
/*!50003 DROP FUNCTION IF EXISTS `maxProductId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `maxProductId`(subCategory varchar(18)) RETURNS int(11)
    DETERMINISTIC
BEGIN

declare productId int(18);

select max(product_id) into productId 
from product 
where sub_category = subCategory and status = 'approved';


RETURN productId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addProduct` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addProduct`(

out id1    int(18),

in userId int(18),
in userCompany varchar(100),

in inputStream1 blob,
in inputStream2 blob,
in inputStream3 blob,

in category1      varchar(50),
in subCategory    varchar(50),
in productCompany varchar(50),
in productName    varchar(50),

in manufacturingCost1         double,
in profitMarginPercentage1    double,
in salePriceToAdmin           double,
in listPrice                  double,
in discount1                  double,

in stock int,
in weight double,
in warranty varchar(50),
in cancellationAfterBooked1 int
)
BEGIN

insert into product (seller_id, seller_company, icon_image, image1, image2, category, sub_category, 
company_name, product_name, manufacturingCost, profitMarginPercentage, sale_price,
list_price, discount, stock, weight, warranty, calcellation_after_booked, status, markup, salePriceCustomer,
f_commission, d_commission, productAdditionDate) 
values (userId, userCompany, inputStream1, inputStream2, inputStream3, category1, subCategory, productCompany,
productName, manufacturingCost1, profitMarginPercentage1,
salePriceToAdmin, listPrice, discount1, stock, weight, warranty, cancellationAfterBooked1, 'awaiting',
0, 0, 0, 0, '');

select max(id) into id1 from product;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `createDistributor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `createDistributor`(IN dUserId VARCHAR(50), IN password1 VARCHAR(50), IN fName VARCHAR(50),
 IN lName VARCHAR(50), IN sex VARCHAR(50), IN company VARCHAR(50), IN mobile1 VARCHAR(50), IN mobile2 VARCHAR(50),
  IN email1 VARCHAR(50), IN email2 VARCHAR(50), IN phone1 VARCHAR(50), IN phone2 VARCHAR(50), IN fax1 VARCHAR(50),
   IN fax2 VARCHAR(50), IN address VARCHAR(50), IN city VARCHAR(50), IN state VARCHAR(50), IN pin VARCHAR(50),
    IN pan VARCHAR(50), IN voterId VARCHAR(50), IN joiningDate VARCHAR(50), IN userId INT, IN userType VARCHAR(50),
    IN choosePin VARCHAR(50), IN area VARCHAR(50))
BEGIN
	DECLARE id1 INT;
    DECLARE count INT DEFAULT 0;

	INSERT INTO user (user_id, password1, first_name, last_name, sex, company, mobile1, mobile2, phone1, phone2,
		fax1, fax2, address, city, state, pin, pan, voter_id, email1, email2, user_type, joining_date) 
		VALUES (dUserId, password1, fName, lName, sex, company, mobile1, mobile2, phone1, phone2, fax1, fax2, address,
		city, state, pin, pan, voterId, email1, email2, 'distributor', joiningDate);
    
    SELECT MAX(id) INTO id1 FROM user;   
		
	INSERT INTO distributor_pin_area_map (f_id, d_id, pin, area) VALUES (userId, id1, choosePin, area);	
    
    INSERT INTO user_commission (user_type, user_id, up_line_type, up_line_id) 
		VALUES ('distributor', id1, userType, userId);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `createFranchise` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `createFranchise`(IN fUserId VARCHAR(50), IN password1 VARCHAR(50), IN fName VARCHAR(50),
 IN lName VARCHAR(50), IN sex VARCHAR(50), IN company VARCHAR(50), IN mobile1 VARCHAR(50), IN mobile2 VARCHAR(50),
  IN email1 VARCHAR(50), IN email2 VARCHAR(50), IN phone1 VARCHAR(50), IN phone2 VARCHAR(50), IN fax1 VARCHAR(50),
   IN fax2 VARCHAR(50), IN address VARCHAR(50), IN city VARCHAR(50), IN state VARCHAR(50), IN pin VARCHAR(50),
    IN pan VARCHAR(50), IN voterId VARCHAR(50), IN joiningDate VARCHAR(50), IN userId INT, IN userType VARCHAR(50))
BEGIN

	DECLARE id1 INT;
    DECLARE count INT DEFAULT 0;

	INSERT INTO user (user_id, password1, first_name, last_name, sex, company, mobile1, mobile2, phone1, phone2,
		fax1, fax2, address, city, state, pin, pan, voter_id, email1, email2, user_type, joining_date) 
		VALUES (fUserId, password1, fName, lName, sex, company, mobile1, mobile2, phone1, phone2, fax1, fax2, address,
		city, state, pin, pan, voterId, email1, email2, 'franchise', joiningDate);
    
    SELECT MAX(id) INTO id1 FROM user;
    
    REPEAT
		SET count = count + 1;
		INSERT INTO franchise_pin_map (f_id) VALUES (id1);
	UNTIL count = 5 END REPEAT;
    
    INSERT INTO user_commission (user_type, user_id, up_line_type, up_line_id) 
		VALUES ('franchise', id1, userType, userId);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `editDeliveryAddress` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `editDeliveryAddress`(INOUT userId INT,
 INOUT fName varchar(50), INOUT lName varchar(50), INOUT contact1 varchar(50),
 INOUT address11 varchar(50), INOUT address22 varchar(50), INOUT city1 varchar(50), INOUT state1 varchar(50), 
 INOUT pin1 varchar(50))
BEGIN
	
    UPDATE deliverable_address
    SET first_name = fName, last_name = lName, contact = contact1,
    address = address11, address1 = address22, city = city1, state = state1, pin = pin1
    WHERE  user_id = userId;
		
	SELECT first_name, last_name, contact,  address, address1, city,  state,  pin
	INTO   fName,      lName,     contact1, address11, address22, city1, state1, pin1
	FROM   deliverable_address
	WHERE  user_id = userId;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `editProduct` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `editProduct`(

in productId           int(18),

in category1           varchar(50),
in subCategory         varchar(50),
in companyOfTheProduct varchar(50),
in productName         varchar(50),

in manufCost            double,
in profMarginPercentage double,
in salePriceToAdmn      double,
in salePriceToCustmr    double,
in markupPercentage     double,
in listPrice            double,
in dscount              double,

in stk                  int(4),
in wght                 double,
in wrrnty               varchar(100),
in cancellationOfBooking int(4)
)
BEGIN

	update product set category = category1, sub_category = subCategory, company_name = companyOfTheProduct,
    product_name = productName,
    manufacturingCost = manufCost, profitMarginPercentage = profMarginPercentage, sale_price = salePriceToAdmn,
    salePriceCustomer = salePriceToCustmr, markup = markupPercentage, list_price = listPrice, discount = dscount,
    stock = stk, weight = wght, warranty = wrrnty, calcellation_after_booked = cancellationOfBooking,
    status = 'awaiting'
    where id = productId;
    
    select * from product;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `extractDistributorDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `extractDistributorDetails`(IN f_user_id INT)
BEGIN
	SELECT d.pin, d.area, d.d_id,
		   u.id, u.company, u.first_name, u.last_name, u.balance,	   
           c.commission
	FROM   distributor_pin_area_map d
    JOIN   user u                       ON u.id = d.d_id
    JOIN   user_commission c            ON c.user_id = d.d_id 
    
    WHERE  d.f_id = f_user_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `extractFranchiseDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `extractFranchiseDetails`()
BEGIN
	SELECT u.id, u.company, u.first_name, u.last_name, u.balance,
	   p.pin,
       c.commission
	FROM user u
    JOIN franchise_pin_map p ON p.f_id = u.id
    JOIN user_commission c ON c.user_id = u.id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `generatePDF` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `generatePDF`(
in orderTableId int(18),
out base64 longtext
)
BEGIN

	select image into base64 from order_table_accessories where order_table_id = orderTableId;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllSellerForApprovalRegistration` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllSellerForApprovalRegistration`()
BEGIN

	select * from user where status = 'awaiting' and user_type = 'seller';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCustomerOrderHistroy` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getCustomerOrderHistroy`(in customerId int(18))
BEGIN

Declare count, minId int;
Declare orderTableId1, productId1 int(18);
Declare deliveredDate1 varchar(20); 
Declare calcellationAfterBooked1 int(4);
Declare sellerCompany1, productName1, companyName1 varchar(100);

Set sql_safe_updates = 0;
DROP TABLE IF EXISTS OrderHistroy;
CREATE TEMPORARY TABLE OrderHistroy (
	id INT(18) NOT NULL AUTO_INCREMENT, PRIMARY KEY (id),    
        -- order_table
    orderTableId Int (18), productId INT(18), qty INT(4), sellPrice Double, shippingCost Double, warranty varchar(200), 
    orderId varchar(45), status varchar(25), size int(4), orderState varchar(25), paymentType varchar(200),
    orderBookedDate varchar(50),
       -- order_table_accessories 
	deliveredDate varchar(45), calcellationAfterBooked int(4),
       -- product
	sellerCompany varchar(200), productName varchar(55), companyName varchar(85)
);

insert into OrderHistroy (orderTableId, productId, qty, sellPrice, shippingCost, warranty, orderId, status, size, orderState, paymentType, orderBookedDate)
select id, product_id, qty, sell_price, shipping_cost, warranty, order_id, status, size, order_state, payment_type, date_time from order_table where customer_id = customerId AND status = 'Success';

-- select * from OrderHistroy;

-- total count
select count(*) into count from OrderHistroy;
-- minimum id number to start operation
select min(id)  into minId from OrderHistroy;

-- select minId, count;

while count >= minId do

	select orderTableId, productId into orderTableId1, productId1 from OrderHistroy where id = minId;
	set minId = minId + 1;
    
           -- order_table_accessories 
    select delivered_date, calcellation_after_booked into deliveredDate1, calcellationAfterBooked1 
    from order_table_accessories 
    where order_table_id = orderTableId1;
    

	update OrderHistroy set deliveredDate = deliveredDate1, calcellationAfterBooked = calcellationAfterBooked1 
    where orderTableId = orderTableId1;
    
    -- product
    select seller_company, product_name, company_name into sellerCompany1, productName1, companyName1
    from product 
    where id = productId1;
    
	update OrderHistroy set sellerCompany = sellerCompany1, productName = productName1, companyName = companyName1
    where productId = productId1;
    
end while;

-- select minId;

select * From OrderHistroy;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getDataForTrackNumberGeneration` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getDataForTrackNumberGeneration`(in orderTableId int(18))
BEGIN

	declare sellerId, productId, customerId int(18);
    
    select seller_id, product_id, customer_id
    into sellerId, productId, customerId 
    from order_table where id = orderTableId;
    
    -- select sellerId, productId;
    
    SELECT o.contact, o.address, o.address1, o.city, o.state, o.pin, o.first_name, o.last_name, o.email,
    o.sell_price, o.shipping_cost, o.qty,
    da.contact as da_contact, da.address as da_address, da.address1 as da_address1, da.city as da_city, da.state as da_state, 
    da.pin as da_pin, da.first_name as da_fName, da.last_name as da_lName, da.email as da_email,
    p.weight, p.product_name, p.company_name, p.weight,
    seller.company as seller_company, 
    customer.company as customer_company
    FROM order_table o
    JOIN deliverable_address da ON da.user_id   = sellerId
    JOIN product p              ON p.product_id = productId
    JOIN user seller            ON seller.id    = sellerId
    JOIN user customer          ON customer.id  = customerId
    WHERE o.id = orderTableId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getDataForTrackStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getDataForTrackStatus`(in orderTableId int(18))
BEGIN

	select o.address, o.city, o.state, o.pin,
    oa.track_number
    from order_table             o
    join order_table_accessories oa    on oa.order_table_id = orderTableId    
    where o.id = orderTableId;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getDeliveryAddressCustomer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getDeliveryAddressCustomer`(in userId int(18))
BEGIN

	select * from deliverable_address where user_id = userId;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getDistributorFranchiseDeducedBalance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getDistributorFranchiseDeducedBalance`(IN productId INT)
BEGIN
select markup, f_commission, d_commission from product where id = productId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getFirstPageProducts` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getFirstPageProducts`()
BEGIN

	select * from product 
    where 
    product_id = maxProductId('Mobile') 
    or 
    product_id = maxProductId('Leggings')
    or
    product_id = maxProductId('Top')
    or
    product_id = maxProductId('Laptop')
    or
    product_id = maxProductId('MenTshirt')
    or
    product_id = maxProductId('Jeans')
    or
    product_id = maxProductId('Boys_Shirt');
			


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getFranchiseDeducedBalance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getFranchiseDeducedBalance`(IN productId INT)
BEGIN
select markup, f_commission from product where id = productId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getFranchiseId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getFranchiseId`(IN id1 int)
BEGIN


declare pin1 varchar(15);
declare fId int;

SELECT pin INTO pin1 FROM deliverable_address WHERE user_id = id1;

SELECT f_id into fId FROM franchise_pin_map WHERE pin = pin1;

if (fId is null) then

	set fId = 0;
    
end if;

select fId;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getFranchiseIdOfDistributor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getFranchiseIdOfDistributor`(IN d_id1 int)
BEGIN
SELECT f_id FROM distributor_pin_area_map WHERE d_id = d_id1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getInputDataForRateRequest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getInputDataForRateRequest`(IN productId INT, IN userId INT)
BEGIN
declare sellerId INT;
declare id1 INT;
declare address11 varchar(50); declare city11 varchar(50); declare pin11 varchar(50);
declare address22 varchar(50); declare city22 varchar(50); declare pin22 varchar(50);



select seller_id into sellerId from product where id = productId;

select 
s.first_name, s.last_name, s.company, s.address, s.address1, s.city, s.pin, s.state, s.contact, s.country, s.email,
c.first_name as cFName, c.last_name as cLName, c.company as cCompany, c.address as cAddress, c.address1 as cAddress1, 
c.city as cCity, c.pin as cPin, c.state as cState, c.contact as cContact, c.country as cCountry, c.email as cEmail,
p.weight, p.salePriceCustomer
from deliverable_address s
join deliverable_address c  on c.user_id = userId
join product p on p.id = productId
where s.user_id = sellerId;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getJustOrderedItems` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getJustOrderedItems`(in transactionId varchar(25))
BEGIN

	declare maxId, minId, qty1, size1 int;
    declare productId int(18);    
    declare sellPrice double; declare shippingCost double;    
    declare sellerCompany, productName, companyName varchar(100);
    
    DROP TABLE IF EXISTS RequiredInfo;
	CREATE TEMPORARY TABLE RequiredInfo (
		id INT NOT NULL AUTO_INCREMENT, 
		product_id INT(18), qty INT(4), size INT(4),                                     -- order_table
        sellPriceWithShipping double, transactionId varchar(25),                         -- order_table
        sellerCompany varchar(100), productName varchar(100), companyName varchar(100),  -- product Table
		PRIMARY KEY (id)    
	);

	-- insert into RequiredInfo (product_id, qty, size)
	-- select product_id, qty, size from order_table where order_id = trnxId;
    
    select max(id) into maxId from order_table where order_id = transactionId;    -- Max Id
    select min(id) into minId from order_table where order_id = transactionId;    -- Min Id
    
    while minId <= maxId do	
    
		select product_id, qty,  size,  sell_price, shipping_cost
        into   productId,  qty1, size1, sellPrice,  shippingCost
        from   order_table where id = minId;
        
        select seller_company, product_name, company_name
        into   sellerCompany,  productName,  companyName
        from   product where id = productId;
        
        insert into RequiredInfo 
        (product_id, qty, size, sellPriceWithShipping, sellerCompany, productName, companyName, transactionId)
        values (productId, qty1, size1, sellPrice+shippingCost, sellerCompany, productName, companyName, transactionId);
        
        set minId = minId + 1;        
    
    end while;
    
    
    select * from RequiredInfo;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getMarkupDistCommFranCommfID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getMarkupDistCommFranCommfID`(IN productId INT, IN userId INT)
BEGIN
	SELECT p.markup, p.f_commission, p.d_commission,	   
       c.up_line_id
	FROM product p    
    JOIN user_commission c ON c.user_id = userId
    WHERE product_id = productId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getOrderIdForCustomer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getOrderIdForCustomer`(in customerId int(18))
BEGIN

select order_id from order_table where customer_id = customerId and status = 'Success';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getOrderTables` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getOrderTables`(in userId int(18))
BEGIN

	select * from order_table where seller_id = userId AND status = 'Success';


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getOrderTablesForAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getOrderTablesForAdmin`()
BEGIN

--  declare deliveredDate date;

	-- select delivered_date into deliveredDate from order_table_accessories 
    
    
    
    
    
    
    
    select 
    o.id, o.customer_id, o.product_id, o.seller_id, o.qty, o.sell_price, o.shipping_cost, o.warranty,
    o.order_id, o.date_time, o.status, o.size, o.order_state, o.payment_type, o.contact, o.address, o.address1,
    o.city, o.state, o.pin, o.first_name, o.last_name, o.email, o.company, o.country,
    
    u.id as uId, u.user_type, u.first_name as uFName, u.last_name as uLName, u.company as uCompany, 
    u.address as uAddress, u.address1 as uAddress1, u.pin as uPin, u.city as uCity, u.state as uState, 
    u.country as uCountry, u.sex as uSex, u.mobile1 as uMobile, u.email1 as uEmail, u.balance,
    
    a.track_number, a.delivered_date, a.picked_up_date, a.calcellation_after_booked, a.courier
    
    from order_table o, user u, order_table_accessories a
    where u.id = o.seller_id and o.id = a.order_table_id 
		and field(o.order_state, 'Booked', 'Pickup', 'Picked', 'Cancel', 'Return', 'Delivered');
            
            
            
            
            
            
            
            
            
            
            
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getSizeGarmentModel` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getSizeGarmentModel`(in productId int)
BEGIN

select * from garment_size where product_id = productId; 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getUserAndPicupAddress` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getUserAndPicupAddress`(in userId int(18))
BEGIN

	select u.id, u.user_id, u.user_type, u.first_name, u.last_name, u.company, u.address, u.address1,
    u.pin, u.city, u.state, u.country, u.sex, u.mobile1, u.mobile2, u.email1, u.email2, u.phone1, u.phone2,
    u.fax1, u.fax2, u.pan, u.voter_id,
    da.id as da_id, da.user_id as userId, da.first_name as firstName, da.last_name as lastName, da.company as company1,
    da.address as daAddress1, da.address1 as daAddress2, da.city as city1, da.pin as pin1, da.state as state1,
    da.contact as mobile, da.email as daEmail1, da.country as country1
    from user u
    join  deliverable_address da 
    on    da.user_id = userId     
    where u.id = userId;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getUserByTranxId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getUserByTranxId`(in transactionId varchar(25))
BEGIN
	declare customerId int(18);
    
	select customer_id into customerId from order_table where order_id = transactionId limit 1;
    
    select * from user where id = customerId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertQtyOfRow` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertQtyOfRow`(INOUT qty1 INT, IN productId INT, IN userId INT,
in cartWishlistID int(18))
BEGIN
	UPDATE cart_wishlist SET qty = qty1 
    WHERE product_id = productId AND user_id = userId AND cart_wishlist = 'cart' AND id = cartWishlistID;
    
	SELECT qty INTO qty1 FROM cart_wishlist 
    WHERE product_id = productId AND user_id = userId AND cart_wishlist = 'cart' AND id = cartWishlistID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `newDeliveryAddress` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `newDeliveryAddress`(INOUT userId INT,
 INOUT fName varchar(50), INOUT lName varchar(50), INOUT contact1 varchar(50),
 INOUT address11 varchar(50), INOUT address22 varchar(50),
 INOUT city1 varchar(50), INOUT state1 varchar(50), INOUT pin1 varchar(50))
BEGIN
	
    INSERT INTO deliverable_address
           (first_name, last_name, contact,  address,  address1, city,  state,  pin,  user_id)
    VALUES (fName,      lName,     contact1, address11, address22, city1, state1, pin1, userId);    
		
	SELECT first_name, last_name, contact,  address,  address1, city,  state,  pin
	INTO   fName,      lName,     contact1, address11, address22, city1, state1, pin1
	FROM   deliverable_address
	WHERE  user_id = userId;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `registerCustomer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `registerCustomer`(
in cUserId varchar(25),
in paSSword1 varchar(35),
in fName1 varchar(15),   
in lName1 varchar(15),
in seX varchar(50),
in companY1 varchar(50),
in mobileNo1 varchar(18),
in mobileNo2 varchar(18),
in eMail1 varchar(35),
in eMail2 varchar(35),
in addreSS varchar(50),
in addreSS1 varchar(50),
in citY1 varchar(35),
in stateName1 varchar(35),
in pIn1 varchar(15),
in countrY1 varchar(15),
in userType varchar(35),

in fName2 varchar (15),
in lName2 varchar (15),
in companY2 varchar(50),
in mobileNo3 varchar (15),
in addreSS2 varchar(50),
in addreSS3 varchar(50),
in citY2 varchar (35),
in pIn2 varchar (15),
in stateName2 varchar (35),
in countrY2 varchar(15),
in eMail3 varchar(35),

out exist boolean)
BEGIN

-- Soumya

declare pre_id int;
declare post_id int;
declare count int default 0;

select max(id) into pre_id from user;

insert into user 
(user_id, password1, first_name, last_name, sex, company, 
mobile1, mobile2, email1, email2, address, address1, city, state, pin, country, user_type, status, joining_date) 
values (cUserId, paSSword1, fName1, lName1, seX, companY1, mobileNo1, mobileNo2, 
eMail1, eMail2, addreSS, addreSS1, citY1, stateName1, pIn1, countrY1, userType, 'active', now());

select max(id) into post_id from user;

if (post_id > pre_id) then
insert into deliverable_address (user_id, first_name, last_name, company, contact, address, address1, city, pin,  state, country, email) 
values (post_id, fName2, lName2, companY2, mobileNo3, addreSS2, addreSS3, citY2, pIn2, stateName2, countrY2, eMail3);
    set exist = true;

 -- if exists (select * from deliverable_address where user_id = cUserId) then
   -- set exist = false;
		else
   set exist = false;
 -- insert into deliverable_address (user_id, first_name, last_name, email, contact, address, pin, city, state) 
 -- values (cUserId, fName2, lName2, eMail2, mobileNo2, addreSS2, pIn2, citY2, stateName2);
 
 end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `registerSeller` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `registerSeller`(in rUserId varchar(25),
in paSSword1 varchar(35),
in fName1 varchar(20),   
in lName1 varchar(20),
in seX varchar(10),
in companY1 varchar(100),
in mobileNo1 varchar(18),
in mobileNo2 varchar(18),
in phoneNo1 varchar(18),
in phoneNo2 varchar(18),
in eMail1 varchar(35),
in eMail2 varchar(35),
in faX1 varchar(25),
in faX2 varchar(25),
in addreSS varchar(50),
in addreSS1 varchar(50),
in citY1 varchar(35),
in stateName1 varchar(35),
in pIn1 varchar(15),
in countrY1 varchar(15),
in pan1 varchar(15),
in voterId1 varchar(20),
in userType varchar(35),

in fName2 varchar (15),
in lName2 varchar (15),
in companY2 varchar(100),
in mobileNo3 varchar (15),
in addreSS2 varchar(50),
in addreSS3 varchar(50),
in citY2 varchar (35),
in pIn2 varchar (15),
in stateName2 varchar (35),
in countrY2 varchar(15),
in eMail3 varchar (35),

out exist boolean)
BEGIN

-- Soumya

declare pre_id int;
declare post_id int;
declare count int default 0;

select max(id) into pre_id from user;

insert into user 
(user_id, password1, first_name, last_name, sex, company, mobile1, mobile2, phone1, phone2, 
email1, email2, fax1, fax2, address, address1, city, state, pin, country, pan, voter_id, user_type, status) 
values (rUserId, paSSword1, fName1, lName1, seX, companY1, mobileNo1, mobileNo2, phoneNo1, phoneNo2, 
        eMail1, eMail2, faX1, faX2, addreSS, addreSS1, citY1, stateName1, pIn1, countrY1, pan1, voterId1, userType, 'awaiting');

select max(id) into post_id from user;

if (post_id > pre_id) then

insert into deliverable_address 
(user_id, first_name, last_name, company, contact, address, address1, city,  pin, state, country, email) 
values (post_id, fName2, lName2, companY2, mobileNo3, addreSS2, addreSS3, citY2, pIn2, stateName2, countrY2, eMail3);
   set exist = true;

		else
   set exist = false;
 
 
 end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `returnDistributorFranchiseCommissionBalance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `returnDistributorFranchiseCommissionBalance`(in fId INT, in dId int, 
IN fAddBalance double, IN dAddBalance double, out status1 boolean)
BEGIN
declare fOldBalance double;
declare fNewBalance double;

declare dOldBalance double;
declare dNewBalance double;

select balance into fOldBalance from user where id = fId;
select balance into dOldBalance from user where id = dId;

set fNewBalance = fOldBalance - fAddBalance;
set dNewBalance = dOldBalance - dAddBalance;

update user set balance = fNewBalance where id = fId;
update user set balance = dNewBalance where id = dId;

select balance into fNewBalance from user where id = fId;
select balance into dNewBalance from user where id = dId;

if (fNewBalance < fOldBalance && dNewBalance < dOldBalance) then
	set status1 = true;
end if; 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `returnFranchiseCommissionBalance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `returnFranchiseCommissionBalance`(in fId INT, IN addBalance double,
out status1 boolean)
BEGIN
declare oldBalance double;
declare newBalance double;

select balance into oldBalance from user where id = fId;

set newBalance = oldBalance - addBalance;

update user set balance = newBalance where id = fId;

select balance into newBalance from user where id = fId;

if (newBalance < oldBalance) then
	set status1 = true;
end if; 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setAddtionalBalance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setAddtionalBalance`(IN id1 INT, IN addBalance DOUBLE, OUT balance1 DOUBLE)
BEGIN
	DECLARE oldBalance DOUBLE;
    DECLARE newBALANCE DOUBLE;
    
    SELECT balance INTO oldBalance FROM user WHERE id = id1;
    
    SET newBALANCE = oldBalance + addBalance;
    
    UPDATE user SET balance = newBALANCE WHERE id = id1;
    
    SELECT balance INTO balance1 FROM user WHERE id = id1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setAddtionalBalance2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setAddtionalBalance2`(IN id1 INT, IN addBalance DOUBLE, OUT balance1 DOUBLE)
BEGIN
	DECLARE oldBalance DOUBLE;
    DECLARE newBALANCE DOUBLE;
    
    SELECT balance INTO oldBalance FROM user WHERE id = id1;
    
    SET newBALANCE = oldBalance + addBalance;
    
    UPDATE user SET balance = newBALANCE WHERE id = id1;
    
    SELECT balance INTO balance1 FROM user WHERE id = id1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setApproveProduct` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setApproveProduct`(
out statusQuery boolean,

in productId int(18),

in discount1 double,
in salePriceToCustomer double,
in markupPercentage double,
in salePriceToAdmin double,
in profitMarginPercentage1 double,

in franComm double,
in drisComm double,

in weight1 double,
in warranty1 varchar(100),
in cancellationAfterBooked int(4)
)
BEGIN

	update product set discount = discount1, salePriceCustomer = salePriceToCustomer, markup = markupPercentage,
    sale_price = salePriceToAdmin, profitMarginPercentage = profitMarginPercentage1, f_commission = franComm,
    d_commission = drisComm, weight = weight1, warranty = warranty1, 
    calcellation_after_booked = cancellationAfterBooked, productAdditionDate = now(), status = 'approved'
    where id = productId;
    
    set statusQuery = true;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setApproveSeller` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setApproveSeller`(

in id1       int(18),
in userId    varchar(25),
in fName     varchar(20),   
in lName     varchar(20),
in company1  varchar(100),
in addreSS   varchar(50),
in addreSS1  varchar(50),
in pIn1      varchar(15),
in citY1     varchar(35),
in stateName1 varchar(35),
in countrY1  varchar(50),
in sex1      varchar(10),
in mobileNo1 varchar(18),
in mobileNo2 varchar(18),
in eMail1    varchar(35),
in eMail2    varchar(35),
in phoneNo1  varchar(18),
in phoneNo2  varchar(18),
in faX1      varchar(25),
in faX2      varchar(25),
in pan1      varchar(15),
in voterId1  varchar(20),

in fName2    varchar (15),
in lName2    varchar (15),
in companY2  varchar(100),
in addreSS2  varchar(50),
in addreSS3  varchar(50),
in citY2     varchar (35),
in pIn2      varchar (15),
in stateName2 varchar (35),
in mobileNo3 varchar (15),
in countrY2  varchar(50),
in eMail3    varchar (35),

out queryStatus boolean)
BEGIN

update user set
user_id = userId, first_name = fName, last_name = lName, company = company1, address = addreSS, 
address1 = addreSS1, pin = pIn1, city = citY1, state = stateName1, country = countrY1, sex = sex1,
mobile1 = mobileNo1, mobile2 = mobileNo2, email1 = eMail1, email2 = eMail2, phone1 = phoneNo1, phone2 = phoneNo2, 
fax1 = faX1, fax2 = faX2, pan = pan1, voter_id = voterId1, joining_date = now(), status = 'active'
where id = id1;

update deliverable_address set
first_name = fName2, last_name = lName2, company = companY2,  address = addreSS2, address1 = addreSS3, 
city = citY2,  pin = pIn2, state = stateName2, contact = mobileNo3, country = countrY2, email = eMail3
where user_id = id1; 
 
set queryStatus = true;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setDeliveryAddressIfExists` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setDeliveryAddressIfExists`(INOUT userId INT, OUT exist BOOLEAN,
 OUT id1 INT, OUT fName varchar(50), OUT lName varchar(50), OUT contact1 varchar(50),
 OUT address11 varchar(50),  OUT address12 varchar(50),
 OUT city1 varchar(50), OUT state1 varchar(50), OUT pin1 varchar(50), out email1 varchar(50), out company1 varchar(50))
BEGIN
	IF EXISTS (SELECT * FROM deliverable_address WHERE user_id = userId) THEN
		SET exist = true;
        SELECT id , user_id, first_name, last_name, contact,  address,  address1, city,  state,  pin,  email,
        company
        INTO   id1, userId,  fName,      lName,     contact1, address11, address12, city1, state1, pin1, email1,
        company1
        FROM   deliverable_address
        WHERE  user_id = userId;
	ELSE
		SET exist = false;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setDistributorArea` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setDistributorArea`(
	IN id1 INT, INOUT area1 VARCHAR(50))
BEGIN
	UPDATE distributor_pin_area_map SET area = area1 WHERE d_id = id1;
    
    SELECT area INTO area1 FROM distributor_pin_area_map
    WHERE d_id = id1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setDistributorCommission` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setDistributorCommission`(
	IN id1 INT, INOUT commission1 DOUBLE)
BEGIN
	UPDATE user_commission SET commission = commission1 WHERE user_id = id1;
    
    SELECT commission INTO commission1 FROM user_commission
    WHERE user_id = id1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setDistributorFranchiseCommissionBalance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setDistributorFranchiseCommissionBalance`(in fId INT, in dId int, 
IN fAddBalance double, IN dAddBalance double, out status1 boolean)
BEGIN
declare fOldBalance double;
declare fNewBalance double;

declare dOldBalance double;
declare dNewBalance double;

select balance into fOldBalance from user where id = fId;
select balance into dOldBalance from user where id = dId;

set fNewBalance = fOldBalance + fAddBalance;
set dNewBalance = dOldBalance + dAddBalance;

update user set balance = fNewBalance where id = fId;
update user set balance = dNewBalance where id = dId;

select balance into fNewBalance from user where id = fId;
select balance into dNewBalance from user where id = dId;

if (fNewBalance > fOldBalance && dNewBalance > dOldBalance) then
	set status1 = true;
end if; 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setDistributorPin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setDistributorPin`(
	IN id1 INT, INOUT pin1 VARCHAR(50))
BEGIN
	UPDATE distributor_pin_area_map SET pin = pin1 WHERE d_id = id1;
    
    SELECT pin INTO pin1 FROM distributor_pin_area_map
    WHERE d_id = id1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setFranchiseCommissionBalance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setFranchiseCommissionBalance`(in fId INT, IN addBalance double,
out status1 boolean)
BEGIN
declare oldBalance double;
declare newBalance double;

select balance into oldBalance from user where id = fId;

set newBalance = oldBalance + addBalance;

update user set balance = newBalance where id = fId;

select balance into newBalance from user where id = fId;

if (newBalance > oldBalance) then
	set status1 = true;
end if; 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setItemCancelled` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setItemCancelled`(
in orderTableId int(18), out queryStatus boolean
)
BEGIN

declare productId int(18);
declare qty1      int(4);
declare size1     int(4);
declare oldStock, newStock int(4);
declare s261, s281, s301, s321, s341, s361, s381, s401, s421, s441, s461, s481 int(4);

	-- update cancelled
	update order_table set order_state = 'Cancelled' where id = orderTableId;
    
    -- get product_id
    select product_id, qty, size into productId, qty1, size1 from order_table where id = orderTableId;
    
    -- setback 'stock'
    select stock into oldStock from product where product_id = productId;
    set newStock = oldStock - qty1;
    update product set stock = newStock where product_id = productId;
    
    -- setback 'size'
    if (size1 = 26) then
		select s26 into s261 from garment_size where product_id = productId;
		set s261 = s261 - qty1;
		update garment_size set s26 = s261 where product_id = productId;
        
	elseif (size1 = 28) then
		select s28 into s281 from garment_size where product_id = productId;
		set s281 = s281 - qty1;
		update garment_size set s28 = s281 where product_id = productId;
        
    elseif (size1 = 30) then
		select s30 into s301 from garment_size where product_id = productId;
		set s301 = s301 - qty1;
		update garment_size set s30 = s301 where product_id = productId;
        
    elseif (size1 = 32) then
		select s32 into s321 from garment_size where product_id = productId;
		set s321 = s321 - qty1;
		update garment_size set s32 = s321 where product_id = productId;
        
    elseif (size1 = 34) then
		select s34 into s341 from garment_size where product_id = productId;
		set s341 = s341 - qty1;
		update garment_size set s34 = s341 where product_id = productId;
        
	elseif (size1 = 36) then
		select s36 into s361 from garment_size where product_id = productId;
		set s361 = s361 - qty1;
		update garment_size set s36 = s361 where product_id = productId;
        
    elseif (size1 = 38) then
		select s38 into s381 from garment_size where product_id = productId;
		set s381 = s381 - qty1;
		update garment_size set s38 = s381 where product_id = productId;
        
	elseif (size1 = 40) then
		select s40 into s401 from garment_size where product_id = productId;
		set s401 = s401 - qty1;
		update garment_size set s40 = s401 where product_id = productId;
        
    elseif (size1 = 42) then
		select s42 into s421 from garment_size where product_id = productId;
		set s421 = s421 - qty1;
		update garment_size set s42 = s421 where product_id = productId;
        
	elseif (size1 = 44) then
		select s44 into s441 from garment_size where product_id = productId;
		set s441 = s441 - qty1;
		update garment_size set s44 = s441 where product_id = productId;
        
    elseif (size1 = 46) then
		select s46 into s461 from garment_size where product_id = productId;
		set s461 = s461 - qty1;
		update garment_size set s46 = s461 where product_id = productId;
        
	elseif (size1 = 48) then
		select s48 into s481 from garment_size where product_id = productId;
		set s481 = s481 - qty1;
		update garment_size set s48 = s481 where product_id = productId;    
        
    end if;      
    
    
    set queryStatus = true;  
    

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setItemCancelOfCustomer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setItemCancelOfCustomer`(
in orderTableId int(18),
out queryStatus boolean)
BEGIN

	update order_table set order_state = 'Cancel' where id = orderTableId;
    
    set queryStatus = true;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setOrderFailed` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setOrderFailed`(
IN userId INT, IN orderId varchar(50), IN stringArray varchar(2000),
IN status1 varchar(50), OUT queryStatus boolean,
in contact1 varchar(100), in address1 varchar(100), in city1 varchar(100), in state1 varchar(100),
in pin1 varchar(100), in fName varchar(100), in lName varchar(100), in email1 varchar(100),
in paymentType varchar(100), in address22 varchar(100), in company1 varchar(10))
BEGIN

-- IN userId INT, IN orderId varchar(50), IN stringArray varchar(2000),
-- IN status1 varchar(50), OUT queryStatus boolean

declare idx, idx1 int;
declare preIdx, preIdx1 int;
declare strBlock, productIdStr, qtyStr, sellPriceStr, rateStr, sizeStr, warranty, cancellationAfterBookedStr varchar(200);
-- declare contact1, address1, city1, state1, pin1, fName, lName, email1 varchar(100);
declare productId, qty, sellerId, cancellationAfterBooked1 int(18);
declare sellPrice, rate double;
declare orderTableId int(18);

-- Main Str
set idx = locate(';', stringArray, 1);
set preIdx = 1;

WHILE idx > 0 DO 

set strBlock = substr(stringArray, preIdx, idx - preIdx);

	-- Block Str
    set preIdx1 = 1;
	set idx1 = locate(',', strBlock, 1);	
	set productIdStr = substr(strBlock, preIdx1, idx1 - preIdx1);
    set productId = cast(productIdStr as unsigned);
    select seller_id into sellerId from product where id = productId;
    
    set preIdx1 = idx1 + 1;
    set idx1 = locate(',', strBlock, preIdx1);
    set qtyStr = substr(strBlock, preIdx1, idx1 - preIdx1);
    set qty = cast(qtyStr as unsigned);
    
    set preIdx1 = idx1 + 1;
    set idx1 = locate(',', strBlock, preIdx1);
    set sizeStr = substr(strBlock, preIdx1, idx1 - preIdx1);    
    
    set preIdx1 = idx1 + 1;
    set idx1 = locate(',', strBlock, preIdx1);
    set sellPriceStr = substr(strBlock, preIdx1, idx1 - preIdx1);
    set sellPrice = cast(sellPriceStr as decimal(10,2));
    
    set preIdx1 = idx1 + 1;
    set idx1 = locate(',', strBlock, preIdx1);
    set rateStr = substr(strBlock, preIdx1, idx1 - preIdx1);
    set rate = cast(rateStr as decimal(10,2));
    
    set preIdx1 = idx1 + 1;
    set idx1 = locate(',', strBlock, preIdx1);
    set warranty = substr(strBlock, preIdx1, idx1 - preIdx1);  
    
    set preIdx1 = idx1 + 1;
    set idx1 = locate(',', strBlock, preIdx1);
    set cancellationAfterBookedStr = substr(strBlock, preIdx1, idx1 - preIdx1);
    set cancellationAfterBooked1 = cast(cancellationAfterBookedStr as unsigned);
	
	insert into order_table (customer_id, product_id, qty, size, sell_price, shipping_cost, warranty, order_id, 
    date_time, status, seller_id, contact, address, city, state, pin, first_name, last_name, email, 
    payment_type, address1, company) 
    values (userId, productId, qty, sizeStr, sellPrice, rate, warranty, orderId, now(), status1, sellerId,
    contact1, address1, city1, state1, pin1, fName, lName, email1, paymentType, address22, company1);
    
    -- create empty row in order_table_accessories
    select max(id) into orderTableId from order_table;
    insert into order_table_accessories (order_table_id, calcellation_after_booked) 
    values (orderTableId, cancellationAfterBooked1);
   
    -- main loop
    set preIdx = idx + 1;
	set idx = locate(';', stringArray, preIdx);

    
END WHILE;

set queryStatus = true;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setOrderPaid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setOrderPaid`(IN trnxId varchar(50), OUT queryStatus BOOLEAN)
BEGIN
	UPDATE order_table SET status = 'Paid' WHERE order_id = trnxId;
	SET queryStatus = true;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setOrderSuccess` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setOrderSuccess`(IN trnxId varchar(50), OUT queryStatus BOOLEAN)
BEGIN

/*SET lc_messages = 'en_US';*/
declare count2, minId, stock1, sId int(4);
declare count1 int(5);
declare productId, qty1 int(18);
declare sizeNo, sizeCount varchar(10);
declare s1 boolean default false;
declare s2 boolean default false;

DROP TABLE IF EXISTS RequiredInfo;
CREATE TEMPORARY TABLE RequiredInfo (
	id INT NOT NULL AUTO_INCREMENT, 
    product_id INT(18), qty INT(4), size varchar(10),  
    PRIMARY KEY (id)    
);

insert into RequiredInfo (product_id, qty, size)
select product_id, qty, size from order_table where order_id = trnxId;
-- total count
select count(*) into count2 from RequiredInfo;
-- minimum id number to start operation
select min(id)  into minId from RequiredInfo;

while count2 >= minId do

	select product_id, qty, size into productId, qty1, sizeNo from RequiredInfo where id = minId;
	set minId = minId + 1;
    
    -- deduce stock
    select stock into stock1 from product where id = productId;
    
    if (stock1 >= qty1) then
		set stock1 = stock1 - qty1;
		update product set stock = stock1 where id = productId;
        set s1 = true;	
	end if;
    
    -- deduce size
    if (s1 = true) then
		
		select id, count into sId, count1 from size where product_id = productId and size = sizeNo;
        set count1 = count1 - 1;
        update size set count = count1 where id = sId;
        
        set s2 = true;
        
	end if;
    
    -- delete from cart_wishlist
    delete from cart_wishlist where product_id = productId;
    

end while;



-- Order Success ---------------------------------------------

if (s2 = true || s1 = true) then 
	UPDATE order_table SET status = 'Success', order_state = 'Booked' WHERE order_id = trnxId;
	SET queryStatus = true;
end if;

-- -----------------------------------------------------------



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setPickedUp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setPickedUp`(in orderTableId int(18), in date1 varchar(50), out queryStatus boolean,
in courierName varchar(50))
BEGIN

	update order_table_accessories set picked_up_date = date1, courier = courierName where order_table_id = orderTableId;
    update order_table set order_state = 'Picked' where id = orderTableId;
    
    set queryStatus = true;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setPin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setPin`(IN id1 INT, IN position INT, IN pin1 VARCHAR(50),
		OUT updated BOOLEAN)
BEGIN
	DECLARE tableId INT;
    DECLARE matchId INT;
    /*DECLARE updated  BIT; */
    DECLARE false1 BIT;
    
    /* Get Position to insert data */
    SET tableId = (SELECT id FROM franchise_pin_map WHERE f_id = id1 GROUP BY f_id);
    SET tableId = tableId + position;    
    
    /* Get match id position*/
    SET matchId = (SELECT id FROM franchise_pin_map WHERE id <> tableId AND pin = pin1 GROUP BY pin);
    
    IF (matchId IS NOT NULL) THEN		
		SET updated = 0;
	ELSE
		UPDATE franchise_pin_map SET pin = pin1 WHERE id = tableId;
		SET updated = 1;
    END IF;    
    
    select matchId;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setTrackNumberIntoDatabase` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setTrackNumberIntoDatabase`(out queryStatus boolean, in trackingIdType varchar(20),
in formId varchar(20), in trackingNumber varchar(20), in image1 MEDIUMTEXT, in orderTableId int(18))
BEGIN
	
    
    update order_table_accessories set tracking_id_type = trackingIdType,
    form_id = formId, track_number = trackingNumber, image = image1
    where order_table_id = orderTableId;
    
    update order_table set order_state = 'Pickup' where id = orderTableId;
    
    set queryStatus = true;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `zTest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `zTest`()
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION SELECT 'SQLException encountered';
DECLARE EXIT HANDLER FOR SQLSTATE '23000' SELECT 'SQLSTATE 23000';

-- DECLARE table_not_found CONDITION for 1146;
DECLARE EXIT HANDLER FOR  1146 SELECT 'Please create table abc first';
SELECT * FROM abc;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-13 15:52:29
