-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2024 at 02:52 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental-mobil`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_mobil` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `harga_sewa` int(11) NOT NULL,
  `gambar` text NOT NULL,
  `bahan_bakar` varchar(255) NOT NULL,
  `jumlah_kursi` varchar(255) NOT NULL,
  `transmisi` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `p3k` tinyint(1) NOT NULL,
  `charger` tinyint(1) NOT NULL,
  `audio` tinyint(1) NOT NULL,
  `ac` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `nama_mobil`, `slug`, `harga_sewa`, `gambar`, `bahan_bakar`, `jumlah_kursi`, `transmisi`, `status`, `deskripsi`, `p3k`, `charger`, `audio`, `ac`, `created_at`, `updated_at`) VALUES
(5, 'Rush', 'rush', 350000, 'assets/car/H5maIVojPmLcV1Y0ROwjGff9AeXoXwxw7oP9wgNT.png', 'Solar', '8', 'otomatis', 'tersedia', 'Kendaraan medium MPV dengan desain mobil yang sporty. Ini tersedia untuk penggunaan jangka pendek dan jangka panjang. (Pajak dan STNK masih berlaku, Panjang: 4435 mm, Lebar: 1695 mm, Tinggi: 1705 mm, Kapasitas mesin 1500 cc, Tahun 2022).', 1, 1, 1, 1, '2024-02-28 10:20:30', '2024-02-28 21:38:16'),
(7, 'Avanza', 'avanza', 350000, 'assets/car/8ev9A42LNmJmsYqV3uBJLhYudohWof3mHF1EB8b1.png', 'Bensin', '8', 'manual', 'tersedia', 'Kendaraan medium MPV. Ini tersedia untuk penggunaan jangka pendek dan jangka panjang. (Pajak dan STNK masih berlaku, Panjang: 4395 mm, Lebar: 1730 mm, Tinggi: 1700 mm, Kapasitas mesin 1500 cc, Tahun 2021).', 1, 1, 1, 1, '2024-02-28 10:28:33', '2024-02-28 21:34:57'),
(8, 'BR-V', 'br-v', 375000, 'assets/car/kbX9hYmoKXMADE7JDGsnRqDgzXAfw2AUn5wnmbkQ.png', 'Pertamax', '7', 'manual', 'tersedia', 'Kendaraan medium MPV dengan desain yang sporty. Ini tersedia untuk penggunaan jangka pendek dan jangka panjang. (Pajak dan STNK masih belaku, Panjang: 4490 mm, Lebar: 1780 mm, dan Tinggi: 1685 mm, Kapasitas mesin 1500 cc, Tahun 2023).', 0, 1, 1, 1, '2024-02-28 19:10:52', '2024-02-28 21:31:37'),
(9, 'Innova', 'innova', 400000, 'assets/car/eMdGWz8Aw31IhzLSA5LkG8qkMUWsAKNOk3NDU6jz.png', 'Solar', '8', 'otomatis', 'tidak tersedia', 'Kendaraan  MPVyang berukuran besar. Ini tersedia untuk penggunaan jangka pendek dan jangka panjang. (Pajak dan STNK masih berlaku, Panjang: 4735 mm, Lebar: 1830 mm, Tinggi: 1795 mm, Kapasitas mesin 2400 cc, Tahun 2022).', 1, 1, 1, 1, '2024-02-28 21:42:42', '2024-02-28 21:42:59'),
(10, 'Yaris', 'yaris', 295000, 'assets/car/wxaYPjWD9VtvDL1M3mUmzACiF3RINKkSnrlYuqvR.png', 'Pertamax', '5', 'manual', 'tersedia', 'Kendaraan  medium MPV dengan konsep desain stylish dan modern. Ini tersedia untuk penggunaan jangka pendek dan jangka panjang. (Pajak dan STNK masih berlaku, Panjang: 4070 mm, Lebar: 1655 mm, Tinggi: 1600 mm, Kapasitas mesin 1197 cc, Tahun 2022).', 0, 1, 1, 1, '2024-02-28 21:45:47', '2024-02-28 21:45:47'),
(11, 'Mobilio', 'mobilio', 300000, 'assets/car/6Kx6g6UlSH2E6oSYO7jGJy7jSfaNkdvbCxVEjrxg.png', 'Pertamax', '7', 'manual', 'tidak tersedia', 'Kendaraan  minimalis denngan bentuk yang stylish. Ini tersedia untuk penggunaan jangka pendek dan jangka panjang. (Pajak dan STNK masih berlaku, Panjang: 4070 mm, Lebar: 1655 mm, Tinggi: 1600 mm, Kapasitas mesin 1197 cc, Tahun 2021).', 0, 1, 1, 1, '2024-02-28 21:49:43', '2024-02-28 21:49:43'),
(12, 'Hiace', 'hiace', 1300000, 'assets/car/V9V0QxIAKBe9gQLqlVSN8aHaBqRDENlLKpQRRojo.png', 'Pertalite', '16', 'manual', 'tersedia', 'Kendaraan  dengan desain modern. Ini tersedia untuk penggunaan jangka pendek dan jangka panjang. (Pajak dan STNK masih berlaku, Panjang: 5915 mm, Lebar: 1950 mm, Tinggi: 2890 mm, Kapasitas mesin 2755 cc, Tahun 2021).', 1, 1, 1, 1, '2024-02-28 21:52:51', '2024-02-28 21:52:51'),
(13, 'Terios', 'terios', 350000, 'assets/car/R8yoj4ZyvazTe7CpPkyazU1SvXow4W9uwZjlkJjS.png', 'Pertalite', '8', 'otomatis', 'tidak tersedia', 'Kendaraan  SUV dengan kualitas mobil yang bagus. Ini tersedia untuk penggunaan jangka pendek dan jangka panjang. (Pajak dan STNK masih berlaku, Panjang: 4435 mm, Lebar: 1695 mm, Tinggi: 1705 mm, Kapasitas mesin 1496 cc, Tahun 2023).', 1, 1, 1, 1, '2024-02-28 23:40:41', '2024-02-28 23:40:41'),
(15, 'Grand Max', 'grand-max', 350000, 'assets/car/AERpEK6J2RR2lYVv1M42zcEZU37x2h9hjKRTDo9r.png', 'Pertalite', '8', 'manual', 'tersedia', 'iyaaa', 0, 1, 0, 1, '2024-03-05 01:16:24', '2024-03-05 01:16:24'),
(16, 'HR--V', 'hr-v', 375000, 'assets/car/eGLNaXVQjz3CM7udt6CmTEbbhF5aWQb6zCgHpzK2.png', 'Pertamax', '8', 'otomatis', 'tersedia', '-', 1, 1, 1, 1, '2024-03-06 18:38:56', '2024-03-06 18:38:56');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `pesan` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `nama`, `email`, `subject`, `pesan`, `created_at`, `updated_at`) VALUES
(5, 'Putri Puspita Anindita', 'pupusajaa@gmail.com', 'Kudus', 'nyalain sendiri abangkuhh', '2024-02-28 19:56:47', '2024-02-28 19:56:47'),
(7, 'Maylia Fatmawati', 'liafatmawati530@gmail.com', 'Kudus', 'Apa yaa', '2024-03-03 19:09:45', '2024-03-03 19:09:45'),
(8, 'Byun Baekhyun', 'hyunbaekbhyun1207@gmail.com', 'Bogor', 'apaaaa', '2024-03-06 01:31:55', '2024-03-06 01:31:55'),
(9, 'DO Kyungsoo', 'kyungsoo@gmail.com', 'Malang', '---', '2024-03-06 01:34:47', '2024-03-06 01:34:47');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 2),
(6, '2024_02_26_215940_create_cars_table', 2),
(7, '2024_02_28_181322_create_messages_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@example.com', NULL, '$2y$12$A5smbjhyLH13ENXnL6vO8ObSJJpmionbNTXrSiQfzibBq8ZUXujzC', 1, NULL, '2024-02-26 14:16:59', '2024-02-26 14:16:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
