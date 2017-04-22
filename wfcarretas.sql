-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 22-Abr-2017 às 21:58
-- Versão do servidor: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wfcarretas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `administracaos`
--

CREATE TABLE `administracaos` (
  `id` int(10) UNSIGNED NOT NULL,
  `categoria` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imagem` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `administracaos`
--

INSERT INTO `administracaos` (`id`, `categoria`, `imagem`, `created_at`, `updated_at`) VALUES
(3, 'Fazendinha', '1486150023.jpg', '2017-02-03 22:27:03', '2017-02-03 22:27:03'),
(4, 'Reboque', '1486150039.jpg', '2017-02-03 22:27:19', '2017-02-03 22:27:19'),
(5, 'Reboque', '1486150176.jpg', '2017-02-03 22:29:36', '2017-02-03 22:29:36'),
(6, 'Trucada', '1486150188.jpg', '2017-02-03 22:29:48', '2017-02-03 22:29:48'),
(7, 'Carroçinha ', '1486150206.jpeg', '2017-02-03 22:30:06', '2017-02-03 22:30:06'),
(8, 'Trucada Fechada', '1486150217.jpg', '2017-02-03 22:30:17', '2017-02-03 22:30:17'),
(9, 'Fazendinha', '1486150226.jpg', '2017-02-03 22:30:26', '2017-02-03 22:30:26'),
(10, 'Cargueiro', '1486150244.jpg', '2017-02-03 22:30:44', '2017-02-03 22:30:44'),
(12, 'Fazendinha', '1486151548.jpg', '2017-02-03 22:52:28', '2017-02-03 22:52:28'),
(13, 'Trucada Fechada', '1486411461.jpg', '2017-02-06 23:04:21', '2017-02-06 23:04:21'),
(14, 'Teste', '1487003929.jpg', '2017-02-13 19:38:50', '2017-02-13 19:38:50');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_01_12_195856_create_controles_table', 1),
(8, '2017_02_03_182010_create_administracaos_table', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('pedro@gmail.com', '675db8489931c0988efc29a38818de101cc6fe6def554c9418d9fc70a4055ffe', '2017-02-06 23:24:56');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Pedro Wenner', 'pedro@gmail.com', '$2y$10$cvABnNWkGerq2ZTtuRX/XupHeHLYHpUEjjsO75LV/NgLmU/KcUvcG', 'CO7kUovKGnKEsNX1ZoaHIDEhiBcLOw4D5SCHZYSrOHlkKQ0hz8obCwKJkJtj', '2017-01-19 19:16:47', '2017-02-08 22:45:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administracaos`
--
ALTER TABLE `administracaos`
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
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

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
-- AUTO_INCREMENT for table `administracaos`
--
ALTER TABLE `administracaos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
