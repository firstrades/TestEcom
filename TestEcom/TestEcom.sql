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
INSERT INTO `product` VALUES (12,2,'Surakha E Commerce Pvt Ltd','ELECTRONICS','Mobile','Naughty Ninos Printed Boy\'s Polo Neck T-Shirt','Pantaloons',1700,5,105,100,100,1000,89.5,'����\0JFIF\0\0\0\0\0\0��\0�\0	( \Z%!1!%)+...383,7(-.+\n\n\n\r\Z\Z-% %--++5-/./+7.--1-+---.-7-+-----+-/5-+-.---+02++---7��\0\0�+\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0F\0\0\0\0\0!1AQ\"aq���2Rr���B����Cb���#D��$3cs����\0\Z\0\0\0\0\0\0\0\0\0\0\0\0��\0-\0\0\0\0\0\0\0\0!1AQq\"Ba��2�������\0\0\0?\0�(���������MCcc�y\rk\Z^��rPeEΫ9�!�EJ���%�OYhc��?�ڃ���#��B���K�Eo�e0�W�\n3�����=�Oꐠ�H��ܸ�\'eVv(?S\n��W���^����A�Qp	yGXv���+��HP���mMA�c��}�|�H��\\�/;^��=��*�i̴xLK�i��O{d`�*�����[L?��1/�p��7y(�F�F��� 8�������g�]s�y(2���u���&��^�Iq̓rU}=/<Z!�\'{�؟�����~�C�\"��|ڈ>������������7?�R�C�#[�J�ȃ������\0��LP����RB=�<�� �R��N�i����C���*v:�F��(�����w���v(��|��\'I>i�ֱ�m���}��iͶ#y߱r�й�̞�J6�+K����=د���$����H�H�U�k�c�ǚʭ���4\0\0��Ex^u����ZzS;��a��>^�p.[�J��@nƝL|00�q�\\\\��X��I�H_����nA��ߦd���%���0gkwe܂馊�2\'�\0��Ҿg#��ۉ�+;��R$�L��b�]l�]kw\0їY��sz�c1��*���%���C\\8M;�|´ҿ��e5�J�[��Tb��|���FHHē`\0$�{Xe�k\'�{eqc���S�ݗV��]�C�q\r..\0\r���}�Ey�%������Y���o�T�\'�\\�m�{s?�k�-�J�G\Z{g�*��i�/���.��OHw�Q�VXƈgx���h���U�W��X�+��X|�������d^��*V����+#qk��������:�*N�|sX3���Q�^�\rF�Fe�u��� ����Nyd.��h�f�5o�ko��6�ڼ���>%cs�D�&\Z�ֆ�s|��B��k$��\\/�3? ��4�3\\���}�xJ;��܎������ߞ�>@w��y��ښ&<��9���gqkC�%|��E��M�%�g�jc����Ƈ;�_=���Okj�H�ѧm��,���?x�y�A4J�֨\Z�]j	��֨:�]j�n�SZ��U5�&kU��SZ�^�F���,6����=�%j䔸�w�.����5dSm���V��3���-�ۯ�ְOS~�ro���|�1�N����Qd���X�V��Y��uī	BU���	BU�@TUYh���3�p��WA�����ቹ>i�����<\n�f���F�f��cG�X\0�?6\Z/Kn��o��\'��+)\"(�\" \"\"\" \"\"����)���OV(�!밸���5rnt�`��=)�&�ی��}���=[\\���y\r�$����q��a�(��\Z	:�]j��SX�f�5��5�&kU5�&�5��z�*�Y�Ď�7����+m.s\07��Z��>Oi���\"-p����#0]�u�A����\\q4]��w<]�2ֳ\Zv}��t��49�7��Ōb2\\���.�E� ��Wh��d�COFF�X\\X��f�[&\r���I��K����\"m�X���u1ͧ�3�	�Xn~eH�7�8o*���;�:ʂ���c��j��YSQ�����Tw9T�n���崭%R�&�{�l�G?��J\n��\" -�\0#)1�^FM����Z��@�SCGNW���s�\r��X�����t�t����Xp뇸{��(���(�o�l�v4\0<���@DDD@DDDABm��C��ӫꪁ��q⏢�v��w�xyA�z6`�i*?�c�ьn,����|�\n���t��*bV].��J�TD]Tb��z,F��_7�H�su2(n��&��8i��6;��S�Rb����)\"���4�ع�?���Q�^�U\\�荞k)N�d�$Z\r�O9�2xd�eLQG��>�6����������M��\0Oo_/��<�i�6\0��f��ay�f~Y-�ծB&����Ϗ}�Wh:��Ǹ��q{y9�Z��?骖�}��9ĭ�9316�G��M���G�87�o�<�8c懔E��а���7�_̨/��$�h��>�M-�ij�d�È�ٱcXKtN�)���}��>��e���C�F�V���i�Z�<���6#���;��ќ��a����搁�Gq�̝�H�y��\"(�\" \"\"\" \"\"\"�r�M6�����\"���~�7�ţ��Ӕ��=��ҳWխ}�!���J�Mm�yVy��>G�O{��8�s�n�{I*�b7:j ,%�hXV�J&h��dn*M9f݇aܷg�w��J�c�\n\"�8���#j��=㸬������$����j�۬͊�-��������	�\r��`|U��=���㌖��R�`�z?C1���=�1<�loy�R)`��]m�m��+f4�ck��\\��7�n�K��3֟\r7i�v��G�W�>�6#jz|��.�v�d<Z����^���c:�Xo��-tܦ��a8\r�3 }����o�pv��7�7�Տ�^�ͮ���\0ϣ��\"�&bg���=�++�}����i��I���S�h�ĸ���f�\'�صsU��z��H�����퉩\r�Cz���0�f׸w��;�Hx��3^��V�,=5O*浵����h�t��9����Z�%�Z�c�{�q�U��z��\\�mq\r�Q^ϒ�Dt�\0\r��\0�\0�};�(DC\0��me��3=��q�m�P�������qm�o��?5�U��Qq_���T�5�i��m�]�4��G��� k\\�5����\0.I_!�N\Z�ʪ�{I!���ь}�;�P��U@م���f@�Ǵ-e�����u���|��ͽ�&�B�K\r;3/�Py�i��T�n[Ht�O���c�W6�Xe�b�ߧݾ<�dB�0_�����[.�9��|-��-|zF-�|EW�;��|.\'氶ky2��\0��D�yfŵ/h�,�?��.V��J=�k������NzN��=��U:^6Ӌ�ٟ��m��Nޭm�r�Q����^E�<M�i��g��Y���-]^���Or�땄c�u�߿�����;ul���d����Zɴ����X�75tx�;o^�98�����S\\7��c,V����#��6�Jk�o��Tt*5�VU8mϷ�q�8��$k�詅U��3+��vX�²>�ُ	n��X�F�u\ZQbG��4�~�|�ד�rq��\"+�w��-�%�͈�`�</��/�^��4�a.�&Ga\0m#}���.a.�����3Ց��\ro�˜��[��V���;����썡��^sy�qq[�@DDD@DDDA�����h�@�i*��D{e?w���矔>���cM���l.��t~\0�\"���+bUl�XF@����b�����U���{j#���V���t\'�*Z{TI>�����c{�~ FL`q��Q��L�8Fֵ�z.s�\\\0ps�`��n��x+\Z\0h�;n�s7�uk@��sٹ]#q��\rO �z�0DD��y�d�̱N�,1v_%��Fs00����J1�3���Yk�)�kM�\0&y+���T�a�N�9b\'y�ٱx�[����Cqb՗�;�ð���������o�ӏ�֛N�=>�����DF��h�L��IU#�@k�\06���X�`.�խ�L�T!l�,$FZ\0�ps�P��ظ7\"non̖U���.KRb\"�9*���266��o\"�Ŷ�+�����cL)5�j�]��q��l�\\<V��\\����liR�n��zsny�7�����a��FY��!��8!s�rZ\n�\'F�\"x�����pl�����#%��9�\Z�(#���D�l��)N7<���#.�2\\��\'2I\'2Nd������\Z��ƶ�ctjhA,V�Ltk�A]�QAX�\\CF�CGi6]w��%����l L��~���5��69�N��۰~g�w�e4�u5���[:�,�n����#��\"�\"\"\" \"\"\" -.�𡡪��c-����OP+~�o�E闗�P6�\rS����^~!�s�$�I$�Nd��%Q.�2�P���o����� ��9퍦�cp�p�<NA`D$��m�4;vX�lF�\\�\\�tD��WD#a>%dmK��w�+ �>G���\r$��W�:A`���7;^��9oY����S�~7I&{p4񓅗����H���O\Z^_�?�^4����~k\\��#g�d���F����բ��6������B?����T���i�5��>P�����fv��12�&�b�/2��zn.�a ��U�:j9�}R^,\ri8C]rq�73ꏇ��6�vDS#}��y&�I���ч�ㅖu��!{�����%��|�mTDUkI \r��;N����`{�����~X����\Z3Ѩ頵�cp�7��>��\\7��MYEMk��H�h�o�G��J�@��(����������,�O�p:B�K-d�9�&�^69��6\"�ztA�j��~x*�x]�����<�ՏU�;�����+��O4����j�TsuZʹR�7w�._P�P� �*��s�ւ���x�L_.��Wp�\r?�}�b�Q��h=�4w;����;F�}�w�<�_\\Tr^���4.퉟E����G;���\\��B�}M��3�u��n��/�g�G;c$od�?��YQ��)Ͳ���gɡή��k\\;ZB�u�g�h��ud{�w����ՏV�\'{���� �J��TsO^?w���ƭUO6���C~��~�?$����UK=j)�ce�\0i[6���2V{���44(��E7s��Z�\'+���,p�hk�L:5��<\\<�����c��PFE!�2�ݻ�_�btX���X�<���3x7�{�|�������R�\\�d^��7`u�I�$�����5dgf�Y������ӗ��\\L�����\\8�V�7�[�P�*�ʊ� ⫈(*����������������������)d�5c����;B\"u\Z���1�ލ��-d�������~\"6���ʈ�_Q͎�w�K}�e,VZڞhh��f�Lw�iDM�uG31}��z6ÅA�\0���z5,p�D�����z�k�3\rlg#b\'q��p�~+\'���d�ʌ8�9�{]�nߗD��0��w�K���z\"�C)ܲ�2��#ZU�DUT@DD��','����\0JFIF\0\0\0\0\0\0��\0�\0	( \Z%!1!%)+...383,7(-.+\n\n\n\r\Z\Z-% %--++5-/./+7.--1-+---.-7-+-----+-/5-+-.---+02++---7��\0\0�+\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0F\0\0\0\0\0!1AQ\"aq���2Rr���B����Cb���#D��$3cs����\0\Z\0\0\0\0\0\0\0\0\0\0\0\0��\0-\0\0\0\0\0\0\0\0!1AQq\"Ba��2�������\0\0\0?\0�(���������MCcc�y\rk\Z^��rPeEΫ9�!�EJ���%�OYhc��?�ڃ���#��B���K�Eo�e0�W�\n3�����=�Oꐠ�H��ܸ�\'eVv(?S\n��W���^����A�Qp	yGXv���+��HP���mMA�c��}�|�H��\\�/;^��=��*�i̴xLK�i��O{d`�*�����[L?��1/�p��7y(�F�F��� 8�������g�]s�y(2���u���&��^�Iq̓rU}=/<Z!�\'{�؟�����~�C�\"��|ڈ>������������7?�R�C�#[�J�ȃ������\0��LP����RB=�<�� �R��N�i����C���*v:�F��(�����w���v(��|��\'I>i�ֱ�m���}��iͶ#y߱r�й�̞�J6�+K����=د���$����H�H�U�k�c�ǚʭ���4\0\0��Ex^u����ZzS;��a��>^�p.[�J��@nƝL|00�q�\\\\��X��I�H_����nA��ߦd���%���0gkwe܂馊�2\'�\0��Ҿg#��ۉ�+;��R$�L��b�]l�]kw\0їY��sz�c1��*���%���C\\8M;�|´ҿ��e5�J�[��Tb��|���FHHē`\0$�{Xe�k\'�{eqc���S�ݗV��]�C�q\r..\0\r���}�Ey�%������Y���o�T�\'�\\�m�{s?�k�-�J�G\Z{g�*��i�/���.��OHw�Q�VXƈgx���h���U�W��X�+��X|�������d^��*V����+#qk��������:�*N�|sX3���Q�^�\rF�Fe�u��� ����Nyd.��h�f�5o�ko��6�ڼ���>%cs�D�&\Z�ֆ�s|��B��k$��\\/�3? ��4�3\\���}�xJ;��܎������ߞ�>@w��y��ښ&<��9���gqkC�%|��E��M�%�g�jc����Ƈ;�_=���Okj�H�ѧm��,���?x�y�A4J�֨\Z�]j	��֨:�]j�n�SZ��U5�&kU��SZ�^�F���,6����=�%j䔸�w�.����5dSm���V��3���-�ۯ�ְOS~�ro���|�1�N����Qd���X�V��Y��uī	BU���	BU�@TUYh���3�p��WA�����ቹ>i�����<\n�f���F�f��cG�X\0�?6\Z/Kn��o��\'��+)\"(�\" \"\"\" \"\"����)���OV(�!밸���5rnt�`��=)�&�ی��}���=[\\���y\r�$����q��a�(��\Z	:�]j��SX�f�5��5�&kU5�&�5��z�*�Y�Ď�7����+m.s\07��Z��>Oi���\"-p����#0]�u�A����\\q4]��w<]�2ֳ\Zv}��t��49�7��Ōb2\\���.�E� ��Wh��d�COFF�X\\X��f�[&\r���I��K����\"m�X���u1ͧ�3�	�Xn~eH�7�8o*���;�:ʂ���c��j��YSQ�����Tw9T�n���崭%R�&�{�l�G?��J\n��\" -�\0#)1�^FM����Z��@�SCGNW���s�\r��X�����t�t����Xp뇸{��(���(�o�l�v4\0<���@DDD@DDDABm��C��ӫꪁ��q⏢�v��w�xyA�z6`�i*?�c�ьn,����|�\n���t��*bV].��J�TD]Tb��z,F��_7�H�su2(n��&��8i��6;��S�Rb����)\"���4�ع�?���Q�^�U\\�荞k)N�d�$Z\r�O9�2xd�eLQG��>�6����������M��\0Oo_/��<�i�6\0��f��ay�f~Y-�ծB&����Ϗ}�Wh:��Ǹ��q{y9�Z��?骖�}��9ĭ�9316�G��M���G�87�o�<�8c懔E��а���7�_̨/��$�h��>�M-�ij�d�È�ٱcXKtN�)���}��>��e���C�F�V���i�Z�<���6#���;��ќ��a����搁�Gq�̝�H�y��\"(�\" \"\"\" \"\"\"�r�M6�����\"���~�7�ţ��Ӕ��=��ҳWխ}�!���J�Mm�yVy��>G�O{��8�s�n�{I*�b7:j ,%�hXV�J&h��dn*M9f݇aܷg�w��J�c�\n\"�8���#j��=㸬������$����j�۬͊�-��������	�\r��`|U��=���㌖��R�`�z?C1���=�1<�loy�R)`��]m�m��+f4�ck��\\��7�n�K��3֟\r7i�v��G�W�>�6#jz|��.�v�d<Z����^���c:�Xo��-tܦ��a8\r�3 }����o�pv��7�7�Տ�^�ͮ���\0ϣ��\"�&bg���=�++�}����i��I���S�h�ĸ���f�\'�صsU��z��H�����퉩\r�Cz���0�f׸w��;�Hx��3^��V�,=5O*浵����h�t��9����Z�%�Z�c�{�q�U��z��\\�mq\r�Q^ϒ�Dt�\0\r��\0�\0�};�(DC\0��me��3=��q�m�P�������qm�o��?5�U��Qq_���T�5�i��m�]�4��G��� k\\�5����\0.I_!�N\Z�ʪ�{I!���ь}�;�P��U@م���f@�Ǵ-e�����u���|��ͽ�&�B�K\r;3/�Py�i��T�n[Ht�O���c�W6�Xe�b�ߧݾ<�dB�0_�����[.�9��|-��-|zF-�|EW�;��|.\'氶ky2��\0��D�yfŵ/h�,�?��.V��J=�k������NzN��=��U:^6Ӌ�ٟ��m��Nޭm�r�Q����^E�<M�i��g��Y���-]^���Or�땄c�u�߿�����;ul���d����Zɴ����X�75tx�;o^�98�����S\\7��c,V����#��6�Jk�o��Tt*5�VU8mϷ�q�8��$k�詅U��3+��vX�²>�ُ	n��X�F�u\ZQbG��4�~�|�ד�rq��\"+�w��-�%�͈�`�</��/�^��4�a.�&Ga\0m#}���.a.�����3Ց��\ro�˜��[��V���;����썡��^sy�qq[�@DDD@DDDA�����h�@�i*��D{e?w���矔>���cM���l.��t~\0�\"���+bUl�XF@����b�����U���{j#���V���t\'�*Z{TI>�����c{�~ FL`q��Q��L�8Fֵ�z.s�\\\0ps�`��n��x+\Z\0h�;n�s7�uk@��sٹ]#q��\rO �z�0DD��y�d�̱N�,1v_%��Fs00����J1�3���Yk�)�kM�\0&y+���T�a�N�9b\'y�ٱx�[����Cqb՗�;�ð���������o�ӏ�֛N�=>�����DF��h�L��IU#�@k�\06���X�`.�խ�L�T!l�,$FZ\0�ps�P��ظ7\"non̖U���.KRb\"�9*���266��o\"�Ŷ�+�����cL)5�j�]��q��l�\\<V��\\����liR�n��zsny�7�����a��FY��!��8!s�rZ\n�\'F�\"x�����pl�����#%��9�\Z�(#���D�l��)N7<���#.�2\\��\'2I\'2Nd������\Z��ƶ�ctjhA,V�Ltk�A]�QAX�\\CF�CGi6]w��%����l L��~���5��69�N��۰~g�w�e4�u5���[:�,�n����#��\"�\"\"\" \"\"\" -.�𡡪��c-����OP+~�o�E闗�P6�\rS����^~!�s�$�I$�Nd��%Q.�2�P���o����� ��9퍦�cp�p�<NA`D$��m�4;vX�lF�\\�\\�tD��WD#a>%dmK��w�+ �>G���\r$��W�:A`���7;^��9oY����S�~7I&{p4񓅗����H���O\Z^_�?�^4����~k\\��#g�d���F����բ��6������B?����T���i�5��>P�����fv��12�&�b�/2��zn.�a ��U�:j9�}R^,\ri8C]rq�73ꏇ��6�vDS#}��y&�I���ч�ㅖu��!{�����%��|�mTDUkI \r��;N����`{�����~X����\Z3Ѩ頵�cp�7��>��\\7��MYEMk��H�h�o�G��J�@��(����������,�O�p:B�K-d�9�&�^69��6\"�ztA�j��~x*�x]�����<�ՏU�;�����+��O4����j�TsuZʹR�7w�._P�P� �*��s�ւ���x�L_.��Wp�\r?�}�b�Q��h=�4w;����;F�}�w�<�_\\Tr^���4.퉟E����G;���\\��B�}M��3�u��n��/�g�G;c$od�?��YQ��)Ͳ���gɡή��k\\;ZB�u�g�h��ud{�w����ՏV�\'{���� �J��TsO^?w���ƭUO6���C~��~�?$����UK=j)�ce�\0i[6���2V{���44(��E7s��Z�\'+���,p�hk�L:5��<\\<�����c��PFE!�2�ݻ�_�btX���X�<���3x7�{�|�������R�\\�d^��7`u�I�$�����5dgf�Y������ӗ��\\L�����\\8�V�7�[�P�*�ʊ� ⫈(*����������������������)d�5c����;B\"u\Z���1�ލ��-d�������~\"6���ʈ�_Q͎�w�K}�e,VZڞhh��f�Lw�iDM�uG31}��z6ÅA�\0���z5,p�D�����z�k�3\rlg#b\'q��p�~+\'���d�ʌ8�9�{]�nߗD��0��w�K���z\"�C)ܲ�2��#ZU�DUT@DD��','����\0JFIF\0\0\0\0\0\0��\0�\0	( \Z%!1!%)+...383,7(-.+\n\n\n\r\Z\Z-% %--++5-/./+7.--1-+---.-7-+-----+-/5-+-.---+02++---7��\0\0�+\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0F\0\0\0\0\0!1AQ\"aq���2Rr���B����Cb���#D��$3cs����\0\Z\0\0\0\0\0\0\0\0\0\0\0\0��\0-\0\0\0\0\0\0\0\0!1AQq\"Ba��2�������\0\0\0?\0�(���������MCcc�y\rk\Z^��rPeEΫ9�!�EJ���%�OYhc��?�ڃ���#��B���K�Eo�e0�W�\n3�����=�Oꐠ�H��ܸ�\'eVv(?S\n��W���^����A�Qp	yGXv���+��HP���mMA�c��}�|�H��\\�/;^��=��*�i̴xLK�i��O{d`�*�����[L?��1/�p��7y(�F�F��� 8�������g�]s�y(2���u���&��^�Iq̓rU}=/<Z!�\'{�؟�����~�C�\"��|ڈ>������������7?�R�C�#[�J�ȃ������\0��LP����RB=�<�� �R��N�i����C���*v:�F��(�����w���v(��|��\'I>i�ֱ�m���}��iͶ#y߱r�й�̞�J6�+K����=د���$����H�H�U�k�c�ǚʭ���4\0\0��Ex^u����ZzS;��a��>^�p.[�J��@nƝL|00�q�\\\\��X��I�H_����nA��ߦd���%���0gkwe܂馊�2\'�\0��Ҿg#��ۉ�+;��R$�L��b�]l�]kw\0їY��sz�c1��*���%���C\\8M;�|´ҿ��e5�J�[��Tb��|���FHHē`\0$�{Xe�k\'�{eqc���S�ݗV��]�C�q\r..\0\r���}�Ey�%������Y���o�T�\'�\\�m�{s?�k�-�J�G\Z{g�*��i�/���.��OHw�Q�VXƈgx���h���U�W��X�+��X|�������d^��*V����+#qk��������:�*N�|sX3���Q�^�\rF�Fe�u��� ����Nyd.��h�f�5o�ko��6�ڼ���>%cs�D�&\Z�ֆ�s|��B��k$��\\/�3? ��4�3\\���}�xJ;��܎������ߞ�>@w��y��ښ&<��9���gqkC�%|��E��M�%�g�jc����Ƈ;�_=���Okj�H�ѧm��,���?x�y�A4J�֨\Z�]j	��֨:�]j�n�SZ��U5�&kU��SZ�^�F���,6����=�%j䔸�w�.����5dSm���V��3���-�ۯ�ְOS~�ro���|�1�N����Qd���X�V��Y��uī	BU���	BU�@TUYh���3�p��WA�����ቹ>i�����<\n�f���F�f��cG�X\0�?6\Z/Kn��o��\'��+)\"(�\" \"\"\" \"\"����)���OV(�!밸���5rnt�`��=)�&�ی��}���=[\\���y\r�$����q��a�(��\Z	:�]j��SX�f�5��5�&kU5�&�5��z�*�Y�Ď�7����+m.s\07��Z��>Oi���\"-p����#0]�u�A����\\q4]��w<]�2ֳ\Zv}��t��49�7��Ōb2\\���.�E� ��Wh��d�COFF�X\\X��f�[&\r���I��K����\"m�X���u1ͧ�3�	�Xn~eH�7�8o*���;�:ʂ���c��j��YSQ�����Tw9T�n���崭%R�&�{�l�G?��J\n��\" -�\0#)1�^FM����Z��@�SCGNW���s�\r��X�����t�t����Xp뇸{��(���(�o�l�v4\0<���@DDD@DDDABm��C��ӫꪁ��q⏢�v��w�xyA�z6`�i*?�c�ьn,����|�\n���t��*bV].��J�TD]Tb��z,F��_7�H�su2(n��&��8i��6;��S�Rb����)\"���4�ع�?���Q�^�U\\�荞k)N�d�$Z\r�O9�2xd�eLQG��>�6����������M��\0Oo_/��<�i�6\0��f��ay�f~Y-�ծB&����Ϗ}�Wh:��Ǹ��q{y9�Z��?骖�}��9ĭ�9316�G��M���G�87�o�<�8c懔E��а���7�_̨/��$�h��>�M-�ij�d�È�ٱcXKtN�)���}��>��e���C�F�V���i�Z�<���6#���;��ќ��a����搁�Gq�̝�H�y��\"(�\" \"\"\" \"\"\"�r�M6�����\"���~�7�ţ��Ӕ��=��ҳWխ}�!���J�Mm�yVy��>G�O{��8�s�n�{I*�b7:j ,%�hXV�J&h��dn*M9f݇aܷg�w��J�c�\n\"�8���#j��=㸬������$����j�۬͊�-��������	�\r��`|U��=���㌖��R�`�z?C1���=�1<�loy�R)`��]m�m��+f4�ck��\\��7�n�K��3֟\r7i�v��G�W�>�6#jz|��.�v�d<Z����^���c:�Xo��-tܦ��a8\r�3 }����o�pv��7�7�Տ�^�ͮ���\0ϣ��\"�&bg���=�++�}����i��I���S�h�ĸ���f�\'�صsU��z��H�����퉩\r�Cz���0�f׸w��;�Hx��3^��V�,=5O*浵����h�t��9����Z�%�Z�c�{�q�U��z��\\�mq\r�Q^ϒ�Dt�\0\r��\0�\0�};�(DC\0��me��3=��q�m�P�������qm�o��?5�U��Qq_���T�5�i��m�]�4��G��� k\\�5����\0.I_!�N\Z�ʪ�{I!���ь}�;�P��U@م���f@�Ǵ-e�����u���|��ͽ�&�B�K\r;3/�Py�i��T�n[Ht�O���c�W6�Xe�b�ߧݾ<�dB�0_�����[.�9��|-��-|zF-�|EW�;��|.\'氶ky2��\0��D�yfŵ/h�,�?��.V��J=�k������NzN��=��U:^6Ӌ�ٟ��m��Nޭm�r�Q����^E�<M�i��g��Y���-]^���Or�땄c�u�߿�����;ul���d����Zɴ����X�75tx�;o^�98�����S\\7��c,V����#��6�Jk�o��Tt*5�VU8mϷ�q�8��$k�詅U��3+��vX�²>�ُ	n��X�F�u\ZQbG��4�~�|�ד�rq��\"+�w��-�%�͈�`�</��/�^��4�a.�&Ga\0m#}���.a.�����3Ց��\ro�˜��[��V���;����썡��^sy�qq[�@DDD@DDDA�����h�@�i*��D{e?w���矔>���cM���l.��t~\0�\"���+bUl�XF@����b�����U���{j#���V���t\'�*Z{TI>�����c{�~ FL`q��Q��L�8Fֵ�z.s�\\\0ps�`��n��x+\Z\0h�;n�s7�uk@��sٹ]#q��\rO �z�0DD��y�d�̱N�,1v_%��Fs00����J1�3���Yk�)�kM�\0&y+���T�a�N�9b\'y�ٱx�[����Cqb՗�;�ð���������o�ӏ�֛N�=>�����DF��h�L��IU#�@k�\06���X�`.�խ�L�T!l�,$FZ\0�ps�P��ظ7\"non̖U���.KRb\"�9*���266��o\"�Ŷ�+�����cL)5�j�]��q��l�\\<V��\\����liR�n��zsny�7�����a��FY��!��8!s�rZ\n�\'F�\"x�����pl�����#%��9�\Z�(#���D�l��)N7<���#.�2\\��\'2I\'2Nd������\Z��ƶ�ctjhA,V�Ltk�A]�QAX�\\CF�CGi6]w��%����l L��~���5��69�N��۰~g�w�e4�u5���[:�,�n����#��\"�\"\"\" \"\"\" -.�𡡪��c-����OP+~�o�E闗�P6�\rS����^~!�s�$�I$�Nd��%Q.�2�P���o����� ��9퍦�cp�p�<NA`D$��m�4;vX�lF�\\�\\�tD��WD#a>%dmK��w�+ �>G���\r$��W�:A`���7;^��9oY����S�~7I&{p4񓅗����H���O\Z^_�?�^4����~k\\��#g�d���F����բ��6������B?����T���i�5��>P�����fv��12�&�b�/2��zn.�a ��U�:j9�}R^,\ri8C]rq�73ꏇ��6�vDS#}��y&�I���ч�ㅖu��!{�����%��|�mTDUkI \r��;N����`{�����~X����\Z3Ѩ頵�cp�7��>��\\7��MYEMk��H�h�o�G��J�@��(����������,�O�p:B�K-d�9�&�^69��6\"�ztA�j��~x*�x]�����<�ՏU�;�����+��O4����j�TsuZʹR�7w�._P�P� �*��s�ւ���x�L_.��Wp�\r?�}�b�Q��h=�4w;����;F�}�w�<�_\\Tr^���4.퉟E����G;���\\��B�}M��3�u��n��/�g�G;c$od�?��YQ��)Ͳ���gɡή��k\\;ZB�u�g�h��ud{�w����ՏV�\'{���� �J��TsO^?w���ƭUO6���C~��~�?$����UK=j)�ce�\0i[6���2V{���44(��E7s��Z�\'+���,p�hk�L:5��<\\<�����c��PFE!�2�ݻ�_�btX���X�<���3x7�{�|�������R�\\�d^��7`u�I�$�����5dgf�Y������ӗ��\\L�����\\8�V�7�[�P�*�ʊ� ⫈(*����������������������)d�5c����;B\"u\Z���1�ލ��-d�������~\"6���ʈ�_Q͎�w�K}�e,VZڞhh��f�Lw�iDM�uG31}��z6ÅA�\0���z5,p�D�����z�k�3\rlg#b\'q��p�~+\'���d�ʌ8�9�{]�nߗD��0��w�K���z\"�C)ܲ�2��#ZU�DUT@DD��',500,0.3,'1 year warranty is applicable',7,'approved',0,0,''),(13,2,'Surakha E Commerce Pvt Ltd','ELECTRONICS','Mobile','Naughty Ninos Printed Boy\'s Polo Neck T-Shirt','Pantaloons',1700,5,105,100,100,1000,89.5,'����\0JFIF\0\0\0\0\0\0��\0�\0	( \Z%!1!%)+...383,7(-.+\n\n\n\r\Z\Z-% %--++5-/./+7.--1-+---.-7-+-----+-/5-+-.---+02++---7��\0\0�+\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0F\0\0\0\0\0!1AQ\"aq���2Rr���B����Cb���#D��$3cs����\0\Z\0\0\0\0\0\0\0\0\0\0\0\0��\0-\0\0\0\0\0\0\0\0!1AQq\"Ba��2�������\0\0\0?\0�(���������MCcc�y\rk\Z^��rPeEΫ9�!�EJ���%�OYhc��?�ڃ���#��B���K�Eo�e0�W�\n3�����=�Oꐠ�H��ܸ�\'eVv(?S\n��W���^����A�Qp	yGXv���+��HP���mMA�c��}�|�H��\\�/;^��=��*�i̴xLK�i��O{d`�*�����[L?��1/�p��7y(�F�F��� 8�������g�]s�y(2���u���&��^�Iq̓rU}=/<Z!�\'{�؟�����~�C�\"��|ڈ>������������7?�R�C�#[�J�ȃ������\0��LP����RB=�<�� �R��N�i����C���*v:�F��(�����w���v(��|��\'I>i�ֱ�m���}��iͶ#y߱r�й�̞�J6�+K����=د���$����H�H�U�k�c�ǚʭ���4\0\0��Ex^u����ZzS;��a��>^�p.[�J��@nƝL|00�q�\\\\��X��I�H_����nA��ߦd���%���0gkwe܂馊�2\'�\0��Ҿg#��ۉ�+;��R$�L��b�]l�]kw\0їY��sz�c1��*���%���C\\8M;�|´ҿ��e5�J�[��Tb��|���FHHē`\0$�{Xe�k\'�{eqc���S�ݗV��]�C�q\r..\0\r���}�Ey�%������Y���o�T�\'�\\�m�{s?�k�-�J�G\Z{g�*��i�/���.��OHw�Q�VXƈgx���h���U�W��X�+��X|�������d^��*V����+#qk��������:�*N�|sX3���Q�^�\rF�Fe�u��� ����Nyd.��h�f�5o�ko��6�ڼ���>%cs�D�&\Z�ֆ�s|��B��k$��\\/�3? ��4�3\\���}�xJ;��܎������ߞ�>@w��y��ښ&<��9���gqkC�%|��E��M�%�g�jc����Ƈ;�_=���Okj�H�ѧm��,���?x�y�A4J�֨\Z�]j	��֨:�]j�n�SZ��U5�&kU��SZ�^�F���,6����=�%j䔸�w�.����5dSm���V��3���-�ۯ�ְOS~�ro���|�1�N����Qd���X�V��Y��uī	BU���	BU�@TUYh���3�p��WA�����ቹ>i�����<\n�f���F�f��cG�X\0�?6\Z/Kn��o��\'��+)\"(�\" \"\"\" \"\"����)���OV(�!밸���5rnt�`��=)�&�ی��}���=[\\���y\r�$����q��a�(��\Z	:�]j��SX�f�5��5�&kU5�&�5��z�*�Y�Ď�7����+m.s\07��Z��>Oi���\"-p����#0]�u�A����\\q4]��w<]�2ֳ\Zv}��t��49�7��Ōb2\\���.�E� ��Wh��d�COFF�X\\X��f�[&\r���I��K����\"m�X���u1ͧ�3�	�Xn~eH�7�8o*���;�:ʂ���c��j��YSQ�����Tw9T�n���崭%R�&�{�l�G?��J\n��\" -�\0#)1�^FM����Z��@�SCGNW���s�\r��X�����t�t����Xp뇸{��(���(�o�l�v4\0<���@DDD@DDDABm��C��ӫꪁ��q⏢�v��w�xyA�z6`�i*?�c�ьn,����|�\n���t��*bV].��J�TD]Tb��z,F��_7�H�su2(n��&��8i��6;��S�Rb����)\"���4�ع�?���Q�^�U\\�荞k)N�d�$Z\r�O9�2xd�eLQG��>�6����������M��\0Oo_/��<�i�6\0��f��ay�f~Y-�ծB&����Ϗ}�Wh:��Ǹ��q{y9�Z��?骖�}��9ĭ�9316�G��M���G�87�o�<�8c懔E��а���7�_̨/��$�h��>�M-�ij�d�È�ٱcXKtN�)���}��>��e���C�F�V���i�Z�<���6#���;��ќ��a����搁�Gq�̝�H�y��\"(�\" \"\"\" \"\"\"�r�M6�����\"���~�7�ţ��Ӕ��=��ҳWխ}�!���J�Mm�yVy��>G�O{��8�s�n�{I*�b7:j ,%�hXV�J&h��dn*M9f݇aܷg�w��J�c�\n\"�8���#j��=㸬������$����j�۬͊�-��������	�\r��`|U��=���㌖��R�`�z?C1���=�1<�loy�R)`��]m�m��+f4�ck��\\��7�n�K��3֟\r7i�v��G�W�>�6#jz|��.�v�d<Z����^���c:�Xo��-tܦ��a8\r�3 }����o�pv��7�7�Տ�^�ͮ���\0ϣ��\"�&bg���=�++�}����i��I���S�h�ĸ���f�\'�صsU��z��H�����퉩\r�Cz���0�f׸w��;�Hx��3^��V�,=5O*浵����h�t��9����Z�%�Z�c�{�q�U��z��\\�mq\r�Q^ϒ�Dt�\0\r��\0�\0�};�(DC\0��me��3=��q�m�P�������qm�o��?5�U��Qq_���T�5�i��m�]�4��G��� k\\�5����\0.I_!�N\Z�ʪ�{I!���ь}�;�P��U@م���f@�Ǵ-e�����u���|��ͽ�&�B�K\r;3/�Py�i��T�n[Ht�O���c�W6�Xe�b�ߧݾ<�dB�0_�����[.�9��|-��-|zF-�|EW�;��|.\'氶ky2��\0��D�yfŵ/h�,�?��.V��J=�k������NzN��=��U:^6Ӌ�ٟ��m��Nޭm�r�Q����^E�<M�i��g��Y���-]^���Or�땄c�u�߿�����;ul���d����Zɴ����X�75tx�;o^�98�����S\\7��c,V����#��6�Jk�o��Tt*5�VU8mϷ�q�8��$k�詅U��3+��vX�²>�ُ	n��X�F�u\ZQbG��4�~�|�ד�rq��\"+�w��-�%�͈�`�</��/�^��4�a.�&Ga\0m#}���.a.�����3Ց��\ro�˜��[��V���;����썡��^sy�qq[�@DDD@DDDA�����h�@�i*��D{e?w���矔>���cM���l.��t~\0�\"���+bUl�XF@����b�����U���{j#���V���t\'�*Z{TI>�����c{�~ FL`q��Q��L�8Fֵ�z.s�\\\0ps�`��n��x+\Z\0h�;n�s7�uk@��sٹ]#q��\rO �z�0DD��y�d�̱N�,1v_%��Fs00����J1�3���Yk�)�kM�\0&y+���T�a�N�9b\'y�ٱx�[����Cqb՗�;�ð���������o�ӏ�֛N�=>�����DF��h�L��IU#�@k�\06���X�`.�խ�L�T!l�,$FZ\0�ps�P��ظ7\"non̖U���.KRb\"�9*���266��o\"�Ŷ�+�����cL)5�j�]��q��l�\\<V��\\����liR�n��zsny�7�����a��FY��!��8!s�rZ\n�\'F�\"x�����pl�����#%��9�\Z�(#���D�l��)N7<���#.�2\\��\'2I\'2Nd������\Z��ƶ�ctjhA,V�Ltk�A]�QAX�\\CF�CGi6]w��%����l L��~���5��69�N��۰~g�w�e4�u5���[:�,�n����#��\"�\"\"\" \"\"\" -.�𡡪��c-����OP+~�o�E闗�P6�\rS����^~!�s�$�I$�Nd��%Q.�2�P���o����� ��9퍦�cp�p�<NA`D$��m�4;vX�lF�\\�\\�tD��WD#a>%dmK��w�+ �>G���\r$��W�:A`���7;^��9oY����S�~7I&{p4񓅗����H���O\Z^_�?�^4����~k\\��#g�d���F����բ��6������B?����T���i�5��>P�����fv��12�&�b�/2��zn.�a ��U�:j9�}R^,\ri8C]rq�73ꏇ��6�vDS#}��y&�I���ч�ㅖu��!{�����%��|�mTDUkI \r��;N����`{�����~X����\Z3Ѩ頵�cp�7��>��\\7��MYEMk��H�h�o�G��J�@��(����������,�O�p:B�K-d�9�&�^69��6\"�ztA�j��~x*�x]�����<�ՏU�;�����+��O4����j�TsuZʹR�7w�._P�P� �*��s�ւ���x�L_.��Wp�\r?�}�b�Q��h=�4w;����;F�}�w�<�_\\Tr^���4.퉟E����G;���\\��B�}M��3�u��n��/�g�G;c$od�?��YQ��)Ͳ���gɡή��k\\;ZB�u�g�h��ud{�w����ՏV�\'{���� �J��TsO^?w���ƭUO6���C~��~�?$����UK=j)�ce�\0i[6���2V{���44(��E7s��Z�\'+���,p�hk�L:5��<\\<�����c��PFE!�2�ݻ�_�btX���X�<���3x7�{�|�������R�\\�d^��7`u�I�$�����5dgf�Y������ӗ��\\L�����\\8�V�7�[�P�*�ʊ� ⫈(*����������������������)d�5c����;B\"u\Z���1�ލ��-d�������~\"6���ʈ�_Q͎�w�K}�e,VZڞhh��f�Lw�iDM�uG31}��z6ÅA�\0���z5,p�D�����z�k�3\rlg#b\'q��p�~+\'���d�ʌ8�9�{]�nߗD��0��w�K���z\"�C)ܲ�2��#ZU�DUT@DD��','����\0JFIF\0\0\0\0\0\0��\0�\0	( \Z%!1!%)+...383,7(-.+\n\n\n\r\Z\Z-% %--++5-/./+7.--1-+---.-7-+-----+-/5-+-.---+02++---7��\0\0�+\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0F\0\0\0\0\0!1AQ\"aq���2Rr���B����Cb���#D��$3cs����\0\Z\0\0\0\0\0\0\0\0\0\0\0\0��\0-\0\0\0\0\0\0\0\0!1AQq\"Ba��2�������\0\0\0?\0�(���������MCcc�y\rk\Z^��rPeEΫ9�!�EJ���%�OYhc��?�ڃ���#��B���K�Eo�e0�W�\n3�����=�Oꐠ�H��ܸ�\'eVv(?S\n��W���^����A�Qp	yGXv���+��HP���mMA�c��}�|�H��\\�/;^��=��*�i̴xLK�i��O{d`�*�����[L?��1/�p��7y(�F�F��� 8�������g�]s�y(2���u���&��^�Iq̓rU}=/<Z!�\'{�؟�����~�C�\"��|ڈ>������������7?�R�C�#[�J�ȃ������\0��LP����RB=�<�� �R��N�i����C���*v:�F��(�����w���v(��|��\'I>i�ֱ�m���}��iͶ#y߱r�й�̞�J6�+K����=د���$����H�H�U�k�c�ǚʭ���4\0\0��Ex^u����ZzS;��a��>^�p.[�J��@nƝL|00�q�\\\\��X��I�H_����nA��ߦd���%���0gkwe܂馊�2\'�\0��Ҿg#��ۉ�+;��R$�L��b�]l�]kw\0їY��sz�c1��*���%���C\\8M;�|´ҿ��e5�J�[��Tb��|���FHHē`\0$�{Xe�k\'�{eqc���S�ݗV��]�C�q\r..\0\r���}�Ey�%������Y���o�T�\'�\\�m�{s?�k�-�J�G\Z{g�*��i�/���.��OHw�Q�VXƈgx���h���U�W��X�+��X|�������d^��*V����+#qk��������:�*N�|sX3���Q�^�\rF�Fe�u��� ����Nyd.��h�f�5o�ko��6�ڼ���>%cs�D�&\Z�ֆ�s|��B��k$��\\/�3? ��4�3\\���}�xJ;��܎������ߞ�>@w��y��ښ&<��9���gqkC�%|��E��M�%�g�jc����Ƈ;�_=���Okj�H�ѧm��,���?x�y�A4J�֨\Z�]j	��֨:�]j�n�SZ��U5�&kU��SZ�^�F���,6����=�%j䔸�w�.����5dSm���V��3���-�ۯ�ְOS~�ro���|�1�N����Qd���X�V��Y��uī	BU���	BU�@TUYh���3�p��WA�����ቹ>i�����<\n�f���F�f��cG�X\0�?6\Z/Kn��o��\'��+)\"(�\" \"\"\" \"\"����)���OV(�!밸���5rnt�`��=)�&�ی��}���=[\\���y\r�$����q��a�(��\Z	:�]j��SX�f�5��5�&kU5�&�5��z�*�Y�Ď�7����+m.s\07��Z��>Oi���\"-p����#0]�u�A����\\q4]��w<]�2ֳ\Zv}��t��49�7��Ōb2\\���.�E� ��Wh��d�COFF�X\\X��f�[&\r���I��K����\"m�X���u1ͧ�3�	�Xn~eH�7�8o*���;�:ʂ���c��j��YSQ�����Tw9T�n���崭%R�&�{�l�G?��J\n��\" -�\0#)1�^FM����Z��@�SCGNW���s�\r��X�����t�t����Xp뇸{��(���(�o�l�v4\0<���@DDD@DDDABm��C��ӫꪁ��q⏢�v��w�xyA�z6`�i*?�c�ьn,����|�\n���t��*bV].��J�TD]Tb��z,F��_7�H�su2(n��&��8i��6;��S�Rb����)\"���4�ع�?���Q�^�U\\�荞k)N�d�$Z\r�O9�2xd�eLQG��>�6����������M��\0Oo_/��<�i�6\0��f��ay�f~Y-�ծB&����Ϗ}�Wh:��Ǹ��q{y9�Z��?骖�}��9ĭ�9316�G��M���G�87�o�<�8c懔E��а���7�_̨/��$�h��>�M-�ij�d�È�ٱcXKtN�)���}��>��e���C�F�V���i�Z�<���6#���;��ќ��a����搁�Gq�̝�H�y��\"(�\" \"\"\" \"\"\"�r�M6�����\"���~�7�ţ��Ӕ��=��ҳWխ}�!���J�Mm�yVy��>G�O{��8�s�n�{I*�b7:j ,%�hXV�J&h��dn*M9f݇aܷg�w��J�c�\n\"�8���#j��=㸬������$����j�۬͊�-��������	�\r��`|U��=���㌖��R�`�z?C1���=�1<�loy�R)`��]m�m��+f4�ck��\\��7�n�K��3֟\r7i�v��G�W�>�6#jz|��.�v�d<Z����^���c:�Xo��-tܦ��a8\r�3 }����o�pv��7�7�Տ�^�ͮ���\0ϣ��\"�&bg���=�++�}����i��I���S�h�ĸ���f�\'�صsU��z��H�����퉩\r�Cz���0�f׸w��;�Hx��3^��V�,=5O*浵����h�t��9����Z�%�Z�c�{�q�U��z��\\�mq\r�Q^ϒ�Dt�\0\r��\0�\0�};�(DC\0��me��3=��q�m�P�������qm�o��?5�U��Qq_���T�5�i��m�]�4��G��� k\\�5����\0.I_!�N\Z�ʪ�{I!���ь}�;�P��U@م���f@�Ǵ-e�����u���|��ͽ�&�B�K\r;3/�Py�i��T�n[Ht�O���c�W6�Xe�b�ߧݾ<�dB�0_�����[.�9��|-��-|zF-�|EW�;��|.\'氶ky2��\0��D�yfŵ/h�,�?��.V��J=�k������NzN��=��U:^6Ӌ�ٟ��m��Nޭm�r�Q����^E�<M�i��g��Y���-]^���Or�땄c�u�߿�����;ul���d����Zɴ����X�75tx�;o^�98�����S\\7��c,V����#��6�Jk�o��Tt*5�VU8mϷ�q�8��$k�詅U��3+��vX�²>�ُ	n��X�F�u\ZQbG��4�~�|�ד�rq��\"+�w��-�%�͈�`�</��/�^��4�a.�&Ga\0m#}���.a.�����3Ց��\ro�˜��[��V���;����썡��^sy�qq[�@DDD@DDDA�����h�@�i*��D{e?w���矔>���cM���l.��t~\0�\"���+bUl�XF@����b�����U���{j#���V���t\'�*Z{TI>�����c{�~ FL`q��Q��L�8Fֵ�z.s�\\\0ps�`��n��x+\Z\0h�;n�s7�uk@��sٹ]#q��\rO �z�0DD��y�d�̱N�,1v_%��Fs00����J1�3���Yk�)�kM�\0&y+���T�a�N�9b\'y�ٱx�[����Cqb՗�;�ð���������o�ӏ�֛N�=>�����DF��h�L��IU#�@k�\06���X�`.�խ�L�T!l�,$FZ\0�ps�P��ظ7\"non̖U���.KRb\"�9*���266��o\"�Ŷ�+�����cL)5�j�]��q��l�\\<V��\\����liR�n��zsny�7�����a��FY��!��8!s�rZ\n�\'F�\"x�����pl�����#%��9�\Z�(#���D�l��)N7<���#.�2\\��\'2I\'2Nd������\Z��ƶ�ctjhA,V�Ltk�A]�QAX�\\CF�CGi6]w��%����l L��~���5��69�N��۰~g�w�e4�u5���[:�,�n����#��\"�\"\"\" \"\"\" -.�𡡪��c-����OP+~�o�E闗�P6�\rS����^~!�s�$�I$�Nd��%Q.�2�P���o����� ��9퍦�cp�p�<NA`D$��m�4;vX�lF�\\�\\�tD��WD#a>%dmK��w�+ �>G���\r$��W�:A`���7;^��9oY����S�~7I&{p4񓅗����H���O\Z^_�?�^4����~k\\��#g�d���F����բ��6������B?����T���i�5��>P�����fv��12�&�b�/2��zn.�a ��U�:j9�}R^,\ri8C]rq�73ꏇ��6�vDS#}��y&�I���ч�ㅖu��!{�����%��|�mTDUkI \r��;N����`{�����~X����\Z3Ѩ頵�cp�7��>��\\7��MYEMk��H�h�o�G��J�@��(����������,�O�p:B�K-d�9�&�^69��6\"�ztA�j��~x*�x]�����<�ՏU�;�����+��O4����j�TsuZʹR�7w�._P�P� �*��s�ւ���x�L_.��Wp�\r?�}�b�Q��h=�4w;����;F�}�w�<�_\\Tr^���4.퉟E����G;���\\��B�}M��3�u��n��/�g�G;c$od�?��YQ��)Ͳ���gɡή��k\\;ZB�u�g�h��ud{�w����ՏV�\'{���� �J��TsO^?w���ƭUO6���C~��~�?$����UK=j)�ce�\0i[6���2V{���44(��E7s��Z�\'+���,p�hk�L:5��<\\<�����c��PFE!�2�ݻ�_�btX���X�<���3x7�{�|�������R�\\�d^��7`u�I�$�����5dgf�Y������ӗ��\\L�����\\8�V�7�[�P�*�ʊ� ⫈(*����������������������)d�5c����;B\"u\Z���1�ލ��-d�������~\"6���ʈ�_Q͎�w�K}�e,VZڞhh��f�Lw�iDM�uG31}��z6ÅA�\0���z5,p�D�����z�k�3\rlg#b\'q��p�~+\'���d�ʌ8�9�{]�nߗD��0��w�K���z\"�C)ܲ�2��#ZU�DUT@DD��','����\0JFIF\0\0\0\0\0\0��\0�\0	( \Z%!1!%)+...383,7(-.+\n\n\n\r\Z\Z-% %--++5-/./+7.--1-+---.-7-+-----+-/5-+-.---+02++---7��\0\0�+\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0F\0\0\0\0\0!1AQ\"aq���2Rr���B����Cb���#D��$3cs����\0\Z\0\0\0\0\0\0\0\0\0\0\0\0��\0-\0\0\0\0\0\0\0\0!1AQq\"Ba��2�������\0\0\0?\0�(���������MCcc�y\rk\Z^��rPeEΫ9�!�EJ���%�OYhc��?�ڃ���#��B���K�Eo�e0�W�\n3�����=�Oꐠ�H��ܸ�\'eVv(?S\n��W���^����A�Qp	yGXv���+��HP���mMA�c��}�|�H��\\�/;^��=��*�i̴xLK�i��O{d`�*�����[L?��1/�p��7y(�F�F��� 8�������g�]s�y(2���u���&��^�Iq̓rU}=/<Z!�\'{�؟�����~�C�\"��|ڈ>������������7?�R�C�#[�J�ȃ������\0��LP����RB=�<�� �R��N�i����C���*v:�F��(�����w���v(��|��\'I>i�ֱ�m���}��iͶ#y߱r�й�̞�J6�+K����=د���$����H�H�U�k�c�ǚʭ���4\0\0��Ex^u����ZzS;��a��>^�p.[�J��@nƝL|00�q�\\\\��X��I�H_����nA��ߦd���%���0gkwe܂馊�2\'�\0��Ҿg#��ۉ�+;��R$�L��b�]l�]kw\0їY��sz�c1��*���%���C\\8M;�|´ҿ��e5�J�[��Tb��|���FHHē`\0$�{Xe�k\'�{eqc���S�ݗV��]�C�q\r..\0\r���}�Ey�%������Y���o�T�\'�\\�m�{s?�k�-�J�G\Z{g�*��i�/���.��OHw�Q�VXƈgx���h���U�W��X�+��X|�������d^��*V����+#qk��������:�*N�|sX3���Q�^�\rF�Fe�u��� ����Nyd.��h�f�5o�ko��6�ڼ���>%cs�D�&\Z�ֆ�s|��B��k$��\\/�3? ��4�3\\���}�xJ;��܎������ߞ�>@w��y��ښ&<��9���gqkC�%|��E��M�%�g�jc����Ƈ;�_=���Okj�H�ѧm��,���?x�y�A4J�֨\Z�]j	��֨:�]j�n�SZ��U5�&kU��SZ�^�F���,6����=�%j䔸�w�.����5dSm���V��3���-�ۯ�ְOS~�ro���|�1�N����Qd���X�V��Y��uī	BU���	BU�@TUYh���3�p��WA�����ቹ>i�����<\n�f���F�f��cG�X\0�?6\Z/Kn��o��\'��+)\"(�\" \"\"\" \"\"����)���OV(�!밸���5rnt�`��=)�&�ی��}���=[\\���y\r�$����q��a�(��\Z	:�]j��SX�f�5��5�&kU5�&�5��z�*�Y�Ď�7����+m.s\07��Z��>Oi���\"-p����#0]�u�A����\\q4]��w<]�2ֳ\Zv}��t��49�7��Ōb2\\���.�E� ��Wh��d�COFF�X\\X��f�[&\r���I��K����\"m�X���u1ͧ�3�	�Xn~eH�7�8o*���;�:ʂ���c��j��YSQ�����Tw9T�n���崭%R�&�{�l�G?��J\n��\" -�\0#)1�^FM����Z��@�SCGNW���s�\r��X�����t�t����Xp뇸{��(���(�o�l�v4\0<���@DDD@DDDABm��C��ӫꪁ��q⏢�v��w�xyA�z6`�i*?�c�ьn,����|�\n���t��*bV].��J�TD]Tb��z,F��_7�H�su2(n��&��8i��6;��S�Rb����)\"���4�ع�?���Q�^�U\\�荞k)N�d�$Z\r�O9�2xd�eLQG��>�6����������M��\0Oo_/��<�i�6\0��f��ay�f~Y-�ծB&����Ϗ}�Wh:��Ǹ��q{y9�Z��?骖�}��9ĭ�9316�G��M���G�87�o�<�8c懔E��а���7�_̨/��$�h��>�M-�ij�d�È�ٱcXKtN�)���}��>��e���C�F�V���i�Z�<���6#���;��ќ��a����搁�Gq�̝�H�y��\"(�\" \"\"\" \"\"\"�r�M6�����\"���~�7�ţ��Ӕ��=��ҳWխ}�!���J�Mm�yVy��>G�O{��8�s�n�{I*�b7:j ,%�hXV�J&h��dn*M9f݇aܷg�w��J�c�\n\"�8���#j��=㸬������$����j�۬͊�-��������	�\r��`|U��=���㌖��R�`�z?C1���=�1<�loy�R)`��]m�m��+f4�ck��\\��7�n�K��3֟\r7i�v��G�W�>�6#jz|��.�v�d<Z����^���c:�Xo��-tܦ��a8\r�3 }����o�pv��7�7�Տ�^�ͮ���\0ϣ��\"�&bg���=�++�}����i��I���S�h�ĸ���f�\'�صsU��z��H�����퉩\r�Cz���0�f׸w��;�Hx��3^��V�,=5O*浵����h�t��9����Z�%�Z�c�{�q�U��z��\\�mq\r�Q^ϒ�Dt�\0\r��\0�\0�};�(DC\0��me��3=��q�m�P�������qm�o��?5�U��Qq_���T�5�i��m�]�4��G��� k\\�5����\0.I_!�N\Z�ʪ�{I!���ь}�;�P��U@م���f@�Ǵ-e�����u���|��ͽ�&�B�K\r;3/�Py�i��T�n[Ht�O���c�W6�Xe�b�ߧݾ<�dB�0_�����[.�9��|-��-|zF-�|EW�;��|.\'氶ky2��\0��D�yfŵ/h�,�?��.V��J=�k������NzN��=��U:^6Ӌ�ٟ��m��Nޭm�r�Q����^E�<M�i��g��Y���-]^���Or�땄c�u�߿�����;ul���d����Zɴ����X�75tx�;o^�98�����S\\7��c,V����#��6�Jk�o��Tt*5�VU8mϷ�q�8��$k�詅U��3+��vX�²>�ُ	n��X�F�u\ZQbG��4�~�|�ד�rq��\"+�w��-�%�͈�`�</��/�^��4�a.�&Ga\0m#}���.a.�����3Ց��\ro�˜��[��V���;����썡��^sy�qq[�@DDD@DDDA�����h�@�i*��D{e?w���矔>���cM���l.��t~\0�\"���+bUl�XF@����b�����U���{j#���V���t\'�*Z{TI>�����c{�~ FL`q��Q��L�8Fֵ�z.s�\\\0ps�`��n��x+\Z\0h�;n�s7�uk@��sٹ]#q��\rO �z�0DD��y�d�̱N�,1v_%��Fs00����J1�3���Yk�)�kM�\0&y+���T�a�N�9b\'y�ٱx�[����Cqb՗�;�ð���������o�ӏ�֛N�=>�����DF��h�L��IU#�@k�\06���X�`.�խ�L�T!l�,$FZ\0�ps�P��ظ7\"non̖U���.KRb\"�9*���266��o\"�Ŷ�+�����cL)5�j�]��q��l�\\<V��\\����liR�n��zsny�7�����a��FY��!��8!s�rZ\n�\'F�\"x�����pl�����#%��9�\Z�(#���D�l��)N7<���#.�2\\��\'2I\'2Nd������\Z��ƶ�ctjhA,V�Ltk�A]�QAX�\\CF�CGi6]w��%����l L��~���5��69�N��۰~g�w�e4�u5���[:�,�n����#��\"�\"\"\" \"\"\" -.�𡡪��c-����OP+~�o�E闗�P6�\rS����^~!�s�$�I$�Nd��%Q.�2�P���o����� ��9퍦�cp�p�<NA`D$��m�4;vX�lF�\\�\\�tD��WD#a>%dmK��w�+ �>G���\r$��W�:A`���7;^��9oY����S�~7I&{p4񓅗����H���O\Z^_�?�^4����~k\\��#g�d���F����բ��6������B?����T���i�5��>P�����fv��12�&�b�/2��zn.�a ��U�:j9�}R^,\ri8C]rq�73ꏇ��6�vDS#}��y&�I���ч�ㅖu��!{�����%��|�mTDUkI \r��;N����`{�����~X����\Z3Ѩ頵�cp�7��>��\\7��MYEMk��H�h�o�G��J�@��(����������,�O�p:B�K-d�9�&�^69��6\"�ztA�j��~x*�x]�����<�ՏU�;�����+��O4����j�TsuZʹR�7w�._P�P� �*��s�ւ���x�L_.��Wp�\r?�}�b�Q��h=�4w;����;F�}�w�<�_\\Tr^���4.퉟E����G;���\\��B�}M��3�u��n��/�g�G;c$od�?��YQ��)Ͳ���gɡή��k\\;ZB�u�g�h��ud{�w����ՏV�\'{���� �J��TsO^?w���ƭUO6���C~��~�?$����UK=j)�ce�\0i[6���2V{���44(��E7s��Z�\'+���,p�hk�L:5��<\\<�����c��PFE!�2�ݻ�_�btX���X�<���3x7�{�|�������R�\\�d^��7`u�I�$�����5dgf�Y������ӗ��\\L�����\\8�V�7�[�P�*�ʊ� ⫈(*����������������������)d�5c����;B\"u\Z���1�ލ��-d�������~\"6���ʈ�_Q͎�w�K}�e,VZڞhh��f�Lw�iDM�uG31}��z6ÅA�\0���z5,p�D�����z�k�3\rlg#b\'q��p�~+\'���d�ʌ8�9�{]�nߗD��0��w�K���z\"�C)ܲ�2��#ZU�DUT@DD��',500,0.3,'1 year warranty is applicable',7,'approved',0,0,''),(15,2,'Surakha E Commerce Pvt Ltd','ELECTRONICS','Mobile','Naughty Ninos Printed Boy\'s Polo Neck T-Shirt','Pantaloons',1700,5,105,100,100,1000,89,'����\0JFIF\0\0\0\0\0\0��\0�\0	( \Z&!1!%)+..0383.7(-.+\n\n\n\r5 --.7--7+77-++0-++-+0/50--7-7+--+-/-----/.---0,-10-��\0\0�\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0��\0K\0\n\0\0\0\0\01!AQq\"2ar��3RT���B����#Sb������DUcds�������\0\0\0\0\0\0\0\0\0\0\0\0��\0\'\0\0\0\0\0\0\0\0\0!12a�AQqB����\0\0\0?\0�\0\0\0\0\0\0\0\0\0䤖�¬���!H	]n���Iz���e�^���ܾ�{k\'�0E��&>0\"ꗯ��җ��ϱ�5���Fq��lW����0�\'��_�Ęֳ:7:ZM��x��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*�~w�M�^U���ʼ���S�Iao��/[�O%��.q+��<:�W�㫦�Z�K\r/���\'����!�_��[�Z�Kx����S��x��S�^�U��z�冕����YmxhG[aѥ�W*|*��\n��ǌ�,����K��+�m\'B���P��kkt��W��g�����&5�+uc����T,hы^r)���;n�_��E}�[��k�ݖׯע��\0���a�[ϻG���}�K�z�h/�4g��_�_ׯ�T�M\\=�mx�zh��M��K|&x�R�일���\0OQN�C\\1�R�xU��4ȣн�i���2O1z趚ٯ����4�����U�Z���#sc���*��_хhJ_u<��^��:�/7��V4�]�\\���x�ԗUª�-)�Զ��[��)��Q�핮6g��|?�.�Bp��rWv�]��\\����u>K��\Z�4��I�W�����m�x��R܃��<�?R���}U:T�q�O�`�P\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����_�����T�z��mᮜ^#)�sQ�ю,�B�|6��;z4�S������w�dվr^�K$�&H�J!d�5�^�6�jV���Ji�:�(����M,.d�Mc���;Ֆ|g[ʻ�S��(Ӝ�x��E�j�y��N\nrxƩsy��j�q\nU\'BWp�Up�\nT�_J�7��T��q�9�i�{/��&��������wӱf\r�X��m�y��ϖ3��p�|����ҡRR�7ZU&�[MR����4���䥳\\�3��wjP�:�T�N+���>kn��oZF��^�?��c�����׽�Q��(�y����,�����*�G�U;�jN-�aI����eYr:W���8�,|���R��w�sJ*55vk[T^�Ϲ���J�g�ECѽ�z<:ލ��R�io��F��M�S��=X:b+X�%��R�	B�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\05��q�/�$n>u�\"h,7>דK<�;J̴���|��.q��eI�^1�g��2쎄�O9Ƨ�RĜ;2�����ΝxJ�hFt�P��xy_�D��\\���i��/���<r���]���Օ���R�ڽ(S���g\Z��IQ�I�R�HN���%�4��g-���㖳���\nR�+zw5��*bzh�T�n�d��r�v���/1O�|����-�����I�O?���/���p�MF\\:��U��I(B�E	�)l�Q�_JK�v���i�ujP�T����3�-���O�\r�譳�}�̤�\'ᵔ�k���gr�t�>K5�[���������,����?f=�R��T��\rV��(�*8�Z\\��㵣=\n�[�W7�~��X�9u�a\"�����\"���ˣ{Cя��dt=�+�H\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0���_�&��οO\0%�%ZQ�Ēk���8�UXM-1QQ��pǆy�Ǐ�G��v��񕖽�$��b��\ZYm�����)\'�O᧏����U*��*rr��:�s�c�^^�s��[�5��o�ͽ䳞m�so��N�]:�����;g�T��OJվ�s2��9I�-1�,��iTRJKff���|�},a����E魭įu�ƥ�\\�˞�ϛ�3�Շ�$�=\n^�������e�EF�R�ٗdQ�ْ�}Cя���t=�+�H\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��矄K+�����b\0Kr���X�5ޚ�QY)j�\'�ДS�i���nEvͰ�\rI���_j ��}::����<pXg�YS,w��zZ\"�ݿ�rOOs*{�d���H�6%�\r��UdQ�ٗ�Q�ِo�z1�W�����e|	\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\057_<���`U����ĵL	bNWE�>H��ȁ�b�Y�1a�Cs}��Z�\r�ĩ��lVE+��vE���P�c쯁��F>���\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0i����ُ�-S9o)|��������$�V��:��Њo�|�\r^��\\yF���q����O� ��X<���m&�J��R�Q���S̛�痃t���|�����\'�~)c�)��H��kĺN��	T�\r�q�̴q57�eS�9���_���^7� m�Ş�q����ߨ����v�z�� ��}��>��>�m���t�u9�;;h��W[Sǐ�\"���-<��8�%h�эj��%/�eku�v4�As��{��w�J���)�#_{<&�ۦ�aU����ԩԊ�ē������MB�o���T^_��}��Cя��e~Z5)S�^c(FI��h�P\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�O���_]֭z�	�՜T!�T�%,�ܚQk8��&�ߡN��W�ٕ(��l�j�+��Xˋ��G&ʛ ��9���^��_��ytO�ߥmZ^��o�4v���GK��\r�t|eZ��C�5���B>���¡�H��\\�Ӄ}A__��/�.����q��.���JJޛ�\nqP����J�7(��xm���)p:�!]Э�ʭJ�]������2K-��ly�>\'.���|�Ǆ�<�2����޳����F\\��n?xG�-�Q�W�$��լ�B��y��i^�Ju픒����j�>���}�Y��Sq���ˇ��x�%�2^5�\0xE[����^>\\��\Z��3N/3��{�KН�7�ڱ�����N��3+{���5���8m�Y��f��l�%��Nۇ[P�5)�3��ۊ�I�E7�I4��FV�J�$�����@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\07şWp�/F�b��3�����U�76Wv��\"���z{��F�����e�U?j �\\.�/����=O�Z�\0}~�WƸoS��u*=M��$�ل��;��`�c�h([�w)<�7��\r�$��|@�x�Q���p�\'���GF�jT���k>�y��\0�����:�|�՜��6�P�=)F+*)ɤ�{,��+�E�r�`��ڌW�|��.<2�c+w�;$�]F��y)K�WW���JTaE�Q�vnM����u�*�y���վݘ}�>!k$�5˼�ԝ\"e�Y��w�o>V��]��9kzJps��N��<6�~\'T����V����%�,%p��u�l���)y�K�m�u���U~5?an˅Q��y�JM�^���X����ьc��P\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0���ʄ�#.~��3�y=�P\ZJqE�UI`��<���];��}9ʷt�<����1�����cJ���RRP��*��t�Z�o��t���I����:���q��M����ϋp�74�B�}\\��2q��sG�X]���mm�*|�V�)���1��ē��M�8N���k����O+��W�X~�$[m����kN�GъQ�m��,.o��fo\'�B�\0�P������K��PV��\n�M�M�q��]�+���WT�U�o_��S��UӅ\nt)J2��td���=���GoB�j����/t^Y��,�Ib+�r|�,w��@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�zN�9ӷҳ����*��h��5&�R�A���ۂK�%�a�u	*u�RԪB�%��R��cV�jx�ϻ�\0a��$亚x�.�֩E�?��R�t�U7|�$���X,virX�׬����8Ԋ��IN9�Ƥ�@:�Iӣ�~\00\0\0\0\0\0\0\0\0\0\0\0\0\0\0?��','����\0JFIF\0\0\0\0\0\0��\0�\0	\Z(!\Z%!1!%)+...383,7(-.+\n\n\n\r\r-+-+-+-----+-7++++7++-----0-0-------+++-+++++-+-7--��\0\0�\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0E\0	\0\0\0\0\0!1AQaq\"����2��#BRr���$3��CSbc���4s����\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0!1A�a��\0\0\0?\0�P� � � � � � � ��4(��@\0�\n�=&ꦕ\"1�gk�����g����\\�cs���� �\'<ǩA�Q���>P����ڒI�32�f\r镩�ś��Z\Z$�`O\0�oL-\0GP�H.u�#�����4;�y$.��ԫR��\r�y\"t�B�GM�m`ci���̒st�M,�$�\Z�y&�0Ii��\0`���wў�8�I/n��i�����\n���4�� QBBBBBBBBBBBBC���4)K}�Hp3�O\'j���K�=�h�� �Vo�k�Vp=���L�c�v�j�L��]!G�m��[ށ\\�M=�]R����a�`�Q��j�M�<�˦�<BȩԂ��\Z��oQ�u\r2F��a�%��\0TPs��p�p5���H��ф�]*�N1��\03�����\n.�P~A�x�&< �8 �BBBBBM/Kʕ����xc\Z	$���ÊD�e �c��~�1�ӓjy�N\n�M�S�<N?X�5:Θ��N\00����B[xnc�����۝�����\0*�g�8�� Fn|����Mkt���IÆ��\05�;.[]�sT�w��T�MYգ�.n��9�酭���	���1�t��f���\"Hk��;M$I\"N�\Z��͵�G�!R�v��\0�}�����\Z��$\0�X`�^s�Eͪ���4Ta�\\�h�N�����9�d��3.$A���y�$�׼ƁFZm��2������l�*�΍�\r1PSv��b݄.�Z���cz�[�AV��H2�DoZ�ڧg6��P���9Т�ipڙT���\'t�<�A�S���b�Q9.:���l�F�&<����_���:�U���H��� ����Js\Z���6�7�������7Ysj���h	q`:N�.~��+c��*FYQ�?d4Î�E�6����9��ܕ��!�����������T}[L�\"	�.�E�ߜ����&4 �G�S�!!!!�|��Um��:S<D�h���S���괞���aw��q���I3���\0@ ��m4Y�	s��	p$�#Q��D�K����1���8�V\r8�`�Z-��4�1���{�{��eA�O1����f\'g%j�������B������76��K�����T>e�K6�<�ntٚ��7��U.����bOS���q�)ǿޙ۝<i�D^U��C\n��^�ҙIJU��z7��8q+\n�XJ�}_�m\r�U��F�!�:�{�]��k��2��b�5N���G��\0�Y��r��-n\Zm�/I,t������Ah�LN.��\0������ݟ�VF��7Z�4-,q-9�L��R��Vo�gc��&�ڞ�y��m7�I�M�?���.�HP��5�\\1a\"�4�m�u��N:]d�e�R�]�s�������ò��(�͛1y��y\r�P;y�(רϞ���N�U�༅�oh+�&�B��#�H�N�V�l2��C�+M��s�6Ѫꕝ��i0Lmz��\\�!�Z�|ޫja���F��<W����.i���4��֚���}��v\nE�/}2\\s ��u��D[P� � � � �|��K,�}g�y\0��	�8�ĝ�V���l��z�F�eڬI�b �}��i�/*�CFR$�����Н֋����\"��\Z��s0x�P\'^�\0�:��o��ԧMƕA��{YqF�s^��DGfO����8\\����)�䏴�8@�M�So��`��\">�:������ݠ�Sn���o\'O��O����:)t��\09��D�(Ҧe>�@��\0Z(K��$�d\r�l�ӹn�J]���ٟ�y��T��pWE1��O-��O�%�S��$���$S*�A�5}�?�Z��\'r��lq�$�	T�����.��jV,�@����\0x�����^�K@��F�1ddნ�����P�Bm��]\n�@�U�L�],ڼQ-�.@�����pcZ5s�\08f@�^�2�:�Uf�M:����ppͨ�6~�=�V��X��\Z��5�qc]I�h 9���.�o��ً.v,]���n�5kX7�E��֧N���\n.���u\'�it���X\Z���������Ϋ\0�L2�i�\\�%���I:WHq���n{G\0����i��kO����\"��Y���O��!!!!*_)�v}�\0�X嶃\\s�v-��+�ٿ�V=h9�4F����~�xң|�\0qM*7��eZ��[/:���D����Iq.���S�H����	i|���콣��b�e:N[�]٪�1��{�?Ud]�\0��\0N̻�A�is�k��\r��I��\0۷#�|�E�Nj���2�!*m;\0d4C!��m�f�O||R��q۩��\ZJ��Y�5�q�9�wd���t=�]���t�	�+���]��~�h i*Z�e�TI��=ĵ��2�vlQ��\n�~U��\0�D��d*ۨ������9�M6�67d�Q�:��k�ئM<,�;m%�q`��g��4�u�\Z�@�`���ߩPAV��i���o�;��F׸6�ws�ٷ�r��`4��=���t\0����sF���C��nƣA��*���a���|�H���+��ƻ�1hy�|]���Djc\'�\Zm�}�R8�Zh�>#�|TKi��m�����\"|�����I����Z\\�3Q��ZI%�A��\Z	%6�U�v\'�9\r�\0\02\0\r�&H�WMDJ]c0��葛��g�|�u�_Ft;����\0���(BBBBT�RG���\0��i�5�|���G����!�X��-���O��)v	��֛0�6O��+�+W�#/8�y�YZo*S돯Y��\n�V��Xh�G?[�z���jz�rX;���\\����gr����\'��1��\0��ty�8쑞� N�&U�ĥ��X疀\'�k�xqJX��pQi\rσ���F�,�<�k\Z�]F��Y1M�j;kϟ!�5�Yn��C���C3&�����\"8�lVl�AO���d�d�R$�\0��郠��R��,�Y��]�[9F�K��K�$�ZB��?L-6��lԧ��C��ۏf�ᛂ��@P���}O�3�TY�[��i�5\rZC[��tûPp��w@Q� �,n�,���7=�.8D<�c�E���n��\'�|ϸ�J�U�������k߇��a\r���Y;x*��E���a9�H-;�%�nȄ��e.��;ǵ矚N���7����Q��\\Kp�h����ȑ�ok��&H3�����v��\Z�\\ެfK���i�=��rw�1e*u�����>�\\���ps��kCa�9I%� �n��WR0��	�?����W唴��$����<����C�\0��J��؈�}�1R\'\\��;ۗqU�.sj0C|3�7o��Aǲg��NͣԤ^\\N\"Ip�Ndƣ�8 c1��?�G�ѽlX�����/��i}%p6,��4�\0\0D?B�B�B�B���?t�q�\\�KN�n�����y��ZuVi��t�Z!�.j\r޽d�2��s\n�m�e�OZ��Uo\rV2j8��;d9z�(2��i��HR���\\���j����2�����u> 4x�P�8\Z�G\0��\Z~*jేW\0�,�����=�f�l��Vs^��G\0@�\0�I��ǒ���:�*��PH����J����ɐ ��E�_V\ZObX�#�js\0�7����<4a\Z^����\\\\CZ5�o?��\\���}e�؜FM\Z9�*�u[0����������Ŝ����ҞyY�!zQ�>\0��N/F#%5�s\\����X,v|T�9>I*���ZrsLH�w�\nB�`��l��6�e�jU=�N\\r\0ܾ�w�ގ�}W.����\"�b3����n[�zæA�� �����@[�����9k���b,W=~���N?MFL�^4���U�m1ג4,�INnkP�^�C�|X��2=��Hl]]gG�.`1bh�QL)��y��?�\0��r]1+v��W�7[b�!���B������\Z��� � � �%rJ>���so�a֡�[�LL��ro�j�m^�z�2����W�ϯAyS����#����^�ު׈�Z-�z��{��f����̦h����(k>�5e9)���1�i\"w�h�^jz�pcj?���]��`�����\'���Z��/%䟪?��8�\0[�5���(�gS�;���բ�W�x|Ƭ(�V����T���]q�4U��i�=R2�cOe�4�\\w�)�]��ݢ��5�G{\rh�\r�:���uXȆ���<]�U��`���]���F\\`\0\0���>ηu�[��O/X�k���ԧ�廼�(�Ɛ���>c/q�R��>N�I�9ǜ&�،���W��XO���)[Ҿ71�kO�4�	�>)�o�0�/�:m̐Ɓ�΀�\"WlS\r�}�����ц���N`����݋��T6�iki�L�\r2$��0s������=H���{Dsp�y_>���.�P�G�%olz�t\nI�vv�!\0�!&�rMʢ#�l���	����f�{�i��}��� ��[�C�9H#�Tp���d?4���/^��A���W�VK[����ml�Y��v)�.����@\"��O�]v��डf��O,ϐF�	���\"~��\0�S�\n�è�h#\\&���ilT{w��������^̂ڃ��z�$H�.�9�p;�4Ը��P�*Q�wPQ>Dr?��ɵ����<#�s�?q�i�M���u��g���	�mb���cbI9���W��4�ӑ>�W\r2�Ѭz+=6j���\Z��-I��q;&�6��<�?o���;�S&\\v���L/c��`�Y~*f�@Ɠ�n�@Uw��jf8��G&��ʵ�Ff��O��&�!��$���-2�8�	�s��$�d>\'ܚQ�Uw�M�]�.m:���Q�,��FBD�\0�.\nB�譪�����3WދtSp}N�ƒ!��6�%�ɕ�h�֨\"����|NKG����&��1���5(��(!9pI8%���Pγ2Y_N�)P�5贺s{F����k�joV�:�G���.���#>��uf�p�޷�G(U�%6;�ޡk���������W���G.�Zk��-�~�#=;��>Mls�?�;�SWwG(�J�Z8\ry�PBY.v�;#�<kw=�eɢ�\r�{w$*X�)��M��Td�-����洚O1<.?W�b�Z,��N�H�Am�6-��@8�H:�A��;d�.��-0�Hma�h\r\0i��Tf\0t]u �-�I�{*��v�/0�m��Dp#�?%���4�;���U�;P�<G�-��6���P��dh�$���HOX4g��n�\0�ŭ���\'���Uks{��I��ܡij�R\\a���7{�Z�}W�cC ;&\0A�\0\'�a�0`�(�hsZ涵X�Q���3q~E��;[\0�\\�Qgn��Uٽ�	9��\0\0L��d��j�]kv��O�n����Y��N����`b��fKR��S���$�^���\0�!\0�!\0�!\0�!%��Ԣ\"X�,K�!]��b�:-\\��jX�s��Ø�=�M*�J��mV����j` �$�9��+�ʣ�؎�U\Z�GZǚ�r)������n�a9�@~èگuzE�v\":����4�`n����#�7}��A��\r�s���q�q\0�A���;f�;�-.��ypy4�0���.��[�q�a+Ϙ{RÉ�hҮ�C���i���A��8�Х.���q��\r��w��y����`;�E��M*\r6:�\\y���e���l�$٨�*4WV{2~�\0�:t��/P�� � � � � � � � �rP�Q�I9@��n��B/h�.h��\r��� �4n	F4nBNi4nO)�غB�������','����\0JFIF\0\0\0\0\0\0��\0�\0	\Z(!\Z%!1!%)+...383,7(-.+\n\n\n\r\r-+-+-+-----+-7++++7++-----0-0-------+++-+++++-+-7--��\0\0�\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0E\0	\0\0\0\0\0!1AQaq\"����2��#BRr���$3��CSbc���4s����\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0!1A�a��\0\0\0?\0�P� � � � � � � ��4(��@\0�\n�=&ꦕ\"1�gk�����g����\\�cs���� �\'<ǩA�Q���>P����ڒI�32�f\r镩�ś��Z\Z$�`O\0�oL-\0GP�H.u�#�����4;�y$.��ԫR��\r�y\"t�B�GM�m`ci���̒st�M,�$�\Z�y&�0Ii��\0`���wў�8�I/n��i�����\n���4�� QBBBBBBBBBBBBC���4)K}�Hp3�O\'j���K�=�h�� �Vo�k�Vp=���L�c�v�j�L��]!G�m��[ށ\\�M=�]R����a�`�Q��j�M�<�˦�<BȩԂ��\Z��oQ�u\r2F��a�%��\0TPs��p�p5���H��ф�]*�N1��\03�����\n.�P~A�x�&< �8 �BBBBBM/Kʕ����xc\Z	$���ÊD�e �c��~�1�ӓjy�N\n�M�S�<N?X�5:Θ��N\00����B[xnc�����۝�����\0*�g�8�� Fn|����Mkt���IÆ��\05�;.[]�sT�w��T�MYգ�.n��9�酭���	���1�t��f���\"Hk��;M$I\"N�\Z��͵�G�!R�v��\0�}�����\Z��$\0�X`�^s�Eͪ���4Ta�\\�h�N�����9�d��3.$A���y�$�׼ƁFZm��2������l�*�΍�\r1PSv��b݄.�Z���cz�[�AV��H2�DoZ�ڧg6��P���9Т�ipڙT���\'t�<�A�S���b�Q9.:���l�F�&<����_���:�U���H��� ����Js\Z���6�7�������7Ysj���h	q`:N�.~��+c��*FYQ�?d4Î�E�6����9��ܕ��!�����������T}[L�\"	�.�E�ߜ����&4 �G�S�!!!!�|��Um��:S<D�h���S���괞���aw��q���I3���\0@ ��m4Y�	s��	p$�#Q��D�K����1���8�V\r8�`�Z-��4�1���{�{��eA�O1����f\'g%j�������B������76��K�����T>e�K6�<�ntٚ��7��U.����bOS���q�)ǿޙ۝<i�D^U��C\n��^�ҙIJU��z7��8q+\n�XJ�}_�m\r�U��F�!�:�{�]��k��2��b�5N���G��\0�Y��r��-n\Zm�/I,t������Ah�LN.��\0������ݟ�VF��7Z�4-,q-9�L��R��Vo�gc��&�ڞ�y��m7�I�M�?���.�HP��5�\\1a\"�4�m�u��N:]d�e�R�]�s�������ò��(�͛1y��y\r�P;y�(רϞ���N�U�༅�oh+�&�B��#�H�N�V�l2��C�+M��s�6Ѫꕝ��i0Lmz��\\�!�Z�|ޫja���F��<W����.i���4��֚���}��v\nE�/}2\\s ��u��D[P� � � � �|��K,�}g�y\0��	�8�ĝ�V���l��z�F�eڬI�b �}��i�/*�CFR$�����Н֋����\"��\Z��s0x�P\'^�\0�:��o��ԧMƕA��{YqF�s^��DGfO����8\\����)�䏴�8@�M�So��`��\">�:������ݠ�Sn���o\'O��O����:)t��\09��D�(Ҧe>�@��\0Z(K��$�d\r�l�ӹn�J]���ٟ�y��T��pWE1��O-��O�%�S��$���$S*�A�5}�?�Z��\'r��lq�$�	T�����.��jV,�@����\0x�����^�K@��F�1ddნ�����P�Bm��]\n�@�U�L�],ڼQ-�.@�����pcZ5s�\08f@�^�2�:�Uf�M:����ppͨ�6~�=�V��X��\Z��5�qc]I�h 9���.�o��ً.v,]���n�5kX7�E��֧N���\n.���u\'�it���X\Z���������Ϋ\0�L2�i�\\�%���I:WHq���n{G\0����i��kO����\"��Y���O��!!!!*_)�v}�\0�X嶃\\s�v-��+�ٿ�V=h9�4F����~�xң|�\0qM*7��eZ��[/:���D����Iq.���S�H����	i|���콣��b�e:N[�]٪�1��{�?Ud]�\0��\0N̻�A�is�k��\r��I��\0۷#�|�E�Nj���2�!*m;\0d4C!��m�f�O||R��q۩��\ZJ��Y�5�q�9�wd���t=�]���t�	�+���]��~�h i*Z�e�TI��=ĵ��2�vlQ��\n�~U��\0�D��d*ۨ������9�M6�67d�Q�:��k�ئM<,�;m%�q`��g��4�u�\Z�@�`���ߩPAV��i���o�;��F׸6�ws�ٷ�r��`4��=���t\0����sF���C��nƣA��*���a���|�H���+��ƻ�1hy�|]���Djc\'�\Zm�}�R8�Zh�>#�|TKi��m�����\"|�����I����Z\\�3Q��ZI%�A��\Z	%6�U�v\'�9\r�\0\02\0\r�&H�WMDJ]c0��葛��g�|�u�_Ft;����\0���(BBBBT�RG���\0��i�5�|���G����!�X��-���O��)v	��֛0�6O��+�+W�#/8�y�YZo*S돯Y��\n�V��Xh�G?[�z���jz�rX;���\\����gr����\'��1��\0��ty�8쑞� N�&U�ĥ��X疀\'�k�xqJX��pQi\rσ���F�,�<�k\Z�]F��Y1M�j;kϟ!�5�Yn��C���C3&�����\"8�lVl�AO���d�d�R$�\0��郠��R��,�Y��]�[9F�K��K�$�ZB��?L-6��lԧ��C��ۏf�ᛂ��@P���}O�3�TY�[��i�5\rZC[��tûPp��w@Q� �,n�,���7=�.8D<�c�E���n��\'�|ϸ�J�U�������k߇��a\r���Y;x*��E���a9�H-;�%�nȄ��e.��;ǵ矚N���7����Q��\\Kp�h����ȑ�ok��&H3�����v��\Z�\\ެfK���i�=��rw�1e*u�����>�\\���ps��kCa�9I%� �n��WR0��	�?����W唴��$����<����C�\0��J��؈�}�1R\'\\��;ۗqU�.sj0C|3�7o��Aǲg��NͣԤ^\\N\"Ip�Ndƣ�8 c1��?�G�ѽlX�����/��i}%p6,��4�\0\0D?B�B�B�B���?t�q�\\�KN�n�����y��ZuVi��t�Z!�.j\r޽d�2��s\n�m�e�OZ��Uo\rV2j8��;d9z�(2��i��HR���\\���j����2�����u> 4x�P�8\Z�G\0��\Z~*jేW\0�,�����=�f�l��Vs^��G\0@�\0�I��ǒ���:�*��PH����J����ɐ ��E�_V\ZObX�#�js\0�7����<4a\Z^����\\\\CZ5�o?��\\���}e�؜FM\Z9�*�u[0����������Ŝ����ҞyY�!zQ�>\0��N/F#%5�s\\����X,v|T�9>I*���ZrsLH�w�\nB�`��l��6�e�jU=�N\\r\0ܾ�w�ގ�}W.����\"�b3����n[�zæA�� �����@[�����9k���b,W=~���N?MFL�^4���U�m1ג4,�INnkP�^�C�|X��2=��Hl]]gG�.`1bh�QL)��y��?�\0��r]1+v��W�7[b�!���B������\Z��� � � �%rJ>���so�a֡�[�LL��ro�j�m^�z�2����W�ϯAyS����#����^�ު׈�Z-�z��{��f����̦h����(k>�5e9)���1�i\"w�h�^jz�pcj?���]��`�����\'���Z��/%䟪?��8�\0[�5���(�gS�;���բ�W�x|Ƭ(�V����T���]q�4U��i�=R2�cOe�4�\\w�)�]��ݢ��5�G{\rh�\r�:���uXȆ���<]�U��`���]���F\\`\0\0���>ηu�[��O/X�k���ԧ�廼�(�Ɛ���>c/q�R��>N�I�9ǜ&�،���W��XO���)[Ҿ71�kO�4�	�>)�o�0�/�:m̐Ɓ�΀�\"WlS\r�}�����ц���N`����݋��T6�iki�L�\r2$��0s������=H���{Dsp�y_>���.�P�G�%olz�t\nI�vv�!\0�!&�rMʢ#�l���	����f�{�i��}��� ��[�C�9H#�Tp���d?4���/^��A���W�VK[����ml�Y��v)�.����@\"��O�]v��डf��O,ϐF�	���\"~��\0�S�\n�è�h#\\&���ilT{w��������^̂ڃ��z�$H�.�9�p;�4Ը��P�*Q�wPQ>Dr?��ɵ����<#�s�?q�i�M���u��g���	�mb���cbI9���W��4�ӑ>�W\r2�Ѭz+=6j���\Z��-I��q;&�6��<�?o���;�S&\\v���L/c��`�Y~*f�@Ɠ�n�@Uw��jf8��G&��ʵ�Ff��O��&�!��$���-2�8�	�s��$�d>\'ܚQ�Uw�M�]�.m:���Q�,��FBD�\0�.\nB�譪�����3WދtSp}N�ƒ!��6�%�ɕ�h�֨\"����|NKG����&��1���5(��(!9pI8%���Pγ2Y_N�)P�5贺s{F����k�joV�:�G���.���#>��uf�p�޷�G(U�%6;�ޡk���������W���G.�Zk��-�~�#=;��>Mls�?�;�SWwG(�J�Z8\ry�PBY.v�;#�<kw=�eɢ�\r�{w$*X�)��M��Td�-����洚O1<.?W�b�Z,��N�H�Am�6-��@8�H:�A��;d�.��-0�Hma�h\r\0i��Tf\0t]u �-�I�{*��v�/0�m��Dp#�?%���4�;���U�;P�<G�-��6���P��dh�$���HOX4g��n�\0�ŭ���\'���Uks{��I��ܡij�R\\a���7{�Z�}W�cC ;&\0A�\0\'�a�0`�(�hsZ涵X�Q���3q~E��;[\0�\\�Qgn��Uٽ�	9��\0\0L��d��j�]kv��O�n����Y��N����`b��fKR��S���$�^���\0�!\0�!\0�!\0�!%��Ԣ\"X�,K�!]��b�:-\\��jX�s��Ø�=�M*�J��mV����j` �$�9��+�ʣ�؎�U\Z�GZǚ�r)������n�a9�@~èگuzE�v\":����4�`n����#�7}��A��\r�s���q�q\0�A���;f�;�-.��ypy4�0���.��[�q�a+Ϙ{RÉ�hҮ�C���i���A��8�Х.���q��\r��w��y����`;�E��M*\r6:�\\y���e���l�$٨�*4WV{2~�\0�:t��/P�� � � � � � � � �rP�Q�I9@��n��B/h�.h��\r��� �4n	F4nBNi4nO)�غB�������',492,0.3,'1 year warranty is applicable',7,'approved',0,0,'2016-05-12 15:38:31'),(17,2,'Surakha E Commerce Pvt Ltd','ELECTRONICS','Mobile','Naughty Ninos Printed Boy\'s Polo Neck T-Shirt','Pantaloons',1700,5,105,100,100,1000,89.5,'����\0JFIF\0\0\0\0\0\0��\0�\0	( \Z%!1!%)+...383,7(-.+\n\n\n\r\Z\Z-% %--++5-/./+7.--1-+---.-7-+-----+-/5-+-.---+02++---7��\0\0�+\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0F\0\0\0\0\0!1AQ\"aq���2Rr���B����Cb���#D��$3cs����\0\Z\0\0\0\0\0\0\0\0\0\0\0\0��\0-\0\0\0\0\0\0\0\0!1AQq\"Ba��2�������\0\0\0?\0�(���������MCcc�y\rk\Z^��rPeEΫ9�!�EJ���%�OYhc��?�ڃ���#��B���K�Eo�e0�W�\n3�����=�Oꐠ�H��ܸ�\'eVv(?S\n��W���^����A�Qp	yGXv���+��HP���mMA�c��}�|�H��\\�/;^��=��*�i̴xLK�i��O{d`�*�����[L?��1/�p��7y(�F�F��� 8�������g�]s�y(2���u���&��^�Iq̓rU}=/<Z!�\'{�؟�����~�C�\"��|ڈ>������������7?�R�C�#[�J�ȃ������\0��LP����RB=�<�� �R��N�i����C���*v:�F��(�����w���v(��|��\'I>i�ֱ�m���}��iͶ#y߱r�й�̞�J6�+K����=د���$����H�H�U�k�c�ǚʭ���4\0\0��Ex^u����ZzS;��a��>^�p.[�J��@nƝL|00�q�\\\\��X��I�H_����nA��ߦd���%���0gkwe܂馊�2\'�\0��Ҿg#��ۉ�+;��R$�L��b�]l�]kw\0їY��sz�c1��*���%���C\\8M;�|´ҿ��e5�J�[��Tb��|���FHHē`\0$�{Xe�k\'�{eqc���S�ݗV��]�C�q\r..\0\r���}�Ey�%������Y���o�T�\'�\\�m�{s?�k�-�J�G\Z{g�*��i�/���.��OHw�Q�VXƈgx���h���U�W��X�+��X|�������d^��*V����+#qk��������:�*N�|sX3���Q�^�\rF�Fe�u��� ����Nyd.��h�f�5o�ko��6�ڼ���>%cs�D�&\Z�ֆ�s|��B��k$��\\/�3? ��4�3\\���}�xJ;��܎������ߞ�>@w��y��ښ&<��9���gqkC�%|��E��M�%�g�jc����Ƈ;�_=���Okj�H�ѧm��,���?x�y�A4J�֨\Z�]j	��֨:�]j�n�SZ��U5�&kU��SZ�^�F���,6����=�%j䔸�w�.����5dSm���V��3���-�ۯ�ְOS~�ro���|�1�N����Qd���X�V��Y��uī	BU���	BU�@TUYh���3�p��WA�����ቹ>i�����<\n�f���F�f��cG�X\0�?6\Z/Kn��o��\'��+)\"(�\" \"\"\" \"\"����)���OV(�!밸���5rnt�`��=)�&�ی��}���=[\\���y\r�$����q��a�(��\Z	:�]j��SX�f�5��5�&kU5�&�5��z�*�Y�Ď�7����+m.s\07��Z��>Oi���\"-p����#0]�u�A����\\q4]��w<]�2ֳ\Zv}��t��49�7��Ōb2\\���.�E� ��Wh��d�COFF�X\\X��f�[&\r���I��K����\"m�X���u1ͧ�3�	�Xn~eH�7�8o*���;�:ʂ���c��j��YSQ�����Tw9T�n���崭%R�&�{�l�G?��J\n��\" -�\0#)1�^FM����Z��@�SCGNW���s�\r��X�����t�t����Xp뇸{��(���(�o�l�v4\0<���@DDD@DDDABm��C��ӫꪁ��q⏢�v��w�xyA�z6`�i*?�c�ьn,����|�\n���t��*bV].��J�TD]Tb��z,F��_7�H�su2(n��&��8i��6;��S�Rb����)\"���4�ع�?���Q�^�U\\�荞k)N�d�$Z\r�O9�2xd�eLQG��>�6����������M��\0Oo_/��<�i�6\0��f��ay�f~Y-�ծB&����Ϗ}�Wh:��Ǹ��q{y9�Z��?骖�}��9ĭ�9316�G��M���G�87�o�<�8c懔E��а���7�_̨/��$�h��>�M-�ij�d�È�ٱcXKtN�)���}��>��e���C�F�V���i�Z�<���6#���;��ќ��a����搁�Gq�̝�H�y��\"(�\" \"\"\" \"\"\"�r�M6�����\"���~�7�ţ��Ӕ��=��ҳWխ}�!���J�Mm�yVy��>G�O{��8�s�n�{I*�b7:j ,%�hXV�J&h��dn*M9f݇aܷg�w��J�c�\n\"�8���#j��=㸬������$����j�۬͊�-��������	�\r��`|U��=���㌖��R�`�z?C1���=�1<�loy�R)`��]m�m��+f4�ck��\\��7�n�K��3֟\r7i�v��G�W�>�6#jz|��.�v�d<Z����^���c:�Xo��-tܦ��a8\r�3 }����o�pv��7�7�Տ�^�ͮ���\0ϣ��\"�&bg���=�++�}����i��I���S�h�ĸ���f�\'�صsU��z��H�����퉩\r�Cz���0�f׸w��;�Hx��3^��V�,=5O*浵����h�t��9����Z�%�Z�c�{�q�U��z��\\�mq\r�Q^ϒ�Dt�\0\r��\0�\0�};�(DC\0��me��3=��q�m�P�������qm�o��?5�U��Qq_���T�5�i��m�]�4��G��� k\\�5����\0.I_!�N\Z�ʪ�{I!���ь}�;�P��U@م���f@�Ǵ-e�����u���|��ͽ�&�B�K\r;3/�Py�i��T�n[Ht�O���c�W6�Xe�b�ߧݾ<�dB�0_�����[.�9��|-��-|zF-�|EW�;��|.\'氶ky2��\0��D�yfŵ/h�,�?��.V��J=�k������NzN��=��U:^6Ӌ�ٟ��m��Nޭm�r�Q����^E�<M�i��g��Y���-]^���Or�땄c�u�߿�����;ul���d����Zɴ����X�75tx�;o^�98�����S\\7��c,V����#��6�Jk�o��Tt*5�VU8mϷ�q�8��$k�詅U��3+��vX�²>�ُ	n��X�F�u\ZQbG��4�~�|�ד�rq��\"+�w��-�%�͈�`�</��/�^��4�a.�&Ga\0m#}���.a.�����3Ց��\ro�˜��[��V���;����썡��^sy�qq[�@DDD@DDDA�����h�@�i*��D{e?w���矔>���cM���l.��t~\0�\"���+bUl�XF@����b�����U���{j#���V���t\'�*Z{TI>�����c{�~ FL`q��Q��L�8Fֵ�z.s�\\\0ps�`��n��x+\Z\0h�;n�s7�uk@��sٹ]#q��\rO �z�0DD��y�d�̱N�,1v_%��Fs00����J1�3���Yk�)�kM�\0&y+���T�a�N�9b\'y�ٱx�[����Cqb՗�;�ð���������o�ӏ�֛N�=>�����DF��h�L��IU#�@k�\06���X�`.�խ�L�T!l�,$FZ\0�ps�P��ظ7\"non̖U���.KRb\"�9*���266��o\"�Ŷ�+�����cL)5�j�]��q��l�\\<V��\\����liR�n��zsny�7�����a��FY��!��8!s�rZ\n�\'F�\"x�����pl�����#%��9�\Z�(#���D�l��)N7<���#.�2\\��\'2I\'2Nd������\Z��ƶ�ctjhA,V�Ltk�A]�QAX�\\CF�CGi6]w��%����l L��~���5��69�N��۰~g�w�e4�u5���[:�,�n����#��\"�\"\"\" \"\"\" -.�𡡪��c-����OP+~�o�E闗�P6�\rS����^~!�s�$�I$�Nd��%Q.�2�P���o����� ��9퍦�cp�p�<NA`D$��m�4;vX�lF�\\�\\�tD��WD#a>%dmK��w�+ �>G���\r$��W�:A`���7;^��9oY����S�~7I&{p4񓅗����H���O\Z^_�?�^4����~k\\��#g�d���F����բ��6������B?����T���i�5��>P�����fv��12�&�b�/2��zn.�a ��U�:j9�}R^,\ri8C]rq�73ꏇ��6�vDS#}��y&�I���ч�ㅖu��!{�����%��|�mTDUkI \r��;N����`{�����~X����\Z3Ѩ頵�cp�7��>��\\7��MYEMk��H�h�o�G��J�@��(����������,�O�p:B�K-d�9�&�^69��6\"�ztA�j��~x*�x]�����<�ՏU�;�����+��O4����j�TsuZʹR�7w�._P�P� �*��s�ւ���x�L_.��Wp�\r?�}�b�Q��h=�4w;����;F�}�w�<�_\\Tr^���4.퉟E����G;���\\��B�}M��3�u��n��/�g�G;c$od�?��YQ��)Ͳ���gɡή��k\\;ZB�u�g�h��ud{�w����ՏV�\'{���� �J��TsO^?w���ƭUO6���C~��~�?$����UK=j)�ce�\0i[6���2V{���44(��E7s��Z�\'+���,p�hk�L:5��<\\<�����c��PFE!�2�ݻ�_�btX���X�<���3x7�{�|�������R�\\�d^��7`u�I�$�����5dgf�Y������ӗ��\\L�����\\8�V�7�[�P�*�ʊ� ⫈(*����������������������)d�5c����;B\"u\Z���1�ލ��-d�������~\"6���ʈ�_Q͎�w�K}�e,VZڞhh��f�Lw�iDM�uG31}��z6ÅA�\0���z5,p�D�����z�k�3\rlg#b\'q��p�~+\'���d�ʌ8�9�{]�nߗD��0��w�K���z\"�C)ܲ�2��#ZU�DUT@DD��','����\0JFIF\0\0\0\0\0\0��\0�\0	( \Z%!1!%)+...383,7(-.+\n\n\n\r\Z\Z-% %--++5-/./+7.--1-+---.-7-+-----+-/5-+-.---+02++---7��\0\0�+\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0F\0\0\0\0\0!1AQ\"aq���2Rr���B����Cb���#D��$3cs����\0\Z\0\0\0\0\0\0\0\0\0\0\0\0��\0-\0\0\0\0\0\0\0\0!1AQq\"Ba��2�������\0\0\0?\0�(���������MCcc�y\rk\Z^��rPeEΫ9�!�EJ���%�OYhc��?�ڃ���#��B���K�Eo�e0�W�\n3�����=�Oꐠ�H��ܸ�\'eVv(?S\n��W���^����A�Qp	yGXv���+��HP���mMA�c��}�|�H��\\�/;^��=��*�i̴xLK�i��O{d`�*�����[L?��1/�p��7y(�F�F��� 8�������g�]s�y(2���u���&��^�Iq̓rU}=/<Z!�\'{�؟�����~�C�\"��|ڈ>������������7?�R�C�#[�J�ȃ������\0��LP����RB=�<�� �R��N�i����C���*v:�F��(�����w���v(��|��\'I>i�ֱ�m���}��iͶ#y߱r�й�̞�J6�+K����=د���$����H�H�U�k�c�ǚʭ���4\0\0��Ex^u����ZzS;��a��>^�p.[�J��@nƝL|00�q�\\\\��X��I�H_����nA��ߦd���%���0gkwe܂馊�2\'�\0��Ҿg#��ۉ�+;��R$�L��b�]l�]kw\0їY��sz�c1��*���%���C\\8M;�|´ҿ��e5�J�[��Tb��|���FHHē`\0$�{Xe�k\'�{eqc���S�ݗV��]�C�q\r..\0\r���}�Ey�%������Y���o�T�\'�\\�m�{s?�k�-�J�G\Z{g�*��i�/���.��OHw�Q�VXƈgx���h���U�W��X�+��X|�������d^��*V����+#qk��������:�*N�|sX3���Q�^�\rF�Fe�u��� ����Nyd.��h�f�5o�ko��6�ڼ���>%cs�D�&\Z�ֆ�s|��B��k$��\\/�3? ��4�3\\���}�xJ;��܎������ߞ�>@w��y��ښ&<��9���gqkC�%|��E��M�%�g�jc����Ƈ;�_=���Okj�H�ѧm��,���?x�y�A4J�֨\Z�]j	��֨:�]j�n�SZ��U5�&kU��SZ�^�F���,6����=�%j䔸�w�.����5dSm���V��3���-�ۯ�ְOS~�ro���|�1�N����Qd���X�V��Y��uī	BU���	BU�@TUYh���3�p��WA�����ቹ>i�����<\n�f���F�f��cG�X\0�?6\Z/Kn��o��\'��+)\"(�\" \"\"\" \"\"����)���OV(�!밸���5rnt�`��=)�&�ی��}���=[\\���y\r�$����q��a�(��\Z	:�]j��SX�f�5��5�&kU5�&�5��z�*�Y�Ď�7����+m.s\07��Z��>Oi���\"-p����#0]�u�A����\\q4]��w<]�2ֳ\Zv}��t��49�7��Ōb2\\���.�E� ��Wh��d�COFF�X\\X��f�[&\r���I��K����\"m�X���u1ͧ�3�	�Xn~eH�7�8o*���;�:ʂ���c��j��YSQ�����Tw9T�n���崭%R�&�{�l�G?��J\n��\" -�\0#)1�^FM����Z��@�SCGNW���s�\r��X�����t�t����Xp뇸{��(���(�o�l�v4\0<���@DDD@DDDABm��C��ӫꪁ��q⏢�v��w�xyA�z6`�i*?�c�ьn,����|�\n���t��*bV].��J�TD]Tb��z,F��_7�H�su2(n��&��8i��6;��S�Rb����)\"���4�ع�?���Q�^�U\\�荞k)N�d�$Z\r�O9�2xd�eLQG��>�6����������M��\0Oo_/��<�i�6\0��f��ay�f~Y-�ծB&����Ϗ}�Wh:��Ǹ��q{y9�Z��?骖�}��9ĭ�9316�G��M���G�87�o�<�8c懔E��а���7�_̨/��$�h��>�M-�ij�d�È�ٱcXKtN�)���}��>��e���C�F�V���i�Z�<���6#���;��ќ��a����搁�Gq�̝�H�y��\"(�\" \"\"\" \"\"\"�r�M6�����\"���~�7�ţ��Ӕ��=��ҳWխ}�!���J�Mm�yVy��>G�O{��8�s�n�{I*�b7:j ,%�hXV�J&h��dn*M9f݇aܷg�w��J�c�\n\"�8���#j��=㸬������$����j�۬͊�-��������	�\r��`|U��=���㌖��R�`�z?C1���=�1<�loy�R)`��]m�m��+f4�ck��\\��7�n�K��3֟\r7i�v��G�W�>�6#jz|��.�v�d<Z����^���c:�Xo��-tܦ��a8\r�3 }����o�pv��7�7�Տ�^�ͮ���\0ϣ��\"�&bg���=�++�}����i��I���S�h�ĸ���f�\'�صsU��z��H�����퉩\r�Cz���0�f׸w��;�Hx��3^��V�,=5O*浵����h�t��9����Z�%�Z�c�{�q�U��z��\\�mq\r�Q^ϒ�Dt�\0\r��\0�\0�};�(DC\0��me��3=��q�m�P�������qm�o��?5�U��Qq_���T�5�i��m�]�4��G��� k\\�5����\0.I_!�N\Z�ʪ�{I!���ь}�;�P��U@م���f@�Ǵ-e�����u���|��ͽ�&�B�K\r;3/�Py�i��T�n[Ht�O���c�W6�Xe�b�ߧݾ<�dB�0_�����[.�9��|-��-|zF-�|EW�;��|.\'氶ky2��\0��D�yfŵ/h�,�?��.V��J=�k������NzN��=��U:^6Ӌ�ٟ��m��Nޭm�r�Q����^E�<M�i��g��Y���-]^���Or�땄c�u�߿�����;ul���d����Zɴ����X�75tx�;o^�98�����S\\7��c,V����#��6�Jk�o��Tt*5�VU8mϷ�q�8��$k�詅U��3+��vX�²>�ُ	n��X�F�u\ZQbG��4�~�|�ד�rq��\"+�w��-�%�͈�`�</��/�^��4�a.�&Ga\0m#}���.a.�����3Ց��\ro�˜��[��V���;����썡��^sy�qq[�@DDD@DDDA�����h�@�i*��D{e?w���矔>���cM���l.��t~\0�\"���+bUl�XF@����b�����U���{j#���V���t\'�*Z{TI>�����c{�~ FL`q��Q��L�8Fֵ�z.s�\\\0ps�`��n��x+\Z\0h�;n�s7�uk@��sٹ]#q��\rO �z�0DD��y�d�̱N�,1v_%��Fs00����J1�3���Yk�)�kM�\0&y+���T�a�N�9b\'y�ٱx�[����Cqb՗�;�ð���������o�ӏ�֛N�=>�����DF��h�L��IU#�@k�\06���X�`.�խ�L�T!l�,$FZ\0�ps�P��ظ7\"non̖U���.KRb\"�9*���266��o\"�Ŷ�+�����cL)5�j�]��q��l�\\<V��\\����liR�n��zsny�7�����a��FY��!��8!s�rZ\n�\'F�\"x�����pl�����#%��9�\Z�(#���D�l��)N7<���#.�2\\��\'2I\'2Nd������\Z��ƶ�ctjhA,V�Ltk�A]�QAX�\\CF�CGi6]w��%����l L��~���5��69�N��۰~g�w�e4�u5���[:�,�n����#��\"�\"\"\" \"\"\" -.�𡡪��c-����OP+~�o�E闗�P6�\rS����^~!�s�$�I$�Nd��%Q.�2�P���o����� ��9퍦�cp�p�<NA`D$��m�4;vX�lF�\\�\\�tD��WD#a>%dmK��w�+ �>G���\r$��W�:A`���7;^��9oY����S�~7I&{p4񓅗����H���O\Z^_�?�^4����~k\\��#g�d���F����բ��6������B?����T���i�5��>P�����fv��12�&�b�/2��zn.�a ��U�:j9�}R^,\ri8C]rq�73ꏇ��6�vDS#}��y&�I���ч�ㅖu��!{�����%��|�mTDUkI \r��;N����`{�����~X����\Z3Ѩ頵�cp�7��>��\\7��MYEMk��H�h�o�G��J�@��(����������,�O�p:B�K-d�9�&�^69��6\"�ztA�j��~x*�x]�����<�ՏU�;�����+��O4����j�TsuZʹR�7w�._P�P� �*��s�ւ���x�L_.��Wp�\r?�}�b�Q��h=�4w;����;F�}�w�<�_\\Tr^���4.퉟E����G;���\\��B�}M��3�u��n��/�g�G;c$od�?��YQ��)Ͳ���gɡή��k\\;ZB�u�g�h��ud{�w����ՏV�\'{���� �J��TsO^?w���ƭUO6���C~��~�?$����UK=j)�ce�\0i[6���2V{���44(��E7s��Z�\'+���,p�hk�L:5��<\\<�����c��PFE!�2�ݻ�_�btX���X�<���3x7�{�|�������R�\\�d^��7`u�I�$�����5dgf�Y������ӗ��\\L�����\\8�V�7�[�P�*�ʊ� ⫈(*����������������������)d�5c����;B\"u\Z���1�ލ��-d�������~\"6���ʈ�_Q͎�w�K}�e,VZڞhh��f�Lw�iDM�uG31}��z6ÅA�\0���z5,p�D�����z�k�3\rlg#b\'q��p�~+\'���d�ʌ8�9�{]�nߗD��0��w�K���z\"�C)ܲ�2��#ZU�DUT@DD��','����\0JFIF\0\0\0\0\0\0��\0�\0	( \Z%!1!%)+...383,7(-.+\n\n\n\r\Z\Z-% %--++5-/./+7.--1-+---.-7-+-----+-/5-+-.---+02++---7��\0\0�+\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0F\0\0\0\0\0!1AQ\"aq���2Rr���B����Cb���#D��$3cs����\0\Z\0\0\0\0\0\0\0\0\0\0\0\0��\0-\0\0\0\0\0\0\0\0!1AQq\"Ba��2�������\0\0\0?\0�(���������MCcc�y\rk\Z^��rPeEΫ9�!�EJ���%�OYhc��?�ڃ���#��B���K�Eo�e0�W�\n3�����=�Oꐠ�H��ܸ�\'eVv(?S\n��W���^����A�Qp	yGXv���+��HP���mMA�c��}�|�H��\\�/;^��=��*�i̴xLK�i��O{d`�*�����[L?��1/�p��7y(�F�F��� 8�������g�]s�y(2���u���&��^�Iq̓rU}=/<Z!�\'{�؟�����~�C�\"��|ڈ>������������7?�R�C�#[�J�ȃ������\0��LP����RB=�<�� �R��N�i����C���*v:�F��(�����w���v(��|��\'I>i�ֱ�m���}��iͶ#y߱r�й�̞�J6�+K����=د���$����H�H�U�k�c�ǚʭ���4\0\0��Ex^u����ZzS;��a��>^�p.[�J��@nƝL|00�q�\\\\��X��I�H_����nA��ߦd���%���0gkwe܂馊�2\'�\0��Ҿg#��ۉ�+;��R$�L��b�]l�]kw\0їY��sz�c1��*���%���C\\8M;�|´ҿ��e5�J�[��Tb��|���FHHē`\0$�{Xe�k\'�{eqc���S�ݗV��]�C�q\r..\0\r���}�Ey�%������Y���o�T�\'�\\�m�{s?�k�-�J�G\Z{g�*��i�/���.��OHw�Q�VXƈgx���h���U�W��X�+��X|�������d^��*V����+#qk��������:�*N�|sX3���Q�^�\rF�Fe�u��� ����Nyd.��h�f�5o�ko��6�ڼ���>%cs�D�&\Z�ֆ�s|��B��k$��\\/�3? ��4�3\\���}�xJ;��܎������ߞ�>@w��y��ښ&<��9���gqkC�%|��E��M�%�g�jc����Ƈ;�_=���Okj�H�ѧm��,���?x�y�A4J�֨\Z�]j	��֨:�]j�n�SZ��U5�&kU��SZ�^�F���,6����=�%j䔸�w�.����5dSm���V��3���-�ۯ�ְOS~�ro���|�1�N����Qd���X�V��Y��uī	BU���	BU�@TUYh���3�p��WA�����ቹ>i�����<\n�f���F�f��cG�X\0�?6\Z/Kn��o��\'��+)\"(�\" \"\"\" \"\"����)���OV(�!밸���5rnt�`��=)�&�ی��}���=[\\���y\r�$����q��a�(��\Z	:�]j��SX�f�5��5�&kU5�&�5��z�*�Y�Ď�7����+m.s\07��Z��>Oi���\"-p����#0]�u�A����\\q4]��w<]�2ֳ\Zv}��t��49�7��Ōb2\\���.�E� ��Wh��d�COFF�X\\X��f�[&\r���I��K����\"m�X���u1ͧ�3�	�Xn~eH�7�8o*���;�:ʂ���c��j��YSQ�����Tw9T�n���崭%R�&�{�l�G?��J\n��\" -�\0#)1�^FM����Z��@�SCGNW���s�\r��X�����t�t����Xp뇸{��(���(�o�l�v4\0<���@DDD@DDDABm��C��ӫꪁ��q⏢�v��w�xyA�z6`�i*?�c�ьn,����|�\n���t��*bV].��J�TD]Tb��z,F��_7�H�su2(n��&��8i��6;��S�Rb����)\"���4�ع�?���Q�^�U\\�荞k)N�d�$Z\r�O9�2xd�eLQG��>�6����������M��\0Oo_/��<�i�6\0��f��ay�f~Y-�ծB&����Ϗ}�Wh:��Ǹ��q{y9�Z��?骖�}��9ĭ�9316�G��M���G�87�o�<�8c懔E��а���7�_̨/��$�h��>�M-�ij�d�È�ٱcXKtN�)���}��>��e���C�F�V���i�Z�<���6#���;��ќ��a����搁�Gq�̝�H�y��\"(�\" \"\"\" \"\"\"�r�M6�����\"���~�7�ţ��Ӕ��=��ҳWխ}�!���J�Mm�yVy��>G�O{��8�s�n�{I*�b7:j ,%�hXV�J&h��dn*M9f݇aܷg�w��J�c�\n\"�8���#j��=㸬������$����j�۬͊�-��������	�\r��`|U��=���㌖��R�`�z?C1���=�1<�loy�R)`��]m�m��+f4�ck��\\��7�n�K��3֟\r7i�v��G�W�>�6#jz|��.�v�d<Z����^���c:�Xo��-tܦ��a8\r�3 }����o�pv��7�7�Տ�^�ͮ���\0ϣ��\"�&bg���=�++�}����i��I���S�h�ĸ���f�\'�صsU��z��H�����퉩\r�Cz���0�f׸w��;�Hx��3^��V�,=5O*浵����h�t��9����Z�%�Z�c�{�q�U��z��\\�mq\r�Q^ϒ�Dt�\0\r��\0�\0�};�(DC\0��me��3=��q�m�P�������qm�o��?5�U��Qq_���T�5�i��m�]�4��G��� k\\�5����\0.I_!�N\Z�ʪ�{I!���ь}�;�P��U@م���f@�Ǵ-e�����u���|��ͽ�&�B�K\r;3/�Py�i��T�n[Ht�O���c�W6�Xe�b�ߧݾ<�dB�0_�����[.�9��|-��-|zF-�|EW�;��|.\'氶ky2��\0��D�yfŵ/h�,�?��.V��J=�k������NzN��=��U:^6Ӌ�ٟ��m��Nޭm�r�Q����^E�<M�i��g��Y���-]^���Or�땄c�u�߿�����;ul���d����Zɴ����X�75tx�;o^�98�����S\\7��c,V����#��6�Jk�o��Tt*5�VU8mϷ�q�8��$k�詅U��3+��vX�²>�ُ	n��X�F�u\ZQbG��4�~�|�ד�rq��\"+�w��-�%�͈�`�</��/�^��4�a.�&Ga\0m#}���.a.�����3Ց��\ro�˜��[��V���;����썡��^sy�qq[�@DDD@DDDA�����h�@�i*��D{e?w���矔>���cM���l.��t~\0�\"���+bUl�XF@����b�����U���{j#���V���t\'�*Z{TI>�����c{�~ FL`q��Q��L�8Fֵ�z.s�\\\0ps�`��n��x+\Z\0h�;n�s7�uk@��sٹ]#q��\rO �z�0DD��y�d�̱N�,1v_%��Fs00����J1�3���Yk�)�kM�\0&y+���T�a�N�9b\'y�ٱx�[����Cqb՗�;�ð���������o�ӏ�֛N�=>�����DF��h�L��IU#�@k�\06���X�`.�խ�L�T!l�,$FZ\0�ps�P��ظ7\"non̖U���.KRb\"�9*���266��o\"�Ŷ�+�����cL)5�j�]��q��l�\\<V��\\����liR�n��zsny�7�����a��FY��!��8!s�rZ\n�\'F�\"x�����pl�����#%��9�\Z�(#���D�l��)N7<���#.�2\\��\'2I\'2Nd������\Z��ƶ�ctjhA,V�Ltk�A]�QAX�\\CF�CGi6]w��%����l L��~���5��69�N��۰~g�w�e4�u5���[:�,�n����#��\"�\"\"\" \"\"\" -.�𡡪��c-����OP+~�o�E闗�P6�\rS����^~!�s�$�I$�Nd��%Q.�2�P���o����� ��9퍦�cp�p�<NA`D$��m�4;vX�lF�\\�\\�tD��WD#a>%dmK��w�+ �>G���\r$��W�:A`���7;^��9oY����S�~7I&{p4񓅗����H���O\Z^_�?�^4����~k\\��#g�d���F����բ��6������B?����T���i�5��>P�����fv��12�&�b�/2��zn.�a ��U�:j9�}R^,\ri8C]rq�73ꏇ��6�vDS#}��y&�I���ч�ㅖu��!{�����%��|�mTDUkI \r��;N����`{�����~X����\Z3Ѩ頵�cp�7��>��\\7��MYEMk��H�h�o�G��J�@��(����������,�O�p:B�K-d�9�&�^69��6\"�ztA�j��~x*�x]�����<�ՏU�;�����+��O4����j�TsuZʹR�7w�._P�P� �*��s�ւ���x�L_.��Wp�\r?�}�b�Q��h=�4w;����;F�}�w�<�_\\Tr^���4.퉟E����G;���\\��B�}M��3�u��n��/�g�G;c$od�?��YQ��)Ͳ���gɡή��k\\;ZB�u�g�h��ud{�w����ՏV�\'{���� �J��TsO^?w���ƭUO6���C~��~�?$����UK=j)�ce�\0i[6���2V{���44(��E7s��Z�\'+���,p�hk�L:5��<\\<�����c��PFE!�2�ݻ�_�btX���X�<���3x7�{�|�������R�\\�d^��7`u�I�$�����5dgf�Y������ӗ��\\L�����\\8�V�7�[�P�*�ʊ� ⫈(*����������������������)d�5c����;B\"u\Z���1�ލ��-d�������~\"6���ʈ�_Q͎�w�K}�e,VZڞhh��f�Lw�iDM�uG31}��z6ÅA�\0���z5,p�D�����z�k�3\rlg#b\'q��p�~+\'���d�ʌ8�9�{]�nߗD��0��w�K���z\"�C)ܲ�2��#ZU�DUT@DD��',500,0.3,'1 year warranty is applicable',7,'approved',0,0,''),(18,2,'Surakha E Commerce Pvt Ltd','ELECTRONICS','Mobile','Naughty Ninos Printed Boy\'s Polo Neck T-Shirt','Pantaloons',1700,5,105,100,100,1000,89.5,'����\0JFIF\0\0\0\0\0\0��\0�\0	( \Z%!1!%)+...383,7(-.+\n\n\n\r\Z\Z-% %--++5-/./+7.--1-+---.-7-+-----+-/5-+-.---+02++---7��\0\0�+\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0F\0\0\0\0\0!1AQ\"aq���2Rr���B����Cb���#D��$3cs����\0\Z\0\0\0\0\0\0\0\0\0\0\0\0��\0-\0\0\0\0\0\0\0\0!1AQq\"Ba��2�������\0\0\0?\0�(���������MCcc�y\rk\Z^��rPeEΫ9�!�EJ���%�OYhc��?�ڃ���#��B���K�Eo�e0�W�\n3�����=�Oꐠ�H��ܸ�\'eVv(?S\n��W���^����A�Qp	yGXv���+��HP���mMA�c��}�|�H��\\�/;^��=��*�i̴xLK�i��O{d`�*�����[L?��1/�p��7y(�F�F��� 8�������g�]s�y(2���u���&��^�Iq̓rU}=/<Z!�\'{�؟�����~�C�\"��|ڈ>������������7?�R�C�#[�J�ȃ������\0��LP����RB=�<�� �R��N�i����C���*v:�F��(�����w���v(��|��\'I>i�ֱ�m���}��iͶ#y߱r�й�̞�J6�+K����=د���$����H�H�U�k�c�ǚʭ���4\0\0��Ex^u����ZzS;��a��>^�p.[�J��@nƝL|00�q�\\\\��X��I�H_����nA��ߦd���%���0gkwe܂馊�2\'�\0��Ҿg#��ۉ�+;��R$�L��b�]l�]kw\0їY��sz�c1��*���%���C\\8M;�|´ҿ��e5�J�[��Tb��|���FHHē`\0$�{Xe�k\'�{eqc���S�ݗV��]�C�q\r..\0\r���}�Ey�%������Y���o�T�\'�\\�m�{s?�k�-�J�G\Z{g�*��i�/���.��OHw�Q�VXƈgx���h���U�W��X�+��X|�������d^��*V����+#qk��������:�*N�|sX3���Q�^�\rF�Fe�u��� ����Nyd.��h�f�5o�ko��6�ڼ���>%cs�D�&\Z�ֆ�s|��B��k$��\\/�3? ��4�3\\���}�xJ;��܎������ߞ�>@w��y��ښ&<��9���gqkC�%|��E��M�%�g�jc����Ƈ;�_=���Okj�H�ѧm��,���?x�y�A4J�֨\Z�]j	��֨:�]j�n�SZ��U5�&kU��SZ�^�F���,6����=�%j䔸�w�.����5dSm���V��3���-�ۯ�ְOS~�ro���|�1�N����Qd���X�V��Y��uī	BU���	BU�@TUYh���3�p��WA�����ቹ>i�����<\n�f���F�f��cG�X\0�?6\Z/Kn��o��\'��+)\"(�\" \"\"\" \"\"����)���OV(�!밸���5rnt�`��=)�&�ی��}���=[\\���y\r�$����q��a�(��\Z	:�]j��SX�f�5��5�&kU5�&�5��z�*�Y�Ď�7����+m.s\07��Z��>Oi���\"-p����#0]�u�A����\\q4]��w<]�2ֳ\Zv}��t��49�7��Ōb2\\���.�E� ��Wh��d�COFF�X\\X��f�[&\r���I��K����\"m�X���u1ͧ�3�	�Xn~eH�7�8o*���;�:ʂ���c��j��YSQ�����Tw9T�n���崭%R�&�{�l�G?��J\n��\" -�\0#)1�^FM����Z��@�SCGNW���s�\r��X�����t�t����Xp뇸{��(���(�o�l�v4\0<���@DDD@DDDABm��C��ӫꪁ��q⏢�v��w�xyA�z6`�i*?�c�ьn,����|�\n���t��*bV].��J�TD]Tb��z,F��_7�H�su2(n��&��8i��6;��S�Rb����)\"���4�ع�?���Q�^�U\\�荞k)N�d�$Z\r�O9�2xd�eLQG��>�6����������M��\0Oo_/��<�i�6\0��f��ay�f~Y-�ծB&����Ϗ}�Wh:��Ǹ��q{y9�Z��?骖�}��9ĭ�9316�G��M���G�87�o�<�8c懔E��а���7�_̨/��$�h��>�M-�ij�d�È�ٱcXKtN�)���}��>��e���C�F�V���i�Z�<���6#���;��ќ��a����搁�Gq�̝�H�y��\"(�\" \"\"\" \"\"\"�r�M6�����\"���~�7�ţ��Ӕ��=��ҳWխ}�!���J�Mm�yVy��>G�O{��8�s�n�{I*�b7:j ,%�hXV�J&h��dn*M9f݇aܷg�w��J�c�\n\"�8���#j��=㸬������$����j�۬͊�-��������	�\r��`|U��=���㌖��R�`�z?C1���=�1<�loy�R)`��]m�m��+f4�ck��\\��7�n�K��3֟\r7i�v��G�W�>�6#jz|��.�v�d<Z����^���c:�Xo��-tܦ��a8\r�3 }����o�pv��7�7�Տ�^�ͮ���\0ϣ��\"�&bg���=�++�}����i��I���S�h�ĸ���f�\'�صsU��z��H�����퉩\r�Cz���0�f׸w��;�Hx��3^��V�,=5O*浵����h�t��9����Z�%�Z�c�{�q�U��z��\\�mq\r�Q^ϒ�Dt�\0\r��\0�\0�};�(DC\0��me��3=��q�m�P�������qm�o��?5�U��Qq_���T�5�i��m�]�4��G��� k\\�5����\0.I_!�N\Z�ʪ�{I!���ь}�;�P��U@م���f@�Ǵ-e�����u���|��ͽ�&�B�K\r;3/�Py�i��T�n[Ht�O���c�W6�Xe�b�ߧݾ<�dB�0_�����[.�9��|-��-|zF-�|EW�;��|.\'氶ky2��\0��D�yfŵ/h�,�?��.V��J=�k������NzN��=��U:^6Ӌ�ٟ��m��Nޭm�r�Q����^E�<M�i��g��Y���-]^���Or�땄c�u�߿�����;ul���d����Zɴ����X�75tx�;o^�98�����S\\7��c,V����#��6�Jk�o��Tt*5�VU8mϷ�q�8��$k�詅U��3+��vX�²>�ُ	n��X�F�u\ZQbG��4�~�|�ד�rq��\"+�w��-�%�͈�`�</��/�^��4�a.�&Ga\0m#}���.a.�����3Ց��\ro�˜��[��V���;����썡��^sy�qq[�@DDD@DDDA�����h�@�i*��D{e?w���矔>���cM���l.��t~\0�\"���+bUl�XF@����b�����U���{j#���V���t\'�*Z{TI>�����c{�~ FL`q��Q��L�8Fֵ�z.s�\\\0ps�`��n��x+\Z\0h�;n�s7�uk@��sٹ]#q��\rO �z�0DD��y�d�̱N�,1v_%��Fs00����J1�3���Yk�)�kM�\0&y+���T�a�N�9b\'y�ٱx�[����Cqb՗�;�ð���������o�ӏ�֛N�=>�����DF��h�L��IU#�@k�\06���X�`.�խ�L�T!l�,$FZ\0�ps�P��ظ7\"non̖U���.KRb\"�9*���266��o\"�Ŷ�+�����cL)5�j�]��q��l�\\<V��\\����liR�n��zsny�7�����a��FY��!��8!s�rZ\n�\'F�\"x�����pl�����#%��9�\Z�(#���D�l��)N7<���#.�2\\��\'2I\'2Nd������\Z��ƶ�ctjhA,V�Ltk�A]�QAX�\\CF�CGi6]w��%����l L��~���5��69�N��۰~g�w�e4�u5���[:�,�n����#��\"�\"\"\" \"\"\" -.�𡡪��c-����OP+~�o�E闗�P6�\rS����^~!�s�$�I$�Nd��%Q.�2�P���o����� ��9퍦�cp�p�<NA`D$��m�4;vX�lF�\\�\\�tD��WD#a>%dmK��w�+ �>G���\r$��W�:A`���7;^��9oY����S�~7I&{p4񓅗����H���O\Z^_�?�^4����~k\\��#g�d���F����բ��6������B?����T���i�5��>P�����fv��12�&�b�/2��zn.�a ��U�:j9�}R^,\ri8C]rq�73ꏇ��6�vDS#}��y&�I���ч�ㅖu��!{�����%��|�mTDUkI \r��;N����`{�����~X����\Z3Ѩ頵�cp�7��>��\\7��MYEMk��H�h�o�G��J�@��(����������,�O�p:B�K-d�9�&�^69��6\"�ztA�j��~x*�x]�����<�ՏU�;�����+��O4����j�TsuZʹR�7w�._P�P� �*��s�ւ���x�L_.��Wp�\r?�}�b�Q��h=�4w;����;F�}�w�<�_\\Tr^���4.퉟E����G;���\\��B�}M��3�u��n��/�g�G;c$od�?��YQ��)Ͳ���gɡή��k\\;ZB�u�g�h��ud{�w����ՏV�\'{���� �J��TsO^?w���ƭUO6���C~��~�?$����UK=j)�ce�\0i[6���2V{���44(��E7s��Z�\'+���,p�hk�L:5��<\\<�����c��PFE!�2�ݻ�_�btX���X�<���3x7�{�|�������R�\\�d^��7`u�I�$�����5dgf�Y������ӗ��\\L�����\\8�V�7�[�P�*�ʊ� ⫈(*����������������������)d�5c����;B\"u\Z���1�ލ��-d�������~\"6���ʈ�_Q͎�w�K}�e,VZڞhh��f�Lw�iDM�uG31}��z6ÅA�\0���z5,p�D�����z�k�3\rlg#b\'q��p�~+\'���d�ʌ8�9�{]�nߗD��0��w�K���z\"�C)ܲ�2��#ZU�DUT@DD��','����\0JFIF\0\0\0\0\0\0��\0�\0	( \Z%!1!%)+...383,7(-.+\n\n\n\r\Z\Z-% %--++5-/./+7.--1-+---.-7-+-----+-/5-+-.---+02++---7��\0\0�+\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0F\0\0\0\0\0!1AQ\"aq���2Rr���B����Cb���#D��$3cs����\0\Z\0\0\0\0\0\0\0\0\0\0\0\0��\0-\0\0\0\0\0\0\0\0!1AQq\"Ba��2�������\0\0\0?\0�(���������MCcc�y\rk\Z^��rPeEΫ9�!�EJ���%�OYhc��?�ڃ���#��B���K�Eo�e0�W�\n3�����=�Oꐠ�H��ܸ�\'eVv(?S\n��W���^����A�Qp	yGXv���+��HP���mMA�c��}�|�H��\\�/;^��=��*�i̴xLK�i��O{d`�*�����[L?��1/�p��7y(�F�F��� 8�������g�]s�y(2���u���&��^�Iq̓rU}=/<Z!�\'{�؟�����~�C�\"��|ڈ>������������7?�R�C�#[�J�ȃ������\0��LP����RB=�<�� �R��N�i����C���*v:�F��(�����w���v(��|��\'I>i�ֱ�m���}��iͶ#y߱r�й�̞�J6�+K����=د���$����H�H�U�k�c�ǚʭ���4\0\0��Ex^u����ZzS;��a��>^�p.[�J��@nƝL|00�q�\\\\��X��I�H_����nA��ߦd���%���0gkwe܂馊�2\'�\0��Ҿg#��ۉ�+;��R$�L��b�]l�]kw\0їY��sz�c1��*���%���C\\8M;�|´ҿ��e5�J�[��Tb��|���FHHē`\0$�{Xe�k\'�{eqc���S�ݗV��]�C�q\r..\0\r���}�Ey�%������Y���o�T�\'�\\�m�{s?�k�-�J�G\Z{g�*��i�/���.��OHw�Q�VXƈgx���h���U�W��X�+��X|�������d^��*V����+#qk��������:�*N�|sX3���Q�^�\rF�Fe�u��� ����Nyd.��h�f�5o�ko��6�ڼ���>%cs�D�&\Z�ֆ�s|��B��k$��\\/�3? ��4�3\\���}�xJ;��܎������ߞ�>@w��y��ښ&<��9���gqkC�%|��E��M�%�g�jc����Ƈ;�_=���Okj�H�ѧm��,���?x�y�A4J�֨\Z�]j	��֨:�]j�n�SZ��U5�&kU��SZ�^�F���,6����=�%j䔸�w�.����5dSm���V��3���-�ۯ�ְOS~�ro���|�1�N����Qd���X�V��Y��uī	BU���	BU�@TUYh���3�p��WA�����ቹ>i�����<\n�f���F�f��cG�X\0�?6\Z/Kn��o��\'��+)\"(�\" \"\"\" \"\"����)���OV(�!밸���5rnt�`��=)�&�ی��}���=[\\���y\r�$����q��a�(��\Z	:�]j��SX�f�5��5�&kU5�&�5��z�*�Y�Ď�7����+m.s\07��Z��>Oi���\"-p����#0]�u�A����\\q4]��w<]�2ֳ\Zv}��t��49�7��Ōb2\\���.�E� ��Wh��d�COFF�X\\X��f�[&\r���I��K����\"m�X���u1ͧ�3�	�Xn~eH�7�8o*���;�:ʂ���c��j��YSQ�����Tw9T�n���崭%R�&�{�l�G?��J\n��\" -�\0#)1�^FM����Z��@�SCGNW���s�\r��X�����t�t����Xp뇸{��(���(�o�l�v4\0<���@DDD@DDDABm��C��ӫꪁ��q⏢�v��w�xyA�z6`�i*?�c�ьn,����|�\n���t��*bV].��J�TD]Tb��z,F��_7�H�su2(n��&��8i��6;��S�Rb����)\"���4�ع�?���Q�^�U\\�荞k)N�d�$Z\r�O9�2xd�eLQG��>�6����������M��\0Oo_/��<�i�6\0��f��ay�f~Y-�ծB&����Ϗ}�Wh:��Ǹ��q{y9�Z��?骖�}��9ĭ�9316�G��M���G�87�o�<�8c懔E��а���7�_̨/��$�h��>�M-�ij�d�È�ٱcXKtN�)���}��>��e���C�F�V���i�Z�<���6#���;��ќ��a����搁�Gq�̝�H�y��\"(�\" \"\"\" \"\"\"�r�M6�����\"���~�7�ţ��Ӕ��=��ҳWխ}�!���J�Mm�yVy��>G�O{��8�s�n�{I*�b7:j ,%�hXV�J&h��dn*M9f݇aܷg�w��J�c�\n\"�8���#j��=㸬������$����j�۬͊�-��������	�\r��`|U��=���㌖��R�`�z?C1���=�1<�loy�R)`��]m�m��+f4�ck��\\��7�n�K��3֟\r7i�v��G�W�>�6#jz|��.�v�d<Z����^���c:�Xo��-tܦ��a8\r�3 }����o�pv��7�7�Տ�^�ͮ���\0ϣ��\"�&bg���=�++�}����i��I���S�h�ĸ���f�\'�صsU��z��H�����퉩\r�Cz���0�f׸w��;�Hx��3^��V�,=5O*浵����h�t��9����Z�%�Z�c�{�q�U��z��\\�mq\r�Q^ϒ�Dt�\0\r��\0�\0�};�(DC\0��me��3=��q�m�P�������qm�o��?5�U��Qq_���T�5�i��m�]�4��G��� k\\�5����\0.I_!�N\Z�ʪ�{I!���ь}�;�P��U@م���f@�Ǵ-e�����u���|��ͽ�&�B�K\r;3/�Py�i��T�n[Ht�O���c�W6�Xe�b�ߧݾ<�dB�0_�����[.�9��|-��-|zF-�|EW�;��|.\'氶ky2��\0��D�yfŵ/h�,�?��.V��J=�k������NzN��=��U:^6Ӌ�ٟ��m��Nޭm�r�Q����^E�<M�i��g��Y���-]^���Or�땄c�u�߿�����;ul���d����Zɴ����X�75tx�;o^�98�����S\\7��c,V����#��6�Jk�o��Tt*5�VU8mϷ�q�8��$k�詅U��3+��vX�²>�ُ	n��X�F�u\ZQbG��4�~�|�ד�rq��\"+�w��-�%�͈�`�</��/�^��4�a.�&Ga\0m#}���.a.�����3Ց��\ro�˜��[��V���;����썡��^sy�qq[�@DDD@DDDA�����h�@�i*��D{e?w���矔>���cM���l.��t~\0�\"���+bUl�XF@����b�����U���{j#���V���t\'�*Z{TI>�����c{�~ FL`q��Q��L�8Fֵ�z.s�\\\0ps�`��n��x+\Z\0h�;n�s7�uk@��sٹ]#q��\rO �z�0DD��y�d�̱N�,1v_%��Fs00����J1�3���Yk�)�kM�\0&y+���T�a�N�9b\'y�ٱx�[����Cqb՗�;�ð���������o�ӏ�֛N�=>�����DF��h�L��IU#�@k�\06���X�`.�խ�L�T!l�,$FZ\0�ps�P��ظ7\"non̖U���.KRb\"�9*���266��o\"�Ŷ�+�����cL)5�j�]��q��l�\\<V��\\����liR�n��zsny�7�����a��FY��!��8!s�rZ\n�\'F�\"x�����pl�����#%��9�\Z�(#���D�l��)N7<���#.�2\\��\'2I\'2Nd������\Z��ƶ�ctjhA,V�Ltk�A]�QAX�\\CF�CGi6]w��%����l L��~���5��69�N��۰~g�w�e4�u5���[:�,�n����#��\"�\"\"\" \"\"\" -.�𡡪��c-����OP+~�o�E闗�P6�\rS����^~!�s�$�I$�Nd��%Q.�2�P���o����� ��9퍦�cp�p�<NA`D$��m�4;vX�lF�\\�\\�tD��WD#a>%dmK��w�+ �>G���\r$��W�:A`���7;^��9oY����S�~7I&{p4񓅗����H���O\Z^_�?�^4����~k\\��#g�d���F����բ��6������B?����T���i�5��>P�����fv��12�&�b�/2��zn.�a ��U�:j9�}R^,\ri8C]rq�73ꏇ��6�vDS#}��y&�I���ч�ㅖu��!{�����%��|�mTDUkI \r��;N����`{�����~X����\Z3Ѩ頵�cp�7��>��\\7��MYEMk��H�h�o�G��J�@��(����������,�O�p:B�K-d�9�&�^69��6\"�ztA�j��~x*�x]�����<�ՏU�;�����+��O4����j�TsuZʹR�7w�._P�P� �*��s�ւ���x�L_.��Wp�\r?�}�b�Q��h=�4w;����;F�}�w�<�_\\Tr^���4.퉟E����G;���\\��B�}M��3�u��n��/�g�G;c$od�?��YQ��)Ͳ���gɡή��k\\;ZB�u�g�h��ud{�w����ՏV�\'{���� �J��TsO^?w���ƭUO6���C~��~�?$����UK=j)�ce�\0i[6���2V{���44(��E7s��Z�\'+���,p�hk�L:5��<\\<�����c��PFE!�2�ݻ�_�btX���X�<���3x7�{�|�������R�\\�d^��7`u�I�$�����5dgf�Y������ӗ��\\L�����\\8�V�7�[�P�*�ʊ� ⫈(*����������������������)d�5c����;B\"u\Z���1�ލ��-d�������~\"6���ʈ�_Q͎�w�K}�e,VZڞhh��f�Lw�iDM�uG31}��z6ÅA�\0���z5,p�D�����z�k�3\rlg#b\'q��p�~+\'���d�ʌ8�9�{]�nߗD��0��w�K���z\"�C)ܲ�2��#ZU�DUT@DD��','����\0JFIF\0\0\0\0\0\0��\0�\0	( \Z%!1!%)+...383,7(-.+\n\n\n\r\Z\Z-% %--++5-/./+7.--1-+---.-7-+-----+-/5-+-.---+02++---7��\0\0�+\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0F\0\0\0\0\0!1AQ\"aq���2Rr���B����Cb���#D��$3cs����\0\Z\0\0\0\0\0\0\0\0\0\0\0\0��\0-\0\0\0\0\0\0\0\0!1AQq\"Ba��2�������\0\0\0?\0�(���������MCcc�y\rk\Z^��rPeEΫ9�!�EJ���%�OYhc��?�ڃ���#��B���K�Eo�e0�W�\n3�����=�Oꐠ�H��ܸ�\'eVv(?S\n��W���^����A�Qp	yGXv���+��HP���mMA�c��}�|�H��\\�/;^��=��*�i̴xLK�i��O{d`�*�����[L?��1/�p��7y(�F�F��� 8�������g�]s�y(2���u���&��^�Iq̓rU}=/<Z!�\'{�؟�����~�C�\"��|ڈ>������������7?�R�C�#[�J�ȃ������\0��LP����RB=�<�� �R��N�i����C���*v:�F��(�����w���v(��|��\'I>i�ֱ�m���}��iͶ#y߱r�й�̞�J6�+K����=د���$����H�H�U�k�c�ǚʭ���4\0\0��Ex^u����ZzS;��a��>^�p.[�J��@nƝL|00�q�\\\\��X��I�H_����nA��ߦd���%���0gkwe܂馊�2\'�\0��Ҿg#��ۉ�+;��R$�L��b�]l�]kw\0їY��sz�c1��*���%���C\\8M;�|´ҿ��e5�J�[��Tb��|���FHHē`\0$�{Xe�k\'�{eqc���S�ݗV��]�C�q\r..\0\r���}�Ey�%������Y���o�T�\'�\\�m�{s?�k�-�J�G\Z{g�*��i�/���.��OHw�Q�VXƈgx���h���U�W��X�+��X|�������d^��*V����+#qk��������:�*N�|sX3���Q�^�\rF�Fe�u��� ����Nyd.��h�f�5o�ko��6�ڼ���>%cs�D�&\Z�ֆ�s|��B��k$��\\/�3? ��4�3\\���}�xJ;��܎������ߞ�>@w��y��ښ&<��9���gqkC�%|��E��M�%�g�jc����Ƈ;�_=���Okj�H�ѧm��,���?x�y�A4J�֨\Z�]j	��֨:�]j�n�SZ��U5�&kU��SZ�^�F���,6����=�%j䔸�w�.����5dSm���V��3���-�ۯ�ְOS~�ro���|�1�N����Qd���X�V��Y��uī	BU���	BU�@TUYh���3�p��WA�����ቹ>i�����<\n�f���F�f��cG�X\0�?6\Z/Kn��o��\'��+)\"(�\" \"\"\" \"\"����)���OV(�!밸���5rnt�`��=)�&�ی��}���=[\\���y\r�$����q��a�(��\Z	:�]j��SX�f�5��5�&kU5�&�5��z�*�Y�Ď�7����+m.s\07��Z��>Oi���\"-p����#0]�u�A����\\q4]��w<]�2ֳ\Zv}��t��49�7��Ōb2\\���.�E� ��Wh��d�COFF�X\\X��f�[&\r���I��K����\"m�X���u1ͧ�3�	�Xn~eH�7�8o*���;�:ʂ���c��j��YSQ�����Tw9T�n���崭%R�&�{�l�G?��J\n��\" -�\0#)1�^FM����Z��@�SCGNW���s�\r��X�����t�t����Xp뇸{��(���(�o�l�v4\0<���@DDD@DDDABm��C��ӫꪁ��q⏢�v��w�xyA�z6`�i*?�c�ьn,����|�\n���t��*bV].��J�TD]Tb��z,F��_7�H�su2(n��&��8i��6;��S�Rb����)\"���4�ع�?���Q�^�U\\�荞k)N�d�$Z\r�O9�2xd�eLQG��>�6����������M��\0Oo_/��<�i�6\0��f��ay�f~Y-�ծB&����Ϗ}�Wh:��Ǹ��q{y9�Z��?骖�}��9ĭ�9316�G��M���G�87�o�<�8c懔E��а���7�_̨/��$�h��>�M-�ij�d�È�ٱcXKtN�)���}��>��e���C�F�V���i�Z�<���6#���;��ќ��a����搁�Gq�̝�H�y��\"(�\" \"\"\" \"\"\"�r�M6�����\"���~�7�ţ��Ӕ��=��ҳWխ}�!���J�Mm�yVy��>G�O{��8�s�n�{I*�b7:j ,%�hXV�J&h��dn*M9f݇aܷg�w��J�c�\n\"�8���#j��=㸬������$����j�۬͊�-��������	�\r��`|U��=���㌖��R�`�z?C1���=�1<�loy�R)`��]m�m��+f4�ck��\\��7�n�K��3֟\r7i�v��G�W�>�6#jz|��.�v�d<Z����^���c:�Xo��-tܦ��a8\r�3 }����o�pv��7�7�Տ�^�ͮ���\0ϣ��\"�&bg���=�++�}����i��I���S�h�ĸ���f�\'�صsU��z��H�����퉩\r�Cz���0�f׸w��;�Hx��3^��V�,=5O*浵����h�t��9����Z�%�Z�c�{�q�U��z��\\�mq\r�Q^ϒ�Dt�\0\r��\0�\0�};�(DC\0��me��3=��q�m�P�������qm�o��?5�U��Qq_���T�5�i��m�]�4��G��� k\\�5����\0.I_!�N\Z�ʪ�{I!���ь}�;�P��U@م���f@�Ǵ-e�����u���|��ͽ�&�B�K\r;3/�Py�i��T�n[Ht�O���c�W6�Xe�b�ߧݾ<�dB�0_�����[.�9��|-��-|zF-�|EW�;��|.\'氶ky2��\0��D�yfŵ/h�,�?��.V��J=�k������NzN��=��U:^6Ӌ�ٟ��m��Nޭm�r�Q����^E�<M�i��g��Y���-]^���Or�땄c�u�߿�����;ul���d����Zɴ����X�75tx�;o^�98�����S\\7��c,V����#��6�Jk�o��Tt*5�VU8mϷ�q�8��$k�詅U��3+��vX�²>�ُ	n��X�F�u\ZQbG��4�~�|�ד�rq��\"+�w��-�%�͈�`�</��/�^��4�a.�&Ga\0m#}���.a.�����3Ց��\ro�˜��[��V���;����썡��^sy�qq[�@DDD@DDDA�����h�@�i*��D{e?w���矔>���cM���l.��t~\0�\"���+bUl�XF@����b�����U���{j#���V���t\'�*Z{TI>�����c{�~ FL`q��Q��L�8Fֵ�z.s�\\\0ps�`��n��x+\Z\0h�;n�s7�uk@��sٹ]#q��\rO �z�0DD��y�d�̱N�,1v_%��Fs00����J1�3���Yk�)�kM�\0&y+���T�a�N�9b\'y�ٱx�[����Cqb՗�;�ð���������o�ӏ�֛N�=>�����DF��h�L��IU#�@k�\06���X�`.�խ�L�T!l�,$FZ\0�ps�P��ظ7\"non̖U���.KRb\"�9*���266��o\"�Ŷ�+�����cL)5�j�]��q��l�\\<V��\\����liR�n��zsny�7�����a��FY��!��8!s�rZ\n�\'F�\"x�����pl�����#%��9�\Z�(#���D�l��)N7<���#.�2\\��\'2I\'2Nd������\Z��ƶ�ctjhA,V�Ltk�A]�QAX�\\CF�CGi6]w��%����l L��~���5��69�N��۰~g�w�e4�u5���[:�,�n����#��\"�\"\"\" \"\"\" -.�𡡪��c-����OP+~�o�E闗�P6�\rS����^~!�s�$�I$�Nd��%Q.�2�P���o����� ��9퍦�cp�p�<NA`D$��m�4;vX�lF�\\�\\�tD��WD#a>%dmK��w�+ �>G���\r$��W�:A`���7;^��9oY����S�~7I&{p4񓅗����H���O\Z^_�?�^4����~k\\��#g�d���F����բ��6������B?����T���i�5��>P�����fv��12�&�b�/2��zn.�a ��U�:j9�}R^,\ri8C]rq�73ꏇ��6�vDS#}��y&�I���ч�ㅖu��!{�����%��|�mTDUkI \r��;N����`{�����~X����\Z3Ѩ頵�cp�7��>��\\7��MYEMk��H�h�o�G��J�@��(����������,�O�p:B�K-d�9�&�^69��6\"�ztA�j��~x*�x]�����<�ՏU�;�����+��O4����j�TsuZʹR�7w�._P�P� �*��s�ւ���x�L_.��Wp�\r?�}�b�Q��h=�4w;����;F�}�w�<�_\\Tr^���4.퉟E����G;���\\��B�}M��3�u��n��/�g�G;c$od�?��YQ��)Ͳ���gɡή��k\\;ZB�u�g�h��ud{�w����ՏV�\'{���� �J��TsO^?w���ƭUO6���C~��~�?$����UK=j)�ce�\0i[6���2V{���44(��E7s��Z�\'+���,p�hk�L:5��<\\<�����c��PFE!�2�ݻ�_�btX���X�<���3x7�{�|�������R�\\�d^��7`u�I�$�����5dgf�Y������ӗ��\\L�����\\8�V�7�[�P�*�ʊ� ⫈(*����������������������)d�5c����;B\"u\Z���1�ލ��-d�������~\"6���ʈ�_Q͎�w�K}�e,VZڞhh��f�Lw�iDM�uG31}��z6ÅA�\0���z5,p�D�����z�k�3\rlg#b\'q��p�~+\'���d�ʌ8�9�{]�nߗD��0��w�K���z\"�C)ܲ�2��#ZU�DUT@DD��',500,0.3,'1 year warranty is applicable',7,'approved',0,0,''),(19,2,'Surakha E Commerce Pvt Ltd','ELECTRONICS','Mobile','Naughty Ninos Printed Boy\'s Polo Neck T-Shirt','Pantaloons',1700,5,105,100,100,1000,89.5,'����\0JFIF\0\0\0\0\0\0��\0�\0	( \Z%!1!%)+...383,7(-.+\n\n\n\r\Z\Z-% %--++5-/./+7.--1-+---.-7-+-----+-/5-+-.---+02++---7��\0\0�+\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0F\0\0\0\0\0!1AQ\"aq���2Rr���B����Cb���#D��$3cs����\0\Z\0\0\0\0\0\0\0\0\0\0\0\0��\0-\0\0\0\0\0\0\0\0!1AQq\"Ba��2�������\0\0\0?\0�(���������MCcc�y\rk\Z^��rPeEΫ9�!�EJ���%�OYhc��?�ڃ���#��B���K�Eo�e0�W�\n3�����=�Oꐠ�H��ܸ�\'eVv(?S\n��W���^����A�Qp	yGXv���+��HP���mMA�c��}�|�H��\\�/;^��=��*�i̴xLK�i��O{d`�*�����[L?��1/�p��7y(�F�F��� 8�������g�]s�y(2���u���&��^�Iq̓rU}=/<Z!�\'{�؟�����~�C�\"��|ڈ>������������7?�R�C�#[�J�ȃ������\0��LP����RB=�<�� �R��N�i����C���*v:�F��(�����w���v(��|��\'I>i�ֱ�m���}��iͶ#y߱r�й�̞�J6�+K����=د���$����H�H�U�k�c�ǚʭ���4\0\0��Ex^u����ZzS;��a��>^�p.[�J��@nƝL|00�q�\\\\��X��I�H_����nA��ߦd���%���0gkwe܂馊�2\'�\0��Ҿg#��ۉ�+;��R$�L��b�]l�]kw\0їY��sz�c1��*���%���C\\8M;�|´ҿ��e5�J�[��Tb��|���FHHē`\0$�{Xe�k\'�{eqc���S�ݗV��]�C�q\r..\0\r���}�Ey�%������Y���o�T�\'�\\�m�{s?�k�-�J�G\Z{g�*��i�/���.��OHw�Q�VXƈgx���h���U�W��X�+��X|�������d^��*V����+#qk��������:�*N�|sX3���Q�^�\rF�Fe�u��� ����Nyd.��h�f�5o�ko��6�ڼ���>%cs�D�&\Z�ֆ�s|��B��k$��\\/�3? ��4�3\\���}�xJ;��܎������ߞ�>@w��y��ښ&<��9���gqkC�%|��E��M�%�g�jc����Ƈ;�_=���Okj�H�ѧm��,���?x�y�A4J�֨\Z�]j	��֨:�]j�n�SZ��U5�&kU��SZ�^�F���,6����=�%j䔸�w�.����5dSm���V��3���-�ۯ�ְOS~�ro���|�1�N����Qd���X�V��Y��uī	BU���	BU�@TUYh���3�p��WA�����ቹ>i�����<\n�f���F�f��cG�X\0�?6\Z/Kn��o��\'��+)\"(�\" \"\"\" \"\"����)���OV(�!밸���5rnt�`��=)�&�ی��}���=[\\���y\r�$����q��a�(��\Z	:�]j��SX�f�5��5�&kU5�&�5��z�*�Y�Ď�7����+m.s\07��Z��>Oi���\"-p����#0]�u�A����\\q4]��w<]�2ֳ\Zv}��t��49�7��Ōb2\\���.�E� ��Wh��d�COFF�X\\X��f�[&\r���I��K����\"m�X���u1ͧ�3�	�Xn~eH�7�8o*���;�:ʂ���c��j��YSQ�����Tw9T�n���崭%R�&�{�l�G?��J\n��\" -�\0#)1�^FM����Z��@�SCGNW���s�\r��X�����t�t����Xp뇸{��(���(�o�l�v4\0<���@DDD@DDDABm��C��ӫꪁ��q⏢�v��w�xyA�z6`�i*?�c�ьn,����|�\n���t��*bV].��J�TD]Tb��z,F��_7�H�su2(n��&��8i��6;��S�Rb����)\"���4�ع�?���Q�^�U\\�荞k)N�d�$Z\r�O9�2xd�eLQG��>�6����������M��\0Oo_/��<�i�6\0��f��ay�f~Y-�ծB&����Ϗ}�Wh:��Ǹ��q{y9�Z��?骖�}��9ĭ�9316�G��M���G�87�o�<�8c懔E��а���7�_̨/��$�h��>�M-�ij�d�È�ٱcXKtN�)���}��>��e���C�F�V���i�Z�<���6#���;��ќ��a����搁�Gq�̝�H�y��\"(�\" \"\"\" \"\"\"�r�M6�����\"���~�7�ţ��Ӕ��=��ҳWխ}�!���J�Mm�yVy��>G�O{��8�s�n�{I*�b7:j ,%�hXV�J&h��dn*M9f݇aܷg�w��J�c�\n\"�8���#j��=㸬������$����j�۬͊�-��������	�\r��`|U��=���㌖��R�`�z?C1���=�1<�loy�R)`��]m�m��+f4�ck��\\��7�n�K��3֟\r7i�v��G�W�>�6#jz|��.�v�d<Z����^���c:�Xo��-tܦ��a8\r�3 }����o�pv��7�7�Տ�^�ͮ���\0ϣ��\"�&bg���=�++�}����i��I���S�h�ĸ���f�\'�صsU��z��H�����퉩\r�Cz���0�f׸w��;�Hx��3^��V�,=5O*浵����h�t��9����Z�%�Z�c�{�q�U��z��\\�mq\r�Q^ϒ�Dt�\0\r��\0�\0�};�(DC\0��me��3=��q�m�P�������qm�o��?5�U��Qq_���T�5�i��m�]�4��G��� k\\�5����\0.I_!�N\Z�ʪ�{I!���ь}�;�P��U@م���f@�Ǵ-e�����u���|��ͽ�&�B�K\r;3/�Py�i��T�n[Ht�O���c�W6�Xe�b�ߧݾ<�dB�0_�����[.�9��|-��-|zF-�|EW�;��|.\'氶ky2��\0��D�yfŵ/h�,�?��.V��J=�k������NzN��=��U:^6Ӌ�ٟ��m��Nޭm�r�Q����^E�<M�i��g��Y���-]^���Or�땄c�u�߿�����;ul���d����Zɴ����X�75tx�;o^�98�����S\\7��c,V����#��6�Jk�o��Tt*5�VU8mϷ�q�8��$k�詅U��3+��vX�²>�ُ	n��X�F�u\ZQbG��4�~�|�ד�rq��\"+�w��-�%�͈�`�</��/�^��4�a.�&Ga\0m#}���.a.�����3Ց��\ro�˜��[��V���;����썡��^sy�qq[�@DDD@DDDA�����h�@�i*��D{e?w���矔>���cM���l.��t~\0�\"���+bUl�XF@����b�����U���{j#���V���t\'�*Z{TI>�����c{�~ FL`q��Q��L�8Fֵ�z.s�\\\0ps�`��n��x+\Z\0h�;n�s7�uk@��sٹ]#q��\rO �z�0DD��y�d�̱N�,1v_%��Fs00����J1�3���Yk�)�kM�\0&y+���T�a�N�9b\'y�ٱx�[����Cqb՗�;�ð���������o�ӏ�֛N�=>�����DF��h�L��IU#�@k�\06���X�`.�խ�L�T!l�,$FZ\0�ps�P��ظ7\"non̖U���.KRb\"�9*���266��o\"�Ŷ�+�����cL)5�j�]��q��l�\\<V��\\����liR�n��zsny�7�����a��FY��!��8!s�rZ\n�\'F�\"x�����pl�����#%��9�\Z�(#���D�l��)N7<���#.�2\\��\'2I\'2Nd������\Z��ƶ�ctjhA,V�Ltk�A]�QAX�\\CF�CGi6]w��%����l L��~���5��69�N��۰~g�w�e4�u5���[:�,�n����#��\"�\"\"\" \"\"\" -.�𡡪��c-����OP+~�o�E闗�P6�\rS����^~!�s�$�I$�Nd��%Q.�2�P���o����� ��9퍦�cp�p�<NA`D$��m�4;vX�lF�\\�\\�tD��WD#a>%dmK��w�+ �>G���\r$��W�:A`���7;^��9oY����S�~7I&{p4񓅗����H���O\Z^_�?�^4����~k\\��#g�d���F����բ��6������B?����T���i�5��>P�����fv��12�&�b�/2��zn.�a ��U�:j9�}R^,\ri8C]rq�73ꏇ��6�vDS#}��y&�I���ч�ㅖu��!{�����%��|�mTDUkI \r��;N����`{�����~X����\Z3Ѩ頵�cp�7��>��\\7��MYEMk��H�h�o�G��J�@��(����������,�O�p:B�K-d�9�&�^69��6\"�ztA�j��~x*�x]�����<�ՏU�;�����+��O4����j�TsuZʹR�7w�._P�P� �*��s�ւ���x�L_.��Wp�\r?�}�b�Q��h=�4w;����;F�}�w�<�_\\Tr^���4.퉟E����G;���\\��B�}M��3�u��n��/�g�G;c$od�?��YQ��)Ͳ���gɡή��k\\;ZB�u�g�h��ud{�w����ՏV�\'{���� �J��TsO^?w���ƭUO6���C~��~�?$����UK=j)�ce�\0i[6���2V{���44(��E7s��Z�\'+���,p�hk�L:5��<\\<�����c��PFE!�2�ݻ�_�btX���X�<���3x7�{�|�������R�\\�d^��7`u�I�$�����5dgf�Y������ӗ��\\L�����\\8�V�7�[�P�*�ʊ� ⫈(*����������������������)d�5c����;B\"u\Z���1�ލ��-d�������~\"6���ʈ�_Q͎�w�K}�e,VZڞhh��f�Lw�iDM�uG31}��z6ÅA�\0���z5,p�D�����z�k�3\rlg#b\'q��p�~+\'���d�ʌ8�9�{]�nߗD��0��w�K���z\"�C)ܲ�2��#ZU�DUT@DD��','����\0JFIF\0\0\0\0\0\0��\0�\0	( \Z%!1!%)+...383,7(-.+\n\n\n\r\Z\Z-% %--++5-/./+7.--1-+---.-7-+-----+-/5-+-.---+02++---7��\0\0�+\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0F\0\0\0\0\0!1AQ\"aq���2Rr���B����Cb���#D��$3cs����\0\Z\0\0\0\0\0\0\0\0\0\0\0\0��\0-\0\0\0\0\0\0\0\0!1AQq\"Ba��2�������\0\0\0?\0�(���������MCcc�y\rk\Z^��rPeEΫ9�!�EJ���%�OYhc��?�ڃ���#��B���K�Eo�e0�W�\n3�����=�Oꐠ�H��ܸ�\'eVv(?S\n��W���^����A�Qp	yGXv���+��HP���mMA�c��}�|�H��\\�/;^��=��*�i̴xLK�i��O{d`�*�����[L?��1/�p��7y(�F�F��� 8�������g�]s�y(2���u���&��^�Iq̓rU}=/<Z!�\'{�؟�����~�C�\"��|ڈ>������������7?�R�C�#[�J�ȃ������\0��LP����RB=�<�� �R��N�i����C���*v:�F��(�����w���v(��|��\'I>i�ֱ�m���}��iͶ#y߱r�й�̞�J6�+K����=د���$����H�H�U�k�c�ǚʭ���4\0\0��Ex^u����ZzS;��a��>^�p.[�J��@nƝL|00�q�\\\\��X��I�H_����nA��ߦd���%���0gkwe܂馊�2\'�\0��Ҿg#��ۉ�+;��R$�L��b�]l�]kw\0їY��sz�c1��*���%���C\\8M;�|´ҿ��e5�J�[��Tb��|���FHHē`\0$�{Xe�k\'�{eqc���S�ݗV��]�C�q\r..\0\r���}�Ey�%������Y���o�T�\'�\\�m�{s?�k�-�J�G\Z{g�*��i�/���.��OHw�Q�VXƈgx���h���U�W��X�+��X|�������d^��*V����+#qk��������:�*N�|sX3���Q�^�\rF�Fe�u��� ����Nyd.��h�f�5o�ko��6�ڼ���>%cs�D�&\Z�ֆ�s|��B��k$��\\/�3? ��4�3\\���}�xJ;��܎������ߞ�>@w��y��ښ&<��9���gqkC�%|��E��M�%�g�jc����Ƈ;�_=���Okj�H�ѧm��,���?x�y�A4J�֨\Z�]j	��֨:�]j�n�SZ��U5�&kU��SZ�^�F���,6����=�%j䔸�w�.����5dSm���V��3���-�ۯ�ְOS~�ro���|�1�N����Qd���X�V��Y��uī	BU���	BU�@TUYh���3�p��WA�����ቹ>i�����<\n�f���F�f��cG�X\0�?6\Z/Kn��o��\'��+)\"(�\" \"\"\" \"\"����)���OV(�!밸���5rnt�`��=)�&�ی��}���=[\\���y\r�$����q��a�(��\Z	:�]j��SX�f�5��5�&kU5�&�5��z�*�Y�Ď�7����+m.s\07��Z��>Oi���\"-p����#0]�u�A����\\q4]��w<]�2ֳ\Zv}��t��49�7��Ōb2\\���.�E� ��Wh��d�COFF�X\\X��f�[&\r���I��K����\"m�X���u1ͧ�3�	�Xn~eH�7�8o*���;�:ʂ���c��j��YSQ�����Tw9T�n���崭%R�&�{�l�G?��J\n��\" -�\0#)1�^FM����Z��@�SCGNW���s�\r��X�����t�t����Xp뇸{��(���(�o�l�v4\0<���@DDD@DDDABm��C��ӫꪁ��q⏢�v��w�xyA�z6`�i*?�c�ьn,����|�\n���t��*bV].��J�TD]Tb��z,F��_7�H�su2(n��&��8i��6;��S�Rb����)\"���4�ع�?���Q�^�U\\�荞k)N�d�$Z\r�O9�2xd�eLQG��>�6����������M��\0Oo_/��<�i�6\0��f��ay�f~Y-�ծB&����Ϗ}�Wh:��Ǹ��q{y9�Z��?骖�}��9ĭ�9316�G��M���G�87�o�<�8c懔E��а���7�_̨/��$�h��>�M-�ij�d�È�ٱcXKtN�)���}��>��e���C�F�V���i�Z�<���6#���;��ќ��a����搁�Gq�̝�H�y��\"(�\" \"\"\" \"\"\"�r�M6�����\"���~�7�ţ��Ӕ��=��ҳWխ}�!���J�Mm�yVy��>G�O{��8�s�n�{I*�b7:j ,%�hXV�J&h��dn*M9f݇aܷg�w��J�c�\n\"�8���#j��=㸬������$����j�۬͊�-��������	�\r��`|U��=���㌖��R�`�z?C1���=�1<�loy�R)`��]m�m��+f4�ck��\\��7�n�K��3֟\r7i�v��G�W�>�6#jz|��.�v�d<Z����^���c:�Xo��-tܦ��a8\r�3 }����o�pv��7�7�Տ�^�ͮ���\0ϣ��\"�&bg���=�++�}����i��I���S�h�ĸ���f�\'�صsU��z��H�����퉩\r�Cz���0�f׸w��;�Hx��3^��V�,=5O*浵����h�t��9����Z�%�Z�c�{�q�U��z��\\�mq\r�Q^ϒ�Dt�\0\r��\0�\0�};�(DC\0��me��3=��q�m�P�������qm�o��?5�U��Qq_���T�5�i��m�]�4��G��� k\\�5����\0.I_!�N\Z�ʪ�{I!���ь}�;�P��U@م���f@�Ǵ-e�����u���|��ͽ�&�B�K\r;3/�Py�i��T�n[Ht�O���c�W6�Xe�b�ߧݾ<�dB�0_�����[.�9��|-��-|zF-�|EW�;��|.\'氶ky2��\0��D�yfŵ/h�,�?��.V��J=�k������NzN��=��U:^6Ӌ�ٟ��m��Nޭm�r�Q����^E�<M�i��g��Y���-]^���Or�땄c�u�߿�����;ul���d����Zɴ����X�75tx�;o^�98�����S\\7��c,V����#��6�Jk�o��Tt*5�VU8mϷ�q�8��$k�詅U��3+��vX�²>�ُ	n��X�F�u\ZQbG��4�~�|�ד�rq��\"+�w��-�%�͈�`�</��/�^��4�a.�&Ga\0m#}���.a.�����3Ց��\ro�˜��[��V���;����썡��^sy�qq[�@DDD@DDDA�����h�@�i*��D{e?w���矔>���cM���l.��t~\0�\"���+bUl�XF@����b�����U���{j#���V���t\'�*Z{TI>�����c{�~ FL`q��Q��L�8Fֵ�z.s�\\\0ps�`��n��x+\Z\0h�;n�s7�uk@��sٹ]#q��\rO �z�0DD��y�d�̱N�,1v_%��Fs00����J1�3���Yk�)�kM�\0&y+���T�a�N�9b\'y�ٱx�[����Cqb՗�;�ð���������o�ӏ�֛N�=>�����DF��h�L��IU#�@k�\06���X�`.�խ�L�T!l�,$FZ\0�ps�P��ظ7\"non̖U���.KRb\"�9*���266��o\"�Ŷ�+�����cL)5�j�]��q��l�\\<V��\\����liR�n��zsny�7�����a��FY��!��8!s�rZ\n�\'F�\"x�����pl�����#%��9�\Z�(#���D�l��)N7<���#.�2\\��\'2I\'2Nd������\Z��ƶ�ctjhA,V�Ltk�A]�QAX�\\CF�CGi6]w��%����l L��~���5��69�N��۰~g�w�e4�u5���[:�,�n����#��\"�\"\"\" \"\"\" -.�𡡪��c-����OP+~�o�E闗�P6�\rS����^~!�s�$�I$�Nd��%Q.�2�P���o����� ��9퍦�cp�p�<NA`D$��m�4;vX�lF�\\�\\�tD��WD#a>%dmK��w�+ �>G���\r$��W�:A`���7;^��9oY����S�~7I&{p4񓅗����H���O\Z^_�?�^4����~k\\��#g�d���F����բ��6������B?����T���i�5��>P�����fv��12�&�b�/2��zn.�a ��U�:j9�}R^,\ri8C]rq�73ꏇ��6�vDS#}��y&�I���ч�ㅖu��!{�����%��|�mTDUkI \r��;N����`{�����~X����\Z3Ѩ頵�cp�7��>��\\7��MYEMk��H�h�o�G��J�@��(����������,�O�p:B�K-d�9�&�^69��6\"�ztA�j��~x*�x]�����<�ՏU�;�����+��O4����j�TsuZʹR�7w�._P�P� �*��s�ւ���x�L_.��Wp�\r?�}�b�Q��h=�4w;����;F�}�w�<�_\\Tr^���4.퉟E����G;���\\��B�}M��3�u��n��/�g�G;c$od�?��YQ��)Ͳ���gɡή��k\\;ZB�u�g�h��ud{�w����ՏV�\'{���� �J��TsO^?w���ƭUO6���C~��~�?$����UK=j)�ce�\0i[6���2V{���44(��E7s��Z�\'+���,p�hk�L:5��<\\<�����c��PFE!�2�ݻ�_�btX���X�<���3x7�{�|�������R�\\�d^��7`u�I�$�����5dgf�Y������ӗ��\\L�����\\8�V�7�[�P�*�ʊ� ⫈(*����������������������)d�5c����;B\"u\Z���1�ލ��-d�������~\"6���ʈ�_Q͎�w�K}�e,VZڞhh��f�Lw�iDM�uG31}��z6ÅA�\0���z5,p�D�����z�k�3\rlg#b\'q��p�~+\'���d�ʌ8�9�{]�nߗD��0��w�K���z\"�C)ܲ�2��#ZU�DUT@DD��','����\0JFIF\0\0\0\0\0\0��\0�\0	( \Z%!1!%)+...383,7(-.+\n\n\n\r\Z\Z-% %--++5-/./+7.--1-+---.-7-+-----+-/5-+-.---+02++---7��\0\0�+\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0F\0\0\0\0\0!1AQ\"aq���2Rr���B����Cb���#D��$3cs����\0\Z\0\0\0\0\0\0\0\0\0\0\0\0��\0-\0\0\0\0\0\0\0\0!1AQq\"Ba��2�������\0\0\0?\0�(���������MCcc�y\rk\Z^��rPeEΫ9�!�EJ���%�OYhc��?�ڃ���#��B���K�Eo�e0�W�\n3�����=�Oꐠ�H��ܸ�\'eVv(?S\n��W���^����A�Qp	yGXv���+��HP���mMA�c��}�|�H��\\�/;^��=��*�i̴xLK�i��O{d`�*�����[L?��1/�p��7y(�F�F��� 8�������g�]s�y(2���u���&��^�Iq̓rU}=/<Z!�\'{�؟�����~�C�\"��|ڈ>������������7?�R�C�#[�J�ȃ������\0��LP����RB=�<�� �R��N�i����C���*v:�F��(�����w���v(��|��\'I>i�ֱ�m���}��iͶ#y߱r�й�̞�J6�+K����=د���$����H�H�U�k�c�ǚʭ���4\0\0��Ex^u����ZzS;��a��>^�p.[�J��@nƝL|00�q�\\\\��X��I�H_����nA��ߦd���%���0gkwe܂馊�2\'�\0��Ҿg#��ۉ�+;��R$�L��b�]l�]kw\0їY��sz�c1��*���%���C\\8M;�|´ҿ��e5�J�[��Tb��|���FHHē`\0$�{Xe�k\'�{eqc���S�ݗV��]�C�q\r..\0\r���}�Ey�%������Y���o�T�\'�\\�m�{s?�k�-�J�G\Z{g�*��i�/���.��OHw�Q�VXƈgx���h���U�W��X�+��X|�������d^��*V����+#qk��������:�*N�|sX3���Q�^�\rF�Fe�u��� ����Nyd.��h�f�5o�ko��6�ڼ���>%cs�D�&\Z�ֆ�s|��B��k$��\\/�3? ��4�3\\���}�xJ;��܎������ߞ�>@w��y��ښ&<��9���gqkC�%|��E��M�%�g�jc����Ƈ;�_=���Okj�H�ѧm��,���?x�y�A4J�֨\Z�]j	��֨:�]j�n�SZ��U5�&kU��SZ�^�F���,6����=�%j䔸�w�.����5dSm���V��3���-�ۯ�ְOS~�ro���|�1�N����Qd���X�V��Y��uī	BU���	BU�@TUYh���3�p��WA�����ቹ>i�����<\n�f���F�f��cG�X\0�?6\Z/Kn��o��\'��+)\"(�\" \"\"\" \"\"����)���OV(�!밸���5rnt�`��=)�&�ی��}���=[\\���y\r�$����q��a�(��\Z	:�]j��SX�f�5��5�&kU5�&�5��z�*�Y�Ď�7����+m.s\07��Z��>Oi���\"-p����#0]�u�A����\\q4]��w<]�2ֳ\Zv}��t��49�7��Ōb2\\���.�E� ��Wh��d�COFF�X\\X��f�[&\r���I��K����\"m�X���u1ͧ�3�	�Xn~eH�7�8o*���;�:ʂ���c��j��YSQ�����Tw9T�n���崭%R�&�{�l�G?��J\n��\" -�\0#)1�^FM����Z��@�SCGNW���s�\r��X�����t�t����Xp뇸{��(���(�o�l�v4\0<���@DDD@DDDABm��C��ӫꪁ��q⏢�v��w�xyA�z6`�i*?�c�ьn,����|�\n���t��*bV].��J�TD]Tb��z,F��_7�H�su2(n��&��8i��6;��S�Rb����)\"���4�ع�?���Q�^�U\\�荞k)N�d�$Z\r�O9�2xd�eLQG��>�6����������M��\0Oo_/��<�i�6\0��f��ay�f~Y-�ծB&����Ϗ}�Wh:��Ǹ��q{y9�Z��?骖�}��9ĭ�9316�G��M���G�87�o�<�8c懔E��а���7�_̨/��$�h��>�M-�ij�d�È�ٱcXKtN�)���}��>��e���C�F�V���i�Z�<���6#���;��ќ��a����搁�Gq�̝�H�y��\"(�\" \"\"\" \"\"\"�r�M6�����\"���~�7�ţ��Ӕ��=��ҳWխ}�!���J�Mm�yVy��>G�O{��8�s�n�{I*�b7:j ,%�hXV�J&h��dn*M9f݇aܷg�w��J�c�\n\"�8���#j��=㸬������$����j�۬͊�-��������	�\r��`|U��=���㌖��R�`�z?C1���=�1<�loy�R)`��]m�m��+f4�ck��\\��7�n�K��3֟\r7i�v��G�W�>�6#jz|��.�v�d<Z����^���c:�Xo��-tܦ��a8\r�3 }����o�pv��7�7�Տ�^�ͮ���\0ϣ��\"�&bg���=�++�}����i��I���S�h�ĸ���f�\'�صsU��z��H�����퉩\r�Cz���0�f׸w��;�Hx��3^��V�,=5O*浵����h�t��9����Z�%�Z�c�{�q�U��z��\\�mq\r�Q^ϒ�Dt�\0\r��\0�\0�};�(DC\0��me��3=��q�m�P�������qm�o��?5�U��Qq_���T�5�i��m�]�4��G��� k\\�5����\0.I_!�N\Z�ʪ�{I!���ь}�;�P��U@م���f@�Ǵ-e�����u���|��ͽ�&�B�K\r;3/�Py�i��T�n[Ht�O���c�W6�Xe�b�ߧݾ<�dB�0_�����[.�9��|-��-|zF-�|EW�;��|.\'氶ky2��\0��D�yfŵ/h�,�?��.V��J=�k������NzN��=��U:^6Ӌ�ٟ��m��Nޭm�r�Q����^E�<M�i��g��Y���-]^���Or�땄c�u�߿�����;ul���d����Zɴ����X�75tx�;o^�98�����S\\7��c,V����#��6�Jk�o��Tt*5�VU8mϷ�q�8��$k�詅U��3+��vX�²>�ُ	n��X�F�u\ZQbG��4�~�|�ד�rq��\"+�w��-�%�͈�`�</��/�^��4�a.�&Ga\0m#}���.a.�����3Ց��\ro�˜��[��V���;����썡��^sy�qq[�@DDD@DDDA�����h�@�i*��D{e?w���矔>���cM���l.��t~\0�\"���+bUl�XF@����b�����U���{j#���V���t\'�*Z{TI>�����c{�~ FL`q��Q��L�8Fֵ�z.s�\\\0ps�`��n��x+\Z\0h�;n�s7�uk@��sٹ]#q��\rO �z�0DD��y�d�̱N�,1v_%��Fs00����J1�3���Yk�)�kM�\0&y+���T�a�N�9b\'y�ٱx�[����Cqb՗�;�ð���������o�ӏ�֛N�=>�����DF��h�L��IU#�@k�\06���X�`.�խ�L�T!l�,$FZ\0�ps�P��ظ7\"non̖U���.KRb\"�9*���266��o\"�Ŷ�+�����cL)5�j�]��q��l�\\<V��\\����liR�n��zsny�7�����a��FY��!��8!s�rZ\n�\'F�\"x�����pl�����#%��9�\Z�(#���D�l��)N7<���#.�2\\��\'2I\'2Nd������\Z��ƶ�ctjhA,V�Ltk�A]�QAX�\\CF�CGi6]w��%����l L��~���5��69�N��۰~g�w�e4�u5���[:�,�n����#��\"�\"\"\" \"\"\" -.�𡡪��c-����OP+~�o�E闗�P6�\rS����^~!�s�$�I$�Nd��%Q.�2�P���o����� ��9퍦�cp�p�<NA`D$��m�4;vX�lF�\\�\\�tD��WD#a>%dmK��w�+ �>G���\r$��W�:A`���7;^��9oY����S�~7I&{p4񓅗����H���O\Z^_�?�^4����~k\\��#g�d���F����բ��6������B?����T���i�5��>P�����fv��12�&�b�/2��zn.�a ��U�:j9�}R^,\ri8C]rq�73ꏇ��6�vDS#}��y&�I���ч�ㅖu��!{�����%��|�mTDUkI \r��;N����`{�����~X����\Z3Ѩ頵�cp�7��>��\\7��MYEMk��H�h�o�G��J�@��(����������,�O�p:B�K-d�9�&�^69��6\"�ztA�j��~x*�x]�����<�ՏU�;�����+��O4����j�TsuZʹR�7w�._P�P� �*��s�ւ���x�L_.��Wp�\r?�}�b�Q��h=�4w;����;F�}�w�<�_\\Tr^���4.퉟E����G;���\\��B�}M��3�u��n��/�g�G;c$od�?��YQ��)Ͳ���gɡή��k\\;ZB�u�g�h��ud{�w����ՏV�\'{���� �J��TsO^?w���ƭUO6���C~��~�?$����UK=j)�ce�\0i[6���2V{���44(��E7s��Z�\'+���,p�hk�L:5��<\\<�����c��PFE!�2�ݻ�_�btX���X�<���3x7�{�|�������R�\\�d^��7`u�I�$�����5dgf�Y������ӗ��\\L�����\\8�V�7�[�P�*�ʊ� ⫈(*����������������������)d�5c����;B\"u\Z���1�ލ��-d�������~\"6���ʈ�_Q͎�w�K}�e,VZڞhh��f�Lw�iDM�uG31}��z6ÅA�\0���z5,p�D�����z�k�3\rlg#b\'q��p�~+\'���d�ʌ8�9�{]�nߗD��0��w�K���z\"�C)ܲ�2��#ZU�DUT@DD��',500,0.3,'1 year warranty is applicable',7,'approved',0,0,'');
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
