-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Sze 25. 21:35
-- Kiszolgáló verziója: 10.4.27-MariaDB
-- PHP verzió: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `practice_0`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `files` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`files`)),
  `status` enum('not started','in progress','completed') NOT NULL,
  `type` enum('development','modification','bugfix','other') NOT NULL,
  `time_spent` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `comments`
--

INSERT INTO `comments` (`id`, `task_id`, `user_id`, `description`, `files`, `status`, `type`, `time_spent`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 8, 'Quas facere nihil quaerat consequatur voluptatem. Quis repellat voluptate mollitia maxime at deleniti. Asperiores rerum quisquam aliquam placeat qui. Neque et distinctio molestiae et corporis.', '[]', 'not started', 'bugfix', 162, '2025-09-25 17:34:59', '2025-09-25 17:34:59', NULL),
(2, 2, 9, 'Qui necessitatibus fuga voluptates rerum omnis nobis delectus sed. Autem aut vel nesciunt in. Qui vel quaerat earum impedit sint dignissimos. Quia perspiciatis sequi ab aut.', '[]', 'completed', 'development', 100, '2025-09-25 17:35:00', '2025-09-25 17:35:00', NULL),
(3, 3, 10, 'Harum est natus voluptatibus qui magni dolores. Amet sunt in velit velit tempora. Voluptatum ea tempora ratione sapiente.', '[]', 'completed', 'bugfix', 155, '2025-09-25 17:35:00', '2025-09-25 17:35:00', NULL),
(4, 3, 11, 'Consequatur officiis rerum quia quos. Et temporibus esse qui aut tenetur error quis. Consequatur et expedita sit odit illo nisi delectus.', '[]', 'completed', 'other', 58, '2025-09-25 17:35:00', '2025-09-25 17:35:00', NULL),
(5, 3, 12, 'Eum eum ab error quidem recusandae. Optio est et voluptatum deserunt iste voluptas aperiam. Est est aut assumenda iusto quo numquam.', '[]', 'not started', 'development', 161, '2025-09-25 17:35:00', '2025-09-25 17:35:00', NULL),
(6, 4, 13, 'Voluptas sequi iste sed non quis ipsa nostrum. Sequi commodi iusto alias eos ut consequatur.', '[]', 'not started', 'development', 178, '2025-09-25 17:35:00', '2025-09-25 17:35:00', NULL),
(7, 4, 14, 'Sunt totam corrupti atque deleniti quis omnis doloremque et. Consequatur quia eos repellendus natus ut. Praesentium velit consequatur dolorem incidunt fuga voluptatibus unde rerum.', '[]', 'in progress', 'development', 11, '2025-09-25 17:35:00', '2025-09-25 17:35:00', NULL),
(8, 4, 15, 'Ut porro at placeat ducimus optio. Magnam adipisci vitae ratione deserunt doloribus. Autem necessitatibus minima voluptatibus sed architecto quisquam voluptas rerum. Et repellendus illo non voluptas et.', '[]', 'completed', 'other', 113, '2025-09-25 17:35:00', '2025-09-25 17:35:00', NULL),
(9, 5, 16, 'Architecto rem quibusdam praesentium similique sed autem nam. Itaque voluptatem maiores minima explicabo laudantium delectus maiores.', '[]', 'in progress', 'other', 120, '2025-09-25 17:35:01', '2025-09-25 17:35:01', NULL),
(10, 5, 17, 'Dolorum rerum voluptatem veritatis consequatur modi dolores beatae aliquam. Optio rerum suscipit porro repudiandae ut libero. Amet reprehenderit rem reprehenderit quia aut aut. Animi ut voluptatibus repellat odit quod.', '[]', 'not started', 'modification', 139, '2025-09-25 17:35:01', '2025-09-25 17:35:01', NULL),
(11, 5, 18, 'Facilis quisquam aut delectus id voluptatem. Iste aliquam accusamus vel quia et aperiam. Est quia veniam perspiciatis id voluptatem. Quia et earum numquam quasi soluta omnis.', '[]', 'in progress', 'modification', 181, '2025-09-25 17:35:01', '2025-09-25 17:35:01', NULL),
(12, 5, 19, 'Fuga fuga voluptates voluptas sequi voluptatem qui ut eum. Sequi porro ad aut optio officia. Alias eveniet cupiditate blanditiis voluptas pariatur. Rem quae hic nemo velit quibusdam ipsa.', '[]', 'in progress', 'other', 53, '2025-09-25 17:35:01', '2025-09-25 17:35:01', NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2025_09_25_045612_create_projects_table', 1),
(4, '2025_09_25_051822_create_tasks_table', 1),
(5, '2025_09_25_052021_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'new',
  `documents` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`documents`)),
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `projects`
--

INSERT INTO `projects` (`id`, `name`, `description`, `status`, `documents`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Non sequi dolorum illum.', 'Autem libero id voluptas ratione aut. Atque fuga quis sit quisquam ut soluta. Aut impedit quidem harum culpa officiis. Et vel praesentium voluptatem dolorem.', 'completed', '[]', 2, '2025-09-25 17:34:59', '2025-09-25 17:34:59', NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `files` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`files`)),
  `status` enum('not started','in progress','completed') NOT NULL,
  `type` enum('development','modification','bugfix','other') NOT NULL,
  `priority` enum('low','normal','high') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `tasks`
--

INSERT INTO `tasks` (`id`, `project_id`, `user_id`, `title`, `description`, `files`, `status`, `type`, `priority`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 3, 'Omnis alias velit qui aperiam.', 'Ratione harum fugiat sit repudiandae quaerat rerum. Vitae libero sed impedit eum animi animi placeat et. Praesentium vel soluta vero.', '[]', 'completed', 'modification', 'high', '2025-09-25 17:34:59', '2025-09-25 17:34:59', NULL),
(2, 1, 4, 'Aliquam aliquam qui recusandae.', 'Et neque eum eaque velit. Qui quisquam quisquam fugit dolorem vitae sit. Vitae vel reiciendis eum molestiae rerum nesciunt facilis. Dolor incidunt voluptatibus id fugit omnis consequatur delectus.', '[]', 'completed', 'modification', 'low', '2025-09-25 17:34:59', '2025-09-25 17:34:59', NULL),
(3, 1, 5, 'Labore quia nesciunt.', 'Laudantium aut voluptas recusandae minus reprehenderit quos. Nihil minima voluptatem et veritatis ut beatae. Et incidunt velit voluptatem nulla. Enim sit quisquam voluptatum qui.', '[]', 'completed', 'bugfix', 'normal', '2025-09-25 17:34:59', '2025-09-25 17:34:59', NULL),
(4, 1, 6, 'Consectetur velit vel.', 'Sequi et dolorem deserunt facilis error et. Praesentium nostrum aspernatur molestiae nihil labore. Qui dolorum omnis dolorem distinctio minima iure ab. Dolor rerum natus eos odio hic.', '[]', 'completed', 'bugfix', 'normal', '2025-09-25 17:34:59', '2025-09-25 17:34:59', NULL),
(5, 1, 7, 'Non et sit.', 'Maxime molestiae magni assumenda adipisci. Vel repellat et consequatur est harum consequatur provident est. Expedita qui amet illo et enim ad labore.', '[]', 'completed', 'bugfix', 'low', '2025-09-25 17:34:59', '2025-09-25 17:34:59', NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `position`, `picture`, `is_active`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Elroy Brown', 'ledner.amina', 'pstanton@example.com', NULL, '$2y$10$i0P38I7z5H.CW7dBGGFfvOQHiqqM8ALig.fSdRz12i5GOrM/RSof.', 'Fraud Investigator', NULL, 1, NULL, '2025-09-25 17:34:58', '2025-09-25 17:34:58', NULL),
(2, 'Flo Heller', 'delphia36', 'ybosco@example.com', NULL, '$2y$10$N.seYmYRDQym5jcFbxLfg.yW4L.oxf.E1GcxhfApMIiCIAHsKAffW', 'Refinery Operator', NULL, 1, NULL, '2025-09-25 17:34:59', '2025-09-25 17:34:59', NULL),
(3, 'Audrey Price', 'karine07', 'okeefe.nikki@example.net', NULL, '$2y$10$GbUq28L2pDDon9HMh3WpZeeB1kSA2dtn.kR9iTZCObm8tZuAY8vHq', 'Textile Knitting Machine Operator', NULL, 1, NULL, '2025-09-25 17:34:59', '2025-09-25 17:34:59', NULL),
(4, 'Tremaine Zboncak', 'wilkinson.rey', 'goyette.jasper@example.net', NULL, '$2y$10$zsczQ.aTIHSGQfbmR3FJK.6gYKdH.W/ZKLTNeNnotQL.v/F.y9dzu', 'Distribution Manager', NULL, 1, NULL, '2025-09-25 17:34:59', '2025-09-25 17:34:59', NULL),
(5, 'Prof. Amos Reinger DDS', 'nschneider', 'freddie.balistreri@example.net', NULL, '$2y$10$dqx.EMgCHSDzpcG0viLXMO1hf4757vWGxRYeipsGQno2viXzNQpEG', 'Computer Programmer', NULL, 1, NULL, '2025-09-25 17:34:59', '2025-09-25 17:34:59', NULL),
(6, 'Connor Collins I', 'becker.jacynthe', 'zdooley@example.org', NULL, '$2y$10$pZGEcOgLuqpBFd2rd6z7huwqnlFwYNoIAD.2UoszbBqAi9KOVcd/e', 'Real Estate Association Manager', NULL, 1, NULL, '2025-09-25 17:34:59', '2025-09-25 17:34:59', NULL),
(7, 'Preston Balistreri', 'breana42', 'moen.tyrese@example.org', NULL, '$2y$10$pz8xq9qG8XdyvVSlwbv4cukvbhlawlFkkuxzE.bryfIF6H9qAXhjO', 'Orthotist OR Prosthetist', NULL, 1, NULL, '2025-09-25 17:34:59', '2025-09-25 17:34:59', NULL),
(8, 'Kole Fahey', 'edna48', 'zlueilwitz@example.net', NULL, '$2y$10$6QjBz..eUuFLx4LVrsZthuX4VG6/cclPHus2P8dlgrzfzSEj7ZCiy', 'Welder', NULL, 1, NULL, '2025-09-25 17:34:59', '2025-09-25 17:34:59', NULL),
(9, 'Adelbert Fritsch', 'fhahn', 'newell.schroeder@example.net', NULL, '$2y$10$Mi77PTxM6GYxHHa99/VDFuZbChynCoQcUC9jh2k.wjLIxUUScZWHS', 'Photographic Processing Machine Operator', NULL, 1, NULL, '2025-09-25 17:35:00', '2025-09-25 17:35:00', NULL),
(10, 'Louisa Howe', 'zachery.powlowski', 'macejkovic.savannah@example.org', NULL, '$2y$10$tGjlwEhkD563LePts4qJcOEMuLPl3j..ahk6WaHD0yNFR4XQPiHAe', 'Surgical Technologist', NULL, 1, NULL, '2025-09-25 17:35:00', '2025-09-25 17:35:00', NULL),
(11, 'Katelyn Rodriguez', 'ardith82', 'vokeefe@example.net', NULL, '$2y$10$BstHZhzjaZZmtKWABHmfueWx3sUOYDfcblQ.05fCHqGAArDsoTtrq', 'Staff Psychologist', NULL, 1, NULL, '2025-09-25 17:35:00', '2025-09-25 17:35:00', NULL),
(12, 'Kariane Wisozk', 'marisol.tremblay', 'barry.kris@example.org', NULL, '$2y$10$zRBv/jFDRXObA7iI8W8gN.6ESlG8Cww0GdUbKFuOP7pELRoRrDN2C', 'Civil Engineer', NULL, 1, NULL, '2025-09-25 17:35:00', '2025-09-25 17:35:00', NULL),
(13, 'Brice Casper', 'helene.wiza', 'braeden.ferry@example.org', NULL, '$2y$10$rQ5nftwfUOMkfXRyGeDiUehQL.dRvir8EkeBNBQ7Ts0Lv2iyiKPxC', 'Host and Hostess', NULL, 1, NULL, '2025-09-25 17:35:00', '2025-09-25 17:35:00', NULL),
(14, 'Dr. Stacey Daugherty MD', 'orion61', 'zjacobs@example.net', NULL, '$2y$10$PrmA32HxX6XTbC0.XnMfSuyEIzIFCP/ox6Mcs4ziskT01drnlVGgW', 'Forest and Conservation Worker', NULL, 1, NULL, '2025-09-25 17:35:00', '2025-09-25 17:35:00', NULL),
(15, 'Prof. Newell Collins', 'ila96', 'wschimmel@example.net', NULL, '$2y$10$TIrhZv5.N5XserYPhc2BFOpGmv5.gHR1PHLgW64L0v.vNSFRBTbXC', 'Courier', NULL, 1, NULL, '2025-09-25 17:35:00', '2025-09-25 17:35:00', NULL),
(16, 'Dalton Yundt IV', 'gavin43', 'ahmed69@example.org', NULL, '$2y$10$qmgxxWg641AsQ3ez6.AjIOYa1HgW0QQI0AYEuVHG2bd0N4PVyRvNm', 'Protective Service Worker', NULL, 1, NULL, '2025-09-25 17:35:00', '2025-09-25 17:35:00', NULL),
(17, 'Dameon Murray I', 'gkertzmann', 'velva.king@example.com', NULL, '$2y$10$qiwmN1cLaXnnx3MEdt69Eu2VaH3aK6fGFIGf3mt2SRzE29u/dlu9i', 'Psychiatric Aide', NULL, 1, NULL, '2025-09-25 17:35:00', '2025-09-25 17:35:00', NULL),
(18, 'Keshawn Wolff', 'lmosciski', 'prohaska.alessandra@example.net', NULL, '$2y$10$R43tfgD/df3tWOKaMjt/4emzqGYYnQD/hptDOA85We04AIm/b8HLq', 'Metal Worker', NULL, 1, NULL, '2025-09-25 17:35:01', '2025-09-25 17:35:01', NULL),
(19, 'Carter Bechtelar', 'reta.waters', 'goodwin.imani@example.org', NULL, '$2y$10$vEtkvQI2bXW1/vK2NNbqsONybuz7W7UeX21h2D3ZNktqRrp/xwCue', 'Dental Hygienist', NULL, 1, NULL, '2025-09-25 17:35:01', '2025-09-25 17:35:01', NULL);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_task_id_foreign` (`task_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- A tábla indexei `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_user_id_foreign` (`user_id`);

--
-- A tábla indexei `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_project_id_foreign` (`project_id`),
  ADD KEY `tasks_user_id_foreign` (`user_id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT a táblához `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT a táblához `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT a táblához `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tasks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
