-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 28 Bulan Mei 2022 pada 18.06
-- Versi server: 5.5.68-MariaDB
-- Versi PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bpakmuii_acid_new`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `album`
--

CREATE TABLE `album` (
  `id_album` int(10) UNSIGNED NOT NULL,
  `nama_album` varchar(255) NOT NULL,
  `slug_album` varchar(255) NOT NULL,
  `path_cover` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `album`
--

INSERT INTO `album` (`id_album`, `nama_album`, `slug_album`, `path_cover`, `created_at`, `updated_at`) VALUES
(1, 'Orientasi Anggota', 'orientasi-anggota', 'default.png', '2021-09-01 00:00:00', '2021-09-01 00:00:00'),
(2, 'Makrab', 'makrab', 'default.png', '2021-09-01 00:00:00', '2021-09-01 00:00:00'),
(3, 'Kunjungan Industri', 'kunjungan-industri', 'default.png', '2021-09-01 00:00:00', '2021-09-01 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(10) UNSIGNED NOT NULL,
  `judul_artikel` varchar(255) NOT NULL,
  `slug_artikel` varchar(255) NOT NULL,
  `isi_artikel` longtext NOT NULL,
  `path_gambar` varchar(255) NOT NULL,
  `id_penulis` int(10) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul_artikel`, `slug_artikel`, `isi_artikel`, `path_gambar`, `id_penulis`, `created_at`, `updated_at`) VALUES
(1, 'Reiciendis sit ex sequi.', 'reiciendis-sit-ex-sequi', 'Necessitatibus sint qui magni impedit error quo. Consequatur officiis repellendus repellendus ab nemo qui aliquid. Harum aliquam nihil mollitia quas dolore aliquid eius. Soluta quibusdam veritatis ea tenetur sed mollitia deserunt. Ducimus non ut ut enim. Magnam voluptate sunt illo alias. Consequatur neque quisquam in quae. Omnis atque cupiditate quia esse maxime deleniti dolores. Sit aperiam facere aliquid optio explicabo reprehenderit iusto. Et sint enim neque aperiam dolor. Harum earum architecto et dolores. Tempora alias voluptate id. Ad perferendis doloribus sed et. Eaque et eum iste minima quo. Sapiente fugit voluptates consequatur ullam. Recusandae repellendus recusandae dolores temporibus debitis. Vero aut tenetur sed. Et autem et quibusdam aspernatur repudiandae. Iusto nostrum porro aut maxime quia. Sint labore rerum aut omnis quasi accusamus.', 'default.png', 3, '1971-10-21 00:46:59', '1989-05-06 22:26:20'),
(2, 'Molestiae quod iusto debitis.', 'molestiae-quod-iusto-debitis', 'Non qui corrupti reprehenderit dolorem atque. Fugiat quia laborum perferendis non illo explicabo distinctio. Neque corrupti eaque ducimus autem occaecati. Id ex dolor minus vero et vitae earum. Et officia illo consequatur est non aut. Saepe voluptatem distinctio accusantium aut sapiente. Unde eos asperiores velit saepe inventore asperiores. Occaecati et quaerat expedita est vel. Enim id ut voluptas sit et. Ut ullam deleniti voluptate. Laborum ut dignissimos quis porro beatae. Praesentium veritatis aut odio quidem. Est voluptatem nobis et asperiores consectetur dolor sunt voluptates. In et labore dignissimos eius distinctio autem. Quae maxime illo omnis ad consectetur vel. Eius neque accusamus odio enim soluta qui. Odit qui cupiditate incidunt ipsa. Asperiores expedita assumenda voluptas et voluptas autem autem nam. Asperiores rerum ratione quia molestiae nesciunt.', 'default.png', 1, '1988-05-10 19:15:44', '1972-07-24 16:16:40'),
(3, 'Quasi rerum vel quis ut.', 'quasi-rerum-vel-quis-ut', 'Nisi id nam accusantium. Consequuntur eum et beatae natus voluptatibus dolores. Maiores consequatur quis quasi. Quia autem est id magni. Placeat sunt sapiente consequatur. Magnam quae optio accusamus. Non atque voluptatem corrupti omnis quod in. Reiciendis quam repellendus qui molestiae similique quae. Nam dolorum similique iusto eos nostrum. Optio natus nulla eligendi. Et culpa adipisci culpa et animi libero. Ut dolorem sed dolore repellendus ut. Delectus ut suscipit enim cum. Quae dignissimos est velit. Perferendis nihil reiciendis harum corrupti fuga est. Expedita maxime eum consequatur possimus. Quia dolorem repellat velit eum nostrum quo. Ut enim voluptatem accusamus est consequuntur sunt ut. Nemo tempora ea nemo placeat nam harum. Sapiente aut ut minima explicabo quaerat doloremque quae. Quae tempore laboriosam quod. Nesciunt placeat eveniet aut sunt quis.', 'default.png', 3, '1983-06-07 02:49:21', '1970-04-05 00:58:43'),
(4, 'Illum aut tenetur voluptas.', 'illum-aut-tenetur-voluptas', 'Aspernatur ad et et aut. Suscipit ex ut sunt est illo autem ratione cumque. Quod eum corrupti voluptatem. Nihil voluptatibus voluptatem eaque accusantium quo odit. Est id perferendis at fugiat quasi quasi. Quibusdam consectetur ut et debitis ducimus consequatur ullam. Placeat et eos est natus suscipit a. Dolorem eius suscipit odio consequuntur mollitia. Tempora hic ut praesentium perferendis corporis. Autem nam odio voluptatem provident voluptatem reprehenderit ex. Dolor aut sequi perferendis voluptatum ducimus quod. Aliquid omnis non consequatur voluptatem ipsum asperiores. Omnis quia natus quis nemo deserunt nulla velit. Molestiae adipisci vel tempore. Quod harum nulla quia perferendis magnam corporis mollitia. Magni dolore sed ab eligendi. Eos quasi voluptas aut eius. Nulla nihil enim veritatis aut itaque earum. Omnis dolorem architecto omnis voluptatum. Aliquam est cumque dolores earum delectus beatae. Et ipsa veritatis impedit sapiente facere explicabo.', 'default.png', 4, '1987-02-07 05:31:38', '1981-04-16 08:50:44'),
(5, 'Aliquid non est dolor qui.', 'aliquid-non-est-dolor-qui', 'Alias aut ipsam ut ipsam ex. Ut facilis veritatis sed omnis quidem libero. Sapiente id voluptas distinctio qui accusantium repellendus. Est nam voluptatem atque animi repudiandae nam illo ad. Aperiam ut consequuntur occaecati ut illum. Aut a quia corrupti. Sunt consequatur adipisci ex enim id et. Amet ut qui quod autem autem quas. Adipisci fuga earum qui perspiciatis sit voluptas autem beatae. Ducimus vitae quidem tempora temporibus et. Et a et debitis. Quas ab dignissimos voluptatem et consequuntur debitis. Libero non eum facere animi magnam est. Corporis illum consequatur voluptatibus soluta. Voluptatum expedita aut cum est. Officia quo vitae aspernatur voluptatem. Accusantium velit tempora rerum quasi. Quia ullam aliquid eaque deleniti facilis et nihil. Sunt est ad minus. Iusto alias quo iste sint libero.', 'default.png', 2, '2008-09-08 18:59:59', '2013-01-11 05:59:28'),
(6, 'Rerum vel fugit a dolor.', 'rerum-vel-fugit-a-dolor', 'Asperiores labore earum est reprehenderit perspiciatis cum non. Ut autem doloremque laborum expedita veniam sint molestias. Consequuntur veniam rerum sit assumenda. Natus officia incidunt velit quasi magni qui tempora. Et dolores maiores velit iusto. Atque illum voluptatibus aliquid iste. Fugit asperiores doloremque expedita. Atque itaque nobis totam voluptas. Laborum consequatur ipsum voluptatem temporibus molestias velit. Odit iusto alias delectus velit quidem. Quo quis quod architecto laborum voluptas et. Quasi quae perferendis est praesentium quam. Eveniet laudantium possimus dolorem dolorem. Quam iure natus est ipsum quos ut. Adipisci cum et voluptates non. Ut eum est delectus voluptas sapiente eligendi distinctio. Voluptas voluptatum placeat non. Neque ut consequuntur iusto cupiditate sit ipsa. Voluptatem dolor quod dolorum nihil ex non quod. Vel ea debitis et omnis aut occaecati consequatur. Tempora quo perspiciatis ullam sunt.', 'default.png', 2, '1977-04-28 03:46:31', '2017-11-01 23:20:19'),
(7, 'Dolores eius ut sit.', 'dolores-eius-ut-sit', 'Quidem odio non corrupti non. Natus et dolor et velit enim. Minima earum necessitatibus non reprehenderit provident et. Neque ratione temporibus tenetur dolorum vero ab. Non quasi aut voluptatem. Hic velit deleniti magnam. Nobis facilis doloremque temporibus corrupti a tenetur excepturi. Commodi qui consequatur dolores ea dicta voluptas quisquam molestias. Harum ut aliquam dolor nulla nihil. Quo incidunt reiciendis suscipit sit ut nobis enim. Doloremque modi accusamus earum harum architecto veritatis sunt. Totam porro rerum voluptatum non qui laboriosam. Ullam eligendi quos voluptatibus error nisi. Rerum quo non repellendus ab dolores est voluptatem sed. Et dignissimos excepturi quia non aut sed explicabo itaque. Dolorum quia ullam maiores modi. Voluptatum minus explicabo sapiente nam repellat repellat vel. Vel eligendi iure blanditiis dolor. Velit earum exercitationem sunt aut. Ut est nihil optio ut. Quam molestias fugit dignissimos aut.', 'default.png', 2, '1996-07-26 10:27:25', '2002-05-12 20:52:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `config`
--

CREATE TABLE `config` (
  `id_config` int(10) UNSIGNED NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `config`
--

INSERT INTO `config` (`id_config`, `namaweb`, `email`, `telepon`, `logo`, `icon`, `link_drive_laporan`, `keyword`, `metatext`, `created_at`, `updated_at`) VALUES
(1, 'Badan Pengelola Aset KM UII', 'bpa.km.uii@gmail.com', '081266111497', 'logo_web_1631417630_40f961696adb6d1fc28e.png', 'ikon_web_1631417767_b36f1e98251664fdc466.png', 'https://www.google.com/', 'industri, Gedung, Pernikahan, event,sewa gedung, kaliurang, SCC UII,UII,universitas islam indonesia', '', '2021-08-29 00:00:00', '2021-09-11 22:36:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri_foto`
--

CREATE TABLE `galeri_foto` (
  `id_galeri_foto` int(10) UNSIGNED NOT NULL,
  `nama_foto` varchar(255) NOT NULL,
  `slug_galeri_foto` varchar(255) NOT NULL,
  `path_foto` varchar(255) NOT NULL,
  `id_album` int(10) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `galeri_foto`
--

INSERT INTO `galeri_foto` (`id_galeri_foto`, `nama_foto`, `slug_galeri_foto`, `path_foto`, `id_album`, `created_at`, `updated_at`) VALUES
(1, 'Quo et.', 'quo-et', 'default.png', 2, '2019-02-20 09:43:19', '2019-02-24 14:04:00'),
(2, 'Error qui.', 'error-qui', 'default.png', 2, '1983-04-16 01:22:00', '1992-09-22 21:00:16'),
(3, 'Corporis.', 'corporis', 'default.png', 2, '2014-08-24 01:51:17', '1981-08-18 05:19:42'),
(4, 'Inventore.', 'inventore', 'default.png', 3, '1988-09-02 21:28:51', '2019-08-26 12:58:22'),
(5, 'At in hic.', 'at-in-hic', 'default.png', 1, '1978-04-25 10:00:40', '1998-09-02 22:35:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri_video`
--

CREATE TABLE `galeri_video` (
  `id_galeri_video` int(10) UNSIGNED NOT NULL,
  `nama_video` varchar(255) NOT NULL,
  `slug_galeri_video` varchar(255) NOT NULL,
  `path_video` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `galeri_video`
--

INSERT INTO `galeri_video` (`id_galeri_video`, `nama_video`, `slug_galeri_video`, `path_video`, `created_at`, `updated_at`) VALUES
(1, 'Consequatur est ipsa quis.', 'consequatur-est-ipsa-quis', 'https://youtu.be/W0Zolvz1Z3A', '1974-08-04 06:23:29', '2016-07-20 19:33:09'),
(2, 'Deserunt et vel eaque et.', 'deserunt-et-vel-eaque-et', 'https://youtu.be/W0Zolvz1Z3A', '1971-03-16 15:53:37', '1978-09-09 01:55:49'),
(3, 'Eos et soluta est suscipit.', 'eos-et-soluta-est-suscipit', 'https://youtu.be/W0Zolvz1Z3A', '2004-07-15 13:16:23', '1992-07-07 23:31:22'),
(4, 'Repudiandae nihil iure animi.', 'repudiandae-nihil-iure-animi', 'https://youtu.be/W0Zolvz1Z3A', '2014-05-18 00:00:54', '1992-01-21 01:43:29'),
(5, 'Eius rerum esse velit eius.', 'eius-rerum-esse-velit-eius', 'https://youtu.be/W0Zolvz1Z3A', '1974-09-18 23:40:37', '2007-03-10 14:59:59'),
(6, 'Id et expedita ad.', 'id-et-expedita-ad', 'https://youtu.be/W0Zolvz1Z3A', '2010-09-07 19:59:19', '1979-02-27 13:58:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gambar_laporan`
--

CREATE TABLE `gambar_laporan` (
  `id_gambar` int(10) UNSIGNED NOT NULL,
  `nama_gambar` varchar(255) NOT NULL,
  `slug_gambar` varchar(255) NOT NULL,
  `path_gambar` varchar(255) NOT NULL,
  `path_nama_gambar` varchar(255) NOT NULL,
  `id_laporan` int(10) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `gambar_laporan`
--

INSERT INTO `gambar_laporan` (`id_gambar`, `nama_gambar`, `slug_gambar`, `path_gambar`, `path_nama_gambar`, `id_laporan`, `created_at`, `updated_at`) VALUES
(1, 'Dolores.', 'dolores', 'default.png', 'default.png', 2, '2001-08-25 00:56:04', '1987-07-03 21:39:25'),
(2, 'Illo.', 'illo', 'default.png', 'default.png', 2, '1993-04-26 19:16:48', '2001-10-16 08:26:15'),
(3, 'Facere.', 'facere', 'ng-creative-4rkipskuVcs-unsplash_1630466015_ddfeb7ab861096f07fa4.jpg', 'ng-creative-4rkipskuVcs-unsplash.jpg', 1, '2012-07-12 06:00:46', '2021-08-31 22:13:35'),
(4, 'Facere.', 'facere', 'default.png', 'default.png', 4, '1989-09-22 17:54:16', '1977-08-03 06:09:46'),
(5, 'Quia.', 'quia', 'default.png', 'default.png', 2, '2011-06-08 20:05:18', '1989-11-05 21:49:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gambar_produk`
--

CREATE TABLE `gambar_produk` (
  `id_gambar` int(10) UNSIGNED NOT NULL,
  `nama_gambar` varchar(255) NOT NULL,
  `slug_gambar` varchar(255) NOT NULL,
  `path_gambar` varchar(255) NOT NULL,
  `path_nama_gambar` varchar(255) NOT NULL,
  `id_produk` int(10) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `gambar_produk`
--

INSERT INTO `gambar_produk` (`id_gambar`, `nama_gambar`, `slug_gambar`, `path_gambar`, `path_nama_gambar`, `id_produk`, `created_at`, `updated_at`) VALUES
(1, 'Epson Proyektor', 'epson-proyektor', 'alex-litvin-MAYsdoYpGuk-unsplash_1631503030_7aa3216414d2ab53fa36.jpg', 'alex-litvin-MAYsdoYpGuk-unsplash.jpg', 3, '2018-10-21 21:34:51', '2021-09-12 22:17:10'),
(3, 'Layar 1', 'layar-1', 'chuttersnap-Q_KdjKxntH8-unsplash_1631502890_d9859f5b016865bbc951.jpg', 'chuttersnap-Q_KdjKxntH8-unsplash.jpg', 2, '2020-06-22 01:26:17', '2021-09-12 22:14:51'),
(4, 'Halaman', 'halaman', 'IMG_9906-min_1631502691_0bd728fe1d274cd4a5b5.jpg', 'IMG_9906-min.JPG', 1, '2000-05-31 23:11:00', '2021-09-12 22:11:31'),
(5, 'Aula', 'aula', 'IMG_9913_1631502639_f382508223f1b537499d.jpg', 'IMG_9913.JPG', 1, '2018-08-08 06:03:29', '2021-09-12 22:10:40'),
(6, 'NEC Proyektor', 'nec-proyektor', 'arunas-naujokas-EEnJpGHkU4k-unsplash_1631502993_e670d2f393a69a3a3f13.jpg', 'arunas-naujokas-EEnJpGHkU4k-unsplash.jpg', 3, '2021-08-30 19:05:50', '2021-09-12 22:16:33'),
(7, 'Epson 1', 'epson-1', 'epson-eb-w05-removebg-preview_1630368867_2b1a129467a7cc5bf9c0.png', 'epson-eb-w05-removebg-preview.png', 3, '2021-08-30 19:14:27', '2021-08-30 19:14:27'),
(8, 'HT-1', 'ht-1', 'HT-1_1631502725_836126cb37098564b5c8.jpg', 'HT-1.jpg', 4, '2021-08-30 19:24:20', '2021-09-12 22:12:06'),
(9, 'HT Baofeng', 'ht-baofeng', 'kjhjjk-removebg-preview_1630369734_aa76d745437ca04100d1.png', 'kjhjjk-removebg-preview.png', 4, '2021-08-30 19:28:54', '2021-08-30 19:28:54'),
(10, 'Kursi Sapporo', 'kursi-sapporo', 'chair-1_1631502858_1f355a5cfa4c1b73d797.jpg', 'chair-1.jpg', 5, '2021-08-30 19:39:18', '2021-09-12 22:14:18'),
(11, 'Kursi Siantano', 'kursi-siantano', 'chair-2_1631502847_7329d698aa1cb61dcb9a.jpg', 'chair-2.jpg', 5, '2021-08-30 19:39:36', '2021-09-12 22:14:07'),
(12, 'Megaphone 1', 'megaphone-1', 'megaphone-2_1631502953_d8976fdd726dbbdfd4d9.jpg', 'megaphone-2.jpg', 6, '2021-08-30 19:50:16', '2021-09-12 22:15:53'),
(13, 'Megaphone 2', 'megaphone-2', 'megaphone-1_1630371033_83ea9143cdc6977a29e2.jpg', 'megaphone-1.jpg', 6, '2021-08-30 19:50:33', '2021-08-30 19:50:33'),
(14, 'Sound 1', 'sound-1', 'sound-1_1630371234_2d8bd5adf5a1454fd64a.jpg', 'sound-1.jpg', 7, '2021-08-30 19:53:54', '2021-08-30 19:53:54'),
(15, 'Sound 2', 'sound-2', 'PicsArt_06-15-12.24.24_1630371248_97d70913e22ec6d5458e.png', 'PicsArt_06-15-12.24.24.png', 7, '2021-08-30 19:54:08', '2021-08-30 19:54:08'),
(16, 'Kamar', 'kamar', 'IMG_9953_1631502610_681a7445e2b2926825c7.jpg', 'IMG_9953.JPG', 1, '2021-08-30 20:07:08', '2021-09-12 22:10:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `slider`
--

CREATE TABLE `slider` (
  `id_slider` int(10) UNSIGNED NOT NULL,
  `nama_slider` varchar(255) NOT NULL,
  `slug_slider` varchar(255) NOT NULL,
  `path_slider` varchar(255) NOT NULL,
  `path_nama_slider` varchar(255) NOT NULL,
  `id_produk` int(10) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `slider`
--

INSERT INTO `slider` (`id_slider`, `nama_slider`, `slug_slider`, `path_slider`, `path_nama_slider`, `id_produk`, `created_at`, `updated_at`) VALUES
(1, 'Epson Proyektor', 'epson-proyektor', 'alex-litvin-MAYsdoYpGuk-unsplash_1631503030_7aa3216414d2ab53fa36.jpg', 'alex-litvin-MAYsdoYpGuk-unsplash.jpg', 3, '2018-10-21 21:34:51', '2021-09-12 22:17:10'),
(3, 'Layar 1', 'layar-1', 'chuttersnap-Q_KdjKxntH8-unsplash_1631502890_d9859f5b016865bbc951.jpg', 'chuttersnap-Q_KdjKxntH8-unsplash.jpg', 2, '2020-06-22 01:26:17', '2021-09-12 22:14:51'),
(4, 'Halaman', 'halaman', 'IMG_9906-min_1631502691_0bd728fe1d274cd4a5b5.jpg', 'IMG_9906-min.JPG', 1, '2000-05-31 23:11:00', '2021-09-12 22:11:31'),
(5, 'Aula', 'aula', 'IMG_9913_1631502639_f382508223f1b537499d.jpg', 'IMG_9913.JPG', 1, '2018-08-08 06:03:29', '2021-09-12 22:10:40'),
(6, 'NEC Proyektor', 'nec-proyektor', 'arunas-naujokas-EEnJpGHkU4k-unsplash_1631502993_e670d2f393a69a3a3f13.jpg', 'arunas-naujokas-EEnJpGHkU4k-unsplash.jpg', 3, '2021-08-30 19:05:50', '2021-09-12 22:16:33'),
(7, 'Epson 1', 'epson-1', 'epson-eb-w05-removebg-preview_1630368867_2b1a129467a7cc5bf9c0.png', 'epson-eb-w05-removebg-preview.png', 3, '2021-08-30 19:14:27', '2021-08-30 19:14:27'),
(8, 'HT-1', 'ht-1', 'HT-1_1631502725_836126cb37098564b5c8.jpg', 'HT-1.jpg', 4, '2021-08-30 19:24:20', '2021-09-12 22:12:06'),
(9, 'HT Baofeng', 'ht-baofeng', 'kjhjjk-removebg-preview_1630369734_aa76d745437ca04100d1.png', 'kjhjjk-removebg-preview.png', 4, '2021-08-30 19:28:54', '2021-08-30 19:28:54'),
(10, 'Kursi Sapporo', 'kursi-sapporo', 'chair-1_1631502858_1f355a5cfa4c1b73d797.jpg', 'chair-1.jpg', 5, '2021-08-30 19:39:18', '2021-09-12 22:14:18'),
(11, 'Kursi Siantano', 'kursi-siantano', 'chair-2_1631502847_7329d698aa1cb61dcb9a.jpg', 'chair-2.jpg', 5, '2021-08-30 19:39:36', '2021-09-12 22:14:07'),
(12, 'Megaphone 1', 'megaphone-1', 'megaphone-2_1631502953_d8976fdd726dbbdfd4d9.jpg', 'megaphone-2.jpg', 6, '2021-08-30 19:50:16', '2021-09-12 22:15:53'),
(13, 'Megaphone 2', 'megaphone-2', 'megaphone-1_1630371033_83ea9143cdc6977a29e2.jpg', 'megaphone-1.jpg', 6, '2021-08-30 19:50:33', '2021-08-30 19:50:33'),
(14, 'Sound 1', 'sound-1', 'sound-1_1630371234_2d8bd5adf5a1454fd64a.jpg', 'sound-1.jpg', 7, '2021-08-30 19:53:54', '2021-08-30 19:53:54'),
(15, 'Sound 2', 'sound-2', 'PicsArt_06-15-12.24.24_1630371248_97d70913e22ec6d5458e.png', 'PicsArt_06-15-12.24.24.png', 7, '2021-08-30 19:54:08', '2021-08-30 19:54:08'),
(16, 'Kamar', 'kamar', 'IMG_9953_1631502610_681a7445e2b2926825c7.jpg', 'IMG_9953.JPG', 1, '2021-08-30 20:07:08', '2021-09-12 22:10:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id_kegiatan` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug_kegiatan` varchar(255) NOT NULL,
  `sub_judul` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `kegiatan`
--

INSERT INTO `kegiatan` (`id_kegiatan`, `judul`, `slug_kegiatan`, `sub_judul`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Yes, We Are Open !', 'yes-we-are-open', 'BPA KM UII kembali membuka seluruh produknya seperti SCC dan SAC pada tahun 2021 ! Segera hubungi customer service untuk mendapatkan harga spesial dari setiap produk BPA KM UII !', 'ng-creative-4rkipskuVcs-unsplash_1629882381_9e2d24203fc4a586e2b6.jpg', '2021-08-29 00:00:00', '2021-08-29 00:00:00'),
(2, 'BPA KM UII Sukses Mengadakan CreativePreneurTalks 2020 !', 'bpa-km-uii-sukses-mengadakan-creativepreneurtalks-2020', 'Sabtu (31/10/2020), tim magang BPA KM UII sukses mengadakan webinar CreativePreneurTalks 2020 dengan tema \"Digital Branding Dalam Eksistensi Ekonomi Kreatif\" banget', 'dmitriy-frantsev-zbafP5GeL0Q-unsplash_1629885298_1a8d826dd5c825f15717.jpg', '2021-08-29 00:00:00', '2021-08-30 17:52:01'),
(3, 'Sosialisasi Gedung SCC', 'sosialisasi-gedung-scc', 'BPA (Badan Pengelola Aset ) KM UII adalah sebuah organisasi yang awalnya disebut Tim Kerja Pengelola Aset SCC UII yang pertama kali dibentuk tahun 2014. Terbentuknya BPA KM UII didasari atas kepentingan jangka Panjang Lembaga KM UII  yaitu dalam upaya menjadi lebih baik', 'tim-marshall--Ic0ESCHvWU-unsplash_1631503487_55df25021efbdcb6e411.jpg', '2021-08-29 00:00:00', '2021-09-12 22:24:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan`
--

CREATE TABLE `laporan` (
  `id_laporan` int(10) UNSIGNED NOT NULL,
  `nama_laporan` varchar(255) NOT NULL,
  `slug_laporan` varchar(255) NOT NULL,
  `path_laporan` varchar(255) NOT NULL,
  `path_nama_laporan` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `laporan`
--

INSERT INTO `laporan` (`id_laporan`, `nama_laporan`, `slug_laporan`, `path_laporan`, `path_nama_laporan`, `created_at`, `updated_at`) VALUES
(1, 'Laporan Triwulan 1', 'laporan-triwulan-1', 'Laporan triwulan-1_1630309141_3d9bc8a7b5d037d1c76c.pdf', 'Laporan triwulan-1.pdf', '2021-08-29 00:00:00', '2021-08-30 02:39:01'),
(2, 'Laporan Triwulan 2', 'laporan-triwulan-2', 'Laporan triwulan 2_1630309152_e7a887fa952313509be9.pdf', 'Laporan triwulan 2.pdf', '2021-08-29 00:00:00', '2021-08-30 02:39:12'),
(3, 'Laporan Triwulan 3', 'laporan-triwulan-3', 'Laporan triwulan 3_1630309167_811aa14ab480178ed03c.pdf', 'Laporan triwulan 3.pdf', '2021-08-29 00:00:00', '2021-08-30 02:39:27'),
(4, 'Laporan Triwulan 4', 'laporan-triwulan-4', 'Laporan triwulan 4_1630309179_c957f4e55d8d816c879a.pdf', 'Laporan triwulan 4.pdf', '2021-08-29 00:00:00', '2021-08-30 02:39:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2021-08-29-114330', 'App\\Database\\Migrations\\Users', 'default', 'App', 1630238155, 1),
(2, '2021-08-29-114357', 'App\\Database\\Migrations\\VisiMisi', 'default', 'App', 1630238156, 1),
(3, '2021-08-29-114435', 'App\\Database\\Migrations\\Sejarah', 'default', 'App', 1630238156, 1),
(4, '2021-08-29-114511', 'App\\Database\\Migrations\\Config', 'default', 'App', 1630238157, 1),
(5, '2021-08-29-114556', 'App\\Database\\Migrations\\Penulis', 'default', 'App', 1630238157, 1),
(6, '2021-08-29-114622', 'App\\Database\\Migrations\\Artikel', 'default', 'App', 1630238158, 1),
(7, '2021-08-29-114659', 'App\\Database\\Migrations\\Album', 'default', 'App', 1630238159, 1),
(8, '2021-08-29-114721', 'App\\Database\\Migrations\\GaleriFoto', 'default', 'App', 1630238160, 1),
(9, '2021-08-29-114743', 'App\\Database\\Migrations\\GaleriVideo', 'default', 'App', 1630238160, 1),
(10, '2021-08-29-114906', 'App\\Database\\Migrations\\Kegiatan', 'default', 'App', 1630238161, 1),
(11, '2021-08-29-115002', 'App\\Database\\Migrations\\Organisasi', 'default', 'App', 1630238161, 1),
(12, '2021-08-29-115055', 'App\\Database\\Migrations\\Laporan', 'default', 'App', 1630238162, 1),
(13, '2021-08-29-115143', 'App\\Database\\Migrations\\GambarLaporan', 'default', 'App', 1630238163, 1),
(14, '2021-08-29-115248', 'App\\Database\\Migrations\\Produk', 'default', 'App', 1630238163, 1),
(15, '2021-08-29-115322', 'App\\Database\\Migrations\\GambarProduk', 'default', 'App', 1630238164, 1),
(16, '2021-08-29-115350', 'App\\Database\\Migrations\\Paket', 'default', 'App', 1630238165, 1),
(17, '2021-08-29-115409', 'App\\Database\\Migrations\\Pesanan', 'default', 'App', 1630238166, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `organisasi`
--

CREATE TABLE `organisasi` (
  `id_organisasi` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `slug_organisasi` varchar(255) NOT NULL,
  `keterangan` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `organisasi`
--

INSERT INTO `organisasi` (`id_organisasi`, `nama`, `slug_organisasi`, `keterangan`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Anggota BPA', 'anggota-bpa', 'Struktur Organisasi BPA KM UII terdiri dari sekumpulan mahasiswa yang mana, bertugas untuk memimpin dan menjalankan organisasi, bertanggung jawab penuh atas keseluruhan organisasi, serta mengambil keputusan tertinggi mengenai kebijakan dan tata kelola organisasi selama satu periode tersebut.', 'xps-uWFFw7leQNI-unsplash_1631503286_a93a4002ad7934698a5f.jpg', '2021-08-29 00:00:00', '2021-09-12 22:21:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket`
--

CREATE TABLE `paket` (
  `id_paket` int(10) UNSIGNED NOT NULL,
  `nama_paket` varchar(255) NOT NULL,
  `slug_paket` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `id_produk` int(10) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `paket`
--

INSERT INTO `paket` (`id_paket`, `nama_paket`, `slug_paket`, `harga`, `id_produk`, `created_at`, `updated_at`) VALUES
(1, 'Proyektor Epson EB-X400 (Anggota KM UII)', 'proyektor-epson-eb-x400-anggota-km-uii', 100000, 3, '1998-08-14 23:18:59', '2021-08-30 19:08:47'),
(2, 'KM UII (HI) - normal: Seluruh Fasilitas', 'km-uii-hi-normal-seluruh-fasilitas', 250000, 1, '2008-10-09 06:04:24', '2021-08-30 20:08:27'),
(3, 'Layar Proyektor 72 Inch (Anggota KM UII)', 'layar-proyektor-72-inch-anggota-km-uii', 25000, 2, '1999-08-08 12:36:40', '2021-08-30 19:17:06'),
(4, 'Proyektor Epson EB-X400 (Non KM UII)', 'proyektor-epson-eb-x400-non-km-uii', 110000, 3, '1999-03-25 10:34:23', '2021-08-30 19:09:14'),
(5, 'Layar Proyektor 72 Inch (Non KM UII)', 'layar-proyektor-72-inch-non-km-uii', 30000, 2, '1972-12-17 10:01:04', '2021-08-30 19:17:32'),
(6, 'Proyektor NEC NP2250 (Anggota KM UII)', 'proyektor-nec-np2250-anggota-km-uii', 150000, 3, '2021-08-30 19:10:45', '2021-08-30 19:10:45'),
(7, 'Proyektor NEC NP2250 (Non KM UII)', 'proyektor-nec-np2250-non-km-uii', 165000, 3, '2021-08-30 19:11:02', '2021-08-30 19:11:02'),
(8, 'HT Toriphone-889 DLX (Anggota KM UII)', 'ht-toriphone-889-dlx-anggota-km-uii', 7000, 4, '2021-08-30 19:25:18', '2021-08-30 19:25:18'),
(9, 'HT Toriphone-889 DLX (Non KM UII)', 'ht-toriphone-889-dlx-non-km-uii', 8000, 4, '2021-08-30 19:25:37', '2021-08-30 19:25:37'),
(10, 'HT Verxion UV-5RA (Anggota KM UII)', 'ht-verxion-uv-5ra-anggota-km-uii', 7000, 4, '2021-08-30 19:26:00', '2021-08-30 19:26:00'),
(11, 'HT Verxion UV-5RA (Non KM UII)', 'ht-verxion-uv-5ra-non-km-uii', 8000, 4, '2021-08-30 19:26:16', '2021-08-30 19:26:16'),
(12, 'HT Baofeng UV82 (Anggota KM UII)', 'ht-baofeng-uv82-anggota-km-uii', 7000, 4, '2021-08-30 19:26:43', '2021-08-30 19:26:43'),
(13, 'HT Baofeng UV82 (Non KM UII)', 'ht-baofeng-uv82-non-km-uii', 8000, 4, '2021-08-30 19:27:00', '2021-08-30 19:27:00'),
(14, 'Kursi Sapporo (Anggota KM UII)', 'kursi-sapporo-anggota-km-uii', 5000, 5, '2021-08-30 19:40:08', '2021-08-30 19:40:08'),
(15, 'Kursi Sapporo (Non KM UII)', 'kursi-sapporo-non-km-uii', 6000, 5, '2021-08-30 19:40:22', '2021-08-30 19:40:22'),
(16, 'Kursi Siantano (Anggota KM UII)', 'kursi-siantano-anggota-km-uii', 5000, 5, '2021-08-30 19:40:39', '2021-08-30 19:40:39'),
(17, 'Kursi Siantano (Non KM UII)', 'kursi-siantano-non-km-uii', 6000, 5, '2021-08-30 19:40:56', '2021-08-30 19:40:56'),
(18, 'Megaphone 2R-2015S (Anggota KM UII)', 'megaphone-2r-2015s-anggota-km-uii', 25000, 6, '2021-08-30 19:51:09', '2021-08-30 19:51:09'),
(19, 'Megaphone 2R-2015S (Non KM UII)', 'megaphone-2r-2015s-non-km-uii', 30000, 6, '2021-08-30 19:51:27', '2021-08-30 19:51:27'),
(20, 'Sound Portable HTS P12E (Anggota KM UII)', 'sound-portable-hts-p12e-anggota-km-uii', 60000, 7, '2021-08-30 19:54:34', '2021-08-30 19:54:34'),
(21, 'Sound Portable HTS P12E (Non KM UII)', 'sound-portable-hts-p12e-non-km-uii', 65000, 7, '2021-08-30 19:54:50', '2021-08-30 19:54:50'),
(22, 'Organisasi Mahasiswa Non-KM UII: Seluruh Fasilitas', 'organisasi-mahasiswa-non-km-uii-seluruh-fasilitas', 750000, 1, '2021-08-30 20:09:03', '2021-08-30 20:09:03'),
(23, 'Umum (aula+kamar)', 'umum-aulakamar', 2500000, 1, '2021-08-30 20:09:43', '2021-08-30 20:09:43'),
(24, 'Wedding', 'wedding', 3700000, 1, '2021-08-30 20:10:01', '2021-08-30 20:10:01'),
(25, 'Aula (Non KM UII)', 'aula-non-km-uii', 1750000, 1, '2021-08-30 20:10:30', '2021-08-30 20:10:30'),
(26, 'Audit (Non KM UII)', 'audit-non-km-uii', 1000000, 1, '2021-08-30 20:11:04', '2021-08-30 20:11:04'),
(27, 'Audit + Kamar (Non KM UII)', 'audit-kamar-non-km-uii', 2000000, 1, '2021-08-30 20:11:34', '2021-08-30 20:11:34'),
(28, 'Kamar (Non KM UII)', 'kamar-non-km-uii', 1750000, 1, '2021-08-30 20:11:54', '2021-08-30 20:11:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penulis`
--

CREATE TABLE `penulis` (
  `id_penulis` int(10) UNSIGNED NOT NULL,
  `nama_penulis` varchar(255) NOT NULL,
  `slug_penulis` varchar(255) NOT NULL,
  `path_gambar` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `penulis`
--

INSERT INTO `penulis` (`id_penulis`, `nama_penulis`, `slug_penulis`, `path_gambar`, `created_at`, `updated_at`) VALUES
(1, 'Yuliana Ayu Lailasari M.M.', 'yuliana-ayu-lailasari-mm', 'penulis_default.png', '2009-11-03 20:32:22', '2006-07-22 05:43:24'),
(2, 'Unggul Adhiarja Januar S.Pt', 'unggul-adhiarja-januar-spt', 'penulis_default.png', '1990-11-28 20:16:46', '2008-07-28 21:44:19'),
(3, 'Manah Wacana', 'manah-wacana', 'penulis_default.png', '1990-12-16 04:06:26', '1985-11-12 10:51:57'),
(4, 'Warta Tirtayasa Saragih', 'warta-tirtayasa-saragih', 'penulis_default.png', '1978-02-11 01:37:41', '2021-08-29 06:58:04'),
(5, 'Ajeng Vivi Handayani', 'ajeng-vivi-handayani', 'lawless-capture-yKQqiApCSHk-unsplash_1630464295_c3477157d757a4fbbcc6.jpg', '2010-04-23 15:33:04', '2021-08-31 21:44:55'),
(7, 'Sutarno Prakasa', 'sutarno-prakasa', 'penulis_default.png', '2021-08-31 21:46:07', '2021-08-31 21:46:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` int(10) UNSIGNED NOT NULL,
  `tanggal_pinjam` datetime NOT NULL,
  `tanggal_kembali` datetime NOT NULL,
  `id_produk` int(10) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(10) UNSIGNED NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `slug_produk` varchar(255) NOT NULL,
  `detail_produk` longtext NOT NULL,
  `kontak` varchar(255) NOT NULL,
  `path_gambar_cover` varchar(255) NOT NULL,
  `path_nama_gambar` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `slug_produk`, `detail_produk`, `kontak`, `path_gambar_cover`, `path_nama_gambar`, `created_at`, `updated_at`) VALUES
(1, 'Gedung SCC', 'gedung-scc', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tincidunt ornare massa eget egestas purus viverra accumsan in nisl. Pharetra vel turpis nunc eget lorem dolor. Penatibus et magnis dis parturient montes. Lacus vestibulum sed arcu non odio. Eleifend quam adipiscing vitae proin sagittis nisl rhoncus mattis rhoncus. Lacus vestibulum sed arcu non odio. Elementum facilisis leo vel fringilla est ullamcorper eget nulla. Feugiat scelerisque varius morbi enim. Tortor pretium viverra suspendisse potenti nullam ac.Interdum velit euismod in pellentesque massa placerat duis ultricies. Condimentum vitae sapien pellentesque habitant. Tempor nec feugiat nisl pretium fusce id. Odio morbi quis commodo odio aenean sed adipiscing. Dui sapien eget mi proin sed libero enim sed faucibus. Ipsum nunc aliquet bibendum enim facilisis. Pellentesque eu tincidunt tortor aliquam nulla facilisi cras. Amet facilisis magna etiam tempor orci eu lobortis. Cras tincidunt lobortis feugiat vivamus at. Morbi tincidunt ornare massa eget. Amet porttitor eget dolor morbi non arcu risus quis varius. Etiam tempor orci eu lobortis elementum. Purus non enim praesent elementum facilisis leo vel. Bibendum est ultricies integer quis auctor elit sed vulputate.Molestie a iaculis at erat pellentesque adipiscing commodo elit at. Porta non pulvinar neque laoreet suspendisse interdum. Est velit egestas dui id ornare arcu. Tincidunt nunc pulvinar sapien et ligula ullamcorper malesuada. Duis ut diam quam nulla porttitor. Vitae justo eget magna fermentum iaculis eu non diam phasellus. Id porta nibh venenatis cras sed felis eget. Turpis massa sed elementum tempus egestas sed sed risus. Lacus sed turpis tincidunt id aliquet risus feugiat. Sed enim ut sem viverra aliquet eget. Pulvinar neque laoreet suspendisse interdum. Faucibus et molestie ac feugiat sed lectus vestibulum. Risus commodo viverra maecenas accumsan. Sit amet commodo nulla facilisi nullam vehicula ipsum. Urna id volutpat lacus laoreet non curabitur gravida arcu ac. Et malesuada fames ac turpis egestas. Maecenas pharetra convallis posuere morbi. Non pulvinar neque laoreet suspendisse interdum consectetur. A pellentesque sit amet porttitor eget dolor morbi non arcu.</p>\r\n', '08112656867', 'IMG_9903_1631418234_5f0f106ccacffd3b2ba8.jpg', 'IMG_9903.JPG', '2021-08-30 00:00:00', '2021-09-11 22:43:55'),
(2, 'Layar Proyektor', 'layar-proyektor', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Viverra aliquet eget sit amet tellus. At elementum eu facilisis sed odio morbi quis commodo odio. Malesuada fames ac turpis egestas maecenas. At tempor commodo ullamcorper a lacus vestibulum. Pulvinar sapien et ligula ullamcorper malesuada proin. Egestas erat imperdiet sed euismod nisi porta lorem. Eget aliquet nibh praesent tristique magna sit amet. Massa placerat duis ultricies lacus sed turpis tincidunt id aliquet. Semper eget duis at tellus at urna. Mi quis hendrerit dolor magna.Eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum. Vitae aliquet nec ullamcorper sit amet risus. Odio aenean sed adipiscing diam donec adipiscing. Eu mi bibendum neque egestas congue quisque egestas diam in. Dapibus ultrices in iaculis nunc sed augue lacus viverra vitae. Nunc sed augue lacus viverra. Lorem ipsum dolor sit amet consectetur adipiscing elit pellentesque. Vel orci porta non pulvinar neque. Arcu cursus euismod quis viverra nibh cras pulvinar. Mauris cursus mattis molestie a iaculis at.</p>\r\n', '082135794804', 'augusto-oazi-KWOcA8_Vu10-unsplash_1630368986_c2adf7d0eb28a3317955.jpg', 'augusto-oazi-KWOcA8_Vu10-unsplash.jpg', '2021-08-30 00:00:00', '2021-08-30 19:16:26'),
(3, 'Proyektor', 'proyektor', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Vestibulum morbi blandit cursus risus. Tempor commodo ullamcorper a lacus vestibulum sed. Est ultricies integer quis auctor elit sed vulputate mi sit. Tincidunt augue interdum velit euismod in. In cursus turpis massa tincidunt dui ut ornare. Pulvinar pellentesque habitant morbi tristique senectus et netus. Vitae turpis massa sed elementum. Nullam vehicula ipsum a arcu. Vel quam elementum pulvinar etiam. Cras adipiscing enim eu turpis egestas pretium aenean pharetra. Tortor pretium viverra suspendisse potenti nullam ac. Mattis aliquam faucibus purus in massa. Ut faucibus pulvinar elementum integer enim neque volutpat. Pellentesque diam volutpat commodo sed. At volutpat diam ut venenatis tellus in. Justo eget magna fermentum iaculis. Massa tempor nec feugiat nisl.Praesent semper feugiat nibh sed pulvinar proin gravida hendrerit. Eros donec ac odio tempor orci dapibus ultrices in iaculis. Tellus elementum sagittis vitae et. Etiam non quam lacus suspendisse faucibus interdum posuere. Bibendum ut tristique et egestas. Ac feugiat sed lectus vestibulum mattis ullamcorper velit sed ullamcorper. Ut etiam sit amet nisl. Lorem ipsum dolor sit amet consectetur adipiscing. Urna molestie at elementum eu facilisis. Varius morbi enim nunc faucibus. Urna condimentum mattis pellentesque id nibh tortor id aliquet lectus. Ac placerat vestibulum lectus mauris ultrices. Donec ac odio tempor orci dapibus ultrices in iaculis nunc. Viverra orci sagittis eu volutpat. Pulvinar pellentesque habitant morbi tristique senectus et netus et. Id faucibus nisl tincidunt eget nullam non nisi est sit. Sit amet dictum sit amet justo donec.Consectetur purus ut faucibus pulvinar elementum integer enim. Commodo quis imperdiet massa tincidunt nunc. Morbi enim nunc faucibus a pellentesque sit amet porttitor. Mattis molestie a iaculis at erat pellentesque adipiscing. Faucibus vitae aliquet nec ullamcorper sit amet. Magna sit amet purus gravida quis blandit. Neque laoreet suspendisse interdum consectetur libero id. Iaculis at erat pellentesque adipiscing commodo elit at imperdiet dui. At ultrices mi tempus imperdiet nulla malesuada pellentesque elit eget. Non sodales neque sodales ut etiam. Aliquet eget sit amet tellus cras adipiscing enim. Fringilla ut morbi tincidunt augue interdum velit. Commodo quis imperdiet massa tincidunt nunc pulvinar sapien et. Urna nec tincidunt praesent semper feugiat nibh sed pulvinar. In fermentum et sollicitudin ac orci phasellus egestas. Habitant morbi tristique senectus et netus et malesuada fames ac. Et netus et malesuada fames ac turpis egestas integer eget. Auctor eu augue ut lectus arcu.</p>\r\n', '082135794804', 'dylan-calluy-WU4ek4KCyjw-unsplash_1630368293_c6f7dde6310891d5d2a7.jpg', 'dylan-calluy-WU4ek4KCyjw-unsplash.jpg', '2021-08-30 00:00:00', '2021-08-30 19:12:08'),
(4, 'Handy Talky (HT)', 'handy-talky-ht', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tincidunt ornare massa eget egestas purus viverra accumsan in nisl. Pharetra vel turpis nunc eget lorem dolor. Penatibus et magnis dis parturient montes. Lacus vestibulum sed arcu non odio. Eleifend quam adipiscing vitae proin sagittis nisl rhoncus mattis rhoncus. Lacus vestibulum sed arcu non odio. Elementum facilisis leo vel fringilla est ullamcorper eget nulla. Feugiat scelerisque varius morbi enim. Tortor pretium viverra suspendisse potenti nullam ac.Interdum velit euismod in pellentesque massa placerat duis ultricies. Condimentum vitae sapien pellentesque habitant. Tempor nec feugiat nisl pretium fusce id. Odio morbi quis commodo odio aenean sed adipiscing. Dui sapien eget mi proin sed libero enim sed faucibus. Ipsum nunc aliquet bibendum enim facilisis. Pellentesque eu tincidunt tortor aliquam nulla facilisi cras. Amet facilisis magna etiam tempor orci eu lobortis. Cras tincidunt lobortis feugiat vivamus at. Morbi tincidunt ornare massa eget. Amet porttitor eget dolor morbi non arcu risus quis varius. Etiam tempor orci eu lobortis elementum. Purus non enim praesent elementum facilisis leo vel. Bibendum est ultricies integer quis auctor elit sed vulputate.Molestie a iaculis at erat pellentesque adipiscing commodo elit at. Porta non pulvinar neque laoreet suspendisse interdum. Est velit egestas dui id ornare arcu. Tincidunt nunc pulvinar sapien et ligula ullamcorper malesuada. Duis ut diam quam nulla porttitor. Vitae justo eget magna fermentum iaculis eu non diam phasellus. Id porta nibh venenatis cras sed felis eget. Turpis massa sed elementum tempus egestas sed sed risus. Lacus sed turpis tincidunt id aliquet risus feugiat. Sed enim ut sem viverra aliquet eget. Pulvinar neque laoreet suspendisse interdum. Faucibus et molestie ac feugiat sed lectus vestibulum. Risus commodo viverra maecenas accumsan. Sit amet commodo nulla facilisi nullam vehicula ipsum. Urna id volutpat lacus laoreet non curabitur gravida arcu ac. Et malesuada fames ac turpis egestas. Maecenas pharetra convallis posuere morbi. Non pulvinar neque laoreet suspendisse interdum consectetur. A pellentesque sit amet porttitor eget dolor morbi non arcu.</p>\r\n', '082135794804', 'HT-2_1631418181_fb720b9152bab9a794d8.jpg', 'HT-2.jpg', '2021-08-30 19:23:56', '2021-09-11 22:43:02'),
(5, 'Kursi', 'kursi', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tincidunt ornare massa eget egestas purus viverra accumsan in nisl. Pharetra vel turpis nunc eget lorem dolor. Penatibus et magnis dis parturient montes. Lacus vestibulum sed arcu non odio. Eleifend quam adipiscing vitae proin sagittis nisl rhoncus mattis rhoncus. Lacus vestibulum sed arcu non odio. Elementum facilisis leo vel fringilla est ullamcorper eget nulla. Feugiat scelerisque varius morbi enim. Tortor pretium viverra suspendisse potenti nullam ac.Interdum velit euismod in pellentesque massa placerat duis ultricies. Condimentum vitae sapien pellentesque habitant. Tempor nec feugiat nisl pretium fusce id. Odio morbi quis commodo odio aenean sed adipiscing. Dui sapien eget mi proin sed libero enim sed faucibus. Ipsum nunc aliquet bibendum enim facilisis. Pellentesque eu tincidunt tortor aliquam nulla facilisi cras. Amet facilisis magna etiam tempor orci eu lobortis. Cras tincidunt lobortis feugiat vivamus at. Morbi tincidunt ornare massa eget. Amet porttitor eget dolor morbi non arcu risus quis varius. Etiam tempor orci eu lobortis elementum. Purus non enim praesent elementum facilisis leo vel. Bibendum est ultricies integer quis auctor elit sed vulputate.Molestie a iaculis at erat pellentesque adipiscing commodo elit at. Porta non pulvinar neque laoreet suspendisse interdum. Est velit egestas dui id ornare arcu. Tincidunt nunc pulvinar sapien et ligula ullamcorper malesuada. Duis ut diam quam nulla porttitor. Vitae justo eget magna fermentum iaculis eu non diam phasellus. Id porta nibh venenatis cras sed felis eget. Turpis massa sed elementum tempus egestas sed sed risus. Lacus sed turpis tincidunt id aliquet risus feugiat.</p>\r\n', '082135794804', 'chair-3_1631503141_51605eb6d49d90c3f54a.jpg', 'chair-3.jpg', '2021-08-30 19:38:52', '2021-09-12 22:19:01'),
(6, 'Megaphone', 'megaphone', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tincidunt ornare massa eget egestas purus viverra accumsan in nisl. Pharetra vel turpis nunc eget lorem dolor. Penatibus et magnis dis parturient montes. Lacus vestibulum sed arcu non odio. Eleifend quam adipiscing vitae proin sagittis nisl rhoncus mattis rhoncus. Lacus vestibulum sed arcu non odio. Elementum facilisis leo vel fringilla est ullamcorper eget nulla. Feugiat scelerisque varius morbi enim. Tortor pretium viverra suspendisse potenti nullam ac.Interdum velit euismod in pellentesque massa placerat duis ultricies. Condimentum vitae sapien pellentesque habitant. Tempor nec feugiat nisl pretium fusce id. Odio morbi quis commodo odio aenean sed adipiscing. Dui sapien eget mi proin sed libero enim sed faucibus. Ipsum nunc aliquet bibendum enim facilisis. Pellentesque eu tincidunt tortor aliquam nulla facilisi cras. Amet facilisis magna etiam tempor orci eu lobortis. Cras tincidunt lobortis feugiat vivamus at. Morbi tincidunt ornare massa eget. Amet porttitor eget dolor morbi non arcu risus quis varius. Etiam tempor orci eu lobortis elementum. Purus non enim praesent elementum facilisis leo vel. Bibendum est ultricies integer quis auctor elit sed vulputate.Molestie a iaculis at erat pellentesque adipiscing commodo elit at. Porta non pulvinar neque laoreet suspendisse interdum. Est velit egestas dui id ornare arcu. Tincidunt nunc pulvinar sapien et ligula ullamcorper malesuada. Duis ut diam quam nulla porttitor. Vitae justo eget magna fermentum iaculis eu non diam phasellus. Id porta nibh venenatis cras sed felis eget. Turpis massa sed elementum tempus egestas sed sed risus. Lacus sed turpis tincidunt id aliquet risus feugiat. Sed enim ut sem viverra aliquet eget. Pulvinar neque laoreet suspendisse interdum. Faucibus et molestie ac feugiat sed lectus vestibulum. Risus commodo viverra maecenas accumsan. Sit amet commodo nulla facilisi nullam vehicula ipsum. Urna id volutpat lacus laoreet non curabitur gravida arcu ac. Et malesuada fames ac turpis egestas. Maecenas pharetra convallis posuere morbi. Non pulvinar neque laoreet suspendisse interdum consectetur. A pellentesque sit amet porttitor eget dolor morbi non arcu.</p>\r\n', '082135794804', '73add1d3466835e48898805783e75768_1630370984_8c42dd43e95afb2d3354.jpg', '73add1d3466835e48898805783e75768.jpg', '2021-08-30 19:49:44', '2021-08-30 19:49:44'),
(7, 'Sound Portable', 'sound-portable', '<p>aasdfghjrt</p>\r\n', '082135794804', 'sound-2_1631418129_93d0fdac22568a58af6e.jpg', 'sound-2.jpg', '2021-08-30 19:53:26', '2021-09-11 22:42:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sejarah`
--

CREATE TABLE `sejarah` (
  `id_sejarah` int(10) UNSIGNED NOT NULL,
  `nama_konten` varchar(255) NOT NULL,
  `slug_sejarah` varchar(255) NOT NULL,
  `isi_sejarah` longtext NOT NULL,
  `isi_logo` longtext NOT NULL,
  `path_gambar_sejarah` varchar(255) NOT NULL,
  `path_gambar_logo` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sejarah`
--

INSERT INTO `sejarah` (`id_sejarah`, `nama_konten`, `slug_sejarah`, `isi_sejarah`, `isi_logo`, `path_gambar_sejarah`, `path_gambar_logo`, `created_at`, `updated_at`) VALUES
(1, 'Sejarah', 'sejarah', '<p>BPA (Badan Pengelola Aset ) KM UII adalah sebuah organisasi yang awalnya disebut Tim Kerja Pengelola Aset SCC UII yang pertama kali dibentuk tahun 2014. Terbentuknya BPA KM UII didasari atas kepentingan jangka Panjang Lembaga KM UII yaitu dalam upaya mewujudkan kemandirian, serta proses perbaikan sistem kelembagaan sehingga dapat meningkatkan tata kelola di Lembaga KM UII. Unit Usaha BPA yang awalnya hanya mengandalkan penyewaan SCC, sekarang terus berkembang hingga pada usaha-usaha lain diantaranya pengelolaan jas almamater, layanan sistem informasi, dan usaha strategis lainnya.</p>\r\n', '<ol>\r\n	<li>3 pilar utama BPA bermakna bahwa BPA sebagai organisasi yang menjalankan kegiatannya berdasarkan asas <em><em>best practices for transparancy, professionalism,</em></em>&nbsp;dan <em><em>accountability.</em></em>&nbsp;Asas tersebut merupakan landasan dari BPA dalam menjalankan kegiatan organisasi.</li>\r\n	<li>Segitiga ke atas bermakna bahwa BPA akan selalu mendukung segala upaya menuju perbaikan untuk mencapai tujuan organisasi.</li>\r\n	<li>Segitiga kebawah bermakna bahwa BPA akan selalu memperhatikan masyarakat, terutama membantu dalam pengabdian masyarakat dan sosial.</li>\r\n	<li>Warna kuning yang artinya harapan.</li>\r\n	<li>Warna biru berarti ketegasan, atau kewibawaan.</li>\r\n	<li>Perisai bermakna bahwa BPA akan menjaga komitmen untuk mewujudkan tujuan lembaga KM UII.</li>\r\n</ol>\r\n', 'sejarah bpa km uii_1630367437_f2e9f061c0540963bbd8.png', 'ikon_web_1631504861_3b576241dc262e7a57f7.png', '2021-08-29 00:00:00', '2021-09-12 22:47:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug_user` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `name`, `slug_user`, `username`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'super-admin', 'admin', 'admin@gmail.com', '$2y$10$lAHHk2CWXsPVnOmqP4JF2.GICrhEh9OeLuAvJkH0J1rd864/4o8Aq', '2021-08-29 00:00:00', '2021-08-29 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `visi_misi`
--

CREATE TABLE `visi_misi` (
  `id_visi_misi` int(10) UNSIGNED NOT NULL,
  `nama_konten` varchar(255) NOT NULL,
  `slug_visi_misi` varchar(255) NOT NULL,
  `isi_visi` longtext NOT NULL,
  `isi_misi` longtext NOT NULL,
  `path_gambar_visi` varchar(255) NOT NULL,
  `path_gambar_misi` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `visi_misi`
--

INSERT INTO `visi_misi` (`id_visi_misi`, `nama_konten`, `slug_visi_misi`, `isi_visi`, `isi_misi`, `path_gambar_visi`, `path_gambar_misi`, `created_at`, `updated_at`) VALUES
(1, 'Visi Misi', 'visi-misi', '<p>Menjadi organisasi yang secara berkelanjutan mengembangkan diri dan memberikan manfaat kepada umat dalam rangka mewujudkan tujuan lembaga KM UII melalui pengelolaan aset lembaga yang professional, akuntabel dan transparan.</p>\r\n', '<ol>\r\n	<li>Mengoptimalkan pengelolaan aset lembaga berdasarkan prinsip-prinsip badan usaha yang professional, akuntabel dan transparan</li>\r\n	<li>Memperkuat sumber daya keuangan lembaga KM UII melalui sumbangan bagi hasil usaha.</li>\r\n	<li>Mewujudkan SDM yang unggul, terampil, professional dalam menjalankan fungsi dan perannya sebagai pengelola aset lembaga.</li>\r\n	<li>Mengoptimalkan pemanfaatan sistem informasi, kearsipan dan administrasi data organisasi.</li>\r\n	<li>Menyelenggarakan usaha-usaha yang mampu menciptakan manfaat bagi mahasiswa dan masyarakat umum.</li>\r\n</ol>\r\n', 'xps-7ZWVnVSaafY-unsplash_1631270603_fc93e721b2cdfcd74c7a.jpg', 'stephen-andrews-D5n2pBY706E-unsplash_1631270622_fb65f24dda4c5c9659ea.jpg', '2021-08-29 00:00:00', '2021-09-12 22:44:45');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`);

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`),
  ADD KEY `id_penulis` (`id_penulis`);

--
-- Indeks untuk tabel `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id_config`);

--
-- Indeks untuk tabel `galeri_foto`
--
ALTER TABLE `galeri_foto`
  ADD PRIMARY KEY (`id_galeri_foto`),
  ADD KEY `id_album` (`id_album`);

--
-- Indeks untuk tabel `galeri_video`
--
ALTER TABLE `galeri_video`
  ADD PRIMARY KEY (`id_galeri_video`);

--
-- Indeks untuk tabel `gambar_laporan`
--
ALTER TABLE `gambar_laporan`
  ADD PRIMARY KEY (`id_gambar`),
  ADD KEY `id_laporan` (`id_laporan`);

--
-- Indeks untuk tabel `gambar_produk`
--
ALTER TABLE `gambar_produk`
  ADD PRIMARY KEY (`id_gambar`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indeks untuk tabel `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id_kegiatan`);

--
-- Indeks untuk tabel `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id_laporan`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `organisasi`
--
ALTER TABLE `organisasi`
  ADD PRIMARY KEY (`id_organisasi`);

--
-- Indeks untuk tabel `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`id_paket`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indeks untuk tabel `penulis`
--
ALTER TABLE `penulis`
  ADD PRIMARY KEY (`id_penulis`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `sejarah`
--
ALTER TABLE `sejarah`
  ADD PRIMARY KEY (`id_sejarah`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `visi_misi`
--
ALTER TABLE `visi_misi`
  ADD PRIMARY KEY (`id_visi_misi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `album`
--
ALTER TABLE `album`
  MODIFY `id_album` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `config`
--
ALTER TABLE `config`
  MODIFY `id_config` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `galeri_foto`
--
ALTER TABLE `galeri_foto`
  MODIFY `id_galeri_foto` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `galeri_video`
--
ALTER TABLE `galeri_video`
  MODIFY `id_galeri_video` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `gambar_laporan`
--
ALTER TABLE `gambar_laporan`
  MODIFY `id_gambar` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `gambar_produk`
--
ALTER TABLE `gambar_produk`
  MODIFY `id_gambar` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id_kegiatan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id_laporan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `organisasi`
--
ALTER TABLE `organisasi`
  MODIFY `id_organisasi` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `paket`
--
ALTER TABLE `paket`
  MODIFY `id_paket` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `penulis`
--
ALTER TABLE `penulis`
  MODIFY `id_penulis` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesanan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `sejarah`
--
ALTER TABLE `sejarah`
  MODIFY `id_sejarah` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `visi_misi`
--
ALTER TABLE `visi_misi`
  MODIFY `id_visi_misi` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD CONSTRAINT `artikel_ibfk_1` FOREIGN KEY (`id_penulis`) REFERENCES `penulis` (`id_penulis`);

--
-- Ketidakleluasaan untuk tabel `galeri_foto`
--
ALTER TABLE `galeri_foto`
  ADD CONSTRAINT `galeri_foto_ibfk_1` FOREIGN KEY (`id_album`) REFERENCES `album` (`id_album`);

--
-- Ketidakleluasaan untuk tabel `gambar_laporan`
--
ALTER TABLE `gambar_laporan`
  ADD CONSTRAINT `gambar_laporan_ibfk_1` FOREIGN KEY (`id_laporan`) REFERENCES `laporan` (`id_laporan`);

--
-- Ketidakleluasaan untuk tabel `gambar_produk`
--
ALTER TABLE `gambar_produk`
  ADD CONSTRAINT `gambar_produk_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`);

--
-- Ketidakleluasaan untuk tabel `paket`
--
ALTER TABLE `paket`
  ADD CONSTRAINT `paket_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`);

--
-- Ketidakleluasaan untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
