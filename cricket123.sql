-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2020 at 09:33 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cricket123`
--

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` int(10) UNSIGNED NOT NULL,
  `team1_id` int(10) UNSIGNED DEFAULT NULL,
  `team2_id` int(10) UNSIGNED DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `result1` int(11) DEFAULT NULL,
  `result2` int(11) DEFAULT NULL,
  `Winner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
-- Error reading data for table cricket123.games: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `cricket123`.`games`' at line 1

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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2017_06_02_142513_create_1496402713_roles_table', 1),
(3, '2017_06_02_142514_create_1496402714_users_table', 1),
(4, '2017_06_02_142600_create_1496402760_teams_table', 1),
(5, '2017_06_02_142750_create_1496402870_players_table', 1),
(6, '2017_06_02_142935_create_1496402975_games_table', 1),
(192, '2014_10_12_100000_create_password_resets_table', 1),
(193, '2017_06_02_142513_create_1496402713_roles_table', 1),
(194, '2017_06_02_142514_create_1496402714_users_table', 1),
(195, '2017_06_02_142600_create_1496402760_teams_table', 1),
(196, '2017_06_02_142750_create_1496402870_players_table', 1),
(197, '2017_06_02_142935_create_1496402975_games_table', 1),
(198, '2020_06_05_233215_add_logoUrl_to_teams', 1),
(199, '2020_06_06_062453_add_Club_state_to_teams', 1),
(200, '2020_06_06_064944_add_imageUri_to_players', 1),
(201, '2020_06_06_065626_add_Player_jersey_number_to_players', 1),
(202, '2020_06_06_070551_add_Country_to_players', 1),
(203, '2020_06_07_055238_add_player_history_matches_to_players', 1),
(204, '2020_06_07_055821_add_player_history_run_to_players', 1),
(205, '2020_06_07_060224_add_highest_scores_to_players', 1),
(206, '2020_06_07_060509_add_fifties_to_players', 1),
(207, '2020_06_07_060821_add_hundreds_to_players', 1),
(208, '2020_06_08_044427_add_Winner_to_games_table', 1);

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
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` int(10) UNSIGNED NOT NULL,
  `team_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imageUri` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Player_jersey_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `player_history_matches` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `player_history_run` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `highest_scores` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fifties` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hundreds` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `team_id`, `name`, `surname`, `imageUri`, `Player_jersey_number`, `Country`, `birth_date`, `player_history_matches`, `player_history_run`, `highest_scores`, `fifties`, `hundreds`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Kevin', 'Durant', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-06 16:42:20', '2020-06-06 16:42:20', NULL),
(2, 1, 'Stephen', 'Curry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-06 16:42:20', '2020-06-08 14:20:05', '2020-06-08 14:20:05'),
(3, 1, 'ram', 'sham', 'N4.gif', 'JJ8899', 'INDIA122', '2020-07-08', '10099', '50099', '1000', '122', '999', '2020-06-08 12:11:35', '2020-06-08 14:16:13', NULL),
(4, 2, 'sham', 'ram', 'N5.gif', 'JJ8822', 'UK2233', '2020-07-18', '10099', '50099', '1000', '122', '6', '2020-06-08 12:12:30', '2020-06-08 13:13:09', '2020-06-08 13:13:09'),
(5, 3, 'ram', 'TOM5', 'N2.gif', 'JJ88', 'UK2266', '2020-07-17', '10099', '500', '100099', '12299', '999', '2020-06-08 13:16:31', '2020-06-08 13:18:41', '2020-06-08 13:18:41'),
(6, 2, 'ramooooooooo', 'shamoooooo', 'N2.gif', 'JJ88', 'UK2233HH', '2020-07-20', '10099', '50099', '100099', '12299', '999', '2020-06-08 14:17:52', '2020-06-08 14:17:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Administrator (can create other users)', '2020-06-06 16:42:20', '2020-06-06 16:42:20'),
(2, 'Simple user', '2020-06-06 16:42:20', '2020-06-06 16:42:20');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logoUri` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Club_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `logoUri`, `Club_state`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Golden State Warriors', NULL, NULL, '2020-06-06 16:42:20', '2020-06-06 16:42:20', NULL),
(2, 'Cleveland Cavaliers', NULL, NULL, '2020-06-06 16:42:20', '2020-06-06 16:42:20', NULL),
(3, 'Los Angeles Lakers', NULL, NULL, '2020-06-06 16:42:20', '2020-06-06 16:42:20', NULL),
(4, 'abc', 'n.gif', 'N A 2', '2020-06-08 12:09:34', '2020-06-08 12:09:34', NULL),
(5, 'ram', 'N2.gif', 'N A 29', '2020-06-08 12:09:54', '2020-06-08 13:24:52', '2020-06-08 13:24:52'),
(6, 'sham', 'tenor.gif', 'N A 29', '2020-06-08 13:23:11', '2020-06-08 13:23:19', '2020-06-08 13:23:19'),
(7, 'abc', 'N4.gif', 'N A 299', '2020-06-08 14:15:18', '2020-06-08 14:15:23', '2020-06-08 14:15:23'),
(8, 'shamnnnnnnnnn', 'N4.gif', 'N A 266666666', '2020-06-08 14:15:49', '2020-06-08 14:15:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `remember_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', '$2y$10$9F.EaU5ERv8do/Uz3wO8YeNoTei.TcNmLPl4GluLZbekdw.GmiaUC', 1, '', '2020-06-06 16:42:20', '2020-06-06 16:42:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`),
  ADD KEY `41908_59314c1f52463` (`team1_id`),
  ADD KEY `41908_59314c1f5682b` (`team2_id`),
  ADD KEY `games_deleted_at_index` (`deleted_at`);

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
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`),
  ADD KEY `41907_59314bb611908` (`team_id`),
  ADD KEY `players_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `41905_59314b1a6c90f` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `games`
--
ALTER TABLE `games`
  ADD CONSTRAINT `41908_59314c1f52463` FOREIGN KEY (`team1_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `41908_59314c1f5682b` FOREIGN KEY (`team2_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `41907_59314bb611908` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `41905_59314b1a6c90f` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
