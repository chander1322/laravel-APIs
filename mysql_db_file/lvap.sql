-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2023 at 12:47 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lvap`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_data`
--

CREATE TABLE `form_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form_data`
--

INSERT INTO `form_data` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'ff', 'chander@gmail.com', '$2y$10$JXXxHZv0G5xPxta6UGysdeoFcUA/B2sbegJNHSfSQDOXT1HtYrxZG', '2023-05-28 23:57:09', '2023-05-28 23:57:09'),
(2, 'ff', 'chander@gmail.com', '$2y$10$lHMUwVCJQFveejvSLMj..OIMimbLljOE7RZqOnugSCBjAPxGsOa.a', '2023-05-28 23:57:30', '2023-05-28 23:57:30'),
(3, 'hello', 'chander@gmail.com', '$2y$10$ARTRnOXduc4aDlcKmW/7zefDoESPE/FPI2TFTbblaMa7q1hpwwllm', '2023-05-28 23:57:54', '2023-05-29 02:02:13'),
(5, 'hello mail', 'chander.secureweb@gmail.com', '$2y$10$PXgpSUh2oCiQS9xuRhCH7u84iJnSwa6wRzNtDF.RzkUTYotROV1FO', '2023-05-30 01:59:44', '2023-05-30 01:59:44'),
(6, 'hello mail', 'chander.secureweb@gmail.com', '$2y$10$Qwecs/hemmveC28w2gjE0em8FHhkx5buS8y9dEnnQvsfXJLTl2H2O', '2023-05-30 02:04:10', '2023-05-30 02:04:10'),
(7, 'hello mail', 'chander.secureweb@gmail.com', '$2y$10$VtTAWxhY7T7Aseeif8eihOpzNfZvW/fuwHC5WyI3pgcpXtEJNddcS', '2023-05-30 02:05:06', '2023-05-30 02:05:06'),
(8, 'ff', 'chander@gmail.com', '$2y$10$9JtVBVG0yRj.MIeSa7hi8OkI2eZcVk/iX1FBVXfge2cAt4xA0Jo0G', '2023-05-31 01:59:07', '2023-05-31 01:59:07');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_05_29_042609_create_form_data_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'hello1', 'hello1@gmail.com', '2023-05-25 05:02:54', '$2y$10$EiHvpvfIkk3rpM3yhLUDs.2TDifRvTxa3k6H05JbkQ0vjMh1lwJ4W', '$2y$10$lXpKqQRGDvxng1hxOB9JqOC1.xWed0Udm/0ePe9GOmJMMENwIojBy', '2023-05-25 05:02:54', '2023-05-25 05:02:54'),
(2, 'hello2', 'hello2@gmail.com', '2023-05-25 05:03:16', '$2y$10$hGY8lwPLUzW8GNKu2v0puuRW2qqw7v31YQMsRA8fOYkarQSGut8B.', '$2y$10$cxQoV5M2.VHvpte4bNGW5ulkzoh8QVgnBhtDDHIyIwjL0h/qrBgKO', '2023-05-25 05:03:16', '2023-05-25 05:03:16'),
(3, 'hello', 'hello3@gmail.com', '2023-05-25 05:05:23', '$2y$10$YuxkPIyoBaZ7Ff6fjTPe2OSRu/LAipLOh/UBMCUxkGfwkFVkwGHQC', '$2y$10$5WsC1gfvfUMXgT.WhnCnTOGxSzDgFl/.KKXS3t72t78SIZ0xRap6.', '2023-05-25 05:05:23', '2023-05-25 05:05:23'),
(4, 'hello4', 'hello3@gmail.com', '2023-05-25 05:06:12', '$2y$10$VAh6QGjG32GaiVRlu2Ct9Of.3UYDHMZO7xJnDL5gefpRtJx3iUnCG', '$2y$10$MYwxmT3jir4fhPi1Xf9IG.byb8HC54U94Y5nUDLx0fsWWetRnBWki', '2023-05-25 05:06:12', '2023-05-25 05:06:12'),
(6, 'teste', 'test@gmail.com', '2023-05-25 05:07:33', '$2y$10$z/Y5SQtksHrUrLWYWeamUe9BlZOlAz07TwIwCvfEI2Vj.uf/6rd3u', '$2y$10$kcxR8HKvxiAWsFFtQ0JaleqIh2WQaNIRxUbUnJsLZ6o7tPBPBE7O2', '2023-05-25 05:07:33', '2023-05-25 07:12:25'),
(7, 'hello7', 'hello7@gmail.com', '2023-05-25 05:08:00', '$2y$10$XyLgLqT6eP/9OqPrHE2k6efF4N7kp.gmkjc/z9inJKqRvgsEKogLa', '$2y$10$GYM1wYcX8tLEyMZigHKB2OEsw.FqyiN4JQo.w.yEW5QBkoeTcZ2W.', '2023-05-25 05:08:00', '2023-05-25 05:08:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `form_data`
--
ALTER TABLE `form_data`
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
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_data`
--
ALTER TABLE `form_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
