-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2024 at 06:00 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cws`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `mobile`, `industry`, `email`, `password`, `staff_image`, `city`, `role`, `flag`) VALUES
(1, 'Abhishek', '', '', 'admin@gmail.com', '$2y$10$AQqTUfeHXOHLb6eeGSjx7eYMkYglLH2DvJ39u7SXab.79qL8UvJAu', '', '', 'Admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `authorise_accessms`
--

CREATE TABLE `authorise_accessms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `sidebar_id` int(11) NOT NULL,
  `can_view` int(11) NOT NULL DEFAULT 0 COMMENT 'Here 1 is  have access and 0 is not',
  `can_edit` int(11) NOT NULL DEFAULT 0 COMMENT 'Here 1 is  have access and 0 is not',
  `can_delete` int(11) NOT NULL DEFAULT 0 COMMENT 'Here 1 is  have access and 0 is not',
  `can_add` int(11) NOT NULL DEFAULT 0 COMMENT 'Here 1 is  have access and 0 is not',
  `can_change_pass` int(11) NOT NULL DEFAULT 0 COMMENT 'Here 1 is  have access and 0 is not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authorise_accessms`
--

INSERT INTO `authorise_accessms` (`id`, `user_id`, `sidebar_id`, `can_view`, `can_edit`, `can_delete`, `can_add`, `can_change_pass`, `created_at`, `updated_at`) VALUES
(1, 181, 1, 1, 1, 1, 1, 1, NULL, NULL),
(2, 181, 2, 1, 1, 1, 1, 1, NULL, NULL),
(3, 181, 3, 1, 1, 1, 1, 1, NULL, NULL),
(4, 181, 4, 1, 1, 1, 1, 1, NULL, NULL),
(5, 181, 5, 1, 1, 1, 1, 1, NULL, NULL),
(6, 181, 6, 1, 1, 1, 1, 1, NULL, NULL),
(7, 181, 7, 1, 1, 1, 1, 1, NULL, NULL),
(8, 181, 8, 1, 1, 1, 1, 1, NULL, NULL),
(9, 181, 9, 1, 1, 1, 1, 1, NULL, NULL),
(10, 181, 10, 1, 1, 1, 1, 1, NULL, NULL),
(11, 181, 11, 1, 1, 1, 1, 1, NULL, NULL),
(32, 201, 1, 1, 0, 0, 0, 0, '2022-11-11 11:30:54', '2024-02-03 12:05:34'),
(33, 201, 2, 1, 1, 0, 0, 0, '2022-11-11 11:30:54', '2024-02-03 12:05:34'),
(34, 201, 3, 1, 1, 0, 1, 0, '2022-11-11 11:30:54', '2024-02-03 12:05:34'),
(35, 201, 4, 1, 1, 0, 1, 0, '2022-11-11 11:30:54', '2024-02-03 12:05:34'),
(36, 201, 5, 1, 1, 0, 1, 0, '2022-11-11 11:30:54', '2024-02-03 12:05:34'),
(37, 201, 6, 1, 0, 0, 0, 0, '2022-11-11 11:30:54', '2024-02-03 12:05:34'),
(38, 201, 7, 1, 1, 1, 1, 0, '2022-11-11 11:30:54', '2024-02-03 12:05:34'),
(39, 201, 8, 1, 0, 0, 0, 0, '2022-11-11 11:30:54', '2024-02-03 12:05:34'),
(40, 201, 9, 1, 1, 0, 1, 0, '2022-11-11 11:30:54', '2024-02-03 12:05:34'),
(41, 201, 10, 1, 1, 0, 1, 0, '2022-11-11 11:30:54', '2024-02-03 12:05:34'),
(42, 201, 11, 0, 0, 0, 0, 0, '2022-11-11 11:30:54', '2024-02-03 12:05:34'),
(43, 202, 1, 1, 0, 0, 0, 0, '2022-11-11 11:34:22', '2023-02-18 14:42:11'),
(44, 202, 2, 1, 0, 0, 0, 0, '2022-11-11 11:34:22', '2023-02-18 14:42:12'),
(45, 202, 3, 1, 1, 0, 1, 0, '2022-11-11 11:34:22', '2023-02-18 14:42:12'),
(46, 202, 4, 1, 1, 0, 1, 0, '2022-11-11 11:34:22', '2023-02-18 14:42:12'),
(47, 202, 5, 1, 1, 0, 1, 0, '2022-11-11 11:34:22', '2023-02-18 14:42:12'),
(48, 202, 6, 1, 0, 0, 0, 0, '2022-11-11 11:34:22', '2023-02-18 14:42:12'),
(49, 202, 7, 1, 1, 0, 1, 0, '2022-11-11 11:34:22', '2023-02-18 14:42:12'),
(50, 202, 8, 1, 0, 0, 0, 0, '2022-11-11 11:34:22', '2023-02-18 14:42:12'),
(51, 202, 9, 1, 1, 0, 1, 0, '2022-11-11 11:34:22', '2023-02-18 14:42:12'),
(52, 202, 10, 0, 0, 0, 0, 0, '2022-11-11 11:34:22', '2023-02-18 14:42:12'),
(53, 202, 11, 0, 0, 0, 0, 0, '2022-11-11 11:34:22', '2023-02-18 14:42:12'),
(54, 203, 1, 1, 1, 1, 1, 1, '2022-11-11 11:35:54', '2023-02-18 14:42:22'),
(55, 203, 2, 1, 1, 1, 1, 1, '2022-11-11 11:35:54', '2023-02-18 14:42:22'),
(56, 203, 3, 1, 1, 1, 1, 1, '2022-11-11 11:35:54', '2023-02-18 14:42:22'),
(57, 203, 4, 1, 1, 1, 1, 1, '2022-11-11 11:35:54', '2023-02-18 14:42:22'),
(58, 203, 5, 1, 1, 1, 1, 1, '2022-11-11 11:35:54', '2023-02-18 14:42:22'),
(59, 203, 6, 1, 1, 1, 1, 1, '2022-11-11 11:35:54', '2023-02-18 14:42:22'),
(60, 203, 7, 1, 1, 1, 1, 1, '2022-11-11 11:35:54', '2023-02-18 14:42:22'),
(61, 203, 8, 1, 1, 1, 1, 1, '2022-11-11 11:35:54', '2023-02-18 14:42:22'),
(62, 203, 9, 1, 1, 1, 1, 1, '2022-11-11 11:35:54', '2023-02-18 14:42:22'),
(63, 203, 10, 1, 1, 1, 1, 1, '2022-11-11 11:35:54', '2023-02-18 14:42:22'),
(64, 203, 11, 1, 1, 1, 1, 1, '2022-11-11 11:35:54', '2023-02-18 14:42:22'),
(65, 204, 9, 1, 1, 0, 1, 0, '2022-11-11 11:42:27', '2023-02-18 14:42:35'),
(66, 205, 9, 1, 1, 0, 1, 0, '2022-11-11 11:42:39', '2023-02-18 14:42:41'),
(67, 206, 9, 1, 1, 0, 1, 0, '2022-11-11 11:42:50', '2023-02-18 14:42:52'),
(68, 207, 1, 1, 0, 0, 0, 0, '2023-09-20 10:09:26', '2024-02-04 19:53:52'),
(69, 207, 2, 1, 0, 0, 0, 0, '2023-09-20 10:09:26', '2024-02-04 19:53:52'),
(70, 207, 3, 1, 0, 0, 0, 0, '2023-09-20 10:09:26', '2024-02-04 19:53:52'),
(71, 207, 4, 1, 0, 0, 0, 0, '2023-09-20 10:09:26', '2024-02-04 19:53:52'),
(72, 207, 5, 1, 1, 1, 1, 1, '2023-09-20 10:09:26', '2024-02-04 19:53:52'),
(73, 207, 6, 1, 1, 1, 1, 1, '2023-09-20 10:09:26', '2024-02-04 19:53:52'),
(74, 207, 7, 1, 1, 1, 1, 1, '2023-09-20 10:09:26', '2024-02-04 19:53:52'),
(75, 207, 8, 1, 1, 1, 1, 1, '2023-09-20 10:09:26', '2024-02-04 19:53:52'),
(76, 207, 9, 1, 1, 1, 1, 0, '2023-09-20 10:09:26', '2024-02-04 19:53:52'),
(77, 207, 10, 1, 0, 0, 0, 0, '2023-09-20 10:09:26', '2024-02-04 19:53:52'),
(78, 181, 12, 1, 1, 1, 1, 1, NULL, NULL);

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(559, '2022_10_03_064357_create_product_boms_table', 1),
(560, '2022_10_17_183555_create_buyers_table', 2),
(561, '2023_01_09_150510_add_quantitsenttorecipt', 3),
(562, '2023_01_11_175101_add_quantitysenttoproduct', 4),
(563, '2023_01_12_155635_add_user_id', 5);

-- --------------------------------------------------------

--
-- Table structure for table `product_process`
--

CREATE TABLE `product_process` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `step` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sidebar_attrs`
--

CREATE TABLE `sidebar_attrs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sidebar_name` varchar(255) NOT NULL,
  `sidebar_slug` varchar(255) NOT NULL,
  `flag` int(11) NOT NULL DEFAULT 1 COMMENT 'here 1 is active and 0 is not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sidebar_attrs`
--

INSERT INTO `sidebar_attrs` (`id`, `sidebar_name`, `sidebar_slug`, `flag`, `created_at`, `updated_at`) VALUES
(1, 'Registerations', 'registrations', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `staff_id` varchar(15) NOT NULL,
  `category_id` varchar(11) NOT NULL,
  `unique_id` text NOT NULL,
  `gender` text DEFAULT NULL,
  `dob` text DEFAULT NULL,
  `website` text DEFAULT NULL,
  `personal_chamber` text DEFAULT NULL,
  `degree` text DEFAULT NULL,
  `college` text DEFAULT NULL,
  `completion_year` text DEFAULT NULL,
  `registration_no` text DEFAULT NULL,
  `document` text DEFAULT NULL,
  `specialization` text DEFAULT NULL,
  `experience_year` text DEFAULT NULL,
  `achievement` text DEFAULT NULL,
  `experience_brief` text DEFAULT NULL,
  `flag` int(11) NOT NULL DEFAULT 0,
  `feature_flag` int(11) NOT NULL DEFAULT 0,
  `token` text DEFAULT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT 0,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
  `title` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `resume` varchar(211) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `flag` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `phone`, `dob`, `gender`, `email`, `profile`, `resume`, `address`, `flag`, `created_at`, `updated_at`) VALUES
(4, '', 'Bhavesh Kapoor', 'Kapoor', '8595529873', '2002-02-15', 'male', 'roshan@sootisyahi.com', '202402131652pngtree-the-green-switch-is-on-png-image_4461287.png', '202402131652orders (6).pdf', 'B Block 2 satya Vihar', '0', NULL, NULL);

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
  `genre` varchar(255) NOT NULL,
  `flag` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`id`, `name`, `phone`, `email`, `password`, `genre`, `flag`) VALUES
(181, 'CWS Machine Test- PHP Developer', '8595529873', 'admin@gmail.com', '$2y$10$aGM.2vYA6HHlBkiWIlbgJ.vLogNu9nQ8w2VhpLSjQZfIgBMizMDku', 'admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `webdetails`
--

CREATE TABLE `webdetails` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `abrevation` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `webdetails`
--

INSERT INTO `webdetails` (`id`, `title`, `abrevation`) VALUES
(1, 'CWS Machine Test', 'CMT');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authorise_accessms`
--
ALTER TABLE `authorise_accessms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_process`
--
ALTER TABLE `product_process`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sidebar_attrs`
--
ALTER TABLE `sidebar_attrs`
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
-- AUTO_INCREMENT for table `authorise_accessms`
--
ALTER TABLE `authorise_accessms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=564;

--
-- AUTO_INCREMENT for table `product_process`
--
ALTER TABLE `product_process`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sidebar_attrs`
--
ALTER TABLE `sidebar_attrs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT for table `webdetails`
--
ALTER TABLE `webdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
