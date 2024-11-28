-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28/11/2024 às 03:35
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `estoqueveiculos`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2024_11_27_155358_create_veiculos_table', 1),
(2, '2024_11_27_155400_create_opcionais_table', 1),
(3, '2024_11_27_155401_create_veiculo_opcional_table', 1),
(5, '2024_11_27_171255_create_sessions_table', 2),
(6, '2024_11_27_222512_create_veiculos_table', 3),
(7, '2024_11_27_223333_create_opcionais_table', 4),
(8, '2024_11_27_223845_create_opcionais_table', 5),
(9, '2024_11_27_223904_create_veiculos_table', 5),
(10, '2024_11_27_224411_create_opcionais_table', 6),
(11, '2024_11_27_224449_create_veiculos_table', 6),
(12, '2024_11_27_224514_create_veiculo_opcional_table', 6),
(13, '2024_11_27_232539_create_cache_table', 7);

-- --------------------------------------------------------

--
-- Estrutura para tabela `opcionais`
--

CREATE TABLE `opcionais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `opcionais`
--

INSERT INTO `opcionais` (`id`, `nome`, `created_at`, `updated_at`) VALUES
(1, 'Arcondicionado', NULL, NULL),
(2, 'Vidroselétricos', NULL, NULL),
(3, 'Direçãohidráulica', NULL, NULL),
(4, 'Tetosolar', NULL, NULL),
(5, 'Faróis de LED', NULL, NULL),
(6, 'Travaselétricas', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('ib1gnkwEjG7jqHKfi6V372BxXPpinpVnjtubMuzU', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOXdmWTNuNk9XV2doSWVhVW1vZ1lqa1FCT2dCUGczU0JvSGt2VlhHbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9vcGNpb25haXNWZWljdWxvcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732761276);

-- --------------------------------------------------------

--
-- Estrutura para tabela `veiculos`
--

CREATE TABLE `veiculos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `marca` varchar(255) NOT NULL,
  `modelo` varchar(255) NOT NULL,
  `ano` int(11) NOT NULL,
  `versao` varchar(255) NOT NULL,
  `cor` varchar(255) NOT NULL,
  `km` int(11) NOT NULL,
  `combustivel` varchar(255) NOT NULL,
  `cambio` varchar(255) NOT NULL,
  `portas` int(11) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `veiculos`
--

INSERT INTO `veiculos` (`id`, `marca`, `modelo`, `ano`, `versao`, `cor`, `km`, `combustivel`, `cambio`, `portas`, `preco`, `date`, `created_at`, `updated_at`) VALUES
(13, 'Chevrolet', 'Onix', 2024, 'LT', 'Branco', 10000, 'Gasolina', 'Automático', 4, 85000.00, '2024-06-11 19:30:21', '2024-11-28 04:23:35', '2024-11-28 04:23:35'),
(14, 'Fiat', 'Argo', 2023, 'Trek', 'Prata', 20000, 'Flex', 'Manual', 4, 72000.00, '2024-06-14 07:20:41', '2024-11-28 04:24:29', '2024-11-28 04:24:29'),
(15, 'Volkswagen', 'T-Cross', 2022, 'Comfortline', 'Preto', 30000, 'Gasolina', 'Automático', 5, 98000.00, '2024-06-14 09:15:01', '2024-11-28 04:24:34', '2024-11-28 04:24:34');

-- --------------------------------------------------------

--
-- Estrutura para tabela `veiculo_opcional`
--

CREATE TABLE `veiculo_opcional` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `veiculo_id` bigint(20) UNSIGNED NOT NULL,
  `opcional_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `veiculo_opcional`
--

INSERT INTO `veiculo_opcional` (`id`, `veiculo_id`, `opcional_id`, `created_at`, `updated_at`) VALUES
(1, 13, 1, NULL, NULL),
(2, 13, 2, NULL, NULL),
(3, 13, 3, NULL, NULL),
(4, 13, 6, NULL, NULL),
(5, 14, 1, NULL, NULL),
(6, 14, 2, NULL, NULL),
(7, 14, 3, NULL, NULL),
(8, 15, 1, NULL, NULL),
(9, 15, 2, NULL, NULL),
(10, 15, 3, NULL, NULL),
(11, 15, 4, NULL, NULL),
(12, 15, 5, NULL, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Índices de tabela `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `opcionais`
--
ALTER TABLE `opcionais`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Índices de tabela `veiculos`
--
ALTER TABLE `veiculos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `veiculo_opcional`
--
ALTER TABLE `veiculo_opcional`
  ADD PRIMARY KEY (`id`),
  ADD KEY `veiculo_opcional_veiculo_id_foreign` (`veiculo_id`),
  ADD KEY `veiculo_opcional_opcional_id_foreign` (`opcional_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `opcionais`
--
ALTER TABLE `opcionais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `veiculos`
--
ALTER TABLE `veiculos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `veiculo_opcional`
--
ALTER TABLE `veiculo_opcional`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `veiculo_opcional`
--
ALTER TABLE `veiculo_opcional`
  ADD CONSTRAINT `veiculo_opcional_opcional_id_foreign` FOREIGN KEY (`opcional_id`) REFERENCES `opcionais` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `veiculo_opcional_veiculo_id_foreign` FOREIGN KEY (`veiculo_id`) REFERENCES `veiculos` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
