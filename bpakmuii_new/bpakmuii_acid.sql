-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 21, 2021 at 04:42 PM
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
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id_album` int NOT NULL,
  `nama_album` varchar(255) NOT NULL,
  `slug_album` varchar(255) NOT NULL,
  `path_cover` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id_album`, `nama_album`, `slug_album`, `path_cover`, `created_at`, `updated_at`) VALUES
(1, 'Orientasi Anggota', 'orientasi-anggota', 'cover1.jpg', '2021-08-04 10:13:36', '2021-08-04 10:14:25'),
(2, 'Makrab', 'makrab', 'cover2.png', '2021-08-09 10:13:49', '2021-08-09 10:14:34'),
(3, 'Kunjungan Industri', 'kunjungan-industri', 'cover3.jpg', '2021-08-08 10:13:56', '2021-08-08 10:14:48');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int NOT NULL,
  `judul_artikel` varchar(255) NOT NULL,
  `slug_artikel` varchar(255) NOT NULL,
  `isi_artikel` longtext NOT NULL,
  `path_gambar` varchar(255) NOT NULL,
  `id_penulis` int NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul_artikel`, `slug_artikel`, `isi_artikel`, `path_gambar`, `id_penulis`, `created_at`, `updated_at`) VALUES
(1, 'PPKM Tidak Diperpanjang', 'ppkm-tidak-diperpanjang', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Gravida cum sociis natoque penatibus. Amet nulla facilisi morbi tempus iaculis. Risus nec feugiat in fermentum posuere urna nec tincidunt. Auctor urna nunc id cursus metus aliquam eleifend mi. Dignissim cras tincidunt lobortis feugiat vivamus at augue. Sed enim ut sem viverra aliquet eget sit amet tellus. Tincidunt arcu non sodales neque sodales ut etiam sit. Penatibus et magnis dis parturient montes nascetur. Ipsum a arcu cursus vitae congue mauris. Ultricies integer quis auctor elit sed vulputate mi sit amet. Laoreet non curabitur gravida arcu ac tortor dignissim convallis aenean. Sagittis vitae et leo duis ut. Sodales ut eu sem integer vitae justo eget magna.\r\n\r\nAmet risus nullam eget felis eget. Senectus et netus et malesuada fames ac. Varius quam quisque id diam vel quam elementum pulvinar. In mollis nunc sed id semper risus in. Tristique senectus et netus et. Ipsum dolor sit amet consectetur adipiscing elit duis tristique. Dui faucibus in ornare quam viverra orci sagittis. Lorem ipsum dolor sit amet consectetur adipiscing elit. Nisl vel pretium lectus quam id leo. Vel pretium lectus quam id leo. Nec ultrices dui sapien eget mi. Ultrices sagittis orci a scelerisque purus semper eget duis. Ornare massa eget egestas purus viverra. Ut placerat orci nulla pellentesque dignissim enim.\r\n\r\nPretium fusce id velit ut. Tempus urna et pharetra pharetra massa massa ultricies. Elit ut aliquam purus sit amet luctus. Aenean pharetra magna ac placerat vestibulum lectus. Sit amet nulla facilisi morbi tempus. Tortor pretium viverra suspendisse potenti nullam ac tortor. Gravida in fermentum et sollicitudin ac orci phasellus egestas. Duis ut diam quam nulla. Viverra orci sagittis eu volutpat. Montes nascetur ridiculus mus mauris. Leo in vitae turpis massa sed elementum tempus egestas sed. Congue mauris rhoncus aenean vel elit scelerisque. Quisque sagittis purus sit amet volutpat consequat mauris. Amet aliquam id diam maecenas ultricies mi eget mauris pharetra. Nullam non nisi est sit amet facilisis magna. Consequat semper viverra nam libero justo laoreet sit amet cursus. Enim neque volutpat ac tincidunt vitae. Eget nunc lobortis mattis aliquam faucibus. At ultrices mi tempus imperdiet nulla.\r\n\r\nAc tincidunt vitae semper quis lectus nulla at. Habitasse platea dictumst quisque sagittis purus sit amet volutpat. A condimentum vitae sapien pellentesque. Morbi tristique senectus et netus et. Dolor sit amet consectetur adipiscing elit ut aliquam. Quam lacus suspendisse faucibus interdum. Consectetur lorem donec massa sapien faucibus et molestie. Odio eu feugiat pretium nibh ipsum consequat nisl vel pretium. Ac odio tempor orci dapibus ultrices in iaculis nunc sed. Varius vel pharetra vel turpis nunc eget. Ullamcorper morbi tincidunt ornare massa eget egestas purus viverra. Euismod lacinia at quis risus sed. Praesent elementum facilisis leo vel. At urna condimentum mattis pellentesque id. Mauris ultrices eros in cursus turpis massa tincidunt dui ut.\r\n\r\nUltricies leo integer malesuada nunc vel risus commodo. Habitant morbi tristique senectus et netus et malesuada. In fermentum et sollicitudin ac orci. Malesuada fames ac turpis egestas. Amet justo donec enim diam vulputate. Quisque egestas diam in arcu cursus euismod. Molestie nunc non blandit massa enim nec dui. Fermentum leo vel orci porta non pulvinar neque laoreet suspendisse. Vitae congue eu consequat ac felis donec. In pellentesque massa placerat duis ultricies lacus sed turpis. Congue eu consequat ac felis donec et odio pellentesque diam. Enim diam vulputate ut pharetra sit amet aliquam. Magna fermentum iaculis eu non. Id aliquet risus feugiat in ante metus dictum at tempor. Vel pretium lectus quam id leo in vitae turpis. Sodales ut eu sem integer. Pharetra magna ac placerat vestibulum lectus mauris. Felis bibendum ut tristique et egestas quis ipsum suspendisse ultrices. Velit scelerisque in dictum non consectetur a.', 'artikel1.jpeg', 1, '2021-08-04 13:08:40', NULL),
(2, 'Kuliah Luring', 'kuliah-luring', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fames ac turpis egestas sed tempus urna et pharetra pharetra. Ultricies mi quis hendrerit dolor. Neque vitae tempus quam pellentesque nec nam aliquam sem. Pretium lectus quam id leo in. Mattis ullamcorper velit sed ullamcorper. Eu feugiat pretium nibh ipsum consequat nisl vel pretium lectus. Dui vivamus arcu felis bibendum ut tristique et egestas. Hac habitasse platea dictumst quisque sagittis. Et malesuada fames ac turpis egestas sed tempus urna et.\r\n\r\nNullam eget felis eget nunc lobortis. Scelerisque eu ultrices vitae auctor eu augue. Facilisi morbi tempus iaculis urna id volutpat lacus laoreet. Turpis egestas sed tempus urna et pharetra pharetra massa massa. In iaculis nunc sed augue lacus viverra vitae congue eu. Blandit libero volutpat sed cras ornare arcu dui. Duis ut diam quam nulla porttitor massa id. Nulla porttitor massa id neque aliquam vestibulum morbi blandit cursus. Fringilla phasellus faucibus scelerisque eleifend donec. Duis tristique sollicitudin nibh sit amet commodo nulla. Risus feugiat in ante metus dictum at tempor commodo. Sed augue lacus viverra vitae. Pretium lectus quam id leo in vitae. Tristique senectus et netus et malesuada fames ac. Senectus et netus et malesuada fames ac turpis.\r\n\r\nAliquet nec ullamcorper sit amet risus nullam eget felis eget. Ut ornare lectus sit amet est placerat in. Aliquam eleifend mi in nulla posuere sollicitudin aliquam ultrices. Proin sagittis nisl rhoncus mattis. Consectetur adipiscing elit ut aliquam purus sit amet luctus. Augue interdum velit euismod in pellentesque. Dignissim cras tincidunt lobortis feugiat vivamus at augue eget. Vitae suscipit tellus mauris a diam maecenas sed enim. Amet luctus venenatis lectus magna fringilla urna porttitor rhoncus. Tortor aliquam nulla facilisi cras fermentum odio eu feugiat. Mi bibendum neque egestas congue quisque egestas diam. In hac habitasse platea dictumst. Vitae proin sagittis nisl rhoncus mattis rhoncus urna neque.', 'artikel2.jpg', 1, '2021-08-02 13:08:50', NULL),
(3, 'Bisnis BPA KM UII', 'bisnis-bpa-km-uii', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eu facilisis sed odio morbi quis commodo odio aenean sed. Vel fringilla est ullamcorper eget nulla facilisi etiam dignissim. Enim diam vulputate ut pharetra sit. Donec pretium vulputate sapien nec sagittis aliquam malesuada. Lacus vel facilisis volutpat est velit egestas dui id ornare. Praesent semper feugiat nibh sed pulvinar proin. Mi tempus imperdiet nulla malesuada pellentesque elit. Sit amet consectetur adipiscing elit. Vitae suscipit tellus mauris a diam maecenas sed. Donec massa sapien faucibus et molestie ac feugiat. Sed euismod nisi porta lorem mollis aliquam ut. Morbi tristique senectus et netus et malesuada fames ac turpis.\r\n\r\nNibh praesent tristique magna sit. Enim ut sem viverra aliquet eget sit amet tellus cras. Vitae turpis massa sed elementum. Dis parturient montes nascetur ridiculus. Vitae purus faucibus ornare suspendisse sed nisi lacus sed viverra. Libero nunc consequat interdum varius sit amet mattis. Ullamcorper dignissim cras tincidunt lobortis feugiat vivamus at. Ac placerat vestibulum lectus mauris. Donec pretium vulputate sapien nec sagittis. Fermentum odio eu feugiat pretium nibh ipsum consequat nisl. Cursus vitae congue mauris rhoncus aenean. Egestas integer eget aliquet nibh praesent. At erat pellentesque adipiscing commodo elit at imperdiet. Sit amet consectetur adipiscing elit duis. Sit amet porttitor eget dolor morbi non arcu risus.\r\n\r\nMorbi tristique senectus et netus et malesuada fames ac. Aliquet risus feugiat in ante. Varius morbi enim nunc faucibus a pellentesque sit. Nibh venenatis cras sed felis. Feugiat nibh sed pulvinar proin gravida. Ullamcorper sit amet risus nullam eget felis eget nunc. A arcu cursus vitae congue mauris rhoncus aenean vel elit. Ridiculus mus mauris vitae ultricies leo integer malesuada nunc vel. Egestas sed sed risus pretium quam vulputate. Dolor magna eget est lorem ipsum. Varius morbi enim nunc faucibus a. Quam adipiscing vitae proin sagittis. Sollicitudin tempor id eu nisl nunc mi ipsum faucibus vitae.\r\n\r\nIn hac habitasse platea dictumst quisque sagittis purus sit. Commodo viverra maecenas accumsan lacus. Eget nullam non nisi est sit. Viverra nam libero justo laoreet sit. Sit amet tellus cras adipiscing enim eu turpis egestas pretium. Amet dictum sit amet justo donec enim. Maecenas pharetra convallis posuere morbi leo urna. Porta non pulvinar neque laoreet suspendisse interdum consectetur libero. Lacus sed turpis tincidunt id aliquet risus feugiat in. Suscipit tellus mauris a diam maecenas sed enim ut sem. Arcu felis bibendum ut tristique et. Facilisis gravida neque convallis a cras. Gravida rutrum quisque non tellus orci ac auctor.\r\n\r\nFermentum posuere urna nec tincidunt praesent semper. Adipiscing diam donec adipiscing tristique. Sapien pellentesque habitant morbi tristique senectus et. Velit laoreet id donec ultrices tincidunt. Sollicitudin ac orci phasellus egestas. In iaculis nunc sed augue lacus viverra. Malesuada proin libero nunc consequat interdum varius sit. Augue eget arcu dictum varius duis at consectetur lorem. Augue ut lectus arcu bibendum at varius vel. Neque viverra justo nec ultrices dui sapien. Tortor at auctor urna nunc id cursus metus aliquam. Facilisi etiam dignissim diam quis enim. Venenatis a condimentum vitae sapien pellentesque habitant. Suspendisse interdum consectetur libero id faucibus nisl tincidunt eget. Quam nulla porttitor massa id neque aliquam vestibulum morbi blandit.\r\n\r\nDiam donec adipiscing tristique risus nec feugiat in. Metus dictum at tempor commodo ullamcorper a. Fringilla est ullamcorper eget nulla. Eu non diam phasellus vestibulum lorem sed. Sit amet nisl suscipit adipiscing bibendum est ultricies integer quis. Vel pharetra vel turpis nunc eget lorem dolor sed. Egestas integer eget aliquet nibh praesent tristique. Facilisi morbi tempus iaculis urna id volutpat. Dolor magna eget est lorem ipsum dolor sit amet. Mauris pharetra et ultrices neque ornare aenean euismod elementum nisi. Amet mauris commodo quis imperdiet. Bibendum neque egestas congue quisque egestas diam in arcu cursus. Pulvinar pellentesque habitant morbi tristique senectus et netus.\r\n\r\nVelit aliquet sagittis id consectetur. Lorem dolor sed viverra ipsum nunc aliquet. Mattis aliquam faucibus purus in massa tempor nec feugiat nisl. Enim nulla aliquet porttitor lacus luctus accumsan tortor posuere ac. Nunc pulvinar sapien et ligula ullamcorper. Eu sem integer vitae justo eget magna fermentum iaculis eu. Feugiat nibh sed pulvinar proin. Ipsum nunc aliquet bibendum enim facilisis gravida. Vivamus at augue eget arcu dictum varius duis. Nullam non nisi est sit amet facilisis magna etiam tempor. Sollicitudin tempor id eu nisl.', 'artikel3.jpg', 2, '2021-08-07 13:09:01', NULL),
(4, 'Sehat Dengan Vaksin', 'sehat-dengan-vaksin', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Integer malesuada nunc vel risus commodo. Vivamus at augue eget arcu dictum varius duis at. Netus et malesuada fames ac. Non diam phasellus vestibulum lorem sed risus ultricies. Diam quis enim lobortis scelerisque fermentum dui faucibus in ornare. Malesuada fames ac turpis egestas integer eget aliquet nibh praesent. Sit amet cursus sit amet. Purus sit amet volutpat consequat. Lacus sed viverra tellus in hac habitasse. Consequat id porta nibh venenatis cras. Sed viverra tellus in hac habitasse.\r\n\r\nSed tempus urna et pharetra pharetra massa massa ultricies. Iaculis urna id volutpat lacus laoreet non. At risus viverra adipiscing at in tellus integer. Facilisis mauris sit amet massa vitae. Quis enim lobortis scelerisque fermentum dui faucibus in. Mauris a diam maecenas sed enim ut sem. Mauris augue neque gravida in fermentum et sollicitudin. Tortor aliquam nulla facilisi cras fermentum. Vivamus arcu felis bibendum ut. Vulputate mi sit amet mauris commodo. Eget nunc scelerisque viverra mauris in aliquam sem.\r\n\r\nBibendum enim facilisis gravida neque. Lorem sed risus ultricies tristique nulla aliquet enim tortor at. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu. Aenean vel elit scelerisque mauris pellentesque. Neque aliquam vestibulum morbi blandit cursus risus at. Vivamus at augue eget arcu dictum varius duis at. Mauris ultrices eros in cursus turpis. Gravida cum sociis natoque penatibus et magnis dis. Enim ut sem viverra aliquet. A iaculis at erat pellentesque adipiscing commodo. Rutrum quisque non tellus orci. Augue interdum velit euismod in pellentesque massa placerat duis. Lectus urna duis convallis convallis tellus id interdum. Vel risus commodo viverra maecenas accumsan lacus. In hendrerit gravida rutrum quisque non tellus. Vulputate mi sit amet mauris commodo quis imperdiet massa tincidunt.\r\n\r\nPellentesque adipiscing commodo elit at imperdiet dui. Vel turpis nunc eget lorem dolor sed viverra. Lobortis feugiat vivamus at augue eget arcu dictum varius duis. Accumsan sit amet nulla facilisi morbi tempus iaculis urna id. Ut venenatis tellus in metus vulputate eu scelerisque. Nibh venenatis cras sed felis. Felis eget nunc lobortis mattis aliquam faucibus purus in massa. Tellus mauris a diam maecenas sed enim ut sem viverra. At in tellus integer feugiat scelerisque. Faucibus interdum posuere lorem ipsum dolor. Volutpat ac tincidunt vitae semper quis. Eu tincidunt tortor aliquam nulla facilisi cras fermentum odio. Libero enim sed faucibus turpis in. Morbi tincidunt augue interdum velit. Nunc sed velit dignissim sodales ut eu sem integer vitae. Bibendum at varius vel pharetra vel turpis nunc eget lorem.\r\n\r\nEgestas sed tempus urna et pharetra. Tristique sollicitudin nibh sit amet commodo nulla facilisi nullam. Faucibus in ornare quam viverra. Nunc pulvinar sapien et ligula ullamcorper malesuada proin libero nunc. Neque vitae tempus quam pellentesque nec nam aliquam sem. Interdum consectetur libero id faucibus nisl tincidunt eget. Ultrices neque ornare aenean euismod. Commodo quis imperdiet massa tincidunt. Donec massa sapien faucibus et molestie ac. Faucibus nisl tincidunt eget nullam. Nunc faucibus a pellentesque sit. Lacinia at quis risus sed vulputate odio ut. Volutpat diam ut venenatis tellus in metus. Nisi est sit amet facilisis magna etiam. Morbi quis commodo odio aenean sed adipiscing. Pulvinar elementum integer enim neque volutpat ac tincidunt. Vitae elementum curabitur vitae nunc sed velit dignissim. Imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper malesuada. In dictum non consectetur a erat nam at lectus. Scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique senectus et.\r\n\r\nFelis eget velit aliquet sagittis id consectetur. Cursus euismod quis viverra nibh cras pulvinar mattis. At augue eget arcu dictum varius. Magna fringilla urna porttitor rhoncus dolor purus non enim praesent. Quis varius quam quisque id. Fermentum posuere urna nec tincidunt praesent semper feugiat. Neque ornare aenean euismod elementum nisi quis eleifend. Nisi lacus sed viverra tellus. Ipsum faucibus vitae aliquet nec ullamcorper sit amet. Quisque non tellus orci ac auctor. Ullamcorper eget nulla facilisi etiam dignissim diam quis enim lobortis. Netus et malesuada fames ac turpis egestas integer. Mauris nunc congue nisi vitae suscipit tellus mauris a. Vel fringilla est ullamcorper eget nulla facilisi etiam dignissim. Dictum fusce ut placerat orci nulla pellentesque dignissim enim.\r\n\r\nMassa id neque aliquam vestibulum morbi. Turpis cursus in hac habitasse platea. Libero nunc consequat interdum varius sit. Amet nisl purus in mollis nunc sed id. Non consectetur a erat nam at lectus urna duis. Vitae justo eget magna fermentum. Diam donec adipiscing tristique risus nec feugiat. Mi proin sed libero enim sed faucibus turpis. Non consectetur a erat nam at. Libero volutpat sed cras ornare arcu dui. Massa sed elementum tempus egestas sed. Posuere lorem ipsum dolor sit amet. Lorem mollis aliquam ut porttitor leo a diam sollicitudin tempor. Pellentesque habitant morbi tristique senectus et netus et malesuada. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper sit amet. Sed egestas egestas fringilla phasellus faucibus scelerisque. At risus viverra adipiscing at in tellus integer. Eget velit aliquet sagittis id consectetur purus ut. Ac odio tempor orci dapibus.\r\n\r\nSit amet tellus cras adipiscing. Neque vitae tempus quam pellentesque nec nam aliquam. Dignissim suspendisse in est ante in nibh mauris cursus. Urna condimentum mattis pellentesque id nibh. Integer enim neque volutpat ac. Massa massa ultricies mi quis hendrerit dolor magna. Potenti nullam ac tortor vitae. Risus nec feugiat in fermentum posuere. Massa massa ultricies mi quis hendrerit. Donec et odio pellentesque diam. Donec enim diam vulputate ut pharetra sit amet aliquam id. Amet purus gravida quis blandit turpis cursus in hac habitasse. Tristique et egestas quis ipsum suspendisse ultrices gravida dictum. Condimentum lacinia quis vel eros donec ac odio tempor orci. Massa tempor nec feugiat nisl pretium. Dolor sit amet consectetur adipiscing elit pellentesque.\r\n\r\nMassa tincidunt nunc pulvinar sapien et ligula ullamcorper. Fringilla est ullamcorper eget nulla. Consequat interdum varius sit amet mattis vulputate. Tincidunt dui ut ornare lectus. Velit laoreet id donec ultrices tincidunt arcu non sodales. Facilisi morbi tempus iaculis urna id volutpat lacus laoreet. Facilisi etiam dignissim diam quis enim lobortis scelerisque fermentum dui. Et malesuada fames ac turpis egestas integer eget aliquet nibh. Auctor augue mauris augue neque gravida in fermentum. Cras semper auctor neque vitae tempus quam. Nibh cras pulvinar mattis nunc.', 'artikel4.jpg', 2, NULL, NULL);

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
  `link_drive_laporan` varchar(255) NOT NULL,
  `keyword` text NOT NULL,
  `metatext` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`id_config`, `namaweb`, `email`, `telepon`, `logo`, `icon`, `link_drive_laporan`, `keyword`, `metatext`, `created_at`, `updated_at`) VALUES
(1, 'Badan Pengelola Aset KM UII', 'bpa.km.uii@gmail.com', '08112656867', 'logo_web_1629519793_70ddb2c0742b158950ca.png', 'ikon_web_1629520193_a2f8056b91351416127c.png', 'https://www.google.com/', 'industri, Gedung, Pernikahan, event ,sewa gedung, kaliurang, SCC UII,UII,universitas islam indonesia', '', NULL, '2021-08-20 23:29:53');

-- --------------------------------------------------------

--
-- Table structure for table `galeri_foto`
--

CREATE TABLE `galeri_foto` (
  `id_galeri_foto` int NOT NULL,
  `nama_foto` varchar(255) NOT NULL,
  `slug_galeri_foto` varchar(255) NOT NULL,
  `path_foto` varchar(255) NOT NULL,
  `id_album` int DEFAULT NULL,
  `judul` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galeri_foto`
--

INSERT INTO `galeri_foto` (`id_galeri_foto`, `nama_foto`, `slug_galeri_foto`, `path_foto`, `id_album`, `judul`, `image`, `created_at`, `updated_at`) VALUES
(38, 'Foto 1', 'foto-1', 'foto-1.jpg', 1, 'Penyewaan SCC oleh club mobil', '1.jpg', '2021-08-02 21:55:23', NULL),
(39, 'Foto 2', 'foto-2', 'foto-2.jpg', 1, 'Ruang kamar', '102673.jpg', '2021-08-10 21:55:27', NULL),
(42, 'Foto 5', 'foto-5', 'foto-5.jpg', 2, '', '', NULL, NULL),
(43, 'Foto 6', 'foto-6', 'foto-6.jpg', 3, '', '', NULL, NULL);

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
  `nama_video` varchar(255) NOT NULL,
  `slug_galeri_video` varchar(255) NOT NULL,
  `path_video` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `link_video` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galeri_video`
--

INSERT INTO `galeri_video` (`id_galeri_video`, `nama_video`, `slug_galeri_video`, `path_video`, `judul`, `link_video`, `created_at`, `updated_at`) VALUES
(5, 'Wedding In Silent', '5-trailer-wedding-in-silent-webseries', 'https://youtu.be/40IXoUIDmBY', '[TRAILER] Wedding In SIlent #Webseries', '<iframe width=\"360\" height=\"200\" src=\"https://www.youtube.com/embed/k76SWgBtVo4\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', NULL, NULL),
(6, 'Wedding Silent', '6-episode-1-wedding-in-silent-webseries', 'https://www.youtube.com/watch?v=40IXoUIDmBY', '[EPISODE 1] Wedding In Silent #Webseries', '<iframe width=\"360\" height=\"200\" src=\"https://www.youtube.com/embed/0Nmh3s5nYXw\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', NULL, NULL),
(7, 'Wedding', 'episode-2-wedding-in-silent-webseries', 'https://youtu.be/anMYu17aZT4', '[EPISODE 2] Wedding In Silent #Webseries', '<iframe width=\"360\" height=\"200\" src=\"https://www.youtube.com/embed/5NZo-IDzZ_8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', NULL, NULL),
(8, 'Luxury Wedding', '10-episode-3-final-wedding-in-silent-web', 'https://www.youtube.com/watch?v=anMYu17aZT4', '[EPISODE 3/ FINAL ] Wedding In Silent #Web', '<iframe width=\"360\" height=\"200\" src=\"https://www.youtube.com/embed/VBF5j0Q7WmE\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', NULL, NULL),
(9, 'Cheap Wedding', '10-unwanted-gift-short-moviebpakmuii', 'https://www.youtube.com/watch?v=anMYu17aZT4', 'Unwanted Gift \r\n#Short MovieBPAKMUII', '<iframe width=\"360\" height=\"200\" src=\"https://www.youtube.com/embed/oTQSkegZirQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', NULL, NULL),
(10, 'Formal Wedding', '2020-open-recruitment-badan-pengelola-aset-km-uii', 'https://www.youtube.com/watch?v=anMYu17aZT4', 'Digital Branding Dalam Eksistensi Ekonomi Kreatif ', '<iframe width=\"360\" height=\"200\" src=\"https://www.youtube.com/embed/cfxG01c5Aa8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gambar_laporan`
--

CREATE TABLE `gambar_laporan` (
  `id_gambar` int NOT NULL,
  `nama_gambar` varchar(255) NOT NULL,
  `slug_gambar` varchar(255) NOT NULL,
  `path_gambar` varchar(255) NOT NULL,
  `path_nama_gambar` varchar(255) NOT NULL,
  `id_laporan` int NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `gambar_laporan`
--

INSERT INTO `gambar_laporan` (`id_gambar`, `nama_gambar`, `slug_gambar`, `path_gambar`, `path_nama_gambar`, `id_laporan`, `created_at`, `updated_at`) VALUES
(1, 'Triwulan 1-1', 'triwulan-1-1', 'tw-1-1.jpg', 'tw-1-1.jpg', 1, '2021-08-10 18:37:46', NULL),
(2, 'Triwulan 1-2', 'triwulan-1-2', 'tw-1-2.jpg', 'tw-1-2.jpg', 1, '2021-08-02 18:37:50', NULL),
(3, 'Triwulan 2-1', 'triwulan-2-1', 'tw-2-1.jpg', 'tw-2-1.jpg', 2, '2021-08-08 18:37:54', NULL),
(4, 'Triwulan 2-2', 'triwulan-2-2', 'tw-2-2.jpg', 'tw-2-2.jpg', 2, '2021-08-01 18:38:09', NULL),
(5, 'Triwulan 3-1', 'triwulan-3-1', 'tw-3-1.jpg', 'tw-3-1.jpg', 1, NULL, NULL),
(6, 'Triwulan 4-1', 'triwulan-4-1', 'tw-4-1.jpg', 'tw-4-1.jpg', 4, NULL, NULL),
(7, 'Triwulan 4-2', 'triwulan-4-1', 'tw-4-2.jpg', 'tw-4-2.jpg', 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gambar_produk`
--

CREATE TABLE `gambar_produk` (
  `id_gambar` int NOT NULL,
  `nama_gambar` varchar(255) NOT NULL,
  `slug_gambar` varchar(255) NOT NULL,
  `path_gambar` varchar(255) NOT NULL,
  `path_nama_gambar` varchar(255) NOT NULL,
  `id_produk` int NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `gambar_produk`
--

INSERT INTO `gambar_produk` (`id_gambar`, `nama_gambar`, `slug_gambar`, `path_gambar`, `path_nama_gambar`, `id_produk`, `created_at`, `updated_at`) VALUES
(1, 'Gedung SCC 1', 'gedung-scc-1', 'kegiatan3_1629537341_40466e5b6794a80b9a3f.png', 'kegiatan3.png', 1, '2021-08-10 17:43:10', '2021-08-21 04:15:41'),
(2, 'Gedung SCC 2', 'gedung-scc-2', 'gedung-2.jpg', 'gedung-2.jpg', 1, '2021-08-01 17:43:15', NULL),
(3, 'Gedung SCC 3', 'gedung-scc-3', 'gedung-3.jpg', 'gedung-3.jpg', 1, '2021-08-04 17:43:19', NULL),
(4, 'Tenda 1', 'tenda-1', 'artikel1_1629537993_10f5196e7e723e23a930.jpg', 'artikel1.jpg', 2, '2021-08-07 17:43:25', '2021-08-21 04:26:33'),
(5, 'Tenda 2', 'tenda-2', 'tenda-2.jpg', 'tenda-2.jpg', 2, NULL, NULL),
(6, 'Tenda 3', 'tenda-3', 'tenda-3.jpg', 'tenda-3.jpg', 2, NULL, NULL),
(7, 'Tenda 4', 'tenda-4', 'tenda-4.jpg', 'tenda-4.jpg', 2, NULL, NULL),
(8, 'DSLR Nikon', 'dslr-nikon', 'kamera-1_1629350531_0931d331cf0233e89a7f.jpeg', 'kamera-1.jpeg', 23, '2021-08-18 23:35:59', '2021-08-19 00:22:11');

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
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `id_laporan` int NOT NULL,
  `nama_laporan` varchar(255) NOT NULL,
  `slug_laporan` varchar(255) NOT NULL,
  `path_laporan` varchar(255) NOT NULL,
  `path_nama_laporan` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`id_laporan`, `nama_laporan`, `slug_laporan`, `path_laporan`, `path_nama_laporan`, `created_at`, `updated_at`) VALUES
(1, 'Laporan Triwulan 1', 'laporan-triwulan-1', 'triwulan1_1629393872_90cbd0688942c485bfe5.pdf', 'triwulan1.pdf', NULL, '2021-08-19 12:24:32'),
(2, 'Laporan Triwulan 2', 'laporan-triwulan-2', 'triwulan2.pdf', 'triwulan2.pdf', NULL, NULL),
(4, 'Laporan Triwulan 4', 'laporan-triwulan-4', 'triwulan4.pdf', 'triwulan4.pdf', NULL, NULL),
(7, 'Laporan Triwulan 3', 'laporan-triwulan-3', 'triwulan3_1629418412_e8f23c33ebd6d3aaf564.pdf', 'triwulan3.pdf', '2021-08-19 11:44:05', '2021-08-19 19:13:32');

-- --------------------------------------------------------

--
-- Table structure for table `organisasi`
--

CREATE TABLE `organisasi` (
  `id_organisasi` int NOT NULL,
  `slug_organisasi` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `keterangan` longtext NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `pesan` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `organisasi`
--

INSERT INTO `organisasi` (`id_organisasi`, `slug_organisasi`, `nama`, `keterangan`, `jabatan`, `pesan`, `image`, `created_at`, `updated_at`) VALUES
(13, 'anggota-bpa', 'Anggota BPA', 'Struktur Organisasi BPA KM UII terdiri dari sekumpulan mahasiswa yang mana, bertugas untuk\r\n                    memimpin dan menjalankan organisasi, bertanggung jawab penuh atas keseluruhan organisasi,\r\n                    serta\r\n                    mengambil keputusan tertinggi mengenai kebijakan dan tata kelola organisasi selama satu\r\n                    periode\r\n                    tersebut.', 'Seluruh anggota', 'Periode 2018', 'organisasi_1629439217_bf317bcabccf7f3ae73b.jpg', '2021-08-09 17:55:00', '2021-08-20 01:01:05');

-- --------------------------------------------------------

--
-- Table structure for table `paket`
--

CREATE TABLE `paket` (
  `id_paket` int NOT NULL,
  `nama_paket` varchar(255) NOT NULL,
  `slug_paket` varchar(255) NOT NULL,
  `harga` int NOT NULL,
  `id_produk` int NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `paket`
--

INSERT INTO `paket` (`id_paket`, `nama_paket`, `slug_paket`, `harga`, `id_produk`, `created_at`, `updated_at`) VALUES
(2, 'Paket Mubes Himpunan', 'paket-mubes-himpunan', 500000, 1, '2021-08-10 15:29:50', NULL),
(3, 'Peket Tenda', 'paket-tenda', 300000, 2, '2021-08-01 15:29:56', NULL),
(5, 'Paket Kamera', 'paket-kamera', 150000, 23, '2021-08-18 04:03:54', '2021-08-18 04:47:48'),
(9, 'Paket Murce', 'paket-murce', 1200, 19, '2021-08-18 19:15:06', '2021-08-18 19:15:06');

-- --------------------------------------------------------

--
-- Table structure for table `penulis`
--

CREATE TABLE `penulis` (
  `id_penulis` int NOT NULL,
  `nama_penulis` varchar(255) NOT NULL,
  `slug_penulis` varchar(255) NOT NULL,
  `path_gambar` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `penulis`
--

INSERT INTO `penulis` (`id_penulis`, `nama_penulis`, `slug_penulis`, `path_gambar`, `created_at`, `updated_at`) VALUES
(1, 'Andri Ruslam', 'andri-ruslam', 'penulis-1.jpg', '2021-08-01 13:01:53', '2021-08-01 13:01:53'),
(2, 'Andri Wahyu', 'andri-wahyu', 'penulis-2.jpg', '2021-08-08 13:01:53', '2021-08-08 13:01:53'),
(3, 'Syamil', 'syamil', 'penulis-3.jpg', '2021-08-11 13:01:53', '2021-08-11 13:01:53');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` int NOT NULL,
  `tanggal_pinjam` datetime NOT NULL,
  `tanggal_kembali` datetime NOT NULL,
  `id_produk` int NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id_pesanan`, `tanggal_pinjam`, `tanggal_kembali`, `id_produk`, `created_at`, `updated_at`) VALUES
(2, '2021-08-11 15:09:40', '2021-08-18 15:09:40', 1, '2021-08-11 17:07:23', NULL),
(3, '2021-08-11 15:10:21', '2021-08-18 15:10:21', 2, '2021-08-11 17:07:29', NULL),
(4, '2021-08-21 00:00:00', '2021-08-23 00:00:00', 23, '2021-08-18 18:53:49', '2021-08-18 19:59:53');

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
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `slug_produk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `detail_produk` longtext,
  `path_gambar_cover` varchar(255) NOT NULL,
  `path_nama_gambar` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `slug_produk`, `detail_produk`, `path_gambar_cover`, `path_nama_gambar`, `created_at`, `updated_at`) VALUES
(1, 'Gedung SCC', 'gedung-scc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tincidunt ornare massa eget egestas purus viverra accumsan in nisl. Pharetra vel turpis nunc eget lorem dolor. Penatibus et magnis dis parturient montes. Lacus vestibulum sed arcu non odio. Eleifend quam adipiscing vitae proin sagittis nisl rhoncus mattis rhoncus. Lacus vestibulum sed arcu non odio. Elementum facilisis leo vel fringilla est ullamcorper eget nulla. Feugiat scelerisque varius morbi enim. Tortor pretium viverra suspendisse potenti nullam ac.Interdum velit euismod in pellentesque massa placerat duis ultricies. Condimentum vitae sapien pellentesque habitant. Tempor nec feugiat nisl pretium fusce id. Odio morbi quis commodo odio aenean sed adipiscing. Dui sapien eget mi proin sed libero enim sed faucibus. Ipsum nunc aliquet bibendum enim facilisis. Pellentesque eu tincidunt tortor aliquam nulla facilisi cras. Amet facilisis magna etiam tempor orci eu lobortis. Cras tincidunt lobortis feugiat vivamus at. Morbi tincidunt ornare massa eget. Amet porttitor eget dolor morbi non arcu risus quis varius. Etiam tempor orci eu lobortis elementum. Purus non enim praesent elementum facilisis leo vel. Bibendum est ultricies integer quis auctor elit sed vulputate.Molestie a iaculis at erat pellentesque adipiscing commodo elit at. Porta non pulvinar neque laoreet suspendisse interdum. Est velit egestas dui id ornare arcu. Tincidunt nunc pulvinar sapien et ligula ullamcorper malesuada. Duis ut diam quam nulla porttitor. Vitae justo eget magna fermentum iaculis eu non diam phasellus. Id porta nibh venenatis cras sed felis eget. Turpis massa sed elementum tempus egestas sed sed risus. Lacus sed turpis tincidunt id aliquet risus feugiat. Sed enim ut sem viverra aliquet eget. Pulvinar neque laoreet suspendisse interdum. Faucibus et molestie ac feugiat sed lectus vestibulum. Risus commodo viverra maecenas accumsan. Sit amet commodo nulla facilisi nullam vehicula ipsum. Urna id volutpat lacus laoreet non curabitur gravida arcu ac. Et malesuada fames ac turpis egestas. Maecenas pharetra convallis posuere morbi. Non pulvinar neque laoreet suspendisse interdum consectetur. A pellentesque sit amet porttitor eget dolor morbi non arcu.', 'artikel2_1629537282_998fb86b4f165f9a824e.jpg', 'artikel2.jpg', '2021-08-03 15:34:52', '2021-08-21 04:14:42'),
(2, 'Tenda', 'tenda', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Viverra aliquet eget sit amet tellus. At elementum eu facilisis sed odio morbi quis commodo odio. Malesuada fames ac turpis egestas maecenas. At tempor commodo ullamcorper a lacus vestibulum. Pulvinar sapien et ligula ullamcorper malesuada proin. Egestas erat imperdiet sed euismod nisi porta lorem. Eget aliquet nibh praesent tristique magna sit amet. Massa placerat duis ultricies lacus sed turpis tincidunt id aliquet. Semper eget duis at tellus at urna. Mi quis hendrerit dolor magna.Eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum. Vitae aliquet nec ullamcorper sit amet risus. Odio aenean sed adipiscing diam donec adipiscing. Eu mi bibendum neque egestas congue quisque egestas diam in. Dapibus ultrices in iaculis nunc sed augue lacus viverra vitae. Nunc sed augue lacus viverra. Lorem ipsum dolor sit amet consectetur adipiscing elit pellentesque. Vel orci porta non pulvinar neque. Arcu cursus euismod quis viverra nibh cras pulvinar. Mauris cursus mattis molestie a iaculis at.', 'artikel1_1629537939_35f49be4ff8ddc4badbf.jpg', 'artikel1.jpg', '2021-08-12 15:34:56', '2021-08-21 04:25:39'),
(18, 'Sound System', 'sound-system', 'Ini produk sound system', 'chepe-nicoli-if0K7iBBDxw-unsplash_1629537660_58d78f11a922662a6506.jpg', 'chepe-nicoli-if0K7iBBDxw-unsplash.jpg', '2021-08-18 10:22:17', '2021-08-21 04:21:00'),
(19, 'Mobil', 'mobil', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Vestibulum morbi blandit cursus risus. Tempor commodo ullamcorper a lacus vestibulum sed. Est ultricies integer quis auctor elit sed vulputate mi sit. Tincidunt augue interdum velit euismod in. In cursus turpis massa tincidunt dui ut ornare. Pulvinar pellentesque habitant morbi tristique senectus et netus. Vitae turpis massa sed elementum. Nullam vehicula ipsum a arcu. Vel quam elementum pulvinar etiam. Cras adipiscing enim eu turpis egestas pretium aenean pharetra. Tortor pretium viverra suspendisse potenti nullam ac. Mattis aliquam faucibus purus in massa. Ut faucibus pulvinar elementum integer enim neque volutpat. Pellentesque diam volutpat commodo sed. At volutpat diam ut venenatis tellus in. Justo eget magna fermentum iaculis. Massa tempor nec feugiat nisl.Praesent semper feugiat nibh sed pulvinar proin gravida hendrerit. Eros donec ac odio tempor orci dapibus ultrices in iaculis. Tellus elementum sagittis vitae et. Etiam non quam lacus suspendisse faucibus interdum posuere. Bibendum ut tristique et egestas. Ac feugiat sed lectus vestibulum mattis ullamcorper velit sed ullamcorper. Ut etiam sit amet nisl. Lorem ipsum dolor sit amet consectetur adipiscing. Urna molestie at elementum eu facilisis. Varius morbi enim nunc faucibus. Urna condimentum mattis pellentesque id nibh tortor id aliquet lectus. Ac placerat vestibulum lectus mauris ultrices. Donec ac odio tempor orci dapibus ultrices in iaculis nunc. Viverra orci sagittis eu volutpat. Pulvinar pellentesque habitant morbi tristique senectus et netus et. Id faucibus nisl tincidunt eget nullam non nisi est sit. Sit amet dictum sit amet justo donec.Consectetur purus ut faucibus pulvinar elementum integer enim. Commodo quis imperdiet massa tincidunt nunc. Morbi enim nunc faucibus a pellentesque sit amet porttitor. Mattis molestie a iaculis at erat pellentesque adipiscing. Faucibus vitae aliquet nec ullamcorper sit amet. Magna sit amet purus gravida quis blandit. Neque laoreet suspendisse interdum consectetur libero id. Iaculis at erat pellentesque adipiscing commodo elit at imperdiet dui. At ultrices mi tempus imperdiet nulla malesuada pellentesque elit eget. Non sodales neque sodales ut etiam. Aliquet eget sit amet tellus cras adipiscing enim. Fringilla ut morbi tincidunt augue interdum velit. Commodo quis imperdiet massa tincidunt nunc pulvinar sapien et. Urna nec tincidunt praesent semper feugiat nibh sed pulvinar. In fermentum et sollicitudin ac orci phasellus egestas. Habitant morbi tristique senectus et netus et malesuada fames ac. Et netus et malesuada fames ac turpis egestas integer eget. Auctor eu augue ut lectus arcu.', 'joey-banks-YApiWyp0lqo-unsplash_1629537695_855ce2d9757a9256b1d1.jpg', 'joey-banks-YApiWyp0lqo-unsplash.jpg', NULL, '2021-08-21 04:21:35'),
(20, 'Motor', 'motor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Vestibulum morbi blandit cursus risus. Tempor commodo ullamcorper a lacus vestibulum sed. Est ultricies integer quis auctor elit sed vulputate mi sit. Tincidunt augue interdum velit euismod in. In cursus turpis massa tincidunt dui ut ornare. Pulvinar pellentesque habitant morbi tristique senectus et netus. Vitae turpis massa sed elementum. Nullam vehicula ipsum a arcu. Vel quam elementum pulvinar etiam. Cras adipiscing enim eu turpis egestas pretium aenean pharetra. Tortor pretium viverra suspendisse potenti nullam ac. Mattis aliquam faucibus purus in massa. Ut faucibus pulvinar elementum integer enim neque volutpat. Pellentesque diam volutpat commodo sed. At volutpat diam ut venenatis tellus in. Justo eget magna fermentum iaculis. Massa tempor nec feugiat nisl.Praesent semper feugiat nibh sed pulvinar proin gravida hendrerit. Eros donec ac odio tempor orci dapibus ultrices in iaculis. Tellus elementum sagittis vitae et. Etiam non quam lacus suspendisse faucibus interdum posuere. Bibendum ut tristique et egestas. Ac feugiat sed lectus vestibulum mattis ullamcorper velit sed ullamcorper. Ut etiam sit amet nisl. Lorem ipsum dolor sit amet consectetur adipiscing. Urna molestie at elementum eu facilisis. Varius morbi enim nunc faucibus. Urna condimentum mattis pellentesque id nibh tortor id aliquet lectus. Ac placerat vestibulum lectus mauris ultrices. Donec ac odio tempor orci dapibus ultrices in iaculis nunc. Viverra orci sagittis eu volutpat. Pulvinar pellentesque habitant morbi tristique senectus et netus et. Id faucibus nisl tincidunt eget nullam non nisi est sit. Sit amet dictum sit amet justo donec.Consectetur purus ut faucibus pulvinar elementum integer enim. Commodo quis imperdiet massa tincidunt nunc. Morbi enim nunc faucibus a pellentesque sit amet porttitor. Mattis molestie a iaculis at erat pellentesque adipiscing. Faucibus vitae aliquet nec ullamcorper sit amet. Magna sit amet purus gravida quis blandit. Neque laoreet suspendisse interdum consectetur libero id. Iaculis at erat pellentesque adipiscing commodo elit at imperdiet dui. At ultrices mi tempus imperdiet nulla malesuada pellentesque elit eget. Non sodales neque sodales ut etiam. Aliquet eget sit amet tellus cras adipiscing enim. Fringilla ut morbi tincidunt augue interdum velit. Commodo quis imperdiet massa tincidunt nunc pulvinar sapien et. Urna nec tincidunt praesent semper feugiat nibh sed pulvinar. In fermentum et sollicitudin ac orci phasellus egestas. Habitant morbi tristique senectus et netus et malesuada fames ac. Et netus et malesuada fames ac turpis egestas integer eget. Auctor eu augue ut lectus arcu.', 'Jala team in office_1629537448_3402cc5fd0405d94176c.jpeg', 'Jala team in office.jpeg', '2021-08-10 10:24:05', '2021-08-21 04:17:28'),
(21, 'Sepeda', 'sepeda', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Vestibulum morbi blandit cursus risus. Tempor commodo ullamcorper a lacus vestibulum sed. Est ultricies integer quis auctor elit sed vulputate mi sit. Tincidunt augue interdum velit euismod in. In cursus turpis massa tincidunt dui ut ornare. Pulvinar pellentesque habitant morbi tristique senectus et netus. Vitae turpis massa sed elementum. Nullam vehicula ipsum a arcu. Vel quam elementum pulvinar etiam. Cras adipiscing enim eu turpis egestas pretium aenean pharetra. Tortor pretium viverra suspendisse potenti nullam ac. Mattis aliquam faucibus purus in massa. Ut faucibus pulvinar elementum integer enim neque volutpat. Pellentesque diam volutpat commodo sed. At volutpat diam ut venenatis tellus in. Justo eget magna fermentum iaculis. Massa tempor nec feugiat nisl.Praesent semper feugiat nibh sed pulvinar proin gravida hendrerit. Eros donec ac odio tempor orci dapibus ultrices in iaculis. Tellus elementum sagittis vitae et. Etiam non quam lacus suspendisse faucibus interdum posuere. Bibendum ut tristique et egestas. Ac feugiat sed lectus vestibulum mattis ullamcorper velit sed ullamcorper. Ut etiam sit amet nisl. Lorem ipsum dolor sit amet consectetur adipiscing. Urna molestie at elementum eu facilisis. Varius morbi enim nunc faucibus. Urna condimentum mattis pellentesque id nibh tortor id aliquet lectus. Ac placerat vestibulum lectus mauris ultrices. Donec ac odio tempor orci dapibus ultrices in iaculis nunc. Viverra orci sagittis eu volutpat. Pulvinar pellentesque habitant morbi tristique senectus et netus et. Id faucibus nisl tincidunt eget nullam non nisi est sit. Sit amet dictum sit amet justo donec.Consectetur purus ut faucibus pulvinar elementum integer enim. Commodo quis imperdiet massa tincidunt nunc. Morbi enim nunc faucibus a pellentesque sit amet porttitor. Mattis molestie a iaculis at erat pellentesque adipiscing. Faucibus vitae aliquet nec ullamcorper sit amet. Magna sit amet purus gravida quis blandit. Neque laoreet suspendisse interdum consectetur libero id. Iaculis at erat pellentesque adipiscing commodo elit at imperdiet dui. At ultrices mi tempus imperdiet nulla malesuada pellentesque elit eget. Non sodales neque sodales ut etiam. Aliquet eget sit amet tellus cras adipiscing enim. Fringilla ut morbi tincidunt augue interdum velit. Commodo quis imperdiet massa tincidunt nunc pulvinar sapien et. Urna nec tincidunt praesent semper feugiat nibh sed pulvinar. In fermentum et sollicitudin ac orci phasellus egestas. Habitant morbi tristique senectus et netus et malesuada fames ac. Et netus et malesuada fames ac turpis egestas integer eget. Auctor eu augue ut lectus arcu.', 'artikel3_1629537428_906a76a99a162c8b56de.jpg', 'artikel3.jpg', '2021-08-11 10:24:05', '2021-08-21 04:17:08'),
(22, 'Gengset', 'gengset', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Vestibulum morbi blandit cursus risus. Tempor commodo ullamcorper a lacus vestibulum sed. Est ultricies integer quis auctor elit sed vulputate mi sit. Tincidunt augue interdum velit euismod in. In cursus turpis massa tincidunt dui ut ornare. Pulvinar pellentesque habitant morbi tristique senectus et netus. Vitae turpis massa sed elementum. Nullam vehicula ipsum a arcu. Vel quam elementum pulvinar etiam. Cras adipiscing enim eu turpis egestas pretium aenean pharetra. Tortor pretium viverra suspendisse potenti nullam ac. Mattis aliquam faucibus purus in massa. Ut faucibus pulvinar elementum integer enim neque volutpat. Pellentesque diam volutpat commodo sed. At volutpat diam ut venenatis tellus in. Justo eget magna fermentum iaculis. Massa tempor nec feugiat nisl.Praesent semper feugiat nibh sed pulvinar proin gravida hendrerit. Eros donec ac odio tempor orci dapibus ultrices in iaculis. Tellus elementum sagittis vitae et. Etiam non quam lacus suspendisse faucibus interdum posuere. Bibendum ut tristique et egestas. Ac feugiat sed lectus vestibulum mattis ullamcorper velit sed ullamcorper. Ut etiam sit amet nisl. Lorem ipsum dolor sit amet consectetur adipiscing. Urna molestie at elementum eu facilisis. Varius morbi enim nunc faucibus. Urna condimentum mattis pellentesque id nibh tortor id aliquet lectus. Ac placerat vestibulum lectus mauris ultrices. Donec ac odio tempor orci dapibus ultrices in iaculis nunc. Viverra orci sagittis eu volutpat. Pulvinar pellentesque habitant morbi tristique senectus et netus et. Id faucibus nisl tincidunt eget nullam non nisi est sit. Sit amet dictum sit amet justo donec.Consectetur purus ut faucibus pulvinar elementum integer enim. Commodo quis imperdiet massa tincidunt nunc. Morbi enim nunc faucibus a pellentesque sit amet porttitor. Mattis molestie a iaculis at erat pellentesque adipiscing. Faucibus vitae aliquet nec ullamcorper sit amet. Magna sit amet purus gravida quis blandit. Neque laoreet suspendisse interdum consectetur libero id. Iaculis at erat pellentesque adipiscing commodo elit at imperdiet dui. At ultrices mi tempus imperdiet nulla malesuada pellentesque elit eget. Non sodales neque sodales ut etiam. Aliquet eget sit amet tellus cras adipiscing enim. Fringilla ut morbi tincidunt augue interdum velit. Commodo quis imperdiet massa tincidunt nunc pulvinar sapien et. Urna nec tincidunt praesent semper feugiat nibh sed pulvinar. In fermentum et sollicitudin ac orci phasellus egestas. Habitant morbi tristique senectus et netus et malesuada fames ac. Et netus et malesuada fames ac turpis egestas integer eget. Auctor eu augue ut lectus arcu.', 'joey-banks-YApiWyp0lqo-unsplash_1629537677_c9ca39c941fa73b83bea.jpg', 'joey-banks-YApiWyp0lqo-unsplash.jpg', NULL, '2021-08-21 04:21:17'),
(23, 'Kamera', 'kamera', 'Kamera detail berisi informasi', '1629259695_e4a464796bef36fe2165.jpeg', 'kamera.jpeg', '2021-08-17 19:19:58', '2021-08-17 23:08:52');

-- --------------------------------------------------------

--
-- Table structure for table `sejarah`
--

CREATE TABLE `sejarah` (
  `id_sejarah` int NOT NULL,
  `nama_konten` varchar(255) NOT NULL,
  `slug_sejarah` varchar(255) NOT NULL,
  `isi_sejarah` longtext NOT NULL,
  `isi_logo` longtext NOT NULL,
  `path_gambar_sejarah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `path_gambar_logo` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sejarah`
--

INSERT INTO `sejarah` (`id_sejarah`, `nama_konten`, `slug_sejarah`, `isi_sejarah`, `isi_logo`, `path_gambar_sejarah`, `path_gambar_logo`, `created_at`, `updated_at`) VALUES
(1, 'Sejarah', 'sejarah', 'Ini sejarah. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ', 'Ini Logo. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nunc vel risus commodo viverra maecenas. Vestibulum mattis ullamcorper velit sed. Nisl vel pretium lectus quam id leo in vitae. ', 'kegiatan3_1629512108_c3bca03a7b037f502025.png', 'artikel1_1629511876_db90cbb8f0f59d64f97d.jpg', NULL, '2021-08-20 21:15:08');

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
  `nama_konten` varchar(255) NOT NULL,
  `slug_visi_misi` varchar(255) NOT NULL,
  `isi_visi` longtext NOT NULL,
  `isi_misi` longtext NOT NULL,
  `path_gambar_visi` varchar(255) NOT NULL,
  `path_gambar_misi` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visi_misi`
--

INSERT INTO `visi_misi` (`id_visi_misi`, `nama_konten`, `slug_visi_misi`, `isi_visi`, `isi_misi`, `path_gambar_visi`, `path_gambar_misi`, `image`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'Visi Misi', 'visi-misi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis hendrerit dolor magna eget est lorem. Nisi lacus sed viverra tellus in.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Aenean et tortor at risus viverra adipiscing. Feugiat sed lectus vestibulum mattis ullamcorper velit sed ullamcorper. ', 'Jala team in office_1629461561_f70828f8ec03d9bf2f30.jpeg', 'kegiatan3_1629537180_476be07e9fda965aa2bd.png', 'visimisi.png', 'Visi\r\nMenjadi organisasi yang secara berkelanjutan mengeangkandiri dan memberikan manfaat kepada umat dalam rangka mewujudkan tujuan Lembaga KM UII melalui pengelolaan asset Lembaga yang professional,akuntabel dan transparan\r\n\r\nMisi\r\n1. Mengoptimalkan pengelolaan asset lembaga berdasarkan prinsip-prinsip badan usaha yang professional dan akuntabel\r\n2. Memperkuat sumber daya keuangan Lembaga KM UII melalui sumbangan bagi hasil usaha\r\n3. Mewujudkan SDM anggota yang unggul ,terampil , professional dalam menjalankan fungsi perannya sebagai pengelola asset Lembaga\r\n4. Mengoptimalkan pemanfaatkan sistem informasi,kearsipan dan administrasi data organisasi\r\n5. Menyelenggarakan usaha-usaha yang mampu mciptakemanfaatan umum lainnya bagi public mahasiswa dan umum\r\n', NULL, '2021-08-21 04:13:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`),
  ADD KEY `id_penulis` (`id_penulis`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id_config`);

--
-- Indexes for table `galeri_foto`
--
ALTER TABLE `galeri_foto`
  ADD PRIMARY KEY (`id_galeri_foto`),
  ADD KEY `id_album` (`id_album`);

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
-- Indexes for table `gambar_laporan`
--
ALTER TABLE `gambar_laporan`
  ADD PRIMARY KEY (`id_gambar`),
  ADD KEY `id_laporan` (`id_laporan`);

--
-- Indexes for table `gambar_produk`
--
ALTER TABLE `gambar_produk`
  ADD PRIMARY KEY (`id_gambar`),
  ADD KEY `id_produk` (`id_produk`);

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
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id_laporan`);

--
-- Indexes for table `organisasi`
--
ALTER TABLE `organisasi`
  ADD PRIMARY KEY (`id_organisasi`);

--
-- Indexes for table `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`id_paket`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `penulis`
--
ALTER TABLE `penulis`
  ADD PRIMARY KEY (`id_penulis`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `pesan_direktur`
--
ALTER TABLE `pesan_direktur`
  ADD PRIMARY KEY (`id_pesan_direktur`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `sejarah`
--
ALTER TABLE `sejarah`
  ADD PRIMARY KEY (`id_sejarah`);

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
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id_album` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `id_config` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `galeri_foto`
--
ALTER TABLE `galeri_foto`
  MODIFY `id_galeri_foto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

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
-- AUTO_INCREMENT for table `gambar_laporan`
--
ALTER TABLE `gambar_laporan`
  MODIFY `id_gambar` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `gambar_produk`
--
ALTER TABLE `gambar_produk`
  MODIFY `id_gambar` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id_laporan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `organisasi`
--
ALTER TABLE `organisasi`
  MODIFY `id_organisasi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `paket`
--
ALTER TABLE `paket`
  MODIFY `id_paket` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `penulis`
--
ALTER TABLE `penulis`
  MODIFY `id_penulis` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesanan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pesan_direktur`
--
ALTER TABLE `pesan_direktur`
  MODIFY `id_pesan_direktur` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `sejarah`
--
ALTER TABLE `sejarah`
  MODIFY `id_sejarah` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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

--
-- Constraints for dumped tables
--

--
-- Constraints for table `artikel`
--
ALTER TABLE `artikel`
  ADD CONSTRAINT `artikel_ibfk_1` FOREIGN KEY (`id_penulis`) REFERENCES `penulis` (`id_penulis`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `galeri_foto`
--
ALTER TABLE `galeri_foto`
  ADD CONSTRAINT `galeri_foto_ibfk_1` FOREIGN KEY (`id_album`) REFERENCES `album` (`id_album`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `gambar_laporan`
--
ALTER TABLE `gambar_laporan`
  ADD CONSTRAINT `gambar_laporan_ibfk_1` FOREIGN KEY (`id_laporan`) REFERENCES `laporan` (`id_laporan`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `gambar_produk`
--
ALTER TABLE `gambar_produk`
  ADD CONSTRAINT `gambar_produk_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `paket`
--
ALTER TABLE `paket`
  ADD CONSTRAINT `paket_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
