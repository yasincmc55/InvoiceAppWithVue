-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 28 Haz 2025, 12:52:49
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `invoice_db`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `counters`
--

CREATE TABLE `counters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `prefix` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `counters`
--

INSERT INTO `counters` (`id`, `key`, `prefix`, `value`, `created_at`, `updated_at`) VALUES
(1, 'invoice', 'INV-', '20000', '2025-06-27 09:53:30', '2025-06-27 09:53:30');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `customers`
--

INSERT INTO `customers` (`id`, `firstname`, `lastname`, `email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Rosina Cremin I', 'Weldon Bergnaum', 'wward@yahoo.com', '6079 Devon Estates\nLake Marshall, NM 29105-4874', '2025-06-27 11:07:23', '2025-06-27 11:07:23'),
(2, 'Dejon Kuphal', 'Boyd Steuber', 'vschmitt@yahoo.com', '57484 Kuvalis Divide Suite 362\nEast Kirk, TX 47786-6599', '2025-06-27 11:07:23', '2025-06-27 11:07:23'),
(3, 'Mr. Kristopher Wolff', 'Addie Welch', 'jaydon44@mclaughlin.net', '511 Royal Meadow\nWest Jeremie, OK 03059-7391', '2025-06-27 11:07:23', '2025-06-27 11:07:23'),
(4, 'Yasmine Hane', 'Karelle Klocko', 'iliana.marquardt@jenkins.com', '9402 Barney Walk\nPort Tessport, PA 55211', '2025-06-27 11:07:23', '2025-06-27 11:07:23'),
(5, 'Mr. Granville Runte', 'Wilmer Rath', 'ashlee.jaskolski@deckow.com', '817 Kaya Plaza\nSkilesfort, FL 10216', '2025-06-27 11:07:23', '2025-06-27 11:07:23'),
(6, 'Savanah Pfannerstill', 'Greyson Bauch PhD', 'vhaley@yahoo.com', '67501 Crona Points Suite 785\nWalkerburgh, MN 16303', '2025-06-27 11:07:23', '2025-06-27 11:07:23'),
(7, 'Prof. Jailyn Hills', 'Prof. Otis Crooks', 'fhegmann@fay.biz', '9158 Dorthy Gardens Apt. 215\nNew Jerry, DE 26235-1471', '2025-06-27 11:07:23', '2025-06-27 11:07:23'),
(8, 'Miss Lysanne O\'Kon', 'Prof. Santina Harris II', 'madge23@hessel.com', '844 Altenwerth Vista Apt. 753\nGleasonside, ID 25088', '2025-06-27 11:07:23', '2025-06-27 11:07:23'),
(9, 'Patsy Effertz', 'Anthony Monahan', 'mccullough.laura@predovic.net', '6951 Hackett Pike Suite 536\nNew Lizeth, NY 76536', '2025-06-27 11:07:23', '2025-06-27 11:07:23'),
(10, 'Fay Waelchi Jr.', 'Mr. Federico Paucek MD', 'omiller@green.com', '6821 Kayley Mission Suite 172\nLake Dejonview, SC 51713-7495', '2025-06-27 11:07:23', '2025-06-27 11:07:23'),
(11, 'Jovany Kilback', 'Miss Estella Smith', 'harry.boyer@kreiger.biz', '852 Crona Station Apt. 535\nGregoryshire, LA 73999-8607', '2025-06-27 11:33:23', '2025-06-27 11:33:23'),
(12, 'Maximillian Dach', 'Ruben Hill', 'newton.ratke@marquardt.biz', '64011 Frami Drive\nNew Kaden, NM 25611', '2025-06-27 11:33:24', '2025-06-27 11:33:24'),
(13, 'Prof. Bobbie Langosh', 'Kiara Altenwerth', 'eriberto52@wolf.com', '981 Cummings Junction Suite 911\nEast Madisynfort, SC 46801', '2025-06-27 11:33:24', '2025-06-27 11:33:24'),
(14, 'Dr. Marianna Ratke', 'Reese Harvey', 'camren.adams@yahoo.com', '2475 Watsica Groves\nPort Concepcionbury, MD 28105-6623', '2025-06-27 11:33:24', '2025-06-27 11:33:24'),
(15, 'Caesar Parisian', 'Kacie Hackett', 'jones.raymond@bayer.com', '2888 Fahey Shoals\nPort Erika, TN 23398', '2025-06-27 11:33:24', '2025-06-27 11:33:24'),
(16, 'Joanny Skiles III', 'Micaela Kuvalis', 'jenkins.darrel@hotmail.com', '1207 Hettinger Brook Apt. 611\nSouth Reva, NH 18380', '2025-06-27 11:33:24', '2025-06-27 11:33:24'),
(17, 'Prof. Kale Hettinger V', 'Ottilie Bergnaum', 'martine15@gmail.com', '72964 Weissnat Crest Apt. 350\nWest Romanborough, AZ 96629-7871', '2025-06-27 11:33:24', '2025-06-27 11:33:24'),
(18, 'Dr. Velma Jacobson I', 'Isaac Jerde', 'lorenzo10@yahoo.com', '2914 Peter Brook\nPort Brisabury, DE 21948', '2025-06-27 11:33:24', '2025-06-27 11:33:24'),
(19, 'Geovanny Conn', 'Mr. Cooper Mertz', 'elvis83@cruickshank.com', '858 Heller Drives\nPort Idell, VT 46125-6469', '2025-06-27 11:33:24', '2025-06-27 11:33:24'),
(20, 'Christopher Bernhard', 'Marielle Green DVM', 'tmorissette@damore.biz', '611 Graciela Keys\nNew Maria, NY 53147', '2025-06-27 11:33:24', '2025-06-27 11:33:24');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
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
-- Tablo için tablo yapısı `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` varchar(255) NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `due_date` date NOT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `terms_and_conditions` text NOT NULL,
  `sub_total` double NOT NULL,
  `discount` double NOT NULL DEFAULT 0,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `invoices`
--

INSERT INTO `invoices` (`id`, `number`, `customer_id`, `date`, `due_date`, `reference`, `terms_and_conditions`, `sub_total`, `discount`, `total`, `created_at`, `updated_at`) VALUES
(1, '174', 2, '2023-11-13', '1980-01-29', 'REF-56', 'Odit asperiores laborum aut reprehenderit. Consequuntur omnis est laborum.', 36, 57, 1009, '2025-06-27 11:34:42', '2025-06-27 11:34:42'),
(2, '141', 4, '2024-02-05', '2001-03-09', 'REF-85', 'Non aut voluptate debitis. Officiis explicabo ea ut corporis quo. Iusto eos culpa iusto saepe nihil necessitatibus.', 44, 61, 1360, '2025-06-27 11:34:42', '2025-06-27 11:34:42'),
(3, '358', 8, '1991-10-19', '2022-07-11', 'REF-190', 'Corporis vero cum enim omnis quam veritatis. Architecto vitae omnis ex. Corrupti et recusandae cumque deleniti odio odit.', 15, 74, 1262, '2025-06-27 11:34:42', '2025-06-27 11:34:42'),
(4, '313', 9, '2018-03-27', '2004-08-05', 'REF-46', 'Hic in impedit exercitationem et. Reprehenderit mollitia non rem id aut. Aut repellendus non itaque temporibus consequatur.', 41, 81, 1141, '2025-06-27 11:34:42', '2025-06-27 11:34:42'),
(5, '967', 8, '1975-04-10', '1978-06-26', 'REF-361', 'Facilis neque fuga et adipisci rerum est excepturi. Beatae praesentium unde maxime quae deserunt. Voluptas quia excepturi alias neque.', 95, 60, 1658, '2025-06-27 11:34:42', '2025-06-27 11:34:42'),
(6, '744', 7, '2016-04-30', '2007-12-29', 'REF-35', 'Aut natus vitae qui dolor voluptatem. Nam sed molestiae aliquid enim. Rerum aut ullam deleniti dicta.', 29, 56, 1023, '2025-06-27 11:34:42', '2025-06-27 11:34:42'),
(7, '94', 18, '1997-08-02', '1970-09-24', 'REF-119', 'Nostrum et vitae voluptatum nam maiores. Aut voluptatum omnis et sint eaque.', 44, 94, 1676, '2025-06-27 11:34:42', '2025-06-27 11:34:42'),
(8, '798', 18, '1994-09-16', '2006-02-06', 'REF-353', 'Non voluptatibus ipsam dicta ut porro debitis. Earum atque delectus quis quasi qui. Voluptates fuga aut sunt ratione voluptatibus.', 23, 42, 1896, '2025-06-27 11:34:42', '2025-06-27 11:34:42'),
(9, '892', 8, '1996-10-30', '1992-01-12', 'REF-238', 'Voluptas vel cum ab magni veniam distinctio impedit. Doloremque nihil ex dignissimos autem.', 100, 61, 195, '2025-06-27 11:34:42', '2025-06-27 11:34:42'),
(10, '872', 8, '1978-10-16', '1982-10-09', 'REF-282', 'Aspernatur autem consequatur amet autem modi unde. Ducimus eum aliquid quam dolor occaecati delectus quis id. Quod nihil voluptas aut aut quia sunt molestias.', 70, 95, 390, '2025-06-27 11:34:42', '2025-06-27 11:34:42');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `unit_price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `invoice_id`, `product_id`, `unit_price`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 2, 14, 4358, 5, '2025-06-27 11:48:55', '2025-06-27 11:48:55'),
(2, 5, 6, 3379, 3, '2025-06-27 11:48:55', '2025-06-27 11:48:55'),
(3, 6, 8, 4535, 3, '2025-06-27 11:48:55', '2025-06-27 11:48:55'),
(4, 7, 9, 733, 1, '2025-06-27 11:48:55', '2025-06-27 11:48:55'),
(5, 4, 2, 1443, 3, '2025-06-27 11:48:55', '2025-06-27 11:48:55'),
(6, 2, 5, 736, 2, '2025-06-27 11:48:55', '2025-06-27 11:48:55'),
(7, 9, 4, 4202, 3, '2025-06-27 11:48:55', '2025-06-27 11:48:55'),
(8, 7, 3, 715, 4, '2025-06-27 11:48:55', '2025-06-27 11:48:55'),
(9, 5, 12, 2222, 3, '2025-06-27 11:48:55', '2025-06-27 11:48:55'),
(10, 4, 13, 1552, 3, '2025-06-27 11:48:55', '2025-06-27 11:48:55');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2025_06_27_122707_create_counters_table', 1),
(12, '2025_06_27_130352_create_products_table', 2),
(14, '2025_06_27_135025_create_customers_table', 3),
(15, '2025_06_27_141114_create_invoices_table', 4),
(16, '2025_06_27_143610_create_invoice_items_table', 5);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_code` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `unit_price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `products`
--

INSERT INTO `products` (`id`, `item_code`, `description`, `unit_price`, `created_at`, `updated_at`) VALUES
(1, 'IC-1000445', 'Name of Product377', 11, '2025-06-27 10:34:31', '2025-06-27 10:34:31'),
(2, 'IC-1000232', 'Name of Product88', 26, '2025-06-27 10:34:31', '2025-06-27 10:34:31'),
(3, 'IC-1000339', 'Name of Product154', 95, '2025-06-27 10:34:31', '2025-06-27 10:34:31'),
(4, 'IC-1000259', 'Name of Product223', 43, '2025-06-27 10:34:31', '2025-06-27 10:34:31'),
(5, 'IC-1000377', 'Name of Product333', 86, '2025-06-27 10:34:31', '2025-06-27 10:34:31'),
(6, 'IC-100036', 'Name of Product113', 26, '2025-06-27 10:34:31', '2025-06-27 10:34:31'),
(7, 'IC-1000181', 'Name of Product463', 100, '2025-06-27 10:34:31', '2025-06-27 10:34:31'),
(8, 'IC-1000294', 'Name of Product271', 84, '2025-06-27 10:34:31', '2025-06-27 10:34:31'),
(9, 'IC-1000250', 'Name of Product272', 86, '2025-06-27 10:34:31', '2025-06-27 10:34:31'),
(10, 'IC-100085', 'Name of Product202', 94, '2025-06-27 10:34:31', '2025-06-27 10:34:31'),
(11, 'IC-1000111', 'Name of Product423', 36, '2025-06-27 10:55:36', '2025-06-27 10:55:36'),
(12, 'IC-1000434', 'Name of Product349', 40, '2025-06-27 10:55:36', '2025-06-27 10:55:36'),
(13, 'IC-100064', 'Name of Product195', 85, '2025-06-27 10:55:36', '2025-06-27 10:55:36'),
(14, 'IC-1000492', 'Name of Product158', 14, '2025-06-27 10:55:36', '2025-06-27 10:55:36'),
(15, 'IC-100096', 'Name of Product130', 81, '2025-06-27 10:55:36', '2025-06-27 10:55:36'),
(16, 'IC-1000306', 'Name of Product379', 80, '2025-06-27 10:55:36', '2025-06-27 10:55:36'),
(17, 'IC-1000425', 'Name of Product223', 15, '2025-06-27 10:55:36', '2025-06-27 10:55:36'),
(18, 'IC-1000117', 'Name of Product237', 91, '2025-06-27 10:55:36', '2025-06-27 10:55:36'),
(19, 'IC-1000437', 'Name of Product345', 62, '2025-06-27 10:55:36', '2025-06-27 10:55:36'),
(20, 'IC-100086', 'Name of Product370', 89, '2025-06-27 10:55:36', '2025-06-27 10:55:36'),
(21, 'IC-1000409', 'Name of Product163', 47, '2025-06-27 11:01:50', '2025-06-27 11:01:50'),
(22, 'IC-1000184', 'Name of Product99', 57, '2025-06-27 11:01:50', '2025-06-27 11:01:50'),
(23, 'IC-100034', 'Name of Product405', 77, '2025-06-27 11:01:50', '2025-06-27 11:01:50');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `counters_key_unique` (`key`);

--
-- Tablo için indeksler `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Tablo için indeksler `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invoices_number_unique` (`number`);

--
-- Tablo için indeksler `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Tablo için indeksler `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Tablo için indeksler `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_item_code_unique` (`item_code`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `counters`
--
ALTER TABLE `counters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
