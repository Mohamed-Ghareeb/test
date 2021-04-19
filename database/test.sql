-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 20, 2021 at 12:16 AM
-- Server version: 5.7.33-0ubuntu0.18.04.1
-- PHP Version: 7.1.33-32+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `email`, `mobile`, `created_at`, `updated_at`) VALUES
(1, 'com 1', 'v.v@ibraintechs.com', '12345678911', '2021-04-19 16:47:34', '2021-04-19 17:01:05'),
(2, 'Noelani Pope', 'hecoze@mailinator.com', '92123589472', '2021-04-19 17:40:42', '2021-04-19 17:40:42'),
(3, 'Noelani Pope', 'hecoze@mailhinator.com', '92123589474', '2021-04-19 17:41:16', '2021-04-19 17:41:16'),
(4, 'Noelani Pope', 'hecoze@mailhinfator.com', '92123589471', '2021-04-19 17:43:03', '2021-04-19 17:43:03'),
(5, 'Iliana Summers', 'tijywuwofi@mailinator.com', '28557896521', '2021-04-19 18:49:13', '2021-04-19 18:49:13'),
(6, 'Myra Washington', 'buho@mailinator.com', '20124578963', '2021-04-19 18:57:08', '2021-04-19 18:57:08'),
(7, 'Myra Washington', 'buho@mailindator.com', '20124578965', '2021-04-19 19:01:35', '2021-04-19 19:01:35'),
(8, 'Merrill Booth', 'makynopen@mailinator.com', '12708874123', '2021-04-19 19:02:42', '2021-04-19 19:02:42'),
(9, 'Bruce Oneill', 'kubasikib@mailinator.com', '58124578521', '2021-04-19 19:03:14', '2021-04-19 19:03:14'),
(10, 'Kadeem Tucker', 'kucupa@mailinator.com', '52124578693', '2021-04-19 19:05:51', '2021-04-19 19:05:51'),
(11, 'George Vinson', 'qowygeceve@mailinator.com', '89124578692', '2021-04-19 19:06:48', '2021-04-19 19:06:48'),
(12, 'Wendy Carney', 'sigezo@mailinator.com', '12457869321', '2021-04-19 19:07:37', '2021-04-19 19:07:37');

-- --------------------------------------------------------

--
-- Table structure for table `company_employee`
--

CREATE TABLE `company_employee` (
  `company_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `mobile`, `created_at`, `updated_at`) VALUES
(1, 'Reese Rutledge', 'labedorasi@mailinator.com', '11558641581', '2021-04-19 18:26:54', '2021-04-19 18:26:54');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` json NOT NULL,
  `custom_properties` json NOT NULL,
  `generated_conversions` json NOT NULL,
  `responsive_images` json NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Company', 4, '3f0bc6ed-7f77-4a23-afb8-6c9deb793271', 'company_icon', '112747232-company-icon-black-filled-vector-illustration-company-symbol-on-white-background-can-be-used-in-web-', '112747232-company-icon-black-filled-vector-illustration-company-symbol-on-white-background-can-be-used-in-web-.jpg', 'image/jpeg', 'public', 'public', 56448, '[]', '[]', '[]', '[]', 1, '2021-04-19 17:43:03', '2021-04-19 17:43:03'),
(2, 'App\\Models\\Company', 5, '27d7f487-b97e-4406-af95-b4e5ed3d8a89', 'company_icon', '112747232-company-icon-black-filled-vector-illustration-company-symbol-on-white-background-can-be-used-in-web-', '112747232-company-icon-black-filled-vector-illustration-company-symbol-on-white-background-can-be-used-in-web-.jpg', 'image/jpeg', 'public', 'public', 56448, '[]', '[]', '[]', '[]', 2, '2021-04-19 18:49:13', '2021-04-19 18:49:13'),
(3, 'App\\Models\\Company', 6, '3e0927ab-7819-45c0-8e15-7de38c9cea11', 'company_icon', '112747232-company-icon-black-filled-vector-illustration-company-symbol-on-white-background-can-be-used-in-web-', '112747232-company-icon-black-filled-vector-illustration-company-symbol-on-white-background-can-be-used-in-web-.jpg', 'image/jpeg', 'public', 'public', 56448, '[]', '[]', '[]', '[]', 3, '2021-04-19 18:57:08', '2021-04-19 18:57:08'),
(4, 'App\\Models\\Company', 7, '8dd37aac-40db-46b9-88ab-0df927036ad6', 'company_icon', '112747232-company-icon-black-filled-vector-illustration-company-symbol-on-white-background-can-be-used-in-web-', '112747232-company-icon-black-filled-vector-illustration-company-symbol-on-white-background-can-be-used-in-web-.jpg', 'image/jpeg', 'public', 'public', 56448, '[]', '[]', '[]', '[]', 4, '2021-04-19 19:01:35', '2021-04-19 19:01:35'),
(5, 'App\\Models\\Company', 8, 'ee3fd7aa-fc02-4f6f-8b72-0ed2425721a0', 'company_icon', '112747232-company-icon-black-filled-vector-illustration-company-symbol-on-white-background-can-be-used-in-web-', '112747232-company-icon-black-filled-vector-illustration-company-symbol-on-white-background-can-be-used-in-web-.jpg', 'image/jpeg', 'public', 'public', 56448, '[]', '[]', '[]', '[]', 5, '2021-04-19 19:02:42', '2021-04-19 19:02:42'),
(6, 'App\\Models\\Company', 9, '60da4bf5-21e4-4b67-9ec9-5a4df5579666', 'company_icon', '112747232-company-icon-black-filled-vector-illustration-company-symbol-on-white-background-can-be-used-in-web-', '112747232-company-icon-black-filled-vector-illustration-company-symbol-on-white-background-can-be-used-in-web-.jpg', 'image/jpeg', 'public', 'public', 56448, '[]', '[]', '[]', '[]', 6, '2021-04-19 19:03:14', '2021-04-19 19:03:14'),
(7, 'App\\Models\\Company', 10, '7ea8f01e-a76f-4885-b97a-7a1c095b14dd', 'company_icon', '1622593', '1622593.png', 'image/png', 'public', 'public', 37405, '[]', '[]', '[]', '[]', 7, '2021-04-19 19:05:51', '2021-04-19 19:05:51'),
(8, 'App\\Models\\Company', 11, 'd7fa5d9e-8e23-4354-83ac-2040254150df', 'company_icon', '1622593', '1622593.png', 'image/png', 'public', 'public', 37405, '[]', '[]', '[]', '[]', 8, '2021-04-19 19:06:48', '2021-04-19 19:06:48'),
(9, 'App\\Models\\Company', 12, '0bb669b7-e060-4139-a972-40713f01a6f3', 'company_icon', '112747232-company-icon-black-filled-vector-illustration-company-symbol-on-white-background-can-be-used-in-web-', '112747232-company-icon-black-filled-vector-illustration-company-symbol-on-white-background-can-be-used-in-web-.jpg', 'image/jpeg', 'public', 'public', 56448, '[]', '[]', '[]', '[]', 9, '2021-04-19 19:07:37', '2021-04-19 19:07:37');

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
(4, '2021_04_19_181247_create_companies_table', 1),
(5, '2021_04_19_184839_create_media_table', 2),
(8, '2021_04_19_200440_create_employees_table', 3),
(9, '2021_04_19_200526_company_employee_table', 3);

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
(1, 'Mohamed', 'mo@m.com', NULL, '$2y$10$.IQSKQyLxkyjuCkvyk.maegnPS2mstXNb.M3kLP.wtVXqFZx9AmpC', NULL, '2021-04-19 16:21:49', '2021-04-19 16:21:49'),
(2, 'Mohamed', 'm@mm.com', NULL, '$2y$10$9P5D75W4cqWlqKJp0FTnP.bzfBSNoQo9RBs3EBsWoWED3WBrXMVO6', NULL, '2021-04-19 19:10:41', '2021-04-19 19:10:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `companies_mobile_unique` (`mobile`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_mobile_unique` (`mobile`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
