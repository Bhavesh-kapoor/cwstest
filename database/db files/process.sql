-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 17, 2022 at 10:44 AM
-- Server version: 5.7.39-cll-lve
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `process`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `industry` varchar(50) NOT NULL,
  `email` text NOT NULL,
  `password` varchar(70) NOT NULL,
  `staff_image` text NOT NULL,
  `city` varchar(50) NOT NULL,
  `role` varchar(15) NOT NULL,
  `flag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `mobile`, `industry`, `email`, `password`, `staff_image`, `city`, `role`, `flag`) VALUES
(1, 'Abhishek', '', '', 'admin@gmail.com', '$2y$10$AQqTUfeHXOHLb6eeGSjx7eYMkYglLH2DvJ39u7SXab.79qL8UvJAu', '', '', 'Admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
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
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(538, '2014_10_12_100000_create_password_resets_table', 1),
(539, '2019_08_19_000000_create_failed_jobs_table', 1),
(540, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(541, '2022_09_03_182923_create_users_table', 1),
(542, '2022_09_04_023849_create_locations_table', 1),
(543, '2022_09_04_032056_create_categories_table', 1),
(544, '2022_09_17_171900_create_products_table', 1),
(545, '2022_09_17_174742_create_orders_table', 1),
(546, '2022_09_17_180655_create_receipts_table', 1),
(547, '2022_09_17_182129_create_inventories_table', 1),
(548, '2022_09_17_184313_create_produces_table', 1),
(549, '2022_09_17_194411_create_processes_table', 1),
(550, '2022_09_17_201218_create_productions_table', 1),
(551, '2022_09_22_115520_product_process', 1),
(552, '2022_09_24_170222_create_process_steps_table', 1),
(553, '2022_09_24_192759_create_order_returns_table', 1),
(554, '2022_09_26_062918_create_jobs_table', 1),
(555, '2022_10_02_110811_add_receipt_session', 1),
(556, '2022_10_02_111946_add_receipt_session_date', 1),
(557, '2022_10_02_124209_add_check_and_received', 1),
(558, '2022_10_02_124808_add_check_and_received_date', 1),
(559, '2022_10_03_064357_create_product_boms_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buyer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT 'here   1 is dispactched',
  `dispatched_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checked_and_received_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `returned` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT 'Here   1 is returned and  0 is not',
  `flag` int(11) NOT NULL DEFAULT '0' COMMENT 'here 0 is active and 1 is deactive and 2 is delete',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `quantity`, `order_no`, `buyer_name`, `sale_price`, `date`, `status`, `dispatched_date`, `checked_and_received_date`, `returned`, `flag`, `created_at`, `updated_at`) VALUES
(1, 2, 17, 'order 1', 'bhavesh', '4000', '2022-10-07', '0', NULL, NULL, '0', 0, NULL, NULL),
(2, 2, 2, 'order 2', 'bhavesh', '400', '2022-10-06', '0', NULL, NULL, '0', 0, NULL, NULL),
(3, 3, 38, 'order 6', 'bhavesh', '400', '2022-10-07', '0', NULL, NULL, '0', 0, NULL, NULL),
(4, 1, 28, 'ord 5', 'bhavesh', '2100', '2022-10-07', '0', NULL, NULL, '0', 0, NULL, NULL),
(5, 4, 48, 'new', 'bhavesh', '400', '2022-10-15', '0', NULL, NULL, '0', 0, NULL, NULL),
(6, 5, 48, 'new1', 'bhavesh', '4000', '2022-10-21', '0', NULL, NULL, '0', 0, NULL, NULL),
(7, 6, 48, 'order 9', 'bhavesh', '4000', '2022-10-08', '0', NULL, NULL, '0', 0, NULL, NULL),
(8, 7, 2, '12345', 'Okhai', '500', '2022-10-17', '1', '2022-10-17 04:44:17', NULL, '0', 0, NULL, NULL),
(9, 7, 1, '12346', 'okhai', '500', '2022-10-17', '1', '2022-10-17 04:51:01', NULL, '1', 0, NULL, '2022-10-17 11:50:42');

-- --------------------------------------------------------

--
-- Table structure for table `order_returns`
--

CREATE TABLE `order_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `returned_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_returns`
--

INSERT INTO `order_returns` (`id`, `order_id`, `returned_date`, `flag`, `created_at`, `updated_at`) VALUES
(1, 9, '2022-10-17', 0, NULL, NULL);

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `processes`
--

CREATE TABLE `processes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` int(11) NOT NULL DEFAULT '0' COMMENT 'here 0 is active and 1 is deactive and 2 is delete',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `processes`
--

INSERT INTO `processes` (`id`, `name`, `flag`, `created_at`, `updated_at`) VALUES
(1, 'Process 1', 0, '2022-10-06 17:39:33', NULL),
(2, 'Bedsheet', 0, '2022-10-17 11:37:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `process_steps`
--

CREATE TABLE `process_steps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `process_id` int(11) NOT NULL,
  `steps` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `process_steps`
--

INSERT INTO `process_steps` (`id`, `process_id`, `steps`, `flag`, `created_at`, `updated_at`) VALUES
(1, 1, 'step 1', '0', '2022-10-06 17:39:33', NULL),
(2, 1, 'step 2', '0', '2022-10-06 17:39:33', NULL),
(3, 2, 'Print', '0', '2022-10-17 11:37:30', NULL),
(4, 2, 'Stitch', '0', '2022-10-17 11:37:30', NULL),
(5, 2, 'Press', '0', '2022-10-17 11:37:30', NULL),
(6, 2, 'Finish', '0', '2022-10-17 11:37:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `produces`
--

CREATE TABLE `produces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `production` int(11) NOT NULL DEFAULT '0' COMMENT 'here 0 it is in too produce face and  1 is in production face',
  `process_step_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Here 0  is that production for the product not start yet',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `receipt_session` int(11) NOT NULL DEFAULT '0' COMMENT 'here 0 is this product is in production stage only',
  `receipt_session_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check_and_received` int(11) NOT NULL DEFAULT '0',
  `check_and_received_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produces`
--

INSERT INTO `produces` (`id`, `product_id`, `quantity`, `production`, `process_step_id`, `created_at`, `updated_at`, `receipt_session`, `receipt_session_date`, `check_and_received`, `check_and_received_date`) VALUES
(1, 7, 5, 0, 0, '2022-10-17 11:48:42', '2022-10-17 11:48:42', 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `productions`
--

CREATE TABLE `productions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `moq` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `bom_sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bom_quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `process_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sku`, `image`, `category`, `moq`, `quantity`, `bom_sku`, `bom_quantity`, `process_id`, `flag`, `created_at`, `updated_at`) VALUES
(1, 'product 1', NULL, 'fabric', 3, 11, NULL, NULL, '1', 0, NULL, '2022-10-11 12:25:35'),
(2, 'product 2', NULL, 'assa', 3, 88, NULL, NULL, '1', 0, NULL, '2022-10-11 12:25:35'),
(3, 'product 3', NULL, 'assa', 3, 42, NULL, NULL, '1', 0, NULL, '2022-10-06 17:45:34'),
(4, 'product 5', NULL, 'fabric', 3, 42, NULL, NULL, '1', 0, NULL, '2022-10-11 12:25:59'),
(5, 'product 6', NULL, 'fabric', 3, 2, NULL, NULL, '1', 0, NULL, '2022-10-08 12:23:47'),
(6, 'product 7', NULL, 'fabric', 3, 2, NULL, NULL, '1', 0, NULL, '2022-10-08 12:24:46'),
(7, 'BDK001', NULL, 'Bedsheet', 2, 2, NULL, NULL, '2', 0, NULL, '2022-10-17 11:48:12');

-- --------------------------------------------------------

--
-- Table structure for table `product_boms`
--

CREATE TABLE `product_boms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `bom_sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bom_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_boms`
--

INSERT INTO `product_boms` (`id`, `product_id`, `bom_sku`, `bom_quantity`, `created_at`, `updated_at`) VALUES
(1, 2, 'product 1', 7, '2022-10-06 17:40:33', NULL),
(2, 3, 'product 1', 2, '2022-10-06 17:42:22', NULL),
(3, 3, 'product 2', 3, '2022-10-06 17:42:22', NULL),
(4, 4, 'product 2', 2, '2022-10-08 12:22:17', NULL),
(5, 4, 'product 1', 4, '2022-10-08 12:22:17', NULL),
(6, 6, 'product 5', 5, '2022-10-08 12:24:13', NULL),
(7, 6, 'product 6', 3, '2022-10-08 12:24:13', NULL),
(8, 7, 'Cotton 20', 3, '2022-10-17 11:38:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_process`
--

CREATE TABLE `product_process` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `step` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE `receipts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `staff_id` varchar(15) NOT NULL,
  `category_id` varchar(11) NOT NULL,
  `unique_id` text NOT NULL,
  `gender` text,
  `dob` text,
  `website` text,
  `personal_chamber` text,
  `degree` text,
  `college` text,
  `completion_year` text,
  `registration_no` text,
  `document` text,
  `specialization` text,
  `experience_year` text,
  `achievement` text,
  `experience_brief` text,
  `flag` int(11) NOT NULL DEFAULT '0',
  `feature_flag` int(11) NOT NULL DEFAULT '0',
  `token` text,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `staff_id`, `category_id`, `unique_id`, `gender`, `dob`, `website`, `personal_chamber`, `degree`, `college`, `completion_year`, `registration_no`, `document`, `specialization`, `experience_year`, `achievement`, `experience_brief`, `flag`, `feature_flag`, `token`, `delete_flag`, `create_date`) VALUES
(2, '188', '93', 'TMD-101', 'male', '2022-09-08', 'http://my-home-page.com', 'http://my-home-page.com', '12', 'wqw', '21212', '212', '202209071213Screenshot (2).png', '93', '32323', '212', '212', 0, 0, '', 0, '2022-09-08 13:13:56'),
(3, '189', '91', 'TMD-102', 'female', '2022-09-09', 'http://my-home-page.com', 'http://my-home-page.com', 'bachelor', '212', '121', '2121', '', '91', '32323', '2212', '21212', 0, 0, '', 0, '2022-09-08 13:48:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vip_or_not` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternate_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `search_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `room_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `room_rent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `co_pay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kin_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kin_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kin_relationship` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adharcard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pancard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insurance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `investigation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `others` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `signature` varchar(100) DEFAULT NULL,
  `otp` varchar(10) DEFAULT NULL,
  `flag` int(11) NOT NULL DEFAULT '0',
  `genre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`id`, `name`, `phone`, `email`, `password`, `image`, `signature`, `otp`, `flag`, `genre`) VALUES
(181, 'Abhishek', '8826269838', 'admin@gmail.com', '$2y$10$AQqTUfeHXOHLb6eeGSjx7eYMkYglLH2DvJ39u7SXab.79qL8UvJAu', '', '', '', 0, 'admin'),
(195, 'Vikrant Sharma', '8826269838', 'vikrant11933@gmail.com', '$2y$10$/gmTkYRN0wx7gGskY1I40uXKwsSuHvOqUT0rePuy28.s4mkG4VQ52', '202209111420about.jpg', '', '', 0, 'staff'),
(196, 'my full name', '1234567778', 'me@mydomain.com', '$2y$10$AQqTUfeHXOHLb6eeGSjx7eYMkYglLH2DvJ39u7SXab.79qL8UvJAu', '202209151035Screenshot (2).png', '', '', 0, 'doctor'),
(197, 'Bhavesh', '5252525252', 'bhaveshkapoor09@gmail.com', '$2y$10$Rr/69XGc/VYgFdnAGLr4G.mmNzHjURZknkOdCr2XbOcY.Kmz99pQ.', '202209111420god1.jpg', '', '', 0, 'staff'),
(198, '21212', '5252525252', 'bhaveshkapoor019@gmail.com', '$2y$10$ma2oVx.JOreQtJCxaWa2vuSyeafjGfcFKLu67mgdKwyf77gvkVWBe', '202209111429god1.jpg', '', '', 0, 'staff');

-- --------------------------------------------------------

--
-- Table structure for table `webdetails`
--

CREATE TABLE `webdetails` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `vendor_url` varchar(50) NOT NULL,
  `favicon` varchar(300) NOT NULL,
  `thumb_favicon` varchar(500) NOT NULL,
  `thumb_logo` varchar(500) NOT NULL,
  `logo` text NOT NULL,
  `title` text NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `website` varchar(55) NOT NULL,
  `terms` text NOT NULL,
  `privacy` text NOT NULL,
  `return` text NOT NULL,
  `refund` text NOT NULL,
  `disclaimer` text NOT NULL,
  `wallet_policy` text NOT NULL,
  `faqs` text NOT NULL,
  `about` text NOT NULL,
  `fb_link` text NOT NULL,
  `twitter_link` text,
  `insta_link` text NOT NULL,
  `youtube_link` text NOT NULL,
  `minimum_amount` int(11) NOT NULL,
  `shipping_charge` int(11) NOT NULL,
  `gst_number` text NOT NULL,
  `city` varchar(55) NOT NULL,
  `country` varchar(55) NOT NULL,
  `state` varchar(55) NOT NULL,
  `description` text NOT NULL,
  `whatsapp` varchar(15) NOT NULL,
  `twakto` varchar(1500) NOT NULL,
  `flag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_location_id_foreign` (`location_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_returns`
--
ALTER TABLE `order_returns`
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
-- Indexes for table `processes`
--
ALTER TABLE `processes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `process_steps`
--
ALTER TABLE `process_steps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produces`
--
ALTER TABLE `produces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productions`
--
ALTER TABLE `productions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_boms`
--
ALTER TABLE `product_boms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_process`
--
ALTER TABLE `product_process`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webdetails`
--
ALTER TABLE `webdetails`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=560;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order_returns`
--
ALTER TABLE `order_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `processes`
--
ALTER TABLE `processes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `process_steps`
--
ALTER TABLE `process_steps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `produces`
--
ALTER TABLE `produces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `productions`
--
ALTER TABLE `productions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_boms`
--
ALTER TABLE `product_boms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_process`
--
ALTER TABLE `product_process`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `receipts`
--
ALTER TABLE `receipts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT for table `webdetails`
--
ALTER TABLE `webdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
