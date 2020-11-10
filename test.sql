-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2020 at 08:47 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

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
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(33, '2014_10_12_000000_create_users_table', 1),
(34, '2014_10_12_100000_create_password_resets_table', 1),
(35, '2019_08_19_000000_create_failed_jobs_table', 1),
(38, '2020_10_09_064019_create_visits_table', 2);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jonas', 'Jonaitis', 'jonas@jonaitis.lt', NULL, '$2y$10$SmQPxlPcCP0Uq.7E8l9ZwOrgYlWwLUpx6.QqdEwv99QD0MI1oRQre', NULL, '2020-10-09 09:48:43', '2020-10-09 09:48:43'),
(2, 'tomas', 'tomaitis', 'tomas@tomaitis.lt', NULL, '$2y$10$.g1VCWxJKPXaarr7YUnZ4eHzsT2CEsh/FweOaoq0F9jlMfiGHGWJa', NULL, '2020-10-11 20:39:04', '2020-10-11 20:39:04'),
(223, 'Selina Will', 'King', 'heather.maggio@example.net', NULL, '$2y$10$e7acdeUHNd69ohF84.Y1de9tlO8sFKI2VZ29kkUve5b78XGgQpAN6', NULL, '2020-11-10 07:39:44', '2020-11-10 07:39:46'),
(224, 'Mr. Eusebio Stehr I', 'Heller', 'moshe.connelly@example.net', NULL, '$2y$10$Erz9qVzzhAjw12e2IC9fd.lmHv5mGimtqSGJqfSkRhjd2BbR38zIu', NULL, '2020-11-10 07:39:44', '2020-11-10 07:39:47'),
(225, 'Kathleen Herman', 'Kohler', 'trudie87@example.com', NULL, '$2y$10$iiXU6cQF2AWrfsvAam8W8Oq0pza7uFkhyA3es2sQaWKsy5J.QKHOW', NULL, '2020-11-10 07:39:44', '2020-11-10 07:39:47'),
(226, 'Michele Daniel', 'Jast', 'eveline53@example.org', NULL, '$2y$10$9z8tyw1pY/8zKooIQ06gfONnj.cRDbQqf3d46H9aWYFwz9v2.FzAu', NULL, '2020-11-10 07:39:44', '2020-11-10 07:39:47'),
(227, 'Dr. Emie Moore DVM', 'Volkman', 'lisandro.mills@example.net', NULL, '$2y$10$97NlB5Lw.xc2GYI.P3w1JOroZTFlk/XhCbY5RhkO9PvC4x2SkIq8m', NULL, '2020-11-10 07:39:44', '2020-11-10 07:39:47'),
(228, 'Dariana Lindgren', 'Hickle', 'betsy87@example.org', NULL, '$2y$10$FQtp7S3zDhhU3kDCsWGzmODvzkZcFAsreF3sZBgnW338T..daTK6i', NULL, '2020-11-10 07:39:44', '2020-11-10 07:39:47'),
(229, 'Prof. Violet Hintz Jr.', 'Paucek', 'pansy16@example.org', NULL, '$2y$10$C6qDa1SOFCcC7x3nSdfgNOM6edOk6IXFMH1pv/66aPyW7dv75NiX2', NULL, '2020-11-10 07:39:44', '2020-11-10 07:39:47'),
(230, 'Jaycee Reinger', 'Gusikowski', 'wquitzon@example.net', NULL, '$2y$10$SMs6ab8u8m0lGSjOC8B0X.FKlY/Ek0zriyBHQPSdnoLclz5Mq0Aca', NULL, '2020-11-10 07:39:44', '2020-11-10 07:39:47'),
(231, 'Mr. Robb Becker III', 'Greenfelder', 'pchamplin@example.org', NULL, '$2y$10$GWydrwawMgikTiMFz2FlOeBvHaHLzBUGld9rWtAMRDhAxHJ6FMpqO', NULL, '2020-11-10 07:39:44', '2020-11-10 07:39:47'),
(232, 'Dr. Jacky Donnelly Jr.', 'O\'Hara', 'schmidt.ted@example.com', NULL, '$2y$10$MxYBEL67czvJSUxN.b4lJeUnDS0y1H8lBu44ridIOdWJzwugpEf0S', NULL, '2020-11-10 07:39:44', '2020-11-10 07:39:47'),
(233, 'Trace Hauck PhD', 'Rowe', 'orowe@example.org', NULL, '$2y$10$dfZRhDugzC9y28w70.k4heomt.uqgf7TBl6YqztRReagrTM9TYjay', NULL, '2020-11-10 07:39:44', '2020-11-10 07:39:47'),
(234, 'Sammie Huels', 'Halvorson', 'funk.kenyon@example.com', NULL, '$2y$10$bkajVFlrixwURin/9zKhquO5xrkrLOzabX8xNE4NTfKu5PdApkhvq', NULL, '2020-11-10 07:39:44', '2020-11-10 07:39:47'),
(235, 'Miss Herta Bednar DDS', 'Wuckert', 'sally63@example.com', NULL, '$2y$10$pBsgdMdeNDdBxR/Xojw3vOP1iVR9RAWRJF7vZsEx6K1pNBfgg4XkW', NULL, '2020-11-10 07:39:44', '2020-11-10 07:39:47'),
(236, 'Jakob Mayert', 'Gulgowski', 'tjohns@example.org', NULL, '$2y$10$KQzSy4PDwWvKHQoIxWQ9..4djP7gJ/rj9jbB.RLW041Bv9suDXd7W', NULL, '2020-11-10 07:39:45', '2020-11-10 07:39:47'),
(237, 'Elyse Lindgren', 'Olson', 'piper.sawayn@example.net', NULL, '$2y$10$WRa1SpLzjaHv4IJN1zjZUOGyQQikahQ8IDR3WKnCbYxI8m4n8ZdPi', NULL, '2020-11-10 07:39:45', '2020-11-10 07:39:47'),
(238, 'Laney Boyle DVM', 'Thiel', 'yundt.lilyan@example.com', NULL, '$2y$10$M/uvFbnMd2gptREGXmi2buax8J973GIznsfw800JnK/qvnC1ndMJC', NULL, '2020-11-10 07:39:45', '2020-11-10 07:39:47'),
(239, 'Yvonne Hudson', 'Huel', 'gpadberg@example.org', NULL, '$2y$10$k5Vip5g8U56MrZo5.gNgIOtxlIvLj1fXPmJC2200hkInM57UYbCC6', NULL, '2020-11-10 07:39:45', '2020-11-10 07:39:47'),
(240, 'Prof. Clifton Von', 'Gislason', 'elmira36@example.com', NULL, '$2y$10$hibCT7CGb1wF5y3.64SDM.bCBsAcyByaerzRZVtfe8tuoHvTjiOaS', NULL, '2020-11-10 07:39:45', '2020-11-10 07:39:47'),
(241, 'Cristina Pacocha', 'Gutkowski', 'emmett.schiller@example.com', NULL, '$2y$10$BtzrDE/PzULoD3XCZfE6hukuW61pAAN/heTyAYbb1oxR32Kuhacb.', NULL, '2020-11-10 07:39:45', '2020-11-10 07:39:47'),
(242, 'Josh McLaughlin', 'Jones', 'maggio.arvid@example.com', NULL, '$2y$10$UT3gTEHU3V/bdjfz2EUPauAbW4upoOcyqt08ye9uwnedDZMbMqdPe', NULL, '2020-11-10 07:39:45', '2020-11-10 07:39:47'),
(243, 'Dr. Beatrice Gleason', 'Hansen', 'hkertzmann@example.com', NULL, '$2y$10$msbOj9YfrovvJZZsBKvRzuJf5UQ7dXMmBr.mi0DJXyJIS9aW/7Wya', NULL, '2020-11-10 07:39:45', '2020-11-10 07:39:47'),
(244, 'Freida Emmerich', 'Schmidt', 'antonietta.lakin@example.com', NULL, '$2y$10$3oWG9.0RS3du4GegEWaOv.8D5lwH44GzmDPHHshpnd/KwYF9mRQ12', NULL, '2020-11-10 07:39:45', '2020-11-10 07:39:47'),
(245, 'Lily Kunde', 'Mraz', 'amarks@example.net', NULL, '$2y$10$w9wolOsuvwrhsz9duOFM8OPotAgaIlyFNiOyKnwaym0OjBTHQpYPC', NULL, '2020-11-10 07:39:45', '2020-11-10 07:39:47'),
(246, 'Dr. Bryon Davis DVM', 'Luettgen', 'frances.turner@example.org', NULL, '$2y$10$JC8kQ3gXf0BQpTLgWmtHlub8wTRS6t3jLxWmt5sDPis4mobuOMsyi', NULL, '2020-11-10 07:39:45', '2020-11-10 07:39:47'),
(247, 'Josephine O\'Conner', 'Ziemann', 'lydia.hoppe@example.org', NULL, '$2y$10$0/FvKpz4vnOtMKULl/lYRue9pvvLRBWGR9nynE5O..P/LeeZ5IY4m', NULL, '2020-11-10 07:39:45', '2020-11-10 07:39:47'),
(248, 'Mercedes Schroeder', 'Goodwin', 'madelyn.tillman@example.org', NULL, '$2y$10$gvS7LkbdDL9a6yoZOfDsJOJHGAPq0Ue9zPGPybhLxMJhfJw158DkG', NULL, '2020-11-10 07:39:45', '2020-11-10 07:39:47'),
(249, 'Prof. Ethyl Dibbert MD', 'McDermott', 'ezra85@example.org', NULL, '$2y$10$CiBXzEXFpDX5COSjYb7rIeDd5XloKYwEmMEFXyOu7C8PccPnXp1y2', NULL, '2020-11-10 07:39:45', '2020-11-10 07:39:47'),
(250, 'Casey Parker', 'Zulauf', 'dkozey@example.com', NULL, '$2y$10$kZjv8RxHMuRQd7uc.9cbge1tfRqcemtbAXOizU8866EWbZwNF9b6m', NULL, '2020-11-10 07:39:45', '2020-11-10 07:39:47'),
(251, 'Korbin Weissnat I', 'Dibbert', 'ryleigh21@example.com', NULL, '$2y$10$StI3a6imjCTm8pKjLAL46.kyzpc7Xkb8hI1vjtS12MNi3iVihW7.i', NULL, '2020-11-10 07:39:45', '2020-11-10 07:39:47'),
(252, 'Alvis Beier', 'Stanton', 'carole93@example.org', NULL, '$2y$10$6QZgpFmpnCCNZGKIBhJmBuMArlhHB.QRtiNISUUDsubU8oStlIk8G', NULL, '2020-11-10 07:39:45', '2020-11-10 07:39:47'),
(253, 'Emilia O\'Hara III', 'Huels', 'reginald03@example.org', NULL, '$2y$10$UbuSW3NfgLobUoumSMYYYeTeLzf7Tlj2u8JHCHvFt5uVNQNzyqb/G', NULL, '2020-11-10 07:39:45', '2020-11-10 07:39:47'),
(254, 'Ms. Stefanie Von', 'Kulas', 'concepcion92@example.net', NULL, '$2y$10$g/UqZMCK/gRhobAs1PC3HeD.Qaj4qXjlpDVENpunhsYT5nK8/Dhri', NULL, '2020-11-10 07:39:45', '2020-11-10 07:39:47'),
(255, 'Mrs. Shawna Hoeger MD', 'Adams', 'allen.hamill@example.net', NULL, '$2y$10$wKAxm/H.Zqt1ABkHCX/FNuVidFYWnjQZ3uWw.bn3auznaOAjig9Ni', NULL, '2020-11-10 07:39:46', '2020-11-10 07:39:47'),
(256, 'Susan Gerlach Jr.', 'Pfannerstill', 'hrunte@example.net', NULL, '$2y$10$w1kXYGm31Cvls9BTNTryXex0sCRNRxlWf718k53NQT9rIg.m/7Cpy', NULL, '2020-11-10 07:39:46', '2020-11-10 07:39:47'),
(257, 'Elody Rau', 'Smith', 'wlemke@example.com', NULL, '$2y$10$cGFBFDg0GuoQu5c5fJ8sZ./kkqKGImbArmOo/H2xlEUHcfshSleMS', NULL, '2020-11-10 07:39:46', '2020-11-10 07:39:48'),
(258, 'Edd Kris', 'Wehner', 'tschmitt@example.com', NULL, '$2y$10$XUo7g39cWU6oel1O3EHPf.Jt7WVduTAuqGZEf8YT42P4QiSFVaSoS', NULL, '2020-11-10 07:39:46', '2020-11-10 07:39:48'),
(259, 'Carroll Luettgen', 'Bailey', 'lily14@example.com', NULL, '$2y$10$6NInoVUpbUoYTnj9W7YVieodHpSKWwJ5eeUdYyOFnLR6AefO0t5/e', NULL, '2020-11-10 07:39:46', '2020-11-10 07:39:48'),
(260, 'Archibald Beatty', 'Reilly', 'afarrell@example.net', NULL, '$2y$10$0U1s1URTJQjyQqi3UmNpB.ZvNLZx4/mmfngUd24Ufq80yA5MJpS8K', NULL, '2020-11-10 07:39:46', '2020-11-10 07:39:48'),
(261, 'Jay Wisoky', 'Koch', 'haleigh.leuschke@example.net', NULL, '$2y$10$ikTemlDDN/RryQ71AvshJukPFhP3U5eBmDVp654N27KFpkHpmeHIO', NULL, '2020-11-10 07:39:46', '2020-11-10 07:39:48'),
(262, 'Chelsea Stiedemann', 'Armstrong', 'sbeier@example.net', NULL, '$2y$10$c6DvmFmCwQJSyLC8FhA9juTxonj6X4USaOR9kKn2qQwWo0.KlgdWy', NULL, '2020-11-10 07:39:46', '2020-11-10 07:39:48'),
(263, 'Mr. Sylvester Johnson', 'Schultz', 'mayer.darlene@example.org', NULL, '$2y$10$m7Rf1suvrnBwJqYcPAtm.OdvgRzbLLSLNh3sV73qKqkqpWQ7/a1be', NULL, '2020-11-10 07:39:46', '2020-11-10 07:39:48'),
(264, 'Mr. Alford West', 'Rohan', 'armand.fritsch@example.net', NULL, '$2y$10$o.X.OUmpokhI3FXYrCyWw.7eWrtN6croSwaxIbJGF/AuHNK4hYaQe', NULL, '2020-11-10 07:39:46', '2020-11-10 07:39:48'),
(265, 'Emmy Okuneva', 'Kuvalis', 'jasmin.rau@example.org', NULL, '$2y$10$lwQt4tGpNgblH2Gk5ErmVOFo5N3YbqXpDXJyJC0jAXzkumZoDFkTa', NULL, '2020-11-10 07:39:46', '2020-11-10 07:39:48'),
(266, 'Royal Moore', 'Glover', 'dale.armstrong@example.org', NULL, '$2y$10$OEbiP1Fh8CmZ6Dn81ToxaeJxjtEAAal42fBQA9oUckPbStjDl4s5a', NULL, '2020-11-10 07:39:46', '2020-11-10 07:39:48'),
(267, 'Prof. Dominic Lang', 'Mayer', 'devan.weber@example.net', NULL, '$2y$10$mzl2WaRqZgTFwSfChW/diOzmR3UpDCr69LFHs9FemJVZsooVzHVBm', NULL, '2020-11-10 07:39:46', '2020-11-10 07:39:48'),
(268, 'Dr. Kody Lehner', 'Ryan', 'alyce.barton@example.net', NULL, '$2y$10$qwevR11LIlPlaZePwMAsKuE7OYVo607ZE4xXC3bmGF1Ca75TECU0G', NULL, '2020-11-10 07:39:46', '2020-11-10 07:39:48'),
(269, 'Tillman Moen', 'Fadel', 'lnicolas@example.net', NULL, '$2y$10$P3Gi.7zPBvcYc9ZkWRAniuozqTy9K26yFkPFvD0Fsx/GtcMITaQmK', NULL, '2020-11-10 07:39:46', '2020-11-10 07:39:48'),
(270, 'Jaycee Gislason MD', 'Heidenreich', 'aubree66@example.org', NULL, '$2y$10$3TI2EFaBDvsNmWFK./Ez5uDvcO/4jYEP052y4xvApnk1QeJabXsgG', NULL, '2020-11-10 07:39:46', '2020-11-10 07:39:48'),
(271, 'Reynold Daugherty', 'Bayer', 'marks.tanner@example.com', NULL, '$2y$10$KbjWhDHrUNm.xQO0jSpqvux6qbAw5UWWauiNz1Da2XGYhwtIdaQui', NULL, '2020-11-10 07:39:46', '2020-11-10 07:39:48'),
(272, 'Thalia Pollich', 'Gleichner', 'trantow.augusta@example.net', NULL, '$2y$10$zn40bgVSHswjM.cjjAHojOtMR45zMH5EE3dM7WfzyNudXWVWVOYxC', NULL, '2020-11-10 07:39:46', '2020-11-10 07:39:48'),
(273, 'Alf Heathcote', 'Keebler', 'hagenes.clara@example.net', NULL, '$2y$10$B7MCMswiA4WkeGpGq5qmbOESC17WugpU9650MiXeyLQT6.oKSluWq', NULL, '2020-11-10 07:46:25', '2020-11-10 07:46:28'),
(274, 'Filiberto Botsford', 'Lockman', 'rogahn.clementina@example.com', NULL, '$2y$10$GY6oc.rBxq0DDjbDzNfrKO628D9V5OUhNk2gw4GiR3hVSFwvu8o1.', NULL, '2020-11-10 07:46:25', '2020-11-10 07:46:28'),
(275, 'Korbin Little', 'Schaefer', 'amani.gerlach@example.org', NULL, '$2y$10$SOJmzkOEtYkFO82AvoqYsOK35NYHi5zshJSvBF2gusgb8mOtMlYf6', NULL, '2020-11-10 07:46:26', '2020-11-10 07:46:28'),
(276, 'Tad Graham', 'Rogahn', 'vella.sporer@example.net', NULL, '$2y$10$mckMTn/cHllJk4F1iZfyz.YdOC4NuFitEPR95cBqqlYdDoN3uxzgq', NULL, '2020-11-10 07:46:26', '2020-11-10 07:46:28'),
(277, 'Palma O\'Reilly', 'Macejkovic', 'dsipes@example.net', NULL, '$2y$10$CQxE68GYLGi8xZTuJlDx/OPKv1FliIqRznhmjgU6rG.B1BnJugW0W', NULL, '2020-11-10 07:46:26', '2020-11-10 07:46:28'),
(278, 'Rickie Aufderhar', 'Schiller', 'tkeebler@example.net', NULL, '$2y$10$BQicLchfJfYOV84RgnSvkOWhzUjEMu3IfCV8emD84wHIyRX/ZYfKS', NULL, '2020-11-10 07:46:26', '2020-11-10 07:46:28'),
(279, 'Cornelius Kuhlman', 'Wyman', 'swhite@example.org', NULL, '$2y$10$97x8tLHnlaHtubA0JoOI/uMOm4hgnGanVXgJwVl12yUEPMNTWY9F.', NULL, '2020-11-10 07:46:26', '2020-11-10 07:46:29'),
(280, 'Mr. Deshawn Kirlin Sr.', 'Ratke', 'jemmerich@example.net', NULL, '$2y$10$PFU8brmO73bSLntOFP/.xu9K78fYbKMwj80SMXuiKsPEi9jTxEQyy', NULL, '2020-11-10 07:46:26', '2020-11-10 07:46:29'),
(281, 'Laurie Luettgen', 'Cummings', 'ztremblay@example.net', NULL, '$2y$10$ti75Puu4NPsCHLUv24H5quKWgwWVdqhvNgbNK8WXSqNVk5D.9v/Gi', NULL, '2020-11-10 07:46:26', '2020-11-10 07:46:29'),
(282, 'Muhammad Smith', 'Hickle', 'zechariah77@example.net', NULL, '$2y$10$TX1EHJEgW8l.u2HQnY4vy.XijU19yeMJGoigKdbsWAzaWj..sOZBe', NULL, '2020-11-10 07:46:26', '2020-11-10 07:46:29'),
(283, 'Ariane Schmidt II', 'Kreiger', 'jazmin43@example.org', NULL, '$2y$10$GglUBL.h8EkGk11LXJDHcu8bpZyaR8dMnIdQ2TucYZ1mam56wDaC2', NULL, '2020-11-10 07:46:26', '2020-11-10 07:46:29'),
(284, 'Dr. Kaden Strosin Jr.', 'McLaughlin', 'quentin99@example.net', NULL, '$2y$10$upGW69.7eiLddL2MzinIxewvWZKAT19oUlw.vcNRvCeS07Nzg7puG', NULL, '2020-11-10 07:46:26', '2020-11-10 07:46:29'),
(285, 'Sylvan Kunze DVM', 'Fritsch', 'rory53@example.org', NULL, '$2y$10$se.3PeAI4uYASpNWrrSo6uLivQjBpMcT5eoP7l6fEq487TLY1wmUy', NULL, '2020-11-10 07:46:26', '2020-11-10 07:46:29'),
(286, 'Devon Jacobi', 'Rowe', 'hamill.izabella@example.net', NULL, '$2y$10$6UbEFLjO1obIJbxiRyq4V.siUNBkgr6h4.Zu2XQBPAw2QC5xXvv1K', NULL, '2020-11-10 07:46:26', '2020-11-10 07:46:29'),
(287, 'Glen Russel', 'Stark', 'pbrown@example.com', NULL, '$2y$10$L1is7wodf0bLU7swJiLsH.Z4ZBe2w4SmHTPFnothlbXYGUWz.N8cW', NULL, '2020-11-10 07:46:26', '2020-11-10 07:46:29'),
(288, 'Herminio Jerde', 'McGlynn', 'fprice@example.com', NULL, '$2y$10$wjPf5yP2g5idslQ2TyCQ9Oevk5peSg0.Zxnl4indnT8QqHddfucKS', NULL, '2020-11-10 07:46:26', '2020-11-10 07:46:29'),
(289, 'Dan Kozey Jr.', 'Block', 'ilangworth@example.net', NULL, '$2y$10$mjFQj792/RO9qIM/gLHb.unscVPHQuiErmnzLO0oGDghxqV1h/w4O', NULL, '2020-11-10 07:46:26', '2020-11-10 07:46:29'),
(290, 'Liliana Murphy', 'Hirthe', 'raymundo.emard@example.org', NULL, '$2y$10$cwyYlaQltu9baJQcSs7u4e7tNEW9DUq4KXnU8TPHs3L8Rqi7KW0F6', NULL, '2020-11-10 07:46:26', '2020-11-10 07:46:29'),
(291, 'Dina Jaskolski I', 'Emmerich', 'melvin.ferry@example.net', NULL, '$2y$10$NXqrqC05WjtZAo5RgtOV9umn3WU1CsL2DUK3h9ZKg5ragcXg9G4AC', NULL, '2020-11-10 07:46:26', '2020-11-10 07:46:29'),
(292, 'Dr. Axel Funk', 'Kuhn', 'elvie.witting@example.com', NULL, '$2y$10$WtS7TlI/ANuSaOymxGn4yeuKE4eJdNP1.jpM3R/IaSCuq9AeyMt9C', NULL, '2020-11-10 07:46:27', '2020-11-10 07:46:29'),
(293, 'Miss Sydnee Hickle', 'Feest', 'gracie93@example.org', NULL, '$2y$10$HhBUKq7UUg5zmiwFylGkPeESFgiyRTGEa4qWASE3/d41Uz9.Z.bAO', NULL, '2020-11-10 07:46:27', '2020-11-10 07:46:29'),
(294, 'Dahlia Heller Sr.', 'Mraz', 'gayle.crona@example.net', NULL, '$2y$10$Z9d5DvjE/tDH01gIhGWGxueDABEe0ceUlYqL1CiLUyxHABV9eqkTW', NULL, '2020-11-10 07:46:27', '2020-11-10 07:46:29'),
(295, 'Myrna Hane', 'Labadie', 'nweissnat@example.com', NULL, '$2y$10$tMg7hFopZLlvcnFyLUlTZuvELyWbx17R2A5GSAVbzz/64O37VObtS', NULL, '2020-11-10 07:46:27', '2020-11-10 07:46:29'),
(296, 'Barney Kohler', 'DuBuque', 'kub.myron@example.org', NULL, '$2y$10$DcGuhlgus5MIoz7W2EsjjeJKhtAvSJoKO.O5lYf0YOx4ilZ/5foAe', NULL, '2020-11-10 07:46:27', '2020-11-10 07:46:29'),
(297, 'Gwendolyn Bins III', 'Doyle', 'towne.lilliana@example.com', NULL, '$2y$10$eUtJ2pVkDKBnA/ncLcJ.1.ydS5ItM/Qf5nyr6xhvZXqjrX40uKuaC', NULL, '2020-11-10 07:46:27', '2020-11-10 07:46:29'),
(298, 'Barry Bahringer', 'Kuphal', 'francesca.cronin@example.com', NULL, '$2y$10$zyF2jHO.5DN2vJyCDm05z.Bb1KeIjgCaYKhKMblJAZ/OOjorYl51a', NULL, '2020-11-10 07:46:27', '2020-11-10 07:46:29'),
(299, 'Troy Wisozk', 'Swift', 'moriah.fritsch@example.net', NULL, '$2y$10$md5NrJ3OGwiQIH2jeXy9tO5r651Jr.UYOkdenpcsog7.JCPini5xG', NULL, '2020-11-10 07:46:27', '2020-11-10 07:46:30'),
(300, 'Aaron Vandervort', 'Block', 'paucek.jace@example.com', NULL, '$2y$10$iuntygTWZEtW.rgoiEDrT.Gg3GP83HiShnbu/T96awHVJJPjovcR2', NULL, '2020-11-10 07:46:27', '2020-11-10 07:46:30'),
(301, 'Prof. Mariana Bruen', 'Herzog', 'buckridge.heather@example.net', NULL, '$2y$10$MoD6icNCxqtRY14uVYHsX.EcxHgpiNT/EJjYe8XNd27lsluFdHIJ.', NULL, '2020-11-10 07:46:27', '2020-11-10 07:46:30'),
(302, 'Jerel Streich', 'Buckridge', 'qabbott@example.com', NULL, '$2y$10$zhiXr1kUXAXsVDYztCRCM.1.wBVKDdOjMfp6Ti5d5e3Sjxg0XlF.a', NULL, '2020-11-10 07:46:27', '2020-11-10 07:46:30'),
(303, 'Ms. Sienna Macejkovic', 'Gorczany', 'altenwerth.luisa@example.net', NULL, '$2y$10$lOdk4tfPmXHeJ5Mw.ARjheAAc.BQkqA7oRyiriZzPPpPDMhBoIgnu', NULL, '2020-11-10 07:46:27', '2020-11-10 07:46:30'),
(304, 'Victor Jenkins V', 'Corwin', 'heller.eldred@example.org', NULL, '$2y$10$Pdosyrwoz8.QIFJfP5tpF.JG04NwnuqxFTkXEbINZoMTDO94.fVC2', NULL, '2020-11-10 07:46:27', '2020-11-10 07:46:30'),
(305, 'Dakota Hudson', 'Wisozk', 'donato05@example.net', NULL, '$2y$10$lvOgzCOJeg4i037t.RYcmONhpqpfGeIADMuEkpYhAqOvJuwddNTA2', NULL, '2020-11-10 07:46:27', '2020-11-10 07:46:30'),
(306, 'Sammy Jones', 'Okuneva', 'bahringer.aniya@example.com', NULL, '$2y$10$YAS0mWeUf0p6CqEaq6H4IOZNxedXQYSfQ41VGZrFCy2kZM8Da7aRS', NULL, '2020-11-10 07:46:27', '2020-11-10 07:46:30'),
(307, 'Jarvis Effertz', 'Gerhold', 'savion72@example.org', NULL, '$2y$10$BX0G9obQbS2w0/cOeSdIsuUSC9MPTirqEEUh8kkqNIov.IHYxmGki', NULL, '2020-11-10 07:46:27', '2020-11-10 07:46:30'),
(308, 'Prof. Devan Blick I', 'Brekke', 'johathan41@example.com', NULL, '$2y$10$PU9h0ffbDfGk3XlIdF.Lw.Xq76qSr.NmC6rH4C.tRwRLsRBjp5B/G', NULL, '2020-11-10 07:46:27', '2020-11-10 07:46:30'),
(309, 'Kelsie Johnson V', 'Gerhold', 'ilindgren@example.com', NULL, '$2y$10$HIzNlGqMBu7z6oysnQMoie.EvwvEuAcbBSsJjgYrWmYBZ.zkPVtGm', NULL, '2020-11-10 07:46:27', '2020-11-10 07:46:30'),
(310, 'Ms. Rosella Weimann', 'Kub', 'garfield72@example.net', NULL, '$2y$10$CVAKqQvovvkcMHWi9XICK.njCRqDJyKY0u0ft5oGKF6lSca1jK//K', NULL, '2020-11-10 07:46:27', '2020-11-10 07:46:30'),
(311, 'Faye Welch', 'Treutel', 'bonnie.klein@example.net', NULL, '$2y$10$dyOYfBHoGMwp.gQXM7Y1I.qos1xaM0DDOz9chXH4RHz7NCZvqGTA6', NULL, '2020-11-10 07:46:28', '2020-11-10 07:46:30'),
(312, 'Dell Kemmer', 'Skiles', 'steuber.robb@example.org', NULL, '$2y$10$XFpgYggMBiANnoGLb2eT/uX/XqTyhQTJotnVhbX4BTxWk2VwuBzpi', NULL, '2020-11-10 07:46:28', '2020-11-10 07:46:30'),
(313, 'Omer Rosenbaum', 'Fay', 'katelin.kuhn@example.net', NULL, '$2y$10$3BOWgmwEf8GHcSQi74Sa/OBYujRe6FABcP53LJMysEcQWw0TCRkZG', NULL, '2020-11-10 07:46:28', '2020-11-10 07:46:30'),
(314, 'Vincenzo Gulgowski', 'Altenwerth', 'gusikowski.clarabelle@example.net', NULL, '$2y$10$eq.nLpONikRzWi4WGoreb.MfGDM.ZIOisVDniBxq4ex5zyI.oIp6e', NULL, '2020-11-10 07:46:28', '2020-11-10 07:46:30'),
(315, 'Lizzie Block', 'Mohr', 'rabshire@example.org', NULL, '$2y$10$YOKVLguhkOBRstimto.84.jvGpg3raeuzmxq623WU19B4VAwq1MF2', NULL, '2020-11-10 07:46:28', '2020-11-10 07:46:30'),
(316, 'Prof. Fanny Haag', 'Wehner', 'kilback.margarett@example.org', NULL, '$2y$10$Nph..cVtCD./Weyv8glu8OOjWHfxveMOl0KnOvDychmp7TMHz6qau', NULL, '2020-11-10 07:46:28', '2020-11-10 07:46:30'),
(317, 'Fae Flatley', 'Macejkovic', 'wilma.bruen@example.net', NULL, '$2y$10$iEdU2neCrf9AQRpRxsiYUOdI8KJWo2HwNXNk6qij44MDX04eBs9NK', NULL, '2020-11-10 07:46:28', '2020-11-10 07:46:30'),
(318, 'Mrs. Roslyn Prosacco', 'McClure', 'cali23@example.net', NULL, '$2y$10$nIlfO4kIFbL0oCgbggAMIesSKbMzgWf8swgp..zg9yXR5rkTyQc1i', NULL, '2020-11-10 07:46:28', '2020-11-10 07:46:30'),
(319, 'Petra Tillman', 'Lindgren', 'wintheiser.okey@example.com', NULL, '$2y$10$B891CgoEjRNc2A.Muz74QuCtJkzdWo25WpCZk./Kop.xAtUXPhT7q', NULL, '2020-11-10 07:46:28', '2020-11-10 07:46:30'),
(320, 'Noble Sawayn', 'Shields', 'hodkiewicz.rosa@example.org', NULL, '$2y$10$rxy/KyM0hD8yv8o2F6Qiief95xI8RQkL9UB5nG6I3dLULYNmPaHGG', NULL, '2020-11-10 07:46:28', '2020-11-10 07:46:30'),
(321, 'Destin Waelchi I', 'Swaniawski', 'connelly.xavier@example.org', NULL, '$2y$10$dUb9/M6LcqD3ICr0Tm9H1uMHWqwrrF7fN5DdIWG5Mb7S8qOnnIauW', NULL, '2020-11-10 07:46:28', '2020-11-10 07:46:31'),
(322, 'Julio O\'Reilly IV', 'O\'Hara', 'hugh.kling@example.org', NULL, '$2y$10$89RFCZ6iuJlsF5vhCaGY3uXtTa1mzD016BTYfrZocXZHTGNhlZmoG', NULL, '2020-11-10 07:46:28', '2020-11-10 07:46:31');

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time` datetime NOT NULL,
  `reservation_status` int(11) NOT NULL DEFAULT 0,
  `active` int(11) NOT NULL DEFAULT 0,
  `specialist_id` int(11) NOT NULL,
  `reservation_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visits`
--

INSERT INTO `visits` (`id`, `time`, `reservation_status`, `active`, `specialist_id`, `reservation_id`, `created_at`, `updated_at`) VALUES
(327, '2020-12-01 22:46:05', 0, 1, 264, 166, '2020-11-10 07:46:19', '2020-11-10 07:46:19'),
(328, '2020-11-16 14:57:11', 0, 0, 240, 308, '2020-11-10 07:46:20', '2020-11-10 07:46:20'),
(329, '2020-11-22 06:01:40', 0, 0, 230, 197, '2020-11-10 07:46:20', '2020-11-10 07:46:20'),
(330, '2020-11-28 18:38:36', 0, 1, 267, 161, '2020-11-10 07:46:20', '2020-11-10 07:46:20'),
(331, '2020-11-26 01:44:44', 0, 1, 249, 380, '2020-11-10 07:46:20', '2020-11-10 07:46:20'),
(332, '2020-12-07 02:37:21', 1, 1, 268, 331, '2020-11-10 07:46:20', '2020-11-10 07:46:20'),
(333, '2020-11-21 06:27:39', 1, 0, 257, 69, '2020-11-10 07:46:20', '2020-11-10 07:46:20'),
(334, '2020-12-03 08:27:26', 0, 0, 242, 79, '2020-11-10 07:46:20', '2020-11-10 07:46:20'),
(335, '2020-12-01 22:28:41', 0, 1, 234, 285, '2020-11-10 07:46:20', '2020-11-10 07:46:20'),
(336, '2020-11-28 22:04:08', 1, 1, 260, 18, '2020-11-10 07:46:20', '2020-11-10 07:46:20'),
(337, '2020-12-12 15:36:38', 0, 1, 236, 416, '2020-11-10 07:46:20', '2020-11-10 07:46:20'),
(338, '2020-11-10 14:09:41', 0, 1, 251, 28, '2020-11-10 07:46:20', '2020-11-10 07:46:20'),
(339, '2020-12-04 18:43:09', 0, 0, 239, 475, '2020-11-10 07:46:20', '2020-11-10 07:46:20'),
(340, '2020-11-22 16:07:52', 0, 0, 255, 204, '2020-11-10 07:46:20', '2020-11-10 07:46:20'),
(341, '2020-11-18 06:04:36', 0, 0, 232, 14, '2020-11-10 07:46:20', '2020-11-10 07:46:20'),
(342, '2020-12-11 15:03:36', 1, 1, 223, 287, '2020-11-10 07:46:20', '2020-11-10 07:46:20'),
(343, '2020-11-12 21:08:28', 0, 1, 231, 433, '2020-11-10 07:46:20', '2020-11-10 07:46:20'),
(344, '2020-11-16 01:21:13', 1, 1, 262, 320, '2020-11-10 07:46:20', '2020-11-10 07:46:20'),
(345, '2020-11-21 20:15:14', 1, 0, 252, 163, '2020-11-10 07:46:21', '2020-11-10 07:46:21'),
(346, '2020-11-28 22:17:36', 1, 1, 265, 335, '2020-11-10 07:46:21', '2020-11-10 07:46:21'),
(347, '2020-12-05 04:49:24', 1, 1, 250, 124, '2020-11-10 07:46:21', '2020-11-10 07:46:21'),
(348, '2020-12-09 06:44:37', 1, 1, 261, 339, '2020-11-10 07:46:21', '2020-11-10 07:46:21'),
(349, '2020-12-01 23:34:18', 1, 0, 232, 41, '2020-11-10 07:46:21', '2020-11-10 07:46:21'),
(350, '2020-11-20 19:32:43', 0, 0, 238, 462, '2020-11-10 07:46:21', '2020-11-10 07:46:21'),
(351, '2020-11-21 10:18:49', 1, 0, 267, 251, '2020-11-10 07:46:21', '2020-11-10 07:46:21'),
(352, '2020-12-14 13:57:01', 1, 0, 261, 176, '2020-11-10 07:46:21', '2020-11-10 07:46:21'),
(353, '2020-11-20 23:51:47', 1, 0, 236, 78, '2020-11-10 07:46:21', '2020-11-10 07:46:21'),
(354, '2020-11-15 16:08:23', 1, 1, 263, 330, '2020-11-10 07:46:21', '2020-11-10 07:46:21'),
(355, '2020-12-01 14:58:03', 1, 1, 258, 224, '2020-11-10 07:46:21', '2020-11-10 07:46:21'),
(356, '2020-11-23 03:03:44', 0, 0, 250, 235, '2020-11-10 07:46:21', '2020-11-10 07:46:21'),
(357, '2020-12-02 07:44:31', 0, 0, 266, 495, '2020-11-10 07:46:21', '2020-11-10 07:46:21'),
(358, '2020-12-07 06:28:02', 0, 0, 233, 140, '2020-11-10 07:46:21', '2020-11-10 07:46:21'),
(359, '2020-12-05 21:55:49', 0, 1, 264, 67, '2020-11-10 07:46:21', '2020-11-10 07:46:21'),
(360, '2020-11-30 04:28:10', 0, 1, 227, 353, '2020-11-10 07:46:21', '2020-11-10 07:46:21'),
(361, '2020-11-20 02:01:00', 1, 0, 241, 450, '2020-11-10 07:46:21', '2020-11-10 07:46:21'),
(362, '2020-12-13 03:41:31', 1, 0, 255, 424, '2020-11-10 07:46:21', '2020-11-10 07:46:21'),
(363, '2020-12-03 00:54:08', 0, 1, 229, 478, '2020-11-10 07:46:22', '2020-11-10 07:46:22'),
(364, '2020-11-29 22:32:52', 1, 0, 232, 217, '2020-11-10 07:46:22', '2020-11-10 07:46:22'),
(365, '2020-12-05 02:39:26', 1, 1, 233, 348, '2020-11-10 07:46:22', '2020-11-10 07:46:22'),
(366, '2020-12-05 03:20:37', 1, 1, 231, 315, '2020-11-10 07:46:22', '2020-11-10 07:46:22'),
(367, '2020-11-20 03:44:34', 1, 1, 237, 56, '2020-11-10 07:46:22', '2020-11-10 07:46:22'),
(368, '2020-11-20 21:38:18', 0, 0, 239, 19, '2020-11-10 07:46:22', '2020-11-10 07:46:22'),
(369, '2020-11-25 09:27:22', 0, 0, 250, 55, '2020-11-10 07:46:22', '2020-11-10 07:46:22'),
(370, '2020-11-20 14:48:59', 0, 0, 267, 470, '2020-11-10 07:46:22', '2020-11-10 07:46:22'),
(371, '2020-11-19 23:12:45', 1, 1, 259, 244, '2020-11-10 07:46:22', '2020-11-10 07:46:22'),
(372, '2020-11-18 20:19:29', 1, 0, 270, 442, '2020-11-10 07:46:22', '2020-11-10 07:46:22'),
(373, '2020-12-01 11:46:01', 0, 1, 248, 111, '2020-11-10 07:46:22', '2020-11-10 07:46:22'),
(374, '2020-12-05 03:58:28', 1, 1, 270, 130, '2020-11-10 07:46:22', '2020-11-10 07:46:22'),
(375, '2020-11-30 06:35:42', 0, 1, 260, 155, '2020-11-10 07:46:22', '2020-11-10 07:46:22'),
(376, '2020-11-29 20:41:36', 0, 1, 272, 62, '2020-11-10 07:46:22', '2020-11-10 07:46:22'),
(377, '2020-12-14 02:37:42', 1, 0, 250, 350, '2020-11-10 07:46:22', '2020-11-10 07:46:22'),
(378, '2020-11-22 02:43:21', 0, 0, 247, 115, '2020-11-10 07:46:22', '2020-11-10 07:46:22'),
(379, '2020-11-24 04:43:33', 0, 1, 245, 23, '2020-11-10 07:46:23', '2020-11-10 07:46:23'),
(380, '2020-12-11 17:28:31', 1, 0, 259, 372, '2020-11-10 07:46:23', '2020-11-10 07:46:23'),
(381, '2020-11-20 08:47:36', 0, 1, 232, 480, '2020-11-10 07:46:23', '2020-11-10 07:46:23'),
(382, '2020-11-14 22:46:26', 1, 1, 255, 166, '2020-11-10 07:46:23', '2020-11-10 07:46:23'),
(383, '2020-11-18 20:25:58', 0, 1, 225, 387, '2020-11-10 07:46:23', '2020-11-10 07:46:23'),
(384, '2020-11-27 23:40:14', 0, 1, 267, 110, '2020-11-10 07:46:23', '2020-11-10 07:46:23'),
(385, '2020-12-02 11:52:09', 1, 1, 270, 230, '2020-11-10 07:46:23', '2020-11-10 07:46:23'),
(386, '2020-11-24 07:17:44', 0, 1, 244, 269, '2020-11-10 07:46:23', '2020-11-10 07:46:23'),
(387, '2020-11-30 07:10:25', 1, 1, 264, 491, '2020-11-10 07:46:23', '2020-11-10 07:46:23'),
(388, '2020-11-16 11:36:36', 1, 0, 271, 458, '2020-11-10 07:46:23', '2020-11-10 07:46:23'),
(389, '2020-12-06 11:22:55', 0, 1, 252, 31, '2020-11-10 07:46:23', '2020-11-10 07:46:23'),
(390, '2020-11-27 02:00:35', 1, 1, 272, 279, '2020-11-10 07:46:23', '2020-11-10 07:46:23'),
(391, '2020-11-21 18:14:40', 0, 1, 223, 288, '2020-11-10 07:46:23', '2020-11-10 07:46:23'),
(392, '2020-11-17 17:30:45', 1, 0, 270, 53, '2020-11-10 07:46:23', '2020-11-10 07:46:23'),
(393, '2020-12-05 00:38:21', 0, 0, 254, 174, '2020-11-10 07:46:23', '2020-11-10 07:46:23'),
(394, '2020-12-07 01:00:46', 1, 0, 227, 209, '2020-11-10 07:46:23', '2020-11-10 07:46:23'),
(395, '2020-12-03 13:37:06', 1, 1, 236, 313, '2020-11-10 07:46:23', '2020-11-10 07:46:23'),
(396, '2020-12-02 16:28:23', 0, 1, 228, 286, '2020-11-10 07:46:23', '2020-11-10 07:46:23'),
(397, '2020-12-05 11:52:29', 0, 1, 256, 470, '2020-11-10 07:46:24', '2020-11-10 07:46:24'),
(398, '2020-11-16 05:54:23', 1, 0, 271, 477, '2020-11-10 07:46:24', '2020-11-10 07:46:24'),
(399, '2020-12-11 10:51:53', 0, 1, 256, 327, '2020-11-10 07:46:24', '2020-11-10 07:46:24'),
(400, '2020-11-24 02:55:06', 0, 1, 244, 165, '2020-11-10 07:46:24', '2020-11-10 07:46:24'),
(401, '2020-11-16 17:31:37', 1, 0, 229, 263, '2020-11-10 07:46:24', '2020-11-10 07:46:24'),
(402, '2020-12-10 18:04:09', 1, 0, 241, 349, '2020-11-10 07:46:24', '2020-11-10 07:46:24'),
(403, '2020-11-27 08:08:19', 1, 0, 228, 140, '2020-11-10 07:46:24', '2020-11-10 07:46:24'),
(404, '2020-12-04 12:07:23', 0, 1, 272, 345, '2020-11-10 07:46:24', '2020-11-10 07:46:24'),
(405, '2020-11-13 01:17:36', 1, 0, 226, 299, '2020-11-10 07:46:24', '2020-11-10 07:46:24'),
(406, '2020-12-11 07:21:41', 1, 0, 252, 310, '2020-11-10 07:46:24', '2020-11-10 07:46:24'),
(407, '2020-11-13 23:54:17', 0, 0, 265, 57, '2020-11-10 07:46:24', '2020-11-10 07:46:24'),
(408, '2020-12-09 09:42:33', 0, 1, 263, 23, '2020-11-10 07:46:24', '2020-11-10 07:46:24'),
(409, '2020-12-12 20:48:21', 1, 0, 255, 127, '2020-11-10 07:46:24', '2020-11-10 07:46:24'),
(410, '2020-11-19 07:24:02', 0, 1, 265, 118, '2020-11-10 07:46:24', '2020-11-10 07:46:24'),
(411, '2020-12-11 07:16:18', 1, 0, 242, 483, '2020-11-10 07:46:24', '2020-11-10 07:46:24'),
(412, '2020-11-17 21:54:41', 1, 1, 255, 355, '2020-11-10 07:46:24', '2020-11-10 07:46:24'),
(413, '2020-12-08 03:24:55', 1, 1, 258, 11, '2020-11-10 07:46:24', '2020-11-10 07:46:24'),
(414, '2020-12-10 02:12:42', 1, 0, 232, 476, '2020-11-10 07:46:25', '2020-11-10 07:46:25'),
(415, '2020-12-14 12:13:01', 0, 1, 269, 470, '2020-11-10 07:46:25', '2020-11-10 07:46:25'),
(416, '2020-11-23 11:08:46', 0, 1, 272, 408, '2020-11-10 07:46:25', '2020-11-10 07:46:25'),
(417, '2020-11-23 23:26:02', 0, 1, 243, 40, '2020-11-10 07:46:25', '2020-11-10 07:46:25'),
(418, '2020-11-16 17:05:37', 1, 1, 243, 77, '2020-11-10 07:46:25', '2020-11-10 07:46:25'),
(419, '2020-12-10 05:42:11', 1, 1, 248, 84, '2020-11-10 07:46:25', '2020-11-10 07:46:25'),
(420, '2020-11-11 14:30:14', 0, 1, 259, 285, '2020-11-10 07:46:25', '2020-11-10 07:46:25'),
(421, '2020-11-19 13:52:02', 1, 0, 253, 371, '2020-11-10 07:46:25', '2020-11-10 07:46:25'),
(422, '2020-11-18 08:53:30', 1, 0, 264, 269, '2020-11-10 07:46:25', '2020-11-10 07:46:25'),
(423, '2020-11-10 22:43:58', 1, 0, 244, 466, '2020-11-10 07:46:25', '2020-11-10 07:46:25'),
(424, '2020-11-29 22:08:35', 1, 0, 223, 238, '2020-11-10 07:46:25', '2020-11-10 07:46:25'),
(425, '2020-12-07 09:08:41', 0, 1, 238, 327, '2020-11-10 07:46:25', '2020-11-10 07:46:25'),
(426, '2020-11-29 06:23:50', 1, 0, 253, 434, '2020-11-10 07:46:25', '2020-11-10 07:46:25');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=427;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
