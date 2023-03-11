-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2023 at 06:42 AM
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
-- Database: `office_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(2, 'aboutttttt', 'adsdaesfsdfgsdfgsdfg', '2023-03-10 10:35:02', '2023-03-10 10:35:02');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hotel_id` bigint(20) UNSIGNED NOT NULL,
  `room_id` bigint(20) UNSIGNED NOT NULL,
  `check_in` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `check_out` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `final_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `on_top` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `title`, `type`, `start_date`, `end_date`, `photo`, `on_top`, `created_at`, `updated_at`) VALUES
(2, 'Illo ut in id dicta', 'In quis repellendus', '2003-08-30', '1997-09-24', 'file/campaign/images/20230310040324.jpg', 'yes', '2023-03-10 10:28:24', '2023-03-10 10:28:24'),
(3, 'Voluptatem Facere l', 'Libero proident dic', '2015-01-26', '1989-02-28', 'file/campaign/images/20230310040328.png', 'yes', '2023-03-10 10:30:28', '2023-03-10 10:30:28');

-- --------------------------------------------------------

--
-- Table structure for table `claimeddiscounts`
--

CREATE TABLE `claimeddiscounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurant_discount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('received','approved') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'received',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deals`
--

CREATE TABLE `deals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offer_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', '2023-03-10 04:15:21', '2023-03-10 04:15:21'),
(2, 'Chittagong', '2023-03-10 04:15:28', '2023-03-10 04:15:28'),
(3, 'Sylhet', '2023-03-10 09:49:44', '2023-03-10 09:49:44');

-- --------------------------------------------------------

--
-- Table structure for table `emergency_contacts`
--

CREATE TABLE `emergency_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `emergency_contacts`
--

INSERT INTO `emergency_contacts` (`id`, `name`, `contact`, `note`, `created_at`, `updated_at`) VALUES
(2, 'National Number', '999', 'dfsdfsdf', '2023-03-10 10:36:06', '2023-03-10 10:36:06');

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
-- Table structure for table `help_and_supports`
--

CREATE TABLE `help_and_supports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `help_and_supports`
--

INSERT INTO `help_and_supports` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'asdfasdfasd', 'asdasasdasd', '2023-03-10 10:35:29', '2023-03-10 10:35:29');

-- --------------------------------------------------------

--
-- Table structure for table `hotelratings`
--

CREATE TABLE `hotelratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hotel_id` bigint(20) UNSIGNED DEFAULT NULL,
  `feedback` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hotelrooms`
--

CREATE TABLE `hotelrooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hotel_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer_start_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer_end_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `beds` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `baths` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_occupancy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `private_policy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotelrooms`
--

INSERT INTO `hotelrooms` (`id`, `hotel_id`, `title`, `subtitle`, `description`, `offer_start_date`, `offer_end_date`, `beds`, `baths`, `price`, `discount`, `discount_price`, `max_occupancy`, `private_policy`, `info`, `image`, `created_at`, `updated_at`) VALUES
(2, 2, 'Voluptate provident', 'Voluptate delectus', 'Enim et rerum incidi\"\"\"\"', '1971-06-30', '2020-01-03', 'Et officia illo ut u', 'Saepe sit sed sint', '66', '8', '60.72', 'Dolore duis explicab', 'Quis provident volu\"\"\"\"', 'Est dolor nulla min', 'file/hotelroom/images/20230310100339.png', '2023-03-10 04:27:50', '2023-03-10 04:32:39'),
(3, 2, 'Eu expedita esse fa', 'At est corrupti ad', 'Qui et sed vel alias', '1987-09-08', '1997-03-25', 'Sint eiusmod volupta', 'Reprehenderit ipsum', '925', '71', '268.25', 'Nisi ut explicabo Q', 'Dolore voluptatem a', 'Aut rerum culpa ape', 'file/hotelroom/images/20230310040316.png', '2023-03-10 10:08:16', '2023-03-10 10:08:16');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_page` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `services` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `popular_deal` enum('popular','not_popular') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'not_popular',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `name`, `division_id`, `location`, `description`, `price`, `offer_price`, `discount`, `latitude`, `longitude`, `contact_no`, `facebook_page`, `website_link`, `youtube_link`, `photo`, `tags`, `services`, `status`, `popular_deal`, `created_at`, `updated_at`) VALUES
(2, 'Mona Kaufman', '1', 'FFFF', 'Eum soluta quo harum', '578', '169', '16', 'Veniam obcaecati as', 'Minima odio possimus', '+1 (618) 141-9397', 'https://www.kulaqy.me', 'https://www.peq.org.uk', 'https://www.mifuw.ws', 'file/hotel/images/20230310100337.png', 'Porro quibusdam et v', 'Exercitation aliquam', '1', 'popular', '2023-03-10 04:23:51', '2023-03-10 04:45:21'),
(3, 'Zorita Grant', '2', 'Labore neque mollit', 'Praesentium qui exer', '325', '645', '42', 'Neque voluptatem Ip', 'Distinctio Ex rem m', '+1 (125) 118-8264', 'https://www.xihujacarovale.org', 'https://www.bowa.me.uk', 'https://www.gypuhunycosil.us', 'file/hotel/images/20230310040346.png', 'Dolore deserunt recu', 'Voluptatem Labore e', '1', 'popular', '2023-03-10 10:06:46', '2023-03-10 10:06:46');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_services`
--

CREATE TABLE `hotel_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hotel_id` bigint(20) UNSIGNED DEFAULT NULL,
  `service_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_three` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_four` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_five` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_six` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotel_services`
--

INSERT INTO `hotel_services` (`id`, `hotel_id`, `service_one`, `service_two`, `service_three`, `service_four`, `service_five`, `service_six`, `created_at`, `updated_at`) VALUES
(2, 2, 'Debitis maiores temp', 'Blanditiis voluptate', 'Ad esse aut inventor', 'Dolore magni quia mi', 'Rem non atque et cor', 'Omnis reprehenderit', '2023-03-10 04:23:51', '2023-03-10 04:23:51'),
(3, 3, 'Inventore voluptatem', 'In doloremque quisqu', 'Sit et mollit labor', 'Quam non distinctio', 'Dolor temporibus quo', 'Lorem obcaecati sunt', '2023-03-10 10:06:47', '2023-03-10 10:06:47');

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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2023_02_15_083339_create_divisions_table', 1),
(11, '2023_02_19_062327_create_deals_table', 1),
(12, '2023_02_19_062805_create_campaigns_table', 1),
(13, '2023_02_19_083532_create_emergency_contacts_table', 1),
(14, '2023_02_19_083645_create_help_and_supports_table', 1),
(15, '2023_02_19_083957_create_hotels_table', 1),
(16, '2023_02_19_084028_create_privacy_policies_table', 1),
(17, '2023_02_19_084237_create_restaurants_table', 1),
(18, '2023_02_19_085415_create_terms_of_services_table', 1),
(19, '2023_02_19_085537_create_about_us_table', 1),
(20, '2023_02_19_090243_create_customers_table', 1),
(21, '2023_02_20_041015_create_hotelrooms_table', 1),
(22, '2023_02_20_120734_create_permissions_table', 1),
(23, '2023_02_20_174548_create_restaurantmenus_table', 1),
(24, '2023_02_23_063426_create_hotelratings_table', 1),
(25, '2023_02_23_063739_create_restaurantratings_table', 1),
(26, '2023_02_27_080152_create_bookings_table', 1),
(27, '2023_03_02_060422_create_claimeddiscounts_table', 1),
(28, '2023_03_02_061843_create_reviews_table', 1),
(29, '2023_03_04_103324_create_reviewhotels_table', 1),
(30, '2023_03_10_062856_create_hotel_services_table', 1),
(31, '2023_03_10_063246_create_restaurant_services_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('18e756db59ec79ff609c2d68624c605e023b1b7ce4d99773b344e95223350c65b6440aa88d6f63f7', 5, 1, 'app', '[]', 0, '2023-03-10 10:10:31', '2023-03-10 10:10:31', '2024-03-10 16:10:31'),
('54bae3b0c57b6db36d9e54bf8ec389d56c14c3480ef2fa8244874badedcc36c1129aa92397808214', 4, 1, 'app', '[]', 0, '2023-03-10 09:43:50', '2023-03-10 09:43:50', '2024-03-10 15:43:50'),
('59bef4132c40a002d9f0ef74fd4878ba6846a5f5e833c87d027272e6fdd9ba573008f2ee76d7c2de', 8, 1, 'app', '[]', 0, '2023-03-10 22:58:57', '2023-03-10 22:58:57', '2024-03-11 04:58:57'),
('85546efc9dce136cb1ffc29dfe487857815c2d34c23b5cbd3506a5be6a0b98d872382dfdfcb3da3c', 5, 1, 'app', '[]', 0, '2023-03-10 10:10:54', '2023-03-10 10:10:54', '2024-03-10 16:10:54'),
('bcfc711800a66fbc755ecdd5aa3925ea42c945f9f9ced8a07efeb0dd681bdf893ffb0a2b9e018794', 4, 1, 'app', '[]', 0, '2023-03-10 09:43:15', '2023-03-10 09:43:15', '2024-03-10 15:43:15'),
('f32e7e585af5ea363cb13113102a65a5e61147e19e0a5d00a5f7d7b5c8973cf84415c8139dc1ac13', 8, 1, 'app', '[]', 0, '2023-03-10 22:58:39', '2023-03-10 22:58:39', '2024-03-11 04:58:39');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'zYT0XGl0FpvhrKPND1pqdDiNzXqSxdm1M0jiIhOd', NULL, 'http://localhost', 1, 0, 0, '2023-03-10 09:41:24', '2023-03-10 09:41:24'),
(2, NULL, 'Laravel Password Grant Client', '3AICjzHjZu02IRcOJACUc8ReTIZSiO7esQYJ3sf9', 'users', 'http://localhost', 0, 1, 0, '2023-03-10 09:41:24', '2023-03-10 09:41:24');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-03-10 09:41:24', '2023-03-10 09:41:24');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `permission_name`, `value`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'create_hotel', '1', 1, '2023-03-10 04:14:37', '2023-03-10 04:14:37'),
(2, 'hotel_list', '2', 1, '2023-03-10 04:14:37', '2023-03-10 04:14:37'),
(3, 'hotel_delete', '3', 1, '2023-03-10 04:14:37', '2023-03-10 04:14:37'),
(4, 'edit_hotel', '4', 1, '2023-03-10 04:14:37', '2023-03-10 04:14:37'),
(5, 'create_hotel_room', '5', 1, '2023-03-10 04:14:37', '2023-03-10 04:14:37'),
(6, 'room_list', '6', 1, '2023-03-10 04:14:37', '2023-03-10 04:14:37'),
(7, 'edit_room', '7', 1, '2023-03-10 04:14:37', '2023-03-10 04:14:37'),
(8, 'delete_room', '8', 1, '2023-03-10 04:14:38', '2023-03-10 04:14:38'),
(9, 'hotel_rating_list', '9', 1, '2023-03-10 04:14:38', '2023-03-10 04:14:38'),
(10, 'create_hotel_rating', '10', 1, '2023-03-10 04:14:38', '2023-03-10 04:14:38'),
(11, 'edit_hotel_rating', '11', 1, '2023-03-10 04:14:38', '2023-03-10 04:14:38'),
(12, 'all_hotel_booking_list', '12', 1, '2023-03-10 04:14:38', '2023-03-10 04:14:38'),
(13, 'create_hotel_booking', '13', 1, '2023-03-10 04:14:38', '2023-03-10 04:14:38'),
(14, 'edit_hotel_booking', '14', 1, '2023-03-10 04:14:38', '2023-03-10 04:14:38'),
(15, 'delete_hotel_booking', '15', 1, '2023-03-10 04:14:38', '2023-03-10 04:14:38'),
(16, 'booking_status', '16', 1, '2023-03-10 04:14:38', '2023-03-10 04:14:38'),
(17, 'see_all_restaurant', '17', 1, '2023-03-10 04:14:38', '2023-03-10 04:14:38'),
(18, 'create_restaurant', '18', 1, '2023-03-10 04:14:38', '2023-03-10 04:14:38'),
(19, 'edit_restaurant', '19', 1, '2023-03-10 04:14:38', '2023-03-10 04:14:38'),
(20, 'delete_restaurant', '20', 1, '2023-03-10 04:14:39', '2023-03-10 04:14:39'),
(21, 'all_restaurant_menus', '21', 1, '2023-03-10 04:14:39', '2023-03-10 04:14:39'),
(22, 'create_restaurant_menu', '22', 1, '2023-03-10 04:14:39', '2023-03-10 04:14:39'),
(23, 'edit_restaurant_menu', '23', 1, '2023-03-10 04:14:39', '2023-03-10 04:14:39'),
(24, 'delete_restaurant_menu', '24', 1, '2023-03-10 04:14:39', '2023-03-10 04:14:39'),
(25, 'all_restaurant_star', '25', 1, '2023-03-10 04:14:39', '2023-03-10 04:14:39'),
(26, 'create_restaurant_star', '26', 1, '2023-03-10 04:14:39', '2023-03-10 04:14:39'),
(27, 'edit_restaurant_star', '27', 1, '2023-03-10 04:14:39', '2023-03-10 04:14:39'),
(28, 'claimed_discount', '28', 1, '2023-03-10 04:14:39', '2023-03-10 04:14:39'),
(29, 'change_discount_status', '29', 1, '2023-03-10 04:14:39', '2023-03-10 04:14:39');

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
-- Table structure for table `privacy_policies`
--

CREATE TABLE `privacy_policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacy_policies`
--

INSERT INTO `privacy_policies` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'privacy ploiuccccc', 'frwsfgsgfsfgsdfg', '2023-03-10 10:35:18', '2023-03-10 10:35:18');

-- --------------------------------------------------------

--
-- Table structure for table `restaurantmenus`
--

CREATE TABLE `restaurantmenus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurantmenus`
--

INSERT INTO `restaurantmenus` (`id`, `restaurant_id`, `name`, `description`, `discount`, `photo`, `tags`, `status`, `created_at`, `updated_at`) VALUES
(2, 2, 'Serina Melton', 'Et molestiae odio pe', '95', 'file/restaurantmenu/images/20230311040343.jpg', 'Autem qui in distinc', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `restaurantratings`
--

CREATE TABLE `restaurantratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `feedback` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurantratings`
--

INSERT INTO `restaurantratings` (`id`, `restaurant_id`, `feedback`, `star`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, '4', '2023-03-10 10:21:12', '2023-03-10 10:21:21');

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_page` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `popular_deal` enum('popular','not_popular') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'not_popular',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `name`, `division_id`, `location`, `description`, `discount`, `latitude`, `longitude`, `contact_no`, `facebook_page`, `website_link`, `youtube_link`, `photo`, `tags`, `popular_deal`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Cairo Hart', '1', 'Est ex doloremque si', 'Sed dolores qui nihi', '53', 'Et nihil voluptatem', 'Mollitia quisquam ea', '6', 'https://www.qukazuqihijy.org', 'https://www.hez.co', 'https://www.bine.biz', 'file/restaurant/images/20230310040341.jpg', 'Explicabo Elit qui', 'popular', '1', '2023-03-10 10:19:41', '2023-03-10 10:19:41');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_services`
--

CREATE TABLE `restaurant_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rest_id` bigint(20) UNSIGNED DEFAULT NULL,
  `service_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_three` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_four` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_five` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_six` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurant_services`
--

INSERT INTO `restaurant_services` (`id`, `rest_id`, `service_one`, `service_two`, `service_three`, `service_four`, `service_five`, `service_six`, `created_at`, `updated_at`) VALUES
(2, 2, 'Expedita illo omnis', 'Eligendi ut magna mo', 'Laboris elit quo vo', 'Similique culpa iste', 'Ea sint dolor pariat', 'Neque ab quia ea ali', '2023-03-10 10:19:41', '2023-03-10 10:19:41');

-- --------------------------------------------------------

--
-- Table structure for table `reviewhotels`
--

CREATE TABLE `reviewhotels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hotel_id` bigint(20) UNSIGNED NOT NULL,
  `hotel_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feedback` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feedback` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `terms_of_services`
--

CREATE TABLE `terms_of_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms_of_services`
--

INSERT INTO `terms_of_services` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'retert', 'ertertertert', '2023-03-10 10:35:38', '2023-03-10 10:35:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','vendor','customer') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refer_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role`, `email`, `phone`, `gender`, `dob`, `image`, `address`, `password`, `prefer`, `refer_code`, `status`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'test@example.com', NULL, NULL, NULL, NULL, NULL, '$2y$10$Uef2x9/T8ttaLtESCr7oiepazqD3u4uZ7VM.e4fMTBAFNe1IeJoXy', NULL, NULL, '0', NULL, NULL, '2023-03-10 04:14:37', '2023-03-10 04:14:37'),
(8, 'Khan', 'customer', 'alam@gmail.com', '01666666666', 'Female', '09-03-2023', 'file/customer/images/20230311050340.png', 'Dhaka', '$2y$10$IiDnX4ksTSK9Ee3XMvfjwOVWW44xFaI1zig0DJlNQyFM2wcCEKhIK', 'sea', '#qvQvioF', '1', NULL, NULL, '2023-03-10 22:58:37', '2023-03-10 23:00:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_user_id_foreign` (`user_id`),
  ADD KEY `bookings_hotel_id_foreign` (`hotel_id`),
  ADD KEY `bookings_room_id_foreign` (`room_id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `claimeddiscounts`
--
ALTER TABLE `claimeddiscounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `claimeddiscounts_user_id_foreign` (`user_id`),
  ADD KEY `claimeddiscounts_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deals`
--
ALTER TABLE `deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emergency_contacts`
--
ALTER TABLE `emergency_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `help_and_supports`
--
ALTER TABLE `help_and_supports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotelratings`
--
ALTER TABLE `hotelratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotelratings_hotel_id_foreign` (`hotel_id`);

--
-- Indexes for table `hotelrooms`
--
ALTER TABLE `hotelrooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotelrooms_hotel_id_foreign` (`hotel_id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_services`
--
ALTER TABLE `hotel_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotel_services_hotel_id_foreign` (`hotel_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurantmenus`
--
ALTER TABLE `restaurantmenus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurantmenus_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `restaurantratings`
--
ALTER TABLE `restaurantratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurantratings_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_services`
--
ALTER TABLE `restaurant_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurant_services_rest_id_foreign` (`rest_id`);

--
-- Indexes for table `reviewhotels`
--
ALTER TABLE `reviewhotels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviewhotels_user_id_foreign` (`user_id`),
  ADD KEY `reviewhotels_hotel_id_foreign` (`hotel_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `terms_of_services`
--
ALTER TABLE `terms_of_services`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `claimeddiscounts`
--
ALTER TABLE `claimeddiscounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deals`
--
ALTER TABLE `deals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `emergency_contacts`
--
ALTER TABLE `emergency_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `help_and_supports`
--
ALTER TABLE `help_and_supports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hotelratings`
--
ALTER TABLE `hotelratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hotelrooms`
--
ALTER TABLE `hotelrooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hotel_services`
--
ALTER TABLE `hotel_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `restaurantmenus`
--
ALTER TABLE `restaurantmenus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `restaurantratings`
--
ALTER TABLE `restaurantratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `restaurant_services`
--
ALTER TABLE `restaurant_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reviewhotels`
--
ALTER TABLE `reviewhotels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `terms_of_services`
--
ALTER TABLE `terms_of_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_hotel_id_foreign` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `hotelrooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `claimeddiscounts`
--
ALTER TABLE `claimeddiscounts`
  ADD CONSTRAINT `claimeddiscounts_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `claimeddiscounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `hotelratings`
--
ALTER TABLE `hotelratings`
  ADD CONSTRAINT `hotelratings_hotel_id_foreign` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `hotelrooms`
--
ALTER TABLE `hotelrooms`
  ADD CONSTRAINT `hotelrooms_hotel_id_foreign` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `hotel_services`
--
ALTER TABLE `hotel_services`
  ADD CONSTRAINT `hotel_services_hotel_id_foreign` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `restaurantmenus`
--
ALTER TABLE `restaurantmenus`
  ADD CONSTRAINT `restaurantmenus_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `restaurantratings`
--
ALTER TABLE `restaurantratings`
  ADD CONSTRAINT `restaurantratings_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `restaurant_services`
--
ALTER TABLE `restaurant_services`
  ADD CONSTRAINT `restaurant_services_rest_id_foreign` FOREIGN KEY (`rest_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviewhotels`
--
ALTER TABLE `reviewhotels`
  ADD CONSTRAINT `reviewhotels_hotel_id_foreign` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviewhotels_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
