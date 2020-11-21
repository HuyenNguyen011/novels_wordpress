-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 21, 2020 lúc 10:07 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `w2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-10-31 13:36:09', '2020-10-31 13:36:09', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8082/wordpress-w2', 'yes'),
(2, 'home', 'http://localhost:8082/wordpress-w2', 'yes'),
(3, 'blogname', 'W2', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'huyen@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:95:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=32&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:41:\"add-search-to-menu/add-search-to-menu.php\";i:1;s:43:\"auto-post-thumbnail/auto-post-thumbnail.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:23:\"ml-slider/ml-slider.php\";i:4;s:53:\"post-slider-and-carousel/post-slider-and-carousel.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:67:\"C:\\xampp\\htdocs\\wordpress-w2/wp-content/plugins/akismet/akismet.php\";i:1;s:67:\"C:\\xampp\\htdocs\\wordpress-w2/wp-content/themes/basicbasic/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'basicbasic', 'yes'),
(41, 'stylesheet', 'basicbasic', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '48748', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:3:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:16:\"Về chúng tôi\";s:4:\"text\";s:28:\"Nhóm 10\r\n\r\nMember: NhuHuyen\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '32', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1619703369', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'widget_search', 'a:3:{i:2;a:1:{s:5:\"title\";s:0:\"\";}i:3;a:1:{s:5:\"title\";s:4:\"Tìm\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:14:\"sidebar-footer\";a:1:{i:0;s:6:\"text-2\";}s:12:\"sidebar-main\";a:1:{i:0;s:8:\"search-3\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:8:{i:1605951371;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1605965770;a:3:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1605965771;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1605965780;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1605973025;a:1:{s:28:\"ml-slider_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1606026150;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1606052170;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(117, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1604154879;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(122, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1605942479;s:7:\"checked\";a:4:{s:10:\"basicbasic\";s:3:\"1.3\";s:14:\"twentynineteen\";s:3:\"1.7\";s:15:\"twentyseventeen\";s:3:\"2.4\";s:12:\"twentytwenty\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.7.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(127, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.3\";s:7:\"version\";s:5:\"5.5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1605942479;s:15:\"version_checked\";s:5:\"5.5.3\";s:12:\"translations\";a:0:{}}', 'no'),
(130, 'can_compress_scripts', '1', 'no'),
(131, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:15:\"huyen@gmail.com\";s:7:\"version\";s:5:\"5.5.3\";s:9:\"timestamp\";i:1604151386;}', 'no'),
(145, 'finished_updating_comment_type', '1', 'yes'),
(148, 'theme_mods_basicbasic', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:9:\"main-menu\";i:3;}}', 'yes'),
(151, 'current_theme', 'Basic Basic', 'yes'),
(152, 'theme_switched', '', 'yes'),
(159, '_transient_health-check-site-status-result', '{\"good\":\"12\",\"recommended\":\"8\",\"critical\":\"0\"}', 'yes'),
(165, 'recovery_mode_email_last_sent', '1604715138', 'yes'),
(171, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(180, 'category_children', 'a:1:{i:4;a:4:{i:0;i:6;i:1;i:7;i:2;i:8;i:3;i:9;}}', 'yes'),
(195, 'recently_activated', 'a:0:{}', 'yes'),
(212, 'widget_metaslider_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(215, 'wpcf7', 'a:2:{s:7:\"version\";s:3:\"5.3\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1604763077;s:7:\"version\";s:3:\"5.3\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(216, 'ms_hide_all_ads_until', '1605972975', 'yes'),
(218, 'metaslider_systemcheck', 'a:2:{s:16:\"wordPressVersion\";b:0;s:12:\"imageLibrary\";b:0;}', 'no'),
(219, 'metaslider_optin_via', 'modal', 'yes'),
(220, 'metaslider_global_settings', 'a:1:{s:5:\"optIn\";i:1;}', 'yes'),
(221, 'metaslider_optin_user_extras', 'a:4:{s:2:\"id\";i:1;s:5:\"email\";s:15:\"huyen@gmail.com\";s:2:\"ip\";s:3:\"::1\";s:4:\"time\";i:1604763425;}', 'yes'),
(222, 'ml-slider_allow_tracking', 'yes', 'yes'),
(223, 'ml-slider_tracking_notice', 'hide', 'yes'),
(224, 'ml-slider_tracking_last_send', '1604763427', 'yes'),
(232, 'ml-slider_children', 'a:0:{}', 'yes'),
(233, 'metaslider_tour_cancelled_on', 'create-slide', 'yes'),
(255, 'fs_active_plugins', 'O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:36:\"add-search-to-menu/includes/freemius\";O:8:\"stdClass\":4:{s:7:\"version\";s:5:\"2.4.1\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1604924371;s:11:\"plugin_path\";s:41:\"add-search-to-menu/add-search-to-menu.php\";}}s:7:\"abspath\";s:29:\"C:\\xampp\\htdocs\\wordpress-w2/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:41:\"add-search-to-menu/add-search-to-menu.php\";s:8:\"sdk_path\";s:36:\"add-search-to-menu/includes/freemius\";s:7:\"version\";s:5:\"2.4.1\";s:13:\"in_activation\";b:0;s:9:\"timestamp\";i:1604924371;}}', 'yes'),
(256, 'fs_debug_mode', '', 'yes'),
(257, 'fs_accounts', 'a:6:{s:21:\"id_slug_type_path_map\";a:2:{i:2086;a:3:{s:4:\"slug\";s:18:\"add-search-to-menu\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:41:\"add-search-to-menu/add-search-to-menu.php\";}i:5986;a:3:{s:4:\"slug\";s:24:\"post-slider-and-carousel\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:53:\"post-slider-and-carousel/post-slider-and-carousel.php\";}}s:11:\"plugin_data\";a:2:{s:18:\"add-search-to-menu\";a:17:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:41:\"add-search-to-menu/add-search-to-menu.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1604924371;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:0;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.4.1\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:6:\"4.5.10\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:14:\"localhost:8082\";s:9:\"server_ip\";s:3:\"::1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1604924371;s:7:\"version\";s:6:\"4.5.10\";}s:15:\"prev_is_premium\";b:0;s:18:\"sticky_optin_added\";b:1;s:21:\"is_pending_activation\";b:1;}s:24:\"post-slider-and-carousel\";a:16:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:53:\"post-slider-and-carousel/post-slider-and-carousel.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1605001778;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:1;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.4.1\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"2.0.4\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:14:\"localhost:8082\";s:9:\"server_ip\";s:3:\"::1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1605001778;s:7:\"version\";s:5:\"2.0.4\";}s:15:\"prev_is_premium\";b:0;s:21:\"is_pending_activation\";b:1;}}s:13:\"file_slug_map\";a:2:{s:41:\"add-search-to-menu/add-search-to-menu.php\";s:18:\"add-search-to-menu\";s:53:\"post-slider-and-carousel/post-slider-and-carousel.php\";s:24:\"post-slider-and-carousel\";}s:7:\"plugins\";a:2:{s:18:\"add-search-to-menu\";O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:12:\"Ivory Search\";s:4:\"slug\";s:18:\"add-search-to-menu\";s:12:\"premium_slug\";s:26:\"add-search-to-menu-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";s:8:\"selected\";s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:41:\"add-search-to-menu/add-search-to-menu.php\";s:7:\"version\";s:6:\"4.5.10\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_e05b040b84ff5014d0f0955127743\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"2086\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}s:24:\"post-slider-and-carousel\";O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:36:\"Post Slider and Carousel with Widget\";s:4:\"slug\";s:24:\"post-slider-and-carousel\";s:12:\"premium_slug\";s:28:\"post-slider-and-carousel-pro\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:53:\"post-slider-and-carousel/post-slider-and-carousel.php\";s:7:\"version\";s:5:\"2.0.4\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:3:\"Pro\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_3b6ceaf94b273c77243afe9a6e993\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"5986\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"afc65c882fa9f27ec126c611da92275b\";s:13:\"admin_notices\";a:2:{s:18:\"add-search-to-menu\";a:0:{}s:24:\"post-slider-and-carousel\";a:1:{s:18:\"activation_pending\";a:8:{s:7:\"message\";s:217:\"You should receive an activation email for <b>Post Slider and Carousel with Widget</b> to your mailbox at <b>huyen@gmail.com</b>. Please make sure you click the activation button in that email to complete the install.\";s:5:\"title\";s:7:\"Thanks!\";s:4:\"type\";s:7:\"success\";s:6:\"sticky\";b:1;s:2:\"id\";s:18:\"activation_pending\";s:10:\"manager_id\";s:24:\"post-slider-and-carousel\";s:6:\"plugin\";s:36:\"Post Slider and Carousel with Widget\";s:10:\"wp_user_id\";N;}}}}', 'yes'),
(258, 'fs_gdpr', 'a:1:{s:2:\"u1\";a:1:{s:8:\"required\";b:0;}}', 'yes'),
(259, 'widget_is_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(260, 'is_install', '2020-11-09', 'yes'),
(261, 'is_menu_search', 'a:9:{s:5:\"menus\";a:1:{s:9:\"main-menu\";s:9:\"main-menu\";}s:9:\"menu_name\";a:1:{s:4:\"main\";s:4:\"main\";}s:10:\"menu_style\";s:7:\"default\";s:20:\"menu_magnifier_color\";s:7:\"#848484\";s:15:\"menu_close_icon\";s:15:\"menu_close_icon\";s:10:\"menu_title\";s:0:\"\";s:16:\"menu_search_form\";s:1:\"0\";s:12:\"menu_classes\";s:0:\"\";s:9:\"menu_gcse\";s:0:\"\";}', 'yes'),
(293, 'theme_mods_twentynineteen', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(334, 'fs_api_cache', 'a:0:{}', 'no'),
(337, 'widget_psac-post-scrolling-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(339, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1605942479;s:7:\"checked\";a:7:{s:19:\"akismet/akismet.php\";s:5:\"4.1.6\";s:43:\"auto-post-thumbnail/auto-post-thumbnail.php\";s:5:\"3.7.6\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:3:\"5.3\";s:9:\"hello.php\";s:5:\"1.7.2\";s:41:\"add-search-to-menu/add-search-to-menu.php\";s:6:\"4.5.10\";s:23:\"ml-slider/ml-slider.php\";s:6:\"3.18.9\";s:53:\"post-slider-and-carousel/post-slider-and-carousel.php\";s:5:\"2.0.4\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.7\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.3\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:6:{s:43:\"auto-post-thumbnail/auto-post-thumbnail.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/auto-post-thumbnail\";s:4:\"slug\";s:19:\"auto-post-thumbnail\";s:6:\"plugin\";s:43:\"auto-post-thumbnail/auto-post-thumbnail.php\";s:11:\"new_version\";s:5:\"3.7.6\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/auto-post-thumbnail/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/auto-post-thumbnail.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/auto-post-thumbnail/assets/icon-256x256.gif?rev=2396560\";s:2:\"1x\";s:72:\"https://ps.w.org/auto-post-thumbnail/assets/icon-128x128.gif?rev=2396560\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/auto-post-thumbnail/assets/banner-1544x500.jpg?rev=2345248\";s:2:\"1x\";s:74:\"https://ps.w.org/auto-post-thumbnail/assets/banner-772x250.jpg?rev=2395848\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:3:\"5.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/contact-form-7.5.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"add-search-to-menu/add-search-to-menu.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/add-search-to-menu\";s:4:\"slug\";s:18:\"add-search-to-menu\";s:6:\"plugin\";s:41:\"add-search-to-menu/add-search-to-menu.php\";s:11:\"new_version\";s:6:\"4.5.10\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/add-search-to-menu/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/add-search-to-menu.4.5.10.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/add-search-to-menu/assets/icon-256x256.png?rev=2077748\";s:2:\"1x\";s:71:\"https://ps.w.org/add-search-to-menu/assets/icon-128x128.png?rev=2077748\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/add-search-to-menu/assets/banner-1544x500.png?rev=2077748\";s:2:\"1x\";s:73:\"https://ps.w.org/add-search-to-menu/assets/banner-772x250.png?rev=2317518\";}s:11:\"banners_rtl\";a:0:{}}s:23:\"ml-slider/ml-slider.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:23:\"w.org/plugins/ml-slider\";s:4:\"slug\";s:9:\"ml-slider\";s:6:\"plugin\";s:23:\"ml-slider/ml-slider.php\";s:11:\"new_version\";s:6:\"3.18.9\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/ml-slider/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/ml-slider.3.18.9.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:62:\"https://ps.w.org/ml-slider/assets/icon-256x256.png?rev=2370840\";s:2:\"1x\";s:54:\"https://ps.w.org/ml-slider/assets/icon.svg?rev=1837669\";s:3:\"svg\";s:54:\"https://ps.w.org/ml-slider/assets/icon.svg?rev=1837669\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/ml-slider/assets/banner-1544x500.png?rev=1837669\";s:2:\"1x\";s:64:\"https://ps.w.org/ml-slider/assets/banner-772x250.png?rev=2370840\";}s:11:\"banners_rtl\";a:0:{}}s:53:\"post-slider-and-carousel/post-slider-and-carousel.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/post-slider-and-carousel\";s:4:\"slug\";s:24:\"post-slider-and-carousel\";s:6:\"plugin\";s:53:\"post-slider-and-carousel/post-slider-and-carousel.php\";s:11:\"new_version\";s:5:\"2.0.4\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/post-slider-and-carousel/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/post-slider-and-carousel.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:77:\"https://ps.w.org/post-slider-and-carousel/assets/icon-128x128.png?rev=2143555\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/post-slider-and-carousel/assets/banner-772x250.png?rev=2143555\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(340, 'wapt_google_limit', 'a:2:{s:5:\"count\";i:10;s:7:\"expires\";i:1605001860;}', 'yes'),
(341, 'wapt_plugin_activated', '1605001860', 'yes'),
(342, 'wapt_plugin_version', '3.7.6', 'yes'),
(352, 'wapt_last_check_premium_update_time', '1605942479', 'yes'),
(353, '_site_transient_timeout_theme_roots', '1605944279', 'no'),
(354, '_site_transient_theme_roots', 'a:4:{s:10:\"basicbasic\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(355, '_transient_timeout_wapt_9c873708d9609985f4303b10f56d7bf0', '1605956920', 'no'),
(356, '_transient_wapt_9c873708d9609985f4303b10f56d7bf0', 'a:2:{s:5:\"error\";s:51:\"cURL error 6: Could not resolve host: api.cm-wp.com\";s:10:\"error_code\";s:19:\"http_request_failed\";}', 'no'),
(357, '_transient_timeout_wapt_5c7db043395903a8339758d86d8ac4cd', '1605956932', 'no'),
(358, '_transient_wapt_5c7db043395903a8339758d86d8ac4cd', 'a:2:{s:5:\"error\";s:51:\"cURL error 6: Could not resolve host: api.cm-wp.com\";s:10:\"error_code\";s:19:\"http_request_failed\";}', 'no'),
(359, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1605985734', 'no'),
(360, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: A valid URL was not provided.</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: A valid URL was not provided.</p></div>', 'no');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_menu_item_type', 'custom'),
(4, 5, '_menu_item_menu_item_parent', '0'),
(5, 5, '_menu_item_object_id', '5'),
(6, 5, '_menu_item_object', 'custom'),
(7, 5, '_menu_item_target', ''),
(8, 5, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(9, 5, '_menu_item_xfn', ''),
(10, 5, '_menu_item_url', 'http://localhost:8082/wordpress-w2/'),
(11, 5, '_menu_item_orphaned', '1604674005'),
(12, 6, '_menu_item_type', 'post_type'),
(13, 6, '_menu_item_menu_item_parent', '0'),
(14, 6, '_menu_item_object_id', '2'),
(15, 6, '_menu_item_object', 'page'),
(16, 6, '_menu_item_target', ''),
(17, 6, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(18, 6, '_menu_item_xfn', ''),
(19, 6, '_menu_item_url', ''),
(20, 6, '_menu_item_orphaned', '1604674005'),
(21, 7, '_menu_item_type', 'custom'),
(22, 7, '_menu_item_menu_item_parent', '0'),
(23, 7, '_menu_item_object_id', '7'),
(24, 7, '_menu_item_object', 'custom'),
(25, 7, '_menu_item_target', ''),
(26, 7, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(27, 7, '_menu_item_xfn', ''),
(28, 7, '_menu_item_url', 'http://localhost:8082/wordpress-w2/'),
(29, 7, '_menu_item_orphaned', '1604674480'),
(30, 8, '_menu_item_type', 'post_type'),
(31, 8, '_menu_item_menu_item_parent', '0'),
(32, 8, '_menu_item_object_id', '2'),
(33, 8, '_menu_item_object', 'page'),
(34, 8, '_menu_item_target', ''),
(35, 8, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(36, 8, '_menu_item_xfn', ''),
(37, 8, '_menu_item_url', ''),
(38, 8, '_menu_item_orphaned', '1604674480'),
(39, 9, '_menu_item_type', 'custom'),
(40, 9, '_menu_item_menu_item_parent', '0'),
(41, 9, '_menu_item_object_id', '9'),
(42, 9, '_menu_item_object', 'custom'),
(43, 9, '_menu_item_target', ''),
(44, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(45, 9, '_menu_item_xfn', ''),
(46, 9, '_menu_item_url', 'http://localhost:8082/wordpress-w2/'),
(47, 9, '_menu_item_orphaned', '1604714202'),
(48, 10, '_menu_item_type', 'post_type'),
(49, 10, '_menu_item_menu_item_parent', '0'),
(50, 10, '_menu_item_object_id', '2'),
(51, 10, '_menu_item_object', 'page'),
(52, 10, '_menu_item_target', ''),
(53, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(54, 10, '_menu_item_xfn', ''),
(55, 10, '_menu_item_url', ''),
(56, 10, '_menu_item_orphaned', '1604714202'),
(57, 11, '_menu_item_type', 'custom'),
(58, 11, '_menu_item_menu_item_parent', '0'),
(59, 11, '_menu_item_object_id', '11'),
(60, 11, '_menu_item_object', 'custom'),
(61, 11, '_menu_item_target', ''),
(62, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(63, 11, '_menu_item_xfn', ''),
(64, 11, '_menu_item_url', 'http://localhost:8082/wordpress-w2/'),
(65, 11, '_menu_item_orphaned', '1604714231'),
(66, 12, '_menu_item_type', 'post_type'),
(67, 12, '_menu_item_menu_item_parent', '0'),
(68, 12, '_menu_item_object_id', '2'),
(69, 12, '_menu_item_object', 'page'),
(70, 12, '_menu_item_target', ''),
(71, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(72, 12, '_menu_item_xfn', ''),
(73, 12, '_menu_item_url', ''),
(74, 12, '_menu_item_orphaned', '1604714231'),
(75, 13, '_menu_item_type', 'custom'),
(76, 13, '_menu_item_menu_item_parent', '0'),
(77, 13, '_menu_item_object_id', '13'),
(78, 13, '_menu_item_object', 'custom'),
(79, 13, '_menu_item_target', ''),
(80, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(81, 13, '_menu_item_xfn', ''),
(82, 13, '_menu_item_url', 'http://localhost:8082/wordpress-w2/'),
(83, 13, '_menu_item_orphaned', '1604717055'),
(84, 14, '_menu_item_type', 'post_type'),
(85, 14, '_menu_item_menu_item_parent', '0'),
(86, 14, '_menu_item_object_id', '2'),
(87, 14, '_menu_item_object', 'page'),
(88, 14, '_menu_item_target', ''),
(89, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(90, 14, '_menu_item_xfn', ''),
(91, 14, '_menu_item_url', ''),
(92, 14, '_menu_item_orphaned', '1604717055'),
(93, 15, '_wp_attached_file', '2020/11/logo.png'),
(94, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:117;s:6:\"height\";i:131;s:4:\"file\";s:16:\"2020/11/logo.png\";s:5:\"sizes\";a:1:{s:26:\"meta-slider-resized-117x50\";a:4:{s:4:\"file\";s:15:\"logo-117x50.png\";s:5:\"width\";i:117;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(113, 18, '_menu_item_type', 'custom'),
(114, 18, '_menu_item_menu_item_parent', '0'),
(115, 18, '_menu_item_object_id', '18'),
(116, 18, '_menu_item_object', 'custom'),
(117, 18, '_menu_item_target', ''),
(118, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(119, 18, '_menu_item_xfn', ''),
(120, 18, '_menu_item_url', 'http://localhost:8082/wordpress-w2/'),
(122, 19, '_menu_item_type', 'post_type'),
(123, 19, '_menu_item_menu_item_parent', '0'),
(124, 19, '_menu_item_object_id', '2'),
(125, 19, '_menu_item_object', 'page'),
(126, 19, '_menu_item_target', ''),
(127, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(128, 19, '_menu_item_xfn', ''),
(129, 19, '_menu_item_url', ''),
(131, 20, '_menu_item_type', 'taxonomy'),
(132, 20, '_menu_item_menu_item_parent', '0'),
(133, 20, '_menu_item_object_id', '4'),
(134, 20, '_menu_item_object', 'category'),
(135, 20, '_menu_item_target', ''),
(136, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(137, 20, '_menu_item_xfn', ''),
(138, 20, '_menu_item_url', ''),
(140, 21, '_menu_item_type', 'taxonomy'),
(141, 21, '_menu_item_menu_item_parent', '0'),
(142, 21, '_menu_item_object_id', '9'),
(143, 21, '_menu_item_object', 'category'),
(144, 21, '_menu_item_target', ''),
(145, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(146, 21, '_menu_item_xfn', ''),
(147, 21, '_menu_item_url', ''),
(148, 21, '_menu_item_orphaned', '1604720105'),
(149, 22, '_menu_item_type', 'taxonomy'),
(150, 22, '_menu_item_menu_item_parent', '0'),
(151, 22, '_menu_item_object_id', '6'),
(152, 22, '_menu_item_object', 'category'),
(153, 22, '_menu_item_target', ''),
(154, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(155, 22, '_menu_item_xfn', ''),
(156, 22, '_menu_item_url', ''),
(157, 22, '_menu_item_orphaned', '1604720105'),
(158, 23, '_menu_item_type', 'taxonomy'),
(159, 23, '_menu_item_menu_item_parent', '0'),
(160, 23, '_menu_item_object_id', '7'),
(161, 23, '_menu_item_object', 'category'),
(162, 23, '_menu_item_target', ''),
(163, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(164, 23, '_menu_item_xfn', ''),
(165, 23, '_menu_item_url', ''),
(166, 23, '_menu_item_orphaned', '1604720105'),
(167, 24, '_menu_item_type', 'taxonomy'),
(168, 24, '_menu_item_menu_item_parent', '0'),
(169, 24, '_menu_item_object_id', '8'),
(170, 24, '_menu_item_object', 'category'),
(171, 24, '_menu_item_target', ''),
(172, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(173, 24, '_menu_item_xfn', ''),
(174, 24, '_menu_item_url', ''),
(175, 24, '_menu_item_orphaned', '1604720105'),
(176, 25, '_menu_item_type', 'taxonomy'),
(177, 25, '_menu_item_menu_item_parent', '0'),
(178, 25, '_menu_item_object_id', '5'),
(179, 25, '_menu_item_object', 'category'),
(180, 25, '_menu_item_target', ''),
(181, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(182, 25, '_menu_item_xfn', ''),
(183, 25, '_menu_item_url', ''),
(185, 26, '_menu_item_type', 'taxonomy'),
(186, 26, '_menu_item_menu_item_parent', '20'),
(187, 26, '_menu_item_object_id', '9'),
(188, 26, '_menu_item_object', 'category'),
(189, 26, '_menu_item_target', ''),
(190, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(191, 26, '_menu_item_xfn', ''),
(192, 26, '_menu_item_url', ''),
(194, 27, '_menu_item_type', 'taxonomy'),
(195, 27, '_menu_item_menu_item_parent', '20'),
(196, 27, '_menu_item_object_id', '6'),
(197, 27, '_menu_item_object', 'category'),
(198, 27, '_menu_item_target', ''),
(199, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(200, 27, '_menu_item_xfn', ''),
(201, 27, '_menu_item_url', ''),
(203, 28, '_menu_item_type', 'taxonomy'),
(204, 28, '_menu_item_menu_item_parent', '20'),
(205, 28, '_menu_item_object_id', '7'),
(206, 28, '_menu_item_object', 'category'),
(207, 28, '_menu_item_target', ''),
(208, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(209, 28, '_menu_item_xfn', ''),
(210, 28, '_menu_item_url', ''),
(212, 29, '_menu_item_type', 'taxonomy'),
(213, 29, '_menu_item_menu_item_parent', '20'),
(214, 29, '_menu_item_object_id', '8'),
(215, 29, '_menu_item_object', 'category'),
(216, 29, '_menu_item_target', ''),
(217, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(218, 29, '_menu_item_xfn', ''),
(219, 29, '_menu_item_url', ''),
(223, 32, '_edit_lock', '1604935318:1'),
(226, 37, '_form', '<label> Đăng ký để không bỏ lỡ những bài viết mới của chúng tôi\n    [submit \"Submit\"] [email* your-email] </label>'),
(227, 37, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:31:\"[_site_title] <huyen@gmail.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:163:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(228, 37, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:31:\"[_site_title] <huyen@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(229, 37, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(230, 37, '_additional_settings', ''),
(231, 37, '_locale', 'en_US'),
(232, 38, 'ml-slider_settings', 'a:39:{s:5:\"title\";s:13:\"New Slideshow\";s:4:\"type\";s:4:\"flex\";s:6:\"random\";s:5:\"false\";s:8:\"cssClass\";s:0:\"\";s:8:\"printCss\";s:4:\"true\";s:7:\"printJs\";s:4:\"true\";s:5:\"width\";s:3:\"700\";s:6:\"height\";s:3:\"300\";s:3:\"spw\";i:7;s:3:\"sph\";i:5;s:5:\"delay\";s:4:\"3000\";s:6:\"sDelay\";i:30;s:7:\"opacity\";d:0.7;s:10:\"titleSpeed\";i:500;s:6:\"effect\";s:4:\"fade\";s:10:\"navigation\";s:4:\"true\";s:5:\"links\";s:4:\"true\";s:10:\"hoverPause\";s:4:\"true\";s:5:\"theme\";s:4:\"none\";s:9:\"direction\";s:10:\"horizontal\";s:7:\"reverse\";s:5:\"false\";s:14:\"animationSpeed\";s:3:\"600\";s:8:\"prevText\";s:8:\"Previous\";s:8:\"nextText\";s:4:\"Next\";s:6:\"slices\";i:15;s:6:\"center\";s:5:\"false\";s:9:\"smartCrop\";s:4:\"true\";s:12:\"carouselMode\";s:5:\"false\";s:14:\"carouselMargin\";s:1:\"5\";s:16:\"firstSlideFadeIn\";s:5:\"false\";s:6:\"easing\";s:6:\"linear\";s:8:\"autoPlay\";s:4:\"true\";s:11:\"thumb_width\";i:150;s:12:\"thumb_height\";i:100;s:17:\"responsive_thumbs\";s:5:\"false\";s:15:\"thumb_min_width\";i:100;s:9:\"fullWidth\";s:4:\"true\";s:10:\"noConflict\";s:4:\"true\";s:12:\"smoothHeight\";s:5:\"false\";}'),
(233, 38, 'metaslider_slideshow_theme', ''),
(234, 39, '_wp_attached_file', '2020/11/2da724d443bdbce3e5ac.jpg'),
(235, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:779;s:6:\"height\";i:511;s:4:\"file\";s:32:\"2020/11/2da724d443bdbce3e5ac.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"2da724d443bdbce3e5ac-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"2da724d443bdbce3e5ac-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"2da724d443bdbce3e5ac-768x504.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:504;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:32:\"2da724d443bdbce3e5ac-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x266\";a:4:{s:4:\"file\";s:32:\"2da724d443bdbce3e5ac-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x171\";a:4:{s:4:\"file\";s:32:\"2da724d443bdbce3e5ac-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(236, 40, '_wp_attached_file', '2020/11/Lalin.png'),
(237, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:17:\"2020/11/Lalin.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"Lalin-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"Lalin-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:27:\"meta-slider-resized-500x214\";a:4:{s:4:\"file\";s:17:\"Lalin-500x214.png\";s:5:\"width\";i:500;s:6:\"height\";i:214;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(238, 41, '_thumbnail_id', '15'),
(239, 41, 'ml-slider_type', 'image'),
(240, 41, 'ml-slider_inherit_image_title', '1'),
(241, 41, 'ml-slider_inherit_image_alt', '1'),
(242, 42, '_thumbnail_id', '39'),
(243, 42, 'ml-slider_type', 'image'),
(244, 42, 'ml-slider_inherit_image_title', '1'),
(245, 42, 'ml-slider_inherit_image_alt', '1'),
(246, 43, '_thumbnail_id', '40'),
(247, 43, 'ml-slider_type', 'image'),
(248, 43, 'ml-slider_inherit_image_title', '1'),
(249, 43, 'ml-slider_inherit_image_alt', '1'),
(250, 41, 'ml-slider_crop_position', 'center-center'),
(251, 41, 'ml-slider_caption_source', 'image-caption'),
(252, 41, '_wp_attachment_image_alt', ''),
(253, 42, 'ml-slider_crop_position', 'center-center'),
(254, 42, 'ml-slider_caption_source', 'image-caption'),
(255, 42, '_wp_attachment_image_alt', ''),
(256, 43, 'ml-slider_crop_position', 'center-center'),
(257, 43, 'ml-slider_caption_source', 'image-caption'),
(258, 43, '_wp_attachment_image_alt', ''),
(259, 15, '_wp_attachment_backup_sizes', 'a:1:{s:14:\"resized-117x50\";a:5:{s:4:\"path\";s:68:\"C:xampphtdocswordpress-w2/wp-content/uploads/2020/11/logo-117x50.png\";s:4:\"file\";s:15:\"logo-117x50.png\";s:5:\"width\";i:117;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";}}'),
(260, 39, '_wp_attachment_backup_sizes', 'a:3:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:85:\"C:xampphtdocswordpress-w2/wp-content/uploads/2020/11/2da724d443bdbce3e5ac-700x300.jpg\";s:4:\"file\";s:32:\"2da724d443bdbce3e5ac-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x266\";a:5:{s:4:\"path\";s:85:\"C:xampphtdocswordpress-w2/wp-content/uploads/2020/11/2da724d443bdbce3e5ac-620x266.jpg\";s:4:\"file\";s:32:\"2da724d443bdbce3e5ac-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x171\";a:5:{s:4:\"path\";s:85:\"C:xampphtdocswordpress-w2/wp-content/uploads/2020/11/2da724d443bdbce3e5ac-400x171.jpg\";s:4:\"file\";s:32:\"2da724d443bdbce3e5ac-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(261, 40, '_wp_attachment_backup_sizes', 'a:1:{s:15:\"resized-500x214\";a:5:{s:4:\"path\";s:70:\"C:xampphtdocswordpress-w2/wp-content/uploads/2020/11/Lalin-500x214.png\";s:4:\"file\";s:17:\"Lalin-500x214.png\";s:5:\"width\";i:500;s:6:\"height\";i:214;s:9:\"mime-type\";s:9:\"image/png\";}}'),
(262, 41, '_wp_desired_post_slug', 'slider-38-image'),
(263, 44, '_is_includes', 'a:5:{s:9:\"post_type\";a:2:{s:4:\"post\";s:4:\"post\";s:4:\"page\";s:4:\"page\";}s:12:\"search_title\";s:1:\"1\";s:14:\"search_content\";s:1:\"1\";s:14:\"search_excerpt\";s:1:\"1\";s:11:\"post_status\";a:2:{s:7:\"publish\";s:7:\"publish\";s:7:\"inherit\";s:7:\"inherit\";}}'),
(264, 44, '_is_excludes', 'a:0:{}'),
(265, 44, '_is_settings', 'a:2:{s:7:\"orderby\";s:4:\"date\";s:5:\"order\";s:4:\"DESC\";}'),
(266, 44, '_is_ajax', ''),
(267, 44, '_is_customize', ''),
(268, 44, '_is_locale', 'en_US'),
(269, 45, '_is_includes', 'a:8:{s:9:\"post_type\";a:3:{s:4:\"post\";s:4:\"post\";s:4:\"page\";s:4:\"page\";s:10:\"attachment\";s:10:\"attachment\";}s:13:\"tax_post_type\";a:2:{s:8:\"category\";s:4:\"post\";s:9:\"ml-slider\";s:19:\"attachment,ml-slide\";}s:12:\"search_title\";s:1:\"1\";s:14:\"search_content\";s:1:\"1\";s:14:\"search_excerpt\";s:1:\"1\";s:11:\"post_status\";a:2:{s:7:\"publish\";s:7:\"publish\";s:7:\"inherit\";s:7:\"inherit\";}s:12:\"has_password\";s:4:\"null\";s:10:\"date_query\";a:2:{s:5:\"after\";a:1:{s:4:\"date\";s:0:\"\";}s:6:\"before\";a:1:{s:4:\"date\";s:0:\"\";}}}'),
(270, 45, '_is_excludes', ''),
(271, 45, '_is_settings', ''),
(272, 45, '_is_ajax', ''),
(273, 45, '_is_customize', ''),
(274, 45, '_is_locale', 'en_US'),
(277, 49, '_edit_lock', '1604935295:1'),
(278, 53, '_edit_lock', '1604994361:1'),
(281, 1, '_wp_trash_meta_status', 'publish'),
(282, 1, '_wp_trash_meta_time', '1604996032'),
(283, 1, '_wp_desired_post_slug', 'hello-world'),
(284, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(285, 53, '_wp_trash_meta_status', 'publish'),
(286, 53, '_wp_trash_meta_time', '1604996036'),
(287, 53, '_wp_desired_post_slug', 'hello-work'),
(288, 56, '_edit_lock', '1605948993:1'),
(289, 57, '_wp_attached_file', '2020/11/rua-1.jpg'),
(290, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:399;s:6:\"height\";i:342;s:4:\"file\";s:17:\"2020/11/rua-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"rua-1-300x257.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:257;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"rua-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(293, 60, '_edit_lock', '1605000445:1'),
(296, 62, '_edit_lock', '1605002653:1'),
(299, 62, '_wp_trash_meta_status', 'publish'),
(300, 62, '_wp_trash_meta_time', '1605002667'),
(301, 62, '_wp_desired_post_slug', 'adgadsgdga'),
(302, 60, '_wp_trash_meta_status', 'publish'),
(303, 60, '_wp_trash_meta_time', '1605002670'),
(304, 60, '_wp_desired_post_slug', 'djkfhkasd'),
(307, 56, '_thumbnail_id', '57'),
(308, 67, '_edit_lock', '1605945239:1'),
(309, 68, '_wp_attached_file', '2020/11/su-tich-con-meo.jpeg'),
(310, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1277;s:6:\"height\";i:669;s:4:\"file\";s:28:\"2020/11/su-tich-con-meo.jpeg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"su-tich-con-meo-300x157.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"su-tich-con-meo-1024x536.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"su-tich-con-meo-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"su-tich-con-meo-768x402.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:402;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:26:\"su-tich-con-meo-50x50.jpeg\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:28:\"su-tich-con-meo-200x105.jpeg\";s:5:\"width\";i:200;s:6:\"height\";i:105;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"category-thumb\";a:4:{s:4:\"file\";s:28:\"su-tich-con-meo-300x157.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(313, 67, '_thumbnail_id', '70'),
(314, 70, '_wp_attached_file', '2020/11/homeo1.jpg'),
(315, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:262;s:6:\"height\";i:192;s:4:\"file\";s:18:\"2020/11/homeo1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"homeo1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:16:\"homeo1-50x50.jpg\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:18:\"homeo1-200x147.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:147;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-10-31 13:36:09', '2020-10-31 13:36:09', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2020-11-10 08:13:52', '2020-11-10 08:13:52', '', 0, 'http://localhost:8082/wordpress-w2/?p=1', 0, 'post', '', 1),
(2, 1, '2020-10-31 13:36:09', '2020-10-31 13:36:09', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:8082/wordpress-w2/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-10-31 13:36:09', '2020-10-31 13:36:09', '', 0, 'http://localhost:8082/wordpress-w2/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-10-31 13:36:09', '2020-10-31 13:36:09', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost:8082/wordpress-w2.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-10-31 13:36:09', '2020-10-31 13:36:09', '', 0, 'http://localhost:8082/wordpress-w2/?page_id=3', 0, 'page', '', 0),
(5, 1, '2020-11-06 14:46:45', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-11-06 14:46:45', '0000-00-00 00:00:00', '', 0, 'http://localhost:8082/wordpress-w2/?p=5', 1, 'nav_menu_item', '', 0),
(6, 1, '2020-11-06 14:46:45', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-11-06 14:46:45', '0000-00-00 00:00:00', '', 0, 'http://localhost:8082/wordpress-w2/?p=6', 1, 'nav_menu_item', '', 0),
(7, 1, '2020-11-06 14:54:40', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-11-06 14:54:40', '0000-00-00 00:00:00', '', 0, 'http://localhost:8082/wordpress-w2/?p=7', 1, 'nav_menu_item', '', 0),
(8, 1, '2020-11-06 14:54:40', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-11-06 14:54:40', '0000-00-00 00:00:00', '', 0, 'http://localhost:8082/wordpress-w2/?p=8', 1, 'nav_menu_item', '', 0),
(9, 1, '2020-11-07 01:56:42', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-11-07 01:56:42', '0000-00-00 00:00:00', '', 0, 'http://localhost:8082/wordpress-w2/?p=9', 1, 'nav_menu_item', '', 0),
(10, 1, '2020-11-07 01:56:42', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-11-07 01:56:42', '0000-00-00 00:00:00', '', 0, 'http://localhost:8082/wordpress-w2/?p=10', 1, 'nav_menu_item', '', 0),
(11, 1, '2020-11-07 01:57:10', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-11-07 01:57:10', '0000-00-00 00:00:00', '', 0, 'http://localhost:8082/wordpress-w2/?p=11', 1, 'nav_menu_item', '', 0),
(12, 1, '2020-11-07 01:57:11', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-11-07 01:57:11', '0000-00-00 00:00:00', '', 0, 'http://localhost:8082/wordpress-w2/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2020-11-07 02:44:15', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-11-07 02:44:15', '0000-00-00 00:00:00', '', 0, 'http://localhost:8082/wordpress-w2/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2020-11-07 02:44:15', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-11-07 02:44:15', '0000-00-00 00:00:00', '', 0, 'http://localhost:8082/wordpress-w2/?p=14', 1, 'nav_menu_item', '', 0),
(15, 1, '2020-11-07 02:44:45', '2020-11-07 02:44:45', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2020-11-07 02:44:45', '2020-11-07 02:44:45', '', 0, 'http://localhost:8082/wordpress-w2/wp-content/uploads/2020/11/logo.png', 0, 'attachment', 'image/png', 0),
(18, 1, '2020-11-07 03:16:16', '2020-11-07 03:16:16', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-11-09 10:27:57', '2020-11-09 10:27:57', '', 0, 'http://localhost:8082/wordpress-w2/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2020-11-07 03:16:16', '2020-11-07 03:16:16', '', 'Trang cá nhân', '', 'publish', 'closed', 'closed', '', '19', '', '', '2020-11-09 10:27:57', '2020-11-09 10:27:57', '', 0, 'http://localhost:8082/wordpress-w2/?p=19', 2, 'nav_menu_item', '', 0),
(20, 1, '2020-11-07 03:39:46', '2020-11-07 03:39:46', 'Truyện tiểu thuyết', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2020-11-09 10:27:57', '2020-11-09 10:27:57', '', 0, 'http://localhost:8082/wordpress-w2/?p=20', 3, 'nav_menu_item', '', 0),
(21, 1, '2020-11-07 03:35:05', '0000-00-00 00:00:00', '<p>Hệ thống</p>\n', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-11-07 03:35:05', '0000-00-00 00:00:00', '', 4, 'http://localhost:8082/wordpress-w2/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2020-11-07 03:35:05', '0000-00-00 00:00:00', '<p>Kinh dị</p>\n', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-11-07 03:35:05', '0000-00-00 00:00:00', '', 4, 'http://localhost:8082/wordpress-w2/?p=22', 1, 'nav_menu_item', '', 0),
(23, 1, '2020-11-07 03:35:05', '0000-00-00 00:00:00', '<p>Trinh thám</p>\n', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-11-07 03:35:05', '0000-00-00 00:00:00', '', 4, 'http://localhost:8082/wordpress-w2/?p=23', 1, 'nav_menu_item', '', 0),
(24, 1, '2020-11-07 03:35:05', '0000-00-00 00:00:00', '<p>Xuyên không</p>\n', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-11-07 03:35:05', '0000-00-00 00:00:00', '', 4, 'http://localhost:8082/wordpress-w2/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2020-11-07 03:39:46', '2020-11-07 03:39:46', 'Truyện ngắn là một thể loại văn học. Nó thường là các câu chuyện kể bằng văn xuôi và có xu hướng ngắn gọn, súc tích và hàm nghĩa hơn các câu truyện dài như tiểu thuyết.', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2020-11-09 10:27:57', '2020-11-09 10:27:57', '', 0, 'http://localhost:8082/wordpress-w2/?p=25', 8, 'nav_menu_item', '', 0),
(26, 1, '2020-11-07 03:39:46', '2020-11-07 03:39:46', 'Hệ thống', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2020-11-09 10:27:57', '2020-11-09 10:27:57', '', 4, 'http://localhost:8082/wordpress-w2/?p=26', 4, 'nav_menu_item', '', 0),
(27, 1, '2020-11-07 03:39:46', '2020-11-07 03:39:46', 'Kinh dị', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2020-11-09 10:27:57', '2020-11-09 10:27:57', '', 4, 'http://localhost:8082/wordpress-w2/?p=27', 5, 'nav_menu_item', '', 0),
(28, 1, '2020-11-07 03:39:46', '2020-11-07 03:39:46', 'Trinh thám', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2020-11-09 10:27:57', '2020-11-09 10:27:57', '', 4, 'http://localhost:8082/wordpress-w2/?p=28', 6, 'nav_menu_item', '', 0),
(29, 1, '2020-11-07 03:39:46', '2020-11-07 03:39:46', 'Xuyên không', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2020-11-09 10:27:57', '2020-11-09 10:27:57', '', 4, 'http://localhost:8082/wordpress-w2/?p=29', 7, 'nav_menu_item', '', 0),
(32, 1, '2020-11-07 07:52:06', '2020-11-07 07:52:06', '<!-- wp:paragraph -->\n<p>...................</p>\n<!-- /wp:paragraph -->', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2020-11-09 15:24:12', '2020-11-09 15:24:12', '', 2, 'http://localhost:8082/wordpress-w2/?page_id=32', 0, 'page', '', 0),
(33, 1, '2020-11-07 07:48:35', '2020-11-07 07:48:35', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2020-11-07 07:48:35', '2020-11-07 07:48:35', '', 32, 'http://localhost:8082/wordpress-w2/2020/11/07/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2020-11-07 07:52:06', '2020-11-07 07:52:06', '<!-- wp:paragraph -->\n<p>Đây là trang chủ</p>\n<!-- /wp:paragraph -->', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2020-11-07 07:52:06', '2020-11-07 07:52:06', '', 32, 'http://localhost:8082/wordpress-w2/2020/11/07/32-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2020-11-07 15:31:17', '2020-11-07 15:31:17', '<label> Đăng ký để không bỏ lỡ những bài viết mới của chúng tôi\r\n    [submit \"Submit\"] [email* your-email] </label>\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <huyen@gmail.com>\n[_site_admin_email]\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <huyen@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2020-11-10 08:52:08', '2020-11-10 08:52:08', '', 0, 'http://localhost:8082/wordpress-w2/?post_type=wpcf7_contact_form&#038;p=37', 0, 'wpcf7_contact_form', '', 0),
(38, 1, '2020-11-07 15:38:56', '2020-11-07 15:38:56', '', 'New Slideshow', '', 'publish', 'closed', 'closed', '', 'new-slideshow', '', '', '2020-11-07 15:48:48', '2020-11-07 15:48:48', '', 0, 'http://localhost:8082/wordpress-w2/?post_type=ml-slider&#038;p=38', 0, 'ml-slider', '', 0),
(39, 1, '2020-11-07 15:45:37', '2020-11-07 15:45:37', '', '2da724d443bdbce3e5ac', '', 'inherit', 'open', 'closed', '', '2da724d443bdbce3e5ac', '', '', '2020-11-07 15:45:37', '2020-11-07 15:45:37', '', 0, 'http://localhost:8082/wordpress-w2/wp-content/uploads/2020/11/2da724d443bdbce3e5ac.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2020-11-07 15:47:08', '2020-11-07 15:47:08', '', 'Lalin', '', 'inherit', 'open', 'closed', '', 'lalin', '', '', '2020-11-07 15:47:08', '2020-11-07 15:47:08', '', 0, 'http://localhost:8082/wordpress-w2/wp-content/uploads/2020/11/Lalin.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2020-11-07 15:48:28', '2020-11-07 15:48:28', '', 'Slider 38 - image', '', 'trash', 'closed', 'closed', '', 'slider-38-image__trashed', '', '', '2020-11-07 15:58:15', '2020-11-07 15:58:15', '', 0, 'http://localhost:8082/wordpress-w2/?post_type=ml-slide&#038;p=41', 0, 'ml-slide', '', 0),
(42, 1, '2020-11-07 15:48:28', '2020-11-07 15:48:28', '', 'Slider 38 - image', '', 'publish', 'closed', 'closed', '', 'slider-38-image-2', '', '', '2020-11-07 15:58:15', '2020-11-07 15:58:15', '', 0, 'http://localhost:8082/wordpress-w2/?post_type=ml-slide&#038;p=42', 1, 'ml-slide', '', 0),
(43, 1, '2020-11-07 15:48:28', '2020-11-07 15:48:28', '', 'Slider 38 - image', '', 'publish', 'closed', 'closed', '', 'slider-38-image-3', '', '', '2020-11-07 15:58:15', '2020-11-07 15:58:15', '', 0, 'http://localhost:8082/wordpress-w2/?post_type=ml-slide&#038;p=43', 2, 'ml-slide', '', 0),
(44, 1, '2020-11-09 12:19:50', '2020-11-09 12:19:50', 'post\npage\n1\n1\n1\npublish\ninherit\ndate\nDESC', 'Default Search Form', '', 'publish', 'closed', 'closed', '', 'default-search-form', '', '', '2020-11-09 12:19:50', '2020-11-09 12:19:50', '', 0, 'http://localhost:8082/wordpress-w2/?post_type=is_search_form&p=44', 0, 'is_search_form', '', 0),
(45, 1, '2020-11-09 12:23:54', '2020-11-09 12:23:54', 'post\npage\nattachment\npost\nattachment,ml-slide\n1\n1\n1\npublish\ninherit\nnull', 'Search', '', 'publish', 'closed', 'closed', '', 'untitled', '', '', '2020-11-09 12:24:03', '2020-11-09 12:24:03', '', 0, 'http://localhost:8082/wordpress-w2/?post_type=is_search_form&#038;p=45', 0, 'is_search_form', '', 0),
(49, 1, '2020-11-09 15:23:13', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>...........</p>\n<!-- /wp:paragraph -->', 'Trang chủ', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-11-09 15:23:13', '2020-11-09 15:23:13', '', 32, 'http://localhost:8082/wordpress-w2/?page_id=49', 0, 'page', '', 0),
(50, 1, '2020-11-09 15:22:00', '2020-11-09 15:22:00', '<!-- wp:paragraph -->\n<p>...........</p>\n<!-- /wp:paragraph -->', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2020-11-09 15:22:00', '2020-11-09 15:22:00', '', 49, 'http://localhost:8082/wordpress-w2/2020/11/09/49-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2020-11-09 15:24:12', '2020-11-09 15:24:12', '<!-- wp:paragraph -->\n<p>...................</p>\n<!-- /wp:paragraph -->', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2020-11-09 15:24:12', '2020-11-09 15:24:12', '', 32, 'http://localhost:8082/wordpress-w2/2020/11/09/32-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2020-11-10 07:48:22', '2020-11-10 07:48:22', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Xin chào và hẹn gặp lại sau.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\"><img class=\"wp-image-40\" style=\"width: 300px;\" src=\"http://localhost:8082/wordpress-w2/wp-content/uploads/2020/11/Lalin.png\" alt=\"\"></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Hello Work', '', 'trash', 'open', 'open', '', 'hello-work__trashed', '', '', '2020-11-10 08:13:56', '2020-11-10 08:13:56', '', 0, 'http://localhost:8082/wordpress-w2/?p=53', 0, 'post', '', 0),
(54, 1, '2020-11-10 07:48:22', '2020-11-10 07:48:22', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Xin chào và hẹn gặp lại sau.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\"><img class=\"wp-image-40\" style=\"width: 300px;\" src=\"http://localhost:8082/wordpress-w2/wp-content/uploads/2020/11/Lalin.png\" alt=\"\"></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Hello Work', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2020-11-10 07:48:22', '2020-11-10 07:48:22', '', 53, 'http://localhost:8082/wordpress-w2/2020/11/10/53-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2020-11-10 08:13:52', '2020-11-10 08:13:52', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-11-10 08:13:52', '2020-11-10 08:13:52', '', 1, 'http://localhost:8082/wordpress-w2/2020/11/10/1-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2020-11-10 08:19:38', '2020-11-10 08:19:38', '<!-- wp:paragraph -->\n<p>Câu chuyện về một con Thỏ ngốc nghếch và một con Rùa thật thà chăm chỉ.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":57,\"sizeSlug\":\"large\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img src=\"http://localhost:8082/wordpress-w2/wp-content/uploads/2020/11/rua-1.jpg\" alt=\"\" class=\"wp-image-57\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Ngày xửa ngày xưa, có một con Rùa và một con Thỏ cãi nhau xem ai nhanh hơn. Chúng quyết định giải quyết việc tranh luận bằng một cuộc thi chạy đua. Chúng đồng ý lộ trình và bắt đầu cuộc đua.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Thỏ xuất phát nhanh như tên bắn và chạy thục mạng rất nhanh, khi thấy rằng mình đã khá xa Rùa, Thỏ nghĩ nên nghỉ cho đỡ mệt&nbsp;dưới một bóng cây xum xê lá bên vệ đường và nghỉ thư giãn trước khi tiếp tục cuộc đua.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vì quá tự tin vào khả năng của mình, Thỏ ngồi dưới bóng cây và nhanh chóng ngủ thiếp đi trên đường đua. Rùa từ từ vượt qua Thỏ và sớm kết thúc đường đua.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Khi Thỏ thức dậy thì rùa đã đến đích và trở thành người chiến thắng. Thỏ giật mình tỉnh giấc và nhận ra rằng nó đã bị thua.</p>\n<!-- /wp:paragraph -->', 'Câu chuyện Rùa và Thỏ', '', 'publish', 'open', 'open', '', 'cau-chuyen-rua-va-tho', '', '', '2020-11-21 07:35:30', '2020-11-21 07:35:30', '', 0, 'http://localhost:8082/wordpress-w2/?p=56', 0, 'post', '', 0),
(57, 1, '2020-11-10 08:16:50', '2020-11-10 08:16:50', '', 'rua-1', '', 'inherit', 'open', 'closed', '', 'rua-1', '', '', '2020-11-10 08:16:50', '2020-11-10 08:16:50', '', 56, 'http://localhost:8082/wordpress-w2/wp-content/uploads/2020/11/rua-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2020-11-10 08:18:55', '2020-11-10 08:18:55', '<!-- wp:paragraph -->\n<p>Câu chuyện về một con Thỏ ngốc nghếch và một con Rùa thật thà chăm chỉ.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":57,\"sizeSlug\":\"large\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img src=\"http://localhost:8082/wordpress-w2/wp-content/uploads/2020/11/rua-1.jpg\" alt=\"\" class=\"wp-image-57\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Ngày xửa ngày xưa, có một con Rùa và một con Thỏ cãi nhau xem ai nhanh hơn. Chúng quyết định giải quyết việc tranh luận bằng một cuộc thi chạy đua. Chúng đồng ý lộ trình và bắt đầu cuộc đua.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Thỏ xuất phát nhanh như tên bắn và chạy thục mạng rất nhanh, khi thấy rằng mình đã khá xa Rùa, Thỏ nghĩ nên nghỉ cho đỡ mệt&nbsp;dưới một bóng cây xum xê lá bên vệ đường và nghỉ thư giãn trước khi tiếp tục cuộc đua.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vì quá tự tin vào khả năng của mình, Thỏ ngồi dưới bóng cây và nhanh chóng ngủ thiếp đi trên đường đua. Rùa từ từ vượt qua Thỏ và sớm kết thúc đường đua.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Khi Thỏ thức dậy thì rùa đã đến đích và trở thành người chiến thắng. Thỏ giật mình tỉnh giấc và nhận ra rằng nó đã bị thua.</p>\n<!-- /wp:paragraph -->', 'Câu chuyện Rùa và Thỏ', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2020-11-10 08:18:55', '2020-11-10 08:18:55', '', 56, 'http://localhost:8082/wordpress-w2/2020/11/10/56-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2020-11-10 09:29:46', '2020-11-10 09:29:46', '<!-- wp:paragraph -->\n<p>ádfljlnakjsdfbaskdvnjdsvnasjckbasmc</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":15,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost:8082/wordpress-w2/wp-content/uploads/2020/11/logo.png\" alt=\"\" class=\"wp-image-15\"/></figure>\n<!-- /wp:image -->', 'djkfhkasd', '', 'trash', 'open', 'open', '', 'djkfhkasd__trashed', '', '', '2020-11-10 10:04:30', '2020-11-10 10:04:30', '', 0, 'http://localhost:8082/wordpress-w2/?p=60', 0, 'post', '', 0),
(61, 1, '2020-11-10 09:29:46', '2020-11-10 09:29:46', '<!-- wp:paragraph -->\n<p>ádfljlnakjsdfbaskdvnjdsvnasjckbasmc</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":15,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost:8082/wordpress-w2/wp-content/uploads/2020/11/logo.png\" alt=\"\" class=\"wp-image-15\"/></figure>\n<!-- /wp:image -->', 'djkfhkasd', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2020-11-10 09:29:46', '2020-11-10 09:29:46', '', 60, 'http://localhost:8082/wordpress-w2/2020/11/10/60-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2020-11-10 09:53:55', '2020-11-10 09:53:55', '<!-- wp:paragraph -->\n<p>adfgafdgasdg</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":40,\"sizeSlug\":\"large\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"http://localhost:8082/wordpress-w2/wp-content/uploads/2020/11/Lalin.png\" alt=\"\" class=\"wp-image-40\"/></figure>\n<!-- /wp:image -->', 'ádgadsgdga', '', 'trash', 'open', 'open', '', 'adgadsgdga__trashed', '', '', '2020-11-10 10:04:27', '2020-11-10 10:04:27', '', 0, 'http://localhost:8082/wordpress-w2/?p=62', 0, 'post', '', 0),
(63, 1, '2020-11-10 09:53:55', '2020-11-10 09:53:55', '<!-- wp:paragraph -->\n<p>adfgafdgasdg</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":40,\"sizeSlug\":\"large\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"http://localhost:8082/wordpress-w2/wp-content/uploads/2020/11/Lalin.png\" alt=\"\" class=\"wp-image-40\"/></figure>\n<!-- /wp:image -->', 'ádgadsgdga', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2020-11-10 09:53:55', '2020-11-10 09:53:55', '', 62, 'http://localhost:8082/wordpress-w2/2020/11/10/62-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2020-11-21 07:08:52', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-11-21 07:08:52', '0000-00-00 00:00:00', '', 0, 'http://localhost:8082/wordpress-w2/?p=65', 0, 'post', '', 0),
(67, 1, '2020-11-21 07:49:11', '2020-11-21 07:49:11', '<!-- wp:paragraph -->\n<p>\"Ngày xưa, muông thú đều tôn Mèo là Thầy, vì Mèo rất tài giỏi, dạy cho muông thú các môn võ nghệ để phòng thân và tồn tại. Như trâu biết húc, gà biết mổ và đá, ngựa biết chạy và lúc gặp kẻ thù nguy hiểm thì biết đá hậu…Khi ấy Hổ chưa biết ngón nghề võ nào, thấy muông thú đều được học thì cũng muốn lắm, ngặt nỗi không biết làm sao, bèn tìm cách học lén khi những con thú học với Mèo. Mèo một lần bắt gặp, Hổ thấy thế xin:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><em>- Xin Thầy thương tình mà truyền cho các ngón nghề võ nghệ phòng thân.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><em>Nghe thế Mèo đồng ý nhận Hổ làm học trò mà ngày ngày truyền dạy võ nghệ, truyền tất cả các ngón nghề. Mỗi lần học, Hổ lại nài nỉ:</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><em>- Thầy còn tuyệt nghệ nào xin truyền hết đi.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><em>Thế là Mèo lại truyền môn “ra oai” bằng những chiêu gầm gừ, gầm rống và xù lông làm đối phướng khiếp vía kinh hải.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><em>Ngày qua ngày, Hổ đã học được hết tất cả các môn võ nghệ. Muông thú đều sợ hãi và đều thất bại dưới móng vuốt của Hổ mỗi khi tỉ thí. Tính tham lam và cao ngạo lên cao, nhìn lại thấy chỉ còn Mèo là Hổ chưa tỉ thí và nghĩ Mèo quá nhỏ thó so với Hổ, nếu thắng Mèo nữa thì sẽ là Chúa tể muôn loài. Vậy là Hổ thẳng thừng thách đấu với Mèo.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><em>Mèo nghe tin ấy không tỏ vẻ sợ hải hay ngạc nhiên.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><em>Đến ngày thi đấu, Mèo đến, Hổ đã chờ sẳn. Không nói không rằng, Hổ liền bất ngờ tấn công Mèo. Mèo biết trước, nhanh nhẩu né tránh và trèo thoăn thoắt lên cây cao. Hổ bị bất ngờ nên tức lắm, ở dưới gốc cây gầm rống vang cả núi rừng. Mèo ở trên cây cười và bảo:</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><em>- Meo mẻo mèo meo, ta còn võ trèo, ta chẳng dạy cho.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><em>Hổ càng tức điên, nhưng cố bình tĩnh, nhại lại Mèo, nghiến răng nói:</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><em>- Meo mẻo mèo meo, ta bắt được Mèo ta ăn cả phân!</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><em>Từ ấy, Hổ tuy mạnh mẽ nhưng lại không biết leo trèo, cũng từ ấy dòng dõi nhà Mèo đều phải đào hố và giấu phân của mình.</em>\"</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Câu chuyện kết thúc với hình ảnh một con hổ dưới gốc cây đang ấm ức trước con mèo trên cành cây. Dường như nội dung duy nhất chuyển tải của câu truyện, xét trên quan niệm truyền thống ngàn đời của người Việt Nam, là muốn nhắc nhở người đời rằng phải biết “tôn sư trọng đạo”, “uống nước nhớ nguồn”.</p>\n<!-- /wp:paragraph -->', 'Mèo và Hổ', '', 'publish', 'open', 'open', '', 'meo-va-ho', '', '', '2020-11-21 07:52:04', '2020-11-21 07:52:04', '', 0, 'http://localhost:8082/wordpress-w2/?p=67', 0, 'post', '', 0),
(68, 1, '2020-11-21 07:48:48', '2020-11-21 07:48:48', '', 'su-tich-con-meo', '', 'inherit', 'open', 'closed', '', 'su-tich-con-meo', '', '', '2020-11-21 07:48:48', '2020-11-21 07:48:48', '', 67, 'http://localhost:8082/wordpress-w2/wp-content/uploads/2020/11/su-tich-con-meo.jpeg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2020-11-21 07:49:11', '2020-11-21 07:49:11', '<!-- wp:paragraph -->\n<p>\"Ngày xưa, muông thú đều tôn Mèo là Thầy, vì Mèo rất tài giỏi, dạy cho muông thú các môn võ nghệ để phòng thân và tồn tại. Như trâu biết húc, gà biết mổ và đá, ngựa biết chạy và lúc gặp kẻ thù nguy hiểm thì biết đá hậu…Khi ấy Hổ chưa biết ngón nghề võ nào, thấy muông thú đều được học thì cũng muốn lắm, ngặt nỗi không biết làm sao, bèn tìm cách học lén khi những con thú học với Mèo. Mèo một lần bắt gặp, Hổ thấy thế xin:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><em>- Xin Thầy thương tình mà truyền cho các ngón nghề võ nghệ phòng thân.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><em>Nghe thế Mèo đồng ý nhận Hổ làm học trò mà ngày ngày truyền dạy võ nghệ, truyền tất cả các ngón nghề. Mỗi lần học, Hổ lại nài nỉ:</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><em>- Thầy còn tuyệt nghệ nào xin truyền hết đi.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><em>Thế là Mèo lại truyền môn “ra oai” bằng những chiêu gầm gừ, gầm rống và xù lông làm đối phướng khiếp vía kinh hải.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><em>Ngày qua ngày, Hổ đã học được hết tất cả các môn võ nghệ. Muông thú đều sợ hãi và đều thất bại dưới móng vuốt của Hổ mỗi khi tỉ thí. Tính tham lam và cao ngạo lên cao, nhìn lại thấy chỉ còn Mèo là Hổ chưa tỉ thí và nghĩ Mèo quá nhỏ thó so với Hổ, nếu thắng Mèo nữa thì sẽ là Chúa tể muôn loài. Vậy là Hổ thẳng thừng thách đấu với Mèo.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><em>Mèo nghe tin ấy không tỏ vẻ sợ hải hay ngạc nhiên.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><em>Đến ngày thi đấu, Mèo đến, Hổ đã chờ sẳn. Không nói không rằng, Hổ liền bất ngờ tấn công Mèo. Mèo biết trước, nhanh nhẩu né tránh và trèo thoăn thoắt lên cây cao. Hổ bị bất ngờ nên tức lắm, ở dưới gốc cây gầm rống vang cả núi rừng. Mèo ở trên cây cười và bảo:</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><em>- Meo mẻo mèo meo, ta còn võ trèo, ta chẳng dạy cho.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><em>Hổ càng tức điên, nhưng cố bình tĩnh, nhại lại Mèo, nghiến răng nói:</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><em>- Meo mẻo mèo meo, ta bắt được Mèo ta ăn cả phân!</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><em>Từ ấy, Hổ tuy mạnh mẽ nhưng lại không biết leo trèo, cũng từ ấy dòng dõi nhà Mèo đều phải đào hố và giấu phân của mình.</em>\"</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Câu chuyện kết thúc với hình ảnh một con hổ dưới gốc cây đang ấm ức trước con mèo trên cành cây. Dường như nội dung duy nhất chuyển tải của câu truyện, xét trên quan niệm truyền thống ngàn đời của người Việt Nam, là muốn nhắc nhở người đời rằng phải biết “tôn sư trọng đạo”, “uống nước nhớ nguồn”.</p>\n<!-- /wp:paragraph -->', 'Mèo và Hổ', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2020-11-21 07:49:11', '2020-11-21 07:49:11', '', 67, 'http://localhost:8082/wordpress-w2/2020/11/21/67-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2020-11-21 07:51:49', '2020-11-21 07:51:49', '', 'homeo1', '', 'inherit', 'open', 'closed', '', 'homeo1', '', '', '2020-11-21 07:51:49', '2020-11-21 07:51:49', '', 67, 'http://localhost:8082/wordpress-w2/wp-content/uploads/2020/11/homeo1.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2020-11-21 07:57:47', '2020-11-21 07:57:47', '<!-- wp:paragraph -->\n<p>Câu chuyện về một con Thỏ ngốc nghếch và một con Rùa thật thà chăm chỉ.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":57,\"sizeSlug\":\"large\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img src=\"http://localhost:8082/wordpress-w2/wp-content/uploads/2020/11/rua-1.jpg\" alt=\"\" class=\"wp-image-57\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Ngày xửa ngày xưa, có một con Rùa và một con Thỏ cãi nhau xem ai nhanh hơn. Chúng quyết định giải quyết việc tranh luận bằng một cuộc thi chạy đua. Chúng đồng ý lộ trình và bắt đầu cuộc đua.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Thỏ xuất phát nhanh như tên bắn và chạy thục mạng rất nhanh, khi thấy rằng mình đã khá xa Rùa, Thỏ nghĩ nên nghỉ cho đỡ mệt&nbsp;dưới một bóng cây xum xê lá bên vệ đường và nghỉ thư giãn trước khi tiếp tục cuộc đua.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vì quá tự tin vào khả năng của mình, Thỏ ngồi dưới bóng cây và nhanh chóng ngủ thiếp đi trên đường đua. Rùa từ từ vượt qua Thỏ và sớm kết thúc đường đua.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Khi Thỏ thức dậy thì rùa đã đến đích và trở thành người chiến thắng. Thỏ giật mình tỉnh giấc và nhận ra rằng nó đã bị thua.</p>\n<!-- /wp:paragraph -->', 'Câu chuyện Rùa và Thỏ', '', 'inherit', 'closed', 'closed', '', '56-autosave-v1', '', '', '2020-11-21 07:57:47', '2020-11-21 07:57:47', '', 56, 'http://localhost:8082/wordpress-w2/2020/11/21/56-autosave-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(3, 'main', 'main', 0),
(4, 'Tiểu thuyết', 'tieu-thuyet', 0),
(5, 'Truyện ngắn', 'truyen-ngan', 0),
(6, 'Kinh dị', 'kinh-di', 0),
(7, 'Trinh thám', 'trinh-tham', 0),
(8, 'Xuyên không', 'xuyen-khong', 0),
(9, 'Hệ thống', 'he-thong', 0),
(10, '38', '38', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(18, 3, 0),
(19, 3, 0),
(20, 3, 0),
(25, 3, 0),
(26, 3, 0),
(27, 3, 0),
(28, 3, 0),
(29, 3, 0),
(41, 10, 0),
(42, 10, 0),
(43, 10, 0),
(53, 5, 0),
(56, 5, 0),
(60, 5, 0),
(62, 1, 0),
(67, 5, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(3, 3, 'nav_menu', '', 0, 8),
(4, 4, 'category', 'Truyện tiểu thuyết', 0, 0),
(5, 5, 'category', 'Truyện ngắn là một thể loại văn học. Nó thường là các câu chuyện kể bằng văn xuôi và có xu hướng ngắn gọn, súc tích và hàm nghĩa hơn các câu truyện dài như tiểu thuyết. ', 0, 2),
(6, 6, 'category', 'Kinh dị\r\n', 4, 0),
(7, 7, 'category', 'Trinh thám', 4, 0),
(8, 8, 'category', 'Xuyên không', 4, 0),
(9, 9, 'category', 'Hệ thống', 4, 0),
(10, 10, 'ml-slider', '', 0, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '65'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'session_tokens', 'a:1:{s:64:\"2308b189d43e2d23e84a74c6fdf58a7622dd7edb038dbebf8f4b1bcfa31795e8\";a:4:{s:10:\"expiration\";i:1606115319;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\";s:5:\"login\";i:1605942519;}}'),
(21, 1, 'wp_user-settings', 'libraryContent=browse'),
(22, 1, 'wp_user-settings-time', '1604717120'),
(23, 1, 'nav_menu_recently_edited', '3'),
(24, 1, 'wp_metaslider_user_saw_callout_toolbar', '1'),
(25, 1, 'wp_metaslider_analytics_onboarding_status', 'yes');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bo5DV/Iw./LSHwmn1/oSitaaMJKM13/', 'admin', 'huyen@gmail.com', 'http://localhost:8082/wordpress-w2', '2020-10-31 13:36:09', '', 0, 'admin');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Chỉ mục cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Chỉ mục cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Chỉ mục cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Chỉ mục cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Chỉ mục cho bảng `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Chỉ mục cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Chỉ mục cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=366;

--
-- AUTO_INCREMENT cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
