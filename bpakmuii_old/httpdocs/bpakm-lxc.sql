-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: bpakmuii_acid
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.04.1

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
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id_config` int(11) NOT NULL AUTO_INCREMENT,
  `namaweb` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `keyword` text NOT NULL,
  `metatext` text NOT NULL,
  PRIMARY KEY (`id_config`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'Badan Pengelola Aset KM UII','bpa.km.uii@gmail.com','081229867117, 081221687900','a1.png','icon-bpa1.png','industri, Gedung, Pernikahan, event ,sewa gedung, kaliurang, SCC UII,UII,universitas islam indonesia','');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galeri_foto`
--

DROP TABLE IF EXISTS `galeri_foto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galeri_foto` (
  `id_galeri_foto` int(11) NOT NULL AUTO_INCREMENT,
  `slug_galeri_foto` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  PRIMARY KEY (`id_galeri_foto`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galeri_foto`
--

LOCK TABLES `galeri_foto` WRITE;
/*!40000 ALTER TABLE `galeri_foto` DISABLE KEYS */;
INSERT INTO `galeri_foto` VALUES (38,'39-penyewaan-scc-oleh-club-mobil','Penyewaan SCC oleh club mobil','1.jpg','2'),(39,'depan','Depan','5.jpg','2'),(40,'ruang-kamar','Ruang kamar','102673.jpg','2');
/*!40000 ALTER TABLE `galeri_foto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galeri_kategori`
--

DROP TABLE IF EXISTS `galeri_kategori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galeri_kategori` (
  `id_galeri_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(255) NOT NULL,
  `slug_galeri_kategori` varchar(255) NOT NULL,
  PRIMARY KEY (`id_galeri_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galeri_kategori`
--

LOCK TABLES `galeri_kategori` WRITE;
/*!40000 ALTER TABLE `galeri_kategori` DISABLE KEYS */;
INSERT INTO `galeri_kategori` VALUES (1,'Anggota','anggota'),(2,'Gedung SCC','gedung-scc');
/*!40000 ALTER TABLE `galeri_kategori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galeri_video`
--

DROP TABLE IF EXISTS `galeri_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galeri_video` (
  `id_galeri_video` int(11) NOT NULL AUTO_INCREMENT,
  `slug_galeri_video` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `link_video` varchar(255) NOT NULL,
  PRIMARY KEY (`id_galeri_video`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galeri_video`
--

LOCK TABLES `galeri_video` WRITE;
/*!40000 ALTER TABLE `galeri_video` DISABLE KEYS */;
INSERT INTO `galeri_video` VALUES (5,'5-trailer-wedding-in-silent-webseries','[TRAILER] Wedding In SIlent #Webseries','<iframe width=\"360\" height=\"200\" src=\"https://www.youtube.com/embed/k76SWgBtVo4\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),(6,'6-episode-1-wedding-in-silent-webseries','[EPISODE 1] Wedding In Silent #Webseries','<iframe width=\"360\" height=\"200\" src=\"https://www.youtube.com/embed/0Nmh3s5nYXw\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),(7,'episode-2-wedding-in-silent-webseries','[EPISODE 2] Wedding In Silent #Webseries','<iframe width=\"360\" height=\"200\" src=\"https://www.youtube.com/embed/5NZo-IDzZ_8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),(8,'episode-3-final-wedding-in-silent-webseries','[EPISODE 3/ FINAL ] Wedding In Silent #Webseries','<iframe width=\"360\" height=\"200\" src=\"https://www.youtube.com/embed/VBF5j0Q7WmE\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),(9,'2019-open-recruitment-badan-pengelola-aset-km-uii','#2019 Open Recruitment Badan Pengelola Aset KM UII','<iframe width=\"360\" height=\"200\" src=\"https://www.youtube.com/embed/kyKMH8Afbew\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>');
/*!40000 ALTER TABLE `galeri_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `industri_besar`
--

DROP TABLE IF EXISTS `industri_besar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `industri_besar` (
  `id_industri_besar` int(11) NOT NULL AUTO_INCREMENT,
  `slug_industri_besar` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  PRIMARY KEY (`id_industri_besar`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `industri_besar`
--

LOCK TABLES `industri_besar` WRITE;
/*!40000 ALTER TABLE `industri_besar` DISABLE KEYS */;
INSERT INTO `industri_besar` VALUES (10,'71-pintu-air','Pintu Air','CVSUDIRMAN_ARSIP1.png','<p>SPAREPART PINTU AIR&nbsp;<strong>PDAM,&nbsp;</strong>Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten</em></strong></p>\r\n<p>&nbsp;</p>'),(11,'71-main-hole','Main Hole','PHOTO-2018-07-07-20-48-251.jpg','<p>Diameter dan model dapat dipesan by request</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten</em></strong></p>'),(12,'71-grill-jalan','Grill jalan','PHOTO-2018-07-12-12-33-18.jpg','<p>besar kecil dan&nbsp;&nbsp;model dapat dipesan by request</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten</em></strong></p>'),(13,'71-roda-rolli-roda-kereta-tebukelapa-sawit','Roda Rolli (Roda kereta tebu/kelapa sawit)','PHOTO-2018-07-07-20-48-031.jpg','<p>Roda kereta Diameter dan model dapat dipesan by request</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten</em></strong></p>'),(14,'71-roof-drain','Roof Drain','PHOTO-2018-07-07-20-57-011.jpg','<p>Bentuk dan model dapat dipesan by request hubungi kami .</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten</em></strong></p>'),(15,'71-mesin-penggiling-bakso','Mesin Penggiling Bakso','PHOTO-2018-07-07-20-50-202.jpg','<p>Mesin pembuat bakso diameter dapat di pesan by request , hubungi kami..</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),(16,'71-pulley','Pulley ','c4c6078b-66a1-4231-bc21-58f1831656542.JPG','<p>Type pulley dan&nbsp;&nbsp;diameter dapat di pesan by request , hubungi kami..</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),(17,'71-gear-gigi','Gear gigi','PHOTO-2018-07-07-20-49-061.jpg','<p>Type dan mata gigi.&nbsp;&nbsp;Diameter dapat di pesan by request , hubungi kami..</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),(18,'71-gear-dryer','Gear Dryer','PHOTO-2018-07-07-20-48-481.jpg','<p>Type diameter dan jumlah gigi dapat di pesan by request , hubungi kami..</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),(19,'cruiser-cutting','Cruiser Cutting','PHOTO-2018-07-07-21-01-13.jpg','<p>Mata Pisau,&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),(20,'cover-impeller','Cover Impeller','PHOTO-2018-07-11-09-00-43.jpg','<p>Penutup Impeller,&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),(23,'pulley-belt','Pulley Belt','PHOTO-2018-07-07-20-55-11.jpg','<p>Type DanUkuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),(25,'mainhole-jalan','Mainhole Jalan','PHOTO-2018-07-07-20-45-51.jpg','<p>Model Dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),(29,'mainhole-jalan','Mainhole Jalan','PHOTO-2018-07-07-20-59-14.jpg','<p>&nbsp;</p>\r\n<p>Model atau bentuk dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>\r\n<p>&nbsp;</p>'),(31,'pemecah-batu','Pemecah Batu','PHOTO-2018-07-07-20-52-30.jpg','<p>Menyediakan Sparepart Mesin Pemecah batu dan&nbsp;&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>\r\n<p>&nbsp;</p>'),(32,'balancer','Balancer  ','PHOTO-2018-07-11-09-06-47.jpg','<p>Pemberat&nbsp;Model atau bentuk dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>\r\n<p>&nbsp;</p>'),(33,'balancer','Balancer  ','PHOTO-2018-07-11-09-07-58.jpg','<p>Pemberat,&nbsp; Model atau bentuk dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>\r\n<p>&nbsp;</p>'),(34,'balancer','Balancer  ','PHOTO-2018-07-11-10-13-34.jpg','<p>Pemberat, model&nbsp;&nbsp;bentuk dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>\r\n<p>&nbsp;</p>'),(35,'balancer','Balancer  ','PHOTO-2018-07-11-10-11-09.jpg','<p>Pemberat, Model atau bentuk dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>\r\n<p>&nbsp;</p>'),(37,'roda-rolli-kereta-tebukereta-kelapa-sawit','Roda Rolli (kereta tebu/kereta kelapa sawit)','1041c445-0952-4174-8221-2a743842db59.JPG','<p>Model dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>\r\n<p>&nbsp;</p>'),(38,'39-pulley-belt-generator-yanmar-8x35','Pulley Belt Generator Yanmar 8X35','ff8baa57-42c9-46d0-826c-fe8226e56610.JPG','<p>Type dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>\r\n<p>&nbsp;</p>'),(39,'39-pulley-belt-generator-yanmar-13','Pulley Belt Generator Yanmar 13','f14f6c91-2c31-477e-a81e-11aafe6f7f0c.JPG','<p>Type&nbsp;dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>\r\n<p>&nbsp;</p>'),(40,'gear-gigi','Gear (Gigi)','ebfcb8ba-2ce9-47b9-8b77-91f1c47dd015.JPG','<p>Gear Type&nbsp;dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>\r\n<p>&nbsp;</p>'),(41,'pulley-belt-generator-yanmar','Pulley Belt Generator Yanmar','ea8f961b-fd07-4f0d-8678-fbf1e9dcb1aa.JPG','<p>Type&nbsp;dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>\r\n<p>&nbsp;</p>'),(42,'pulley-belt-c3-30inch','Pulley Belt C3 30Inch','e146cc62-00f0-4a07-acca-4dea7de304b9.JPG','<p>Type&nbsp;dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>\r\n<p>&nbsp;</p>'),(43,'sparepart-mesin-tenun','Sparepart Mesin Tenun','e5f2650a-021c-4fd9-80f6-342b615d6993.JPG','<p>Type&nbsp;dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>\r\n<p>&nbsp;</p>'),(44,'44-roda-karet-kapasitas-150kg','Roda Karet Kapasitas 150KG','df69039d-f49a-4590-ba96-a4bbe3600dab.JPG','<p>Type kapasitas dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),(45,'pulley-belt-generator-yanmar','Pulley Belt Generator Yanmar','db73dcbb-bc77-410b-8b38-809d09fda958.JPG','<p>Type dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),(46,'flange','Flange','ce1bceb9-66e9-4a90-89aa-4c110b3b0bd5.JPG','<p>Type&nbsp;,Bentuk&nbsp;dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),(47,'flange','Flange','c5a5b835-5596-4702-863d-61daffbb09bf.JPG','<p>Type,bentuk dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),(48,'pulley-belt','Pulley Belt','b026178d-2b38-4b45-a476-4435cb1ec3cf.JPG','<p>Type dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),(49,'pulley-belt','Pulley Belt','b3a53f8b-aaf5-4877-a04c-f76122ba21b1.JPG','<p>Type&nbsp; dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),(50,'kowi-wadah-masak-alumuniumkuningantembaga-etc','kowi (Wadah Masak Alumunium,Kuningan,Tembaga .etc)','5548460a-da7c-40c7-8abc-a9f6b3166fd5.JPG','<p>Type, kapasitas dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),(51,'sparepart-mesin-tenun','Sparepart Mesin Tenun','aa8036ae-35b8-47b6-bc67-dd093b5a9732.JPG','<p>Type&nbsp; dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),(52,'manifole-exhaust','Manifole Exhaust','5bd4dc30-e0c5-431c-93ef-02fad58b4765.JPG','<p>Type&nbsp; dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),(53,'sparepart-pompa','SparePart Pompa ','03999697-01a9-43e6-8735-53e9b1334dff.JPG','<p>housing pump Type kapasitas dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),(54,'roll-mill-gilingan-padi','Roll Mill (Gilingan Padi)','638726f5-e9ff-4448-b51e-bce4ea26b562.JPG','<p>Type, kapasitas dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),(55,'pulley-belt-generator-yanmar','Pulley Belt Generator Yanmar','384466f5-a52c-4aaa-946c-46fa7cf43af2.JPG','<p>Type, kapasitas dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),(56,'pondasi-kaki-mickursilampu-etc',' Pondasi kaki mic,Kursi,Lampu. Etc','89344d1a-7cac-4842-929d-260861bbfd10.JPG','<p>Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),(57,'sparepart-pompa-air','SparePart Pompa Air','73163f5d-6113-4814-93ea-0b608c6f9171.JPG','<p>Type, kapasitas dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),(58,'gear-gigi-pintu-air','Gear (Gigi) Pintu Air','7880c1b0-35ce-4fae-bc62-5401ebe8d025.JPG','<p>Type,&nbsp; dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),(59,'cover-strainer-cover-block-beton','Cover Strainer / Cover Block Beton','7094d673-8631-4880-ad0d-e143697e9bb3.JPG','<p>Type, kapasitas dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),(60,'sparepart-mesin-tenun','Sparepart Mesin Tenun','4109dafd-ed43-487a-bf3c-5bf8699e8018.JPG','<p>Type,&nbsp; Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),(61,'housing-roof-drain-set-dengan-penutup','Housing roof Drain (Set Dengan Penutup)','2384c5cd-591c-4525-9c8f-5aebde3c323b.JPG','<p>Type, Diameter&nbsp;dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),(62,'pulley-belt','Pulley Belt','73d8e262-9564-4077-a3ab-bd2d7659c237.JPG','<p>Type, Diameter&nbsp;dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),(63,'pulley-ratna-belt-generator-yanmar-r1-75','Pulley Ratna Belt Generator Yanmar R1 75 ','64f72f37-d0b6-4a14-9a21-bf447076f67a.JPG','<p>Type, Diameter&nbsp;dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),(64,'cover-block-beton','Cover Block Beton','7d67714a-54dc-43fa-87d7-60570d52502b.JPG','<p>Type, Diameter&nbsp;dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),(65,'pondasi-pintu-mesin','Pondasi Pintu Mesin','6f662eda-62b8-48d4-947a-e80e01d11bfa.JPG','<p>Type, Diameter&nbsp;dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),(66,'pulley-belt-generator-yanmar-8x20','Pulley Belt Generator Yanmar 8X20','5c29c29d-4625-4a4a-84d3-4bcb3b33f938.JPG','<p>Type, Diameter&nbsp;dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),(67,'pulley-kawat-bendrat','Pulley Kawat Bendrat','3dd8c93f-0cb5-4c39-bfbb-394c6d3fccda.JPG','<p>Type, Diameter&nbsp;dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),(68,'sparepart-mesin-tenun','Sparepart Mesin Tenun','0c359167-2971-4a57-8391-5582e3cc8f3d.JPG','<p>Type, Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),(69,'pulley-belt-generator-yanmar-11rd-85','Pulley Belt Generator Yanmar 11RD-85','0e61156a-53ea-4a3f-b286-80d98fadc18a.JPG','<p>Type, Diameter&nbsp;dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),(71,'bahan-couple','Bahan Couple','f684e60c-8ad4-4470-a252-72045fe89392.JPG','<p>Model, Diameter&nbsp;dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),(72,'body-pump','Body Pump','PHOTO-2018-07-11-09-50-381.jpg','<div class=\"col-md-12\">\r\n<p>&nbsp;</p>\r\n<p>Type Pompa dapat di pesan by request , hubungi kami..</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>\r\n<table class=\"table table-striped table-bordered table-hover\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>&nbsp;</p>'),(73,'pondasi-depan-pompa','Pondasi Depan Pompa','PHOTO-2018-07-11-09-09-361.jpg','<p>Model&nbsp;dapat di pesan by request , hubungi kami..</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),(74,'body-pump-air-with-impeller','Body Pump air with impeller','PHOTO-2018-07-11-10-01-501.jpg','<p>Model pompa air dapat di pesan by request , hubungi kami..</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),(75,'mixing-aspal','Mixing Aspal ','PHOTO-2018-07-12-12-18-28.jpg','<p>Sparepart Aspal dapat di pesan by request , hubungi kami..</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),(76,'body-hydrant','Body Hydrant','PHOTO-2018-07-12-12-27-40.jpg','<p>&nbsp;Diameter dapat di pesan by request , hubungi kami..</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),(77,'sparepart-sisir','Sparepart Sisir','PHOTO-2018-07-12-12-19-31.jpg','<p>&nbsp;Type Dapat di pesan by request , hubungi kami..</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),(78,'pulley','Pulley ','PHOTO-2018-07-12-12-21-51.jpg','<p>Type pulley dan&nbsp;&nbsp;diameter dapat di pesan by request , hubungi kami..</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),(79,'cover-pompa-air','Cover Pompa air','PHOTO-2018-07-11-09-22-041.jpg','<p>Bentuk dan ukuran&nbsp;dapat di pesan by request , hubungi kami..</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),(80,'cover-pompa-air','Cover Pompa air','PHOTO-2018-07-11-09-15-381.jpg','<p>Bentuk dan ukuran&nbsp;dapat di pesan by request , hubungi kami..</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),(81,'cover-belakang-electro-motor','Cover Belakang Electro motor','PHOTO-2018-07-11-10-06-311.jpg','<p>Bentuk dan ukuran&nbsp;dapat di pesan by request , hubungi kami..</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),(82,'couple-mesin','Couple Mesin','PHOTO-2018-07-11-09-40-411.jpg','<p>Bentuk dan ukuran diameter dapat di pesan by request , hubungi kami..</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),(83,'grill-jalan','Grill Jalan','PHOTO-2018-07-12-12-24-36.jpg','<p>Bentuk dan ukuran&nbsp;dapat di pesan by request , hubungi kami..</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),(84,'pulley','pulley ','PHOTO-2018-07-16-09-10-53.jpg','<p>Diameter&nbsp;ukuran&nbsp;dapat di pesan by request , hubungi kami..</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),(85,'komponen-drainase','Komponen Drainase','PHOTO-2018-07-14-09-58-02.jpg','<p>Bentuk dan ukuran&nbsp;dapat di pesan by request , hubungi kami..</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>');
/*!40000 ALTER TABLE `industri_besar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `industri_kecil`
--

DROP TABLE IF EXISTS `industri_kecil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `industri_kecil` (
  `id_industri_kecil` int(11) NOT NULL AUTO_INCREMENT,
  `slug_industri_kecil` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  PRIMARY KEY (`id_industri_kecil`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `industri_kecil`
--

LOCK TABLES `industri_kecil` WRITE;
/*!40000 ALTER TABLE `industri_kecil` DISABLE KEYS */;
INSERT INTO `industri_kecil` VALUES (15,'wajan','Wajan ','PHOTO-2018-07-11-09-43-41.jpg','<p>Pengorengan . Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),(16,'hot-plate','Hot Plate','PHOTO-2018-07-07-20-58-00.jpg','<p>Wadah panggang steak.&nbsp;Ukuran Dan Motif Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),(17,'kursi-antik','Kursi Antik','PHOTO-2018-07-07-20-53-02.jpg','<p>Motif Ukiran Bisa Memilih Atau Membuat Sendiri Dan Jenis Kayu . Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),(18,'kaki-meja-antik','Kaki Meja Antik','PHOTO-2018-07-07-20-49-49.jpg','<p>Motif Bisa Menyesuaikan Customer. Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),(19,'set-meja-antik','Set Meja Antik ','PHOTO-2018-07-07-20-46-30.jpg','<p>Custom Meja Antik&nbsp;Model atau bentuk dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>\r\n<p>&nbsp;</p>'),(20,'barbel-jreg','BARBEL Jreg','ee6a8055-b044-4ed7-b671-c99dbf674bf6.JPG','<p>Type, Diameter&nbsp;dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),(21,'covet-tiang-lampu-antik','Covet Tiang Lampu (antik)','093d87e4-15da-4120-a639-9cf286eb9847.JPG','<p>Type, Diameter&nbsp;dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),(22,'barbel-tangan','Barbel Tangan','ccdfb517-c5a7-42be-81e3-3d2a7e7728ce.JPG','<p>Type, Diameter&nbsp;dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),(23,'barbel-balok-pemberat-5kg10kg','Barbel Balok (pemberat) 5kg/10kg','0035505e-056e-4690-9101-1b2b22be9852.JPG','<p>Type, beerat Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),(24,'barbel-jreg-10kg','BARBEL Jreg 10kg','6822b56b-aea6-491b-a21e-40293448a859.JPG','<p>Model, Diameter&nbsp;dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),(25,'barbel-jreg-5kg','Barbel jreg 5kg','a7c0271a-e817-42df-9021-2d5683afb169.JPG','<p>Model, Diameter&nbsp;dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),(26,'barbel-tangan-10kg','Barbel Tangan 10kg','PHOTO-2018-07-07-20-53-561.jpg','<p>Model, Diameter&nbsp;dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),(27,'barbel-pemberat','Barbel Pemberat','PHOTO-2018-07-12-12-23-19.jpg','<p>Bentuk dan ukuran&nbsp;dapat di pesan by request , hubungi kami..</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),(28,'cetakan-kue','Cetakan Kue ','PHOTO-2018-07-14-08-48-56.jpg','<p>Bentuk dan ukuran&nbsp;dapat di pesan by request , hubungi kami..</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),(29,'barbel-pemberat-25kg','Barbel Pemberat 2,5kg','PHOTO-2018-07-14-08-51-45.jpg','<p>Bentuk dan ukuran berat dapat di pesan by request , hubungi kami..</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>');
/*!40000 ALTER TABLE `industri_kecil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kegiatan`
--

DROP TABLE IF EXISTS `kegiatan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kegiatan` (
  `id_kegiatan` int(11) NOT NULL AUTO_INCREMENT,
  `slug_kegiatan` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `sub_judul` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id_kegiatan`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kegiatan`
--

LOCK TABLES `kegiatan` WRITE;
/*!40000 ALTER TABLE `kegiatan` DISABLE KEYS */;
INSERT INTO `kegiatan` VALUES (13,'18-open-recruitment','OPEN RECRUITMENT','COMING SOON OPEN RECRUITMENT MAGANG BPA KM UII 2019-2020\r\n\r\n','2426243.jpg'),(18,'18-id-card-bpa','ID CARD BPA','Id Card digunakan sebagai tanda pengenal pengurus','id-card-bpa-2019--1-.png');
/*!40000 ALTER TABLE `kegiatan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kontak`
--

DROP TABLE IF EXISTS `kontak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kontak` (
  `id_kontak` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id_kontak`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kontak`
--

LOCK TABLES `kontak` WRITE;
/*!40000 ALTER TABLE `kontak` DISABLE KEYS */;
INSERT INTO `kontak` VALUES (1,'test','test@cv-sudirman.com','test','tested','2018-06-04'),(2,'testing','testing@cv-sudirman.com','testing','testing','2018-06-04');
/*!40000 ALTER TABLE `kontak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organisasi`
--

DROP TABLE IF EXISTS `organisasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organisasi` (
  `id_organisasi` int(11) NOT NULL AUTO_INCREMENT,
  `slug_organisasi` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `pesan` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id_organisasi`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organisasi`
--

LOCK TABLES `organisasi` WRITE;
/*!40000 ALTER TABLE `organisasi` DISABLE KEYS */;
INSERT INTO `organisasi` VALUES (13,'anggota-bpa','Anggota BPA','Seluruh anggota','Periode 2018','okimg_0062(4).jpg'),(14,'danur-lintang','Danur Lintang','MANAGER PSP','PSP MANTAP','wkwkwkwk2.jpg');
/*!40000 ALTER TABLE `organisasi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pesan_direktur`
--

DROP TABLE IF EXISTS `pesan_direktur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pesan_direktur` (
  `id_pesan_direktur` int(11) NOT NULL AUTO_INCREMENT,
  `slug_pesan_direktur` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  PRIMARY KEY (`id_pesan_direktur`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pesan_direktur`
--

LOCK TABLES `pesan_direktur` WRITE;
/*!40000 ALTER TABLE `pesan_direktur` DISABLE KEYS */;
INSERT INTO `pesan_direktur` VALUES (1,'pesan-direktur','direktur_cvsudirman.JPG','Terima kasih atas ketertarikan dan kepercayaan Anda kepada CV-SUDIRMAN . Melalui website ini, kami bertujuan untuk menyediakan informasi mengenai CV-SUDIRMAN dan rangkaian kegiatan serta layanan terbaik untuk memberikan layanan jasa pengecoran logam.\r\n<br><br><br>\r\nCV-SUDIRMAN didirikan tidak semata-mata hanya sekedar mendirikan tapi mampu menjadi pemicu (trigger) bagi UMKM (Usaha Mikro Kecil dan Menengah) khususnya dan menggerakkan aktivitas ekonomi masyarakat pada umumnya.\r\n<br><br><br>\r\nSangat penting bagi kami untuk dapat memberikan akses yang mudah bagi Anda dalam mendapatkan layanan jasa pengecoran yang optimal dari CV-SUDIRMAN. Untuk itu Anda dapat menghubungi kami  melalui chat online secara langsung dijam kerja melalui web ini atau melalui customer care kami .');
/*!40000 ALTER TABLE `pesan_direktur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sekilas_perusahaan`
--

DROP TABLE IF EXISTS `sekilas_perusahaan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sekilas_perusahaan` (
  `id_sekilas_perusahaan` int(11) NOT NULL AUTO_INCREMENT,
  `slug_sekilas_perusahaan` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  PRIMARY KEY (`id_sekilas_perusahaan`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sekilas_perusahaan`
--

LOCK TABLES `sekilas_perusahaan` WRITE;
/*!40000 ALTER TABLE `sekilas_perusahaan` DISABLE KEYS */;
INSERT INTO `sekilas_perusahaan` VALUES (1,'sekilas-perusahaan','cv-sudirman_com_arsip_(2)1.jpg','BPA (Badan Pengelola Aset ) KM UII adalah sebuah organisasi yang telah berkembang yang awal mulanya disebut Tim Kerja Pengelola Aset SCC UII yang pertama kali dibentuk tahun 2014. BPA KM UII dibentuk didasari kepentingan jangka Panjang Lembaga yaitu dalam upaya mewujudkan kemandirian Lembaga KM UII, serta proses perbaikan sistem kelembagaan sehingga dapat meningkatkan tata kelola organisasi .Usaha BPA yang awal mulanya hanya mengandalkan penyewaan SCC , perkembangan merambah pada usaha-usaha lain diantaranya pengelolaan jas almamater, layanan sistem informasi ,dan usaha strategis lainnya.\r\n');
/*!40000 ALTER TABLE `sekilas_perusahaan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slider` (
  `id_slider` int(11) NOT NULL AUTO_INCREMENT,
  `slug_slider` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `sub_judul` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id_slider`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider`
--

LOCK TABLES `slider` WRITE;
/*!40000 ALTER TABLE `slider` DISABLE KEYS */;
INSERT INTO `slider` VALUES (15,'ss','ss','wwww','salestock.jpg');
/*!40000 ALTER TABLE `slider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_notes`
--

DROP TABLE IF EXISTS `t_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_notes` (
  `date` date NOT NULL,
  `notes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_notes`
--

LOCK TABLES `t_notes` WRITE;
/*!40000 ALTER TABLE `t_notes` DISABLE KEYS */;
INSERT INTO `t_notes` VALUES ('2018-07-24','testt'),('2018-07-25','uhjhhh'),('2018-07-10','ddd'),('2018-07-04','test'),('2018-07-08','hahahaha'),('2018-09-29','gath / kenu'),('2019-02-07','danur lintang'),('2019-02-08','cek cek');
/*!40000 ALTER TABLE `t_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `slug_user` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (4,'admin','admin','d033e22ae348aeb5660fc2140aec35850c4da997','rikyjawaa@yahoo.com'),(5,'pus','PUS','d87304e940ace4e2b9d7c43a277a6ec19c2aeb94','sccunisi@gmail.com'),(6,'psp','PSP','b373e56b141c8f60566d3af138dc6936f0482959','danurlintang05@gmail.com'),(7,'test','test','6b675b949629b35ee86e79094a8a13797e3507e2','test@gmail.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visi_misi`
--

DROP TABLE IF EXISTS `visi_misi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visi_misi` (
  `id_visi_misi` int(11) NOT NULL AUTO_INCREMENT,
  `slug_visi_misi` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  PRIMARY KEY (`id_visi_misi`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visi_misi`
--

LOCK TABLES `visi_misi` WRITE;
/*!40000 ALTER TABLE `visi_misi` DISABLE KEYS */;
INSERT INTO `visi_misi` VALUES (1,'visi-misi','visimisi.png','Visi\r\nMenjadi organisasi yang secara berkelanjutan mengeangkandiri dan memberikan manfaat kepada umat dalam rangkmewujudkan tujuan Lembaga KM UII melalui pengellaan asset Lembaga yang professional,akunabel dan transparan\r\n\r\nMisi\r\nMengoptimalkan pengelolaan asset lembaga berdasar pnsip-prinsip badan usaha yang professional dan akuntabel\r\nMemrkuat sumber daya keuangan Lembaga KM UII melalui sumbangan bagi hasil usaha\r\nMewujudkan SDM anggota yang unggul ,terampil , professional dalam menjalankan fungsi perannya sebagai pengelola asset Lembaga\r\nMengoptimalkan pemanfaatkan sistem informasi,kearsipan dan administrasi data organisasi\r\nMenyelenggarakan usaha-usaha yang mampu mciptakemanfaatan umum lainnya bagi public mahasiswa dan umum\r\n');
/*!40000 ALTER TABLE `visi_misi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-13  2:29:47
