-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-03-2026 a las 04:03:32
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `app_pollos_el_dorado`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login_histories`
--

CREATE TABLE `login_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `successful` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `login_histories`
--

INSERT INTO `login_histories` (`id`, `user_id`, `email`, `ip_address`, `user_agent`, `successful`, `created_at`) VALUES
(1, 1, 'admin@eldorado.pe', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', 1, '2026-03-12 20:24:55'),
(2, 2, 'marcelo320@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 1, '2026-03-13 01:02:42'),
(3, 2, 'marcelo320@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 1, '2026-03-13 01:02:43'),
(4, 2, 'marcelo320@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 1, '2026-03-13 14:10:30'),
(5, 1, 'admin@eldorado.pe', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', 1, '2026-03-13 14:12:34'),
(6, 1, 'admin@eldorado.pe', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', 1, '2026-03-15 01:58:43'),
(7, 2, 'marcelo320@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 1, '2026-03-15 02:10:39'),
(8, 2, 'marcelo320@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 1, '2026-03-15 21:25:34'),
(9, 1, 'admin@eldorado.pe', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36 Edg/146.0.0.0', 1, '2026-03-15 21:26:25'),
(10, 1, 'admin@eldorado.pe', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36 Edg/146.0.0.0', 1, '2026-03-15 23:48:14'),
(11, 2, 'marcelo320@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 1, '2026-03-16 17:24:49'),
(12, 2, 'marcelo320@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 1, '2026-03-16 17:26:06'),
(13, 2, 'marcelo320@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 1, '2026-03-16 17:41:33'),
(14, 2, 'marcelo320@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 1, '2026-03-16 17:50:20'),
(15, 2, 'marcelo320@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 1, '2026-03-16 18:16:06'),
(16, 2, 'marcelo320@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 1, '2026-03-16 18:48:23'),
(17, 2, 'marcelo320@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 1, '2026-03-16 18:56:54'),
(18, 2, 'marcelo320@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 1, '2026-03-16 19:05:27'),
(19, 3, 'james21@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 1, '2026-03-23 23:57:05'),
(20, 3, 'james21@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 1, '2026-03-24 00:07:35'),
(21, 3, 'james21@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 1, '2026-03-24 00:14:09'),
(22, 3, 'james21@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 1, '2026-03-24 00:32:55'),
(23, 3, 'james21@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 1, '2026-03-24 00:42:35'),
(24, 3, 'james21@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 1, '2026-03-24 00:52:36'),
(25, 3, 'james21@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 1, '2026-03-24 00:55:39'),
(26, 3, 'james21@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 1, '2026-03-24 01:06:31'),
(27, 3, 'james21@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 1, '2026-03-24 01:10:42'),
(28, 3, 'james21@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 1, '2026-03-24 01:21:32'),
(29, 3, 'james21@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 1, '2026-03-24 01:32:20'),
(30, 1, 'admin@eldorado.pe', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 1, '2026-03-24 01:41:01'),
(31, 2, 'marcelo320@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', 1, '2026-03-24 01:51:02'),
(32, 3, 'james21@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 1, '2026-03-24 02:00:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '0001_01_01_000003_create_sessions_table', 1),
(5, '2026_02_27_000003_add_role_and_phone_to_users_table', 1),
(6, '2026_02_27_000004_create_products_table', 1),
(7, '2026_02_27_000005_create_orders_table', 1),
(8, '2026_02_27_000006_create_order_items_table', 1),
(9, '2026_02_27_000007_create_order_status_histories_table', 1),
(10, '2026_02_27_000008_add_payment_fields_to_orders_table', 1),
(11, '2026_02_27_000009_add_category_to_products_table', 1),
(12, '2026_02_27_000010_add_salad_and_drink_to_orders_table', 1),
(13, '2026_02_27_000011_add_payment_proof_fields_to_orders_table', 1),
(14, '2026_02_27_000012_add_is_active_to_users_table', 1),
(15, '2026_03_06_000001_create_login_histories_table', 1),
(16, '2026_03_12_000002_add_billing_fields_to_orders_table', 1),
(17, '2026_03_14_000003_add_stock_to_products_table', 2),
(18, '2026_03_16_000004_create_user_addresses_table', 2),
(19, '2026_03_16_000005_add_scheduling_fields_to_orders_table', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tracking_code` varchar(20) NOT NULL,
  `customer_name` varchar(120) NOT NULL,
  `customer_phone` varchar(30) NOT NULL,
  `customer_email` varchar(120) DEFAULT NULL,
  `delivery_type` enum('pickup','delivery') NOT NULL,
  `scheduled_for` datetime DEFAULT NULL,
  `delivery_window_label` varchar(120) DEFAULT NULL,
  `status` enum('pending','confirmed','preparing','on_the_way','delivered','cancelled') NOT NULL DEFAULT 'pending',
  `total_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `payment_method` varchar(20) NOT NULL DEFAULT 'cod',
  `payment_gateway` varchar(30) DEFAULT NULL,
  `payment_reference` varchar(120) DEFAULT NULL,
  `payment_proof_path` varchar(500) DEFAULT NULL,
  `payment_reported_at` timestamp NULL DEFAULT NULL,
  `payment_verified_at` timestamp NULL DEFAULT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending',
  `billing_document_type` varchar(20) DEFAULT NULL,
  `billing_document_number` varchar(20) DEFAULT NULL,
  `billing_name` varchar(180) DEFAULT NULL,
  `billing_email` varchar(120) DEFAULT NULL,
  `billing_address` varchar(255) DEFAULT NULL,
  `billing_receipt_type` varchar(20) DEFAULT NULL,
  `billing_metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`billing_metadata`)),
  `salad_type` varchar(20) DEFAULT NULL,
  `drink_note` varchar(120) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `latitude` decimal(10,7) DEFAULT NULL,
  `longitude` decimal(10,7) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `tracking_code`, `customer_name`, `customer_phone`, `customer_email`, `delivery_type`, `scheduled_for`, `delivery_window_label`, `status`, `total_amount`, `payment_method`, `payment_gateway`, `payment_reference`, `payment_proof_path`, `payment_reported_at`, `payment_verified_at`, `payment_status`, `billing_document_type`, `billing_document_number`, `billing_name`, `billing_email`, `billing_address`, `billing_receipt_type`, `billing_metadata`, `salad_type`, `drink_note`, `address`, `reference`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(2, 2, 'ED-C44ACCF3', 'CARLO MARCELO ORDOÑEZ ARAUCO', '953976849', NULL, 'delivery', NULL, NULL, 'pending', 11.00, 'cod', NULL, NULL, NULL, NULL, NULL, 'pending', 'dni', '61643308', 'CARLO MARCELO ORDOÑEZ ARAUCO', NULL, NULL, 'boleta', NULL, NULL, NULL, 'Pasaje Quiroz', 'Zona Cajas Chico | Distrito/Ciudad Huancayo | Junín', -12.0720162, -75.2158000, '2026-03-16 03:01:40', '2026-03-16 03:01:40'),
(3, NULL, 'HIS25-0001', 'Cliente Historico 001', '900000001', NULL, 'delivery', NULL, NULL, 'delivered', 48.80, 'plin', NULL, 'PLN-0103-0001', '/storage/payment-proofs/demo-0001.jpg', '2025-01-03 18:15:00', '2025-01-03 20:15:00', 'verified', 'dni', '70000001', 'Cliente DNI 001', NULL, NULL, 'boleta', NULL, 'salada', NULL, 'Av. Historica 101, Huancayo', 'Referencia historica 1', -12.0651200, -75.2048500, '2025-01-03 18:15:00', '2025-01-03 21:15:00'),
(4, NULL, 'HIS25-0002', 'Cliente Historico 002', '900000002', NULL, 'pickup', NULL, NULL, 'delivered', 45.90, 'transfer', NULL, 'TRF-0107-0002', '/storage/payment-proofs/demo-0002.jpg', '2025-01-07 19:15:00', '2025-01-07 21:15:00', 'verified', 'dni', '70000002', 'Cliente DNI 002', NULL, NULL, 'boleta', NULL, 'dulce', NULL, NULL, NULL, NULL, NULL, '2025-01-07 19:15:00', '2025-01-07 22:15:00'),
(5, NULL, 'HIS25-0003', 'Cliente Historico 003', '900000003', 'cliente003@correo.com', 'pickup', NULL, NULL, 'delivered', 62.70, 'cod', NULL, 'COD-0111-0003', NULL, '2025-01-11 20:15:00', '2025-01-11 22:15:00', 'verified', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'salada', NULL, NULL, NULL, NULL, NULL, '2025-01-11 20:15:00', '2025-01-11 23:15:00'),
(6, NULL, 'HIS25-0004', 'Cliente Historico 004', '900000004', NULL, 'delivery', NULL, NULL, 'delivered', 74.80, 'yape', NULL, 'YAP-0115-0004', '/storage/payment-proofs/demo-0004.jpg', '2025-01-15 21:15:00', '2025-01-15 23:15:00', 'verified', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dulce', NULL, 'Av. Historica 104, Huancayo', 'Referencia historica 4', -12.0650900, -75.2048200, '2025-01-15 21:15:00', '2025-01-16 00:15:00'),
(7, NULL, 'HIS25-0005', 'Cliente Historico 005', '900000005', NULL, 'delivery', NULL, NULL, 'delivered', 46.90, 'plin', NULL, 'PLN-0119-0005', '/storage/payment-proofs/demo-0005.jpg', '2025-01-19 22:15:00', '2025-01-20 00:15:00', 'verified', 'dni', '70000005', 'Cliente DNI 005', NULL, NULL, 'boleta', NULL, 'salada', NULL, 'Av. Historica 105, Huancayo', 'Referencia historica 5', -12.0650800, -75.2048100, '2025-01-19 22:15:00', '2025-01-20 01:15:00'),
(8, NULL, 'HIS25-0006', 'Cliente Historico 006', '900000006', 'cliente006@correo.com', 'pickup', NULL, NULL, 'delivered', 70.80, 'transfer', NULL, 'TRF-0123-0006', '/storage/payment-proofs/demo-0006.jpg', '2025-01-23 23:15:00', '2025-01-24 01:15:00', 'verified', 'dni', '70000006', 'Cliente DNI 006', 'boleta006@correo.com', NULL, 'boleta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-23 23:15:00', '2025-01-24 02:15:00'),
(9, NULL, 'HIS25-0007', 'Cliente Historico 007', '900000007', NULL, 'pickup', NULL, NULL, 'delivered', 39.90, 'cod', NULL, 'COD-0127-0007', NULL, '2025-01-27 17:15:00', '2025-01-27 19:15:00', 'verified', 'dni', '70000007', 'Cliente DNI 007', NULL, NULL, 'boleta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-27 17:15:00', '2025-01-27 20:15:00'),
(10, NULL, 'HIS25-0008', 'Cliente Historico 008', '900000008', NULL, 'delivery', NULL, NULL, 'delivered', 90.90, 'yape', NULL, 'YAP-0131-0008', '/storage/payment-proofs/demo-0008.jpg', '2025-01-31 18:15:00', '2025-01-31 20:15:00', 'verified', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dulce', NULL, 'Av. Historica 108, Huancayo', 'Referencia historica 8', -12.0650500, -75.2047800, '2025-01-31 18:15:00', '2025-01-31 21:15:00'),
(11, NULL, 'HIS25-0009', 'Cliente Historico 009', '900000009', 'cliente009@correo.com', 'delivery', NULL, NULL, 'delivered', 50.70, 'plin', NULL, 'PLN-0204-0009', '/storage/payment-proofs/demo-0009.jpg', '2025-02-04 19:15:00', '2025-02-04 21:15:00', 'verified', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'salada', NULL, 'Av. Historica 109, Huancayo', 'Referencia historica 9', -12.0650400, -75.2047700, '2025-02-04 19:15:00', '2025-02-04 22:15:00'),
(12, NULL, 'HIS25-0010', 'Cliente Historico 010', '900000010', NULL, 'pickup', NULL, NULL, 'delivered', 34.90, 'transfer', NULL, 'TRF-0208-0010', '/storage/payment-proofs/demo-0010.jpg', '2025-02-08 20:15:00', '2025-02-08 22:15:00', 'verified', 'dni', '70000010', 'Cliente DNI 010', NULL, NULL, 'boleta', NULL, 'dulce', NULL, NULL, NULL, NULL, NULL, '2025-02-08 20:15:00', '2025-02-08 23:15:00'),
(13, NULL, 'HIS25-0011', 'Cliente Historico 011', '900000011', NULL, 'pickup', NULL, NULL, 'delivered', 53.80, 'cod', NULL, 'COD-0212-0011', NULL, '2025-02-12 21:15:00', '2025-02-12 23:15:00', 'verified', 'dni', '70000011', 'Cliente DNI 011', NULL, NULL, 'boleta', NULL, 'salada', NULL, NULL, NULL, NULL, NULL, '2025-02-12 21:15:00', '2025-02-13 00:15:00'),
(14, NULL, 'HIS25-0012', 'Cliente Historico 012', '900000012', 'cliente012@correo.com', 'delivery', NULL, NULL, 'delivered', 75.90, 'yape', NULL, 'YAP-0216-0012', '/storage/payment-proofs/demo-0012.jpg', '2025-02-16 22:15:00', '2025-02-17 00:15:00', 'verified', 'dni', '70000012', 'Cliente DNI 012', 'boleta012@correo.com', NULL, 'boleta', NULL, 'dulce', NULL, 'Av. Historica 112, Huancayo', 'Referencia historica 12', -12.0650100, -75.2047400, '2025-02-16 22:15:00', '2025-02-17 01:15:00'),
(15, NULL, 'HIS25-0013', 'Cliente Historico 013', '900000013', NULL, 'delivery', NULL, NULL, 'delivered', 57.90, 'plin', NULL, 'PLN-0220-0013', '/storage/payment-proofs/demo-0013.jpg', '2025-02-20 23:15:00', '2025-02-21 01:15:00', 'verified', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'salada', NULL, 'Av. Historica 113, Huancayo', 'Referencia historica 13', -12.0650000, -75.2047300, '2025-02-20 23:15:00', '2025-02-21 02:15:00'),
(16, NULL, 'HIS25-0014', 'Cliente Historico 014', '900000014', NULL, 'pickup', NULL, NULL, 'delivered', 70.80, 'transfer', NULL, 'TRF-0224-0014', '/storage/payment-proofs/demo-0014.jpg', '2025-02-24 17:15:00', '2025-02-24 19:15:00', 'verified', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-24 17:15:00', '2025-02-24 20:15:00'),
(17, NULL, 'HIS25-0015', 'Cliente Historico 015', '900000015', 'cliente015@correo.com', 'pickup', NULL, NULL, 'delivered', 28.90, 'cod', NULL, 'COD-0228-0015', NULL, '2025-02-28 18:15:00', '2025-02-28 20:15:00', 'verified', 'dni', '70000015', 'Cliente DNI 015', NULL, NULL, 'boleta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-28 18:15:00', '2025-02-28 21:15:00'),
(18, NULL, 'HIS25-0016', 'Cliente Historico 016', '900000016', NULL, 'delivery', NULL, NULL, 'delivered', 89.80, 'yape', NULL, 'YAP-0304-0016', '/storage/payment-proofs/demo-0016.jpg', '2025-03-04 19:15:00', '2025-03-04 21:15:00', 'verified', 'dni', '70000016', 'Cliente DNI 016', NULL, NULL, 'boleta', NULL, 'dulce', NULL, 'Av. Historica 116, Huancayo', 'Referencia historica 16', -12.0649700, -75.2047000, '2025-03-04 19:15:00', '2025-03-04 22:15:00'),
(19, NULL, 'HIS25-0017', 'Cliente Historico 017', '900000017', NULL, 'delivery', NULL, NULL, 'delivered', 41.80, 'plin', NULL, 'PLN-0308-0017', '/storage/payment-proofs/demo-0017.jpg', '2025-03-08 20:15:00', '2025-03-08 22:15:00', 'verified', 'dni', '70000017', 'Cliente DNI 017', NULL, NULL, 'boleta', NULL, 'salada', NULL, 'Av. Historica 117, Huancayo', 'Referencia historica 17', -12.0649600, -75.2046900, '2025-03-08 20:15:00', '2025-03-08 23:15:00'),
(20, NULL, 'HIS25-0018', 'Cliente Historico 018', '900000018', 'cliente018@correo.com', 'pickup', NULL, NULL, 'delivered', 45.90, 'transfer', NULL, 'TRF-0312-0018', '/storage/payment-proofs/demo-0018.jpg', '2025-03-12 21:15:00', '2025-03-12 23:15:00', 'verified', NULL, NULL, NULL, 'boleta018@correo.com', NULL, NULL, NULL, 'dulce', NULL, NULL, NULL, NULL, NULL, '2025-03-12 21:15:00', '2025-03-13 00:15:00'),
(21, NULL, 'HIS25-0019', 'Cliente Historico 019', '900000019', NULL, 'pickup', NULL, NULL, 'delivered', 60.80, 'cod', NULL, 'COD-0316-0019', NULL, '2025-03-16 22:15:00', '2025-03-17 00:15:00', 'verified', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'salada', NULL, NULL, NULL, NULL, NULL, '2025-03-16 22:15:00', '2025-03-17 01:15:00'),
(22, NULL, 'HIS25-0020', 'Cliente Historico 020', '900000020', NULL, 'delivery', NULL, NULL, 'delivered', 64.90, 'yape', NULL, 'YAP-0320-0020', '/storage/payment-proofs/demo-0020.jpg', '2025-03-20 23:15:00', '2025-03-21 01:15:00', 'verified', 'dni', '70000020', 'Cliente DNI 020', NULL, NULL, 'boleta', NULL, 'dulce', NULL, 'Av. Historica 120, Huancayo', 'Referencia historica 20', -12.0649300, -75.2046600, '2025-03-20 23:15:00', '2025-03-21 02:15:00'),
(23, NULL, 'HIS25-0021', 'Cliente Historico 021', '900000021', 'cliente021@correo.com', 'delivery', NULL, NULL, 'delivered', 59.80, 'plin', NULL, 'PLN-0324-0021', '/storage/payment-proofs/demo-0021.jpg', '2025-03-24 17:15:00', '2025-03-24 19:15:00', 'verified', 'dni', '70000021', 'Cliente DNI 021', NULL, NULL, 'boleta', NULL, 'salada', NULL, 'Av. Historica 121, Huancayo', 'Referencia historica 21', -12.0649200, -75.2046500, '2025-03-24 17:15:00', '2025-03-24 20:15:00'),
(24, NULL, 'HIS25-0022', 'Cliente Historico 022', '900000022', NULL, 'pickup', NULL, NULL, 'delivered', 69.70, 'transfer', NULL, 'TRF-0328-0022', '/storage/payment-proofs/demo-0022.jpg', '2025-03-28 18:15:00', '2025-03-28 20:15:00', 'verified', 'dni', '70000022', 'Cliente DNI 022', NULL, NULL, 'boleta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-28 18:15:00', '2025-03-28 21:15:00'),
(25, NULL, 'HIS25-0023', 'Cliente Historico 023', '900000023', NULL, 'pickup', NULL, NULL, 'cancelled', 32.90, 'cod', NULL, 'COD-0401-0023', NULL, '2025-04-01 19:15:00', NULL, 'rejected', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-01 19:15:00', '2025-04-01 22:15:00'),
(26, NULL, 'HIS25-0024', 'Cliente Historico 024', '900000024', 'cliente024@correo.com', 'delivery', NULL, NULL, 'delivered', 90.90, 'yape', NULL, 'YAP-0405-0024', '/storage/payment-proofs/demo-0024.jpg', '2025-04-05 20:15:00', '2025-04-05 22:15:00', 'verified', NULL, NULL, NULL, 'boleta024@correo.com', NULL, NULL, NULL, 'dulce', NULL, 'Av. Historica 124, Huancayo', 'Referencia historica 24', -12.0648900, -75.2046200, '2025-04-05 20:15:00', '2025-04-05 23:15:00'),
(27, NULL, 'HIS25-0025', 'Cliente Historico 025', '900000025', NULL, 'delivery', NULL, NULL, 'delivered', 37.80, 'plin', NULL, 'PLN-0409-0025', '/storage/payment-proofs/demo-0025.jpg', '2025-04-09 21:15:00', '2025-04-09 23:15:00', 'verified', 'dni', '70000025', 'Cliente DNI 025', NULL, NULL, 'boleta', NULL, 'salada', NULL, 'Av. Historica 125, Huancayo', 'Referencia historica 25', -12.0648800, -75.2046100, '2025-04-09 21:15:00', '2025-04-10 00:15:00'),
(28, NULL, 'HIS25-0026', 'Cliente Historico 026', '900000026', NULL, 'pickup', NULL, NULL, 'delivered', 45.90, 'transfer', NULL, 'TRF-0413-0026', '/storage/payment-proofs/demo-0026.jpg', '2025-04-13 22:15:00', '2025-04-14 00:15:00', 'verified', 'dni', '70000026', 'Cliente DNI 026', NULL, NULL, 'boleta', NULL, 'dulce', NULL, NULL, NULL, NULL, NULL, '2025-04-13 22:15:00', '2025-04-14 01:15:00'),
(29, NULL, 'HIS25-0027', 'Cliente Historico 027', '900000027', 'cliente027@correo.com', 'pickup', NULL, NULL, 'delivered', 62.70, 'cod', NULL, 'COD-0417-0027', NULL, '2025-04-17 23:15:00', '2025-04-18 01:15:00', 'verified', 'dni', '70000027', 'Cliente DNI 027', NULL, NULL, 'boleta', NULL, 'salada', NULL, NULL, NULL, NULL, NULL, '2025-04-17 23:15:00', '2025-04-18 02:15:00'),
(30, NULL, 'HIS25-0028', 'Cliente Historico 028', '900000028', NULL, 'delivery', NULL, NULL, 'delivered', 74.80, 'yape', NULL, 'YAP-0421-0028', '/storage/payment-proofs/demo-0028.jpg', '2025-04-21 17:15:00', '2025-04-21 19:15:00', 'verified', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dulce', NULL, 'Av. Historica 128, Huancayo', 'Referencia historica 28', -12.0648500, -75.2045800, '2025-04-21 17:15:00', '2025-04-21 20:15:00'),
(31, NULL, 'HIS25-0029', 'Cliente Historico 029', '900000029', NULL, 'delivery', NULL, NULL, 'delivered', 50.90, 'plin', NULL, 'PLN-0425-0029', '/storage/payment-proofs/demo-0029.jpg', '2025-04-25 18:15:00', '2025-04-25 20:15:00', 'verified', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'salada', NULL, 'Av. Historica 129, Huancayo', 'Referencia historica 29', -12.0648400, -75.2045700, '2025-04-25 18:15:00', '2025-04-25 21:15:00'),
(32, NULL, 'HIS25-0030', 'Cliente Historico 030', '900000030', 'cliente030@correo.com', 'pickup', NULL, NULL, 'delivered', 59.80, 'transfer', NULL, 'TRF-0429-0030', '/storage/payment-proofs/demo-0030.jpg', '2025-04-29 19:15:00', '2025-04-29 21:15:00', 'verified', 'dni', '70000030', 'Cliente DNI 030', 'boleta030@correo.com', NULL, 'boleta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-29 19:15:00', '2025-04-29 22:15:00'),
(33, NULL, 'HIS25-0031', 'Cliente Historico 031', '900000031', NULL, 'pickup', NULL, NULL, 'delivered', 39.90, 'cod', NULL, 'COD-0503-0031', NULL, '2025-05-03 20:15:00', '2025-05-03 22:15:00', 'verified', 'dni', '70000031', 'Cliente DNI 031', NULL, NULL, 'boleta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-03 20:15:00', '2025-05-03 23:15:00'),
(34, NULL, 'HIS25-0032', 'Cliente Historico 032', '900000032', NULL, 'delivery', NULL, NULL, 'delivered', 90.90, 'yape', NULL, 'YAP-0507-0032', '/storage/payment-proofs/demo-0032.jpg', '2025-05-07 21:15:00', '2025-05-07 23:15:00', 'verified', 'dni', '70000032', 'Cliente DNI 032', NULL, NULL, 'boleta', NULL, 'dulce', NULL, 'Av. Historica 132, Huancayo', 'Referencia historica 32', -12.0648100, -75.2045400, '2025-05-07 21:15:00', '2025-05-08 00:15:00'),
(35, NULL, 'HIS25-0033', 'Cliente Historico 033', '900000033', 'cliente033@correo.com', 'delivery', NULL, NULL, 'delivered', 50.70, 'plin', NULL, 'PLN-0511-0033', '/storage/payment-proofs/demo-0033.jpg', '2025-05-11 22:15:00', '2025-05-12 00:15:00', 'verified', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'salada', NULL, 'Av. Historica 133, Huancayo', 'Referencia historica 33', -12.0648000, -75.2045300, '2025-05-11 22:15:00', '2025-05-12 01:15:00'),
(36, NULL, 'HIS25-0034', 'Cliente Historico 034', '900000034', NULL, 'pickup', NULL, NULL, 'delivered', 44.80, 'transfer', NULL, 'TRF-0515-0034', '/storage/payment-proofs/demo-0034.jpg', '2025-05-15 23:15:00', '2025-05-16 01:15:00', 'verified', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dulce', NULL, NULL, NULL, NULL, NULL, '2025-05-15 23:15:00', '2025-05-16 02:15:00'),
(37, NULL, 'HIS25-0035', 'Cliente Historico 035', '900000035', NULL, 'pickup', NULL, NULL, 'delivered', 49.80, 'cod', NULL, 'COD-0519-0035', NULL, '2025-05-19 17:15:00', '2025-05-19 19:15:00', 'verified', 'dni', '70000035', 'Cliente DNI 035', NULL, NULL, 'boleta', NULL, 'salada', NULL, NULL, NULL, NULL, NULL, '2025-05-19 17:15:00', '2025-05-19 20:15:00'),
(38, NULL, 'HIS25-0036', 'Cliente Historico 036', '900000036', 'cliente036@correo.com', 'delivery', NULL, NULL, 'delivered', 75.90, 'yape', NULL, 'YAP-0523-0036', '/storage/payment-proofs/demo-0036.jpg', '2025-05-23 18:15:00', '2025-05-23 20:15:00', 'verified', 'dni', '70000036', 'Cliente DNI 036', 'boleta036@correo.com', NULL, 'boleta', NULL, 'dulce', NULL, 'Av. Historica 136, Huancayo', 'Referencia historica 36', -12.0647700, -75.2045000, '2025-05-23 18:15:00', '2025-05-23 21:15:00'),
(39, NULL, 'HIS25-0037', 'Cliente Historico 037', '900000037', NULL, 'delivery', NULL, NULL, 'delivered', 57.90, 'plin', NULL, 'PLN-0527-0037', '/storage/payment-proofs/demo-0037.jpg', '2025-05-27 19:15:00', '2025-05-27 21:15:00', 'verified', 'dni', '70000037', 'Cliente DNI 037', NULL, NULL, 'boleta', NULL, 'salada', NULL, 'Av. Historica 137, Huancayo', 'Referencia historica 37', -12.0647600, -75.2044900, '2025-05-27 19:15:00', '2025-05-27 22:15:00'),
(40, NULL, 'HIS25-0038', 'Cliente Historico 038', '900000038', NULL, 'pickup', NULL, NULL, 'delivered', 70.80, 'transfer', NULL, 'TRF-0531-0038', '/storage/payment-proofs/demo-0038.jpg', '2025-05-31 20:15:00', '2025-05-31 22:15:00', 'verified', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-31 20:15:00', '2025-05-31 23:15:00'),
(41, NULL, 'HIS25-0039', 'Cliente Historico 039', '900000039', 'cliente039@correo.com', 'pickup', NULL, NULL, 'delivered', 41.80, 'cod', NULL, 'COD-0604-0039', NULL, '2025-06-04 21:15:00', '2025-06-04 23:15:00', 'verified', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-06-04 21:15:00', '2025-06-05 00:15:00'),
(42, NULL, 'HIS25-0040', 'Cliente Historico 040', '900000040', NULL, 'delivery', NULL, NULL, 'delivered', 79.90, 'yape', NULL, 'YAP-0608-0040', '/storage/payment-proofs/demo-0040.jpg', '2025-06-08 22:15:00', '2025-06-09 00:15:00', 'verified', 'dni', '70000040', 'Cliente DNI 040', NULL, NULL, 'boleta', NULL, 'dulce', NULL, 'Av. Historica 140, Huancayo', 'Referencia historica 40', -12.0647300, -75.2044600, '2025-06-08 22:15:00', '2025-06-09 01:15:00'),
(43, NULL, 'HIS25-0041', 'Cliente Historico 041', '900000041', NULL, 'delivery', NULL, NULL, 'delivered', 41.80, 'plin', NULL, 'PLN-0612-0041', '/storage/payment-proofs/demo-0041.jpg', '2025-06-12 23:15:00', '2025-06-13 01:15:00', 'verified', 'dni', '70000041', 'Cliente DNI 041', NULL, NULL, 'boleta', NULL, 'salada', NULL, 'Av. Historica 141, Huancayo', 'Referencia historica 41', -12.0647200, -75.2044500, '2025-06-12 23:15:00', '2025-06-13 02:15:00'),
(44, NULL, 'HIS25-0042', 'Cliente Historico 042', '900000042', 'cliente042@correo.com', 'pickup', NULL, NULL, 'delivered', 45.90, 'transfer', NULL, 'TRF-0616-0042', '/storage/payment-proofs/demo-0042.jpg', '2025-06-16 17:15:00', '2025-06-16 19:15:00', 'verified', 'dni', '70000042', 'Cliente DNI 042', 'boleta042@correo.com', NULL, 'boleta', NULL, 'dulce', NULL, NULL, NULL, NULL, NULL, '2025-06-16 17:15:00', '2025-06-16 20:15:00'),
(45, NULL, 'HIS25-0043', 'Cliente Historico 043', '900000043', NULL, 'pickup', NULL, NULL, 'delivered', 60.80, 'cod', NULL, 'COD-0620-0043', NULL, '2025-06-20 18:15:00', '2025-06-20 20:15:00', 'verified', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'salada', NULL, NULL, NULL, NULL, NULL, '2025-06-20 18:15:00', '2025-06-20 21:15:00'),
(46, NULL, 'HIS25-0044', 'Cliente Historico 044', '900000044', NULL, 'delivery', NULL, NULL, 'delivered', 75.90, 'yape', NULL, 'YAP-0624-0044', '/storage/payment-proofs/demo-0044.jpg', '2025-06-24 19:15:00', '2025-06-24 21:15:00', 'verified', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dulce', NULL, 'Av. Historica 144, Huancayo', 'Referencia historica 44', -12.0646900, -75.2044200, '2025-06-24 19:15:00', '2025-06-24 22:15:00'),
(47, NULL, 'HIS25-0045', 'Cliente Historico 045', '900000045', 'cliente045@correo.com', 'delivery', NULL, NULL, 'delivered', 46.90, 'plin', NULL, 'PLN-0628-0045', '/storage/payment-proofs/demo-0045.jpg', '2025-06-28 20:15:00', '2025-06-28 22:15:00', 'verified', 'dni', '70000045', 'Cliente DNI 045', NULL, NULL, 'boleta', NULL, 'salada', NULL, 'Av. Historica 145, Huancayo', 'Referencia historica 45', -12.0646800, -75.2044100, '2025-06-28 20:15:00', '2025-06-28 23:15:00'),
(48, NULL, 'HIS25-0046', 'Cliente Historico 046', '900000046', NULL, 'pickup', NULL, NULL, 'cancelled', 69.70, 'transfer', NULL, 'TRF-0702-0046', '/storage/payment-proofs/demo-0046.jpg', '2025-07-02 21:15:00', NULL, 'rejected', 'dni', '70000046', 'Cliente DNI 046', NULL, NULL, 'boleta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-02 21:15:00', '2025-07-03 00:15:00'),
(49, NULL, 'HIS25-0047', 'Cliente Historico 047', '900000047', NULL, 'pickup', NULL, NULL, 'delivered', 32.90, 'cod', NULL, 'COD-0706-0047', NULL, '2025-07-06 22:15:00', '2025-07-07 00:15:00', 'verified', 'dni', '70000047', 'Cliente DNI 047', NULL, NULL, 'boleta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-06 22:15:00', '2025-07-07 01:15:00'),
(50, NULL, 'HIS25-0048', 'Cliente Historico 048', '900000048', 'cliente048@correo.com', 'delivery', NULL, NULL, 'delivered', 90.90, 'yape', NULL, 'YAP-0710-0048', '/storage/payment-proofs/demo-0048.jpg', '2025-07-10 23:15:00', '2025-07-11 01:15:00', 'verified', NULL, NULL, NULL, 'boleta048@correo.com', NULL, NULL, NULL, 'dulce', NULL, 'Av. Historica 148, Huancayo', 'Referencia historica 48', -12.0646500, -75.2043800, '2025-07-10 23:15:00', '2025-07-11 02:15:00'),
(51, NULL, 'HIS25-0049', 'Cliente Historico 049', '900000049', NULL, 'delivery', NULL, NULL, 'delivered', 48.80, 'plin', NULL, 'PLN-0714-0049', '/storage/payment-proofs/demo-0049.jpg', '2025-07-14 17:15:00', '2025-07-14 19:15:00', 'verified', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'salada', NULL, 'Av. Historica 149, Huancayo', 'Referencia historica 49', -12.0646400, -75.2043700, '2025-07-14 17:15:00', '2025-07-14 20:15:00'),
(52, NULL, 'HIS25-0050', 'Cliente Historico 050', '900000050', NULL, 'pickup', NULL, NULL, 'delivered', 34.90, 'transfer', NULL, 'TRF-0718-0050', '/storage/payment-proofs/demo-0050.jpg', '2025-07-18 18:15:00', '2025-07-18 20:15:00', 'verified', 'dni', '70000050', 'Cliente DNI 050', NULL, NULL, 'boleta', NULL, 'dulce', NULL, NULL, NULL, NULL, NULL, '2025-07-18 18:15:00', '2025-07-18 21:15:00'),
(53, NULL, 'HIS25-0051', 'Cliente Historico 051', '900000051', 'cliente051@correo.com', 'pickup', NULL, NULL, 'delivered', 62.70, 'cod', NULL, 'COD-0722-0051', NULL, '2025-07-22 19:15:00', '2025-07-22 21:15:00', 'verified', 'dni', '70000051', 'Cliente DNI 051', NULL, NULL, 'boleta', NULL, 'salada', NULL, NULL, NULL, NULL, NULL, '2025-07-22 19:15:00', '2025-07-22 22:15:00'),
(54, NULL, 'HIS25-0052', 'Cliente Historico 052', '900000052', NULL, 'delivery', NULL, NULL, 'delivered', 74.80, 'yape', NULL, 'YAP-0726-0052', '/storage/payment-proofs/demo-0052.jpg', '2025-07-26 20:15:00', '2025-07-26 22:15:00', 'verified', 'dni', '70000052', 'Cliente DNI 052', NULL, NULL, 'boleta', NULL, 'dulce', NULL, 'Av. Historica 152, Huancayo', 'Referencia historica 52', -12.0646100, -75.2043400, '2025-07-26 20:15:00', '2025-07-26 23:15:00'),
(55, NULL, 'HIS25-0053', 'Cliente Historico 053', '900000053', NULL, 'delivery', NULL, NULL, 'delivered', 50.90, 'plin', NULL, 'PLN-0730-0053', '/storage/payment-proofs/demo-0053.jpg', '2025-07-30 21:15:00', '2025-07-30 23:15:00', 'verified', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'salada', NULL, 'Av. Historica 153, Huancayo', 'Referencia historica 53', -12.0646000, -75.2043300, '2025-07-30 21:15:00', '2025-07-31 00:15:00'),
(56, NULL, 'HIS25-0054', 'Cliente Historico 054', '900000054', 'cliente054@correo.com', 'pickup', NULL, NULL, 'delivered', 70.80, 'transfer', NULL, 'TRF-0803-0054', '/storage/payment-proofs/demo-0054.jpg', '2025-08-03 22:15:00', '2025-08-04 00:15:00', 'verified', NULL, NULL, NULL, 'boleta054@correo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-03 22:15:00', '2025-08-04 01:15:00'),
(57, NULL, 'HIS25-0055', 'Cliente Historico 055', '900000055', NULL, 'pickup', NULL, NULL, 'delivered', 28.90, 'cod', NULL, 'COD-0807-0055', NULL, '2025-08-07 23:15:00', '2025-08-08 01:15:00', 'verified', 'dni', '70000055', 'Cliente DNI 055', NULL, NULL, 'boleta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-07 23:15:00', '2025-08-08 02:15:00'),
(58, NULL, 'HIS25-0056', 'Cliente Historico 056', '900000056', NULL, 'delivery', NULL, NULL, 'delivered', 90.90, 'yape', NULL, 'YAP-0811-0056', '/storage/payment-proofs/demo-0056.jpg', '2025-08-11 17:15:00', '2025-08-11 19:15:00', 'verified', 'dni', '70000056', 'Cliente DNI 056', NULL, NULL, 'boleta', NULL, 'dulce', NULL, 'Av. Historica 156, Huancayo', 'Referencia historica 56', -12.0645700, -75.2043000, '2025-08-11 17:15:00', '2025-08-11 20:15:00'),
(59, NULL, 'HIS25-0057', 'Cliente Historico 057', '900000057', 'cliente057@correo.com', 'delivery', NULL, NULL, 'delivered', 50.70, 'plin', NULL, 'PLN-0815-0057', '/storage/payment-proofs/demo-0057.jpg', '2025-08-15 18:15:00', '2025-08-15 20:15:00', 'verified', 'dni', '70000057', 'Cliente DNI 057', NULL, NULL, 'boleta', NULL, 'salada', NULL, 'Av. Historica 157, Huancayo', 'Referencia historica 57', -12.0645600, -75.2042900, '2025-08-15 18:15:00', '2025-08-15 21:15:00'),
(60, NULL, 'HIS25-0058', 'Cliente Historico 058', '900000058', NULL, 'pickup', NULL, NULL, 'delivered', 44.80, 'transfer', NULL, 'TRF-0819-0058', '/storage/payment-proofs/demo-0058.jpg', '2025-08-19 19:15:00', '2025-08-19 21:15:00', 'verified', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dulce', NULL, NULL, NULL, NULL, NULL, '2025-08-19 19:15:00', '2025-08-19 22:15:00'),
(61, NULL, 'HIS25-0059', 'Cliente Historico 059', '900000059', NULL, 'pickup', NULL, NULL, 'delivered', 53.80, 'cod', NULL, 'COD-0823-0059', NULL, '2025-08-23 20:15:00', '2025-08-23 22:15:00', 'verified', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'salada', NULL, NULL, NULL, NULL, NULL, '2025-08-23 20:15:00', '2025-08-23 23:15:00'),
(62, NULL, 'HIS25-0060', 'Cliente Historico 060', '900000060', 'cliente060@correo.com', 'delivery', NULL, NULL, 'delivered', 64.90, 'yape', NULL, 'YAP-0827-0060', '/storage/payment-proofs/demo-0060.jpg', '2025-08-27 21:15:00', '2025-08-27 23:15:00', 'verified', 'dni', '70000060', 'Cliente DNI 060', 'boleta060@correo.com', NULL, 'boleta', NULL, 'dulce', NULL, 'Av. Historica 160, Huancayo', 'Referencia historica 60', -12.0645300, -75.2042600, '2025-08-27 21:15:00', '2025-08-28 00:15:00'),
(63, NULL, 'HIS25-0061', 'Cliente Historico 061', '900000061', NULL, 'delivery', NULL, NULL, 'delivered', 57.90, 'plin', NULL, 'PLN-0831-0061', '/storage/payment-proofs/demo-0061.jpg', '2025-08-31 22:15:00', '2025-09-01 00:15:00', 'verified', 'dni', '70000061', 'Cliente DNI 061', NULL, NULL, 'boleta', NULL, 'salada', NULL, 'Av. Historica 161, Huancayo', 'Referencia historica 61', -12.0645200, -75.2042500, '2025-08-31 22:15:00', '2025-09-01 01:15:00'),
(64, NULL, 'HIS25-0062', 'Cliente Historico 062', '900000062', NULL, 'pickup', NULL, NULL, 'delivered', 70.80, 'transfer', NULL, 'TRF-0904-0062', '/storage/payment-proofs/demo-0062.jpg', '2025-09-04 23:15:00', '2025-09-05 01:15:00', 'verified', 'dni', '70000062', 'Cliente DNI 062', NULL, NULL, 'boleta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-04 23:15:00', '2025-09-05 02:15:00'),
(65, NULL, 'HIS25-0063', 'Cliente Historico 063', '900000063', 'cliente063@correo.com', 'pickup', NULL, NULL, 'delivered', 41.80, 'cod', NULL, 'COD-0908-0063', NULL, '2025-09-08 17:15:00', '2025-09-08 19:15:00', 'verified', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-08 17:15:00', '2025-09-08 20:15:00'),
(66, NULL, 'HIS25-0064', 'Cliente Historico 064', '900000064', NULL, 'delivery', NULL, NULL, 'delivered', 89.80, 'yape', NULL, 'YAP-0912-0064', '/storage/payment-proofs/demo-0064.jpg', '2025-09-12 18:15:00', '2025-09-12 20:15:00', 'verified', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dulce', NULL, 'Av. Historica 164, Huancayo', 'Referencia historica 64', -12.0644900, -75.2042200, '2025-09-12 18:15:00', '2025-09-12 21:15:00'),
(67, NULL, 'HIS25-0065', 'Cliente Historico 065', '900000065', NULL, 'delivery', NULL, NULL, 'delivered', 37.80, 'plin', NULL, 'PLN-0916-0065', '/storage/payment-proofs/demo-0065.jpg', '2025-09-16 19:15:00', '2025-09-16 21:15:00', 'verified', 'dni', '70000065', 'Cliente DNI 065', NULL, NULL, 'boleta', NULL, 'salada', NULL, 'Av. Historica 165, Huancayo', 'Referencia historica 65', -12.0644800, -75.2042100, '2025-09-16 19:15:00', '2025-09-16 22:15:00'),
(68, NULL, 'HIS25-0066', 'Cliente Historico 066', '900000066', 'cliente066@correo.com', 'pickup', NULL, NULL, 'delivered', 45.90, 'transfer', NULL, 'TRF-0920-0066', '/storage/payment-proofs/demo-0066.jpg', '2025-09-20 20:15:00', '2025-09-20 22:15:00', 'verified', 'dni', '70000066', 'Cliente DNI 066', 'boleta066@correo.com', NULL, 'boleta', NULL, 'dulce', NULL, NULL, NULL, NULL, NULL, '2025-09-20 20:15:00', '2025-09-20 23:15:00'),
(69, NULL, 'HIS25-0067', 'Cliente Historico 067', '900000067', NULL, 'pickup', NULL, NULL, 'delivered', 60.80, 'cod', NULL, 'COD-0924-0067', NULL, '2025-09-24 21:15:00', '2025-09-24 23:15:00', 'verified', 'dni', '70000067', 'Cliente DNI 067', NULL, NULL, 'boleta', NULL, 'salada', NULL, NULL, NULL, NULL, NULL, '2025-09-24 21:15:00', '2025-09-25 00:15:00'),
(70, NULL, 'HIS25-0068', 'Cliente Historico 068', '900000068', NULL, 'delivery', NULL, NULL, 'delivered', 75.90, 'yape', NULL, 'YAP-0928-0068', '/storage/payment-proofs/demo-0068.jpg', '2025-09-28 22:15:00', '2025-09-29 00:15:00', 'verified', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dulce', NULL, 'Av. Historica 168, Huancayo', 'Referencia historica 68', -12.0644500, -75.2041800, '2025-09-28 22:15:00', '2025-09-29 01:15:00'),
(71, NULL, 'HIS25-0069', 'Cliente Historico 069', '900000069', 'cliente069@correo.com', 'delivery', NULL, NULL, 'cancelled', 59.80, 'plin', NULL, 'PLN-1002-0069', '/storage/payment-proofs/demo-0069.jpg', '2025-10-02 23:15:00', NULL, 'rejected', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'salada', NULL, 'Av. Historica 169, Huancayo', 'Referencia historica 69', -12.0644400, -75.2041700, '2025-10-02 23:15:00', '2025-10-03 02:15:00'),
(72, NULL, 'HIS25-0070', 'Cliente Historico 070', '900000070', NULL, 'pickup', NULL, NULL, 'delivered', 59.80, 'transfer', NULL, 'TRF-1006-0070', '/storage/payment-proofs/demo-0070.jpg', '2025-10-06 17:15:00', '2025-10-06 19:15:00', 'verified', 'dni', '70000070', 'Cliente DNI 070', NULL, NULL, 'boleta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-10-06 17:15:00', '2025-10-06 20:15:00'),
(73, NULL, 'HIS25-0071', 'Cliente Historico 071', '900000071', NULL, 'pickup', NULL, NULL, 'delivered', 32.90, 'cod', NULL, 'COD-1010-0071', NULL, '2025-10-10 18:15:00', '2025-10-10 20:15:00', 'verified', 'dni', '70000071', 'Cliente DNI 071', NULL, NULL, 'boleta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-10-10 18:15:00', '2025-10-10 21:15:00'),
(74, NULL, 'HIS25-0072', 'Cliente Historico 072', '900000072', 'cliente072@correo.com', 'delivery', NULL, NULL, 'delivered', 90.90, 'yape', NULL, 'YAP-1014-0072', '/storage/payment-proofs/demo-0072.jpg', '2025-10-14 19:15:00', '2025-10-14 21:15:00', 'verified', 'dni', '70000072', 'Cliente DNI 072', 'boleta072@correo.com', NULL, 'boleta', NULL, 'dulce', NULL, 'Av. Historica 172, Huancayo', 'Referencia historica 72', -12.0644100, -75.2041400, '2025-10-14 19:15:00', '2025-10-14 22:15:00'),
(75, NULL, 'HIS25-0073', 'Cliente Historico 073', '900000073', NULL, 'delivery', NULL, NULL, 'delivered', 48.80, 'plin', NULL, 'PLN-1018-0073', '/storage/payment-proofs/demo-0073.jpg', '2025-10-18 20:15:00', '2025-10-18 22:15:00', 'verified', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'salada', NULL, 'Av. Historica 173, Huancayo', 'Referencia historica 73', -12.0644000, -75.2041300, '2025-10-18 20:15:00', '2025-10-18 23:15:00'),
(76, NULL, 'HIS25-0074', 'Cliente Historico 074', '900000074', NULL, 'pickup', NULL, NULL, 'delivered', 45.90, 'transfer', NULL, 'TRF-1022-0074', '/storage/payment-proofs/demo-0074.jpg', '2025-10-22 21:15:00', '2025-10-22 23:15:00', 'verified', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dulce', NULL, NULL, NULL, NULL, NULL, '2025-10-22 21:15:00', '2025-10-23 00:15:00'),
(77, NULL, 'HIS25-0075', 'Cliente Historico 075', '900000075', 'cliente075@correo.com', 'pickup', NULL, NULL, 'delivered', 49.80, 'cod', NULL, 'COD-1026-0075', NULL, '2025-10-26 22:15:00', '2025-10-27 00:15:00', 'verified', 'dni', '70000075', 'Cliente DNI 075', NULL, NULL, 'boleta', NULL, 'salada', NULL, NULL, NULL, NULL, NULL, '2025-10-26 22:15:00', '2025-10-27 01:15:00'),
(78, NULL, 'HIS25-0076', 'Cliente Historico 076', '900000076', NULL, 'delivery', NULL, NULL, 'delivered', 74.80, 'yape', NULL, 'YAP-1030-0076', '/storage/payment-proofs/demo-0076.jpg', '2025-10-30 23:15:00', '2025-10-31 01:15:00', 'verified', 'dni', '70000076', 'Cliente DNI 076', NULL, NULL, 'boleta', NULL, 'dulce', NULL, 'Av. Historica 176, Huancayo', 'Referencia historica 76', -12.0643700, -75.2041000, '2025-10-30 23:15:00', '2025-10-31 02:15:00'),
(79, NULL, 'HIS25-0077', 'Cliente Historico 077', '900000077', NULL, 'delivery', NULL, NULL, 'delivered', 50.90, 'plin', NULL, 'PLN-1103-0077', '/storage/payment-proofs/demo-0077.jpg', '2025-11-03 17:15:00', '2025-11-03 19:15:00', 'verified', 'dni', '70000077', 'Cliente DNI 077', NULL, NULL, 'boleta', NULL, 'salada', NULL, 'Av. Historica 177, Huancayo', 'Referencia historica 77', -12.0643600, -75.2040900, '2025-11-03 17:15:00', '2025-11-03 20:15:00'),
(80, NULL, 'HIS25-0078', 'Cliente Historico 078', '900000078', 'cliente078@correo.com', 'pickup', NULL, NULL, 'delivered', 70.80, 'transfer', NULL, 'TRF-1107-0078', '/storage/payment-proofs/demo-0078.jpg', '2025-11-07 18:15:00', '2025-11-07 20:15:00', 'verified', NULL, NULL, NULL, 'boleta078@correo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-07 18:15:00', '2025-11-07 21:15:00'),
(81, NULL, 'HIS25-0079', 'Cliente Historico 079', '900000079', NULL, 'pickup', NULL, NULL, 'delivered', 39.90, 'cod', NULL, 'COD-1111-0079', NULL, '2025-11-11 19:15:00', '2025-11-11 21:15:00', 'verified', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-11 19:15:00', '2025-11-11 22:15:00'),
(82, NULL, 'HIS25-0080', 'Cliente Historico 080', '900000080', NULL, 'delivery', NULL, NULL, 'delivered', 79.90, 'yape', NULL, 'YAP-1115-0080', '/storage/payment-proofs/demo-0080.jpg', '2025-11-15 20:15:00', '2025-11-15 22:15:00', 'verified', 'dni', '70000080', 'Cliente DNI 080', NULL, NULL, 'boleta', NULL, 'dulce', NULL, 'Av. Historica 180, Huancayo', 'Referencia historica 80', -12.0643300, -75.2040600, '2025-11-15 20:15:00', '2025-11-15 23:15:00'),
(83, NULL, 'HIS25-0081', 'Cliente Historico 081', '900000081', 'cliente081@correo.com', 'delivery', NULL, NULL, 'delivered', 50.70, 'plin', NULL, 'PLN-1119-0081', '/storage/payment-proofs/demo-0081.jpg', '2025-11-19 21:15:00', '2025-11-19 23:15:00', 'verified', 'dni', '70000081', 'Cliente DNI 081', NULL, NULL, 'boleta', NULL, 'salada', NULL, 'Av. Historica 181, Huancayo', 'Referencia historica 81', -12.0643200, -75.2040500, '2025-11-19 21:15:00', '2025-11-20 00:15:00'),
(84, NULL, 'HIS25-0082', 'Cliente Historico 082', '900000082', NULL, 'pickup', NULL, NULL, 'delivered', 44.80, 'transfer', NULL, 'TRF-1123-0082', '/storage/payment-proofs/demo-0082.jpg', '2025-11-23 22:15:00', '2025-11-24 00:15:00', 'verified', 'dni', '70000082', 'Cliente DNI 082', NULL, NULL, 'boleta', NULL, 'dulce', NULL, NULL, NULL, NULL, NULL, '2025-11-23 22:15:00', '2025-11-24 01:15:00'),
(85, NULL, 'HIS25-0083', 'Cliente Historico 083', '900000083', NULL, 'pickup', NULL, NULL, 'delivered', 53.80, 'cod', NULL, 'COD-1127-0083', NULL, '2025-11-27 23:15:00', '2025-11-28 01:15:00', 'verified', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'salada', NULL, NULL, NULL, NULL, NULL, '2025-11-27 23:15:00', '2025-11-28 02:15:00'),
(86, NULL, 'HIS25-0084', 'Cliente Historico 084', '900000084', 'cliente084@correo.com', 'delivery', NULL, NULL, 'delivered', 75.90, 'yape', NULL, 'YAP-1201-0084', '/storage/payment-proofs/demo-0084.jpg', '2025-12-01 17:15:00', '2025-12-01 19:15:00', 'verified', NULL, NULL, NULL, 'boleta084@correo.com', NULL, NULL, NULL, 'dulce', NULL, 'Av. Historica 184, Huancayo', 'Referencia historica 84', -12.0642900, -75.2040200, '2025-12-01 17:15:00', '2025-12-01 20:15:00'),
(87, NULL, 'HIS25-0085', 'Cliente Historico 085', '900000085', NULL, 'delivery', NULL, NULL, 'delivered', 46.90, 'plin', NULL, 'PLN-1205-0085', '/storage/payment-proofs/demo-0085.jpg', '2025-12-05 18:15:00', '2025-12-05 20:15:00', 'verified', 'dni', '70000085', 'Cliente DNI 085', NULL, NULL, 'boleta', NULL, 'salada', NULL, 'Av. Historica 185, Huancayo', 'Referencia historica 85', -12.0642800, -75.2040100, '2025-12-05 18:15:00', '2025-12-05 21:15:00'),
(88, NULL, 'HIS25-0086', 'Cliente Historico 086', '900000086', NULL, 'pickup', NULL, NULL, 'delivered', 70.80, 'transfer', NULL, 'TRF-1209-0086', '/storage/payment-proofs/demo-0086.jpg', '2025-12-09 19:15:00', '2025-12-09 21:15:00', 'verified', 'dni', '70000086', 'Cliente DNI 086', NULL, NULL, 'boleta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-09 19:15:00', '2025-12-09 22:15:00'),
(89, NULL, 'HIS25-0087', 'Cliente Historico 087', '900000087', 'cliente087@correo.com', 'pickup', NULL, NULL, 'delivered', 41.80, 'cod', NULL, 'COD-1213-0087', NULL, '2025-12-13 20:15:00', '2025-12-13 22:15:00', 'verified', 'dni', '70000087', 'Cliente DNI 087', NULL, NULL, 'boleta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-13 20:15:00', '2025-12-13 23:15:00'),
(90, NULL, 'HIS25-0088', 'Cliente Historico 088', '900000088', NULL, 'delivery', NULL, NULL, 'delivered', 89.80, 'yape', NULL, 'YAP-1217-0088', '/storage/payment-proofs/demo-0088.jpg', '2025-12-17 21:15:00', '2025-12-17 23:15:00', 'verified', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dulce', NULL, 'Av. Historica 188, Huancayo', 'Referencia historica 88', -12.0642500, -75.2039800, '2025-12-17 21:15:00', '2025-12-18 00:15:00'),
(91, NULL, 'HIS25-0089', 'Cliente Historico 089', '900000089', NULL, 'delivery', NULL, NULL, 'delivered', 41.80, 'plin', NULL, 'PLN-1221-0089', '/storage/payment-proofs/demo-0089.jpg', '2025-12-21 22:15:00', '2025-12-22 00:15:00', 'verified', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'salada', NULL, 'Av. Historica 189, Huancayo', 'Referencia historica 89', -12.0642400, -75.2039700, '2025-12-21 22:15:00', '2025-12-22 01:15:00'),
(92, NULL, 'HIS25-0090', 'Cliente Historico 090', '900000090', 'cliente090@correo.com', 'pickup', NULL, NULL, 'delivered', 34.90, 'transfer', NULL, 'TRF-1225-0090', '/storage/payment-proofs/demo-0090.jpg', '2025-12-25 23:15:00', '2025-12-26 01:15:00', 'verified', 'dni', '70000090', 'Cliente DNI 090', 'boleta090@correo.com', NULL, 'boleta', NULL, 'dulce', NULL, NULL, NULL, NULL, NULL, '2025-12-25 23:15:00', '2025-12-26 02:15:00'),
(93, NULL, 'HIS25-0091', 'Cliente Historico 091', '900000091', NULL, 'pickup', NULL, NULL, 'delivered', 60.80, 'cod', NULL, 'COD-1229-0091', NULL, '2025-12-29 17:15:00', '2025-12-29 19:15:00', 'verified', 'dni', '70000091', 'Cliente DNI 091', NULL, NULL, 'boleta', NULL, 'salada', NULL, NULL, NULL, NULL, NULL, '2025-12-29 17:15:00', '2025-12-29 20:15:00'),
(94, NULL, 'HIS25-0092', 'Cliente Historico 092', '900000092', NULL, 'delivery', NULL, NULL, 'cancelled', 75.90, 'yape', NULL, 'YAP-0102-0092', '/storage/payment-proofs/demo-0092.jpg', '2026-01-02 18:15:00', NULL, 'rejected', 'dni', '70000092', 'Cliente DNI 092', NULL, NULL, 'boleta', NULL, 'dulce', NULL, 'Av. Historica 192, Huancayo', 'Referencia historica 92', -12.0642100, -75.2039400, '2026-01-02 18:15:00', '2026-01-02 21:15:00'),
(130, 2, 'ED-3F6CB544', 'CARLO MARCELO ORDOÑEZ ARAUCO', '953976849', NULL, 'delivery', NULL, NULL, 'pending', 18.90, 'cod', NULL, NULL, NULL, NULL, NULL, 'pending', 'dni', '61643308', 'CARLO MARCELO ORDOÑEZ ARAUCO', NULL, NULL, 'boleta', NULL, 'salada', NULL, 'Pasaje Quiroz', 'Zona Cajas Chico | Distrito/Ciudad Huancayo | Junín', -12.0719098, -75.2157266, '2026-03-16 03:34:30', '2026-03-16 03:34:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_name` varchar(120) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `line_total` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `product_name`, `unit_price`, `quantity`, `line_total`, `created_at`, `updated_at`) VALUES
(3, 2, 11, 'Inca Kola Personal 500ml', 5.50, 1, 5.50, '2026-03-16 03:01:40', '2026-03-16 03:01:40'),
(4, 2, 12, 'Coca-Cola Personal 500ml', 5.50, 1, 5.50, '2026-03-16 03:01:40', '2026-03-16 03:01:40'),
(5, 3, 1, '1/4 Pollo a la Brasa', 18.90, 2, 37.80, '2025-01-03 18:15:00', '2025-01-03 21:15:00'),
(6, 4, 2, '1/2 Pollo a la Brasa', 34.90, 1, 34.90, '2025-01-07 19:15:00', '2025-01-07 22:15:00'),
(7, 5, 4, 'Mostrito Tradicional', 24.90, 2, 49.80, '2025-01-11 20:15:00', '2025-01-11 23:15:00'),
(8, 6, 3, 'Pollo Entero a la Brasa', 64.90, 1, 64.90, '2025-01-15 21:15:00', '2025-01-16 00:15:00'),
(9, 7, 6, 'Parrilla Mixta', 46.90, 1, 46.90, '2025-01-19 22:15:00', '2025-01-20 01:15:00'),
(10, 8, 9, 'Alitas BBQ x 8', 29.90, 2, 59.80, '2025-01-23 23:15:00', '2025-01-24 02:15:00'),
(11, 9, 7, 'Anticuchos x 4', 28.90, 1, 28.90, '2025-01-27 17:15:00', '2025-01-27 20:15:00'),
(12, 10, 5, 'Mega Combo Familiar', 79.90, 1, 79.90, '2025-01-31 18:15:00', '2025-01-31 21:15:00'),
(13, 11, 1, '1/4 Pollo a la Brasa', 18.90, 2, 37.80, '2025-02-04 19:15:00', '2025-02-04 22:15:00'),
(14, 12, 2, '1/2 Pollo a la Brasa', 34.90, 1, 34.90, '2025-02-08 20:15:00', '2025-02-08 23:15:00'),
(15, 13, 4, 'Mostrito Tradicional', 24.90, 2, 49.80, '2025-02-12 21:15:00', '2025-02-13 00:15:00'),
(16, 14, 3, 'Pollo Entero a la Brasa', 64.90, 1, 64.90, '2025-02-16 22:15:00', '2025-02-17 01:15:00'),
(17, 15, 6, 'Parrilla Mixta', 46.90, 1, 46.90, '2025-02-20 23:15:00', '2025-02-21 02:15:00'),
(18, 16, 9, 'Alitas BBQ x 8', 29.90, 2, 59.80, '2025-02-24 17:15:00', '2025-02-24 20:15:00'),
(19, 17, 7, 'Anticuchos x 4', 28.90, 1, 28.90, '2025-02-28 18:15:00', '2025-02-28 21:15:00'),
(20, 18, 5, 'Mega Combo Familiar', 79.90, 1, 79.90, '2025-03-04 19:15:00', '2025-03-04 22:15:00'),
(21, 19, 1, '1/4 Pollo a la Brasa', 18.90, 2, 37.80, '2025-03-08 20:15:00', '2025-03-08 23:15:00'),
(22, 20, 2, '1/2 Pollo a la Brasa', 34.90, 1, 34.90, '2025-03-12 21:15:00', '2025-03-13 00:15:00'),
(23, 21, 4, 'Mostrito Tradicional', 24.90, 2, 49.80, '2025-03-16 22:15:00', '2025-03-17 01:15:00'),
(24, 22, 3, 'Pollo Entero a la Brasa', 64.90, 1, 64.90, '2025-03-20 23:15:00', '2025-03-21 02:15:00'),
(25, 23, 6, 'Parrilla Mixta', 46.90, 1, 46.90, '2025-03-24 17:15:00', '2025-03-24 20:15:00'),
(26, 24, 9, 'Alitas BBQ x 8', 29.90, 2, 59.80, '2025-03-28 18:15:00', '2025-03-28 21:15:00'),
(27, 25, 7, 'Anticuchos x 4', 28.90, 1, 28.90, '2025-04-01 19:15:00', '2025-04-01 22:15:00'),
(28, 26, 5, 'Mega Combo Familiar', 79.90, 1, 79.90, '2025-04-05 20:15:00', '2025-04-05 23:15:00'),
(29, 27, 1, '1/4 Pollo a la Brasa', 18.90, 2, 37.80, '2025-04-09 21:15:00', '2025-04-10 00:15:00'),
(30, 28, 2, '1/2 Pollo a la Brasa', 34.90, 1, 34.90, '2025-04-13 22:15:00', '2025-04-14 01:15:00'),
(31, 29, 4, 'Mostrito Tradicional', 24.90, 2, 49.80, '2025-04-17 23:15:00', '2025-04-18 02:15:00'),
(32, 30, 3, 'Pollo Entero a la Brasa', 64.90, 1, 64.90, '2025-04-21 17:15:00', '2025-04-21 20:15:00'),
(33, 31, 6, 'Parrilla Mixta', 46.90, 1, 46.90, '2025-04-25 18:15:00', '2025-04-25 21:15:00'),
(34, 32, 9, 'Alitas BBQ x 8', 29.90, 2, 59.80, '2025-04-29 19:15:00', '2025-04-29 22:15:00'),
(35, 33, 7, 'Anticuchos x 4', 28.90, 1, 28.90, '2025-05-03 20:15:00', '2025-05-03 23:15:00'),
(36, 34, 5, 'Mega Combo Familiar', 79.90, 1, 79.90, '2025-05-07 21:15:00', '2025-05-08 00:15:00'),
(37, 35, 1, '1/4 Pollo a la Brasa', 18.90, 2, 37.80, '2025-05-11 22:15:00', '2025-05-12 01:15:00'),
(38, 36, 2, '1/2 Pollo a la Brasa', 34.90, 1, 34.90, '2025-05-15 23:15:00', '2025-05-16 02:15:00'),
(39, 37, 4, 'Mostrito Tradicional', 24.90, 2, 49.80, '2025-05-19 17:15:00', '2025-05-19 20:15:00'),
(40, 38, 3, 'Pollo Entero a la Brasa', 64.90, 1, 64.90, '2025-05-23 18:15:00', '2025-05-23 21:15:00'),
(41, 39, 6, 'Parrilla Mixta', 46.90, 1, 46.90, '2025-05-27 19:15:00', '2025-05-27 22:15:00'),
(42, 40, 9, 'Alitas BBQ x 8', 29.90, 2, 59.80, '2025-05-31 20:15:00', '2025-05-31 23:15:00'),
(43, 41, 7, 'Anticuchos x 4', 28.90, 1, 28.90, '2025-06-04 21:15:00', '2025-06-05 00:15:00'),
(44, 42, 5, 'Mega Combo Familiar', 79.90, 1, 79.90, '2025-06-08 22:15:00', '2025-06-09 01:15:00'),
(45, 43, 1, '1/4 Pollo a la Brasa', 18.90, 2, 37.80, '2025-06-12 23:15:00', '2025-06-13 02:15:00'),
(46, 44, 2, '1/2 Pollo a la Brasa', 34.90, 1, 34.90, '2025-06-16 17:15:00', '2025-06-16 20:15:00'),
(47, 45, 4, 'Mostrito Tradicional', 24.90, 2, 49.80, '2025-06-20 18:15:00', '2025-06-20 21:15:00'),
(48, 46, 3, 'Pollo Entero a la Brasa', 64.90, 1, 64.90, '2025-06-24 19:15:00', '2025-06-24 22:15:00'),
(49, 47, 6, 'Parrilla Mixta', 46.90, 1, 46.90, '2025-06-28 20:15:00', '2025-06-28 23:15:00'),
(50, 48, 9, 'Alitas BBQ x 8', 29.90, 2, 59.80, '2025-07-02 21:15:00', '2025-07-03 00:15:00'),
(51, 49, 7, 'Anticuchos x 4', 28.90, 1, 28.90, '2025-07-06 22:15:00', '2025-07-07 01:15:00'),
(52, 50, 5, 'Mega Combo Familiar', 79.90, 1, 79.90, '2025-07-10 23:15:00', '2025-07-11 02:15:00'),
(53, 51, 1, '1/4 Pollo a la Brasa', 18.90, 2, 37.80, '2025-07-14 17:15:00', '2025-07-14 20:15:00'),
(54, 52, 2, '1/2 Pollo a la Brasa', 34.90, 1, 34.90, '2025-07-18 18:15:00', '2025-07-18 21:15:00'),
(55, 53, 4, 'Mostrito Tradicional', 24.90, 2, 49.80, '2025-07-22 19:15:00', '2025-07-22 22:15:00'),
(56, 54, 3, 'Pollo Entero a la Brasa', 64.90, 1, 64.90, '2025-07-26 20:15:00', '2025-07-26 23:15:00'),
(57, 55, 6, 'Parrilla Mixta', 46.90, 1, 46.90, '2025-07-30 21:15:00', '2025-07-31 00:15:00'),
(58, 56, 9, 'Alitas BBQ x 8', 29.90, 2, 59.80, '2025-08-03 22:15:00', '2025-08-04 01:15:00'),
(59, 57, 7, 'Anticuchos x 4', 28.90, 1, 28.90, '2025-08-07 23:15:00', '2025-08-08 02:15:00'),
(60, 58, 5, 'Mega Combo Familiar', 79.90, 1, 79.90, '2025-08-11 17:15:00', '2025-08-11 20:15:00'),
(61, 59, 1, '1/4 Pollo a la Brasa', 18.90, 2, 37.80, '2025-08-15 18:15:00', '2025-08-15 21:15:00'),
(62, 60, 2, '1/2 Pollo a la Brasa', 34.90, 1, 34.90, '2025-08-19 19:15:00', '2025-08-19 22:15:00'),
(63, 61, 4, 'Mostrito Tradicional', 24.90, 2, 49.80, '2025-08-23 20:15:00', '2025-08-23 23:15:00'),
(64, 62, 3, 'Pollo Entero a la Brasa', 64.90, 1, 64.90, '2025-08-27 21:15:00', '2025-08-28 00:15:00'),
(65, 63, 6, 'Parrilla Mixta', 46.90, 1, 46.90, '2025-08-31 22:15:00', '2025-09-01 01:15:00'),
(66, 64, 9, 'Alitas BBQ x 8', 29.90, 2, 59.80, '2025-09-04 23:15:00', '2025-09-05 02:15:00'),
(67, 65, 7, 'Anticuchos x 4', 28.90, 1, 28.90, '2025-09-08 17:15:00', '2025-09-08 20:15:00'),
(68, 66, 5, 'Mega Combo Familiar', 79.90, 1, 79.90, '2025-09-12 18:15:00', '2025-09-12 21:15:00'),
(69, 67, 1, '1/4 Pollo a la Brasa', 18.90, 2, 37.80, '2025-09-16 19:15:00', '2025-09-16 22:15:00'),
(70, 68, 2, '1/2 Pollo a la Brasa', 34.90, 1, 34.90, '2025-09-20 20:15:00', '2025-09-20 23:15:00'),
(71, 69, 4, 'Mostrito Tradicional', 24.90, 2, 49.80, '2025-09-24 21:15:00', '2025-09-25 00:15:00'),
(72, 70, 3, 'Pollo Entero a la Brasa', 64.90, 1, 64.90, '2025-09-28 22:15:00', '2025-09-29 01:15:00'),
(73, 71, 6, 'Parrilla Mixta', 46.90, 1, 46.90, '2025-10-02 23:15:00', '2025-10-03 02:15:00'),
(74, 72, 9, 'Alitas BBQ x 8', 29.90, 2, 59.80, '2025-10-06 17:15:00', '2025-10-06 20:15:00'),
(75, 73, 7, 'Anticuchos x 4', 28.90, 1, 28.90, '2025-10-10 18:15:00', '2025-10-10 21:15:00'),
(76, 74, 5, 'Mega Combo Familiar', 79.90, 1, 79.90, '2025-10-14 19:15:00', '2025-10-14 22:15:00'),
(77, 75, 1, '1/4 Pollo a la Brasa', 18.90, 2, 37.80, '2025-10-18 20:15:00', '2025-10-18 23:15:00'),
(78, 76, 2, '1/2 Pollo a la Brasa', 34.90, 1, 34.90, '2025-10-22 21:15:00', '2025-10-23 00:15:00'),
(79, 77, 4, 'Mostrito Tradicional', 24.90, 2, 49.80, '2025-10-26 22:15:00', '2025-10-27 01:15:00'),
(80, 78, 3, 'Pollo Entero a la Brasa', 64.90, 1, 64.90, '2025-10-30 23:15:00', '2025-10-31 02:15:00'),
(81, 79, 6, 'Parrilla Mixta', 46.90, 1, 46.90, '2025-11-03 17:15:00', '2025-11-03 20:15:00'),
(82, 80, 9, 'Alitas BBQ x 8', 29.90, 2, 59.80, '2025-11-07 18:15:00', '2025-11-07 21:15:00'),
(83, 81, 7, 'Anticuchos x 4', 28.90, 1, 28.90, '2025-11-11 19:15:00', '2025-11-11 22:15:00'),
(84, 82, 5, 'Mega Combo Familiar', 79.90, 1, 79.90, '2025-11-15 20:15:00', '2025-11-15 23:15:00'),
(85, 83, 1, '1/4 Pollo a la Brasa', 18.90, 2, 37.80, '2025-11-19 21:15:00', '2025-11-20 00:15:00'),
(86, 84, 2, '1/2 Pollo a la Brasa', 34.90, 1, 34.90, '2025-11-23 22:15:00', '2025-11-24 01:15:00'),
(87, 85, 4, 'Mostrito Tradicional', 24.90, 2, 49.80, '2025-11-27 23:15:00', '2025-11-28 02:15:00'),
(88, 86, 3, 'Pollo Entero a la Brasa', 64.90, 1, 64.90, '2025-12-01 17:15:00', '2025-12-01 20:15:00'),
(89, 87, 6, 'Parrilla Mixta', 46.90, 1, 46.90, '2025-12-05 18:15:00', '2025-12-05 21:15:00'),
(90, 88, 9, 'Alitas BBQ x 8', 29.90, 2, 59.80, '2025-12-09 19:15:00', '2025-12-09 22:15:00'),
(91, 89, 7, 'Anticuchos x 4', 28.90, 1, 28.90, '2025-12-13 20:15:00', '2025-12-13 23:15:00'),
(92, 90, 5, 'Mega Combo Familiar', 79.90, 1, 79.90, '2025-12-17 21:15:00', '2025-12-18 00:15:00'),
(93, 91, 1, '1/4 Pollo a la Brasa', 18.90, 2, 37.80, '2025-12-21 22:15:00', '2025-12-22 01:15:00'),
(94, 92, 2, '1/2 Pollo a la Brasa', 34.90, 1, 34.90, '2025-12-25 23:15:00', '2025-12-26 02:15:00'),
(95, 93, 4, 'Mostrito Tradicional', 24.90, 2, 49.80, '2025-12-29 17:15:00', '2025-12-29 20:15:00'),
(96, 94, 3, 'Pollo Entero a la Brasa', 64.90, 1, 64.90, '2026-01-02 18:15:00', '2026-01-02 21:15:00'),
(132, 3, 11, 'Inca Kola Personal 500ml', 5.50, 2, 11.00, '2025-01-03 18:15:00', '2025-01-03 21:15:00'),
(133, 4, 13, 'Sprite Personal 500ml', 5.50, 2, 11.00, '2025-01-07 19:15:00', '2025-01-07 22:15:00'),
(134, 5, 14, 'Chicha Morada 1L', 12.90, 1, 12.90, '2025-01-11 20:15:00', '2025-01-11 23:15:00'),
(135, 6, 16, 'Limonada Frozen', 9.90, 1, 9.90, '2025-01-15 21:15:00', '2025-01-16 00:15:00'),
(136, 8, 12, 'Coca-Cola Personal 500ml', 5.50, 2, 11.00, '2025-01-23 23:15:00', '2025-01-24 02:15:00'),
(137, 9, 11, 'Inca Kola Personal 500ml', 5.50, 2, 11.00, '2025-01-27 17:15:00', '2025-01-27 20:15:00'),
(138, 10, 13, 'Sprite Personal 500ml', 5.50, 2, 11.00, '2025-01-31 18:15:00', '2025-01-31 21:15:00'),
(139, 11, 14, 'Chicha Morada 1L', 12.90, 1, 12.90, '2025-02-04 19:15:00', '2025-02-04 22:15:00'),
(140, 13, 17, 'Agua Mineral 625ml', 4.00, 1, 4.00, '2025-02-12 21:15:00', '2025-02-13 00:15:00'),
(141, 14, 12, 'Coca-Cola Personal 500ml', 5.50, 2, 11.00, '2025-02-16 22:15:00', '2025-02-17 01:15:00'),
(142, 15, 11, 'Inca Kola Personal 500ml', 5.50, 2, 11.00, '2025-02-20 23:15:00', '2025-02-21 02:15:00'),
(143, 16, 13, 'Sprite Personal 500ml', 5.50, 2, 11.00, '2025-02-24 17:15:00', '2025-02-24 20:15:00'),
(144, 18, 16, 'Limonada Frozen', 9.90, 1, 9.90, '2025-03-04 19:15:00', '2025-03-04 22:15:00'),
(145, 19, 17, 'Agua Mineral 625ml', 4.00, 1, 4.00, '2025-03-08 20:15:00', '2025-03-08 23:15:00'),
(146, 20, 12, 'Coca-Cola Personal 500ml', 5.50, 2, 11.00, '2025-03-12 21:15:00', '2025-03-13 00:15:00'),
(147, 21, 11, 'Inca Kola Personal 500ml', 5.50, 2, 11.00, '2025-03-16 22:15:00', '2025-03-17 01:15:00'),
(148, 23, 14, 'Chicha Morada 1L', 12.90, 1, 12.90, '2025-03-24 17:15:00', '2025-03-24 20:15:00'),
(149, 24, 16, 'Limonada Frozen', 9.90, 1, 9.90, '2025-03-28 18:15:00', '2025-03-28 21:15:00'),
(150, 25, 17, 'Agua Mineral 625ml', 4.00, 1, 4.00, '2025-04-01 19:15:00', '2025-04-01 22:15:00'),
(151, 26, 12, 'Coca-Cola Personal 500ml', 5.50, 2, 11.00, '2025-04-05 20:15:00', '2025-04-05 23:15:00'),
(152, 28, 13, 'Sprite Personal 500ml', 5.50, 2, 11.00, '2025-04-13 22:15:00', '2025-04-14 01:15:00'),
(153, 29, 14, 'Chicha Morada 1L', 12.90, 1, 12.90, '2025-04-17 23:15:00', '2025-04-18 02:15:00'),
(154, 30, 16, 'Limonada Frozen', 9.90, 1, 9.90, '2025-04-21 17:15:00', '2025-04-21 20:15:00'),
(155, 31, 17, 'Agua Mineral 625ml', 4.00, 1, 4.00, '2025-04-25 18:15:00', '2025-04-25 21:15:00'),
(156, 33, 11, 'Inca Kola Personal 500ml', 5.50, 2, 11.00, '2025-05-03 20:15:00', '2025-05-03 23:15:00'),
(157, 34, 13, 'Sprite Personal 500ml', 5.50, 2, 11.00, '2025-05-07 21:15:00', '2025-05-08 00:15:00'),
(158, 35, 14, 'Chicha Morada 1L', 12.90, 1, 12.90, '2025-05-11 22:15:00', '2025-05-12 01:15:00'),
(159, 36, 16, 'Limonada Frozen', 9.90, 1, 9.90, '2025-05-15 23:15:00', '2025-05-16 02:15:00'),
(160, 38, 12, 'Coca-Cola Personal 500ml', 5.50, 2, 11.00, '2025-05-23 18:15:00', '2025-05-23 21:15:00'),
(161, 39, 11, 'Inca Kola Personal 500ml', 5.50, 2, 11.00, '2025-05-27 19:15:00', '2025-05-27 22:15:00'),
(162, 40, 13, 'Sprite Personal 500ml', 5.50, 2, 11.00, '2025-05-31 20:15:00', '2025-05-31 23:15:00'),
(163, 41, 14, 'Chicha Morada 1L', 12.90, 1, 12.90, '2025-06-04 21:15:00', '2025-06-05 00:15:00'),
(164, 43, 17, 'Agua Mineral 625ml', 4.00, 1, 4.00, '2025-06-12 23:15:00', '2025-06-13 02:15:00'),
(165, 44, 12, 'Coca-Cola Personal 500ml', 5.50, 2, 11.00, '2025-06-16 17:15:00', '2025-06-16 20:15:00'),
(166, 45, 11, 'Inca Kola Personal 500ml', 5.50, 2, 11.00, '2025-06-20 18:15:00', '2025-06-20 21:15:00'),
(167, 46, 13, 'Sprite Personal 500ml', 5.50, 2, 11.00, '2025-06-24 19:15:00', '2025-06-24 22:15:00'),
(168, 48, 16, 'Limonada Frozen', 9.90, 1, 9.90, '2025-07-02 21:15:00', '2025-07-03 00:15:00'),
(169, 49, 17, 'Agua Mineral 625ml', 4.00, 1, 4.00, '2025-07-06 22:15:00', '2025-07-07 01:15:00'),
(170, 50, 12, 'Coca-Cola Personal 500ml', 5.50, 2, 11.00, '2025-07-10 23:15:00', '2025-07-11 02:15:00'),
(171, 51, 11, 'Inca Kola Personal 500ml', 5.50, 2, 11.00, '2025-07-14 17:15:00', '2025-07-14 20:15:00'),
(172, 53, 14, 'Chicha Morada 1L', 12.90, 1, 12.90, '2025-07-22 19:15:00', '2025-07-22 22:15:00'),
(173, 54, 16, 'Limonada Frozen', 9.90, 1, 9.90, '2025-07-26 20:15:00', '2025-07-26 23:15:00'),
(174, 55, 17, 'Agua Mineral 625ml', 4.00, 1, 4.00, '2025-07-30 21:15:00', '2025-07-31 00:15:00'),
(175, 56, 12, 'Coca-Cola Personal 500ml', 5.50, 2, 11.00, '2025-08-03 22:15:00', '2025-08-04 01:15:00'),
(176, 58, 13, 'Sprite Personal 500ml', 5.50, 2, 11.00, '2025-08-11 17:15:00', '2025-08-11 20:15:00'),
(177, 59, 14, 'Chicha Morada 1L', 12.90, 1, 12.90, '2025-08-15 18:15:00', '2025-08-15 21:15:00'),
(178, 60, 16, 'Limonada Frozen', 9.90, 1, 9.90, '2025-08-19 19:15:00', '2025-08-19 22:15:00'),
(179, 61, 17, 'Agua Mineral 625ml', 4.00, 1, 4.00, '2025-08-23 20:15:00', '2025-08-23 23:15:00'),
(180, 63, 11, 'Inca Kola Personal 500ml', 5.50, 2, 11.00, '2025-08-31 22:15:00', '2025-09-01 01:15:00'),
(181, 64, 13, 'Sprite Personal 500ml', 5.50, 2, 11.00, '2025-09-04 23:15:00', '2025-09-05 02:15:00'),
(182, 65, 14, 'Chicha Morada 1L', 12.90, 1, 12.90, '2025-09-08 17:15:00', '2025-09-08 20:15:00'),
(183, 66, 16, 'Limonada Frozen', 9.90, 1, 9.90, '2025-09-12 18:15:00', '2025-09-12 21:15:00'),
(184, 68, 12, 'Coca-Cola Personal 500ml', 5.50, 2, 11.00, '2025-09-20 20:15:00', '2025-09-20 23:15:00'),
(185, 69, 11, 'Inca Kola Personal 500ml', 5.50, 2, 11.00, '2025-09-24 21:15:00', '2025-09-25 00:15:00'),
(186, 70, 13, 'Sprite Personal 500ml', 5.50, 2, 11.00, '2025-09-28 22:15:00', '2025-09-29 01:15:00'),
(187, 71, 14, 'Chicha Morada 1L', 12.90, 1, 12.90, '2025-10-02 23:15:00', '2025-10-03 02:15:00'),
(188, 73, 17, 'Agua Mineral 625ml', 4.00, 1, 4.00, '2025-10-10 18:15:00', '2025-10-10 21:15:00'),
(189, 74, 12, 'Coca-Cola Personal 500ml', 5.50, 2, 11.00, '2025-10-14 19:15:00', '2025-10-14 22:15:00'),
(190, 75, 11, 'Inca Kola Personal 500ml', 5.50, 2, 11.00, '2025-10-18 20:15:00', '2025-10-18 23:15:00'),
(191, 76, 13, 'Sprite Personal 500ml', 5.50, 2, 11.00, '2025-10-22 21:15:00', '2025-10-23 00:15:00'),
(192, 78, 16, 'Limonada Frozen', 9.90, 1, 9.90, '2025-10-30 23:15:00', '2025-10-31 02:15:00'),
(193, 79, 17, 'Agua Mineral 625ml', 4.00, 1, 4.00, '2025-11-03 17:15:00', '2025-11-03 20:15:00'),
(194, 80, 12, 'Coca-Cola Personal 500ml', 5.50, 2, 11.00, '2025-11-07 18:15:00', '2025-11-07 21:15:00'),
(195, 81, 11, 'Inca Kola Personal 500ml', 5.50, 2, 11.00, '2025-11-11 19:15:00', '2025-11-11 22:15:00'),
(196, 83, 14, 'Chicha Morada 1L', 12.90, 1, 12.90, '2025-11-19 21:15:00', '2025-11-20 00:15:00'),
(197, 84, 16, 'Limonada Frozen', 9.90, 1, 9.90, '2025-11-23 22:15:00', '2025-11-24 01:15:00'),
(198, 85, 17, 'Agua Mineral 625ml', 4.00, 1, 4.00, '2025-11-27 23:15:00', '2025-11-28 02:15:00'),
(199, 86, 12, 'Coca-Cola Personal 500ml', 5.50, 2, 11.00, '2025-12-01 17:15:00', '2025-12-01 20:15:00'),
(200, 88, 13, 'Sprite Personal 500ml', 5.50, 2, 11.00, '2025-12-09 19:15:00', '2025-12-09 22:15:00'),
(201, 89, 14, 'Chicha Morada 1L', 12.90, 1, 12.90, '2025-12-13 20:15:00', '2025-12-13 23:15:00'),
(202, 90, 16, 'Limonada Frozen', 9.90, 1, 9.90, '2025-12-17 21:15:00', '2025-12-18 00:15:00'),
(203, 91, 17, 'Agua Mineral 625ml', 4.00, 1, 4.00, '2025-12-21 22:15:00', '2025-12-22 01:15:00'),
(204, 93, 11, 'Inca Kola Personal 500ml', 5.50, 2, 11.00, '2025-12-29 17:15:00', '2025-12-29 20:15:00'),
(205, 94, 13, 'Sprite Personal 500ml', 5.50, 2, 11.00, '2026-01-02 18:15:00', '2026-01-02 21:15:00'),
(259, 130, 1, '1/4 Pollo a la Brasa', 18.90, 1, 18.90, '2026-03-16 03:34:30', '2026-03-16 03:34:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_status_histories`
--

CREATE TABLE `order_status_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('pending','confirmed','preparing','on_the_way','delivered','cancelled') NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `changed_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `order_status_histories`
--

INSERT INTO `order_status_histories` (`id`, `order_id`, `status`, `note`, `changed_by`, `created_at`, `updated_at`) VALUES
(4, 2, 'pending', 'Pedido creado', 2, '2026-03-16 03:01:40', '2026-03-16 03:01:40'),
(5, 3, 'pending', 'Pedido historico sembrado', NULL, '2025-01-03 18:15:00', '2025-01-03 18:15:00'),
(6, 4, 'pending', 'Pedido historico sembrado', NULL, '2025-01-07 19:15:00', '2025-01-07 19:15:00'),
(7, 5, 'pending', 'Pedido historico sembrado', NULL, '2025-01-11 20:15:00', '2025-01-11 20:15:00'),
(8, 6, 'pending', 'Pedido historico sembrado', NULL, '2025-01-15 21:15:00', '2025-01-15 21:15:00'),
(9, 7, 'pending', 'Pedido historico sembrado', NULL, '2025-01-19 22:15:00', '2025-01-19 22:15:00'),
(10, 8, 'pending', 'Pedido historico sembrado', NULL, '2025-01-23 23:15:00', '2025-01-23 23:15:00'),
(11, 9, 'pending', 'Pedido historico sembrado', NULL, '2025-01-27 17:15:00', '2025-01-27 17:15:00'),
(12, 10, 'pending', 'Pedido historico sembrado', NULL, '2025-01-31 18:15:00', '2025-01-31 18:15:00'),
(13, 11, 'pending', 'Pedido historico sembrado', NULL, '2025-02-04 19:15:00', '2025-02-04 19:15:00'),
(14, 12, 'pending', 'Pedido historico sembrado', NULL, '2025-02-08 20:15:00', '2025-02-08 20:15:00'),
(15, 13, 'pending', 'Pedido historico sembrado', NULL, '2025-02-12 21:15:00', '2025-02-12 21:15:00'),
(16, 14, 'pending', 'Pedido historico sembrado', NULL, '2025-02-16 22:15:00', '2025-02-16 22:15:00'),
(17, 15, 'pending', 'Pedido historico sembrado', NULL, '2025-02-20 23:15:00', '2025-02-20 23:15:00'),
(18, 16, 'pending', 'Pedido historico sembrado', NULL, '2025-02-24 17:15:00', '2025-02-24 17:15:00'),
(19, 17, 'pending', 'Pedido historico sembrado', NULL, '2025-02-28 18:15:00', '2025-02-28 18:15:00'),
(20, 18, 'pending', 'Pedido historico sembrado', NULL, '2025-03-04 19:15:00', '2025-03-04 19:15:00'),
(21, 19, 'pending', 'Pedido historico sembrado', NULL, '2025-03-08 20:15:00', '2025-03-08 20:15:00'),
(22, 20, 'pending', 'Pedido historico sembrado', NULL, '2025-03-12 21:15:00', '2025-03-12 21:15:00'),
(23, 21, 'pending', 'Pedido historico sembrado', NULL, '2025-03-16 22:15:00', '2025-03-16 22:15:00'),
(24, 22, 'pending', 'Pedido historico sembrado', NULL, '2025-03-20 23:15:00', '2025-03-20 23:15:00'),
(25, 23, 'pending', 'Pedido historico sembrado', NULL, '2025-03-24 17:15:00', '2025-03-24 17:15:00'),
(26, 24, 'pending', 'Pedido historico sembrado', NULL, '2025-03-28 18:15:00', '2025-03-28 18:15:00'),
(27, 25, 'pending', 'Pedido historico sembrado', NULL, '2025-04-01 19:15:00', '2025-04-01 19:15:00'),
(28, 26, 'pending', 'Pedido historico sembrado', NULL, '2025-04-05 20:15:00', '2025-04-05 20:15:00'),
(29, 27, 'pending', 'Pedido historico sembrado', NULL, '2025-04-09 21:15:00', '2025-04-09 21:15:00'),
(30, 28, 'pending', 'Pedido historico sembrado', NULL, '2025-04-13 22:15:00', '2025-04-13 22:15:00'),
(31, 29, 'pending', 'Pedido historico sembrado', NULL, '2025-04-17 23:15:00', '2025-04-17 23:15:00'),
(32, 30, 'pending', 'Pedido historico sembrado', NULL, '2025-04-21 17:15:00', '2025-04-21 17:15:00'),
(33, 31, 'pending', 'Pedido historico sembrado', NULL, '2025-04-25 18:15:00', '2025-04-25 18:15:00'),
(34, 32, 'pending', 'Pedido historico sembrado', NULL, '2025-04-29 19:15:00', '2025-04-29 19:15:00'),
(35, 33, 'pending', 'Pedido historico sembrado', NULL, '2025-05-03 20:15:00', '2025-05-03 20:15:00'),
(36, 34, 'pending', 'Pedido historico sembrado', NULL, '2025-05-07 21:15:00', '2025-05-07 21:15:00'),
(37, 35, 'pending', 'Pedido historico sembrado', NULL, '2025-05-11 22:15:00', '2025-05-11 22:15:00'),
(38, 36, 'pending', 'Pedido historico sembrado', NULL, '2025-05-15 23:15:00', '2025-05-15 23:15:00'),
(39, 37, 'pending', 'Pedido historico sembrado', NULL, '2025-05-19 17:15:00', '2025-05-19 17:15:00'),
(40, 38, 'pending', 'Pedido historico sembrado', NULL, '2025-05-23 18:15:00', '2025-05-23 18:15:00'),
(41, 39, 'pending', 'Pedido historico sembrado', NULL, '2025-05-27 19:15:00', '2025-05-27 19:15:00'),
(42, 40, 'pending', 'Pedido historico sembrado', NULL, '2025-05-31 20:15:00', '2025-05-31 20:15:00'),
(43, 41, 'pending', 'Pedido historico sembrado', NULL, '2025-06-04 21:15:00', '2025-06-04 21:15:00'),
(44, 42, 'pending', 'Pedido historico sembrado', NULL, '2025-06-08 22:15:00', '2025-06-08 22:15:00'),
(45, 43, 'pending', 'Pedido historico sembrado', NULL, '2025-06-12 23:15:00', '2025-06-12 23:15:00'),
(46, 44, 'pending', 'Pedido historico sembrado', NULL, '2025-06-16 17:15:00', '2025-06-16 17:15:00'),
(47, 45, 'pending', 'Pedido historico sembrado', NULL, '2025-06-20 18:15:00', '2025-06-20 18:15:00'),
(48, 46, 'pending', 'Pedido historico sembrado', NULL, '2025-06-24 19:15:00', '2025-06-24 19:15:00'),
(49, 47, 'pending', 'Pedido historico sembrado', NULL, '2025-06-28 20:15:00', '2025-06-28 20:15:00'),
(50, 48, 'pending', 'Pedido historico sembrado', NULL, '2025-07-02 21:15:00', '2025-07-02 21:15:00'),
(51, 49, 'pending', 'Pedido historico sembrado', NULL, '2025-07-06 22:15:00', '2025-07-06 22:15:00'),
(52, 50, 'pending', 'Pedido historico sembrado', NULL, '2025-07-10 23:15:00', '2025-07-10 23:15:00'),
(53, 51, 'pending', 'Pedido historico sembrado', NULL, '2025-07-14 17:15:00', '2025-07-14 17:15:00'),
(54, 52, 'pending', 'Pedido historico sembrado', NULL, '2025-07-18 18:15:00', '2025-07-18 18:15:00'),
(55, 53, 'pending', 'Pedido historico sembrado', NULL, '2025-07-22 19:15:00', '2025-07-22 19:15:00'),
(56, 54, 'pending', 'Pedido historico sembrado', NULL, '2025-07-26 20:15:00', '2025-07-26 20:15:00'),
(57, 55, 'pending', 'Pedido historico sembrado', NULL, '2025-07-30 21:15:00', '2025-07-30 21:15:00'),
(58, 56, 'pending', 'Pedido historico sembrado', NULL, '2025-08-03 22:15:00', '2025-08-03 22:15:00'),
(59, 57, 'pending', 'Pedido historico sembrado', NULL, '2025-08-07 23:15:00', '2025-08-07 23:15:00'),
(60, 58, 'pending', 'Pedido historico sembrado', NULL, '2025-08-11 17:15:00', '2025-08-11 17:15:00'),
(61, 59, 'pending', 'Pedido historico sembrado', NULL, '2025-08-15 18:15:00', '2025-08-15 18:15:00'),
(62, 60, 'pending', 'Pedido historico sembrado', NULL, '2025-08-19 19:15:00', '2025-08-19 19:15:00'),
(63, 61, 'pending', 'Pedido historico sembrado', NULL, '2025-08-23 20:15:00', '2025-08-23 20:15:00'),
(64, 62, 'pending', 'Pedido historico sembrado', NULL, '2025-08-27 21:15:00', '2025-08-27 21:15:00'),
(65, 63, 'pending', 'Pedido historico sembrado', NULL, '2025-08-31 22:15:00', '2025-08-31 22:15:00'),
(66, 64, 'pending', 'Pedido historico sembrado', NULL, '2025-09-04 23:15:00', '2025-09-04 23:15:00'),
(67, 65, 'pending', 'Pedido historico sembrado', NULL, '2025-09-08 17:15:00', '2025-09-08 17:15:00'),
(68, 66, 'pending', 'Pedido historico sembrado', NULL, '2025-09-12 18:15:00', '2025-09-12 18:15:00'),
(69, 67, 'pending', 'Pedido historico sembrado', NULL, '2025-09-16 19:15:00', '2025-09-16 19:15:00'),
(70, 68, 'pending', 'Pedido historico sembrado', NULL, '2025-09-20 20:15:00', '2025-09-20 20:15:00'),
(71, 69, 'pending', 'Pedido historico sembrado', NULL, '2025-09-24 21:15:00', '2025-09-24 21:15:00'),
(72, 70, 'pending', 'Pedido historico sembrado', NULL, '2025-09-28 22:15:00', '2025-09-28 22:15:00'),
(73, 71, 'pending', 'Pedido historico sembrado', NULL, '2025-10-02 23:15:00', '2025-10-02 23:15:00'),
(74, 72, 'pending', 'Pedido historico sembrado', NULL, '2025-10-06 17:15:00', '2025-10-06 17:15:00'),
(75, 73, 'pending', 'Pedido historico sembrado', NULL, '2025-10-10 18:15:00', '2025-10-10 18:15:00'),
(76, 74, 'pending', 'Pedido historico sembrado', NULL, '2025-10-14 19:15:00', '2025-10-14 19:15:00'),
(77, 75, 'pending', 'Pedido historico sembrado', NULL, '2025-10-18 20:15:00', '2025-10-18 20:15:00'),
(78, 76, 'pending', 'Pedido historico sembrado', NULL, '2025-10-22 21:15:00', '2025-10-22 21:15:00'),
(79, 77, 'pending', 'Pedido historico sembrado', NULL, '2025-10-26 22:15:00', '2025-10-26 22:15:00'),
(80, 78, 'pending', 'Pedido historico sembrado', NULL, '2025-10-30 23:15:00', '2025-10-30 23:15:00'),
(81, 79, 'pending', 'Pedido historico sembrado', NULL, '2025-11-03 17:15:00', '2025-11-03 17:15:00'),
(82, 80, 'pending', 'Pedido historico sembrado', NULL, '2025-11-07 18:15:00', '2025-11-07 18:15:00'),
(83, 81, 'pending', 'Pedido historico sembrado', NULL, '2025-11-11 19:15:00', '2025-11-11 19:15:00'),
(84, 82, 'pending', 'Pedido historico sembrado', NULL, '2025-11-15 20:15:00', '2025-11-15 20:15:00'),
(85, 83, 'pending', 'Pedido historico sembrado', NULL, '2025-11-19 21:15:00', '2025-11-19 21:15:00'),
(86, 84, 'pending', 'Pedido historico sembrado', NULL, '2025-11-23 22:15:00', '2025-11-23 22:15:00'),
(87, 85, 'pending', 'Pedido historico sembrado', NULL, '2025-11-27 23:15:00', '2025-11-27 23:15:00'),
(88, 86, 'pending', 'Pedido historico sembrado', NULL, '2025-12-01 17:15:00', '2025-12-01 17:15:00'),
(89, 87, 'pending', 'Pedido historico sembrado', NULL, '2025-12-05 18:15:00', '2025-12-05 18:15:00'),
(90, 88, 'pending', 'Pedido historico sembrado', NULL, '2025-12-09 19:15:00', '2025-12-09 19:15:00'),
(91, 89, 'pending', 'Pedido historico sembrado', NULL, '2025-12-13 20:15:00', '2025-12-13 20:15:00'),
(92, 90, 'pending', 'Pedido historico sembrado', NULL, '2025-12-17 21:15:00', '2025-12-17 21:15:00'),
(93, 91, 'pending', 'Pedido historico sembrado', NULL, '2025-12-21 22:15:00', '2025-12-21 22:15:00'),
(94, 92, 'pending', 'Pedido historico sembrado', NULL, '2025-12-25 23:15:00', '2025-12-25 23:15:00'),
(95, 93, 'pending', 'Pedido historico sembrado', NULL, '2025-12-29 17:15:00', '2025-12-29 17:15:00'),
(96, 94, 'pending', 'Pedido historico sembrado', NULL, '2026-01-02 18:15:00', '2026-01-02 18:15:00'),
(132, 3, 'delivered', 'Pedido historico completado', NULL, '2025-01-03 20:15:00', '2025-01-03 20:15:00'),
(133, 4, 'delivered', 'Pedido historico completado', NULL, '2025-01-07 21:15:00', '2025-01-07 21:15:00'),
(134, 5, 'delivered', 'Pedido historico completado', NULL, '2025-01-11 22:15:00', '2025-01-11 22:15:00'),
(135, 6, 'delivered', 'Pedido historico completado', NULL, '2025-01-15 23:15:00', '2025-01-15 23:15:00'),
(136, 7, 'delivered', 'Pedido historico completado', NULL, '2025-01-20 00:15:00', '2025-01-20 00:15:00'),
(137, 8, 'delivered', 'Pedido historico completado', NULL, '2025-01-24 01:15:00', '2025-01-24 01:15:00'),
(138, 9, 'delivered', 'Pedido historico completado', NULL, '2025-01-27 19:15:00', '2025-01-27 19:15:00'),
(139, 10, 'delivered', 'Pedido historico completado', NULL, '2025-01-31 20:15:00', '2025-01-31 20:15:00'),
(140, 11, 'delivered', 'Pedido historico completado', NULL, '2025-02-04 21:15:00', '2025-02-04 21:15:00'),
(141, 12, 'delivered', 'Pedido historico completado', NULL, '2025-02-08 22:15:00', '2025-02-08 22:15:00'),
(142, 13, 'delivered', 'Pedido historico completado', NULL, '2025-02-12 23:15:00', '2025-02-12 23:15:00'),
(143, 14, 'delivered', 'Pedido historico completado', NULL, '2025-02-17 00:15:00', '2025-02-17 00:15:00'),
(144, 15, 'delivered', 'Pedido historico completado', NULL, '2025-02-21 01:15:00', '2025-02-21 01:15:00'),
(145, 16, 'delivered', 'Pedido historico completado', NULL, '2025-02-24 19:15:00', '2025-02-24 19:15:00'),
(146, 17, 'delivered', 'Pedido historico completado', NULL, '2025-02-28 20:15:00', '2025-02-28 20:15:00'),
(147, 18, 'delivered', 'Pedido historico completado', NULL, '2025-03-04 21:15:00', '2025-03-04 21:15:00'),
(148, 19, 'delivered', 'Pedido historico completado', NULL, '2025-03-08 22:15:00', '2025-03-08 22:15:00'),
(149, 20, 'delivered', 'Pedido historico completado', NULL, '2025-03-12 23:15:00', '2025-03-12 23:15:00'),
(150, 21, 'delivered', 'Pedido historico completado', NULL, '2025-03-17 00:15:00', '2025-03-17 00:15:00'),
(151, 22, 'delivered', 'Pedido historico completado', NULL, '2025-03-21 01:15:00', '2025-03-21 01:15:00'),
(152, 23, 'delivered', 'Pedido historico completado', NULL, '2025-03-24 19:15:00', '2025-03-24 19:15:00'),
(153, 24, 'delivered', 'Pedido historico completado', NULL, '2025-03-28 20:15:00', '2025-03-28 20:15:00'),
(154, 25, 'cancelled', 'Pedido historico cancelado', NULL, '2025-04-01 21:15:00', '2025-04-01 21:15:00'),
(155, 26, 'delivered', 'Pedido historico completado', NULL, '2025-04-05 22:15:00', '2025-04-05 22:15:00'),
(156, 27, 'delivered', 'Pedido historico completado', NULL, '2025-04-09 23:15:00', '2025-04-09 23:15:00'),
(157, 28, 'delivered', 'Pedido historico completado', NULL, '2025-04-14 00:15:00', '2025-04-14 00:15:00'),
(158, 29, 'delivered', 'Pedido historico completado', NULL, '2025-04-18 01:15:00', '2025-04-18 01:15:00'),
(159, 30, 'delivered', 'Pedido historico completado', NULL, '2025-04-21 19:15:00', '2025-04-21 19:15:00'),
(160, 31, 'delivered', 'Pedido historico completado', NULL, '2025-04-25 20:15:00', '2025-04-25 20:15:00'),
(161, 32, 'delivered', 'Pedido historico completado', NULL, '2025-04-29 21:15:00', '2025-04-29 21:15:00'),
(162, 33, 'delivered', 'Pedido historico completado', NULL, '2025-05-03 22:15:00', '2025-05-03 22:15:00'),
(163, 34, 'delivered', 'Pedido historico completado', NULL, '2025-05-07 23:15:00', '2025-05-07 23:15:00'),
(164, 35, 'delivered', 'Pedido historico completado', NULL, '2025-05-12 00:15:00', '2025-05-12 00:15:00'),
(165, 36, 'delivered', 'Pedido historico completado', NULL, '2025-05-16 01:15:00', '2025-05-16 01:15:00'),
(166, 37, 'delivered', 'Pedido historico completado', NULL, '2025-05-19 19:15:00', '2025-05-19 19:15:00'),
(167, 38, 'delivered', 'Pedido historico completado', NULL, '2025-05-23 20:15:00', '2025-05-23 20:15:00'),
(168, 39, 'delivered', 'Pedido historico completado', NULL, '2025-05-27 21:15:00', '2025-05-27 21:15:00'),
(169, 40, 'delivered', 'Pedido historico completado', NULL, '2025-05-31 22:15:00', '2025-05-31 22:15:00'),
(170, 41, 'delivered', 'Pedido historico completado', NULL, '2025-06-04 23:15:00', '2025-06-04 23:15:00'),
(171, 42, 'delivered', 'Pedido historico completado', NULL, '2025-06-09 00:15:00', '2025-06-09 00:15:00'),
(172, 43, 'delivered', 'Pedido historico completado', NULL, '2025-06-13 01:15:00', '2025-06-13 01:15:00'),
(173, 44, 'delivered', 'Pedido historico completado', NULL, '2025-06-16 19:15:00', '2025-06-16 19:15:00'),
(174, 45, 'delivered', 'Pedido historico completado', NULL, '2025-06-20 20:15:00', '2025-06-20 20:15:00'),
(175, 46, 'delivered', 'Pedido historico completado', NULL, '2025-06-24 21:15:00', '2025-06-24 21:15:00'),
(176, 47, 'delivered', 'Pedido historico completado', NULL, '2025-06-28 22:15:00', '2025-06-28 22:15:00'),
(177, 48, 'cancelled', 'Pedido historico cancelado', NULL, '2025-07-02 23:15:00', '2025-07-02 23:15:00'),
(178, 49, 'delivered', 'Pedido historico completado', NULL, '2025-07-07 00:15:00', '2025-07-07 00:15:00'),
(179, 50, 'delivered', 'Pedido historico completado', NULL, '2025-07-11 01:15:00', '2025-07-11 01:15:00'),
(180, 51, 'delivered', 'Pedido historico completado', NULL, '2025-07-14 19:15:00', '2025-07-14 19:15:00'),
(181, 52, 'delivered', 'Pedido historico completado', NULL, '2025-07-18 20:15:00', '2025-07-18 20:15:00'),
(182, 53, 'delivered', 'Pedido historico completado', NULL, '2025-07-22 21:15:00', '2025-07-22 21:15:00'),
(183, 54, 'delivered', 'Pedido historico completado', NULL, '2025-07-26 22:15:00', '2025-07-26 22:15:00'),
(184, 55, 'delivered', 'Pedido historico completado', NULL, '2025-07-30 23:15:00', '2025-07-30 23:15:00'),
(185, 56, 'delivered', 'Pedido historico completado', NULL, '2025-08-04 00:15:00', '2025-08-04 00:15:00'),
(186, 57, 'delivered', 'Pedido historico completado', NULL, '2025-08-08 01:15:00', '2025-08-08 01:15:00'),
(187, 58, 'delivered', 'Pedido historico completado', NULL, '2025-08-11 19:15:00', '2025-08-11 19:15:00'),
(188, 59, 'delivered', 'Pedido historico completado', NULL, '2025-08-15 20:15:00', '2025-08-15 20:15:00'),
(189, 60, 'delivered', 'Pedido historico completado', NULL, '2025-08-19 21:15:00', '2025-08-19 21:15:00'),
(190, 61, 'delivered', 'Pedido historico completado', NULL, '2025-08-23 22:15:00', '2025-08-23 22:15:00'),
(191, 62, 'delivered', 'Pedido historico completado', NULL, '2025-08-27 23:15:00', '2025-08-27 23:15:00'),
(192, 63, 'delivered', 'Pedido historico completado', NULL, '2025-09-01 00:15:00', '2025-09-01 00:15:00'),
(193, 64, 'delivered', 'Pedido historico completado', NULL, '2025-09-05 01:15:00', '2025-09-05 01:15:00'),
(194, 65, 'delivered', 'Pedido historico completado', NULL, '2025-09-08 19:15:00', '2025-09-08 19:15:00'),
(195, 66, 'delivered', 'Pedido historico completado', NULL, '2025-09-12 20:15:00', '2025-09-12 20:15:00'),
(196, 67, 'delivered', 'Pedido historico completado', NULL, '2025-09-16 21:15:00', '2025-09-16 21:15:00'),
(197, 68, 'delivered', 'Pedido historico completado', NULL, '2025-09-20 22:15:00', '2025-09-20 22:15:00'),
(198, 69, 'delivered', 'Pedido historico completado', NULL, '2025-09-24 23:15:00', '2025-09-24 23:15:00'),
(199, 70, 'delivered', 'Pedido historico completado', NULL, '2025-09-29 00:15:00', '2025-09-29 00:15:00'),
(200, 71, 'cancelled', 'Pedido historico cancelado', NULL, '2025-10-03 01:15:00', '2025-10-03 01:15:00'),
(201, 72, 'delivered', 'Pedido historico completado', NULL, '2025-10-06 19:15:00', '2025-10-06 19:15:00'),
(202, 73, 'delivered', 'Pedido historico completado', NULL, '2025-10-10 20:15:00', '2025-10-10 20:15:00'),
(203, 74, 'delivered', 'Pedido historico completado', NULL, '2025-10-14 21:15:00', '2025-10-14 21:15:00'),
(204, 75, 'delivered', 'Pedido historico completado', NULL, '2025-10-18 22:15:00', '2025-10-18 22:15:00'),
(205, 76, 'delivered', 'Pedido historico completado', NULL, '2025-10-22 23:15:00', '2025-10-22 23:15:00'),
(206, 77, 'delivered', 'Pedido historico completado', NULL, '2025-10-27 00:15:00', '2025-10-27 00:15:00'),
(207, 78, 'delivered', 'Pedido historico completado', NULL, '2025-10-31 01:15:00', '2025-10-31 01:15:00'),
(208, 79, 'delivered', 'Pedido historico completado', NULL, '2025-11-03 19:15:00', '2025-11-03 19:15:00'),
(209, 80, 'delivered', 'Pedido historico completado', NULL, '2025-11-07 20:15:00', '2025-11-07 20:15:00'),
(210, 81, 'delivered', 'Pedido historico completado', NULL, '2025-11-11 21:15:00', '2025-11-11 21:15:00'),
(211, 82, 'delivered', 'Pedido historico completado', NULL, '2025-11-15 22:15:00', '2025-11-15 22:15:00'),
(212, 83, 'delivered', 'Pedido historico completado', NULL, '2025-11-19 23:15:00', '2025-11-19 23:15:00'),
(213, 84, 'delivered', 'Pedido historico completado', NULL, '2025-11-24 00:15:00', '2025-11-24 00:15:00'),
(214, 85, 'delivered', 'Pedido historico completado', NULL, '2025-11-28 01:15:00', '2025-11-28 01:15:00'),
(215, 86, 'delivered', 'Pedido historico completado', NULL, '2025-12-01 19:15:00', '2025-12-01 19:15:00'),
(216, 87, 'delivered', 'Pedido historico completado', NULL, '2025-12-05 20:15:00', '2025-12-05 20:15:00'),
(217, 88, 'delivered', 'Pedido historico completado', NULL, '2025-12-09 21:15:00', '2025-12-09 21:15:00'),
(218, 89, 'delivered', 'Pedido historico completado', NULL, '2025-12-13 22:15:00', '2025-12-13 22:15:00'),
(219, 90, 'delivered', 'Pedido historico completado', NULL, '2025-12-17 23:15:00', '2025-12-17 23:15:00'),
(220, 91, 'delivered', 'Pedido historico completado', NULL, '2025-12-22 00:15:00', '2025-12-22 00:15:00'),
(221, 92, 'delivered', 'Pedido historico completado', NULL, '2025-12-26 01:15:00', '2025-12-26 01:15:00'),
(222, 93, 'delivered', 'Pedido historico completado', NULL, '2025-12-29 19:15:00', '2025-12-29 19:15:00'),
(223, 94, 'cancelled', 'Pedido historico cancelado', NULL, '2026-01-02 20:15:00', '2026-01-02 20:15:00'),
(259, 130, 'pending', 'Pedido creado', 2, '2026-03-16 03:34:30', '2026-03-16 03:34:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `category` varchar(60) NOT NULL DEFAULT 'pollos',
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_url` varchar(500) DEFAULT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT 1,
  `stock` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `description`, `price`, `image_url`, `is_available`, `stock`, `created_at`, `updated_at`) VALUES
(1, '1/4 Pollo a la Brasa', 'pollos', 'Con papas y ensalada.', 18.90, '/images/products/pollos/cuarto.jpg', 1, 20, '2026-03-13 01:20:01', '2026-03-24 04:52:39'),
(2, '1/2 Pollo a la Brasa', 'pollos', 'Ideal para compartir.', 34.90, '/images/products/pollos/medio_pollo.jpg', 1, 20, '2026-03-13 01:20:01', '2026-03-24 04:52:39'),
(3, 'Pollo Entero a la Brasa', 'pollos', 'Con papas familiares y cremas.', 64.90, '/images/products/pollos/pollo_familiar.jpg', 1, 20, '2026-03-13 01:20:01', '2026-03-16 02:39:13'),
(4, 'Mostrito Tradicional', 'pollos', '1/4 de pollo con arroz chaufa.', 24.90, '/images/products/pollos/mostrito.jpg', 1, 20, '2026-03-13 01:20:01', '2026-03-24 04:52:39'),
(5, 'Mega Combo Familiar', 'pollos', 'Pollo entero + papas + ensalada + gaseosa 1.5L.', 79.90, '/images/products/pollos/mega-combo.jpg', 1, 20, '2026-03-13 01:20:01', '2026-03-16 02:39:44'),
(6, 'Parrilla Mixta', 'parrillas', 'Churrasco, chorizo, anticucho y papas.', 46.90, '/images/products/parrillas/parrillada-mixta.jpg', 1, 20, '2026-03-13 01:20:01', '2026-03-24 04:52:39'),
(7, 'Anticuchos x 4', 'parrillas', 'Corazon de res a la parrilla.', 28.90, '/images/products/parrillas/anticuchos.jpg', 1, 20, '2026-03-13 01:20:01', '2026-03-24 04:52:39'),
(8, 'Churrasco a la Parrilla', 'parrillas', 'Lomo a la parrilla con guarnicion.', 36.90, '/images/products/parrillas/parrilla_arge.jpg', 1, 20, '2026-03-13 01:20:01', '2026-03-24 04:52:39'),
(9, 'Alitas BBQ x 8', 'parrillas', 'Alitas glaseadas en salsa BBQ.', 29.90, '/images/products/parrillas/alitas-bbq.jpg', 1, 20, '2026-03-13 01:20:01', '2026-03-24 04:52:39'),
(10, 'Brochetas de Pollo', 'parrillas', 'Brochetas con vegetales grillados.', 27.90, '/images/products/parrillas/pollo_parrilla.jpg', 1, 20, '2026-03-13 01:20:01', '2026-03-24 04:52:39'),
(11, 'Inca Kola Personal 500ml', 'bebidas', 'Bebida personal helada.', 5.50, '/images/products/bebidas/inca-kola.jpg', 1, 20, '2026-03-13 01:20:01', '2026-03-24 04:52:39'),
(12, 'Coca-Cola Personal 500ml', 'bebidas', 'Bebida personal helada.', 5.50, '/images/products/bebidas/coca-cola.jpg', 1, 20, '2026-03-13 01:20:01', '2026-03-24 04:52:39'),
(13, 'Sprite Personal 500ml', 'bebidas', 'Bebida personal helada.', 5.50, '/images/products/bebidas/sprite.jpg', 1, 20, '2026-03-13 01:20:01', '2026-03-24 04:52:39'),
(14, 'Chicha Morada 1L', 'bebidas', 'Chicha morada artesanal.', 12.90, '/images/products/bebidas/chicha_1L.jpg', 1, 20, '2026-03-13 01:20:01', '2026-03-24 04:52:39'),
(16, 'Limonada Frozen', 'bebidas', 'Limonada frozen de la casa.', 9.90, '/images/products/bebidas/limonada.jpg', 1, 20, '2026-03-13 01:20:01', '2026-03-24 04:52:39'),
(17, 'Agua Mineral 625ml', 'bebidas', 'Agua mineral sin gas.', 4.00, '/images/products/bebidas/agua.jpg', 1, 20, '2026-03-13 01:20:01', '2026-03-24 04:52:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `role` varchar(20) NOT NULL DEFAULT 'customer',
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `role`, `is_active`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administracion', 'admin@eldorado.pe', '999888777', 'admin', 1, NULL, '$2y$12$gglNHHMjpITAMJLdGgQTAuTki3FFGI2pYdNQVBE5LWdjVsbQDBOE6', NULL, '2026-03-13 01:20:01', '2026-03-24 04:52:39'),
(2, 'Marcelo', 'marcelo320@gmail.com', NULL, 'customer', 1, NULL, '$2y$12$qXw8m7.vVy30lWDXDS32seT86v7G13XT1UexY7sP/MGJ1ptkHEJHe', NULL, '2026-03-13 01:21:35', '2026-03-13 01:21:35'),
(3, 'James', 'james21@gmail.com', '963201458', 'customer', 1, NULL, '$2y$12$a8y/NSSE0/DMuQSy1NRHcO3Gc5PTTn.p.d/tKZn1vVnNBvRrTEtIO', NULL, '2026-03-24 04:57:04', '2026-03-24 04:57:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_addresses`
--

CREATE TABLE `user_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(80) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user_addresses`
--

INSERT INTO `user_addresses` (`id`, `user_id`, `label`, `address`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, 'Jr. Cuzco', '2026-03-16 23:16:21', '2026-03-16 23:16:21');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `login_histories`
--
ALTER TABLE `login_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `login_histories_user_id_foreign` (`user_id`),
  ADD KEY `login_histories_email_index` (`email`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_tracking_code_unique` (`tracking_code`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `order_status_histories`
--
ALTER TABLE `order_status_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_status_histories_order_id_foreign` (`order_id`),
  ADD KEY `order_status_histories_changed_by_foreign` (`changed_by`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_addresses_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `login_histories`
--
ALTER TABLE `login_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT de la tabla `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;

--
-- AUTO_INCREMENT de la tabla `order_status_histories`
--
ALTER TABLE `order_status_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `login_histories`
--
ALTER TABLE `login_histories`
  ADD CONSTRAINT `login_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `order_status_histories`
--
ALTER TABLE `order_status_histories`
  ADD CONSTRAINT `order_status_histories_changed_by_foreign` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `order_status_histories_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD CONSTRAINT `user_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
