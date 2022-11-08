-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.25-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table colegio.cursos
CREATE TABLE IF NOT EXISTS `cursos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `horas` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table colegio.cursos: ~13 rows (approximately)
DELETE FROM `cursos`;
INSERT INTO `cursos` (`id`, `name`, `horas`, `created_at`, `updated_at`) VALUES
	(1, 'Curso avanzado de JS', 10, '2022-11-06 09:55:57', '2022-11-07 08:50:29'),
	(3, 'Curso tres', 40, '2022-11-07 01:54:04', '2022-11-07 01:54:04'),
	(5, 'Curso cinco', 40, '2022-11-07 02:44:58', '2022-11-07 02:44:58'),
	(6, 'Curso Seis', 24, '2022-11-07 02:52:52', '2022-11-07 04:22:10'),
	(29, 'Curso siete', 302, '2022-11-07 04:21:50', '2022-11-07 04:21:50'),
	(30, 'Curso ocho', 30, '2022-11-07 04:35:41', '2022-11-07 04:35:41'),
	(31, 'Curso nueve', 400, '2022-11-07 04:35:53', '2022-11-07 04:35:53'),
	(32, 'Curso 10', 20, '2022-11-07 04:36:01', '2022-11-07 04:36:01'),
	(33, 'Curso once', 40, '2022-11-07 04:36:09', '2022-11-07 04:36:09'),
	(34, 'Curso 12', 120, '2022-11-07 04:36:18', '2022-11-07 04:36:18'),
	(35, 'Curso trece', 50, '2022-11-07 04:36:27', '2022-11-07 04:36:27'),
	(36, 'Curso 14', 20, '2022-11-07 04:36:54', '2022-11-07 04:37:07'),
	(37, 'Curso quincesss', 150, '2022-11-07 04:45:40', '2022-11-07 04:45:48'),
	(38, 'Curso js', 32, '2022-11-07 07:11:16', '2022-11-07 07:11:29');

-- Dumping structure for table colegio.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table colegio.failed_jobs: ~0 rows (approximately)
DELETE FROM `failed_jobs`;

-- Dumping structure for table colegio.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table colegio.migrations: ~7 rows (approximately)
DELETE FROM `migrations`;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(6, '2014_10_12_000000_create_users_table', 1),
	(7, '2014_10_12_100000_create_password_resets_table', 1),
	(8, '2019_08_19_000000_create_failed_jobs_table', 1),
	(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(11, '2022_11_06_014316_add_campos_users', 2),
	(15, '2022_11_06_021448_create_cursos_table', 3),
	(16, '2022_11_06_043543_create_usuarioscursos_table', 3),
	(18, '2022_11_06_163040_add_campo_administrador', 4);

-- Dumping structure for table colegio.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table colegio.password_resets: ~0 rows (approximately)
DELETE FROM `password_resets`;

-- Dumping structure for table colegio.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table colegio.personal_access_tokens: ~0 rows (approximately)
DELETE FROM `personal_access_tokens`;

-- Dumping structure for table colegio.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_administrator` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_api_token_unique` (`api_token`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table colegio.users: ~2 rows (approximately)
DELETE FROM `users`;
INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `api_token`, `is_administrator`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Jhonatan Vanegas', 'jvanegas@gmail.com', '3215677665', NULL, '$2y$10$zL8bYuFx1R/7wfllNL.LyeYn4fcNRyjLgQSXBx0866xTxLWicLgXm', 'i0EBsQ88krd6RORN9GxBBaUAaPRuIhl6YpiGtDqngoo7t7rRzeL4vf6CpGv7', 1, NULL, '2022-11-06 06:56:27', '2022-11-08 06:31:45'),
	(4, 'Juan Perez', 'jperez@gmail.com', '3214567898', NULL, '$2y$10$x.EN3zSl1x37ZkuQ99yChe7bVU1i4rWrxO75cwSYtLxDc/iUgoWde', 'yZBLtyKgF6rdZNsrdB3Ldx2FSQl23M5VgPvOMXZOHDIbKJFdRCn8NKoznQ6v', 0, NULL, '2022-11-07 06:07:54', '2022-11-07 09:17:45');

-- Dumping structure for table colegio.userscursos
CREATE TABLE IF NOT EXISTS `userscursos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `curso_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userscursos_user_id_foreign` (`user_id`),
  KEY `userscursos_curso_id_foreign` (`curso_id`),
  CONSTRAINT `userscursos_curso_id_foreign` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`),
  CONSTRAINT `userscursos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table colegio.userscursos: ~0 rows (approximately)
DELETE FROM `userscursos`;
INSERT INTO `userscursos` (`id`, `user_id`, `curso_id`, `created_at`, `updated_at`) VALUES
	(8, 4, 6, '2022-11-08 09:44:47', '2022-11-08 09:44:47'),
	(9, 4, 30, '2022-11-08 09:45:20', '2022-11-08 09:45:20');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
