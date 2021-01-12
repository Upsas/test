-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2021 at 11:19 AM
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_09_064019_create_visits_table', 1);

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
(1, 'Nellie Prosacco', 'Wyman', 'iledner@example.org', NULL, '$2y$10$Oyvi0MamhatTniI0OMn8Su1VO3ssXUc29TZ6tHakaza3grVvjJE0m', NULL, '2021-01-12 09:44:00', '2021-01-12 09:44:03'),
(2, 'Mrs. Albina Paucek Sr.', 'McGlynn', 'sedrick05@example.com', NULL, '$2y$10$arzaSZ9T/5Byb2Ix.zkiGeGZHUsKPT7LKsjs6rZCrITEfMvClGPmS', NULL, '2021-01-12 09:44:00', '2021-01-12 09:44:03'),
(3, 'Jaylan Abernathy', 'Sporer', 'rodger.harvey@example.org', NULL, '$2y$10$L0RQo2W6BglCWqSNhhmpyexMIXHlVCbPf3oko6ztxXXiU.ov1BjCG', NULL, '2021-01-12 09:44:00', '2021-01-12 09:44:03'),
(4, 'Trenton Gaylord', 'Mann', 'letitia.feil@example.org', NULL, '$2y$10$yQqPuQHCPLDla71bP6FOCO1UTIbeSHyRpSHzDNbIFfbQcIftZcg5m', NULL, '2021-01-12 09:44:00', '2021-01-12 09:44:03'),
(5, 'Emerald Nolan', 'Stroman', 'mfay@example.org', NULL, '$2y$10$INUCF2RqUTZnDc2EQQatKOCBuZUtpU1A5LHRAGzxZIM6YSpsZgIP2', NULL, '2021-01-12 09:44:00', '2021-01-12 09:44:04'),
(6, 'Maurice Konopelski', 'Feil', 'stanley.dibbert@example.net', NULL, '$2y$10$uyEh07eMcYakb7uP4.p51uZfgb2T.Hkx85FgpDOvw4cgsQ.X8bfzS', NULL, '2021-01-12 09:44:00', '2021-01-12 09:44:04'),
(7, 'Santos Kling', 'Smitham', 'lucy99@example.com', NULL, '$2y$10$LyZJ5JPtLJFymOFF3epvQuj7bN5jsDTJUXW9TyuHaKipEwib/QBzG', NULL, '2021-01-12 09:44:00', '2021-01-12 09:44:04'),
(8, 'Karlie Kunze', 'Wunsch', 'botsford.eleonore@example.com', NULL, '$2y$10$HZJ8D0ROyBOLJa1BLjjso.urtuphyb3tRPlbn5ZGzoxMK2TBgE42K', NULL, '2021-01-12 09:44:00', '2021-01-12 09:44:04'),
(9, 'Dwight Emmerich III', 'Bruen', 'ppurdy@example.com', NULL, '$2y$10$rIdOXnO133cHJF74IMUXpeq4CXKfNyuR29lMh5J060vTbE07P48he', NULL, '2021-01-12 09:44:00', '2021-01-12 09:44:04'),
(10, 'Ernestine Hauck III', 'Pollich', 'vherzog@example.org', NULL, '$2y$10$Yae/oXWXX1tlKZNHHpMI9eugS.I0itlrv1RTZU3VxUAkDR5QYfb/m', NULL, '2021-01-12 09:44:01', '2021-01-12 09:44:04'),
(11, 'Prof. Geo Christiansen', 'Kuhic', 'homenick.andrew@example.net', NULL, '$2y$10$tJvFCPcErHsiMd.1JAesjuTb2tTSOhwiXePKOJ154h.e.qmmjRA9e', NULL, '2021-01-12 09:44:01', '2021-01-12 09:44:04'),
(12, 'Marge Rippin', 'Schaefer', 'jones.edmond@example.org', NULL, '$2y$10$gyN.FKlODkjDhNg3nvQJUeFMvIPuZk.V8R8j6ofcYVjbjcPvLnwr.', NULL, '2021-01-12 09:44:01', '2021-01-12 09:44:04'),
(13, 'Celestino Miller Sr.', 'Smith', 'itzel.wolff@example.net', NULL, '$2y$10$B8I4ozOPVJZLwm1TsYxIGusjVZzQ.GiLkoZVE08hTaVgdxrJy.cKm', NULL, '2021-01-12 09:44:01', '2021-01-12 09:44:04'),
(14, 'Wendy Sporer', 'Hermann', 'ari.goyette@example.com', NULL, '$2y$10$jPlOfR0nuDzQ7izbpGX6ROuEXMZrPa8voezyuiYb2uR9MKBo6N6Vy', NULL, '2021-01-12 09:44:01', '2021-01-12 09:44:04'),
(15, 'Sigurd Bednar', 'Becker', 'ila57@example.org', NULL, '$2y$10$g3tLyxHqeW9y7h.NrYHQzePyyXmHc6LGkEwiRTePAqM9pni045/UC', NULL, '2021-01-12 09:44:01', '2021-01-12 09:44:04'),
(16, 'Olaf Kozey', 'Ebert', 'myrna97@example.com', NULL, '$2y$10$CmX.NEzb.xlKTUIk3roOj.7asZFn4ZX0y5KfFfB2R6trwxie1Gobm', NULL, '2021-01-12 09:44:01', '2021-01-12 09:44:04'),
(17, 'Jaqueline Flatley', 'Monahan', 'qdoyle@example.net', NULL, '$2y$10$xKpbQMBjs.KQAFS7QHdKw.Q0HiAZ72GoYSKQwCJFJle8MPNlpdeky', NULL, '2021-01-12 09:44:01', '2021-01-12 09:44:04'),
(18, 'Oda Quitzon', 'Hayes', 'qjohnson@example.com', NULL, '$2y$10$8Kj96mJkvR0biYbAC8BntOFRoc6Tj9vL52h0NBghrE/GDRNlIrgJe', NULL, '2021-01-12 09:44:01', '2021-01-12 09:44:04'),
(19, 'Winfield Hauck', 'Cruickshank', 'roderick40@example.net', NULL, '$2y$10$ycnGyTDHYV80XdFZ1p/WAOwnUzSnakDMxS3kVrbk5U1JGKhYThCda', NULL, '2021-01-12 09:44:01', '2021-01-12 09:44:04'),
(20, 'Dr. Cole Nicolas MD', 'Smitham', 'zkemmer@example.com', NULL, '$2y$10$wX7D.vb1hxKWvsYcHR.PXuwCK/OMpapEVQM5IJepzPUuIIwtFMO0G', NULL, '2021-01-12 09:44:01', '2021-01-12 09:44:04'),
(21, 'Dorian Reichert', 'Renner', 'reyna01@example.com', NULL, '$2y$10$1xOpUB5ibWgUkqKwfDrXOuYR3mm5VHT3lMnDcLs2m/nJmRlNLJ8Yq', NULL, '2021-01-12 09:44:01', '2021-01-12 09:44:04'),
(22, 'Tina Von', 'Huel', 'oswald.mraz@example.org', NULL, '$2y$10$fGi/nUmdkRCrQKKkvHjueeE2CMFQu3hSZkPwCIm2csGd2Th6Un8Uu', NULL, '2021-01-12 09:44:01', '2021-01-12 09:44:05'),
(23, 'Hillary Schuster', 'Kutch', 'columbus.prosacco@example.org', NULL, '$2y$10$GEbYTor4lQhARekffN7xfO6mx6w9Ujx8iqVGRM/y/7aZVhgWemb1S', NULL, '2021-01-12 09:44:01', '2021-01-12 09:44:05'),
(24, 'Ronny King', 'White', 'hwolf@example.com', NULL, '$2y$10$7ScOSSEkb8r8zj7Y3JSeveAMBJBmbTLamVGmA7JDodl2z5sykZ2uS', NULL, '2021-01-12 09:44:01', '2021-01-12 09:44:05'),
(25, 'Aaron Feest', 'Collier', 'kutch.maymie@example.net', NULL, '$2y$10$Dzoi6LdmvLgaGy7AGfVjUOKxtLmCsJAYFC1oBinQT6F.DJ21zVgFu', NULL, '2021-01-12 09:44:02', '2021-01-12 09:44:05'),
(26, 'Astrid Gleason', 'Grant', 'khill@example.com', NULL, '$2y$10$Wmlyy8dEnyvcUKVFhKgOPec9u3/CXVvgMDCQyh64ccKp2kEY1NPsK', NULL, '2021-01-12 09:44:02', '2021-01-12 09:44:05'),
(27, 'Anastacio Ernser', 'Russel', 'qlangworth@example.com', NULL, '$2y$10$4Echl7E9z4wBCDAw5SSNOePUIzLqG8y2wu6yBtNQOY4bf7HwqJFla', NULL, '2021-01-12 09:44:02', '2021-01-12 09:44:05'),
(28, 'Mr. Jeremie Keeling', 'Heidenreich', 'augustus07@example.com', NULL, '$2y$10$kQi6q4.1J238tJOgiZnv0eZSv.TzY6zsUMNfS7XJ/1ijtsddV6gri', NULL, '2021-01-12 09:44:02', '2021-01-12 09:44:05'),
(29, 'Prof. Ignatius Keeling MD', 'Kulas', 'parker.leda@example.com', NULL, '$2y$10$goi2IneJw3jCnNuJ1/bY8ewy.rzqazuiIlwN.bz94wG1Za9X3c1fC', NULL, '2021-01-12 09:44:02', '2021-01-12 09:44:05'),
(30, 'Prof. Howell Abbott Sr.', 'Weissnat', 'kozey.al@example.org', NULL, '$2y$10$qZgZQxAxkjOs.JXKVZ0opOFjAvvkadjAvssL.zjQnipFSCk6xTovK', NULL, '2021-01-12 09:44:02', '2021-01-12 09:44:05'),
(31, 'Vivien Kunze', 'Grimes', 'moore.ubaldo@example.net', NULL, '$2y$10$Ez9OSMypkiAFzA8D9pq5h.5Jx31goiGoD5C5HSZegUhzuLE5tTNtK', NULL, '2021-01-12 09:44:02', '2021-01-12 09:44:05'),
(32, 'Wilfrid Senger', 'Leannon', 'okoelpin@example.net', NULL, '$2y$10$rkcqlwPD6u2fa4rzxE6AQ.gxWBCmV7V5exhrCdYFoUoVgHlo15VGK', NULL, '2021-01-12 09:44:02', '2021-01-12 09:44:05'),
(33, 'Norberto Gorczany', 'Miller', 'jeffery02@example.com', NULL, '$2y$10$ByJgoprBupcsZSpdDMgdF.tUYlwyqO29Xd98Sp0EfsmEi.qbAXtiq', NULL, '2021-01-12 09:44:02', '2021-01-12 09:44:05'),
(34, 'Grace Sanford', 'Hermiston', 'rafael.reynolds@example.org', NULL, '$2y$10$RXNDJZSa4nwkvllUJ.mGU.aM1.1qx4DfekhsWUAfGT6wfc5le.8zG', NULL, '2021-01-12 09:44:02', '2021-01-12 09:44:05'),
(35, 'Mr. Bailey Ruecker Jr.', 'Shields', 'ithiel@example.org', NULL, '$2y$10$OH/5FkFQu8bK3QnMGuGzq.vx7QNp2nYuts30q9qQ2fd/eU4GPgmcy', NULL, '2021-01-12 09:44:02', '2021-01-12 09:44:05'),
(36, 'Kelton Rippin IV', 'Feeney', 'langosh.destinee@example.org', NULL, '$2y$10$iTHOkeya144maW0VRmp2MOl8oj6972cZS3QjovCV4thb4oFQDwlFa', NULL, '2021-01-12 09:44:02', '2021-01-12 09:44:05'),
(37, 'Makenna Donnelly', 'Bergstrom', 'guadalupe.russel@example.net', NULL, '$2y$10$E6o73Y4qxDfoV7Nxi3ZqIezu1saHh7Kvrg4rLaf3gTuCNEPYMsQH6', NULL, '2021-01-12 09:44:02', '2021-01-12 09:44:05'),
(38, 'Laney Purdy', 'Fahey', 'wparker@example.org', NULL, '$2y$10$wsbX0Au02mMWVPaNd.hz4e/WN30sRPUGJPTUvSN7697wccTXyf7vi', NULL, '2021-01-12 09:44:02', '2021-01-12 09:44:05'),
(39, 'Janelle Zemlak III', 'Goldner', 'miller82@example.org', NULL, '$2y$10$.SFEovO4brZUKBswsKdBI.W9h7QKus9RS1Q4kkvmO2ifPhbrPlujS', NULL, '2021-01-12 09:44:02', '2021-01-12 09:44:05'),
(40, 'Hulda DuBuque IV', 'Dickens', 'mayra58@example.org', NULL, '$2y$10$qTZ.0Opu9GcFOpj2PtifueaQicfrb9Pn9SzWxMhdf/EBsTyTBcJR.', NULL, '2021-01-12 09:44:02', '2021-01-12 09:44:06'),
(41, 'Luisa Rau II', 'Sporer', 'stephen52@example.net', NULL, '$2y$10$WNhL482obU9d2TxMUKfTIuMOps64hp8d3Zd/xKtql4MyQyOTX9Dce', NULL, '2021-01-12 09:44:03', '2021-01-12 09:44:06'),
(42, 'Fae Rau', 'Crist', 'wolff.reinhold@example.net', NULL, '$2y$10$./lttLSpjeGOv3SQNPE2HuP.BwO7ErN0HgveTwuN8u6paD8t5kOLO', NULL, '2021-01-12 09:44:03', '2021-01-12 09:44:06'),
(43, 'Prof. Zita Kemmer MD', 'Swift', 'isidro02@example.net', NULL, '$2y$10$vF/CwtHIUt8WrSTRVmK3f.jvtN/0QD09EzeAaQiA6UUMiU3RDjFIq', NULL, '2021-01-12 09:44:03', '2021-01-12 09:44:06'),
(44, 'Antone Mohr', 'Conroy', 'cyrus.ritchie@example.org', NULL, '$2y$10$nB15MRRN/Dvhm1x42tAq7OezPba7gsiZdrFoD7841OQJzAoDYpi3a', NULL, '2021-01-12 09:44:03', '2021-01-12 09:44:06'),
(45, 'Dr. Cathryn Little', 'Lakin', 'fhahn@example.net', NULL, '$2y$10$5SRptnj3PPbNePusLDxWEeEjXMMnUvKslQlzgLPXnZwwf9trc7B3O', NULL, '2021-01-12 09:44:03', '2021-01-12 09:44:06'),
(46, 'Ima Lind', 'Aufderhar', 'gwen.borer@example.com', NULL, '$2y$10$9AThTk.y6qdyX3HmlAPnW.LMKGb4nlY9HsOZCuYM6EM3JjnsEmugO', NULL, '2021-01-12 09:44:03', '2021-01-12 09:44:06'),
(47, 'Marianne Hammes', 'Rolfson', 'marjolaine92@example.net', NULL, '$2y$10$J09iQfl8AA4qUmB1AH6Z0eUIwCuMoXdZ3EwqU6joykVI/FM0LQgaG', NULL, '2021-01-12 09:44:03', '2021-01-12 09:44:06'),
(48, 'Theodora Wehner PhD', 'Carter', 'meagan47@example.net', NULL, '$2y$10$F4beksgFbnq/aJ9SPYEIZusNoLWI7LEdNmVxRV.hd168WVd4q9yMe', NULL, '2021-01-12 09:44:03', '2021-01-12 09:44:06'),
(49, 'Haley Willms', 'Lindgren', 'krohan@example.net', NULL, '$2y$10$jetR8AeFurdrhitlKsYgXO4ujg0KQ5P42crLXYiO3GzOh4TRFOARu', NULL, '2021-01-12 09:44:03', '2021-01-12 09:44:06'),
(50, 'Mercedes Hills', 'Casper', 'cpouros@example.com', NULL, '$2y$10$AmRLOCsQH7urnQAwo1qqOulx8Txrx2LmjqBVTNeRPDw88zbe.cyHy', NULL, '2021-01-12 09:44:03', '2021-01-12 09:44:06');

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
(1, '2021-01-28 18:31:18', 1, 0, 35, 347, '2021-01-12 09:43:54', '2021-01-12 09:43:54'),
(2, '2021-02-15 09:54:21', 1, 1, 39, 272, '2021-01-12 09:43:54', '2021-01-12 09:43:54'),
(3, '2021-01-28 06:38:43', 0, 1, 23, 96, '2021-01-12 09:43:54', '2021-01-12 09:43:54'),
(4, '2021-01-23 06:08:14', 1, 1, 12, 262, '2021-01-12 09:43:54', '2021-01-12 09:43:54'),
(5, '2021-01-29 11:33:11', 1, 0, 36, 74, '2021-01-12 09:43:55', '2021-01-12 09:43:55'),
(6, '2021-02-04 08:07:34', 1, 1, 9, 194, '2021-01-12 09:43:55', '2021-01-12 09:43:55'),
(7, '2021-02-14 23:55:31', 0, 0, 41, 250, '2021-01-12 09:43:55', '2021-01-12 09:43:55'),
(8, '2021-02-04 00:34:10', 0, 1, 28, 22, '2021-01-12 09:43:55', '2021-01-12 09:43:55'),
(10, '2021-02-05 11:59:12', 0, 0, 35, 276, '2021-01-12 09:43:55', '2021-01-12 09:43:55'),
(12, '2021-02-07 09:33:37', 1, 0, 24, 479, '2021-01-12 09:43:55', '2021-01-12 09:43:55'),
(13, '2021-01-30 12:12:44', 1, 1, 25, 172, '2021-01-12 09:43:55', '2021-01-12 09:43:55'),
(14, '2021-01-26 17:00:55', 0, 0, 24, 425, '2021-01-12 09:43:55', '2021-01-12 09:43:55'),
(15, '2021-02-09 08:30:12', 1, 1, 11, 487, '2021-01-12 09:43:55', '2021-01-12 09:43:55'),
(16, '2021-02-13 10:40:18', 1, 0, 31, 451, '2021-01-12 09:43:55', '2021-01-12 09:43:55'),
(17, '2021-02-14 20:04:46', 1, 0, 34, 133, '2021-01-12 09:43:55', '2021-01-12 09:43:55'),
(18, '2021-01-20 02:35:10', 1, 1, 38, 191, '2021-01-12 09:43:55', '2021-01-12 09:43:55'),
(19, '2021-01-19 03:24:18', 0, 1, 30, 257, '2021-01-12 09:43:55', '2021-01-12 09:43:55'),
(20, '2021-02-04 03:14:18', 1, 0, 7, 261, '2021-01-12 09:43:55', '2021-01-12 09:43:55'),
(21, '2021-02-07 20:26:54', 0, 1, 32, 285, '2021-01-12 09:43:55', '2021-01-12 09:43:55'),
(22, '2021-02-09 08:51:32', 0, 0, 15, 363, '2021-01-12 09:43:56', '2021-01-12 09:43:56'),
(23, '2021-02-08 19:55:06', 0, 1, 17, 338, '2021-01-12 09:43:56', '2021-01-12 09:43:56'),
(24, '2021-01-27 10:54:57', 1, 1, 35, 81, '2021-01-12 09:43:56', '2021-01-12 09:43:56'),
(25, '2021-02-04 19:59:26', 0, 1, 49, 424, '2021-01-12 09:43:56', '2021-01-12 09:43:56'),
(26, '2021-01-31 08:09:59', 0, 1, 47, 343, '2021-01-12 09:43:56', '2021-01-12 09:43:56'),
(27, '2021-01-26 08:34:44', 1, 1, 6, 221, '2021-01-12 09:43:56', '2021-01-12 09:43:56'),
(28, '2021-02-16 08:42:54', 0, 0, 3, 207, '2021-01-12 09:43:56', '2021-01-12 09:43:56'),
(29, '2021-01-18 07:42:07', 0, 1, 18, 293, '2021-01-12 09:43:56', '2021-01-12 09:43:56'),
(30, '2021-02-05 15:34:05', 0, 0, 50, 91, '2021-01-12 09:43:56', '2021-01-12 09:43:56'),
(31, '2021-02-09 07:02:34', 1, 1, 46, 84, '2021-01-12 09:43:56', '2021-01-12 09:43:56'),
(32, '2021-02-07 06:15:52', 1, 0, 38, 80, '2021-01-12 09:43:56', '2021-01-12 09:43:56'),
(33, '2021-01-26 19:44:26', 1, 0, 40, 230, '2021-01-12 09:43:56', '2021-01-12 09:43:56'),
(34, '2021-01-28 09:49:06', 0, 1, 32, 298, '2021-01-12 09:43:56', '2021-01-12 09:43:56'),
(35, '2021-01-14 07:12:52', 0, 1, 33, 196, '2021-01-12 09:43:56', '2021-01-12 09:43:56'),
(36, '2021-01-24 04:23:46', 0, 0, 48, 149, '2021-01-12 09:43:56', '2021-01-12 09:43:56'),
(37, '2021-01-30 08:27:41', 0, 1, 46, 318, '2021-01-12 09:43:57', '2021-01-12 09:43:57'),
(38, '2021-01-27 09:31:30', 1, 1, 21, 274, '2021-01-12 09:43:57', '2021-01-12 09:43:57'),
(39, '2021-01-15 17:04:08', 1, 1, 13, 195, '2021-01-12 09:43:57', '2021-01-12 09:43:57'),
(40, '2021-01-25 15:28:57', 0, 0, 45, 477, '2021-01-12 09:43:57', '2021-01-12 09:43:57'),
(41, '2021-01-21 05:29:34', 0, 1, 44, 180, '2021-01-12 09:43:57', '2021-01-12 09:43:57'),
(42, '2021-01-20 01:03:04', 0, 1, 50, 69, '2021-01-12 09:43:57', '2021-01-12 09:43:57'),
(43, '2021-01-21 17:34:58', 1, 1, 20, 249, '2021-01-12 09:43:57', '2021-01-12 09:43:57'),
(44, '2021-02-08 15:24:07', 1, 1, 5, 24, '2021-01-12 09:43:57', '2021-01-12 09:43:57'),
(45, '2021-01-25 04:54:02', 0, 1, 39, 32, '2021-01-12 09:43:57', '2021-01-12 09:43:57'),
(46, '2021-01-24 02:33:37', 0, 1, 39, 127, '2021-01-12 09:43:57', '2021-01-12 09:43:57'),
(47, '2021-02-06 07:51:22', 1, 0, 34, 125, '2021-01-12 09:43:57', '2021-01-12 09:43:57'),
(48, '2021-02-04 07:13:17', 0, 1, 11, 255, '2021-01-12 09:43:57', '2021-01-12 09:43:57'),
(49, '2021-01-16 06:16:47', 1, 1, 28, 100, '2021-01-12 09:43:57', '2021-01-12 09:43:57'),
(50, '2021-01-30 04:28:20', 1, 0, 6, 167, '2021-01-12 09:43:57', '2021-01-12 09:43:57'),
(51, '2021-01-25 10:07:26', 1, 0, 8, 414, '2021-01-12 09:43:57', '2021-01-12 09:43:57'),
(52, '2021-01-28 19:13:39', 1, 0, 29, 288, '2021-01-12 09:43:57', '2021-01-12 09:43:57'),
(54, '2021-02-08 17:42:54', 0, 1, 27, 73, '2021-01-12 09:43:58', '2021-01-12 09:43:58'),
(55, '2021-01-29 23:43:30', 0, 1, 42, 426, '2021-01-12 09:43:58', '2021-01-12 09:43:58'),
(56, '2021-01-13 18:32:43', 0, 1, 44, 288, '2021-01-12 09:43:58', '2021-01-12 09:43:58'),
(57, '2021-02-03 13:08:59', 0, 0, 46, 126, '2021-01-12 09:43:58', '2021-01-12 09:43:58'),
(58, '2021-02-07 10:07:22', 1, 1, 24, 118, '2021-01-12 09:43:58', '2021-01-12 09:43:58'),
(59, '2021-02-09 09:03:58', 1, 0, 18, 413, '2021-01-12 09:43:58', '2021-01-12 09:43:58'),
(60, '2021-01-14 11:21:44', 1, 1, 6, 153, '2021-01-12 09:43:58', '2021-01-12 09:43:58'),
(61, '2021-02-11 16:43:26', 0, 1, 30, 470, '2021-01-12 09:43:58', '2021-01-12 09:43:58'),
(62, '2021-02-04 14:05:25', 0, 0, 47, 196, '2021-01-12 09:43:58', '2021-01-12 09:43:58'),
(63, '2021-01-21 04:53:20', 0, 0, 5, 311, '2021-01-12 09:43:58', '2021-01-12 09:43:58'),
(64, '2021-01-12 12:55:02', 1, 1, 35, 249, '2021-01-12 09:43:58', '2021-01-12 09:43:58'),
(65, '2021-02-08 19:14:21', 1, 1, 24, 128, '2021-01-12 09:43:58', '2021-01-12 09:43:58'),
(66, '2021-01-23 16:03:52', 1, 0, 50, 303, '2021-01-12 09:43:58', '2021-01-12 09:43:58'),
(67, '2021-01-29 08:40:15', 0, 1, 36, 381, '2021-01-12 09:43:58', '2021-01-12 09:43:58'),
(68, '2021-02-11 22:02:35', 1, 1, 4, 380, '2021-01-12 09:43:58', '2021-01-12 09:43:58'),
(69, '2021-02-04 22:19:36', 0, 1, 21, 74, '2021-01-12 09:43:58', '2021-01-12 09:43:58'),
(70, '2021-02-02 22:51:46', 1, 1, 17, 228, '2021-01-12 09:43:58', '2021-01-12 09:43:58'),
(71, '2021-02-01 01:53:03', 1, 1, 4, 84, '2021-01-12 09:43:58', '2021-01-12 09:43:58'),
(72, '2021-02-15 15:29:47', 0, 0, 46, 275, '2021-01-12 09:43:58', '2021-01-12 09:43:58'),
(73, '2021-01-18 12:53:42', 0, 1, 50, 276, '2021-01-12 09:43:58', '2021-01-12 09:43:58'),
(74, '2021-01-27 04:22:15', 1, 1, 50, 475, '2021-01-12 09:43:58', '2021-01-12 09:43:58'),
(75, '2021-01-26 10:01:28', 0, 0, 8, 408, '2021-01-12 09:43:59', '2021-01-12 09:43:59'),
(76, '2021-01-22 01:36:44', 0, 1, 32, 116, '2021-01-12 09:43:59', '2021-01-12 09:43:59'),
(77, '2021-02-03 07:02:49', 0, 1, 0, 374, '2021-01-12 09:43:59', '2021-01-12 09:43:59'),
(78, '2021-02-11 23:02:58', 1, 1, 36, 268, '2021-01-12 09:43:59', '2021-01-12 09:43:59'),
(79, '2021-01-17 20:42:59', 0, 0, 46, 277, '2021-01-12 09:43:59', '2021-01-12 09:43:59'),
(80, '2021-02-13 08:05:04', 0, 0, 5, 410, '2021-01-12 09:43:59', '2021-01-12 09:43:59'),
(81, '2021-01-26 09:09:18', 1, 0, 50, 387, '2021-01-12 09:43:59', '2021-01-12 09:43:59'),
(82, '2021-02-15 13:37:10', 0, 1, 50, 254, '2021-01-12 09:43:59', '2021-01-12 09:43:59'),
(83, '2021-01-13 20:02:59', 1, 1, 16, 234, '2021-01-12 09:43:59', '2021-01-12 09:43:59'),
(84, '2021-01-25 16:22:46', 0, 0, 36, 338, '2021-01-12 09:43:59', '2021-01-12 09:43:59'),
(85, '2021-01-29 13:50:44', 0, 0, 6, 484, '2021-01-12 09:43:59', '2021-01-12 09:43:59'),
(86, '2021-01-21 21:11:14', 1, 1, 7, 29, '2021-01-12 09:43:59', '2021-01-12 09:43:59'),
(87, '2021-01-27 17:49:47', 0, 1, 11, 12, '2021-01-12 09:43:59', '2021-01-12 09:43:59'),
(88, '2021-02-02 14:53:16', 0, 0, 45, 253, '2021-01-12 09:43:59', '2021-01-12 09:43:59'),
(89, '2021-02-12 15:21:41', 0, 1, 10, 199, '2021-01-12 09:43:59', '2021-01-12 09:43:59'),
(90, '2021-02-02 13:01:20', 1, 1, 26, 128, '2021-01-12 09:43:59', '2021-01-12 09:43:59'),
(91, '2021-02-07 06:05:30', 0, 0, 1, 89, '2021-01-12 09:43:59', '2021-01-12 09:45:24'),
(92, '2021-02-05 07:30:08', 0, 0, 20, 201, '2021-01-12 09:43:59', '2021-01-12 09:43:59'),
(93, '2021-01-12 16:37:35', 0, 0, 24, 190, '2021-01-12 09:43:59', '2021-01-12 09:43:59'),
(94, '2021-02-08 22:15:44', 0, 0, 43, 400, '2021-01-12 09:44:00', '2021-01-12 09:44:00'),
(95, '2021-02-11 18:19:23', 1, 0, 7, 50, '2021-01-12 09:44:00', '2021-01-12 09:44:00'),
(96, '2021-02-08 08:05:14', 0, 0, 47, 139, '2021-01-12 09:44:00', '2021-01-12 09:44:00'),
(97, '2021-02-02 08:31:15', 0, 0, 33, 81, '2021-01-12 09:44:00', '2021-01-12 09:44:00'),
(98, '2021-02-11 10:59:01', 0, 0, 15, 131, '2021-01-12 09:44:00', '2021-01-12 09:44:00'),
(99, '2021-01-29 13:53:18', 0, 0, 46, 263, '2021-01-12 09:44:00', '2021-01-12 09:44:00'),
(100, '2021-01-15 17:39:20', 0, 0, 22, 291, '2021-01-12 09:44:00', '2021-01-12 09:44:00'),
(101, '2021-01-12 11:58:00', 0, 0, 1, 383, '2021-01-12 09:58:30', '2021-01-12 09:58:30');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
