-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3309
-- Generation Time: May 11, 2023 at 07:53 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rabbi223_rabbi-pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `address`, `phone`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mamun Sarkar', 'mamun@gmail.com', NULL, '$2y$10$RAwgPgU98KPXl0.pQaeF5e5MDVyqbt2QnZJk1F2f.hJVXh2Qg3MkW', NULL, NULL, NULL, NULL, NULL),
(2, 'Jone Done', 'jone@example.com', NULL, '$2y$10$RAwgPgU98KPXl0.pQaeF5e5MDVyqbt2QnZJk1F2f.hJVXh2Qg3MkW', NULL, NULL, NULL, '2020-08-28 22:22:17', '2020-08-28 22:22:17'),
(3, 'Rabbi Hossain', 'rabbi@gmail.com', NULL, '$2a$15$57c9MfXJq5X7O8wUuhqs3ehWumMLKjKfbD8OG4In8fo4zKR5oLDRi', NULL, NULL, NULL, NULL, NULL),
(4, 'Abdul Lotif', 'lotif@gmail.com', NULL, '$2y$10$3VLkPvQqcFZZlGVnze97wO57L.v80igtSFr522aV01KNPiIf9F9/W', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `created_at`, `updated_at`) VALUES
(3, 'Computer', '2020-08-25 08:34:59', '2020-08-25 08:34:59'),
(4, 'Computer', '2020-08-25 08:35:17', '2020-08-25 08:35:17'),
(5, 'Shirt', '2020-08-25 08:35:26', '2020-08-25 08:35:26'),
(6, 'User Guide', '2020-08-25 08:35:54', '2020-08-25 08:35:54'),
(8, 'TV', '2020-08-25 08:42:04', '2020-08-25 08:42:04'),
(10, 'Laptop', '2023-05-10 11:23:42', '2023-05-10 11:23:42');

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
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Customer', NULL, NULL),
(2, 'Supplier', NULL, NULL),
(3, 'Bank', NULL, NULL),
(4, 'Owner', '2020-08-21 23:17:49', '2020-08-21 23:17:49'),
(7, 'Investor', '2020-08-21 23:27:49', '2020-08-21 23:27:49');

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
(1, '2014_10_12_000000_create_admins_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_08_20_140107_create_users_table', 1),
(5, '2020_08_20_140145_create_groups_table', 1),
(6, '2020_08_20_140634_create_products_table', 1),
(7, '2020_08_20_140705_create_categories_table', 1),
(8, '2020_08_20_140736_create_sale_invoices_table', 1),
(9, '2020_08_20_140800_create_sale_items_table', 1),
(10, '2020_08_20_140828_create_purchase_invoices_table', 1),
(11, '2020_08_20_140846_create_purchase_items_table', 1),
(12, '2020_08_20_140903_create_payments_table', 1),
(13, '2020_08_20_140925_create_receipts_table', 1),
(14, '2020_08_29_041825_add_admin', 2),
(15, '2020_09_03_141625_update_payment_and_receipt_note', 3),
(17, '2020_09_06_134357_add_note_to_sales_and_purchase_table', 4),
(18, '2020_09_08_135325_add_invoice_id_on_payments_and_receipts', 5),
(19, '2020_09_22_131109_add_has_stock_on_products_table', 6),
(21, '2023_05_10_174143_phone_column_update_of_users_table', 7);

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `purchase_invoice_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` double NOT NULL,
  `date` date NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `admin_id`, `user_id`, `purchase_invoice_id`, `amount`, `date`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, 100, '2020-08-23', '', NULL, NULL),
(4, NULL, 1, NULL, 200, '2020-09-03', 'asfasd', '2020-09-03 08:18:33', '2020-09-03 08:18:33'),
(7, 2, 1, NULL, 600, '2020-09-05', NULL, '2020-09-04 22:35:19', '2020-09-04 22:35:19'),
(8, 1, 1, NULL, 700, '2020-09-05', NULL, '2020-09-04 22:36:10', '2020-09-04 22:36:10'),
(14, 2, 3, 2, 1000, '2020-09-10', NULL, '2020-09-10 08:17:51', '2020-09-10 08:17:51'),
(15, 2, 3, NULL, 100, '2020-09-10', NULL, '2020-09-10 08:35:01', '2020-09-10 08:35:01'),
(16, 2, 3, NULL, 200, '2020-09-10', NULL, '2020-09-10 08:35:14', '2020-09-10 08:35:14'),
(17, 2, 3, NULL, 100, '2020-09-10', NULL, '2020-09-10 08:40:15', '2020-09-10 08:40:15'),
(18, 2, 3, NULL, 700, '2020-09-10', NULL, '2020-09-10 08:43:15', '2020-09-10 08:43:15'),
(20, 2, 4, 4, 6000, '2020-09-12', NULL, '2020-09-11 21:59:48', '2020-09-11 21:59:48'),
(21, 2, 4, 5, 400, '2020-09-13', NULL, '2020-09-12 23:10:10', '2020-09-12 23:10:10'),
(22, 3, 7, NULL, 67, '2003-03-09', 'Consequatur consequa', '2023-05-10 11:53:39', '2023-05-10 11:53:39');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_price` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `has_stock` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `title`, `description`, `cost_price`, `price`, `has_stock`, `created_at`, `updated_at`) VALUES
(2, 3, 'Logitech Keyboard', 'The title must be a string.\r\nThe title field is required.\r\nThe description must be a string.\r\nThe description field is required.\r\nThe category id field is required.', 200, 300, 1, '2020-08-27 08:27:55', '2020-09-06 08:37:47'),
(3, 5, 'Quis quaerat quo non', 'Repudiandae aut id q', 52, 543, 1, '2023-05-10 02:52:36', '2023-05-10 02:52:36');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_invoices`
--

CREATE TABLE `purchase_invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `challan_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_invoices`
--

INSERT INTO `purchase_invoices` (`id`, `admin_id`, `user_id`, `challan_no`, `date`, `note`, `created_at`, `updated_at`) VALUES
(2, 2, 3, '23234', '2020-09-10', NULL, '2020-09-10 08:17:05', '2020-09-10 08:17:05'),
(3, 2, 3, '23234', '2020-09-10', NULL, '2020-09-10 08:33:59', '2020-09-10 08:33:59'),
(4, 2, 4, '23234', '2020-09-12', NULL, '2020-09-11 21:58:58', '2020-09-11 21:58:58'),
(5, 2, 4, NULL, '2020-09-13', NULL, '2020-09-12 22:59:56', '2020-09-12 22:59:56'),
(6, 3, 7, '464', '1972-06-05', 'Dolor mollitia quo r', '2023-05-10 11:53:45', '2023-05-10 11:53:45'),
(7, 3, 7, '650', '1983-11-17', 'Tenetur nobis ut omn', '2023-05-10 11:55:12', '2023-05-10 11:55:12');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_items`
--

CREATE TABLE `purchase_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `purchase_invoice_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` double NOT NULL,
  `price` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_items`
--

INSERT INTO `purchase_items` (`id`, `product_id`, `purchase_invoice_id`, `quantity`, `price`, `total`, `created_at`, `updated_at`) VALUES
(5, 1, 2, 1, 400, 400, '2020-09-10 08:17:24', '2020-09-10 08:17:24'),
(6, 2, 2, 3, 200, 600, '2020-09-10 08:17:39', '2020-09-10 08:17:39'),
(7, 1, 3, 1, 400, 400, '2020-09-10 08:34:11', '2020-09-10 08:34:11'),
(8, 1, 4, 20, 300, 6000, '2020-09-11 21:59:21', '2020-09-11 21:59:21'),
(9, 2, 4, 10, 200, 2000, '2020-09-11 21:59:36', '2020-09-11 21:59:36'),
(10, 1, 5, 2, 200, 400, '2020-09-12 23:00:06', '2020-09-12 23:00:06');

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE `receipts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `sale_invoice_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` double NOT NULL,
  `date` date NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `receipts`
--

INSERT INTO `receipts` (`id`, `admin_id`, `user_id`, `sale_invoice_id`, `amount`, `date`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, 300, '2020-08-23', '', NULL, NULL),
(4, NULL, 1, NULL, 100, '2020-09-05', 'New Receipt', '2020-09-04 22:23:27', '2020-09-04 22:23:27'),
(5, 2, 1, NULL, 200, '2020-09-05', 'hello', '2020-09-04 22:27:09', '2020-09-04 22:27:09'),
(9, 2, 3, 8, 500, '2020-09-08', NULL, '2020-09-08 08:20:43', '2020-09-08 08:20:43'),
(10, 2, 3, 8, 400, '2020-09-08', NULL, '2020-09-08 08:21:17', '2020-09-08 08:21:17'),
(11, 2, 3, 9, 500, '2020-09-08', NULL, '2020-09-08 08:23:12', '2020-09-08 08:23:12'),
(12, 2, 3, NULL, 100, '2020-09-08', NULL, '2020-09-08 08:23:29', '2020-09-08 08:23:29'),
(14, 2, 3, NULL, 800, '2020-09-10', NULL, '2020-09-10 08:33:42', '2020-09-10 08:33:42'),
(15, 2, 3, NULL, 100, '2020-09-10', NULL, '2020-09-10 08:35:29', '2020-09-10 08:35:29'),
(16, 2, 3, NULL, 200, '2020-09-10', NULL, '2020-09-10 08:40:54', '2020-09-10 08:40:54'),
(17, 2, 3, NULL, 600, '2020-09-10', NULL, '2020-09-10 08:44:33', '2020-09-10 08:44:33'),
(18, 2, 4, NULL, 700, '2020-09-13', NULL, '2020-09-12 23:18:00', '2020-09-12 23:18:00'),
(19, 2, 3, NULL, 20000, '2020-09-15', NULL, '2020-09-15 07:30:47', '2020-09-15 07:30:47'),
(20, 3, 7, NULL, 7, '1988-05-09', 'Et voluptatem exerci', '2023-05-10 11:55:22', '2023-05-10 11:55:22');

-- --------------------------------------------------------

--
-- Table structure for table `sale_invoices`
--

CREATE TABLE `sale_invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `challan_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sale_invoices`
--

INSERT INTO `sale_invoices` (`id`, `admin_id`, `user_id`, `challan_no`, `date`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '1213', '2020-08-12', NULL, NULL, NULL),
(2, 1, 1, '3543', '2020-12-12', NULL, NULL, NULL),
(3, 2, 1, '243', '2020-09-06', 'Test note', '2020-09-06 07:57:05', '2020-09-06 07:57:05'),
(4, 2, 1, '235434', '2020-09-06', 'This is note', '2020-09-06 08:54:43', '2020-09-06 08:54:43'),
(5, 2, 3, '2134', '2020-09-06', 'Test Node', '2020-09-06 09:14:47', '2020-09-06 09:14:47'),
(8, 2, 3, '243', '2020-09-06', NULL, '2020-09-06 09:24:30', '2020-09-06 09:24:30'),
(9, 2, 3, '235434', '2020-09-08', NULL, '2020-09-08 08:22:44', '2020-09-08 08:22:44'),
(11, 2, 3, '23234', '2020-09-10', NULL, '2020-09-10 08:34:33', '2020-09-10 08:34:33'),
(12, 2, 3, '23234', '2020-09-13', NULL, '2020-09-12 22:40:35', '2020-09-12 22:40:35'),
(14, 3, 7, '625', '2022-09-20', 'Deleniti voluptate c', '2023-05-10 11:50:51', '2023-05-10 11:50:51'),
(15, 3, 7, '580', '2019-12-28', 'Qui repudiandae elit', '2023-05-10 11:52:16', '2023-05-10 11:52:16'),
(16, 3, 7, '308', '1975-04-15', 'Consequat Aut dolor', '2023-05-10 11:53:09', '2023-05-10 11:53:09');

-- --------------------------------------------------------

--
-- Table structure for table `sale_items`
--

CREATE TABLE `sale_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `sale_invoice_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` double NOT NULL,
  `price` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sale_items`
--

INSERT INTO `sale_items` (`id`, `product_id`, `sale_invoice_id`, `quantity`, `price`, `total`, `created_at`, `updated_at`) VALUES
(7, 1, 1, 2, 500, 1000, '2020-09-06 09:11:05', '2020-09-06 09:11:05'),
(9, 1, 4, 1, 500, 500, '2020-09-06 09:12:07', '2020-09-06 09:12:07'),
(11, 1, 4, 2, 400, 800, '2020-09-06 09:13:33', '2020-09-06 09:13:33'),
(12, 1, 5, 1, 500, 500, '2020-09-06 09:15:02', '2020-09-06 09:15:02'),
(13, 2, 5, 2, 200, 400, '2020-09-06 09:15:16', '2020-09-06 09:15:16'),
(15, 1, 8, 1, 500, 500, '2020-09-06 09:24:43', '2020-09-06 09:24:43'),
(16, 2, 8, 2, 200, 400, '2020-09-06 09:24:54', '2020-09-06 09:24:54'),
(17, 1, 9, 1, 500, 500, '2020-09-08 08:23:00', '2020-09-08 08:23:00'),
(19, 2, 11, 1, 200, 200, '2020-09-10 08:34:46', '2020-09-10 08:34:46'),
(20, 2, 12, 2, 400, 800, '2020-09-12 22:40:45', '2020-09-12 22:40:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `admin_id`, `group_id`, `name`, `email`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(3, NULL, 1, 'Jone', 'jone@gmail.com', '23045093245', NULL, '2020-08-22 22:55:04', '2020-08-22 22:55:04'),
(4, NULL, 1, 'Jone New', 'jone_new@gmail.com', '230450932', NULL, '2020-08-22 22:55:33', '2020-08-22 22:55:33'),
(5, NULL, 7, 'Samson Cline', 'tyfynuvaqa@mailinator.com', '16182226566', 'Ipsum eos modi dolo', '2023-05-10 11:38:15', '2023-05-10 11:38:15'),
(6, NULL, 1, 'Lester Pugh', 'cewi@mailinator.com', '+1 (974) 371-4676', 'Aliquid dolor et adi', '2023-05-10 11:50:25', '2023-05-10 11:50:25'),
(7, NULL, 1, 'Dana Howe', 'hazapicahi@mailinator.com', '+1 (196) 678-5894', 'Numquam quo repudian', '2023-05-10 11:50:36', '2023-05-10 11:50:36'),
(58, NULL, 2, 'Wylie Colon', 'xuqe@mailinator.com', '+1 (997) 242-3806', 'Consequatur est eius', '2023-05-11 11:09:48', '2023-05-11 11:09:48'),
(59, NULL, 2, 'Louis Vazquez', 'zotu@mailinator.com', '+1 (455) 372-7791', 'Quia culpa quia amet', '2023-05-11 11:17:01', '2023-05-11 11:17:01'),
(60, NULL, 2, 'Howard Olsen', 'hegyziwoc@mailinator.com', '+1 (687) 275-8535', 'Ea autem do ipsa a', '2023-05-11 11:18:29', '2023-05-11 11:18:29'),
(61, NULL, 4, 'Rebecca Potter', 'mymiw@mailinator.com', '+1 (522) 629-9677', 'Et minima est ea ali', '2023-05-11 11:33:00', '2023-05-11 11:33:00'),
(62, NULL, 7, 'Yardley Ellis', 'rady@mailinator.com', '+1 (559) 591-4023', 'Consequatur ducimus', '2023-05-11 11:38:52', '2023-05-11 11:38:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
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
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_invoices`
--
ALTER TABLE `purchase_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_invoices`
--
ALTER TABLE `sale_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `purchase_invoices`
--
ALTER TABLE `purchase_invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `purchase_items`
--
ALTER TABLE `purchase_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `receipts`
--
ALTER TABLE `receipts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `sale_invoices`
--
ALTER TABLE `sale_invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sale_items`
--
ALTER TABLE `sale_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
