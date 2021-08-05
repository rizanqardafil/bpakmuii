-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 05, 2021 at 12:10 PM
-- Server version: 8.0.26-0ubuntu0.20.04.2
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bpakmuii_acid`
--

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `id_config` int NOT NULL,
  `namaweb` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `keyword` text NOT NULL,
  `metatext` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`id_config`, `namaweb`, `email`, `telepon`, `logo`, `icon`, `keyword`, `metatext`) VALUES
(1, 'Badan Pengelola Aset KM UII', 'bpa.km.uii@gmail.com', '-', 'BPA_Kuning-min_(2).png', 'LogoBPATerbaru.jpg', 'industri, Gedung, Pernikahan, event ,sewa gedung, kaliurang, SCC UII,UII,universitas islam indonesia', '');

-- --------------------------------------------------------

--
-- Table structure for table `galeri_foto`
--

CREATE TABLE `galeri_foto` (
  `id_galeri_foto` int NOT NULL,
  `slug_galeri_foto` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galeri_foto`
--

INSERT INTO `galeri_foto` (`id_galeri_foto`, `slug_galeri_foto`, `judul`, `image`, `kategori`) VALUES
(38, '39-penyewaan-scc-oleh-club-mobil', 'Penyewaan SCC oleh club mobil', '1.jpg', '2'),
(39, 'ruang-kamar', 'Ruang kamar', '102673.jpg', '2');

-- --------------------------------------------------------

--
-- Table structure for table `galeri_kategori`
--

CREATE TABLE `galeri_kategori` (
  `id_galeri_kategori` int NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `slug_galeri_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galeri_kategori`
--

INSERT INTO `galeri_kategori` (`id_galeri_kategori`, `nama_kategori`, `slug_galeri_kategori`) VALUES
(1, 'Orientasi', 'orientasi'),
(2, 'SCC Hebat', 'scc-hebat');

-- --------------------------------------------------------

--
-- Table structure for table `galeri_video`
--

CREATE TABLE `galeri_video` (
  `id_galeri_video` int NOT NULL,
  `slug_galeri_video` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `link_video` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galeri_video`
--

INSERT INTO `galeri_video` (`id_galeri_video`, `slug_galeri_video`, `judul`, `link_video`) VALUES
(5, '5-trailer-wedding-in-silent-webseries', '[TRAILER] Wedding In SIlent #Webseries', '<iframe width=\"360\" height=\"200\" src=\"https://www.youtube.com/embed/k76SWgBtVo4\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(6, '6-episode-1-wedding-in-silent-webseries', '[EPISODE 1] Wedding In Silent #Webseries', '<iframe width=\"360\" height=\"200\" src=\"https://www.youtube.com/embed/0Nmh3s5nYXw\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(7, 'episode-2-wedding-in-silent-webseries', '[EPISODE 2] Wedding In Silent #Webseries', '<iframe width=\"360\" height=\"200\" src=\"https://www.youtube.com/embed/5NZo-IDzZ_8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(8, '10-episode-3-final-wedding-in-silent-web', '[EPISODE 3/ FINAL ] Wedding In Silent #Web', '<iframe width=\"360\" height=\"200\" src=\"https://www.youtube.com/embed/VBF5j0Q7WmE\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(9, '10-unwanted-gift-short-moviebpakmuii', 'Unwanted Gift \r\n#Short MovieBPAKMUII', '<iframe width=\"360\" height=\"200\" src=\"https://www.youtube.com/embed/oTQSkegZirQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(10, '2020-open-recruitment-badan-pengelola-aset-km-uii', 'Digital Branding Dalam Eksistensi Ekonomi Kreatif ', '<iframe width=\"360\" height=\"200\" src=\"https://www.youtube.com/embed/cfxG01c5Aa8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>');

-- --------------------------------------------------------

--
-- Table structure for table `industri_besar`
--

CREATE TABLE `industri_besar` (
  `id_industri_besar` int NOT NULL,
  `slug_industri_besar` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `industri_besar`
--

INSERT INTO `industri_besar` (`id_industri_besar`, `slug_industri_besar`, `judul`, `image`, `deskripsi`) VALUES
(10, '71-pintu-air', 'Pintu Air', 'CVSUDIRMAN_ARSIP1.png', '<p>SPAREPART PINTU AIR&nbsp;<strong>PDAM,&nbsp;</strong>Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten</em></strong></p>\r\n<p>&nbsp;</p>'),
(11, '71-main-hole', 'Main Hole', 'PHOTO-2018-07-07-20-48-251.jpg', '<p>Diameter dan model dapat dipesan by request</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten</em></strong></p>'),
(12, '71-grill-jalan', 'Grill jalan', 'PHOTO-2018-07-12-12-33-18.jpg', '<p>besar kecil dan&nbsp;&nbsp;model dapat dipesan by request</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten</em></strong></p>'),
(13, '71-roda-rolli-roda-kereta-tebukelapa-sawit', 'Roda Rolli (Roda kereta tebu/kelapa sawit)', 'PHOTO-2018-07-07-20-48-031.jpg', '<p>Roda kereta Diameter dan model dapat dipesan by request</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten</em></strong></p>'),
(14, '71-roof-drain', 'Roof Drain', 'PHOTO-2018-07-07-20-57-011.jpg', '<p>Bentuk dan model dapat dipesan by request hubungi kami .</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten</em></strong></p>'),
(15, '71-mesin-penggiling-bakso', 'Mesin Penggiling Bakso', 'PHOTO-2018-07-07-20-50-202.jpg', '<p>Mesin pembuat bakso diameter dapat di pesan by request , hubungi kami..</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),
(16, '71-pulley', 'Pulley ', 'c4c6078b-66a1-4231-bc21-58f1831656542.JPG', '<p>Type pulley dan&nbsp;&nbsp;diameter dapat di pesan by request , hubungi kami..</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),
(17, '71-gear-gigi', 'Gear gigi', 'PHOTO-2018-07-07-20-49-061.jpg', '<p>Type dan mata gigi.&nbsp;&nbsp;Diameter dapat di pesan by request , hubungi kami..</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),
(18, '71-gear-dryer', 'Gear Dryer', 'PHOTO-2018-07-07-20-48-481.jpg', '<p>Type diameter dan jumlah gigi dapat di pesan by request , hubungi kami..</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),
(19, 'cruiser-cutting', 'Cruiser Cutting', 'PHOTO-2018-07-07-21-01-13.jpg', '<p>Mata Pisau,&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),
(20, 'cover-impeller', 'Cover Impeller', 'PHOTO-2018-07-11-09-00-43.jpg', '<p>Penutup Impeller,&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),
(23, 'pulley-belt', 'Pulley Belt', 'PHOTO-2018-07-07-20-55-11.jpg', '<p>Type DanUkuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),
(25, 'mainhole-jalan', 'Mainhole Jalan', 'PHOTO-2018-07-07-20-45-51.jpg', '<p>Model Dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),
(29, 'mainhole-jalan', 'Mainhole Jalan', 'PHOTO-2018-07-07-20-59-14.jpg', '<p>&nbsp;</p>\r\n<p>Model atau bentuk dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>\r\n<p>&nbsp;</p>'),
(31, 'pemecah-batu', 'Pemecah Batu', 'PHOTO-2018-07-07-20-52-30.jpg', '<p>Menyediakan Sparepart Mesin Pemecah batu dan&nbsp;&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>\r\n<p>&nbsp;</p>'),
(32, 'balancer', 'Balancer  ', 'PHOTO-2018-07-11-09-06-47.jpg', '<p>Pemberat&nbsp;Model atau bentuk dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>\r\n<p>&nbsp;</p>'),
(33, 'balancer', 'Balancer  ', 'PHOTO-2018-07-11-09-07-58.jpg', '<p>Pemberat,&nbsp; Model atau bentuk dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>\r\n<p>&nbsp;</p>'),
(34, 'balancer', 'Balancer  ', 'PHOTO-2018-07-11-10-13-34.jpg', '<p>Pemberat, model&nbsp;&nbsp;bentuk dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>\r\n<p>&nbsp;</p>'),
(35, 'balancer', 'Balancer  ', 'PHOTO-2018-07-11-10-11-09.jpg', '<p>Pemberat, Model atau bentuk dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>\r\n<p>&nbsp;</p>'),
(37, 'roda-rolli-kereta-tebukereta-kelapa-sawit', 'Roda Rolli (kereta tebu/kereta kelapa sawit)', '1041c445-0952-4174-8221-2a743842db59.JPG', '<p>Model dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>\r\n<p>&nbsp;</p>'),
(38, '39-pulley-belt-generator-yanmar-8x35', 'Pulley Belt Generator Yanmar 8X35', 'ff8baa57-42c9-46d0-826c-fe8226e56610.JPG', '<p>Type dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>\r\n<p>&nbsp;</p>'),
(39, '39-pulley-belt-generator-yanmar-13', 'Pulley Belt Generator Yanmar 13', 'f14f6c91-2c31-477e-a81e-11aafe6f7f0c.JPG', '<p>Type&nbsp;dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>\r\n<p>&nbsp;</p>'),
(40, 'gear-gigi', 'Gear (Gigi)', 'ebfcb8ba-2ce9-47b9-8b77-91f1c47dd015.JPG', '<p>Gear Type&nbsp;dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>\r\n<p>&nbsp;</p>'),
(41, 'pulley-belt-generator-yanmar', 'Pulley Belt Generator Yanmar', 'ea8f961b-fd07-4f0d-8678-fbf1e9dcb1aa.JPG', '<p>Type&nbsp;dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>\r\n<p>&nbsp;</p>'),
(42, 'pulley-belt-c3-30inch', 'Pulley Belt C3 30Inch', 'e146cc62-00f0-4a07-acca-4dea7de304b9.JPG', '<p>Type&nbsp;dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>\r\n<p>&nbsp;</p>'),
(43, 'sparepart-mesin-tenun', 'Sparepart Mesin Tenun', 'e5f2650a-021c-4fd9-80f6-342b615d6993.JPG', '<p>Type&nbsp;dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>\r\n<p>&nbsp;</p>'),
(44, '44-roda-karet-kapasitas-150kg', 'Roda Karet Kapasitas 150KG', 'df69039d-f49a-4590-ba96-a4bbe3600dab.JPG', '<p>Type kapasitas dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),
(45, 'pulley-belt-generator-yanmar', 'Pulley Belt Generator Yanmar', 'db73dcbb-bc77-410b-8b38-809d09fda958.JPG', '<p>Type dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),
(46, 'flange', 'Flange', 'ce1bceb9-66e9-4a90-89aa-4c110b3b0bd5.JPG', '<p>Type&nbsp;,Bentuk&nbsp;dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),
(47, 'flange', 'Flange', 'c5a5b835-5596-4702-863d-61daffbb09bf.JPG', '<p>Type,bentuk dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),
(48, 'pulley-belt', 'Pulley Belt', 'b026178d-2b38-4b45-a476-4435cb1ec3cf.JPG', '<p>Type dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),
(49, 'pulley-belt', 'Pulley Belt', 'b3a53f8b-aaf5-4877-a04c-f76122ba21b1.JPG', '<p>Type&nbsp; dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),
(50, 'kowi-wadah-masak-alumuniumkuningantembaga-etc', 'kowi (Wadah Masak Alumunium,Kuningan,Tembaga .etc)', '5548460a-da7c-40c7-8abc-a9f6b3166fd5.JPG', '<p>Type, kapasitas dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),
(51, 'sparepart-mesin-tenun', 'Sparepart Mesin Tenun', 'aa8036ae-35b8-47b6-bc67-dd093b5a9732.JPG', '<p>Type&nbsp; dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),
(52, 'manifole-exhaust', 'Manifole Exhaust', '5bd4dc30-e0c5-431c-93ef-02fad58b4765.JPG', '<p>Type&nbsp; dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),
(53, 'sparepart-pompa', 'SparePart Pompa ', '03999697-01a9-43e6-8735-53e9b1334dff.JPG', '<p>housing pump Type kapasitas dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),
(54, 'roll-mill-gilingan-padi', 'Roll Mill (Gilingan Padi)', '638726f5-e9ff-4448-b51e-bce4ea26b562.JPG', '<p>Type, kapasitas dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),
(55, 'pulley-belt-generator-yanmar', 'Pulley Belt Generator Yanmar', '384466f5-a52c-4aaa-946c-46fa7cf43af2.JPG', '<p>Type, kapasitas dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),
(56, 'pondasi-kaki-mickursilampu-etc', ' Pondasi kaki mic,Kursi,Lampu. Etc', '89344d1a-7cac-4842-929d-260861bbfd10.JPG', '<p>Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),
(57, 'sparepart-pompa-air', 'SparePart Pompa Air', '73163f5d-6113-4814-93ea-0b608c6f9171.JPG', '<p>Type, kapasitas dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),
(58, 'gear-gigi-pintu-air', 'Gear (Gigi) Pintu Air', '7880c1b0-35ce-4fae-bc62-5401ebe8d025.JPG', '<p>Type,&nbsp; dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),
(59, 'cover-strainer-cover-block-beton', 'Cover Strainer / Cover Block Beton', '7094d673-8631-4880-ad0d-e143697e9bb3.JPG', '<p>Type, kapasitas dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),
(60, 'sparepart-mesin-tenun', 'Sparepart Mesin Tenun', '4109dafd-ed43-487a-bf3c-5bf8699e8018.JPG', '<p>Type,&nbsp; Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),
(61, 'housing-roof-drain-set-dengan-penutup', 'Housing roof Drain (Set Dengan Penutup)', '2384c5cd-591c-4525-9c8f-5aebde3c323b.JPG', '<p>Type, Diameter&nbsp;dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),
(62, 'pulley-belt', 'Pulley Belt', '73d8e262-9564-4077-a3ab-bd2d7659c237.JPG', '<p>Type, Diameter&nbsp;dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),
(63, 'pulley-ratna-belt-generator-yanmar-r1-75', 'Pulley Ratna Belt Generator Yanmar R1 75 ', '64f72f37-d0b6-4a14-9a21-bf447076f67a.JPG', '<p>Type, Diameter&nbsp;dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),
(64, 'cover-block-beton', 'Cover Block Beton', '7d67714a-54dc-43fa-87d7-60570d52502b.JPG', '<p>Type, Diameter&nbsp;dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),
(65, 'pondasi-pintu-mesin', 'Pondasi Pintu Mesin', '6f662eda-62b8-48d4-947a-e80e01d11bfa.JPG', '<p>Type, Diameter&nbsp;dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),
(66, 'pulley-belt-generator-yanmar-8x20', 'Pulley Belt Generator Yanmar 8X20', '5c29c29d-4625-4a4a-84d3-4bcb3b33f938.JPG', '<p>Type, Diameter&nbsp;dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),
(67, 'pulley-kawat-bendrat', 'Pulley Kawat Bendrat', '3dd8c93f-0cb5-4c39-bfbb-394c6d3fccda.JPG', '<p>Type, Diameter&nbsp;dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),
(68, 'sparepart-mesin-tenun', 'Sparepart Mesin Tenun', '0c359167-2971-4a57-8391-5582e3cc8f3d.JPG', '<p>Type, Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),
(69, 'pulley-belt-generator-yanmar-11rd-85', 'Pulley Belt Generator Yanmar 11RD-85', '0e61156a-53ea-4a3f-b286-80d98fadc18a.JPG', '<p>Type, Diameter&nbsp;dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),
(71, 'bahan-couple', 'Bahan Couple', 'f684e60c-8ad4-4470-a252-72045fe89392.JPG', '<p>Model, Diameter&nbsp;dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),
(72, 'body-pump', 'Body Pump', 'PHOTO-2018-07-11-09-50-381.jpg', '<div class=\"col-md-12\">\r\n<p>&nbsp;</p>\r\n<p>Type Pompa dapat di pesan by request , hubungi kami..</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>\r\n<table class=\"table table-striped table-bordered table-hover\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>&nbsp;</p>'),
(73, 'pondasi-depan-pompa', 'Pondasi Depan Pompa', 'PHOTO-2018-07-11-09-09-361.jpg', '<p>Model&nbsp;dapat di pesan by request , hubungi kami..</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),
(74, 'body-pump-air-with-impeller', 'Body Pump air with impeller', 'PHOTO-2018-07-11-10-01-501.jpg', '<p>Model pompa air dapat di pesan by request , hubungi kami..</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),
(75, 'mixing-aspal', 'Mixing Aspal ', 'PHOTO-2018-07-12-12-18-28.jpg', '<p>Sparepart Aspal dapat di pesan by request , hubungi kami..</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),
(76, 'body-hydrant', 'Body Hydrant', 'PHOTO-2018-07-12-12-27-40.jpg', '<p>&nbsp;Diameter dapat di pesan by request , hubungi kami..</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),
(77, 'sparepart-sisir', 'Sparepart Sisir', 'PHOTO-2018-07-12-12-19-31.jpg', '<p>&nbsp;Type Dapat di pesan by request , hubungi kami..</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),
(78, 'pulley', 'Pulley ', 'PHOTO-2018-07-12-12-21-51.jpg', '<p>Type pulley dan&nbsp;&nbsp;diameter dapat di pesan by request , hubungi kami..</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),
(79, 'cover-pompa-air', 'Cover Pompa air', 'PHOTO-2018-07-11-09-22-041.jpg', '<p>Bentuk dan ukuran&nbsp;dapat di pesan by request , hubungi kami..</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),
(80, 'cover-pompa-air', 'Cover Pompa air', 'PHOTO-2018-07-11-09-15-381.jpg', '<p>Bentuk dan ukuran&nbsp;dapat di pesan by request , hubungi kami..</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),
(81, 'cover-belakang-electro-motor', 'Cover Belakang Electro motor', 'PHOTO-2018-07-11-10-06-311.jpg', '<p>Bentuk dan ukuran&nbsp;dapat di pesan by request , hubungi kami..</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),
(82, 'couple-mesin', 'Couple Mesin', 'PHOTO-2018-07-11-09-40-411.jpg', '<p>Bentuk dan ukuran diameter dapat di pesan by request , hubungi kami..</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),
(83, 'grill-jalan', 'Grill Jalan', 'PHOTO-2018-07-12-12-24-36.jpg', '<p>Bentuk dan ukuran&nbsp;dapat di pesan by request , hubungi kami..</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),
(84, 'pulley', 'pulley ', 'PHOTO-2018-07-16-09-10-53.jpg', '<p>Diameter&nbsp;ukuran&nbsp;dapat di pesan by request , hubungi kami..</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),
(85, 'komponen-drainase', 'Komponen Drainase', 'PHOTO-2018-07-14-09-58-02.jpg', '<p>Bentuk dan ukuran&nbsp;dapat di pesan by request , hubungi kami..</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>');

-- --------------------------------------------------------

--
-- Table structure for table `industri_kecil`
--

CREATE TABLE `industri_kecil` (
  `id_industri_kecil` int NOT NULL,
  `slug_industri_kecil` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `industri_kecil`
--

INSERT INTO `industri_kecil` (`id_industri_kecil`, `slug_industri_kecil`, `judul`, `image`, `deskripsi`) VALUES
(15, 'wajan', 'Wajan ', 'PHOTO-2018-07-11-09-43-41.jpg', '<p>Pengorengan . Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),
(16, 'hot-plate', 'Hot Plate', 'PHOTO-2018-07-07-20-58-00.jpg', '<p>Wadah panggang steak.&nbsp;Ukuran Dan Motif Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),
(17, 'kursi-antik', 'Kursi Antik', 'PHOTO-2018-07-07-20-53-02.jpg', '<p>Motif Ukiran Bisa Memilih Atau Membuat Sendiri Dan Jenis Kayu . Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),
(18, 'kaki-meja-antik', 'Kaki Meja Antik', 'PHOTO-2018-07-07-20-49-49.jpg', '<p>Motif Bisa Menyesuaikan Customer. Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),
(19, 'set-meja-antik', 'Set Meja Antik ', 'PHOTO-2018-07-07-20-46-30.jpg', '<p>Custom Meja Antik&nbsp;Model atau bentuk dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>\r\n<p>&nbsp;</p>'),
(20, 'barbel-jreg', 'BARBEL Jreg', 'ee6a8055-b044-4ed7-b671-c99dbf674bf6.JPG', '<p>Type, Diameter&nbsp;dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),
(21, 'covet-tiang-lampu-antik', 'Covet Tiang Lampu (antik)', '093d87e4-15da-4120-a639-9cf286eb9847.JPG', '<p>Type, Diameter&nbsp;dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),
(22, 'barbel-tangan', 'Barbel Tangan', 'ccdfb517-c5a7-42be-81e3-3d2a7e7728ce.JPG', '<p>Type, Diameter&nbsp;dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),
(23, 'barbel-balok-pemberat-5kg10kg', 'Barbel Balok (pemberat) 5kg/10kg', '0035505e-056e-4690-9101-1b2b22be9852.JPG', '<p>Type, beerat Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),
(24, 'barbel-jreg-10kg', 'BARBEL Jreg 10kg', '6822b56b-aea6-491b-a21e-40293448a859.JPG', '<p>Model, Diameter&nbsp;dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),
(25, 'barbel-jreg-5kg', 'Barbel jreg 5kg', 'a7c0271a-e817-42df-9021-2d5683afb169.JPG', '<p>Model, Diameter&nbsp;dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),
(26, 'barbel-tangan-10kg', 'Barbel Tangan 10kg', 'PHOTO-2018-07-07-20-53-561.jpg', '<p>Model, Diameter&nbsp;dan&nbsp;Ukuran Bisa Dipesan By Request.</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper,</em></strong><strong><em>Klaten</em></strong></p>\r\n<p><strong><em>Jawa Tengah&nbsp;</em></strong></p>\r\n<p><strong><em>Indonesia</em></strong></p>\r\n<p>&nbsp;</p>'),
(27, 'barbel-pemberat', 'Barbel Pemberat', 'PHOTO-2018-07-12-12-23-19.jpg', '<p>Bentuk dan ukuran&nbsp;dapat di pesan by request , hubungi kami..</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),
(28, 'cetakan-kue', 'Cetakan Kue ', 'PHOTO-2018-07-14-08-48-56.jpg', '<p>Bentuk dan ukuran&nbsp;dapat di pesan by request , hubungi kami..</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>'),
(29, 'barbel-pemberat-25kg', 'Barbel Pemberat 2,5kg', 'PHOTO-2018-07-14-08-51-45.jpg', '<p>Bentuk dan ukuran berat dapat di pesan by request , hubungi kami..</p>\r\n<p><strong><em>Telp/WA: 081229867117, 081221687900,</em></strong><br /><strong><em><a href=\"mailto:cvsudirmanlogam@gmail.com\">email:&nbsp;</a><a href=\"mailto:cvsudirmanlogam@gmail.com\">cvsudirmanlogam@gmail.com</a></em></strong></p>\r\n<p><strong><em>instagram : @cor.logam</em></strong></p>\r\n<p><strong><em>Alamat: bakalan ,ceper ,Klaten.</em></strong></p>');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id_kegiatan` int NOT NULL,
  `slug_kegiatan` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `sub_judul` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kegiatan`
--

INSERT INTO `kegiatan` (`id_kegiatan`, `slug_kegiatan`, `judul`, `sub_judul`, `image`) VALUES
(27, 'yes-we-are-open', 'Yes, We Are Open !', 'BPA KM UII kembali membuka seluruh produknya seperti SCC dan SAC pada tahun 2021 ! Segera hubungi customer service untuk mendapatkan harga spesial dari setiap produk BPA KM UII !', 'Copy_of_Copy_of_Untitled.jpg'),
(28, '28-bpa-km-uii-sukses-mengadakan-creativepreneurtalks-2020', 'BPA KM UII Sukses Mengadakan CreativePreneurTalks 2020 !', 'Sabtu ( 31/10/2020), tim magang BPA KM UII sukses mengadakan webinar CreativePreneurTalks 2020 dengan tema \" Digital Branding Dalam Eksistensi Ekonomi Kreatif \" ', 'Copy_of_Untitled1.jpg'),
(29, 'naruto', 'Naruto', 'naruto', 'naruto.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `id_kontak` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kontak`
--

INSERT INTO `kontak` (`id_kontak`, `name`, `email`, `subject`, `message`, `date`) VALUES
(1, 'test', 'test@cv-sudirman.com', 'test', 'tested', '2018-06-04'),
(2, 'testing', 'testing@cv-sudirman.com', 'testing', 'testing', '2018-06-04');

-- --------------------------------------------------------

--
-- Table structure for table `organisasi`
--

CREATE TABLE `organisasi` (
  `id_organisasi` int NOT NULL,
  `slug_organisasi` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `pesan` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `organisasi`
--

INSERT INTO `organisasi` (`id_organisasi`, `slug_organisasi`, `nama`, `jabatan`, `pesan`, `image`) VALUES
(13, '13-anggota-bpa', 'Anggota BPA', 'Seluruh anggota', 'Periode 2018', 'okimg_0062(4).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pesan_direktur`
--

CREATE TABLE `pesan_direktur` (
  `id_pesan_direktur` int NOT NULL,
  `slug_pesan_direktur` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesan_direktur`
--

INSERT INTO `pesan_direktur` (`id_pesan_direktur`, `slug_pesan_direktur`, `image`, `deskripsi`) VALUES
(1, 'pesan-direktur', 'direktur_cvsudirman.JPG', 'Terima kasih atas ketertarikan dan kepercayaan Anda kepada CV-SUDIRMAN . Melalui website ini, kami bertujuan untuk menyediakan informasi mengenai CV-SUDIRMAN dan rangkaian kegiatan serta layanan terbaik untuk memberikan layanan jasa pengecoran logam.\r\n<br><br><br>\r\nCV-SUDIRMAN didirikan tidak semata-mata hanya sekedar mendirikan tapi mampu menjadi pemicu (trigger) bagi UMKM (Usaha Mikro Kecil dan Menengah) khususnya dan menggerakkan aktivitas ekonomi masyarakat pada umumnya.\r\n<br><br><br>\r\nSangat penting bagi kami untuk dapat memberikan akses yang mudah bagi Anda dalam mendapatkan layanan jasa pengecoran yang optimal dari CV-SUDIRMAN. Untuk itu Anda dapat menghubungi kami  melalui chat online secara langsung dijam kerja melalui web ini atau melalui customer care kami .');

-- --------------------------------------------------------

--
-- Table structure for table `sekilas_perusahaan`
--

CREATE TABLE `sekilas_perusahaan` (
  `id_sekilas_perusahaan` int NOT NULL,
  `slug_sekilas_perusahaan` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sekilas_perusahaan`
--

INSERT INTO `sekilas_perusahaan` (`id_sekilas_perusahaan`, `slug_sekilas_perusahaan`, `image`, `deskripsi`) VALUES
(1, 'sekilas-perusahaan', 'cv-sudirman_com_arsip_(2)1.jpg', 'BPA (Badan Pengelola Aset ) KM UII adalah sebuah organisasi yang telah berkembang yang awal mulanya disebut Tim Kerja Pengelola Aset SCC UII yang pertama kali dibentuk tahun 2014. BPA KM UII dibentuk didasari kepentingan jangka Panjang Lembaga yaitu dalam upaya mewujudkan kemandirian Lembaga KM UII, serta proses perbaikan sistem kelembagaan sehingga dapat meningkatkan tata kelola organisasi .Usaha BPA yang awal mulanya hanya mengandalkan penyewaan SCC , perkembangan merambah pada usaha-usaha lain diantaranya pengelolaan jas almamater, layanan sistem informasi ,dan usaha strategis lainnya.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id_slider` int NOT NULL,
  `slug_slider` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `sub_judul` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id_slider`, `slug_slider`, `judul`, `sub_judul`, `image`) VALUES
(15, 'ss', 'ss', 'wwww', 'salestock.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `t_notes`
--

CREATE TABLE `t_notes` (
  `date` date NOT NULL,
  `notes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_notes`
--

INSERT INTO `t_notes` (`date`, `notes`) VALUES
('2018-07-24', 'testt'),
('2018-07-25', 'uhjhhh'),
('2018-07-10', 'ddd'),
('2018-07-04', 'test'),
('2018-07-08', 'hahahaha'),
('2018-09-29', 'gath / kenu'),
('2019-02-07', 'danur lintang'),
('2019-02-08', 'cek cek'),
('2019-05-18', 'HMTKTT UII'),
('2019-05-19', 'HMTKTT UII'),
('2019-05-11', 'HMJ EKIS UII'),
('2019-05-12', 'HMJ EKIS UII'),
('2019-05-04', 'LEM UII'),
('2019-05-05', 'LEM UII'),
('2019-05-01', 'MBUII'),
('2019-08-24', 'Wedding a/n Andit  Bagas'),
('2019-08-31', 'Makrab HM Sejarah UNY'),
('2019-08-04', 'Makrab Amikom Yogyakarta'),
('2019-08-05', 'Makrab Amikom Yogyakarta'),
('2019-08-18', 'Acara 17 an warga Ngipiksari');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int NOT NULL,
  `slug_user` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `slug_user`, `username`, `password`, `email`) VALUES
(8, 'rafi', 'rafi', 'b5c3e091851f50070f5d8e12c5d3baec5c728043', 'rafi@testaja.com'),
(9, 'andri', 'Andri', '666013faae6e6ba8fcde2b5e1c9d874a41a76db3', 'andri@cobaaja.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `name`, `slug_user`, `username`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Andri', '1-andri', 'andriwahyu', 'andri123@gmail.com', '$2y$10$dMktqSY3flAIveYqSAYu.OwE/NG.ceUyq/R7lpE7VjAM/JfsZnRhe', '2021-08-04 20:34:13', '2021-08-04 23:34:39'),
(3, 'Syamilun', '3-syamilun', 'syamilan', 'syamil@gmail.com', '$2y$10$VRAZYVU42jWoYA5fk3gRsOdZM/xbHVa5ycItJrkkmL7pOp0h94WR.', '2021-08-04 23:53:51', '2021-08-04 23:53:51');

-- --------------------------------------------------------

--
-- Table structure for table `visi_misi`
--

CREATE TABLE `visi_misi` (
  `id_visi_misi` int NOT NULL,
  `slug_visi_misi` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visi_misi`
--

INSERT INTO `visi_misi` (`id_visi_misi`, `slug_visi_misi`, `image`, `deskripsi`) VALUES
(1, 'visi-misi', 'visimisi.png', 'Visi\r\nMenjadi organisasi yang secara berkelanjutan mengeangkandiri dan memberikan manfaat kepada umat dalam rangka mewujudkan tujuan Lembaga KM UII melalui pengelolaan asset Lembaga yang professional,akuntabel dan transparan\r\n\r\nMisi\r\n1. Mengoptimalkan pengelolaan asset lembaga berdasarkan prinsip-prinsip badan usaha yang professional dan akuntabel\r\n2. Memperkuat sumber daya keuangan Lembaga KM UII melalui sumbangan bagi hasil usaha\r\n3. Mewujudkan SDM anggota yang unggul ,terampil , professional dalam menjalankan fungsi perannya sebagai pengelola asset Lembaga\r\n4. Mengoptimalkan pemanfaatkan sistem informasi,kearsipan dan administrasi data organisasi\r\n5. Menyelenggarakan usaha-usaha yang mampu mciptakemanfaatan umum lainnya bagi public mahasiswa dan umum\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id_config`);

--
-- Indexes for table `galeri_foto`
--
ALTER TABLE `galeri_foto`
  ADD PRIMARY KEY (`id_galeri_foto`);

--
-- Indexes for table `galeri_kategori`
--
ALTER TABLE `galeri_kategori`
  ADD PRIMARY KEY (`id_galeri_kategori`);

--
-- Indexes for table `galeri_video`
--
ALTER TABLE `galeri_video`
  ADD PRIMARY KEY (`id_galeri_video`);

--
-- Indexes for table `industri_besar`
--
ALTER TABLE `industri_besar`
  ADD PRIMARY KEY (`id_industri_besar`);

--
-- Indexes for table `industri_kecil`
--
ALTER TABLE `industri_kecil`
  ADD PRIMARY KEY (`id_industri_kecil`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id_kegiatan`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indexes for table `organisasi`
--
ALTER TABLE `organisasi`
  ADD PRIMARY KEY (`id_organisasi`);

--
-- Indexes for table `pesan_direktur`
--
ALTER TABLE `pesan_direktur`
  ADD PRIMARY KEY (`id_pesan_direktur`);

--
-- Indexes for table `sekilas_perusahaan`
--
ALTER TABLE `sekilas_perusahaan`
  ADD PRIMARY KEY (`id_sekilas_perusahaan`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `visi_misi`
--
ALTER TABLE `visi_misi`
  ADD PRIMARY KEY (`id_visi_misi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `id_config` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `galeri_foto`
--
ALTER TABLE `galeri_foto`
  MODIFY `id_galeri_foto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `galeri_kategori`
--
ALTER TABLE `galeri_kategori`
  MODIFY `id_galeri_kategori` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `galeri_video`
--
ALTER TABLE `galeri_video`
  MODIFY `id_galeri_video` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `industri_besar`
--
ALTER TABLE `industri_besar`
  MODIFY `id_industri_besar` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `industri_kecil`
--
ALTER TABLE `industri_kecil`
  MODIFY `id_industri_kecil` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id_kegiatan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id_kontak` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `organisasi`
--
ALTER TABLE `organisasi`
  MODIFY `id_organisasi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pesan_direktur`
--
ALTER TABLE `pesan_direktur`
  MODIFY `id_pesan_direktur` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sekilas_perusahaan`
--
ALTER TABLE `sekilas_perusahaan`
  MODIFY `id_sekilas_perusahaan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id_slider` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `visi_misi`
--
ALTER TABLE `visi_misi`
  MODIFY `id_visi_misi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
