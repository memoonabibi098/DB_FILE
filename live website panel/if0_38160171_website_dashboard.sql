-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql102.infinityfree.com
-- Generation Time: Jul 01, 2025 at 09:37 AM
-- Server version: 11.4.7-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_38160171_website_dashboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `action` varchar(255) NOT NULL,
  `model` varchar(255) DEFAULT NULL,
  `record_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `affiliations`
--

CREATE TABLE `affiliations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `affiliations`
--

INSERT INTO `affiliations` (`id`, `description`, `image_path`, `order`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Licensed Tour Operator by Department of Tourists Services, Government of Pakistan', '0', 1, '2025-06-23 18:00:44', '2025-06-23 18:00:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `affiliation_section_titles`
--

CREATE TABLE `affiliation_section_titles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, 'Visa Appeal', NULL, NULL, NULL),
(4, 'Family/Friend Visa', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `choose_us_counters`
--

CREATE TABLE `choose_us_counters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('text','icon') NOT NULL DEFAULT 'text',
  `value` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `icon_class` varchar(255) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `choose_us_counters`
--

INSERT INTO `choose_us_counters` (`id`, `type`, `value`, `label`, `icon_class`, `order`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'text', '98M', 'Happy Customers', NULL, 1, '2025-06-14 06:37:59', '2025-06-14 06:56:43', '2025-06-14 06:56:43'),
(2, 'text', '55,000+ Reviews', '55,000+ Reviews', 'fa fa-star', 2, '2025-06-14 06:38:48', '2025-06-14 06:56:37', '2025-06-14 06:56:37'),
(3, 'text', '15', 'Years of Experience', NULL, 3, '2025-06-14 06:39:12', '2025-06-14 06:56:32', '2025-06-14 06:56:32'),
(4, 'text', '98%', 'Visa Approval Rate', NULL, 3, '2025-06-14 06:39:30', '2025-06-14 06:56:27', '2025-06-14 06:56:27'),
(5, 'text', '98M', 'Happy Customers', '', 1, '2025-06-14 08:01:42', '2025-06-16 00:42:16', NULL),
(6, 'text', '', '55,000+ Reviews', 'fa fa-star', 2, '2025-06-16 00:26:54', '2025-06-16 00:26:54', NULL),
(7, 'text', '15', 'Years of Experience', '', 3, '2025-06-16 00:27:28', '2025-06-16 00:27:28', NULL),
(8, 'text', '98%', 'Visa Approval Rate', '', 4, '2025-06-16 00:27:54', '2025-06-16 00:27:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `choose_us_features`
--

CREATE TABLE `choose_us_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon_path` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `choose_us_sections`
--

CREATE TABLE `choose_us_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `main_heading` varchar(255) DEFAULT NULL,
  `sub_heading` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, 1, 1, 4, '2025-06-11 02:32:37', '2025-06-11 02:32:37', '2025-06-11 04:36:23'),
(3, 1, 1, 2, '2025-06-11 02:32:37', '2025-06-11 02:32:37', '2025-06-11 04:36:23'),
(4, 2, 2, 1, '2025-06-11 02:33:01', '2025-06-11 02:33:01', NULL),
(5, 2, 2, 4, '2025-06-11 02:33:01', '2025-06-11 02:33:01', NULL),
(6, 2, 2, 2, '2025-06-11 02:33:01', '2025-06-11 02:33:01', NULL),
(7, 3, 2, 1, '2025-06-11 02:33:27', '2025-06-11 02:33:27', NULL),
(8, 3, 2, 4, '2025-06-11 02:33:27', '2025-06-11 02:33:27', NULL),
(9, 3, 2, 2, '2025-06-11 02:33:27', '2025-06-11 02:33:27', NULL),
(10, 4, 1, 1, '2025-06-11 02:33:53', '2025-06-11 02:33:53', NULL),
(11, 4, 1, 4, '2025-06-11 02:33:53', '2025-06-11 02:33:53', NULL),
(12, 4, 1, 2, '2025-06-11 02:33:53', '2025-06-11 02:33:53', NULL),
(13, 5, 1, 1, '2025-06-11 02:34:15', '2025-06-11 02:34:15', NULL),
(14, 5, 1, 4, '2025-06-11 02:34:15', '2025-06-11 02:34:15', NULL),
(15, 5, 1, 2, '2025-06-11 02:34:15', '2025-06-11 02:34:15', NULL),
(16, 6, 2, 1, '2025-06-11 02:34:41', '2025-06-11 02:34:41', NULL),
(17, 6, 2, 4, '2025-06-11 02:34:41', '2025-06-11 02:34:41', NULL),
(18, 6, 2, 2, '2025-06-11 02:34:41', '2025-06-11 02:34:41', NULL),
(19, 7, 1, 1, '2025-06-11 02:35:09', '2025-06-11 02:35:09', NULL),
(20, 7, 1, 4, '2025-06-11 02:35:09', '2025-06-11 02:35:09', NULL),
(21, 7, 1, 2, '2025-06-11 02:35:09', '2025-06-11 02:35:09', NULL),
(22, 8, 1, 1, '2025-06-11 02:35:34', '2025-06-11 02:35:34', NULL),
(23, 8, 1, 4, '2025-06-11 02:35:35', '2025-06-11 02:35:35', NULL),
(24, 8, 1, 2, '2025-06-11 02:35:35', '2025-06-11 02:35:35', NULL),
(25, 9, 1, 1, '2025-06-11 02:35:55', '2025-06-11 02:35:55', NULL),
(26, 9, 1, 4, '2025-06-11 02:35:55', '2025-06-11 02:35:55', NULL),
(27, 9, 1, 2, '2025-06-11 02:35:56', '2025-06-11 02:35:56', NULL),
(28, 11, 1, 1, '2025-06-11 02:36:24', '2025-06-11 02:36:24', NULL),
(29, 11, 1, 4, '2025-06-11 02:36:24', '2025-06-11 02:36:24', NULL),
(30, 11, 1, 2, '2025-06-11 02:36:24', '2025-06-11 02:36:24', NULL),
(31, 12, 1, 1, '2025-06-11 02:36:48', '2025-06-11 02:36:48', NULL),
(32, 12, 1, 4, '2025-06-11 02:36:48', '2025-06-11 02:36:48', NULL),
(33, 12, 1, 2, '2025-06-11 02:36:48', '2025-06-11 02:36:48', NULL),
(34, 13, 1, 1, '2025-06-11 02:37:13', '2025-06-11 02:37:13', NULL),
(35, 13, 1, 4, '2025-06-11 02:37:13', '2025-06-11 02:37:13', NULL),
(36, 13, 1, 2, '2025-06-11 02:37:13', '2025-06-11 02:37:13', NULL),
(37, 14, 2, 1, '2025-06-11 02:37:37', '2025-06-11 02:37:37', NULL),
(38, 14, 2, 4, '2025-06-11 02:37:37', '2025-06-11 02:37:37', NULL),
(39, 14, 2, 2, '2025-06-11 02:37:38', '2025-06-11 02:37:38', NULL),
(40, 15, 2, 1, '2025-06-11 02:38:06', '2025-06-11 02:38:06', NULL),
(41, 15, 2, 4, '2025-06-11 02:38:06', '2025-06-11 02:38:06', NULL),
(42, 15, 2, 2, '2025-06-11 02:38:06', '2025-06-11 02:38:06', NULL),
(43, 15, 1, 1, '2025-06-11 02:38:06', '2025-06-11 02:38:06', NULL),
(44, 15, 1, 4, '2025-06-11 02:38:06', '2025-06-11 02:38:06', NULL),
(45, 15, 1, 2, '2025-06-11 02:38:06', '2025-06-11 02:38:06', NULL),
(46, 16, 1, 1, '2025-06-11 02:38:31', '2025-06-11 02:38:31', NULL),
(47, 16, 1, 4, '2025-06-11 02:38:31', '2025-06-11 02:38:31', NULL),
(48, 16, 1, 2, '2025-06-11 02:38:31', '2025-06-11 02:38:31', NULL),
(49, 17, 1, 1, '2025-06-11 02:38:57', '2025-06-11 02:38:57', NULL),
(50, 17, 1, 4, '2025-06-11 02:38:57', '2025-06-11 02:38:57', NULL),
(51, 17, 1, 2, '2025-06-11 02:38:57', '2025-06-11 02:38:57', NULL),
(52, 18, 1, 1, '2025-06-11 02:39:26', '2025-06-11 02:39:26', NULL),
(53, 18, 1, 4, '2025-06-11 02:39:26', '2025-06-11 02:39:26', NULL),
(54, 18, 1, 2, '2025-06-11 02:39:26', '2025-06-11 02:39:26', NULL),
(55, 19, 2, 1, '2025-06-11 02:39:53', '2025-06-11 02:39:53', NULL),
(56, 19, 2, 4, '2025-06-11 02:39:53', '2025-06-11 02:39:53', NULL),
(57, 19, 2, 2, '2025-06-11 02:39:54', '2025-06-11 02:39:54', NULL),
(58, 20, 2, 1, '2025-06-11 02:40:19', '2025-06-11 02:40:19', NULL),
(59, 20, 2, 4, '2025-06-11 02:40:19', '2025-06-11 02:40:19', NULL),
(60, 20, 2, 2, '2025-06-11 02:40:19', '2025-06-11 02:40:19', NULL),
(61, 20, 1, 1, '2025-06-11 02:40:19', '2025-06-11 02:40:19', NULL),
(62, 20, 1, 4, '2025-06-11 02:40:19', '2025-06-11 02:40:19', NULL),
(63, 20, 1, 2, '2025-06-11 02:40:19', '2025-06-11 02:40:19', NULL),
(64, 21, 2, 1, '2025-06-11 02:40:46', '2025-06-11 02:40:46', NULL),
(65, 21, 2, 4, '2025-06-11 02:40:46', '2025-06-11 02:40:46', NULL),
(66, 21, 2, 2, '2025-06-11 02:40:46', '2025-06-11 02:40:46', NULL),
(67, 21, 1, 1, '2025-06-11 02:40:46', '2025-06-11 02:40:46', NULL),
(68, 21, 1, 4, '2025-06-11 02:40:46', '2025-06-11 02:40:46', NULL),
(69, 21, 1, 2, '2025-06-11 02:40:46', '2025-06-11 02:40:46', NULL),
(70, 22, 1, 1, '2025-06-11 02:41:39', '2025-06-11 02:41:39', NULL),
(71, 22, 1, 4, '2025-06-11 02:41:39', '2025-06-11 02:41:39', NULL),
(72, 22, 1, 2, '2025-06-11 02:41:39', '2025-06-11 02:41:39', NULL),
(73, 23, 2, 1, '2025-06-11 02:42:06', '2025-06-11 02:42:06', NULL),
(74, 23, 2, 4, '2025-06-11 02:42:06', '2025-06-11 02:42:06', NULL),
(75, 23, 2, 2, '2025-06-11 02:42:06', '2025-06-11 02:42:06', NULL),
(76, 24, 1, 1, '2025-06-11 02:42:37', '2025-06-11 02:42:37', NULL),
(77, 24, 1, 4, '2025-06-11 02:42:37', '2025-06-11 02:42:37', NULL),
(78, 24, 1, 2, '2025-06-11 02:42:37', '2025-06-11 02:42:37', NULL),
(79, 25, 2, 1, '2025-06-11 02:43:42', '2025-06-11 02:43:42', NULL),
(80, 25, 2, 4, '2025-06-11 02:43:42', '2025-06-11 02:43:42', NULL),
(81, 25, 2, 2, '2025-06-11 02:43:42', '2025-06-11 02:43:42', NULL),
(82, 26, 1, 1, '2025-06-11 02:44:06', '2025-06-11 02:44:06', NULL),
(83, 26, 1, 4, '2025-06-11 02:44:06', '2025-06-11 02:44:06', NULL),
(84, 26, 1, 2, '2025-06-11 02:44:06', '2025-06-11 02:44:06', NULL),
(85, 27, 1, 1, '2025-06-11 02:44:31', '2025-06-11 02:44:31', NULL),
(86, 27, 1, 4, '2025-06-11 02:44:31', '2025-06-11 02:44:31', NULL),
(87, 27, 1, 2, '2025-06-11 02:44:31', '2025-06-11 02:44:31', NULL),
(88, 28, 1, 1, '2025-06-11 02:44:58', '2025-06-11 02:44:58', NULL),
(89, 28, 1, 4, '2025-06-11 02:44:58', '2025-06-11 02:44:58', NULL),
(90, 28, 1, 2, '2025-06-11 02:44:58', '2025-06-11 02:44:58', NULL),
(91, 29, 1, 1, '2025-06-11 02:45:23', '2025-06-11 02:45:23', NULL),
(92, 29, 1, 4, '2025-06-11 02:45:23', '2025-06-11 02:45:23', NULL),
(93, 29, 1, 2, '2025-06-11 02:45:23', '2025-06-11 02:45:23', NULL),
(94, 30, 2, 1, '2025-06-11 02:45:50', '2025-06-11 02:45:50', NULL),
(95, 30, 2, 4, '2025-06-11 02:45:50', '2025-06-11 02:45:50', NULL),
(96, 30, 2, 2, '2025-06-11 02:45:50', '2025-06-11 02:45:50', NULL),
(97, 31, 2, 1, '2025-06-11 02:46:17', '2025-06-11 02:46:17', NULL),
(98, 31, 2, 4, '2025-06-11 02:46:17', '2025-06-11 02:46:17', NULL),
(99, 31, 2, 2, '2025-06-11 02:46:17', '2025-06-11 02:46:17', NULL),
(100, 31, 1, 1, '2025-06-11 02:46:17', '2025-06-11 02:46:17', NULL),
(101, 31, 1, 4, '2025-06-11 02:46:17', '2025-06-11 02:46:17', NULL),
(102, 31, 1, 2, '2025-06-11 02:46:17', '2025-06-11 02:46:17', NULL),
(103, 32, 2, 1, '2025-06-11 02:46:41', '2025-06-11 02:46:41', NULL),
(104, 32, 2, 4, '2025-06-11 02:46:41', '2025-06-11 02:46:41', NULL),
(105, 32, 2, 2, '2025-06-11 02:46:41', '2025-06-11 02:46:41', NULL),
(106, 33, 1, 1, '2025-06-11 02:47:07', '2025-06-11 02:47:07', NULL),
(107, 33, 1, 4, '2025-06-11 02:47:07', '2025-06-11 02:47:07', NULL),
(108, 33, 1, 2, '2025-06-11 02:47:07', '2025-06-11 02:47:07', NULL),
(109, 34, 1, 1, '2025-06-11 02:47:29', '2025-06-11 02:47:29', NULL),
(110, 34, 1, 4, '2025-06-11 02:47:29', '2025-06-11 02:47:29', NULL),
(111, 34, 1, 2, '2025-06-11 02:47:29', '2025-06-11 02:47:29', NULL),
(112, 35, 2, 1, '2025-06-11 02:47:53', '2025-06-11 02:47:53', NULL),
(113, 35, 2, 4, '2025-06-11 02:47:53', '2025-06-11 02:47:53', NULL),
(114, 35, 2, 2, '2025-06-11 02:47:53', '2025-06-11 02:47:53', NULL),
(115, 1, 2, 1, '2025-06-11 04:36:23', '2025-06-11 04:36:23', NULL),
(116, 1, 2, 2, '2025-06-11 04:36:23', '2025-06-11 04:36:23', NULL),
(117, 1, 2, 4, '2025-06-11 04:36:23', '2025-06-11 04:36:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_country` varchar(255) NOT NULL DEFAULT 'Pakistan',
  `to_country` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `visa_type_id` bigint(20) UNSIGNED NOT NULL,
  `heading` varchar(255) NOT NULL,
  `rating` double NOT NULL DEFAULT 0,
  `total_reviews` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`id`, `from_country`, `to_country`, `category_id`, `visa_type_id`, `heading`, `rating`, `total_reviews`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Pakistan', 'Australia', 1, 2, 'Australia Business E-Visa', 4.5, 5000, '2025-06-12 00:04:06', '2025-06-12 00:04:06', NULL),
(2, 'Pakistan', 'Azerbaijan', 1, 2, 'Azerbaijan Business E-Visa', 4.5, 5000, '2025-06-12 04:34:46', '2025-06-12 04:34:46', NULL),
(3, 'Pakistan', 'Bahrain', 1, 2, 'Bahrain Business E-Visa', 4.9, 5000, '2025-06-12 04:36:13', '2025-06-12 04:36:13', NULL),
(4, 'Pakistan', 'Belgium', 1, 1, 'Belgium Business Sticker Visa', 4.8, 5000, '2025-06-12 04:37:53', '2025-06-12 04:49:11', NULL),
(5, 'Pakistan', 'Brazil', 1, 1, 'Brazil Business Sticker Visa', 4.5, 5000, '2025-06-12 04:39:53', '2025-06-12 04:48:50', NULL),
(6, 'Pakistan', 'Cambodia', 1, 2, 'Cambodia Business E-Visa', 4.4, 5000, '2025-06-12 04:40:35', '2025-06-12 04:40:35', NULL),
(7, 'Pakistan', 'Canada', 1, 1, 'Canada Business Sticker Visa', 4.5, 5000, '2025-06-12 04:48:30', '2025-06-12 04:48:30', NULL),
(8, 'Pakistan', 'China', 1, 1, 'China Business Sticker Visa', 4.7, 5000, '2025-06-12 04:49:56', '2025-06-12 04:49:56', NULL),
(9, 'Pakistan', 'Denmark', 1, 1, 'Denmark Business Sticker Visa', 4.6, 5000, '2025-06-12 04:50:55', '2025-06-12 04:50:55', NULL),
(10, 'Pakistan', 'Finland', 1, 1, 'Finland Business Sticker Visa', 4.7, 5000, '2025-06-12 04:54:23', '2025-06-12 04:54:23', NULL),
(11, 'Pakistan', 'France', 1, 1, 'France Business Sticker Visa', 4.5, 5000, '2025-06-12 04:55:12', '2025-06-12 04:55:12', NULL),
(12, 'Pakistan', 'Germany', 1, 1, 'Germany Business Sticker Visa', 4.3, 5000, '2025-06-12 04:56:01', '2025-06-12 04:56:01', NULL),
(13, 'Pakistan', 'Greece', 1, 1, 'Greece Business Sticker Visa', 4.6, 5000, '2025-06-12 04:56:41', '2025-06-12 04:56:41', NULL),
(14, 'Pakistan', 'Hong Kong', 1, 2, 'Hong Kong Business E-Visa', 4.8, 5000, '2025-06-12 04:57:50', '2025-06-12 04:57:50', NULL),
(15, 'Pakistan', 'Indonesia', 1, 2, 'Indonesia Business E-Visa', 4.7, 5000, '2025-06-12 04:59:01', '2025-06-12 04:59:01', NULL),
(16, 'Pakistan', 'Indonesia', 1, 1, 'Indonesia Business Sticker Visa', 4.8, 5000, '2025-06-12 04:59:47', '2025-06-12 04:59:47', NULL),
(17, 'Pakistan', 'Ireland', 1, 1, 'Ireland Business Sticker Visa', 4.7, 5000, '2025-06-12 05:00:41', '2025-06-12 05:00:41', NULL),
(18, 'Pakistan', 'Italy', 1, 1, 'Italy Business Sticker Visa', 4.3, 5000, '2025-06-12 05:01:40', '2025-06-12 05:01:40', NULL),
(19, 'Pakistan', 'Japan', 1, 1, 'Japan Business Sticker Visa', 4.2, 5000, '2025-06-12 05:02:28', '2025-06-12 05:02:28', NULL),
(20, 'Pakistan', 'Korea', 1, 2, 'Korea Business E-Visa', 4.8, 5000, '2025-06-12 05:03:49', '2025-06-12 05:03:49', NULL),
(21, 'Pakistan', 'Malaysia', 1, 2, 'Malaysia Business E-Visa', 4.6, 5000, '2025-06-12 05:05:22', '2025-06-12 05:05:22', NULL),
(22, 'Pakistan', 'Malaysia', 1, 1, 'Malaysia Business Sticker Visa', 4.7, 5000, '2025-06-12 05:06:17', '2025-06-12 05:06:17', NULL),
(23, 'Pakistan', 'Morocco', 1, 2, 'Morocco Business E-Visa', 4.8, 5000, '2025-06-12 05:07:17', '2025-06-12 05:07:17', NULL),
(24, 'Pakistan', 'Morocco', 1, 1, 'Morocco Business Sticker Visa', 4.8, 5000, '2025-06-12 05:08:05', '2025-06-12 05:08:05', NULL),
(25, 'Pakistan', 'Netherlands', 1, 1, 'Netherlands Business Sticker Visa', 4.8, 5000, '2025-06-12 05:09:30', '2025-06-12 05:09:30', NULL),
(26, 'Pakistan', 'New Zealand', 1, 2, 'New Zealand Business E-Visa', 4.7, 5000, '2025-06-12 05:11:14', '2025-06-12 05:11:14', NULL),
(27, 'Pakistan', 'Norway', 1, 1, 'Norway Business Sticker Visa', 4.7, 5000, '2025-06-12 05:12:01', '2025-06-12 05:12:01', NULL),
(28, 'Pakistan', 'Saudi Arabia', 1, 2, 'Saudi Arabia Business E-Visa', 4.7, 5000, '2025-06-12 05:12:58', '2025-06-12 05:12:58', NULL),
(29, 'Pakistan', 'South Africa', 1, 1, 'South Africa Business Sticker Visa', 4.7, 5000, '2025-06-12 05:14:10', '2025-06-12 05:14:10', NULL),
(30, 'Pakistan', 'Spain', 1, 1, 'Spain Business Sticker Visa', 4.7, 5000, '2025-06-12 05:15:15', '2025-06-12 05:15:15', NULL),
(31, 'Pakistan', 'Sweden', 1, 1, 'Sweden Business Sticker Visa', 4.7, 5000, '2025-06-12 05:16:20', '2025-06-12 05:16:20', NULL),
(32, 'Pakistan', 'Switzerland', 1, 1, 'Switzerland Business Sticker Visa', 4.5, 5000, '2025-06-12 05:18:08', '2025-06-12 05:18:08', NULL),
(33, 'Pakistan', 'Thailand', 1, 2, 'Thailand Business E-Visa', 4.6, 5000, '2025-06-12 05:19:08', '2025-06-12 05:19:08', NULL),
(34, 'Pakistan', 'Turkey', 1, 2, 'Turkey Business E-Visa', 4.7, 5000, '2025-06-12 05:20:27', '2025-06-12 05:20:27', NULL),
(35, 'Pakistan', 'Turkey', 1, 1, 'Turkey Business Sticker Visa', 4.8, 5000, '2025-06-12 05:21:03', '2025-06-12 05:21:03', NULL),
(36, 'Pakistan', 'United Arab Emirates', 1, 2, 'United Arab Emirates', 4.8, 5000, '2025-06-12 05:22:00', '2025-06-12 05:22:00', NULL),
(37, 'Pakistan', 'United Kingdom', 1, 1, 'United Kingdom', 4.6, 5000, '2025-06-12 05:23:04', '2025-06-12 05:23:04', NULL),
(38, 'Pakistan', 'United States of America', 1, 1, 'United States of America Business Sticker Visa', 4.8, 5000, '2025-06-12 05:24:15', '2025-06-12 05:24:15', NULL),
(39, 'Pakistan', 'Vietnam', 1, 2, 'Vietnam Business E-Visa', 4.9, 5000, '2025-06-12 05:25:02', '2025-06-12 05:25:02', NULL),
(40, 'Pakistan', 'Australia', 4, 2, 'Australia Family/Friend E-Visa', 4.8, 5000, '2025-06-12 05:42:11', '2025-06-12 05:42:11', NULL),
(41, 'Pakistan', 'Azerbaijan', 4, 2, 'Azerbaijan Family/Friend E-Visa', 4.6, 5000, '2025-06-12 05:42:57', '2025-06-12 05:42:57', NULL),
(42, 'Pakistan', 'Bahrain', 4, 2, 'Bahrain Family/Friend E-Visa', 4.8, 5000, '2025-06-12 05:45:00', '2025-06-12 05:45:00', NULL),
(43, 'Pakistan', 'Belgium', 4, 1, 'Belgium Family/Friend Sticker Visa', 4.7, 5000, '2025-06-12 05:46:45', '2025-06-12 05:46:45', NULL),
(44, 'Pakistan', 'Brazil', 4, 1, 'Brazil Family/Friend Sticker Visa', 4.7, 5000, '2025-06-12 05:48:38', '2025-06-12 05:48:38', NULL),
(45, 'Pakistan', 'Cambodia', 4, 2, 'Cambodia Family/Friend E-Visa', 4.7, 5000, '2025-06-12 05:53:39', '2025-06-12 05:53:39', NULL),
(46, 'Pakistan', 'Canada', 4, 1, 'Canada Family/Friend Sticker Visa', 4.7, 5000, '2025-06-12 05:55:46', '2025-06-12 05:55:46', NULL),
(47, 'Pakistan', 'China', 4, 1, 'China Family/Friend Sticker Visa', 4.8, 5000, '2025-06-12 05:59:48', '2025-06-12 05:59:48', NULL),
(48, 'Pakistan', 'Denmark', 4, 1, 'Denmark Family/Friend Sticker Visa', 4.8, 5000, '2025-06-12 05:59:51', '2025-06-12 06:00:46', NULL),
(49, 'Pakistan', 'Finland', 4, 1, 'Finland Family/Friend Sticker Visa', 4.6, 5000, '2025-06-12 06:02:12', '2025-06-12 06:02:12', NULL),
(50, 'Pakistan', 'France', 4, 1, 'France Family/Friend Sticker Visa', 4.7, 5000, '2025-06-12 06:03:36', '2025-06-12 06:03:36', NULL),
(51, 'Pakistan', 'Germany', 4, 1, 'Germany Family/Friend Sticker Visa', 4.5, 5000, '2025-06-12 06:05:02', '2025-06-12 06:05:02', NULL),
(52, 'Pakistan', 'Greece', 4, 1, 'Greece Family/Friend Sticker Visa', 4.7, 5000, '2025-06-12 06:06:39', '2025-06-12 06:06:39', NULL),
(53, 'Pakistan', 'Hong Kong', 4, 2, 'Hong Kong Family/Friend E-Visa', 4.6, 5000, '2025-06-12 06:07:48', '2025-06-12 06:07:48', NULL),
(54, 'Pakistan', 'Indonesia', 4, 2, 'Indonesia Family/Friend E-Visa', 4.7, 5000, '2025-06-12 06:09:46', '2025-06-12 06:09:46', NULL),
(55, 'Pakistan', 'Indonesia', 4, 1, 'Indonesia Family/Friend Sticker Visa', 4.6, 5000, '2025-06-12 06:16:30', '2025-06-12 06:16:30', NULL),
(56, 'Pakistan', 'Ireland', 4, 1, 'Ireland Family/Friend Sticker Visa', 4.7, 5000, '2025-06-12 06:18:34', '2025-06-12 06:18:34', NULL),
(57, 'Pakistan', 'Italy', 4, 1, 'Italy Family/Friend Sticker Visa', 4.6, 5000, '2025-06-12 06:26:18', '2025-06-12 06:26:18', NULL),
(58, 'Pakistan', 'Japan', 4, 1, 'Japan Family/Friend Sticker Visa', 4.7, 5000, '2025-06-12 06:32:00', '2025-06-12 06:32:00', NULL),
(59, 'Pakistan', 'Korea', 4, 2, 'Korea Family/Friend E-Visa', 4.7, 5000, '2025-06-12 06:37:14', '2025-06-12 06:37:14', NULL),
(60, 'Pakistan', 'Malaysia', 4, 2, 'Malaysia Family/Friend E-Visa', 4.7, 5000, '2025-06-12 06:38:13', '2025-06-12 06:38:13', NULL),
(61, 'Pakistan', 'Malaysia', 4, 1, 'Malaysia Family/Friend Sticker Visa', 4.7, 5000, '2025-06-12 06:40:47', '2025-06-12 06:40:47', NULL),
(62, 'Pakistan', 'Morocco', 4, 2, 'Morocco Family/Friend E-Visa', 4.8, 5000, '2025-06-12 06:41:47', '2025-06-12 06:41:47', NULL),
(63, 'Pakistan', 'Morocco', 4, 1, 'Morocco Family/Friend Sticker Visa', 4.8, 5000, '2025-06-12 06:42:23', '2025-06-12 06:42:23', NULL),
(64, 'Pakistan', 'Netherlands', 4, 1, 'Netherlands Family/Friend Sticker Visa', 4.7, 5000, '2025-06-12 06:43:20', '2025-06-12 06:43:20', NULL),
(65, 'Pakistan', 'New Zealand', 4, 2, 'New Zealand Family/Friend E-Visa', 4.7, 5000, '2025-06-12 06:44:24', '2025-06-12 06:44:24', NULL),
(66, 'Pakistan', 'Norway', 4, 1, 'Norway Family/Friend Sticker Visa', 4.6, 5000, '2025-06-12 06:45:08', '2025-06-12 06:45:08', NULL),
(67, 'Pakistan', 'Saudi Arabia', 4, 1, 'Saudi Arabia Family/Friend Sticker Visa', 4.8, 5000, '2025-06-12 06:46:54', '2025-06-12 06:46:54', NULL),
(68, 'Pakistan', 'South Africa', 4, 1, 'South Africa Family/Friend Sticker Visa', 4.7, 5000, '2025-06-12 06:49:55', '2025-06-12 06:49:55', NULL),
(69, 'Pakistan', 'Spain', 4, 1, 'Spain Family/Friend Sticker Visa', 4.5, 5000, '2025-06-12 06:50:35', '2025-06-12 06:50:35', NULL),
(70, 'Pakistan', 'Sweden', 4, 1, 'Sweden Family/Friend Sticker Visa', 4.2, 5000, '2025-06-12 06:51:20', '2025-06-12 06:51:20', NULL),
(71, 'Pakistan', 'Switzerland', 4, 1, 'Switzerland Family/Friend Sticker Visa', 4.7, 5000, '2025-06-14 01:13:18', '2025-06-14 01:14:13', NULL),
(72, 'Pakistan', 'Thailand', 4, 2, 'Thailand Family/Friend E-Visa', 4.8, 5000, '2025-06-14 01:14:54', '2025-06-14 01:14:54', NULL),
(73, 'Pakistan', 'Turkey', 4, 2, 'Turkey Family/Friend E-Visa', 4.8, 5000, '2025-06-14 01:17:39', '2025-06-14 01:17:39', NULL),
(74, 'Pakistan', 'Turkey', 4, 1, 'Turkey Family/Friend Sticker Visa', 4.8, 5000, '2025-06-14 01:18:20', '2025-06-14 01:18:35', NULL),
(75, 'Pakistan', 'United Arab Emirates', 4, 2, 'United Arab Emirates Family/Friend E-Visa', 4.9, 5000, '2025-06-14 01:19:28', '2025-06-14 01:19:28', NULL),
(76, 'Pakistan', 'United Kingdom', 4, 1, 'United Kingdom Family/Friend Sticker Visa', 4.8, 5000, '2025-06-14 01:20:11', '2025-06-14 01:20:11', NULL),
(77, 'Pakistan', 'United States of America', 4, 1, 'United States of America Family/Friend Sticker Visa', 4.6, 5000, '2025-06-14 01:21:11', '2025-06-14 01:21:29', NULL),
(78, 'Pakistan', 'Vietnam', 4, 2, 'Vietnam Family/Friend E-Visa', 4.7, 5000, '2025-06-14 01:22:01', '2025-06-14 01:22:01', NULL),
(79, 'Pakistan', 'Australia', 2, 2, 'Australia Tourist E-Visa', 4.6, 5000, '2025-06-14 01:23:59', '2025-06-14 01:23:59', NULL),
(80, 'Pakistan', 'Azerbaijan', 2, 2, 'Azerbaijan Tourist E-Visa', 4.7, 5000, '2025-06-14 01:24:56', '2025-06-14 01:24:56', NULL),
(81, 'Pakistan', 'Bahrain', 2, 2, 'Bahrain Tourist E-Visa', 4.5, 5000, '2025-06-14 01:26:13', '2025-06-14 01:26:13', NULL),
(82, 'Pakistan', 'Belgium', 2, 1, 'Belgium Tourist Sticker Visa', 4.6, 5000, '2025-06-14 01:26:47', '2025-06-14 01:27:01', NULL),
(83, 'Pakistan', 'Brazil', 2, 1, 'Brazil Tourist Sticker Visa', 4.6, 5000, '2025-06-14 01:27:41', '2025-06-14 01:27:41', NULL),
(84, 'Pakistan', 'Cambodia', 2, 2, 'Cambodia Tourist E-Visa', 4.6, 5000, '2025-06-14 01:28:23', '2025-06-14 01:28:23', NULL),
(85, 'Pakistan', 'Canada', 2, 1, 'Canad Tourist Sticker Visa', 4.8, 5000, '2025-06-14 01:29:41', '2025-06-14 01:29:41', NULL),
(86, 'Pakistan', 'China', 2, 1, 'China Tourist Sticker Visa', 4.7, 5000, '2025-06-14 01:30:25', '2025-06-14 01:30:25', NULL),
(87, 'Pakistan', 'Denmark', 2, 1, 'Denmark Tourist Sticker Visa', 4.8, 5000, '2025-06-14 01:31:15', '2025-06-14 01:31:15', NULL),
(88, 'Pakistan', 'Finland', 2, 1, 'Finland Tourist Sticker Visa', 4.7, 5000, '2025-06-14 01:31:57', '2025-06-14 01:31:57', NULL),
(89, 'Pakistan', 'France', 2, 1, 'France Tourist Sticker Visa', 4.6, 5000, '2025-06-14 01:32:51', '2025-06-14 01:33:05', NULL),
(90, 'Pakistan', 'Germany', 2, 1, 'Germany Tourist Sticker Visa', 4.7, 5000, '2025-06-14 01:33:41', '2025-06-14 01:33:41', NULL),
(91, 'Pakistan', 'Greece', 2, 1, 'Greece Tourist Sticker Visa', 4.6, 5000, '2025-06-14 01:34:17', '2025-06-14 01:34:17', NULL),
(92, 'Pakistan', 'Hong Kong', 2, 2, 'Hong Kong Tourist E-Visa', 4.6, 5000, '2025-06-14 01:34:57', '2025-06-14 01:34:57', NULL),
(93, 'Pakistan', 'Indonesia', 2, 2, 'Indonesia Tourist E-Visa', 4.7, 5000, '2025-06-14 01:35:35', '2025-06-14 01:35:49', NULL),
(94, 'Pakistan', 'Indonesia', 2, 1, 'Indonesia Tourist Sticker Visa', 4.7, 5000, '2025-06-14 01:36:34', '2025-06-14 01:36:58', NULL),
(95, 'Pakistan', 'Ireland', 2, 1, 'Ireland Tourist Sticker Visa', 4.7, 5000, '2025-06-14 01:37:37', '2025-06-14 01:37:37', NULL),
(96, 'Pakistan', 'Italy', 2, 1, 'Italy Tourist Sticker Visa', 4.6, 5000, '2025-06-14 01:38:16', '2025-06-14 01:38:16', NULL),
(97, 'Pakistan', 'Japan', 2, 1, 'Japan Tourist Sticker Visa', 4.9, 5000, '2025-06-14 01:39:01', '2025-06-14 01:39:01', NULL),
(98, 'Pakistan', 'Korea', 2, 2, 'Korea Tourist E-Visa', 4.4, 5000, '2025-06-14 01:39:44', '2025-06-14 01:39:44', NULL),
(99, 'Pakistan', 'Malaysia', 2, 2, 'Malaysia Tourist E-Visa', 4.7, 5000, '2025-06-14 01:40:19', '2025-06-14 01:40:19', NULL),
(100, 'Pakistan', 'Malaysia', 2, 1, 'Malaysia Tourist Sticker Visa', 4.6, 5000, '2025-06-14 01:40:51', '2025-06-14 01:40:51', NULL),
(101, 'Pakistan', 'Morocco', 2, 2, 'Morocco Tourist E-Visa', 4.7, 5000, '2025-06-14 01:41:23', '2025-06-14 01:41:23', NULL),
(102, 'Pakistan', 'Morocco', 2, 1, 'Morocco Tourist Sticker Visa', 4.8, 5000, '2025-06-14 01:41:53', '2025-06-14 01:41:53', NULL),
(103, 'Pakistan', 'Netherlands', 2, 1, 'Netherlands Tourist Sticker Visa', 4.7, 5000, '2025-06-14 01:43:33', '2025-06-14 01:43:33', NULL),
(104, 'Pakistan', 'New Zealand', 2, 2, 'New Zealand Tourist E-Visa', 4.8, 5000, '2025-06-14 01:44:20', '2025-06-14 01:44:20', NULL),
(105, 'Pakistan', 'Norway', 2, 1, 'Norway Tourist Sticker Visa', 4.6, 5000, '2025-06-14 01:44:58', '2025-06-14 01:44:58', NULL),
(106, 'Pakistan', 'Saudi Arabia', 2, 2, 'Saudi Arabia Tourist E-Visa', 4.6, 5000, '2025-06-14 01:45:42', '2025-06-14 01:45:42', NULL),
(107, 'Pakistan', 'South Africa', 2, 1, 'South Africa Tourist Sticker Visa', 4.7, 5000, '2025-06-14 01:46:29', '2025-06-14 01:46:29', NULL),
(108, 'Pakistan', 'Spain', 2, 1, 'Spain Tourist Sticker Visa', 4.6, 5000, '2025-06-14 01:47:16', '2025-06-14 01:47:16', NULL),
(109, 'Pakistan', 'Sweden', 2, 1, 'Sweden Tourist Sticker Visa', 4.2, 5000, '2025-06-14 01:48:30', '2025-06-14 01:48:30', NULL),
(110, 'Pakistan', 'Switzerland', 2, 1, 'Switzerland Tourist Sticker Visa', 4.4, 5000, '2025-06-14 01:49:32', '2025-06-14 01:49:32', NULL),
(111, 'Pakistan', 'Thailand', 2, 2, 'Thailand Tourist E-Visa', 4.7, 5000, '2025-06-14 01:50:09', '2025-06-14 01:50:09', NULL),
(112, 'Pakistan', 'Turkey', 2, 2, 'Turkey Tourist E-Visa', 4.4, 5000, '2025-06-14 01:50:37', '2025-06-14 01:50:37', NULL),
(113, 'Pakistan', 'Turkey', 2, 1, 'Turkey Tourist Sticker Visa', 4.6, 5000, '2025-06-14 01:51:11', '2025-06-14 01:51:11', NULL),
(114, 'Pakistan', 'United Arab Emirates', 2, 2, 'United Arab Emirates Tourist E-Visa', 4.9, 5000, '2025-06-14 01:51:50', '2025-06-14 01:51:50', NULL),
(115, 'Pakistan', 'United Kingdom', 2, 1, 'United Kingdom Tourist Sticker Visa', 4.8, 5000, '2025-06-14 01:52:23', '2025-06-14 01:52:23', NULL),
(116, 'Pakistan', 'United States of America', 2, 1, 'United States of America Tourist Sticker Visa', 4.8, 5000, '2025-06-14 01:53:05', '2025-06-14 01:53:05', NULL),
(117, 'Pakistan', 'Vietnam', 2, 2, 'Vietnam Tourist E-Visa', 4.2, 5000, '2025-06-14 01:53:43', '2025-06-14 01:53:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `destination_details`
--

CREATE TABLE `destination_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `destination_id` bigint(20) UNSIGNED NOT NULL,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ;

--
-- Dumping data for table `destination_details`
--

INSERT INTO `destination_details` (`id`, `destination_id`, `images`, `overview`, `why_visit_old`, `why_visit`, `what_we_offer_old`, `what_we_offer`, `required_documents`, `packages`, `reviews`, `snapshot`, `policies`, `created_at`, `updated_at`, `deleted_at`, `why_visit_intro`) VALUES
(1, 1, '\"[\\\"destinations\\\\\\/1749891713_684d3a8136763.png\\\",\\\"destinations\\\\\\/1749891713_684d3a8138592.png\\\",\\\"destinations\\\\\\/1749891713_684d3a813bd5a.png\\\",\\\"destinations\\\\\\/1749891713_684d3a813ee36.png\\\",\\\"destinations\\\\\\/1749891713_684d3a8148e04.png\\\"]\"', NULL, NULL, '{\"heading\":null,\"intro\":null,\"points\":[]}', NULL, '[]', '[]', '[]', '[]', '{\"5\":\"0\",\"4\":\"0\",\"3\":\"0\",\"2\":\"0\",\"1\":\"0\"}', '[]', '2025-06-14 03:49:15', '2025-06-14 04:01:53', NULL, NULL);

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
(42, '2025_06_22_121810_create_activity_logs_table', 25);

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
('memona@traveldementor.com', '$2y$12$31ITpzHa5CrvN1PZNyNDB.bLeBI8VkmgDvQG.j80bzkipNwAUQVDW', '2025-06-22 00:14:02'),
('memoonaworkmail@gmail.com', '$2y$12$Yik/PYmRHZkzU4BVHL.usulMo.sj38Jw1lcK73vC/lGk/oBxC6bSG', '2025-06-22 17:31:59');

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
('2L3HPjCBDa77SfwafEA9lZVQW3anOT6ucuZVpawL', NULL, '139.135.54.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidmdSeUhnc2tjR1NjeFFvbUxaMWR4ZlVyUlkzYW80eldnMXB2WjdmNSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0ODoiaHR0cHM6Ly90cmF2ZWxkZW1lbnRvci4yMndlYi5vcmcvYWRtaW4vZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1750848735),
('74uj9nBCnWm1Etw7KIp95vlkjg9oXxYgTJTFlYtA', NULL, '139.135.54.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieHJpcVo2dHZNdXZRc0MyUjNNZVdNWU1JQndhRFBCYUlJVnhuRVRuMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly90cmF2ZWxkZW1lbnRvci4yMndlYi5vcmcvP2k9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1750831247),
('Fs6vyY0nzTtHxLzR1JW8d1SrPxz0NjVq481bLSfm', NULL, '139.135.54.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRU9DUk1xWm5pUjBzUURtdUxpZjFobWxzRmlEcTQ0eWV1NFZ2MUUzdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHBzOi8vdHJhdmVsZGVtZW50b3IuMjJ3ZWIub3JnL2Fib3V0dXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1750831397),
('kSg62wA35cH8wMOhzjVqUYH3SJFMJslAejkG0axW', NULL, '58.27.130.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUt2bmlCa2REbEZ4UTRRbzRtTWJnOGNYaUF6Q0Q4VzJaOXpjTGxQRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHBzOi8vdHJhdmVsZGVtZW50b3IuMjJ3ZWIub3JnL2FkbWluL3NpZ25pbj9pPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751348120),
('KUVyfUu5AKS3I4KQ9Hi1sLMlj7ER6PCcMy6roZbi', NULL, '139.135.54.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiM3VVVWhiSFowdHJaZ3ZXZ1ZUNDV0ZGVvSVl4VDRLSk8yN2ZVVUNvTCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo1MjoiaHR0cHM6Ly90cmF2ZWxkZW1lbnRvci4yMndlYi5vcmcvYWRtaW4vZGFzaGJvYXJkP2k9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwOiJodHRwczovL3RyYXZlbGRlbWVudG9yLjIyd2ViLm9yZy9hYm91dHVzIjt9fQ==', 1751354442),
('L8pbUoFSbtJu4MXEkapUCZ4Ln2FDxWbWHSWHZDYL', NULL, '139.135.54.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibWh0N3JqelRDZ1RYNW5YUnNpYUtWT0tGeHE5eldXZlFkMnNoa0ZzMyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0NzoiaHR0cDovL3RyYXZlbGRlbWVudG9yLjIyd2ViLm9yZy9hZG1pbi9kYXNoYm9hcmQiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0NDoiaHR0cDovL3RyYXZlbGRlbWVudG9yLjIyd2ViLm9yZy9hZG1pbi9zaWduaW4iO319', 1751089439),
('PQnIM0uep0zOajVqHLktTHwF1yABq1rKTNzznVLZ', 1, '139.135.54.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiVFJUTVFUMWtIc1NBTjBHRUtkN2pLODJ2QmdhMUhEdklLWGttMG1ucCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo1MjoiaHR0cHM6Ly90cmF2ZWxkZW1lbnRvci4yMndlYi5vcmcvYWRtaW4vZGFzaGJvYXJkP2k9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHBzOi8vdHJhdmVsZGVtZW50b3IuMjJ3ZWIub3JnL2FkbWluL2Nob29zZS11cyI7fX0=', 1750831431);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('editor','user','superadmin') NOT NULL DEFAULT 'user',
  `user_type` enum('admin','website') NOT NULL DEFAULT 'website',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `phone`, `password`, `role`, `user_type`, `email_verified_at`, `google_id`, `deleted_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Memoona', 'Bibi', 'memoona@210', 'memoonaworkmail@gmail.com', '03211058694', '$2y$12$wBfP24dwFr7eprPDFukA4e2HQaig9PoqnAp9e5K4Mnbv1txDGqL7O', 'superadmin', 'website', NULL, NULL, NULL, NULL, '2025-06-22 01:01:52', '2025-06-22 19:04:53'),
(2, 'Hajrah', 'Bibi', 'hajrah@123', 'ma45678ali@gmail.com', '03211741522', '$2y$12$HkvY9XPJC4UE3YVv8PWUIOY1vfarRi.K0ZMFwjlhtFh2OaRX58Js2', 'editor', 'website', NULL, NULL, NULL, 'iNoKJ7mMCoCP192IXCfZWz6xCCZcxl3aIPxuH0EY4Mni4PPfcHzhpbgIPI2J', '2025-06-22 01:02:34', '2025-06-22 01:53:10'),
(3, 'Abdul', 'Rehman', 'abdulrehman0103', 'abdulrehman01032005@gmail.com', '03160746048', '$2y$12$.QpRkENUGJpa7qeP4EL0Tefdj4jwoJtkPVHehpU0GQxYjORUe8VYO', 'editor', 'website', NULL, NULL, NULL, 'Ql2I3nT1TV7pdSwc5D2yK6iVvUA1VFei5xhwEbqlgaJAyaPxU6EF1WRD0EAO', '2025-06-22 15:48:53', '2025-06-23 11:46:29');

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
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_logs_user_id_foreign` (`user_id`);

--
-- Indexes for table `affiliations`
--
ALTER TABLE `affiliations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `affiliation_section_titles`
--
ALTER TABLE `affiliation_section_titles`
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
-- Indexes for table `choose_us_counters`
--
ALTER TABLE `choose_us_counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `choose_us_features`
--
ALTER TABLE `choose_us_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `choose_us_sections`
--
ALTER TABLE `choose_us_sections`
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
  ADD KEY `destinations_category_id_foreign` (`category_id`),
  ADD KEY `destinations_visa_type_id_foreign` (`visa_type_id`);

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
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `visa_types`
--
ALTER TABLE `visa_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `affiliations`
--
ALTER TABLE `affiliations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `affiliation_section_titles`
--
ALTER TABLE `affiliation_section_titles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `choose_us_counters`
--
ALTER TABLE `choose_us_counters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `choose_us_features`
--
ALTER TABLE `choose_us_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `choose_us_sections`
--
ALTER TABLE `choose_us_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `destination_details`
--
ALTER TABLE `destination_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  ADD CONSTRAINT `destinations_visa_type_id_foreign` FOREIGN KEY (`visa_type_id`) REFERENCES `visa_types` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
