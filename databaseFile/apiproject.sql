-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2021 at 07:44 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apiproject`
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
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(7, '2016_06_01_000004_create_oauth_clients_table', 2),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(9, '2021_08_10_073402_create_posts_table', 3),
(10, '2021_08_11_081436_create_products_table', 4);

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
('0f075e40dd0554592cfa64ec65eae1801bbf8d3f5716616378972a9af26acca7a46b3342765df8b8', 1, 1, 'LaravelAuthApp', '[]', 0, '2021-08-10 03:55:49', '2021-08-10 03:55:49', '2022-08-10 09:25:49'),
('1fc5af7fb32f7783c5b37eb0b0636c126ff2fa95ac9106832f1f06b50614586c4fb87b8924c4304f', 4, 1, 'LaravelAuthApp', '[]', 0, '2021-08-10 03:05:28', '2021-08-10 03:05:28', '2022-08-10 08:35:28'),
('212d755a960c40c11cebbabd66c64ab78a238841fe5e4a4d2b8a584334828a48c4432969fde901c6', 3, 1, 'LaravelAuthApp', '[]', 0, '2021-08-10 02:59:44', '2021-08-10 02:59:44', '2022-08-10 08:29:44'),
('248283942166a7278f7e3365d198e64c21772825be3f288dc7eb4be2828710228f030cb9bdcec8b6', 59, 4, 'LaravelAuthApp', '[]', 0, '2021-08-11 01:50:47', '2021-08-11 01:50:47', '2022-08-11 07:20:47'),
('279f374d5bb2b3330880ac031cd4e32d48c107db505ce51dd5ccfb78f52a8aec574b72156eefea03', 59, 4, 'LaravelAuthApp', '[]', 0, '2021-08-11 02:03:57', '2021-08-11 02:03:57', '2022-08-11 07:33:57'),
('27e6b9ca87260f9e40ac33b8a97797c2006b518f67b123267710640f170f5162c2cf4ab98de014e8', 1, 1, 'LaravelAuthApp', '[]', 0, '2021-08-10 03:08:39', '2021-08-10 03:08:39', '2022-08-10 08:38:39'),
('2bb4e352be80a6f058cabf2ec343e67e6ee24da1e48ed0d6cd3c93a584cf23063e9fe2042ecd327e', 10, 1, 'LaravelAuthApp', '[]', 0, '2021-08-10 05:21:24', '2021-08-10 05:21:24', '2022-08-10 10:51:24'),
('2f50aadb541e5add4d71246c5e75a3991f4333897e45971bc59c6c7d74b14e891fb6606b6246754d', 14, 1, 'LaravelAuthApp', '[]', 0, '2021-08-10 05:57:48', '2021-08-10 05:57:48', '2022-08-10 11:27:48'),
('316b01527e6c8aee06e079ed5e8de8b7925c47587dbd3f4b00518f3dae644541eb11cd520934efcc', 1, 1, 'LaravelAuthApp', '[]', 0, '2021-08-10 03:15:54', '2021-08-10 03:15:54', '2022-08-10 08:45:54'),
('3caae1b82caa7d73fd6a322d0f2a5fafb3d609698423438fd2e2999fdad8a16ebddafe18cb285f6f', 56, 4, 'LaravelAuthApp', '[]', 0, '2021-08-10 07:24:54', '2021-08-10 07:24:54', '2022-08-10 12:54:54'),
('3ef072d03d6b5c5ba38296859d84774ce72b5714cbd638ec47b2f12255853509c0739e906cc23890', 9, 1, 'LaravelAuthApp', '[]', 0, '2021-08-10 04:58:47', '2021-08-10 04:58:47', '2022-08-10 10:28:47'),
('465e00aea39b5e56bb9ba7ac6f3baa2f7af4e19d4a5d1f48dd7baccb546efdf3872a205499c92b4c', 59, 4, 'LaravelAuthApp', '[]', 0, '2021-08-11 01:52:49', '2021-08-11 01:52:49', '2022-08-11 07:22:49'),
('5c7f5c523163991ef8ced47da1f35da6991fa15bed1c647b8741de94982d459242efecafd4c8b92f', 7, 1, 'LaravelAuthApp', '[]', 0, '2021-08-10 04:55:22', '2021-08-10 04:55:22', '2022-08-10 10:25:22'),
('6d941e74885dd59bf5ed8ba79df31a780900ec522dd1045b71ec8ec7f334b95f8a2003c9b83e960d', 15, 4, 'LaravelAuthApp', '[]', 0, '2021-08-10 06:09:55', '2021-08-10 06:09:55', '2022-08-10 11:39:55'),
('88f8914f2db3be8dc372d1e6f2b0e58a9ce6a05424f512985c4920dd7d508c105d2225e61f1bb2fa', 59, 4, 'LaravelAuthApp', '[]', 0, '2021-08-11 02:07:32', '2021-08-11 02:07:32', '2022-08-11 07:37:32'),
('930fdc32c13932f4906138eeffcc31e1e201fa0c2fea8528c88aa95413c3c5d635fac0d72432e5dc', 59, 4, 'LaravelAuthApp', '[]', 0, '2021-08-11 01:53:56', '2021-08-11 01:53:56', '2022-08-11 07:23:56'),
('96d3e424c165e3efdd5c8b72a19f58fe57cd0d845b59a39f8596b995b15e87e009d2c266bbabd740', 13, 1, 'LaravelAuthApp', '[]', 0, '2021-08-10 05:32:44', '2021-08-10 05:32:44', '2022-08-10 11:02:44'),
('a44cf84d29b39d929d07de86d6729bb55888f7995cfc4b05c4c635843ae485b4978e194d6c32a8a6', 1, 1, 'LaravelAuthApp', '[]', 0, '2021-08-10 03:27:02', '2021-08-10 03:27:02', '2022-08-10 08:57:02'),
('ba5e13c6ad0c057f8dfd656c3ff04c5f1564fb5e888e76e882f081d3c4eff2142baa9fa6bc419e3f', 35, 4, 'LaravelAuthApp', '[]', 0, '2021-08-10 06:42:03', '2021-08-10 06:42:03', '2022-08-10 12:12:03'),
('c1f58a85231adb3f6c069845f150723a860b70a3ad3a85a9e8dcb21128824e2b8221ab31bc26cc23', 11, 1, 'LaravelAuthApp', '[]', 0, '2021-08-10 05:24:25', '2021-08-10 05:24:25', '2022-08-10 10:54:25'),
('c893aa8d396d2aa350a188ad471ab33b6ad4e084ba43285e6a84289293ac2e4748611dcf237f9410', 57, 4, 'LaravelAuthApp', '[]', 0, '2021-08-10 22:17:00', '2021-08-10 22:17:00', '2022-08-11 03:47:00'),
('c92d269030058646657b2261ab4c7c3929875fe32e4f62a2228a7a0c15650190c3d8c0e27fd14fe3', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-08-10 04:54:51', '2021-08-10 04:54:51', '2022-08-10 10:24:51'),
('efa65a5df2c2287daac6e842c93878477e12062be9f2a4c00b7400d1734040010e50abc9f40637f8', 58, 4, 'LaravelAuthApp', '[]', 0, '2021-08-11 01:48:25', '2021-08-11 01:48:25', '2022-08-11 07:18:25');

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
(1, NULL, 'Laravel Personal Access Client', 'LtuYTl6X2BQ973F2tTKYn6tl5aYDj40pOoKBxbh8', NULL, 'http://localhost', 1, 0, 0, '2021-08-10 01:56:57', '2021-08-10 01:56:57'),
(2, NULL, 'Laravel Password Grant Client', 'm8yzc0wOCUz7B8MREXuZvJRjflUhqqB13VY98ow3', 'users', 'http://localhost', 0, 1, 0, '2021-08-10 01:56:57', '2021-08-10 01:56:57'),
(3, NULL, 'admin@123', '7Ju3ekwOsdn4KjAHp2PT2Lk9KzKevwBGLNVXNIPa', 'users', 'http://localhost', 0, 1, 0, '2021-08-10 05:50:43', '2021-08-10 05:50:43'),
(4, NULL, 'Laravel Personal Access Client', 'Gmlp86i4cZOvhcYmZpxENdljLRsSJMDWeVgSZI6t', NULL, 'http://localhost', 1, 0, 0, '2021-08-10 06:09:41', '2021-08-10 06:09:41'),
(5, NULL, 'Laravel Password Grant Client', '1VhK939k6nXVmEwAfoA4mW9PQGzuyetanH7Jhwyq', 'users', 'http://localhost', 0, 1, 0, '2021-08-10 06:09:41', '2021-08-10 06:09:41');

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
(1, 1, '2021-08-10 01:56:57', '2021-08-10 01:56:57'),
(2, 4, '2021-08-10 06:09:41', '2021-08-10 06:09:41');

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
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
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(3, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(5, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(7, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(9, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(11, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(12, 'T-Shirt', 'Tommy Tshirt', 130, '1628686198.png', '2021-08-11 04:02:42', '2021-08-11 05:21:56'),
(13, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(15, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(16, 'T-Shirt', 'Tommy Tshirt', 130, '1628686198.png', '2021-08-11 04:02:42', '2021-08-11 05:21:56'),
(17, 'test', 'kj', 100, '1628686198.png', '2021-08-11 06:47:10', '2021-08-11 06:47:10'),
(18, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(19, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(20, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(21, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(22, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(23, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(24, 'T-Shirt', 'Tommy Tshirt', 130, '1628686198.png', '2021-08-11 04:02:42', '2021-08-11 05:21:56'),
(25, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(26, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(27, 'T-Shirt', 'Tommy Tshirt', 130, '1628686198.png', '2021-08-11 04:02:42', '2021-08-11 05:21:56'),
(28, 'test', 'kj', 100, '1628686198.png', '2021-08-11 06:47:10', '2021-08-11 06:47:10'),
(29, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(30, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(31, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(32, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(33, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(34, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(35, 'T-Shirt', 'Tommy Tshirt', 130, '1628686198.png', '2021-08-11 04:02:42', '2021-08-11 05:21:56'),
(36, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(37, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(38, 'T-Shirt', 'Tommy Tshirt', 130, '1628686198.png', '2021-08-11 04:02:42', '2021-08-11 05:21:56'),
(39, 'test', 'kj', 100, '1628686198.png', '2021-08-11 06:47:10', '2021-08-11 06:47:10'),
(40, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(41, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(42, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(43, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(44, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(45, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(46, 'T-Shirt', 'Tommy Tshirt', 130, '1628686198.png', '2021-08-11 04:02:42', '2021-08-11 05:21:56'),
(47, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(48, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(49, 'T-Shirt', 'Tommy Tshirt', 130, '1628686198.png', '2021-08-11 04:02:42', '2021-08-11 05:21:56'),
(50, 'test', 'kj', 100, '1628686198.png', '2021-08-11 06:47:10', '2021-08-11 06:47:10'),
(51, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(52, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(53, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(54, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(55, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(56, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(57, 'T-Shirt', 'Tommy Tshirt', 130, '1628686198.png', '2021-08-11 04:02:42', '2021-08-11 05:21:56'),
(58, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(59, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(60, 'T-Shirt', 'Tommy Tshirt', 130, '1628686198.png', '2021-08-11 04:02:42', '2021-08-11 05:21:56'),
(61, 'test', 'kj', 100, '1628686198.png', '2021-08-11 06:47:10', '2021-08-11 06:47:10'),
(62, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(63, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(64, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(65, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(66, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(67, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(68, 'T-Shirt', 'Tommy Tshirt', 130, '1628686198.png', '2021-08-11 04:02:42', '2021-08-11 05:21:56'),
(69, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(70, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(71, 'T-Shirt', 'Tommy Tshirt', 130, '1628686198.png', '2021-08-11 04:02:42', '2021-08-11 05:21:56'),
(72, 'test', 'kj', 100, '1628686198.png', '2021-08-11 06:47:10', '2021-08-11 06:47:10'),
(73, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(74, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(75, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(76, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(77, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(78, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(79, 'T-Shirt', 'Tommy Tshirt', 130, '1628686198.png', '2021-08-11 04:02:42', '2021-08-11 05:21:56'),
(80, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(81, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(82, 'T-Shirt', 'Tommy Tshirt', 130, '1628686198.png', '2021-08-11 04:02:42', '2021-08-11 05:21:56'),
(83, 'test', 'kj', 100, '1628686198.png', '2021-08-11 06:47:10', '2021-08-11 06:47:10'),
(84, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(85, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(86, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(87, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(88, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(89, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(90, 'T-Shirt', 'Tommy Tshirt', 130, '1628686198.png', '2021-08-11 04:02:42', '2021-08-11 05:21:56'),
(91, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(92, 'Shoe', 'Description', 150, '1628686198.png', '2021-08-11 03:49:54', '2021-08-11 05:22:08'),
(93, 'T-Shirt', 'Tommy Tshirt', 130, '1628686198.png', '2021-08-11 04:02:42', '2021-08-11 05:21:56'),
(94, 'test', 'kj', 100, '1628687003.png', '2021-08-11 06:47:10', '2021-08-11 07:33:23'),
(95, 'test', 'sdfsdfsdf', 100, '1628686992.jpg', '2021-08-11 07:15:27', '2021-08-11 07:33:12'),
(96, 'Shoes', 'sdfsdfsdf', 700, '1628686976.png', '2021-08-11 07:18:32', '2021-08-11 07:32:56'),
(97, 'test 1', 'sdfsdf', 1000, '1628686198.png', '2021-08-11 07:19:58', '2021-08-11 07:33:02'),
(98, 'admin', 'sss', 30, '1628687068.jpg', '2021-08-11 07:34:28', '2021-08-11 07:34:28');

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
(1, 'beta solutions 1', 'betasolutiossns1@gmail.com', NULL, '$2y$10$U/QgpKbfSWG0YJSXdNw0IOHA6j7HvShHhEc5piXwSD.NkxMb6ytF6', NULL, '2021-08-10 02:51:04', '2021-08-11 02:09:02'),
(3, 'admin', 'demo@gmail.com', NULL, '$2y$10$0kwyX1Fv5KHvaZjuGarG5.OKfwAMm94H7YAyJ0rJnNDfZ34S6El.i', NULL, '2021-08-10 02:59:41', '2021-08-10 02:59:41'),
(5, 'admin', 'demo3@gmail.com', NULL, '$2y$10$3PhxAJAL0tl0U78vklnN6OZPW/OdQY69mTPoRAYLVqtaNQjpMzvMC', NULL, '2021-08-10 04:54:51', '2021-08-10 04:54:51'),
(7, 'admin', 'demo35@gmail.com', NULL, '$2y$10$WTs4ojo6gKwFEEKic1j7T.Q/Ri9oUx086yGfzG9/elc0dt/YlgmIm', NULL, '2021-08-10 04:55:22', '2021-08-10 04:55:22'),
(9, 'admin', 'demo355@gmail.com', NULL, '$2y$10$tQ0xPLyWKDdhsgePv3/34.0sbwx46tx1wUZtwtVx3aF4L5zOa4syq', NULL, '2021-08-10 04:58:47', '2021-08-10 04:58:47'),
(10, 'sdfsdf', 'new@gmail.com', NULL, '$2y$10$.9qD2vwM7xczPUV2eJkhv.191YfoN3SKcia.bda3c7/8cMMEy4dxi', NULL, '2021-08-10 05:21:24', '2021-08-10 05:21:24'),
(11, 'sdfsdf', 'newss@gmail.com', NULL, '$2y$10$3LXd3BU.iI6MpYGwaQcaDuxzhqSy3r8Hj3lDgYkol8WwnU0ij3P0e', NULL, '2021-08-10 05:24:25', '2021-08-10 05:24:25'),
(13, 'sdfsdf', 'sssss@gmail.com', NULL, '$2y$10$WAVo7LiGL0Pwz3bdXdTyFer7fKVSzGOTtmCx1/2S/WP5M9pzXx1Oa', NULL, '2021-08-10 05:32:44', '2021-08-10 05:32:44'),
(14, 'sdfsdf', 'aaaa@gmail.com', NULL, '$2y$10$rKqwYvyLvkq6jasZ6qw6E.KwlUzfxFNxM/TQsLL3Ox7dqdWQbetxC', NULL, '2021-08-10 05:57:46', '2021-08-10 05:57:46'),
(15, 'sdfsdfsss', 'aassssaa@gmail.com', NULL, '$2y$10$YQvzIISmnRiwtiHb.DXoC.S5URaKXGLJKyvqjOR0hUaoXi2rdCvni', NULL, '2021-08-10 06:09:54', '2021-08-10 06:09:54'),
(16, 'sjdfkjslf', 'aassssssssaa@gmail.com', NULL, '$2y$10$Zs7Peb2lLAkF6yKT.1UpxuNY7cTuoiepm04aHW312/Fg4dcCtko/m', NULL, '2021-08-10 06:23:42', '2021-08-10 06:23:42'),
(18, 'jk', 'jk@gmail.com', NULL, '$2y$10$Cg0P0Qwx0IbdGtymqGtPYeRW35O/N5ZhtOKfP6dsZsKfz8/BSGQXa', NULL, '2021-08-10 06:25:30', '2021-08-10 06:25:30'),
(20, 'jkff', 'jkff@gmail.com', NULL, '$2y$10$Tn3q93P406CWvsRankQtFuTXF6g5w60bKL.O29GQsx/nqd3lASu4G', NULL, '2021-08-10 06:28:50', '2021-08-10 06:28:50'),
(22, 'jkffss', 'jkffss@gmail.com', NULL, '$2y$10$wmTcMMTVTkJQkYWoQ.vSyOG6ak3WNFxi6Xq4p7ikcQz4D0LbKrGiK', NULL, '2021-08-10 06:29:25', '2021-08-10 06:29:25'),
(24, 'jkffssss', 'jkffssss@gmail.com', NULL, '$2y$10$ZCVVLsoLVvll5k8qnlFWCOki70o4kfUlsRbmyqROzIM2xHsTl6qSK', NULL, '2021-08-10 06:31:47', '2021-08-10 06:31:47'),
(25, 'jkffssss', 'jkffsssdds@gmail.com', NULL, '$2y$10$1iW24XdgAL9tYptpBTl3yeIHy/krN3qmH.E6HbXnEOSK4mvON3sVy', NULL, '2021-08-10 06:33:06', '2021-08-10 06:33:06'),
(28, 'jkffssss', 'jkffsssddsss@gmail.com', NULL, '$2y$10$J9h6gda6GoLmW9Nljj6NIefTYHcJAYJ.s6OVlgZWhJSBU887JmYk2', NULL, '2021-08-10 06:33:44', '2021-08-10 06:33:44'),
(29, 'jkffssss', 'jkffsssddssss@gmail.com', NULL, '$2y$10$aeX47//8LJKt/hRvhZoHXeLU5257EEZ.gQBYGaPf7BakBjlHYZL/y', NULL, '2021-08-10 06:33:54', '2021-08-10 06:33:54'),
(30, 'jkffssss', 'ds@gmail.com', NULL, '$2y$10$P/hJMTnZgq79.cTLH6oevOKdsRiOvOlewunl3cC/4aYr0KNlScMWm', NULL, '2021-08-10 06:34:46', '2021-08-10 06:34:46'),
(32, 'jkffssss', 'dss@gmail.com', NULL, '$2y$10$MBp29KfW6W5GAxTWlK.nQejTkjApjSe5huAIaJAa9T/gSbTA9xtVK', NULL, '2021-08-10 06:39:30', '2021-08-10 06:39:30'),
(33, 'jkffssss', 'dssss@gmail.com', NULL, '$2y$10$/4cJmVDdtvc3LiqG9yVI/eFdufzqA3AiLNb2VKuJtfO0uuzNod5HO', NULL, '2021-08-10 06:41:44', '2021-08-10 06:41:44'),
(35, 'jkffssss', 'dsssas@gmail.com', NULL, '$2y$10$J50ibSos7oTIc5vPloUSI.dtDacyhzjsFs2pT5qPseLwSYH3YWUSC', NULL, '2021-08-10 06:42:03', '2021-08-10 06:42:03'),
(37, 'jkffssss', 'dsssssas@gmail.com', NULL, '$2y$10$6dGxaYmlKJcRGmkJEAYsOOSdSl7rLKnEXptNXZLVNgbvrGmWErxs.', NULL, '2021-08-10 06:48:02', '2021-08-10 06:48:02'),
(38, 'jkffssss', 'dssssssas@gmail.com', NULL, '$2y$10$50PqdNW1OHVbxJxhPZ4h8.pl67l8fA/B6xaoNG0UeUQqb7uJnB6iu', NULL, '2021-08-10 06:49:07', '2021-08-10 06:49:07'),
(39, 'jkffssss', 'qw@gmail.com', NULL, '$2y$10$3hag0A.dJaccRr43qIvdCuEKIStentVS7RtG8lr2nIE.FSiQ8wdgi', NULL, '2021-08-10 06:50:12', '2021-08-10 06:50:12'),
(41, 'jkffssss', 'qwss@gmail.com', NULL, '$2y$10$IMDdIUZxL9B/wDpLcGmye.oyzpTrLAJ68NITNvJiY.6Vr85tuoxKe', NULL, '2021-08-10 06:52:32', '2021-08-10 06:52:32'),
(42, 'jkffssss', 'qwlss@gmail.com', NULL, '$2y$10$obU5CqqTrf7voLPlAWe3hetkDBAr1RTDI1MpRJ5B7HdRUvK6UcDne', NULL, '2021-08-10 06:54:56', '2021-08-10 06:54:56'),
(43, 'jkffssss', 'qwlsss@gmail.com', NULL, '$2y$10$uXWHxwRe3QNTRhbCCKfQRu2AOLIaIs/ziwLY8YscWGQ2BxS8LdTBa', NULL, '2021-08-10 07:05:17', '2021-08-10 07:05:17'),
(45, 'jkffssss', 'qwlssss@gmail.com', NULL, '$2y$10$vfVTlUNmk5iolPKDQ45/t.9F1mJl2.BUpOvkyZuj9gEFXQ89AnxPe', NULL, '2021-08-10 07:06:20', '2021-08-10 07:06:20'),
(47, 'jkffssss', 'qwlsssss@gmail.coms', NULL, '$2y$10$DG3cTe0CfnyHfgr.T.lgo.7FVPWPk2wSS4cZAzLCuZA4nPXsyGSSq', NULL, '2021-08-10 07:07:27', '2021-08-10 07:07:27'),
(49, 'jkffssss', 'ertert@gmail.coms', NULL, '$2y$10$01Uw1Xv.iVA7tbezplY6wOb95BGmLtRVpy3Vda6RkV51Mzz9ySALC', NULL, '2021-08-10 07:08:14', '2021-08-10 07:08:14'),
(50, 'jkffssss', 'aqa@gmail.coms', NULL, '$2y$10$x/77zgzPj5tTrN0d.uuPR.t2eo5VYV41oh3qNP5tQ.Xhrk7AEm8Sy', NULL, '2021-08-10 07:11:26', '2021-08-10 07:11:26'),
(51, 'jkffssss', 'aaws@gmail.coms', NULL, '$2y$10$NHBNI2C80CaswcVMIHRnmubpvkSERrJifaCy4o.QP3dSB7Lqnz.V2', NULL, '2021-08-10 07:12:24', '2021-08-10 07:12:24'),
(53, 'jkffssss', 'we@gmail.coms', NULL, '$2y$10$0lKTyQBz0pQiMG3l9R0TMuDXBbt4VAh6I5aQlAu5SMfXFYJNFq2Jy', NULL, '2021-08-10 07:12:55', '2021-08-10 07:12:55'),
(54, 'jkffssss', 'wse@gmail.coms', NULL, '$2y$10$ahMvZHu7ZGrbLx7o13qAv.Y04kAQwZvzwTPhnwopl6x6jx6SX.JGG', NULL, '2021-08-10 07:13:21', '2021-08-10 07:13:21'),
(55, 'jkffssss', 'wses@gmail.coms', NULL, '$2y$10$V03XU8wXY3DVLBtXFFWC0Op/9jdg0h8FUv.PWQIcEMQtYrolQSC/6', NULL, '2021-08-10 07:18:16', '2021-08-10 07:18:16'),
(56, 'jkffssss', 'sedf@gmail.coms', NULL, '$2y$10$5Qiqe6pAMhgsRgSpeeAPa.gPl5i1r3t1PAv.Decc/0UNnKzGklMM6', NULL, '2021-08-10 07:24:54', '2021-08-10 07:24:54'),
(57, 'jkffssss', 'sedaf@gmail.coms', NULL, '$2y$10$J0QnafBKWkpklIA3wMUG4OgxMJpcnQUhzu4xb9ButWqY16sJ9nmkO', NULL, '2021-08-10 22:16:59', '2021-08-10 22:16:59'),
(58, 'jkffssss', 'dfsdfsdf@gmail.coms', NULL, '$2y$10$TVC3luVMOv8EDoWH0JAmOO9A8vceaYJjtwPt.YZn.w93nNeA5Huwm', NULL, '2021-08-11 01:48:25', '2021-08-11 01:48:25'),
(59, 'harman', 'harman@gmail.com', NULL, '$2y$10$.MD/2v0sm5oEQcIPkMk2SenQojn0Oty0ykeoeH7fg1X1aNb96uXwW', NULL, '2021-08-11 01:50:47', '2021-08-11 02:15:01');

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
