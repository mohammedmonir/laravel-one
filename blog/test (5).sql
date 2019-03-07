-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 07 مارس 2019 الساعة 21:56
-- إصدار الخادم: 10.1.31-MariaDB
-- PHP Version: 7.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- بنية الجدول `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `admins`
--

INSERT INTO `admins` (`id`, `username`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(15, 'Mr. Michel Wolf', 'clemmie13@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'oBOEXSvA0f', '2018-09-19 19:13:14', '2018-09-19 19:13:14'),
(16, 'Lawson Reilly', 'hudson.delmer@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'WhoVzer3Dh', '2018-09-19 19:13:14', '2018-09-19 19:13:14'),
(17, 'Hunter Pollich', 'omueller@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'gwUioGxaB9', '2018-09-19 19:13:14', '2018-09-19 19:13:14'),
(18, 'Adela Brekke', 'armani06@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '1W8QxmqfAi', '2018-09-19 19:13:14', '2018-09-19 19:13:14'),
(19, 'Mr. Elvis Torphy DVM', 'aurelio89@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '9HkwbdtRrm', '2018-09-19 19:13:14', '2018-09-19 19:13:14'),
(20, 'Ryan Mitchell', 'jacinthe66@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'QcUl6n2Yoj', '2018-09-19 19:13:14', '2018-09-19 19:13:14'),
(21, 'Mr. Ryan Miller', 'schowalter.friedrich@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'YgZol8vzdi', '2018-09-19 19:13:14', '2018-09-19 19:13:14'),
(22, 'Arlo Orn', 'npouros@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '9TIhJd0zQw', '2018-09-19 19:13:14', '2018-09-19 19:13:14'),
(23, 'Emilio Toy', 'milo.white@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'RGjQTfUyJa', '2018-09-19 19:13:14', '2018-09-19 19:13:14'),
(24, 'Stephen Kohler', 'eichmann.miguel@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'cPagr2pCFz', '2018-09-19 19:13:14', '2018-09-19 19:13:14'),
(25, 'Dr. Cletus Cole III', 'oran.kuphal@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'BSfbdlPP9b', '2018-09-19 19:13:14', '2018-09-19 19:13:14'),
(26, 'Mr. Tremaine Herzog', 'amaya51@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'L3pYtVuWyY', '2018-09-19 19:13:14', '2018-09-19 19:13:14'),
(27, 'Richmond Reichel', 'tania29@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'jDh9d47isW', '2018-09-19 19:13:14', '2018-09-19 19:13:14'),
(28, 'Dr. Mark Crooks PhD', 'elisha.tillman@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'bz7Li68bmZ', '2018-09-19 19:13:14', '2018-09-19 19:13:14'),
(29, 'Melba Abbott', 'gladys.kilback@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'BttNi7rIEh', '2018-09-19 19:13:14', '2018-09-19 19:13:14'),
(30, 'Prof. Asa Hamill I', 'liza.koelpin@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'gmleFBaLA9', '2018-09-19 19:13:14', '2018-09-19 19:13:14'),
(31, 'Ms. Melissa Romaguera', 'hilbert.mitchell@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'vrkiJYDykf', '2018-09-19 19:13:14', '2018-09-19 19:13:14'),
(32, 'Ivy Quigley', 'kilback.tomasa@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'icuLWWUfJU', '2018-09-19 19:13:14', '2018-09-19 19:13:14'),
(33, 'Miss Mikayla Beahan IV', 'stehr.ashlynn@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'q0C7Suubzx', '2018-09-19 19:13:14', '2018-09-19 19:13:14'),
(34, 'Leopoldo Durgan', 'thompson.devan@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '8TK1ndMiuN', '2018-09-19 19:13:14', '2018-09-19 19:13:14'),
(35, 'Prof. Addison Herman PhD', 'ward11@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'zl3A23LzxU', '2018-09-19 19:13:14', '2018-09-19 19:13:14'),
(36, 'Miss Janie Bernhard I', 'qluettgen@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'mGeUYrW1wv', '2018-09-19 19:13:14', '2018-09-19 19:13:14'),
(37, 'Arno Brakus', 'quigley.aubree@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'JYyo3i6XDw', '2018-09-19 19:13:14', '2018-09-19 19:13:14'),
(38, 'Ms. Jennyfer Walker II', 'estrella.hilll@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'FJSurNzmO4', '2018-09-19 19:13:14', '2018-09-19 19:13:14'),
(39, 'Prof. Albert Braun DDS', 'hhauck@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'EyYvPCXq1D', '2018-09-19 19:13:14', '2018-09-19 19:13:14'),
(40, 'Mr. Milton Erdman V', 'paucek.angie@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'EnMF8X0ZWq', '2018-09-19 19:13:14', '2018-09-19 19:13:14'),
(41, 'Dr. Rachael Stroman DVM', 'jewel85@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'xfVrYlJGvs', '2018-09-19 19:13:14', '2018-09-19 19:13:14'),
(42, 'Aisha Kovacek', 'shirley77@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Gai4Bhth3K', '2018-09-19 19:13:14', '2018-09-19 19:13:14'),
(43, 'Annie McKenzie', 'edwin.erdman@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '84CRCxmM7z', '2018-09-19 19:13:14', '2018-09-19 19:13:14'),
(44, 'Josiah Zboncak DVM', 'pearlie.zboncak@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'nTtjBe1kzN', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(45, 'Theodora Robel', 'mark.gusikowski@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '4QCbdUfrmp', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(46, 'Dr. Gerald Mante', 'stella65@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Ldnvj9xAL5', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(47, 'Prof. Randy Morar', 'will.nienow@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ytwsiQZYc5', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(48, 'Evans Kuhn', 'wleuschke@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'bBVM0QK7dw', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(49, 'Beau Sporer', 'sandrine06@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ZNEShh81Ko', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(50, 'Kaitlyn Herman', 'ppfeffer@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Sge1Epp4wF', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(51, 'Cecile Lindgren', 'nflatley@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'fZ2UpeyT1S', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(52, 'Libbie Turner', 'robel.alanis@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'tEvym76m4a', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(53, 'Ella Stracke', 'kshlerin.chesley@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '88t5NswSsx', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(54, 'Liliane Schamberger', 'worn@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Yrx6ffiVIz', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(55, 'Sylvan Smitham', 'nicholaus64@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'p4okNR7CBF', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(56, 'Ms. Dariana Yundt', 'kasandra.ullrich@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'LYdU7ePilL', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(57, 'Nadia Steuber', 'alycia.dickinson@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'bYe1sXXyV0', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(58, 'Katlyn Cummings', 'kzboncak@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'kvyfVIincf', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(59, 'Otto Casper I', 'bo39@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'i0srYld7pX', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(60, 'Dr. Obie Nolan PhD', 'koepp.caterina@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'GDemaDnOP8', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(61, 'Ellis Marvin', 'fahey.annabell@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'pX8lupLfzH', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(62, 'Enid Grimes', 'sherman71@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'UA1VeOLXiZ', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(63, 'Kara Rau', 'annabell.kilback@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'dgmuQ5hyda', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(64, 'Tatyana Schaefer', 'jacobi.jillian@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'IoXgh0PEUv', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(65, 'Prof. Moriah Leuschke', 'kerluke.luisa@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'wGAH6wDsbf', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(66, 'Dr. Bradford Welch', 'mabel.dach@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'qsEm2wfOAd', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(67, 'Leif Murray', 'kihn.dahlia@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'QX1rGTfvpU', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(68, 'Dr. Demond Bergstrom IV', 'bill75@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'XyC34IkG6T', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(69, 'Dr. Judson Schiller III', 'stiedemann.justyn@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'KvLfJE17jw', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(70, 'Jayce Grimes PhD', 'pierre63@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'JuE0bOaU4U', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(71, 'Prof. Lurline Klein', 'petra.witting@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'vYQBUuX8hi', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(72, 'Mrs. Aubree Kuvalis', 'oborer@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'z3MxQVxj96', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(73, 'Mara Kuvalis', 'qberge@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'i2q2b2ZzyF', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(74, 'Werner Blick', 'iblick@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0RibVJuriS', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(75, 'Prof. Claud Nader', 'osbaldo.mosciski@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '4NTozp3AZP', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(76, 'Jeromy Wiza', 'billie75@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '1ZE4zH4PKI', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(77, 'Ned Gorczany', 'smaggio@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'YXUUrfsh3Q', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(78, 'Emerson Jones', 'tkshlerin@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'j8gfw5f21K', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(79, 'Annamae Collins', 'paxton.fadel@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'e9NkWsZp4V', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(80, 'Adella Weissnat', 'jarod28@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Iye91G7zxg', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(81, 'Benton Kunde III', 'kian65@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'uYSLpHwpXw', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(82, 'Abraham Reilly', 'sdeckow@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'JmDXdN4RXO', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(83, 'Mrs. Graciela Simonis', 'marisa.batz@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'xVXScxT31h', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(84, 'Elizabeth Predovic', 'imelda.franecki@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'UEnXRIRGbf', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(85, 'Mr. Delaney Langworth', 'eveline77@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Wuay4MBrtC', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(86, 'Shayna Reichel', 'goodwin.krystina@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'toasuHzxxj', '2018-09-19 19:13:15', '2018-09-19 19:13:15'),
(87, 'Petra Franecki', 'stephen.swift@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'MrczDjSOeN', '2018-09-19 19:13:16', '2018-09-19 19:13:16'),
(90, 'Wava Roberts', 'mnolan@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Qigpt2jmRu', '2018-09-19 19:13:16', '2018-09-19 19:13:16'),
(91, 'Thad Roob I', 'beatty.rebeca@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '3OVFCbBUDQ', '2018-09-19 19:13:16', '2018-09-19 19:13:16'),
(92, 'Jennyfer Hyatt', 'vhamill@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '28cvdYIBdh', '2018-09-19 19:13:16', '2018-09-19 19:13:16'),
(95, 'Ms. Novella Mosciski', 'simonis.emely@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'TEPs5qLLTD', '2018-09-19 19:13:16', '2018-09-19 19:13:16'),
(104, 'Claude Schaden', 'white.augusta@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'd64EnLUka7', '2018-09-19 19:13:16', '2018-09-19 19:13:16'),
(105, 'Craig Langosh MD', 'hans.blick@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'WHDf8e3L7t', '2018-09-19 19:13:16', '2018-09-19 19:13:16'),
(106, 'Veda Smith', 'verla.schiller@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'C0Ix3w3ix2', '2018-09-19 19:13:16', '2018-09-19 19:13:16'),
(107, 'Ms. Jaclyn Mraz', 'dnicolas@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'zDQhh7Mq1B', '2018-09-19 19:13:16', '2018-09-19 19:13:16'),
(108, 'Dr. Madilyn Schamberger Jr.', 'lind.elsa@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'PPpqkVsI3z', '2018-09-19 19:13:16', '2018-09-19 19:13:16'),
(109, 'Conor Mohr', 'wuckert.cyril@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0nUy1QzQr0', '2018-09-19 19:13:16', '2018-09-19 19:13:16'),
(110, 'Prof. Khalil Daugherty', 'bahringer.herminia@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'y15i1H7J4w', '2018-09-19 19:13:16', '2018-09-19 19:13:16'),
(111, 'Dr. Alejandrin Nicolas II', 'bzboncak@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Yu5RI04AuZ', '2018-09-19 19:13:16', '2018-09-19 19:13:16'),
(112, 'Herminia Heaney', 'columbus19@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'fVFMXe5EpI', '2018-09-19 19:13:16', '2018-09-19 19:13:16'),
(113, 'Mr. Cordelia Barrows PhD', 'eichmann.noemy@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '4eIWCiXzZy', '2018-09-19 19:13:16', '2018-09-19 19:13:16'),
(114, 'Mr. Nelson Fahey DVM', 'brandyn88@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ltJcwgME9G', '2018-09-19 19:13:16', '2018-09-19 19:13:16'),
(115, 'Lydia Connelly', 'breitenberg.ada@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'kJUO4UQMLO', '2018-09-19 19:13:16', '2018-09-19 19:13:16'),
(116, 'Miracle Kassulke Jr.', 'emerson.bogisich@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'BmoP6ymuYF', '2018-09-19 19:13:16', '2018-09-19 19:13:16'),
(117, 'Dr. Norris Runolfsdottir DDS', 'alden.marvin@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'MIh74NXqF2', '2018-09-19 19:13:16', '2018-09-19 19:13:16'),
(118, 'Letha Heathcote', 'michael04@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'e4A21O8UHL', '2018-09-19 19:13:16', '2018-09-19 19:13:16'),
(119, 'Lavada Thompson', 'tracey70@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'IepXPRWDxc', '2018-09-19 19:13:16', '2018-09-19 19:13:16'),
(120, 'Samson Ziemann', 'lubowitz.sheldon@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'qPtiTvyYwN', '2018-09-19 19:13:16', '2018-09-19 19:13:16'),
(121, 'Dr. Verlie Little', 'daniel.filiberto@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'IBWWj5TCLt', '2018-09-19 19:13:16', '2018-09-19 19:13:16'),
(122, 'Jerrod Beatty', 'cummings.major@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'nf1vWF2MI7', '2018-09-19 19:13:16', '2018-09-19 19:13:16'),
(123, 'Adell Gerhold Jr.', 'mcclure.tia@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'jWHFZSN8nL', '2018-09-19 19:13:16', '2018-09-19 19:13:16'),
(124, 'Mrs. Magdalen Beatty V', 'kgreenfelder@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'wFXUksRu0d', '2018-09-19 19:13:16', '2018-09-19 19:13:16'),
(125, 'Mrs. Myrna Kihn', 'alexanne.keebler@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '7aiV2ijR38', '2018-09-19 19:13:16', '2018-09-19 19:13:16'),
(126, 'Madie Dibbert DDS', 'junior.kovacek@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'mCb0hi897z', '2018-09-19 19:13:16', '2018-09-19 19:13:16'),
(127, 'Hubert Douglas', 'nikolaus.jaclyn@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '9aGJEneoH9', '2018-09-19 19:13:16', '2018-09-19 19:13:16'),
(128, 'Chelsea McClure', 'hkirlin@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ukKztH0Frz', '2018-09-19 19:13:16', '2018-09-19 19:13:16'),
(129, 'Freda Gorczany V', 'genesis17@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'NhrLw5lzII', '2018-09-19 19:13:16', '2018-09-19 19:13:16'),
(130, 'Dr. Chase Wiza DVM', 'quincy02@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'if7ko5EhZo', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(131, 'Mr. Colt Nitzsche', 'oma17@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'LA2ghF1BMj', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(132, 'Kristina Cummerata', 'melyna.heaney@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Cjt4b2GQmj', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(133, 'Prof. Juana Tillman', 'mbednar@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'FaU7sW5FXm', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(134, 'Prof. Andre Kovacek V', 'hritchie@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ZeLXdEvVm4', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(135, 'Miss Bonnie Rau I', 'alvina.romaguera@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'L9hYNjFAEA', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(136, 'Darron Stanton', 'mallory23@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'PemoxWbFAS', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(137, 'Mireille Heidenreich', 'kemmer.edythe@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'oXLQZi9ojM', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(138, 'Camden Collins DVM', 'adell.emmerich@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'A3aVFx6Uge', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(139, 'Andreane Beatty', 'jailyn34@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '7PWiW7JrEd', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(140, 'Miss Laury Block I', 'braun.pedro@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'B4xNWSQdqX', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(141, 'Miss Lauryn Mosciski', 'yroob@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'mQap7g1zd5', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(142, 'Nina Kassulke', 'cayla96@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '4LVBZN2i47', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(143, 'Prof. Thelma Gleason II', 'olin.kutch@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '9gQyfdCBVk', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(144, 'Damien Ryan', 'elisha.bergnaum@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'wi8sfra0Fs', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(145, 'Mrs. Amelie Treutel Jr.', 'streich.eloise@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'sO5BqQdr32', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(146, 'Mr. Isaiah Keebler Sr.', 'leland40@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'A84V5wg7Cw', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(147, 'Amari Dibbert', 'uledner@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'lEuqeNldpa', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(148, 'Kaela Murphy', 'allison45@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'FVNk2OGYdz', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(149, 'Elbert Littel DVM', 'rritchie@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'djiBQqdzZY', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(150, 'Reuben Cummings', 'ryann63@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'pwL3nYoZwz', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(151, 'Aleen Gleichner', 'ernser.oda@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'aJF8a0g6gN', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(152, 'Miss Karina Dietrich Jr.', 'sdaniel@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'lN8BubFctO', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(153, 'Jeff Turcotte', 'penelope74@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'XvQRAbCroF', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(154, 'Charley Stiedemann I', 'myrtie61@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'a2V9ZwWb7H', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(155, 'Elian Considine', 'klehner@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ppgBK8bHqd', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(156, 'Ms. Erna Brakus IV', 'eudora51@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'AAhdnGOxzi', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(157, 'Deonte Cassin', 'leannon.elisabeth@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0mit0S58Sd', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(158, 'Prof. Kendall Halvorson', 'wgleason@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '8RUc1AqiO4', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(159, 'ammar', 'ammar@hotmail.com', '$2y$10$.Nt3Bzn.It6EBbWgYXP.v.qNRAaJibf7Qa00NGyTR3bZeUrNM//2S', 'zyhpmRyfJP', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(160, 'Mazie Mills V', 'hal.vonrueden@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'felbZP4MDR', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(161, 'Jace Metz', 'roreilly@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'TQz6GHWXa6', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(162, 'Maria Morar', 'charles36@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'hynK1NzY8l', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(163, 'Johann Franecki Jr.', 'jewell98@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '75jArttbpo', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(164, 'Meagan Hegmann', 'ignacio.russel@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '2ckOhmOjJE', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(165, 'Lincoln Pacocha', 'trunolfsson@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '9SXxjPAV6o', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(166, 'Mellie Gulgowski', 'dennis.hahn@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '3sTUOjZqi6', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(167, 'Miss Alvena Monahan Jr.', 'bemmerich@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'D95BAokRa2', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(168, 'Ms. Felicita Strosin DVM', 'jerad.watsica@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'sl4mH5FNoO', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(169, 'Jonas Stamm', 'jakubowski.liam@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'vYi6K7d3Ex', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(170, 'Dannie Mills', 'dameon.bechtelar@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'OtkcvzA5z7', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(171, 'Dr. Elinor Kris', 'regan43@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'fAvfU4tLSp', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(172, 'Devyn Kassulke', 'rebecca06@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'jcfTxSbiAs', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(173, 'Prof. Keon Beier', 'brittany98@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '1om7CYqAwe', '2018-09-19 19:13:17', '2018-09-19 19:13:17'),
(174, 'Freddy Rogahn', 'matilda32@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'pFOHgK055s', '2018-09-19 19:13:18', '2018-09-19 19:13:18'),
(175, 'Nils Kutch', 'alexander43@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '2ik60AXzvr', '2018-09-19 19:13:18', '2018-09-19 19:13:18'),
(176, 'Mrs. Reina Funk', 'ignatius85@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'keBnlBjJxN', '2018-09-19 19:13:18', '2018-09-19 19:13:18'),
(177, 'Dr. Lori Grady', 'assunta54@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'WcNK7RUjFI', '2018-09-19 19:13:18', '2018-09-19 19:13:18'),
(178, 'Gerard Lehner', 'ritchie.luna@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'QrZ9Khebb1', '2018-09-19 19:13:18', '2018-09-19 19:13:18'),
(179, 'Jamey Pollich DDS', 'christian85@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'gC993vRf1Z', '2018-09-19 19:13:18', '2018-09-19 19:13:18'),
(180, 'Miss Jannie Feil DDS', 'qnicolas@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'MfbVhaB67d', '2018-09-19 19:13:18', '2018-09-19 19:13:18'),
(181, 'Marjory Cronin', 'aurore35@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'hJS6EiQctm', '2018-09-19 19:13:18', '2018-09-19 19:13:18'),
(182, 'Evangeline Upton', 'leuschke.keven@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '55RYLHwbwi', '2018-09-19 19:13:18', '2018-09-19 19:13:18'),
(183, 'Prof. Delfina Johnson II', 'lizeth77@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'QMTbVSYDS7', '2018-09-19 19:13:18', '2018-09-19 19:13:18'),
(184, 'Evan Bartell IV', 'rodriguez.joseph@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'FwnDIpufcr', '2018-09-19 19:13:18', '2018-09-19 19:13:18'),
(185, 'Althea Auer', 'kara.schmitt@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'm6nbvz6jaS', '2018-09-19 19:13:18', '2018-09-19 19:13:18'),
(186, 'Dr. Lorine Sanford Sr.', 'rashawn.stark@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'zEvOp33Byi', '2018-09-19 19:13:18', '2018-09-19 19:13:18'),
(187, 'Prof. Katharina Ferry Jr.', 'elisha28@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'gOlJt3YOMR', '2018-09-19 19:13:18', '2018-09-19 19:13:18'),
(188, 'Odessa Osinski', 'genesis44@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'wnlJsiFmQR', '2018-09-19 19:13:18', '2018-09-19 19:13:18'),
(189, 'Lourdes Gutmann V', 'jonas62@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'XszqH4BliF', '2018-09-19 19:13:18', '2018-09-19 19:13:18'),
(190, 'Julia Becker IV', 'geovanni86@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'UnmRuUvd5d', '2018-09-19 19:13:18', '2018-09-19 19:13:18'),
(191, 'Ashley Bashirian', 'wilbert60@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Ygm6TTZ77i', '2018-09-19 19:13:18', '2018-09-19 19:13:18'),
(192, 'Dr. Soledad Brekke PhD', 'kgoodwin@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '6JFLfgKCto', '2018-09-19 19:13:18', '2018-09-19 19:13:18'),
(193, 'Leora Zieme', 'neil86@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'mojE9Id0MD', '2018-09-19 19:13:18', '2018-09-19 19:13:18'),
(194, 'Rudy Walsh', 'mbuckridge@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'adp86zbCRw', '2018-09-19 19:13:18', '2018-09-19 19:13:18'),
(195, 'Elza Ryan', 'walsh.norma@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'icIhUopXw8', '2018-09-19 19:13:18', '2018-09-19 19:13:18'),
(196, 'Betty Torp', 'rice.brain@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'pfWekOLQee', '2018-09-19 19:13:18', '2018-09-19 19:13:18'),
(197, 'Mrs. Janie Bartoletti PhD', 'amara75@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'xgjQ0hcp3s', '2018-09-19 19:13:18', '2018-09-19 19:13:18'),
(198, 'Mikayla Gutmann', 'rebeka.hansen@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'JqN2r2j3AM', '2018-09-19 19:13:18', '2018-09-19 19:13:18'),
(199, 'Newell Deckow', 'rowena23@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Fhck8Yz1pS', '2018-09-19 19:13:18', '2018-09-19 19:13:18'),
(200, 'Delia Corkery', 'ritchie.vivian@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'EY7E4ZBFNA', '2018-09-19 19:13:18', '2018-09-19 19:13:18'),
(201, 'Iliana Kemmer', 'aufderhar.paxton@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'MHooEirt8n', '2018-09-19 19:13:18', '2018-09-19 19:13:18'),
(202, 'Peggie Kemmer', 'tdaniel@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Ju8UFpz3OB', '2018-09-19 19:13:18', '2018-09-19 19:13:18'),
(203, 'Miss Elouise Hilll', 'deckow.marilou@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'J81unmsIlV', '2018-09-19 19:13:18', '2018-09-19 19:13:18'),
(204, 'fgdfg', 'ffgdffgdfffdgd', 'fdgdfg', '', '2018-09-25 06:39:50', '2018-09-25 06:39:50'),
(205, '??? ????', 'ali79ali79ali19997@gmail.com', '$2y$10$7fLvQlI3ub5WB9XgXDB.E.YBnh8Om0212oNHg2wR5LRew/9JCjYcW', 'hjdsfhskjdfhsd', '2018-09-25 07:01:03', '2018-09-25 07:01:03'),
(206, '??? ????', 'fff@hotmail.com', '$2y$10$5ENskfJJEbEwSS7dgzkv8u2MPTm7ii7eZ4iFilztZZFhNEFG3ekam', 'hjdsfhskjdfhsd', '2018-09-25 19:42:11', '2018-09-25 19:42:11'),
(207, '????', 'tes23123t2@hotmail.com', '$2b$10$zTgQqtedPslpxw3MXtnbPeso34Q2O99t2AEc6qOLNIRxJ9TnmtUvO', 'zyhpmRyfJP', '2018-09-30 21:26:29', '2018-09-30 21:26:29'),
(208, '????', 'test453532@hotmail.com', '$2y$10$c2q21EFxihkrToYWGQu0O.N1fbcBD9sVO5ebA3ekcb2q5A8or87Lu', 'zyhpmRyfJP', '2018-09-30 21:28:16', '2018-09-30 21:28:16'),
(209, '????', 'mohammed@hotmail.com', '$2y$10$.Nt3Bzn.It6EBbWgYXP.v.qNRAaJibf7Qa00NGyTR3bZeUrNM//2S', 'O0cXrApbazSiHHOucmkWlBNAzn5Z5eSVCrs6vYXEi5ym4MzCgSIB7GxyaKoN', '2018-10-01 12:28:58', '2018-10-01 12:28:58');

-- --------------------------------------------------------

--
-- بنية الجدول `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `city_name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `cities`
--

INSERT INTO `cities` (`id`, `city_name_ar`, `city_name_en`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 'القاهرة', 'Cairo', 1, '2018-10-27 17:31:52', '2018-10-27 17:31:52');

-- --------------------------------------------------------

--
-- بنية الجدول `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `countries`
--

INSERT INTO `countries` (`id`, `country_name_ar`, `country_name_en`, `mob`, `code`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'مصر', 'Egypt', '002', 'eg', 'countries/xTwdy0jO30LrJIterz06eXlcDPNMljwb6xZ11X0T.png', '2018-10-27 17:31:40', '2018-10-27 17:31:40');

-- --------------------------------------------------------

--
-- بنية الجدول `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `dep_name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dep_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `departments`
--

INSERT INTO `departments` (`id`, `dep_name_ar`, `dep_name_en`, `icon`, `description`, `keyword`, `parent`, `created_at`, `updated_at`) VALUES
(6, 'فسم تجريبي مهم', 'test departments', 'departments/MKoTXoyhTdhVCsuarDhbCZKpe73T0NtAcIe4f1N7.jpeg', NULL, NULL, NULL, '2018-11-06 14:01:02', '2019-01-01 20:57:43'),
(7, 'فسم تجريبي', 'test departments', NULL, NULL, NULL, NULL, '2018-12-01 10:05:11', '2018-12-01 10:05:11');

-- --------------------------------------------------------

--
-- بنية الجدول `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `full_file` varchar(255) NOT NULL,
  `mime_type` varchar(255) NOT NULL,
  `file_type` varchar(255) NOT NULL,
  `relation_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- بنية الجدول `manufacturers`
--

CREATE TABLE `manufacturers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `manufacturers`
--

INSERT INTO `manufacturers` (`id`, `name_ar`, `name_en`, `facebook`, `twitter`, `website`, `contact_name`, `mobile`, `email`, `lat`, `lng`, `icon`, `created_at`, `updated_at`) VALUES
(2, 'ابل', 'apple', 'https://www.youtube.com/watch?v=HcodxmdesfY&fbclid=IwAR2l7OgWs98Q_kMVv8gNjmW4EQZEp9dpdAeTmiIh6xeRIrRvGT3U_st6Ow8', 'https://www.youtube.com/watch?v=HcodxmdesfY&fbclid=IwAR2l7OgWs98Q_kMVv8gNjmW4EQZEp9dpdAeTmiIh6xeRIrRvGT3U_st6Ow8', NULL, 'لبييبل', '1111', 'ali79ali79ali19997@gmail.com', NULL, NULL, 'countries/I7vHbPzfYIvD2wsspqLic2bnAdyyMM7KFAt1zJar.jpeg', '2019-03-07 20:53:25', '2019-03-07 20:53:25');

-- --------------------------------------------------------

--
-- بنية الجدول `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2018_10_22_185531_contries', 1),
(5, '2018_10_23_151630_cities', 1),
(6, '2018_10_25_215940_state', 1),
(8, '2018_10_30_230222_create_departments_table', 2),
(9, '2019_01_01_234147_create_trade_marks_table', 3),
(11, '2019_01_04_204654_create_manufacturers_table', 4);

-- --------------------------------------------------------

--
-- بنية الجدول `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `token`, `created_at`, `updated_at`) VALUES
(163, 'ali79ali79ali19997@gmail.com', '$2y$10$OraAXnjEUzAbUKvL5hP9H.jALWgPEkCf9UIsL2WuKJDT/mq6SLaly', '2018-09-15 22:38:25', NULL),
(164, 'ali79ali79ali19997@gmail.com', 'e6692dbc55617f38433a550f37d62f129778241c66c16ff19913a2037075e416', '2018-09-15 22:38:25', '2018-09-17 21:00:00'),
(167, 'mohammed@hotmail.com', '$2y$10$zoJVuhxYpusOC1AVHMVv5umilCoVHJINNpyHtjHom8lcHNKs8Jlbq', '2018-09-22 21:37:42', NULL),
(168, 'mohammed@hotmail.com', '80a4e7ed92693b70021d5c82aad7a33ce6fe329aaebd1cf6da4e3a4a29a29539', '2018-09-22 21:37:42', NULL),
(169, 'test2@hotmail.com', '$2y$10$GxgLzyLrhMbNd/LV6kUSZ.D.ck8iyXfbgK5ppfGEhBdFTCPQ0xaXu', '2018-09-25 06:48:28', NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `sitename_ar` varchar(255) NOT NULL,
  `sitename_en` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `main_lang` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `keywords` longtext,
  `status` enum('open','close') NOT NULL,
  `message_maintenance` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `settings`
--

INSERT INTO `settings` (`id`, `sitename_ar`, `sitename_en`, `logo`, `icon`, `email`, `main_lang`, `description`, `keywords`, `status`, `message_maintenance`, `created_at`, `updated_at`) VALUES
(1, '??????? ???', 'store', 'settings/o2BH6yhtE3A4vduFTAy8cOZE1GSTJdi08WKsJXE9.jpeg', 'settings/KuUYibWU7h7dZhLnoY22ecjbhcnBCsZDZLosxIQ5.jpeg', 'd@htomail.com3', 'ar', 'hello hello hello hello hello hello', 'hello hello hello hello', 'open', '?????? ???? ?????', '2018-10-01 13:18:56', '2018-10-14 22:46:47');

-- --------------------------------------------------------

--
-- بنية الجدول `states`
--

CREATE TABLE `states` (
  `id` int(10) UNSIGNED NOT NULL,
  `state_name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `states`
--

INSERT INTO `states` (`id`, `state_name_ar`, `state_name_en`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES
(5, 'مدينة نصر', 'nasser city', 1, 1, '2018-10-27 17:41:36', '2018-10-27 17:41:36');

-- --------------------------------------------------------

--
-- بنية الجدول `trade_marks`
--

CREATE TABLE `trade_marks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `trade_marks`
--

INSERT INTO `trade_marks` (`id`, `name_ar`, `name_en`, `logo`, `created_at`, `updated_at`) VALUES
(2, 'ابل', 'apple', 'countries/U3j6HyJWr4OUzMtjmrSkgy32If4TCRpHrDehfD4W.jpeg', '2019-01-01 22:24:28', '2019-01-01 22:24:28');

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('vendor','company','user') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `level`, `created_at`, `updated_at`) VALUES
(2, 'ابو حازم', 'mohammed@hotmail.com', '$2y$10$NQubHvUkglZkWIDTUBUOn.LeNVVajdaLbqm0isK7whyrU3.W1Tcay', 'user', '2018-10-25 20:13:49', '2018-10-25 20:13:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_country_id_foreign` (`country_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departments_parent_foreign` (`parent`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `states_city_id_foreign` (`city_id`),
  ADD KEY `states_country_id_foreign` (`country_id`);

--
-- Indexes for table `trade_marks`
--
ALTER TABLE `trade_marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `trade_marks`
--
ALTER TABLE `trade_marks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- قيود الجداول المحفوظة
--

--
-- القيود للجدول `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;

--
-- القيود للجدول `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `departments` (`id`) ON DELETE CASCADE;

--
-- القيود للجدول `states`
--
ALTER TABLE `states`
  ADD CONSTRAINT `states_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `states_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
