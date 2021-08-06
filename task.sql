-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2021 at 01:36 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_12_13_093234_create_vendor_details_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `fname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `reg_by` enum('Web','Facebook','Google') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Web',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `fname`, `lname`, `address`, `email`, `email_verified_at`, `reg_by`, `password`, `google_id`, `facebook_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 1, 'Akshay Gobade', 'Akshay Gobade', '32, Navnit Nagar Amaravati road wadi Nagpur 440023', 'agobade@gmail.com', NULL, 'Web', '$2y$10$1PPQzNjuWDWxpKWHQa6XL.b1OJZHVuZuJafvLLlq7fvG3WZObV5Uq', NULL, NULL, NULL, '2021-08-06 02:39:05', '2021-08-06 02:39:05'),
(6, 1, 'Akshay Gobade', 'Akshay Gobade', '32, Navnit Nagar Amaravati road wadi Nagpur 440023', 'agobade32@gmail.com', NULL, 'Web', '$2y$10$BAz3A.gh.eZF/a2hKKHoY.88nrfFd5GYhoMQSyAV25/gk5QEgadoa', NULL, NULL, NULL, '2021-08-06 02:47:53', '2021-08-06 02:47:53'),
(7, 2, 'Akshay Gobade', 'Akshay Gobade', '32, Navnit Nagar Amaravati road wadi Nagpur 440023', 'akshay7@outlook.com', NULL, 'Web', '$2y$10$KG01zfHJ6YXAndjMiDO3lOeCkfaKIaekuzgN6y9d4KsWnMWSc1UYe', NULL, NULL, NULL, '2021-08-06 02:48:43', '2021-08-06 02:48:43');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_details`
--

CREATE TABLE `vendor_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `store_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_pic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_pic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_details`
--

INSERT INTO `vendor_details` (`id`, `user_id`, `store_name`, `store_address`, `store_description`, `contact_number`, `profile_pic`, `banner_pic`, `phone_no`, `created_at`, `updated_at`) VALUES
(1, 7, 'sendemailsfortes', '32, Navnit Nagar Amaravati road wadi Nagpur 440023', '1234567', '09860923088', 'G:\\xampp\\htdocs\\alkurn\\public/uploads/profile_pic/', 'G:\\xampp\\htdocs\\alkurn\\public/uploads/banner_pic/', '9988888888', '2021-08-06 02:48:43', '2021-08-06 02:48:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vendor_details`
--
ALTER TABLE `vendor_details`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vendor_details`
--
ALTER TABLE `vendor_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
