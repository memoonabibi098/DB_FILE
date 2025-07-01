-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2025 at 03:00 PM
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
-- Database: `website_dashboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `affiliations`
--

CREATE TABLE `affiliations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `affiliations`
--

INSERT INTO `affiliations` (`id`, `title`, `image`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Licensed Tour Operator by Department of Tourists Services, Government of Pakistan', 'affiliations/9ebVy2aLNw040vHJoMZmLaYVBUkajQaVHimZK5jF.png', 1, NULL, '2025-06-30 05:53:49', '2025-06-30 05:59:38');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `authorname` varchar(255) NOT NULL,
  `comment` int(11) NOT NULL DEFAULT 0,
  `picture` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `watch_time` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `description`, `authorname`, `comment`, `picture`, `tags`, `views`, `watch_time`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Contact Us For Best Immigration', 'We are proud to be one of the top immigration consultants in Pakistan. We are committed to assisting our clients in reaching their dreams of Australian immigration and UK study visa by advising them with the best immigration consultancy solutions.', 'Memoona Bibi', 50, 'blogs/TaqWPeNn8pnaI5IWYWW7EdgHHOiyT9moxfpqsRuX.png', '#travel #visa #ticket #e-visa  #sticker-visa', 300, '250', NULL, '2025-07-01 01:14:34', '2025-07-01 01:31:42');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Business Visa', NULL, NULL, NULL),
(2, 'Tourist Visa', NULL, NULL, NULL),
(3, 'Family/Friend Visa', NULL, '2025-06-26 06:52:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ceo_messages`
--

CREATE TABLE `ceo_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `topheading` varchar(255) NOT NULL,
  `aboutusdescription` text NOT NULL,
  `ceoname` varchar(255) NOT NULL,
  `ceodesignation` varchar(255) NOT NULL,
  `ceomessage` longtext NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ceo_messages`
--

INSERT INTO `ceo_messages` (`id`, `topheading`, `aboutusdescription`, `ceoname`, `ceodesignation`, `ceomessage`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Travel de Mentor - The force behind your Visa success', 'Established in 2013, Travel de Mentor is a trusted name in tourist and business visa consultancy. With years of experience and a client-focused approach, we’ve helped diverse travelers to navigate their travel plans with ease and confidence. At Travel de Mentor, \'Safar Aasaan Hua\' isn’t just a slogan — it’s our word to every client.', 'Kashif Mukhtar', 'CEO', 'Travel de Mentor’s CEO welcomes you as a trusted partner in visa procurement and travel consultation. My Professional journey began with esteemed positions in the Chamber of Commerce & Industry and the Ministry of Industries and Production, Government of Pakistan, from 1999 to 2011. During this period, I was deeply involved in organizing and managing international delegations, a challenging and rewarding role. This experience became the key reason for my transition in to the travel, tour, and visa consultancy. Since founding in 2013, we have embraced a vision centered on trust, integrity, and professionalism. We pride ourselves on delivering personalized solutions tailored to our client’s unique Visa Application needs. I am deeply grateful to our clients and travel partners for their invaluable contributions to our vision. Together, we derive a growth, collaboration, and progress narrative. Thank you for choosing Travel de Mentor. We look forward to serving you and making your Visa Application experience unforgettable. Our dedicated team is here to guide you every step of the way, ensuring a smooth and stress-free process. Let us handle the details while you focus on your travel plans with confidence and ease.', 'ceo_images/97DmiwiB33unv5TzANmerCnKpPmi6A3RUtIvwnXO.png', NULL, '2025-07-01 03:37:55', '2025-07-01 03:39:51');

-- --------------------------------------------------------

--
-- Table structure for table `choose_us_benefits`
--

CREATE TABLE `choose_us_benefits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `choose_us_benefits`
--

INSERT INTO `choose_us_benefits` (`id`, `icon`, `title`, `description`, `order`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'storage/choose_us_benefits/3S7M2HXRuE3wSwp10U1CjfRGwNyaygg8dGHersh5.png', 'Fast and Free Hassle', 'dummy description', 1, NULL, '2025-06-30 05:19:04', '2025-06-30 05:19:04');

-- --------------------------------------------------------

--
-- Table structure for table `choose_us_counters`
--

CREATE TABLE `choose_us_counters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` varchar(255) DEFAULT NULL,
  `label` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `choose_us_counters`
--

INSERT INTO `choose_us_counters` (`id`, `number`, `label`, `icon`, `order`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '98M', 'Happy Customers', NULL, 1, NULL, '2025-06-30 05:17:24', '2025-06-30 05:19:47'),
(2, NULL, '55,000+ Reviews', 'fa fa-star', 2, NULL, '2025-06-30 05:20:09', '2025-06-30 05:20:09');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(3) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Australia', 'AUS', NULL, '2025-06-11 00:10:08', NULL),
(2, 'Azerbaijan', 'AZE', NULL, '2025-06-11 00:10:37', NULL),
(3, 'Bahrain', 'BHR', NULL, '2025-06-11 00:08:16', NULL),
(4, 'Belgium', 'BEL', NULL, '2025-06-11 00:08:48', NULL),
(5, 'Brazil', 'BRA', NULL, '2025-06-11 00:09:32', NULL),
(6, 'Cambodia', 'KHM', '2025-06-10 07:44:29', '2025-06-11 00:11:16', NULL),
(7, 'Canada', 'CAN', '2025-06-10 07:45:52', '2025-06-11 00:11:52', NULL),
(8, 'China', 'CHN', '2025-06-11 00:12:22', '2025-06-11 00:12:22', NULL),
(9, 'Denmark', 'DNK', '2025-06-11 00:12:52', '2025-06-11 00:12:52', NULL),
(10, 'Finland', 'FIN', '2025-06-11 00:13:29', '2025-06-11 00:13:29', NULL),
(11, 'France', 'FRA', '2025-06-11 00:14:00', '2025-06-11 00:14:00', NULL),
(12, 'Germany', 'DEU', '2025-06-11 00:14:34', '2025-06-11 00:14:34', NULL),
(13, 'Greece', 'GRC', '2025-06-11 00:15:08', '2025-06-11 00:15:08', NULL),
(14, 'Hong Kong', 'HKG', '2025-06-11 00:15:37', '2025-06-11 00:15:37', NULL),
(15, 'Indonesia', 'IDN', '2025-06-11 00:16:16', '2025-06-11 00:16:16', NULL),
(16, 'Ireland', 'IRL', '2025-06-11 00:16:39', '2025-06-11 00:16:39', NULL),
(17, 'Italy', 'ITA', '2025-06-11 00:17:21', '2025-06-11 00:17:21', NULL),
(18, 'Japan', 'JPN', '2025-06-11 00:17:52', '2025-06-11 00:17:52', NULL),
(19, 'Korea', 'KOR', '2025-06-11 00:18:31', '2025-06-11 00:18:31', NULL),
(20, 'Malaysia', 'MYS', '2025-06-11 00:19:07', '2025-06-11 00:19:07', NULL),
(21, 'Morocco', 'MAR', '2025-06-11 00:19:45', '2025-06-11 00:19:45', NULL),
(22, 'Netherlands', 'NLD', '2025-06-11 00:20:30', '2025-06-11 00:20:30', NULL),
(23, 'New Zealand', 'NZL', '2025-06-11 00:21:07', '2025-06-11 00:21:07', NULL),
(24, 'Norway', 'NOR', '2025-06-11 00:21:37', '2025-06-11 00:21:37', NULL),
(25, 'Saudi Arabia', 'SAU', '2025-06-11 00:22:08', '2025-06-11 00:22:08', NULL),
(26, 'South Africa', 'ZAF', '2025-06-11 00:22:37', '2025-06-11 00:22:37', NULL),
(27, 'Spain', 'ESP', '2025-06-11 00:23:14', '2025-06-11 00:23:14', NULL),
(28, 'Sweden', 'SWE', '2025-06-11 00:23:56', '2025-06-11 00:23:56', NULL),
(29, 'Switzerland', 'CHE', '2025-06-11 00:24:40', '2025-06-11 00:24:40', NULL),
(30, 'Thailand', 'THA', '2025-06-11 00:25:08', '2025-06-11 00:25:08', NULL),
(31, 'Turkey', 'TUR', '2025-06-11 00:25:43', '2025-06-11 00:25:43', NULL),
(32, 'United Arab Emirates', 'ARE', '2025-06-11 00:26:13', '2025-06-11 00:26:13', NULL),
(33, 'United Kingdom', 'GBR', '2025-06-11 00:27:37', '2025-06-11 00:27:37', NULL),
(34, 'United States of America', 'USA', '2025-06-11 00:28:10', '2025-06-11 00:28:10', NULL),
(35, 'Vietnam', 'VNM', '2025-06-11 00:30:06', '2025-06-11 00:30:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `country_visa_type_category`
--

CREATE TABLE `country_visa_type_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `visa_type_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country_visa_type_category`
--

INSERT INTO `country_visa_type_category` (`id`, `country_id`, `visa_type_id`, `category_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 1, '2025-06-11 02:32:37', '2025-06-11 02:32:37', '2025-06-11 04:36:23'),
(3, 1, 1, 2, '2025-06-11 02:32:37', '2025-06-11 02:32:37', '2025-06-11 04:36:23'),
(4, 2, 2, 1, '2025-06-11 02:33:01', '2025-06-11 02:33:01', NULL),
(6, 2, 2, 2, '2025-06-11 02:33:01', '2025-06-11 02:33:01', NULL),
(7, 3, 2, 1, '2025-06-11 02:33:27', '2025-06-11 02:33:27', NULL),
(9, 3, 2, 2, '2025-06-11 02:33:27', '2025-06-11 02:33:27', NULL),
(10, 4, 1, 1, '2025-06-11 02:33:53', '2025-06-11 02:33:53', NULL),
(12, 4, 1, 2, '2025-06-11 02:33:53', '2025-06-11 02:33:53', NULL),
(13, 5, 1, 1, '2025-06-11 02:34:15', '2025-06-11 02:34:15', NULL),
(15, 5, 1, 2, '2025-06-11 02:34:15', '2025-06-11 02:34:15', NULL),
(16, 6, 2, 1, '2025-06-11 02:34:41', '2025-06-11 02:34:41', NULL),
(18, 6, 2, 2, '2025-06-11 02:34:41', '2025-06-11 02:34:41', NULL),
(19, 7, 1, 1, '2025-06-11 02:35:09', '2025-06-11 02:35:09', NULL),
(21, 7, 1, 2, '2025-06-11 02:35:09', '2025-06-11 02:35:09', NULL),
(22, 8, 1, 1, '2025-06-11 02:35:34', '2025-06-11 02:35:34', NULL),
(24, 8, 1, 2, '2025-06-11 02:35:35', '2025-06-11 02:35:35', NULL),
(25, 9, 1, 1, '2025-06-11 02:35:55', '2025-06-11 02:35:55', NULL),
(27, 9, 1, 2, '2025-06-11 02:35:56', '2025-06-11 02:35:56', NULL),
(28, 11, 1, 1, '2025-06-11 02:36:24', '2025-06-11 02:36:24', NULL),
(30, 11, 1, 2, '2025-06-11 02:36:24', '2025-06-11 02:36:24', NULL),
(31, 12, 1, 1, '2025-06-11 02:36:48', '2025-06-11 02:36:48', NULL),
(33, 12, 1, 2, '2025-06-11 02:36:48', '2025-06-11 02:36:48', NULL),
(34, 13, 1, 1, '2025-06-11 02:37:13', '2025-06-11 02:37:13', NULL),
(36, 13, 1, 2, '2025-06-11 02:37:13', '2025-06-11 02:37:13', NULL),
(37, 14, 2, 1, '2025-06-11 02:37:37', '2025-06-11 02:37:37', NULL),
(39, 14, 2, 2, '2025-06-11 02:37:38', '2025-06-11 02:37:38', NULL),
(40, 15, 2, 1, '2025-06-11 02:38:06', '2025-06-11 02:38:06', NULL),
(42, 15, 2, 2, '2025-06-11 02:38:06', '2025-06-11 02:38:06', NULL),
(43, 15, 1, 1, '2025-06-11 02:38:06', '2025-06-11 02:38:06', NULL),
(45, 15, 1, 2, '2025-06-11 02:38:06', '2025-06-11 02:38:06', NULL),
(46, 16, 1, 1, '2025-06-11 02:38:31', '2025-06-11 02:38:31', NULL),
(48, 16, 1, 2, '2025-06-11 02:38:31', '2025-06-11 02:38:31', NULL),
(49, 17, 1, 1, '2025-06-11 02:38:57', '2025-06-11 02:38:57', NULL),
(51, 17, 1, 2, '2025-06-11 02:38:57', '2025-06-11 02:38:57', NULL),
(52, 18, 1, 1, '2025-06-11 02:39:26', '2025-06-11 02:39:26', NULL),
(54, 18, 1, 2, '2025-06-11 02:39:26', '2025-06-11 02:39:26', NULL),
(55, 19, 2, 1, '2025-06-11 02:39:53', '2025-06-11 02:39:53', NULL),
(57, 19, 2, 2, '2025-06-11 02:39:54', '2025-06-11 02:39:54', NULL),
(58, 20, 2, 1, '2025-06-11 02:40:19', '2025-06-11 02:40:19', NULL),
(60, 20, 2, 2, '2025-06-11 02:40:19', '2025-06-11 02:40:19', NULL),
(61, 20, 1, 1, '2025-06-11 02:40:19', '2025-06-11 02:40:19', NULL),
(63, 20, 1, 2, '2025-06-11 02:40:19', '2025-06-11 02:40:19', NULL),
(64, 21, 2, 1, '2025-06-11 02:40:46', '2025-06-11 02:40:46', NULL),
(66, 21, 2, 2, '2025-06-11 02:40:46', '2025-06-11 02:40:46', NULL),
(67, 21, 1, 1, '2025-06-11 02:40:46', '2025-06-11 02:40:46', NULL),
(69, 21, 1, 2, '2025-06-11 02:40:46', '2025-06-11 02:40:46', NULL),
(70, 22, 1, 1, '2025-06-11 02:41:39', '2025-06-11 02:41:39', NULL),
(72, 22, 1, 2, '2025-06-11 02:41:39', '2025-06-11 02:41:39', NULL),
(73, 23, 2, 1, '2025-06-11 02:42:06', '2025-06-11 02:42:06', NULL),
(75, 23, 2, 2, '2025-06-11 02:42:06', '2025-06-11 02:42:06', NULL),
(76, 24, 1, 1, '2025-06-11 02:42:37', '2025-06-11 02:42:37', NULL),
(78, 24, 1, 2, '2025-06-11 02:42:37', '2025-06-11 02:42:37', NULL),
(79, 25, 2, 1, '2025-06-11 02:43:42', '2025-06-11 02:43:42', NULL),
(81, 25, 2, 2, '2025-06-11 02:43:42', '2025-06-11 02:43:42', NULL),
(82, 26, 1, 1, '2025-06-11 02:44:06', '2025-06-11 02:44:06', NULL),
(84, 26, 1, 2, '2025-06-11 02:44:06', '2025-06-11 02:44:06', NULL),
(85, 27, 1, 1, '2025-06-11 02:44:31', '2025-06-11 02:44:31', NULL),
(87, 27, 1, 2, '2025-06-11 02:44:31', '2025-06-11 02:44:31', NULL),
(88, 28, 1, 1, '2025-06-11 02:44:58', '2025-06-11 02:44:58', NULL),
(90, 28, 1, 2, '2025-06-11 02:44:58', '2025-06-11 02:44:58', NULL),
(91, 29, 1, 1, '2025-06-11 02:45:23', '2025-06-11 02:45:23', NULL),
(93, 29, 1, 2, '2025-06-11 02:45:23', '2025-06-11 02:45:23', NULL),
(94, 30, 2, 1, '2025-06-11 02:45:50', '2025-06-11 02:45:50', NULL),
(96, 30, 2, 2, '2025-06-11 02:45:50', '2025-06-11 02:45:50', NULL),
(97, 31, 2, 1, '2025-06-11 02:46:17', '2025-06-11 02:46:17', NULL),
(99, 31, 2, 2, '2025-06-11 02:46:17', '2025-06-11 02:46:17', NULL),
(100, 31, 1, 1, '2025-06-11 02:46:17', '2025-06-11 02:46:17', NULL),
(102, 31, 1, 2, '2025-06-11 02:46:17', '2025-06-11 02:46:17', NULL),
(103, 32, 2, 1, '2025-06-11 02:46:41', '2025-06-11 02:46:41', NULL),
(105, 32, 2, 2, '2025-06-11 02:46:41', '2025-06-11 02:46:41', NULL),
(106, 33, 1, 1, '2025-06-11 02:47:07', '2025-06-11 02:47:07', NULL),
(108, 33, 1, 2, '2025-06-11 02:47:07', '2025-06-11 02:47:07', NULL),
(109, 34, 1, 1, '2025-06-11 02:47:29', '2025-06-11 02:47:29', NULL),
(111, 34, 1, 2, '2025-06-11 02:47:29', '2025-06-11 02:47:29', NULL),
(112, 35, 2, 1, '2025-06-11 02:47:53', '2025-06-11 02:47:53', NULL),
(114, 35, 2, 2, '2025-06-11 02:47:53', '2025-06-11 02:47:53', NULL),
(115, 1, 2, 1, '2025-06-11 04:36:23', '2025-06-11 04:36:23', NULL),
(116, 1, 2, 2, '2025-06-11 04:36:23', '2025-06-11 04:36:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_country` varchar(255) NOT NULL DEFAULT 'Pakistan',
  `to_country_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `visa_type_id` bigint(20) UNSIGNED NOT NULL,
  `heading` varchar(255) NOT NULL,
  `rating` double DEFAULT NULL,
  `total_reviews` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`id`, `from_country`, `to_country_id`, `category_id`, `visa_type_id`, `heading`, `rating`, `total_reviews`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Pakistan', 1, 1, 2, 'Australia Business E-Visa', 4.8, 5000, '2025-06-26 07:16:27', '2025-06-26 07:52:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `destination_details`
--

CREATE TABLE `destination_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `destination_id` bigint(20) UNSIGNED NOT NULL,
  `overview` text DEFAULT NULL,
  `why_visit_heading` varchar(255) DEFAULT NULL,
  `why_visit_intro` text DEFAULT NULL,
  `why_visit_points` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`why_visit_points`)),
  `what_we_offer` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`what_we_offer`)),
  `required_documents` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`required_documents`)),
  `policies` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`policies`)),
  `rating_5` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rating_4` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rating_3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rating_2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rating_1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destination_details`
--

INSERT INTO `destination_details` (`id`, `destination_id`, `overview`, `why_visit_heading`, `why_visit_intro`, `why_visit_points`, `what_we_offer`, `required_documents`, `policies`, `rating_5`, `rating_4`, `rating_3`, `rating_2`, `rating_1`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Non ad velit consequ', 'In amet repellendus', 'Voluptatum eos nisi', '[\"Quo qui accusamus vo\",\"Maiores voluptatum v\",\"Ad corporis voluptat\"]', '[\"Blanditiis ipsum qu\",\"Id dolore elit ear\",\"Aut sed omnis molest\"]', '[\"Nulla dolor et quo q\",\"Pariatur Ea ut qui\",\"In do voluptatem La\"]', '[\"Perspiciatis et lab\",\"Animi impedit dolo\",\"Nisi excepturi sit r\",\"Saepe amet consequu\"]', 0, 0, 0, 0, 0, '2025-06-29 04:41:50', '2025-06-30 00:15:03', '2025-06-30 00:15:03');

-- --------------------------------------------------------

--
-- Table structure for table `destination_images`
--

CREATE TABLE `destination_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `destination_detail_id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destination_images`
--

INSERT INTO `destination_images` (`id`, `destination_detail_id`, `image_path`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'destination_details/1751190110_68610a5e56b35.jpg', '2025-06-29 04:41:50', '2025-06-30 00:15:03', '2025-06-30 00:15:03'),
(2, 1, 'destination_details/1751190110_68610a5eeab8c.jpg', '2025-06-29 04:41:50', '2025-06-30 00:15:03', '2025-06-30 00:15:03'),
(3, 1, 'destination_details/1751190110_68610a5eedec9.jpg', '2025-06-29 04:41:50', '2025-06-30 00:15:03', '2025-06-30 00:15:03'),
(4, 1, 'destination_details/1751190110_68610a5ef1d09.jpg', '2025-06-29 04:41:51', '2025-06-30 00:15:03', '2025-06-30 00:15:03'),
(5, 1, 'destination_details/1751190111_68610a5f02440.jpg', '2025-06-29 04:41:51', '2025-06-30 00:15:03', '2025-06-30 00:15:03');

-- --------------------------------------------------------

--
-- Table structure for table `destination_packages`
--

CREATE TABLE `destination_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `destination_detail_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `intro` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destination_packages`
--

INSERT INTO `destination_packages` (`id`, `destination_detail_id`, `title`, `intro`, `price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Deserunt odit volupt', 'Voluptatibus volupta', 204.00, '2025-06-29 04:41:51', '2025-06-30 00:15:03', '2025-06-30 00:15:03');

-- --------------------------------------------------------

--
-- Table structure for table `destination_package_includes`
--

CREATE TABLE `destination_package_includes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` bigint(20) UNSIGNED NOT NULL,
  `item` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destination_package_includes`
--

INSERT INTO `destination_package_includes` (`id`, `package_id`, `item`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Autem consequatur is', '2025-06-29 04:41:51', '2025-06-30 00:15:03', '2025-06-30 00:15:03'),
(2, 1, 'Excepturi eaque veli', '2025-06-29 04:41:51', '2025-06-30 00:15:03', '2025-06-30 00:15:03'),
(3, 1, 'Alias sint consequat', '2025-06-29 04:41:51', '2025-06-30 00:15:03', '2025-06-30 00:15:03');

-- --------------------------------------------------------

--
-- Table structure for table `destination_package_notes`
--

CREATE TABLE `destination_package_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` bigint(20) UNSIGNED NOT NULL,
  `note` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destination_package_notes`
--

INSERT INTO `destination_package_notes` (`id`, `package_id`, `note`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'In Nam non laborum c', '2025-06-29 04:41:51', '2025-06-30 00:15:03', '2025-06-30 00:15:03'),
(2, 1, 'Dolore rerum eos qui', '2025-06-29 04:41:51', '2025-06-30 00:15:03', '2025-06-30 00:15:03'),
(3, 1, 'Optio minima aut ex', '2025-06-29 04:41:51', '2025-06-30 00:15:03', '2025-06-30 00:15:03');

-- --------------------------------------------------------

--
-- Table structure for table `destination_rating_snapshots`
--

CREATE TABLE `destination_rating_snapshots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `destination_detail_id` bigint(20) UNSIGNED NOT NULL,
  `star_5` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `star_4` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `star_3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `star_2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `star_1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destination_rating_snapshots`
--

INSERT INTO `destination_rating_snapshots` (`id`, `destination_detail_id`, `star_5`, `star_4`, `star_3`, `star_2`, `star_1`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 25, 16, 20, 61, 62, '2025-06-29 04:41:51', '2025-06-30 00:15:03', '2025-06-30 00:15:03');

-- --------------------------------------------------------

--
-- Table structure for table `destination_reviews`
--

CREATE TABLE `destination_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `destination_detail_id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `review_time` varchar(255) NOT NULL,
  `review_stars` decimal(2,1) NOT NULL,
  `review_message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destination_reviews`
--

INSERT INTO `destination_reviews` (`id`, `destination_detail_id`, `customer_name`, `review_time`, `review_stars`, `review_message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Kessie David', 'Est quis distinctio', 5.0, 'Veniam consequatur', '2025-06-29 04:41:51', '2025-06-30 00:15:03', '2025-06-30 00:15:03');

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
-- Table structure for table `hero_sections`
--

CREATE TABLE `hero_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `background_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hero_sections`
--

INSERT INTO `hero_sections` (`id`, `page_name`, `subtitle`, `background_image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Home', 'Navigating Visas, Simplifying Journeys', 'hero/nxAM3LBGb5SMW0zYs8nlEJ7KW9OzpScJP7ZKJXzR.png', '2025-06-30 02:30:17', '2025-06-30 02:44:38', NULL);

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
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `route_name` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `title`, `route_name`, `is_active`, `order`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Home', 'home-page', 1, 1, '2025-06-30 00:55:21', '2025-06-30 00:56:00', NULL);

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_06_01_073938_create_destinations_table', 1),
(5, '2025_06_01_074057_create_destination_details_table', 1),
(6, '2025_06_01_113811_add_deleted_at_to_destinations_table', 1),
(7, '2025_06_01_193445_add_structured_fields_to_destination_details_table', 1),
(8, '2025_06_04_044548_add_deleted_at_to_destination_details_table', 2),
(9, '2025_06_04_054418_add_snapshot_to_destination_details_table', 3),
(10, '2025_06_10_071335_add_why_visit_intro_to_destination_details_table', 4),
(12, '2025_06_10_104309_create_countries_table', 5),
(13, '2025_06_10_110656_create_categories_table', 6),
(14, '2025_06_10_111808_create_visa_types_table', 7),
(15, '2025_06_10_113448_create_country_visa_type_table', 8),
(16, '2025_06_10_175143_create_categories_table', 5),
(17, '2025_06_11_045037_add_soft_deletes_to_countries_table', 9),
(18, '2025_06_11_045808_add_soft_deletes_to_categories_table', 10),
(20, '2025_06_11_050048_add_soft_deletes_to_visa_types_table', 11),
(21, '2025_06_11_054553_create_country_visa_type_category_table', 12),
(22, '2025_06_11_061401_add_soft_deletes_to_country_visa_type_category_table', 13),
(23, '2025_06_12_052254_rename_category_column_in_destinations_table', 14),
(24, '2025_06_12_052345_rename_visa_type_column_in_destinations_table', 14),
(25, '2025_06_12_052510_add_foreign_keys_to_destinations_table', 15),
(26, '2025_06_14_105503_create_choose_us_sections_table', 16),
(27, '2025_06_14_105538_create_choose_us_features_table', 16),
(28, '2025_06_14_105606_create_choose_us_counters_table', 16),
(30, '2025_06_14_113113_add_soft_deletes_to_choose_us_tables', 17),
(31, '2025_06_14_115528_add_type_to_choose_us_counters_table', 18),
(32, '2025_06_17_051906_create_affiliations_table', 18),
(33, '2025_06_17_053118_add_soft_deletes_to_affiliations_table', 19),
(34, '2025_06_17_060201_remove_title_from_affiliations_table', 20),
(35, '2025_06_17_064645_create_affiliation_section_titles_table', 21),
(36, '2025_06_20_132405_add_fields_to_users_table', 22),
(37, '2025_06_21_055313_update_role_enum_in_users_table', 23),
(41, '2025_06_22_054407_update_role_enum_in_users_table', 24),
(42, '2025_06_26_075418_create_users_table', 25),
(44, '2025_06_26_110707_create_destinations_table', 26),
(45, '2025_06_28_083554_create_destination_details_table', 27),
(46, '2025_06_28_083723_create_destination_images_table', 28),
(47, '2025_06_28_083818_create_destination_packages_table', 29),
(48, '2025_06_28_083919_create_destination_package_includes_table', 29),
(49, '2025_06_28_084016_create_destination_package_notes_table', 29),
(50, '2025_06_28_084231_create_destination_reviews_table', 30),
(51, '2025_06_28_084525_create_destination_rating_snapshots_table', 31),
(52, '2025_06_28_102442_add_why_visit_points_to_destination_details_table', 32),
(53, '2025_06_28_111032_update_overview_column_in_destination_details_table', 33),
(54, '2025_06_30_052826_create_menus_table', 34),
(56, '2025_06_30_065553_create_hero_sections_table', 35),
(59, '2025_06_30_074941_create_choose_us_benefits_table', 36),
(60, '2025_06_30_075911_create_choose_us_counters_table', 36),
(61, '2025_06_30_103507_create_affiliations_table', 37),
(63, '2025_06_30_113408_create_services_table', 38),
(64, '2025_07_01_052857_create_blogs_table', 39),
(66, '2025_07_01_065046_create_our_customers_table', 40),
(68, '2025_07_01_073706_create_ceo_messages_table', 41),
(69, '2025_07_01_121829_create_our_approaches_table', 42);

-- --------------------------------------------------------

--
-- Table structure for table `our_approaches`
--

CREATE TABLE `our_approaches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `our_customers`
--

CREATE TABLE `our_customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `picture` varchar(255) NOT NULL,
  `rating_star_value` decimal(3,1) NOT NULL,
  `description` text NOT NULL,
  `author_name` varchar(255) NOT NULL,
  `watch_time` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `our_customers`
--

INSERT INTO `our_customers` (`id`, `picture`, `rating_star_value`, `description`, `author_name`, `watch_time`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'our_customers/GNKJzqzn9GxMFckVOEZyy3CKe8sjI0Z9DZz8JFT4.png', 4.7, 'Expert Opinion exceeded my expectations in helping me secure my student dependent visa. Their team was knowledgeable, responsive, and calm throughout the entire process. I appreciated their attention to detail and proactive communication.', 'Memoona Bibi', '250', NULL, '2025-07-01 02:13:01', '2025-07-01 02:16:46');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('memona@traveldementor.com', '$2y$12$31ITpzHa5CrvN1PZNyNDB.bLeBI8VkmgDvQG.j80bzkipNwAUQVDW', '2025-06-22 00:14:02');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `left_icon` varchar(255) NOT NULL,
  `right_icon` varchar(255) NOT NULL,
  `short_description` varchar(255) NOT NULL,
  `full_description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `left_icon`, `right_icon`, `short_description`, `full_description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Business Visa', 'EyE5J8XrMla94N1RW6A6QFWbDqEzykvq6RaIdA5V.png', 'KTUp41YwjFWStc74DtHZBKzPx512i0BDJ8CTe2kn.png', 'View Detail', 'Whether to attend a Business Meeting or to participate in an International Exhibition, We ensure you meet all requirements.', '2025-06-30 07:42:41', '2025-06-30 07:48:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('hvAlxY0OUZLNBWfa90iOK5cAJvYcN1KbQ9JGLbBX', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiQndPQWNydmRjZVFQYTNubDU1QVBuMUNPcms3V2oyNVVIUllCc0xCNyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4vb3VyLWFwcHJvYWNoL2NyZWF0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1751374609);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `role` enum('user','editor','super_admin') NOT NULL DEFAULT 'user',
  `picture` varchar(255) DEFAULT NULL,
  `social_media_links` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`social_media_links`)),
  `address` text DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `martial_status` enum('single','married','divorced','widowed') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `phone_no`, `role`, `picture`, `social_media_links`, `address`, `profession`, `DOB`, `gender`, `martial_status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Memoona Bibi', 'memoona@123', 'memoonaworkmail@gmail.com', '$2y$12$6uPL.oBkl3yvt6N5bADEQuRWiI7aiZgYlhqDQurzS.WONQ9lDhaFS', '03211058694', 'super_admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-06-26 03:13:50', '2025-06-26 03:13:50', NULL),
(2, 'Hajrah Bibi', 'hajrah@123', 'ma45678ali@gmail.com', '$2y$12$iUrVLtLvCHaCEmcPrMnfP.hE/n5otOL32h8kKC2L2vrjJ23cTpQAC', '03211741522', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-06-26 03:49:40', '2025-06-26 03:49:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `visa_types`
--

CREATE TABLE `visa_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visa_types`
--

INSERT INTO `visa_types` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Sticker Visa', NULL, NULL, NULL),
(2, 'E-visa', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `affiliations`
--
ALTER TABLE `affiliations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ceo_messages`
--
ALTER TABLE `ceo_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `choose_us_benefits`
--
ALTER TABLE `choose_us_benefits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `choose_us_counters`
--
ALTER TABLE `choose_us_counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_visa_type_category`
--
ALTER TABLE `country_visa_type_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ctry_visa_cat_unique` (`country_id`,`visa_type_id`,`category_id`),
  ADD KEY `country_visa_type_category_visa_type_id_foreign` (`visa_type_id`),
  ADD KEY `country_visa_type_category_category_id_foreign` (`category_id`);

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destinations_to_country_id_foreign` (`to_country_id`),
  ADD KEY `destinations_category_id_foreign` (`category_id`),
  ADD KEY `destinations_visa_type_id_foreign` (`visa_type_id`);

--
-- Indexes for table `destination_details`
--
ALTER TABLE `destination_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destination_details_destination_id_foreign` (`destination_id`);

--
-- Indexes for table `destination_images`
--
ALTER TABLE `destination_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destination_images_destination_detail_id_foreign` (`destination_detail_id`);

--
-- Indexes for table `destination_packages`
--
ALTER TABLE `destination_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destination_packages_destination_detail_id_foreign` (`destination_detail_id`);

--
-- Indexes for table `destination_package_includes`
--
ALTER TABLE `destination_package_includes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destination_package_includes_package_id_foreign` (`package_id`);

--
-- Indexes for table `destination_package_notes`
--
ALTER TABLE `destination_package_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destination_package_notes_package_id_foreign` (`package_id`);

--
-- Indexes for table `destination_rating_snapshots`
--
ALTER TABLE `destination_rating_snapshots`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destination_rating_snapshots_destination_detail_id_foreign` (`destination_detail_id`);

--
-- Indexes for table `destination_reviews`
--
ALTER TABLE `destination_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destination_reviews_destination_detail_id_foreign` (`destination_detail_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hero_sections`
--
ALTER TABLE `hero_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our_approaches`
--
ALTER TABLE `our_approaches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our_customers`
--
ALTER TABLE `our_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visa_types`
--
ALTER TABLE `visa_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `affiliations`
--
ALTER TABLE `affiliations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ceo_messages`
--
ALTER TABLE `ceo_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `choose_us_benefits`
--
ALTER TABLE `choose_us_benefits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `choose_us_counters`
--
ALTER TABLE `choose_us_counters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `country_visa_type_category`
--
ALTER TABLE `country_visa_type_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `destination_details`
--
ALTER TABLE `destination_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `destination_images`
--
ALTER TABLE `destination_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `destination_packages`
--
ALTER TABLE `destination_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `destination_package_includes`
--
ALTER TABLE `destination_package_includes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `destination_package_notes`
--
ALTER TABLE `destination_package_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `destination_rating_snapshots`
--
ALTER TABLE `destination_rating_snapshots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `destination_reviews`
--
ALTER TABLE `destination_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hero_sections`
--
ALTER TABLE `hero_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `our_approaches`
--
ALTER TABLE `our_approaches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `our_customers`
--
ALTER TABLE `our_customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `visa_types`
--
ALTER TABLE `visa_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `country_visa_type_category`
--
ALTER TABLE `country_visa_type_category`
  ADD CONSTRAINT `country_visa_type_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `country_visa_type_category_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `country_visa_type_category_visa_type_id_foreign` FOREIGN KEY (`visa_type_id`) REFERENCES `visa_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `destinations`
--
ALTER TABLE `destinations`
  ADD CONSTRAINT `destinations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `destinations_to_country_id_foreign` FOREIGN KEY (`to_country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `destinations_visa_type_id_foreign` FOREIGN KEY (`visa_type_id`) REFERENCES `visa_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `destination_details`
--
ALTER TABLE `destination_details`
  ADD CONSTRAINT `destination_details_destination_id_foreign` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `destination_images`
--
ALTER TABLE `destination_images`
  ADD CONSTRAINT `destination_images_destination_detail_id_foreign` FOREIGN KEY (`destination_detail_id`) REFERENCES `destination_details` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `destination_packages`
--
ALTER TABLE `destination_packages`
  ADD CONSTRAINT `destination_packages_destination_detail_id_foreign` FOREIGN KEY (`destination_detail_id`) REFERENCES `destination_details` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `destination_package_includes`
--
ALTER TABLE `destination_package_includes`
  ADD CONSTRAINT `destination_package_includes_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `destination_packages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `destination_package_notes`
--
ALTER TABLE `destination_package_notes`
  ADD CONSTRAINT `destination_package_notes_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `destination_packages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `destination_rating_snapshots`
--
ALTER TABLE `destination_rating_snapshots`
  ADD CONSTRAINT `destination_rating_snapshots_destination_detail_id_foreign` FOREIGN KEY (`destination_detail_id`) REFERENCES `destination_details` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `destination_reviews`
--
ALTER TABLE `destination_reviews`
  ADD CONSTRAINT `destination_reviews_destination_detail_id_foreign` FOREIGN KEY (`destination_detail_id`) REFERENCES `destination_details` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
