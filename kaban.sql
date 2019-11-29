-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 29 2019 г., 12:59
-- Версия сервера: 5.6.38
-- Версия PHP: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `kaban`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://kaban', 'yes'),
(2, 'home', 'http://kaban', 'yes'),
(3, 'blogname', 'kaban', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'satur.75@ukr.net', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '', 'yes'),
(22, 'posts_per_page', '8', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%category%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:129:{s:11:\"products/?$\";s:36:\"index.php?post_type=sheensay_product\";s:29:\"products/page/?([0-9]{1,})/?$\";s:54:\"index.php?post_type=sheensay_product&paged=$matches[1]\";s:37:\"products/([^/]+)/page/?([0-9]{1,})/?$\";s:61:\"index.php?sheensay_product_type=$matches[1]&paged=$matches[2]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:41:\"products/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?post_type=sheensay_product&feed=$matches[1]\";s:36:\"products/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?post_type=sheensay_product&feed=$matches[1]\";s:28:\"products/page/([0-9]{1,})/?$\";s:54:\"index.php?post_type=sheensay_product&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:45:\"shop/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?shop=$matches[1]&feed=$matches[2]\";s:40:\"shop/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?shop=$matches[1]&feed=$matches[2]\";s:21:\"shop/([^/]+)/embed/?$\";s:37:\"index.php?shop=$matches[1]&embed=true\";s:33:\"shop/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?shop=$matches[1]&paged=$matches[2]\";s:15:\"shop/([^/]+)/?$\";s:26:\"index.php?shop=$matches[1]\";s:49:\"products/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?sheensay_product_type=$matches[1]&feed=$matches[2]\";s:44:\"products/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?sheensay_product_type=$matches[1]&feed=$matches[2]\";s:25:\"products/([^/]+)/embed/?$\";s:54:\"index.php?sheensay_product_type=$matches[1]&embed=true\";s:19:\"products/([^/]+)/?$\";s:43:\"index.php?sheensay_product_type=$matches[1]\";s:42:\"products/[^/]+/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:52:\"products/[^/]+/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:72:\"products/[^/]+/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"products/[^/]+/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"products/[^/]+/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:48:\"products/[^/]+/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"products/([^/]+)/([^/]+)/embed/?$\";s:83:\"index.php?sheensay_product_type=$matches[1]&sheensay_product=$matches[2]&embed=true\";s:37:\"products/([^/]+)/([^/]+)/trackback/?$\";s:77:\"index.php?sheensay_product_type=$matches[1]&sheensay_product=$matches[2]&tb=1\";s:57:\"products/([^/]+)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:89:\"index.php?sheensay_product_type=$matches[1]&sheensay_product=$matches[2]&feed=$matches[3]\";s:52:\"products/([^/]+)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:89:\"index.php?sheensay_product_type=$matches[1]&sheensay_product=$matches[2]&feed=$matches[3]\";s:45:\"products/([^/]+)/([^/]+)/page/?([0-9]{1,})/?$\";s:90:\"index.php?sheensay_product_type=$matches[1]&sheensay_product=$matches[2]&paged=$matches[3]\";s:52:\"products/([^/]+)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:90:\"index.php?sheensay_product_type=$matches[1]&sheensay_product=$matches[2]&cpage=$matches[3]\";s:41:\"products/([^/]+)/([^/]+)(?:/([0-9]+))?/?$\";s:89:\"index.php?sheensay_product_type=$matches[1]&sheensay_product=$matches[2]&page=$matches[3]\";s:31:\"products/[^/]+/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"products/[^/]+/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"products/[^/]+/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"products/[^/]+/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"products/[^/]+/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"products/[^/]+/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:44:\"products/([^/]+)/comment-page-([0-9]{1,})/?$\";s:61:\"index.php?sheensay_product_type=$matches[1]&cpage=$matches[2]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=17&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\".+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\".+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\".+?/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"(.+?)/([^/]+)/embed/?$\";s:63:\"index.php?category_name=$matches[1]&name=$matches[2]&embed=true\";s:26:\"(.+?)/([^/]+)/trackback/?$\";s:57:\"index.php?category_name=$matches[1]&name=$matches[2]&tb=1\";s:46:\"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:41:\"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:34:\"(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:41:\"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:30:\"(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]\";s:20:\".+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\".+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\".+?/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:14:\"(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:31:\"what-the-file/what-the-file.php\";i:3;s:42:\"yet-another-related-posts-plugin/yarpp.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:4:{i:0;s:69:\"D:\\openserver\\OSPanel\\domains\\kaban/wp-content/themes/kaban/index.php\";i:1;s:69:\"D:\\openserver\\OSPanel\\domains\\kaban/wp-content/themes/kaban/style.css\";i:2;s:88:\"D:\\openserver\\OSPanel\\domains\\kaban/wp-content/themes/kaban/archive-sheensay_product.php\";i:3;s:0:\"\";}', 'no'),
(40, 'template', 'kaban', 'yes'),
(41, 'stylesheet', 'kaban', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'gravatar_default', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '85', 'yes'),
(84, 'page_on_front', '17', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'ru_RU', 'yes'),
(97, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:6:{i:1574844153;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1574854952;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1574854953;a:3:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1574854960;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1574854962;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(135, 'can_compress_scripts', '1', 'no'),
(146, 'theme_mods_twentynineteen', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1569930191;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(147, 'current_theme', 'kaban', 'yes'),
(148, 'theme_mods_kaban', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:6:\"menu-1\";i:2;s:6:\"menu-2\";i:4;s:6:\"menu-3\";i:12;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:21;}', 'yes'),
(149, 'theme_switched', '', 'yes'),
(150, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(157, 'recently_activated', 'a:2:{s:31:\"wp-google-maps/wpGoogleMaps.php\";i:1570450962;s:51:\"api-key-for-google-maps/api-key-for-google-maps.php\";i:1570450232;}', 'yes'),
(163, 'acf_version', '5.7.12', 'yes'),
(187, 'category_children', 'a:0:{}', 'yes'),
(260, 'products_tax_children', 'a:2:{i:8;a:2:{i:0;i:9;i:1;i:10;}i:7;a:1:{i:0;i:11;}}', 'yes'),
(300, 'products_children', 'a:0:{}', 'yes'),
(307, 'сategories_children', 'a:2:{i:15;a:2:{i:0;i:16;i:1;i:17;}i:17;a:1:{i:0;i:18;}}', 'yes'),
(344, 'shop_children', 'a:0:{}', 'yes'),
(359, 'sheensay_product_type_children', 'a:2:{i:24;a:2:{i:0;i:25;i:1;i:28;}i:26;a:1:{i:0;i:27;}}', 'yes'),
(423, 'whatthefile-install-date', '2019-10-07', 'no'),
(434, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.4\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1570452636;s:7:\"version\";s:5:\"5.1.4\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(445, 'rgmk_google_map_api_key', 'AIzaSyB_8S0I2qTw-Uhpop4qoi5GQxjdKbYiUtk', 'yes'),
(448, 'wpgmza_db_version', '8.0.0', 'yes'),
(449, 'wpgmza_global_settings', '{\"wpgmza_google_maps_api_key\":\"AIzaSyCRkiJSDkEvpJJEi5YEj-TE7FHPCX0umL8\",\"engine\":\"google-maps\",\"google_maps_api_key\":false,\"default_marker_icon\":\"\\/\\/maps.gstatic.com\\/mapfiles\\/api-3\\/images\\/spotlight-poi2.png\",\"user_interface_style\":\"minimal\",\"wpgmza_gdpr_default_notice\":\"<p>\\n\\tI agree for my personal data to be processed by <span name=\\\"wpgmza_gdpr_company_name\\\"><\\/span>, for the purpose(s) of <span name=\\\"wpgmza_gdpr_retention_purpose\\\"><\\/span>.\\n<\\/p>\\n\\n<p>\\t\\n\\tI agree for my personal data, provided via map API calls, to be processed by the API provider, for the purposes of geocoding (converting addresses to coordinates), reverse geocoding and\\tgenerating directions.\\n<\\/p>\\n<p>\\n\\tSome visual components of WP Google Maps use 3rd party libraries which are loaded over the network. At present the libraries are Google Maps, Open Street Map, jQuery DataTables and FontAwesome. When loading resources over a network, the 3rd party server will receive your IP address and User Agent string amongst other details. Please refer to the Privacy Policy of the respective libraries for details on how they use data and the process to exercise your rights under the GDPR regulations.\\n<\\/p>\\n<p>\\n\\tWP Google Maps uses jQuery DataTables to display sortable, searchable tables, such as that seen in the Advanced Marker Listing and on the Map Edit Page. jQuery DataTables in certain circumstances uses a cookie to save and later recall the \\\"state\\\" of a given table - that is, the search term, sort column and order and current page. This data is held in local storage and retained until this is cleared manually. No libraries used by WP Google Maps transmit this information.\\n<\\/p>\\n<p>\\n\\tPlease <a href=\\\"https:\\/\\/developers.google.com\\/maps\\/terms\\\">see here<\\/a> and <a href=\\\"https:\\/\\/maps.google.com\\/help\\/terms_maps.html\\\">here<\\/a> for Google\'s terms. Please also see <a href=\\\"https:\\/\\/policies.google.com\\/privacy?hl=en-GB&amp;gl=uk\\\">Google\'s Privacy Policy<\\/a>. We do not send the API provider any personally identifying information, or information that could uniquely identify your device.\\n<\\/p>\\n<p>\\n\\tWhere this notice is displayed in place of a map, agreeing to this notice will store a cookie recording your agreement so you are not prompted again.\\n<\\/p>\",\"wpgmza_gdpr_company_name\":\"kaban\",\"wpgmza_gdpr_retention_purpose\":\"displaying map tiles, geocoding addresses and calculating and display directions.\",\"wpgmza_settings_marker_pull\":\"0\",\"wpgmza_gdpr_notice_override_text\":\"\",\"wpgmza_load_engine_api_condition\":\"where-required\",\"wpgmza_always_include_engine_api_on_pages\":\"\",\"wpgmza_always_exclude_engine_api_on_pages\":\"\",\"use_fontawesome\":\"4.*\",\"wpgmza_maps_engine\":\"google-maps\",\"wpgmza_settings_map_open_marker_by\":\"1\",\"wpgmza_custom_css\":\"\",\"wpgmza_custom_js\":\"\",\"wpgmza_settings_access_level\":\"manage_options\",\"wpgmza_store_locator_radii\":\"1,5,10,25,50,75,100,150,200,300\"}', 'yes'),
(450, 'WPGMZA_OTHER_SETTINGS', 'a:20:{s:26:\"wpgmza_google_maps_api_key\";s:39:\"AIzaSyCRkiJSDkEvpJJEi5YEj-TE7FHPCX0umL8\";s:6:\"engine\";s:11:\"google-maps\";s:19:\"google_maps_api_key\";b:0;s:19:\"default_marker_icon\";s:59:\"//maps.gstatic.com/mapfiles/api-3/images/spotlight-poi2.png\";s:20:\"user_interface_style\";s:7:\"minimal\";s:26:\"wpgmza_gdpr_default_notice\";s:1954:\"<p>\n	I agree for my personal data to be processed by <span name=\"wpgmza_gdpr_company_name\"></span>, for the purpose(s) of <span name=\"wpgmza_gdpr_retention_purpose\"></span>.\n</p>\n\n<p>	\n	I agree for my personal data, provided via map API calls, to be processed by the API provider, for the purposes of geocoding (converting addresses to coordinates), reverse geocoding and	generating directions.\n</p>\n<p>\n	Some visual components of WP Google Maps use 3rd party libraries which are loaded over the network. At present the libraries are Google Maps, Open Street Map, jQuery DataTables and FontAwesome. When loading resources over a network, the 3rd party server will receive your IP address and User Agent string amongst other details. Please refer to the Privacy Policy of the respective libraries for details on how they use data and the process to exercise your rights under the GDPR regulations.\n</p>\n<p>\n	WP Google Maps uses jQuery DataTables to display sortable, searchable tables, such as that seen in the Advanced Marker Listing and on the Map Edit Page. jQuery DataTables in certain circumstances uses a cookie to save and later recall the \"state\" of a given table - that is, the search term, sort column and order and current page. This data is held in local storage and retained until this is cleared manually. No libraries used by WP Google Maps transmit this information.\n</p>\n<p>\n	Please <a href=\"https://developers.google.com/maps/terms\">see here</a> and <a href=\"https://maps.google.com/help/terms_maps.html\">here</a> for Google\'s terms. Please also see <a href=\"https://policies.google.com/privacy?hl=en-GB&amp;gl=uk\">Google\'s Privacy Policy</a>. We do not send the API provider any personally identifying information, or information that could uniquely identify your device.\n</p>\n<p>\n	Where this notice is displayed in place of a map, agreeing to this notice will store a cookie recording your agreement so you are not prompted again.\n</p>\";s:24:\"wpgmza_gdpr_company_name\";s:5:\"kaban\";s:29:\"wpgmza_gdpr_retention_purpose\";s:81:\"displaying map tiles, geocoding addresses and calculating and display directions.\";s:27:\"wpgmza_settings_marker_pull\";s:1:\"0\";s:32:\"wpgmza_gdpr_notice_override_text\";s:0:\"\";s:32:\"wpgmza_load_engine_api_condition\";s:14:\"where-required\";s:41:\"wpgmza_always_include_engine_api_on_pages\";s:0:\"\";s:41:\"wpgmza_always_exclude_engine_api_on_pages\";s:0:\"\";s:15:\"use_fontawesome\";s:3:\"4.*\";s:18:\"wpgmza_maps_engine\";s:11:\"google-maps\";s:34:\"wpgmza_settings_map_open_marker_by\";s:1:\"1\";s:17:\"wpgmza_custom_css\";s:0:\"\";s:16:\"wpgmza_custom_js\";s:0:\"\";s:28:\"wpgmza_settings_access_level\";s:14:\"manage_options\";s:26:\"wpgmza_store_locator_radii\";s:31:\"1,5,10,25,50,75,100,150,200,300\";}', 'yes'),
(451, 'wpgmza_temp_api', 'AIzaSyDjyYKnTqGG2CAF9nmrfB6zgTBE6oPhMk4', 'yes'),
(452, 'wpgmza_xml_location', '{uploads_dir}/wp-google-maps/', 'yes'),
(453, 'wpgmza_xml_url', '{uploads_url}/wp-google-maps/', 'yes'),
(454, 'wpgmaps_current_version', '8.0.0', 'yes'),
(455, 'WPGM_V6_FIRST_TIME', '1', 'yes'),
(456, 'widget_wpgmza_map_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(457, 'WPGMZA_FIRST_TIME', '8.0.0', 'yes'),
(458, 'wpgmza_stats', 'a:3:{s:15:\"list_maps_basic\";a:3:{s:5:\"views\";i:4;s:13:\"last_accessed\";s:19:\"2019-10-07 12:14:42\";s:14:\"first_accessed\";s:19:\"2019-10-07 12:12:27\";}s:14:\"settings_basic\";a:3:{s:5:\"views\";i:4;s:13:\"last_accessed\";s:19:\"2019-10-07 12:14:37\";s:14:\"first_accessed\";s:19:\"2019-10-07 12:13:34\";}s:9:\"dashboard\";a:3:{s:5:\"views\";i:2;s:13:\"last_accessed\";s:19:\"2019-10-07 12:15:42\";s:14:\"first_accessed\";s:19:\"2019-10-07 12:14:59\";}}', 'yes'),
(459, 'wpgmza_google_maps_api_key', 'AIzaSyCRkiJSDkEvpJJEi5YEj-TE7FHPCX0umL8', 'yes'),
(460, 'WPGMZA_SETTINGS', 'a:10:{s:24:\"map_default_starting_lat\";s:18:\"45.950464398418106\";s:24:\"map_default_starting_lng\";s:19:\"-109.81550500000003\";s:18:\"map_default_height\";s:3:\"800\";s:17:\"map_default_width\";s:3:\"100\";s:16:\"map_default_zoom\";i:2;s:20:\"map_default_max_zoom\";i:1;s:16:\"map_default_type\";i:1;s:21:\"map_default_alignment\";i:1;s:22:\"map_default_width_type\";s:2:\"\\%\";s:23:\"map_default_height_type\";s:2:\"px\";}', 'yes'),
(486, '_transient_random_seed', '37346267eb65774759e789825bfe932a', 'yes'),
(517, 'widget_yarpp_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(518, 'yarpp_pro', 'a:7:{s:6:\"active\";s:1:\"0\";s:3:\"aid\";N;s:2:\"st\";N;s:1:\"v\";N;s:4:\"dpid\";N;s:5:\"optin\";b:0;s:23:\"auto_display_post_types\";a:1:{i:0;s:4:\"post\";}}', 'yes'),
(519, 'yarpp', 'a:47:{s:9:\"threshold\";s:1:\"2\";s:5:\"limit\";s:1:\"4\";s:14:\"excerpt_length\";s:2:\"10\";s:6:\"recent\";b:0;s:12:\"before_title\";s:4:\"<li>\";s:11:\"after_title\";s:5:\"</li>\";s:11:\"before_post\";s:8:\" <small>\";s:10:\"after_post\";s:8:\"</small>\";s:14:\"before_related\";s:27:\"<h3>Related posts:</h3><ol>\";s:13:\"after_related\";s:5:\"</ol>\";s:10:\"no_results\";s:24:\"<p>No related posts.</p>\";s:5:\"order\";s:10:\"score DESC\";s:9:\"rss_limit\";s:1:\"3\";s:18:\"rss_excerpt_length\";s:2:\"10\";s:16:\"rss_before_title\";s:4:\"<li>\";s:15:\"rss_after_title\";s:5:\"</li>\";s:15:\"rss_before_post\";s:8:\" <small>\";s:14:\"rss_after_post\";s:8:\"</small>\";s:18:\"rss_before_related\";s:27:\"<h3>Related posts:</h3><ol>\";s:17:\"rss_after_related\";s:5:\"</ol>\";s:14:\"rss_no_results\";s:24:\"<p>No related posts.</p>\";s:9:\"rss_order\";s:10:\"score DESC\";s:9:\"past_only\";b:0;s:12:\"show_excerpt\";b:0;s:16:\"rss_show_excerpt\";b:0;s:8:\"template\";s:23:\"yarpp-template-list.php\";s:12:\"rss_template\";b:0;s:14:\"show_pass_post\";b:0;s:12:\"cross_relate\";b:0;s:11:\"rss_display\";b:0;s:19:\"rss_excerpt_display\";b:1;s:13:\"promote_yarpp\";b:0;s:17:\"rss_promote_yarpp\";b:0;s:15:\"myisam_override\";b:0;s:7:\"exclude\";s:0:\"\";s:6:\"weight\";a:1:{s:3:\"tax\";a:2:{s:8:\"category\";i:1;s:8:\"post_tag\";i:1;}}s:11:\"require_tax\";a:0:{}s:5:\"optin\";b:0;s:18:\"thumbnails_heading\";s:14:\"Related posts:\";s:18:\"thumbnails_default\";s:83:\"http://kaban/wp-content/plugins/yet-another-related-posts-plugin/images/default.png\";s:22:\"rss_thumbnails_heading\";s:14:\"Related posts:\";s:22:\"rss_thumbnails_default\";s:83:\"http://kaban/wp-content/plugins/yet-another-related-posts-plugin/images/default.png\";s:12:\"display_code\";b:0;s:20:\"auto_display_archive\";b:0;s:23:\"auto_display_post_types\";a:0:{}s:5:\"pools\";a:0:{}s:25:\"manually_using_thumbnails\";b:0;}', 'yes'),
(520, 'yarpp_fulltext_disabled', '1', 'yes'),
(521, 'yarpp_version', '5.1.1', 'yes'),
(522, 'yarpp_version_info_timeout', '1570543542', 'no'),
(523, 'yarpp_activate_timestamp', '1570539942', 'no'),
(561, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:16:\"satur.75@ukr.net\";s:7:\"version\";s:5:\"5.2.4\";s:9:\"timestamp\";i:1571139785;}', 'no'),
(569, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.3.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.3.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.3\";s:7:\"version\";s:3:\"5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.3.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.3-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.3\";s:7:\"version\";s:3:\"5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.3.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.3.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.3\";s:7:\"version\";s:3:\"5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1574843411;s:15:\"version_checked\";s:5:\"5.2.4\";s:12:\"translations\";a:0:{}}', 'no'),
(570, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1574843410;s:7:\"checked\";a:1:{s:5:\"kaban\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(573, '_transient_timeout_acf_plugin_updates', '1575016209', 'no'),
(574, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.3.0\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.7.12\";}}', 'no'),
(575, '_site_transient_timeout_theme_roots', '1574845209', 'no'),
(576, '_site_transient_theme_roots', 'a:1:{s:5:\"kaban\";s:7:\"/themes\";}', 'no'),
(578, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1574843412;s:8:\"response\";a:4:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.3\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.3\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:42:\"yet-another-related-posts-plugin/yarpp.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:46:\"w.org/plugins/yet-another-related-posts-plugin\";s:4:\"slug\";s:32:\"yet-another-related-posts-plugin\";s:6:\"plugin\";s:42:\"yet-another-related-posts-plugin/yarpp.php\";s:11:\"new_version\";s:5:\"5.1.2\";s:3:\"url\";s:63:\"https://wordpress.org/plugins/yet-another-related-posts-plugin/\";s:7:\"package\";s:81:\"https://downloads.wordpress.org/plugin/yet-another-related-posts-plugin.5.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:85:\"https://ps.w.org/yet-another-related-posts-plugin/assets/icon-256x256.png?rev=2115745\";s:2:\"1x\";s:85:\"https://ps.w.org/yet-another-related-posts-plugin/assets/icon-128x128.png?rev=2115745\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:88:\"https://ps.w.org/yet-another-related-posts-plugin/assets/banner-1544x500.png?rev=2115720\";s:2:\"1x\";s:87:\"https://ps.w.org/yet-another-related-posts-plugin/assets/banner-772x250.png?rev=2115720\";}s:11:\"banners_rtl\";a:0:{}s:14:\"upgrade_notice\";s:180:\"<p>We update this plugin regularly so we can make it better for you. Update to the latest version for all of the available features and improvements. Thank you for using YARPP!</p>\";s:6:\"tested\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.2\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.3.0\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"what-the-file/what-the-file.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/what-the-file\";s:4:\"slug\";s:13:\"what-the-file\";s:6:\"plugin\";s:31:\"what-the-file/what-the-file.php\";s:11:\"new_version\";s:5:\"1.5.4\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/what-the-file/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/what-the-file.1.5.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/what-the-file/assets/icon-256x256.png?rev=1223609\";s:2:\"1x\";s:66:\"https://ps.w.org/what-the-file/assets/icon-128x128.png?rev=1223609\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/what-the-file/assets/banner-772x250.jpg?rev=685200\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(111, 17, '_edit_lock', '1570202022:1'),
(118, 21, '_wp_attached_file', '2019/10/logo.png'),
(119, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:90;s:6:\"height\";i:68;s:4:\"file\";s:16:\"2019/10/logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(122, 23, '_menu_item_type', 'post_type'),
(123, 23, '_menu_item_menu_item_parent', '0'),
(124, 23, '_menu_item_object_id', '17'),
(125, 23, '_menu_item_object', 'page'),
(126, 23, '_menu_item_target', ''),
(127, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(128, 23, '_menu_item_xfn', ''),
(129, 23, '_menu_item_url', ''),
(133, 25, '_edit_last', '1'),
(134, 25, '_edit_lock', '1570195743:1'),
(135, 32, '_wp_attached_file', '2019/10/video.webm'),
(136, 32, '_wp_attachment_metadata', 'a:10:{s:7:\"bitrate\";i:249797;s:8:\"filesize\";i:518229;s:9:\"mime_type\";s:10:\"video/webm\";s:6:\"length\";i:11;s:16:\"length_formatted\";s:4:\"0:11\";s:5:\"width\";i:426;s:6:\"height\";i:240;s:10:\"fileformat\";s:4:\"webm\";s:10:\"dataformat\";s:3:\"vp8\";s:5:\"audio\";a:10:{s:10:\"dataformat\";s:6:\"vorbis\";s:11:\"sample_rate\";i:48000;s:8:\"channels\";i:2;s:8:\"language\";s:3:\"eng\";s:15:\"bits_per_sample\";i:32;s:8:\"lossless\";b:0;s:12:\"bitrate_mode\";s:3:\"vbr\";s:7:\"bitrate\";i:112000;s:11:\"channelmode\";s:6:\"stereo\";s:17:\"compression_ratio\";d:0.036458333333333336;}}'),
(137, 17, '_edit_last', '1'),
(138, 17, 'sliders_0_slide_name', 'From the Earth,<br>For the Earth.'),
(139, 17, '_sliders_0_slide_name', 'field_5d9365dd20958'),
(140, 17, 'sliders_0_button_text', 'Shop now'),
(141, 17, '_sliders_0_button_text', 'field_5d9365e820959'),
(142, 17, 'sliders_0_button_link', '/page'),
(143, 17, '_sliders_0_button_link', 'field_5d9365f02095a'),
(144, 17, 'sliders_0_image', '32'),
(145, 17, '_sliders_0_image', 'field_5d9366502095b'),
(146, 17, 'sliders', '4'),
(147, 17, '_sliders', 'field_5d93659820957'),
(148, 33, 'sliders_0_slide_name', 'From the Earth,<br>For the Earth.'),
(149, 33, '_sliders_0_slide_name', 'field_5d9365dd20958'),
(150, 33, 'sliders_0_button_text', 'Shop now'),
(151, 33, '_sliders_0_button_text', 'field_5d9365e820959'),
(152, 33, 'sliders_0_button_link', '/page'),
(153, 33, '_sliders_0_button_link', 'field_5d9365f02095a'),
(154, 33, 'sliders_0_image', '32'),
(155, 33, '_sliders_0_image', 'field_5d9366502095b'),
(156, 33, 'sliders', '1'),
(157, 33, '_sliders', 'field_5d93659820957'),
(160, 17, 'sliders_1_slide_name', 'test img'),
(161, 17, '_sliders_1_slide_name', 'field_5d9365dd20958'),
(162, 17, 'sliders_1_button_text', 'Shop now'),
(163, 17, '_sliders_1_button_text', 'field_5d9365e820959'),
(164, 17, 'sliders_1_button_link', '/page'),
(165, 17, '_sliders_1_button_link', 'field_5d9365f02095a'),
(166, 17, 'sliders_1_image', '32'),
(167, 17, '_sliders_1_image', 'field_5d9366502095b'),
(168, 35, 'sliders_0_slide_name', 'From the Earth,<br>For the Earth.'),
(169, 35, '_sliders_0_slide_name', 'field_5d9365dd20958'),
(170, 35, 'sliders_0_button_text', 'Shop now'),
(171, 35, '_sliders_0_button_text', 'field_5d9365e820959'),
(172, 35, 'sliders_0_button_link', '/page'),
(173, 35, '_sliders_0_button_link', 'field_5d9365f02095a'),
(174, 35, 'sliders_0_image', '32'),
(175, 35, '_sliders_0_image', 'field_5d9366502095b'),
(176, 35, 'sliders', '2'),
(177, 35, '_sliders', 'field_5d93659820957'),
(178, 35, 'sliders_1_slide_name', 'test img'),
(179, 35, '_sliders_1_slide_name', 'field_5d9365dd20958'),
(180, 35, 'sliders_1_button_text', 'Shop now'),
(181, 35, '_sliders_1_button_text', 'field_5d9365e820959'),
(182, 35, 'sliders_1_button_link', '/page'),
(183, 35, '_sliders_1_button_link', 'field_5d9365f02095a'),
(184, 35, 'sliders_1_image', '34'),
(185, 35, '_sliders_1_image', 'field_5d9366502095b'),
(186, 17, 'sliders_0_mime', '1'),
(187, 17, '_sliders_0_mime', 'field_5d939560c0292'),
(188, 17, 'sliders_1_mime', '1'),
(189, 17, '_sliders_1_mime', 'field_5d939560c0292'),
(190, 37, 'sliders_0_slide_name', 'From the Earth,<br>For the Earth.'),
(191, 37, '_sliders_0_slide_name', 'field_5d9365dd20958'),
(192, 37, 'sliders_0_button_text', 'Shop now'),
(193, 37, '_sliders_0_button_text', 'field_5d9365e820959'),
(194, 37, 'sliders_0_button_link', '/page'),
(195, 37, '_sliders_0_button_link', 'field_5d9365f02095a'),
(196, 37, 'sliders_0_image', '32'),
(197, 37, '_sliders_0_image', 'field_5d9366502095b'),
(198, 37, 'sliders', '2'),
(199, 37, '_sliders', 'field_5d93659820957'),
(200, 37, 'sliders_1_slide_name', 'test img'),
(201, 37, '_sliders_1_slide_name', 'field_5d9365dd20958'),
(202, 37, 'sliders_1_button_text', 'Shop now'),
(203, 37, '_sliders_1_button_text', 'field_5d9365e820959'),
(204, 37, 'sliders_1_button_link', '/page'),
(205, 37, '_sliders_1_button_link', 'field_5d9365f02095a'),
(206, 37, 'sliders_1_image', '34'),
(207, 37, '_sliders_1_image', 'field_5d9366502095b'),
(208, 37, 'sliders_0_mime', '1'),
(209, 37, '_sliders_0_mime', 'field_5d939560c0292'),
(210, 37, 'sliders_1_mime', '0'),
(211, 37, '_sliders_1_mime', 'field_5d939560c0292'),
(213, 17, 'sliders_2_slide_name', 'From the Earth,<br>For the Earth.'),
(214, 17, '_sliders_2_slide_name', 'field_5d9365dd20958'),
(215, 17, 'sliders_2_button_text', 'Shop now'),
(216, 17, '_sliders_2_button_text', 'field_5d9365e820959'),
(217, 17, 'sliders_2_button_link', '/page'),
(218, 17, '_sliders_2_button_link', 'field_5d9365f02095a'),
(219, 17, 'sliders_2_image', '32'),
(220, 17, '_sliders_2_image', 'field_5d9366502095b'),
(221, 17, 'sliders_2_mime', '1'),
(222, 17, '_sliders_2_mime', 'field_5d939560c0292'),
(223, 17, 'sliders_3_slide_name', 'test img'),
(224, 17, '_sliders_3_slide_name', 'field_5d9365dd20958'),
(225, 17, 'sliders_3_button_text', 'Shop now'),
(226, 17, '_sliders_3_button_text', 'field_5d9365e820959'),
(227, 17, 'sliders_3_button_link', '/page'),
(228, 17, '_sliders_3_button_link', 'field_5d9365f02095a'),
(229, 17, 'sliders_3_image', '32'),
(230, 17, '_sliders_3_image', 'field_5d9366502095b'),
(231, 17, 'sliders_3_mime', '1'),
(232, 17, '_sliders_3_mime', 'field_5d939560c0292'),
(233, 38, 'sliders_0_slide_name', 'From the Earth,<br>For the Earth.'),
(234, 38, '_sliders_0_slide_name', 'field_5d9365dd20958'),
(235, 38, 'sliders_0_button_text', 'Shop now'),
(236, 38, '_sliders_0_button_text', 'field_5d9365e820959'),
(237, 38, 'sliders_0_button_link', '/page'),
(238, 38, '_sliders_0_button_link', 'field_5d9365f02095a'),
(239, 38, 'sliders_0_image', '32'),
(240, 38, '_sliders_0_image', 'field_5d9366502095b'),
(241, 38, 'sliders', '4'),
(242, 38, '_sliders', 'field_5d93659820957'),
(243, 38, 'sliders_1_slide_name', 'test img'),
(244, 38, '_sliders_1_slide_name', 'field_5d9365dd20958'),
(245, 38, 'sliders_1_button_text', 'Shop now'),
(246, 38, '_sliders_1_button_text', 'field_5d9365e820959'),
(247, 38, 'sliders_1_button_link', '/page'),
(248, 38, '_sliders_1_button_link', 'field_5d9365f02095a'),
(249, 38, 'sliders_1_image', '32'),
(250, 38, '_sliders_1_image', 'field_5d9366502095b'),
(251, 38, 'sliders_0_mime', '1'),
(252, 38, '_sliders_0_mime', 'field_5d939560c0292'),
(253, 38, 'sliders_1_mime', '1'),
(254, 38, '_sliders_1_mime', 'field_5d939560c0292'),
(255, 38, 'sliders_2_slide_name', 'From the Earth,<br>For the Earth.'),
(256, 38, '_sliders_2_slide_name', 'field_5d9365dd20958'),
(257, 38, 'sliders_2_button_text', 'Shop now'),
(258, 38, '_sliders_2_button_text', 'field_5d9365e820959'),
(259, 38, 'sliders_2_button_link', '/page'),
(260, 38, '_sliders_2_button_link', 'field_5d9365f02095a'),
(261, 38, 'sliders_2_image', '32'),
(262, 38, '_sliders_2_image', 'field_5d9366502095b'),
(263, 38, 'sliders_2_mime', '1'),
(264, 38, '_sliders_2_mime', 'field_5d939560c0292'),
(265, 38, 'sliders_3_slide_name', 'test img'),
(266, 38, '_sliders_3_slide_name', 'field_5d9365dd20958'),
(267, 38, 'sliders_3_button_text', 'Shop now'),
(268, 38, '_sliders_3_button_text', 'field_5d9365e820959'),
(269, 38, 'sliders_3_button_link', '/page'),
(270, 38, '_sliders_3_button_link', 'field_5d9365f02095a'),
(271, 38, 'sliders_3_image', '32'),
(272, 38, '_sliders_3_image', 'field_5d9366502095b'),
(273, 38, 'sliders_3_mime', '1'),
(274, 38, '_sliders_3_mime', 'field_5d939560c0292'),
(279, 40, '_edit_lock', '1570526885:1'),
(282, 43, '_edit_lock', '1570539623:1'),
(285, 46, '_edit_lock', '1570539619:1'),
(288, 49, '_edit_lock', '1570539615:1'),
(291, 52, '_edit_lock', '1570524129:1'),
(301, 40, '_edit_last', '1'),
(303, 40, 'button_read_more', '1'),
(304, 40, '_button_read_more', 'field_5d94698f7c1e9'),
(305, 56, 'button_read_more', '1'),
(306, 56, '_button_read_more', 'field_5d94698f7c1e9'),
(308, 43, '_edit_last', '1'),
(310, 43, 'button_read_more', '1'),
(311, 43, '_button_read_more', 'field_5d94698f7c1e9'),
(312, 57, 'button_read_more', '1'),
(313, 57, '_button_read_more', 'field_5d94698f7c1e9'),
(315, 46, '_edit_last', '1'),
(317, 46, 'button_read_more', 'true'),
(318, 46, '_button_read_more', 'field_5d94698f7c1e9'),
(319, 58, 'button_read_more', 'true'),
(320, 58, '_button_read_more', 'field_5d94698f7c1e9'),
(331, 59, '_edit_last', '1'),
(332, 59, '_edit_lock', '1570014370:1'),
(335, 46, 'show_more_but', '0'),
(336, 46, '_show_more_but', 'field_5d946df24b038'),
(337, 61, 'button_read_more', 'true'),
(338, 61, '_button_read_more', 'field_5d94698f7c1e9'),
(339, 61, 'show_more_but', '1'),
(340, 61, '_show_more_but', 'field_5d946df24b038'),
(343, 40, 'show_more_but', '1'),
(344, 40, '_show_more_but', 'field_5d946df24b038'),
(345, 62, 'button_read_more', '1'),
(346, 62, '_button_read_more', 'field_5d94698f7c1e9'),
(347, 62, 'show_more_but', '1'),
(348, 62, '_show_more_but', 'field_5d946df24b038'),
(351, 63, 'button_read_more', 'true'),
(352, 63, '_button_read_more', 'field_5d94698f7c1e9'),
(353, 63, 'show_more_but', '0'),
(354, 63, '_show_more_but', 'field_5d946df24b038'),
(355, 72, '_edit_last', '1'),
(356, 72, '_edit_lock', '1570179679:1'),
(357, 75, '_wp_attached_file', '2019/10/img-placeholder-canabis.png'),
(358, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:800;s:4:\"file\";s:35:\"2019/10/img-placeholder-canabis.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"img-placeholder-canabis-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"img-placeholder-canabis-270x300.png\";s:5:\"width\";i:270;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(359, 76, '_wp_attached_file', '2019/10/img-placeholder-accessories.png'),
(360, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:800;s:4:\"file\";s:39:\"2019/10/img-placeholder-accessories.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"img-placeholder-accessories-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"img-placeholder-accessories-270x300.png\";s:5:\"width\";i:270;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(361, 77, '_edit_last', '1'),
(362, 77, '_edit_lock', '1570174522:1'),
(365, 74, '_edit_last', '1'),
(366, 74, '_edit_lock', '1570174517:1'),
(381, 85, '_edit_lock', '1570437684:1'),
(382, 87, '_menu_item_type', 'post_type'),
(383, 87, '_menu_item_menu_item_parent', '0'),
(384, 87, '_menu_item_object_id', '85'),
(385, 87, '_menu_item_object', 'page'),
(386, 87, '_menu_item_target', ''),
(387, 87, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(388, 87, '_menu_item_xfn', ''),
(389, 87, '_menu_item_url', ''),
(391, 88, '_edit_lock', '1570444983:1'),
(392, 90, '_menu_item_type', 'post_type'),
(393, 90, '_menu_item_menu_item_parent', '0'),
(394, 90, '_menu_item_object_id', '88'),
(395, 90, '_menu_item_object', 'page'),
(396, 90, '_menu_item_target', ''),
(397, 90, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(398, 90, '_menu_item_xfn', ''),
(399, 90, '_menu_item_url', ''),
(414, 94, '_edit_last', '1'),
(415, 94, '_edit_lock', '1570613523:1'),
(416, 100, '_edit_last', '1'),
(417, 100, 'big_img_prod', '103'),
(418, 100, '_big_img_prod', 'field_5d95a484d94ea'),
(419, 100, 'gal_imgs_prod', ''),
(420, 100, '_gal_imgs_prod', 'field_5d95a4ecd94ec'),
(421, 100, '_edit_lock', '1570178406:1'),
(422, 74, 'big_img_prod', '76'),
(423, 74, '_big_img_prod', 'field_5d95a484d94ea'),
(424, 74, 'gal_imgs_prod', ''),
(425, 74, '_gal_imgs_prod', 'field_5d95a4ecd94ec'),
(426, 77, 'big_img_prod', '101'),
(427, 77, '_big_img_prod', 'field_5d95a484d94ea'),
(428, 77, 'gal_imgs_prod', ''),
(429, 77, '_gal_imgs_prod', 'field_5d95a4ecd94ec'),
(430, 101, '_wp_attached_file', '2019/10/img-placeholder-canabis2.png'),
(431, 101, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:800;s:4:\"file\";s:36:\"2019/10/img-placeholder-canabis2.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"img-placeholder-canabis2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"img-placeholder-canabis2-270x300.png\";s:5:\"width\";i:270;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(434, 103, '_wp_attached_file', '2019/10/img-placeholder-canabis3.png'),
(435, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:800;s:4:\"file\";s:36:\"2019/10/img-placeholder-canabis3.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"img-placeholder-canabis3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"img-placeholder-canabis3-270x300.png\";s:5:\"width\";i:270;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(436, 100, 'intent_level', 'Pause'),
(437, 100, '_intent_level', 'field_5d95bf5dc28be'),
(438, 100, 'mind_body', 'Both'),
(439, 100, '_mind_body', 'field_5d95bf65c28bf'),
(440, 100, 'desc', ''),
(441, 100, '_desc', 'field_5d95bf84c28c0'),
(442, 100, 'thc', 'THC 12% - 22%'),
(443, 100, '_thc', 'field_5d95bfa2c28c1'),
(444, 100, 'cbd', 'CBD 0% - 0.01%'),
(445, 100, '_cbd', 'field_5d95bfa8c28c2'),
(446, 100, 'about', 'Cannabis buds are typically broken up with a grinder and rolled into a joint, packed into a pipe, bong or vaporizer.'),
(447, 100, '_about', 'field_5d95bfb6c28c3'),
(448, 100, 'outset', 'Seconds to minutes'),
(449, 100, '_outset', 'field_5d95bfdbc28c4'),
(450, 100, 'duration', 'Up to 6 hours'),
(451, 100, '_duration', 'field_5d95bfe4c28c5'),
(452, 100, 'before_button_text', 'Terpene Notes\r\nCymene: Spicy and herbal\r\n\r\nLinalool: Floral and sweet'),
(453, 100, '_before_button_text', 'field_5d95c060c28c6'),
(454, 100, 'price_usd', ''),
(455, 100, '_price_usd', 'field_5d95c117ef9b2'),
(456, 100, 'price_eur', ''),
(457, 100, '_price_eur', 'field_5d95c14eef9b3'),
(458, 74, 'intent_level', ''),
(459, 74, '_intent_level', 'field_5d95bf5dc28be'),
(460, 74, 'mind_body', ''),
(461, 74, '_mind_body', 'field_5d95bf65c28bf'),
(462, 74, 'thc', 'THC 10mg/ml'),
(463, 74, '_thc', 'field_5d95bfa2c28c1'),
(464, 74, 'cbd', 'CBD 0mg/ml'),
(465, 74, '_cbd', 'field_5d95bfa8c28c2'),
(466, 74, 'about', 'A few drops under the tongue or mixed into a smoothie, oils are precise in their THC / CBD content.'),
(467, 74, '_about', 'field_5d95bfb6c28c3'),
(468, 74, 'outset', ''),
(469, 74, '_outset', 'field_5d95bfdbc28c4'),
(470, 74, 'duration', ''),
(471, 74, '_duration', 'field_5d95bfe4c28c5'),
(472, 74, 'before_button_text', ''),
(473, 74, '_before_button_text', 'field_5d95c060c28c6'),
(474, 74, 'price_usd', ''),
(475, 74, '_price_usd', 'field_5d95c117ef9b2'),
(476, 74, 'price_eur', ''),
(477, 74, '_price_eur', 'field_5d95c14eef9b3'),
(478, 77, 'intent_level', ''),
(479, 77, '_intent_level', 'field_5d95bf5dc28be'),
(480, 77, 'mind_body', ''),
(481, 77, '_mind_body', 'field_5d95bf65c28bf'),
(482, 77, 'thc', ''),
(483, 77, '_thc', 'field_5d95bfa2c28c1'),
(484, 77, 'cbd', ''),
(485, 77, '_cbd', 'field_5d95bfa8c28c2'),
(486, 77, 'about', 'Vape: See accompanying User Guide for complete instructions for using your PAX, or visit their how-to guide.\r\n\r\nClean: Clean inserts with rubbing alcohol, clean mouthpiece by wiping with a cloth and a couple drops of alcohol'),
(487, 77, '_about', 'field_5d95bfb6c28c3'),
(488, 77, 'outset', ''),
(489, 77, '_outset', 'field_5d95bfdbc28c4'),
(490, 77, 'duration', ''),
(491, 77, '_duration', 'field_5d95bfe4c28c5'),
(492, 77, 'before_button_text', ''),
(493, 77, '_before_button_text', 'field_5d95c060c28c6'),
(494, 77, 'price_usd', ''),
(495, 77, '_price_usd', 'field_5d95c117ef9b2'),
(496, 77, 'price_eur', ''),
(497, 77, '_price_eur', 'field_5d95c14eef9b3'),
(507, 120, '_menu_item_type', 'post_type'),
(508, 120, '_menu_item_menu_item_parent', '0'),
(509, 120, '_menu_item_object_id', '88'),
(510, 120, '_menu_item_object', 'page'),
(511, 120, '_menu_item_target', ''),
(512, 120, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(513, 120, '_menu_item_xfn', ''),
(514, 120, '_menu_item_url', ''),
(516, 121, '_menu_item_type', 'post_type'),
(517, 121, '_menu_item_menu_item_parent', '0'),
(518, 121, '_menu_item_object_id', '85'),
(519, 121, '_menu_item_object', 'page'),
(520, 121, '_menu_item_target', ''),
(521, 121, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(522, 121, '_menu_item_xfn', ''),
(523, 121, '_menu_item_url', ''),
(525, 122, '_menu_item_type', 'post_type'),
(526, 122, '_menu_item_menu_item_parent', '0'),
(527, 122, '_menu_item_object_id', '17'),
(528, 122, '_menu_item_object', 'page'),
(529, 122, '_menu_item_target', ''),
(530, 122, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(531, 122, '_menu_item_xfn', ''),
(532, 122, '_menu_item_url', ''),
(534, 123, '_menu_item_type', 'custom'),
(535, 123, '_menu_item_menu_item_parent', '0'),
(536, 123, '_menu_item_object_id', '123'),
(537, 123, '_menu_item_object', 'custom'),
(538, 123, '_menu_item_target', ''),
(539, 123, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(540, 123, '_menu_item_xfn', ''),
(541, 123, '_menu_item_url', '/'),
(543, 124, '_menu_item_type', 'custom'),
(544, 124, '_menu_item_menu_item_parent', '0'),
(545, 124, '_menu_item_object_id', '124'),
(546, 124, '_menu_item_object', 'custom'),
(547, 124, '_menu_item_target', ''),
(548, 124, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(549, 124, '_menu_item_xfn', ''),
(550, 124, '_menu_item_url', '/'),
(552, 125, '_menu_item_type', 'custom'),
(553, 125, '_menu_item_menu_item_parent', '0'),
(554, 125, '_menu_item_object_id', '125'),
(555, 125, '_menu_item_object', 'custom'),
(556, 125, '_menu_item_target', ''),
(557, 125, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(558, 125, '_menu_item_xfn', ''),
(559, 125, '_menu_item_url', '/'),
(561, 126, '_menu_item_type', 'custom'),
(562, 126, '_menu_item_menu_item_parent', '0'),
(563, 126, '_menu_item_object_id', '126'),
(564, 126, '_menu_item_object', 'custom'),
(565, 126, '_menu_item_target', ''),
(566, 126, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(567, 126, '_menu_item_xfn', ''),
(568, 126, '_menu_item_url', '/'),
(579, 128, '_menu_item_type', 'custom'),
(580, 128, '_menu_item_menu_item_parent', '0'),
(581, 128, '_menu_item_object_id', '128'),
(582, 128, '_menu_item_object', 'custom'),
(583, 128, '_menu_item_target', ''),
(584, 128, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(585, 128, '_menu_item_xfn', ''),
(586, 128, '_menu_item_url', '/'),
(588, 129, '_menu_item_type', 'custom'),
(589, 129, '_menu_item_menu_item_parent', '0'),
(590, 129, '_menu_item_object_id', '129'),
(591, 129, '_menu_item_object', 'custom'),
(592, 129, '_menu_item_target', ''),
(593, 129, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(594, 129, '_menu_item_xfn', ''),
(595, 129, '_menu_item_url', '/'),
(597, 130, '_menu_item_type', 'custom'),
(598, 130, '_menu_item_menu_item_parent', '0'),
(599, 130, '_menu_item_object_id', '130'),
(600, 130, '_menu_item_object', 'custom'),
(601, 130, '_menu_item_target', ''),
(602, 130, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(603, 130, '_menu_item_xfn', ''),
(604, 130, '_menu_item_url', '/'),
(606, 131, '_menu_item_type', 'custom'),
(607, 131, '_menu_item_menu_item_parent', '0'),
(608, 131, '_menu_item_object_id', '131'),
(609, 131, '_menu_item_object', 'custom'),
(610, 131, '_menu_item_target', ''),
(611, 131, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(612, 131, '_menu_item_xfn', ''),
(613, 131, '_menu_item_url', '/'),
(615, 132, '_menu_item_type', 'custom'),
(616, 132, '_menu_item_menu_item_parent', '0'),
(617, 132, '_menu_item_object_id', '132'),
(618, 132, '_menu_item_object', 'custom'),
(619, 132, '_menu_item_target', ''),
(620, 132, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(621, 132, '_menu_item_xfn', ''),
(622, 132, '_menu_item_url', '/'),
(687, 142, '_edit_last', '1'),
(688, 142, '_edit_lock', '1570549132:1'),
(689, 142, 'big_img_prod', '103'),
(690, 142, '_big_img_prod', 'field_5d95a484d94ea'),
(691, 142, 'gal_imgs_prod', ''),
(692, 142, '_gal_imgs_prod', 'field_5d95a4ecd94ec'),
(693, 142, 'intent_level', ''),
(694, 142, '_intent_level', 'field_5d95bf5dc28be'),
(695, 142, 'mind_body', ''),
(696, 142, '_mind_body', 'field_5d95bf65c28bf'),
(697, 142, 'thc', ''),
(698, 142, '_thc', 'field_5d95bfa2c28c1'),
(699, 142, 'cbd', ''),
(700, 142, '_cbd', 'field_5d95bfa8c28c2'),
(701, 142, 'about', 'Vape: See accompanying User Guide for complete instructions for using your PAX, or visit their how-to guide.\r\n\r\nClean: Clean inserts with rubbing alcohol, clean mouthpiece by wiping with a cloth and a couple drops of alcohol'),
(702, 142, '_about', 'field_5d95bfb6c28c3'),
(703, 142, 'outset', ''),
(704, 142, '_outset', 'field_5d95bfdbc28c4'),
(705, 142, 'duration', ''),
(706, 142, '_duration', 'field_5d95bfe4c28c5'),
(707, 142, 'before_button_text', ''),
(708, 142, '_before_button_text', 'field_5d95c060c28c6'),
(709, 142, 'price_usd', ''),
(710, 142, '_price_usd', 'field_5d95c117ef9b2'),
(711, 142, 'price_eur', ''),
(712, 142, '_price_eur', 'field_5d95c14eef9b3'),
(713, 145, '_edit_last', '1'),
(714, 145, '_edit_lock', '1570548516:1'),
(715, 145, 'big_img_prod', '76'),
(716, 145, '_big_img_prod', 'field_5d95a484d94ea'),
(717, 145, 'gal_imgs_prod', ''),
(718, 145, '_gal_imgs_prod', 'field_5d95a4ecd94ec'),
(719, 145, 'intent_level', ''),
(720, 145, '_intent_level', 'field_5d95bf5dc28be'),
(721, 145, 'mind_body', ''),
(722, 145, '_mind_body', 'field_5d95bf65c28bf'),
(723, 145, 'thc', 'THC 10mg/ml'),
(724, 145, '_thc', 'field_5d95bfa2c28c1'),
(725, 145, 'cbd', 'CBD 0mg/ml'),
(726, 145, '_cbd', 'field_5d95bfa8c28c2'),
(727, 145, 'about', 'A few drops under the tongue or mixed into a smoothie, oils are precise in their THC / CBD content.'),
(728, 145, '_about', 'field_5d95bfb6c28c3'),
(729, 145, 'outset', ''),
(730, 145, '_outset', 'field_5d95bfdbc28c4'),
(731, 145, 'duration', ''),
(732, 145, '_duration', 'field_5d95bfe4c28c5'),
(733, 145, 'before_button_text', ''),
(734, 145, '_before_button_text', 'field_5d95c060c28c6'),
(735, 145, 'price_usd', ''),
(736, 145, '_price_usd', 'field_5d95c117ef9b2'),
(737, 145, 'price_eur', ''),
(738, 145, '_price_eur', 'field_5d95c14eef9b3'),
(739, 146, '_edit_last', '1'),
(740, 146, '_edit_lock', '1570612581:1'),
(741, 146, 'big_img_prod', '101'),
(742, 146, '_big_img_prod', 'field_5d95a484d94ea'),
(743, 146, 'gal_imgs_prod', '5'),
(744, 146, '_gal_imgs_prod', 'field_5d95a4ecd94ec'),
(745, 146, 'intent_level', 'Pause'),
(746, 146, '_intent_level', 'field_5d95bf5dc28be'),
(747, 146, 'mind_body', 'Both'),
(748, 146, '_mind_body', 'field_5d95bf65c28bf'),
(749, 146, 'thc', 'THC 12% - 22%'),
(750, 146, '_thc', 'field_5d95bfa2c28c1'),
(751, 146, 'cbd', 'CBD 0% - 0.01%'),
(752, 146, '_cbd', 'field_5d95bfa8c28c2'),
(753, 146, 'about', 'Cannabis buds are typically broken up with a grinder and rolled into a joint, packed into a pipe, bong or vaporizer.'),
(754, 146, '_about', 'field_5d95bfb6c28c3'),
(755, 146, 'outset', 'Seconds to minutes'),
(756, 146, '_outset', 'field_5d95bfdbc28c4'),
(757, 146, 'duration', 'Up to 6 hours'),
(758, 146, '_duration', 'field_5d95bfe4c28c5'),
(759, 146, 'before_button_text', 'Terpene Notes\r\nCymene: Spicy and herbal\r\n\r\nLinalool: Floral and sweet'),
(760, 146, '_before_button_text', 'field_5d95c060c28c6'),
(761, 146, 'price_usd', 'From $50.00 CAD'),
(762, 146, '_price_usd', 'field_5d95c117ef9b2'),
(763, 146, 'price_eur', 'From $50.00 CAD'),
(764, 146, '_price_eur', 'field_5d95c14eef9b3'),
(777, 148, '_menu_item_type', 'custom'),
(778, 148, '_menu_item_menu_item_parent', '0'),
(779, 148, '_menu_item_object_id', '148'),
(780, 148, '_menu_item_object', 'custom'),
(781, 148, '_menu_item_target', ''),
(782, 148, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(783, 148, '_menu_item_xfn', ''),
(784, 148, '_menu_item_url', '/products'),
(786, 149, '_edit_last', '1'),
(787, 149, '_edit_lock', '1570198195:1'),
(788, 149, 'big_img_prod', ''),
(789, 149, '_big_img_prod', 'field_5d95a484d94ea'),
(790, 149, 'gal_imgs_prod', ''),
(791, 149, '_gal_imgs_prod', 'field_5d95a4ecd94ec'),
(792, 149, 'intent_level', ''),
(793, 149, '_intent_level', 'field_5d95bf5dc28be'),
(794, 149, 'mind_body', ''),
(795, 149, '_mind_body', 'field_5d95bf65c28bf'),
(796, 149, 'thc', ''),
(797, 149, '_thc', 'field_5d95bfa2c28c1'),
(798, 149, 'cbd', ''),
(799, 149, '_cbd', 'field_5d95bfa8c28c2'),
(800, 149, 'about', ''),
(801, 149, '_about', 'field_5d95bfb6c28c3'),
(802, 149, 'outset', ''),
(803, 149, '_outset', 'field_5d95bfdbc28c4'),
(804, 149, 'duration', ''),
(805, 149, '_duration', 'field_5d95bfe4c28c5'),
(806, 149, 'before_button_text', ''),
(807, 149, '_before_button_text', 'field_5d95c060c28c6'),
(808, 149, 'price_usd', 'From $42.00 CAD'),
(809, 149, '_price_usd', 'field_5d95c117ef9b2'),
(810, 149, 'price_eur', 'From $42.00 CAD'),
(811, 149, '_price_eur', 'field_5d95c14eef9b3'),
(812, 150, '_edit_last', '1'),
(813, 150, 'big_img_prod', ''),
(814, 150, '_big_img_prod', 'field_5d95a484d94ea'),
(815, 150, 'gal_imgs_prod', ''),
(816, 150, '_gal_imgs_prod', 'field_5d95a4ecd94ec'),
(817, 150, 'intent_level', ''),
(818, 150, '_intent_level', 'field_5d95bf5dc28be'),
(819, 150, 'mind_body', ''),
(820, 150, '_mind_body', 'field_5d95bf65c28bf'),
(821, 150, 'thc', ''),
(822, 150, '_thc', 'field_5d95bfa2c28c1'),
(823, 150, 'cbd', ''),
(824, 150, '_cbd', 'field_5d95bfa8c28c2'),
(825, 150, 'about', ''),
(826, 150, '_about', 'field_5d95bfb6c28c3'),
(827, 150, 'outset', ''),
(828, 150, '_outset', 'field_5d95bfdbc28c4'),
(829, 150, 'duration', ''),
(830, 150, '_duration', 'field_5d95bfe4c28c5'),
(831, 150, 'before_button_text', ''),
(832, 150, '_before_button_text', 'field_5d95c060c28c6'),
(833, 150, 'price_usd', 'From $13.00 CAD'),
(834, 150, '_price_usd', 'field_5d95c117ef9b2'),
(835, 150, 'price_eur', 'From $13.00 CAD'),
(836, 150, '_price_eur', 'field_5d95c14eef9b3'),
(837, 150, '_edit_lock', '1570197577:1'),
(838, 151, '_edit_last', '1'),
(839, 151, 'big_img_prod', ''),
(840, 151, '_big_img_prod', 'field_5d95a484d94ea'),
(841, 151, 'gal_imgs_prod', ''),
(842, 151, '_gal_imgs_prod', 'field_5d95a4ecd94ec'),
(843, 151, 'intent_level', ''),
(844, 151, '_intent_level', 'field_5d95bf5dc28be'),
(845, 151, 'mind_body', ''),
(846, 151, '_mind_body', 'field_5d95bf65c28bf'),
(847, 151, 'thc', ''),
(848, 151, '_thc', 'field_5d95bfa2c28c1'),
(849, 151, 'cbd', ''),
(850, 151, '_cbd', 'field_5d95bfa8c28c2'),
(851, 151, 'about', ''),
(852, 151, '_about', 'field_5d95bfb6c28c3'),
(853, 151, 'outset', ''),
(854, 151, '_outset', 'field_5d95bfdbc28c4'),
(855, 151, 'duration', ''),
(856, 151, '_duration', 'field_5d95bfe4c28c5'),
(857, 151, 'before_button_text', ''),
(858, 151, '_before_button_text', 'field_5d95c060c28c6'),
(859, 151, 'price_usd', 'From $13.00 CAD'),
(860, 151, '_price_usd', 'field_5d95c117ef9b2'),
(861, 151, 'price_eur', 'From $13.00 CAD'),
(862, 151, '_price_eur', 'field_5d95c14eef9b3'),
(863, 151, '_edit_lock', '1570197562:1'),
(864, 152, '_edit_last', '1'),
(865, 152, '_edit_lock', '1570197549:1'),
(866, 152, 'big_img_prod', ''),
(867, 152, '_big_img_prod', 'field_5d95a484d94ea'),
(868, 152, 'gal_imgs_prod', ''),
(869, 152, '_gal_imgs_prod', 'field_5d95a4ecd94ec'),
(870, 152, 'intent_level', ''),
(871, 152, '_intent_level', 'field_5d95bf5dc28be'),
(872, 152, 'mind_body', ''),
(873, 152, '_mind_body', 'field_5d95bf65c28bf'),
(874, 152, 'thc', ''),
(875, 152, '_thc', 'field_5d95bfa2c28c1'),
(876, 152, 'cbd', ''),
(877, 152, '_cbd', 'field_5d95bfa8c28c2'),
(878, 152, 'about', ''),
(879, 152, '_about', 'field_5d95bfb6c28c3'),
(880, 152, 'outset', ''),
(881, 152, '_outset', 'field_5d95bfdbc28c4'),
(882, 152, 'duration', ''),
(883, 152, '_duration', 'field_5d95bfe4c28c5'),
(884, 152, 'before_button_text', ''),
(885, 152, '_before_button_text', 'field_5d95c060c28c6'),
(886, 152, 'price_usd', 'From $13.00 CAD'),
(887, 152, '_price_usd', 'field_5d95c117ef9b2'),
(888, 152, 'price_eur', 'From $13.00 CAD'),
(889, 152, '_price_eur', 'field_5d95c14eef9b3'),
(890, 153, '_edit_last', '1'),
(891, 153, '_edit_lock', '1570197536:1'),
(892, 153, 'big_img_prod', ''),
(893, 153, '_big_img_prod', 'field_5d95a484d94ea'),
(894, 153, 'gal_imgs_prod', ''),
(895, 153, '_gal_imgs_prod', 'field_5d95a4ecd94ec'),
(896, 153, 'intent_level', ''),
(897, 153, '_intent_level', 'field_5d95bf5dc28be'),
(898, 153, 'mind_body', ''),
(899, 153, '_mind_body', 'field_5d95bf65c28bf'),
(900, 153, 'thc', ''),
(901, 153, '_thc', 'field_5d95bfa2c28c1'),
(902, 153, 'cbd', ''),
(903, 153, '_cbd', 'field_5d95bfa8c28c2'),
(904, 153, 'about', ''),
(905, 153, '_about', 'field_5d95bfb6c28c3'),
(906, 153, 'outset', ''),
(907, 153, '_outset', 'field_5d95bfdbc28c4'),
(908, 153, 'duration', ''),
(909, 153, '_duration', 'field_5d95bfe4c28c5'),
(910, 153, 'before_button_text', ''),
(911, 153, '_before_button_text', 'field_5d95c060c28c6'),
(912, 153, 'price_usd', 'From $13.00 CAD'),
(913, 153, '_price_usd', 'field_5d95c117ef9b2'),
(914, 153, 'price_eur', 'From $13.00 CAD'),
(915, 153, '_price_eur', 'field_5d95c14eef9b3'),
(916, 154, '_edit_last', '1'),
(917, 154, '_edit_lock', '1570197524:1'),
(918, 154, 'big_img_prod', ''),
(919, 154, '_big_img_prod', 'field_5d95a484d94ea'),
(920, 154, 'gal_imgs_prod', ''),
(921, 154, '_gal_imgs_prod', 'field_5d95a4ecd94ec'),
(922, 154, 'intent_level', ''),
(923, 154, '_intent_level', 'field_5d95bf5dc28be'),
(924, 154, 'mind_body', ''),
(925, 154, '_mind_body', 'field_5d95bf65c28bf'),
(926, 154, 'thc', ''),
(927, 154, '_thc', 'field_5d95bfa2c28c1'),
(928, 154, 'cbd', ''),
(929, 154, '_cbd', 'field_5d95bfa8c28c2'),
(930, 154, 'about', ''),
(931, 154, '_about', 'field_5d95bfb6c28c3'),
(932, 154, 'outset', ''),
(933, 154, '_outset', 'field_5d95bfdbc28c4'),
(934, 154, 'duration', ''),
(935, 154, '_duration', 'field_5d95bfe4c28c5'),
(936, 154, 'before_button_text', ''),
(937, 154, '_before_button_text', 'field_5d95c060c28c6'),
(938, 154, 'price_usd', 'From $13.00 CAD'),
(939, 154, '_price_usd', 'field_5d95c117ef9b2'),
(940, 154, 'price_eur', 'From $13.00 CAD'),
(941, 154, '_price_eur', 'field_5d95c14eef9b3'),
(942, 155, '_edit_last', '1'),
(943, 155, '_edit_lock', '1574843398:1'),
(944, 155, 'big_img_prod', ''),
(945, 155, '_big_img_prod', 'field_5d95a484d94ea'),
(946, 155, 'gal_imgs_prod', ''),
(947, 155, '_gal_imgs_prod', 'field_5d95a4ecd94ec'),
(948, 155, 'intent_level', ''),
(949, 155, '_intent_level', 'field_5d95bf5dc28be'),
(950, 155, 'mind_body', ''),
(951, 155, '_mind_body', 'field_5d95bf65c28bf'),
(952, 155, 'thc', ''),
(953, 155, '_thc', 'field_5d95bfa2c28c1'),
(954, 155, 'cbd', ''),
(955, 155, '_cbd', 'field_5d95bfa8c28c2'),
(956, 155, 'about', ''),
(957, 155, '_about', 'field_5d95bfb6c28c3'),
(958, 155, 'outset', ''),
(959, 155, '_outset', 'field_5d95bfdbc28c4'),
(960, 155, 'duration', ''),
(961, 155, '_duration', 'field_5d95bfe4c28c5'),
(962, 155, 'before_button_text', ''),
(963, 155, '_before_button_text', 'field_5d95c060c28c6'),
(964, 155, 'price_usd', 'From $13.00 CAD'),
(965, 155, '_price_usd', 'field_5d95c117ef9b2'),
(966, 155, 'price_eur', 'From $42.00 CAD'),
(967, 155, '_price_eur', 'field_5d95c14eef9b3'),
(968, 156, '_wp_attached_file', '2019/10/prod-img.png'),
(969, 156, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:20:\"2019/10/prod-img.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"prod-img-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(970, 155, '_thumbnail_id', '156'),
(971, 154, '_thumbnail_id', '156'),
(972, 153, '_thumbnail_id', '156'),
(973, 152, '_thumbnail_id', '156'),
(974, 151, '_thumbnail_id', '156'),
(975, 150, '_thumbnail_id', '156'),
(976, 149, '_thumbnail_id', '156'),
(977, 146, '_thumbnail_id', '156'),
(979, 85, '_wp_page_template', 'default'),
(980, 150, '_last_viewed', '2019-10-09 12:59:23'),
(981, 149, '_last_viewed', '2019-10-07 11:11:14'),
(982, 146, '_last_viewed', '2019-10-10 12:45:58'),
(983, 155, '_last_viewed', '2019-10-08 18:22:57'),
(984, 85, '_edit_last', '1'),
(985, 158, '_form', '[text* text-193 class:cont-inpup__name placeholder \"Name\"]\n<div class=\"form-group__inputs\">[email* email-6 class:cont-inpup__email placeholder \"Email\"]\n[tel tel-607 class:cont-input__phome placeholder \"Phone\"]</div>\n[textarea textarea-493 class:cont-input__text placeholder \"Message\"]\n[submit \"Send\"]'),
(986, 158, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:22:\"kaban \"[your-subject]\"\";s:6:\"sender\";s:23:\"kaban <wordpress@kaban>\";s:9:\"recipient\";s:16:\"satur.75@ukr.net\";s:4:\"body\";s:180:\"От: [your-name] <[your-email]>\nТема: [your-subject]\n\nСообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта kaban (http://kaban)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(987, 158, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:22:\"kaban \"[your-subject]\"\";s:6:\"sender\";s:23:\"kaban <wordpress@kaban>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:121:\"Сообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта kaban (http://kaban)\";s:18:\"additional_headers\";s:26:\"Reply-To: satur.75@ukr.net\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(988, 158, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:92:\"Спасибо за Ваше сообщение. Оно успешно отправлено.\";s:12:\"mail_sent_ng\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:16:\"validation_error\";s:180:\"Одно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\";s:4:\"spam\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:12:\"accept_terms\";s:132:\"Вы должны принять условия и положения перед отправкой вашего сообщения.\";s:16:\"invalid_required\";s:60:\"Поле обязательно для заполнения.\";s:16:\"invalid_too_long\";s:39:\"Поле слишком длинное.\";s:17:\"invalid_too_short\";s:41:\"Поле слишком короткое.\";s:12:\"invalid_date\";s:45:\"Формат даты некорректен.\";s:14:\"date_too_early\";s:74:\"Введённая дата слишком далеко в прошлом.\";s:13:\"date_too_late\";s:74:\"Введённая дата слишком далеко в будущем.\";s:13:\"upload_failed\";s:90:\"При загрузке файла произошла неизвестная ошибка.\";s:24:\"upload_file_type_invalid\";s:81:\"Вам не разрешено загружать файлы этого типа.\";s:21:\"upload_file_too_large\";s:39:\"Файл слишком большой.\";s:23:\"upload_failed_php_error\";s:67:\"При загрузке файла произошла ошибка.\";s:14:\"invalid_number\";s:47:\"Формат числа некорректен.\";s:16:\"number_too_small\";s:68:\"Число меньше минимально допустимого.\";s:16:\"number_too_large\";s:70:\"Число больше максимально допустимого.\";s:23:\"quiz_answer_not_correct\";s:69:\"Неверный ответ на проверочный вопрос.\";s:17:\"captcha_not_match\";s:35:\"Код введен неверно.\";s:13:\"invalid_email\";s:62:\"Неверно введён электронный адрес.\";s:11:\"invalid_url\";s:53:\"Введён некорректный URL адрес.\";s:11:\"invalid_tel\";s:70:\"Введён некорректный телефонный номер.\";}'),
(989, 158, '_additional_settings', ''),
(990, 158, '_locale', 'ru_RU'),
(992, 88, '_wp_page_template', 'Contacts.php'),
(993, 158, '_config_errors', 'a:2:{s:11:\"mail.sender\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:0:\"\";s:6:\"params\";a:0:{}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:125:\"Был использован некорректный синтаксис почтового адреса в поле %name%.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(994, 159, '_edit_lock', '1570452329:1'),
(995, 159, '_wp_page_template', 'Find-Us.php'),
(996, 162, '_menu_item_type', 'post_type'),
(997, 162, '_menu_item_menu_item_parent', '0'),
(998, 162, '_menu_item_object_id', '159'),
(999, 162, '_menu_item_object', 'page'),
(1000, 162, '_menu_item_target', ''),
(1001, 162, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1002, 162, '_menu_item_xfn', ''),
(1003, 162, '_menu_item_url', ''),
(1005, 163, '_edit_last', '1'),
(1006, 163, '_edit_lock', '1570444836:1'),
(1007, 159, '_edit_last', '1'),
(1008, 159, 'map', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15931.866342379228!2d-74.02603007980333!3d40.64631281226536!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25aac76e59f3f%3A0x9addff4fe5b98fb6!2zMTQwIDU4dGggU3QgYmxkZyBiLTdnLCBCcm9va2x5biwgTlkgMTEyMjAsINCh0KjQkA!5e0!3m2!1sru!2sua!4v1570444766750!5m2!1sru!2sua\" width=\"100%\" height=\"800px\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>'),
(1009, 159, '_map', 'field_5d9b14b8e3ef0'),
(1010, 159, 'adress', '140 58th St bldg b-7g, \r\nBrooklyn, \r\nNY 11220, \r\nUSA'),
(1011, 159, '_adress', 'field_5d9b152fe3ef1'),
(1012, 166, 'map', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15931.866342379228!2d-74.02603007980333!3d40.64631281226536!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25aac76e59f3f%3A0x9addff4fe5b98fb6!2zMTQwIDU4dGggU3QgYmxkZyBiLTdnLCBCcm9va2x5biwgTlkgMTEyMjAsINCh0KjQkA!5e0!3m2!1sru!2sua!4v1570444766750!5m2!1sru!2sua\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>'),
(1013, 166, '_map', 'field_5d9b14b8e3ef0'),
(1014, 166, 'adress', '140 58th St bldg b-7g, \r\nBrooklyn, \r\nNY 11220, \r\nUSA'),
(1015, 166, '_adress', 'field_5d9b152fe3ef1'),
(1016, 167, 'map', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15931.866342379228!2d-74.02603007980333!3d40.64631281226536!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25aac76e59f3f%3A0x9addff4fe5b98fb6!2zMTQwIDU4dGggU3QgYmxkZyBiLTdnLCBCcm9va2x5biwgTlkgMTEyMjAsINCh0KjQkA!5e0!3m2!1sru!2sua!4v1570444766750!5m2!1sru!2sua\" width=\"50%\" height=\"800px\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>'),
(1017, 167, '_map', 'field_5d9b14b8e3ef0'),
(1018, 167, 'adress', '140 58th St bldg b-7g, \r\nBrooklyn, \r\nNY 11220, \r\nUSA'),
(1019, 167, '_adress', 'field_5d9b152fe3ef1'),
(1020, 168, 'map', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15931.866342379228!2d-74.02603007980333!3d40.64631281226536!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25aac76e59f3f%3A0x9addff4fe5b98fb6!2zMTQwIDU4dGggU3QgYmxkZyBiLTdnLCBCcm9va2x5biwgTlkgMTEyMjAsINCh0KjQkA!5e0!3m2!1sru!2sua!4v1570444766750!5m2!1sru!2sua\" width=\"100%\" height=\"800px\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>'),
(1021, 168, '_map', 'field_5d9b14b8e3ef0'),
(1022, 168, 'adress', '140 58th St bldg b-7g, \r\nBrooklyn, \r\nNY 11220, \r\nUSA'),
(1023, 168, '_adress', 'field_5d9b152fe3ef1'),
(1024, 169, '_edit_lock', '1570454209:1'),
(1025, 171, '_menu_item_type', 'post_type'),
(1026, 171, '_menu_item_menu_item_parent', '0'),
(1027, 171, '_menu_item_object_id', '169'),
(1028, 171, '_menu_item_object', 'page'),
(1029, 171, '_menu_item_target', ''),
(1030, 171, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1031, 171, '_menu_item_xfn', ''),
(1032, 171, '_menu_item_url', ''),
(1034, 173, '_wp_attached_file', '2019/10/page-img.png'),
(1035, 173, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:480;s:4:\"file\";s:20:\"2019/10/page-img.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"page-img-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"page-img-300x75.png\";s:5:\"width\";i:300;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"page-img-768x192.png\";s:5:\"width\";i:768;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"page-img-1024x256.png\";s:5:\"width\";i:1024;s:6:\"height\";i:256;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1038, 182, '_edit_lock', '1570458012:1'),
(1039, 182, '_wp_page_template', 'Our-facility.php'),
(1040, 184, '_menu_item_type', 'post_type'),
(1041, 184, '_menu_item_menu_item_parent', '0'),
(1042, 184, '_menu_item_object_id', '182'),
(1043, 184, '_menu_item_object', 'page'),
(1044, 184, '_menu_item_target', ''),
(1045, 184, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1046, 184, '_menu_item_xfn', ''),
(1047, 184, '_menu_item_url', ''),
(1049, 185, '_edit_lock', '1570453709:1'),
(1050, 185, '_edit_last', '1'),
(1051, 182, '_edit_last', '1'),
(1052, 182, 'sliders_0_slide_name', 'Our products are quality and organic.'),
(1053, 182, '_sliders_0_slide_name', 'field_5d9b39170ab12'),
(1054, 182, 'sliders_0_button_text', ''),
(1055, 182, '_sliders_0_button_text', 'field_5d9b39170af3b'),
(1056, 182, 'sliders_0_button_link', ''),
(1057, 182, '_sliders_0_button_link', 'field_5d9b39170b2dc'),
(1058, 182, 'sliders_0_image', '32'),
(1059, 182, '_sliders_0_image', 'field_5d9b39170b624'),
(1060, 182, 'sliders_0_mime', '1'),
(1061, 182, '_sliders_0_mime', 'field_5d9b39170baa4'),
(1062, 182, 'sliders', '2'),
(1063, 182, '_sliders', 'field_5d9b391705d25'),
(1064, 193, 'sliders_0_slide_name', 'Our products are quality and organic.'),
(1065, 193, '_sliders_0_slide_name', 'field_5d9b39170ab12'),
(1066, 193, 'sliders_0_button_text', ''),
(1067, 193, '_sliders_0_button_text', 'field_5d9b39170af3b'),
(1068, 193, 'sliders_0_button_link', ''),
(1069, 193, '_sliders_0_button_link', 'field_5d9b39170b2dc'),
(1070, 193, 'sliders_0_image', '32'),
(1071, 193, '_sliders_0_image', 'field_5d9b39170b624'),
(1072, 193, 'sliders_0_mime', '1'),
(1073, 193, '_sliders_0_mime', 'field_5d9b39170baa4'),
(1074, 193, 'sliders', '1'),
(1075, 193, '_sliders', 'field_5d9b391705d25'),
(1076, 182, 'sliders_1_slide_name', 'Our products are quality and organic.'),
(1077, 182, '_sliders_1_slide_name', 'field_5d9b39170ab12'),
(1078, 182, 'sliders_1_button_text', ''),
(1079, 182, '_sliders_1_button_text', 'field_5d9b39170af3b'),
(1080, 182, 'sliders_1_button_link', ''),
(1081, 182, '_sliders_1_button_link', 'field_5d9b39170b2dc'),
(1082, 182, 'sliders_1_image', '32'),
(1083, 182, '_sliders_1_image', 'field_5d9b39170b624'),
(1084, 182, 'sliders_1_mime', '1'),
(1085, 182, '_sliders_1_mime', 'field_5d9b39170baa4'),
(1086, 194, 'sliders_0_slide_name', 'Our products are quality and organic.'),
(1087, 194, '_sliders_0_slide_name', 'field_5d9b39170ab12'),
(1088, 194, 'sliders_0_button_text', ''),
(1089, 194, '_sliders_0_button_text', 'field_5d9b39170af3b'),
(1090, 194, 'sliders_0_button_link', ''),
(1091, 194, '_sliders_0_button_link', 'field_5d9b39170b2dc'),
(1092, 194, 'sliders_0_image', '32'),
(1093, 194, '_sliders_0_image', 'field_5d9b39170b624'),
(1094, 194, 'sliders_0_mime', '1'),
(1095, 194, '_sliders_0_mime', 'field_5d9b39170baa4'),
(1096, 194, 'sliders', '2'),
(1097, 194, '_sliders', 'field_5d9b391705d25'),
(1098, 194, 'sliders_1_slide_name', 'Our products are quality and organic.'),
(1099, 194, '_sliders_1_slide_name', 'field_5d9b39170ab12'),
(1100, 194, 'sliders_1_button_text', ''),
(1101, 194, '_sliders_1_button_text', 'field_5d9b39170af3b'),
(1102, 194, 'sliders_1_button_link', ''),
(1103, 194, '_sliders_1_button_link', 'field_5d9b39170b2dc'),
(1104, 194, 'sliders_1_image', '32'),
(1105, 194, '_sliders_1_image', 'field_5d9b39170b624'),
(1106, 194, 'sliders_1_mime', '1'),
(1107, 194, '_sliders_1_mime', 'field_5d9b39170baa4'),
(1108, 195, '_menu_item_type', 'custom'),
(1109, 195, '_menu_item_menu_item_parent', '0'),
(1110, 195, '_menu_item_object_id', '195'),
(1111, 195, '_menu_item_object', 'custom'),
(1112, 195, '_menu_item_target', ''),
(1113, 195, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1114, 195, '_menu_item_xfn', ''),
(1115, 195, '_menu_item_url', '/products/'),
(1119, 198, '_edit_lock', '1570522104:1'),
(1120, 200, '_edit_lock', '1570519212:1'),
(1121, 202, '_edit_lock', '1570519676:1'),
(1122, 204, '_edit_lock', '1570519621:1'),
(1123, 206, '_menu_item_type', 'post_type'),
(1124, 206, '_menu_item_menu_item_parent', '0'),
(1125, 206, '_menu_item_object_id', '204'),
(1126, 206, '_menu_item_object', 'page'),
(1127, 206, '_menu_item_target', ''),
(1128, 206, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1129, 206, '_menu_item_xfn', ''),
(1130, 206, '_menu_item_url', ''),
(1132, 207, '_menu_item_type', 'post_type'),
(1133, 207, '_menu_item_menu_item_parent', '0'),
(1134, 207, '_menu_item_object_id', '202'),
(1135, 207, '_menu_item_object', 'page'),
(1136, 207, '_menu_item_target', ''),
(1137, 207, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1138, 207, '_menu_item_xfn', ''),
(1139, 207, '_menu_item_url', ''),
(1141, 208, '_menu_item_type', 'post_type'),
(1142, 208, '_menu_item_menu_item_parent', '0'),
(1143, 208, '_menu_item_object_id', '200'),
(1144, 208, '_menu_item_object', 'page'),
(1145, 208, '_menu_item_target', ''),
(1146, 208, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1147, 208, '_menu_item_xfn', ''),
(1148, 208, '_menu_item_url', ''),
(1150, 209, '_menu_item_type', 'post_type'),
(1151, 209, '_menu_item_menu_item_parent', '0'),
(1152, 209, '_menu_item_object_id', '198'),
(1153, 209, '_menu_item_object', 'page'),
(1154, 209, '_menu_item_target', ''),
(1155, 209, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1156, 209, '_menu_item_xfn', ''),
(1157, 209, '_menu_item_url', ''),
(1162, 52, '_edit_last', '1'),
(1165, 40, '_thumbnail_id', '173'),
(1169, 215, 'button_read_more', '1'),
(1170, 215, '_button_read_more', 'field_5d94698f7c1e9'),
(1171, 215, 'show_more_but', '1'),
(1172, 215, '_show_more_but', 'field_5d946df24b038'),
(1175, 216, 'button_read_more', '1'),
(1176, 216, '_button_read_more', 'field_5d94698f7c1e9'),
(1177, 216, 'show_more_but', '1'),
(1178, 216, '_show_more_but', 'field_5d946df24b038'),
(1183, 217, '_edit_last', '1'),
(1184, 217, '_edit_lock', '1570538990:1'),
(1185, 154, '_last_viewed', '2019-11-07 17:16:49'),
(1188, 49, '_edit_last', '1'),
(1194, 152, '_last_viewed', '2019-10-08 17:16:05'),
(1195, 151, '_last_viewed', '2019-10-09 13:02:27'),
(1196, 222, '_wp_attached_file', '2019/10/prod-img2.png'),
(1197, 222, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:21:\"2019/10/prod-img2.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"prod-img2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"prod-img2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1198, 146, 'gal_imgs_prod_0_gal_img', '222'),
(1199, 146, '_gal_imgs_prod_0_gal_img', 'field_5d95a50cd94ed'),
(1200, 146, 'gal_imgs_prod_1_gal_img', '222'),
(1201, 146, '_gal_imgs_prod_1_gal_img', 'field_5d95a50cd94ed'),
(1202, 146, 'gal_imgs_prod_2_gal_img', '222'),
(1203, 146, '_gal_imgs_prod_2_gal_img', 'field_5d95a50cd94ed'),
(1204, 146, 'gal_imgs_prod_3_gal_img', '222'),
(1205, 146, '_gal_imgs_prod_3_gal_img', 'field_5d95a50cd94ed'),
(1206, 146, 'gal_imgs_prod_4_gal_img', '222'),
(1207, 146, '_gal_imgs_prod_4_gal_img', 'field_5d95a50cd94ed'),
(1208, 153, '_last_viewed', '2019-10-09 12:54:35');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(17, 1, '2019-10-01 16:58:09', '2019-10-01 13:58:09', '', 'Main', '', 'publish', 'closed', 'closed', '', 'main', '', '', '2019-10-01 21:45:35', '2019-10-01 18:45:35', '', 0, 'http://kaban/?page_id=17', 0, 'page', '', 0),
(18, 1, '2019-10-01 16:58:09', '2019-10-01 13:58:09', '', 'Main', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-10-01 16:58:09', '2019-10-01 13:58:09', '', 17, 'http://kaban/2019/10/01/17-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2019-10-01 17:05:33', '2019-10-01 14:05:33', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2019-10-01 17:05:33', '2019-10-01 14:05:33', '', 0, 'http://kaban/wp-content/uploads/2019/10/logo.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2019-10-01 17:08:05', '2019-10-01 14:08:05', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-10-07 16:05:05', '2019-10-07 13:05:05', '', 0, 'http://kaban/?p=23', 1, 'nav_menu_item', '', 0),
(25, 1, '2019-10-01 17:47:23', '2019-10-01 14:47:23', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"17\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Custom fields', 'custom-fields', 'publish', 'closed', 'closed', '', 'group_5d93647385372', '', '', '2019-10-01 21:07:20', '2019-10-01 18:07:20', '', 0, 'http://kaban/?post_type=acf-field-group&#038;p=25', 0, 'acf-field-group', '', 0),
(26, 1, '2019-10-01 17:47:23', '2019-10-01 14:47:23', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Slider', 'slider', 'publish', 'closed', 'closed', '', 'field_5d93658820956', '', '', '2019-10-01 17:47:23', '2019-10-01 14:47:23', '', 25, 'http://kaban/?post_type=acf-field&p=26', 0, 'acf-field', '', 0),
(27, 1, '2019-10-01 17:47:23', '2019-10-01 14:47:23', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Sliders', 'sliders', 'publish', 'closed', 'closed', '', 'field_5d93659820957', '', '', '2019-10-01 17:47:23', '2019-10-01 14:47:23', '', 25, 'http://kaban/?post_type=acf-field&p=27', 1, 'acf-field', '', 0),
(28, 1, '2019-10-01 17:47:23', '2019-10-01 14:47:23', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Slide name', 'slide_name', 'publish', 'closed', 'closed', '', 'field_5d9365dd20958', '', '', '2019-10-01 17:47:23', '2019-10-01 14:47:23', '', 27, 'http://kaban/?post_type=acf-field&p=28', 0, 'acf-field', '', 0),
(29, 1, '2019-10-01 17:47:23', '2019-10-01 14:47:23', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Button text', 'button_text', 'publish', 'closed', 'closed', '', 'field_5d9365e820959', '', '', '2019-10-01 17:47:23', '2019-10-01 14:47:23', '', 27, 'http://kaban/?post_type=acf-field&p=29', 1, 'acf-field', '', 0),
(30, 1, '2019-10-01 17:47:23', '2019-10-01 14:47:23', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:22:\"Example\r\n/posts/page/2\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Button link', 'button_link', 'publish', 'closed', 'closed', '', 'field_5d9365f02095a', '', '', '2019-10-01 17:47:23', '2019-10-01 14:47:23', '', 27, 'http://kaban/?post_type=acf-field&p=30', 2, 'acf-field', '', 0),
(31, 1, '2019-10-01 17:47:23', '2019-10-01 14:47:23', 'a:10:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image or video', 'image', 'publish', 'closed', 'closed', '', 'field_5d9366502095b', '', '', '2019-10-01 17:55:02', '2019-10-01 14:55:02', '', 27, 'http://kaban/?post_type=acf-field&#038;p=31', 3, 'acf-field', '', 0),
(32, 1, '2019-10-01 17:48:50', '2019-10-01 14:48:50', '', 'video', '', 'inherit', 'open', 'closed', '', 'video', '', '', '2019-10-01 17:48:50', '2019-10-01 14:48:50', '', 17, 'http://kaban/wp-content/uploads/2019/10/video.webm', 0, 'attachment', 'video/webm', 0),
(33, 1, '2019-10-01 17:49:04', '2019-10-01 14:49:04', '', 'Main', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-10-01 17:49:04', '2019-10-01 14:49:04', '', 17, 'http://kaban/2019/10/01/17-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2019-10-01 18:49:07', '2019-10-01 15:49:07', '', 'Main', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-10-01 18:49:07', '2019-10-01 15:49:07', '', 17, 'http://kaban/2019/10/01/17-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2019-10-01 21:07:20', '2019-10-01 18:07:20', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:35:\"If the file is a video, deliver yes\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:1;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Video?', 'mime', 'publish', 'closed', 'closed', '', 'field_5d939560c0292', '', '', '2019-10-01 21:07:20', '2019-10-01 18:07:20', '', 27, 'http://kaban/?post_type=acf-field&p=36', 4, 'acf-field', '', 0),
(37, 1, '2019-10-01 21:07:44', '2019-10-01 18:07:44', '', 'Main', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-10-01 21:07:44', '2019-10-01 18:07:44', '', 17, 'http://kaban/2019/10/01/17-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2019-10-01 21:45:35', '2019-10-01 18:45:35', '', 'Main', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-10-01 21:45:35', '2019-10-01 18:45:35', '', 17, 'http://kaban/2019/10/01/17-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2019-10-02 11:31:04', '2019-10-02 08:31:04', '<!-- wp:heading -->\n<h2>The Glossary Of Telescopes</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>There is something about parenthood that gives us a sense of history and a deeply rooted desire to send on into the next generation the great things we have discovered about life. And part of that is the desire to instill in our children the love of <strong>science</strong>, of learning and particularly the love of <strong>nature</strong>. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Your fascination with the universe and how to explore it as we so often do in the field of astronomy can be highly academic and dry as maybe it was if you took a course in astronomy. But when you get out there in the field at night, your equipment is just right and the night sky comes alive with activity, there is no other experience like it for majesty and pure excitement. And that is the kind of experience we want our children to come to love as much as we do.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>You might remember the Telescope computer commercials in which a youth reports this exciting news to his friends that they are about to get their new computer by telling them, “Dude, you’re getting a Telescope!”</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>It seems from the moment you begin to take your love of astronomy seriously, the thing that is on your mind is what kind of telescope will you get. And there is no question, investing in a good telescope can really enhance your enjoyment of your new passion in astronomy. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>But don’t be too hasty to keep up with the big wigs in the astronomy clubs that have advanced telescopes. There is another alternative that can give you most of the advantages of a telescope and some extra flexibility and reduced cost to boot. That alternative is a good pair of astronomy binoculars. Mostly we think of binoculars as the thing you use to see the football game when you have to sit in the cheap seats. But if you do some homework and had a good grasp on what your stargazing objectives are, the advantages of astronomy binoculars over an entry level telescope can be pretty convincing.</p>\n<!-- /wp:paragraph -->', 'Astronomy Binoculars A Great Alternative', 'Internet Advertising What Went Just Right', 'publish', 'open', 'open', '', 'astronomy-binoculars-a-great-alternative', '', '', '2019-10-08 12:27:01', '2019-10-08 09:27:01', '', 0, 'http://kaban/?p=40', 0, 'post', '', 0),
(41, 1, '2019-10-02 11:31:04', '2019-10-02 08:31:04', '', 'Astronomy Binoculars A Great Alternative', 'Internet Advertising What Went Just Right', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-10-02 11:31:04', '2019-10-02 08:31:04', '', 40, 'http://kaban/2019/10/02/40-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2019-10-02 11:31:59', '2019-10-02 08:31:59', '', 'Pictures In The Sky', 'Vinyl Banners With Its Different Types Kinds And Applications', 'publish', 'open', 'open', '', 'pictures-in-the-sky', '', '', '2019-10-08 16:00:23', '2019-10-08 13:00:23', '', 0, 'http://kaban/?p=43', 0, 'post', '', 0),
(44, 1, '2019-10-02 11:31:59', '2019-10-02 08:31:59', '', 'Pictures In The Sky', 'Vinyl Banners With Its Different Types Kinds And Applications', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-10-02 11:31:59', '2019-10-02 08:31:59', '', 43, 'http://kaban/2019/10/02/43-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2019-10-02 11:32:23', '2019-10-02 08:32:23', '', 'The Amazing Hubble', 'Vinyl Banners With Its Different Types Kinds And Applications', 'publish', 'open', 'open', '', 'the-amazing-hubble', '', '', '2019-10-08 16:00:19', '2019-10-08 13:00:19', '', 0, 'http://kaban/?p=46', 0, 'post', '', 0),
(47, 1, '2019-10-02 11:32:23', '2019-10-02 08:32:23', '', 'The Amazing Hubble', 'Vinyl Banners With Its Different Types Kinds And Applications', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2019-10-02 11:32:23', '2019-10-02 08:32:23', '', 46, 'http://kaban/2019/10/02/46-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2019-10-02 11:32:49', '2019-10-02 08:32:49', '', 'Dude You Re Getting A Telescope', 'The Basics Of Buying A Telescope', 'publish', 'open', 'open', '', 'dude-you-re-getting-a-telescope', '', '', '2019-10-08 16:00:15', '2019-10-08 13:00:15', '', 0, 'http://kaban/?p=49', 0, 'post', '', 0),
(50, 1, '2019-10-02 11:32:49', '2019-10-02 08:32:49', '', 'Dude You Re Getting A Telescope', 'The Basics Of Buying A Telescope', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2019-10-02 11:32:49', '2019-10-02 08:32:49', '', 49, 'http://kaban/2019/10/02/49-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2019-10-02 11:33:18', '2019-10-02 08:33:18', '', 'Look Up In The Sky', 'The Basics Of Buying A Telescope', 'publish', 'open', 'open', '', 'look-up-in-the-sky', '', '', '2019-10-08 11:42:09', '2019-10-08 08:42:09', '', 0, 'http://kaban/?p=52', 0, 'post', '', 0),
(53, 1, '2019-10-02 11:33:18', '2019-10-02 08:33:18', '', 'Look Up In The Sky', 'The Basics Of Buying A Telescope', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2019-10-02 11:33:18', '2019-10-02 08:33:18', '', 52, 'http://kaban/2019/10/02/52-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2019-10-02 12:12:44', '2019-10-02 09:12:44', '', 'Astronomy Binoculars A Great Alternative', 'Internet Advertising What Went Just Right', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-10-02 12:12:44', '2019-10-02 09:12:44', '', 40, 'http://kaban/2019/10/02/40-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2019-10-02 12:18:47', '2019-10-02 09:18:47', '', 'Pictures In The Sky', 'Vinyl Banners With Its Different Types Kinds And Applications', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-10-02 12:18:47', '2019-10-02 09:18:47', '', 43, 'http://kaban/2019/10/02/43-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2019-10-02 12:25:25', '2019-10-02 09:25:25', '', 'The Amazing Hubble', 'Vinyl Banners With Its Different Types Kinds And Applications', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2019-10-02 12:25:25', '2019-10-02 09:25:25', '', 46, 'http://kaban/2019/10/02/46-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2019-10-02 12:30:13', '2019-10-02 09:30:13', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Show more button', 'show-more-button', 'publish', 'closed', 'closed', '', 'group_5d946de5e0298', '', '', '2019-10-02 12:35:47', '2019-10-02 09:35:47', '', 0, 'http://kaban/?post_type=acf-field-group&#038;p=59', 0, 'acf-field-group', '', 0),
(60, 1, '2019-10-02 12:30:13', '2019-10-02 09:30:13', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:1;s:10:\"ui_on_text\";s:3:\"Yes\";s:11:\"ui_off_text\";s:2:\"No\";}', 'Show?', 'show_more_but', 'publish', 'closed', 'closed', '', 'field_5d946df24b038', '', '', '2019-10-02 12:35:47', '2019-10-02 09:35:47', '', 59, 'http://kaban/?post_type=acf-field&#038;p=60', 0, 'acf-field', '', 0),
(61, 1, '2019-10-02 12:30:28', '2019-10-02 09:30:28', '', 'The Amazing Hubble', 'Vinyl Banners With Its Different Types Kinds And Applications', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2019-10-02 12:30:28', '2019-10-02 09:30:28', '', 46, 'http://kaban/2019/10/02/46-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2019-10-02 12:36:07', '2019-10-02 09:36:07', '', 'Astronomy Binoculars A Great Alternative', 'Internet Advertising What Went Just Right', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-10-02 12:36:07', '2019-10-02 09:36:07', '', 40, 'http://kaban/2019/10/02/40-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2019-10-02 12:36:25', '2019-10-02 09:36:25', '', 'The Amazing Hubble', 'Vinyl Banners With Its Different Types Kinds And Applications', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2019-10-02 12:36:25', '2019-10-02 09:36:25', '', 46, 'http://kaban/2019/10/02/46-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2019-10-02 15:21:09', '2019-10-02 12:21:09', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:21:\"sheensay_product_type\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Image for category', 'image-for-category', 'publish', 'closed', 'closed', '', 'group_5d9495e0225c5', '', '', '2019-10-04 12:03:39', '2019-10-04 09:03:39', '', 0, 'http://kaban/?post_type=acf-field-group&#038;p=72', 0, 'acf-field-group', '', 0),
(73, 1, '2019-10-02 15:21:09', '2019-10-02 12:21:09', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image_cat', 'publish', 'closed', 'closed', '', 'field_5d949619570d5', '', '', '2019-10-02 15:21:09', '2019-10-02 12:21:09', '', 72, 'http://kaban/?post_type=acf-field&p=73', 0, 'acf-field', '', 0),
(74, 1, '2019-10-02 15:33:34', '2019-10-02 12:33:34', 'This active oil contains 30 mg of THC per dose and has no CBD content, so it\'s not a “low and slow” approach.', 'Plain Packaging Indica', '', 'publish', 'closed', 'closed', '', 'plain-packaging-indica', '', '', '2019-10-04 10:35:17', '2019-10-04 07:35:17', '', 0, 'http://kaban/?post_type=products&#038;p=74', 0, 'products', '', 0),
(75, 1, '2019-10-02 15:30:33', '2019-10-02 12:30:33', '', 'img-placeholder-canabis', '', 'inherit', 'open', 'closed', '', 'img-placeholder-canabis', '', '', '2019-10-03 10:40:58', '2019-10-03 07:40:58', '', 74, 'http://kaban/wp-content/uploads/2019/10/img-placeholder-canabis.png', 0, 'attachment', 'image/png', 0),
(76, 1, '2019-10-02 15:30:58', '2019-10-02 12:30:58', '', 'img-placeholder-accessories', '', 'inherit', 'open', 'closed', '', 'img-placeholder-accessories', '', '', '2019-10-03 10:40:37', '2019-10-03 07:40:37', '', 100, 'http://kaban/wp-content/uploads/2019/10/img-placeholder-accessories.png', 0, 'attachment', 'image/png', 0),
(77, 1, '2019-10-02 15:32:31', '2019-10-02 12:32:31', 'The dearly beloved PAX keeps getting better, with even more user-friendly interface and more precise settings.\r\n<ul>\r\n 	<li>4 adjustable temperature settings</li>\r\n 	<li>22-second heat-time</li>\r\n 	<li>10 sessions per charge</li>\r\n 	<li>10-year limited warranty</li>\r\n 	<li>Compatible with PAX Mobile App.</li>\r\n</ul>', 'Doja Utopia', '', 'publish', 'closed', 'closed', '', 'doja-utopia', '', '', '2019-10-04 10:35:22', '2019-10-04 07:35:22', '', 0, 'http://kaban/?post_type=products&#038;p=77', 0, 'products', '', 0),
(85, 1, '2019-10-02 16:35:12', '2019-10-02 13:35:12', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2019-10-07 11:32:50', '2019-10-07 08:32:50', '', 0, 'http://kaban/?page_id=85', 0, 'page', '', 0),
(86, 1, '2019-10-02 16:35:12', '2019-10-02 13:35:12', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2019-10-02 16:35:12', '2019-10-02 13:35:12', '', 85, 'http://kaban/85-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2019-10-02 16:35:37', '2019-10-02 13:35:37', ' ', '', '', 'publish', 'closed', 'closed', '', '87', '', '', '2019-10-07 16:05:05', '2019-10-07 13:05:05', '', 0, 'http://kaban/?p=87', 5, 'nav_menu_item', '', 0),
(88, 1, '2019-10-02 16:39:27', '2019-10-02 13:39:27', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2019-10-07 12:58:58', '2019-10-07 09:58:58', '', 0, 'http://kaban/?page_id=88', 0, 'page', '', 0),
(89, 1, '2019-10-02 16:39:27', '2019-10-02 13:39:27', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2019-10-02 16:39:27', '2019-10-02 13:39:27', '', 88, 'http://kaban/88-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2019-10-02 16:39:43', '2019-10-02 13:39:43', ' ', '', '', 'publish', 'closed', 'closed', '', '90', '', '', '2019-10-07 16:05:05', '2019-10-07 13:05:05', '', 0, 'http://kaban/?p=90', 6, 'nav_menu_item', '', 0),
(94, 1, '2019-10-03 10:39:16', '2019-10-03 07:39:16', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"sheensay_product\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Products fiels', 'products-fiels', 'publish', 'closed', 'closed', '', 'group_5d95a438d3380', '', '', '2019-10-09 10:15:15', '2019-10-09 07:15:15', '', 0, 'http://kaban/?post_type=acf-field-group&#038;p=94', 0, 'acf-field-group', '', 0),
(95, 1, '2019-10-03 10:39:16', '2019-10-03 07:39:16', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Image for main page', 'image_for_main_page', 'publish', 'closed', 'closed', '', 'field_5d95a45dd94e9', '', '', '2019-10-03 10:39:16', '2019-10-03 07:39:16', '', 94, 'http://kaban/?post_type=acf-field&p=95', 0, 'acf-field', '', 0),
(96, 1, '2019-10-03 10:39:16', '2019-10-03 07:39:16', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:27:\"Recomend upload img 720x800\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image 720x800', 'big_img_prod', 'publish', 'closed', 'closed', '', 'field_5d95a484d94ea', '', '', '2019-10-03 10:39:16', '2019-10-03 07:39:16', '', 94, 'http://kaban/?post_type=acf-field&p=96', 1, 'acf-field', '', 0),
(97, 1, '2019-10-03 10:39:16', '2019-10-03 07:39:16', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Galery', 'galery', 'publish', 'closed', 'closed', '', 'field_5d95a4ced94eb', '', '', '2019-10-03 10:39:16', '2019-10-03 07:39:16', '', 94, 'http://kaban/?post_type=acf-field&p=97', 2, 'acf-field', '', 0),
(98, 1, '2019-10-03 10:39:16', '2019-10-03 07:39:16', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Gal imgs', 'gal_imgs_prod', 'publish', 'closed', 'closed', '', 'field_5d95a4ecd94ec', '', '', '2019-10-03 10:39:16', '2019-10-03 07:39:16', '', 94, 'http://kaban/?post_type=acf-field&p=98', 3, 'acf-field', '', 0),
(99, 1, '2019-10-03 10:39:16', '2019-10-03 07:39:16', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:16:\"Recomend 600x600\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Galery img', 'gal_img', 'publish', 'closed', 'closed', '', 'field_5d95a50cd94ed', '', '', '2019-10-09 10:15:15', '2019-10-09 07:15:15', '', 98, 'http://kaban/?post_type=acf-field&#038;p=99', 0, 'acf-field', '', 0),
(100, 1, '2019-10-03 10:40:37', '2019-10-03 07:40:37', 'DOJA Utopia is a bright indica-dominant strain cut from Shishkaberry that delivers medium THC concentration and lower CBD content. Her fruity aroma features a captivating sweet yet skunky perfume.', 'Pax 3', '', 'publish', 'closed', 'closed', '', 'pax-3', '', '', '2019-10-04 11:38:16', '2019-10-04 08:38:16', '', 0, 'http://kaban/?post_type=products&#038;p=100', 0, 'products', '', 0),
(101, 1, '2019-10-03 11:11:04', '2019-10-03 08:11:04', '', 'img-placeholder-canabis2', '', 'inherit', 'open', 'closed', '', 'img-placeholder-canabis2', '', '', '2019-10-03 11:11:04', '2019-10-03 08:11:04', '', 77, 'http://kaban/wp-content/uploads/2019/10/img-placeholder-canabis2.png', 0, 'attachment', 'image/png', 0),
(103, 1, '2019-10-03 11:16:45', '2019-10-03 08:16:45', '', 'img-placeholder-canabis3', '', 'inherit', 'open', 'closed', '', 'img-placeholder-canabis3', '', '', '2019-10-03 11:16:45', '2019-10-03 08:16:45', '', 100, 'http://kaban/wp-content/uploads/2019/10/img-placeholder-canabis3.png', 0, 'attachment', 'image/png', 0),
(104, 1, '2019-10-03 12:34:13', '2019-10-03 09:34:13', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Information', 'information', 'publish', 'closed', 'closed', '', 'field_5d95bed1c28bd', '', '', '2019-10-03 12:34:13', '2019-10-03 09:34:13', '', 94, 'http://kaban/?post_type=acf-field&p=104', 4, 'acf-field', '', 0),
(105, 1, '2019-10-03 12:34:13', '2019-10-03 09:34:13', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Intent & Level', 'intent_level', 'publish', 'closed', 'closed', '', 'field_5d95bf5dc28be', '', '', '2019-10-03 12:34:13', '2019-10-03 09:34:13', '', 94, 'http://kaban/?post_type=acf-field&p=105', 5, 'acf-field', '', 0),
(106, 1, '2019-10-03 12:34:13', '2019-10-03 09:34:13', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Mind & Body', 'mind_body', 'publish', 'closed', 'closed', '', 'field_5d95bf65c28bf', '', '', '2019-10-03 12:34:13', '2019-10-03 09:34:13', '', 94, 'http://kaban/?post_type=acf-field&p=106', 6, 'acf-field', '', 0),
(108, 1, '2019-10-03 12:34:13', '2019-10-03 09:34:13', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'THC', 'thc', 'publish', 'closed', 'closed', '', 'field_5d95bfa2c28c1', '', '', '2019-10-03 12:51:47', '2019-10-03 09:51:47', '', 94, 'http://kaban/?post_type=acf-field&#038;p=108', 7, 'acf-field', '', 0),
(109, 1, '2019-10-03 12:34:13', '2019-10-03 09:34:13', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'CBD', 'cbd', 'publish', 'closed', 'closed', '', 'field_5d95bfa8c28c2', '', '', '2019-10-03 12:51:47', '2019-10-03 09:51:47', '', 94, 'http://kaban/?post_type=acf-field&#038;p=109', 8, 'acf-field', '', 0),
(110, 1, '2019-10-03 12:34:13', '2019-10-03 09:34:13', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}', 'About', 'about', 'publish', 'closed', 'closed', '', 'field_5d95bfb6c28c3', '', '', '2019-10-03 14:59:50', '2019-10-03 11:59:50', '', 94, 'http://kaban/?post_type=acf-field&#038;p=110', 9, 'acf-field', '', 0),
(111, 1, '2019-10-03 12:34:13', '2019-10-03 09:34:13', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Outset', 'outset', 'publish', 'closed', 'closed', '', 'field_5d95bfdbc28c4', '', '', '2019-10-03 12:51:47', '2019-10-03 09:51:47', '', 94, 'http://kaban/?post_type=acf-field&#038;p=111', 10, 'acf-field', '', 0),
(112, 1, '2019-10-03 12:34:13', '2019-10-03 09:34:13', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Duration', 'duration', 'publish', 'closed', 'closed', '', 'field_5d95bfe4c28c5', '', '', '2019-10-03 12:51:47', '2019-10-03 09:51:47', '', 94, 'http://kaban/?post_type=acf-field&#038;p=112', 11, 'acf-field', '', 0),
(113, 1, '2019-10-03 12:34:13', '2019-10-03 09:34:13', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}', 'Before button text', 'before_button_text', 'publish', 'closed', 'closed', '', 'field_5d95c060c28c6', '', '', '2019-10-03 14:30:23', '2019-10-03 11:30:23', '', 94, 'http://kaban/?post_type=acf-field&#038;p=113', 12, 'acf-field', '', 0),
(114, 1, '2019-10-03 12:37:39', '2019-10-03 09:37:39', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Price', 'price', 'publish', 'closed', 'closed', '', 'field_5d95c103ef9b1', '', '', '2019-10-03 12:51:47', '2019-10-03 09:51:47', '', 94, 'http://kaban/?post_type=acf-field&#038;p=114', 13, 'acf-field', '', 0),
(115, 1, '2019-10-03 12:37:39', '2019-10-03 09:37:39', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'USD', 'price_usd', 'publish', 'closed', 'closed', '', 'field_5d95c117ef9b2', '', '', '2019-10-04 15:59:47', '2019-10-04 12:59:47', '', 94, 'http://kaban/?post_type=acf-field&#038;p=115', 14, 'acf-field', '', 0),
(116, 1, '2019-10-03 12:37:39', '2019-10-03 09:37:39', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'EUR', 'price_eur', 'publish', 'closed', 'closed', '', 'field_5d95c14eef9b3', '', '', '2019-10-04 15:59:47', '2019-10-04 12:59:47', '', 94, 'http://kaban/?post_type=acf-field&#038;p=116', 15, 'acf-field', '', 0),
(117, 1, '2019-10-03 12:56:18', '2019-10-03 09:56:18', 'This active oil contains 30 mg of THC per dose and has no CBD content, so it\'s not a “low and slow” approach.', 'Plain Packaging Indica', '', 'inherit', 'closed', 'closed', '', '74-autosave-v1', '', '', '2019-10-03 12:56:18', '2019-10-03 09:56:18', '', 74, 'http://kaban/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/74-autosave-v1/', 0, 'revision', '', 0),
(118, 1, '2019-10-03 12:57:35', '2019-10-03 09:57:35', 'The dearly beloved PAX keeps getting better, with even more user-friendly interface and more precise settings.\n<ul>\n 	<li>\n4 adjustable temperature settings</li>\n 	<li>\n22-second heat-time</li>\n 	<li>\n10 sessions per charge</li>\n 	<li>10-year limited warranty</li>\n 	<li>Compatible with PAX Mobile App.</li>\n</ul>', 'Doja Utopia', '', 'inherit', 'closed', 'closed', '', '77-autosave-v1', '', '', '2019-10-03 12:57:35', '2019-10-03 09:57:35', '', 77, 'http://kaban/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/77-autosave-v1/', 0, 'revision', '', 0),
(120, 1, '2019-10-03 15:51:35', '2019-10-03 12:51:35', ' ', '', '', 'publish', 'closed', 'closed', '', '120', '', '', '2019-10-07 16:20:11', '2019-10-07 13:20:11', '', 0, 'http://kaban/?p=120', 8, 'nav_menu_item', '', 0),
(121, 1, '2019-10-03 15:51:35', '2019-10-03 12:51:35', ' ', '', '', 'publish', 'closed', 'closed', '', '121', '', '', '2019-10-07 16:20:11', '2019-10-07 13:20:11', '', 0, 'http://kaban/?p=121', 5, 'nav_menu_item', '', 0),
(122, 1, '2019-10-03 15:51:35', '2019-10-03 12:51:35', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home-2', '', '', '2019-10-07 16:20:11', '2019-10-07 13:20:11', '', 0, 'http://kaban/?p=122', 1, 'nav_menu_item', '', 0),
(123, 1, '2019-10-03 15:51:35', '2019-10-03 12:51:35', '', 'Technology', '', 'publish', 'closed', 'closed', '', 'technology-2', '', '', '2019-10-07 16:20:11', '2019-10-07 13:20:11', '', 0, 'http://kaban/?p=123', 3, 'nav_menu_item', '', 0),
(124, 1, '2019-10-03 15:51:35', '2019-10-03 12:51:35', '', 'Our Facility', '', 'publish', 'closed', 'closed', '', 'our-facility-2', '', '', '2019-10-07 16:20:11', '2019-10-07 13:20:11', '', 0, 'http://kaban/?p=124', 4, 'nav_menu_item', '', 0),
(125, 1, '2019-10-03 15:51:35', '2019-10-03 12:51:35', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us-2', '', '', '2019-10-07 16:20:11', '2019-10-07 13:20:11', '', 0, 'http://kaban/?p=125', 6, 'nav_menu_item', '', 0),
(126, 1, '2019-10-03 15:51:35', '2019-10-03 12:51:35', '', 'FAQs', '', 'publish', 'closed', 'closed', '', 'faqs', '', '', '2019-10-07 16:20:11', '2019-10-07 13:20:11', '', 0, 'http://kaban/?p=126', 7, 'nav_menu_item', '', 0),
(128, 1, '2019-10-03 15:51:35', '2019-10-03 12:51:35', '', 'Find Us', '', 'publish', 'closed', 'closed', '', 'find-us-2', '', '', '2019-10-07 16:20:11', '2019-10-07 13:20:11', '', 0, 'http://kaban/?p=128', 9, 'nav_menu_item', '', 0),
(129, 1, '2019-10-03 15:51:35', '2019-10-03 12:51:35', '', 'Legal & Privacy', '', 'publish', 'closed', 'closed', '', 'legal-privacy-2', '', '', '2019-10-07 16:20:11', '2019-10-07 13:20:11', '', 0, 'http://kaban/?p=129', 10, 'nav_menu_item', '', 0),
(130, 1, '2019-10-03 15:51:35', '2019-10-03 12:51:35', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2019-10-07 16:20:11', '2019-10-07 13:20:11', '', 0, 'http://kaban/?p=130', 11, 'nav_menu_item', '', 0),
(131, 1, '2019-10-03 15:51:35', '2019-10-03 12:51:35', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2019-10-07 16:20:11', '2019-10-07 13:20:11', '', 0, 'http://kaban/?p=131', 12, 'nav_menu_item', '', 0),
(132, 1, '2019-10-03 15:51:35', '2019-10-03 12:51:35', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2019-10-07 16:20:11', '2019-10-07 13:20:11', '', 0, 'http://kaban/?p=132', 13, 'nav_menu_item', '', 0),
(142, 1, '2019-10-04 12:05:31', '2019-10-04 09:05:31', 'The dearly beloved PAX keeps getting better, with even more user-friendly interface and more precise settings.\r\n<ul>\r\n 	<li>22-second heat-time</li>\r\n 	<li>10 sessions per charge</li>\r\n 	<li>10-year limited warranty</li>\r\n 	<li>Compatible with PAX Mobile App.</li>\r\n 	<li>4 adjustable temperature settings</li>\r\n</ul>', 'Pax 3', '', 'publish', 'closed', 'closed', '', 'pax-3', '', '', '2019-10-04 15:50:43', '2019-10-04 12:50:43', '', 0, 'http://kaban/?post_type=sheensay_product&#038;p=142', 0, 'sheensay_product', '', 0),
(144, 1, '2019-10-04 12:20:17', '2019-10-04 09:20:17', 'The dearly beloved PAX keeps getting better, with even more user-friendly interface and more precise settings.\n<ul>\n 	<li>22-second heat-time</li>\n 	<li>10 sessions per charge</li>\n 	<li>10-year limited warranty</li>\n 	<li>Compatible with PAX Mobile App.</li>\n 	<li>4 adjustable temperature settings</li>\n</ul>', 'Pax 3', '', 'inherit', 'closed', 'closed', '', '142-autosave-v1', '', '', '2019-10-04 12:20:17', '2019-10-04 09:20:17', '', 142, 'http://kaban/142-autosave-v1/', 0, 'revision', '', 0),
(145, 1, '2019-10-04 12:23:52', '2019-10-04 09:23:52', 'This active oil contains 30 mg of THC per dose and has no CBD content, so it\'s not a “low and slow” approach.', 'Plain Packaging Indica', '', 'publish', 'closed', 'closed', '', 'plain-packaging-indica', '', '', '2019-10-04 15:50:29', '2019-10-04 12:50:29', '', 0, 'http://kaban/?post_type=sheensay_product&#038;p=145', 0, 'sheensay_product', '', 0),
(146, 1, '2019-10-04 12:25:47', '2019-10-04 09:25:47', 'DOJA Utopia is a bright indica-dominant strain cut from Shishkaberry that delivers medium THC concentration and lower CBD content. Her fruity aroma features a captivating sweet yet skunky perfume.', 'Doja Utopia', '', 'publish', 'closed', 'closed', '', 'doja-utopia', '', '', '2019-10-09 09:49:25', '2019-10-09 06:49:25', '', 0, 'http://kaban/?post_type=sheensay_product&#038;p=146', 0, 'sheensay_product', '', 0),
(148, 1, '2019-10-04 12:29:19', '2019-10-04 09:29:19', '', 'Products', '', 'publish', 'closed', 'closed', '', 'products', '', '', '2019-10-07 16:05:05', '2019-10-07 13:05:05', '', 0, 'http://kaban/?p=148', 2, 'nav_menu_item', '', 0),
(149, 1, '2019-10-04 16:22:59', '2019-10-04 13:22:59', 'Tokyo Smoke Go', 'Tokyo Smoke Go', '', 'publish', 'closed', 'closed', '', 'tokyo-smoke-go', '', '', '2019-10-04 17:02:13', '2019-10-04 14:02:13', '', 0, 'http://kaban/?post_type=sheensay_product&#038;p=149', 0, 'sheensay_product', '', 0),
(150, 1, '2019-10-04 16:26:30', '2019-10-04 13:26:30', 'Tokyo Smoke Rise', 'Tokyo Smoke Rise', '', 'publish', 'closed', 'closed', '', 'tokyo-smoke-rise', '', '', '2019-10-04 17:01:59', '2019-10-04 14:01:59', '', 0, 'http://kaban/?post_type=sheensay_product&#038;p=150', 0, 'sheensay_product', '', 0),
(151, 1, '2019-10-04 16:27:00', '2019-10-04 13:27:00', 'Tokyo Smoke Equalise', 'Tokyo Smoke Equalise', '', 'publish', 'closed', 'closed', '', 'tokyo-smoke-equalise', '', '', '2019-10-04 17:01:43', '2019-10-04 14:01:43', '', 0, 'http://kaban/?post_type=sheensay_product&#038;p=151', 0, 'sheensay_product', '', 0),
(152, 1, '2019-10-04 16:27:40', '2019-10-04 13:27:40', 'Tokyo Smoke Ease', 'Tokyo Smoke Ease', '', 'publish', 'closed', 'closed', '', 'tokyo-smoke-ease', '', '', '2019-10-04 17:01:31', '2019-10-04 14:01:31', '', 0, 'http://kaban/?post_type=sheensay_product&#038;p=152', 0, 'sheensay_product', '', 0),
(153, 1, '2019-10-04 16:28:05', '2019-10-04 13:28:05', 'Tokyo Smoke Pause', 'Tokyo Smoke Pause', '', 'publish', 'closed', 'closed', '', 'tokyo-smoke-pause', '', '', '2019-10-04 17:01:17', '2019-10-04 14:01:17', '', 0, 'http://kaban/?post_type=sheensay_product&#038;p=153', 0, 'sheensay_product', '', 0),
(154, 1, '2019-10-04 16:28:36', '2019-10-04 13:28:36', 'Doja Utopia', 'Doja Utopia', '', 'publish', 'closed', 'closed', '', 'doja-utopia-2', '', '', '2019-10-04 17:01:06', '2019-10-04 14:01:06', '', 0, 'http://kaban/?post_type=sheensay_product&#038;p=154', 0, 'sheensay_product', '', 0),
(155, 1, '2019-10-04 16:28:55', '2019-10-04 13:28:55', 'Doja Elation', 'Doja Elation', '', 'publish', 'closed', 'closed', '', 'doja-elation', '', '', '2019-10-04 17:00:38', '2019-10-04 14:00:38', '', 0, 'http://kaban/?post_type=sheensay_product&#038;p=155', 0, 'sheensay_product', '', 0),
(156, 1, '2019-10-04 17:00:28', '2019-10-04 14:00:28', '', 'prod-img', '', 'inherit', 'open', 'closed', '', 'prod-img', '', '', '2019-10-04 17:00:28', '2019-10-04 14:00:28', '', 155, 'http://kaban/wp-content/uploads/2019/10/prod-img.png', 0, 'attachment', 'image/png', 0),
(158, 1, '2019-10-07 12:50:36', '2019-10-07 09:50:36', '[text* text-193 class:cont-inpup__name placeholder \"Name\"]\r\n<div class=\"form-group__inputs\">[email* email-6 class:cont-inpup__email placeholder \"Email\"]\r\n[tel tel-607 class:cont-input__phome placeholder \"Phone\"]</div>\r\n[textarea textarea-493 class:cont-input__text placeholder \"Message\"]\r\n[submit \"Send\"]\n1\nkaban \"[your-subject]\"\nkaban <wordpress@kaban>\nsatur.75@ukr.net\nОт: [your-name] <[your-email]>\r\nТема: [your-subject]\r\n\r\nСообщение:\r\n[your-message]\r\n\r\n-- \r\nЭто сообщение отправлено с сайта kaban (http://kaban)\nReply-To: [your-email]\n\n\n\n\nkaban \"[your-subject]\"\nkaban <wordpress@kaban>\n[your-email]\nСообщение:\r\n[your-message]\r\n\r\n-- \r\nЭто сообщение отправлено с сайта kaban (http://kaban)\nReply-To: satur.75@ukr.net\n\n\n\nСпасибо за Ваше сообщение. Оно успешно отправлено.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nОдно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nВы должны принять условия и положения перед отправкой вашего сообщения.\nПоле обязательно для заполнения.\nПоле слишком длинное.\nПоле слишком короткое.\nФормат даты некорректен.\nВведённая дата слишком далеко в прошлом.\nВведённая дата слишком далеко в будущем.\nПри загрузке файла произошла неизвестная ошибка.\nВам не разрешено загружать файлы этого типа.\nФайл слишком большой.\nПри загрузке файла произошла ошибка.\nФормат числа некорректен.\nЧисло меньше минимально допустимого.\nЧисло больше максимально допустимого.\nНеверный ответ на проверочный вопрос.\nКод введен неверно.\nНеверно введён электронный адрес.\nВведён некорректный URL адрес.\nВведён некорректный телефонный номер.', 'Контактная форма 1', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d0%bd%d0%b0%d1%8f-%d1%84%d0%be%d1%80%d0%bc%d0%b0-1', '', '', '2019-10-07 13:16:01', '2019-10-07 10:16:01', '', 0, 'http://kaban/?post_type=wpcf7_contact_form&#038;p=158', 0, 'wpcf7_contact_form', '', 0),
(159, 1, '2019-10-07 13:31:56', '2019-10-07 10:31:56', '', 'Find Us', '', 'publish', 'closed', 'closed', '', 'find-us', '', '', '2019-10-07 13:44:34', '2019-10-07 10:44:34', '', 0, 'http://kaban/?page_id=159', 0, 'page', '', 0),
(160, 1, '2019-10-07 13:31:56', '2019-10-07 10:31:56', '', 'Find Us', '', 'inherit', 'closed', 'closed', '', '159-revision-v1', '', '', '2019-10-07 13:31:56', '2019-10-07 10:31:56', '', 159, 'http://kaban/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/159-revision-v1/', 0, 'revision', '', 0),
(162, 1, '2019-10-07 13:33:57', '2019-10-07 10:33:57', ' ', '', '', 'publish', 'closed', 'closed', '', '162', '', '', '2019-10-07 16:05:05', '2019-10-07 13:05:05', '', 0, 'http://kaban/?p=162', 7, 'nav_menu_item', '', 0),
(163, 1, '2019-10-07 13:37:25', '2019-10-07 10:37:25', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"Find-Us.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Find Us', 'find-us', 'publish', 'closed', 'closed', '', 'group_5d9b14b2b9bdb', '', '', '2019-10-07 13:37:25', '2019-10-07 10:37:25', '', 0, 'http://kaban/?post_type=acf-field-group&#038;p=163', 0, 'acf-field-group', '', 0),
(164, 1, '2019-10-07 13:37:25', '2019-10-07 10:37:25', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Map', 'map', 'publish', 'closed', 'closed', '', 'field_5d9b14b8e3ef0', '', '', '2019-10-07 13:37:25', '2019-10-07 10:37:25', '', 163, 'http://kaban/?post_type=acf-field&p=164', 0, 'acf-field', '', 0),
(165, 1, '2019-10-07 13:37:25', '2019-10-07 10:37:25', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}', 'Adress', 'adress', 'publish', 'closed', 'closed', '', 'field_5d9b152fe3ef1', '', '', '2019-10-07 13:37:25', '2019-10-07 10:37:25', '', 163, 'http://kaban/?post_type=acf-field&p=165', 1, 'acf-field', '', 0),
(166, 1, '2019-10-07 13:39:42', '2019-10-07 10:39:42', '', 'Find Us', '', 'inherit', 'closed', 'closed', '', '159-revision-v1', '', '', '2019-10-07 13:39:42', '2019-10-07 10:39:42', '', 159, 'http://kaban/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/159-revision-v1/', 0, 'revision', '', 0),
(167, 1, '2019-10-07 13:43:37', '2019-10-07 10:43:37', '', 'Find Us', '', 'inherit', 'closed', 'closed', '', '159-revision-v1', '', '', '2019-10-07 13:43:37', '2019-10-07 10:43:37', '', 159, 'http://kaban/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/159-revision-v1/', 0, 'revision', '', 0),
(168, 1, '2019-10-07 13:44:34', '2019-10-07 10:44:34', '', 'Find Us', '', 'inherit', 'closed', 'closed', '', '159-revision-v1', '', '', '2019-10-07 13:44:34', '2019-10-07 10:44:34', '', 159, 'http://kaban/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/159-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(169, 1, '2019-10-07 15:37:11', '2019-10-07 12:37:11', '<!-- wp:image {\"id\":173,\"width\":1920,\"height\":480} -->\n<figure class=\"wp-block-image is-resized\"><img src=\"http://kaban/wp-content/uploads/2019/10/page-img-1024x256.png\" alt=\"\" class=\"wp-image-173\" width=\"1920\" height=\"480\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading -->\n<h2>Our innovations for the future</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>There is something about parenthood that gives us a sense of history and a deeply rooted desire to send on into the next generation the great things we have discovered about life. And part of that is the desire to instill in our children the love of science, of learning and particularly the love of nature. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Your fascination with the universe and how to explore it as we so often do in the field of astronomy can be highly academic and dry as maybe it was if you took a course in astronomy. But when you get out there in the field at night, your equipment is just right and the night sky comes alive with activity, there is no other experience like it for majesty and pure excitement. And that is the kind of experience we want our children to come to love as much as we do.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":173,\"width\":1920,\"height\":480} -->\n<figure class=\"wp-block-image is-resized\"><img src=\"http://kaban/wp-content/uploads/2019/10/page-img-1024x256.png\" alt=\"\" class=\"wp-image-173\" width=\"1920\" height=\"480\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>There is something about parenthood that gives us a sense of history and a deeply rooted desire to send on into the next generation the great things we have discovered about life. And part of that is the desire to instill in our children the love of science, of learning and particularly the love of nature. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Your fascination with the universe and how to explore it as we so often do in the field of astronomy can be highly academic and dry as maybe it was if you took a course in astronomy. But when you get out there in the field at night, your equipment is just right and the night sky comes alive with activity, there is no other experience like it for majesty and pure excitement. And that is the kind of experience we want our children to come to love as much as we do.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote {\"className\":\"is-style-large\"} -->\n<blockquote class=\"wp-block-quote is-style-large\"><p>You might remember the Telescope computer commercials in which a youth reports this exciting news to his friends that they are about to get their new computer by telling them, “Dude, you’re getting a Telescope!”</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>It seems from the moment you begin to take your love of astronomy seriously, the thing that is on your mind is what kind of telescope will you get. And there is no question, investing in a good telescope can really enhance your enjoyment of your new passion in astronomy. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>But don’t be too hasty to keep up with the big wigs in the astronomy clubs that have advanced telescopes. There is another alternative that can give you most of the advantages of a telescope and some extra flexibility and reduced cost to boot. That alternative is a good pair of astronomy binoculars. Mostly we think of binoculars as the thing you use to see the football game when you have to sit in the cheap seats. But if you do some homework and had a good grasp on what your stargazing objectives are, the advantages of astronomy binoculars over an entry level telescope can be pretty convincing.</p>\n<!-- /wp:paragraph -->', 'Production technology', '', 'publish', 'closed', 'closed', '', 'production-technology', '', '', '2019-10-07 16:00:23', '2019-10-07 13:00:23', '', 0, 'http://kaban/?page_id=169', 0, 'page', '', 0),
(170, 1, '2019-10-07 15:37:11', '2019-10-07 12:37:11', '', 'Production technology', '', 'inherit', 'closed', 'closed', '', '169-revision-v1', '', '', '2019-10-07 15:37:11', '2019-10-07 12:37:11', '', 169, 'http://kaban/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/169-revision-v1/', 0, 'revision', '', 0),
(171, 1, '2019-10-07 15:39:39', '2019-10-07 12:39:39', '', 'Technology', '', 'publish', 'closed', 'closed', '', 'technology-3', '', '', '2019-10-07 16:05:05', '2019-10-07 13:05:05', '', 0, 'http://kaban/?p=171', 3, 'nav_menu_item', '', 0),
(172, 1, '2019-10-07 15:43:51', '2019-10-07 12:43:51', '<!-- wp:heading -->\n<h2>Our innovations for the future</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>There is something about parenthood that gives us a sense of history and a deeply rooted desire to send on into the next generation the great things we have discovered about life. And part of that is the desire to instill in our children the love of science, of learning and particularly the love of nature. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Your fascination with the universe and how to explore it as we so often do in the field of astronomy can be highly academic and dry as maybe it was if you took a course in astronomy. But when you get out there in the field at night, your equipment is just right and the night sky comes alive with activity, there is no other experience like it for majesty and pure excitement. And that is the kind of experience we want our children to come to love as much as we do.</p>\n<!-- /wp:paragraph -->', 'Production technology', '', 'inherit', 'closed', 'closed', '', '169-revision-v1', '', '', '2019-10-07 15:43:51', '2019-10-07 12:43:51', '', 169, 'http://kaban/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/169-revision-v1/', 0, 'revision', '', 0),
(173, 1, '2019-10-07 15:46:56', '2019-10-07 12:46:56', '', 'page-img', '', 'inherit', 'open', 'closed', '', 'page-img', '', '', '2019-10-07 15:46:56', '2019-10-07 12:46:56', '', 169, 'http://kaban/wp-content/uploads/2019/10/page-img.png', 0, 'attachment', 'image/png', 0),
(175, 1, '2019-10-07 15:48:15', '2019-10-07 12:48:15', '<!-- wp:image {\"id\":173} -->\n<figure class=\"wp-block-image\"><img src=\"http://kaban/wp-content/uploads/2019/10/page-img-1024x256.png\" alt=\"\" class=\"wp-image-173\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading -->\n<h2>Our innovations for the future</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>There is something about parenthood that gives us a sense of history and a deeply rooted desire to send on into the next generation the great things we have discovered about life. And part of that is the desire to instill in our children the love of science, of learning and particularly the love of nature. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Your fascination with the universe and how to explore it as we so often do in the field of astronomy can be highly academic and dry as maybe it was if you took a course in astronomy. But when you get out there in the field at night, your equipment is just right and the night sky comes alive with activity, there is no other experience like it for majesty and pure excitement. And that is the kind of experience we want our children to come to love as much as we do.</p>\n<!-- /wp:paragraph -->', 'Production technology', '', 'inherit', 'closed', 'closed', '', '169-revision-v1', '', '', '2019-10-07 15:48:15', '2019-10-07 12:48:15', '', 169, 'http://kaban/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/169-revision-v1/', 0, 'revision', '', 0),
(176, 1, '2019-10-07 15:48:47', '2019-10-07 12:48:47', '<!-- wp:image {\"id\":173,\"width\":1024,\"height\":256} -->\n<figure class=\"wp-block-image is-resized\"><img src=\"http://kaban/wp-content/uploads/2019/10/page-img-1024x256.png\" alt=\"\" class=\"wp-image-173\" width=\"1024\" height=\"256\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading -->\n<h2>Our innovations for the future</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>There is something about parenthood that gives us a sense of history and a deeply rooted desire to send on into the next generation the great things we have discovered about life. And part of that is the desire to instill in our children the love of science, of learning and particularly the love of nature. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Your fascination with the universe and how to explore it as we so often do in the field of astronomy can be highly academic and dry as maybe it was if you took a course in astronomy. But when you get out there in the field at night, your equipment is just right and the night sky comes alive with activity, there is no other experience like it for majesty and pure excitement. And that is the kind of experience we want our children to come to love as much as we do.</p>\n<!-- /wp:paragraph -->', 'Production technology', '', 'inherit', 'closed', 'closed', '', '169-revision-v1', '', '', '2019-10-07 15:48:47', '2019-10-07 12:48:47', '', 169, 'http://kaban/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/169-revision-v1/', 0, 'revision', '', 0),
(177, 1, '2019-10-07 15:49:09', '2019-10-07 12:49:09', '<!-- wp:image {\"id\":173,\"width\":1920,\"height\":480} -->\n<figure class=\"wp-block-image is-resized\"><img src=\"http://kaban/wp-content/uploads/2019/10/page-img-1024x256.png\" alt=\"\" class=\"wp-image-173\" width=\"1920\" height=\"480\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading -->\n<h2>Our innovations for the future</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>There is something about parenthood that gives us a sense of history and a deeply rooted desire to send on into the next generation the great things we have discovered about life. And part of that is the desire to instill in our children the love of science, of learning and particularly the love of nature. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Your fascination with the universe and how to explore it as we so often do in the field of astronomy can be highly academic and dry as maybe it was if you took a course in astronomy. But when you get out there in the field at night, your equipment is just right and the night sky comes alive with activity, there is no other experience like it for majesty and pure excitement. And that is the kind of experience we want our children to come to love as much as we do.</p>\n<!-- /wp:paragraph -->', 'Production technology', '', 'inherit', 'closed', 'closed', '', '169-revision-v1', '', '', '2019-10-07 15:49:09', '2019-10-07 12:49:09', '', 169, 'http://kaban/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/169-revision-v1/', 0, 'revision', '', 0),
(178, 1, '2019-10-07 15:50:06', '2019-10-07 12:50:06', '<!-- wp:image {\"id\":173,\"width\":1920,\"height\":480} -->\n<figure class=\"wp-block-image is-resized\"><img src=\"http://kaban/wp-content/uploads/2019/10/page-img-1024x256.png\" alt=\"\" class=\"wp-image-173\" width=\"1920\" height=\"480\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading -->\n<h2>Our innovations for the future</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>There is something about parenthood that gives us a sense of history and a deeply rooted desire to send on into the next generation the great things we have discovered about life. And part of that is the desire to instill in our children the love of science, of learning and particularly the love of nature. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Your fascination with the universe and how to explore it as we so often do in the field of astronomy can be highly academic and dry as maybe it was if you took a course in astronomy. But when you get out there in the field at night, your equipment is just right and the night sky comes alive with activity, there is no other experience like it for majesty and pure excitement. And that is the kind of experience we want our children to come to love as much as we do.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":173,\"width\":1920,\"height\":480} -->\n<figure class=\"wp-block-image is-resized\"><img src=\"http://kaban/wp-content/uploads/2019/10/page-img-1024x256.png\" alt=\"\" class=\"wp-image-173\" width=\"1920\" height=\"480\"/></figure>\n<!-- /wp:image -->', 'Production technology', '', 'inherit', 'closed', 'closed', '', '169-revision-v1', '', '', '2019-10-07 15:50:06', '2019-10-07 12:50:06', '', 169, 'http://kaban/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/169-revision-v1/', 0, 'revision', '', 0),
(179, 1, '2019-10-07 15:55:46', '2019-10-07 12:55:46', '<!-- wp:image {\"id\":173,\"width\":1920,\"height\":480} -->\n<figure class=\"wp-block-image is-resized\"><img src=\"http://kaban/wp-content/uploads/2019/10/page-img-1024x256.png\" alt=\"\" class=\"wp-image-173\" width=\"1920\" height=\"480\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading -->\n<h2>Our innovations for the future</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>There is something about parenthood that gives us a sense of history and a deeply rooted desire to send on into the next generation the great things we have discovered about life. And part of that is the desire to instill in our children the love of science, of learning and particularly the love of nature. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Your fascination with the universe and how to explore it as we so often do in the field of astronomy can be highly academic and dry as maybe it was if you took a course in astronomy. But when you get out there in the field at night, your equipment is just right and the night sky comes alive with activity, there is no other experience like it for majesty and pure excitement. And that is the kind of experience we want our children to come to love as much as we do.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":173,\"width\":1920,\"height\":480} -->\n<figure class=\"wp-block-image is-resized\"><img src=\"http://kaban/wp-content/uploads/2019/10/page-img-1024x256.png\" alt=\"\" class=\"wp-image-173\" width=\"1920\" height=\"480\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>There is something about parenthood that gives us a sense of history and a deeply rooted desire to send on into the next generation the great things we have discovered about life. And part of that is the desire to instill in our children the love of science, of learning and particularly the love of nature. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Your fascination with the universe and how to explore it as we so often do in the field of astronomy can be highly academic and dry as maybe it was if you took a course in astronomy. But when you get out there in the field at night, your equipment is just right and the night sky comes alive with activity, there is no other experience like it for majesty and pure excitement. And that is the kind of experience we want our children to come to love as much as we do.</p>\n<!-- /wp:paragraph -->', 'Production technology', '', 'inherit', 'closed', 'closed', '', '169-revision-v1', '', '', '2019-10-07 15:55:46', '2019-10-07 12:55:46', '', 169, 'http://kaban/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/169-revision-v1/', 0, 'revision', '', 0),
(180, 1, '2019-10-07 15:56:40', '2019-10-07 12:56:40', '<!-- wp:image {\"id\":173,\"width\":1920,\"height\":480} -->\n<figure class=\"wp-block-image is-resized\"><img src=\"http://kaban/wp-content/uploads/2019/10/page-img-1024x256.png\" alt=\"\" class=\"wp-image-173\" width=\"1920\" height=\"480\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading -->\n<h2>Our innovations for the future</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>There is something about parenthood that gives us a sense of history and a deeply rooted desire to send on into the next generation the great things we have discovered about life. And part of that is the desire to instill in our children the love of science, of learning and particularly the love of nature. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Your fascination with the universe and how to explore it as we so often do in the field of astronomy can be highly academic and dry as maybe it was if you took a course in astronomy. But when you get out there in the field at night, your equipment is just right and the night sky comes alive with activity, there is no other experience like it for majesty and pure excitement. And that is the kind of experience we want our children to come to love as much as we do.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":173,\"width\":1920,\"height\":480} -->\n<figure class=\"wp-block-image is-resized\"><img src=\"http://kaban/wp-content/uploads/2019/10/page-img-1024x256.png\" alt=\"\" class=\"wp-image-173\" width=\"1920\" height=\"480\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>There is something about parenthood that gives us a sense of history and a deeply rooted desire to send on into the next generation the great things we have discovered about life. And part of that is the desire to instill in our children the love of science, of learning and particularly the love of nature. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Your fascination with the universe and how to explore it as we so often do in the field of astronomy can be highly academic and dry as maybe it was if you took a course in astronomy. But when you get out there in the field at night, your equipment is just right and the night sky comes alive with activity, there is no other experience like it for majesty and pure excitement. And that is the kind of experience we want our children to come to love as much as we do.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote {\"className\":\"is-style-large\"} -->\n<blockquote class=\"wp-block-quote is-style-large\"><p>You might remember the Telescope computer commercials in which a youth reports this exciting news to his friends that they are about to get their new computer by telling them, “Dude, you’re getting a Telescope!”</p></blockquote>\n<!-- /wp:quote -->', 'Production technology', '', 'inherit', 'closed', 'closed', '', '169-revision-v1', '', '', '2019-10-07 15:56:40', '2019-10-07 12:56:40', '', 169, 'http://kaban/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/169-revision-v1/', 0, 'revision', '', 0),
(181, 1, '2019-10-07 16:00:23', '2019-10-07 13:00:23', '<!-- wp:image {\"id\":173,\"width\":1920,\"height\":480} -->\n<figure class=\"wp-block-image is-resized\"><img src=\"http://kaban/wp-content/uploads/2019/10/page-img-1024x256.png\" alt=\"\" class=\"wp-image-173\" width=\"1920\" height=\"480\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading -->\n<h2>Our innovations for the future</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>There is something about parenthood that gives us a sense of history and a deeply rooted desire to send on into the next generation the great things we have discovered about life. And part of that is the desire to instill in our children the love of science, of learning and particularly the love of nature. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Your fascination with the universe and how to explore it as we so often do in the field of astronomy can be highly academic and dry as maybe it was if you took a course in astronomy. But when you get out there in the field at night, your equipment is just right and the night sky comes alive with activity, there is no other experience like it for majesty and pure excitement. And that is the kind of experience we want our children to come to love as much as we do.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":173,\"width\":1920,\"height\":480} -->\n<figure class=\"wp-block-image is-resized\"><img src=\"http://kaban/wp-content/uploads/2019/10/page-img-1024x256.png\" alt=\"\" class=\"wp-image-173\" width=\"1920\" height=\"480\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>There is something about parenthood that gives us a sense of history and a deeply rooted desire to send on into the next generation the great things we have discovered about life. And part of that is the desire to instill in our children the love of science, of learning and particularly the love of nature. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Your fascination with the universe and how to explore it as we so often do in the field of astronomy can be highly academic and dry as maybe it was if you took a course in astronomy. But when you get out there in the field at night, your equipment is just right and the night sky comes alive with activity, there is no other experience like it for majesty and pure excitement. And that is the kind of experience we want our children to come to love as much as we do.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote {\"className\":\"is-style-large\"} -->\n<blockquote class=\"wp-block-quote is-style-large\"><p>You might remember the Telescope computer commercials in which a youth reports this exciting news to his friends that they are about to get their new computer by telling them, “Dude, you’re getting a Telescope!”</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>It seems from the moment you begin to take your love of astronomy seriously, the thing that is on your mind is what kind of telescope will you get. And there is no question, investing in a good telescope can really enhance your enjoyment of your new passion in astronomy. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>But don’t be too hasty to keep up with the big wigs in the astronomy clubs that have advanced telescopes. There is another alternative that can give you most of the advantages of a telescope and some extra flexibility and reduced cost to boot. That alternative is a good pair of astronomy binoculars. Mostly we think of binoculars as the thing you use to see the football game when you have to sit in the cheap seats. But if you do some homework and had a good grasp on what your stargazing objectives are, the advantages of astronomy binoculars over an entry level telescope can be pretty convincing.</p>\n<!-- /wp:paragraph -->', 'Production technology', '', 'inherit', 'closed', 'closed', '', '169-revision-v1', '', '', '2019-10-07 16:00:23', '2019-10-07 13:00:23', '', 169, 'http://kaban/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/169-revision-v1/', 0, 'revision', '', 0),
(182, 1, '2019-10-07 16:04:16', '2019-10-07 13:04:16', '', 'Our Facility', '', 'publish', 'closed', 'closed', '', 'our-facility', '', '', '2019-10-07 16:11:32', '2019-10-07 13:11:32', '', 0, 'http://kaban/?page_id=182', 0, 'page', '', 0),
(183, 1, '2019-10-07 16:04:16', '2019-10-07 13:04:16', '', 'Our Facility', '', 'inherit', 'closed', 'closed', '', '182-revision-v1', '', '', '2019-10-07 16:04:16', '2019-10-07 13:04:16', '', 182, 'http://kaban/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/182-revision-v1/', 0, 'revision', '', 0),
(184, 1, '2019-10-07 16:05:05', '2019-10-07 13:05:05', ' ', '', '', 'publish', 'closed', 'closed', '', '184', '', '', '2019-10-07 16:05:05', '2019-10-07 13:05:05', '', 0, 'http://kaban/?p=184', 4, 'nav_menu_item', '', 0),
(185, 1, '2019-10-07 16:09:43', '2019-10-07 13:09:43', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"182\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Our Facility', 'our-facility', 'publish', 'open', 'open', '', 'group_5d9b3916f2166', '', '', '2019-10-07 16:10:19', '2019-10-07 13:10:19', '', 0, 'http://kaban/?p=185', 0, 'acf-field-group', '', 0),
(186, 1, '2019-10-07 16:09:43', '2019-10-07 13:09:43', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Slider', '', 'publish', 'closed', 'closed', '', 'field_5d9b3917058ba', '', '', '2019-10-07 16:09:43', '2019-10-07 13:09:43', '', 185, 'http://kaban/?post_type=acf-field&p=186', 0, 'acf-field', '', 0),
(187, 1, '2019-10-07 16:09:43', '2019-10-07 13:09:43', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:0;s:3:\"max\";i:0;s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Sliders', 'sliders', 'publish', 'closed', 'closed', '', 'field_5d9b391705d25', '', '', '2019-10-07 16:09:43', '2019-10-07 13:09:43', '', 185, 'http://kaban/?post_type=acf-field&#038;p=187', 1, 'acf-field', '', 0),
(188, 1, '2019-10-07 16:09:43', '2019-10-07 13:09:43', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Slide name', 'slide_name', 'publish', 'closed', 'closed', '', 'field_5d9b39170ab12', '', '', '2019-10-07 16:09:43', '2019-10-07 13:09:43', '', 187, 'http://kaban/?post_type=acf-field&p=188', 0, 'acf-field', '', 0),
(189, 1, '2019-10-07 16:09:43', '2019-10-07 13:09:43', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Button text', 'button_text', 'publish', 'closed', 'closed', '', 'field_5d9b39170af3b', '', '', '2019-10-07 16:09:43', '2019-10-07 13:09:43', '', 187, 'http://kaban/?post_type=acf-field&p=189', 1, 'acf-field', '', 0),
(190, 1, '2019-10-07 16:09:43', '2019-10-07 13:09:43', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:22:\"Example\r\n/posts/page/2\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Button link', 'button_link', 'publish', 'closed', 'closed', '', 'field_5d9b39170b2dc', '', '', '2019-10-07 16:09:43', '2019-10-07 13:09:43', '', 187, 'http://kaban/?post_type=acf-field&p=190', 2, 'acf-field', '', 0),
(191, 1, '2019-10-07 16:09:43', '2019-10-07 13:09:43', 'a:10:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image or video', 'image', 'publish', 'closed', 'closed', '', 'field_5d9b39170b624', '', '', '2019-10-07 16:09:43', '2019-10-07 13:09:43', '', 187, 'http://kaban/?post_type=acf-field&p=191', 3, 'acf-field', '', 0),
(192, 1, '2019-10-07 16:09:43', '2019-10-07 13:09:43', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:35:\"If the file is a video, deliver yes\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:1;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Video?', 'mime', 'publish', 'closed', 'closed', '', 'field_5d9b39170baa4', '', '', '2019-10-07 16:09:43', '2019-10-07 13:09:43', '', 187, 'http://kaban/?post_type=acf-field&p=192', 4, 'acf-field', '', 0),
(193, 1, '2019-10-07 16:11:21', '2019-10-07 13:11:21', '', 'Our Facility', '', 'inherit', 'closed', 'closed', '', '182-revision-v1', '', '', '2019-10-07 16:11:21', '2019-10-07 13:11:21', '', 182, 'http://kaban/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/182-revision-v1/', 0, 'revision', '', 0),
(194, 1, '2019-10-07 16:11:32', '2019-10-07 13:11:32', '', 'Our Facility', '', 'inherit', 'closed', 'closed', '', '182-revision-v1', '', '', '2019-10-07 16:11:32', '2019-10-07 13:11:32', '', 182, 'http://kaban/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/182-revision-v1/', 0, 'revision', '', 0),
(195, 1, '2019-10-07 16:20:11', '2019-10-07 13:20:11', '', 'Products', '', 'publish', 'closed', 'closed', '', 'products-2', '', '', '2019-10-07 16:20:11', '2019-10-07 13:20:11', '', 0, 'http://kaban/?p=195', 2, 'nav_menu_item', '', 0),
(198, 1, '2019-10-08 10:22:05', '2019-10-08 07:22:05', '<!-- wp:heading -->\n<h2>Kaban Privacy policy </h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>The information that we collect is used to provide you with the best online shopping experience while mitigating any possible security risk. We take your privacy seriously and hope the following information gives you complete transparency regarding your rights, the information we gather, how we use it, and how to correct or change it.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Any reference to “Kaban Cannabis” within this Privacy Policy includes Kaban Cannabis and all or any of its direct or indirect subsidiary undertakings, joint venture partners, and their related companies wherever located in the world as may exist from time to time.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong><em>At Kaban Cannabis we are committed to protecting the privacy of your personal information. That’s why we’ve invested heavily in world class information management systems to keep your details encrypted and secure.</em></strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Sign Up Information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>When you open an account with us, in order for us to complete your order we ask you for:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Your Name</li><li>Mailing Address</li><li>Billing Address</li><li>Email Address</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p><strong><em>We ask for your name and mailing address so that we may properly deliver your purchased goods to you.</em></strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Personal Information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Kaban Cannabis may occasionally contact a customer directly to acquire more information in order to assist in delivering an order to the customer’s mailing address. This information includes but is not limited to:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Age Verification</li><li>Address Verification</li><li>Order Number Verification</li><li>Telephone Number</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>In the event of a registration where we receive notice that a customer submitted an inaccurate birth date (by claiming that they were over 19 but weren’t), we will immediately close their account and delete their personal information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Cookies</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>We use cookies to track who, how and when customers use the site in order to deliver relevant regional and personal information. Cookies are text files which sit on your computer. These cookies are completely safe and secure and will never contain any sensitive information.<br>\nA cookie placed by Kaban Cannabis can only be accessed by Kaban Cannabis. These contain information such as their name or user identification number for both customer protection and risk mitigation purposes.<br>\nSensitive information is encrypted for security purposes and no information is ever shared with third party marketers.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Security</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Kaban Cannabis recognizes the importance of keeping customer details and payment information safe.<br>\nOur systems and processes are annually audited and comply with the toughest security industry standards to prevent customer information from being compromised.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>More Questions?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Feel free to check out our <a href=\"/faq\" target=\"_blank\" rel=\"noreferrer noopener\" aria-label=\"FAQ (откроется в новой вкладке)\">FAQ</a> page or <a rel=\"noreferrer noopener\" aria-label=\"contact us (откроется в новой вкладке)\" href=\"/contact\" target=\"_blank\">contact us</a>.</p>\n<!-- /wp:paragraph -->', 'Legal & Privacy policy', '', 'publish', 'closed', 'closed', '', 'legal-privacy-policy', '', '', '2019-10-08 10:38:55', '2019-10-08 07:38:55', '', 0, 'http://kaban/?page_id=198', 0, 'page', '', 0),
(199, 1, '2019-10-08 10:22:05', '2019-10-08 07:22:05', '', 'Legal & Privacy policy', '', 'inherit', 'closed', 'closed', '', '198-revision-v1', '', '', '2019-10-08 10:22:05', '2019-10-08 07:22:05', '', 198, 'http://kaban/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/198-revision-v1/', 0, 'revision', '', 0),
(200, 1, '2019-10-08 10:22:27', '2019-10-08 07:22:27', '', 'FAQ', '', 'publish', 'closed', 'closed', '', 'faq', '', '', '2019-10-08 10:22:27', '2019-10-08 07:22:27', '', 0, 'http://kaban/?page_id=200', 0, 'page', '', 0),
(201, 1, '2019-10-08 10:22:27', '2019-10-08 07:22:27', '', 'FAQ', '', 'inherit', 'closed', 'closed', '', '200-revision-v1', '', '', '2019-10-08 10:22:27', '2019-10-08 07:22:27', '', 200, 'http://kaban/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/200-revision-v1/', 0, 'revision', '', 0),
(202, 1, '2019-10-08 10:22:59', '2019-10-08 07:22:59', '<!-- wp:image {\"id\":173,\"width\":1920,\"height\":480} -->\n<figure class=\"wp-block-image is-resized\"><img src=\"http://kaban/wp-content/uploads/2019/10/page-img-1024x256.png\" alt=\"\" class=\"wp-image-173\" width=\"1920\" height=\"480\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading -->\n<h2>The Glossary Of Telescopes</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>There is something about parenthood that gives us a sense of history and a deeply rooted desire to send on into the next generation the great things we have discovered about life. And part of that is the desire to instill in our children the love of science, of learning and particularly the love of nature. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Your fascination with the universe and how to explore it as we so often do in the field of astronomy can be highly academic and dry as maybe it was if you took a course in astronomy. But when you get out there in the field at night, your equipment is just right and the night sky comes alive with activity, there is no other experience like it for majesty and pure excitement. And that is the kind of experience we want our children to come to love as much as we do.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":173,\"width\":1920,\"height\":480} -->\n<figure class=\"wp-block-image is-resized\"><img src=\"http://kaban/wp-content/uploads/2019/10/page-img-1024x256.png\" alt=\"\" class=\"wp-image-173\" width=\"1920\" height=\"480\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>You might remember the Telescope computer commercials in which a youth reports this exciting news to his friends that they are about to get their new computer by telling them, “Dude, you’re getting a Telescope!”</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>It seems from the moment you begin to take your love of astronomy seriously, the thing that is on your mind is what kind of telescope will you get. And there is no question, investing in a good telescope can really enhance your enjoyment of your new passion in astronomy. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>But don’t be too hasty to keep up with the big wigs in the astronomy clubs that have advanced telescopes. There is another alternative that can give you most of the advantages of a telescope and some extra flexibility and reduced cost to boot. That alternative is a good pair of astronomy binoculars. Mostly we think of binoculars as the thing you use to see the football game when you have to sit in the cheap seats. But if you do some homework and had a good grasp on what your stargazing objectives are, the advantages of astronomy binoculars over an entry level telescope can be pretty convincing.</p>\n<!-- /wp:paragraph -->', 'Environmental impact', '', 'publish', 'closed', 'closed', '', 'environmental-impact', '', '', '2019-10-08 10:29:03', '2019-10-08 07:29:03', '', 0, 'http://kaban/?page_id=202', 0, 'page', '', 0),
(203, 1, '2019-10-08 10:22:59', '2019-10-08 07:22:59', '', 'Environmental impact', '', 'inherit', 'closed', 'closed', '', '202-revision-v1', '', '', '2019-10-08 10:22:59', '2019-10-08 07:22:59', '', 202, 'http://kaban/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/202-revision-v1/', 0, 'revision', '', 0),
(204, 1, '2019-10-08 10:23:48', '2019-10-08 07:23:48', '<!-- wp:paragraph -->\n<p>Kaban Cannabis Marketplace is located in Las Vegas &amp; is the largest marijuana dispensary worldwide. The cannabis superstore spans nearly 16,000 square feet with 170 feet of display counters dedicated to the best Nevada made marijuana products. Kaban Cannabis Marketplace has the largest selection of any Las Vegas dispensary, NuWu buys in bulk, so you pay less.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Located on the Native Las Vegas Paiute Tribe’s land, Kaban has no hidden Nevada marijuana taxes. The price you see is the price you pay! Kaban dispensary caters to anyone 21+ with ID &amp; offers a variety of medical marijuana &amp; recreational cannabis products. Flower, topicals, CBD oil, edibles, vapes, topicals, prerolls, concentrates &amp; more!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>All Kaban locations are home to Vegas’ only dispensary drive thrus! They’re also both open 24 hours! Unlike most dispensary near you in Las Vegas, Kaban locations do not have waiting rooms &amp; will get you in &amp; out <br>\nin a breeze with your weed products.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Browse both location’s full menu &amp; place an Order Online . Using only a name &amp; phone number your order can be ready in no time at this weed dispensary. Once your order has been placed &amp; you’ve received your confirmation text, your order will be ready &amp; waiting. Feel free to come into our marketplace &amp; head straight to the pick-up window or you can drive thru without having to get out of your car. <br>\nOnline Orders are held for 24 hours! </p>\n<!-- /wp:paragraph -->', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2019-10-08 10:26:27', '2019-10-08 07:26:27', '', 0, 'http://kaban/?page_id=204', 0, 'page', '', 0),
(205, 1, '2019-10-08 10:23:48', '2019-10-08 07:23:48', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '204-revision-v1', '', '', '2019-10-08 10:23:48', '2019-10-08 07:23:48', '', 204, 'http://kaban/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/204-revision-v1/', 0, 'revision', '', 0),
(206, 1, '2019-10-08 10:25:21', '2019-10-08 07:25:21', ' ', '', '', 'publish', 'closed', 'closed', '', '206', '', '', '2019-10-08 10:25:21', '2019-10-08 07:25:21', '', 0, 'http://kaban/?p=206', 2, 'nav_menu_item', '', 0),
(207, 1, '2019-10-08 10:25:21', '2019-10-08 07:25:21', ' ', '', '', 'publish', 'closed', 'closed', '', '207', '', '', '2019-10-08 10:25:21', '2019-10-08 07:25:21', '', 0, 'http://kaban/?p=207', 1, 'nav_menu_item', '', 0),
(208, 1, '2019-10-08 10:25:21', '2019-10-08 07:25:21', ' ', '', '', 'publish', 'closed', 'closed', '', '208', '', '', '2019-10-08 10:25:21', '2019-10-08 07:25:21', '', 0, 'http://kaban/?p=208', 3, 'nav_menu_item', '', 0),
(209, 1, '2019-10-08 10:25:21', '2019-10-08 07:25:21', ' ', '', '', 'publish', 'closed', 'closed', '', '209', '', '', '2019-10-08 10:25:21', '2019-10-08 07:25:21', '', 0, 'http://kaban/?p=209', 4, 'nav_menu_item', '', 0),
(211, 1, '2019-10-08 10:26:27', '2019-10-08 07:26:27', '<!-- wp:paragraph -->\n<p>Kaban Cannabis Marketplace is located in Las Vegas &amp; is the largest marijuana dispensary worldwide. The cannabis superstore spans nearly 16,000 square feet with 170 feet of display counters dedicated to the best Nevada made marijuana products. Kaban Cannabis Marketplace has the largest selection of any Las Vegas dispensary, NuWu buys in bulk, so you pay less.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Located on the Native Las Vegas Paiute Tribe’s land, Kaban has no hidden Nevada marijuana taxes. The price you see is the price you pay! Kaban dispensary caters to anyone 21+ with ID &amp; offers a variety of medical marijuana &amp; recreational cannabis products. Flower, topicals, CBD oil, edibles, vapes, topicals, prerolls, concentrates &amp; more!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>All Kaban locations are home to Vegas’ only dispensary drive thrus! They’re also both open 24 hours! Unlike most dispensary near you in Las Vegas, Kaban locations do not have waiting rooms &amp; will get you in &amp; out <br>\nin a breeze with your weed products.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Browse both location’s full menu &amp; place an Order Online . Using only a name &amp; phone number your order can be ready in no time at this weed dispensary. Once your order has been placed &amp; you’ve received your confirmation text, your order will be ready &amp; waiting. Feel free to come into our marketplace &amp; head straight to the pick-up window or you can drive thru without having to get out of your car. <br>\nOnline Orders are held for 24 hours! </p>\n<!-- /wp:paragraph -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '204-revision-v1', '', '', '2019-10-08 10:26:27', '2019-10-08 07:26:27', '', 204, 'http://kaban/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/204-revision-v1/', 0, 'revision', '', 0),
(212, 1, '2019-10-08 10:29:03', '2019-10-08 07:29:03', '<!-- wp:image {\"id\":173,\"width\":1920,\"height\":480} -->\n<figure class=\"wp-block-image is-resized\"><img src=\"http://kaban/wp-content/uploads/2019/10/page-img-1024x256.png\" alt=\"\" class=\"wp-image-173\" width=\"1920\" height=\"480\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading -->\n<h2>The Glossary Of Telescopes</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>There is something about parenthood that gives us a sense of history and a deeply rooted desire to send on into the next generation the great things we have discovered about life. And part of that is the desire to instill in our children the love of science, of learning and particularly the love of nature. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Your fascination with the universe and how to explore it as we so often do in the field of astronomy can be highly academic and dry as maybe it was if you took a course in astronomy. But when you get out there in the field at night, your equipment is just right and the night sky comes alive with activity, there is no other experience like it for majesty and pure excitement. And that is the kind of experience we want our children to come to love as much as we do.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":173,\"width\":1920,\"height\":480} -->\n<figure class=\"wp-block-image is-resized\"><img src=\"http://kaban/wp-content/uploads/2019/10/page-img-1024x256.png\" alt=\"\" class=\"wp-image-173\" width=\"1920\" height=\"480\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>You might remember the Telescope computer commercials in which a youth reports this exciting news to his friends that they are about to get their new computer by telling them, “Dude, you’re getting a Telescope!”</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>It seems from the moment you begin to take your love of astronomy seriously, the thing that is on your mind is what kind of telescope will you get. And there is no question, investing in a good telescope can really enhance your enjoyment of your new passion in astronomy. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>But don’t be too hasty to keep up with the big wigs in the astronomy clubs that have advanced telescopes. There is another alternative that can give you most of the advantages of a telescope and some extra flexibility and reduced cost to boot. That alternative is a good pair of astronomy binoculars. Mostly we think of binoculars as the thing you use to see the football game when you have to sit in the cheap seats. But if you do some homework and had a good grasp on what your stargazing objectives are, the advantages of astronomy binoculars over an entry level telescope can be pretty convincing.</p>\n<!-- /wp:paragraph -->', 'Environmental impact', '', 'inherit', 'closed', 'closed', '', '202-revision-v1', '', '', '2019-10-08 10:29:03', '2019-10-08 07:29:03', '', 202, 'http://kaban/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/202-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(213, 1, '2019-10-08 10:38:12', '2019-10-08 07:38:12', '<!-- wp:heading -->\n<h2>Kaban Privacy policy </h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>The information that we collect is used to provide you with the best online shopping experience while mitigating any possible security risk. We take your privacy seriously and hope the following information gives you complete transparency regarding your rights, the information we gather, how we use it, and how to correct or change it.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Any reference to “Kaban Cannabis” within this Privacy Policy includes Kaban Cannabis and all or any of its direct or indirect subsidiary undertakings, joint venture partners, and their related companies wherever located in the world as may exist from time to time.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong><em>At Kaban Cannabis we are committed to protecting the privacy of your personal information. That’s why we’ve invested heavily in world class information management systems to keep your details encrypted and secure.</em></strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Sign Up Information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>When you open an account with us, in order for us to complete your order we ask you for:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Your Name</li><li>Mailing Address</li><li>Billing Address</li><li>Email Address</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p><strong><em>We ask for your name and mailing address so that we may properly deliver your purchased goods to you.</em></strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Personal Information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Kaban Cannabis may occasionally contact a customer directly to acquire more information in order to assist in delivering an order to the customer’s mailing address. This information includes but is not limited to:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Age Verification</li><li>Address Verification</li><li>Order Number Verification</li><li>Telephone Number</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>In the event of a registration where we receive notice that a customer submitted an inaccurate birth date (by claiming that they were over 19 but weren’t), we will immediately close their account and delete their personal information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Cookies</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>We use cookies to track who, how and when customers use the site in order to deliver relevant regional and personal information. Cookies are text files which sit on your computer. These cookies are completely safe and secure and will never contain any sensitive information.<br>\nA cookie placed by Kaban Cannabis can only be accessed by Kaban Cannabis. These contain information such as their name or user identification number for both customer protection and risk mitigation purposes.<br>\nSensitive information is encrypted for security purposes and no information is ever shared with third party marketers.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Security</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Kaban Cannabis recognizes the importance of keeping customer details and payment information safe.<br>\nOur systems and processes are annually audited and comply with the toughest security industry standards to prevent customer information from being compromised.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>More Questions?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Feel free to check out our FAQ page or contact us.</p>\n<!-- /wp:paragraph -->', 'Legal & Privacy policy', '', 'inherit', 'closed', 'closed', '', '198-autosave-v1', '', '', '2019-10-08 10:38:12', '2019-10-08 07:38:12', '', 198, 'http://kaban/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/198-autosave-v1/', 0, 'revision', '', 0),
(214, 1, '2019-10-08 10:38:55', '2019-10-08 07:38:55', '<!-- wp:heading -->\n<h2>Kaban Privacy policy </h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>The information that we collect is used to provide you with the best online shopping experience while mitigating any possible security risk. We take your privacy seriously and hope the following information gives you complete transparency regarding your rights, the information we gather, how we use it, and how to correct or change it.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Any reference to “Kaban Cannabis” within this Privacy Policy includes Kaban Cannabis and all or any of its direct or indirect subsidiary undertakings, joint venture partners, and their related companies wherever located in the world as may exist from time to time.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong><em>At Kaban Cannabis we are committed to protecting the privacy of your personal information. That’s why we’ve invested heavily in world class information management systems to keep your details encrypted and secure.</em></strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Sign Up Information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>When you open an account with us, in order for us to complete your order we ask you for:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Your Name</li><li>Mailing Address</li><li>Billing Address</li><li>Email Address</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p><strong><em>We ask for your name and mailing address so that we may properly deliver your purchased goods to you.</em></strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Personal Information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Kaban Cannabis may occasionally contact a customer directly to acquire more information in order to assist in delivering an order to the customer’s mailing address. This information includes but is not limited to:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Age Verification</li><li>Address Verification</li><li>Order Number Verification</li><li>Telephone Number</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>In the event of a registration where we receive notice that a customer submitted an inaccurate birth date (by claiming that they were over 19 but weren’t), we will immediately close their account and delete their personal information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Cookies</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>We use cookies to track who, how and when customers use the site in order to deliver relevant regional and personal information. Cookies are text files which sit on your computer. These cookies are completely safe and secure and will never contain any sensitive information.<br>\nA cookie placed by Kaban Cannabis can only be accessed by Kaban Cannabis. These contain information such as their name or user identification number for both customer protection and risk mitigation purposes.<br>\nSensitive information is encrypted for security purposes and no information is ever shared with third party marketers.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Security</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Kaban Cannabis recognizes the importance of keeping customer details and payment information safe.<br>\nOur systems and processes are annually audited and comply with the toughest security industry standards to prevent customer information from being compromised.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>More Questions?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Feel free to check out our <a href=\"/faq\" target=\"_blank\" rel=\"noreferrer noopener\" aria-label=\"FAQ (откроется в новой вкладке)\">FAQ</a> page or <a rel=\"noreferrer noopener\" aria-label=\"contact us (откроется в новой вкладке)\" href=\"/contact\" target=\"_blank\">contact us</a>.</p>\n<!-- /wp:paragraph -->', 'Legal & Privacy policy', '', 'inherit', 'closed', 'closed', '', '198-revision-v1', '', '', '2019-10-08 10:38:55', '2019-10-08 07:38:55', '', 198, 'http://kaban/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/198-revision-v1/', 0, 'revision', '', 0),
(215, 1, '2019-10-08 11:52:18', '2019-10-08 08:52:18', '<!-- wp:paragraph -->\n<p>There is something about parenthood that gives us a sense of history and a deeply rooted desire to send on into the next generation the great things we have discovered about life. And part of that is the desire to instill in our children the love of <strong>science</strong>, of learning and particularly the love of <strong>nature</strong>. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Your fascination with the universe and how to explore it as we so often do in the field of astronomy can be highly academic and dry as maybe it was if you took a course in astronomy. But when you get out there in the field at night, your equipment is just right and the night sky comes alive with activity, there is no other experience like it for majesty and pure excitement. And that is the kind of experience we want our children to come to love as much as we do.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>You might remember the Telescope computer commercials in which a youth reports this exciting news to his friends that they are about to get their new computer by telling them, “Dude, you’re getting a Telescope!”</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>It seems from the moment you begin to take your love of astronomy seriously, the thing that is on your mind is what kind of telescope will you get. And there is no question, investing in a good telescope can really enhance your enjoyment of your new passion in astronomy. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>But don’t be too hasty to keep up with the big wigs in the astronomy clubs that have advanced telescopes. There is another alternative that can give you most of the advantages of a telescope and some extra flexibility and reduced cost to boot. That alternative is a good pair of astronomy binoculars. Mostly we think of binoculars as the thing you use to see the football game when you have to sit in the cheap seats. But if you do some homework and had a good grasp on what your stargazing objectives are, the advantages of astronomy binoculars over an entry level telescope can be pretty convincing.</p>\n<!-- /wp:paragraph -->', 'Astronomy Binoculars A Great Alternative', 'Internet Advertising What Went Just Right', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-10-08 11:52:18', '2019-10-08 08:52:18', '', 40, 'http://kaban/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/40-revision-v1/', 0, 'revision', '', 0),
(216, 1, '2019-10-08 11:52:43', '2019-10-08 08:52:43', '<!-- wp:heading -->\n<h2>The Glossary Of Telescopes</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>There is something about parenthood that gives us a sense of history and a deeply rooted desire to send on into the next generation the great things we have discovered about life. And part of that is the desire to instill in our children the love of <strong>science</strong>, of learning and particularly the love of <strong>nature</strong>. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Your fascination with the universe and how to explore it as we so often do in the field of astronomy can be highly academic and dry as maybe it was if you took a course in astronomy. But when you get out there in the field at night, your equipment is just right and the night sky comes alive with activity, there is no other experience like it for majesty and pure excitement. And that is the kind of experience we want our children to come to love as much as we do.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>You might remember the Telescope computer commercials in which a youth reports this exciting news to his friends that they are about to get their new computer by telling them, “Dude, you’re getting a Telescope!”</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>It seems from the moment you begin to take your love of astronomy seriously, the thing that is on your mind is what kind of telescope will you get. And there is no question, investing in a good telescope can really enhance your enjoyment of your new passion in astronomy. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>But don’t be too hasty to keep up with the big wigs in the astronomy clubs that have advanced telescopes. There is another alternative that can give you most of the advantages of a telescope and some extra flexibility and reduced cost to boot. That alternative is a good pair of astronomy binoculars. Mostly we think of binoculars as the thing you use to see the football game when you have to sit in the cheap seats. But if you do some homework and had a good grasp on what your stargazing objectives are, the advantages of astronomy binoculars over an entry level telescope can be pretty convincing.</p>\n<!-- /wp:paragraph -->', 'Astronomy Binoculars A Great Alternative', 'Internet Advertising What Went Just Right', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-10-08 11:52:43', '2019-10-08 08:52:43', '', 40, 'http://kaban/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/40-revision-v1/', 0, 'revision', '', 0),
(217, 1, '2019-10-08 14:08:24', '2019-10-08 11:08:24', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"user_form\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"all\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'social network for user', 'social-network-for-user', 'publish', 'closed', 'closed', '', 'group_5d9c6d6ad1080', '', '', '2019-10-08 14:08:30', '2019-10-08 11:08:30', '', 0, 'http://kaban/?post_type=acf-field-group&#038;p=217', 0, 'acf-field-group', '', 0),
(218, 1, '2019-10-08 14:08:24', '2019-10-08 11:08:24', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Twiter', 'twiter', 'publish', 'closed', 'closed', '', 'field_5d9c6da681e95', '', '', '2019-10-08 14:08:24', '2019-10-08 11:08:24', '', 217, 'http://kaban/?post_type=acf-field&p=218', 0, 'acf-field', '', 0),
(219, 1, '2019-10-08 14:08:24', '2019-10-08 11:08:24', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Facebook', 'facebook', 'publish', 'closed', 'closed', '', 'field_5d9c6db481e96', '', '', '2019-10-08 14:08:30', '2019-10-08 11:08:30', '', 217, 'http://kaban/?post_type=acf-field&#038;p=219', 1, 'acf-field', '', 0),
(222, 1, '2019-10-09 09:48:39', '2019-10-09 06:48:39', '', 'prod-img2', '', 'inherit', 'open', 'closed', '', 'prod-img2', '', '', '2019-10-09 09:48:39', '2019-10-09 06:48:39', '', 146, 'http://kaban/wp-content/uploads/2019/10/prod-img2.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 7, 'image_cat', '75'),
(2, 7, '_image_cat', 'field_5d949619570d5'),
(3, 8, 'image_cat', '76'),
(4, 8, '_image_cat', 'field_5d949619570d5'),
(5, 9, 'image_cat', ''),
(6, 9, '_image_cat', 'field_5d949619570d5'),
(7, 10, 'image_cat', ''),
(8, 10, '_image_cat', 'field_5d949619570d5'),
(9, 11, 'image_cat', ''),
(10, 11, '_image_cat', 'field_5d949619570d5'),
(11, 13, 'image_cat', '75'),
(12, 13, '_image_cat', 'field_5d949619570d5'),
(13, 14, 'image_cat', '76'),
(14, 14, '_image_cat', 'field_5d949619570d5'),
(15, 15, 'image_cat', ''),
(16, 15, '_image_cat', 'field_5d949619570d5'),
(17, 16, 'image_cat', '75'),
(18, 16, '_image_cat', 'field_5d949619570d5'),
(19, 17, 'image_cat', '76'),
(20, 17, '_image_cat', 'field_5d949619570d5'),
(21, 18, 'image_cat', ''),
(22, 18, '_image_cat', 'field_5d949619570d5'),
(23, 20, 'image_cat', '75'),
(24, 20, '_image_cat', 'field_5d949619570d5'),
(27, 24, 'image_cat', '75'),
(28, 24, '_image_cat', 'field_5d949619570d5'),
(29, 25, 'image_cat', ''),
(30, 25, '_image_cat', 'field_5d949619570d5'),
(31, 26, 'image_cat', '76'),
(32, 26, '_image_cat', 'field_5d949619570d5'),
(33, 27, 'image_cat', ''),
(34, 27, '_image_cat', 'field_5d949619570d5'),
(35, 28, 'image_cat', ''),
(36, 28, '_image_cat', 'field_5d949619570d5');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'Menu 1', 'menu-1', 0),
(4, 'Menu 2', 'menu-2', 0),
(5, 'News', 'news', 0),
(6, 'Sales', 'sales', 0),
(7, 'Cannabis', 'cannabis', 0),
(8, 'Accessories', 'accessories', 0),
(9, 'Flower', 'flower', 0),
(10, 'Oil', 'oil', 0),
(11, 'vaporizer', 'vaporizer', 0),
(12, 'Menu 3', 'menu-3', 0),
(13, 'Cannabis', 'cannabis', 0),
(14, 'Accessories', 'accessories', 0),
(15, 'Products', 'products', 0),
(16, 'Cannabis', 'cannabis', 0),
(17, 'Accessories', 'accessories', 0),
(18, 'Flower', 'flower', 0),
(20, 'Cannabis', 'cannabis', 0),
(24, 'Cannabis', 'cannabis', 0),
(25, 'vaporizer', 'vaporizer', 0),
(26, 'Accessories', 'accessories', 0),
(27, 'Oil', 'oil', 0),
(28, 'Flower', 'flower', 0),
(29, '#HashtagOne', 'hashtagone', 0),
(30, '#SecondHashtag', 'secondhashtag', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(23, 2, 0),
(40, 6, 0),
(40, 29, 0),
(40, 30, 0),
(43, 5, 0),
(43, 29, 0),
(43, 30, 0),
(46, 6, 0),
(46, 29, 0),
(46, 30, 0),
(49, 5, 0),
(49, 29, 0),
(49, 30, 0),
(52, 5, 0),
(52, 29, 0),
(52, 30, 0),
(74, 7, 0),
(74, 10, 0),
(74, 14, 0),
(77, 8, 0),
(77, 11, 0),
(77, 13, 0),
(78, 7, 0),
(87, 2, 0),
(90, 2, 0),
(100, 7, 0),
(100, 9, 0),
(100, 14, 0),
(100, 20, 0),
(120, 12, 0),
(121, 12, 0),
(122, 12, 0),
(123, 12, 0),
(124, 12, 0),
(125, 12, 0),
(126, 12, 0),
(128, 12, 0),
(129, 12, 0),
(130, 12, 0),
(131, 12, 0),
(132, 12, 0),
(142, 24, 0),
(142, 25, 0),
(145, 26, 0),
(145, 27, 0),
(146, 24, 0),
(146, 28, 0),
(148, 2, 0),
(149, 26, 0),
(149, 27, 0),
(150, 24, 0),
(150, 28, 0),
(151, 24, 0),
(151, 28, 0),
(152, 24, 0),
(152, 25, 0),
(153, 26, 0),
(153, 27, 0),
(154, 26, 0),
(154, 27, 0),
(155, 24, 0),
(155, 28, 0),
(162, 2, 0),
(171, 2, 0),
(184, 2, 0),
(185, 1, 0),
(195, 12, 0),
(206, 4, 0),
(207, 4, 0),
(208, 4, 0),
(209, 4, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 7),
(4, 4, 'nav_menu', '', 0, 4),
(5, 5, 'category', '', 0, 3),
(6, 6, 'category', '', 0, 2),
(7, 7, 'products_tax', 'Highest quality products', 0, 2),
(8, 8, 'products_tax', 'Best you can get', 0, 1),
(9, 9, 'products_tax', '', 8, 1),
(10, 10, 'products_tax', '', 8, 1),
(11, 11, 'products_tax', '', 7, 1),
(12, 12, 'nav_menu', '', 0, 13),
(13, 13, 'products', 'Highest quality products', 0, 1),
(14, 14, 'products', 'Best you can get', 0, 2),
(15, 15, 'сategories', '', 0, 0),
(16, 16, 'сategories', 'Highest quality products', 15, 0),
(17, 17, 'сategories', 'Best you can get', 15, 0),
(18, 18, 'сategories', '', 17, 0),
(20, 20, 'shop', 'Highest quality products', 0, 1),
(24, 24, 'sheensay_product_type', 'Highest quality products', 0, 6),
(25, 25, 'sheensay_product_type', '', 24, 2),
(26, 26, 'sheensay_product_type', 'Best you can get', 0, 4),
(27, 27, 'sheensay_product_type', '', 26, 4),
(28, 28, 'sheensay_product_type', '', 24, 4),
(29, 29, 'post_tag', '', 0, 5),
(30, 30, 'post_tag', '', 0, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Landon Brock'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"a2b4e233ba7eb0839fa64f02da3f745f70cf5f9907e2276b2967b1f3e681f019\";a:4:{s:10:\"expiration\";i:1575016320;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36\";s:5:\"login\";i:1574843520;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'nav_menu_recently_edited', '4'),
(22, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(23, 1, 'wp_user-settings-time', '1570096693'),
(24, 1, 'closedpostboxes_post', 'a:0:{}'),
(25, 1, 'metaboxhidden_post', 'a:0:{}'),
(26, 1, 'closedpostboxes_products', 'a:0:{}'),
(27, 1, 'metaboxhidden_products', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(28, 1, 'meta-box-order_page', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:46:\"commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(29, 1, 'screen_layout_page', '2'),
(30, 1, 'closedpostboxes_page', 'a:0:{}'),
(31, 1, 'metaboxhidden_page', 'a:4:{i:0;s:16:\"commentstatusdiv\";i:1;s:11:\"commentsdiv\";i:2;s:7:\"slugdiv\";i:3;s:9:\"authordiv\";}'),
(33, 1, '_new_email', 'a:2:{s:4:\"hash\";s:32:\"696c58be04610a7ab3ec585f5ed483b4\";s:8:\"newemail\";s:28:\"vadim.satyr@onix-systems.com\";}'),
(34, 1, 'twiter', '#'),
(35, 1, '_twiter', 'field_5d9c6da681e95'),
(36, 1, 'facebook', '#'),
(37, 1, '_facebook', 'field_5d9c6db481e96'),
(39, 1, 'wp_yarpp_saw_optin', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BrBiBdOxsPGv38E07qMKlcxZWCUqB21', 'admin', 'satur.75@ukr.net', '', '2019-10-01 11:42:31', '', 0, 'Landon Brock');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wpgmza`
--

CREATE TABLE `wp_wpgmza` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `address` varchar(700) NOT NULL,
  `description` mediumtext NOT NULL,
  `pic` varchar(700) NOT NULL,
  `link` varchar(2083) NOT NULL,
  `icon` varchar(700) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lng` varchar(100) NOT NULL,
  `anim` varchar(3) NOT NULL,
  `title` varchar(700) NOT NULL,
  `infoopen` varchar(3) NOT NULL,
  `category` varchar(500) NOT NULL,
  `approved` tinyint(1) DEFAULT '1',
  `retina` tinyint(1) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0',
  `did` varchar(500) NOT NULL,
  `sticky` tinyint(1) DEFAULT '0',
  `other_data` longtext NOT NULL,
  `latlng` point DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_wpgmza`
--

INSERT INTO `wp_wpgmza` (`id`, `map_id`, `address`, `description`, `pic`, `link`, `icon`, `lat`, `lng`, `anim`, `title`, `infoopen`, `category`, `approved`, `retina`, `type`, `did`, `sticky`, `other_data`, `latlng`) VALUES
(1, 1, 'California', '', '', '', '', '36.778261', '-119.4179323999', '0', '', '', '', 1, 0, 0, '', 0, '', '\0\0\0\0\0\0\0J`s�cB@�`�g��]�');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wpgmza_circles`
--

CREATE TABLE `wp_wpgmza_circles` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `name` text,
  `center` point DEFAULT NULL,
  `radius` float DEFAULT NULL,
  `color` varchar(16) DEFAULT NULL,
  `opacity` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wpgmza_maps`
--

CREATE TABLE `wp_wpgmza_maps` (
  `id` int(11) NOT NULL,
  `map_title` varchar(55) NOT NULL,
  `map_width` varchar(6) NOT NULL,
  `map_height` varchar(6) NOT NULL,
  `map_start_lat` varchar(700) NOT NULL,
  `map_start_lng` varchar(700) NOT NULL,
  `map_start_location` varchar(700) NOT NULL,
  `map_start_zoom` int(10) NOT NULL,
  `default_marker` varchar(700) NOT NULL,
  `type` int(10) NOT NULL,
  `alignment` int(10) NOT NULL,
  `directions_enabled` int(10) NOT NULL,
  `styling_enabled` int(10) NOT NULL,
  `styling_json` mediumtext NOT NULL,
  `active` int(1) NOT NULL,
  `kml` varchar(700) NOT NULL,
  `bicycle` int(10) NOT NULL,
  `traffic` int(10) NOT NULL,
  `dbox` int(10) NOT NULL,
  `dbox_width` varchar(10) NOT NULL,
  `listmarkers` int(10) NOT NULL,
  `listmarkers_advanced` int(10) NOT NULL,
  `filterbycat` tinyint(1) NOT NULL,
  `ugm_enabled` int(10) NOT NULL,
  `ugm_category_enabled` tinyint(1) NOT NULL,
  `fusion` varchar(100) NOT NULL,
  `map_width_type` varchar(3) NOT NULL,
  `map_height_type` varchar(3) NOT NULL,
  `mass_marker_support` int(10) NOT NULL,
  `ugm_access` int(10) NOT NULL,
  `order_markers_by` int(10) NOT NULL,
  `order_markers_choice` int(10) NOT NULL,
  `show_user_location` int(3) NOT NULL,
  `default_to` varchar(700) NOT NULL,
  `other_settings` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_wpgmza_maps`
--

INSERT INTO `wp_wpgmza_maps` (`id`, `map_title`, `map_width`, `map_height`, `map_start_lat`, `map_start_lng`, `map_start_location`, `map_start_zoom`, `default_marker`, `type`, `alignment`, `directions_enabled`, `styling_enabled`, `styling_json`, `active`, `kml`, `bicycle`, `traffic`, `dbox`, `dbox_width`, `listmarkers`, `listmarkers_advanced`, `filterbycat`, `ugm_enabled`, `ugm_category_enabled`, `fusion`, `map_width_type`, `map_height_type`, `mass_marker_support`, `ugm_access`, `order_markers_by`, `order_markers_choice`, `show_user_location`, `default_to`, `other_settings`) VALUES
(1, 'My first map', '100', '800', '45.950464', '-109.815505', '45.950464398418106,-109.81550500000003', 2, '0', 1, 1, 1, 0, '', 0, '', 2, 2, 1, '100', 0, 0, 0, 0, 0, '', '\\%', 'px', 1, 0, 1, 2, 0, '', 'a:14:{s:21:\"store_locator_enabled\";i:2;s:22:\"store_locator_distance\";i:2;s:28:\"store_locator_default_radius\";i:10;s:31:\"store_locator_not_found_message\";s:52:\"No results found in this location. Please try again.\";s:20:\"store_locator_bounce\";i:1;s:26:\"store_locator_query_string\";s:14:\"ZIP / Address:\";s:29:\"wpgmza_store_locator_restrict\";s:0:\"\";s:33:\"wpgmza_store_locator_radius_style\";s:6:\"modern\";s:12:\"map_max_zoom\";s:1:\"1\";s:15:\"transport_layer\";i:2;s:17:\"wpgmza_theme_data\";s:881:\"[{\"featureType\":\"landscape\",\"stylers\":[{\"saturation\":-100},{\"lightness\":65},{\"visibility\":\"on\"}]},{\"featureType\":\"poi\",\"stylers\":[{\"saturation\":-100},{\"lightness\":51},{\"visibility\":\"simplified\"}]},{\"featureType\":\"road.highway\",\"stylers\":[{\"saturation\":-100},{\"visibility\":\"simplified\"}]},{\"featureType\":\"road.arterial\",\"stylers\":[{\"saturation\":-100},{\"lightness\":30},{\"visibility\":\"on\"}]},{\"featureType\":\"road.local\",\"stylers\":[{\"saturation\":-100},{\"lightness\":40},{\"visibility\":\"on\"}]},{\"featureType\":\"transit\",\"stylers\":[{\"saturation\":-100},{\"visibility\":\"simplified\"}]},{\"featureType\":\"administrative.province\",\"stylers\":[{\"visibility\":\"off\"}]},{\"featureType\":\"water\",\"elementType\":\"labels\",\"stylers\":[{\"visibility\":\"on\"},{\"lightness\":-25},{\"saturation\":-100}]},{\"featureType\":\"water\",\"elementType\":\"geometry\",\"stylers\":[{\"hue\":\"#ffff00\"},{\"lightness\":-25},{\"saturation\":-97}]}]\";s:22:\"wpgmza_theme_selection\";i:3;s:30:\"wpgmza_show_points_of_interest\";i:1;s:17:\"wpgmza_auto_night\";i:0;}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wpgmza_polygon`
--

CREATE TABLE `wp_wpgmza_polygon` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `description` text NOT NULL,
  `innerpolydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `lineopacity` varchar(7) NOT NULL,
  `fillcolor` varchar(7) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `title` varchar(250) NOT NULL,
  `link` varchar(700) NOT NULL,
  `ohfillcolor` varchar(7) NOT NULL,
  `ohlinecolor` varchar(7) NOT NULL,
  `ohopacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wpgmza_polylines`
--

CREATE TABLE `wp_wpgmza_polylines` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `linethickness` varchar(3) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wpgmza_rectangles`
--

CREATE TABLE `wp_wpgmza_rectangles` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `name` text,
  `cornerA` point DEFAULT NULL,
  `cornerB` point DEFAULT NULL,
  `color` varchar(16) DEFAULT NULL,
  `opacity` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_yarpp_related_cache`
--

CREATE TABLE `wp_yarpp_related_cache` (
  `reference_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `score` float UNSIGNED NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_yarpp_related_cache`
--

INSERT INTO `wp_yarpp_related_cache` (`reference_ID`, `ID`, `score`, `date`) VALUES
(40, 43, 2, '2019-10-08 13:06:09'),
(40, 46, 3, '2019-10-08 13:06:09'),
(40, 49, 2, '2019-10-08 13:06:09'),
(40, 52, 2, '2019-10-08 13:06:09'),
(43, 40, 2, '2019-10-08 13:12:55'),
(43, 46, 2, '2019-10-08 13:12:55'),
(43, 49, 3, '2019-10-08 13:12:55'),
(43, 52, 3, '2019-10-08 13:12:55'),
(46, 40, 3, '2019-10-08 13:12:54'),
(46, 43, 2, '2019-10-08 13:12:54'),
(46, 49, 2, '2019-10-08 13:12:54'),
(46, 52, 2, '2019-10-08 13:12:54'),
(49, 40, 2, '2019-10-08 13:12:54'),
(49, 43, 3, '2019-10-08 13:12:54'),
(49, 46, 2, '2019-10-08 13:12:54'),
(49, 52, 3, '2019-10-08 13:12:54'),
(52, 40, 2, '2019-10-08 13:12:54'),
(52, 43, 3, '2019-10-08 13:12:54'),
(52, 46, 2, '2019-10-08 13:12:54'),
(52, 49, 3, '2019-10-08 13:12:54');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Индексы таблицы `wp_wpgmza`
--
ALTER TABLE `wp_wpgmza`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_wpgmza_circles`
--
ALTER TABLE `wp_wpgmza_circles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_wpgmza_maps`
--
ALTER TABLE `wp_wpgmza_maps`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_wpgmza_polygon`
--
ALTER TABLE `wp_wpgmza_polygon`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_wpgmza_polylines`
--
ALTER TABLE `wp_wpgmza_polylines`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_wpgmza_rectangles`
--
ALTER TABLE `wp_wpgmza_rectangles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_yarpp_related_cache`
--
ALTER TABLE `wp_yarpp_related_cache`
  ADD PRIMARY KEY (`reference_ID`,`ID`),
  ADD KEY `score` (`score`),
  ADD KEY `ID` (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=579;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1209;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_wpgmza`
--
ALTER TABLE `wp_wpgmza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_wpgmza_circles`
--
ALTER TABLE `wp_wpgmza_circles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_wpgmza_maps`
--
ALTER TABLE `wp_wpgmza_maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_wpgmza_polygon`
--
ALTER TABLE `wp_wpgmza_polygon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_wpgmza_polylines`
--
ALTER TABLE `wp_wpgmza_polylines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_wpgmza_rectangles`
--
ALTER TABLE `wp_wpgmza_rectangles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
