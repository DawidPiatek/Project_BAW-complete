-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Cze 16, 2024 at 09:50 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_rental_system`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('a75f3f172bfb296f2e10cbfc6dfc1883', 'i:2;', 1718559088),
('a75f3f172bfb296f2e10cbfc6dfc1883:timer', 'i:1718559088;', 1718559088);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `photo1` text NOT NULL,
  `photo2` text NOT NULL,
  `brand` varchar(30) NOT NULL,
  `model` smallint(6) NOT NULL,
  `fuel_type` varchar(15) NOT NULL,
  `price` float NOT NULL,
  `gearbox` varchar(15) NOT NULL,
  `available` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `photo1`, `photo2`, `brand`, `model`, `fuel_type`, `price`, `gearbox`, `available`) VALUES
(1, 'https://cdn.skoda-auto.com/images/sites/plpl11-v2/110388b2-f972-474b-8d1f-5419584f8719/1145a71803e57a8307d99f23d3a7fd38/ModelCharacterGalleryModule/7632a1f0aa516594d6a0e94356eefae7250acf63669750b30971a08237c5496b/Default_bp1200_1.webp', 'https://cdn.skoda-auto.com/images/sites/plpl11-v2/d325c3ec-0b33-43bb-9d00-46375929ae23/cc603c57aad59a056656a9e9cbc61bbe/ModelCharacterGalleryModule/7632a1f0aa516594d6a0e94356eefae7250acf63669750b30971a08237c5496b/Default_bp1200_1.webp', 'Skoda Fabia', 2023, 'Benzyna', 80, 'manualna', 4),
(2, 'https://scene7.toyota.eu/is/image/toyotaeurope/cors0002a_web_2023:Large-Landscape?ts=1706198784224&resMode=sharp2&op_usm=1.75,0.3,2,0', 'https://scene7.toyota.eu/is/image/toyotaeurope/cors0003a_web_2023:Medium-Landscape?ts=1706198796525&resMode=sharp2&op_usm=1.75,0.3,2,0', 'Toyota Corolla', 2022, 'Hybryda', 90, 'automat', 1),
(3, 'https://www.kia.com/content/dam/kwcms/kme/global/en/assets/vehicles/kia-sportage-nq5-my22/discover/kia-sportage-ice-gls-my22-elp-gallery.jpg', 'https://www.kia.com/content/dam/kwcms/kme/global/en/assets/vehicles/kia-sportage-nq5-my22/discover/kia-sportage-hev-gtl-my22-design-exterior-carousel-bold-and-daring.jpg', 'Kia Sportage', 2023, 'Benzyna', 120, 'automat', 2),
(4, 'https://assets.volkswagen.com/is/image/volkswagenag/PA4724_passat_gallery_f-cc_16-9Zml0PWNyb3AsMSZmbXQ9d2VicCZxbHQ9Nzkmd2lkPTE4MDAmaGVpPTEwODAmYWxpZ249MC4wMCwwLjAwJmJmYz1vZmYmYmEyYQ==', 'https://assets.volkswagen.com/is/image/volkswagenag/PA4723_passat-gallery_f-cc_4-3?Zml0PWNyb3AsMSZmbXQ9d2VicCZxbHQ9Nzkmd2lkPTgwMCZoZWk9NjAwJmFsaWduPTAuMDAsMC4wMCZiZmM9b2ZmJjQ3M2E=', 'Volkswagen Passat', 2023, 'Olej napędowy', 100, 'manualna', 2),
(5, 'https://www.citroen.pl/content/dam/citroen/master/b2c/models/new-c3-2023/ice/gallery/GALLERY_DISTINCTIVE_02_2880x1152.jpg', 'https://www.citroen.pl/content/dam/citroen/master/b2c/models/new-c3-2023/ice/gallery/GALLERY_DISTINCTIVE_01_2880x1152.jpg', 'Citroen C3', 2024, 'Benzyna', 70, 'manualna', 5),
(6, 'https://www.ford.pl/content/dam/guxeu/rhd/central/cars/2021-focus/launch/gallery/exterior/ford-focus-mca-c519-eu-STL_01_C519_Focus_Ext_Front_3_4_Dynamic_2_7-9x8-1200x1066_gt.jpg.renditions.small.jpeg', 'https://www.ford.pl/content/dam/guxeu/rhd/central/cars/2021-focus/launch/gallery/exterior/ford-focus-mca-c519-eu-STL_03_C519_Focus_Ext_Rear_3_4_Static-9x8-1200x1066_gt.jpg.renditions.small.jpeg', 'Ford Focus', 2021, 'Hybrydowy', 80, 'manualana', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `failed_jobs`
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
-- Struktura tabeli dla tabeli `migrations`
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_06_172423_create_cars_table', 1),
(6, '2023_02_06_172523_create_rentals_table', 1),
(7, '2024_06_08_104843_create_cache_table', 2),
(8, '0001_01_01_000000_create_users_table', 3),
(9, '0001_01_01_000001_create_cache_table', 3),
(10, '0001_01_01_000002_create_jobs_table', 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `personal_access_tokens`
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
-- Struktura tabeli dla tabeli `rentals`
--

CREATE TABLE `rentals` (
  `id` int(11) NOT NULL,
  `rental_date` date NOT NULL,
  `return_date` date NOT NULL,
  `price` float NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `car_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rentals`
--

INSERT INTO `rentals` (`id`, `rental_date`, `return_date`, `price`, `user_id`, `car_id`) VALUES
(6, '2024-06-17', '2024-06-20', 270, 2, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `telephone`, `email`, `password`) VALUES
(2, 'abc', 'abc', '9876543210', 'test1@test.pl', '$2a$10$rxX1uScaGB9HIGxH/f.dyuCOo3yobxmjhpTKRVLYq54gyLmqXtkxG'),
(3, 'admin', 'admin', '4569871230', 'admin@gmail.com', '$2a$10$1Iq9VmZQ1QPUuy1.j4ljauxWqJ4dNtlopnVJkqK3zY5fSTjcB9zE2');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeksy dla tabeli `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeksy dla tabeli `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeksy dla tabeli `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeksy dla tabeli `rentals`
--
ALTER TABLE `rentals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `car_id` (`car_id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

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
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rentals`
--
ALTER TABLE `rentals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rentals`
--
ALTER TABLE `rentals`
  ADD CONSTRAINT `rentals_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `rentals_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
