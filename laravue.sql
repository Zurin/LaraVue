-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 23, 2019 at 02:23 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravue`
--

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
(3, '2019_02_23_075647_create_signatures_table', 2);

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
-- Table structure for table `signatures`
--

CREATE TABLE `signatures` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `flagged_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `signatures`
--

INSERT INTO `signatures` (`id`, `name`, `email`, `body`, `flagged_at`, `created_at`, `updated_at`) VALUES
(1, 'Hans Bartoletti', 'egreenholt@example.com', 'Est sit doloribus incidunt odit.', NULL, '2019-02-23 01:09:54', '2019-02-23 01:09:54'),
(2, 'Mr. Lowell Hagenes II', 'damian87@example.com', 'Odio esse nemo optio omnis enim odit est.', NULL, '2019-02-23 01:09:54', '2019-02-23 01:09:54'),
(3, 'Blair Sanford', 'simeon.mann@example.net', 'Et iusto ipsum quae laboriosam non consectetur eos.', NULL, '2019-02-23 01:09:54', '2019-02-23 01:09:54'),
(4, 'Prof. Kenny Ruecker II', 'gulgowski.aryanna@example.com', 'Et officia dignissimos eaque aut.', NULL, '2019-02-23 01:09:54', '2019-02-23 01:09:54'),
(5, 'Prof. Blaise Kutch Sr.', 'karina46@example.com', 'Minus impedit ullam non et animi.', NULL, '2019-02-23 01:09:54', '2019-02-23 01:09:54'),
(6, 'Dr. Cullen Leannon DDS', 'ekerluke@example.net', 'Voluptate et blanditiis et eaque culpa ipsum.', NULL, '2019-02-23 01:09:54', '2019-02-23 01:09:54'),
(7, 'Jacky Farrell', 'ernser.verdie@example.net', 'Harum deserunt quidem occaecati.', NULL, '2019-02-23 01:09:54', '2019-02-23 01:09:54'),
(8, 'Mrs. Adell Pagac DVM', 'daryl42@example.net', 'Earum veniam aut assumenda natus saepe quod.', NULL, '2019-02-23 01:09:54', '2019-02-23 01:09:54'),
(9, 'Dylan Labadie', 'maximillian.bauch@example.com', 'Eius perspiciatis et sapiente et.', NULL, '2019-02-23 01:09:54', '2019-02-23 01:09:54'),
(10, 'Unique Yost', 'grant.marquardt@example.net', 'Doloribus dolores architecto vel.', NULL, '2019-02-23 01:09:54', '2019-02-23 01:09:54'),
(11, 'Maye Treutel', 'king.alex@example.com', 'Nam saepe molestiae repellendus.', NULL, '2019-02-23 01:09:55', '2019-02-23 01:09:55'),
(12, 'Dejon Collier', 'pacocha.jaylan@example.org', 'Et libero voluptatem ducimus omnis et architecto quia.', NULL, '2019-02-23 01:09:55', '2019-02-23 01:09:55'),
(13, 'Miss Reanna Stokes MD', 'gerlach.walton@example.net', 'Quos unde velit incidunt ut deleniti.', NULL, '2019-02-23 01:09:55', '2019-02-23 01:09:55'),
(14, 'Jeffrey Kovacek I', 'halie27@example.org', 'Ut ea id dolorum modi aut autem sequi et.', NULL, '2019-02-23 01:09:55', '2019-02-23 01:09:55'),
(15, 'Mrs. Iva Krajcik II', 'jpollich@example.org', 'Blanditiis voluptate sint aut illum ex nemo enim.', NULL, '2019-02-23 01:09:55', '2019-02-23 01:09:55'),
(16, 'Dr. Bridie Ryan', 'mann.vivien@example.org', 'Aut voluptatem praesentium soluta sit quae voluptatem.', NULL, '2019-02-23 01:09:55', '2019-02-23 01:09:55'),
(17, 'Bradley Tromp', 'tristian.schulist@example.net', 'Dolorum expedita eos ea ut.', NULL, '2019-02-23 01:09:55', '2019-02-23 01:09:55'),
(18, 'Daniela Hodkiewicz', 'nash.conn@example.net', 'Soluta nostrum dicta error sint asperiores ut.', NULL, '2019-02-23 01:09:55', '2019-02-23 01:09:55'),
(19, 'Priscilla Keebler', 'leannon.cassandra@example.org', 'Aliquid dolor harum suscipit sit autem et aut.', NULL, '2019-02-23 01:09:55', '2019-02-23 01:09:55'),
(20, 'Ms. Jaunita Baumbach', 'zbuckridge@example.net', 'Ipsam mollitia consequatur voluptas ut nulla voluptatem quia.', NULL, '2019-02-23 01:09:55', '2019-02-23 01:09:55'),
(21, 'Israel Cronin', 'greenfelder.magdalena@example.net', 'Tenetur aut eius eum sit quia ab dolorem magni.', NULL, '2019-02-23 01:09:55', '2019-02-23 01:09:55'),
(22, 'Clay Reichel', 'maye17@example.net', 'Id omnis dolores consequatur id provident.', NULL, '2019-02-23 01:09:55', '2019-02-23 01:09:55'),
(23, 'Garland O\'Hara DVM', 'tstamm@example.net', 'Nostrum assumenda a sapiente illo laborum quisquam.', NULL, '2019-02-23 01:09:55', '2019-02-23 01:09:55'),
(24, 'Annamarie Rolfson', 'kiana.luettgen@example.org', 'Corporis a dignissimos dolores animi explicabo nam error.', NULL, '2019-02-23 01:09:55', '2019-02-23 01:09:55'),
(25, 'Dr. Payton Erdman IV', 'julianne07@example.com', 'Necessitatibus sed cupiditate ex aut qui.', NULL, '2019-02-23 01:09:55', '2019-02-23 01:09:55'),
(26, 'Raven Rau Sr.', 'tito11@example.com', 'Optio animi quae atque.', NULL, '2019-02-23 01:09:55', '2019-02-23 01:09:55'),
(27, 'Mrs. Ericka Weissnat PhD', 'elwyn91@example.org', 'Repellendus quia rerum hic tenetur eius voluptas in natus.', NULL, '2019-02-23 01:09:55', '2019-02-23 01:09:55'),
(28, 'Desiree Spencer', 'cecilia.sauer@example.com', 'Temporibus molestiae animi quidem esse voluptas voluptatem autem.', NULL, '2019-02-23 01:09:55', '2019-02-23 01:09:55'),
(29, 'Ericka Crona IV', 'balistreri.eldred@example.org', 'Quidem doloribus natus nostrum ut totam ea molestias.', NULL, '2019-02-23 01:09:55', '2019-02-23 01:09:55'),
(30, 'Mrs. Lydia Wuckert', 'braun.marques@example.net', 'Et nam consequuntur nam sed dolore et.', NULL, '2019-02-23 01:09:55', '2019-02-23 01:09:55'),
(31, 'Mikel Tromp', 'sigurd30@example.com', 'Repellendus omnis quidem fuga pariatur adipisci.', NULL, '2019-02-23 01:09:55', '2019-02-23 01:09:55'),
(32, 'Dr. Jennings Dibbert I', 'simonis.katherine@example.org', 'Rerum et quisquam et est.', NULL, '2019-02-23 01:09:55', '2019-02-23 01:09:55'),
(33, 'Kenyon Greenholt', 'mclaughlin.emmet@example.org', 'Laudantium fugit eligendi rem omnis placeat numquam voluptatem.', NULL, '2019-02-23 01:09:55', '2019-02-23 01:09:55'),
(34, 'Jessika Shields DVM', 'oran.rosenbaum@example.org', 'Odio quisquam blanditiis voluptas odio eum deleniti.', NULL, '2019-02-23 01:09:55', '2019-02-23 01:09:55'),
(35, 'Micaela Langworth', 'tracey.reichel@example.org', 'Blanditiis dolor modi et illo eaque.', NULL, '2019-02-23 01:09:55', '2019-02-23 01:09:55'),
(36, 'Delores Schinner', 'gdouglas@example.org', 'Veniam corrupti aperiam consequuntur.', NULL, '2019-02-23 01:09:55', '2019-02-23 01:09:55'),
(37, 'Nayeli Bogan', 'gdaniel@example.net', 'Ea illo ducimus neque dolore eveniet.', NULL, '2019-02-23 01:09:55', '2019-02-23 01:09:55'),
(38, 'Berneice Conroy', 'audie.klein@example.org', 'Alias optio qui non quia.', NULL, '2019-02-23 01:09:55', '2019-02-23 01:09:55'),
(39, 'Randall Fadel', 'ila63@example.org', 'Nam qui quis molestiae recusandae qui voluptates.', NULL, '2019-02-23 01:09:55', '2019-02-23 01:09:55'),
(40, 'Marjorie Price', 'armando.borer@example.com', 'Eos quam nulla enim officiis ipsum consequatur nulla nisi.', NULL, '2019-02-23 01:09:56', '2019-02-23 01:09:56'),
(41, 'Percy D\'Amore', 'lynch.collin@example.org', 'Est sit ab praesentium laboriosam.', NULL, '2019-02-23 01:09:56', '2019-02-23 01:09:56'),
(42, 'Dr. Adriana Runolfsdottir', 'bailey.jacynthe@example.com', 'Nam mollitia consequatur praesentium necessitatibus ipsum repellendus unde eveniet.', NULL, '2019-02-23 01:09:56', '2019-02-23 01:09:56'),
(43, 'Miss Theresia Paucek III', 'anastasia.price@example.net', 'Cupiditate pariatur soluta ut eos cumque.', NULL, '2019-02-23 01:09:56', '2019-02-23 01:09:56'),
(44, 'Tressie Kris III', 'maryjane55@example.com', 'Alias rerum animi aliquam et ex possimus.', NULL, '2019-02-23 01:09:56', '2019-02-23 01:09:56'),
(45, 'Dr. Lupe Mayer I', 'rylee62@example.net', 'Ut ab commodi ut facilis molestiae blanditiis.', NULL, '2019-02-23 01:09:56', '2019-02-23 01:09:56'),
(46, 'Prof. Jenifer Fisher', 'kay96@example.org', 'Quia quia quidem voluptatum quidem.', NULL, '2019-02-23 01:09:56', '2019-02-23 01:09:56'),
(47, 'Carmella Homenick Sr.', 'nmarvin@example.net', 'Reiciendis sed quo qui pariatur maxime voluptatem.', NULL, '2019-02-23 01:09:56', '2019-02-23 01:09:56'),
(48, 'Prof. Howell Borer', 'keeley.hettinger@example.org', 'Necessitatibus sed sit ipsam impedit minus at illo.', NULL, '2019-02-23 01:09:56', '2019-02-23 01:09:56'),
(49, 'Santos Steuber', 'wisozk.jan@example.org', 'Tempora excepturi dolore sequi non et.', NULL, '2019-02-23 01:09:56', '2019-02-23 01:09:56'),
(50, 'Vivian Simonis', 'feeney.melisa@example.com', 'Perferendis ut alias placeat corrupti vero voluptas eligendi.', NULL, '2019-02-23 01:09:56', '2019-02-23 01:09:56'),
(51, 'Coby Heller', 'xryan@example.net', 'Voluptate veritatis in explicabo qui.', NULL, '2019-02-23 01:09:56', '2019-02-23 01:09:56'),
(52, 'Dayana Williamson', 'lcarroll@example.net', 'Eum delectus consequatur consequatur dolores.', NULL, '2019-02-23 01:09:56', '2019-02-23 01:09:56'),
(53, 'Zion Dach', 'greta87@example.net', 'Est corporis in ipsam voluptas eveniet molestias laboriosam.', NULL, '2019-02-23 01:09:56', '2019-02-23 01:09:56'),
(54, 'Vince Stroman IV', 'tbailey@example.org', 'Molestiae explicabo veniam beatae distinctio et saepe esse.', NULL, '2019-02-23 01:09:56', '2019-02-23 01:09:56'),
(55, 'Birdie Hill', 'gust78@example.org', 'Corrupti autem est eaque repellendus totam itaque qui eos.', NULL, '2019-02-23 01:09:56', '2019-02-23 01:09:56'),
(56, 'Brice Schmeler', 'runte.godfrey@example.net', 'Velit explicabo et dolores perspiciatis.', NULL, '2019-02-23 01:09:56', '2019-02-23 01:09:56'),
(57, 'Mr. Loyal Kovacek Jr.', 'moen.bethany@example.net', 'Deserunt sit amet aut consectetur laborum aspernatur fuga.', NULL, '2019-02-23 01:09:56', '2019-02-23 01:09:56'),
(58, 'Prof. Lisa Haley', 'dkulas@example.org', 'Consequatur et laborum distinctio dolorum magni rerum.', NULL, '2019-02-23 01:09:56', '2019-02-23 01:09:56'),
(59, 'Monserrate Pacocha', 'zboncak.jonatan@example.net', 'Repellendus in pariatur et error vel.', NULL, '2019-02-23 01:09:56', '2019-02-23 01:09:56'),
(60, 'Marcelle Stracke', 'bode.saige@example.org', 'Officiis accusamus earum ad cum laboriosam rerum.', NULL, '2019-02-23 01:09:56', '2019-02-23 01:09:56'),
(61, 'Viviane Stroman', 'veum.isom@example.net', 'Quam error provident quidem nemo et dolores numquam.', NULL, '2019-02-23 01:09:56', '2019-02-23 01:09:56'),
(62, 'Prof. Penelope Beier Jr.', 'selena.damore@example.com', 'Vitae dolorum quasi quas nam est.', NULL, '2019-02-23 01:09:57', '2019-02-23 01:09:57'),
(63, 'Casandra Bogan Sr.', 'quitzon.graciela@example.net', 'Iure saepe in dolore sed deserunt atque.', NULL, '2019-02-23 01:09:57', '2019-02-23 01:09:57'),
(64, 'Agustin Lakin IV', 'murphy.alexzander@example.org', 'Recusandae fugit est iusto eos cumque.', NULL, '2019-02-23 01:09:57', '2019-02-23 01:09:57'),
(65, 'Ida Hane PhD', 'jzieme@example.org', 'Est tempore quam voluptatem quia ut.', NULL, '2019-02-23 01:09:57', '2019-02-23 01:09:57'),
(66, 'Amir Stehr', 'emily65@example.com', 'Unde eum eum voluptatem perferendis.', NULL, '2019-02-23 01:09:57', '2019-02-23 01:09:57'),
(67, 'Mr. Jillian Weimann Sr.', 'ystark@example.com', 'Vitae quis non rem voluptatem et qui iste nisi.', NULL, '2019-02-23 01:09:57', '2019-02-23 01:09:57'),
(68, 'Miss Rose Jacobs Sr.', 'wvolkman@example.com', 'Veritatis enim voluptas nemo illum quo.', NULL, '2019-02-23 01:09:57', '2019-02-23 01:09:57'),
(69, 'Micheal Hand', 'brandt.fahey@example.com', 'Cupiditate sequi culpa quisquam optio dolorem voluptate.', NULL, '2019-02-23 01:09:57', '2019-02-23 01:09:57'),
(70, 'Prof. Samara Waters', 'oberbrunner.stone@example.org', 'Quia velit voluptates vero.', NULL, '2019-02-23 01:09:57', '2019-02-23 01:09:57'),
(71, 'Joaquin Roberts', 'marc.rolfson@example.com', 'Ut quibusdam suscipit reprehenderit ea qui natus ad doloribus.', NULL, '2019-02-23 01:09:57', '2019-02-23 01:09:57'),
(72, 'Lera Walsh', 'cristina.dicki@example.org', 'Non et praesentium totam perspiciatis reiciendis quos consectetur.', NULL, '2019-02-23 01:09:57', '2019-02-23 01:09:57'),
(73, 'Marilie Greenfelder', 'goodwin.elizabeth@example.com', 'Non deserunt sunt modi aut facilis.', NULL, '2019-02-23 01:09:57', '2019-02-23 01:09:57'),
(74, 'Prof. Alf McCullough IV', 'parker.doug@example.net', 'Modi non dolorum dignissimos distinctio iure alias iure voluptatem.', NULL, '2019-02-23 01:09:57', '2019-02-23 01:09:57'),
(75, 'Claude Fritsch', 'jermain.carter@example.com', 'Et et accusantium nihil quia.', NULL, '2019-02-23 01:09:57', '2019-02-23 01:09:57'),
(76, 'Yesenia Lynch', 'rhett82@example.org', 'Officia rerum sequi amet.', NULL, '2019-02-23 01:09:57', '2019-02-23 01:09:57'),
(77, 'Drake Blanda Sr.', 'clemens.romaguera@example.org', 'Dicta minima ipsa temporibus et.', NULL, '2019-02-23 01:09:57', '2019-02-23 01:09:57'),
(78, 'George Wisozk', 'upton.fay@example.org', 'Voluptatem soluta a sint dolores.', NULL, '2019-02-23 01:09:57', '2019-02-23 01:09:57'),
(79, 'Ansel Strosin', 'brakus.taya@example.org', 'Vel excepturi sint architecto voluptatem expedita voluptatem.', NULL, '2019-02-23 01:09:57', '2019-02-23 01:09:57'),
(80, 'Doyle Wilderman', 'baron16@example.com', 'Ducimus omnis non voluptas et blanditiis laboriosam molestias ratione.', NULL, '2019-02-23 01:09:57', '2019-02-23 01:09:57'),
(81, 'Fatima Donnelly', 'ohomenick@example.net', 'Non illo sint consequatur a deserunt.', NULL, '2019-02-23 01:09:57', '2019-02-23 01:09:57'),
(82, 'Mr. Alek Glover', 'kyler.stracke@example.org', 'Perferendis officiis sequi velit ducimus ut.', NULL, '2019-02-23 01:09:57', '2019-02-23 01:09:57'),
(83, 'Dr. Gordon Hessel', 'annabell.williamson@example.com', 'Quisquam magnam soluta velit nobis ullam dignissimos qui.', NULL, '2019-02-23 01:09:58', '2019-02-23 01:09:58'),
(84, 'Prof. Matteo Hane', 'sabryna.greenfelder@example.net', 'Sit qui cupiditate doloribus quis magni facilis.', NULL, '2019-02-23 01:09:58', '2019-02-23 01:09:58'),
(85, 'Samanta Kling', 'moshe04@example.com', 'Exercitationem magnam quia tempora.', NULL, '2019-02-23 01:09:58', '2019-02-23 01:09:58'),
(86, 'Mr. Isidro Romaguera DDS', 'ujohns@example.net', 'Id asperiores deserunt esse animi qui.', NULL, '2019-02-23 01:09:58', '2019-02-23 01:09:58'),
(87, 'Mr. General Shields', 'oconner.lexi@example.com', 'Cumque quidem velit aut veritatis qui voluptates sed voluptate.', NULL, '2019-02-23 01:09:58', '2019-02-23 01:09:58'),
(88, 'Susan Klein', 'prohaska.holden@example.com', 'Iste nobis laboriosam quod nostrum omnis soluta repudiandae.', NULL, '2019-02-23 01:09:58', '2019-02-23 01:09:58'),
(89, 'Tristian Eichmann', 'eichmann.leonard@example.org', 'Aut maiores blanditiis voluptatem tenetur.', NULL, '2019-02-23 01:09:58', '2019-02-23 01:09:58'),
(90, 'Mr. Ryleigh Pagac', 'merl79@example.com', 'Ut aut explicabo expedita nostrum fuga.', NULL, '2019-02-23 01:09:58', '2019-02-23 01:09:58'),
(91, 'Cheyanne Champlin', 'magdalena.nicolas@example.net', 'Dolor vel blanditiis accusamus eos placeat temporibus.', NULL, '2019-02-23 01:09:58', '2019-02-23 01:09:58'),
(92, 'Miss Florine Murray III', 'rowan.homenick@example.org', 'Iure sunt voluptatum voluptatum.', NULL, '2019-02-23 01:09:58', '2019-02-23 01:09:58'),
(93, 'Lizeth Sawayn', 'dewayne54@example.org', 'Et omnis voluptatibus iusto iste facere suscipit nulla.', NULL, '2019-02-23 01:09:58', '2019-02-23 01:09:58'),
(94, 'Mrs. Raquel Pfannerstill DDS', 'nitzsche.freeman@example.org', 'Sit placeat laborum aut consequatur vitae repudiandae ut.', NULL, '2019-02-23 01:09:58', '2019-02-23 01:09:58'),
(95, 'Dr. Susan Waelchi', 'swelch@example.com', 'Non quo ipsum quia rerum perspiciatis dolores molestias sed.', NULL, '2019-02-23 01:09:58', '2019-02-23 01:09:58'),
(96, 'Dr. Eliseo Schroeder', 'zgreen@example.com', 'Veritatis a non id aut debitis iste quaerat.', NULL, '2019-02-23 01:09:58', '2019-02-23 01:09:58'),
(97, 'Brad Will', 'batz.brenden@example.net', 'Et quos et ab doloremque a saepe et.', NULL, '2019-02-23 01:09:58', '2019-02-23 01:09:58'),
(98, 'Isabell Goodwin', 'sanford.lottie@example.org', 'Inventore sunt dolores assumenda odio perspiciatis adipisci.', NULL, '2019-02-23 01:09:58', '2019-02-23 01:09:58'),
(99, 'Dr. Judy Volkman I', 'lucienne05@example.com', 'Fuga officiis officia animi consequuntur.', NULL, '2019-02-23 01:09:58', '2019-02-23 01:09:58'),
(100, 'Tierra Wehner', 'ryan.adele@example.org', 'Officiis architecto saepe quas debitis perspiciatis.', NULL, '2019-02-23 01:09:58', '2019-02-23 01:09:58'),
(101, 'Rino Ridlo Julianto', 'rinoridlojulianto@gmail.com', 'Heeeemmmmmmmmb', '2019-02-23 04:53:29', '2019-02-23 03:52:31', '2019-02-23 04:53:29'),
(102, 'Rino Ridlo Julianto', 'rinoridlojulianto@gmail.com', 'Fuahahahahahahahahahaha', NULL, '2019-02-23 05:11:48', '2019-02-23 05:11:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

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
-- Indexes for table `signatures`
--
ALTER TABLE `signatures`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `signatures`
--
ALTER TABLE `signatures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
