-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3309
-- Generation Time: May 18, 2023 at 08:18 AM
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
-- Database: `code_pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `avatar`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Preston', 'Manuela', 'Ted98@gmail.com', '894.053.4055 x18529', '69793 Kaia Camp', 'nostrum fuga excepturi', 3, '2023-05-16 04:49:34', '2023-05-16 08:27:41'),
(2, 'Trisha', 'Trycia', 'Johathan38@gmail.com', '609-662-4314 x52714', '0547 Adams Shores', 'in cumque quo', 8, '2023-05-16 10:41:30', '2023-05-17 04:01:08'),
(3, 'Carmen', 'Carolyn', 'Letitia_Wolf@hotmail.com', '781.795.1954 x4498', '65843 Teresa Way', 'qui sit voluptas', 5, '2023-05-17 03:42:28', '2023-05-16 21:04:43'),
(4, 'Arnaldo', 'Eriberto', 'Johanna_Flatley66@yahoo.com', '917.423.6299 x6128', '95622 Cristian Lights', 'quo ut sed', 12, '2023-05-16 10:26:31', '2023-05-16 12:08:18'),
(5, 'Allie', 'Christop', 'Minerva11@yahoo.com', '1-378-107-1107 x046', '42659 Else Alley', 'laboriosam dolores architecto', 4, '2023-05-16 19:59:47', '2023-05-16 14:03:54'),
(6, 'Daren', 'Lurline', 'Jaydon.Abernathy@yahoo.com', '800.317.2896', '3126 Torphy Lodge', 'voluptatum temporibus aperiam', 3, '2023-05-17 01:03:25', '2023-05-16 11:32:22'),
(7, 'Genesis', 'Antone', 'Solon.Rath49@gmail.com', '693-407-8913', '0766 Bogisich Mountain', 'nostrum labore deserunt', 3, '2023-05-16 19:24:09', '2023-05-16 13:07:03'),
(8, 'Marquise', 'Leora', 'Mekhi_Jones44@hotmail.com', '(620) 927-2477 x075', '69019 Rusty Rue', 'quod in ratione', 14, '2023-05-16 11:39:06', '2023-05-16 05:54:45'),
(9, 'Destin', 'Wilbert', 'Ramiro60@hotmail.com', '943-877-9774 x1992', '40677 Kiehn Fork', 'qui quam quis', 10, '2023-05-16 13:43:33', '2023-05-16 14:38:34'),
(10, 'Nayeli', 'Ursula', 'Eula.Braun64@hotmail.com', '822.662.3274 x60635', '6378 Lukas Road', 'cupiditate deleniti quia', 1, '2023-05-16 06:53:38', '2023-05-16 21:47:50');

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
(4, '2020_04_19_081616_create_products_table', 1),
(5, '2020_04_22_181602_add_quantity_to_products_table', 1),
(6, '2020_04_24_170630_create_customers_table', 1),
(7, '2020_04_27_054355_create_settings_table', 1),
(8, '2020_04_30_053758_create_user_cart_table', 1),
(9, '2020_05_04_165730_create_orders_table', 1),
(10, '2020_05_04_165749_create_order_items_table', 1),
(11, '2020_05_04_165822_create_payments_table', 1),
(12, '2022_03_21_125336_change_price_column', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 4, 4, '2023-05-17 03:45:48', '2023-05-16 19:39:41'),
(2, 9, 9, '2023-05-16 12:46:55', '2023-05-16 09:36:52'),
(3, 3, 1, '2023-05-17 02:46:41', '2023-05-16 09:58:46'),
(4, 8, 1, '2023-05-16 17:34:52', '2023-05-16 18:25:26'),
(5, 1, 10, '2023-05-16 22:08:00', '2023-05-16 23:16:33'),
(6, 8, 12, '2023-05-16 04:09:51', '2023-05-16 16:00:15'),
(7, 9, 8, '2023-05-16 11:04:34', '2023-05-16 16:17:29'),
(8, 5, 12, '2023-05-16 04:19:30', '2023-05-16 21:42:53'),
(9, 6, 12, '2023-05-16 11:18:09', '2023-05-16 16:38:21'),
(10, 9, 2, '2023-05-16 08:49:53', '2023-05-16 12:27:16'),
(11, 10, 14, '2023-05-16 08:54:16', '2023-05-16 11:17:59'),
(12, 8, 5, '2023-05-16 21:29:08', '2023-05-17 00:46:49'),
(13, 7, 14, '2023-05-16 20:38:48', '2023-05-17 00:26:46'),
(14, 4, 7, '2023-05-16 12:27:50', '2023-05-16 08:38:18'),
(15, 6, 2, '2023-05-16 04:31:45', '2023-05-16 13:29:07'),
(16, 4, 6, '2023-05-16 14:59:54', '2023-05-17 04:06:48'),
(17, 2, 4, '2023-05-16 23:21:59', '2023-05-17 03:59:09'),
(18, 8, 5, '2023-05-16 14:55:50', '2023-05-17 03:21:17'),
(19, 10, 8, '2023-05-16 17:57:26', '2023-05-16 17:36:46'),
(20, 5, 7, '2023-05-16 19:26:47', '2023-05-16 21:38:35');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(14,4) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `price`, `quantity`, `order_id`, `product_id`, `created_at`, `updated_at`) VALUES
(51, '711.0000', 2, 1, 1, '2023-05-16 15:50:52', '2023-05-16 05:29:14'),
(52, '932.0000', 2, 1, 1, '2023-05-16 17:39:46', '2023-05-17 02:01:13'),
(53, '1009.0000', 2, 1, 1, '2023-05-16 19:29:45', '2023-05-17 00:33:53'),
(54, '826.0000', 2, 1, 1, '2023-05-16 10:36:40', '2023-05-16 14:50:22'),
(55, '1514.0000', 2, 1, 1, '2023-05-16 09:05:10', '2023-05-17 02:28:36'),
(56, '812.0000', 2, 1, 1, '2023-05-16 20:26:43', '2023-05-16 16:56:08'),
(57, '885.0000', 2, 1, 1, '2023-05-16 13:25:37', '2023-05-16 16:00:11'),
(58, '866.0000', 2, 1, 1, '2023-05-16 06:57:20', '2023-05-16 12:53:01'),
(59, '718.0000', 2, 1, 1, '2023-05-16 09:34:59', '2023-05-17 00:51:03'),
(60, '1053.0000', 2, 1, 1, '2023-05-16 05:28:56', '2023-05-16 22:57:07');

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(14,4) NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `amount`, `order_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '253.0000', 13, 2, '2023-05-16 11:38:57', '2023-05-17 07:11:45'),
(2, '366.0000', 19, 7, '2023-05-17 03:12:48', '2023-05-17 05:29:00'),
(3, '255.0000', 4, 3, '2023-05-16 15:55:51', '2023-05-16 19:38:12'),
(4, '283.0000', 5, 14, '2023-05-17 09:01:55', '2023-05-16 13:34:28'),
(5, '208.0000', 8, 13, '2023-05-16 15:46:22', '2023-05-17 09:17:54'),
(6, '250.0000', 10, 9, '2023-05-17 08:10:28', '2023-05-17 01:51:56'),
(7, '257.0000', 14, 3, '2023-05-17 06:59:49', '2023-05-16 22:23:33'),
(8, '267.0000', 16, 5, '2023-05-17 09:03:44', '2023-05-16 14:26:57'),
(9, '367.0000', 4, 14, '2023-05-16 13:09:12', '2023-05-16 10:04:46'),
(10, '348.0000', 18, 7, '2023-05-16 22:36:45', '2023-05-17 06:05:13'),
(11, '318.0000', 14, 11, '2023-05-16 10:44:29', '2023-05-16 14:39:45'),
(12, '270.0000', 8, 2, '2023-05-16 18:11:14', '2023-05-16 15:03:06'),
(13, '371.0000', 17, 9, '2023-05-16 14:16:21', '2023-05-16 19:30:45'),
(14, '244.0000', 3, 14, '2023-05-17 06:59:53', '2023-05-16 22:16:33'),
(15, '360.0000', 20, 9, '2023-05-16 20:35:48', '2023-05-16 23:15:55'),
(16, '271.0000', 20, 5, '2023-05-16 14:03:24', '2023-05-17 01:04:15'),
(17, '369.0000', 14, 7, '2023-05-16 22:10:12', '2023-05-16 12:42:58'),
(18, '303.0000', 1, 11, '2023-05-17 06:29:05', '2023-05-17 02:45:52'),
(19, '274.0000', 13, 6, '2023-05-16 10:53:49', '2023-05-16 14:55:35'),
(20, '334.0000', 12, 10, '2023-05-16 11:08:04', '2023-05-17 00:04:38');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(14,2) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `barcode`, `price`, `quantity`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Odysseus Soto', 'Dignissimos voluptat', 'products/oFc6BZejOAGlNCSdfCTxbzxeyznZZ8TFCMqlfdsO.jpg', 'Vel expedita dolorem', '710.00', 850, 1, '2023-05-09 11:07:50', '2023-05-09 11:07:50'),
(2, 'Lingonberry', 'Autem ducimus nihil qui omnis aliquid officia et enim commodi.', 'consequatur sed non', 'exercitationem nulla dolorem', '427.00', 22, 1, '2023-05-16 23:54:53', '2023-05-16 16:14:30'),
(3, 'Blackberry', 'Blanditiis quaerat eos cumque sed.', 'in facere excepturi', 'illo nihil beatae', '332.00', 15, 1, '2023-05-16 16:51:54', '2023-05-16 23:05:14'),
(4, 'Strawberry', 'Ut eos ipsam aspernatur et consectetur nihil qui amet.', 'temporibus dolorem voluptatum', 'voluptatem vitae ad', '115.00', 29, 1, '2023-05-16 09:31:45', '2023-05-16 13:12:36'),
(5, 'Banana', 'Mollitia ea consequuntur cumque doloribus recusandae at fugit suscipit quasi.', 'dolor aut quam', 'excepturi maiores aut', '103.00', 26, 0, '2023-05-17 03:00:34', '2023-05-17 01:23:10'),
(6, 'Tomato', 'Iste quo qui in odio voluptatem dolores reprehenderit.', 'officia ut consectetur', 'ad molestias fugiat', '181.00', 17, 1, '2023-05-17 01:54:47', '2023-05-16 09:45:29'),
(7, 'Pear', 'Dicta quibusdam aliquam.', 'consequatur nisi et', 'natus nam qui', '454.00', 26, 0, '2023-05-16 19:45:59', '2023-05-16 18:19:15'),
(8, 'Durian', 'Earum non voluptatem.', 'ut molestiae deleniti', 'ea iusto perspiciatis', '174.00', 30, 1, '2023-05-16 10:35:28', '2023-05-16 06:50:17'),
(9, '', 'Et nam ullam odit nemo iusto mollitia.', 'vitae id labore', 'et aut itaque', '113.00', 17, 1, '2023-05-16 07:20:26', '2023-05-17 00:11:10'),
(10, 'Lingonberry', 'Iste eos aut.', 'corrupti est non', 'hic at amet', '114.00', 19, 0, '2023-05-17 01:48:08', '2023-05-16 09:56:18'),
(11, 'Blackberry', 'Nihil et autem laudantium quo similique.', 'sint non quaerat', 'aspernatur unde fugit', '266.00', 26, 0, '2023-05-16 20:06:49', '2023-05-16 10:39:40'),
(12, 'Strawberry', 'Dolorum aut iste dolor distinctio labore voluptatem.', 'cupiditate dolore et', 'nobis labore minima', '232.00', 24, 1, '2023-05-16 11:37:07', '2023-05-16 09:26:28'),
(13, 'Banana', 'Laboriosam laudantium praesentium libero omnis eveniet tenetur dolores minus.', 'et voluptas nihil', 'nisi et architecto', '186.00', 18, 1, '2023-05-16 17:56:54', '2023-05-16 10:10:39'),
(14, 'Tomato', 'Exercitationem blanditiis excepturi consequatur architecto.', 'non sed ab', 'et cumque dolores', '80.00', 29, 1, '2023-05-16 04:49:49', '2023-05-16 11:35:45'),
(15, 'Pear', 'Et a asperiores ut.', 'aliquid sint qui', 'nesciunt provident recusandae', '450.00', 29, 1, '2023-05-16 22:36:06', '2023-05-16 20:46:08'),
(16, 'Durian', 'Deleniti qui mollitia dicta quidem quod.', 'quia sit iure', 'exercitationem omnis quo', '298.00', 25, 0, '2023-05-16 21:24:20', '2023-05-16 20:06:26'),
(17, '', 'Occaecati id nisi.', 'et qui tempore', 'saepe aliquid est', '187.00', 15, 1, '2023-05-16 18:43:42', '2023-05-16 11:07:33'),
(18, 'Lingonberry', 'Delectus ad atque provident dicta architecto aut et ex rerum.', 'officia temporibus necessitatibus', 'deleniti asperiores non', '172.00', 16, 1, '2023-05-16 18:26:56', '2023-05-16 22:29:43'),
(19, 'Blackberry', 'Blanditiis neque numquam enim optio.', 'impedit nostrum vel', 'possimus odio ut', '376.00', 28, 0, '2023-05-16 17:05:33', '2023-05-17 00:43:42'),
(20, 'Strawberry', 'Ut voluptatum iusto ratione.', 'delectus aut aut', 'enim cumque iste', '67.00', 21, 1, '2023-05-16 21:38:00', '2023-05-16 12:36:48'),
(21, 'Banana', 'Id suscipit sit harum quia ipsum maxime.', 'omnis sunt nihil', 'quidem reprehenderit modi', '229.00', 24, 0, '2023-05-17 02:24:53', '2023-05-16 06:54:15'),
(22, 'Tomato', 'Maxime qui ea aliquid.', 'omnis quos magnam', 'in dolorem non', '226.00', 18, 1, '2023-05-16 11:22:34', '2023-05-16 16:07:14'),
(23, 'Pear', 'Ipsa inventore minus rerum doloribus aperiam.', 'consequatur voluptatem quod', 'aperiam praesentium dolore', '492.00', 18, 0, '2023-05-16 14:00:24', '2023-05-16 05:22:38'),
(24, 'Durian', 'Illo harum cumque dolor iste et expedita quis sit.', 'molestiae et magni', 'asperiores expedita rerum', '295.00', 22, 1, '2023-05-16 23:29:47', '2023-05-17 00:56:05'),
(25, '', 'Est quia commodi.', 'voluptatibus asperiores delectus', 'voluptatem consequatur ullam', '175.00', 25, 0, '2023-05-16 20:42:12', '2023-05-16 10:48:32'),
(26, 'Lingonberry', 'Minus sed et consequatur aut.', 'necessitatibus nihil facilis', 'illum sed non', '173.00', 15, 0, '2023-05-16 06:56:11', '2023-05-16 20:48:16'),
(27, 'Blackberry', 'Et ut aut excepturi perspiciatis illum sapiente.', 'doloribus quo temporibus', 'est rerum rem', '83.00', 23, 1, '2023-05-16 16:59:40', '2023-05-16 17:17:29'),
(28, 'Strawberry', 'Et culpa quasi cupiditate consequuntur autem.', 'nihil vel rerum', 'eius debitis quia', '334.00', 24, 1, '2023-05-17 01:12:28', '2023-05-17 00:08:43'),
(29, 'Banana', 'Voluptate et consequatur ipsum praesentium reprehenderit et quasi perspiciatis ipsam.', 'aspernatur modi enim', 'cupiditate quos non', '436.00', 23, 1, '2023-05-16 22:35:08', '2023-05-16 06:39:07'),
(30, 'Tomato', 'Ut hic et accusantium sint suscipit.', 'enim sed minima', 'facere fugiat ea', '400.00', 28, 0, '2023-05-16 06:41:06', '2023-05-16 13:57:01'),
(31, 'Pear', 'Recusandae nam similique totam provident aut.', 'sint quasi veritatis', 'sit quasi et', '69.00', 29, 1, '2023-05-16 09:42:18', '2023-05-16 22:13:17'),
(32, 'Durian', 'Molestiae et dolorem.', 'consequatur commodi vel', 'veritatis aut dolorem', '242.00', 28, 0, '2023-05-17 02:32:10', '2023-05-16 07:15:39'),
(33, '', 'Quo nam hic.', 'consequuntur rerum dignissimos', 'minima nemo et', '232.00', 28, 1, '2023-05-16 09:43:48', '2023-05-17 04:10:32'),
(34, 'Lingonberry', 'Doloremque error et.', 'cupiditate ducimus deserunt', 'consequuntur laborum rerum', '142.00', 16, 1, '2023-05-16 06:02:44', '2023-05-16 15:30:00'),
(35, 'Blackberry', 'Quas rerum esse magnam aut vitae labore similique aut.', 'eos inventore eos', 'eum autem ullam', '117.00', 21, 0, '2023-05-16 09:44:50', '2023-05-16 08:45:47'),
(36, 'Strawberry', 'Consectetur veniam qui officia voluptatem et est labore dicta aliquid.', 'totam fuga aut', 'reprehenderit sunt incidunt', '301.00', 17, 1, '2023-05-16 16:28:50', '2023-05-16 20:17:47'),
(37, 'Banana', 'Sit impedit cupiditate dolorum qui dignissimos fuga vel id voluptatem.', 'dolorum praesentium veniam', 'est ut delectus', '245.00', 17, 1, '2023-05-16 17:42:06', '2023-05-16 22:23:40'),
(38, 'Tomato', 'Voluptatem dicta et eaque maiores et atque labore dignissimos quas.', 'recusandae et cum', 'explicabo soluta ducimus', '434.00', 21, 0, '2023-05-16 16:08:24', '2023-05-16 13:10:06'),
(39, 'Pear', 'Cupiditate quos est et molestiae ipsam eum.', 'architecto qui iure', 'natus explicabo deleniti', '436.00', 19, 1, '2023-05-16 13:14:15', '2023-05-16 21:17:53'),
(40, 'Durian', 'Reprehenderit ducimus aliquid.', 'libero voluptatem eveniet', 'error delectus consequatur', '314.00', 26, 1, '2023-05-16 13:26:52', '2023-05-16 17:05:22'),
(41, '', 'Autem voluptates et porro doloribus velit aperiam animi consectetur.', 'perspiciatis voluptatem aut', 'voluptatem accusamus soluta', '59.00', 24, 1, '2023-05-16 05:16:31', '2023-05-16 18:31:39');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'app_name', 'Laravel-POS', '2023-05-09 11:05:58', '2023-05-09 11:05:58'),
(2, 'currency_symbol', '$', '2023-05-09 11:05:58', '2023-05-09 11:05:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rabbi', 'Hossain', 'rabbi@gmail.com', NULL, '$2y$10$JN3oszkXTHCzqHh98aPT..KyOMkMSrIhP1.raQC9f6f2vJQmg8lla', 'CPd8RfISdX6ajtipdzzXZDp7cCpK85igrzMCGLwiinfPgUymoP9ILPn1a3Aq', '2023-05-09 11:05:58', '2023-05-09 11:05:58'),
(2, 'Sade', 'Davenport', 'voqurenuj@mailinator.com', NULL, '$2y$10$JN3oszkXTHCzqHh98aPT..KyOMkMSrIhP1.raQC9f6f2vJQmg8lla', NULL, '2023-05-17 03:51:35', '2023-05-17 03:51:35'),
(3, 'Salvador', 'Shepard', 'dyhyfegof@mailinator.com', NULL, '$2y$10$JN3oszkXTHCzqHh98aPT..KyOMkMSrIhP1.raQC9f6f2vJQmg8lla', NULL, '2023-05-17 03:53:04', '2023-05-17 03:53:04'),
(4, 'Salvador', 'Shepard', 'dyhyfegof@madilinator.com', '2023-05-17 04:00:14', '$2y$10$JN3oszkXTHCzqHh98aPT..KyOMkMSrIhP1.raQC9f6f2vJQmg8lla', NULL, '2023-05-17 03:59:50', '2023-05-17 04:00:14'),
(5, 'Gina', 'Brittany', 'Eloy_Torphy24@yahoo.com', '2023-05-16 19:07:18', '$2y$10$JN3oszkXTHCzqHh98aPT..KyOMkMSrIhP1.raQC9f6f2vJQmg8lla', 'ea esse nobis', '2023-05-17 00:17:45', '2023-05-17 00:47:11'),
(6, 'Rhiannon', 'Millie', 'Genesis95@yahoo.com', '2023-05-17 00:58:21', '$2y$10$JN3oszkXTHCzqHh98aPT..KyOMkMSrIhP1.raQC9f6f2vJQmg8lla', 'fugiat id voluptatem', '2023-05-16 22:52:19', '2023-05-16 09:41:22'),
(7, 'Ila', 'Effie', 'Arlie.Huel@hotmail.com', '2023-05-16 15:23:47', '$2y$10$JN3oszkXTHCzqHh98aPT..KyOMkMSrIhP1.raQC9f6f2vJQmg8lla', 'alias voluptatibus eaque', '2023-05-17 01:02:47', '2023-05-16 18:22:35'),
(8, 'Benjamin', 'Emery', 'Golda.Trantow@yahoo.com', '2023-05-16 07:40:16', '$2y$10$JN3oszkXTHCzqHh98aPT..KyOMkMSrIhP1.raQC9f6f2vJQmg8lla', 'sapiente et molestias', '2023-05-17 00:18:51', '2023-05-16 07:25:13'),
(9, 'Waldo', 'Joshua', 'Zoe.Ferry81@gmail.com', '2023-05-17 03:01:40', '$2y$10$JN3oszkXTHCzqHh98aPT..KyOMkMSrIhP1.raQC9f6f2vJQmg8lla', 'dicta dolores dolorum', '2023-05-16 18:56:27', '2023-05-16 13:29:21'),
(10, 'Melany', 'Gage', 'Torrance_Luettgen@gmail.com', '2023-05-16 14:10:38', '$2y$10$JN3oszkXTHCzqHh98aPT..KyOMkMSrIhP1.raQC9f6f2vJQmg8lla', 'officiis rerum aut', '2023-05-16 20:15:08', '2023-05-16 08:34:30'),
(11, 'Frederick', 'Alex', 'Destini_Beer28@hotmail.com', '2023-05-17 02:57:32', '$2y$10$JN3oszkXTHCzqHh98aPT..KyOMkMSrIhP1.raQC9f6f2vJQmg8lla', 'laudantium dolorem libero', '2023-05-16 11:59:28', '2023-05-16 11:53:37'),
(12, 'Oleta', 'Brady', 'Chet6@yahoo.com', '2023-05-16 23:39:26', '$2y$10$JN3oszkXTHCzqHh98aPT..KyOMkMSrIhP1.raQC9f6f2vJQmg8lla', 'quae provident sed', '2023-05-16 05:51:41', '2023-05-16 06:58:56'),
(13, 'Jerry', 'Maxwell', 'Shakira_Pfannerstill@hotmail.com', '2023-05-16 08:10:00', '$2y$10$JN3oszkXTHCzqHh98aPT..KyOMkMSrIhP1.raQC9f6f2vJQmg8lla', 'reiciendis est labore', '2023-05-16 20:32:16', '2023-05-16 21:04:22'),
(14, 'Fabian', 'Eleanora', 'Antwan.Aufderhar7@yahoo.com', '2023-05-17 01:49:22', '$2y$10$JN3oszkXTHCzqHh98aPT..KyOMkMSrIhP1.raQC9f6f2vJQmg8lla', 'dolor sunt voluptas', '2023-05-16 08:43:07', '2023-05-16 19:37:10');

-- --------------------------------------------------------

--
-- Table structure for table `user_cart`
--

CREATE TABLE `user_cart` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_user_id_foreign` (`user_id`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_order_id_foreign` (`order_id`),
  ADD KEY `payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_barcode_unique` (`barcode`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_cart`
--
ALTER TABLE `user_cart`
  ADD KEY `user_cart_user_id_foreign` (`user_id`),
  ADD KEY `user_cart_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_cart`
--
ALTER TABLE `user_cart`
  ADD CONSTRAINT `user_cart_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_cart_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
