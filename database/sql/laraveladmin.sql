/*
 Navicat Premium Dump SQL

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80040 (8.0.40)
 Source Host           : localhost:8889
 Source Schema         : laraveladmin

 Target Server Type    : MySQL
 Target Server Version : 80040 (8.0.40)
 File Encoding         : 65001

 Date: 06/07/2025 20:07:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activity_log
-- ----------------------------
DROP TABLE IF EXISTS `activity_log`;
CREATE TABLE `activity_log` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `log_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint unsigned DEFAULT NULL,
  `causer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint unsigned DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `batch_uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_field` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser_version` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platform` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subject` (`subject_type`,`subject_id`),
  KEY `causer` (`causer_type`,`causer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of activity_log
-- ----------------------------
BEGIN;
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `default_field`, `ip_address`, `browser`, `browser_version`, `device`, `platform`, `created_at`, `updated_at`) VALUES (1, 'roles', 'created', 'Modules\\Settings\\Models\\Role', 'created', 1, NULL, NULL, '{\"attributes\": {\"slug\": \"owner\", \"order\": null, \"active\": \"Y\", \"name_en\": \"owner\", \"name_kh\": \"owner\", \"created_by\": 0, \"deleted_by\": null, \"updated_by\": null, \"description\": null}}', NULL, 'owner - owner', '127.0.0.1', '0', '0', '0', '0', '2025-07-06 13:07:07', '2025-07-06 13:07:07');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `default_field`, `ip_address`, `browser`, `browser_version`, `device`, `platform`, `created_at`, `updated_at`) VALUES (2, 'users', 'created', 'Modules\\Settings\\Models\\User', 'created', 1, NULL, NULL, '{\"attributes\": {\"name\": \"owner\", \"email\": \"vanneth.dev@gmail.com\", \"order\": null, \"phone\": \"010296011\", \"active\": \"Y\", \"avatar\": \"no-avatar.png\", \"locale\": \"en\", \"role_id\": 1, \"password\": \"$2y$12$k1el/tVpBZL2kXN4GmRnoelxW3QNQ2ZhJuA2SUIWFtgvU1F5U9mqi\", \"username\": \"owner\"}}', NULL, 'owner', '127.0.0.1', '0', '0', '0', '0', '2025-07-06 13:07:07', '2025-07-06 13:07:07');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `default_field`, `ip_address`, `browser`, `browser_version`, `device`, `platform`, `created_at`, `updated_at`) VALUES (3, 'modules', 'created', 'Modules\\Settings\\Models\\Module', 'created', 1, NULL, NULL, '{\"attributes\": {\"icon\": \"icon-home\", \"slug\": \"dashboard\", \"order\": 100, \"active\": \"Y\", \"name_en\": \"Dashboard\", \"name_kh\": \"ផ្ទាំងគ្រប់គ្រង\", \"created_by\": 0, \"updated_by\": null}}', NULL, 'Dashboard - ផ្ទាំងគ្រប់គ្រង', '127.0.0.1', '0', '0', '0', '0', '2025-07-06 13:07:07', '2025-07-06 13:07:07');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `default_field`, `ip_address`, `browser`, `browser_version`, `device`, `platform`, `created_at`, `updated_at`) VALUES (4, 'pages', 'created', 'Modules\\Settings\\Models\\Page', 'created', 1, NULL, NULL, '{\"attributes\": {\"icon\": \"icon-home\", \"slug\": \"dashboard\", \"order\": 1, \"active\": \"Y\", \"name_en\": \"Dashboard\", \"name_kh\": \"ផ្ទាំងគ្រប់គ្រង\", \"module_id\": 1, \"created_by\": 0, \"updated_by\": null}}', NULL, 'Dashboard - ផ្ទាំងគ្រប់គ្រង', '127.0.0.1', '0', '0', '0', '0', '2025-07-06 13:07:07', '2025-07-06 13:07:07');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `default_field`, `ip_address`, `browser`, `browser_version`, `device`, `platform`, `created_at`, `updated_at`) VALUES (5, 'modules', 'created', 'Modules\\Settings\\Models\\Module', 'created', 2, NULL, NULL, '{\"attributes\": {\"icon\": \"fas fa-cogs\", \"slug\": \"settings\", \"order\": 1, \"active\": \"Y\", \"name_en\": \"Settings\", \"name_kh\": \"ការកំណត់\", \"created_by\": 0, \"updated_by\": null}}', NULL, 'Settings - ការកំណត់', '127.0.0.1', '0', '0', '0', '0', '2025-07-06 13:07:07', '2025-07-06 13:07:07');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `default_field`, `ip_address`, `browser`, `browser_version`, `device`, `platform`, `created_at`, `updated_at`) VALUES (6, 'pages', 'created', 'Modules\\Settings\\Models\\Page', 'created', 2, NULL, NULL, '{\"attributes\": {\"icon\": \"fas fa-cogs\", \"slug\": \"module\", \"order\": 1, \"active\": \"Y\", \"name_en\": \"Modules\", \"name_kh\": \"កំណត់ម៉ូដ្យួល\", \"module_id\": 2, \"created_by\": 0, \"updated_by\": null}}', NULL, 'Modules - កំណត់ម៉ូដ្យួល', '127.0.0.1', '0', '0', '0', '0', '2025-07-06 13:07:07', '2025-07-06 13:07:07');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `default_field`, `ip_address`, `browser`, `browser_version`, `device`, `platform`, `created_at`, `updated_at`) VALUES (7, 'pages', 'created', 'Modules\\Settings\\Models\\Page', 'created', 3, NULL, NULL, '{\"attributes\": {\"icon\": \"fas fa-file\", \"slug\": \"page\", \"order\": 2, \"active\": \"Y\", \"name_en\": \"Pages\", \"name_kh\": \"កំណត់ទំព័រ\", \"module_id\": 2, \"created_by\": 0, \"updated_by\": null}}', NULL, 'Pages - កំណត់ទំព័រ', '127.0.0.1', '0', '0', '0', '0', '2025-07-06 13:07:07', '2025-07-06 13:07:07');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `default_field`, `ip_address`, `browser`, `browser_version`, `device`, `platform`, `created_at`, `updated_at`) VALUES (8, 'pages', 'created', 'Modules\\Settings\\Models\\Page', 'created', 4, NULL, NULL, '{\"attributes\": {\"icon\": \"fas fa-users-cog\", \"slug\": \"role\", \"order\": 3, \"active\": \"Y\", \"name_en\": \"Roles\", \"name_kh\": \"ក្រុមអ្នកប្រើប្រាស់\", \"module_id\": 2, \"created_by\": 0, \"updated_by\": null}}', NULL, 'Roles - ក្រុមអ្នកប្រើប្រាស់', '127.0.0.1', '0', '0', '0', '0', '2025-07-06 13:07:07', '2025-07-06 13:07:07');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `default_field`, `ip_address`, `browser`, `browser_version`, `device`, `platform`, `created_at`, `updated_at`) VALUES (9, 'pages', 'created', 'Modules\\Settings\\Models\\Page', 'created', 5, NULL, NULL, '{\"attributes\": {\"icon\": \"fas fa-users\", \"slug\": \"user\", \"order\": 4, \"active\": \"Y\", \"name_en\": \"Users\", \"name_kh\": \"អ្នកប្រើប្រាស់\", \"module_id\": 2, \"created_by\": 0, \"updated_by\": null}}', NULL, 'Users - អ្នកប្រើប្រាស់', '127.0.0.1', '0', '0', '0', '0', '2025-07-06 13:07:07', '2025-07-06 13:07:07');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `default_field`, `ip_address`, `browser`, `browser_version`, `device`, `platform`, `created_at`, `updated_at`) VALUES (10, 'pages', 'created', 'Modules\\Settings\\Models\\Page', 'created', 6, NULL, NULL, '{\"attributes\": {\"icon\": \"fas fa-language\", \"slug\": \"locale\", \"order\": 5, \"active\": \"Y\", \"name_en\": \"Localization\", \"name_kh\": \"កំណត់ភាសា\", \"module_id\": 2, \"created_by\": 0, \"updated_by\": null}}', NULL, 'Localization - កំណត់ភាសា', '127.0.0.1', '0', '0', '0', '0', '2025-07-06 13:07:07', '2025-07-06 13:07:07');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `default_field`, `ip_address`, `browser`, `browser_version`, `device`, `platform`, `created_at`, `updated_at`) VALUES (11, 'pages', 'created', 'Modules\\Settings\\Models\\Page', 'created', 7, NULL, NULL, '{\"attributes\": {\"icon\": \"fas fa-globe\", \"slug\": \"translation\", \"order\": 6, \"active\": \"Y\", \"name_en\": \"Translations\", \"name_kh\": \"ការបកប្រែ\", \"module_id\": 2, \"created_by\": 0, \"updated_by\": null}}', NULL, 'Translations - ការបកប្រែ', '127.0.0.1', '0', '0', '0', '0', '2025-07-06 13:07:07', '2025-07-06 13:07:07');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `default_field`, `ip_address`, `browser`, `browser_version`, `device`, `platform`, `created_at`, `updated_at`) VALUES (12, 'pages', 'created', 'Modules\\Settings\\Models\\Page', 'created', 8, NULL, NULL, '{\"attributes\": {\"icon\": \"fas fa-cogs\", \"slug\": \"configuration\", \"order\": 7, \"active\": \"Y\", \"name_en\": \"Configuration\", \"name_kh\": \"ការកំណត់រចនាសម្ព័ន្ធ\", \"module_id\": 2, \"created_by\": 0, \"updated_by\": null}}', NULL, 'Configuration - ការកំណត់រចនាសម្ព័ន្ធ', '127.0.0.1', '0', '0', '0', '0', '2025-07-06 13:07:07', '2025-07-06 13:07:07');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `default_field`, `ip_address`, `browser`, `browser_version`, `device`, `platform`, `created_at`, `updated_at`) VALUES (13, 'pages', 'created', 'Modules\\Settings\\Models\\Page', 'created', 9, NULL, NULL, '{\"attributes\": {\"icon\": \"fas fa-database\", \"slug\": \"backup\", \"order\": 8, \"active\": \"N\", \"name_en\": \"Backup\", \"name_kh\": \"បម្រុងទុក\", \"module_id\": 2, \"created_by\": 0, \"updated_by\": null}}', NULL, 'Backup - បម្រុងទុក', '127.0.0.1', '0', '0', '0', '0', '2025-07-06 13:07:07', '2025-07-06 13:07:07');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `default_field`, `ip_address`, `browser`, `browser_version`, `device`, `platform`, `created_at`, `updated_at`) VALUES (14, 'pages', 'created', 'Modules\\Settings\\Models\\Page', 'created', 10, NULL, NULL, '{\"attributes\": {\"icon\": \"fas fa-clipboard-list\", \"slug\": \"system-user-log\", \"order\": 9, \"active\": \"Y\", \"name_en\": \"Activity Log\", \"name_kh\": \"តាមដានការប្រើប្រាស់\", \"module_id\": 2, \"created_by\": 0, \"updated_by\": null}}', NULL, 'Activity Log - តាមដានការប្រើប្រាស់', '127.0.0.1', '0', '0', '0', '0', '2025-07-06 13:07:07', '2025-07-06 13:07:07');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `default_field`, `ip_address`, `browser`, `browser_version`, `device`, `platform`, `created_at`, `updated_at`) VALUES (15, 'modules', 'created', 'Modules\\Settings\\Models\\Module', 'created', 3, NULL, NULL, '{\"attributes\": {\"icon\": \"fab fa-telegram\", \"slug\": \"telegram\", \"order\": 3, \"active\": \"N\", \"name_en\": \"Telegram\", \"name_kh\": \"Telegram\", \"created_by\": 0, \"updated_by\": null}}', NULL, 'Telegram - Telegram', '127.0.0.1', '0', '0', '0', '0', '2025-07-06 13:07:07', '2025-07-06 13:07:07');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `default_field`, `ip_address`, `browser`, `browser_version`, `device`, `platform`, `created_at`, `updated_at`) VALUES (16, 'pages', 'created', 'Modules\\Settings\\Models\\Page', 'created', 11, NULL, NULL, '{\"attributes\": {\"icon\": \"fab fa-telegram\", \"slug\": \"telegram\", \"order\": 1, \"active\": \"N\", \"name_en\": \"Telegram\", \"name_kh\": \"Telegram\", \"module_id\": 3, \"created_by\": 0, \"updated_by\": null}}', NULL, 'Telegram - Telegram', '127.0.0.1', '0', '0', '0', '0', '2025-07-06 13:07:07', '2025-07-06 13:07:07');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `default_field`, `ip_address`, `browser`, `browser_version`, `device`, `platform`, `created_at`, `updated_at`) VALUES (17, 'modules', 'created', 'Modules\\Settings\\Models\\Module', 'created', 4, NULL, NULL, '{\"attributes\": {\"icon\": \"fas fa-cogs\", \"slug\": \"api-control\", \"order\": 2, \"active\": \"Y\", \"name_en\": \"API Control\", \"name_kh\": \"API Control\", \"created_by\": 0, \"updated_by\": null}}', NULL, 'API Control - API Control', '127.0.0.1', '0', '0', '0', '0', '2025-07-06 13:07:07', '2025-07-06 13:07:07');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `default_field`, `ip_address`, `browser`, `browser_version`, `device`, `platform`, `created_at`, `updated_at`) VALUES (18, 'pages', 'created', 'Modules\\Settings\\Models\\Page', 'created', 12, NULL, NULL, '{\"attributes\": {\"icon\": \"fas fa-user-friends\", \"slug\": \"api-role\", \"order\": 2, \"active\": \"Y\", \"name_en\": \"API Role\", \"name_kh\": \"API Role\", \"module_id\": 4, \"created_by\": 0, \"updated_by\": null}}', NULL, 'API Role - API Role', '127.0.0.1', '0', '0', '0', '0', '2025-07-06 13:07:07', '2025-07-06 13:07:07');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `default_field`, `ip_address`, `browser`, `browser_version`, `device`, `platform`, `created_at`, `updated_at`) VALUES (19, 'pages', 'created', 'Modules\\Settings\\Models\\Page', 'created', 13, NULL, NULL, '{\"attributes\": {\"icon\": \"fas fa-user\", \"slug\": \"clients\", \"order\": 1, \"active\": \"Y\", \"name_en\": \"Clients\", \"name_kh\": \"Clients\", \"module_id\": 4, \"created_by\": 0, \"updated_by\": null}}', NULL, 'Clients - Clients', '127.0.0.1', '0', '0', '0', '0', '2025-07-06 13:07:07', '2025-07-06 13:07:07');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `default_field`, `ip_address`, `browser`, `browser_version`, `device`, `platform`, `created_at`, `updated_at`) VALUES (20, 'pages', 'created', 'Modules\\Settings\\Models\\Page', 'created', 14, NULL, NULL, '{\"attributes\": {\"icon\": \"fas fa-link\", \"slug\": \"api-url\", \"order\": 3, \"active\": \"Y\", \"name_en\": \"API URL\", \"name_kh\": \"API URL\", \"module_id\": 4, \"created_by\": 0, \"updated_by\": null}}', NULL, 'API URL - API URL', '127.0.0.1', '0', '0', '0', '0', '2025-07-06 13:07:07', '2025-07-06 13:07:07');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `default_field`, `ip_address`, `browser`, `browser_version`, `device`, `platform`, `created_at`, `updated_at`) VALUES (21, 'api_role', 'created', 'Modules\\APIControl\\Models\\APIRole', 'created', 1, NULL, NULL, '{\"attributes\": {\"slug\": \"admin\", \"order\": 1, \"active\": \"Y\", \"name_en\": \"Admin\", \"name_kh\": \"Admin\", \"description\": \"Admin Role\"}}', NULL, 'admin', '127.0.0.1', '0', '0', '0', '0', '2025-07-06 13:07:07', '2025-07-06 13:07:07');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `default_field`, `ip_address`, `browser`, `browser_version`, `device`, `platform`, `created_at`, `updated_at`) VALUES (22, 'clients_api', 'created', 'Modules\\APIControl\\Models\\APIClients', 'created', 1, NULL, NULL, '{\"attributes\": {\"name\": \"React App Client\", \"active\": \"Y\", \"client_key\": \"yvQVeqSaCgikO79GFogAodqTJMFgOh8WCeWRfNNkm5WTqjGXgm6FlLTyyw5kq34s\", \"deleted_at\": null, \"secret_key\": \"F62UH3yrI5M4eboWgj774OKjDSaTAW33HjzWh2g9lZDikwwF39sHO6VsTtbd8NTI\", \"api_role_id\": 1}}', NULL, 'React App Client', '127.0.0.1', '0', '0', '0', '0', '2025-07-06 13:07:07', '2025-07-06 13:07:07');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `default_field`, `ip_address`, `browser`, `browser_version`, `device`, `platform`, `created_at`, `updated_at`) VALUES (23, 'api_urls', 'created', 'Modules\\APIControl\\Models\\APIUrl', 'created', 1, NULL, NULL, '{\"attributes\": {\"url\": \"api/v1/control\", \"order\": null, \"active\": \"Y\"}}', NULL, 'api/v1/control', '127.0.0.1', '0', '0', '0', '0', '2025-07-06 13:07:07', '2025-07-06 13:07:07');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `default_field`, `ip_address`, `browser`, `browser_version`, `device`, `platform`, `created_at`, `updated_at`) VALUES (24, 'api_urls', 'created', 'Modules\\APIControl\\Models\\APIUrl', 'created', 2, NULL, NULL, '{\"attributes\": {\"url\": \"api/v1/get-comments\", \"order\": null, \"active\": \"Y\"}}', NULL, 'api/v1/get-comments', '127.0.0.1', '0', '0', '0', '0', '2025-07-06 13:07:07', '2025-07-06 13:07:07');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `default_field`, `ip_address`, `browser`, `browser_version`, `device`, `platform`, `created_at`, `updated_at`) VALUES (25, 'api_urls', 'created', 'Modules\\APIControl\\Models\\APIUrl', 'created', 3, NULL, NULL, '{\"attributes\": {\"url\": \"api/v1/upload-image\", \"order\": null, \"active\": \"Y\"}}', NULL, 'api/v1/upload-image', '127.0.0.1', '0', '0', '0', '0', '2025-07-06 13:07:07', '2025-07-06 13:07:07');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `default_field`, `ip_address`, `browser`, `browser_version`, `device`, `platform`, `created_at`, `updated_at`) VALUES (26, 'api_urls', 'created', 'Modules\\APIControl\\Models\\APIUrl', 'created', 4, NULL, NULL, '{\"attributes\": {\"url\": \"api/v1/store-comment\", \"order\": null, \"active\": \"Y\"}}', NULL, 'api/v1/store-comment', '127.0.0.1', '0', '0', '0', '0', '2025-07-06 13:07:07', '2025-07-06 13:07:07');
COMMIT;

-- ----------------------------
-- Table structure for api_role
-- ----------------------------
DROP TABLE IF EXISTS `api_role`;
CREATE TABLE `api_role` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name_kh` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint DEFAULT NULL,
  `active` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_role_name_kh_unique` (`name_kh`),
  UNIQUE KEY `api_role_name_en_unique` (`name_en`),
  UNIQUE KEY `api_role_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of api_role
-- ----------------------------
BEGIN;
INSERT INTO `api_role` (`id`, `name_kh`, `name_en`, `slug`, `description`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, 'Admin', 'Admin', 'admin', 'Admin Role', 1, 'Y', 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
COMMIT;

-- ----------------------------
-- Table structure for api_urls
-- ----------------------------
DROP TABLE IF EXISTS `api_urls`;
CREATE TABLE `api_urls` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint DEFAULT NULL,
  `active` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of api_urls
-- ----------------------------
BEGIN;
INSERT INTO `api_urls` (`id`, `url`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, 'api/v1/control', NULL, 'Y', 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
INSERT INTO `api_urls` (`id`, `url`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (2, 'api/v1/get-comments', NULL, 'Y', 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
INSERT INTO `api_urls` (`id`, `url`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (3, 'api/v1/upload-image', NULL, 'Y', 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
INSERT INTO `api_urls` (`id`, `url`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (4, 'api/v1/store-comment', NULL, 'Y', 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
COMMIT;

-- ----------------------------
-- Table structure for backups
-- ----------------------------
DROP TABLE IF EXISTS `backups`;
CREATE TABLE `backups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `file_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of backups
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for cache
-- ----------------------------
DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cache
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for cache_locks
-- ----------------------------
DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cache_locks
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for client_api_limits_access
-- ----------------------------
DROP TABLE IF EXISTS `client_api_limits_access`;
CREATE TABLE `client_api_limits_access` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `api_role_id` bigint unsigned DEFAULT NULL,
  `api_url_id` bigint unsigned NOT NULL,
  `limit` int DEFAULT NULL,
  `limit_reset_unit` enum('seconds','minutes','hours','days') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'seconds',
  `limit_reset_value` int NOT NULL DEFAULT '1',
  `active` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_api_limits_access_api_role_id_index` (`api_role_id`),
  KEY `client_api_limits_access_api_url_id_index` (`api_url_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of client_api_limits_access
-- ----------------------------
BEGIN;
INSERT INTO `client_api_limits_access` (`id`, `api_role_id`, `api_url_id`, `limit`, `limit_reset_unit`, `limit_reset_value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, 1, 4, 5, 'minutes', 1, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `client_api_limits_access` (`id`, `api_role_id`, `api_url_id`, `limit`, `limit_reset_unit`, `limit_reset_value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (2, 1, 2, 1, 'seconds', 1, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for client_api_url_access
-- ----------------------------
DROP TABLE IF EXISTS `client_api_url_access`;
CREATE TABLE `client_api_url_access` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `api_role_id` bigint unsigned DEFAULT NULL,
  `api_url_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_api_url_access_api_role_id_index` (`api_role_id`),
  KEY `client_api_url_access_api_url_id_index` (`api_url_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of client_api_url_access
-- ----------------------------
BEGIN;
INSERT INTO `client_api_url_access` (`id`, `api_role_id`, `api_url_id`, `created_at`, `updated_at`) VALUES (1, 1, 1, '2025-07-06 13:07:07', '2025-07-06 13:07:07');
INSERT INTO `client_api_url_access` (`id`, `api_role_id`, `api_url_id`, `created_at`, `updated_at`) VALUES (2, 1, 2, '2025-07-06 13:07:07', '2025-07-06 13:07:07');
INSERT INTO `client_api_url_access` (`id`, `api_role_id`, `api_url_id`, `created_at`, `updated_at`) VALUES (3, 1, 3, '2025-07-06 13:07:07', '2025-07-06 13:07:07');
INSERT INTO `client_api_url_access` (`id`, `api_role_id`, `api_url_id`, `created_at`, `updated_at`) VALUES (4, 1, 4, '2025-07-06 13:07:07', '2025-07-06 13:07:07');
COMMIT;

-- ----------------------------
-- Table structure for clients_api
-- ----------------------------
DROP TABLE IF EXISTS `clients_api`;
CREATE TABLE `clients_api` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `api_role_id` bigint unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `clients_api_client_key_unique` (`client_key`),
  KEY `clients_api_api_role_id_index` (`api_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of clients_api
-- ----------------------------
BEGIN;
INSERT INTO `clients_api` (`id`, `api_role_id`, `name`, `client_key`, `secret_key`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, 1, 'React App Client', 'yvQVeqSaCgikO79GFogAodqTJMFgOh8WCeWRfNNkm5WTqjGXgm6FlLTyyw5kq34s', 'F62UH3yrI5M4eboWgj774OKjDSaTAW33HjzWh2g9lZDikwwF39sHO6VsTtbd8NTI', 'Y', 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
COMMIT;

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint DEFAULT NULL,
  `active` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of comments
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for configurations
-- ----------------------------
DROP TABLE IF EXISTS `configurations`;
CREATE TABLE `configurations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datatype` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'string',
  `is_json` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `order` tinyint DEFAULT NULL,
  `active` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `configurations_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of configurations
-- ----------------------------
BEGIN;
INSERT INTO `configurations` (`id`, `key`, `value`, `datatype`, `is_json`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, 'datatable_card', 'table text-nowrap datatables no-footer', 'string', 'N', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `configurations` (`id`, `key`, `value`, `datatype`, `is_json`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (2, 'date_format', 'd-M-Y', 'string', 'N', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `configurations` (`id`, `key`, `value`, `datatype`, `is_json`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (3, 'time_format', 'H:i A', 'string', 'N', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `configurations` (`id`, `key`, `value`, `datatype`, `is_json`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (4, 'datetime_format', 'd-M-Y H:i A', 'string', 'N', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `configurations` (`id`, `key`, `value`, `datatype`, `is_json`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (5, 'datetime_format_24h', 'd-M-Y H:i:s', 'string', 'N', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `configurations` (`id`, `key`, `value`, `datatype`, `is_json`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (6, 'time_start', '00:00:00', 'string', 'N', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `configurations` (`id`, `key`, `value`, `datatype`, `is_json`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (7, 'time_end', '23:59:59', 'string', 'N', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `configurations` (`id`, `key`, `value`, `datatype`, `is_json`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (8, 'disk_name', 'public_upload', 'string', 'N', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `configurations` (`id`, `key`, `value`, `datatype`, `is_json`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (9, 'upload_path', 'uploads/', 'string', 'N', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `configurations` (`id`, `key`, `value`, `datatype`, `is_json`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (10, 'upload_lang_path', '/lang', 'string', 'N', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `configurations` (`id`, `key`, `value`, `datatype`, `is_json`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (11, 'image_default_value', 'no-avatar.png', 'string', 'N', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `configurations` (`id`, `key`, `value`, `datatype`, `is_json`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (12, 'form_group_class', 'form-group row align-items-center', 'string', 'N', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `configurations` (`id`, `key`, `value`, `datatype`, `is_json`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (13, 'form_label_class', 'col-sm-2 col-form-label text-end', 'string', 'N', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `configurations` (`id`, `key`, `value`, `datatype`, `is_json`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (14, 'form_div_input_class', 'col-sm-10', 'string', 'N', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `configurations` (`id`, `key`, `value`, `datatype`, `is_json`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (15, 'form_input_class', 'form-control', 'string', 'N', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `configurations` (`id`, `key`, `value`, `datatype`, `is_json`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (16, 'button_search_class', 'btn btn-primary', 'string', 'N', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `configurations` (`id`, `key`, `value`, `datatype`, `is_json`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (17, 'button_back_class', 'btn btn-danger', 'string', 'N', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `configurations` (`id`, `key`, `value`, `datatype`, `is_json`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (18, 'button_save_class', 'btn btn-primary', 'string', 'N', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `configurations` (`id`, `key`, `value`, `datatype`, `is_json`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (19, 'button_save_new_class', 'btn btn-info', 'string', 'N', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `configurations` (`id`, `key`, `value`, `datatype`, `is_json`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (20, 'icon_save', 'fas fa-save', 'string', 'N', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `configurations` (`id`, `key`, `value`, `datatype`, `is_json`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (21, 'icon_save_new', 'fas fa-save', 'string', 'N', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `configurations` (`id`, `key`, `value`, `datatype`, `is_json`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (22, 'icon_back', 'fas fa-arrow-left', 'string', 'N', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `configurations` (`id`, `key`, `value`, `datatype`, `is_json`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (23, 'badge_count', 'badge badge-count', 'string', 'N', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `configurations` (`id`, `key`, `value`, `datatype`, `is_json`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (24, 'badge_success', 'badge badge-success', 'string', 'N', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `configurations` (`id`, `key`, `value`, `datatype`, `is_json`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (25, 'badge_danger', 'badge badge-danger', 'string', 'N', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `configurations` (`id`, `key`, `value`, `datatype`, `is_json`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (26, 'badge_warning', 'badge badge-warning', 'string', 'N', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `configurations` (`id`, `key`, `value`, `datatype`, `is_json`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (27, 'badge_info', 'badge badge-info', 'string', 'N', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `configurations` (`id`, `key`, `value`, `datatype`, `is_json`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (28, 'badge_primary', 'badge badge-primary', 'string', 'N', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `configurations` (`id`, `key`, `value`, `datatype`, `is_json`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (29, 'badge_default', 'badge badge-black', 'string', 'N', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `configurations` (`id`, `key`, `value`, `datatype`, `is_json`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (30, 'upload_max_size', '5242880', 'number', 'N', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `configurations` (`id`, `key`, `value`, `datatype`, `is_json`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (31, 'upload_width', '200', 'number', 'N', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `configurations` (`id`, `key`, `value`, `datatype`, `is_json`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (32, 'upload_height', '200', 'number', 'N', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `configurations` (`id`, `key`, `value`, `datatype`, `is_json`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (33, 'lang_width', '256', 'number', 'N', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `configurations` (`id`, `key`, `value`, `datatype`, `is_json`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (34, 'lang_height', '164', 'number', 'N', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `configurations` (`id`, `key`, `value`, `datatype`, `is_json`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (35, 'lang_quality', '100', 'number', 'N', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `configurations` (`id`, `key`, `value`, `datatype`, `is_json`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (36, 'avatar_width', '1024', 'number', 'N', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `configurations` (`id`, `key`, `value`, `datatype`, `is_json`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (37, 'avatar_height', '1024', 'number', 'N', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `configurations` (`id`, `key`, `value`, `datatype`, `is_json`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (38, 'avatar_quality', '100', 'number', 'N', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for job_batches
-- ----------------------------
DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE `job_batches` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of job_batches
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of jobs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for locales
-- ----------------------------
DROP TABLE IF EXISTS `locales`;
CREATE TABLE `locales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `translations` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `locales_locale_unique` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of locales
-- ----------------------------
BEGIN;
INSERT INTO `locales` (`id`, `locale`, `logo`, `translations`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, 'en', 'en.png', 'en', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `locales` (`id`, `locale`, `logo`, `translations`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (2, 'kh', 'kh.png', 'kh', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (1, '0001_01_01_000000_create_users_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (2, '0001_01_01_0000010_create_pages_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (3, '0001_01_01_0000011_create_page_actions_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (4, '0001_01_01_0000012_create_locale_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (5, '0001_01_01_0000013_create_configure_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (6, '0001_01_01_000001_create_cache_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (7, '0001_01_01_000002_create_jobs_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (8, '0001_01_01_000003_create_roles_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (9, '0001_01_01_000004_create_user_role_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (10, '0001_01_01_000005_create_activity_log_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (11, '0001_01_01_000006_add_event_column_to_activity_log_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (12, '0001_01_01_000007_add_batch_uuid_column_to_activity_log_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (13, '0001_01_01_000008_create_role_permissions_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (14, '0001_01_01_000009_create_modules_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (15, '2024_12_26_121604_create_backups_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (16, '2025_02_28_210759_create_clients_api_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (17, '2025_02_28_210859_create_api_url_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (18, '2025_02_28_211009_create_client_api_limits_access_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (19, '2025_02_28_211009_create_client_api_url_access_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (20, '2025_03_02_130447_create_comments_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (21, '2025_03_03_181356_create_api_role_table', 1);
COMMIT;

-- ----------------------------
-- Table structure for modules
-- ----------------------------
DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_kh` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'far fa-folder',
  `active` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `modules_name_en_unique` (`name_en`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of modules
-- ----------------------------
BEGIN;
INSERT INTO `modules` (`id`, `name_en`, `name_kh`, `slug`, `order`, `icon`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, 'Dashboard', 'ផ្ទាំងគ្រប់គ្រង', 'dashboard', 100, 'icon-home', 'Y', 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
INSERT INTO `modules` (`id`, `name_en`, `name_kh`, `slug`, `order`, `icon`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (2, 'Settings', 'ការកំណត់', 'settings', 1, 'fas fa-cogs', 'Y', 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
INSERT INTO `modules` (`id`, `name_en`, `name_kh`, `slug`, `order`, `icon`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (3, 'Telegram', 'Telegram', 'telegram', 3, 'fab fa-telegram', 'N', 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
INSERT INTO `modules` (`id`, `name_en`, `name_kh`, `slug`, `order`, `icon`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (4, 'API Control', 'API Control', 'api-control', 2, 'fas fa-cogs', 'Y', 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
COMMIT;

-- ----------------------------
-- Table structure for page_actions
-- ----------------------------
DROP TABLE IF EXISTS `page_actions`;
CREATE TABLE `page_actions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `page_id` bigint unsigned NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_kh` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'far fa-folder',
  `order` tinyint DEFAULT NULL,
  `parent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `is_param` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `params` json DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `page_actions_route_name_unique` (`route_name`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of page_actions
-- ----------------------------
BEGIN;
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, 1, 'Dashboard', 'ផ្ទាំងគ្រប់គ្រង', 'dashboard.index', 'index', NULL, 'icon-home', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (2, 2, 'Module', 'ម៉ូដ្យួល', 'settings.module.index', 'index', NULL, 'fas fa-cogs', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (3, 2, 'Create', 'បង្កើត', 'settings.module.create', 'create', 'top', 'fas fa-plus-circle', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (4, 2, 'Edit', 'កែប្រែ', 'settings.module.edit', 'edit', 'action', 'fas fa-edit', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (5, 2, 'Generate', 'បង្កើតថត', 'settings.module.generate', 'generate', 'action', 'fas fa-plus-circle', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (6, 2, 'Delete', 'លុប', 'settings.module.destroy', 'destroy', 'action', 'fas fa-trash', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (7, 2, 'Restore', 'ស្តារ', 'settings.module.restore', 'restore', 'action', 'fas fa-undo', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (8, 2, 'Export', 'នាំចេញ', 'settings.module.export', 'exported', 'other', 'fas fa-download', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (9, 3, 'Pages', 'ទំព័រ', 'settings.page.index', 'index', NULL, 'fas fa-file', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (10, 3, 'Create', 'បង្កើត', 'settings.page.create', 'create', 'top', 'fas fa-plus-circle', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (11, 3, 'Edit', 'កែប្រែ', 'settings.page.edit', 'edit', 'action', 'fas fa-edit', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (12, 3, 'Delete', 'លុប', 'settings.page.destroy', 'destroy', 'action', 'fas fa-trash', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (13, 3, 'Restore', 'ស្តារ', 'settings.page.restore', 'restore', 'action', 'fas fa-undo', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (14, 3, 'Export', 'នាំចេញ', 'settings.page.export', 'exported', 'other', 'fas fa-download', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (15, 4, 'role', 'ក្រុមអ្នកប្រើប្រាស់', 'settings.role.index', 'index', NULL, 'fas fa-users-cog', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (16, 4, 'Create', 'បង្កើត', 'settings.role.create', 'create', 'top', 'fas fa-plus-circle', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (17, 4, 'Edit', 'កែប្រែ', 'settings.role.edit', 'edit', 'action', 'fas fa-edit', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (18, 4, 'Delete', 'លុប', 'settings.role.destroy', 'destroy', 'action', 'fas fa-trash', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (19, 4, 'Restore', 'ស្តារ', 'settings.role.restore', 'restore', 'action', 'fas fa-undo', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (20, 4, 'Export', 'នាំចេញ', 'settings.role.export', 'exported', 'other', 'fas fa-download', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (21, 5, 'User', 'អ្នកប្រើប្រាស់', 'settings.user.index', 'index', NULL, 'fas fa-users', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (22, 5, 'Create', 'បង្កើត', 'settings.user.create', 'create', 'top', 'fas fa-plus-circle', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (23, 5, 'Change Password', 'ផ្លាស់ប្តូពាក្យសម្ងាត់', 'settings.user.changePassword', 'changePassword', 'action', 'fas fa-user-lock', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (24, 5, 'Edit', 'កែប្រែ', 'settings.user.edit', 'edit', 'action', 'fas fa-edit', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (25, 5, 'Delete', 'លុប', 'settings.user.destroy', 'destroy', 'action', 'fas fa-trash', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (26, 5, 'Restore', 'ស្តារ', 'settings.user.restore', 'restore', 'action', 'fas fa-undo', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (27, 5, 'Export', 'នាំចេញ', 'settings.user.export', 'exported', 'other', 'fas fa-download', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (28, 6, 'Localization', 'កំណត់ភាសា', 'settings.locale.index', 'index', NULL, 'fas fa-language', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (29, 6, 'Create', 'បង្កើត', 'settings.locale.create', 'create', 'top', 'fas fa-plus-circle', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (30, 6, 'Edit', 'កែប្រែ', 'settings.locale.edit', 'edit', 'action', 'fas fa-edit', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (31, 6, 'Delete', 'លុប', 'settings.locale.destroy', 'destroy', 'action', 'fas fa-trash', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (32, 6, 'Restore', 'ស្តារ', 'settings.locale.restore', 'restore', 'action', 'fas fa-undo', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (33, 6, 'Export', 'នាំចេញ', 'settings.locale.export', 'exported', 'other', 'fas fa-download', NULL, NULL, 'N', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (34, 7, 'Translations', 'ការបកប្រែ', 'settings.translation.index', 'index', NULL, 'fas fa-globe', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (35, 7, 'Create', 'បង្កើត', 'settings.translation.create', 'create', 'top', 'fas fa-plus-circle', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (36, 7, 'Edit', 'កែប្រែ', 'settings.translation.edit', 'edit', 'action', 'fas fa-edit', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (37, 7, 'Delete', 'លុប', 'settings.translation.destroy', 'destroy', 'action', 'fas fa-trash', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (38, 7, 'Restore', 'ស្តារ', 'settings.translation.restore', 'restore', 'action', 'fas fa-undo', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (39, 7, 'Export', 'នាំចេញ', 'settings.translation.export', 'exported', 'other', 'fas fa-download', NULL, NULL, 'N', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (40, 7, 'Sync', 'ធ្វើបច្ចុប្បន្នភាព', 'settings.translation.sync', 'sync', 'other', 'fas fa-sync', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (41, 8, 'Configuration', 'ការកំណត់រចនាសម្ព័ន្ធ', 'settings.configuration.index', 'index', NULL, 'fas fa-cogs', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (42, 8, 'Create', 'បង្កើត', 'settings.configuration.create', 'create', 'top', 'fas fa-plus-circle', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (43, 8, 'Edit', 'កែប្រែ', 'settings.configuration.edit', 'edit', 'action', 'fas fa-edit', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (44, 8, 'Delete', 'លុប', 'settings.configuration.destroy', 'destroy', 'action', 'fas fa-trash', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (45, 8, 'Restore', 'ស្តារ', 'settings.configuration.restore', 'restore', 'action', 'fas fa-undo', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (46, 8, 'Export', 'នាំចេញ', 'settings.configuration.export', 'exported', 'other', 'fas fa-download', NULL, NULL, 'N', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (47, 8, 'Sync', 'ធ្វើបច្ចុប្បន្នភាព', 'settings.configuration.sync', 'sync', 'other', 'fas fa-sync', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (48, 9, 'Backups', 'បម្រុងទុក', 'settings.backup.index', 'index', NULL, 'fas fa-database', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (49, 9, 'Create', 'បង្កើត', 'settings.backup.create', 'create', 'top', 'fas fa-plus-circle', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (50, 9, 'Delete', 'លុប', 'settings.backup.destroy', 'destroy', 'action', 'fas fa-trash', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (51, 9, 'Download', 'ទាញយក', 'settings.backup.download', 'download', 'action', 'fas fa-download', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (52, 10, 'Activity Log', 'តាមដានអ្នកប្រើប្រាស់ប្រព័ន្ធ', 'settings.systemlog.index', 'index', NULL, 'fas fa-clipboard-list', NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (53, 11, 'telegram', 'telegram', 'telegram.index', 'index', NULL, 'fab fa-telegram', NULL, NULL, 'N', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (54, 12, 'API Role', 'API Role', 'api-control.api-role.index', 'index', NULL, 'fas fa-user-friends', NULL, NULL, 'Y', 'N', NULL, 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (55, 12, 'Create API Role', NULL, 'api-control.api-role.create', 'create', 'top', 'fas fa-plus-circle', NULL, NULL, 'Y', 'N', NULL, 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (56, 12, 'Edit API Role', NULL, 'api-control.api-role.edit', 'edit', 'action', 'fas fa-edit', NULL, NULL, 'Y', 'N', NULL, 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (57, 12, 'Delete API Role', NULL, 'api-control.api-role.destroy', 'destroy', 'action', 'fas fa-trash', NULL, NULL, 'Y', 'N', NULL, 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (58, 12, 'Restore', 'ស្តារ', 'api-control.api-role.restore', 'restore', 'action', 'fas fa-undo', NULL, NULL, 'Y', 'N', NULL, 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (59, 13, 'Clients', 'Clients', 'api-control.clients.index', 'index', NULL, 'fas fa-user', NULL, NULL, 'Y', 'N', NULL, 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (60, 13, 'Create Client', 'បង្កើតអតិថិជន', 'api-control.clients.create', 'create', 'top', 'fas fa-plus-circle', NULL, NULL, 'Y', 'N', NULL, 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (61, 13, 'Edit Client', 'កែប្រែអតិថិជន', 'api-control.clients.edit', 'edit', 'action', 'fas fa-edit', NULL, NULL, 'Y', 'N', NULL, 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (62, 13, 'Regenerate Key', 'បង្កើត key ថ្មី', 'api-control.clients.regenerate-key', 'regenerate_key', 'action', 'fas fa-sync-alt', NULL, NULL, 'Y', 'N', NULL, 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (63, 13, 'Limit Request', 'Limit Request', 'api-control.clients.limit-request', 'limit_request', 'action', 'fas fa-tachometer-alt', NULL, NULL, 'Y', 'N', NULL, 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (64, 13, 'Delete Client', 'លុបអតិថិជន', 'api-control.clients.destroy', 'destroy', 'action', 'fas fa-trash', NULL, NULL, 'Y', 'N', NULL, 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (65, 13, 'Restore', 'ស្តារ', 'api-control.clients.restore', 'restore', 'action', 'fas fa-undo', NULL, NULL, 'Y', 'N', NULL, 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (66, 14, 'API URL', 'API URL', 'api-control.api-url.index', 'index', NULL, 'fas fa-link', NULL, NULL, 'Y', 'N', NULL, 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (67, 14, 'Create URL', 'បង្កើត URL', 'api-control.api-url.create', 'create', 'top', 'fas fa-plus', NULL, NULL, 'Y', 'N', NULL, 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (68, 14, 'Edit URL', 'កែប្រែ URL', 'api-control.api-url.edit', 'edit', 'action', 'fas fa-edit', NULL, NULL, 'Y', 'N', NULL, 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (69, 14, 'Client Access', 'Client Access', 'api-control.api-url.access', 'show', 'action', 'far fa-eye', NULL, NULL, 'Y', 'N', NULL, 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (70, 14, 'Delete URL', 'លុប URL', 'api-control.api-url.destroy', 'destroy', 'action', 'fas fa-ban', NULL, NULL, 'Y', 'N', NULL, 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
INSERT INTO `page_actions` (`id`, `page_id`, `name_en`, `name_kh`, `route_name`, `type`, `position`, `icon`, `order`, `parent`, `active`, `is_param`, `params`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (71, 14, 'Restore', 'ស្តារ', 'api-control.api-url.restore', 'restore', 'action', 'fas fa-undo', NULL, NULL, 'Y', 'N', NULL, 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
COMMIT;

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `module_id` bigint unsigned DEFAULT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_kh` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'far fa-folder',
  `default_action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'index',
  `order` tinyint DEFAULT NULL,
  `active` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_name_en_unique` (`name_en`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pages
-- ----------------------------
BEGIN;
INSERT INTO `pages` (`id`, `module_id`, `name_en`, `name_kh`, `slug`, `icon`, `default_action`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, 1, 'Dashboard', 'ផ្ទាំងគ្រប់គ្រង', 'dashboard', 'icon-home', 'index', 1, 'Y', 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
INSERT INTO `pages` (`id`, `module_id`, `name_en`, `name_kh`, `slug`, `icon`, `default_action`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (2, 2, 'Modules', 'កំណត់ម៉ូដ្យួល', 'module', 'fas fa-cogs', 'index', 1, 'Y', 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
INSERT INTO `pages` (`id`, `module_id`, `name_en`, `name_kh`, `slug`, `icon`, `default_action`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (3, 2, 'Pages', 'កំណត់ទំព័រ', 'page', 'fas fa-file', 'index', 2, 'Y', 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
INSERT INTO `pages` (`id`, `module_id`, `name_en`, `name_kh`, `slug`, `icon`, `default_action`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (4, 2, 'Roles', 'ក្រុមអ្នកប្រើប្រាស់', 'role', 'fas fa-users-cog', 'index', 3, 'Y', 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
INSERT INTO `pages` (`id`, `module_id`, `name_en`, `name_kh`, `slug`, `icon`, `default_action`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (5, 2, 'Users', 'អ្នកប្រើប្រាស់', 'user', 'fas fa-users', 'index', 4, 'Y', 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
INSERT INTO `pages` (`id`, `module_id`, `name_en`, `name_kh`, `slug`, `icon`, `default_action`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (6, 2, 'Localization', 'កំណត់ភាសា', 'locale', 'fas fa-language', 'index', 5, 'Y', 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
INSERT INTO `pages` (`id`, `module_id`, `name_en`, `name_kh`, `slug`, `icon`, `default_action`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (7, 2, 'Translations', 'ការបកប្រែ', 'translation', 'fas fa-globe', 'index', 6, 'Y', 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
INSERT INTO `pages` (`id`, `module_id`, `name_en`, `name_kh`, `slug`, `icon`, `default_action`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (8, 2, 'Configuration', 'ការកំណត់រចនាសម្ព័ន្ធ', 'configuration', 'fas fa-cogs', 'index', 7, 'Y', 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
INSERT INTO `pages` (`id`, `module_id`, `name_en`, `name_kh`, `slug`, `icon`, `default_action`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (9, 2, 'Backup', 'បម្រុងទុក', 'backup', 'fas fa-database', 'index', 8, 'N', 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
INSERT INTO `pages` (`id`, `module_id`, `name_en`, `name_kh`, `slug`, `icon`, `default_action`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (10, 2, 'Activity Log', 'តាមដានការប្រើប្រាស់', 'system-user-log', 'fas fa-clipboard-list', 'index', 9, 'Y', 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
INSERT INTO `pages` (`id`, `module_id`, `name_en`, `name_kh`, `slug`, `icon`, `default_action`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (11, 3, 'Telegram', 'Telegram', 'telegram', 'fab fa-telegram', 'index', 1, 'N', 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
INSERT INTO `pages` (`id`, `module_id`, `name_en`, `name_kh`, `slug`, `icon`, `default_action`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (12, 4, 'API Role', 'API Role', 'api-role', 'fas fa-user-friends', 'index', 2, 'Y', 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
INSERT INTO `pages` (`id`, `module_id`, `name_en`, `name_kh`, `slug`, `icon`, `default_action`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (13, 4, 'Clients', 'Clients', 'clients', 'fas fa-user', 'index', 1, 'Y', 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
INSERT INTO `pages` (`id`, `module_id`, `name_en`, `name_kh`, `slug`, `icon`, `default_action`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (14, 4, 'API URL', 'API URL', 'api-url', 'fas fa-link', 'index', 3, 'Y', 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
COMMIT;

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_permissions`;
CREATE TABLE `role_permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint unsigned NOT NULL,
  `action_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of role_permissions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name_kh` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint DEFAULT NULL,
  `active` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_kh_unique` (`name_kh`),
  UNIQUE KEY `roles_name_en_unique` (`name_en`),
  UNIQUE KEY `roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
BEGIN;
INSERT INTO `roles` (`id`, `name_kh`, `name_en`, `slug`, `description`, `order`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, 'owner', 'owner', 'owner', NULL, NULL, 'Y', 0, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sessions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for translations
-- ----------------------------
DROP TABLE IF EXISTS `translations`;
CREATE TABLE `translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `locale_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `active` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_locale_key` (`locale_id`,`key`),
  KEY `translations_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of translations
-- ----------------------------
BEGIN;
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, 1, 'site_name', 'Dashboard', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (2, 1, 'en', 'English', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (3, 1, 'kh', 'Khmer', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (4, 1, 'action', 'Action', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (5, 1, 'created_at', 'Created At', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (6, 1, 'deleted_at', 'Deleted At', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (7, 1, 'email', 'Email', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (8, 1, 'name', 'Name', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (9, 1, 'no.', 'No.', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (10, 1, 'order', 'Order', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (11, 1, 'password', 'Password', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (12, 1, 'confirm_password', 'Confirm Password', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (13, 1, 'remember_me', 'Remember Me', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (14, 1, 'reset_password', 'Reset Password', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (15, 1, 'search', 'Search', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (16, 1, 'show', 'Show', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (17, 1, 'user', 'User', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (18, 1, 'username', 'Username', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (19, 1, 'yes', 'Yes', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (20, 1, 'name_en', 'Name (English)', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (21, 1, 'name_kh', 'Name (Khmer)', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (22, 1, 'soft_delete', 'Delete', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (23, 1, 'please_select', 'Please Select', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (24, 1, 'deleted', 'Deleted', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (25, 1, 'all_records', 'All Records', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (26, 1, 'active', 'Active', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (27, 1, 'active_yes', 'Yes', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (28, 1, 'active_no', 'No', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (29, 1, 'icon', 'Icon', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (30, 1, 'module', 'Module', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (31, 1, 'module_name_en', 'Module Name (English)', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (32, 1, 'module_name_kh', 'Module Name (Khmer)', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (33, 1, 'enter_', 'Enter ', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (34, 1, 'enter_icon', 'fas fa-folder', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (35, 1, 'table', 'Table', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (36, 1, 'page', 'Page', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (37, 1, 'page_name_en', 'Page Name (English)', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (38, 1, 'page_name_kh', 'Page Name (Khmer)', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (39, 1, 'action_list', 'តារាងសកម្មភាព', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (40, 1, 'action_name_en', 'Action Name (Latin)', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (41, 1, 'action_name_kh', 'Action Name (Khmer)', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (42, 1, 'action_route', 'Route Name', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (43, 1, 'action_type', 'Type', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (44, 1, 'action_position', 'Position', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (45, 1, 'action_icon', 'Icon', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (46, 1, 'new_action', 'New Action', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (47, 1, 'delete', 'Delete', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (48, 1, 'restore', 'Restore', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (49, 1, 'export', 'Export', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (50, 1, 'create', 'Create', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (51, 1, 'edit', 'Edit', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (52, 1, 'cancel', 'Cancel', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (53, 1, 'save', 'Save', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (54, 1, 'submit', 'Submit', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (55, 1, 'save-new', 'Save New', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (56, 1, 'save-close', 'Save Close', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (57, 1, 'close', 'Close', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (58, 1, 'show_log_detail', 'Show Log Detail', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (59, 1, 'role', 'Role', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (60, 1, 'role_name_en', 'Role Name (English)', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (61, 1, 'role_name_kh', 'Role Name (Khmer)', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (62, 1, 'slug', 'Slug', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (63, 1, 'full_name', 'Full Name', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (64, 1, 'phone', 'Phone', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (65, 1, 'translations', 'Translation', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (66, 1, 'key', 'Key', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (67, 1, 'value', 'Value', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (68, 1, 'value_en', 'Value (English)', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (69, 1, 'value_kh', 'Value (Khmer)', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (70, 1, 'attachment', 'Attachment', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (71, 1, 'attachment_image', 'Attachment Image', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (72, 1, 'attachment_preview', 'Attachment Preview', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (73, 1, 'client_api_name', 'Client API Name', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (74, 1, 'client_key', 'Client Key', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (75, 1, 'secret_key', 'Secret Key', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (76, 1, 'check_all_url', 'All URL', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (77, 1, 'api_role', 'API Role', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (78, 1, 'delete_success', 'Delete Success', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (79, 1, 'delete_success_message', 'Record has been deleted successfully!', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (80, 1, 'delete_error', 'Delete Error', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (81, 1, 'delete_error_message', 'Record can not be deleted!', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (82, 1, 'delete_error_dashboard_message', 'Dashboard can not be deleted!', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (83, 1, 'restore_success', 'Restore Success', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (84, 1, 'restore_success_message', 'Record has been restored successfully!', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (85, 1, 'restore_error', 'Restore Error', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (86, 1, 'restore_error_message', 'Record can not be restored!', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (87, 1, 'export_success', 'Export Success', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (88, 1, 'export_success_message', 'Record has been exported successfully!', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (89, 1, 'export_error', 'Export Error', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (90, 1, 'export_error_message', 'Record can not be exported!', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (91, 1, 'create_success', 'Create Success', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (92, 1, 'create_success_message', 'Record has been created successfully!', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (93, 1, 'create_error', 'Create Error', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (94, 1, 'create_error_message', 'Record can not be created!', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (95, 1, 'edit_success', 'Edit Success', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (96, 1, 'edit_success_message', 'Record has been edited successfully!', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (97, 1, 'edit_error', 'Edit Error', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (98, 1, 'edit_error_message', 'Record can not be edited!', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (99, 1, 'change_password_success', 'Change Password Success', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (100, 1, 'change_password_success_message', 'Password has been changed successfully!', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (101, 1, 'change_password_error', 'Change Password Error', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (102, 1, 'change_password_error_message', 'Password can not be changed!', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (103, 1, 'change_password_error_old', 'Old Password is incorrect!', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (104, 1, 'change_password_error_new', 'New Password is incorrect!', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (105, 1, 'sync_success', 'Sync Success', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (106, 1, 'sync_success_message', 'Record has been synced successfully!', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (107, 1, 'sync_error', 'Sync Error', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (108, 1, 'sync_error_message', 'Record can not be synced!', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (109, 1, 'no_role_access', 'You do not have permission to access this page.', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (110, 2, 'site_name', 'ផ្ទាំងគ្រប់គ្រង', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (111, 2, 'en', 'អង់គ្លេស', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (112, 2, 'kh', 'ភាសាខ្មែរ', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (113, 2, 'action', 'សកម្មភាព', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (114, 2, 'created_at', 'កាលបរិច្ឆេទបង្កើត', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (115, 2, 'deleted_at', 'កាលបរិច្ឆេទលុប', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (116, 2, 'email', 'អ៊ីមែល', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (117, 2, 'name', 'ឈ្មោះ', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (118, 2, 'no.', 'ល.រ', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (119, 2, 'order', 'លំដាប់', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (120, 2, 'password', 'ពាក្យសម្ងាត់', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (121, 2, 'confirm_password', 'បញ្ជាក់ពាក្យសម្ងាត់', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (122, 2, 'remember_me', 'ចងចាំងទៀត', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (123, 2, 'reset_password', 'កំណត់ពាក្យសម្ងាត់', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (124, 2, 'search', 'ស្វែងរក', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (125, 2, 'show', 'បង្ហាញ', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (126, 2, 'user', 'អ្នកប្រើប្រាស់', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (127, 2, 'username', 'ឈ្មោះអ្នកប្រើប្រាស់', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (128, 2, 'yes', 'បាទ/ចាស', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (129, 2, 'name_en', 'ឈ្មោះឡាតាំង', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (130, 2, 'name_kh', 'ឈ្មោះខ្មែរ', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (131, 2, 'soft_delete', 'លុប', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (132, 2, 'please_select', 'សូមជ្រើសរើស', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (133, 2, 'deleted', 'បានលុប', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (134, 2, 'all_records', 'កំណត់ត្រាទាំងអស់', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (135, 2, 'active', 'ដំណើរការ', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (136, 2, 'active_yes', 'បាទ/ចាស', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (137, 2, 'active_no', 'ទេ', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (138, 2, 'icon', 'រូបតំណាង', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (139, 2, 'module', 'ម៉ូឌុល', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (140, 2, 'module_name_en', 'ឈ្មោះម៉ូឌុល (អង់គ្លេស)', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (141, 2, 'module_name_kh', 'ឈ្មោះម៉ូឌុល (ភាសាខ្មែរ)', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (142, 2, 'attachment', 'ឯកសារភ្ជាប់', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (143, 2, 'attachment_image', 'ភ្ជាប់រូបភាព', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (144, 2, 'attachment_preview', 'រូបភាពចាស់', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (145, 2, 'enter_', 'បញ្ចូល', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (146, 2, 'enter_icon', 'fas fa-folder', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (147, 2, 'translations', 'ការបកប្រែ', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (148, 2, 'key', 'កូនសោ', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (149, 2, 'value', 'តម្លៃ', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (150, 2, 'value_en', 'តម្លៃ (អង់គ្លេស)', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (151, 2, 'value_kh', 'តម្លៃ (ភាសាខ្មែរ)', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (152, 2, 'table', 'ក្រាល', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (153, 2, 'page', 'ទំព័រ', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (154, 2, 'page_name_en', 'ឈ្មោះទំព័រឡាតាំង', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (155, 2, 'page_name_kh', 'ឈ្មោះទំព័រខ្មែរ', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (156, 2, 'action_list', 'តារាងសកម្មភាព', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (157, 2, 'action_name_en', 'ឈ្មោះសកម្មភាពឡាតាំង', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (158, 2, 'action_name_kh', 'ឈ្មោះសកម្មភាពខ្មែរ', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (159, 2, 'action_route', 'ឈ្មោះ Route', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (160, 2, 'action_type', 'ប្រភេទ', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (161, 2, 'action_position', 'តួនាទី', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (162, 2, 'action_icon', 'រូបតំណាង', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (163, 2, 'new_action', 'បង្កើតសកម្មភាព', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (164, 2, 'delete', 'លុប', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (165, 2, 'restore', 'ស្ដារការចងចាស់', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (166, 2, 'export', 'នាំចេញ', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (167, 2, 'create', 'បង្កើត', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (168, 2, 'edit', 'កែប្រែ', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (169, 2, 'cancel', 'បោះបង់', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (170, 2, 'save', 'រក្សាទុក', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (171, 2, 'submit', 'ដាក់ស្នើ', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (172, 2, 'save-new', 'រក្សាទុកនិងបង្កើតថ្មី', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (173, 2, 'save-close', 'រក្សាទុកបិទ', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (174, 2, 'close', 'បិទ', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (175, 2, 'show_log_detail', 'បង្ហាញសេចក្ដីលម្អិត', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (176, 2, 'role', 'តួនាទី', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (177, 2, 'role_name_en', 'ឈ្មោះតួនាទី (អង់គ្លេស)', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (178, 2, 'role_name_kh', 'ឈ្មោះតួនាទី (ភាសាខ្មែរ)', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (179, 2, 'slug', 'Slug', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (180, 2, 'full_name', 'ឈ្មោះពេញ', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (181, 2, 'phone', 'លេខទូរស័ព្ទ', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (182, 2, 'client_api_name', 'Client API Name', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (183, 2, 'client_key', 'Client Key', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (184, 2, 'secret_key', 'Secret Key', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (185, 2, 'check_all_url', 'All URL', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (186, 2, 'api_role', 'API Role', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (187, 2, 'delete_success', 'បានលុបចោល', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (188, 2, 'delete_success_message', 'ការលុបចោលទំព័រដោយជោគជ័យចង់ពីត្រូវបានទុកហើយយ៉ាង។', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (189, 2, 'delete_error', 'កំហុសលុបចោល', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (190, 2, 'delete_error_message', 'ការលុបចោលទំព័រមិនត្រូវបានទុកហើយយ៉ាង។', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (191, 2, 'delete_error_dashboard_message', 'ផ្ទៃការមិនអាចលុបចោលបានទេ!', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (192, 2, 'restore_success', 'បានស្ដារការចងចាស់', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (193, 2, 'restore_success_message', 'ការចងចាស់ទំព័រដោយជោគជ័យចង់ពីត្រូវបានទុកហើយយ៉ាង។', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (194, 2, 'restore_error', 'កំហុសចងចាស់', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (195, 2, 'restore_error_message', 'ការចងចាស់ទំព័រមិនត្រូវបានទុកហើយយ៉ាង។', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (196, 2, 'export_success', 'បាននាំចេញចោល', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (197, 2, 'export_success_message', 'ការនាំចេញចោលទំព័រដោយជោគជ័យចង់ពីត្រូវបានទុកហើយយ៉ាង។', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (198, 2, 'export_error', 'កំហុសនាំចេញចោល', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (199, 2, 'create_success', 'បានបង្កើតចោល', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (200, 2, 'create_success_message', 'ការបង្កើតចោលទំព័រដោយជោគជ័យចង់ពីត្រូវបានទុកហើយយ៉ាង។', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (201, 2, 'create_error', 'កំហុសបង្កើតចោល', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (202, 2, 'create_error_message', 'ការបង្កើតចោលទំព័រមិនត្រូវបានទុកហើយយ៉ាង។', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (203, 2, 'edit_success', 'បានកែប្រែចោល', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (204, 2, 'edit_success_message', 'ការកែប្រែចោលទំព័រដោយជោគជ័យចង់ពីត្រូវបានទុកហើយយ៉ាង។', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (205, 2, 'edit_error', 'កំហុសកែប្រែចោល', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (206, 2, 'edit_error_message', 'ការកែប្រែចោលទំព័រមិនត្រូវបានទុកហើយយ៉ាង។', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (207, 2, 'change_password_success', 'បានផ្លាស់ប្តូពាក្យសម្ងាត់ចោល', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (208, 2, 'change_password_success_message', 'ពាក្យសម្ងាត់ដោយជោគជ័យចង់ពីត្រូវបានទុកហើយយ៉ាង។', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (209, 2, 'change_password_error', 'កំហុសផ្លាស់ប្តូពាក្យសម្ងាត់', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (210, 2, 'change_password_error_message', 'ពាក្យសម្ងាត់មិនត្រូវបានទុកហើយយ៉ាង។', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (211, 2, 'change_password_error_old', 'ពាក្យសម្ងាត់ចាស់សម្ងាត់មិនត្រឹមត្រូវបានទុកហើយយ៉ាង។', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (212, 2, 'change_password_error_new', 'ពាក្យសម្ងាត់ចាស់សម្ងាត់មិនត្រឹមត្រូវបានទុកហើយយ៉ាង។', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (213, 2, 'sync_success', 'បានបង្កើតចោល', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (214, 2, 'sync_success_message', 'ការបង្កើតចោលទំព័រដោយជោគជ័យចង់ពីត្រូវបានទុកហើយយ៉ាង។', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (215, 2, 'sync_error', 'កំហុសបង្កើតចោល', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (216, 2, 'sync_error_message', 'ការបង្កើតចោលទំព័រមិនត្រូវបានទុកហើយយ៉ាង។', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `translations` (`id`, `locale_id`, `key`, `value`, `active`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (217, 2, 'no_role_access', 'អ្នកមិនមានសិទ្ធិចូលប្រើទំព័រនេះទេ។.', 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `user_permissions`;
CREATE TABLE `user_permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned DEFAULT NULL,
  `action_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_permissions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `role_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_role
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint DEFAULT NULL,
  `active` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no-avatar.png',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `last_activity` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` int unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` (`id`, `role_id`, `name`, `username`, `email`, `email_verified_at`, `password`, `phone`, `order`, `active`, `avatar`, `locale`, `last_activity`, `remember_token`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES (1, 1, 'owner', 'owner', 'vanneth.dev@gmail.com', NULL, '$2y$12$k1el/tVpBZL2kXN4GmRnoelxW3QNQ2ZhJuA2SUIWFtgvU1F5U9mqi', '010296011', NULL, 'Y', 'no-avatar.png', 'en', NULL, NULL, 0, NULL, NULL, NULL, '2025-07-06 13:07:07', '2025-07-06 13:07:07');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
