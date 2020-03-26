-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2020 at 08:31 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eloq`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2020-03-12 23:52:25', '2020-03-12 23:52:25'),
(2, NULL, 1, 'Category 2', 'category-2', '2020-03-12 23:52:25', '2020-03-12 23:52:25');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(57, 7, 'nama', 'text', 'Nama', 0, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'umur', 'text', 'Umur', 0, 1, 1, 1, 1, 1, '{}', 3),
(59, 7, 'jabatan', 'text', 'Jabatan', 0, 1, 1, 1, 1, 1, '{}', 4),
(60, 7, 'alamat', 'text', 'Alamat', 0, 1, 1, 1, 1, 1, '{}', 5),
(62, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(63, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(64, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(65, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(66, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 2),
(67, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(68, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(69, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 2),
(70, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(71, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(72, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 2),
(73, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(74, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(75, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 2),
(76, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(77, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(78, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 2),
(79, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(80, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(81, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 2),
(82, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(83, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(84, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 2),
(85, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(86, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(87, 18, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 2),
(88, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(89, 19, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(90, 19, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 2),
(91, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(92, 20, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(93, 20, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 2),
(94, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(95, 7, 'id_dokter', 'text', 'Id Dokter', 1, 0, 0, 0, 0, 0, '{}', 1),
(96, 7, 'telp', 'text', 'Telp', 0, 1, 1, 1, 1, 1, '{}', 6),
(97, 7, 'jenis_kelamin', 'text', 'Jenis Kelamin', 0, 1, 1, 1, 1, 1, '{}', 9);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-03-12 23:52:24', '2020-03-12 23:52:24'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-03-12 23:52:24', '2020-03-12 23:52:24'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2020-03-12 23:52:24', '2020-03-12 23:52:24'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2020-03-12 23:52:25', '2020-03-12 23:52:25'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2020-03-12 23:52:26', '2020-03-12 23:52:26'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2020-03-12 23:52:26', '2020-03-12 23:52:26'),
(7, 'dokter', 'dokter', 'Dokter', 'Dokters', NULL, 'App\\Dokter', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-03-12 23:54:50', '2020-03-13 00:26:13'),
(8, 'petugas', 'petugas', 'Petugas', 'Petugass', NULL, 'App\\Petugas', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-03-12 23:58:45', '2020-03-12 23:58:45'),
(9, 'pasien', 'pasien', 'Pasien', 'Pasiens', NULL, 'App\\Pasien', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-03-13 00:00:57', '2020-03-13 00:00:57'),
(10, 'detail_penyakit', 'detail-penyakit', 'Detail Penyakit', 'Detail Penyakits', NULL, 'App\\DetailPenyakit', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-03-13 00:07:36', '2020-03-13 00:07:36'),
(11, 'detail_tindakan', 'detail-tindakan', 'Detail Tindakan', 'Detail Tindakans', NULL, 'App\\DetailTindakan', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-03-13 00:07:42', '2020-03-13 00:07:42'),
(12, 'jenis_penyakit', 'jenis-penyakit', 'Jenis Penyakit', 'Jenis Penyakits', NULL, 'App\\JenisPenyakit', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-03-13 00:07:48', '2020-03-13 00:07:48'),
(14, 'kategori_penyakit', 'kategori-penyakit', 'Kategori Penyakit', 'Kategori Penyakits', NULL, 'App\\KategoriPenyakit', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-03-13 00:08:40', '2020-03-13 00:08:40'),
(15, 'obat', 'obat', 'Obat', 'Obats', NULL, 'App\\Obat', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-03-13 00:09:11', '2020-03-13 00:09:11'),
(16, 'pemeriksaan', 'pemeriksaan', 'Pemeriksaan', 'Pemeriksaans', NULL, 'App\\Pemeriksaan', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-03-13 00:09:20', '2020-03-13 00:09:20'),
(17, 'poli', 'poli', 'Poli', 'Polis', NULL, 'App\\Poli', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-03-13 00:09:44', '2020-03-13 00:09:44'),
(18, 'registrasi', 'registrasi', 'Registrasi', 'Registrasis', NULL, 'App\\Registrasi', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-03-13 00:09:52', '2020-03-13 00:09:52'),
(19, 'resep', 'resep', 'Resep', 'Reseps', NULL, 'App\\Resep', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-03-13 00:09:58', '2020-03-13 00:09:58'),
(20, 'tindakan', 'tindakan', 'Tindakan', 'Tindakans', NULL, 'App\\Tindakan', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-03-13 00:10:04', '2020-03-13 00:10:04');

-- --------------------------------------------------------

--
-- Table structure for table `detail_penyakit`
--

CREATE TABLE `detail_penyakit` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `detail_tindakan`
--

CREATE TABLE `detail_tindakan` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `umur` int(11) DEFAULT NULL,
  `jabatan` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telp` char(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `jenis_kelamin` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id`, `nama`, `umur`, `jabatan`, `alamat`, `telp`, `created_at`, `updated_at`, `jenis_kelamin`) VALUES
(51, 'Farhat', 20, 'Surgeon', 'Jakarta', '081299209448', '2020-03-13 00:26:40', '2020-03-13 00:26:40', 1),
(52, 'Icha Uyainah', 36, 'omnis', 'Gg. Asia Afrika No. 435, Gorontalo 16593, DIY', '(+62) 844 0076 271', NULL, NULL, 1),
(53, 'Gara Dabukke', 25, 'ipsa', 'Jln. Industri No. 752, Singkawang 15073, DIY', '022 5373 3740', NULL, NULL, 1),
(54, 'Kambali Dono Hutasoit', 37, 'voluptate', 'Gg. R.M. Said No. 449, Pematangsiantar 71932, JaTim', '0409 6582 4242', NULL, NULL, 0),
(55, 'Hari Haryanto', 25, 'eius', 'Dk. Banda No. 767, Probolinggo 84305, DKI', '(+62) 872 3587 418', NULL, NULL, 0),
(56, 'Yusuf Nugroho', 27, 'mollitia', 'Ki. Ujung No. 543, Samarinda 62923, SumBar', '0862 1834 773', NULL, NULL, 0),
(57, 'Titin Wahyuni', 40, 'sed', 'Jr. Bambon No. 340, Tangerang Selatan 45656, JaBar', '(+62) 347 9143 443', NULL, NULL, 1),
(58, 'Taufik Simbolon', 36, 'praesentium', 'Jln. Babah No. 784, Palembang 17831, Banten', '0825 6522 2130', NULL, NULL, 0),
(59, 'Melinda Uyainah', 30, 'quia', 'Ds. Adisumarmo No. 354, Lhokseumawe 43697, SulBar', '(+62) 280 8008 9588', NULL, NULL, 0),
(60, 'Usman Hidayanto', 37, 'quasi', 'Ds. Flora No. 645, Tual 46331, Aceh', '0391 8758 5526', NULL, NULL, 0),
(61, 'Zalindra Aryani', 31, 'consectetur', 'Psr. Labu No. 618, Serang 18928, SulBar', '(+62) 703 5327 7601', NULL, NULL, 0),
(62, 'Lili Nabila Safitri S.Farm', 29, 'voluptatem', 'Gg. Kali No. 169, Serang 15115, SumSel', '(+62) 659 0826 7451', NULL, NULL, 1),
(63, 'Amalia Anggraini S.Pd', 33, 'tempore', 'Jln. Dr. Junjunan No. 255, Ternate 56359, SulBar', '0818 836 242', NULL, NULL, 0),
(64, 'Bagya Galur Maulana', 39, 'maiores', 'Gg. Bara No. 611, Tarakan 34165, KalTim', '0961 1328 876', NULL, NULL, 0),
(65, 'Paramita Mayasari', 30, 'dicta', 'Ki. Kalimalang No. 143, Padangpanjang 67929, Banten', '0581 2188 887', NULL, NULL, 0),
(66, 'Keisha Usada', 40, 'amet', 'Psr. Kali No. 195, Administrasi Jakarta Selatan 75138, KalUt', '0570 2407 460', NULL, NULL, 0),
(67, 'Kanda Setiawan', 35, 'tempore', 'Ki. Cikutra Timur No. 553, Mojokerto 71470, Banten', '025 8581 1099', NULL, NULL, 0),
(68, 'Estiawan Paiman Zulkarnain S.Ked', 40, 'et', 'Psr. Surapati No. 360, Tebing Tinggi 95750, KalBar', '(+62) 27 8625 3313', NULL, NULL, 1),
(69, 'Jaiman Zulkarnain', 33, 'nihil', 'Psr. Nanas No. 550, Tidore Kepulauan 74010, BaBel', '0401 4657 2135', NULL, NULL, 0),
(70, 'Najib Wasita', 34, 'sunt', 'Dk. Daan No. 831, Prabumulih 67724, DIY', '0962 0902 184', NULL, NULL, 1),
(71, 'Ami Fujiati M.Pd', 33, 'molestias', 'Ki. Supomo No. 979, Administrasi Jakarta Selatan 82311, SulBar', '0905 8498 560', NULL, NULL, 0),
(72, 'Ifa Mandasari', 37, 'esse', 'Jr. Sadang Serang No. 174, Sungai Penuh 58018, SulTeng', '(+62) 846 4292 4235', NULL, NULL, 1),
(73, 'Radit Hardiansyah', 38, 'quos', 'Dk. Villa No. 790, Bukittinggi 76706, PapBar', '0898 3017 8783', NULL, NULL, 1),
(74, 'Viman Hardiansyah', 40, 'modi', 'Dk. B.Agam 1 No. 206, Sabang 87007, SulUt', '(+62) 664 8238 720', NULL, NULL, 0),
(75, 'Juli Haryanti', 36, 'commodi', 'Dk. Jend. Sudirman No. 777, Surabaya 49836, JaBar', '(+62) 589 1148 297', NULL, NULL, 1),
(76, 'Anastasia Padmasari', 28, 'doloremque', 'Psr. Radio No. 318, Bitung 38041, SulUt', '(+62) 844 9378 658', NULL, NULL, 1),
(77, 'Mila Suci Laksmiwati', 36, 'ut', 'Ds. Elang No. 59, Banda Aceh 22716, KalTeng', '0721 9946 9962', NULL, NULL, 0),
(78, 'Lulut Thamrin', 34, 'totam', 'Ds. Bagas Pati No. 844, Banjarbaru 96855, Jambi', '(+62) 567 9246 124', NULL, NULL, 1),
(79, 'Janet Yance Pudjiastuti', 40, 'eveniet', 'Dk. Sudirman No. 250, Bogor 24963, Lampung', '(+62) 884 031 945', NULL, NULL, 1),
(80, 'Jarwi Darijan Rajasa', 32, 'totam', 'Psr. Veteran No. 312, Yogyakarta 82195, Maluku', '0826 642 566', NULL, NULL, 0),
(81, 'Eka Hassanah', 34, 'ut', 'Jr. Kebonjati No. 338, Gorontalo 20262, JaTim', '(+62) 336 2480 0285', NULL, NULL, 1),
(82, 'Queen Rahimah', 39, 'fugiat', 'Dk. Pahlawan No. 531, Bitung 38234, KalTeng', '(+62) 859 7846 2159', NULL, NULL, 0),
(83, 'Bagiya Uwais S.Farm', 31, 'non', 'Dk. Peta No. 218, Tangerang 26024, KalUt', '0973 0459 114', NULL, NULL, 1),
(84, 'Vinsen Hutasoit', 28, 'in', 'Gg. Ters. Kiaracondong No. 697, Pangkal Pinang 42486, KalUt', '021 8053 2312', NULL, NULL, 1),
(85, 'Salwa Mayasari', 37, 'non', 'Jln. Bata Putih No. 668, Tarakan 74699, Lampung', '(+62) 22 0221 542', NULL, NULL, 0),
(86, 'Titin Suryatmi M.M.', 37, 'illum', 'Jr. Veteran No. 546, Samarinda 73688, Aceh', '(+62) 359 8024 1692', NULL, NULL, 1),
(87, 'Shania Mala Aryani M.Kom.', 29, 'velit', 'Gg. Daan No. 642, Payakumbuh 67106, KalSel', '0511 5333 1964', NULL, NULL, 1),
(88, 'Kayla Hasanah', 37, 'quos', 'Dk. Bayan No. 178, Sungai Penuh 29864, KepR', '0891 583 508', NULL, NULL, 1),
(89, 'Tiara Salimah Prastuti', 35, 'sunt', 'Jln. Setiabudhi No. 781, Administrasi Jakarta Pusat 56605, KalBar', '0610 4204 6546', NULL, NULL, 0),
(90, 'Mila Oliva Purwanti', 28, 'inventore', 'Gg. Barasak No. 877, Tanjungbalai 22175, SumUt', '0969 9061 334', NULL, NULL, 1),
(91, 'Uda Karna Januar S.Ked', 36, 'quia', 'Jr. Basoka No. 590, Batam 57785, SulTra', '0625 5231 906', NULL, NULL, 0),
(92, 'Uchita Fitriani Riyanti', 31, 'delectus', 'Ds. Gajah Mada No. 210, Banjarbaru 55749, KepR', '0563 5090 4179', NULL, NULL, 1),
(93, 'Padma Laras Aryani', 30, 'rerum', 'Gg. Ki Hajar Dewantara No. 358, Palu 41966, JaBar', '(+62) 600 1437 242', NULL, NULL, 0),
(94, 'Ade Elon Pranowo', 28, 'natus', 'Gg. Jagakarsa No. 686, Serang 90387, JaBar', '0903 2478 829', NULL, NULL, 0),
(95, 'Salsabila Usada', 30, 'blanditiis', 'Ki. Jamika No. 969, Bengkulu 72826, Riau', '0472 1379 8441', NULL, NULL, 1),
(96, 'Tania Prastuti', 25, 'repellat', 'Jln. Panjaitan No. 511, Sorong 46962, Jambi', '0225 5810 6821', NULL, NULL, 1),
(97, 'Harjasa Sitompul', 36, 'dolores', 'Ki. Ters. Buah Batu No. 833, Manado 24098, Bengkulu', '0427 5943 7545', NULL, NULL, 1),
(98, 'Victoria Elvina Lestari', 29, 'aut', 'Psr. Bakau Griya Utama No. 627, Bitung 61732, Banten', '0518 3200 7972', NULL, NULL, 1),
(99, 'Darijan Gunarto M.Ak', 27, 'accusantium', 'Jr. Bakit  No. 238, Pekalongan 46898, SumUt', '(+62) 959 6966 094', NULL, NULL, 1),
(100, 'Tugiman Mangunsong', 39, 'qui', 'Kpg. Hang No. 836, Bandung 52429, SulTra', '0704 3950 329', NULL, NULL, 0),
(101, 'Gawati Astuti M.Pd', 28, 'quos', 'Dk. Setiabudhi No. 907, Yogyakarta 12046, SumSel', '0257 0073 7273', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jenis_penyakit`
--

CREATE TABLE `jenis_penyakit` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori_penyakit`
--

CREATE TABLE `kategori_penyakit` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-03-12 23:52:24', '2020-03-12 23:52:24'),
(2, 'main', '2020-03-15 23:36:43', '2020-03-15 23:36:43');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-03-12 23:52:24', '2020-03-12 23:52:24', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2020-03-12 23:52:24', '2020-03-12 23:52:24', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2020-03-12 23:52:24', '2020-03-12 23:52:24', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2020-03-12 23:52:24', '2020-03-12 23:52:24', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2020-03-12 23:52:24', '2020-03-12 23:52:24', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2020-03-12 23:52:24', '2020-03-12 23:52:24', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2020-03-12 23:52:25', '2020-03-12 23:52:25', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2020-03-12 23:52:25', '2020-03-12 23:52:25', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2020-03-12 23:52:25', '2020-03-12 23:52:25', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2020-03-12 23:52:25', '2020-03-12 23:52:25', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2020-03-12 23:52:25', '2020-03-12 23:52:25', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2020-03-12 23:52:26', '2020-03-12 23:52:26', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2020-03-12 23:52:26', '2020-03-12 23:52:26', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2020-03-12 23:52:27', '2020-03-12 23:52:27', 'voyager.hooks', NULL),
(15, 1, 'Dokters', '', '_self', NULL, NULL, NULL, 15, '2020-03-12 23:54:50', '2020-03-12 23:54:50', 'voyager.dokter.index', NULL),
(16, 1, 'Petugass', '', '_self', NULL, NULL, NULL, 16, '2020-03-12 23:58:45', '2020-03-12 23:58:45', 'voyager.petugas.index', NULL),
(17, 1, 'Pasiens', '', '_self', NULL, NULL, NULL, 17, '2020-03-13 00:00:57', '2020-03-13 00:00:57', 'voyager.pasien.index', NULL),
(18, 1, 'Detail Penyakits', '', '_self', NULL, NULL, NULL, 18, '2020-03-13 00:07:36', '2020-03-13 00:07:36', 'voyager.detail-penyakit.index', NULL),
(19, 1, 'Detail Tindakans', '', '_self', NULL, NULL, NULL, 19, '2020-03-13 00:07:43', '2020-03-13 00:07:43', 'voyager.detail-tindakan.index', NULL),
(20, 1, 'Jenis Penyakits', '', '_self', NULL, NULL, NULL, 20, '2020-03-13 00:07:48', '2020-03-13 00:07:48', 'voyager.jenis-penyakit.index', NULL),
(21, 1, 'Kategori Penyakits', '', '_self', NULL, NULL, NULL, 21, '2020-03-13 00:08:40', '2020-03-13 00:08:40', 'voyager.kategori-penyakit.index', NULL),
(22, 1, 'Obats', '', '_self', NULL, NULL, NULL, 22, '2020-03-13 00:09:11', '2020-03-13 00:09:11', 'voyager.obat.index', NULL),
(23, 1, 'Pemeriksaans', '', '_self', NULL, NULL, NULL, 23, '2020-03-13 00:09:20', '2020-03-13 00:09:20', 'voyager.pemeriksaan.index', NULL),
(24, 1, 'Polis', '', '_self', NULL, NULL, NULL, 24, '2020-03-13 00:09:44', '2020-03-13 00:09:44', 'voyager.poli.index', NULL),
(25, 1, 'Registrasis', '', '_self', NULL, NULL, NULL, 25, '2020-03-13 00:09:52', '2020-03-13 00:09:52', 'voyager.registrasi.index', NULL),
(26, 1, 'Reseps', '', '_self', NULL, NULL, NULL, 26, '2020-03-13 00:09:59', '2020-03-13 00:09:59', 'voyager.resep.index', NULL),
(27, 1, 'Tindakans', '', '_self', NULL, NULL, NULL, 27, '2020-03-13 00:10:04', '2020-03-13 00:10:04', 'voyager.tindakan.index', NULL),
(28, 2, 'Home', '/', '_self', NULL, '#000000', NULL, 1, '2020-03-15 23:37:06', '2020-03-18 23:33:37', NULL, ''),
(29, 2, 'News', '', '_self', NULL, '#000000', NULL, 2, '2020-03-18 23:21:04', '2020-03-18 23:33:37', NULL, ''),
(30, 2, 'Poli', '', '_self', NULL, '#000000', NULL, 3, '2020-03-18 23:21:11', '2020-03-18 23:33:37', NULL, ''),
(31, 2, 'About Us', '', '_self', NULL, '#000000', NULL, 4, '2020-03-18 23:23:01', '2020-03-18 23:33:37', NULL, ''),
(32, 2, 'Tindakan', '', '_self', NULL, '#000000', NULL, 5, '2020-03-18 23:23:14', '2020-03-18 23:33:37', NULL, ''),
(33, 2, 'Login', '', '_self', NULL, '#000000', NULL, 6, '2020-03-18 23:23:21', '2020-03-18 23:33:37', NULL, ''),
(34, 2, 'Anak', '', '_self', NULL, '#000000', 30, 1, '2020-03-18 23:33:43', '2020-03-18 23:33:48', NULL, ''),
(35, 2, 'Jantung', '', '_self', NULL, '#000000', 30, 2, '2020-03-18 23:34:00', '2020-03-18 23:34:05', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2016_01_01_000000_add_voyager_user_fields', 1),
(3, '2016_01_01_000000_create_data_types_table', 1),
(4, '2016_01_01_000000_create_pages_table', 1),
(5, '2016_01_01_000000_create_posts_table', 1),
(6, '2016_02_15_204651_create_categories_table', 1),
(7, '2016_05_19_173453_create_menu_table', 1),
(8, '2016_10_21_190000_create_roles_table', 1),
(9, '2016_10_21_190000_create_settings_table', 1),
(10, '2016_11_30_135954_create_permission_table', 1),
(11, '2016_11_30_141208_create_permission_role_table', 1),
(12, '2016_12_26_201236_data_types__add__server_side', 1),
(13, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(14, '2017_01_14_005015_create_translations_table', 1),
(15, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(16, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(17, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(18, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(19, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(20, '2017_08_05_000000_add_group_to_settings_table', 1),
(21, '2017_11_26_013050_add_user_role_relationship', 1),
(22, '2017_11_26_015000_create_user_roles_table', 1),
(23, '2018_03_11_000000_add_user_settings', 1),
(24, '2018_03_14_000000_add_details_to_data_types_table', 1),
(25, '2018_03_16_000000_make_settings_value_nullable', 1),
(26, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2020-03-12 23:52:26', '2020-03-12 23:52:26');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pemeriksaan`
--

CREATE TABLE `pemeriksaan` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-03-12 23:52:25', '2020-03-12 23:52:25'),
(2, 'browse_bread', NULL, '2020-03-12 23:52:25', '2020-03-12 23:52:25'),
(3, 'browse_database', NULL, '2020-03-12 23:52:25', '2020-03-12 23:52:25'),
(4, 'browse_media', NULL, '2020-03-12 23:52:25', '2020-03-12 23:52:25'),
(5, 'browse_compass', NULL, '2020-03-12 23:52:25', '2020-03-12 23:52:25'),
(6, 'browse_menus', 'menus', '2020-03-12 23:52:25', '2020-03-12 23:52:25'),
(7, 'read_menus', 'menus', '2020-03-12 23:52:25', '2020-03-12 23:52:25'),
(8, 'edit_menus', 'menus', '2020-03-12 23:52:25', '2020-03-12 23:52:25'),
(9, 'add_menus', 'menus', '2020-03-12 23:52:25', '2020-03-12 23:52:25'),
(10, 'delete_menus', 'menus', '2020-03-12 23:52:25', '2020-03-12 23:52:25'),
(11, 'browse_roles', 'roles', '2020-03-12 23:52:25', '2020-03-12 23:52:25'),
(12, 'read_roles', 'roles', '2020-03-12 23:52:25', '2020-03-12 23:52:25'),
(13, 'edit_roles', 'roles', '2020-03-12 23:52:25', '2020-03-12 23:52:25'),
(14, 'add_roles', 'roles', '2020-03-12 23:52:25', '2020-03-12 23:52:25'),
(15, 'delete_roles', 'roles', '2020-03-12 23:52:25', '2020-03-12 23:52:25'),
(16, 'browse_users', 'users', '2020-03-12 23:52:25', '2020-03-12 23:52:25'),
(17, 'read_users', 'users', '2020-03-12 23:52:25', '2020-03-12 23:52:25'),
(18, 'edit_users', 'users', '2020-03-12 23:52:25', '2020-03-12 23:52:25'),
(19, 'add_users', 'users', '2020-03-12 23:52:25', '2020-03-12 23:52:25'),
(20, 'delete_users', 'users', '2020-03-12 23:52:25', '2020-03-12 23:52:25'),
(21, 'browse_settings', 'settings', '2020-03-12 23:52:25', '2020-03-12 23:52:25'),
(22, 'read_settings', 'settings', '2020-03-12 23:52:25', '2020-03-12 23:52:25'),
(23, 'edit_settings', 'settings', '2020-03-12 23:52:25', '2020-03-12 23:52:25'),
(24, 'add_settings', 'settings', '2020-03-12 23:52:25', '2020-03-12 23:52:25'),
(25, 'delete_settings', 'settings', '2020-03-12 23:52:25', '2020-03-12 23:52:25'),
(26, 'browse_categories', 'categories', '2020-03-12 23:52:25', '2020-03-12 23:52:25'),
(27, 'read_categories', 'categories', '2020-03-12 23:52:25', '2020-03-12 23:52:25'),
(28, 'edit_categories', 'categories', '2020-03-12 23:52:25', '2020-03-12 23:52:25'),
(29, 'add_categories', 'categories', '2020-03-12 23:52:25', '2020-03-12 23:52:25'),
(30, 'delete_categories', 'categories', '2020-03-12 23:52:25', '2020-03-12 23:52:25'),
(31, 'browse_posts', 'posts', '2020-03-12 23:52:26', '2020-03-12 23:52:26'),
(32, 'read_posts', 'posts', '2020-03-12 23:52:26', '2020-03-12 23:52:26'),
(33, 'edit_posts', 'posts', '2020-03-12 23:52:26', '2020-03-12 23:52:26'),
(34, 'add_posts', 'posts', '2020-03-12 23:52:26', '2020-03-12 23:52:26'),
(35, 'delete_posts', 'posts', '2020-03-12 23:52:26', '2020-03-12 23:52:26'),
(36, 'browse_pages', 'pages', '2020-03-12 23:52:26', '2020-03-12 23:52:26'),
(37, 'read_pages', 'pages', '2020-03-12 23:52:26', '2020-03-12 23:52:26'),
(38, 'edit_pages', 'pages', '2020-03-12 23:52:26', '2020-03-12 23:52:26'),
(39, 'add_pages', 'pages', '2020-03-12 23:52:26', '2020-03-12 23:52:26'),
(40, 'delete_pages', 'pages', '2020-03-12 23:52:26', '2020-03-12 23:52:26'),
(41, 'browse_hooks', NULL, '2020-03-12 23:52:27', '2020-03-12 23:52:27'),
(42, 'browse_dokter', 'dokter', '2020-03-12 23:54:50', '2020-03-12 23:54:50'),
(43, 'read_dokter', 'dokter', '2020-03-12 23:54:50', '2020-03-12 23:54:50'),
(44, 'edit_dokter', 'dokter', '2020-03-12 23:54:50', '2020-03-12 23:54:50'),
(45, 'add_dokter', 'dokter', '2020-03-12 23:54:50', '2020-03-12 23:54:50'),
(46, 'delete_dokter', 'dokter', '2020-03-12 23:54:50', '2020-03-12 23:54:50'),
(47, 'browse_petugas', 'petugas', '2020-03-12 23:58:45', '2020-03-12 23:58:45'),
(48, 'read_petugas', 'petugas', '2020-03-12 23:58:45', '2020-03-12 23:58:45'),
(49, 'edit_petugas', 'petugas', '2020-03-12 23:58:45', '2020-03-12 23:58:45'),
(50, 'add_petugas', 'petugas', '2020-03-12 23:58:45', '2020-03-12 23:58:45'),
(51, 'delete_petugas', 'petugas', '2020-03-12 23:58:45', '2020-03-12 23:58:45'),
(52, 'browse_pasien', 'pasien', '2020-03-13 00:00:57', '2020-03-13 00:00:57'),
(53, 'read_pasien', 'pasien', '2020-03-13 00:00:57', '2020-03-13 00:00:57'),
(54, 'edit_pasien', 'pasien', '2020-03-13 00:00:57', '2020-03-13 00:00:57'),
(55, 'add_pasien', 'pasien', '2020-03-13 00:00:57', '2020-03-13 00:00:57'),
(56, 'delete_pasien', 'pasien', '2020-03-13 00:00:57', '2020-03-13 00:00:57'),
(57, 'browse_detail_penyakit', 'detail_penyakit', '2020-03-13 00:07:36', '2020-03-13 00:07:36'),
(58, 'read_detail_penyakit', 'detail_penyakit', '2020-03-13 00:07:36', '2020-03-13 00:07:36'),
(59, 'edit_detail_penyakit', 'detail_penyakit', '2020-03-13 00:07:36', '2020-03-13 00:07:36'),
(60, 'add_detail_penyakit', 'detail_penyakit', '2020-03-13 00:07:36', '2020-03-13 00:07:36'),
(61, 'delete_detail_penyakit', 'detail_penyakit', '2020-03-13 00:07:36', '2020-03-13 00:07:36'),
(62, 'browse_detail_tindakan', 'detail_tindakan', '2020-03-13 00:07:43', '2020-03-13 00:07:43'),
(63, 'read_detail_tindakan', 'detail_tindakan', '2020-03-13 00:07:43', '2020-03-13 00:07:43'),
(64, 'edit_detail_tindakan', 'detail_tindakan', '2020-03-13 00:07:43', '2020-03-13 00:07:43'),
(65, 'add_detail_tindakan', 'detail_tindakan', '2020-03-13 00:07:43', '2020-03-13 00:07:43'),
(66, 'delete_detail_tindakan', 'detail_tindakan', '2020-03-13 00:07:43', '2020-03-13 00:07:43'),
(67, 'browse_jenis_penyakit', 'jenis_penyakit', '2020-03-13 00:07:48', '2020-03-13 00:07:48'),
(68, 'read_jenis_penyakit', 'jenis_penyakit', '2020-03-13 00:07:48', '2020-03-13 00:07:48'),
(69, 'edit_jenis_penyakit', 'jenis_penyakit', '2020-03-13 00:07:48', '2020-03-13 00:07:48'),
(70, 'add_jenis_penyakit', 'jenis_penyakit', '2020-03-13 00:07:48', '2020-03-13 00:07:48'),
(71, 'delete_jenis_penyakit', 'jenis_penyakit', '2020-03-13 00:07:48', '2020-03-13 00:07:48'),
(72, 'browse_kategori_penyakit', 'kategori_penyakit', '2020-03-13 00:08:40', '2020-03-13 00:08:40'),
(73, 'read_kategori_penyakit', 'kategori_penyakit', '2020-03-13 00:08:40', '2020-03-13 00:08:40'),
(74, 'edit_kategori_penyakit', 'kategori_penyakit', '2020-03-13 00:08:40', '2020-03-13 00:08:40'),
(75, 'add_kategori_penyakit', 'kategori_penyakit', '2020-03-13 00:08:40', '2020-03-13 00:08:40'),
(76, 'delete_kategori_penyakit', 'kategori_penyakit', '2020-03-13 00:08:40', '2020-03-13 00:08:40'),
(77, 'browse_obat', 'obat', '2020-03-13 00:09:11', '2020-03-13 00:09:11'),
(78, 'read_obat', 'obat', '2020-03-13 00:09:11', '2020-03-13 00:09:11'),
(79, 'edit_obat', 'obat', '2020-03-13 00:09:11', '2020-03-13 00:09:11'),
(80, 'add_obat', 'obat', '2020-03-13 00:09:11', '2020-03-13 00:09:11'),
(81, 'delete_obat', 'obat', '2020-03-13 00:09:11', '2020-03-13 00:09:11'),
(82, 'browse_pemeriksaan', 'pemeriksaan', '2020-03-13 00:09:20', '2020-03-13 00:09:20'),
(83, 'read_pemeriksaan', 'pemeriksaan', '2020-03-13 00:09:20', '2020-03-13 00:09:20'),
(84, 'edit_pemeriksaan', 'pemeriksaan', '2020-03-13 00:09:20', '2020-03-13 00:09:20'),
(85, 'add_pemeriksaan', 'pemeriksaan', '2020-03-13 00:09:20', '2020-03-13 00:09:20'),
(86, 'delete_pemeriksaan', 'pemeriksaan', '2020-03-13 00:09:20', '2020-03-13 00:09:20'),
(87, 'browse_poli', 'poli', '2020-03-13 00:09:44', '2020-03-13 00:09:44'),
(88, 'read_poli', 'poli', '2020-03-13 00:09:44', '2020-03-13 00:09:44'),
(89, 'edit_poli', 'poli', '2020-03-13 00:09:44', '2020-03-13 00:09:44'),
(90, 'add_poli', 'poli', '2020-03-13 00:09:44', '2020-03-13 00:09:44'),
(91, 'delete_poli', 'poli', '2020-03-13 00:09:44', '2020-03-13 00:09:44'),
(92, 'browse_registrasi', 'registrasi', '2020-03-13 00:09:52', '2020-03-13 00:09:52'),
(93, 'read_registrasi', 'registrasi', '2020-03-13 00:09:52', '2020-03-13 00:09:52'),
(94, 'edit_registrasi', 'registrasi', '2020-03-13 00:09:52', '2020-03-13 00:09:52'),
(95, 'add_registrasi', 'registrasi', '2020-03-13 00:09:52', '2020-03-13 00:09:52'),
(96, 'delete_registrasi', 'registrasi', '2020-03-13 00:09:52', '2020-03-13 00:09:52'),
(97, 'browse_resep', 'resep', '2020-03-13 00:09:59', '2020-03-13 00:09:59'),
(98, 'read_resep', 'resep', '2020-03-13 00:09:59', '2020-03-13 00:09:59'),
(99, 'edit_resep', 'resep', '2020-03-13 00:09:59', '2020-03-13 00:09:59'),
(100, 'add_resep', 'resep', '2020-03-13 00:09:59', '2020-03-13 00:09:59'),
(101, 'delete_resep', 'resep', '2020-03-13 00:09:59', '2020-03-13 00:09:59'),
(102, 'browse_tindakan', 'tindakan', '2020-03-13 00:10:04', '2020-03-13 00:10:04'),
(103, 'read_tindakan', 'tindakan', '2020-03-13 00:10:04', '2020-03-13 00:10:04'),
(104, 'edit_tindakan', 'tindakan', '2020-03-13 00:10:04', '2020-03-13 00:10:04'),
(105, 'add_tindakan', 'tindakan', '2020-03-13 00:10:04', '2020-03-13 00:10:04'),
(106, 'delete_tindakan', 'tindakan', '2020-03-13 00:10:04', '2020-03-13 00:10:04');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1);

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `poli`
--

CREATE TABLE `poli` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-03-12 23:52:26', '2020-03-12 23:52:26'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\r\n                <h2>We can use all kinds of format!</h2>\r\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-03-12 23:52:26', '2020-03-12 23:52:26'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-03-12 23:52:26', '2020-03-12 23:52:26'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\r\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\r\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-03-12 23:52:26', '2020-03-12 23:52:26');

-- --------------------------------------------------------

--
-- Table structure for table `registrasi`
--

CREATE TABLE `registrasi` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resep`
--

CREATE TABLE `resep` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-03-12 23:52:25', '2020-03-12 23:52:25'),
(2, 'user', 'Normal User', '2020-03-12 23:52:25', '2020-03-12 23:52:25');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\March2020\\cQUVx0KGTPsxGdu0WdL3.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tindakan`
--

CREATE TABLE `tindakan` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2020-03-12 23:52:26', '2020-03-12 23:52:26'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2020-03-12 23:52:26', '2020-03-12 23:52:26'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2020-03-12 23:52:26', '2020-03-12 23:52:26'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2020-03-12 23:52:26', '2020-03-12 23:52:26'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2020-03-12 23:52:26', '2020-03-12 23:52:26'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2020-03-12 23:52:26', '2020-03-12 23:52:26'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2020-03-12 23:52:26', '2020-03-12 23:52:26'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2020-03-12 23:52:26', '2020-03-12 23:52:26'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2020-03-12 23:52:26', '2020-03-12 23:52:26'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2020-03-12 23:52:26', '2020-03-12 23:52:26'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2020-03-12 23:52:26', '2020-03-12 23:52:26'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2020-03-12 23:52:26', '2020-03-12 23:52:26'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2020-03-12 23:52:26', '2020-03-12 23:52:26'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2020-03-12 23:52:26', '2020-03-12 23:52:26'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2020-03-12 23:52:26', '2020-03-12 23:52:26'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2020-03-12 23:52:26', '2020-03-12 23:52:26'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2020-03-12 23:52:26', '2020-03-12 23:52:26'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2020-03-12 23:52:26', '2020-03-12 23:52:26'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2020-03-12 23:52:26', '2020-03-12 23:52:26'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2020-03-12 23:52:26', '2020-03-12 23:52:26'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2020-03-12 23:52:26', '2020-03-12 23:52:26'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2020-03-12 23:52:27', '2020-03-12 23:52:27'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2020-03-12 23:52:27', '2020-03-12 23:52:27'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2020-03-12 23:52:27', '2020-03-12 23:52:27'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2020-03-12 23:52:27', '2020-03-12 23:52:27'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2020-03-12 23:52:27', '2020-03-12 23:52:27'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2020-03-12 23:52:27', '2020-03-12 23:52:27'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2020-03-12 23:52:27', '2020-03-12 23:52:27'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2020-03-12 23:52:27', '2020-03-12 23:52:27'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2020-03-12 23:52:27', '2020-03-12 23:52:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$.Dx2A55Uw3Aqs4i/9TOxcO4V4/CERyPZY/2hDUI3cLgDDgFkn/ak2', 'STByUvnzMbAB55dJlqYqcgyzAXmtEnfidcxEpuMYOVpFTFzX1MH10HJCEdlw', NULL, '2020-03-12 23:52:25', '2020-03-12 23:52:25');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `detail_penyakit`
--
ALTER TABLE `detail_penyakit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_tindakan`
--
ALTER TABLE `detail_tindakan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_penyakit`
--
ALTER TABLE `jenis_penyakit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_penyakit`
--
ALTER TABLE `kategori_penyakit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poli`
--
ALTER TABLE `poli`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `registrasi`
--
ALTER TABLE `registrasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resep`
--
ALTER TABLE `resep`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `tindakan`
--
ALTER TABLE `tindakan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `detail_penyakit`
--
ALTER TABLE `detail_penyakit`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detail_tindakan`
--
ALTER TABLE `detail_tindakan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jenis_penyakit`
--
ALTER TABLE `jenis_penyakit`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori_penyakit`
--
ALTER TABLE `kategori_penyakit`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `poli`
--
ALTER TABLE `poli`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `registrasi`
--
ALTER TABLE `registrasi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resep`
--
ALTER TABLE `resep`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tindakan`
--
ALTER TABLE `tindakan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
