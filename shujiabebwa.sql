-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 22 Des 2025 pada 09.34
-- Versi server: 5.7.24
-- Versi PHP: 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shujiabebwa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `booking_transactions`
--

CREATE TABLE `booking_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_trx_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `started_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `schedule_at` date NOT NULL,
  `proof` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_total` bigint(20) NOT NULL,
  `total_amount` bigint(20) NOT NULL,
  `total_tax_amount` bigint(20) NOT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `booking_transactions`
--

INSERT INTO `booking_transactions` (`id`, `booking_trx_id`, `name`, `phone`, `email`, `started_time`, `schedule_at`, `proof`, `post_code`, `city`, `address`, `sub_total`, `total_amount`, `total_tax_amount`, `is_paid`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'SHUJIA1234', 'Dhini', '6281319175249', 'dhini@gmail.com', '09:00:00', '2004-11-08', '01K2VWPHT6RTG11F2H3TKQHH9C.jpeg', '40559', 'Bekasi', 'jatibening', 2100000, 2331000, 231000, 1, NULL, '2025-08-17 04:30:09', '2025-08-17 04:50:50'),
(2, 'SHUJIA1234', 'Dhini', '6281319175249', 'dhini@gmail.com', '08:00:00', '2004-11-08', '01K2VWY336XSP6FAQ1KZFDQ1Z7.jpeg', '40559', 'Bekasi', 'jatibening 2', 2100000, 2331000, 231000, 1, NULL, '2025-08-17 04:34:16', '2025-08-17 04:56:28'),
(3, 'SHUJIA8044', 'Shayna Putri', '6281926352291', 'shayna@gmail.com', '10:00', '2025-08-18', 'proofs/3PhWefV9p0ocOMe1Yu6OcXBO1vkDIbsBEIuHuv2f.jpg', '123233', 'Jakarta', 'jl maju pantang mundur', 2310000, 2564100, 254100, 0, NULL, '2025-08-17 10:52:18', '2025-08-17 10:52:18'),
(4, 'SHUJIA4238', 'Shayna Putri', '6281926352291', 'shayna@gmail.com', '10:00', '2025-08-18', 'proofs/8zctibyHYMuPvYhh2rzrILLl4MGLCmqTCopkMU3E.jpg', '123233', 'Jakarta', 'jl maju pantang mundur', 2310000, 2564100, 254100, 0, NULL, '2025-08-17 10:57:46', '2025-08-17 10:57:46'),
(5, 'SHUJIA8470', 'dhini', '081319273561', 'dhini@gmail.com', '10:00', '2025-08-20', 'proofs/CrXodPZESxE5vfWUAJCRryBxJ1ukNY5G7q9nGinn.png', '17256', 'Manchester', 'jatibening', 2100000, 2331000, 231000, 1, NULL, '2025-08-19 03:15:54', '2025-08-19 03:17:08'),
(6, 'SHUJIA6007', 'putri', '018188181', 'jara@gmail.com', '09:00', '2025-08-20', 'proofs/dAtgx3C82YNDMuzgTxYmtndHPRls31bWPgrPyWq0.png', '10101', 'Liverpool', 'ayaan', 2100000, 2331000, 231000, 0, NULL, '2025-08-19 03:39:28', '2025-08-19 03:39:28'),
(7, 'SHUJIA4267', 'vania', '018191919', 'vania@gamaml.com', '10:00', '2025-08-20', 'proofs/fwzdjYf7LVAsHHHAZYn1qhnddPI2IwrjIPLyA1FV.png', '12211', 'Edinburgh', 'mawan', 1980000, 2197800, 217800, 0, NULL, '2025-08-19 03:55:20', '2025-08-19 03:55:20'),
(8, 'SHUJIA9643', 'adinda', '0819283546', 'adinda@gmail.com', '09:00', '2025-08-20', 'proofs/6Booxa4Zr5DU1OyF8uNeouR6HCGchTuDwvzinS2o.png', '1232', 'Glasgow', 'jalan', 1980000, 2197800, 217800, 1, NULL, '2025-08-19 05:44:22', '2025-08-19 06:21:54'),
(9, 'SHUJIA7898', 'bb', '89', 'bb@gma.com', '11:00', '2025-08-20', 'proofs/mwJeKkZZ4Bna9ZpZBTD2yXl9EaQnFcBiJdU3Vudl.png', '6666', 'Glasgow', 'g', 120000, 133200, 13200, 0, NULL, '2025-08-19 08:28:29', '2025-08-19 08:28:29'),
(10, 'SHUJIA1033', 'aja', '0119191', 'aja@gmail.com', '10:00', '2025-08-20', 'proofs/QoKiwirbMWNaLNFY0xsYDCzaYywpqo5oNaSrGZVQ.png', '7171', 'Liverpool', 'jaja', 1980000, 2197800, 217800, 0, NULL, '2025-08-19 08:34:21', '2025-08-19 08:34:21'),
(11, 'SHUJIA3847', 'Ramdhini Novita Sari', '081319276534', 'ramdhini@gmail.com', '10:00', '2025-08-21', 'proofs/5nIykrmqD264pqXP4skm6FeE9gpRjWyxza5EoqJj.png', '12862', 'Bekasi', 'jl. raya jatibening 2 no 31', 400000, 444000, 44000, 0, NULL, '2025-08-19 22:06:28', '2025-08-19 22:06:28'),
(12, 'SHUJIA1117', 'Ramdhini Novita Sari', '081818181818', 'ramdhini01@gmail.com', '12:00', '2025-08-21', 'proofs/IPLsgF8PCJo5aYznbf6Us6VMTaFXZYVup6J5sqas.png', '12975', 'Bekasi', 'jl. raya jatibening', 1050000, 1165500, 115500, 0, NULL, '2025-08-19 23:06:46', '2025-08-19 23:06:46'),
(13, 'SHUJIA4835', 'Ramdhini Novita Sari', '081319175248', 'ramdhini01@gmail.com', '11:00', '2025-08-22', 'proofs/yTeAKQvQLgeFtBie8VcAoYAIqNxxtMA1ckpwP2JN.jpg', '17624', 'Bekasi', 'jl. raya jatibening 1, no .28', 750000, 832500, 82500, 0, NULL, '2025-08-21 08:38:09', '2025-08-21 08:38:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-356a192b7913b04c54574d18c28d46e6395428ab', 'i:2;', 1766330351),
('laravel-cache-356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1766330351;', 1766330351),
('laravel-cache-livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6', 'i:1;', 1766326712),
('laravel-cache-livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6:timer', 'i:1766326712;', 1766326712);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_white` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `photo`, `photo_white`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Living Room', 'living-room', '01K2V79JKQY4B38R8BKXXGPJD5.png', '01K2V79JM24BMSRMJ7WWG405EN.png', '2025-08-19 20:50:53', '2025-08-16 22:16:04', '2025-08-19 20:50:53'),
(2, 'Kitchens', 'kitchens', '01K2V849NAXN7Q65FZC4QZQT1S.png', '01K2V849NG9XZH2DXG6AP8XE4Z.png', '2025-08-19 20:51:03', '2025-08-16 22:30:39', '2025-08-19 20:51:03'),
(3, 'Gardens', 'gardens', '01K2V85Z91DER5YBRV18D1CBNB.png', '01K2V85Z97FRWEX5RBTB3ZSB6G.png', '2025-08-19 20:51:13', '2025-08-16 22:31:34', '2025-08-19 20:51:13'),
(4, 'Security', 'security', '01K2V879862T8135FH002DH75W.png', '01K2V8798CXMMEBYVW03HHJWCP.png', '2025-08-19 20:51:31', '2025-08-16 22:32:17', '2025-08-19 20:51:31'),
(5, 'Recreations', 'recreations', '01K2V89CX2GQCBMZHM52YYAACA.png', '01K2V89CX6M93MGFQ2ZJB9VM29.png', '2025-08-19 20:51:31', '2025-08-16 22:33:26', '2025-08-19 20:51:31'),
(6, 'Storages', 'storages', '01K2V8ASEK05ETFE204PRZDG44.png', '01K2V8ASEQ48K6VP1XDM1CSSYC.png', '2025-08-19 20:51:31', '2025-08-16 22:34:12', '2025-08-19 20:51:31'),
(7, 'CONTOH', 'contoh', '01K31KKZEBT2X4DCMR0GAA5D0A.png', '01K31KKZEPV5PMXQM12TJ5QX9R.png', '2025-08-19 20:51:31', '2025-08-19 09:46:54', '2025-08-19 20:51:31'),
(8, 'Instalasi', 'instalasi', 'categories/01KD0QV173M3QTNACV4J6J1Q61.jpeg', 'categories/01KD0QV5FWBREAKXFHY15JKKSD.jpeg', NULL, '2025-08-19 11:43:44', '2025-12-21 08:18:32'),
(9, 'Pipa Air', 'pipa-air', '01K31TVY22DZQ62CMFF78FHG7D.png', '01K32TEC0EWW4WNBZSV79AEBSN.png', NULL, '2025-08-19 11:53:35', '2025-08-19 21:05:25'),
(10, 'Rumah Bersih', 'rumah-bersih', '01K31VBC9BCCM9127TEJWC8YVC.png', '01K32T55VG06R75JKADKJ4FMR0.png', NULL, '2025-08-19 12:02:01', '2025-08-19 21:00:23'),
(11, 'Dekorasi', 'dekorasi', '01K31VGNKF7C7NPD7QJAA8D2JB.png', '01K32TFB0JH8H3HRM2E6EKVSZX.png', NULL, '2025-08-19 12:04:54', '2025-08-19 21:05:56'),
(12, 'Perbaikan', 'perbaikan', '01K31VHV0254R2YJHDAPMK3799.png', '01K32TG8RZ3MBM999X8T7385AH.png', NULL, '2025-08-19 12:05:32', '2025-08-19 21:06:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `home_services`
--

CREATE TABLE `home_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` bigint(20) UNSIGNED NOT NULL,
  `price` bigint(20) UNSIGNED NOT NULL,
  `is_popular` tinyint(1) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `home_services`
--

INSERT INTO `home_services` (`id`, `slug`, `name`, `thumbnail`, `about`, `duration`, `price`, `is_popular`, `category_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'home-family-theater-best-lights-installation', 'Home Family Theater Best Lights Installation', '01K2VEWKSBDSB47FZ5ZEHZ3XWJ.png', 'Membuat suasana rumah lebih nyaman tanpa harus ribet keluar dan mencari cinema untuk family time setiap harinya', 3, 1980000, 1, 1, '2025-08-19 20:51:50', '2025-08-17 00:28:47', '2025-08-19 20:51:50'),
(2, 'mini-swim-pool-and-kids-soccer-fields-grass', 'Mini Swim Pool and Kids Soccer Fields Grass', '01K2VFVTCJ2VFF92RVTDDC5FPP.png', 'Membuat suasana rumah lebih nyaman tanpa harus ribet keluar dan mencari kolam renang', 4, 210000, 0, 5, '2025-08-19 20:51:50', '2025-08-17 00:45:50', '2025-08-19 20:51:50'),
(3, 'zen-cactus-oxygen-source-original-plant', 'Zen Cactus Oxygen Source Original Plant', '01K2VFYEQJJ75R1165B2XRKPAE.png', 'Membuat suasana kebun rumah lebih nyaman tanpa harus ribet keluar mencari lapangan', 2, 120000, 1, 3, '2025-08-19 20:51:50', '2025-08-17 00:47:16', '2025-08-19 20:51:50'),
(4, 'sapu-keliling', 'SAPU KELILING', '01K2YW8AVTXQCPAMWA6YTF0W22.jpg', 'jasa sapu keliling', 1, 20000, 1, 1, '2025-08-19 20:51:50', '2025-08-18 08:20:06', '2025-08-19 20:51:50'),
(5, 'jasaan', 'JASAAN', '01K31KSAE8MBAVDFS5K6V6F7VT.png', 'GATAU', 2, 2000, 0, 3, '2025-08-19 20:51:50', '2025-08-19 09:49:49', '2025-08-19 20:51:50'),
(6, 'perbaikan-instalasi-listrik-rumah-aman-dan-profesional', 'Perbaikan Instalasi Listrik Rumah Aman dan Profesional', '01K31TD7RDE3KTNDPVJE57ZQD9.png', 'Layanan perbaikan instalasi listrik untuk rumah atau kantor, termasuk pengecekan kabel, MCB, dan peralatan listrik agar berfungsi normal dan aman digunakan.', 3, 150000, 1, 8, NULL, '2025-08-19 11:45:33', '2025-08-19 11:45:33'),
(7, 'pemasangan-stop-kontak-saklar-listrik-terstandarisasi', 'Pemasangan Stop Kontak & Saklar Listrik Terstandarisasi', '01K31VQQ88WJC40BJZNKK9ZHWB.png', ' Layanan pemasangan stop kontak dan saklar baru dengan hasil rapi dan aman, cocok untuk menambah titik listrik di rumah, kantor, maupun ruangan usaha Anda.', 3, 250000, 0, 8, NULL, '2025-08-19 12:08:45', '2025-08-19 12:08:45'),
(8, 'instalasi-ac-kipas-angin-tv-dan-elektronik-rumah-modern', 'Instalasi AC, Kipas Angin, TV, dan Elektronik Rumah Modern', '01K31VXBGD5WZMWDXQ2TBB8ZN4.png', 'Layanan instalasi berbagai peralatan elektronik rumah tangga seperti AC, kipas angin, televisi, hingga perangkat lain agar langsung siap digunakan dengan aman dan rapi.\n', 2, 200000, 1, 8, NULL, '2025-08-19 12:11:50', '2025-08-19 12:11:50'),
(9, 'perbaikan-pipa-bocor-rumah-aman-dan-berkualitas', 'Perbaikan Pipa Bocor Rumah Aman dan Berkualitas', '01K31W1WM9QV242M9BTJK7GGF6.png', 'Layanan perbaikan kebocoran pipa air rumah tangga, baik pipa PVC maupun besi, dengan hasil rapi dan tahan lama.', 5, 400000, 1, 9, NULL, '2025-08-19 12:14:18', '2025-08-19 22:31:36'),
(10, 'perbaikan-saluran-air-mampet-cepat-dan-higienis', 'Perbaikan Saluran Air Mampet Cepat dan Higienis', '01K31W44G2PHSSTQ3NM9Y5VWJR.png', 'Layanan perbaikan saluran air mampet pada wastafel, kamar mandi, atau pipa rumah dengan alat khusus tanpa merusak instalasi.', 2, 350000, 0, 9, NULL, '2025-08-19 12:15:32', '2025-08-19 12:15:32'),
(11, 'layanan-perbaikan-atap-dan-dinding-bocor-profesional', ' Layanan Perbaikan Atap dan Dinding Bocor Profesional', '01K31WDF4PMS2ENE4P9PJH4680.png', 'asa perbaikan kebocoran pada atap maupun dinding rumah menggunakan material anti bocor terbaik. Dengan teknik profesional, rumah Anda akan lebih tahan lama, aman dari air hujan, serta tidak merusak interior bagian dalam.', 3, 500000, 0, 12, NULL, '2025-08-19 12:20:38', '2025-08-19 12:20:38'),
(12, 'jasa-pemasangan-pagar-rumah-modern-dan-kokoh', ' Jasa Pemasangan Pagar Rumah Modern dan Kokoh', '01K31WGZR6M8Y8S3J5TQGJ6GWA.png', 'Jasa pemasangan pagar rumah dengan pilihan material besi, kayu, hingga baja ringan. Bisa custom desain modern maupun klasik sesuai keinginan, dengan finishing cat anti karat yang membuat pagar lebih awet dan tampak elegan.\n', 6, 700000, 1, 12, NULL, '2025-08-19 12:22:33', '2025-08-19 12:22:33'),
(13, 'layanan-perbaikan-pintu-rumah-cepat-dan-rapi', 'Layanan Perbaikan Pintu Rumah Cepat dan Rapi', '01K31WKC42YTHXD6Y4N9VVG10C.png', ' Jasa perbaikan pintu rumah yang macet, engsel rusak, atau kayu lapuk. Dengan peralatan lengkap dan teknisi berpengalaman, pintu akan kembali normal, kuat, dan rapi seperti baru.\n', 2, 300000, 1, 12, NULL, '2025-08-19 12:23:51', '2025-08-19 12:23:51'),
(14, 'pemasangan-lampu-hias-elegan-dan-aman', 'Pemasangan Lampu Hias Elegan dan Aman', '01K32RJC8PXW8GY732QRXHBKKJ.png', 'Layanan pemasangan lampu hias atau chandelier dengan hasil yang aman, rapi, dan estetik untuk mempercantik ruangan rumah. Cocok untuk ruang tamu, ruang keluarga, maupun kamar agar terlihat lebih indah dan elegan.', 2, 200000, 1, 11, NULL, '2025-08-19 20:32:39', '2025-08-19 20:32:39'),
(15, 'pemasangan-tirai-dan-rel-gorden-rapi-dan-estetik', 'Pemasangan Tirai dan Rel Gorden Rapi dan Estetik', '01K32RQWY7517X0ANM8EXHZM5S.png', 'Jasa pemasangan tirai dan rel gorden untuk mempercantik tampilan jendela rumah dengan hasil rapi, simetris, dan sesuai model pilihan. Cocok untuk berbagai jenis tirai, baik minimalis maupun klasik.\n', 2, 180000, 0, 11, NULL, '2025-08-19 20:35:40', '2025-08-19 20:35:40'),
(16, 'pencucian-kasur-dan-sofa-higienis-bebas-tungau', 'Pencucian Kasur dan Sofa Higienis Bebas Tungau', '01K32RZH9291M9JNF28A1DZVJV.png', 'Layanan pencucian kasur, sofa, dan kursi menggunakan metode vacuum extraction serta steam cleaning untuk hasil yang lebih higienis, segar, dan terbebas dari tungau maupun debu. Cocok untuk menjaga kesehatan keluarga serta kualitas tidur agar lebih nyenyak.\n', 3, 250000, 1, 10, NULL, '2025-08-19 20:39:50', '2025-08-19 20:39:50'),
(17, 'deep-cleaning-rumah-menyeluruh-dan-profesional', 'Deep Cleaning Rumah Menyeluruh dan Profesional', '01K32S1PPD34ZKSMK25BJBAQEX.png', ' Layanan pembersihan total untuk seluruh bagian rumah mulai dari lantai, kamar mandi, dapur, jendela, hingga perabot. Menggunakan peralatan modern dan cairan pembersih ramah lingkungan, layanan ini cocok untuk persiapan sebelum atau sesudah acara, pindahan rumah, maupun pasca renovasi.', 4, 750000, 1, 10, NULL, '2025-08-19 20:41:01', '2025-08-19 20:41:01'),
(18, 'pencucian-karpet-dan-gorden-bersih-higienis-dan-wangi', 'Pencucian Karpet dan Gorden Bersih, Higienis, dan Wangi', '01K32S4RMEA5K943CYWXE6GAX4.png', 'Jasa pencucian karpet dan gorden menggunakan metode steam cleaning serta dry cleaning agar hasil lebih higienis, wangi, dan bebas tungau. Cocok untuk menjaga keindahan interior rumah tanpa harus repot mencuci sendiri.', 4, 450000, 0, 10, NULL, '2025-08-19 20:42:41', '2025-08-19 20:42:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_08_14_142804_create_categories_table', 2),
(5, '2025_08_14_142804_create_home_services_table', 2),
(6, '2025_08_14_142805_create_service_benefits_table', 2),
(7, '2025_08_14_142805_create_service_testimonials_table', 2),
(8, '2025_08_14_142806_create_booking_transactions_table', 2),
(9, '2025_08_14_142806_create_transaction_details_table', 2),
(10, '2025_08_17_112703_change_totals_columns_type', 3),
(11, '2025_08_17_113241_change_price_column_in_transaction_details_table', 4),
(12, '2025_08_17_145413_create_personal_access_tokens_table', 5),
(13, '2025_08_17_175133_update_is_paid_default_in_booking_transactions', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `service_benefits`
--

CREATE TABLE `service_benefits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_service_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `service_benefits`
--

INSERT INTO `service_benefits` (`id`, `name`, `home_service_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Lorem dolor si amet enak tanpa ribet karena tools juga sudah', 1, NULL, '2025-08-17 00:28:47', '2025-08-17 00:28:47'),
(2, 'Gratis pemasangan tanpa ribet karena dibayarin perusahaan', 1, NULL, '2025-08-17 00:28:47', '2025-08-17 00:28:47'),
(3, 'Lorem dolor si amet enak tanpa ribet karena tools juga sudah', 1, NULL, '2025-08-17 00:28:47', '2025-08-17 00:28:47'),
(4, 'Swim Pool bersih ', 2, NULL, '2025-08-17 00:45:50', '2025-08-17 00:45:50'),
(5, 'Swim Pool clean', 2, NULL, '2025-08-17 00:45:50', '2025-08-17 00:45:50'),
(6, 'Membuat tanaman subur', 3, NULL, '2025-08-17 00:47:16', '2025-08-17 00:47:16'),
(7, 'murah', 4, NULL, '2025-08-18 08:20:06', '2025-08-18 08:20:06'),
(8, 'BISMILLAH', 5, NULL, '2025-08-19 09:49:49', '2025-08-19 09:49:49'),
(9, 'Pengerjaan sesuai standar SNI sehingga lebih aman dan minim risiko korsleting.', 6, NULL, '2025-08-19 11:45:33', '2025-08-19 11:45:33'),
(10, 'Garansi pengerjaan hingga 7 hari penuh untuk menjamin hasil tetap berfungsi dengan baik.', 6, NULL, '2025-08-19 11:45:33', '2025-08-19 11:45:33'),
(11, 'Respon cepat dari teknisi berpengalaman yang siap dipanggil kapan saja.', 6, NULL, '2025-08-19 11:45:33', '2025-08-19 11:45:33'),
(12, 'Instalasi dilakukan dengan rapi, sesuai standar SNI, sehingga lebih aman dan tahan lama.', 7, NULL, '2025-08-19 12:08:45', '2025-08-19 12:08:45'),
(13, 'Garansi pengerjaan 7 hari untuk memberikan rasa tenang jika terjadi kendala setelah pemasangan.', 7, NULL, '2025-08-19 12:08:45', '2025-08-19 12:08:45'),
(14, 'Respon cepat dengan teknisi yang datang tepat waktu dan membawa peralatan lengkap.', 7, NULL, '2025-08-19 12:08:45', '2025-08-19 12:08:45'),
(15, 'Pemasangan dilakukan sesuai standar sehingga aman, rapi, dan perangkat langsung bisa digunakan.', 8, NULL, '2025-08-19 12:11:50', '2025-08-19 12:11:50'),
(16, 'Garansi pengerjaan 7 hari untuk memastikan hasil tetap berkualitas dan tahan lama.', 8, NULL, '2025-08-19 12:11:50', '2025-08-19 12:11:50'),
(17, 'Teknisi berpengalaman dengan respon cepat serta mampu menangani berbagai merek elektronik.', 8, NULL, '2025-08-19 12:11:50', '2025-08-19 12:11:50'),
(18, 'Kebocoran diatasi dengan cepat sehingga aliran air kembali normal tanpa gangguan.', 9, NULL, '2025-08-19 12:14:18', '2025-08-19 12:14:18'),
(19, 'Menggunakan material berkualitas agar perbaikan lebih awet dan tahan lama.', 9, NULL, '2025-08-19 12:14:18', '2025-08-19 12:14:18'),
(20, 'Garansi pengerjaan 7 hari penuh untuk memberikan rasa aman dan kepastian hasil.', 9, NULL, '2025-08-19 12:14:18', '2025-08-19 12:14:18'),
(21, 'Saluran kembali lancar sehingga air mengalir normal tanpa hambatan.', 10, NULL, '2025-08-19 12:15:32', '2025-08-19 12:15:32'),
(22, 'Menggunakan alat khusus agar pipa tidak rusak dan hasil lebih bersih.', 10, NULL, '2025-08-19 12:15:32', '2025-08-19 12:15:32'),
(23, 'Proses cepat, higienis, dan dikerjakan dengan penuh ketelitian.', 10, NULL, '2025-08-19 12:15:32', '2025-08-19 12:15:32'),
(24, 'Atap lebih awet, tahan lama, dan bebas bocor meskipun hujan deras.', 11, NULL, '2025-08-19 12:20:38', '2025-08-19 12:20:38'),
(25, 'Menggunakan material waterproofing berkualitas tinggi & ramah lingkungan.', 11, NULL, '2025-08-19 12:20:38', '2025-08-19 12:20:38'),
(26, 'Dapat garansi pengerjaan hingga 14 hari untuk ketenangan Anda.', 11, NULL, '2025-08-19 12:20:38', '2025-08-19 12:20:38'),
(27, 'Pagar rumah kokoh, aman, dan menambah estetika tampilan hunian.', 12, NULL, '2025-08-19 12:22:33', '2025-08-19 12:22:33'),
(28, 'Bisa custom desain sesuai selera (minimalis, klasik, maupun modern).', 12, NULL, '2025-08-19 12:22:33', '2025-08-19 12:22:33'),
(29, 'Finishing menggunakan cat anti karat agar pagar tahan lama dan tidak mudah rusak.', 12, NULL, '2025-08-19 12:22:33', '2025-08-19 12:22:33'),
(30, 'Pintu kembali berfungsi normal dengan hasil yang rapi dan presisi.', 13, NULL, '2025-08-19 12:23:51', '2025-08-19 12:23:51'),
(31, 'Menggunakan sparepart asli & berkualitas untuk ketahanan jangka panjang.', 13, NULL, '2025-08-19 12:23:51', '2025-08-19 12:23:51'),
(32, 'Proses cepat, bersih, dan minim gangguan di rumah Anda.', 13, NULL, '2025-08-19 12:23:51', '2025-08-19 12:23:51'),
(33, 'Pemasangan dilakukan dengan standar keamanan sehingga lampu terpasang kokoh dan awet.', 14, NULL, '2025-08-19 20:32:39', '2025-08-19 20:32:39'),
(34, 'Menyediakan pilihan pemasangan lampu hias dengan gaya modern maupun klasik.', 14, NULL, '2025-08-19 20:32:39', '2025-08-19 20:32:39'),
(35, 'Membuat ruangan langsung terlihat lebih mewah dan berkelas.', 14, NULL, '2025-08-19 20:32:39', '2025-08-19 20:32:39'),
(36, 'Tirai dipasang dengan presisi sehingga hasilnya rapi, simetris, dan tidak mudah lepas.', 15, NULL, '2025-08-19 20:35:40', '2025-08-19 20:35:40'),
(37, 'Bisa menyesuaikan model tirai dan rel gorden sesuai keinginan dan gaya rumah.', 15, NULL, '2025-08-19 20:35:40', '2025-08-19 20:35:40'),
(38, '  Proses cepat tanpa ribet sehingga rumah langsung terlihat lebih indah.', 15, NULL, '2025-08-19 20:35:40', '2025-08-19 20:35:40'),
(39, 'Membersihkan hingga ke dalam serat kain sehingga kasur & sofa bebas tungau, debu, dan kotoran menempel.', 16, NULL, '2025-08-19 20:39:50', '2025-08-19 20:39:50'),
(40, 'Menggunakan cairan khusus yang ramah lingkungan dan aman untuk anak maupun hewan peliharaan.', 16, NULL, '2025-08-19 20:39:50', '2025-08-19 20:39:50'),
(41, 'Membuat kasur atau sofa wangi, higienis, dan nyaman digunakan kembali.', 16, NULL, '2025-08-19 20:39:50', '2025-08-19 20:39:50'),
(42, 'Pembersihan detail ke seluruh sudut rumah sehingga hasil benar-benar bersih, segar, dan wangi.', 17, NULL, '2025-08-19 20:41:01', '2025-08-19 20:41:01'),
(43, 'Tim profesional dengan pengalaman bertahun-tahun menggunakan peralatan modern.', 17, NULL, '2025-08-19 20:41:01', '2025-08-19 20:41:01'),
(44, 'Rumah terasa nyaman kembali tanpa harus repot membersihkan sendiri.', 17, NULL, '2025-08-19 20:41:01', '2025-08-19 20:41:01'),
(45, 'Karpet dan gorden bebas tungau, debu, serta kotoran membandel sehingga lebih higienis dan nyaman digunakan.', 18, NULL, '2025-08-19 20:42:41', '2025-08-19 20:42:41'),
(46, 'Warna tetap terjaga, tidak mudah pudar meskipun sering dicuci, sehingga tampilannya selalu terlihat baru.', 18, NULL, '2025-08-19 20:42:41', '2025-08-19 20:42:41'),
(47, 'Proses pencucian membuat hasil cepat kering dengan aroma wangi yang segar dan tahan lama, bikin ruangan lebih nyaman.', 18, NULL, '2025-08-19 20:42:41', '2025-08-19 20:42:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `service_testimonials`
--

CREATE TABLE `service_testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_service_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `service_testimonials`
--

INSERT INTO `service_testimonials` (`id`, `photo`, `name`, `message`, `home_service_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '01K2VH25BBKC13CYKZ4RYB9WF6.png', 'Angga Bulat', 'Pulang kerja rumah ku langsung bersih rapih sesuai standard jadi pengen pesen terus dech', 1, NULL, '2025-08-17 01:06:46', '2025-08-17 01:06:46'),
(2, '01K2VH3W2XPPAE5XQB6S5EPC44.png', 'Dhini ', 'rumahku jadi wangiii dan bersihh, enaakeun, recomended!', 1, NULL, '2025-08-17 01:07:42', '2025-08-17 01:07:42'),
(3, '01K2VH5WBD5A8XDNXY1PJ1S4D6.png', 'Andani', 'maantaaapp', 1, NULL, '2025-08-17 01:08:48', '2025-08-17 01:08:48'),
(4, '01K2VHB2M72YTJXQS0NBSPZ99T.png', 'Zulfa', 'i love it', 1, NULL, '2025-08-17 01:11:39', '2025-08-17 01:11:39'),
(5, '01K2VHDHEXAZYMZ7XN3PGRKP9B.png', 'Bernadya', 'maantaapp, i like it so much', 2, NULL, '2025-08-17 01:12:59', '2025-08-17 01:12:59'),
(6, '01K31TEKXK0W550WA3ACB94SV9.png', 'Azmiah', 'Listrik rumah akhirnya normal kembali setelah diperbaiki. Teknisi bekerja cepat, detail, dan sangat membantu menjelaskan apa saja yang diperbaiki.', 6, NULL, '2025-08-19 11:46:18', '2025-08-19 11:46:18'),
(7, '01K31TQSFQFRVS8HJ8J5GV2NNK.png', 'Hana', 'Hasil pekerjaan rapi dan terlihat profesional. Tukangnya sopan, ramah, serta memastikan semua listrik aman sebelum pulang.', 6, NULL, '2025-08-19 11:51:19', '2025-08-19 11:51:19'),
(8, '01K31TS2TV9XKCCH3703FT76MA.png', 'Andra', 'Sudah beberapa kali pakai jasanya, selalu memuaskan. Servis terpercaya dengan harga yang jelas tanpa biaya tambahan.', 6, NULL, '2025-08-19 11:52:01', '2025-08-19 11:52:01'),
(9, '01K31VS057C21ASW5ZQWS2F6VM.png', 'Andri', 'Pelayanan cepat dan hasilnya sangat rapi. Setelah dipasang, semua stop kontak berfungsi normal tanpa masalah. Sangat puas dengan hasil kerja teknisi.', 7, NULL, '2025-08-19 12:09:27', '2025-08-19 12:09:27'),
(10, '01K31VSQRR1T7PXTWW84DKZPWG.png', 'Hana', 'Teknisi datang tepat waktu, ramah, dan sangat teliti dalam bekerja. Semua pekerjaan selesai sesuai permintaan dan tidak meninggalkan sisa kotoran.', 7, NULL, '2025-08-19 12:09:51', '2025-08-19 12:09:51'),
(11, '01K31VXZG4BEXEV5ZTRD7M5EZE.png', 'Nana', 'Pelayanan cepat dan hasilnya memuaskan. AC langsung dingin setelah dipasang dan semua kabel dirapikan dengan baik.', 8, NULL, '2025-08-19 12:12:10', '2025-08-19 12:12:10'),
(12, '01K31VYX0FWD1V8EWT3MG2HEBF.png', 'Yandri', 'Hasilnya oke banget! TV dipasang rapi di dinding dan langsung bisa digunakan tanpa masalah. Sangat direkomendasikan.', 8, NULL, '2025-08-19 12:12:40', '2025-08-19 12:12:40'),
(13, '01K31W70DDN59RY22DMZP5XB4T.png', 'Azmiah', 'Pekerjaannya bersih dan rapi, tidak ada kotoran tersisa. Sangat recommended untuk yang butuh solusi cepat.', 10, NULL, '2025-08-19 12:17:06', '2025-08-19 12:17:06'),
(14, '01K31W7Z48Q8KZWR9G6Q6PWZZX.png', 'Yandri', 'Tukangnya datang tepat waktu dan langsung menangani masalah. Hasilnya memuaskan, air tidak mampet lagi.', 10, NULL, '2025-08-19 12:17:38', '2025-08-19 12:17:38'),
(15, '01K31W92TFJ4923771Z7Q3WZSZ.png', 'Azmiah', 'Air di rumah akhirnya lancar kembali, kebocoran langsung teratasi dengan rapi. Proses pengerjaan cepat dan teknisinya sangat profesional.', 9, NULL, '2025-08-19 12:18:14', '2025-08-19 12:18:14'),
(16, '01K31W9X3673435W58XG2KYDAQ.png', 'Nana', 'Teknisi datang tepat waktu, hasil pekerjaan rapi, dan tidak ada kebocoran lagi. Sangat puas dengan pelayanannya.', 9, NULL, '2025-08-19 12:18:41', '2025-08-19 12:18:41'),
(17, '01K31WMWG5KAR2RZ1T88846FD3.png', 'Andra', 'Sekarang rumah nggak bocor lagi, puas banget. Hujan deras pun aman.', 11, NULL, '2025-08-19 12:24:41', '2025-08-19 12:24:41'),
(18, '01K31WNG92221A257JJ0KPVD4A.png', 'Yandri', 'Hasil pengerjaan rapi, air hujan benar-benar terkendali. Rumah terasa lebih nyaman.', 11, NULL, '2025-08-19 12:25:01', '2025-08-19 12:25:01'),
(19, '01K31WP884BKS9B9ERFS3ABEB8.png', 'Hana', 'Tukang profesional, pengerjaan cepat dan hasilnya memuaskan. Recommended banget!', 11, NULL, '2025-08-19 12:25:26', '2025-08-19 12:25:26'),
(20, '01K31WR74CJK49RZQPF4DJF87X.png', 'Andra', 'Pagar terlihat kokoh dan modern, hasilnya sesuai harapan. Sangat puas.', 12, NULL, '2025-08-19 12:26:30', '2025-08-19 12:26:30'),
(21, '01K31WSEWJJJ0XNBYTT0XB4TV5.png', 'Azmiah', 'Hasil pengerjaan sesuai desain, teknisinya detail dan teliti banget', 12, NULL, '2025-08-19 12:27:11', '2025-08-19 12:27:11'),
(22, '01K32R8WSSX7Q8QM2J4TQR04P6.png', 'Nana', 'Pintu jadi normal lagi, hasilnya bagus banget. Recommended pokoknya! Prosesnya juga cepat, nggak ribet sama sekali.', 13, NULL, '2025-08-19 20:27:28', '2025-08-19 20:27:28'),
(23, '01K32RA19GNAJV6XAM1N1PRHXZ.png', 'Andra', 'Hasil memuaskan, harga sesuai dan transparan. Bisa dipercaya, jadi tenang kalau butuh bantuan lagi ke depannya.', 13, NULL, '2025-08-19 20:28:05', '2025-08-19 20:28:05'),
(24, '01K32RS2C1WM24D8T0HPAGYKCW.png', 'Andra', 'Tirai langsung terpasang rapi, hasilnya membuat ruangan terasa lebih nyaman dan enak dipandang. Sangat puas', 15, NULL, '2025-08-19 20:36:18', '2025-08-19 20:36:18'),
(25, '01K32RSQWFB58DBEDTVRNJWVT9.png', 'Hana', 'Proses pemasangan cepat sekali, hasilnya sesuai dengan ekspektasi saya. Jendelanya jadi terlihat lebih cantik.', 15, NULL, '2025-08-19 20:36:40', '2025-08-19 20:36:40'),
(26, '01K32RVB9R4ZMH6EH5ZAJP3ZXK.png', 'Azmiah', 'Pekerja teliti, profesional, dan hasilnya rapi. Saya sangat puas dengan pelayanannya.', 14, NULL, '2025-08-19 20:37:33', '2025-08-19 20:37:33'),
(27, '01K32RW4KJ2D1Q1KC5XJ0CDYMH.png', 'Andri', 'Lampu hias terpasang rapi sekali, ruangan rumah terasa jauh lebih mewah dan nyaman. Pekerjaannya benar-benar profesional.', 14, NULL, '2025-08-19 20:37:59', '2025-08-19 20:37:59'),
(28, '01K32RWQP2Y947SNC9MR37H9Z6.png', 'Nana', 'Proses pemasangan sangat cepat, hasil akhir sesuai harapan saya. Sekarang rumah terasa lebih elegan', 14, NULL, '2025-08-19 20:38:18', '2025-08-19 20:38:18'),
(29, '01K32S6NBQDSEXBBE0VDK12N7Z.png', 'Nana', 'Sofa jadi bersih dan wangi banget, rasanya kayak baru beli lagi. Sangat puas dengan hasilnya', 16, NULL, '2025-08-19 20:43:44', '2025-08-19 20:43:44'),
(30, '01K32S7FFEV668HQF6YTVBAKV5.png', 'Hana', 'Kasur bebas tungau, tidur terasa lebih nyenyak. Pelayanan cepat dan hasil memuaskan.', 16, NULL, '2025-08-19 20:44:10', '2025-08-19 20:44:10'),
(31, '01K32S82K50PDVM0YH1WSCM3ZF.png', 'Yandri', 'Prosesnya tidak ribet, hasilnya maksimal. Sofa dan kasur benar-benar terlihat lebih segar.', 16, NULL, '2025-08-19 20:44:30', '2025-08-19 20:44:30'),
(32, '01K32S9RW2FSZ0680X3929PYG8.png', 'Andra', 'Rumah jadi super bersih, serasa baru renovasi. Semua detail benar-benar diperhatikan', 17, NULL, '2025-08-19 20:45:25', '2025-08-19 20:45:25'),
(33, '01K32SAYV7N0YSD0DC27ECS5GV.png', 'Azmiah', 'Worth it sekali, hasil bersih total dan wangi. Puas dengan pelayanan tim yang cepat, profesional, dan ramah. Rasanya rumah jadi lebih nyaman dan segar.', 17, NULL, '2025-08-19 20:46:04', '2025-08-19 20:46:04'),
(34, '01K32SBPGYAFYZED54HW5ZF8V5.png', 'Nana', 'Pekerjaan sangat rapi, sampai ke sudut-sudut rumah yang biasanya terlewat. Timnya teliti, sopan, dan bekerja dengan penuh kesabaran. Benar-benar jasa yang bisa diandalkan.', 17, NULL, '2025-08-19 20:46:29', '2025-08-19 20:46:29'),
(35, '01K32SDPAWKKKQX8K0FR81NYZA.png', 'Yandri', 'Karpet kembali bersih dan segar, jadi nggak khawatir lagi dengan debu atau kotoran. Anak-anak jadi lebih aman dan nyaman saat bermain di rumah tanpa takut alergi.', 18, NULL, '2025-08-19 20:47:34', '2025-08-19 20:47:34'),
(36, '01K32SE897J644NE20QZMFTK10.png', 'Azmiah', 'Gorden jadi wangi dan warnanya tetap bagus seperti baru, meskipun sudah lama dipakai. Hasilnya bikin ruangan terasa lebih fresh. Sangat recommended untuk yang ingin praktis.', 18, NULL, '2025-08-19 20:47:52', '2025-08-19 20:47:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('fnvgkdnogtRDj78EmazrAh0cdoJfGWcOc8CMPk9h', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoiSkZmdW8zRUhleERhWEI0Z2NWQmdPQ1kzaVBEajVuSDZNSGJ2SjR5cSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ1OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4vY2F0ZWdvcmllcy84L2VkaXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkRGJDVEhhTEtZc0h1U0NmWHhhSjhxZUJHQ0pZLkxUQ0J2c2EzdG1KUVVrRkF6OElUMGxBUkciO3M6NjoidGFibGVzIjthOjM6e3M6NDA6ImUzYTZjZDJhNTM4NWIyMjQzYjc1NzQyZTFiYjk3Njk3X2NvbHVtbnMiO2E6NDp7aTowO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjk6InRodW1ibmFpbCI7czo1OiJsYWJlbCI7czo5OiJUaHVtYm5haWwiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aToxO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjQ6Im5hbWUiO3M6NToibGFiZWwiO3M6NDoiTmFtZSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjI7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTM6ImNhdGVnb3J5Lm5hbWUiO3M6NToibGFiZWwiO3M6ODoiQ2F0ZWdvcnkiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTozO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEwOiJpc19wb3B1bGFyIjtzOjU6ImxhYmVsIjtzOjc6IlBvcHVsYXIiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9fXM6NDA6ImQzYjJiZTk2ZDJlNmE1MGU0YTJlMDM5N2U2ODcyZmRiX2NvbHVtbnMiO2E6Mjp7aTowO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjU6InBob3RvIjtzOjU6ImxhYmVsIjtzOjU6IlBob3RvIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo0OiJuYW1lIjtzOjU6ImxhYmVsIjtzOjQ6Ik5hbWUiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9fXM6NDA6ImRkYzFkMDhlYmVmYTY1MjI5MDNhYjFmMzdjM2NiOGFjX2NvbHVtbnMiO2E6Mjp7aTowO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjU6InBob3RvIjtzOjU6ImxhYmVsIjtzOjU6IlBob3RvIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo0OiJuYW1lIjtzOjU6ImxhYmVsIjtzOjQ6Ik5hbWUiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9fX1zOjg6ImZpbGFtZW50IjthOjA6e319', 1766330334);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `price` bigint(20) UNSIGNED NOT NULL,
  `booking_transaction_id` bigint(20) UNSIGNED NOT NULL,
  `home_service_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `price`, `booking_transaction_id`, `home_service_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1980000, 2, 1, NULL, '2025-08-17 04:34:16', '2025-08-17 04:34:16'),
(2, 120000, 2, 3, NULL, '2025-08-17 04:34:16', '2025-08-17 04:34:16'),
(3, 1980000, 4, 1, NULL, '2025-08-17 10:57:46', '2025-08-17 10:57:46'),
(4, 210000, 4, 2, NULL, '2025-08-17 10:57:46', '2025-08-17 10:57:46'),
(5, 120000, 4, 3, NULL, '2025-08-17 10:57:46', '2025-08-17 10:57:46'),
(6, 1980000, 5, 1, NULL, '2025-08-19 03:15:54', '2025-08-19 03:15:54'),
(7, 120000, 5, 3, NULL, '2025-08-19 03:15:54', '2025-08-19 03:15:54'),
(8, 1980000, 6, 1, NULL, '2025-08-19 03:39:28', '2025-08-19 03:39:28'),
(9, 120000, 6, 3, NULL, '2025-08-19 03:39:28', '2025-08-19 03:39:28'),
(10, 1980000, 7, 1, NULL, '2025-08-19 03:55:20', '2025-08-19 03:55:20'),
(11, 1980000, 8, 1, NULL, '2025-08-19 05:44:22', '2025-08-19 05:44:22'),
(12, 120000, 9, 3, NULL, '2025-08-19 08:28:29', '2025-08-19 08:28:29'),
(13, 1980000, 10, 1, NULL, '2025-08-19 08:34:21', '2025-08-19 08:34:21'),
(14, 150000, 11, 6, NULL, '2025-08-19 22:06:28', '2025-08-19 22:06:28'),
(15, 250000, 11, 7, NULL, '2025-08-19 22:06:28', '2025-08-19 22:06:28'),
(16, 300000, 12, 13, NULL, '2025-08-19 23:06:46', '2025-08-19 23:06:46'),
(17, 750000, 12, 17, NULL, '2025-08-19 23:06:46', '2025-08-19 23:06:46'),
(18, 750000, 13, 17, NULL, '2025-08-21 08:38:09', '2025-08-21 08:38:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Shujia Team', 'team@shujia.com', NULL, '$2y$12$DbCTHaLKYsHuSCfXxaJ8qeBGCJY.LTCBvsa3tmJQUkFAz8IT0lARG', NULL, '2025-08-16 10:42:54', '2025-08-16 10:42:54');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `booking_transactions`
--
ALTER TABLE `booking_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `home_services`
--
ALTER TABLE `home_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_services_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indeks untuk tabel `service_benefits`
--
ALTER TABLE `service_benefits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_benefits_home_service_id_foreign` (`home_service_id`);

--
-- Indeks untuk tabel `service_testimonials`
--
ALTER TABLE `service_testimonials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_testimonials_home_service_id_foreign` (`home_service_id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_details_booking_transaction_id_foreign` (`booking_transaction_id`),
  ADD KEY `transaction_details_home_service_id_foreign` (`home_service_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `booking_transactions`
--
ALTER TABLE `booking_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `home_services`
--
ALTER TABLE `home_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `service_benefits`
--
ALTER TABLE `service_benefits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `service_testimonials`
--
ALTER TABLE `service_testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `home_services`
--
ALTER TABLE `home_services`
  ADD CONSTRAINT `home_services_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `service_benefits`
--
ALTER TABLE `service_benefits`
  ADD CONSTRAINT `service_benefits_home_service_id_foreign` FOREIGN KEY (`home_service_id`) REFERENCES `home_services` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `service_testimonials`
--
ALTER TABLE `service_testimonials`
  ADD CONSTRAINT `service_testimonials_home_service_id_foreign` FOREIGN KEY (`home_service_id`) REFERENCES `home_services` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD CONSTRAINT `transaction_details_booking_transaction_id_foreign` FOREIGN KEY (`booking_transaction_id`) REFERENCES `booking_transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transaction_details_home_service_id_foreign` FOREIGN KEY (`home_service_id`) REFERENCES `home_services` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
