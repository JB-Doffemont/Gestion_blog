-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           5.7.33 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour blog
CREATE DATABASE IF NOT EXISTS `blog` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `blog`;

-- Listage de la structure de la table blog. failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table blog.failed_jobs : ~0 rows (environ)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Listage de la structure de la table blog. migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table blog.migrations : ~5 rows (environ)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(6, '2021_11_22_132527_create_posts_table', 2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Listage de la structure de la table blog. password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table blog.password_resets : ~0 rows (environ)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Listage de la structure de la table blog. personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table blog.personal_access_tokens : ~0 rows (environ)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Listage de la structure de la table blog. posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `follow` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table blog.posts : ~25 rows (environ)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `title`, `content`, `author`, `follow`, `created_at`, `updated_at`) VALUES
	(9, 'de', 'de', 'de', 111, '2021-11-22 15:54:21', '2021-11-23 10:58:32'),
	(12, NULL, NULL, NULL, NULL, '2021-11-23 10:05:55', '2021-11-23 10:05:55'),
	(13, 'de', 'dde', 'dde', 222, '2021-11-23 10:06:00', '2021-11-25 13:30:28'),
	(14, 'nisi', 'Expedita recusandae explicabo dolore numquam corporis voluptatem consequatur.', 'Prohaska', 61, '2021-11-23 13:56:24', '2021-11-23 13:56:24'),
	(15, 'est', 'Qui in iste accusantium occaecati sit illo aperiam.', 'Littel', 72, '2021-11-23 13:56:24', '2021-11-23 13:56:24'),
	(16, 'repudiandae', 'Sit sed ad velit et sunt.', 'Dicki', 326, '2021-11-23 13:56:24', '2021-11-23 13:56:24'),
	(17, 'sunt', 'Voluptas rerum ut reiciendis qui velit quos dolorum.', 'Schultz', 353, '2021-11-23 13:56:24', '2021-11-23 13:56:24'),
	(18, 'facere', 'Eum placeat dolorem ea sunt.', 'Trantow', 170, '2021-11-23 13:56:24', '2021-11-23 13:56:24'),
	(19, 'ut', 'Placeat asperiores laboriosam sunt amet qui.', 'Lemke', 245, '2021-11-23 13:56:24', '2021-11-23 13:56:24'),
	(20, 'quia', 'Et accusantium et amet consequuntur laboriosam.', 'Moore', 229, '2021-11-23 13:56:24', '2021-11-23 13:56:24'),
	(21, 'ipsum', 'Nobis voluptates dolorem non officiis quis velit.', 'Doyle', 389, '2021-11-23 13:56:24', '2021-11-23 13:56:24'),
	(22, 'et', 'Qui quas veritatis commodi.', 'Sipes', 36, '2021-11-23 13:56:24', '2021-11-23 13:56:24'),
	(23, 'cupiditate', 'Magnam dolorum dolorum quia vel ducimus molestiae facilis.', 'Auer', 499, '2021-11-23 13:56:24', '2021-11-23 13:56:24'),
	(24, 'repudiandae', 'Debitis quis esse debitis et aut.', 'Corwin', 478, '2021-11-23 13:56:24', '2021-11-23 13:56:24'),
	(25, 'dolore', 'Aperiam rem nihil incidunt totam ut aspernatur iure libero.', 'Herman', 417, '2021-11-23 13:56:24', '2021-11-23 13:56:24'),
	(26, 'quia', 'Et commodi quidem delectus id molestiae fugit.', 'Zboncak', 300, '2021-11-23 13:56:24', '2021-11-23 13:56:24'),
	(27, 'sit', 'Sequi dicta assumenda vel fuga est non exercitationem.', 'Frami', 260, '2021-11-23 13:56:24', '2021-11-23 13:56:24'),
	(28, 'voluptatem', 'Reprehenderit suscipit nam labore sit velit.', 'Welch', 451, '2021-11-23 13:56:24', '2021-11-23 13:56:24'),
	(29, 'est', 'Sint voluptas nihil qui.', 'Mills', 108, '2021-11-23 13:56:24', '2021-11-23 13:56:24'),
	(30, 'doloribus', 'Temporibus excepturi delectus repudiandae accusantium nulla et sit.', 'Howe', 143, '2021-11-23 13:56:24', '2021-11-23 13:56:24'),
	(31, 'debitis', 'Neque consectetur consequatur maxime eius quia velit.', 'Corwin', 30, '2021-11-23 13:56:24', '2021-11-23 13:56:24'),
	(32, 'sed', 'Velit beatae voluptatem ex consequatur.', 'Lehner', 146, '2021-11-23 13:56:24', '2021-11-23 13:56:24'),
	(33, 'et', 'Deserunt rerum architecto assumenda a.', 'Botsford', 158, '2021-11-23 13:56:24', '2021-11-23 13:56:24'),
	(34, 're', 're', 're', 1233, '2021-11-23 14:19:05', '2021-11-23 14:19:05'),
	(35, 'de', 'de', 'de', 1111, '2021-11-25 13:29:26', '2021-11-25 13:29:26');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- Listage de la structure de la table blog. users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table blog.users : ~0 rows (environ)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
