-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2018 at 12:56 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jayahr`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-07-02 04:59:19', '2018-07-02 04:59:19', 'Hi, this is a comment.\r\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\r\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/jayahr', 'yes'),
(2, 'home', 'http://localhost/jayahr', 'yes'),
(3, 'blogname', 'Jay Ahr', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'arrowicode.tester@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '17', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '17', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:157:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=27&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:35:\"redux-framework/redux-framework.php\";i:1;s:34:\"advanced-custom-fields-pro/acf.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'jayahr', 'yes'),
(41, 'stylesheet', 'jayahr', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
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
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:2;a:4:{s:5:\"title\";s:10:\"Contact us\";s:4:\"text\";s:14:\"[show_contact]\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '27', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:14:\"iconic_vintage\";a:1:{i:0;s:10:\"nav_menu-2\";}s:15:\"client_services\";a:1:{i:0;s:10:\"nav_menu-3\";}s:10:\"contact_us\";a:2:{i:0;s:6:\"text-2\";i:1;s:10:\"nav_menu-4\";}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:4:{i:2;a:2:{s:5:\"title\";s:14:\"Iconic vintage\";s:8:\"nav_menu\";i:17;}i:3;a:2:{s:5:\"title\";s:15:\"Client services\";s:8:\"nav_menu\";i:18;}i:4;a:1:{s:8:\"nav_menu\";i:19;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:13:{i:1530788360;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1530788927;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1530789529;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1530794565;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1530805365;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1530809960;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1530835200;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1530845914;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1530853242;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1530870165;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1530870175;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1533600000;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(112, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.6-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.6-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.6\";s:7:\"version\";s:5:\"4.9.6\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1530785327;s:15:\"version_checked\";s:5:\"4.9.6\";s:12:\"translations\";a:0:{}}', 'no'),
(117, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1530781728;s:7:\"checked\";a:1:{s:6:\"jayahr\";s:0:\"\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(118, '_site_transient_timeout_browser_a54eb83090ed984332f4eca22d3ec5e4', '1531112371', 'no'),
(119, '_site_transient_browser_a54eb83090ed984332f4eca22d3ec5e4', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"67.0.3396.99\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(120, 'can_compress_scripts', '1', 'no'),
(135, 'recently_activated', 'a:2:{s:65:\"woo-product-gallery-slider/woocommerce-product-gallery-slider.php\";i:1530691572;s:34:\"woo-product-images-slider/wpis.php\";i:1530691018;}', 'yes'),
(139, 'woocommerce_store_address', '', 'yes'),
(140, 'woocommerce_store_address_2', '', 'yes'),
(141, 'woocommerce_store_city', '', 'yes'),
(142, 'woocommerce_default_country', 'GB', 'yes'),
(143, 'woocommerce_store_postcode', '', 'yes'),
(144, 'woocommerce_allowed_countries', 'all', 'yes'),
(145, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(146, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(147, 'woocommerce_ship_to_countries', '', 'yes'),
(148, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(149, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(150, 'woocommerce_calc_taxes', 'no', 'yes'),
(151, 'woocommerce_enable_coupons', 'yes', 'yes'),
(152, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(153, 'woocommerce_currency', 'EUR', 'yes'),
(154, 'woocommerce_currency_pos', 'left', 'yes'),
(155, 'woocommerce_price_thousand_sep', '.', 'yes'),
(156, 'woocommerce_price_decimal_sep', ',', 'yes'),
(157, 'woocommerce_price_num_decimals', '0', 'yes'),
(158, 'woocommerce_shop_page_id', '114', 'yes'),
(159, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(160, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(161, 'woocommerce_weight_unit', 'kg', 'yes'),
(162, 'woocommerce_dimension_unit', 'cm', 'yes'),
(163, 'woocommerce_enable_reviews', 'yes', 'yes'),
(164, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(165, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(166, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(167, 'woocommerce_review_rating_required', 'yes', 'no'),
(168, 'woocommerce_manage_stock', 'yes', 'yes'),
(169, 'woocommerce_hold_stock_minutes', '60', 'no'),
(170, 'woocommerce_notify_low_stock', 'yes', 'no'),
(171, 'woocommerce_notify_no_stock', 'yes', 'no'),
(172, 'woocommerce_stock_email_recipient', 'arrowicode.tester@gmail.com', 'no'),
(173, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(174, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(175, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(176, 'woocommerce_stock_format', '', 'yes'),
(177, 'woocommerce_file_download_method', 'force', 'no'),
(178, 'woocommerce_downloads_require_login', 'no', 'no'),
(179, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(180, 'woocommerce_prices_include_tax', 'no', 'yes'),
(181, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(182, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(183, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(184, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(185, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(186, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(187, 'woocommerce_price_display_suffix', '', 'yes'),
(188, 'woocommerce_tax_total_display', 'itemized', 'no'),
(189, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(190, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(191, 'woocommerce_ship_to_destination', 'billing', 'no'),
(192, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(193, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(194, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(195, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(196, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(197, 'woocommerce_registration_generate_username', 'yes', 'no'),
(198, 'woocommerce_registration_generate_password', 'yes', 'no'),
(199, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(200, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(201, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(202, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(203, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(204, 'woocommerce_trash_pending_orders', '', 'no'),
(205, 'woocommerce_trash_failed_orders', '', 'no'),
(206, 'woocommerce_trash_cancelled_orders', '', 'no'),
(207, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(208, 'woocommerce_email_from_name', 'Jay Ahr', 'no'),
(209, 'woocommerce_email_from_address', 'arrowicode.tester@gmail.com', 'no'),
(210, 'woocommerce_email_header_image', '', 'no'),
(211, 'woocommerce_email_footer_text', '{site_title}', 'no'),
(212, 'woocommerce_email_base_color', '#96588a', 'no'),
(213, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(214, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(215, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(216, 'woocommerce_cart_page_id', '115', 'yes'),
(217, 'woocommerce_checkout_page_id', '116', 'yes'),
(218, 'woocommerce_myaccount_page_id', '117', 'yes'),
(219, 'woocommerce_terms_page_id', '', 'no'),
(220, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(221, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(222, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(223, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(224, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(225, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(226, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(227, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(228, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(229, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(230, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(231, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(232, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(233, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(234, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(235, 'woocommerce_api_enabled', 'no', 'yes'),
(236, 'woocommerce_single_image_width', '600', 'yes'),
(237, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(238, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(239, 'woocommerce_demo_store', 'no', 'no'),
(240, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:8:\"/product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(241, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(242, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(245, 'default_product_cat', '15', 'yes'),
(250, 'woocommerce_admin_notices', 'a:1:{i:0;s:20:\"no_secure_connection\";}', 'yes'),
(251, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(252, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(253, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(254, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(255, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(256, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(257, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(258, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(259, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(260, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(261, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(262, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(263, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(266, '_transient_timeout_external_ip_address_::1', '1531112453', 'no'),
(267, '_transient_external_ip_address_::1', '118.69.62.13', 'no'),
(269, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(287, 'acf_version', '5.6.5', 'yes'),
(288, 'theme_mods_twentyseventeen', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1530507935;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(289, 'current_theme', 'Jay Ahr', 'yes'),
(290, 'theme_mods_jayahr', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:4:{s:7:\"primary\";i:16;s:14:\"iconic-vintage\";i:17;s:15:\"client-services\";i:18;s:10:\"contact-us\";i:19;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(291, 'theme_switched', '', 'yes'),
(292, 'redux_version_upgraded_from', '3.6.9', 'yes'),
(293, 'widget_news_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(294, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(299, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(306, 'jayahr_option-transients', 'a:2:{s:14:\"changed_values\";a:2:{s:8:\"facebook\";s:0:\"\";s:9:\"instagram\";s:0:\"\";}s:9:\"last_save\";i:1530527728;}', 'yes'),
(307, 'jayahr_option', 'a:17:{s:8:\"last_tab\";s:0:\"\";s:10:\"logo-image\";a:9:{s:3:\"url\";s:59:\"http://localhost/jayahr/wp-content/uploads/2018/07/logo.png\";s:2:\"id\";s:2:\"19\";s:6:\"height\";s:2:\"30\";s:5:\"width\";s:3:\"291\";s:9:\"thumbnail\";s:66:\"http://localhost/jayahr/wp-content/uploads/2018/07/logo-150x30.png\";s:5:\"title\";s:4:\"logo\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:7:\"favicon\";a:9:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";s:5:\"title\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:9:\"lang_name\";s:0:\"\";s:7:\"hotline\";s:0:\"\";s:5:\"phone\";s:15:\"+44 123 456 789\";s:7:\"address\";s:0:\"\";s:5:\"email\";s:15:\"jayahr@mail.com\";s:11:\"vip-message\";s:0:\"\";s:8:\"currency\";s:0:\"\";s:8:\"facebook\";s:1:\"#\";s:11:\"google-plus\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:7:\"youtube\";s:0:\"\";s:9:\"instagram\";s:1:\"#\";s:12:\"social-email\";s:1:\"#\";s:9:\"copyright\";s:48:\"Copyright © 2018. Jay Ahr. All rights reserved.\";}', 'yes'),
(349, '_transient_product_query-transient-version', '1530764095', 'yes'),
(351, '_transient_product-transient-version', '1530764095', 'yes'),
(436, '_transient_shipping-transient-version', '1530611679', 'yes'),
(446, '_transient_timeout_plugin_slugs', '1530786839', 'no'),
(447, '_transient_plugin_slugs', 'a:6:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:9:\"hello.php\";i:4;s:35:\"redux-framework/redux-framework.php\";i:5;s:27:\"woocommerce/woocommerce.php\";}', 'no'),
(453, 'woocommerce_version', '3.4.3', 'yes'),
(454, 'woocommerce_db_version', '3.4.3', 'yes'),
(464, '_transient_orders-transient-version', '1530611679', 'yes'),
(466, '_transient_timeout_wc_shipping_method_count_0_1530611679', '1533203883', 'no'),
(467, '_transient_wc_shipping_method_count_0_1530611679', '0', 'no'),
(484, '_transient_timeout_wc_product_loop72911530610331', '1533205958', 'no'),
(485, '_transient_wc_product_loop72911530610331', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:12:{i:0;i:80;i:1;i:82;i:2;i:84;i:3;i:86;i:4;i:88;i:5;i:90;i:6;i:92;i:7;i:94;i:8;i:96;i:9;i:98;i:10;i:100;i:11;i:102;}s:5:\"total\";i:12;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:12;s:12:\"current_page\";i:1;}', 'no'),
(496, '_transient_timeout_wc_report_sales_by_date', '1530874226', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(497, '_transient_wc_report_sales_by_date', 'a:96:{s:32:\"ace9541abf90ca023a4fcd341185ce90\";a:0:{}s:32:\"1814151f2f42eb3b44d6d8912b65d586\";a:0:{}s:32:\"f776d91442535adfdd6a995cfe360a37\";a:0:{}s:32:\"102957564ce19b423160e9dfac679974\";N;s:32:\"962c7f86ef82429d4b386178f6d3a773\";a:0:{}s:32:\"dfa1c2e73b49a09ba3cbf0a14794566c\";a:0:{}s:32:\"f3159abef4604e6bb72d2a40b5886113\";a:0:{}s:32:\"89ae044fc5eedfdffb04d9c9a656f49e\";a:0:{}s:32:\"59843ac1a31b8af558a54082e7ceb4c8\";a:0:{}s:32:\"e4db1b3ff643ef629ae83e3848d635c5\";a:0:{}s:32:\"dcd7277efa9614271cb8777c676254d0\";a:0:{}s:32:\"1739f94341513ae95091d265a92ccf3c\";N;s:32:\"fc2ae98d31c26d8ed482cbe676e02cdd\";a:0:{}s:32:\"d76f4a1dcc4518739f0e05eb36600b73\";a:0:{}s:32:\"70b397a12e5956cd3fdb5d55247bca6d\";a:0:{}s:32:\"d5619abb8d126f1db9b40800ec7711a8\";a:0:{}s:32:\"71f7f7831b8cf42c003b7d2f6a80803b\";a:0:{}s:32:\"36e108a480bb875c7b5803fbbaeb1af3\";a:0:{}s:32:\"e77a0793d0ba441fe28a2d400ecff71f\";a:0:{}s:32:\"4bc8cf7fb9002b21e734ea4e4f2bf3b3\";N;s:32:\"bd5efda3a3b870bf6c6bda44e9527564\";a:0:{}s:32:\"5a92f1a693f8873d345f07946b4975d2\";a:0:{}s:32:\"ee607d6025b7d8da917061d264ecee54\";a:0:{}s:32:\"92b494ca20a956ac1b4cde5f207d1815\";a:0:{}s:32:\"e9ba39ec9809965e3629609fa32b2fbc\";a:0:{}s:32:\"93786787f0ed99041938e46e8da42f02\";a:0:{}s:32:\"09515e0410faa52cad999cea781c5e3b\";a:0:{}s:32:\"572711161983ca2c758a83553cb3d1f6\";N;s:32:\"0621fb84b5b16f8907b82703fdebcaf3\";a:0:{}s:32:\"21026f256c367ec24671aa8a894e654b\";a:0:{}s:32:\"a31467ac5d565b78b75bd06429f1f1b0\";a:0:{}s:32:\"430cbbf14ab19c2de101a078524b1cf1\";a:0:{}s:32:\"60a2e886df67c8acfb0b6073e80da3d6\";a:0:{}s:32:\"8aaa0da8779cc0eaed7d0e89317ee1c1\";a:0:{}s:32:\"7527daf1db09b43c0bbdbff472d2ebc0\";a:0:{}s:32:\"356edb52919bb937dff2735a5904f46c\";N;s:32:\"26c14030c3c32942f8e503da12883ca9\";a:0:{}s:32:\"7c93a5c54615f9d02f0f78c766bfa730\";a:0:{}s:32:\"9720bd36fe1fef7a5f871296f788d1fe\";a:0:{}s:32:\"19457771659b04971777bb67f1790165\";a:0:{}s:32:\"907732266de253a04a48a67ee6f2cde1\";a:0:{}s:32:\"e9492ce9858f05325bfd70cf10fb7926\";a:0:{}s:32:\"fd98f6e8da15ba09a31c95a79307844b\";a:0:{}s:32:\"9ca50184a24b21e3e2b0501c8ea3f8f7\";N;s:32:\"0a959cc48e709db9fcb7c9c895bd8e26\";a:0:{}s:32:\"dc670e9faf6c3027a450f98f184dd862\";a:0:{}s:32:\"82a6e23b55bfcb77b38e3e484c61583f\";a:0:{}s:32:\"2b5f93ffbd51d9347817a666cd59e2e0\";a:0:{}s:32:\"a4a67b0a2a1964a067973137a5b8416b\";a:0:{}s:32:\"170aafafaa06e44fe0e74d744f234ff1\";a:0:{}s:32:\"d228efadc13c7b322311d33b6a3767f4\";a:0:{}s:32:\"0629f710b6d3a290b7eca2baec3b9eee\";N;s:32:\"2affa66b996df349b28f28844604c8ae\";a:0:{}s:32:\"6ff585113ef04b750b169c0af1d6ee5e\";a:0:{}s:32:\"332d2fea5092c63a80919bf922a85233\";a:0:{}s:32:\"b65c440e210815bc49b68af67fa4675c\";a:0:{}s:32:\"202d7720d28eb74cad5738b7dfc02cee\";a:0:{}s:32:\"c4a2bead34f6f784ff3814247cc2bdd8\";a:0:{}s:32:\"2f60c9196a9c3f10f24989af760729bd\";a:0:{}s:32:\"1ac4718282b49baa4009aa329f76574d\";N;s:32:\"9d4798037e04e2679b78bebc79e8edb3\";a:0:{}s:32:\"a486522b997822e0365631029aca8bc2\";a:0:{}s:32:\"cd2dd6f415f1bbe1af440faeac0ba94a\";a:0:{}s:32:\"18a3878abf54f02f889edf405a506262\";a:0:{}s:32:\"7628b3045b2911d21a296ad13d13837c\";a:0:{}s:32:\"d2230529e7e70ebce35a3e5739602a29\";a:0:{}s:32:\"6b799463b47b1335902ed45682e2381f\";a:0:{}s:32:\"a5a722d10417c6e8398713cfa4297027\";N;s:32:\"f3311108255ed272073eeb0074906f3c\";a:0:{}s:32:\"4496a2347dd0f9d9baa7982ef2c13aff\";a:0:{}s:32:\"f8f7e86aae51b87f53bd10128ddac259\";a:0:{}s:32:\"e0bfbfe369402cdb4e082e6f8a69f154\";a:0:{}s:32:\"430b5bafbbcda1b3760a914bd5dea734\";a:0:{}s:32:\"980dc4b8df0fbaccf299eb99a2d849bd\";a:0:{}s:32:\"013c6fa6b8abe2f3e49cf154d7e630b7\";a:0:{}s:32:\"df23f86eca17409ef9a680c7488d9b4b\";N;s:32:\"fad4d6b5fcc6367b9a09fb91742e3019\";a:0:{}s:32:\"285246c8c0f1fc8041c4a833dfce7c43\";a:0:{}s:32:\"f7c28e23a58ce09517df1edaf1be21d5\";a:0:{}s:32:\"ea8a2e453582695e6cadee8ed9bb9679\";a:0:{}s:32:\"a52716eb0ce13d473b649350f98caf9f\";a:0:{}s:32:\"5befa654e479596f975f1462d0efa74e\";a:0:{}s:32:\"01f0b0fc0a8bcf2d019337e061d9437e\";a:0:{}s:32:\"30f8f2f83e02e10ba72d83d9193a60be\";N;s:32:\"5e0e809995e2fe136b29ff6fc9854694\";a:0:{}s:32:\"c90971a8346029f348e80ec7919be9f1\";a:0:{}s:32:\"b3aa85b378bd17b2350c59d4c0bf9277\";a:0:{}s:32:\"bea029d036463c4b98fcdb7799e0f4a3\";a:0:{}s:32:\"c6afa3a88ea2688b96b3a080ef29efe7\";a:0:{}s:32:\"28fc255cae3b70e347cc67fe4a5b9a80\";a:0:{}s:32:\"c80ed8e1253477ad0616baf720d1ea32\";a:0:{}s:32:\"e8896424b72efcfd9f62ec2e1bb2a76d\";N;s:32:\"31e7915bca5f6e97a8aef08eb5de465f\";a:0:{}s:32:\"9631e80004bf7103d7c0545f5a9f19ad\";a:0:{}s:32:\"e35c2bf9491b2cca69186a5a167654dc\";a:0:{}s:32:\"e0c3931ab629d16a0e1b9b3b07b0ef63\";a:0:{}}', 'no'),
(546, 'product_cat_children', 'a:1:{i:15;a:5:{i:0;i:24;i:1;i:25;i:2;i:26;i:3;i:27;i:4;i:28;}}', 'yes'),
(581, '_transient_wc_attribute_taxonomies', 'a:3:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"3\";s:14:\"attribute_name\";s:9:\"attr-type\";s:15:\"attribute_label\";s:4:\"Type\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:1;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"2\";s:14:\"attribute_name\";s:6:\"series\";s:15:\"attribute_label\";s:6:\"Series\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:2;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"1\";s:14:\"attribute_name\";s:4:\"size\";s:15:\"attribute_label\";s:4:\"Size\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}}', 'yes'),
(697, 'wpis_options', 'a:5:{s:5:\"arrow\";s:4:\"true\";s:6:\"carrow\";s:4:\"true\";s:4:\"zoom\";s:4:\"true\";s:5:\"popup\";s:4:\"true\";s:8:\"autoplay\";s:5:\"false\";}', 'yes'),
(708, 'wpgs_option', 'a:10:{s:8:\"wpgs_nav\";s:4:\"true\";s:17:\"wpgs_nav_infinite\";s:5:\"false\";s:11:\"wpgs_nav_cl\";s:7:\"#ff6b00\";s:15:\"wpgs_nav_ico_cl\";s:4:\"#fff\";s:13:\"wpgs_autoplay\";s:5:\"false\";s:15:\"wpgs_thumbanils\";s:1:\"4\";s:16:\"wpgs_thum_margin\";s:2:\"10\";s:17:\"wpgs_stagepadding\";s:2:\"10\";s:9:\"wpgs_nb_1\";s:0:\"\";s:9:\"wpgs_nb_2\";s:0:\"\";}', 'yes'),
(730, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1530781728;s:7:\"checked\";a:6:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.6.5\";s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.0.2\";s:9:\"hello.php\";s:3:\"1.7\";s:35:\"redux-framework/redux-framework.php\";s:5:\"3.6.9\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.4.3\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.0.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"redux-framework/redux-framework.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/redux-framework\";s:4:\"slug\";s:15:\"redux-framework\";s:6:\"plugin\";s:35:\"redux-framework/redux-framework.php\";s:11:\"new_version\";s:5:\"3.6.9\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/redux-framework/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/redux-framework.3.6.9.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/redux-framework/assets/icon-256x256.png?rev=995554\";s:2:\"1x\";s:59:\"https://ps.w.org/redux-framework/assets/icon.svg?rev=995554\";s:3:\"svg\";s:59:\"https://ps.w.org/redux-framework/assets/icon.svg?rev=995554\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/redux-framework/assets/banner-772x250.png?rev=793165\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.4.3\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.4.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(731, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.0.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1530700439;s:7:\"version\";s:5:\"5.0.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(746, '_transient_timeout_wc_admin_report', '1530850245', 'no'),
(747, '_transient_wc_admin_report', 'a:1:{s:32:\"4b52e3a4e8799fd40f2f5ed79f5edb47\";a:0:{}}', 'no'),
(748, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1530807062', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(749, '_transient_feed_d117b5738fbd35bd8c0391cda1f2b5d9', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:61:\"\n	\n	\n	\n	\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"WordPress Planet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"WordPress Planet - http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:50:{i:0;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"HeroPress: Coding under trees and in 24 hour coffee shops\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://heropress.com/?post_type=heropress-essays&p=2582\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:166:\"https://heropress.com/essays/coding-under-trees-and-in-24-hour-coffee-shops/#utm_source=rss&utm_medium=rss&utm_campaign=coding-under-trees-and-in-24-hour-coffee-shops\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:8906:\"<p>People were paying me to write code two years before I had wifi in my house. Home wifi would have cost $45 a month. The cable company wanted a $100 deposit to create my account. It wasn&#8217;t going to happen, I could get wifi with a cup of coffee for $3 (including the tip) at a coffee shop a few blocks away from my place that meant I got some semblance of being social. I couldn&#8217;t imagine giving up 15 days a month at coffee shops just so it was easier to work from home, not when I could get away with sitting on my porch poaching wifi from my neighbors when I got stuck and had to google regular expressions for the 400th time. Or, my favorite, sit in a park down the street where there were three unprotected wifi networks and a strong tree to lean against.</p>\n<p>My path to becoming a web developer started when I packed up my beat up Chevy Prizm and drove to Portland, Oregon. I had graduated college with degrees in Economics and Political Science. While there, I become a Linux user when I discovered that it used less space meaning I had more space for music. I had never written code, but when my friends and I decided we wanted to create our version of The Onion, I started searching. After a little bit of trial ( blogger ) and error ( blogger ), I found WordPress and it&#8217;s &#8220;Famous Five Minute Install&#8221;. I purchased a domain and hosting from a place that advertised heavily and set about creating our site.</p>\n<p>The public library was my initial source of information. After all, having fun isn&#8217;t hard when you&#8217;ve got a library card. I picked up books on CSS, PHP, Java, Database design, and anything I could get my hands on. I was working evenings as an usher for the Portland Trailblazers and would head over to a 24 hour coffee shop to cowboy code under fluorescent lights until I was ready to crash.</p>\n<hr class=\"ttfmake-hr\" />\n<p>I can think of three big breaks that really helped move me along. Each of these ended up being &#8220;Flash Forward&#8221; moments where I was able to grow.</p>\n<h3>My First Client</h3>\n<p>I was scouring craigslist looking for anything I could get my hands on when I found someone offering $25 to move their WordPress site from one domain to another. Having just done that, I sent an email and crossed my fingers. Somehow, my eagerness (and likely willingness to work for peanuts) got my their trust. I had my first client. It took me way longer than I would have hoped as I learned about things like DNS Propagation, but I completed the task. And did such a good job that I was asked if I could build a website for one of their friends who was a standup comic. I was honest that I had never built a real site from scratch, but they liked how I had communicated, so I got the gig.</p>\n<h3>My First Core Experience</h3>\n<p>Before the first time I contributed to WordPress, I went to the Portland WordPress User Group to ask if something I was seeing was possibly an issue that warranted emailing the wp-hackers mailing list. I was so scared of being wrong that I felt like I needed to ask permission. I assumed that I was going to make a fool of myself and be laughed at. I ended up <a href=\"http://lists.automattic.com/pipermail/wp-hackers/2009-June/026386.html\">emailing the list</a> and it turned out, I had found a <a href=\"https://core.trac.wordpress.org/ticket/10022\">spot where WordPress could be better</a>! In the grand scheme of WordPress, passing a parameter to three `do_action` calls didn&#8217;t help WordPress gain 1% of market share, but it did help me with the plugin I was working on. And I was exposed to the process. I learned about trac, and the weekly devchat, and patches and svn. While I didn&#8217;t get props, I still consider this my first contribution to WordPress Core.</p>\n<h3>My first WordCamp</h3>\n<p>WordCamps are cheap compared to most tech conferences, but when you are playing the game of &#8220;How do I eat on $10 a week&#8221; for months on end, $40 for a conference whose value is unknown is a hard sell. Luckily, the Portland WordPress User Group did a raffle for a ticket and I won. All I had to pay for was the $2 in bus fare each way and I had the chance to learn. The 2009 WordCamp Portland ended up being where Matt Mullenweg announced that WPMU was going to be merged into core in WordPress 3.0 and it&#8217;s where I saw a talk entitled &#8220;<a href=\"https://wordpress.tv/2009/09/20/will-norris-building-plugins-portland09/\">How Not to Build a WordPress Plugin</a>&#8221; by Will Norris. Will&#8217;s talk exposed me to WordPress development in a way that I would never have imagined on my own. It helped me level up from someone who mostly was copy and pasting PHP to someone who was writing code.</p>\n<p>Additionally, I was able to network for the first time. It no longer was the same 15 people who went to the meetup, it was now about 200 WordPress fanatics, many who wanted to hire someone like me to work on their website!</p>\n<p>Looking back, these flash forward moments contributed almost as much to luck to my success. In many ways, a lot of my success can be attributed to the luck of being born as someone who is essentially a white cis-male into a family where I was exposed to computers and had a chance to gain a solid liberal arts education.</p>\n<p>But it&#8217;s not just that luck that helped me. I had to provide good customer service to turn a $25 task into a contract to build my first website. I had to be willing to embarrass myself by asking what I thought was a dumb question. I had to show up and become a part of my local community to get a ticket for a conference where I learned and networked.</p>\n<p>Soon after WordCamp Portland 2009, I had enough client work coming in that it made sense to have wifi. Home wifi meant I could start being connected to the WordPress community more than once a month in person or a few hours here and there at coffee shops. It meant I could read dev chat every week and eventually it meant I could earn props. Networking at meetups, WordCamps and conferences led to full time jobs. Taking risks and being willing to look like a fool in front of the WordPress community have enabled me to become a WordPress Core committer (and sometimes continue to look like a fool). In addition to volunteering on WordPress Core, I&#8217;m now the Director of Editorial Technology for Penske Media Corporation where I help brands like Rolling Stone and Variety run on WordPress, but I&#8217;ll never forget when if I needed to code, I was going to sit under trees in parks or the fluorescent lights of a 24 hour coffee shop.</p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Coding under trees and in 24 hour coffee shops\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Coding%20under%20trees%20and%20in%2024%20hour%20coffee%20shops&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fcoding-under-trees-and-in-24-hour-coffee-shops%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Coding under trees and in 24 hour coffee shops\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fcoding-under-trees-and-in-24-hour-coffee-shops%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fcoding-under-trees-and-in-24-hour-coffee-shops%2F&title=Coding+under+trees+and+in+24+hour+coffee+shops\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Coding under trees and in 24 hour coffee shops\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/coding-under-trees-and-in-24-hour-coffee-shops/&media=https://heropress.com/wp-content/plugins/rtsocial/images/default-pinterest.png&description=Coding under trees and in 24 hour coffee shops\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Coding under trees and in 24 hour coffee shops\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/essays/coding-under-trees-and-in-24-hour-coffee-shops/\" title=\"Coding under trees and in 24 hour coffee shops\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/essays/coding-under-trees-and-in-24-hour-coffee-shops/\">Coding under trees and in 24 hour coffee shops</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 04 Jul 2018 18:30:28 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Aaron Jorbin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:107:\"WPTavern: WordCamp Incubator Program 2018 to Host Events in Montevideo, Uruguay and Kota Kinabalu, Malaysia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82134\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:116:\"https://wptavern.com/wordcamp-incubator-program-2018-to-host-events-in-montevideo-uruguay-and-kota-kinabalu-malaysia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2465:\"<a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2018/07/montevideo.jpg?ssl=1\"><img /></a>The Pocitos neighborhood of Montevideo, Uruguay. Skyline from the shore -photo credit: <a href=\"https://en.wikipedia.org/wiki/File:Pocitos,_2017.jpg\">Rimbaldine</a>\n<p>The WordCamp Incubator Program has selected <a href=\"https://make.wordpress.org/community/2018/06/26/wordcamp-incubator-program-2018-locations-announcement/\" rel=\"noopener noreferrer\" target=\"_blank\">Montevideo, Uruguay and Kota Kinabalu, Malaysia to host WordCamps in 2018</a>. The program provides a jump start for new WordPress communities where meetups have not yet been well-established. Montevideo and Kota Kinabalu were selected from a <a href=\"https://make.wordpress.org/community/2018/05/15/wordcamp-incubator-program-2018-update/\" rel=\"noopener noreferrer\" target=\"_blank\">short list of 14 communities</a> that had been whittled down from 104 applications for the program.</p>\n<p>WordPress Community Deputies will co-lead the events and mentor a local team that will organize a one-track WordCamp with approximately 50-75 attendees. The goal is to empower the new organizers and the fledgling communities to host more local events, ideally regular meetups and an annual WordCamp. Mentors will assist in finding speakers and sponsors. A global sponsorship grant will cover 100% of the events&#8217; costs, relieving the organizers of the burden of local fundraising.</p>\n<p>WordPress Community Team member Rocío Valdivia announced the program&#8217;s new cities for 2018 and said she anticipates the events will happen in the last quarter of this year. Local co-leads have been charged with starting a monthly meetup group before setting a date for the new WordCamps.</p>\n<p>Round 2 of the WordCamp Incubator Program follows up a successful run in 2016 that brought WordCamps to Denpasar, Harare, and Medellín. <a href=\"https://wptavern.com/harare-and-nairobi-host-2nd-round-of-successful-wordcamps\" rel=\"noopener noreferrer\" target=\"_blank\">Harare hosted its second WordCamp in 2017</a> and a <a href=\"https://2018.harare.wordcamp.org/\" rel=\"noopener noreferrer\" target=\"_blank\">2018 camp</a> is in the early planning stages. This particular African community, along with the neighboring Nairobi community (on the short list in 2016), are strong examples of how the incubator program can provide a boost in areas of the world where the WordPress community is not yet deeply rooted.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 03 Jul 2018 03:41:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"WPTavern: Block Unit Test Plugin Helps WordPress Theme Developers Prepare for Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81919\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:98:\"https://wptavern.com/block-unit-test-plugin-helps-wordpress-theme-developers-prepare-for-gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4606:\"<p><a href=\"https://themebeans.com/\" rel=\"noopener noreferrer\" target=\"_blank\">ThemeBeans</a> founder Rich Tabor has released a new plugin called <a href=\"https://wordpress.org/plugins/block-unit-test/\" rel=\"noopener noreferrer\" target=\"_blank\">Block Unit Test for Gutenberg</a> that helps theme authors test their themes for Gutenberg-readiness. It is similar to the <a href=\"https://codex.wordpress.org/Theme_Unit_Test\" rel=\"noopener noreferrer\" target=\"_blank\">Theme Unit Test</a> but is limited to testing Gutenberg blocks.</p>\n<p>After installing and activating both Gutenberg and sBlock Unit Test, the plugin creates a new page as a draft with an example of every core Gutenblock. This makes it easy to see how the blocks will appear on the frontend of any theme. Block Unit Test also includes variations on the core blocks with different alignment and column settings applied.</p>\n<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2018/06/screely-1530556922797.png?ssl=1\"><img /></a></p>\n<p>Tabor said he knew it would be advantageous to start using/writing in Gutenberg daily to better understand what he needed to do to make his products at ThemeBeans compatible.</p>\n<p>&#8220;I added initial support for Gutenberg in my Tabor WordPress theme, as I use it on my own personal blog with Gutenberg,&#8221; he said. &#8220;I needed a way to easily test each of the core Gutenberg blocks (and eventually third-party blocks) without having to manually add them every time I wanted to test something. As Gutenberg blocks get more dynamic and complicated, it’s a bit trickier to test for &#8211; as many blocks have different variations/styles/columns/grids/etc.&#8221;</p>\n<p>Tabor took inspiration from the Theme Unit Test and created Block Unit Test with Gutenblock variations included. He is using the plugin while preparing the 20+ themes in his ThemeBeans catalog to support Gutenberg. He wrote the plugin to be extensible and made it open source on <a href=\"https://github.com/thatplugincompany/block-unit-test\" rel=\"noopener noreferrer\" target=\"_blank\">GitHub</a> for other developers and theme shops to use.</p>\n<p>Theme developers can install Block Unit Test as a first step towards making sure the front-end styles match the editor styles. This will be essential to making the transition process easier for new Gutenberg users once WordPress 5.0 ships. Tabor also published a tutorial for <a href=\"https://richtabor.com/add-wordpress-theme-styles-to-gutenberg/\" rel=\"noopener noreferrer\" target=\"_blank\">adding WordPress Theme Styles to Gutenberg</a> to help others get started.</p>\n<p>In getting his first theme compatible, Tabor said he relied heavily on the <a href=\"https://wordpress.org/gutenberg/handbook/\" rel=\"noopener noreferrer\" target=\"_blank\">Gutenberg Handbook</a>, as well as following discussions on the <a href=\"https://github.com/WordPress/gutenberg\" rel=\"noopener noreferrer\" target=\"_blank\">Gutenberg GitHub repository</a>.</p>\n<p>&#8220;It’s not terribly difficult to add support for Gutenberg, although applying proper theme styles within the Gutenberg editor is a bit of task — there’s so much that can be accidentally overlooked,&#8221; Tabor said. &#8220;For the theme side of things, there wasn&#8217;t much technical leveling-up — though developing blocks is a different story. I did need to raise the bar and dive deeply into the world of Javascript, though looking at the block examples on the GitHub repository really helped me along.&#8221;</p>\n<p>Tabor said he started &#8220;living and breathing all things Gutenberg&#8221; after WordCamp US 2017, and began writing development articles while learning the ropes. He created several projects focused on the new editor, including <a href=\"https://writy.io/\" rel=\"noopener noreferrer\" target=\"_blank\">Writy</a>, a Gutenberg-centric writing experience for publishers, and <a href=\"https://richtabor.com/coblocks/\" rel=\"noopener noreferrer\" target=\"_blank\">Co-Blocks</a>, a beta suite of Gutenberg blocks for content marketers.</p>\n<p>&#8220;As a founder of a theme shop it was apparent that I needed to hone in on Gutenberg and level-up my knowledge, technical skills, and consequently my products, in order to compete in a post-Gutenberg era of WordPress,&#8221; Tabor said.</p>\n<p>&#8220;I believe the foundation of the future of WordPress lies in the success of Gutenberg. I use the new editor just about daily now. I know it’s a great move in the right direction and I’m doing my part to make sure folks using my themes can experience everything that Gutenberg has to offer.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 02 Jul 2018 21:43:16 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"Dev Blog: The Month in WordPress: June 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6087\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://wordpress.org/news/2018/07/the-month-in-wordpress-june-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4626:\"<p>With one of the two flagship WordCamp events taking place this month, as well as some important WordPress project announcements, there’s no shortage of news. Learn more about what happened in the WordPress community in June.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Another Successful WordCamp Europe</h2>\n\n<p>On June 14th, WordCamp Europe kicked off three days of learning and contributions in Belgrade. Over 2,000 people attended in person, with hundreds more watching live streams of the sessions.</p>\n\n<p>The WordCamp was a great success with plenty of first-time attendees and new WordPress contributors getting involved in the project and community. Recorded sessions from the 65 speakers at the event will be available on WordPress.tv in the coming weeks. In the meantime, check out the <a href=\"https://www.flickr.com/photos/wceu/albums\">photos from the event</a>.</p>\n\n<p><a href=\"https://2018.europe.wordcamp.org/2018/06/16/wordcamp-europe-2019/\">The next WordCamp Europe</a> takes place on June 20-22 2019 in Berlin, Germany. If you’re based in Europe and would like to serve on the organizing team, <a href=\"https://2019.europe.wordcamp.org/2018/06/16/call-wordcamp-europe-2019-organizers/\">fill in the application form</a>.</p>\n\n<h2>Updated Roadmap for the New WordPress Content Editor</h2>\n\n<p>During his keynote session at WordCamp Europe, Matt Mullenweg presented <a href=\"https://gutenbergtimes.com/mullenweg-on-gutenberg-roll-out-plan/\">an updated roadmap</a> for <a href=\"https://wordpress.org/gutenberg/\">Gutenberg</a>, the new content editor coming in WordPress 5.0.</p>\n\n<p>While the editor is in rapid development, <a href=\"https://make.wordpress.org/core/2018/06/21/whats-new-in-gutenberg-21st-june/\">with v3.1 being released this past month</a>, the team is aiming to ship Gutenberg with WordPress Core in August, 2018. This is not set in stone — the release date may shift as development progresses — but this gives the first realistic idea of when we can expect the editor to be released.</p>\n\n<p>If you would like to contribute to Gutenberg, read <a href=\"https://wordpress.org/gutenberg/handbook/\">the handbook</a>, follow the <a href=\"https://make.wordpress.org/core/\">Core team blog</a>, and join the #core-editor channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>.</p>\n\n<h2>WordCamp Incubator Cities Announced</h2>\n\n<p>The WordCamp Incubator program helps spread WordPress to underserved communities by providing organizing support for their first WordCamp. The first iteration of this program ran successfully in 2016 and empowered three cities to start their own WordPress communities.</p>\n\n<p>This year, the Community Team is running the Incubator program again. After receiving applications from 104 communities, <a href=\"https://make.wordpress.org/community/2018/06/26/wordcamp-incubator-program-2018-locations-announcement/\">they have selected</a> Montevideo, Uruguay and Kota Kinabalu, Malaysia to participate in the program. Both cities will receive direct help from experienced WordCamp organizers to run their first-ever WordCamp as a way to help their WordPress community get started.</p>\n\n<p>To find out more about the Incubator program follow the <a href=\"https://make.wordpress.org/community/\">Community team blog</a>, and join the #community-events channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Further Reading:</h2>\n\n<ul>\n	<li>The WordPress community of Spain recently <a href=\"https://twitter.com/wp_es/status/1004681694660603904\">received an award</a> for being the best open-source community in the country.</li>\n	<li>This month, WordPress reached <a href=\"https://w3techs.com/technologies/details/cm-wordpress/all/all\">the milestone of powering 31% of websites</a>.</li>\n	<li><a href=\"https://wprig.io/introducing-wprig-wordpress/\">WP Rig</a> is a brand new tool to help WordPress developers build better themes.</li>\n	<li><a href=\"https://richtabor.com/gutenberg-block-unit-test/\">Block Unit Test</a> is a new plugin to help theme developers prepare for Gutenberg.</li>\n	<li>Near the end of the month, Zac Gordon hosted <a href=\"https://javascriptforwp.com/conference/\">an online conference</a> focused on JavaScript development in WordPress &#8211; the session videos will be available on YouTube soon.</li>\n</ul>\n\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\">submit it here</a>.</em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 02 Jul 2018 09:28:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"Matt: Work and Play\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48231\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"https://ma.tt/2018/06/work-and-play/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:527:\"<blockquote class=\"wp-block-quote\">\n	<p>A master in the art of living draws no sharp distinction between his work and his play; his labor and his leisure; his mind and his body; his education and his recreation. He hardly knows which is which. He simply pursues his vision of excellence through whatever he is doing, and leaves others to determine whether he is working or playing. To himself, he always appears to be doing both.</p>\n</blockquote>\n\n<p>Lawrence Pearsall Jacks in <em>Education through Recreation</em>, 1932</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 01 Jul 2018 01:13:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"Post Status: An Abundance of Acquisitions — Draft Podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=46292\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://poststatus.com/an-abundance-of-acquisitions-draft-podcast/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2301:\"<p>Welcome to the Post Status <a href=\"https://poststatus.com/category/draft\">Draft podcast</a>, which you can find <a href=\"https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008\">on iTunes</a>, <a href=\"https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast\">Google Play</a>, <a href=\"http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast\">Stitcher</a>, and <a href=\"http://simplecast.fm/podcasts/1061/rss\">via RSS</a> for your favorite podcatcher. Post Status Draft is hosted by Brian Krogsgard and co-host Brian Richards.</p>\n<p>In this episode, the Brians have a chat about a number of different acquisitions that have occurred in the WordPress space over these past few weeks. Listen in as they unpack some of the news surrounding StudioPress, WPEngine, Automattic, WPNinjas, Prospress, and AutomateWoo. Check out our episode links for further stories about each of those businesses as well as the virtual JavaScript for WordPress conference taking place live on July 29.</p>\n<p></p>\n<h3>Links</h3>\n<ul>\n<li><a href=\"https://wpengine.com/blog/wp-engine-acquires-studiopress/\">WPEngine acquired StudioPress</a></li>\n<li><a href=\"https://poststatus.com/notes/automattic-acquries-atavist/\">Automattic acquired Atavist</a></li>\n<li><a href=\"http://ninjashop.site/open-letter-exchangewp/\">WPNinjas acquired ExchangeWP (formerly iThemes Exchange)</a></li>\n<li><a href=\"https://prospress.com/automatewoo-joins-prospress/\">Prospress acquires AutomateWoo</a></li>\n<li><a href=\"https://subscribe.me/\">Prospress announced Subscribe.me</a></li>\n<li><a href=\"https://javascriptforwp.com/conference/\">JSforWP Conf on Friday</a></li>\n<li><a href=\"https://2018.grandrapids.wordcamp.org\">WCGR on Saturday</a></li>\n<li><a href=\"https://florianziegler.com/wordcamp-europe-2018/\">WCEU Photos</a></li>\n</ul>\n<h3>Sponsor: Jilt</h3>\n<p><a href=\"https://jilt.com/?utm_source=Post+Status&utm_medium=banner&utm_campaign=Post+Status+Sponsorship\">Jilt</a> offers powerful email marketing built for eCommerce. Join thousands of stores that have already earned over $28,000,000 in extra sales using Jilt. <a href=\"https://jilt.com/?utm_source=Post+Status&utm_medium=banner&utm_campaign=Post+Status+Sponsorship\">Try Jilt for free</a></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 29 Jun 2018 22:11:51 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Brian Krogsgard\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"WPTavern: WCEU Panel Discusses Progressive WordPress Themes, AMP, and Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82078\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"https://wptavern.com/wceu-panel-discusses-progressive-wordpress-themes-amp-and-gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4940:\"<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/06/progressive-themes-panel.png?ssl=1\"><img /></a></p>\n<p>Progressive themes was a hot topic at WordCamp Europe 2018. During the event I had the opportunity to set up a panel with four experts who are working to integrate progressive web development practices more deeply in WordPress core, plugins, and themes. These practices make it possible for a website (or app) to work offline, load quickly, deliver content on unreliable networks, and use device-specific features to provide a better experience for the user. The <a href=\"https://wptavern.com/wordcamp-europe-introduces-official-mobile-app-new-tech-for-on-site-badge-printing\" rel=\"noopener noreferrer\" target=\"_blank\">PWA (progressive web app) created for WordCamp Europe</a> is a good example of this in action.</p>\n<p><a href=\"https://twitter.com/TweetyThierry\" rel=\"noopener noreferrer\" target=\"_blank\">Thierry Muller</a>, <a href=\"https://twitter.com/iAlbMedina\" rel=\"noopener noreferrer\" target=\"_blank\">Alberto Medina</a>, <a href=\"https://twitter.com/westonruter\" rel=\"noopener noreferrer\" target=\"_blank\">Weston Ruter</a>, and <a href=\"https://twitter.com/mor10\" rel=\"noopener noreferrer\" target=\"_blank\">Morten Rand-Hendriksen</a> joined me for an interview, exploring the future of WordPress themes in the era of progressive web development. (see video below)</p>\n<p>&#8220;At the most abstract level, it&#8217;s all about user experience,&#8221; Medina said. &#8220;How do we maximize the pleasure that our users get when they use our websites? And delightfulness in this context means things like performance, speed, having content that isn&#8217;t blocked. If you think about themes built according to those principles, then we are basically seeking an awesome user experience in WordPress.&#8221;</p>\n<p>It&#8217;s not yet clear what this will look like for the WordPress theme landscape, as current solutions are somewhat fragmented. WordPress contributors are working to standardize progressive technologies in core so the ecosystem can collaborate better together.</p>\n<p>&#8220;There are many progressive themes being built these days,&#8221; Medina said. &#8220;One of the problems that is happening is that there is a lot of fragmentation. There&#8217;s a lot of plugins that are using service workers but in their own ways. What we want is to say, &#8216;This is the best way to do things,&#8217; this is a uniform API to do it, and then enable progressive theme developers to take advantage of the core functionality.&#8221;</p>\n<p>Currently, the prospect of setting up a WordPress site that uses progressive web technologies would be a daunting task for regular users, even if they are implementing existing solutions.</p>\n<p>&#8220;There&#8217;s also a user aspect of it, because the people for whom we design WordPress, plugins, and themes, are the people who actually publish their own content onto the web,&#8221; Rand-Hendriksen said. &#8220;There&#8217;s a really valid question in how much should they need to know about how the web works to be able to publish some content. When they spin up a WordPress site, should we impose on them to know that they need to add all these optimization plugins and do all this other stuff just to make the site work properly? How much of that can be offloaded onto the theme itself, or plugins, or even WordPress core?&#8221;</p>\n<p>The members of the panel are working together to on various projects and core contributions that will standardize the use of progressive enhancement technologies in WordPress.</p>\n<p>&#8220;The goal is to have a common API for service workers so that plugins and themes can each install their own logic, just like they can enqueue their own scripts today,&#8221; Ruter said. &#8220;Also to be able to enqueue their own service workers and then core can manage the combination of them, as well as having a common app manifest that plugins and themes can collaborate on and have a single output into the page.&#8221;</p>\n<p>This is how Rand-Hendriksen&#8217;s <a href=\"https://wprig.io/\" rel=\"noopener noreferrer\" target=\"_blank\">WP Rig starter theme</a> project came about &#8211; to help developers take advantage of these best practices in the meantime, without having to figure out how to put all the pieces together.</p>\n<p>&#8220;WP Rig gives you the platform to build a progressive theme that uses all the latest performance and WordPress best practices, in a convenient package, and over time it will evolve with these new progressive technologies,&#8221; Rand-Hendriksen said.</p>\n<p>We also discussed AMP and Gutenberg compatibility, <a href=\"https://core.trac.wordpress.org/ticket/43328\" rel=\"noopener noreferrer\" target=\"_blank\">core support for web app manifests</a>, and how the commercial theme industry will react to these new technologies. Check out the full interview in the video below.</p>\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 29 Jun 2018 22:03:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"WPTavern: WPWeekly Episode 322 – WP Engine Acquires StudioPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=82088&preview=true&preview_id=82088\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wptavern.com/wpweekly-episode-322-wp-engine-acquires-studiopress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2238:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I spend the first half of the show discussing WP Engine&#8217;s acquisition of StudioPress. We share reactions from social media, debate on whether it&#8217;s a good or bad thing for the WordPress ecosystem, and webhosts being at the top of the food chain.</p>\n<p>We also talk about a recent security vulnerability that was publicly disclosed, ProsPress acquires AutomateWoo, and the release of Tide beta 1. Also of note, we identified an issue that causes John&#8217;s audio to turn into static. His audio should be fixed in the next episode.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://wpengine.com/blog/why-wp-engine-is-acquiring-studiopress/\">Why WP Engine is Acquiring StudioPress</a><br />\n<a href=\"https://studiopress.blog/announcement/\">An Important Announcement About the Future of StudioPress</a><br />\n<a href=\"https://techcrunch.com/2018/01/04/wp-engine-a-managed-wordpress-platform-raises-250m-from-silver-lake/\">WP Engine, a managed WordPress platform, raises $250M from Silver Lake</a><br />\n<a href=\"https://twitter.com/bgardner/status/1012011823279824901\">https://twitter.com/bgardner/status/1012011823279824901</a><br />\n<a href=\"https://automatewoo.com/blog/automatewoo-joins-prospress/\">AutomateWoo joins Prospress</a><br />\n<a href=\"https://prospress.com/automatewoo-joins-prospress/\">AutomateWoo joins Prospress to Further eCommerce Automation on WooCommerce</a><br />\n<a href=\"https://make.wordpress.org/tide/2018/06/26/announcing-tide-1-0-0-beta/\">Tide Beta 1 Released</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, July 4th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #322:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 29 Jun 2018 01:21:04 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"WPTavern: Drop It Plugin Brings Gifs and Unsplash Photos to Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81814\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://wptavern.com/drop-it-plugin-brings-gifs-and-unsplash-photos-to-gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2642:\"<p>If you&#8217;re writing all your posts in the new Gutenberg editor but don&#8217;t want to give up convenient access to your fancy gifs and stock images, the new <a href=\"https://wordpress.org/plugins/dropit/\" rel=\"noopener noreferrer\" target=\"_blank\">Drop It</a> plugin has you covered. <a href=\"https://twitter.com/riadbenguella\" rel=\"noopener noreferrer\" target=\"_blank\">Riad Benguella</a>, one of the engineers who is working on Gutenberg, created the plugin to offer one-click image insertion/upload from <a href=\"https://unsplash.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Unsplash.com</a>.</p>\n<p>Drop It adds a droplet icon to the Gutenberg sidebar that launches a search form for Unsplash.com or Giphy.com (a feature contributed by <a href=\"https://twitter.com/jmau111\" rel=\"noopener noreferrer\" target=\"_blank\">Julien Maury</a>). Users can click the &#8220;+&#8221; sign on the image or simply drag and drop it into the content area.</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/06/Screen-Shot-2018-06-28-at-1.14.10-PM.png?ssl=1\"><img /></a></p>\n<p>Drop It seamlessly connects Gutenberg to the Unsplash and Giphy libraries, putting hundreds of thousands of stock photos and gifs at your fingertips while composing in WordPress. In the earlier days of Unsplash, many of the same images were used all over the web, but over the past few years its library has grown to include more than 550,000 high-resolution photos.</p>\n<p>Check out this demo to see how how fast it is to search and insert images:</p>\n<p><a href=\"https://cloudup.com/cUCoAEcq9lG\"><img src=\"https://i2.wp.com/cldup.com/2HRQQ2GAg3.gif?resize=627%2C437&ssl=1\" alt=\"Drop it\" width=\"627\" height=\"437\" /></a></p>\n<p>Benguella originally created the plugin for a talk he gave at WPtech Lyon where he demonstrated <a href=\"https://riad.blog/2018/04/29/explorons-gutenberg-sous-le-capot-au-wptech-lyon/\" rel=\"noopener noreferrer\" target=\"_blank\">how plugin developers can make use of Gutenberg&#8217;s reusable modules</a>. His presentation and slides explore Gutenberg&#8217;s architecture and show how he created the Drop It plugin.</p>\n<p>Benguella said the Drop It plugin&#8217;s code is a good example of how developers can extend Gutenberg&#8217;s UI using “pinnable” sidebar plugins. It also shows how to use the Data module to access and update Gutenberg’s state (data).</p>\n<p>In the future, Benguella plans to add more sources for inserting media. He currently has a proof of concept for adding content from Google Docs and will add more depending on contributions from others and his availability to work on the plugin.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 28 Jun 2018 22:52:51 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"Matt: Automattic’s First New Board Member: General Ann Dunwoody\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48215\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://ma.tt/2018/06/automattics-first-new-board-member-general-ann-dunwoody/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:8149:\"<img />\n\n<p>As Automattic keeps growing we’ve been bringing in a lot of talented people behind the scenes to help expand on our vision as we go from hundreds to thousands of colleagues, and hundreds of millions to billions in revenue. Recently, former New York Times digital executive Kinsey Wilson joined our team as <a href=\"https://www.poynter.org/news/one-time-npr-and-nyt-digital-chief-new-adventure-wordpress\">president of WordPress.com</a>, the Chief Design Officer of Axios <a href=\"http://www.alexislloyd.com/\">Alexis Lloyd</a> has joined <a href=\"https://twitter.com/alexislloyd/status/1006882661040877568?lang=en\">as head of Design Innovation</a>, the former CEO of Bluehost James Grierson, and today I&#8217;m excited to announce a change to my bosses, the board of directors.<br /></p>\n\n<p>Gen. Ann Dunwoody served for 37 years in the U.S. Army, and she is the first woman in U.S. Military history to achieve a four-star officer rank. She’s also the author of <a href=\"https://www.amazon.com/dp/0738217794\"><em>A Higher Standard: Leadership Strategies from America&#8217;s First Female Four-Star General</em></a>, a book I really loved and highly recommend. Automattic&#8217;s board has had no new members since its founding in 2005, so this is our first addition in 13 years. I became familiar with General Dunwoody&#8217;s work while researching distributed organizations outside of technology, which led me to the military, which led me to geek out on logistics, which led me to her book and eventually flying out to Florida to meet in person.<br /></p>\n\n<p>Below is a brief interview with Gen. Dunwoody &#8212; we chatted with her about global leadership, finding your passion, and building a business. <br /></p>\n\n<p><strong>We&#8217;re excited to have you onboard, General Dunwoody. It&#8217;s interesting &#8212; at Automattic we like to point out that we&#8217;re all over the globe (over 740 employees in more than 60 countries) but you oversaw 69,000 military and civilians across 140 countries! Were there any big leadership lessons from managing operations across such a wide range of distances, timezones, and cultures? </strong><br /><br /></p>\n\n<p>That’s a great question. When I started out as a young officer in the Army, the leadership philosophy that was espoused back then was “Leadership by walking around.” When you&#8217;re in charge of a platoon, a company or even a battalion or Brigade that is not globally dispersed this philosophy is very sound. When you’re running a global organization with 69,000 folks in 140 countries, you have to leverage technology to keep real-time communications flowing and keep leaders updated. I would host (with the leadership) a global video teleconference every Wednesday connecting every organization from Afghanistan, Kuwait, Iraq, Europe, etc. and sites &#8212; hundreds across the United States. Our headquarters  would provide an operational update and then we go around the globe to get update from from everyone &#8212; what&#8217;s going well, where they need help or additional resources. In the old days I think people believed information was power and often withheld information to use for personal advantage, but I believe shared information is power. By leveraging the power of the entire industrial base we could solve problems in real time. I still travelled around a lot to see our people, but it is not possible to keep everyone informed and in the loop with current operations without leveraging technology. <br /></p>\n\n<p><strong>I love your answer about &#8220;shared information is power.&#8221; Did you ever find it difficult to break down the silos and embrace that concept? </strong></p>\n\n<p>Oh my, yes. They weren’t just silos, they were silos with concertina wire around them!   Parochialism was rampant and everyone wanted their own system and own their own information. We had over 200 stand alone systems that didn’t talk to each other. So to field and design an enterprise IT system that leveraged systems with the needed information to support “foxhole to factory” was challenging and exciting. <br /></p>\n\n<p><strong>And how did you decide what technological means to communicate an idea or a directive, versus, say, meeting in-person? </strong></p>\n\n<p>I would say it depended on the idea. If it was personal, probably a phone call (one on one); if trying to generate support for an idea or transformational concept, meet in-person with my initiatives group to socialize the idea and get their input modifications and buy-in. Then Commanders conference to socialize idea with them, as they will have to implement it. Once socialized with leadership, we worldwide videoconference with the entire organization to define and describe the purpose, intent, how, and why &#8212; so everyone knew what we were trying to do and what their role was in execution. I found you cannot over-communicate when trying to make changes.<br /></p>\n\n<p><strong>It&#8217;s an incredible accomplishment to become the first woman in U.S. Military history to achieve the four-star officer rank. Can you tell me about how things changed (or maybe still need to change further) in terms of your experience during your 37 years of service, and how you addressed diversity and inclusion in the military? </strong><br /><br /></p>\n\n<p>First, I certainly didn’t accomplish this by myself &#8212; I had a lot of help along the way! I joined the Army as part of the Women’s Army Corps (WAC) back in 1975. A few years later they disestablished the WAC and began the integration of women into the regular Army. This was the first time women had the opportunity to have the same career opportunities as their male counterparts in the branches now open to women. The challenge for the women who came into the Army back then was to force the integration &#8212; fight being put into traditional jobs like being a secretary, admin, clerk, or cook &#8212; and fight to be platoon leaders, etc., to support and move the integration of women into the regular Army.</p>\n\n<p>What I witnessed during my time in the Army was that the doors continued to open. Yes, there were roadblocks &#8212; but there were also many leaders along the way who were willing to help. I never worked for a woman. I worked for men who either believed in me or didn’t. My experience in my almost four decades was that the doors continued to open for women. I thought jumping out of airplanes was really neat &#8212; now my niece in the USAF is an A-10 fighter pilot, and we have women graduating from Ranger school!  <br /></p>\n\n<p>On diversity, I realized that being the only female in many forums, my voice was hard to be heard. And I also realized that most folks promoted and surrounded themselves with people in their own image. What my philosophy was &#8212; and I still think it is an issue today &#8212; is that diversity is not about numbers, it’s about getting the best and brightest from all walks of life, to help leaders solve the very complex issues that face us today. Don’t surround yourself with only people that think or act or look like you. <br /></p>\n\n<p><strong>Who are the leaders that inspire you today? </strong></p>\n\n<p>I think we are products of our past &#8212; Mom and Dad, even though not here on earth, gave me the values that still guide me. Many of my military mentors, Gen. Hugh Shelton, Gen. Pete Schoomaker, Gen. Gordon Sullivan, Gen. Dick Cody, are still coaches and mentors to me today.  </p>\n\n<p>Folks I admire: Warren Buffett, only met him once but I like his concern for the betterment of our country; Oprah Winfrey, although I have never met her I admire her for what she does for our country how she presents herself and how she handles herself &#8212; awesome; Gen. Mattis &#8212; wow, I admire him for taking on this extremely tough assignment for the good of our country and our defense. Secretary Gates served two administrations, Republican and Democrat. <br /></p>\n\n<p>People that inspire me are people I believe are true leaders &#8212; valuing honesty and having the best interests of the country at heart. No hubris!</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 28 Jun 2018 19:54:57 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:10;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"WPTavern: WP Engine Acquires StudioPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81948\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://wptavern.com/wp-engine-acquires-studiopress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4332:\"<p><a href=\"https://www.studiopress.com/\">StudioPress</a>, founded by Brian Gardner in 2007, has been acquired <a href=\"https://wpengine.com/blog/wp-engine-acquires-studiopress/\">by managed WordPress hosting company WP Engine</a>, for an undisclosed amount. </p>\n\n<p>In 2007, Gardner created the Revolution theme which took the WordPress world by storm. According to some people, it ignited the WordPress Premium theme market. <br /></p>\n\n<img />\n	Revolution Church Theme \n\n\n<p>In the midst of a GPL debate regarding themes in 2008, Gardner <a href=\"https://www.briangardner.com/blog/revolution-going-open-source.htm\">decided to license</a> the Revolution theme <a href=\"https://web.archive.org/web/20081011070936/https://www.briangardner.com/blog/revolution-going-open-source.htm\">as 100% GPL</a>. In 2009, Gardner <a href=\"https://www.studiopress.com/revolution-rebrands-as-studiopress/\">rebranded Revolution</a> to StudioPress due to legal reasons. </p>\n\n<p>Early in 2010, <a href=\"https://www.studiopress.com/introducing-genesis-framework/\">StudioPress released the Genesis Framework</a>. This framework would go on to power thousands of themes and be the cornerstone of StudioPress&#8217; theme business. In 2010, StudioPress <a href=\"https://www.studiopress.com/studiopress-merges-into-copyblogger-media-llc/\">was merged into Copyblogger Media LLC</a>, which eventually went on to create the Rainmaker platform. </p>\n\n<p>Fast forward to 2018 and StudioPress has been acquired by <a href=\"https://wpengine.com/\">WP Engine</a>, a managed WordPress hosting company founded in 2010 that earlier this year, <a href=\"https://techcrunch.com/2018/01/04/wp-engine-a-managed-wordpress-platform-raises-250m-from-silver-lake/\">received $250M in venture capital funding</a> from Silver Lake.  </p>\n\n<p>According to Jason Cohen, founder of WP Engine, this is the largest acquisition in the company&#8217;s history.</p>\n\n<p>&#8220;In all, our contributions to the WordPress community in time, money, writing, coding and thought leadership totaled more than $1.7 million in 2017 and we’re already doing even more this year,&#8221; he said.<br /></p>\n\n<p>&#8220;As WP Engine continues to grow and scale, the way we give back to the WordPress community must grow and scale also, which was one of the deciding factors behind our acquisition of <a href=\"https://wpengine.com/blog/wp-engine-acquires-studiopress/\">StudioPress</a>—our largest acquisition in WP Engine’s history.&#8221;</p>\n\n<p>The company plans to heavily invest in the Genesis Framework community and ecosystem by hiring people to work on different aspects of the framework. Support will receive a boost as well as the ecosystem surrounding StudioPress&#8217; products. </p>\n\n<p>With Gutenberg on the horizon, Cohen says the Genesis Framework will be a shining example of what&#8217;s possible with WordPress&#8217; new editor. </p>\n\n<p>&#8220;There’s been plenty of concern about how Gutenberg will affect existing plugins and themes, so Genesis can serve as an example for how Gutenberg can work brilliantly,&#8221; Cohen said. </p>\n\n<p>&#8220;This directly advances the goals of WordPress Core. This precedent doesn’t stop with Gutenberg, either. Gutenberg is the transformation of today—there will be more tomorrow. While the topic of the day will change, the idea of supporting Core through themes and theme frameworks that support those efforts is an asset for the wider WordPress community.&#8221;</p>\n\n<p>Gardner will stay on board and be part of StudioPress&#8217; leadership team at WP Engine with an emphasis on product development and community. Nathan Rice along with the support team will transition to WP Engine with Rice continuing to serve as the lead developer of Genesis. </p>\n\n<p>Gardner admits that the acquisition is bittersweet, but that it&#8217;s a founding moment in the company&#8217;s history.</p>\n\n<p>&#8220;As my new colleague, Jason Cohen, the founder of WP Engine often says, &#8216;There are many founding moments in the history of a company.&#8217; This is one of those moments and I know it’s time for StudioPress to take the next step—and WP Engine is the right partner to take it with.&#8221;</p>\n\n<p>StudioPress customers can expect better support, more themes to choose from, and little to no disruption of service.  </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 28 Jun 2018 08:11:12 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:11;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"WPTavern: Free “JavaScript for WordPress Conference” to Stream Live Friday, June 29\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81931\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:91:\"https://wptavern.com/free-javascript-for-wordpress-conference-to-stream-live-friday-june-29\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3834:\"<a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2018/06/jsconf-2018.png?ssl=1\"><img /></a>JavaScript for WordPress conference\n<p>Zac Gordon is hosting a &#8220;<a href=\"https://javascriptforwp.com/conference/\" rel=\"noopener noreferrer\" target=\"_blank\">JavaScript for WordPress Conference</a>&#8221; with two tracks on Friday, June 29, from 9:30 AM &#8211; 5:30 PM EDT. The free conference, sponsored by <a href=\"https://10up.com/\" rel=\"noopener noreferrer\" target=\"_blank\">10up</a> and <a href=\"https://wpbuffs.com/\" rel=\"noopener noreferrer\" target=\"_blank\">WP Buffs</a>, includes a full day of online talks from JavaScript professionals who work in the WordPress ecosystem.</p>\n<p>Gordon will be streaming the talks live via Crowdcast. Approximately 1,300 seats have been reserved so far, a number that rivals most WordCamps. Unlike WordCamps, however, the entire schedule is focused around developer education, featuring more technical talks that are often missing from traditional WordPress events.</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/06/screely-1530150620973.png?ssl=1\"><img /></a></p>\n<p>&#8220;I figured there was an interest in more JS-specific WordPress content and, given my courses and getting to know some people working a lot with JavaScript, I figured I would give it a shot,&#8221; Gordon said.</p>\n<p>Gordon has been working for the past several years as a freelance educator after his former employer, Treehouse, <a href=\"https://wptavern.com/treehouse-drops-support-for-wordpress-education\" rel=\"noopener noreferrer\" target=\"_blank\">dropped support for WordPress education</a>. He said his first project, the JavaScript for WordPress Master Course, was a huge undertaking. He is not offering that course anymore but is instead focusing on smaller, more targeted courses on his site <a href=\"https://javascriptforwp.com/\" rel=\"noopener noreferrer\" target=\"_blank\">javascriptforwp.com</a>.</p>\n<p>&#8220;Most of my courses this year will be Gutenberg related (have one now and a theme course launching next week, followed by an Advanced one after that),&#8221; Gordon said. He has also done courses at Udemy, Frontend Master, WP Sessions, WP101, and some consulting with Udacity.</p>\n<p>&#8220;I&#8217;m still learning the right price points and packaging and size,&#8221; Gordon said. &#8220;A few companies have gotten group accounts for their teams which is really positive and encouraging for me.&#8221;</p>\n<p>Gordon took a deep dive into JavaScript education after Matt Mullenweg issued a challenge to &#8220;Learn JavaScript Deeply&#8221; during his <a href=\"https://wptavern.com/state-of-the-word-2015-javascript-and-api-driven-interfaces-are-the-future-of-wordpress\" rel=\"noopener noreferrer\" target=\"_blank\">2015 State of the Word</a> address. He said so far the courses he offers have been going well and the community seems to have embraced the challenge.</p>\n<p>&#8220;The funny thing about Learning JavaScript Deeply is that people will still be able to build things in Gutenberg and beyond without really knowing it deeply,&#8221; Gordon said. &#8220;However most in the community have already picked up React or delved deeper into Vanilla JavaScript, and those who haven&#8217;t I believe certainly will be in the coming months and years.</p>\n<p>&#8220;Now with React in Core and the rebuilding of many parts of the admin with JS, we will have more real practical reasons to heed Matt&#8217;s call than we did before.&#8221;</p>\n<p>If the &#8220;JavaScript for WordPress Conference&#8221; goes well, Gordon said he hopes to make it an annual event. He is also considering doing a free day of workshops. All the talks given during the conference on Friday will be recorded and Gordon plans to drip them out over the coming months on his YouTube channel.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 28 Jun 2018 02:49:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:12;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"WPTavern: Gutenberg 3.1 Introduces Tips Interface to Guide New Users\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81787\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://wptavern.com/gutenberg-3-1-introduces-tips-interface-to-guide-new-users\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3663:\"<p><a href=\"https://make.wordpress.org/core/2018/06/21/whats-new-in-gutenberg-21st-june/\" rel=\"noopener noreferrer\" target=\"_blank\">Gutenberg 3.1</a> added a tips interface that supports and guides new users who are learning to navigate the editor&#8217;s blocks and settings. The tips appear when a new user opens Gutenberg, highlighting useful items on the page.</p>\n<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2018/06/screely-1530113565627.png?ssl=1\"><img /></a></p>\n<p>Although the tips may seem cluttered and intrusive to users who already know what they are doing, they are a necessary evil for introducing the UI to new users. Gutenberg is not yet intuitive enough to be able to stand on its own without explanation inside the interface.</p>\n<p><a href=\"https://10up.com/blog/2018/user-testing-gutenberg/\" rel=\"noopener noreferrer\" target=\"_blank\">10up recently conducted Gutenberg usability tests</a> that unearthed some startling realities about how new users interact with the new editor. The tests were done on previous versions of the plugin (2.9.2) with users who frequently create content using the classic WordPress editor. 10up asked testers, who have had no training on Gutenberg, to write a news-style blog post.</p>\n<p>One of the most surprising results was that participants struggled with the simple task of adding an image to a post.</p>\n<p>&#8220;Although the interface is clean, a lack of focused attention or hierarchy on the page became apparent,&#8221; 10up Experience Designer Sarah James said. &#8220;Participants struggled to complete tasks like adding an image that did not have a clearly exposed and labeled element like the title and paragraph fields. Heatmap tracking of the backend captured 734 unique clicks in the new post interface and only 40 of these clicks were on actual clickable elements. This suggests a struggle to find basic interactive elements, such as image blocks.&#8221;</p>\n<p>Participants also had a difficult time finding and inserting additional block types &#8211; several testers overlooked the “+” symbol that triggers interface for adding a new block.</p>\n<p>Gutenberg 3.0 and 3.1 have already improved on these pain points with changes that highlight common tasks. The 3.0 release <a href=\"https://github.com/WordPress/gutenberg/pull/6636\" rel=\"noopener noreferrer\" target=\"_blank\">redesigned the inserter, ditching tabs for collapsible panels</a>. This makes it more friendly for hunting among blocks. Version 3.1 includes a new design of the sibling inserter (the &#8220;+&#8221; symbol that appears to allow user to insert blocks between other blocks).</p>\n<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2018/06/screely-1530126900744.png?ssl=1\"><img /></a></p>\n<p>In addition to improving usability issues with the inserter, Gutenberg 3.1 fixes some of the mechanics of previewing and saving posts. Users can now <a href=\"https://github.com/WordPress/gutenberg/pull/7189\" rel=\"noopener noreferrer\" target=\"_blank\">preview changes to a published post without updating the post</a>. The editor was also updated to trigger autosave as a standard save for a draft by the user currently authoring the post.</p>\n<p>HTML blocks that have been converted into shared blocks now show in preview mode, which makes it easier for users to see what they do and insert them visually. The code will only show if the user wants to edit the block.</p>\n<p>For a full list of the changes in 3.1, check out the <a href=\"https://make.wordpress.org/core/2018/06/21/whats-new-in-gutenberg-21st-june/\" rel=\"noopener noreferrer\" target=\"_blank\">release post on make.wordpress.org</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 27 Jun 2018 19:44:41 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:13;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"HeroPress: The Power Of WordCamps\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=2577\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:111:\"https://heropress.com/the-power-of-wordcamps/#utm_source=rss&utm_medium=rss&utm_campaign=the-power-of-wordcamps\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3085:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2017/06/062117-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: I was helping hundreds of people that were using WordPress for their business. That\'s powerful.\" /><p>WordCamps have a unique power to impact lives and careers. Without people and community, WordPress is simply software. But when you add in a large group of passionate people, people who are and are interested, everything changes. There&#8217;s excitement, encouragement, and education. Entrepreneurship can be a long and lonely road. Having a solid support community can make all the difference, and WordCamps can be a huge shot in the arm.</p>\n<p>This week&#8217;s HeroPress replay is by Juan Hernando from <a href=\"https://www.google.com/maps/place/Pontevedra%2C+Spain/@42.6208401,-8.572101599999996,5z/\">Pontevedra, Spain</a>. His essay details his journey from an unknown member of his local WordPress community to being a leader in that same community.</p>\n<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/becoming-known-wordpress-community/\">Becoming Known in the WordPress Community</a></p></blockquote>\n<p></p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: The Power Of WordCamps\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=The%20Power%20Of%20WordCamps&via=heropress&url=https%3A%2F%2Fheropress.com%2Fthe-power-of-wordcamps%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: The Power Of WordCamps\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fthe-power-of-wordcamps%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fthe-power-of-wordcamps%2F&title=The+Power+Of+WordCamps\" rel=\"nofollow\" target=\"_blank\" title=\"Share: The Power Of WordCamps\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/the-power-of-wordcamps/&media=https://heropress.com/wp-content/uploads/2017/06/062117-150x150.jpg&description=The Power Of WordCamps\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: The Power Of WordCamps\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/the-power-of-wordcamps/\" title=\"The Power Of WordCamps\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/the-power-of-wordcamps/\">The Power Of WordCamps</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 27 Jun 2018 13:04:13 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:14;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:117:\"WPTavern: TaxJar to Host Free Webinar June 27: Tax Experts Answer Questions on State Tax Compliance for Online Stores\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81886\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:127:\"https://wptavern.com/taxjar-to-host-free-webinar-june-27-tax-experts-answer-questions-on-state-tax-compliance-for-online-stores\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3544:\"<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/06/Screen-Shot-2018-06-26-at-4.10.19-PM.png?ssl=1\"><img /></a></p>\n<p><a href=\"https://www.taxjar.com/\" rel=\"noopener noreferrer\" target=\"_blank\">TaxJar</a>, a company that offers automated sales tax software, is hosting a <a href=\"https://www.crowdcast.io/e/supreme-court-taxjar\" rel=\"noopener noreferrer\" target=\"_blank\">free webinar June 27</a> at 11:30 AM CDT to answer questions regarding the U.S. Supreme Court&#8217;s decision on <a href=\"http://www.scotusblog.com/2018/06/opinion-analysis-court-expands-states-ability-to-require-internet-retailers-to-collect-sales-tax/\" rel=\"noopener noreferrer\" target=\"_blank\">South Dakota v. Wayfair</a>. The court ruled in favor of South Dakota on June 21st, 2018, allowing any state to require online sellers to collect taxes for sales made from customers in that state.</p>\n<p>The provisions identified in the South Dakota vs. Wayfair ruling identifies retailers making $100K+ or 200+ transactions in the state as having an &#8220;economic presence&#8221; that would require out-of-state retailers to render sales tax. However, it&#8217;s not yet clear how other states will measure sales tax liability.</p>\n<p>TaxJar has gathered a panel of tax experts to discuss the requirements of the new sales tax compliance burden for online businesses. Nearly 2,000 people are currently signed up to tune in and attendees can also <a href=\"https://www.crowdcast.io/e/supreme-court-taxjar\" rel=\"noopener noreferrer\" target=\"_blank\">submit questions</a> in advance. A few popular questions submitted so far include:</p>\n<p><em>&#8220;How will we know which states we are required to pay taxes in, and do we have to create accounts in every state and pay for returns in all 50?&#8221;</em></p>\n<p><em>&#8220;I read that South Dakota, Colorado and Louisiana have a threshold of 100K in sales in their state to start collecting taxes. Is this really the case, and where can we find the threshold for other states?&#8221;</em></p>\n<p><em>&#8220;Does each state that wants to participate have to pass a law like South Dakota or is this now automatic for all states with a sales tax?&#8221;</em></p>\n<p>WooCommerce has created <a href=\"https://woocommerce.com/2018/06/woocommerce-sales-tax-for-the-us-how-to-enable-automated-calculations-and-filing/\" rel=\"noopener noreferrer\" target=\"_blank\">a guide to help users set up and collect taxes</a> as required by the tax jurisdiction where their stores are located. Online store owners in the US and Canada can set enable automated tax calculations using either the WooCommerce Tax or TaxJar add-ons (both free), depending on whether the merchant operates within a single tax nexus or multiple nexus locations.</p>\n<p>Automatic sales tax calculations are also available for merchants using Easy Digital Downloads. Pippin Williamson built <a href=\"https://wordpress.org/plugins/edd-taxjar/\" rel=\"noopener noreferrer\" target=\"_blank\">a free integration for EDD and TaxJar</a> that passes all tax rate determinations to TaxJar to calculate automatically, eliminating the need for manual tax rate entry.</p>\n<p>The Supreme Court&#8217;s ruling is very new and many state-specific details are yet to be worked out, but state legislatures are likely to be highly motivated and eager to rake in this new source of revenue. The <a href=\"https://blog.taxjar.com/\" rel=\"noopener noreferrer\" target=\"_blank\">TaxJar blog</a> will be a good source for updates as more compliance information becomes available.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 26 Jun 2018 21:26:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:15;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"WPTavern: Interview with Matías Ventura on Building the Vision for Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81807\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"https://wptavern.com/interview-with-matias-ventura-on-building-the-vision-for-gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2952:\"<p>At WordCamp Europe I had the opportunity to sit down with <a href=\"https://matiasventura.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Matías Ventura</a>, the technical lead for Gutenberg. Ventura, who has been responsible for building the vision for Gutenberg (in addition to building the actual product), shared a few things the team might have done differently in the earlier days to improve its reception in the community.</p>\n<p>&#8220;I think we should have put a little bit more effort into clarifying what we meant by the &#8216;editor,\'&#8221; Ventura said. &#8220;When Matt announced that we&#8217;re going to be focusing on the editor, the WordPress community generally took it that we were going to focus on TinyMCE. But the idea from the start was to focus on the editing experience as a whole, how a user perceives that, which is the whole page. I think it took some time to rectify that that was always what was meant &#8211; to look at the whole editing interface at once.</p>\n<p>&#8220;With some of these projects people are going to be in different places at different times and things will coalesce and make sense at different paces. I think we&#8217;ve gotten to a point now where we have built enough of the Gutenberg vision that we can see where it can lead us.&#8221;</p>\n<p>Several representatives from the Gutenberg team were available at WordCamp Europe for informal chats with the community. They also conducted workshops and gave presentations to prepare designers and developers for what&#8217;s coming in the next few months. Momentum for the new editor is building and Ventura shared what he hopes the world will see when version 1 is included in core.</p>\n<p>&#8220;The thing that has been the most fulfilling, at least to me, has been seeing the regular users when they can use Gutenberg and build things that would have been very hard for them to do before,&#8221; Ventura said. &#8220;When they share those impressions &#8211; that they can build something that they are proud of and express themselves &#8211; to me that is the most fulfilling because that&#8217;s really one of the major points behind this. At the same time, I&#8217;m really looking forward to seeing what the design and developer community can build with it and where their imaginations can take us from there. Core is going to supply the infrastructure and the main building blocks but it&#8217;s everything that can be built around it that&#8217;s going to be exciting, as always with WordPress.&#8221;</p>\n<p>Ventura also described some of the interesting possibilities of templates, nested blocks, and child blocks, and how they can be combined to create more sophisticated solutions. He recommends the <a href=\"https://wordpress.org/gutenberg/\" rel=\"noopener noreferrer\" target=\"_blank\">WordPress.org/Gutenberg</a> page for resources on getting started with the new editor. Check out the video below for the full interview.</p>\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 25 Jun 2018 22:59:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:16;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"WPTavern: Three Minute Movie Showcases The WordCamp EU 2018 Experience\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81821\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://wptavern.com/three-minute-movie-showcases-the-wordcamp-eu-2018-experience\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:741:\"<p>If you happened to <a href=\"https://wptavern.com/matt-mullenweg-unveils-gutenberg-roadmap-at-wceu-wordpress-agencies-and-product-developers-sprint-to-prepare\">miss out on WordCamp EU</a> this year, check out the following short film produced by <a href=\"https://www.facebook.com/Production-Pool-402255476588176/\">Production Pool</a>. Production Pool is a video production company based in Belgrade, Serbia that was hired to record all of the videos and wrap up the live stream for WordCamp Europe.</p>\n\n<p>The video is just shy of three minutes in length, highlights the size and scope of the event, and is well produced. You can almost feel what it was like to be an attendee.</p>\n\n<p>How many people can you name in the video?<br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 25 Jun 2018 21:28:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:17;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"Matt: Mass Unsubscribe Mailchimp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48190\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"https://ma.tt/2018/06/mass-unsubscribe-mailchimp/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1082:\"<p>I&#8217;m a huge fan of <a href=\"https://mailchimp.com/\">Mailchimp</a>, but <em>dang</em> does the service get abused by folks aggressively opting you into mailing lists. I have a very early, very generic Gmail address that people put as a filler address into every possible service and it gets tens of thousands of list and spam mails. A good trick to find and unsubscribe from all the Mailchimp lists you&#8217;re on is to search for <code>mcsv.net</code> and then select all, report as spam, and unsubscribe. Gmail doesn&#8217;t deal well when the unsubscribe list is taller than your screen, so you may need to hit <code>command + -</code> a few times to make it all fit. Also <a href=\"https://www.facebook.com/mailchimp/posts/10152104546810777\">according to this post</a>, &#8220;you can also get in touch with our compliance team directly at <a href=\"mailto:compliance@mailchimp.com\">compliance@mailchimp.com</a> with the email address you would like to remove from all lists and they will be happy to further assist you there as well.&#8221; I will try that as well.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 25 Jun 2018 15:19:15 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:18;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Matt: Atavist &amp; Automattic\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48169\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"https://ma.tt/2018/06/atavist-automattic/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:884:\"<img />\n\n<p>As <a href=\"https://www.wsj.com/articles/wordpress-com-owner-buys-atavist-maker-of-subscription-offering-publishing-software-1529597700?mod=searchresults&page=1&pos=1\">reported by the Wall Street Journal</a>, and <a href=\"https://en.blog.wordpress.com/2018/06/21/atavist-joins-wordpress-dot-com/\">an interview about on the WP.com blog</a>, Automattic has acquired the <a href=\"https://atavist.com/\">Atavist platform</a>, <a href=\"https://magazine.atavist.com/\">magazine</a>, and team. Looking forward to working alongside the team: we&#8217;re keeping the magazine going and it&#8217;ll complement <a href=\"https://longreads.com/\">Longreads</a>, and integrating the best of the platform&#8217;s CMS and publisher features into WordPress.com and Jetpack and after that&#8217;s done providing an upgrade path so all of its publishers can move to being WordPress-powered.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 21 Jun 2018 19:14:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:19;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:119:\"WPTavern: Matt Mullenweg Unveils Gutenberg Roadmap at WCEU, WordPress Agencies and Product Developers Sprint to Prepare\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81572\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:129:\"https://wptavern.com/matt-mullenweg-unveils-gutenberg-roadmap-at-wceu-wordpress-agencies-and-product-developers-sprint-to-prepare\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:11163:\"<a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2018/06/matt-keynote-wceu-2018.jpg?ssl=1\"><img /></a>photo credit: WordCamp Europe Photography Team\n<p>At his WCEU keynote address in Belgrade, Matt Mullenweg laid out a detailed roadmap for Gutenberg to land in WordPress 5.0 within the next few months, garnering mixed reactions from attendees. Gutenberg&#8217;s timeline is one of the most pressing questions for those who work in the WordPress ecosystem.</p>\n<p>The Gutenberg team has sustained a rapid pace of development over the past year with 30 releases since development began. There are currently 14,000 sites actively using the plugin and Mullenweg plans to roll it out to WordPress.com users in the near future. He announced that the WordPress 5.0 release could be ready as soon as August. In the meantime, the Gutenberg team will continue to refine its current features according to the roadmap Mullenweg outlined in his keynote:</p>\n<p><strong>June 2018</strong></p>\n<ul>\n<li>Freeze new features into Gutenberg</li>\n<li>Hosts, agencies and teachers invited to opt-in sites they have influence over</li>\n<li>Opt-in for wp-admin users on WP.com</li>\n<li>Mobile App support in the Aztec editor across iOs and Android</li>\n</ul>\n<p><strong>July 2018</strong></p>\n<ul>\n<li>4.9.x release with a strong invitation to install either Gutenberg or Classic Editor plugin</li>\n<li>Opt-out for wp-admin users on WP.com</li>\n<li>Heavy triage and bug gardening, getting blockers to zero</li>\n<li>Explore expanding Gutenberg beyond the post into site customization</li>\n</ul>\n<p><strong>August 2018 and beyond</strong></p>\n<ul>\n<li>All critical issues resolved</li>\n<li>Integration with Calypso, offering opt-in users</li>\n<li>100k+ sites having makde 250k+ post using Gutenberg</li>\n<li>Core merge, beginning the 5.0 release cycle</li>\n<li>5.0 beta releases and translations completed</li>\n<li>Mobile version of Gutenberg by the end of the year</li>\n</ul>\n<p>Mullenweg said he hopes to increase Gutenberg usage to 100,000 sites with 250,000 posts made over the next few months. WordPress.com will be instrumental in that goal with a call to action for opt-in that will appear on several hundred thousand sites. In July, WordPress.com will switch the Gutenberg editor to opt-out. Mullenweg said he hopes to gather data from how users respond, especially those who have third-party plugins active on their sites.</p>\n<p>Switching between editing posts in the mobile apps currently breaks but Mullenweg anticipates this will be resolved by August, with full mobile versions of Gutenberg available by the end of the year.</p>\n<p>Mullenweg opened his keynote by drawing attendees&#8217; attention to a new &#8220;<a href=\"https://publiccode.eu/\" rel=\"noopener noreferrer\" target=\"_blank\">Public Code</a>&#8221; link in the footer of WordPress.org. This campaign, organized by <a href=\"https://fsfe.org/index.en.html\" rel=\"noopener noreferrer\" target=\"_blank\">Free Software Foundation Europe</a>, aims to require any publicly financed software developed for the public sector be made available under a Free and Open Source Software license.</p>\n<p>Mullenweg also announced St. Louis, MO, as the next location for WordCamp US in 2019-2020. The local WordPress community in the city spans two states with members from both Missouri and Illinois who have hosted seven WordCamps since 2011.</p>\n<h3>Developers and Agencies Double Down on Gutenberg Preparation, &#8220;Playing for Keeps&#8221;</h3>\n<p>The process of getting products and client websites ready for Gutenberg is a leap for nearly every company and freelancer invested in the WordPress ecosystem. Mullenweg said he cannot guarantee a specific date for release but thinks that &#8220;5.0 is going be ready within a relatively short time frame.&#8221;</p>\n<p>Although many WCEU attendees expressed skepticism about the accelerated timeline for Gutenberg&#8217;s inclusion in core, most recognize the importance of working towards making their clients and products compatible with the new editor.</p>\n<p>Gutenberg technical lead <a href=\"https://matiasventura.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Matias Ventura</a> said it&#8217;s too early to tell whether the WordPress community will be ready by the time Gutenberg is included in core. &#8220;I think people have already been trying to get ready and we&#8217;re already seeing many major sites being launched using Gutenberg,&#8221; Ventura said. &#8220;From what we&#8217;ve seen with plugin authors building compatibility for Gutenberg, it seems there&#8217;s already enough momentum going on that it could be achievable.&#8221;</p>\n<p>Brad Williams, CEO of WebDevStudios, said his company&#8217;s team of engineers has been <a href=\"https://webdevstudios.com/2018/03/20/webdevstudios-gutenberg-planning-wordpress/\">actively preparing for Gutenberg</a> since late last year and is &#8220;very excited about what it means for the future of WordPress publishing.&#8221; Williams assigned two Gutenberg Leads internally to head up everything related to the new editor and conducted internal training with staff. WebDevStudios also built and released its own Gutenberg add-on framework called <a href=\"https://github.com/WebDevStudios/WDS-Blocks/releases\">WDS Blocks</a>, a framework that includes new custom blocks that many WDS clients use.</p>\n<p>&#8220;Having a potential release date, even if it’s only a target month, is incredibly helpful,&#8221; Williams said. &#8220;This gives us a goal to work towards with each of our clients to verify we are ready for the release. I expect the majority of our clients will not enable Gutenberg on release, but we still need to make sure we have an upgrade plan ready for WordPress 5.0. We are working closely with each of our clients so they understand what is coming, the benefits Gutenberg can provide them, and what a potential roll-out plan will look like. We are also making sure any new leads coming in the door are aware of Gutenberg and the impact it will have on their new WordPress project.&#8221;</p>\n<p>Gary Jones, plugin developer and WordPress engineer at <a href=\"https://gamajo.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Gamajo</a>, expressed apprehension about the timeline. He also plans to make use of the <a href=\"https://wordpress.org/plugins/classic-editor/\" rel=\"noopener noreferrer\" target=\"_blank\">Classic Editor</a> plugin to opt sites out of using Gutenberg.</p>\n<p>&#8220;With 737 open issues, I think the August timeline may still be a little short,&#8221; Jones said. &#8220;That&#8217;s only for the &#8216;critical issues&#8217; to be resolved but introducing such a massive change to the basics of managing content like this needs more than just the critical issues resolved; it needs all of the workflow to be very smooth as well.&#8221;</p>\n<p>Jones said he doesn&#8217;t think the typical rhetoric of getting a &#8216;1.0&#8217; release out the door applies in the case of Gutenberg. &#8220;There&#8217;s too much riding on it for it not to make a great first impression for the user base who haven&#8217;t been following its progress,&#8221; Jones said. &#8220;A plugin can have a much quicker release turnaround time for non-critical improvements and fixes than what WP core would have.&#8221;</p>\n<p>Jones said he plans to wait until the merge proposal before tackling plugin compatibility and will wait until 5.0 is out to start improving the experience for his clients. He said this may require creating custom blocks or installing plugins that add custom blocks clients might need. &#8220;By then we&#8217;d also know how ACF, Pods. and other plugins we use, and the Genesis theme, are supporting Gutenberg editor (or not),&#8221; Jones said.</p>\n<p>Jake Goldman, President and founder of <a href=\"https://10up.com/\" rel=\"noopener noreferrer\" target=\"_blank\">10up</a>, said his company already has an internal mandate that all new public plugins and major plugin updates must have at least &#8220;beta&#8221; support for Gutenberg. 10up&#8217;s <a href=\"https://distributorplugin.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Distributor</a> product is already Gutenberg-ready and the company has several Gutenberg-ready plugins and updates expected to ship in the next 1-2 months.</p>\n<p>&#8220;Clients are trickier,&#8221; Goldman said. &#8220;We have two big client projects started in the last couple of months that are using Gutenberg, and some pretty complicated custom blocks and extensions. We have a couple of other customers who are curious or in the exploratory phase. Two big client projects have us a bit gun shy about adopting [Gutenberg] as the &#8216;standard&#8217; on newer projects until it matures a bit more and begins to focus a bit more on the &#8216;enterprise use case / user stories&#8217; &#8211; there are some real challenges with those user stories.&#8221;</p>\n<p>Goldman also said he was encouraged to hear that Calypso will adopt Gutenberg in the next couple of months, because he hopes it will address some of the confusion and fragmentation issues.</p>\n<p>He doesn&#8217;t anticipate Gutenberg actually landing in August, however. &#8220;I don’t see August, frankly, because I don’t think the core team has a clear vision for &#8216;how&#8217; an upgrade with Gutenberg will work,&#8221; Goldman said. &#8220;That said, I suspect Matt is knowingly putting timeline pressure on the team &#8211; a bit of &#8216;if I say August, we can probably hit November&#8217; type mentality.&#8221;</p>\n<p>Mason James, founder of <a href=\"https://www.valet.io/\">Valet</a>, said he is confident his clients and products will be ready after testing Gutenberg on hundreds of sites. His team is watching a few products that have compatibility issues but he is hopeful these will be resolved soon.</p>\n<p>&#8220;The timeline of August seems a bit optimistic,&#8221; James said. &#8220;I’d be surprised if that is met, but our clients will be in good shape if that happens. We’ve also been sending information to our clients via email, a whitepaper, to try to mitigate any surprises ahead of time.</p>\n<p>&#8220;We decided last year that Gutenberg was a tremendous opportunity for us to reinforce our value proposition to our clients,&#8221; James said. &#8220;It’s an ongoing important initiative for us this year; We&#8217;re playing for keeps.&#8221;</p>\n<p><a href=\"https://thefearlessfreelancer.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Carrie Dils</a>, a WordPress developer, consultant, and educator, has also jumped head first into getting her products compatible with Gutenberg ahead of the new timeline.</p>\n<p>&#8220;I’m feverishly working to get an updated version of the <a href=\"https://store.carriedils.com/downloads/utility-pro/\" rel=\"noopener noreferrer\" target=\"_blank\">Utility Pro theme</a> (my primary product) out the door,&#8221; Dils said. &#8220;The Gutenberg updates are just one part of a larger overhaul (including a minimum requirement of PHP7 and WP 5.0+). I’ve also made the decision not to incorporate Classic Editor theme styles. All looking forward, no looking back.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 21 Jun 2018 16:37:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:20;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:23:\"Matt: WordPress in Uber\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48160\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://ma.tt/2018/06/wordpress-in-uber/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:923:\"<p>I really love this thread and the replies sharing stories about Val Vesa&#8217;s experience talking about WordPress in an Uber / Lyft ride:</p>\n\n\n	<blockquote class=\"twitter-tweet\"><p lang=\"en\" dir=\"ltr\">My <a href=\"https://twitter.com/Uber?ref_src=twsrc%5Etfw\">@Uber</a> driver last night, going home from airport asked me where was I coming from.<br />Told here about <a href=\"https://twitter.com/hashtag/WCEU?src=hash&ref_src=twsrc%5Etfw\">#WCEU</a><br />&#8211; what is that, she asked.<br />&#8211; the European Conference for <a href=\"https://twitter.com/hashtag/WordPress?src=hash&ref_src=twsrc%5Etfw\">#WordPress</a>, I said.<br />Her eyes sparkling, she grabbed the wheel firm, looked in the rear view mirror at me and said,</p>&mdash; Val Vesa | Social Media &amp; Travel Photography (@adspedia) <a href=\"https://twitter.com/adspedia/status/1008782561638801413?ref_src=twsrc%5Etfw\">June 18, 2018</a></blockquote>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 21 Jun 2018 05:20:21 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:21;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"WPTavern: WPWeekly Episode 321 – Recap of WordCamp EU 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=81758&preview=true&preview_id=81758\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wptavern.com/wpweekly-episode-321-recap-of-wordcamp-eu-2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1901:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I are joined by <a href=\"https://lanche86.com/\">Milan Ivanović</a> who helped organize WordCamp EU in Belgrade, Serbia this past weekend. Ivanović describes what it was like to organize such a large event, challenges the team overcame, and a few details related to WordCamp EU 2019 that will be held in Berlin, Germany. John and I finished the show discussing Matt Mullenweg&#8217;s keynote presentation and Gutenberg&#8217;s proposed timeline.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://wptavern.com/gutenberg-team-panel-talks-release-timeline-theme-building-and-customization-at-wceu\">Gutenberg Team Panel Talks Release Timeline, Theme Building, and Customization at WCEU</a><br />\n<a href=\"https://wptavern.com/wordcamp-europe-2018-contributor-day-posts-record-turnout-amid-wi-fi-outage\">WordCamp Europe 2018 Contributor Day Posts Record Turnout Amid Wi-Fi Outage</a><br />\n<a href=\"https://gutenbergtimes.com/mullenweg-on-gutenberg-roll-out-plan/\">Mullenweg announced Gutenberg Roadmap</a><br />\n<a href=\"https://wptavern.com/wp-rig-a-wordpress-starter-theme-and-build-process-in-one\">WP Rig – A WordPress Starter Theme and Build Process in One</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, June 27th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #321:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 21 Jun 2018 01:31:11 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:22;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"HeroPress: Proving Geography Doesn’t Matter\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=2572\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:129:\"https://heropress.com/proving-geography-doesnt-matter/#utm_source=rss&utm_medium=rss&utm_campaign=proving-geography-doesnt-matter\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3698:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2016/08/082416-Uriahs-Victor-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: Time passed, and I fell more and more in love with WordPress.\" /><p><img class=\"alignright size-full wp-image-2574\" src=\"https://s20094.pcdn.co/wp-content/uploads/2019/06/Screen-Shot-2018-06-20-at-10.16.54-AM.png\" alt=\"Map of Kansas with St. Lucia overlaid.\" width=\"403\" height=\"273\" />Almost exactly two years ago I was looking at Google Analytics Realtime and someone from St. Lucia popped up.  St. Lucia isn&#8217;t a very big place. In the map on the right you can see a little pink dot in the center.  That&#8217;s the size of St. Lucia compared to Kansas. The entire country has fewer people than my city. I wondered who that was, so I tweeted out to the world, asking if anyone knew who that might be. A friend from Themeisle said &#8220;Our man Uriahs lives there, maybe it&#8217;s him!&#8221;</p>\n<p>I looked up Uriahs, and sure enough, it was him! I was fascinated to learn what a WordPress community would look like on an island that size. As it turns out, he&#8217;s fairly alone in WordPress geographically. When I met him, he had never been off his tiny island in the Caribbean.</p>\n<p>Uriahs&#8217; essay is about learning and finding a career in a global workspace, having a GOOD job, all while living someplace where that job didn&#8217;t even exist.</p>\n<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/minority-amongst-minorities/\">A Minority Amongst Minorities</a></p></blockquote>\n<p></p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Proving Geography Doesn&#8217;t Matter\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Proving%20Geography%20Doesn%27t%20Matter&via=heropress&url=https%3A%2F%2Fheropress.com%2Fproving-geography-doesnt-matter%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Proving Geography Doesn&#8217;t Matter\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fproving-geography-doesnt-matter%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fproving-geography-doesnt-matter%2F&title=Proving+Geography+Doesn%26%238217%3Bt+Matter\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Proving Geography Doesn&#8217;t Matter\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/proving-geography-doesnt-matter/&media=https://heropress.com/wp-content/uploads/2016/08/082416-Uriahs-Victor-150x150.jpg&description=Proving Geography Doesn\'t Matter\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Proving Geography Doesn&#8217;t Matter\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/proving-geography-doesnt-matter/\" title=\"Proving Geography Doesn&#8217;t Matter\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/proving-geography-doesnt-matter/\">Proving Geography Doesn&#8217;t Matter</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 20 Jun 2018 14:06:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:23;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Matt: Link Roundup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48154\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://ma.tt/2018/06/link-roundup/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3688:\"<ul>\n	<li><a href=\"https://www.theatlantic.com/family/archive/2018/06/imagining-a-better-boyhood/562232/\">The Atlantic on today&#8217;s masculinity being stifling and imagining a better boyhood</a>.<br />.<br /><a href=\"https://www.newyorker.com/magazine/2018/01/15/when-deportation-is-a-death-sentence\"></a></li>\n	<li><a href=\"https://www.newyorker.com/magazine/2018/01/15/when-deportation-is-a-death-sentence\">When Deportation is a Death Sentence</a> is one of the most devastating articles I&#8217;ve read in a long time. <br /><a href=\"https://www.nytimes.com/2018/04/11/arts/design/cy-twombly-review-gagosian-gallery.html\"></a></li>\n	<li><a href=\"https://www.nytimes.com/2018/04/11/arts/design/cy-twombly-review-gagosian-gallery.html\">A review of the Cy Twombly show</a>, he has an amazing museum in Houston and I enjoy learning more about him.<br /><a href=\"http://thephilosophersmail.com/perspective/the-great-anthropologists-margaret-mead/\"></a></li>\n	<li><a href=\"http://thephilosophersmail.com/perspective/the-great-anthropologists-margaret-mead/\">The Great Anthropologists: Margaret Mead</a>, so fascinating.<br /><a href=\"https://nypost.com/2018/06/02/dating-columnist-reveals-how-sex-and-the-city-ruined-her-life/amp/\"></a></li>\n	<li><a href=\"https://nypost.com/2018/06/02/dating-columnist-reveals-how-sex-and-the-city-ruined-her-life/amp/\">Dating columnist reveals how ‘Sex and the City’ ruined her life</a>, has a happy ending.<br /><a href=\"https://magazine.atavist.com/barbearians-at-the-gate-new-hampshire-libertarians-fake-news\"></a></li>\n	<li><a href=\"https://magazine.atavist.com/barbearians-at-the-gate-new-hampshire-libertarians-fake-news\">Barbearians at the Gate</a> &#8220;A journey through a quixotic New Hampshire town teeming with libertarians, fake news, guns, and—possibly—furry invaders.&#8221; Amazing.<br /><a href=\"https://www.vogue.com/article/lena-dunham-break-up-vogue-june-2018\"></a></li>\n	<li><a href=\"https://www.vogue.com/article/lena-dunham-break-up-vogue-june-2018\">Lena Dunham Explores Alone Time After a Break-Up</a><br /><br /><a href=\"https://www.nytimes.com/interactive/2018/05/15/magazine/health-issue-my-adventures-with-hallucinogenic-drugs-medicine.html\"></a></li>\n	<li><a href=\"https://www.nytimes.com/interactive/2018/05/15/magazine/health-issue-my-adventures-with-hallucinogenic-drugs-medicine.html\">My Adventures with the Trip Doctors</a>, aka &#8220;Michael Pollan takes psychedelics.&#8221; See also: <a href=\"https://longreads.com/2018/05/30/michael-pollan-on-why-its-a-good-idea-to-lose-your-self/\">Interview with Longreads</a>.<br />.<br /><a href=\"https://pitchfork.com/thepitch/kanye-west-and-why-the-myth-of-genius-must-die/\"></a></li>\n	<li><a href=\"https://pitchfork.com/thepitch/kanye-west-and-why-the-myth-of-genius-must-die/\">Kanye West and Why the Myth of “Genius” Must Die</a>.<br />.<br /><a href=\"https://www.newyorker.com/magazine/2017/02/27/why-facts-dont-change-our-minds\"></a></li>\n	<li><a href=\"https://www.newyorker.com/magazine/2017/02/27/why-facts-dont-change-our-minds\">Why Facts Don&#8217;t Change Our Minds</a>, also well-covered in a great book I just finished, <a href=\"https://www.amazon.com/dp/B00SI0B8XC/\">Black Box Thinking</a>.<br />.<br /><a href=\"http://2012.dconstruct.org/conference/burke/transcript/\"></a></li>\n	<li><a href=\"http://2012.dconstruct.org/conference/burke/transcript/\">Admiral Shovel and the Toilet Roll</a> — wow.<br /><a href=\"https://www.fs.blog/2013/04/the-work-required-to-have-an-opinion/\"></a></li>\n	<li><a href=\"https://www.fs.blog/2013/04/the-work-required-to-have-an-opinion/\">The Work Required to Have an Opinion</a>, wisdom from Charlie Munger.</li>\n</ul>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 19 Jun 2018 22:24:24 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:24;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"Akismet: Version 4.0.8 of the Akismet WordPress Plugin Is Now Available\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"http://blog.akismet.com/?p=2023\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:99:\"https://blog.akismet.com/2018/06/19/version-4-0-8-of-the-akismet-wordpress-plugin-is-now-available/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:784:\"<p>Version 4.0.8 of <a href=\"http://wordpress.org/plugins/akismet/\">the Akismet plugin for WordPress</a> is now available.</p>\n<p>4.0.8 contains the following changes:</p>\n<ul>\n<li>Improved the grammar and consistency of the in-admin privacy related notes (notice and config).</li>\n<li>Revised in-admin explanation of the comment form privacy notice to make its usage clearer.</li>\n<li>Added <code>rel=”nofollow noopener”</code> to the comment form privacy notice to improve SEO and security.</li>\n</ul>\n<p>To upgrade, visit the Updates page of your WordPress dashboard and follow the instructions. If you need to download the plugin zip file directly, links to all versions are available in <a href=\"http://wordpress.org/plugins/akismet/\">the WordPress plugins directory</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 19 Jun 2018 18:35:17 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Josh Smith\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:25;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"Mark Jaquith: Making ScoutDocs: Build Tools\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"http://markjaquith.wordpress.com/?p=5665\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"https://markjaquith.wordpress.com/2018/06/19/making-scoutdocs-build-tools/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2928:\"<p>Continuing my series about <a href=\"https://wordpress.org/plugins/scoutdocs/\">ScoutDocs</a> and the process of building it, this week I&#8217;m talking about <strong>Build Tools</strong>.</p>\n<p><img /><em>What is <a href=\"https://scoutdocs.com/\">ScoutDocs</a>? ScoutDocs is a WordPress plugin that adds simple file-sharing to your WordPress site.</em></p>\n<p>Coding in React involves JSX, a bizarre-but-wonderful XML syntax that you dump directly into the middle of your JavaScript code. It feels exquisitely wrong. Browsers agree, so your JSX-containing JS code will have to be transpiled to regular JavaScript. This can involve using a complex maze of tools. Babel, NPM, Webpack, Browserify, Gulp, Grunt, Uglify, Uglifyify (yes, you read that right), and more. You have decisions to make, and you will find fierce advocates for various solutions.</p>\n<p>For ScoutDocs, I decided to go with <a href=\"https://gruntjs.com/\">Grunt</a> for task running, because I was already comfortable with it, and I needed it for <a href=\"https://www.npmjs.com/package/grunt-wp-deployhttps://www.npmjs.com/package/grunt-wp-deploy\">grunt-wp-deploy</a>. <b>Use a task runner you are already comfortable with.</b> Even if it is just NPM scripts. You’re learning a lot of new things already. It’s okay to keep your task runner setup.</p>\n<p>Next, I had to choose a JS bundler which would let me write and use modular code that gets pulled together into a browser-executable bundle. After deliberating between <a href=\"https://webpack.js.org\">Webpack</a> and <a href=\"http://browserify.org/\">Browserify</a>, I chose Browserify. <b>Webpack is really complicated.</b> It is also very powerful. I recommend you avoid it until you need it. I haven’t needed it yet, and found Browserify to be easier to configure and use, even though it’s a bit on the slow side.</p>\n<p>As I was building ScoutDocs and tweaking my dev tools, tweaking my Grunt file, and writing code to search/replace strings etc, I began to feel like the time I was spending too much time on tooling. Was I becoming one of those people who spend all their time listening to productivity podcasts instead of… being productive? I can see how someone could get sucked into that trap, but putting a reasonable amount of time into configuring your development tools can pay dividends for you beyond simply the time saved. It can also prevent mistakes, keep you in coding mode more often, and increasing your confidence in your code builds. <b>Spend the time up front to make your tools work for you.</b></p>\n<p>Other posts in this series:</p>\n<ul>\n<li><a href=\"https://markjaquith.wordpress.com/2018/06/01/lessons-learned-making-scoutdocs-outsourcing/\">Outsourcing</a></li>\n<li><a href=\"https://markjaquith.wordpress.com/2018/06/11/making-scoutdocs-react\">React</a></li>\n<li>WordPress Rest API</li>\n<li>PHP 7</li>\n<li>Build tools</li>\n<li>Unit testing</li>\n</ul>\n<p>&nbsp;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 19 Jun 2018 17:59:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Mark Jaquith\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:26;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"WPTavern: WP Rig – A WordPress Starter Theme and Build Process in One\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81618\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://wptavern.com/wp-rig-a-wordpress-starter-theme-and-build-process-in-one\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3750:\"<p><a href=\"http://mor10.com/\">Morten Rand-Hendricksen</a>, Senior Staff Instructor at <a href=\"https://www.linkedin.com/learning/\">LinkedIn Learning</a>, has released <a href=\"https://wprig.io/\">WP Rig</a>. WP Rig is a WordPress starter theme and build process combined into one. The starter theme provides a minimal set of templates with the ability to drag-and-drop files from the <a href=\"https://developer.wordpress.org/themes/basics/template-hierarchy/\">WordPress template hierarchy</a>.</p>\n\n<p>It contains a heavily optimized code and file structure, support for lazy-loading images, and documented helper functions. The build process requires no configuration and provides a modern foundation to develop on top of. </p>\n\n<p>Although WP Rig ships with a starter theme, the build process works with any theme you choose to use. WP Rig uses <a href=\"https://gulpjs.com/\">Gulp</a> to manage and optimize files, <a href=\"https://browsersync.io/\">BrowserSync</a> to immediately preview from inside the browser, and ES2015 to parse JavaScript. <a href=\"https://babeljs.io/\">Babel</a>, <a href=\"https://github.com/postcss/postcss\">PostCSS</a>, and <a href=\"http://cssnext.io/\">CSSNext</a> is used to parse CSS. The <a href=\"https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards\">WordPress Coding Standards</a> and <a href=\"https://eslint.org/\">ESLint</a> are used to check code quality. </p>\n\n<p><a href=\"https://code.visualstudio.com/\">VS Code</a> is tightly integrated with WP Rig but developers can use any code editor they choose. </p>\n\n<p>Rand-Hendriksen says the goal of the project is to provide a starting point where developers can write accessible and performant code from the start using best practices. <br /></p>\n\n<p>&#8220;WordPress and the web it lives on has evolved,&#8221; he said. &#8220;So have the tools we use to build experiences and interactions on and with the web. WordPress theme development is no longer &#8216;just&#8217; about writing PHP and CSS and JavaScript. </p>\n\n<p>&#8220;It’s also about accessibility and build processes and coding standards and performance best practices and and modern coding languages and browser support and a myriad of other topics.</p>\n\n<p>&#8220;WP Rig bridges this gap by building accessibility, performance, coding standards, and modern coding best practices in by default.&#8221;</p>\n\n<p>LinkedIn Learning donated Rand-Hendriksen&#8217;s time to WP Rig. In collaboration with <a href=\"https://xwp.co/\">XWP</a>, <a href=\"https://medinathoughts.com/2018/05/17/progressive-wordpress/\">Google</a>, and other members of the WordPress community, it was released as an open source project that is maintained by him and <a href=\"https://github.com/bamadesigner\">Rachel Cherry</a>. <br /></p>\n\n<p>&#8220;It is not owned or branded by any company, nor beholden to a company goal or ideology,&#8221; he said. &#8220;The purpose and goal of WP Rig is to provide the WordPress community with a theme development rig that puts accessibility, performance, and modern best practices in the front seat to the benefit of the end-user and the web as a whole.&#8221;</p>\n\n<p>You can download WP Rig for free <a href=\"https://wprig.io\">from the project&#8217;s site</a> or <a href=\"https://github.com/wprig/wprig/\">on GitHub</a>. To learn how to use it, LinkedIn Learning is offering a free course entitled &#8220;<a href=\"https://wprig.io/learn/\">Build WordPress Themes with WP Rig</a>.&#8221; The course covers a myriad of topics including, configuring the VS Code workpace settings, Templates, and AMP integration. </p>\n\n<p>For more information about WP Rig check out the <a href=\"https://wprig.io/introducing-wprig-wordpress/\">project&#8217;s official announcement</a>. <br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 19 Jun 2018 01:19:59 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:27;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"WPTavern: WordCamp Europe 2018 Contributor Day Posts Record Turnout Amid Wi-Fi Outage\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81514\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"https://wptavern.com/wordcamp-europe-2018-contributor-day-posts-record-turnout-amid-wi-fi-outage\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:7440:\"<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/06/wceu-2018-contributor-day.jpg?ssl=1\"><img /></a></p>\n<p>WordCamp Europe hosted a successful contributor day in Belgrade despite a wi-fi outage during the first half of the day. The event posted record numbers with 529 attendees registered to contribute across 24 teams.</p>\n<p>Contributors had the opportunity to make connections and conversations with team members and representatives from other teams while the wi-fi was down.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Had the chance to meet <a href=\"https://twitter.com/aaroncampbell?ref_src=twsrc%5Etfw\">@aaroncampbell</a> and discuss WordPress core security with him and a couple of attendees on <a href=\"https://twitter.com/hashtag/wceu?src=hash&ref_src=twsrc%5Etfw\">#wceu</a> contributor day. Thanks for the amazing chat folks!</p>\n<p>It is my first WordCamp Europe and it definitely won\'t be the last!</p>\n<p>&mdash; Bojidar Valchovski (@bdvalchovski) <a href=\"https://twitter.com/bdvalchovski/status/1007306648862494720?ref_src=twsrc%5Etfw\">June 14, 2018</a></p></blockquote>\n<p></p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Had an awesome <a href=\"https://twitter.com/hashtag/WCEU?src=hash&ref_src=twsrc%5Etfw\">#WCEU</a> contributor day today. Had some great conversations and made good progress on a few patches to improve the development experience despite the WiFi issues. Was also very proud to see SIX <a href=\"https://twitter.com/yoast?ref_src=twsrc%5Etfw\">@Yoast</a>\'ers lead different contributor teams! <a href=\"https://twitter.com/hashtag/WordPress?src=hash&ref_src=twsrc%5Etfw\">#WordPress</a> <a href=\"https://twitter.com/hashtag/family?src=hash&ref_src=twsrc%5Etfw\">#family</a></p>\n<p>&mdash; Omar Reiss (@OmarReiss) <a href=\"https://twitter.com/OmarReiss/status/1007291207171616768?ref_src=twsrc%5Etfw\">June 14, 2018</a></p></blockquote>\n<p></p>\n<p>Contributors submitted patches and made more progress online later in the day when the wi-fi resumed.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">So proud of the WordPress Coding Standards team at <a href=\"https://twitter.com/hashtag/WCEU?src=hash&ref_src=twsrc%5Etfw\">#WCEU</a> contributor day. Look at all the patches which are flooding in!!!!<a href=\"https://twitter.com/FlipKeijzer?ref_src=twsrc%5Etfw\">@flipkeijzer</a> <a href=\"https://twitter.com/GaryJ?ref_src=twsrc%5Etfw\">@GaryJ</a> <a href=\"https://twitter.com/fimdalinha?ref_src=twsrc%5Etfw\">@fimdalinha</a> <a href=\"https://twitter.com/Wonderm00n?ref_src=twsrc%5Etfw\">@Wonderm00n</a> <a href=\"https://twitter.com/Niq1982?ref_src=twsrc%5Etfw\">@niq1982</a> <a href=\"https://twitter.com/moorscode?ref_src=twsrc%5Etfw\">@moorscode</a> <a href=\"https://twitter.com/vladilie94?ref_src=twsrc%5Etfw\">@vladilie94</a> <a href=\"https://twitter.com/MCiufudean?ref_src=twsrc%5Etfw\">@MCiufudean</a> <a href=\"https://t.co/lchrR4ZmHX\">pic.twitter.com/lchrR4ZmHX</a></p>\n<p>&mdash; Juliette (@jrf_nl) <a href=\"https://twitter.com/jrf_nl/status/1007263406838173697?ref_src=twsrc%5Etfw\">June 14, 2018</a></p></blockquote>\n<p></p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Look at all these lovely people contributing to <a href=\"https://twitter.com/hashtag/WordPress?src=hash&ref_src=twsrc%5Etfw\">#WordPress</a> at <a href=\"https://twitter.com/hashtag/WCEU?src=hash&ref_src=twsrc%5Etfw\">#WCEU</a> Contributor Day <img src=\"https://s.w.org/images/core/emoji/2.4/72x72/2764.png\" alt=\"❤\" class=\"wp-smiley\" /><img src=\"https://s.w.org/images/core/emoji/2.4/72x72/2764.png\" alt=\"❤\" class=\"wp-smiley\" /><img src=\"https://s.w.org/images/core/emoji/2.4/72x72/2764.png\" alt=\"❤\" class=\"wp-smiley\" /></p>\n<p>Thank you, you rock! <a href=\"https://t.co/LtRlyolYPL\">pic.twitter.com/LtRlyolYPL</a></p>\n<p>&mdash; Milana Cap (@DjevaLoperka) <a href=\"https://twitter.com/DjevaLoperka/status/1007164509197357056?ref_src=twsrc%5Etfw\">June 14, 2018</a></p></blockquote>\n<p></p>\n<p>Attendees worked on a variety of different projects from improving the project&#8217;s coding standards to documenting best practices for hosts working with WordPress.</p>\n<p><a href=\"https://twitter.com/EvangeliaPappas\" rel=\"noopener noreferrer\" target=\"_blank\">Evangelia Pappa</a> traveled from Greece to attend her first WordCamp Europe, joining the community team to get answers about helping her local deaf community.</p>\n<p>&#8220;In my country you have a lot of deaf people who want to attend WordCamp and also the meetups that we do for the Greek WP community,&#8221; Pappa said. &#8220;We have found a way to assist them while they are at WordCamps with sign language, but are still struggling with meetups, so I am trying to find answers here in order to help other members of the community.&#8221;</p>\n<p><a href=\"http://twitter.com/rociovaldi\" rel=\"noopener noreferrer\" target=\"_blank\">Rocío Valdivia</a> traveled from Spain to attend her 6th WordCamp Europe and also joined the Community Team for contributor day, creating documentation and mentoring WordCamp organizers.</p>\n<p>&#8220;I&#8217;ve been having a meeting with the WordCamp Nordic organizing team,&#8221; Valdivia said. &#8220;We are talking about the next WordCamp Nordic, a large regional WordCamp, that will be held next year in Helsinki in March.&#8221;</p>\n<p>The Hosting team was also able to work, despite the wi-fi outage, bringing together representatives from different countries and hosting companies.</p>\n<p>&#8220;We&#8217;ve been going through and writing some best practices and documentation,&#8221; <a href=\"http://twitter.com/GetSource\" rel=\"noopener noreferrer\" target=\"_blank\">Michael Schroder</a> said. &#8220;We&#8217;ve been making some good progress on the performance area of the docs, so I feel pretty good about getting some of that committed today.&#8221;</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">The Contribution Area is being put to good use at <a href=\"https://twitter.com/hashtag/WCEU?src=hash&ref_src=twsrc%5Etfw\">#WCEU</a> . First time we’re using a dedicated room to allow for a continuance of Contributor Day. <a href=\"https://t.co/lTgR8OdLBf\">pic.twitter.com/lTgR8OdLBf</a></p>\n<p>&mdash; Remkus de Vries (@DeFries) <a href=\"https://twitter.com/DeFries/status/1007628138522861568?ref_src=twsrc%5Etfw\">June 15, 2018</a></p></blockquote>\n<p></p>\n<p>For the first time, WordCamp Europe also set aside a spacious, designated room for attendees who wanted to continue collaborating on contributions during the main conference.</p>\n<p>Wifi outages are a common occurrence at WordCamp Contributor days. While many attendees I spoke with said they were frustrated and inconvenienced by the inability to be productive, others expressed happy sentiments about the opportunity to be together in one place.</p>\n<p>&#8220;The most important thing about contributor day is talking to people, getting to know each other, face timing in real life,&#8221; Polyglots team lead <a href=\"http://twitter.com/petyeah\" rel=\"noopener noreferrer\" target=\"_blank\">Petya Raykovska</a> said. &#8220;These are always very useful connections to have, learning everybody&#8217;s name, asking questions about their experience contributing, and them asking you questions about general experience with the team. It&#8217;s actually been great. I feel like it&#8217;s given people a chance to talk to each other. No time is lost in contributor day, really.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 18 Jun 2018 11:23:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:28;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"Post Status: Productizing your service business, with Brian Casel\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=46103\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://poststatus.com/productizing-your-service-business-with-brian-casel/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2663:\"<p>Welcome to the Post Status <a href=\"https://poststatus.com/category/draft\">Draft podcast</a>, which you can find <a href=\"https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008\">on iTunes</a>, <a href=\"https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast\">Google Play</a>, <a href=\"http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast\">Stitcher</a>, and <a href=\"http://simplecast.fm/podcasts/1061/rss\">via RSS</a> for your favorite podcatcher. Post Status Draft is hosted by Brian Krogsgard and co-host Brian Richards.</p>\n<p>In this episode, Brian is joined by guest-host <a href=\"https://twitter.com/casjam\">Brian Casel</a>. Brian runs <a href=\"https://audienceops.com/\">Audience Ops</a>, a productized service that offers all aspects of content creation for companies. Brian has been in the WordPress community for a long time, and for years has worked on creating processes around his business to enable him to get beyond a freelancer work life and into treating services like products.</p>\n<p>Before Audience Ops, he ran Restuarant Engine &#8212; a niche WordPress site provider, where he really honed many of the processes his company still uses today &#8212; which he sold for six figures.</p>\n<p>We dig in to why he decided to make a transformation with his businesses to be so process oriented, and how he turned that into the 30-person organization it is today, as well as the various courses and communities around Productize and Scale.</p>\n<p>By the way, if you like this interview, Brian has an active job posting on Post Status for a <a href=\"https://poststatus.com/job/audience-ops-united-states-1899-writer-for-blog-content-covering-wordpress-web-dev-business-topics/\">blog content writer for Audience Ops</a>.</p>\n<p>&nbsp;</p>\n<p></p>\n<h3>Links</h3>\n<ul>\n<li><a href=\"https://audienceops.com/\">Audience Ops</a></li>\n<li><a href=\"https://productizeandscale.com/\">Productize and Scale</a> newsletter</li>\n<li><a href=\"http://productizepodcast.com/\">Productize Podcast</a></li>\n<li><a href=\"https://productizecourse.com/\">Productize Course</a></li>\n<li><a href=\"https://restaurantengine.com/\">Restaurant Engine</a></li>\n<li><a href=\"http://opscalendar.com/\">Ops Calendar</a></li>\n<li><a href=\"http://www.tropicalmba.com/dc/\">Tropical MBA DC</a></li>\n</ul>\n<h3>Sponsor: Yoast</h3>\n<p>Yoast SEO Premium gives you 24/7 support from a great support team and extra features such as a redirect manager, recommended internal links, tutorial videos and integration with Google Webmaster Tools! Check out <a href=\"https://yoast.com/\">Yoast SEO Premium</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 15 Jun 2018 18:11:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Brian Krogsgard\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:29;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"WPTavern: Gutenberg Team Panel Talks Release Timeline, Theme Building, and Customization at WCEU\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81546\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:105:\"https://wptavern.com/gutenberg-team-panel-talks-release-timeline-theme-building-and-customization-at-wceu\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5847:\"<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/06/gutenberg-workshop.jpg?ssl=1\"><img /></a></p>\n<p>The Gutenberg team took questions from a full room users and developers this morning before diving into the specifics of the editor&#8217;s design, block creation, and how to further extend the new interface. The first question they addressed is the one everyone is asking: When will Gutenberg land in core?</p>\n<p>The team said the editor is pretty close to feature complete and should achieve that in the next few months when version 3.3 is released. At that point the focus will be on refining the current experience. They estimate this to happen in June or the first week of July but also hinted at more information coming in Matt Mullenweg&#8217;s keynote address this afternoon.</p>\n<p>Developers also asked about the criteria that will be used to decide that Gutenberg is ready for a WordPress release. The project has a <a href=\"https://github.com/WordPress/gutenberg/issues/4894\" rel=\"noopener noreferrer\" target=\"_blank\">scope and features MVP issue on GitHub</a> that provides an overview for the major functionality that will be introduced in the first version of the new editor. It shows which features have already been shipped and which ones are remaining.</p>\n<p>The team explained that many of the final features have come from developer and user feedback. Some features were not necessarily planned for V1, but it became more apparent that these were needed because they improved either the developer or user experience. For example, within the past four or five months the team found that the child blocks would be necessary to allow developers to be more expressive in extending the editor. A few of the remaining issues include inline images and post locking for concurrent users, but the team doesn&#8217;t anticipate any major new features on the horizon before V1 is released.</p>\n<p>Gutenberg engineers also assured workshop attendees that the project is being built with backwards compatibility in mind. One person asked what will happen when the 5.0 release lands. The team explained that the Gutenberg update will not change all the content on WordPress sites. When users open a post in the editor they will have the option to convert that content to block format so it will work with the new editor. If it doesn&#8217;t quite work, users be able to fall back to the classic editor.</p>\n<p>The team said they took great lengths not to alter how WordPress deals with data. Gutenberg does not change the content structure. One of the cornerstones for the project is providing an update that will not fragment the content structure. There will be a lot of resources available ahead of the release for helping everyone move forward together.</p>\n<p>Gutenberg engineers said they are working to be conscious not to delay the project, because the longer the delay, the more potential users WordPress is losing because the software is not easy enough for them to build and customize content and websites.</p>\n<h3>How Will Theme Building Change with Gutenberg?</h3>\n<p>Gutenberg designers and engineers also tackled questions about how the new editor will change the theme building experience. Design lead Tammie Lister emphasized the importance of theme developers first getting better at creating themes that do not try to do everything. The basic purpose of a theme is to style the frontend and provide an editor style. One potential way forward for theme developers is to provide additional features by releasing a suite of blocks via a plugin. Lister said she hopes that themes will become a lot lighter in the Gutenberg era and encouraged developers to utilize style guides.</p>\n<p>The team also said that existing themes will continue to function and redesigning a theming API, without the hassle of editing a bunch of PHP files, may be possible in the future. However, it&#8217;s too early to know what that will look like. For now, the rendering engine is not changing. Theme developers interested in Gutenberg compatibility should start looking towards deconstructing their themes into individual elements and learn how to express a theme as a list of blocks.</p>\n<h3>How Will Gutenberg Handle Customization?</h3>\n<p>Attendees asked several questions regarding the specific plan to implement customization, or live previewing, after Gutenberg is in core. The current phase 1 handles content editing and puts the infrastructure in place to support customization. There are some issues on GitHub for transforming widgets into blocks, which will be a step towards the site building experience. The team has already implemented direct manipulation on the WYSIWYG road but phase 2 will cover more aspects of customization.</p>\n<p>Gutenberg is not ready to replace the Customizer anytime soon, but the next phase will explore what a block-based experience of customization will look like. When asked if Gutenberg will &#8220;kill off some of the page builders,&#8221; the team said the goal is for page building type applications to be able to use Gutenberg as a springboard for different implementations that extend the editor in ways that benefit different types of users.</p>\n<p>An attendee asked how the team plans to enhance adoption once Gutenberg lands in core. The team said they are working on an experimental feature called &#8216;tips&#8217; that offers a story walkthrough of the publishing workflow. It includes helpful nudges to assist users in getting better at navigating the interface. The wider ecosystem has already responded with courses and tutorials to help developers get on board. The WordPress training team is also working on some training materials to use at WordCamps with tutorials for developers to learn how to convert existing plugins and themes to be Gutenberg-ready.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 15 Jun 2018 11:18:17 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:30;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"WPTavern: WPWeekly Episode 320 – Building a Sustainable Web\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=81508&preview=true&preview_id=81508\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://wptavern.com/wpweekly-episode-320-building-a-sustainable-web\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1741:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I are joined by Jack Lenox, Software Engineer at Automattic, to discuss his new project, <a href=\"https://sustywp.com/\">SustyWP</a>. Lenox explains how he built the site so that it only has 7KB of data transfer, what sustainability on the web means to him, and the relationship between sustainability and optimization to create a better user experience. We end the show discussing the latest WordPress headlines and share information on how you can watch WordCamp EU for free.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://www.wordfence.com/blog/2018/06/babayaga-wordpress-malware/\">BabaYaga: The WordPress Malware That Eats Other Malware</a><br />\n<a href=\"https://blog.threatpress.com/vulnerable-wordpress-plugins-multidots/\">Ten WordPress Plugins By Multidots For WooCommerce Identified As Vulnerable And Dangerous</a><br />\n<a href=\"https://wptavern.com/plugin-detective-wins-wordcamp-orange-county-2018-plugin-a-palooza\">Plugin Detective Wins WordCamp Orange County’s 2018 Plugin-a-Palooza</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, June 20th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #320:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 14 Jun 2018 02:04:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:31;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"WPTavern: Watch WordCamp EU for Free via Livestream\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81466\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://wptavern.com/watch-wordcamp-eu-for-free-via-livestream\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:889:\"<p><a href=\"https://2018.europe.wordcamp.org/\">WordCamp EU 2018</a> is scheduled to take place this weekend in Belgrade, Serbia. Although the event is sold out, you can watch the event for free via livestream. Simply visit the WCEU <a href=\"https://2018.europe.wordcamp.org/tickets/\">tickets page</a> and register a livestream ticket.</p>\n\n<p>Sessions begin on Friday, June 15th. To see a list of sessions and speakers, check out the <a href=\"https://2018.europe.wordcamp.org/schedule/\">event&#8217;s schedule</a>. Note that there is a six hour time difference between Eastern Daylight Time and Belgrade, Serbia. </p>\n\n<p>As we near the halfway point of 2018 and no imminent release of WordPress 5.0 on the horizon, it will be interesting to see what information is shared during <a href=\"https://2018.europe.wordcamp.org/session/matt-on-wordpress/\">Matt Mullenweg&#8217;s keynote.</a></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 14 Jun 2018 00:35:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:32;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"HeroPress: By Helping Others, I Save Myself\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=2568\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:129:\"https://heropress.com/by-helping-others-i-save-myself/#utm_source=rss&utm_medium=rss&utm_campaign=by-helping-others-i-save-myself\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3397:\"<img width=\"960\" height=\"547\" src=\"https://s20094.pcdn.co/wp-content/uploads/2016/05/osmi-1024x583.png\" class=\"attachment-large size-large wp-post-image\" alt=\"Banner for OSMI, Open Sourcing Mental Illness\" /><p>I think I met Ed Finkler at WordCamp Milwaukee in 2016. It was at the speaker dinner, and he sat across from me for a while. He seemed like a pretty normal WordPress developer and several weeks later I asked him to do a HeroPress essay. His answer surprised me. &#8220;Well sure, that sounds pretty cool, aside from the fact that I don&#8217;t really do WordPress anymore&#8221;.</p>\n<p>As it turns out, he had mostly retired from active WordPress development. His every day world was now filled with working in different frameworks and languages, amongst people who help WordPress in disdain. But Ed&#8217;s view fascinated me. For all that he was working with more modern frameworks, WordPress is what made him a great developer. The empathy and compassion for the user that WordPress holds so dearly carried over into the rest of his life.</p>\n<p>So what was he doing at WordCamp? Spreading the word about his cool new organization, which I will leave for you to read about.</p>\n<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/wordpress-taught-better-developer/\">How WordPress Taught Me To Be a Better Developer</a></p></blockquote>\n<p></p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: By Helping Others, I Save Myself\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=By%20Helping%20Others%2C%20I%20Save%20Myself&via=heropress&url=https%3A%2F%2Fheropress.com%2Fby-helping-others-i-save-myself%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: By Helping Others, I Save Myself\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fby-helping-others-i-save-myself%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fby-helping-others-i-save-myself%2F&title=By+Helping+Others%2C+I+Save+Myself\" rel=\"nofollow\" target=\"_blank\" title=\"Share: By Helping Others, I Save Myself\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/by-helping-others-i-save-myself/&media=https://heropress.com/wp-content/uploads/2016/05/osmi-150x150.png&description=By Helping Others, I Save Myself\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: By Helping Others, I Save Myself\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/by-helping-others-i-save-myself/\" title=\"By Helping Others, I Save Myself\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/by-helping-others-i-save-myself/\">By Helping Others, I Save Myself</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 13 Jun 2018 13:14:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:33;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"WPTavern: Plugin Detective Wins WordCamp Orange County’s 2018 Plugin-a-Palooza\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81315\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"https://wptavern.com/plugin-detective-wins-wordcamp-orange-county-2018-plugin-a-palooza\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3482:\"<p><a href=\"https://2018.oc.wordcamp.org/\">WordCamp Orange County</a>, CA, took place this past weekend and the winners of the <a href=\"https://wptavern.com/wordcamp-orange-county-plugin-a-palooza-first-place-prize-is-3000\">Plugin-a-Palooza</a> have been crowned. <a href=\"https://profiles.wordpress.org/croixhaug\">Nathan Tyler</a> and <a href=\"https://profiles.wordpress.org/nataliemac\">Natalie MacLees</a> took the first place prize of $3,000 with their submission, <a href=\"https://wordpress.org/plugins/plugin-detective/\">Plugin Detective</a>.</p>\n\n<img />\n	Creating a new case in Plugin Detective\n\n\n<p>When it comes to troubleshooting WordPress, disabling and re-enabling plugins is one of the first steps in the process. This is time consuming and involves browsing to the plugin management page multiple times to turn a plugin on or off.</p>\n\n<p>Plugin Detective simplifies the process by quickly identifying the culprit. Once installed, a Troubleshooting quick link is added to the WordPress Toolbar. From here, users can open or continue a case. When a case is opened, a bot named Detective Otto asks users to navigate to the page where the problem is occurring.</p>\n\n<p>After the location is identified, users inform Detective Otto which plugins are required for the site to function properly. Interrogations is the act of of disabling and enabling plugins. Multiple interrogation attempts are made until the culprit is identified through the process of elimination. The following video does a great job of explaining and showing how it works. <br /></p>\n\n\n	<div class=\"embed-vimeo\"></div>\n\n\n<p>It can also be used to <a href=\"https://wordpress.org/plugins/plugin-detective/#i%20just%20see%20errors%20or%20a%20white%20screen.%20can%20i%20still%20use%20plugin%20detective%20to%20troubleshoot%20what%E2%80%99s%20gone%20wrong%3F\">identify and fix</a> White Screen of Death errors caused by plugins.<br /></p>\n\n<p>Plugin Detective is partly inspired by a software program from the 90s called <a href=\"https://en.wikipedia.org/wiki/Conflict_Catcher\">Conflict Catcher</a>.</p>\n\n<p>&#8220;I used &#8216;Conflict Catcher&#8217; to troubleshoot conflicts between system extensions on my Mac,&#8221; Tyler said. &#8220;I thought the concept was cool and would often run it for fun to try to figure out how it worked. Eventually, I learned that the computer science concept is a &#8216;binary search.&#8217;</p>\n\n<p>&#8220;Applying the concept to WordPress plugins seemed like a good approach to the plugin conflict problem we all experience.&#8221;</p>\n\n<p>Tyler developed the functionality and MacLees is credited with the plugin&#8217;s design, user experience, JavaScript, API calls, etc. The duo plan to establish relationships with plugin authors to help get them better bug reports. <br />><br /><br /><br /><br /><br />&#8220;Basically, if an author opts-in, we can help the end-user file a support ticket right there in Plugin Detective after we&#8217;ve identified the problem,&#8221; he said. &#8220;The support team gets a helpful bug report with notes from the customer, along with system information, other installed plugins, active theme, etc.&#8221;</p>\n\n<p>If you troubleshoot sites often or want an easier way to figure out which plugin is causing a conflict, consider adding Plugin Detective to your toolkit. Plugin Detective is free and <a href=\"https://wordpress.org/plugins/plugin-detective/\">available for download</a> from the WordPress plugin directory. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 12 Jun 2018 02:12:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:34;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"Matt: Other Cultures\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48139\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"https://ma.tt/2018/06/other-cultures/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:311:\"<blockquote class=\"wp-block-quote\">\n	<p>As the traveller who has once been from home is wiser than he who has never left his own doorstep, so a knowledge of one other culture should sharpen our ability to scrutinize more steadily, to appreciate more lovingly, our own.</p><cite>Margaret Mead</cite></blockquote>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 11 Jun 2018 23:35:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:35;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"WPTavern: WordCamp Europe Introduces Official Mobile App, New Tech for On-site Badge Printing\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81001\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:103:\"https://wptavern.com/wordcamp-europe-introduces-official-mobile-app-new-tech-for-on-site-badge-printing\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4132:\"<img />\n\n<p>WordCamp Europe debuted its new <a href=\"https://app.wp-europe.org/\">official mobile app</a> today, providing attendees with a quick way to access the event’s schedule, maps, and announcements. Several unofficial apps have popped up over the years, but this is the first one produced and supported by WCEU organizers.</p>\n\n<p>The team opted for creating a PWA (Progressive Web App), which loads inside a mobile browser while offering an experience similar to native apps. It’s also far less complicated than supporting multiple platform-specific mobile apps. Users don’t have to download anything, since it is loaded via the browser, and the site can be accessed offline in case of network failure. <br /></p>\n\n<img />\n\n<p>The app was built using React on the frontend and is hosted on a node server. It uses WordPress for content management on the backend, along with the <a href=\"https://wordpress.org/plugins/wp-pwa/\">WordPress PWA</a> plugin and <a href=\"https://wordpress.org/plugins/onesignal-free-web-push-notifications/\">OneSignal Push Notifications ﻿</a>.</p>\n\n<p>“This first iteration isn’t scalable for the community, but we wanted to test the possibilities and have the opportunity to explore what it would take to eventually make this available for all WordCamps,” WCEU team leader Jenny Beaumont said. “It’s a lofty goal, and we’re not there yet, but we’ve learned a lot along the way and looking forward to pursuing the ambition.”</p>\n\n<p>Attendees can expect to find any last minute schedule changes in the app and may also opt to receive push notifications for important updates. The Favorites feature lets users to bookmark all the sessions they plan to attend and toggle them into view.</p>\n\n<img />\n\n<p>WCEU’s official PWA is lightweight and re-usable &#8211; it can easily be updated to display content for future editions of the WordCamp.</p>\n\n<p>“We’ll only need to update our feeds, since WordCamps are issued a new website every year, but the basic functionality will be in place and can be developed on as browsers offer better support and new team members join the team with their great ideas,” Beaumont said. </p>\n\n<p>The current theme is open source and available on GitHub. It can be rebranded for future events to reflect the design for that year and city. Beaumont said the long term goal is to have a PWA generated directly from WordCamp sites. </p>\n\n<h3>New Tech for Badges Generates a Barcode for Sponsors to Scan</h3>\n\n<p>The technology for badge creation will be getting an overhaul as well this year. WCEU organizers are renting the materials from a <a href=\"https://www.azavista.com/\">Azavista</a>, a Dutch event management company that provides badges, badge printers and scanning devices (iPhones). The new tech will make it more efficient for volunteers to process more than 2,000 attendees at registration.</p>\n\n<p>The badge scanners also streamline attendee interaction with sponsors, replacing the signup sheets and tablets that sponsors usually have for collecting attendee information. </p>\n\n<p>“It’s tied to attendees’ Attendee ID number, created when attendees register on our WordCamp site,” Beaumont said. “Say an attendee is visiting a sponsor booth and having a nice conversation, the sponsor can ask if they’d like to leave their name and email address to stay in touch. If the attendee agrees, then they show their badge to have it scanned by the sponsor using the closed-technology on devices provided by our vendor. &#8220;</p>\n\n<p>After the event, WCEU organizers will send the names and email addresses of attendees to the sponsors based on the signups from scanned badges.</p>\n\n<p>If attendee feedback is positive, Beaumont said organizers plan to implement the quick registration feature next year. This will allow attendees to receive a QR code via email and get it scanned in order to receive their badges. These tech improvements should relieve traffic bottlenecks at the registration desk and sponsor booths, freeing up more time for WCEU attendees to spend in sessions and networking activities.</p>\n\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 11 Jun 2018 15:38:14 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:36;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"Mark Jaquith: Making ScoutDocs: React\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"http://markjaquith.wordpress.com/?p=5658\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://markjaquith.wordpress.com/2018/06/11/making-scoutdocs-react/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6209:\"<p>Continuing my series about <a href=\"https://wordpress.org/plugins/scoutdocs/\">ScoutDocs</a> and the process of building it, this week I&#8217;m talking about <strong>React</strong>.</p>\n<p><img /><em>What is <a href=\"https://scoutdocs.com/\">ScoutDocs</a>? ScoutDocs is a WordPress plugin that adds simple file-sharing to your WordPress site.</em></p>\n<p>After the first iteration of ScoutDocs was built and none of the partners on the project were happy with its experience, it became clear that in order to deliver a clean, simple interface for file uploading and sharing we needed to leave the bounds of the WordPress admin. It didn’t take me long to decide that <a href=\"https://reactjs.org/\">React</a> would be the tool I used to build the new interface.</p>\n<p>There is an incredible momentum behind React, and a rich ecosystem of libraries, tools, and educational resources. But beyond all that, React is just plain <em>fun</em> to code. Once you accept the central premise that a view layer and the controller that handles that view are inextricably linked, and once you get over the weirdness of quasi-HTML-in-JS that is JSX, coding in React is a joy.</p>\n<p><img /></p>\n<p>Make no mistake, learning React is not a weekend project. It will take a while before it feels like home. But once you get it, you feel very powerful.</p>\n<p>The first lesson I learned was <b>don’t learn React by rewriting your app in React</b>. I tried this. I read some tutorials about React and it felt straightforward, and I was like “let’s <i>do</i> this.”</p>\n<p><img /></p>\n<p>This was a bad idea. I was overwhelmed. I had no idea where to start. Next, I tried following some of the interactive tutorials that required me to build a simple React app and then slowly add functionality to it, refactoring it multiple times, until I understood not just the code that I ended up with, but the <i>process</i> of creating it. This went much better.</p>\n<p><b>Start small, and build a bunch of “toy” apps before you use React for your own apps.</b> Once you are able to “think in React”, you’ll be nearly physically itchy to go re-code your app in React, and that’s how you know you’re ready. If you jump the gun, you are going to get stuck a lot, and it will be frustrating.</p>\n<p>As you learn React and explore the React ecosystem, you will likely hear about <a href=\"https://redux.js.org/\">Redux</a>, which is a system for storing application state, and is commonly used with React apps. It looked complicated, and even its creator wrote a post saying <a href=\"https://medium.com/@dan_abramov/you-might-not-need-redux-be46360cf367\">you might not need Redux</a>. So I skipped it. This was probably the right call when I was starting out. But as I fleshed out the ScoutDocs app and its complexity increased, I ran into a problem.</p>\n<p>See, React breaks your app up into these nested chunks of UI and functionality called components. Data flows down through your components. So if a user updates their name, that change will flow down from higher up components like a Page component down to a PageHeader, down to a NavBar, down to a UserStatus. Once this is all set up and you update data in a parent component, the changes automatically flow downstream, and the UserStatus component updates and re-renders. It’s great. Except that there are a bunch of intermediate components that accept and “forward” that user name data to their children, without actually caring about it themselves. When you inevitably refactor something and need to add new data that flows through these components, every single intermediate one needs to be updated to pass it on. It is tedious. You will hate it.</p>\n<p>Worse, because events in React flow upwards, if a user updates their name in the UserName component, that change needs to flow up to ProfileForm, up to Profile, up to Page, and then up to your main App component. When you refactor, you need to make sure this event forwarding chain stays connected. Yet more tedium that you will hate.</p>\n<p>Redux solves this by letting your React components, no matter how deeply they are nested, subscribe directly to the data they need.</p>\n<p>I really wish Dave Ceddia had written <a href=\"https://daveceddia.com/what-does-redux-do/\">this excellent post about Redux</a> two months earlier.</p>\n<blockquote><p>If you have a component structure like the one above – where props are being forwarded down through many layers – consider using Redux.</p></blockquote>\n<p>This is what I needed to hear, and knowing this would have saved me a lot of frustration and time that I now have to spend converting ScoutDocs to use Redux.</p>\n<p><b>Use Redux when your React data flow starts to get unwieldy.</b></p>\n<p>Another mistake I made early on was making the data my React components accepted too restrictive. For example, I wanted the ability to prefix a <code class=\"code-inline\">Row</code> component with a clickable icon. So I let the component accept an <code class=\"code-inline\">icon</code> and <code class=\"code-inline\">onClickIcon</code> property. I just passed a Font Awesome icon name in, and a function I wanted to run when clicked. It worked great.</p>\n<p><img /></p>\n<p>Then I needed to add a second icon in front, in some circumstances. Ugh. I certainly didn’t want to do <code class=\"code-inline\">otherIcon</code> and <code class=\"code-inline\">onClickOtherIcon</code>. Instead, what I should have done was let the component accept <code class=\"code-inline\">beforeRow</code> which could be anything… like an array of <code class=\"code-inline\">&lt;Icon&gt;</code> components or a single one or even other components altogether.</p>\n<p><img /></p>\n<p>This can be used for many more situations than the one (&#8220;put an icon before the row&#8221;) that I&#8217;d originally envisioned.</p>\n<p><b>Your React components should be flexible, so they can be reusable.</b></p>\n<p>Other posts in this series:</p>\n<ul>\n<li><a href=\"https://markjaquith.wordpress.com/2018/06/01/lessons-learned-making-scoutdocs-outsourcing/\">Outsourcing</a></li>\n<li>React</li>\n<li>WordPress Rest API</li>\n<li>PHP 7</li>\n<li>Build tools</li>\n<li>Unit testing</li>\n</ul>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 11 Jun 2018 14:36:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Mark Jaquith\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:37;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"Akismet: Customisation options for the Akismet front-end privacy notice\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"http://blog.akismet.com/?p=1999\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:99:\"https://blog.akismet.com/2018/06/07/customisation-options-for-the-akismet-front-end-privacy-notice/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3606:\"<p>To help your site be transparent to your visitors about using <a href=\"https://akismet.com/\">Akismet</a> to process comments (think privacy and <a href=\"https://www.eugdpr.org/\">GDPR</a>), <a href=\"https://wordpress.org/plugins/akismet/\">our WordPress plugin</a> now gives you the option to display a notice under your site&#8217;s comment forms. Site owners can decide if they want to display it, or not, on a per-blog basis.</p>\n<p><img /></p>\n<p>But we&#8217;ve also given options to developers to extend the behaviour, and content, of said notice.</p>\n<h3>WordPress option</h3>\n<p>The display of the notice itself, as well as the in-admin notice to set it for one&#8217;s site, all revolves around a new <code>akismet_comment_form_privacy_notice</code> option, which needs to be set to either <code>display</code> or <code>hide</code>.</p>\n<p>If the option is not yet set, the front-end notice will not be displayed, but the in-admin prompting site owners to set it will.</p>\n<p>Once set to either <code>display</code> or <code>hide</code>, the front-end notice will match the choice, and the in-admin notice will disappear.</p>\n<h3>Filters</h3>\n<p>In <a href=\"https://plugins.trac.wordpress.org/browser/akismet/trunk/class.akismet.php?rev=1882139#L1408\"><code>class.akismet.php</code></a>, there is a new <a href=\"https://plugins.trac.wordpress.org/browser/akismet/trunk/class.akismet.php?rev=1882139#L1408\"><code>Akismet::display_comment_form_privacy_notice()</code></a> method, in which you can find the following filters to extend.</p>\n<ul>\n<li><a href=\"https://plugins.trac.wordpress.org/browser/akismet/trunk/class.akismet.php?rev=1882139#L1413\"><code>akismet_comment_form_privacy_notice</code></a>:<br />\nOverrides the returned value of the <code>akismet_comment_form_privacy_notice</code> option. This value can be <code>display</code>, or <code>hide</code>, and controls the display of the front-end privacy notice under comment forms.</li>\n<li><a href=\"https://plugins.trac.wordpress.org/browser/akismet/trunk/class.akismet.php?rev=1882139#L1417\"><code>akismet_comment_form_privacy_notice_markup</code></a>:<br />\nLets you customise the text and markup of the actual notice, which defaults to <code>\'&lt;p class=\"akismet_comment_form_privacy_notice\"&gt;\' . sprintf( __( \'This site uses Akismet to reduce spam. &lt;a href=\"%s\" target=\"_blank\"&gt;Learn how your comment data is processed&lt;/a&gt;.\', \'akismet\' ), \'https://akismet.com/privacy/\' ) . \'&lt;/p&gt;\'</code>. Note that if you choose to modify the markup, something needs to eventually point your users to <a href=\"https://akismet.com/privacy/\">https://akismet.com/privacy/</a>, which will always display, or redirect to, our most up-to-date privacy related documentation.</li>\n</ul>\n<h3>CSS</h3>\n<p>As seen above, the default front-end privacy notice is wrapped in a <code>&lt;p class=\"akismet_comment_form_privacy_notice\"&gt;&lt;/p&gt;</code> tag, which you can extend via stylesheets and Javascript.</p>\n<h3>WP Multisite or multiple WP installs</h3>\n<p>If you have a lot of sites/blogs, you might also now be wanting to set the privacy display in bulk.</p>\n<p>There are a few ways of doing that.</p>\n<p>You can create a quick plugin that checks if the <code>akismet_comment_form_privacy_notice</code> option is set, and if it is not, set it for the current blog: <code>update_option( \'akismet_comment_form_privacy_notice\', $state );</code> where <code>$state</code> is either <code>display</code> or <code>hide</code>.</p>\n<p>Or you could write a script that loops on your blog list, and set the same option, in one run.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 07 Jun 2018 14:52:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Stephane Daury\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:38;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"WPTavern: WPWeekly Episode 319 – The Gutenberg Plugin Turns 30\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=81249&preview=true&preview_id=81249\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wptavern.com/wpweekly-episode-319-the-gutenberg-plugin-turns-30\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1977:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I are joined by <a href=\"http://pento.net/\">Gary Pendergast</a>, a WordPress core contributor, to discuss what&#8217;s new with Gutenberg. We find out what happened with WordPress 4.9.6, and discuss WordPress&#8217; future. We also discuss Microsoft&#8217;s acquisition of GitHub and when WordPress core development might transition to GitHub. Last but not least, we share the news of the week.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://news.microsoft.com/2018/06/04/microsoft-to-acquire-github-for-7-5-billion/\">Microsoft Acquires GitHub for $7.5B In Stock</a><br />\n<a href=\"https://make.wordpress.org/core/2018/06/05/whats-new-in-gutenberg-5th-june/\">Gutenberg 3.0.0 Released, 30th Release</a><br />\n<a href=\"https://wptavern.com/simplepress-forum-plugin-is-up-for-adoption\">Simple:Press Forum Plugin Is Up for Adoption</a><br />\n<a href=\"https://wptavern.com/wordcamp-for-ios-renamed-to-wp-camps-more-events-added\">WordCamp for iOS Renamed to WP Camps, More Events Added</a><br />\n<a href=\"https://wptavern.com/sustainability-wordpress-sustywp\">Sustainability + WordPress = SustyWP</a><br />\n<a href=\"https://medium.com/@muglug/improving-wordpress-with-static-analysis-505cc5ba495d\">Improving WordPress with Static Analysis</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, June 13th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #319:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 07 Jun 2018 01:12:45 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:39;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"WPTavern: Simple:Press Forum Plugin Is Up for Adoption\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81186\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"https://wptavern.com/simplepress-forum-plugin-is-up-for-adoption\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1355:\"<p><a href=\"https://simple-press.com/\">Simple:Press</a>, a forum plugin for WordPress that has been around for more than a dozen years, is available for adoption. Developers Andy Staines and Steve Klasen announced their plans to shutdown operations last August on their <a href=\"https://simple-press.com/support-forum/\">customer support forum</a> and have had little luck finding a suitable replacement.</p>\n\n<img />\n	Simple:Press Forum in Action\n\n\n<p>Staines and Klasen will retire on August 1st. Everything related to the site, including the domain, plugin code, customer information, income, etc. will transfer to the new owner with no strings attached.</p>\n\n<blockquote class=\"wp-block-quote\">\n	<p>The forum plugin has been a labor of love for a long time. We don&#8217;t really want to see the plugin die because we have decided to retire. It has provided us a good secondary income for many years and has good potential for anyone who wished to make a go at it.<br /></p><cite>Steve Klasen</cite></blockquote>\n\n<p>Simple:Press is not available on the WordPress.org plugin directory and generates revenue through memberships, themes, and plugins. Those interested in taking over the plugin or to find out more information can contact Klasen and Staines through the <a href=\"https://simple-press.com/contact/\">Simple:Press Forum contact form</a>. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 06 Jun 2018 19:45:24 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:40;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"BuddyPress: BuddyPress 3.1.0 Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://buddypress.org/?p=274141\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://buddypress.org/2018/06/buddypress-3-1-0-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:817:\"<p>BuddyPress 3.1.0 is now available. This is a maintenance release that fixes 23 bugs and is a recommended upgrade for all BuddyPress installations.</p>\n<p>For more information, see the <a href=\"https://buddypress.trac.wordpress.org/query?group=status&milestone=3.1.0\">3.1.0 milestone</a> on <a href=\"https://buddypress.trac.wordpress.org/\">BuddyPress Trac</a>.</p>\n<p>Update to BuddyPress 3.1.0 today in your WordPress Dashboard, or by <a href=\"https://wordpress.org/plugins/buddypress/\">downloading from the wordpress.org plugin repository</a>.</p>\n<p>Questions or comments? Check out the <a href=\"https://codex.buddypress.org/releases/version-3-1-0/\">3.1.0 changelog</a>, or stop by our <a href=\"https://buddypress.org/support/\">support forums</a> or <a href=\"https://buddypress.trac.wordpress.org/\">Trac</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 06 Jun 2018 16:06:18 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"@mercime\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:41;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"WPTavern: WordCamp for iOS Renamed to WP Camps, More Events Added\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81108\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://wptavern.com/wordcamp-for-ios-renamed-to-wp-camps-more-events-added\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1268:\"<p>When Marcel Schmitz <a href=\"https://wptavern.com/marcel-schmitz-releases-unofficial-wordcamp-for-ios-app\">released his WordCamp for iOS app</a>, there was concern that it violated the <a href=\"https://wordpressfoundation.org/trademark-policy/\">WordCamp Trademark policy</a>. Schmitz has changed the name of the app to <a href=\"https://itunes.apple.com/gb/app/wordcamp/id1384323581?mt=8\">WP Camps,</a> describes it as a companion app for WordCamps, and has added a number of upcoming events.</p>\n\n<img />\n	WordCamp Kent, OH in WP Camps\n\n\n<p>In addition to these changes, Schmitz has also redesigned the app&#8217;s icon due to user feedback. <a href=\"https://schmitzoide.blog/wordcamp-ios-app-is-now-wp-camps-multiple-wordcamps-added/\">Version 1.1</a> sets the stage for search, chat, a who&#8217;s on stage feature, and more.</p>\n\n<p>If you&#8217;re organizing a WordCamp or WordPress event and want it added to the app, you can <a href=\"https://twitter.com/schmitzoide\">contact Schmitz on Twitter.</a> You can also click on the About section within the App to send him an email. </p>\n\n<p>WP Camps is an application for iOS devices and is <a href=\"https://itunes.apple.com/us/app/wp-camps/id1384323581?ls=1&mt=8\">available for free</a> on the Apple App Store.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 06 Jun 2018 03:29:59 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:42;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"HeroPress: Work is not just about Money\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://heropress.com/?post_type=heropress-essays&p=2560\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:130:\"https://heropress.com/essays/work-is-not-just-about-money/#utm_source=rss&utm_medium=rss&utm_campaign=work-is-not-just-about-money\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:7746:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/06/060618-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: It\'s about the satisfaction I feel when I see the impact I make on the community.\" /><p>Settle in, because you are about to read some worst and some even worst experiences that I have had in my life and yet how I am still pulling myself together.</p>\n<p>Before we get into it, I am going to tell you something about me. I am Libertarian, otaku. I LOVE to play with words. By profession I am an IT engineer but by passion I am a writer. I am writing about Microsoft &amp; other Technologies for various publications. I am also writing about Exciting Technology &amp; Mind-Boggling Science and am a co-founder of 2 sci-fi and technological news platform.</p>\n<p>I was so engaged in the world of Computer and Technology since the school time. I was excited about HTML, CSS, C and other basic computer programming concept since school. Recently, I completed my Bachelor of Engineering study (result is yet to be declared, but I think I will pass in all subject). And as of now, I don’t have any plans for further studies. Phew.</p>\n<h3>Talking about WordPress</h3>\n<p>My cousin introduced me with WordPress in 2010 when I completed 10th standard (grade). OMG! It’s been 8 years! However, at that time he gave me only basic WordPress work i.e.data entry. But later in college I was getting engaged in various freelancing work (mostly WordPress related) and that’s where the real journey with WordPress began!</p>\n<p>As of now, I have designed &amp; developed tons of websites with WordPress and modified up to dozens of themes. I enjoy working in WordPress so much that sometimes, I forget to take dinner. I am so committed to my work, it’s like passion to me.</p>\n<p>Fast forward to September 2016, I submitted my first WordPress theme “Frindle” to WordPress theme directory. After waiting for nearly 5 months in theme review queue, in January 2017, the theme reviewer rejected my theme, because theme had “5 or more issues” (31 I remembered correctly). And I was back to square one. But after this setback I pushed myself and resubmitted theme again in the very next month. This time everything worked out and the theme was approved in April 2017 and went live on 1st July 2017.</p>\n<p>A friend of mine from WordPress community set me up for an interview in her company. I got selected and they wanted me to join from very next day. I was so thrilled and excited but as I was still pursuing my engineering study. But, my college didn’t signed the NDA (for attendance) so I had to give up the opportunity.</p>\n<p>Later on, I submitted 2 more themes to the official WordPress theme directory, Horkos &amp; Ogee. Both of them are live right now and Ogee is getting significant user base. Later on, I joined a small web development company as a remote WordPress developer. And worked on so many projects.<br />\nWhile I was working on various freelancing WordPress projects, I was also doing content writing passionately. Now I am writing for several publication and news websites. Mostly I write about mind-boggling science and futuristic technology. Some of my anonymously written articles are featured on popular newsletter such as Slashdot.</p>\n<h3>This went well:</h3>\n<p>While I was in the last year of study, my cousin set me up for an interview for internship/training program. Everything was going perfect. The interviewer was impressed from my resume, but all of sudden, he started asking questions about technology which I am not aware of. I straightly said, “With all due respect sir, I don’t know anything about it, but if it’s worth I am ready to learn.” God knows what he heard but within 2 minutes he ended up saying “You are just wasting your life. You can go now.” I was like, man, it took me 30 minutes to find your office, please hear me out.</p>\n<p>But everything changed after this interview. When I was driving home from this interview, I got a call from an old friend and he asked me to write sci-fi articles for his new website. Wait! On the same day I got an email from a popular news website asking me to come onboard as a senior editor. I was like this is the worst best day of my life.</p>\n<h3>So no WordPress?</h3>\n<p>Well, here’s something good. In addition to this, right now I am perusing internship for PHP/WordPress and front-end developer in an MNC company. I am learning so many things nowadays, collaborating with team, project management, communication with clients and more!</p>\n<h3>Life nowadays</h3>\n<p>Every day, I wake up with a new task and go to sleep with a new idea. What is most aspiring in this is the platform that we all associated with. Even though I practice polyphasic sleep, I still need 5 extra hours in a day.</p>\n<p>I don’t work for money, I just do it because I am so passionate about it. I mean money is important but work is not just about it. It’s about the satisfaction I feel when I see the impact I make on the community.</p>\n<p>I am 22, but as of now, I don’t have a 9 to 5 permanent “job” nor a shoulder to cry on (you know what I mean). But I work a LOT. I love my keyboard. I’m highly sensitive. I spend my days immersing myself in the personal growth world. Maybe in some ways, I’m (definitely) not normal – some of the ways that I go against the grain of the society. And you know what? It’s okay.</p>\n<p>So yeah, I’m comfortably okay with the basic skills which I possess. I wonder when people will understand that it’s okay to be “okay”. Everything that was still is. So, whether I like it or not, I pull myself together and I do it all again.</p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Work is not just about Money\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Work%20is%20not%20just%20about%20Money&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fwork-is-not-just-about-money%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Work is not just about Money\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fwork-is-not-just-about-money%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fwork-is-not-just-about-money%2F&title=Work+is+not+just+about+Money\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Work is not just about Money\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/work-is-not-just-about-money/&media=https://heropress.com/wp-content/uploads/2018/06/060618-150x150.jpg&description=Work is not just about Money\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Work is not just about Money\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/essays/work-is-not-just-about-money/\" title=\"Work is not just about Money\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/essays/work-is-not-just-about-money/\">Work is not just about Money</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 06 Jun 2018 02:30:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Zipal Patel\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:43;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"WPTavern: Sustainability + WordPress = SustyWP\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81034\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wptavern.com/sustainability-wordpress-sustywp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:959:\"<p>Jack Lenox, a Software Engineer at Automattic, has launched a new site called <a href=\"https://sustywp.com/\">SustyWP</a> that focuses on web sustainability using WordPress.<br /></p>\n\n<p>By removing the parts of <a href=\"https://github.com/automattic/_s\">Underscores</a> he didn&#8217;t need, using one inline SVG image, no sidebars, limited CSS, and no webfonts, Lenox was able to launch a WordPress site that only has 7 Kilobytes of data transfer. <br /></p>\n\n<p>As you might expect, the site crushes page speed and performance benchmarks. The site is also hosted in a data center that uses 100% renewable energy.  To learn how and why he built the site, check out his <a href=\"https://blog.jacklenox.com/2018/06/04/delivering-wordpress-in-7kb/\">detailed blog post</a>.</p>\n\n<p>While only transferring seven kilobytes of data is commendable, these days, websites are feature-rich. I wonder how practical his methods are for large and complex sites. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 04 Jun 2018 20:41:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:44;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"Mark Jaquith: Lessons Learned Making ScoutDocs: Outsourcing\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"http://markjaquith.wordpress.com/?p=5642\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"https://markjaquith.wordpress.com/2018/06/01/lessons-learned-making-scoutdocs-outsourcing/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5156:\"<p>Now that <a href=\"https://wordpress.org/plugins/scoutdocs/\">ScoutDocs is in the WordPress plugin repository</a>, I&#8217;d like to share some lessons I learned making it. Every project teaches me something — this one taught me a lot.</p>\n<p><img /><em>What is <a href=\"https://scoutdocs.com/\">ScoutDocs</a>? ScoutDocs is a WordPress plugin that adds simple file-sharing to your WordPress site. You can upload files (which are stored securely in the cloud and served over HTTPS via a global CDN), and share them with individuals or groups of individuals. Email notifications are also handled by the ScoutDocs service, getting around the issue of reliable email delivery on a shared host. You can require that recipients accept or decline the files you&#8217;ve shared, e.g. so you can see which of your employees has seen the new employee handbook. Instead of files living as email attachments (if they even fit) or off on some third-party site, people can access them on your site.</em></p>\n<p>In this weekly series, I&#8217;m going to cover:</p>\n<ul>\n<li>Outsourcing</li>\n<li><a href=\"https://markjaquith.wordpress.com/2018/06/11/making-scoutdocs-react\">React</a></li>\n<li>WordPress Rest API</li>\n<li>PHP 7</li>\n<li>Build tools</li>\n<li>Unit testing</li>\n</ul>\n<p>First up, lessons learned about outsourcing.</p>\n<p>When we started making ScoutDocs, the question was raised as to whether it would be beneficial to outsource any of the coding. My time was valuable and limited, so I figured that if I had another developer code while I slept, I could spend an hour in the morning reviewing the code and giving them direction for the next workday. I had visions of quickly scanning code while my morning coffee brewed, twirling an invisible moustache, and muttering &#8220;good, good.&#8221;</p>\n<p>This is not what happened.</p>\n<p>The issue I quickly ran into was that for any nebulously defined problem, someone else&#8217;s solution was unlikely to match what I wanted. Their assumptions would not be the same as mine. As a result, the odds of me being happy with their solution were very low.</p>\n<p>I spent a lot of time rewriting code.</p>\n\n<a href=\"https://markjaquith.wordpress.com/2018/06/01/lessons-learned-making-scoutdocs-outsourcing/not-hiring/\"><img width=\"100\" height=\"56\" src=\"https://markjaquith.files.wordpress.com/2018/06/not-hiring.gif?w=100&h=56\" class=\"attachment-thumbnail size-thumbnail\" alt=\"\" /></a>\n<a href=\"https://markjaquith.wordpress.com/2018/06/01/lessons-learned-making-scoutdocs-outsourcing/spaces/\"><img width=\"100\" height=\"56\" src=\"https://markjaquith.files.wordpress.com/2018/06/spaces.gif?w=100&h=56\" class=\"attachment-thumbnail size-thumbnail\" alt=\"\" /></a>\n\n<p>And because I was spending all my time &#8220;fixing&#8221; the code I wasn&#8217;t really looking at the product as a whole.</p>\n<p>When the contractors were done, my ScoutDocs partners and I looked at it, and we realized that it&#8230; was bad. Forget code quality, which despite all my vain reshuffling was still lacking: what we had was just overall a terrible user experience. Rather horrifyingly, we admitted that what we needed to do to give it the user experience we wanted was nothing short of a total rewrite.</p>\n<p><img /></p>\n<p>I rolled up my sleeves, <a href=\"https://markjaquith.wordpress.com/2018/06/11/making-scoutdocs-react\">learned React</a>, and rewrote ScoutDocs until almost nothing of the original code and user experience remained.</p>\n<p>So was outsourcing a waste? Not completely. Some code was retained, mostly relating to the Amazon S3 interface. I was glad that someone else had experienced the singular joy of spending an eternity lost in a maze of Amazon Web Services documentation and confusing code samples. Additionally, if I had set out to build the initial version of the code, it would have taken a lot of my time (which I did not have much to spare), and might have meant that our horrifying realization would have been delayed for several months.</p>\n<p><strong>Knowing what doesn&#8217;t work is valuable</strong>, even if you have to throw it away. That&#8217;s mostly what we had gotten for our money: figuring out what didn&#8217;t work. If outsourcing can get you to these realizations sooner or for less money, it might be well worth it.</p>\n<p>As I rewrote the software, my partners asked me a few times if I regretted outsourcing. I didn&#8217;t, for the above reason, but also because outsourcing had solved some of the coding issues that would have been a slog for me. However, if I was doing it all over again, I would have done more work upfront to identify specific, well-defined tasks that I wanted to outsource.</p>\n<p><strong>Delegation makes sense when the task is well-defined.</strong> At the extreme, you could spend so much time redoing work and asking for revisions that you&#8217;d have been better off just doing it yourself. If you can specify exactly what constitutes success in a task, and the time it takes you to specify that is much less than the time it would take you to do the task, outsource it.</p>\n<p>Check back next week for my thoughts on rewriting ScoutDocs in React.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 01 Jun 2018 14:11:14 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Mark Jaquith\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:45;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"Dev Blog: The Month in WordPress: May 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6065\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wordpress.org/news/2018/06/the-month-in-wordpress-may-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4536:\"<p>This month saw two significant milestones in the WordPress community — the 15th anniversary of the project, and GDPR-related privacy tools coming to WordPress Core. Read on to find out more about this and everything else that happened in the WordPress community in May.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Local Communities Celebrate the 15th Anniversary of WordPress</h2>\n\n<p>Last Sunday, May 27, WordPress turned 15 years old. This is a noteworthy occasion for an open-source project like WordPress and one well worth celebrating. To mark the occasion, <a href=\"https://wp15.wordpress.net/\">WordPress communities across the world gathered</a> for parties and meetups in honor of the milestone.</p>\n\n<p>Altogether, there were 224 events globally, with <a href=\"https://wp15.wordpress.net/about/\">a few more of those still scheduled</a> to take place in some communities — attend one in your area if you can.</p>\n\n<p>If your city doesn’t have a WordPress meetup group, this is a great opportunity to start one! Learn how with <a href=\"https://make.wordpress.org/community/handbook/meetup-organizer/welcome/\">the Meetup Organizer Handbook</a>, and join the #community-events channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>.</p>\n\n<h2>Privacy Tools added to WordPress core</h2>\n\n<p>In light of recent changes to data privacy regulations in the EU, WordPress Core shipped important updates <a href=\"https://wordpress.org/news/2018/05/wordpress-4-9-6-privacy-and-maintenance-release/\">in the v4.9.6 release</a>, giving site owners tools to help them comply with the new General Data Protection Regulation (GDPR). It is worth noting, however, that WordPress cannot ensure you are compliant — this is still a site owner’s responsibility.</p>\n\n<p>The new privacy tools include a number of features focused on providing privacy and personal data management to all site users — asking commenters for explicit consent to store their details in a cookie, providing site owners with an easy way to publish a Privacy Policy, and providing data export and erasure tools to all site users that can be extended by plugins to allow the handling of data that they introduce.</p>\n\n<p>To find out more about these features and the other updates, read the <a href=\"https://make.wordpress.org/core/2018/05/17/4-9-6-update-guide/\">4.9.6 update guide</a>. You can also get involved in contributing to this part of WordPress Core by jumping into the #core-privacy channel in the<a href=\"https://make.wordpress.org/chat/\"> Making WordPress Slack group</a>, and following<a href=\"https://make.wordpress.org/core/\"> the Core team blog</a>.</p>\n\n<h2>Updates to the WordPress.org Privacy Policy</h2>\n\n<p>In a similar vein, WordPress.org itself has received <a href=\"https://wordpress.org/about/privacy/\">an updated Privacy Policy</a> to make clear what is being tracked and how your data is handled. Along with that, a <a href=\"https://wordpress.org/about/privacy/cookies/\">Cookie Policy</a> has also been added to explain just what is collected and stored in your browser when using the site.</p>\n\n<p>These policies cover all sites on the WordPress.org network — including WordPress.org, WordPress.net, WordCamp.org, BuddyPress.org, bbPress.org, and other related domains and subdomains. It’s important to note that this does not mean that anything has changed in terms of data storage; rather that these documents clarify what data is stored and how it is handled.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Further Reading:</h2>\n\n<ul>\n	<li>WordCamp US 2018 has <a href=\"https://2018.us.wordcamp.org/2018/05/29/speak-at-wordcamp-us/\">opened up speaker submissions</a> for the December event.</li>\n	<li><a href=\"https://2018.europe.wordcamp.org/2018/05/15/wceu-live-stream-tickets/\">Live stream tickets are now available for WordCamp Europe</a>, happening on June 14-16.</li>\n	<li>Gutenberg, the new editor for WordPress Core, is getting ever closer to the final stages with <a href=\"https://make.wordpress.org/core/2018/05/18/whats-new-in-gutenberg-18th-may/\">a major update</a> this month.</li>\n	<li>In preparation for Gutenberg, <a href=\"https://core.trac.wordpress.org/changeset/43309\">significant work has been done</a> to improve WordPress Core’s build process.</li>\n</ul>\n\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\">submit it here</a>.</em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 01 Jun 2018 09:09:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:46;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"WPTavern: Community Spotlight: James Huff (MacManX)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81014\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://wptavern.com/community-spotlight-james-huff-macmanx\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2473:\"<p>Providing support on the <a href=\"https://wordpress.org/support/\">WordPress.org forums</a> is one of the easiest ways to contribute to WordPress and those who do are some of the unsung heroes of the project. One of those heroes is James Huff known as <a href=\"https://wordpress.org/support/users/macmanx/\">MacManX</a> on the forums.</p>\n\n<p>Huff has been supporting users for 13 years and recently celebrated an awesome milestone reaching 50K replies. <br /></p>\n\n\n	<blockquote class=\"twitter-tweet\"><p lang=\"en\" dir=\"ltr\">Achievement Unlocked: Over 13 years of <a href=\"https://twitter.com/WordPress?ref_src=twsrc%5Etfw\">@WordPress</a> support, and 50,000 replies: <a href=\"https://t.co/0un3ggrKGI\">https://t.co/0un3ggrKGI</a> <a href=\"https://t.co/aKiwOuesk8\">pic.twitter.com/aKiwOuesk8</a></p>&mdash; James Huff (@MacManX) <a href=\"https://twitter.com/MacManX/status/1001958883303280640?ref_src=twsrc%5Etfw\">May 30, 2018</a></blockquote>\n\n\n<p>In this spotlight, we learn what drives Huff to provide support, what he&#8217;s learned, and what users can do to improve the likelihood a support request will be resolved. </p>\n\n<p><em>What drives your desire to help people with WordPress on the support forums?</em></p>\n\n<p>I like helping people succeed with WordPress. It&#8217;s kind of a legacy for me, because you never know if solving one blocker will lead to a life-changing site or service. If anything, I hope I made a few days better for a few folks.</p>\n\n<p><em>Any trends or common issues you’ve noticed in the past few months/years?</em></p>\n\n<p>Nothing out of the ordinary. Plugin and theme conflicts will always be the most common.</p>\n\n<p><em>What tips or suggestions do you have for users to increase the likelihood of solving their problem?</em></p>\n\n<p>Try the <a href=\"https://wordpress.org/plugins/health-check/\">Health Check</a> plugin first, its Troubleshooting Mode is great!</p>\n\n<p><em>What lessons have you learned by providing support in the forums?</em></p>\n\n<p>I learned about almost everything I have done to customize my sites first by helping someone else do it. Overall, I have learned quite a bit about WordPress just by helping other people. </p>\n\n<p>To learn more about James and how he got involved with supporting the WordPress community, watch <a href=\"https://wordpress.tv/2018/02/21/andrea-middleton-wordpress-is-a-banquet/\">this presentation</a> by Andrea Middleton from WordCamp Seattle 2017.</p>\n\n\n	\n\n\n<p><br /></p><br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 01 Jun 2018 02:38:02 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:47;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"WPTavern: WPWeekly Episode 318 – Happy 15th Birthday WordPress 0.70\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=81007&preview=true&preview_id=81007\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://wptavern.com/wpweekly-episode-318-happy-15th-birthday-wordpress-0-70\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1431:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I look back at 15 years of WordPress. We discuss the journey so far and where we think the project is going. Hint, it involves JavaScript. We also do a bit of self-reflection on how WordPress fits into our lives and where we see us fitting into its future. For giggles, we did some WordPress trivia as well.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://ma.tt/2018/05/wordpress-at-15/\">Matt’s Birthday Post</a><br />\n<a href=\"https://wordpress.org/news/2003/05/wordpress-now-available/\">WordPress Now Available</a><br />\n<a href=\"https://wordpress.org/news/category/releases/\">WordPress Release History</a><br />\n<a href=\"https://twitter.com/search?q=%23wp15&src=typd\">#wp15 on Twitter</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, June 6th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #318:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 01 Jun 2018 01:27:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:48;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"HeroPress: Freedom to Parent\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=2556\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"https://heropress.com/freedom-to-parent/#utm_source=rss&utm_medium=rss&utm_campaign=freedom-to-parent\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3038:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2015/11/MyPride-HeroPress-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull quote: WordPress has given me much more than just a job. It has given me back my pride, my strength, a social life.\" /><p>In any post about how WordPress changes lives the word Freedom invariably comes up. Freedom to be yourself, to travel, to grow, learn, even age. This week&#8217;s replay is about the freedom to parent.</p>\n<p>Ines was a young single mother without advanced education during an economic downturn. Things seemed bleak.</p>\n<p>Through her own hard work and effort she learned the fundamentals of web development, but it was WordPress that allowed her to pursue that profession from her own home. She was able to be home with her baby and care for him the way she saw fit. He was able to grow getting to know his mother every day instead of a day care worker.</p>\n<p>WordPress can be an incredible source of freedom for single parents, allowing them to have a solid career while also being good parents.</p>\n<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/getting-a-life/\">Getting A Life</a></p></blockquote>\n<p></p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Freedom to Parent\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Freedom%20to%20Parent&via=heropress&url=https%3A%2F%2Fheropress.com%2Ffreedom-to-parent%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Freedom to Parent\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Ffreedom-to-parent%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Ffreedom-to-parent%2F&title=Freedom+to+Parent\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Freedom to Parent\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/freedom-to-parent/&media=https://heropress.com/wp-content/uploads/2015/11/MyPride-HeroPress-150x150.jpg&description=Freedom to Parent\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Freedom to Parent\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/freedom-to-parent/\" title=\"Freedom to Parent\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/freedom-to-parent/\">Freedom to Parent</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 31 May 2018 14:00:15 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:49;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"WPTavern: One Way to Whitelist and Blacklist Blocks in Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80994\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://wptavern.com/one-way-to-whitelist-and-blacklist-blocks-in-gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1044:\"<p><a href=\"https://wordpress.org/plugins/gutenberg/\">Gutenberg</a> ships with a number of blocks but what if your client or project doesn&#8217;t need most of them? The <a href=\"https://wordpress.org/gutenberg/handbook/extensibility/extending-blocks/\">Gutenberg Handbook explains</a> how to create a whitelist and a blacklist for blocks but in some circumstances, Gutenberg does not respect the allowed_block_types filter.</p>\n\n<p>Jason Bahl, a WordPress Engineer at Digital First Media, <a href=\"http://jasonbahl.com/2018/05/29/whitelisting-blacklisting-blocks/\">published a tutorial</a> that explains how to whitelist and blacklist blocks using a filterable, localized array.</p>\n\n<p>One thing to keep in mind is that Gutenberg development is in a high state of flux and Bahl warns that his technique is fragile and will likely cause things to break over time. He suggests keeping a close eye on <a href=\"https://github.com/WordPress/gutenberg\">Gutenberg development</a> to see how blacklisting/whitelisting evolves in the plugin. <br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 31 May 2018 01:07:45 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Thu, 05 Jul 2018 04:11:01 GMT\";s:12:\"content-type\";s:8:\"text/xml\";s:4:\"vary\";s:15:\"Accept-Encoding\";s:13:\"last-modified\";s:29:\"Thu, 05 Jul 2018 04:00:28 GMT\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 2\";s:16:\"content-encoding\";s:4:\"gzip\";}}s:5:\"build\";s:14:\"20180702045737\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(750, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1530807062', 'no'),
(751, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1530763862', 'no'),
(752, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1530807062', 'no'),
(753, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 28: Operation timed out after 10000 milliseconds with 0 bytes received</p></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://heropress.com/essays/coding-under-trees-and-in-24-hour-coffee-shops/#utm_source=rss&#038;utm_medium=rss&#038;utm_campaign=coding-under-trees-and-in-24-hour-coffee-shops\'>HeroPress: Coding under trees and in 24 hour coffee shops</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/wordcamp-incubator-program-2018-to-host-events-in-montevideo-uruguay-and-kota-kinabalu-malaysia\'>WPTavern: WordCamp Incubator Program 2018 to Host Events in Montevideo, Uruguay and Kota Kinabalu, Malaysia</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/block-unit-test-plugin-helps-wordpress-theme-developers-prepare-for-gutenberg\'>WPTavern: Block Unit Test Plugin Helps WordPress Theme Developers Prepare for Gutenberg</a></li></ul></div>', 'no'),
(756, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(759, '_transient_timeout_wc_term_counts', '1533356323', 'no'),
(760, '_transient_wc_term_counts', 'a:6:{i:15;s:2:\"18\";i:24;s:0:\"\";i:25;s:0:\"\";i:26;s:0:\"\";i:27;s:0:\"\";i:28;s:0:\"\";}', 'no'),
(761, '_transient_timeout_wc_low_stock_count', '1533357287', 'no'),
(762, '_transient_wc_low_stock_count', '0', 'no'),
(763, '_transient_timeout_wc_outofstock_count', '1533357287', 'no'),
(764, '_transient_wc_outofstock_count', '0', 'no'),
(769, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1530831030', 'no'),
(770, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:0:{}}', 'no'),
(804, '_site_transient_timeout_theme_roots', '1530787127', 'no'),
(805, '_site_transient_theme_roots', 'a:1:{s:6:\"jayahr\";s:7:\"/themes\";}', 'no'),
(807, '_transient_timeout_wc_shipping_method_count_1_1530611679', '1533379211', 'no'),
(808, '_transient_wc_shipping_method_count_1_1530611679', '0', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
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
(10, 5, '_menu_item_url', '#'),
(12, 6, '_menu_item_type', 'custom'),
(13, 6, '_menu_item_menu_item_parent', '0'),
(14, 6, '_menu_item_object_id', '6'),
(15, 6, '_menu_item_object', 'custom'),
(16, 6, '_menu_item_target', ''),
(17, 6, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(18, 6, '_menu_item_xfn', ''),
(19, 6, '_menu_item_url', '#'),
(21, 7, '_menu_item_type', 'custom'),
(22, 7, '_menu_item_menu_item_parent', '0'),
(23, 7, '_menu_item_object_id', '7'),
(24, 7, '_menu_item_object', 'custom'),
(25, 7, '_menu_item_target', ''),
(26, 7, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(27, 7, '_menu_item_xfn', ''),
(28, 7, '_menu_item_url', '#'),
(48, 10, '_menu_item_type', 'custom'),
(49, 10, '_menu_item_menu_item_parent', '0'),
(50, 10, '_menu_item_object_id', '10'),
(51, 10, '_menu_item_object', 'custom'),
(52, 10, '_menu_item_target', ''),
(53, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(54, 10, '_menu_item_xfn', ''),
(55, 10, '_menu_item_url', '#'),
(57, 11, '_menu_item_type', 'custom'),
(58, 11, '_menu_item_menu_item_parent', '0'),
(59, 11, '_menu_item_object_id', '11'),
(60, 11, '_menu_item_object', 'custom'),
(61, 11, '_menu_item_target', ''),
(62, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(63, 11, '_menu_item_xfn', ''),
(64, 11, '_menu_item_url', '#'),
(102, 16, '_menu_item_type', 'custom'),
(103, 16, '_menu_item_menu_item_parent', '11'),
(104, 16, '_menu_item_object_id', '16'),
(105, 16, '_menu_item_object', 'custom'),
(106, 16, '_menu_item_target', ''),
(107, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(108, 16, '_menu_item_xfn', ''),
(109, 16, '_menu_item_url', '#'),
(111, 17, '_menu_item_type', 'custom'),
(112, 17, '_menu_item_menu_item_parent', '11'),
(113, 17, '_menu_item_object_id', '17'),
(114, 17, '_menu_item_object', 'custom'),
(115, 17, '_menu_item_target', ''),
(116, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(117, 17, '_menu_item_xfn', ''),
(118, 17, '_menu_item_url', '#'),
(120, 18, '_menu_item_type', 'custom'),
(121, 18, '_menu_item_menu_item_parent', '11'),
(122, 18, '_menu_item_object_id', '18'),
(123, 18, '_menu_item_object', 'custom'),
(124, 18, '_menu_item_target', ''),
(125, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(126, 18, '_menu_item_xfn', ''),
(127, 18, '_menu_item_url', '#'),
(129, 19, '_wp_attached_file', '2018/07/logo.png'),
(130, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:291;s:6:\"height\";i:30;s:4:\"file\";s:16:\"2018/07/logo.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-150x30.png\";s:5:\"width\";i:150;s:6:\"height\";i:30;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-100x30.png\";s:5:\"width\";i:100;s:6:\"height\";i:30;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-100x30.png\";s:5:\"width\";i:100;s:6:\"height\";i:30;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(158, 23, '_menu_item_type', 'custom'),
(159, 23, '_menu_item_menu_item_parent', '0'),
(160, 23, '_menu_item_object_id', '23'),
(161, 23, '_menu_item_object', 'custom'),
(162, 23, '_menu_item_target', ''),
(163, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(164, 23, '_menu_item_xfn', ''),
(165, 23, '_menu_item_url', '#'),
(167, 24, '_menu_item_type', 'custom'),
(168, 24, '_menu_item_menu_item_parent', '0'),
(169, 24, '_menu_item_object_id', '24'),
(170, 24, '_menu_item_object', 'custom'),
(171, 24, '_menu_item_target', ''),
(172, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(173, 24, '_menu_item_xfn', ''),
(174, 24, '_menu_item_url', '#'),
(176, 25, '_menu_item_type', 'custom'),
(177, 25, '_menu_item_menu_item_parent', '0'),
(178, 25, '_menu_item_object_id', '25'),
(179, 25, '_menu_item_object', 'custom'),
(180, 25, '_menu_item_target', ''),
(181, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(182, 25, '_menu_item_xfn', ''),
(183, 25, '_menu_item_url', '#'),
(185, 26, '_menu_item_type', 'custom'),
(186, 26, '_menu_item_menu_item_parent', '0'),
(187, 26, '_menu_item_object_id', '26'),
(188, 26, '_menu_item_object', 'custom'),
(189, 26, '_menu_item_target', ''),
(190, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(191, 26, '_menu_item_xfn', ''),
(192, 26, '_menu_item_url', '#'),
(193, 27, '_edit_last', '1'),
(194, 27, '_edit_lock', '1530788017:1'),
(195, 27, '_wp_page_template', 'sidebar.php'),
(196, 29, '_edit_last', '1'),
(197, 29, '_edit_lock', '1530788016:1'),
(200, 44, '_wp_attached_file', '2018/07/cat-2.png'),
(201, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:552;s:6:\"height\";i:649;s:4:\"file\";s:17:\"2018/07/cat-2.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"cat-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"cat-2-255x300.png\";s:5:\"width\";i:255;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"cat-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"cat-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"cat-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"cat-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(202, 27, 'image', '44'),
(203, 27, '_image', 'field_5b3ae86b2b1b2'),
(204, 27, 'title', '\"Creating   the details   that matter\"'),
(205, 27, '_title', 'field_5b3ae8822b1b3'),
(206, 27, 'description', 'Nullam imperdiet dapibus ipsum in pulvinar. Maecenas egestas ipsum eget magna venenatis, in aliquet metus dictum. Etiam porta magna non urna aliquet mattis. Donec accumsan lorem lacinia ante vulputate suscipit. Sed convallis dictum lacinia. '),
(207, 27, '_description', 'field_5b3ae88c2b1b4'),
(208, 27, 'text_link', 'LEARN MORE'),
(209, 27, '_text_link', 'field_5b3ae8a22b1b5'),
(210, 27, 'link', ''),
(211, 27, '_link', 'field_5b3ae8ac2b1b6'),
(212, 45, 'image', '44'),
(213, 45, '_image', 'field_5b3ae86b2b1b2'),
(214, 45, 'title', '\"Creating   the details   that matter\"'),
(215, 45, '_title', 'field_5b3ae8822b1b3'),
(216, 45, 'description', 'Nullam imperdiet dapibus ipsum in pulvinar. Maecenas egestas ipsum eget magna venenatis, in aliquet metus dictum. Etiam porta magna non urna aliquet mattis. Donec accumsan lorem lacinia ante vulputate suscipit. Sed convallis dictum lacinia. '),
(217, 45, '_description', 'field_5b3ae88c2b1b4'),
(218, 45, 'text_link', 'LEARN MORE'),
(219, 45, '_text_link', 'field_5b3ae8a22b1b5'),
(220, 45, 'link', ''),
(221, 45, '_link', 'field_5b3ae8ac2b1b6'),
(222, 27, 'section_1_image', '60'),
(223, 27, '_section_1_image', 'field_5b3aeb0a0b025'),
(224, 27, 'section_1_title', 'Aenean ut libero eu nunc faucibus'),
(225, 27, '_section_1_title', 'field_5b3aeb1c0b026'),
(226, 27, 'section_1_description', 'Vestibulum scelerisque quis sem a aliquet. Sed eu diam sit amet purus suscipit porta in eget velit. Phasellus volutpat turpis ac congue efficitur. Maecenas pulvinar egestas semper. Sed blandit a purus non volutpat. Vivamus aliquam ante augue, at sagittis nulla commodo viverra. Donec hendrerit tellus at vestibulum tristique. Aenean in quam tortor. Integer blandit non enim sit amet molestie. Integer consectetur dignissim enim. Pellentesque eget metus tellus.'),
(227, 27, '_section_1_description', 'field_5b3aeb280b027'),
(228, 27, 'section_1_text_link', 'DÉCOUVRIR'),
(229, 27, '_section_1_text_link', 'field_5b3aeb450b028'),
(230, 27, 'section_1_link', ''),
(231, 27, '_section_1_link', 'field_5b3aeb530b029'),
(232, 27, 'section_1', ''),
(233, 27, '_section_1', 'field_5b3ae8442b1b0'),
(234, 27, 'section_2_image', '44'),
(235, 27, '_section_2_image', 'field_5b3aeb6e0b02b'),
(236, 27, 'section_2_title', '\"Creating   the details   that matter\"'),
(237, 27, '_section_2_title', 'field_5b3aeb6e0b02c'),
(238, 27, 'section_2_description', 'Nullam imperdiet dapibus ipsum in pulvinar. Maecenas egestas ipsum eget magna venenatis, in aliquet metus dictum. Etiam porta magna non urna aliquet mattis. Donec accumsan lorem lacinia ante vulputate suscipit. Sed convallis dictum lacinia. '),
(239, 27, '_section_2_description', 'field_5b3aeb6e0b02d'),
(240, 27, 'section_2_text_link', 'LEARN MORE'),
(241, 27, '_section_2_text_link', 'field_5b3aeb6e0b02e'),
(242, 27, 'section_2_link', ''),
(243, 27, '_section_2_link', 'field_5b3aeb6e0b02f'),
(244, 27, 'section_2', ''),
(245, 27, '_section_2', 'field_5b3aeb6e0b02a'),
(246, 59, 'image', '44'),
(247, 59, '_image', 'field_5b3ae86b2b1b2'),
(248, 59, 'title', '\"Creating   the details   that matter\"'),
(249, 59, '_title', 'field_5b3ae8822b1b3'),
(250, 59, 'description', 'Nullam imperdiet dapibus ipsum in pulvinar. Maecenas egestas ipsum eget magna venenatis, in aliquet metus dictum. Etiam porta magna non urna aliquet mattis. Donec accumsan lorem lacinia ante vulputate suscipit. Sed convallis dictum lacinia. '),
(251, 59, '_description', 'field_5b3ae88c2b1b4'),
(252, 59, 'text_link', 'LEARN MORE'),
(253, 59, '_text_link', 'field_5b3ae8a22b1b5'),
(254, 59, 'link', ''),
(255, 59, '_link', 'field_5b3ae8ac2b1b6'),
(256, 59, 'section_1_image', '43'),
(257, 59, '_section_1_image', 'field_5b3aeb0a0b025'),
(258, 59, 'section_1_title', 'Aenean ut libero eu nunc faucibus'),
(259, 59, '_section_1_title', 'field_5b3aeb1c0b026'),
(260, 59, 'section_1_description', 'Vestibulum scelerisque quis sem a aliquet. Sed eu diam sit amet purus suscipit porta in eget velit. Phasellus volutpat turpis ac congue efficitur. Maecenas pulvinar egestas semper. Sed blandit a purus non volutpat. Vivamus aliquam ante augue, at sagittis nulla commodo viverra. Donec hendrerit tellus at vestibulum tristique. Aenean in quam tortor. Integer blandit non enim sit amet molestie. Integer consectetur dignissim enim. Pellentesque eget metus tellus.'),
(261, 59, '_section_1_description', 'field_5b3aeb280b027'),
(262, 59, 'section_1_text_link', 'DÉCOUVRIR'),
(263, 59, '_section_1_text_link', 'field_5b3aeb450b028'),
(264, 59, 'section_1_link', ''),
(265, 59, '_section_1_link', 'field_5b3aeb530b029'),
(266, 59, 'section_1', ''),
(267, 59, '_section_1', 'field_5b3ae8442b1b0'),
(268, 59, 'section_2_image', '44'),
(269, 59, '_section_2_image', 'field_5b3aeb6e0b02b'),
(270, 59, 'section_2_title', '\"Creating   the details   that matter\"'),
(271, 59, '_section_2_title', 'field_5b3aeb6e0b02c'),
(272, 59, 'section_2_description', 'Nullam imperdiet dapibus ipsum in pulvinar. Maecenas egestas ipsum eget magna venenatis, in aliquet metus dictum. Etiam porta magna non urna aliquet mattis. Donec accumsan lorem lacinia ante vulputate suscipit. Sed convallis dictum lacinia. '),
(273, 59, '_section_2_description', 'field_5b3aeb6e0b02d'),
(274, 59, 'section_2_text_link', 'LEARN MORE'),
(275, 59, '_section_2_text_link', 'field_5b3aeb6e0b02e'),
(276, 59, 'section_2_link', ''),
(277, 59, '_section_2_link', 'field_5b3aeb6e0b02f'),
(278, 59, 'section_2', ''),
(279, 59, '_section_2', 'field_5b3aeb6e0b02a'),
(280, 60, '_wp_attached_file', '2018/07/cat-1.jpg'),
(281, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:872;s:4:\"file\";s:17:\"2018/07/cat-1.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"cat-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"cat-1-258x300.jpg\";s:5:\"width\";i:258;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"cat-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:17:\"cat-1-600x698.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:698;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"cat-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"cat-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"cat-1-600x698.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:698;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"cat-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(282, 61, 'image', '44'),
(283, 61, '_image', 'field_5b3ae86b2b1b2'),
(284, 61, 'title', '\"Creating   the details   that matter\"'),
(285, 61, '_title', 'field_5b3ae8822b1b3'),
(286, 61, 'description', 'Nullam imperdiet dapibus ipsum in pulvinar. Maecenas egestas ipsum eget magna venenatis, in aliquet metus dictum. Etiam porta magna non urna aliquet mattis. Donec accumsan lorem lacinia ante vulputate suscipit. Sed convallis dictum lacinia. '),
(287, 61, '_description', 'field_5b3ae88c2b1b4'),
(288, 61, 'text_link', 'LEARN MORE'),
(289, 61, '_text_link', 'field_5b3ae8a22b1b5'),
(290, 61, 'link', ''),
(291, 61, '_link', 'field_5b3ae8ac2b1b6'),
(292, 61, 'section_1_image', '60'),
(293, 61, '_section_1_image', 'field_5b3aeb0a0b025'),
(294, 61, 'section_1_title', 'Aenean ut libero eu nunc faucibus'),
(295, 61, '_section_1_title', 'field_5b3aeb1c0b026'),
(296, 61, 'section_1_description', 'Vestibulum scelerisque quis sem a aliquet. Sed eu diam sit amet purus suscipit porta in eget velit. Phasellus volutpat turpis ac congue efficitur. Maecenas pulvinar egestas semper. Sed blandit a purus non volutpat. Vivamus aliquam ante augue, at sagittis nulla commodo viverra. Donec hendrerit tellus at vestibulum tristique. Aenean in quam tortor. Integer blandit non enim sit amet molestie. Integer consectetur dignissim enim. Pellentesque eget metus tellus.'),
(297, 61, '_section_1_description', 'field_5b3aeb280b027'),
(298, 61, 'section_1_text_link', 'DÉCOUVRIR'),
(299, 61, '_section_1_text_link', 'field_5b3aeb450b028'),
(300, 61, 'section_1_link', ''),
(301, 61, '_section_1_link', 'field_5b3aeb530b029'),
(302, 61, 'section_1', ''),
(303, 61, '_section_1', 'field_5b3ae8442b1b0'),
(304, 61, 'section_2_image', '44'),
(305, 61, '_section_2_image', 'field_5b3aeb6e0b02b'),
(306, 61, 'section_2_title', '\"Creating   the details   that matter\"'),
(307, 61, '_section_2_title', 'field_5b3aeb6e0b02c'),
(308, 61, 'section_2_description', 'Nullam imperdiet dapibus ipsum in pulvinar. Maecenas egestas ipsum eget magna venenatis, in aliquet metus dictum. Etiam porta magna non urna aliquet mattis. Donec accumsan lorem lacinia ante vulputate suscipit. Sed convallis dictum lacinia. '),
(309, 61, '_section_2_description', 'field_5b3aeb6e0b02d'),
(310, 61, 'section_2_text_link', 'LEARN MORE'),
(311, 61, '_section_2_text_link', 'field_5b3aeb6e0b02e'),
(312, 61, 'section_2_link', ''),
(313, 61, '_section_2_link', 'field_5b3aeb6e0b02f'),
(314, 61, 'section_2', ''),
(315, 61, '_section_2', 'field_5b3aeb6e0b02a'),
(316, 65, '_wp_attached_file', '2018/07/offical-1.jpg'),
(317, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:255;s:6:\"height\";i:255;s:4:\"file\";s:21:\"2018/07/offical-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"offical-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"offical-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"offical-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(318, 66, '_wp_attached_file', '2018/07/offical-2.jpg'),
(319, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:255;s:6:\"height\";i:255;s:4:\"file\";s:21:\"2018/07/offical-2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"offical-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"offical-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"offical-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(320, 67, '_wp_attached_file', '2018/07/offical-3.jpg'),
(321, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:255;s:6:\"height\";i:255;s:4:\"file\";s:21:\"2018/07/offical-3.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"offical-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"offical-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"offical-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(322, 68, '_wp_attached_file', '2018/07/offical-4.jpg'),
(323, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:255;s:6:\"height\";i:255;s:4:\"file\";s:21:\"2018/07/offical-4.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"offical-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"offical-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"offical-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(324, 69, '_wp_attached_file', '2018/07/offical-5.jpg'),
(325, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:255;s:6:\"height\";i:255;s:4:\"file\";s:21:\"2018/07/offical-5.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"offical-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"offical-5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"offical-5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(326, 70, '_wp_attached_file', '2018/07/offical-6.jpg'),
(327, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:255;s:6:\"height\";i:255;s:4:\"file\";s:21:\"2018/07/offical-6.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"offical-6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"offical-6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"offical-6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(328, 27, 'official_gallery', 'a:6:{i:0;s:2:\"65\";i:1;s:2:\"66\";i:2;s:2:\"67\";i:3;s:2:\"68\";i:4;s:2:\"69\";i:5;s:2:\"70\";}'),
(329, 27, '_official_gallery', 'field_5b3b004daeb56'),
(330, 27, 'official_link', ''),
(331, 27, '_official_link', 'field_5b3b00a4aeb57'),
(332, 27, 'official', ''),
(333, 27, '_official', 'field_5b3b0036aeb55'),
(334, 71, 'image', '44'),
(335, 71, '_image', 'field_5b3ae86b2b1b2'),
(336, 71, 'title', '\"Creating   the details   that matter\"'),
(337, 71, '_title', 'field_5b3ae8822b1b3'),
(338, 71, 'description', 'Nullam imperdiet dapibus ipsum in pulvinar. Maecenas egestas ipsum eget magna venenatis, in aliquet metus dictum. Etiam porta magna non urna aliquet mattis. Donec accumsan lorem lacinia ante vulputate suscipit. Sed convallis dictum lacinia. '),
(339, 71, '_description', 'field_5b3ae88c2b1b4'),
(340, 71, 'text_link', 'LEARN MORE'),
(341, 71, '_text_link', 'field_5b3ae8a22b1b5'),
(342, 71, 'link', ''),
(343, 71, '_link', 'field_5b3ae8ac2b1b6'),
(344, 71, 'section_1_image', '60'),
(345, 71, '_section_1_image', 'field_5b3aeb0a0b025'),
(346, 71, 'section_1_title', 'Aenean ut libero eu nunc faucibus'),
(347, 71, '_section_1_title', 'field_5b3aeb1c0b026'),
(348, 71, 'section_1_description', 'Vestibulum scelerisque quis sem a aliquet. Sed eu diam sit amet purus suscipit porta in eget velit. Phasellus volutpat turpis ac congue efficitur. Maecenas pulvinar egestas semper. Sed blandit a purus non volutpat. Vivamus aliquam ante augue, at sagittis nulla commodo viverra. Donec hendrerit tellus at vestibulum tristique. Aenean in quam tortor. Integer blandit non enim sit amet molestie. Integer consectetur dignissim enim. Pellentesque eget metus tellus.'),
(349, 71, '_section_1_description', 'field_5b3aeb280b027'),
(350, 71, 'section_1_text_link', 'DÉCOUVRIR'),
(351, 71, '_section_1_text_link', 'field_5b3aeb450b028'),
(352, 71, 'section_1_link', ''),
(353, 71, '_section_1_link', 'field_5b3aeb530b029'),
(354, 71, 'section_1', ''),
(355, 71, '_section_1', 'field_5b3ae8442b1b0'),
(356, 71, 'section_2_image', '44'),
(357, 71, '_section_2_image', 'field_5b3aeb6e0b02b'),
(358, 71, 'section_2_title', '\"Creating   the details   that matter\"'),
(359, 71, '_section_2_title', 'field_5b3aeb6e0b02c'),
(360, 71, 'section_2_description', 'Nullam imperdiet dapibus ipsum in pulvinar. Maecenas egestas ipsum eget magna venenatis, in aliquet metus dictum. Etiam porta magna non urna aliquet mattis. Donec accumsan lorem lacinia ante vulputate suscipit. Sed convallis dictum lacinia. '),
(361, 71, '_section_2_description', 'field_5b3aeb6e0b02d'),
(362, 71, 'section_2_text_link', 'LEARN MORE'),
(363, 71, '_section_2_text_link', 'field_5b3aeb6e0b02e'),
(364, 71, 'section_2_link', ''),
(365, 71, '_section_2_link', 'field_5b3aeb6e0b02f'),
(366, 71, 'section_2', ''),
(367, 71, '_section_2', 'field_5b3aeb6e0b02a'),
(368, 71, 'official_gallery', 'a:6:{i:0;s:2:\"65\";i:1;s:2:\"66\";i:2;s:2:\"67\";i:3;s:2:\"68\";i:4;s:2:\"69\";i:5;s:2:\"70\";}'),
(369, 71, '_official_gallery', 'field_5b3b004daeb56'),
(370, 71, 'official_link', ''),
(371, 71, '_official_link', 'field_5b3b00a4aeb57'),
(372, 71, 'official', ''),
(373, 71, '_official', 'field_5b3b0036aeb55'),
(374, 77, '_wp_attached_file', '2018/07/store-bg.jpg'),
(375, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1366;s:6:\"height\";i:719;s:4:\"file\";s:20:\"2018/07/store-bg.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"store-bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"store-bg-300x158.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:158;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"store-bg-768x404.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:404;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"store-bg-1024x539.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:539;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"store-bg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"store-bg-600x316.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:316;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"store-bg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"store-bg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"store-bg-600x316.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:316;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"store-bg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(376, 27, 'contact_background', '77'),
(377, 27, '_contact_background', 'field_5b3b190b10e96'),
(378, 27, 'contact_map', 'a:3:{s:7:\"address\";s:23:\"A4, Addu City, Maldives\";s:3:\"lat\";s:19:\"-0.6774881521434611\";s:3:\"lng\";s:17:\"73.19501308900703\";}'),
(379, 27, '_contact_map', 'field_5b3b191d10e97'),
(380, 27, 'contact_title', 'Jay ahr concept store'),
(381, 27, '_contact_title', 'field_5b3b192e10e98'),
(382, 27, 'contact_information', '<ul>\r\n 	<li><strong>A.</strong>   Villingili Island, Addu Atoll, Maldives</li>\r\n 	<li><strong>T.</strong>   <a href=\"tel:(960) 689 7888\">(960) 689 7888</a></li>\r\n 	<li><strong>F.</strong>   <a href=\"(960) 689 7999\">(960) 689 7999</a></li>\r\n</ul>'),
(383, 27, '_contact_information', 'field_5b3b193d10e99'),
(384, 27, 'contact', ''),
(385, 27, '_contact', 'field_5b3b18fe10e95'),
(386, 78, 'image', '44'),
(387, 78, '_image', 'field_5b3ae86b2b1b2'),
(388, 78, 'title', '\"Creating   the details   that matter\"'),
(389, 78, '_title', 'field_5b3ae8822b1b3'),
(390, 78, 'description', 'Nullam imperdiet dapibus ipsum in pulvinar. Maecenas egestas ipsum eget magna venenatis, in aliquet metus dictum. Etiam porta magna non urna aliquet mattis. Donec accumsan lorem lacinia ante vulputate suscipit. Sed convallis dictum lacinia. '),
(391, 78, '_description', 'field_5b3ae88c2b1b4'),
(392, 78, 'text_link', 'LEARN MORE'),
(393, 78, '_text_link', 'field_5b3ae8a22b1b5'),
(394, 78, 'link', ''),
(395, 78, '_link', 'field_5b3ae8ac2b1b6'),
(396, 78, 'section_1_image', '60'),
(397, 78, '_section_1_image', 'field_5b3aeb0a0b025'),
(398, 78, 'section_1_title', 'Aenean ut libero eu nunc faucibus'),
(399, 78, '_section_1_title', 'field_5b3aeb1c0b026'),
(400, 78, 'section_1_description', 'Vestibulum scelerisque quis sem a aliquet. Sed eu diam sit amet purus suscipit porta in eget velit. Phasellus volutpat turpis ac congue efficitur. Maecenas pulvinar egestas semper. Sed blandit a purus non volutpat. Vivamus aliquam ante augue, at sagittis nulla commodo viverra. Donec hendrerit tellus at vestibulum tristique. Aenean in quam tortor. Integer blandit non enim sit amet molestie. Integer consectetur dignissim enim. Pellentesque eget metus tellus.'),
(401, 78, '_section_1_description', 'field_5b3aeb280b027'),
(402, 78, 'section_1_text_link', 'DÉCOUVRIR'),
(403, 78, '_section_1_text_link', 'field_5b3aeb450b028'),
(404, 78, 'section_1_link', ''),
(405, 78, '_section_1_link', 'field_5b3aeb530b029'),
(406, 78, 'section_1', ''),
(407, 78, '_section_1', 'field_5b3ae8442b1b0'),
(408, 78, 'section_2_image', '44'),
(409, 78, '_section_2_image', 'field_5b3aeb6e0b02b'),
(410, 78, 'section_2_title', '\"Creating   the details   that matter\"'),
(411, 78, '_section_2_title', 'field_5b3aeb6e0b02c'),
(412, 78, 'section_2_description', 'Nullam imperdiet dapibus ipsum in pulvinar. Maecenas egestas ipsum eget magna venenatis, in aliquet metus dictum. Etiam porta magna non urna aliquet mattis. Donec accumsan lorem lacinia ante vulputate suscipit. Sed convallis dictum lacinia. '),
(413, 78, '_section_2_description', 'field_5b3aeb6e0b02d'),
(414, 78, 'section_2_text_link', 'LEARN MORE'),
(415, 78, '_section_2_text_link', 'field_5b3aeb6e0b02e'),
(416, 78, 'section_2_link', ''),
(417, 78, '_section_2_link', 'field_5b3aeb6e0b02f'),
(418, 78, 'section_2', ''),
(419, 78, '_section_2', 'field_5b3aeb6e0b02a'),
(420, 78, 'official_gallery', 'a:6:{i:0;s:2:\"65\";i:1;s:2:\"66\";i:2;s:2:\"67\";i:3;s:2:\"68\";i:4;s:2:\"69\";i:5;s:2:\"70\";}'),
(421, 78, '_official_gallery', 'field_5b3b004daeb56'),
(422, 78, 'official_link', ''),
(423, 78, '_official_link', 'field_5b3b00a4aeb57'),
(424, 78, 'official', ''),
(425, 78, '_official', 'field_5b3b0036aeb55'),
(426, 78, 'contact_background', '77'),
(427, 78, '_contact_background', 'field_5b3b190b10e96'),
(428, 78, 'contact_map', 'a:3:{s:7:\"address\";s:23:\"A4, Addu City, Maldives\";s:3:\"lat\";s:10:\"-0.6784805\";s:3:\"lng\";s:17:\"73.19469860000004\";}'),
(429, 78, '_contact_map', 'field_5b3b191d10e97'),
(430, 78, 'contact_title', 'Jay ahr concept store'),
(431, 78, '_contact_title', 'field_5b3b192e10e98'),
(432, 78, 'contact_information', '<ul>\r\n 	<li><strong>A.</strong> Villingili Island, Addu Atoll, Maldives</li>\r\n 	<li><strong>T.</strong> <a href=\"tel:(960) 689 7888\">(960) 689 7888</a></li>\r\n 	<li><strong>F.</strong> <a href=\"(960) 689 7999\">(960) 689 7999</a></li>\r\n</ul>'),
(433, 78, '_contact_information', 'field_5b3b193d10e99'),
(434, 78, 'contact', ''),
(435, 78, '_contact', 'field_5b3b18fe10e95'),
(436, 79, 'image', '44'),
(437, 79, '_image', 'field_5b3ae86b2b1b2'),
(438, 79, 'title', '\"Creating   the details   that matter\"'),
(439, 79, '_title', 'field_5b3ae8822b1b3'),
(440, 79, 'description', 'Nullam imperdiet dapibus ipsum in pulvinar. Maecenas egestas ipsum eget magna venenatis, in aliquet metus dictum. Etiam porta magna non urna aliquet mattis. Donec accumsan lorem lacinia ante vulputate suscipit. Sed convallis dictum lacinia. '),
(441, 79, '_description', 'field_5b3ae88c2b1b4'),
(442, 79, 'text_link', 'LEARN MORE'),
(443, 79, '_text_link', 'field_5b3ae8a22b1b5'),
(444, 79, 'link', ''),
(445, 79, '_link', 'field_5b3ae8ac2b1b6'),
(446, 79, 'section_1_image', '60'),
(447, 79, '_section_1_image', 'field_5b3aeb0a0b025'),
(448, 79, 'section_1_title', 'Aenean ut libero eu nunc faucibus'),
(449, 79, '_section_1_title', 'field_5b3aeb1c0b026'),
(450, 79, 'section_1_description', 'Vestibulum scelerisque quis sem a aliquet. Sed eu diam sit amet purus suscipit porta in eget velit. Phasellus volutpat turpis ac congue efficitur. Maecenas pulvinar egestas semper. Sed blandit a purus non volutpat. Vivamus aliquam ante augue, at sagittis nulla commodo viverra. Donec hendrerit tellus at vestibulum tristique. Aenean in quam tortor. Integer blandit non enim sit amet molestie. Integer consectetur dignissim enim. Pellentesque eget metus tellus.'),
(451, 79, '_section_1_description', 'field_5b3aeb280b027'),
(452, 79, 'section_1_text_link', 'DÉCOUVRIR'),
(453, 79, '_section_1_text_link', 'field_5b3aeb450b028'),
(454, 79, 'section_1_link', ''),
(455, 79, '_section_1_link', 'field_5b3aeb530b029'),
(456, 79, 'section_1', ''),
(457, 79, '_section_1', 'field_5b3ae8442b1b0'),
(458, 79, 'section_2_image', '44'),
(459, 79, '_section_2_image', 'field_5b3aeb6e0b02b'),
(460, 79, 'section_2_title', '\"Creating   the details   that matter\"'),
(461, 79, '_section_2_title', 'field_5b3aeb6e0b02c'),
(462, 79, 'section_2_description', 'Nullam imperdiet dapibus ipsum in pulvinar. Maecenas egestas ipsum eget magna venenatis, in aliquet metus dictum. Etiam porta magna non urna aliquet mattis. Donec accumsan lorem lacinia ante vulputate suscipit. Sed convallis dictum lacinia. '),
(463, 79, '_section_2_description', 'field_5b3aeb6e0b02d'),
(464, 79, 'section_2_text_link', 'LEARN MORE'),
(465, 79, '_section_2_text_link', 'field_5b3aeb6e0b02e'),
(466, 79, 'section_2_link', ''),
(467, 79, '_section_2_link', 'field_5b3aeb6e0b02f'),
(468, 79, 'section_2', ''),
(469, 79, '_section_2', 'field_5b3aeb6e0b02a'),
(470, 79, 'official_gallery', 'a:6:{i:0;s:2:\"65\";i:1;s:2:\"66\";i:2;s:2:\"67\";i:3;s:2:\"68\";i:4;s:2:\"69\";i:5;s:2:\"70\";}'),
(471, 79, '_official_gallery', 'field_5b3b004daeb56'),
(472, 79, 'official_link', ''),
(473, 79, '_official_link', 'field_5b3b00a4aeb57'),
(474, 79, 'official', ''),
(475, 79, '_official', 'field_5b3b0036aeb55'),
(476, 79, 'contact_background', '77'),
(477, 79, '_contact_background', 'field_5b3b190b10e96'),
(478, 79, 'contact_map', 'a:3:{s:7:\"address\";s:23:\"A4, Addu City, Maldives\";s:3:\"lat\";s:19:\"-0.6774881521434611\";s:3:\"lng\";s:17:\"73.19501308900703\";}'),
(479, 79, '_contact_map', 'field_5b3b191d10e97'),
(480, 79, 'contact_title', 'Jay ahr concept store'),
(481, 79, '_contact_title', 'field_5b3b192e10e98'),
(482, 79, 'contact_information', '<ul>\r\n 	<li><strong>A.</strong>   Villingili Island, Addu Atoll, Maldives</li>\r\n 	<li><strong>T.</strong>   <a href=\"tel:(960) 689 7888\">(960) 689 7888</a></li>\r\n 	<li><strong>F.</strong>   <a href=\"(960) 689 7999\">(960) 689 7999</a></li>\r\n</ul>'),
(483, 79, '_contact_information', 'field_5b3b193d10e99'),
(484, 79, 'contact', ''),
(485, 79, '_contact', 'field_5b3b18fe10e95'),
(486, 80, '_wc_review_count', '0'),
(487, 80, '_wc_rating_count', 'a:0:{}'),
(488, 80, '_wc_average_rating', '0'),
(489, 80, '_edit_last', '1'),
(490, 80, '_edit_lock', '1530685364:1'),
(491, 81, '_wp_attached_file', '2018/07/product-1.jpg'),
(492, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:256;s:6:\"height\";i:187;s:4:\"file\";s:21:\"2018/07/product-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"product-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"product-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"product-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(493, 80, '_thumbnail_id', '81'),
(494, 80, '_sku', ''),
(495, 80, '_regular_price', ''),
(496, 80, '_sale_price', ''),
(497, 80, '_sale_price_dates_from', ''),
(498, 80, '_sale_price_dates_to', ''),
(499, 80, 'total_sales', '0'),
(500, 80, '_tax_status', 'taxable'),
(501, 80, '_tax_class', ''),
(502, 80, '_manage_stock', 'no'),
(503, 80, '_backorders', 'no'),
(504, 80, '_sold_individually', 'no'),
(505, 80, '_weight', ''),
(506, 80, '_length', ''),
(507, 80, '_width', ''),
(508, 80, '_height', ''),
(509, 80, '_upsell_ids', 'a:0:{}'),
(510, 80, '_crosssell_ids', 'a:0:{}'),
(511, 80, '_purchase_note', ''),
(512, 80, '_default_attributes', 'a:0:{}'),
(513, 80, '_virtual', 'no'),
(514, 80, '_downloadable', 'no'),
(515, 80, '_product_image_gallery', ''),
(516, 80, '_download_limit', '-1'),
(517, 80, '_download_expiry', '-1'),
(518, 80, '_stock', NULL),
(519, 80, '_stock_status', 'instock'),
(520, 80, '_product_version', '3.4.3'),
(521, 80, '_price', ''),
(522, 80, '_product_attributes', 'a:3:{s:12:\"pa_attr-type\";a:6:{s:4:\"name\";s:12:\"pa_attr-type\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_series\";a:6:{s:4:\"name\";s:9:\"pa_series\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(523, 82, '_sku', ''),
(524, 82, '_regular_price', ''),
(525, 82, '_sale_price', ''),
(526, 82, '_sale_price_dates_from', ''),
(527, 82, '_sale_price_dates_to', ''),
(528, 82, 'total_sales', '0'),
(529, 82, '_tax_status', 'taxable'),
(530, 82, '_tax_class', ''),
(531, 82, '_manage_stock', 'no'),
(532, 82, '_backorders', 'no'),
(533, 82, '_sold_individually', 'no'),
(534, 82, '_weight', ''),
(535, 82, '_length', ''),
(536, 82, '_width', ''),
(537, 82, '_height', ''),
(538, 82, '_upsell_ids', 'a:0:{}'),
(539, 82, '_crosssell_ids', 'a:0:{}'),
(540, 82, '_purchase_note', ''),
(541, 82, '_default_attributes', 'a:0:{}'),
(542, 82, '_virtual', 'no'),
(543, 82, '_downloadable', 'no'),
(544, 82, '_product_image_gallery', ''),
(545, 82, '_download_limit', '-1'),
(546, 82, '_download_expiry', '-1'),
(547, 82, '_thumbnail_id', '83'),
(548, 82, '_stock', NULL),
(549, 82, '_stock_status', 'instock'),
(550, 82, '_wc_average_rating', '0'),
(551, 82, '_wc_rating_count', 'a:0:{}'),
(552, 82, '_wc_review_count', '0'),
(553, 82, '_downloadable_files', 'a:0:{}'),
(554, 82, '_product_attributes', 'a:3:{s:12:\"pa_attr-type\";a:6:{s:4:\"name\";s:12:\"pa_attr-type\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_series\";a:6:{s:4:\"name\";s:9:\"pa_series\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(555, 82, '_product_version', '3.4.3'),
(556, 82, '_price', ''),
(557, 82, '_edit_lock', '1530685394:1'),
(558, 83, '_wp_attached_file', '2018/07/product-2.jpg'),
(559, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:246;s:6:\"height\";i:191;s:4:\"file\";s:21:\"2018/07/product-2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"product-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"product-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"product-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(560, 82, '_edit_last', '1'),
(561, 84, '_sku', ''),
(562, 84, '_regular_price', ''),
(563, 84, '_sale_price', ''),
(564, 84, '_sale_price_dates_from', ''),
(565, 84, '_sale_price_dates_to', ''),
(566, 84, 'total_sales', '0'),
(567, 84, '_tax_status', 'taxable'),
(568, 84, '_tax_class', ''),
(569, 84, '_manage_stock', 'no'),
(570, 84, '_backorders', 'no'),
(571, 84, '_sold_individually', 'no'),
(572, 84, '_weight', ''),
(573, 84, '_length', ''),
(574, 84, '_width', ''),
(575, 84, '_height', ''),
(576, 84, '_upsell_ids', 'a:0:{}'),
(577, 84, '_crosssell_ids', 'a:0:{}'),
(578, 84, '_purchase_note', ''),
(579, 84, '_default_attributes', 'a:0:{}'),
(580, 84, '_virtual', 'no'),
(581, 84, '_downloadable', 'no'),
(582, 84, '_product_image_gallery', ''),
(583, 84, '_download_limit', '-1'),
(584, 84, '_download_expiry', '-1'),
(585, 84, '_thumbnail_id', '85'),
(586, 84, '_stock', NULL),
(587, 84, '_stock_status', 'instock'),
(588, 84, '_wc_average_rating', '0'),
(589, 84, '_wc_rating_count', 'a:0:{}'),
(590, 84, '_wc_review_count', '0'),
(591, 84, '_downloadable_files', 'a:0:{}'),
(592, 84, '_product_attributes', 'a:3:{s:12:\"pa_attr-type\";a:6:{s:4:\"name\";s:12:\"pa_attr-type\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_series\";a:6:{s:4:\"name\";s:9:\"pa_series\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(593, 84, '_product_version', '3.4.3'),
(594, 84, '_price', ''),
(595, 84, '_edit_lock', '1530685419:1'),
(596, 85, '_wp_attached_file', '2018/07/product-3.jpg'),
(597, 85, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:177;s:4:\"file\";s:21:\"2018/07/product-3.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"product-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"product-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"product-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(598, 84, '_edit_last', '1'),
(599, 86, '_sku', ''),
(600, 86, '_regular_price', ''),
(601, 86, '_sale_price', ''),
(602, 86, '_sale_price_dates_from', ''),
(603, 86, '_sale_price_dates_to', ''),
(604, 86, 'total_sales', '0'),
(605, 86, '_tax_status', 'taxable'),
(606, 86, '_tax_class', ''),
(607, 86, '_manage_stock', 'no'),
(608, 86, '_backorders', 'no'),
(609, 86, '_sold_individually', 'no'),
(610, 86, '_weight', ''),
(611, 86, '_length', ''),
(612, 86, '_width', ''),
(613, 86, '_height', ''),
(614, 86, '_upsell_ids', 'a:0:{}'),
(615, 86, '_crosssell_ids', 'a:0:{}'),
(616, 86, '_purchase_note', ''),
(617, 86, '_default_attributes', 'a:0:{}'),
(618, 86, '_virtual', 'no'),
(619, 86, '_downloadable', 'no'),
(620, 86, '_product_image_gallery', ''),
(621, 86, '_download_limit', '-1'),
(622, 86, '_download_expiry', '-1'),
(623, 86, '_thumbnail_id', '118'),
(624, 86, '_stock', NULL),
(625, 86, '_stock_status', 'instock'),
(626, 86, '_wc_average_rating', '0'),
(627, 86, '_wc_rating_count', 'a:0:{}'),
(628, 86, '_wc_review_count', '0'),
(629, 86, '_downloadable_files', 'a:0:{}'),
(630, 86, '_product_attributes', 'a:3:{s:12:\"pa_attr-type\";a:6:{s:4:\"name\";s:12:\"pa_attr-type\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_series\";a:6:{s:4:\"name\";s:9:\"pa_series\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(631, 86, '_product_version', '3.4.3'),
(632, 86, '_price', ''),
(633, 86, '_edit_lock', '1530685448:1'),
(634, 87, '_wp_attached_file', '2018/07/offical-4-1.jpg'),
(635, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:255;s:6:\"height\";i:255;s:4:\"file\";s:23:\"2018/07/offical-4-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"offical-4-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"offical-4-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"offical-4-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(636, 86, '_edit_last', '1'),
(637, 88, '_sku', ''),
(638, 88, '_regular_price', ''),
(639, 88, '_sale_price', ''),
(640, 88, '_sale_price_dates_from', ''),
(641, 88, '_sale_price_dates_to', ''),
(642, 88, 'total_sales', '0'),
(643, 88, '_tax_status', 'taxable'),
(644, 88, '_tax_class', ''),
(645, 88, '_manage_stock', 'no'),
(646, 88, '_backorders', 'no'),
(647, 88, '_sold_individually', 'no'),
(648, 88, '_weight', ''),
(649, 88, '_length', ''),
(650, 88, '_width', ''),
(651, 88, '_height', ''),
(652, 88, '_upsell_ids', 'a:0:{}'),
(653, 88, '_crosssell_ids', 'a:0:{}'),
(654, 88, '_purchase_note', ''),
(655, 88, '_default_attributes', 'a:0:{}'),
(656, 88, '_virtual', 'no'),
(657, 88, '_downloadable', 'no'),
(658, 88, '_product_image_gallery', ''),
(659, 88, '_download_limit', '-1'),
(660, 88, '_download_expiry', '-1'),
(661, 88, '_thumbnail_id', '89'),
(662, 88, '_stock', NULL),
(663, 88, '_stock_status', 'instock'),
(664, 88, '_wc_average_rating', '0'),
(665, 88, '_wc_rating_count', 'a:0:{}'),
(666, 88, '_wc_review_count', '0'),
(667, 88, '_downloadable_files', 'a:0:{}'),
(668, 88, '_product_attributes', 'a:3:{s:12:\"pa_attr-type\";a:6:{s:4:\"name\";s:12:\"pa_attr-type\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_series\";a:6:{s:4:\"name\";s:9:\"pa_series\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(669, 88, '_product_version', '3.4.3'),
(670, 88, '_price', ''),
(671, 88, '_edit_lock', '1530685481:1'),
(672, 89, '_wp_attached_file', '2018/07/product-5.jpg'),
(673, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:234;s:6:\"height\";i:186;s:4:\"file\";s:21:\"2018/07/product-5.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"product-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"product-5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"product-5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(674, 88, '_edit_last', '1'),
(675, 90, '_sku', ''),
(676, 90, '_regular_price', ''),
(677, 90, '_sale_price', ''),
(678, 90, '_sale_price_dates_from', ''),
(679, 90, '_sale_price_dates_to', ''),
(680, 90, 'total_sales', '0'),
(681, 90, '_tax_status', 'taxable'),
(682, 90, '_tax_class', ''),
(683, 90, '_manage_stock', 'no'),
(684, 90, '_backorders', 'no'),
(685, 90, '_sold_individually', 'no'),
(686, 90, '_weight', ''),
(687, 90, '_length', ''),
(688, 90, '_width', ''),
(689, 90, '_height', ''),
(690, 90, '_upsell_ids', 'a:0:{}'),
(691, 90, '_crosssell_ids', 'a:0:{}'),
(692, 90, '_purchase_note', ''),
(693, 90, '_default_attributes', 'a:0:{}'),
(694, 90, '_virtual', 'no'),
(695, 90, '_downloadable', 'no'),
(696, 90, '_product_image_gallery', ''),
(697, 90, '_download_limit', '-1'),
(698, 90, '_download_expiry', '-1'),
(699, 90, '_thumbnail_id', '91');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(700, 90, '_stock', NULL),
(701, 90, '_stock_status', 'instock'),
(702, 90, '_wc_average_rating', '0'),
(703, 90, '_wc_rating_count', 'a:0:{}'),
(704, 90, '_wc_review_count', '0'),
(705, 90, '_downloadable_files', 'a:0:{}'),
(706, 90, '_product_attributes', 'a:3:{s:12:\"pa_attr-type\";a:6:{s:4:\"name\";s:12:\"pa_attr-type\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_series\";a:6:{s:4:\"name\";s:9:\"pa_series\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(707, 90, '_product_version', '3.4.3'),
(708, 90, '_price', ''),
(709, 90, '_edit_lock', '1530685506:1'),
(710, 91, '_wp_attached_file', '2018/07/product-6.jpg'),
(711, 91, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:274;s:6:\"height\";i:183;s:4:\"file\";s:21:\"2018/07/product-6.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"product-6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"product-6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"product-6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(712, 90, '_edit_last', '1'),
(713, 92, '_sku', ''),
(714, 92, '_regular_price', ''),
(715, 92, '_sale_price', ''),
(716, 92, '_sale_price_dates_from', ''),
(717, 92, '_sale_price_dates_to', ''),
(718, 92, 'total_sales', '0'),
(719, 92, '_tax_status', 'taxable'),
(720, 92, '_tax_class', ''),
(721, 92, '_manage_stock', 'no'),
(722, 92, '_backorders', 'no'),
(723, 92, '_sold_individually', 'no'),
(724, 92, '_weight', ''),
(725, 92, '_length', ''),
(726, 92, '_width', ''),
(727, 92, '_height', ''),
(728, 92, '_upsell_ids', 'a:0:{}'),
(729, 92, '_crosssell_ids', 'a:0:{}'),
(730, 92, '_purchase_note', ''),
(731, 92, '_default_attributes', 'a:0:{}'),
(732, 92, '_virtual', 'no'),
(733, 92, '_downloadable', 'no'),
(734, 92, '_product_image_gallery', ''),
(735, 92, '_download_limit', '-1'),
(736, 92, '_download_expiry', '-1'),
(737, 92, '_thumbnail_id', '93'),
(738, 92, '_stock', NULL),
(739, 92, '_stock_status', 'instock'),
(740, 92, '_wc_average_rating', '0'),
(741, 92, '_wc_rating_count', 'a:0:{}'),
(742, 92, '_wc_review_count', '0'),
(743, 92, '_downloadable_files', 'a:0:{}'),
(744, 92, '_product_attributes', 'a:3:{s:12:\"pa_attr-type\";a:6:{s:4:\"name\";s:12:\"pa_attr-type\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_series\";a:6:{s:4:\"name\";s:9:\"pa_series\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(745, 92, '_product_version', '3.4.3'),
(746, 92, '_price', ''),
(747, 92, '_edit_lock', '1530685530:1'),
(748, 93, '_wp_attached_file', '2018/07/product-7.jpg'),
(749, 93, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:251;s:6:\"height\";i:192;s:4:\"file\";s:21:\"2018/07/product-7.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"product-7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"product-7-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"product-7-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(750, 92, '_edit_last', '1'),
(751, 94, '_sku', ''),
(752, 94, '_regular_price', ''),
(753, 94, '_sale_price', ''),
(754, 94, '_sale_price_dates_from', ''),
(755, 94, '_sale_price_dates_to', ''),
(756, 94, 'total_sales', '0'),
(757, 94, '_tax_status', 'taxable'),
(758, 94, '_tax_class', ''),
(759, 94, '_manage_stock', 'no'),
(760, 94, '_backorders', 'no'),
(761, 94, '_sold_individually', 'no'),
(762, 94, '_weight', ''),
(763, 94, '_length', ''),
(764, 94, '_width', ''),
(765, 94, '_height', ''),
(766, 94, '_upsell_ids', 'a:0:{}'),
(767, 94, '_crosssell_ids', 'a:0:{}'),
(768, 94, '_purchase_note', ''),
(769, 94, '_default_attributes', 'a:0:{}'),
(770, 94, '_virtual', 'no'),
(771, 94, '_downloadable', 'no'),
(772, 94, '_product_image_gallery', ''),
(773, 94, '_download_limit', '-1'),
(774, 94, '_download_expiry', '-1'),
(775, 94, '_thumbnail_id', '95'),
(776, 94, '_stock', NULL),
(777, 94, '_stock_status', 'instock'),
(778, 94, '_wc_average_rating', '0'),
(779, 94, '_wc_rating_count', 'a:0:{}'),
(780, 94, '_wc_review_count', '0'),
(781, 94, '_downloadable_files', 'a:0:{}'),
(782, 94, '_product_attributes', 'a:3:{s:12:\"pa_attr-type\";a:6:{s:4:\"name\";s:12:\"pa_attr-type\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_series\";a:6:{s:4:\"name\";s:9:\"pa_series\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(783, 94, '_product_version', '3.4.3'),
(784, 94, '_price', ''),
(785, 94, '_edit_lock', '1530685554:1'),
(786, 95, '_wp_attached_file', '2018/07/product-8.jpg'),
(787, 95, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:246;s:6:\"height\";i:192;s:4:\"file\";s:21:\"2018/07/product-8.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"product-8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"product-8-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"product-8-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(788, 94, '_edit_last', '1'),
(789, 96, '_sku', ''),
(790, 96, '_regular_price', ''),
(791, 96, '_sale_price', ''),
(792, 96, '_sale_price_dates_from', ''),
(793, 96, '_sale_price_dates_to', ''),
(794, 96, 'total_sales', '0'),
(795, 96, '_tax_status', 'taxable'),
(796, 96, '_tax_class', ''),
(797, 96, '_manage_stock', 'no'),
(798, 96, '_backorders', 'no'),
(799, 96, '_sold_individually', 'no'),
(800, 96, '_weight', ''),
(801, 96, '_length', ''),
(802, 96, '_width', ''),
(803, 96, '_height', ''),
(804, 96, '_upsell_ids', 'a:0:{}'),
(805, 96, '_crosssell_ids', 'a:0:{}'),
(806, 96, '_purchase_note', ''),
(807, 96, '_default_attributes', 'a:0:{}'),
(808, 96, '_virtual', 'no'),
(809, 96, '_downloadable', 'no'),
(810, 96, '_product_image_gallery', ''),
(811, 96, '_download_limit', '-1'),
(812, 96, '_download_expiry', '-1'),
(813, 96, '_thumbnail_id', '97'),
(814, 96, '_stock', NULL),
(815, 96, '_stock_status', 'outofstock'),
(816, 96, '_wc_average_rating', '0'),
(817, 96, '_wc_rating_count', 'a:0:{}'),
(818, 96, '_wc_review_count', '0'),
(819, 96, '_downloadable_files', 'a:0:{}'),
(820, 96, '_product_attributes', 'a:3:{s:12:\"pa_attr-type\";a:6:{s:4:\"name\";s:12:\"pa_attr-type\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_series\";a:6:{s:4:\"name\";s:9:\"pa_series\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(821, 96, '_product_version', '3.4.3'),
(822, 96, '_price', ''),
(823, 96, '_edit_lock', '1530764206:1'),
(824, 97, '_wp_attached_file', '2018/07/product-9.jpg'),
(825, 97, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:246;s:6:\"height\";i:187;s:4:\"file\";s:21:\"2018/07/product-9.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"product-9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"product-9-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"product-9-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(826, 96, '_edit_last', '1'),
(827, 98, '_sku', ''),
(828, 98, '_regular_price', ''),
(829, 98, '_sale_price', ''),
(830, 98, '_sale_price_dates_from', ''),
(831, 98, '_sale_price_dates_to', ''),
(832, 98, 'total_sales', '0'),
(833, 98, '_tax_status', 'taxable'),
(834, 98, '_tax_class', ''),
(835, 98, '_manage_stock', 'no'),
(836, 98, '_backorders', 'no'),
(837, 98, '_sold_individually', 'no'),
(838, 98, '_weight', ''),
(839, 98, '_length', ''),
(840, 98, '_width', ''),
(841, 98, '_height', ''),
(842, 98, '_upsell_ids', 'a:0:{}'),
(843, 98, '_crosssell_ids', 'a:0:{}'),
(844, 98, '_purchase_note', ''),
(845, 98, '_default_attributes', 'a:0:{}'),
(846, 98, '_virtual', 'no'),
(847, 98, '_downloadable', 'no'),
(848, 98, '_product_image_gallery', ''),
(849, 98, '_download_limit', '-1'),
(850, 98, '_download_expiry', '-1'),
(851, 98, '_thumbnail_id', '99'),
(852, 98, '_stock', NULL),
(853, 98, '_stock_status', 'instock'),
(854, 98, '_wc_average_rating', '0'),
(855, 98, '_wc_rating_count', 'a:0:{}'),
(856, 98, '_wc_review_count', '0'),
(857, 98, '_downloadable_files', 'a:0:{}'),
(858, 98, '_product_attributes', 'a:3:{s:12:\"pa_attr-type\";a:6:{s:4:\"name\";s:12:\"pa_attr-type\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_series\";a:6:{s:4:\"name\";s:9:\"pa_series\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(859, 98, '_product_version', '3.4.3'),
(860, 98, '_price', ''),
(861, 98, '_edit_lock', '1530685599:1'),
(862, 99, '_wp_attached_file', '2018/07/product-10.jpg'),
(863, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:259;s:6:\"height\";i:189;s:4:\"file\";s:22:\"2018/07/product-10.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"product-10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"product-10-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"product-10-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(864, 98, '_edit_last', '1'),
(865, 100, '_sku', ''),
(866, 100, '_regular_price', ''),
(867, 100, '_sale_price', ''),
(868, 100, '_sale_price_dates_from', ''),
(869, 100, '_sale_price_dates_to', ''),
(870, 100, 'total_sales', '0'),
(871, 100, '_tax_status', 'taxable'),
(872, 100, '_tax_class', ''),
(873, 100, '_manage_stock', 'no'),
(874, 100, '_backorders', 'no'),
(875, 100, '_sold_individually', 'no'),
(876, 100, '_weight', ''),
(877, 100, '_length', ''),
(878, 100, '_width', ''),
(879, 100, '_height', ''),
(880, 100, '_upsell_ids', 'a:0:{}'),
(881, 100, '_crosssell_ids', 'a:0:{}'),
(882, 100, '_purchase_note', ''),
(883, 100, '_default_attributes', 'a:0:{}'),
(884, 100, '_virtual', 'no'),
(885, 100, '_downloadable', 'no'),
(886, 100, '_product_image_gallery', ''),
(887, 100, '_download_limit', '-1'),
(888, 100, '_download_expiry', '-1'),
(889, 100, '_thumbnail_id', '101'),
(890, 100, '_stock', NULL),
(891, 100, '_stock_status', 'outofstock'),
(892, 100, '_wc_average_rating', '0'),
(893, 100, '_wc_rating_count', 'a:0:{}'),
(894, 100, '_wc_review_count', '0'),
(895, 100, '_downloadable_files', 'a:0:{}'),
(896, 100, '_product_attributes', 'a:3:{s:12:\"pa_attr-type\";a:6:{s:4:\"name\";s:12:\"pa_attr-type\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_series\";a:6:{s:4:\"name\";s:9:\"pa_series\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(897, 100, '_product_version', '3.4.3'),
(898, 100, '_price', ''),
(899, 100, '_edit_lock', '1530764180:1'),
(900, 101, '_wp_attached_file', '2018/07/product-11.jpg'),
(901, 101, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:252;s:6:\"height\";i:188;s:4:\"file\";s:22:\"2018/07/product-11.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"product-11-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"product-11-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"product-11-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(902, 100, '_edit_last', '1'),
(903, 102, '_sku', ''),
(904, 102, '_regular_price', ''),
(905, 102, '_sale_price', ''),
(906, 102, '_sale_price_dates_from', ''),
(907, 102, '_sale_price_dates_to', ''),
(908, 102, 'total_sales', '0'),
(909, 102, '_tax_status', 'taxable'),
(910, 102, '_tax_class', ''),
(911, 102, '_manage_stock', 'no'),
(912, 102, '_backorders', 'no'),
(913, 102, '_sold_individually', 'no'),
(914, 102, '_weight', ''),
(915, 102, '_length', ''),
(916, 102, '_width', ''),
(917, 102, '_height', ''),
(918, 102, '_upsell_ids', 'a:0:{}'),
(919, 102, '_crosssell_ids', 'a:0:{}'),
(920, 102, '_purchase_note', ''),
(921, 102, '_default_attributes', 'a:0:{}'),
(922, 102, '_virtual', 'no'),
(923, 102, '_downloadable', 'no'),
(924, 102, '_product_image_gallery', ''),
(925, 102, '_download_limit', '-1'),
(926, 102, '_download_expiry', '-1'),
(927, 102, '_thumbnail_id', '103'),
(928, 102, '_stock', NULL),
(929, 102, '_stock_status', 'instock'),
(930, 102, '_wc_average_rating', '0'),
(931, 102, '_wc_rating_count', 'a:0:{}'),
(932, 102, '_wc_review_count', '0'),
(933, 102, '_downloadable_files', 'a:0:{}'),
(934, 102, '_product_attributes', 'a:3:{s:12:\"pa_attr-type\";a:6:{s:4:\"name\";s:12:\"pa_attr-type\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_series\";a:6:{s:4:\"name\";s:9:\"pa_series\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(935, 102, '_product_version', '3.4.3'),
(936, 102, '_price', ''),
(937, 102, '_edit_lock', '1530685644:1'),
(938, 103, '_wp_attached_file', '2018/07/product-12.jpg'),
(939, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:196;s:4:\"file\";s:22:\"2018/07/product-12.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"product-12-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"product-12-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"product-12-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(940, 102, '_edit_last', '1'),
(941, 104, '_sku', ''),
(942, 104, '_regular_price', ''),
(943, 104, '_sale_price', ''),
(944, 104, '_sale_price_dates_from', ''),
(945, 104, '_sale_price_dates_to', ''),
(946, 104, 'total_sales', '0'),
(947, 104, '_tax_status', 'taxable'),
(948, 104, '_tax_class', ''),
(949, 104, '_manage_stock', 'no'),
(950, 104, '_backorders', 'no'),
(951, 104, '_sold_individually', 'no'),
(952, 104, '_weight', ''),
(953, 104, '_length', ''),
(954, 104, '_width', ''),
(955, 104, '_height', ''),
(956, 104, '_upsell_ids', 'a:0:{}'),
(957, 104, '_crosssell_ids', 'a:0:{}'),
(958, 104, '_purchase_note', ''),
(959, 104, '_default_attributes', 'a:0:{}'),
(960, 104, '_virtual', 'no'),
(961, 104, '_downloadable', 'no'),
(962, 104, '_product_image_gallery', ''),
(963, 104, '_download_limit', '-1'),
(964, 104, '_download_expiry', '-1'),
(965, 104, '_thumbnail_id', '105'),
(966, 104, '_stock', NULL),
(967, 104, '_stock_status', 'instock'),
(968, 104, '_wc_average_rating', '0'),
(969, 104, '_wc_rating_count', 'a:0:{}'),
(970, 104, '_wc_review_count', '0'),
(971, 104, '_downloadable_files', 'a:0:{}'),
(972, 104, '_product_attributes', 'a:3:{s:12:\"pa_attr-type\";a:6:{s:4:\"name\";s:12:\"pa_attr-type\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_series\";a:6:{s:4:\"name\";s:9:\"pa_series\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(973, 104, '_product_version', '3.4.3'),
(974, 104, '_price', ''),
(975, 104, '_edit_lock', '1530685668:1'),
(976, 105, '_wp_attached_file', '2018/07/product-13.jpg'),
(977, 105, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:278;s:6:\"height\";i:197;s:4:\"file\";s:22:\"2018/07/product-13.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"product-13-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"product-13-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"product-13-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(978, 104, '_edit_last', '1'),
(979, 106, '_sku', ''),
(980, 106, '_regular_price', ''),
(981, 106, '_sale_price', ''),
(982, 106, '_sale_price_dates_from', ''),
(983, 106, '_sale_price_dates_to', ''),
(984, 106, 'total_sales', '0'),
(985, 106, '_tax_status', 'taxable'),
(986, 106, '_tax_class', ''),
(987, 106, '_manage_stock', 'no'),
(988, 106, '_backorders', 'no'),
(989, 106, '_sold_individually', 'no'),
(990, 106, '_weight', ''),
(991, 106, '_length', ''),
(992, 106, '_width', ''),
(993, 106, '_height', ''),
(994, 106, '_upsell_ids', 'a:0:{}'),
(995, 106, '_crosssell_ids', 'a:0:{}'),
(996, 106, '_purchase_note', ''),
(997, 106, '_default_attributes', 'a:0:{}'),
(998, 106, '_virtual', 'no'),
(999, 106, '_downloadable', 'no'),
(1000, 106, '_product_image_gallery', ''),
(1001, 106, '_download_limit', '-1'),
(1002, 106, '_download_expiry', '-1'),
(1003, 106, '_thumbnail_id', '107'),
(1004, 106, '_stock', NULL),
(1005, 106, '_stock_status', 'instock'),
(1006, 106, '_wc_average_rating', '0'),
(1007, 106, '_wc_rating_count', 'a:0:{}'),
(1008, 106, '_wc_review_count', '0'),
(1009, 106, '_downloadable_files', 'a:0:{}'),
(1010, 106, '_product_attributes', 'a:3:{s:12:\"pa_attr-type\";a:6:{s:4:\"name\";s:12:\"pa_attr-type\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_series\";a:6:{s:4:\"name\";s:9:\"pa_series\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1011, 106, '_product_version', '3.4.3'),
(1012, 106, '_price', ''),
(1013, 106, '_edit_lock', '1530685691:1'),
(1014, 107, '_wp_attached_file', '2018/07/product-14.jpg'),
(1015, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:288;s:6:\"height\";i:204;s:4:\"file\";s:22:\"2018/07/product-14.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"product-14-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"product-14-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"product-14-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1016, 106, '_edit_last', '1'),
(1017, 108, '_sku', ''),
(1018, 108, '_regular_price', ''),
(1019, 108, '_sale_price', ''),
(1020, 108, '_sale_price_dates_from', ''),
(1021, 108, '_sale_price_dates_to', ''),
(1022, 108, 'total_sales', '0'),
(1023, 108, '_tax_status', 'taxable'),
(1024, 108, '_tax_class', ''),
(1025, 108, '_manage_stock', 'no'),
(1026, 108, '_backorders', 'no'),
(1027, 108, '_sold_individually', 'no'),
(1028, 108, '_weight', ''),
(1029, 108, '_length', ''),
(1030, 108, '_width', ''),
(1031, 108, '_height', ''),
(1032, 108, '_upsell_ids', 'a:0:{}'),
(1033, 108, '_crosssell_ids', 'a:0:{}'),
(1034, 108, '_purchase_note', ''),
(1035, 108, '_default_attributes', 'a:0:{}'),
(1036, 108, '_virtual', 'no'),
(1037, 108, '_downloadable', 'no'),
(1038, 108, '_product_image_gallery', ''),
(1039, 108, '_download_limit', '-1'),
(1040, 108, '_download_expiry', '-1'),
(1041, 108, '_thumbnail_id', '109'),
(1042, 108, '_stock', NULL),
(1043, 108, '_stock_status', 'instock'),
(1044, 108, '_wc_average_rating', '0'),
(1045, 108, '_wc_rating_count', 'a:0:{}'),
(1046, 108, '_wc_review_count', '0'),
(1047, 108, '_downloadable_files', 'a:0:{}'),
(1048, 108, '_product_attributes', 'a:3:{s:12:\"pa_attr-type\";a:6:{s:4:\"name\";s:12:\"pa_attr-type\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_series\";a:6:{s:4:\"name\";s:9:\"pa_series\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1049, 108, '_product_version', '3.4.3'),
(1050, 108, '_price', ''),
(1051, 108, '_edit_lock', '1530685715:1'),
(1052, 109, '_wp_attached_file', '2018/07/product-15.jpg'),
(1053, 109, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:282;s:6:\"height\";i:196;s:4:\"file\";s:22:\"2018/07/product-15.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"product-15-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"product-15-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"product-15-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1054, 108, '_edit_last', '1'),
(1055, 110, '_sku', ''),
(1056, 110, '_regular_price', ''),
(1057, 110, '_sale_price', ''),
(1058, 110, '_sale_price_dates_from', ''),
(1059, 110, '_sale_price_dates_to', ''),
(1060, 110, 'total_sales', '0'),
(1061, 110, '_tax_status', 'taxable'),
(1062, 110, '_tax_class', ''),
(1063, 110, '_manage_stock', 'no'),
(1064, 110, '_backorders', 'no'),
(1065, 110, '_sold_individually', 'no'),
(1066, 110, '_weight', ''),
(1067, 110, '_length', ''),
(1068, 110, '_width', ''),
(1069, 110, '_height', ''),
(1070, 110, '_upsell_ids', 'a:0:{}'),
(1071, 110, '_crosssell_ids', 'a:0:{}'),
(1072, 110, '_purchase_note', ''),
(1073, 110, '_default_attributes', 'a:0:{}'),
(1074, 110, '_virtual', 'no'),
(1075, 110, '_downloadable', 'no'),
(1076, 110, '_product_image_gallery', ''),
(1077, 110, '_download_limit', '-1'),
(1078, 110, '_download_expiry', '-1'),
(1079, 110, '_thumbnail_id', '111'),
(1080, 110, '_stock', NULL),
(1081, 110, '_stock_status', 'instock'),
(1082, 110, '_wc_average_rating', '0'),
(1083, 110, '_wc_rating_count', 'a:0:{}'),
(1084, 110, '_wc_review_count', '0'),
(1085, 110, '_downloadable_files', 'a:0:{}'),
(1086, 110, '_product_attributes', 'a:3:{s:12:\"pa_attr-type\";a:6:{s:4:\"name\";s:12:\"pa_attr-type\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_series\";a:6:{s:4:\"name\";s:9:\"pa_series\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1087, 110, '_product_version', '3.4.3'),
(1088, 110, '_price', ''),
(1089, 110, '_edit_lock', '1530685744:1'),
(1090, 111, '_wp_attached_file', '2018/07/product-16.jpg'),
(1091, 111, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:252;s:6:\"height\";i:197;s:4:\"file\";s:22:\"2018/07/product-16.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"product-16-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"product-16-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"product-16-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1092, 110, '_edit_last', '1'),
(1093, 112, '_sku', ''),
(1094, 112, '_regular_price', '7000'),
(1095, 112, '_sale_price', ''),
(1096, 112, '_sale_price_dates_from', ''),
(1097, 112, '_sale_price_dates_to', ''),
(1098, 112, 'total_sales', '0'),
(1099, 112, '_tax_status', 'taxable'),
(1100, 112, '_tax_class', ''),
(1101, 112, '_manage_stock', 'no'),
(1102, 112, '_backorders', 'no'),
(1103, 112, '_sold_individually', 'no'),
(1104, 112, '_weight', ''),
(1105, 112, '_length', ''),
(1106, 112, '_width', ''),
(1107, 112, '_height', ''),
(1108, 112, '_upsell_ids', 'a:0:{}'),
(1109, 112, '_crosssell_ids', 'a:0:{}'),
(1110, 112, '_purchase_note', ''),
(1111, 112, '_default_attributes', 'a:0:{}'),
(1112, 112, '_virtual', 'no'),
(1113, 112, '_downloadable', 'no'),
(1114, 112, '_product_image_gallery', '118,109,111,113'),
(1115, 112, '_download_limit', '-1'),
(1116, 112, '_download_expiry', '-1'),
(1117, 112, '_thumbnail_id', '113'),
(1118, 112, '_stock', NULL),
(1119, 112, '_stock_status', 'instock'),
(1120, 112, '_wc_average_rating', '0'),
(1121, 112, '_wc_rating_count', 'a:0:{}'),
(1122, 112, '_wc_review_count', '0'),
(1123, 112, '_downloadable_files', 'a:0:{}'),
(1124, 112, '_product_attributes', 'a:3:{s:12:\"pa_attr-type\";a:6:{s:4:\"name\";s:12:\"pa_attr-type\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_series\";a:6:{s:4:\"name\";s:9:\"pa_series\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1125, 112, '_product_version', '3.4.3'),
(1126, 112, '_price', '7000'),
(1127, 112, '_edit_lock', '1530686721:1'),
(1128, 113, '_wp_attached_file', '2018/07/product-17.jpg'),
(1129, 113, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:281;s:6:\"height\";i:200;s:4:\"file\";s:22:\"2018/07/product-17.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"product-17-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"product-17-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"product-17-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1130, 112, '_edit_last', '1'),
(1131, 118, '_wp_attached_file', '2018/07/product-4.jpg'),
(1132, 118, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:235;s:6:\"height\";i:180;s:4:\"file\";s:21:\"2018/07/product-4.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"product-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"product-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"product-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1133, 119, '_menu_item_type', 'taxonomy'),
(1134, 119, '_menu_item_menu_item_parent', '0'),
(1135, 119, '_menu_item_object_id', '15'),
(1136, 119, '_menu_item_object', 'product_cat'),
(1137, 119, '_menu_item_target', ''),
(1138, 119, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1139, 119, '_menu_item_xfn', ''),
(1140, 119, '_menu_item_url', ''),
(1142, 120, '_menu_item_type', 'taxonomy'),
(1143, 120, '_menu_item_menu_item_parent', '0'),
(1144, 120, '_menu_item_object_id', '20'),
(1145, 120, '_menu_item_object', 'product_cat'),
(1146, 120, '_menu_item_target', ''),
(1147, 120, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1148, 120, '_menu_item_xfn', ''),
(1149, 120, '_menu_item_url', ''),
(1151, 121, '_menu_item_type', 'taxonomy'),
(1152, 121, '_menu_item_menu_item_parent', '0'),
(1153, 121, '_menu_item_object_id', '21'),
(1154, 121, '_menu_item_object', 'product_cat'),
(1155, 121, '_menu_item_target', ''),
(1156, 121, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1157, 121, '_menu_item_xfn', ''),
(1158, 121, '_menu_item_url', ''),
(1160, 122, '_menu_item_type', 'taxonomy'),
(1161, 122, '_menu_item_menu_item_parent', '5'),
(1162, 122, '_menu_item_object_id', '15'),
(1163, 122, '_menu_item_object', 'product_cat'),
(1164, 122, '_menu_item_target', ''),
(1165, 122, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1166, 122, '_menu_item_xfn', ''),
(1167, 122, '_menu_item_url', ''),
(1169, 123, '_menu_item_type', 'taxonomy'),
(1170, 123, '_menu_item_menu_item_parent', '5'),
(1171, 123, '_menu_item_object_id', '20'),
(1172, 123, '_menu_item_object', 'product_cat'),
(1173, 123, '_menu_item_target', ''),
(1174, 123, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1175, 123, '_menu_item_xfn', ''),
(1176, 123, '_menu_item_url', ''),
(1178, 124, '_menu_item_type', 'taxonomy'),
(1179, 124, '_menu_item_menu_item_parent', '5'),
(1180, 124, '_menu_item_object_id', '21'),
(1181, 124, '_menu_item_object', 'product_cat'),
(1182, 124, '_menu_item_target', ''),
(1183, 124, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1184, 124, '_menu_item_xfn', ''),
(1185, 124, '_menu_item_url', ''),
(1187, 125, '_sku', 'LVJR0013'),
(1188, 125, '_regular_price', '7000'),
(1189, 125, '_sale_price', ''),
(1190, 125, '_sale_price_dates_from', ''),
(1191, 125, '_sale_price_dates_to', ''),
(1192, 125, 'total_sales', '0'),
(1193, 125, '_tax_status', 'taxable'),
(1194, 125, '_tax_class', ''),
(1195, 125, '_manage_stock', 'no'),
(1196, 125, '_backorders', 'no'),
(1197, 125, '_sold_individually', 'no'),
(1198, 125, '_weight', ''),
(1199, 125, '_length', ''),
(1200, 125, '_width', ''),
(1201, 125, '_height', ''),
(1202, 125, '_upsell_ids', 'a:0:{}'),
(1203, 125, '_crosssell_ids', 'a:0:{}'),
(1204, 125, '_purchase_note', ''),
(1205, 125, '_default_attributes', 'a:0:{}'),
(1206, 125, '_virtual', 'no'),
(1207, 125, '_downloadable', 'no'),
(1208, 125, '_product_image_gallery', '118,109,111,113'),
(1209, 125, '_download_limit', '-1'),
(1210, 125, '_download_expiry', '-1'),
(1211, 125, '_thumbnail_id', '113'),
(1212, 125, '_stock', NULL),
(1213, 125, '_stock_status', 'instock'),
(1214, 125, '_wc_average_rating', '0'),
(1215, 125, '_wc_rating_count', 'a:0:{}'),
(1216, 125, '_wc_review_count', '0'),
(1217, 125, '_downloadable_files', 'a:0:{}'),
(1218, 125, '_product_attributes', 'a:3:{s:12:\"pa_attr-type\";a:6:{s:4:\"name\";s:12:\"pa_attr-type\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_series\";a:6:{s:4:\"name\";s:9:\"pa_series\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1219, 125, '_product_version', '3.4.3'),
(1220, 125, '_price', '7000'),
(1221, 125, '_edit_lock', '1530763850:1'),
(1222, 125, '_edit_last', '1'),
(1225, 127, '_edit_last', '1'),
(1226, 127, '_edit_lock', '1530697699:1'),
(1227, 127, '_wp_page_template', 'template-parts/embroidery.php'),
(1228, 128, '_edit_last', '1'),
(1229, 128, '_edit_lock', '1530697765:1'),
(1230, 136, '_wp_attached_file', '2018/07/embroidery-banner.jpg'),
(1231, 136, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1415;s:6:\"height\";i:333;s:4:\"file\";s:29:\"2018/07/embroidery-banner.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"embroidery-banner-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"embroidery-banner-300x71.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:71;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"embroidery-banner-768x181.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"embroidery-banner-1024x241.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:241;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"embroidery-banner-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"embroidery-banner-600x141.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:141;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"embroidery-banner-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"embroidery-banner-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"embroidery-banner-600x141.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:141;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"embroidery-banner-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1232, 127, 'banner_top', '136'),
(1233, 127, '_banner_top', 'field_5b3c84b8bc994'),
(1234, 127, 'title', '\"Creating the details that matter\"'),
(1235, 127, '_title', 'field_5b3c84dbbc995'),
(1236, 127, 'image', '138'),
(1237, 127, '_image', 'field_5b3c84fcbc996'),
(1238, 127, 'content_right', 'Integer posuere metus sollicitudin, blandit est non, congue mauris. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis pulvinar est tristique iaculis dapibus. Nam commodo ornare tortor, aliquet vulputate orci varius a. Quisque tincidunt massa at ligula scelerisque, vel pretium nunc tincidunt. Cras mi tellus, vestibulum id neque eget, aliquet fermentum odio. Nulla sit amet vestibulum elit. Suspendisse vel mi posuere, vestibulum magna eget, egestas eros. Sed dignissim dolor non ornare luctus.\r\n\r\nIn eu consectetur nunc. Cras vitae erat eget turpis mattis dictum eu et nisi. Nam at nulla sem. Nunc nec est viverra sapien commodo accumsan. Fusce at fermentum felis, eget vestibulum turpis. Curabitur eu odio mauris. Pellentesque purus neque, consequat eu aliquet nec, consectetur vitae elit. Quisque nec arcu eget mi scelerisque tristique.\r\n\r\nEtiam mattis pharetra mattis. Nunc tempus dui a ipsum gravida, sed finibus justo consequat. Pellentesque rutrum felis vitae mauris porttitor, eu porttitor lacus varius. Nam purus urna, posuere a tincidunt at, convallis vitae justo. Phasellus rutrum, massa id finibus egestas, dui mauris porta sem, nec semper tellus quam eu tellus. Mauris erat tortor, scelerisque ut ante at, auctor eleifend nisi. Vestibulum vulputate pretium consequat. Integer vestibulum dignissim lacus. Morbi finibus lobortis ex at viverra. Aliquam sollicitudin tristique mi ut tempor. Nulla feugiat pulvinar velit nec pretium. Cras in velit arcu.'),
(1239, 127, '_content_right', 'field_5b3c8510bc997'),
(1240, 127, 'content_left', 'Duis leo nisi, molestie vitae sem a, porttitor luctus quam. Ut tempor, sapien nec vulputate pellentesque, risus urna efficitur arcu, vel sollicitudin lacus lorem a purus. Mauris tristique pharetra condimentum. In sem urna, bibendum at hendrerit vel, pharetra sed neque. Nullam consequat, neque ut placerat pulvinar, lacus neque egestas arcu, vitae malesuada risus arcu vitae dui. Quisque tempor vel quam a pulvinar. Integer vehicula varius purus eu gravida. Etiam odio turpis, fermentum vel eros vitae, imperdiet pellentesque magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc venenatis orci vel risus tristique egestas. Maecenas dapibus ultrices dolor, vel rhoncus nisl elementum eget. Ut enim leo, luctus sed lorem ultricies, finibus cursus sem.\r\n\r\nFusce scelerisque nunc erat. Pellentesque sed diam vitae massa scelerisque interdum vel sit amet nisl. Nullam ac ipsum efficitur, congue nibh egestas, semper turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ultrices nec risus et facilisis. Morbi fringilla suscipit enim at imperdiet. Nullam finibus a leo et tincidunt. Praesent a nulla fringilla, tincidunt libero sit amet, lacinia eros. In mollis congue mauris, quis congue sapien scelerisque id.'),
(1241, 127, '_content_left', 'field_5b3c852dbc998'),
(1242, 127, 'background_bottom', '139'),
(1243, 127, '_background_bottom', 'field_5b3c8538bc999'),
(1244, 137, 'banner_top', '136'),
(1245, 137, '_banner_top', 'field_5b3c84b8bc994'),
(1246, 137, 'title', '\"Creating the details that matter\"'),
(1247, 137, '_title', 'field_5b3c84dbbc995'),
(1248, 137, 'image', ''),
(1249, 137, '_image', 'field_5b3c84fcbc996'),
(1250, 137, 'content_right', ''),
(1251, 137, '_content_right', 'field_5b3c8510bc997'),
(1252, 137, 'content_left', ''),
(1253, 137, '_content_left', 'field_5b3c852dbc998'),
(1254, 137, 'background_bottom', ''),
(1255, 137, '_background_bottom', 'field_5b3c8538bc999'),
(1256, 138, '_wp_attached_file', '2018/07/embroidery-img.jpg'),
(1257, 138, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:542;s:6:\"height\";i:462;s:4:\"file\";s:26:\"2018/07/embroidery-img.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"embroidery-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"embroidery-img-300x256.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:256;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"embroidery-img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"embroidery-img-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"embroidery-img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"embroidery-img-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1258, 139, '_wp_attached_file', '2018/07/embroidery-bg.jpg'),
(1259, 139, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:645;s:6:\"height\";i:695;s:4:\"file\";s:25:\"2018/07/embroidery-bg.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"embroidery-bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"embroidery-bg-278x300.jpg\";s:5:\"width\";i:278;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"embroidery-bg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"embroidery-bg-600x647.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:647;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"embroidery-bg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"embroidery-bg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"embroidery-bg-600x647.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:647;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"embroidery-bg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1260, 140, 'banner_top', '136'),
(1261, 140, '_banner_top', 'field_5b3c84b8bc994'),
(1262, 140, 'title', '\"Creating the details that matter\"'),
(1263, 140, '_title', 'field_5b3c84dbbc995'),
(1264, 140, 'image', '138'),
(1265, 140, '_image', 'field_5b3c84fcbc996'),
(1266, 140, 'content_right', 'Integer posuere metus sollicitudin, blandit est non, congue mauris. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis pulvinar est tristique iaculis dapibus. Nam commodo ornare tortor, aliquet vulputate orci varius a. Quisque tincidunt massa at ligula scelerisque, vel pretium nunc tincidunt. Cras mi tellus, vestibulum id neque eget, aliquet fermentum odio. Nulla sit amet vestibulum elit. Suspendisse vel mi posuere, vestibulum magna eget, egestas eros. Sed dignissim dolor non ornare luctus. In eu consectetur nunc. Cras vitae erat eget turpis mattis dictum eu et nisi. Nam at nulla sem. Nunc nec est viverra sapien commodo accumsan. Fusce at fermentum felis, eget vestibulum turpis. Curabitur eu odio mauris. Pellentesque purus neque, consequat eu aliquet nec, consectetur vitae elit. Quisque nec arcu eget mi scelerisque tristique. Etiam mattis pharetra mattis. Nunc tempus dui a ipsum gravida, sed finibus justo consequat. Pellentesque rutrum felis vitae mauris porttitor, eu porttitor lacus varius. Nam purus urna, posuere a tincidunt at, convallis vitae justo. Phasellus rutrum, massa id finibus egestas, dui mauris porta sem, nec semper tellus quam eu tellus. Mauris erat tortor, scelerisque ut ante at, auctor eleifend nisi. Vestibulum vulputate pretium consequat. Integer vestibulum dignissim lacus. Morbi finibus lobortis ex at viverra. Aliquam sollicitudin tristique mi ut tempor. Nulla feugiat pulvinar velit nec pretium. Cras in velit arcu.'),
(1267, 140, '_content_right', 'field_5b3c8510bc997'),
(1268, 140, 'content_left', 'Duis leo nisi, molestie vitae sem a, porttitor luctus quam. Ut tempor, sapien nec vulputate pellentesque, risus urna efficitur arcu, vel sollicitudin lacus lorem a purus. Mauris tristique pharetra condimentum. In sem urna, bibendum at hendrerit vel, pharetra sed neque. Nullam consequat, neque ut placerat pulvinar, lacus neque egestas arcu, vitae malesuada risus arcu vitae dui. Quisque tempor vel quam a pulvinar. Integer vehicula varius purus eu gravida. Etiam odio turpis, fermentum vel eros vitae, imperdiet pellentesque magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc venenatis orci vel risus tristique egestas. Maecenas dapibus ultrices dolor, vel rhoncus nisl elementum eget. Ut enim leo, luctus sed lorem ultricies, finibus cursus sem. Fusce scelerisque nunc erat. Pellentesque sed diam vitae massa scelerisque interdum vel sit amet nisl. Nullam ac ipsum efficitur, congue nibh egestas, semper turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ultrices nec risus et facilisis. Morbi fringilla suscipit enim at imperdiet. Nullam finibus a leo et tincidunt. Praesent a nulla fringilla, tincidunt libero sit amet, lacinia eros. In mollis congue mauris, quis congue sapien scelerisque id.');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1269, 140, '_content_left', 'field_5b3c852dbc998'),
(1270, 140, 'background_bottom', '139'),
(1271, 140, '_background_bottom', 'field_5b3c8538bc999'),
(1272, 141, 'banner_top', '136'),
(1273, 141, '_banner_top', 'field_5b3c84b8bc994'),
(1274, 141, 'title', '\"Creating the details that matter\"'),
(1275, 141, '_title', 'field_5b3c84dbbc995'),
(1276, 141, 'image', '138'),
(1277, 141, '_image', 'field_5b3c84fcbc996'),
(1278, 141, 'content_right', 'Integer posuere metus sollicitudin, blandit est non, congue mauris. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis pulvinar est tristique iaculis dapibus. Nam commodo ornare tortor, aliquet vulputate orci varius a. Quisque tincidunt massa at ligula scelerisque, vel pretium nunc tincidunt. Cras mi tellus, vestibulum id neque eget, aliquet fermentum odio. Nulla sit amet vestibulum elit. Suspendisse vel mi posuere, vestibulum magna eget, egestas eros. Sed dignissim dolor non ornare luctus. In eu consectetur nunc. Cras vitae erat eget turpis mattis dictum eu et nisi. Nam at nulla sem. Nunc nec est viverra sapien commodo accumsan. Fusce at fermentum felis, eget vestibulum turpis. Curabitur eu odio mauris. Pellentesque purus neque, consequat eu aliquet nec, consectetur vitae elit. Quisque nec arcu eget mi scelerisque tristique. Etiam mattis pharetra mattis. Nunc tempus dui a ipsum gravida, sed finibus justo consequat. Pellentesque rutrum felis vitae mauris porttitor, eu porttitor lacus varius. Nam purus urna, posuere a tincidunt at, convallis vitae justo. Phasellus rutrum, massa id finibus egestas, dui mauris porta sem, nec semper tellus quam eu tellus. Mauris erat tortor, scelerisque ut ante at, auctor eleifend nisi. Vestibulum vulputate pretium consequat. Integer vestibulum dignissim lacus. Morbi finibus lobortis ex at viverra. Aliquam sollicitudin tristique mi ut tempor. Nulla feugiat pulvinar velit nec pretium. Cras in velit arcu.'),
(1279, 141, '_content_right', 'field_5b3c8510bc997'),
(1280, 141, 'content_left', 'Duis leo nisi, molestie vitae sem a, porttitor luctus quam. Ut tempor, sapien nec vulputate pellentesque, risus urna efficitur arcu, vel sollicitudin lacus lorem a purus. Mauris tristique pharetra condimentum. In sem urna, bibendum at hendrerit vel, pharetra sed neque. Nullam consequat, neque ut placerat pulvinar, lacus neque egestas arcu, vitae malesuada risus arcu vitae dui. Quisque tempor vel quam a pulvinar. Integer vehicula varius purus eu gravida. Etiam odio turpis, fermentum vel eros vitae, imperdiet pellentesque magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc venenatis orci vel risus tristique egestas. Maecenas dapibus ultrices dolor, vel rhoncus nisl elementum eget. Ut enim leo, luctus sed lorem ultricies, finibus cursus sem.\r\n\r\nFusce scelerisque nunc erat. Pellentesque sed diam vitae massa scelerisque interdum vel sit amet nisl. Nullam ac ipsum efficitur, congue nibh egestas, semper turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ultrices nec risus et facilisis. Morbi fringilla suscipit enim at imperdiet. Nullam finibus a leo et tincidunt. Praesent a nulla fringilla, tincidunt libero sit amet, lacinia eros. In mollis congue mauris, quis congue sapien scelerisque id.'),
(1281, 141, '_content_left', 'field_5b3c852dbc998'),
(1282, 141, 'background_bottom', '139'),
(1283, 141, '_background_bottom', 'field_5b3c8538bc999'),
(1284, 142, 'banner_top', '136'),
(1285, 142, '_banner_top', 'field_5b3c84b8bc994'),
(1286, 142, 'title', '\"Creating the details that matter\"'),
(1287, 142, '_title', 'field_5b3c84dbbc995'),
(1288, 142, 'image', '138'),
(1289, 142, '_image', 'field_5b3c84fcbc996'),
(1290, 142, 'content_right', 'Integer posuere metus sollicitudin, blandit est non, congue mauris. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis pulvinar est tristique iaculis dapibus. Nam commodo ornare tortor, aliquet vulputate orci varius a. Quisque tincidunt massa at ligula scelerisque, vel pretium nunc tincidunt. Cras mi tellus, vestibulum id neque eget, aliquet fermentum odio. Nulla sit amet vestibulum elit. Suspendisse vel mi posuere, vestibulum magna eget, egestas eros. Sed dignissim dolor non ornare luctus.\r\n\r\nIn eu consectetur nunc. Cras vitae erat eget turpis mattis dictum eu et nisi. Nam at nulla sem. Nunc nec est viverra sapien commodo accumsan. Fusce at fermentum felis, eget vestibulum turpis. Curabitur eu odio mauris. Pellentesque purus neque, consequat eu aliquet nec, consectetur vitae elit. Quisque nec arcu eget mi scelerisque tristique.\r\n\r\nEtiam mattis pharetra mattis. Nunc tempus dui a ipsum gravida, sed finibus justo consequat. Pellentesque rutrum felis vitae mauris porttitor, eu porttitor lacus varius. Nam purus urna, posuere a tincidunt at, convallis vitae justo. Phasellus rutrum, massa id finibus egestas, dui mauris porta sem, nec semper tellus quam eu tellus. Mauris erat tortor, scelerisque ut ante at, auctor eleifend nisi. Vestibulum vulputate pretium consequat. Integer vestibulum dignissim lacus. Morbi finibus lobortis ex at viverra. Aliquam sollicitudin tristique mi ut tempor. Nulla feugiat pulvinar velit nec pretium. Cras in velit arcu.'),
(1291, 142, '_content_right', 'field_5b3c8510bc997'),
(1292, 142, 'content_left', 'Duis leo nisi, molestie vitae sem a, porttitor luctus quam. Ut tempor, sapien nec vulputate pellentesque, risus urna efficitur arcu, vel sollicitudin lacus lorem a purus. Mauris tristique pharetra condimentum. In sem urna, bibendum at hendrerit vel, pharetra sed neque. Nullam consequat, neque ut placerat pulvinar, lacus neque egestas arcu, vitae malesuada risus arcu vitae dui. Quisque tempor vel quam a pulvinar. Integer vehicula varius purus eu gravida. Etiam odio turpis, fermentum vel eros vitae, imperdiet pellentesque magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc venenatis orci vel risus tristique egestas. Maecenas dapibus ultrices dolor, vel rhoncus nisl elementum eget. Ut enim leo, luctus sed lorem ultricies, finibus cursus sem.\r\n\r\nFusce scelerisque nunc erat. Pellentesque sed diam vitae massa scelerisque interdum vel sit amet nisl. Nullam ac ipsum efficitur, congue nibh egestas, semper turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ultrices nec risus et facilisis. Morbi fringilla suscipit enim at imperdiet. Nullam finibus a leo et tincidunt. Praesent a nulla fringilla, tincidunt libero sit amet, lacinia eros. In mollis congue mauris, quis congue sapien scelerisque id.'),
(1293, 142, '_content_left', 'field_5b3c852dbc998'),
(1294, 142, 'background_bottom', '139'),
(1295, 142, '_background_bottom', 'field_5b3c8538bc999'),
(1296, 144, '_menu_item_type', 'post_type'),
(1297, 144, '_menu_item_menu_item_parent', '0'),
(1298, 144, '_menu_item_object_id', '127'),
(1299, 144, '_menu_item_object', 'page'),
(1300, 144, '_menu_item_target', ''),
(1301, 144, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1302, 144, '_menu_item_xfn', ''),
(1303, 144, '_menu_item_url', ''),
(1305, 145, '_edit_last', '1'),
(1306, 145, '_edit_lock', '1530699805:1'),
(1307, 145, '_wp_page_template', 'template-parts/contact.php'),
(1308, 147, '_wp_attached_file', '2018/07/contact-img.jpg'),
(1309, 147, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:399;s:6:\"height\";i:306;s:4:\"file\";s:23:\"2018/07/contact-img.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"contact-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"contact-img-300x230.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"contact-img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"contact-img-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"contact-img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"contact-img-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1310, 145, '_thumbnail_id', '147'),
(1311, 148, '_edit_last', '1'),
(1312, 148, '_edit_lock', '1530700250:1'),
(1313, 145, 'list_email_0_title', 'Media enquiries:'),
(1314, 145, '_list_email_0_title', 'field_5b3c9f382e75e'),
(1315, 145, 'list_email_0_email', 'pr@JayAhr.com'),
(1316, 145, '_list_email_0_email', 'field_5b3c9f442e75f'),
(1317, 145, 'list_email_1_title', 'general enquiries:'),
(1318, 145, '_list_email_1_title', 'field_5b3c9f382e75e'),
(1319, 145, 'list_email_1_email', 'info@JayAhr.com'),
(1320, 145, '_list_email_1_email', 'field_5b3c9f442e75f'),
(1321, 145, 'list_email_2_title', 'returns / exchanges:'),
(1322, 145, '_list_email_2_title', 'field_5b3c9f382e75e'),
(1323, 145, 'list_email_2_email', 'returns@JayAhr.com'),
(1324, 145, '_list_email_2_email', 'field_5b3c9f442e75f'),
(1325, 145, 'list_email', '3'),
(1326, 145, '_list_email', 'field_5b3c9f232e75d'),
(1327, 152, 'list_email_0_title', 'Media enquiries:'),
(1328, 152, '_list_email_0_title', 'field_5b3c9f382e75e'),
(1329, 152, 'list_email_0_email', 'pr@JayAhr.com'),
(1330, 152, '_list_email_0_email', 'field_5b3c9f442e75f'),
(1331, 152, 'list_email_1_title', 'general enquiries:'),
(1332, 152, '_list_email_1_title', 'field_5b3c9f382e75e'),
(1333, 152, 'list_email_1_email', 'info@JayAhr.com'),
(1334, 152, '_list_email_1_email', 'field_5b3c9f442e75f'),
(1335, 152, 'list_email_2_title', 'returns / exchanges:'),
(1336, 152, '_list_email_2_title', 'field_5b3c9f382e75e'),
(1337, 152, 'list_email_2_email', 'returns@JayAhr.com'),
(1338, 152, '_list_email_2_email', 'field_5b3c9f442e75f'),
(1339, 152, 'list_email', '3'),
(1340, 152, '_list_email', 'field_5b3c9f232e75d'),
(1341, 153, '_form', '<div class=\"group\">[text* your-name class:your-name placeholder \"Name\"]</div>\n<div class=\"group\">[email* your-email class:your-email placeholder \"Email\"]</div>\n<div class=\"group\">[tel* your-phone class:your-phone placeholder \"Phone Number\"]</div>\n<div class=\"group\">[textarea* your-message class:your-message placeholder \"Message\"]</div>'),
(1342, 153, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:24:\"Jay Ahr \"[your-subject]\"\";s:6:\"sender\";s:41:\"[your-name] <arrowicode.tester@gmail.com>\";s:9:\"recipient\";s:27:\"arrowicode.tester@gmail.com\";s:4:\"body\";s:169:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Jay Ahr (http://localhost/jayahr)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(1343, 153, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:24:\"Jay Ahr \"[your-subject]\"\";s:6:\"sender\";s:37:\"Jay Ahr <arrowicode.tester@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:111:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Jay Ahr (http://localhost/jayahr)\";s:18:\"additional_headers\";s:37:\"Reply-To: arrowicode.tester@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(1344, 153, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(1345, 153, '_additional_settings', ''),
(1346, 153, '_locale', 'en_US'),
(1347, 156, '_edit_last', '1'),
(1348, 156, '_wp_page_template', 'template-parts/editorial.php'),
(1349, 156, '_edit_lock', '1530763340:1'),
(1350, 158, '_menu_item_type', 'post_type'),
(1351, 158, '_menu_item_menu_item_parent', '0'),
(1352, 158, '_menu_item_object_id', '156'),
(1353, 158, '_menu_item_object', 'page'),
(1354, 158, '_menu_item_target', ''),
(1355, 158, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1356, 158, '_menu_item_xfn', ''),
(1357, 158, '_menu_item_url', ''),
(1359, 159, '_edit_last', '1'),
(1360, 159, '_edit_lock', '1530763341:1'),
(1369, 156, 'list_editorial_0_image', '179'),
(1370, 156, '_list_editorial_0_image', 'field_5b3d8151e384b'),
(1371, 156, 'list_editorial_0_title', 'Massad'),
(1372, 156, '_list_editorial_0_title', 'field_5b3d816be384c'),
(1373, 156, 'list_editorial_0_sub_title', 'The Louis Vuitton Keepall Collection Israel'),
(1374, 156, '_list_editorial_0_sub_title', 'field_5b3d8198e384e'),
(1375, 156, 'list_editorial_0_description', 'Integer posuere metus sollicitudin, blandit est non, congue mauris. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis pulvinar est tristique iaculis dapibus. Nam commodo ornare tortor, aliquet vulputate orci varius a. Quisque tincidunt massa at ligula scelerisque, vel pretium nunc tincidunt. Cras mi tellus, vestibulum id neque eget, aliquet fermentum odio. Nulla sit amet vestibulum elit. Suspendisse vel mi posuere, vestibulum magna eget, egestas eros. Sed dignissim dolor non ornare luctus.'),
(1376, 156, '_list_editorial_0_description', 'field_5b3d8178e384d'),
(1377, 156, 'list_editorial_1_image', '180'),
(1378, 156, '_list_editorial_1_image', 'field_5b3d8151e384b'),
(1379, 156, 'list_editorial_1_title', 'Apollo'),
(1380, 156, '_list_editorial_1_title', 'field_5b3d816be384c'),
(1381, 156, 'list_editorial_1_sub_title', 'The Louis vuitton keepall Collection United States of America'),
(1382, 156, '_list_editorial_1_sub_title', 'field_5b3d8198e384e'),
(1383, 156, 'list_editorial_1_description', 'Etiam mattis pharetra mattis. Nunc tempus dui a ipsum gravida, sed finibus justo consequat. Pellentesque rutrum felis vitae mauris porttitor, eu porttitor lacus varius. Nam purus urna, posuere a tincidunt at, convallis vitae justo. Phasellus rutrum, massa id finibus egestas, dui mauris porta sem, nec semper tellus quam eu tellus. Mauris erat tortor, scelerisque ut ante at, auctor eleifend nisi. Vestibulum vulputate pretium consequat. Integer vestibulum dignissim lacus. Morbi finibus lobortis ex at viverra. Aliquam sollicitudin tristique mi ut tempor. Nulla feugiat pulvinar velit nec pretium. Cras in velit arcu.'),
(1384, 156, '_list_editorial_1_description', 'field_5b3d8178e384d'),
(1385, 156, 'list_editorial_2_image', '181'),
(1386, 156, '_list_editorial_2_image', 'field_5b3d8151e384b'),
(1387, 156, 'list_editorial_2_title', 'ARMORED BATTALION'),
(1388, 156, '_list_editorial_2_title', 'field_5b3d816be384c'),
(1389, 156, 'list_editorial_2_sub_title', 'The Louis Vuitton Keepall Collection China'),
(1390, 156, '_list_editorial_2_sub_title', 'field_5b3d8198e384e'),
(1391, 156, 'list_editorial_2_description', 'Duis leo nisi, molestie vitae sem a, porttitor luctus quam. Ut tempor, sapien nec vulputate pellentesque, risus urna efficitur arcu, vel sollicitudin lacus lorem a purus. Mauris tristique pharetra condimentum. In sem urna, bibendum at hendrerit vel, pharetra sed neque. Nullam consequat, neque ut placerat pulvinar, lacus neque egestas arcu, vitae malesuada risus arcu vitae dui. Quisque tempor vel quam a pulvinar. Integer vehicula varius purus eu gravida. Etiam odio turpis, fermentum vel eros vitae, imperdiet pellentesque magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc venenatis orci vel risus tristique egestas. Maecenas dapibus ultrices dolor, vel rhoncus nisl elementum eget. Ut enim leo, luctus sed lorem ultricies, finibus cursus sem.'),
(1392, 156, '_list_editorial_2_description', 'field_5b3d8178e384d'),
(1393, 156, 'list_editorial_3_image', '182'),
(1394, 156, '_list_editorial_3_image', 'field_5b3d8151e384b'),
(1395, 156, 'list_editorial_3_title', ''),
(1396, 156, '_list_editorial_3_title', 'field_5b3d816be384c'),
(1397, 156, 'list_editorial_3_sub_title', ''),
(1398, 156, '_list_editorial_3_sub_title', 'field_5b3d8198e384e'),
(1399, 156, 'list_editorial_3_description', ''),
(1400, 156, '_list_editorial_3_description', 'field_5b3d8178e384d'),
(1401, 156, 'list_editorial', '4'),
(1402, 156, '_list_editorial', 'field_5b3d812ae384a'),
(1403, 169, 'list_editorial_0_image', '165'),
(1404, 169, '_list_editorial_0_image', 'field_5b3d8151e384b'),
(1405, 169, 'list_editorial_0_title', 'Massad'),
(1406, 169, '_list_editorial_0_title', 'field_5b3d816be384c'),
(1407, 169, 'list_editorial_0_sub_title', 'The Louis Vuitton Keepall Collection Israel'),
(1408, 169, '_list_editorial_0_sub_title', 'field_5b3d8198e384e'),
(1409, 169, 'list_editorial_0_description', 'Integer posuere metus sollicitudin, blandit est non, congue mauris. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis pulvinar est tristique iaculis dapibus. Nam commodo ornare tortor, aliquet vulputate orci varius a. Quisque tincidunt massa at ligula scelerisque, vel pretium nunc tincidunt. Cras mi tellus, vestibulum id neque eget, aliquet fermentum odio. Nulla sit amet vestibulum elit. Suspendisse vel mi posuere, vestibulum magna eget, egestas eros. Sed dignissim dolor non ornare luctus.'),
(1410, 169, '_list_editorial_0_description', 'field_5b3d8178e384d'),
(1411, 169, 'list_editorial_1_image', '166'),
(1412, 169, '_list_editorial_1_image', 'field_5b3d8151e384b'),
(1413, 169, 'list_editorial_1_title', 'Apollo'),
(1414, 169, '_list_editorial_1_title', 'field_5b3d816be384c'),
(1415, 169, 'list_editorial_1_sub_title', 'The Louis vuitton keepall Collection United States of America'),
(1416, 169, '_list_editorial_1_sub_title', 'field_5b3d8198e384e'),
(1417, 169, 'list_editorial_1_description', 'Etiam mattis pharetra mattis. Nunc tempus dui a ipsum gravida, sed finibus justo consequat. Pellentesque rutrum felis vitae mauris porttitor, eu porttitor lacus varius. Nam purus urna, posuere a tincidunt at, convallis vitae justo. Phasellus rutrum, massa id finibus egestas, dui mauris porta sem, nec semper tellus quam eu tellus. Mauris erat tortor, scelerisque ut ante at, auctor eleifend nisi. Vestibulum vulputate pretium consequat. Integer vestibulum dignissim lacus. Morbi finibus lobortis ex at viverra. Aliquam sollicitudin tristique mi ut tempor. Nulla feugiat pulvinar velit nec pretium. Cras in velit arcu.'),
(1418, 169, '_list_editorial_1_description', 'field_5b3d8178e384d'),
(1419, 169, 'list_editorial_2_image', '167'),
(1420, 169, '_list_editorial_2_image', 'field_5b3d8151e384b'),
(1421, 169, 'list_editorial_2_title', 'ARMORED BATTALION'),
(1422, 169, '_list_editorial_2_title', 'field_5b3d816be384c'),
(1423, 169, 'list_editorial_2_sub_title', 'The Louis Vuitton Keepall Collection China'),
(1424, 169, '_list_editorial_2_sub_title', 'field_5b3d8198e384e'),
(1425, 169, 'list_editorial_2_description', 'Duis leo nisi, molestie vitae sem a, porttitor luctus quam. Ut tempor, sapien nec vulputate pellentesque, risus urna efficitur arcu, vel sollicitudin lacus lorem a purus. Mauris tristique pharetra condimentum. In sem urna, bibendum at hendrerit vel, pharetra sed neque. Nullam consequat, neque ut placerat pulvinar, lacus neque egestas arcu, vitae malesuada risus arcu vitae dui. Quisque tempor vel quam a pulvinar. Integer vehicula varius purus eu gravida. Etiam odio turpis, fermentum vel eros vitae, imperdiet pellentesque magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc venenatis orci vel risus tristique egestas. Maecenas dapibus ultrices dolor, vel rhoncus nisl elementum eget. Ut enim leo, luctus sed lorem ultricies, finibus cursus sem.'),
(1426, 169, '_list_editorial_2_description', 'field_5b3d8178e384d'),
(1427, 169, 'list_editorial_3_image', '168'),
(1428, 169, '_list_editorial_3_image', 'field_5b3d8151e384b'),
(1429, 169, 'list_editorial_3_title', ''),
(1430, 169, '_list_editorial_3_title', 'field_5b3d816be384c'),
(1431, 169, 'list_editorial_3_sub_title', ''),
(1432, 169, '_list_editorial_3_sub_title', 'field_5b3d8198e384e'),
(1433, 169, 'list_editorial_3_description', ''),
(1434, 169, '_list_editorial_3_description', 'field_5b3d8178e384d'),
(1435, 169, 'list_editorial', '4'),
(1436, 169, '_list_editorial', 'field_5b3d812ae384a'),
(1439, 171, 'list_editorial_0_image', '170'),
(1440, 171, '_list_editorial_0_image', 'field_5b3d8151e384b'),
(1441, 171, 'list_editorial_0_title', 'Massad'),
(1442, 171, '_list_editorial_0_title', 'field_5b3d816be384c'),
(1443, 171, 'list_editorial_0_sub_title', 'The Louis Vuitton Keepall Collection Israel'),
(1444, 171, '_list_editorial_0_sub_title', 'field_5b3d8198e384e'),
(1445, 171, 'list_editorial_0_description', 'Integer posuere metus sollicitudin, blandit est non, congue mauris. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis pulvinar est tristique iaculis dapibus. Nam commodo ornare tortor, aliquet vulputate orci varius a. Quisque tincidunt massa at ligula scelerisque, vel pretium nunc tincidunt. Cras mi tellus, vestibulum id neque eget, aliquet fermentum odio. Nulla sit amet vestibulum elit. Suspendisse vel mi posuere, vestibulum magna eget, egestas eros. Sed dignissim dolor non ornare luctus.'),
(1446, 171, '_list_editorial_0_description', 'field_5b3d8178e384d'),
(1447, 171, 'list_editorial_1_image', '166'),
(1448, 171, '_list_editorial_1_image', 'field_5b3d8151e384b'),
(1449, 171, 'list_editorial_1_title', 'Apollo'),
(1450, 171, '_list_editorial_1_title', 'field_5b3d816be384c'),
(1451, 171, 'list_editorial_1_sub_title', 'The Louis vuitton keepall Collection United States of America'),
(1452, 171, '_list_editorial_1_sub_title', 'field_5b3d8198e384e'),
(1453, 171, 'list_editorial_1_description', 'Etiam mattis pharetra mattis. Nunc tempus dui a ipsum gravida, sed finibus justo consequat. Pellentesque rutrum felis vitae mauris porttitor, eu porttitor lacus varius. Nam purus urna, posuere a tincidunt at, convallis vitae justo. Phasellus rutrum, massa id finibus egestas, dui mauris porta sem, nec semper tellus quam eu tellus. Mauris erat tortor, scelerisque ut ante at, auctor eleifend nisi. Vestibulum vulputate pretium consequat. Integer vestibulum dignissim lacus. Morbi finibus lobortis ex at viverra. Aliquam sollicitudin tristique mi ut tempor. Nulla feugiat pulvinar velit nec pretium. Cras in velit arcu.'),
(1454, 171, '_list_editorial_1_description', 'field_5b3d8178e384d'),
(1455, 171, 'list_editorial_2_image', '167'),
(1456, 171, '_list_editorial_2_image', 'field_5b3d8151e384b'),
(1457, 171, 'list_editorial_2_title', 'ARMORED BATTALION'),
(1458, 171, '_list_editorial_2_title', 'field_5b3d816be384c'),
(1459, 171, 'list_editorial_2_sub_title', 'The Louis Vuitton Keepall Collection China'),
(1460, 171, '_list_editorial_2_sub_title', 'field_5b3d8198e384e'),
(1461, 171, 'list_editorial_2_description', 'Duis leo nisi, molestie vitae sem a, porttitor luctus quam. Ut tempor, sapien nec vulputate pellentesque, risus urna efficitur arcu, vel sollicitudin lacus lorem a purus. Mauris tristique pharetra condimentum. In sem urna, bibendum at hendrerit vel, pharetra sed neque. Nullam consequat, neque ut placerat pulvinar, lacus neque egestas arcu, vitae malesuada risus arcu vitae dui. Quisque tempor vel quam a pulvinar. Integer vehicula varius purus eu gravida. Etiam odio turpis, fermentum vel eros vitae, imperdiet pellentesque magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc venenatis orci vel risus tristique egestas. Maecenas dapibus ultrices dolor, vel rhoncus nisl elementum eget. Ut enim leo, luctus sed lorem ultricies, finibus cursus sem.'),
(1462, 171, '_list_editorial_2_description', 'field_5b3d8178e384d'),
(1463, 171, 'list_editorial_3_image', '168'),
(1464, 171, '_list_editorial_3_image', 'field_5b3d8151e384b'),
(1465, 171, 'list_editorial_3_title', ''),
(1466, 171, '_list_editorial_3_title', 'field_5b3d816be384c'),
(1467, 171, 'list_editorial_3_sub_title', ''),
(1468, 171, '_list_editorial_3_sub_title', 'field_5b3d8198e384e'),
(1469, 171, 'list_editorial_3_description', ''),
(1470, 171, '_list_editorial_3_description', 'field_5b3d8178e384d'),
(1471, 171, 'list_editorial', '4'),
(1472, 171, '_list_editorial', 'field_5b3d812ae384a'),
(1481, 176, 'list_editorial_0_image', '172'),
(1482, 176, '_list_editorial_0_image', 'field_5b3d8151e384b'),
(1483, 176, 'list_editorial_0_title', 'Massad'),
(1484, 176, '_list_editorial_0_title', 'field_5b3d816be384c'),
(1485, 176, 'list_editorial_0_sub_title', 'The Louis Vuitton Keepall Collection Israel'),
(1486, 176, '_list_editorial_0_sub_title', 'field_5b3d8198e384e'),
(1487, 176, 'list_editorial_0_description', 'Integer posuere metus sollicitudin, blandit est non, congue mauris. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis pulvinar est tristique iaculis dapibus. Nam commodo ornare tortor, aliquet vulputate orci varius a. Quisque tincidunt massa at ligula scelerisque, vel pretium nunc tincidunt. Cras mi tellus, vestibulum id neque eget, aliquet fermentum odio. Nulla sit amet vestibulum elit. Suspendisse vel mi posuere, vestibulum magna eget, egestas eros. Sed dignissim dolor non ornare luctus.'),
(1488, 176, '_list_editorial_0_description', 'field_5b3d8178e384d'),
(1489, 176, 'list_editorial_1_image', '173'),
(1490, 176, '_list_editorial_1_image', 'field_5b3d8151e384b'),
(1491, 176, 'list_editorial_1_title', 'Apollo'),
(1492, 176, '_list_editorial_1_title', 'field_5b3d816be384c'),
(1493, 176, 'list_editorial_1_sub_title', 'The Louis vuitton keepall Collection United States of America'),
(1494, 176, '_list_editorial_1_sub_title', 'field_5b3d8198e384e'),
(1495, 176, 'list_editorial_1_description', 'Etiam mattis pharetra mattis. Nunc tempus dui a ipsum gravida, sed finibus justo consequat. Pellentesque rutrum felis vitae mauris porttitor, eu porttitor lacus varius. Nam purus urna, posuere a tincidunt at, convallis vitae justo. Phasellus rutrum, massa id finibus egestas, dui mauris porta sem, nec semper tellus quam eu tellus. Mauris erat tortor, scelerisque ut ante at, auctor eleifend nisi. Vestibulum vulputate pretium consequat. Integer vestibulum dignissim lacus. Morbi finibus lobortis ex at viverra. Aliquam sollicitudin tristique mi ut tempor. Nulla feugiat pulvinar velit nec pretium. Cras in velit arcu.'),
(1496, 176, '_list_editorial_1_description', 'field_5b3d8178e384d'),
(1497, 176, 'list_editorial_2_image', '174'),
(1498, 176, '_list_editorial_2_image', 'field_5b3d8151e384b'),
(1499, 176, 'list_editorial_2_title', 'ARMORED BATTALION'),
(1500, 176, '_list_editorial_2_title', 'field_5b3d816be384c'),
(1501, 176, 'list_editorial_2_sub_title', 'The Louis Vuitton Keepall Collection China'),
(1502, 176, '_list_editorial_2_sub_title', 'field_5b3d8198e384e'),
(1503, 176, 'list_editorial_2_description', 'Duis leo nisi, molestie vitae sem a, porttitor luctus quam. Ut tempor, sapien nec vulputate pellentesque, risus urna efficitur arcu, vel sollicitudin lacus lorem a purus. Mauris tristique pharetra condimentum. In sem urna, bibendum at hendrerit vel, pharetra sed neque. Nullam consequat, neque ut placerat pulvinar, lacus neque egestas arcu, vitae malesuada risus arcu vitae dui. Quisque tempor vel quam a pulvinar. Integer vehicula varius purus eu gravida. Etiam odio turpis, fermentum vel eros vitae, imperdiet pellentesque magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc venenatis orci vel risus tristique egestas. Maecenas dapibus ultrices dolor, vel rhoncus nisl elementum eget. Ut enim leo, luctus sed lorem ultricies, finibus cursus sem.'),
(1504, 176, '_list_editorial_2_description', 'field_5b3d8178e384d'),
(1505, 176, 'list_editorial_3_image', '175'),
(1506, 176, '_list_editorial_3_image', 'field_5b3d8151e384b'),
(1507, 176, 'list_editorial_3_title', ''),
(1508, 176, '_list_editorial_3_title', 'field_5b3d816be384c'),
(1509, 176, 'list_editorial_3_sub_title', ''),
(1510, 176, '_list_editorial_3_sub_title', 'field_5b3d8198e384e'),
(1511, 176, 'list_editorial_3_description', ''),
(1512, 176, '_list_editorial_3_description', 'field_5b3d8178e384d'),
(1513, 176, 'list_editorial', '4'),
(1514, 176, '_list_editorial', 'field_5b3d812ae384a'),
(1517, 178, 'list_editorial_0_image', '177'),
(1518, 178, '_list_editorial_0_image', 'field_5b3d8151e384b'),
(1519, 178, 'list_editorial_0_title', 'Massad'),
(1520, 178, '_list_editorial_0_title', 'field_5b3d816be384c'),
(1521, 178, 'list_editorial_0_sub_title', 'The Louis Vuitton Keepall Collection Israel'),
(1522, 178, '_list_editorial_0_sub_title', 'field_5b3d8198e384e'),
(1523, 178, 'list_editorial_0_description', 'Integer posuere metus sollicitudin, blandit est non, congue mauris. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis pulvinar est tristique iaculis dapibus. Nam commodo ornare tortor, aliquet vulputate orci varius a. Quisque tincidunt massa at ligula scelerisque, vel pretium nunc tincidunt. Cras mi tellus, vestibulum id neque eget, aliquet fermentum odio. Nulla sit amet vestibulum elit. Suspendisse vel mi posuere, vestibulum magna eget, egestas eros. Sed dignissim dolor non ornare luctus.'),
(1524, 178, '_list_editorial_0_description', 'field_5b3d8178e384d'),
(1525, 178, 'list_editorial_1_image', '173'),
(1526, 178, '_list_editorial_1_image', 'field_5b3d8151e384b'),
(1527, 178, 'list_editorial_1_title', 'Apollo'),
(1528, 178, '_list_editorial_1_title', 'field_5b3d816be384c'),
(1529, 178, 'list_editorial_1_sub_title', 'The Louis vuitton keepall Collection United States of America'),
(1530, 178, '_list_editorial_1_sub_title', 'field_5b3d8198e384e'),
(1531, 178, 'list_editorial_1_description', 'Etiam mattis pharetra mattis. Nunc tempus dui a ipsum gravida, sed finibus justo consequat. Pellentesque rutrum felis vitae mauris porttitor, eu porttitor lacus varius. Nam purus urna, posuere a tincidunt at, convallis vitae justo. Phasellus rutrum, massa id finibus egestas, dui mauris porta sem, nec semper tellus quam eu tellus. Mauris erat tortor, scelerisque ut ante at, auctor eleifend nisi. Vestibulum vulputate pretium consequat. Integer vestibulum dignissim lacus. Morbi finibus lobortis ex at viverra. Aliquam sollicitudin tristique mi ut tempor. Nulla feugiat pulvinar velit nec pretium. Cras in velit arcu.'),
(1532, 178, '_list_editorial_1_description', 'field_5b3d8178e384d'),
(1533, 178, 'list_editorial_2_image', '174'),
(1534, 178, '_list_editorial_2_image', 'field_5b3d8151e384b'),
(1535, 178, 'list_editorial_2_title', 'ARMORED BATTALION'),
(1536, 178, '_list_editorial_2_title', 'field_5b3d816be384c'),
(1537, 178, 'list_editorial_2_sub_title', 'The Louis Vuitton Keepall Collection China'),
(1538, 178, '_list_editorial_2_sub_title', 'field_5b3d8198e384e'),
(1539, 178, 'list_editorial_2_description', 'Duis leo nisi, molestie vitae sem a, porttitor luctus quam. Ut tempor, sapien nec vulputate pellentesque, risus urna efficitur arcu, vel sollicitudin lacus lorem a purus. Mauris tristique pharetra condimentum. In sem urna, bibendum at hendrerit vel, pharetra sed neque. Nullam consequat, neque ut placerat pulvinar, lacus neque egestas arcu, vitae malesuada risus arcu vitae dui. Quisque tempor vel quam a pulvinar. Integer vehicula varius purus eu gravida. Etiam odio turpis, fermentum vel eros vitae, imperdiet pellentesque magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc venenatis orci vel risus tristique egestas. Maecenas dapibus ultrices dolor, vel rhoncus nisl elementum eget. Ut enim leo, luctus sed lorem ultricies, finibus cursus sem.'),
(1540, 178, '_list_editorial_2_description', 'field_5b3d8178e384d'),
(1541, 178, 'list_editorial_3_image', '175'),
(1542, 178, '_list_editorial_3_image', 'field_5b3d8151e384b'),
(1543, 178, 'list_editorial_3_title', ''),
(1544, 178, '_list_editorial_3_title', 'field_5b3d816be384c'),
(1545, 178, 'list_editorial_3_sub_title', ''),
(1546, 178, '_list_editorial_3_sub_title', 'field_5b3d8198e384e'),
(1547, 178, 'list_editorial_3_description', ''),
(1548, 178, '_list_editorial_3_description', 'field_5b3d8178e384d'),
(1549, 178, 'list_editorial', '4'),
(1550, 178, '_list_editorial', 'field_5b3d812ae384a'),
(1551, 179, '_wp_attached_file', '2018/07/massad.jpg'),
(1552, 179, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1227;s:6:\"height\";i:670;s:4:\"file\";s:18:\"2018/07/massad.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"massad-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"massad-300x164.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"massad-768x419.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:419;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"massad-1024x559.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:559;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"massad-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"massad-600x328.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"massad-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"massad-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"massad-600x328.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"massad-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1553, 180, '_wp_attached_file', '2018/07/apollo.jpg'),
(1554, 180, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1227;s:6:\"height\";i:670;s:4:\"file\";s:18:\"2018/07/apollo.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"apollo-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"apollo-300x164.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"apollo-768x419.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:419;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"apollo-1024x559.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:559;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"apollo-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"apollo-600x328.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"apollo-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"apollo-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"apollo-600x328.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"apollo-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1555, 181, '_wp_attached_file', '2018/07/armored-battalion.jpg'),
(1556, 181, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1227;s:6:\"height\";i:670;s:4:\"file\";s:29:\"2018/07/armored-battalion.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"armored-battalion-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"armored-battalion-300x164.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"armored-battalion-768x419.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:419;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"armored-battalion-1024x559.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:559;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"armored-battalion-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"armored-battalion-600x328.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"armored-battalion-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"armored-battalion-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"armored-battalion-600x328.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"armored-battalion-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1557, 182, '_wp_attached_file', '2018/07/blacksmith.jpg'),
(1558, 182, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1227;s:6:\"height\";i:670;s:4:\"file\";s:22:\"2018/07/blacksmith.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"blacksmith-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"blacksmith-300x164.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"blacksmith-768x419.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:419;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"blacksmith-1024x559.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:559;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"blacksmith-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"blacksmith-600x328.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"blacksmith-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"blacksmith-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"blacksmith-600x328.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"blacksmith-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1559, 183, 'list_editorial_0_image', '179'),
(1560, 183, '_list_editorial_0_image', 'field_5b3d8151e384b'),
(1561, 183, 'list_editorial_0_title', 'Massad'),
(1562, 183, '_list_editorial_0_title', 'field_5b3d816be384c'),
(1563, 183, 'list_editorial_0_sub_title', 'The Louis Vuitton Keepall Collection Israel'),
(1564, 183, '_list_editorial_0_sub_title', 'field_5b3d8198e384e'),
(1565, 183, 'list_editorial_0_description', 'Integer posuere metus sollicitudin, blandit est non, congue mauris. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis pulvinar est tristique iaculis dapibus. Nam commodo ornare tortor, aliquet vulputate orci varius a. Quisque tincidunt massa at ligula scelerisque, vel pretium nunc tincidunt. Cras mi tellus, vestibulum id neque eget, aliquet fermentum odio. Nulla sit amet vestibulum elit. Suspendisse vel mi posuere, vestibulum magna eget, egestas eros. Sed dignissim dolor non ornare luctus.'),
(1566, 183, '_list_editorial_0_description', 'field_5b3d8178e384d'),
(1567, 183, 'list_editorial_1_image', '180'),
(1568, 183, '_list_editorial_1_image', 'field_5b3d8151e384b'),
(1569, 183, 'list_editorial_1_title', 'Apollo'),
(1570, 183, '_list_editorial_1_title', 'field_5b3d816be384c'),
(1571, 183, 'list_editorial_1_sub_title', 'The Louis vuitton keepall Collection United States of America'),
(1572, 183, '_list_editorial_1_sub_title', 'field_5b3d8198e384e'),
(1573, 183, 'list_editorial_1_description', 'Etiam mattis pharetra mattis. Nunc tempus dui a ipsum gravida, sed finibus justo consequat. Pellentesque rutrum felis vitae mauris porttitor, eu porttitor lacus varius. Nam purus urna, posuere a tincidunt at, convallis vitae justo. Phasellus rutrum, massa id finibus egestas, dui mauris porta sem, nec semper tellus quam eu tellus. Mauris erat tortor, scelerisque ut ante at, auctor eleifend nisi. Vestibulum vulputate pretium consequat. Integer vestibulum dignissim lacus. Morbi finibus lobortis ex at viverra. Aliquam sollicitudin tristique mi ut tempor. Nulla feugiat pulvinar velit nec pretium. Cras in velit arcu.'),
(1574, 183, '_list_editorial_1_description', 'field_5b3d8178e384d'),
(1575, 183, 'list_editorial_2_image', '181'),
(1576, 183, '_list_editorial_2_image', 'field_5b3d8151e384b'),
(1577, 183, 'list_editorial_2_title', 'ARMORED BATTALION'),
(1578, 183, '_list_editorial_2_title', 'field_5b3d816be384c'),
(1579, 183, 'list_editorial_2_sub_title', 'The Louis Vuitton Keepall Collection China'),
(1580, 183, '_list_editorial_2_sub_title', 'field_5b3d8198e384e'),
(1581, 183, 'list_editorial_2_description', 'Duis leo nisi, molestie vitae sem a, porttitor luctus quam. Ut tempor, sapien nec vulputate pellentesque, risus urna efficitur arcu, vel sollicitudin lacus lorem a purus. Mauris tristique pharetra condimentum. In sem urna, bibendum at hendrerit vel, pharetra sed neque. Nullam consequat, neque ut placerat pulvinar, lacus neque egestas arcu, vitae malesuada risus arcu vitae dui. Quisque tempor vel quam a pulvinar. Integer vehicula varius purus eu gravida. Etiam odio turpis, fermentum vel eros vitae, imperdiet pellentesque magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc venenatis orci vel risus tristique egestas. Maecenas dapibus ultrices dolor, vel rhoncus nisl elementum eget. Ut enim leo, luctus sed lorem ultricies, finibus cursus sem.'),
(1582, 183, '_list_editorial_2_description', 'field_5b3d8178e384d'),
(1583, 183, 'list_editorial_3_image', '182'),
(1584, 183, '_list_editorial_3_image', 'field_5b3d8151e384b'),
(1585, 183, 'list_editorial_3_title', ''),
(1586, 183, '_list_editorial_3_title', 'field_5b3d816be384c'),
(1587, 183, 'list_editorial_3_sub_title', ''),
(1588, 183, '_list_editorial_3_sub_title', 'field_5b3d8198e384e'),
(1589, 183, 'list_editorial_3_description', ''),
(1590, 183, '_list_editorial_3_description', 'field_5b3d8178e384d'),
(1591, 183, 'list_editorial', '4'),
(1592, 183, '_list_editorial', 'field_5b3d812ae384a'),
(1593, 184, '_edit_last', '1'),
(1594, 184, '_edit_lock', '1530785960:1'),
(1595, 184, '_wp_page_template', 'template-parts/story.php'),
(1596, 186, '_menu_item_type', 'post_type'),
(1597, 186, '_menu_item_menu_item_parent', '0'),
(1598, 186, '_menu_item_object_id', '184'),
(1599, 186, '_menu_item_object', 'page'),
(1600, 186, '_menu_item_target', ''),
(1601, 186, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1602, 186, '_menu_item_xfn', ''),
(1603, 186, '_menu_item_url', ''),
(1605, 187, '_edit_last', '1'),
(1606, 187, '_edit_lock', '1530774071:1'),
(1607, 192, '_wp_attached_file', '2018/07/story-img.jpg'),
(1608, 192, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:337;s:6:\"height\";i:337;s:4:\"file\";s:21:\"2018/07/story-img.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"story-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"story-img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"story-img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"story-img-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"story-img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"story-img-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1609, 184, 'introduction_image', '192'),
(1610, 184, '_introduction_image', 'field_5b3da7b8f92ad'),
(1611, 184, 'introduction_title', 'THE KEEPALL BAG'),
(1612, 184, '_introduction_title', 'field_5b3da7caf92ae');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1613, 184, 'introduction_description', 'Louis Vuitton created the Keepall Bag in 1930 as a light and supple luggage which symbolised new ways of travel. Acclaimed designer Jonathan Riss’ life-long love for exploration led him to collect and build one of the world’s largest collection of vintage Louis Vuitton Keepall bags. Combined with his creative talent which led to the cult brand Jay Ahr, Riss applied his artistic inspiration and embroidery techniques developed over two decades to create iconic themes for the world\'s largest collection of unique embroidered vintage Keepalls.\r\n\r\nThe inspiration behind the artworks came from local artists and cultural traditions from around the world, including Persian rugs from Iran, Hokusai, Shunga from Japan, Africa and PrecolombianArt, Calligraphy, Iconic symbol from China, Central Asia craftmenship, etc... Riss took these broader themes as his inspiration and created individual modern interpretations for each well travelled bag. The embroidery techniques makes use of stones, beads, crystals, yarn and hundreds of different elements using techniques perfected from more than 10 years in the fashion industry.\r\n\r\nAll the bags in Riss\' collection has travelled around the world and has been affected by the passage of time, meanwhile, the embroidery techniques captures the concept of time as it can take weeks to complete and reminds the wearer of a particular time and place.Each pattern is designed around the wear and tear of each bag in question, and exists as a singular unique and timeless object. The artwork recreates each vintage bag into a contemporary object which is both functional and beautiful to behold.\r\n\r\nThe first embroidery theme to be revealed will be world flags - whereby artistic interpretations of each country\'s flag weaves around the Vuitton monogram.The JAY AHR x Vintage VUITTON project turns classic and vintage pieces into a unique and contemporary travel objects which captures the imagination of bag and art lovers around the world. Wearers will also be investing into a truly unique and timeless piece which was created using vintage pieces and sustainable practices.'),
(1614, 184, '_introduction_description', 'field_5b3da7d2f92af'),
(1615, 184, 'introduction', ''),
(1616, 184, '_introduction', 'field_5b3da768f92ac'),
(1617, 193, 'introduction_image', '192'),
(1618, 193, '_introduction_image', 'field_5b3da7b8f92ad'),
(1619, 193, 'introduction_title', 'THE KEEPALL BAG'),
(1620, 193, '_introduction_title', 'field_5b3da7caf92ae'),
(1621, 193, 'introduction_description', 'Louis Vuitton created the Keepall Bag in 1930 as a light and supple luggage which symbolised new ways of travel. Acclaimed designer Jonathan Riss’ life-long love for exploration led him to collect and build one of the world’s largest collection of vintage Louis Vuitton Keepall bags. Combined with his creative talent which led to the cult brand Jay Ahr, Riss applied his artistic inspiration and embroidery techniques developed over two decades to create iconic themes for the world\'s largest collection of unique embroidered vintage Keepalls.\r\n\r\nThe inspiration behind the artworks came from local artists and cultural traditions from around the world, including Persian rugs from Iran, Hokusai, Shunga from Japan, Africa and PrecolombianArt, Calligraphy, Iconic symbol from China, Central Asia craftmenship, etc... Riss took these broader themes as his inspiration and created individual modern interpretations for each well travelled bag. The embroidery techniques makes use of stones, beads, crystals, yarn and hundreds of different elements using techniques perfected from more than 10 years in the fashion industry.\r\n\r\nAll the bags in Riss\' collection has travelled around the world and has been affected by the passage of time, meanwhile, the embroidery techniques captures the concept of time as it can take weeks to complete and reminds the wearer of a particular time and place.Each pattern is designed around the wear and tear of each bag in question, and exists as a singular unique and timeless object. The artwork recreates each vintage bag into a contemporary object which is both functional and beautiful to behold.\r\n\r\nThe first embroidery theme to be revealed will be world flags - whereby artistic interpretations of each country\'s flag weaves around the Vuitton monogram.The JAY AHR x Vintage VUITTON project turns classic and vintage pieces into a unique and contemporary travel objects which captures the imagination of bag and art lovers around the world. Wearers will also be investing into a truly unique and timeless piece which was created using vintage pieces and sustainable practices.'),
(1622, 193, '_introduction_description', 'field_5b3da7d2f92af'),
(1623, 193, 'introduction', ''),
(1624, 193, '_introduction', 'field_5b3da768f92ac'),
(1625, 199, '_wp_attached_file', '2018/07/story-1992.jpg'),
(1626, 199, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:575;s:6:\"height\";i:323;s:4:\"file\";s:22:\"2018/07/story-1992.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"story-1992-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"story-1992-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"story-1992-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"story-1992-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"story-1992-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"story-1992-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1627, 200, '_wp_attached_file', '2018/07/story-1997.jpg'),
(1628, 200, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:53;s:6:\"height\";i:53;s:4:\"file\";s:22:\"2018/07/story-1997.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1629, 201, '_wp_attached_file', '2018/07/story-2004.jpg'),
(1630, 201, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:53;s:6:\"height\";i:52;s:4:\"file\";s:22:\"2018/07/story-2004.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1631, 202, '_wp_attached_file', '2018/07/story-2011.jpg'),
(1632, 202, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:53;s:6:\"height\";i:53;s:4:\"file\";s:22:\"2018/07/story-2011.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1633, 203, '_wp_attached_file', '2018/07/story-2015.jpg'),
(1634, 203, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:53;s:6:\"height\";i:53;s:4:\"file\";s:22:\"2018/07/story-2015.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1635, 204, '_wp_attached_file', '2018/07/story-present.jpg'),
(1636, 204, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:53;s:6:\"height\";i:53;s:4:\"file\";s:25:\"2018/07/story-present.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1637, 184, 'timeline_0_time', '1992'),
(1638, 184, '_timeline_0_time', 'field_5b3dc22061c84'),
(1639, 184, 'timeline_0_image', '199'),
(1640, 184, '_timeline_0_image', 'field_5b3dc27161c85'),
(1641, 184, 'timeline_0_title', 'Nullam tristique'),
(1642, 184, '_timeline_0_title', 'field_5b3dc29c61c86'),
(1643, 184, 'timeline_0_description', 'Etiam id aliquam lacus. Praesent velit ante, accumsan non tortor vel, hendrerit finibus ipsum. Mauris condimentum mauris sed lorem vehicula dapibus. Aenean pretium ante non enim convallis fringilla. Ut lobortis placerat mi eget sollicitudin. Maecenas ullamcorper leo id nibh dignissim, nec sagittis augue dapibus. Maecenas a imperdiet est, eget finibus tortor. Pellentesque sollicitudin ante quis libero ornare, a auctor orci blandit. Donec sodales odio vel congue rutrum. Aenean eu efficitur magna, in pharetra ex. Nullam efficitur imperdiet urna, vitae aliquet enim dignissim sed. Vestibulum at tempus enim, at tempus leo.'),
(1644, 184, '_timeline_0_description', 'field_5b3dc2a861c87'),
(1645, 184, 'timeline_1_time', '1997'),
(1646, 184, '_timeline_1_time', 'field_5b3dc22061c84'),
(1647, 184, 'timeline_1_image', '200'),
(1648, 184, '_timeline_1_image', 'field_5b3dc27161c85'),
(1649, 184, 'timeline_1_title', 'Nullam tristique'),
(1650, 184, '_timeline_1_title', 'field_5b3dc29c61c86'),
(1651, 184, 'timeline_1_description', 'Etiam id aliquam lacus. Praesent velit ante, accumsan non tortor vel, hendrerit finibus ipsum. Mauris condimentum mauris sed lorem vehicula dapibus. Aenean pretium ante non enim convallis fringilla. Ut lobortis placerat mi eget sollicitudin. Maecenas ullamcorper leo id nibh dignissim, nec sagittis augue dapibus. Maecenas a imperdiet est, eget finibus tortor. Pellentesque sollicitudin ante quis libero ornare, a auctor orci blandit. Donec sodales odio vel congue rutrum. Aenean eu efficitur magna, in pharetra ex. Nullam efficitur imperdiet urna, vitae aliquet enim dignissim sed. Vestibulum at tempus enim, at tempus leo.'),
(1652, 184, '_timeline_1_description', 'field_5b3dc2a861c87'),
(1653, 184, 'timeline_2_time', '2004'),
(1654, 184, '_timeline_2_time', 'field_5b3dc22061c84'),
(1655, 184, 'timeline_2_image', '201'),
(1656, 184, '_timeline_2_image', 'field_5b3dc27161c85'),
(1657, 184, 'timeline_2_title', 'Nullam tristique'),
(1658, 184, '_timeline_2_title', 'field_5b3dc29c61c86'),
(1659, 184, 'timeline_2_description', 'Etiam id aliquam lacus. Praesent velit ante, accumsan non tortor vel, hendrerit finibus ipsum. Mauris condimentum mauris sed lorem vehicula dapibus. Aenean pretium ante non enim convallis fringilla. Ut lobortis placerat mi eget sollicitudin. Maecenas ullamcorper leo id nibh dignissim, nec sagittis augue dapibus. Maecenas a imperdiet est, eget finibus tortor. Pellentesque sollicitudin ante quis libero ornare, a auctor orci blandit. Donec sodales odio vel congue rutrum. Aenean eu efficitur magna, in pharetra ex. Nullam efficitur imperdiet urna, vitae aliquet enim dignissim sed. Vestibulum at tempus enim, at tempus leo.'),
(1660, 184, '_timeline_2_description', 'field_5b3dc2a861c87'),
(1661, 184, 'timeline_3_time', '2011'),
(1662, 184, '_timeline_3_time', 'field_5b3dc22061c84'),
(1663, 184, 'timeline_3_image', '202'),
(1664, 184, '_timeline_3_image', 'field_5b3dc27161c85'),
(1665, 184, 'timeline_3_title', 'Nullam tristique'),
(1666, 184, '_timeline_3_title', 'field_5b3dc29c61c86'),
(1667, 184, 'timeline_3_description', 'Etiam id aliquam lacus. Praesent velit ante, accumsan non tortor vel, hendrerit finibus ipsum. Mauris condimentum mauris sed lorem vehicula dapibus. Aenean pretium ante non enim convallis fringilla. Ut lobortis placerat mi eget sollicitudin. Maecenas ullamcorper leo id nibh dignissim, nec sagittis augue dapibus. Maecenas a imperdiet est, eget finibus tortor. Pellentesque sollicitudin ante quis libero ornare, a auctor orci blandit. Donec sodales odio vel congue rutrum. Aenean eu efficitur magna, in pharetra ex. Nullam efficitur imperdiet urna, vitae aliquet enim dignissim sed. Vestibulum at tempus enim, at tempus leo.'),
(1668, 184, '_timeline_3_description', 'field_5b3dc2a861c87'),
(1669, 184, 'timeline_4_time', '2015'),
(1670, 184, '_timeline_4_time', 'field_5b3dc22061c84'),
(1671, 184, 'timeline_4_image', '203'),
(1672, 184, '_timeline_4_image', 'field_5b3dc27161c85'),
(1673, 184, 'timeline_4_title', 'Nullam tristique'),
(1674, 184, '_timeline_4_title', 'field_5b3dc29c61c86'),
(1675, 184, 'timeline_4_description', 'Etiam id aliquam lacus. Praesent velit ante, accumsan non tortor vel, hendrerit finibus ipsum. Mauris condimentum mauris sed lorem vehicula dapibus. Aenean pretium ante non enim convallis fringilla. Ut lobortis placerat mi eget sollicitudin. Maecenas ullamcorper leo id nibh dignissim, nec sagittis augue dapibus. Maecenas a imperdiet est, eget finibus tortor. Pellentesque sollicitudin ante quis libero ornare, a auctor orci blandit. Donec sodales odio vel congue rutrum. Aenean eu efficitur magna, in pharetra ex. Nullam efficitur imperdiet urna, vitae aliquet enim dignissim sed. Vestibulum at tempus enim, at tempus leo.'),
(1676, 184, '_timeline_4_description', 'field_5b3dc2a861c87'),
(1677, 184, 'timeline_5_time', 'Present'),
(1678, 184, '_timeline_5_time', 'field_5b3dc22061c84'),
(1679, 184, 'timeline_5_image', '204'),
(1680, 184, '_timeline_5_image', 'field_5b3dc27161c85'),
(1681, 184, 'timeline_5_title', 'Nullam tristique'),
(1682, 184, '_timeline_5_title', 'field_5b3dc29c61c86'),
(1683, 184, 'timeline_5_description', 'Etiam id aliquam lacus. Praesent velit ante, accumsan non tortor vel, hendrerit finibus ipsum. Mauris condimentum mauris sed lorem vehicula dapibus. Aenean pretium ante non enim convallis fringilla. Ut lobortis placerat mi eget sollicitudin. Maecenas ullamcorper leo id nibh dignissim, nec sagittis augue dapibus. Maecenas a imperdiet est, eget finibus tortor. Pellentesque sollicitudin ante quis libero ornare, a auctor orci blandit. Donec sodales odio vel congue rutrum. Aenean eu efficitur magna, in pharetra ex. Nullam efficitur imperdiet urna, vitae aliquet enim dignissim sed. Vestibulum at tempus enim, at tempus leo.'),
(1684, 184, '_timeline_5_description', 'field_5b3dc2a861c87'),
(1685, 184, 'timeline', '6'),
(1686, 184, '_timeline', 'field_5b3dc20461c83'),
(1687, 205, 'introduction_image', '192'),
(1688, 205, '_introduction_image', 'field_5b3da7b8f92ad'),
(1689, 205, 'introduction_title', 'THE KEEPALL BAG'),
(1690, 205, '_introduction_title', 'field_5b3da7caf92ae'),
(1691, 205, 'introduction_description', 'Louis Vuitton created the Keepall Bag in 1930 as a light and supple luggage which symbolised new ways of travel. Acclaimed designer Jonathan Riss’ life-long love for exploration led him to collect and build one of the world’s largest collection of vintage Louis Vuitton Keepall bags. Combined with his creative talent which led to the cult brand Jay Ahr, Riss applied his artistic inspiration and embroidery techniques developed over two decades to create iconic themes for the world\'s largest collection of unique embroidered vintage Keepalls.\r\n\r\nThe inspiration behind the artworks came from local artists and cultural traditions from around the world, including Persian rugs from Iran, Hokusai, Shunga from Japan, Africa and PrecolombianArt, Calligraphy, Iconic symbol from China, Central Asia craftmenship, etc... Riss took these broader themes as his inspiration and created individual modern interpretations for each well travelled bag. The embroidery techniques makes use of stones, beads, crystals, yarn and hundreds of different elements using techniques perfected from more than 10 years in the fashion industry.\r\n\r\nAll the bags in Riss\' collection has travelled around the world and has been affected by the passage of time, meanwhile, the embroidery techniques captures the concept of time as it can take weeks to complete and reminds the wearer of a particular time and place.Each pattern is designed around the wear and tear of each bag in question, and exists as a singular unique and timeless object. The artwork recreates each vintage bag into a contemporary object which is both functional and beautiful to behold.\r\n\r\nThe first embroidery theme to be revealed will be world flags - whereby artistic interpretations of each country\'s flag weaves around the Vuitton monogram.The JAY AHR x Vintage VUITTON project turns classic and vintage pieces into a unique and contemporary travel objects which captures the imagination of bag and art lovers around the world. Wearers will also be investing into a truly unique and timeless piece which was created using vintage pieces and sustainable practices.'),
(1692, 205, '_introduction_description', 'field_5b3da7d2f92af'),
(1693, 205, 'introduction', ''),
(1694, 205, '_introduction', 'field_5b3da768f92ac'),
(1695, 205, 'timeline_0_time', '1992'),
(1696, 205, '_timeline_0_time', 'field_5b3dc22061c84'),
(1697, 205, 'timeline_0_image', '199'),
(1698, 205, '_timeline_0_image', 'field_5b3dc27161c85'),
(1699, 205, 'timeline_0_title', 'Nullam tristique'),
(1700, 205, '_timeline_0_title', 'field_5b3dc29c61c86'),
(1701, 205, 'timeline_0_description', 'Etiam id aliquam lacus. Praesent velit ante, accumsan non tortor vel, hendrerit finibus ipsum. Mauris condimentum mauris sed lorem vehicula dapibus. Aenean pretium ante non enim convallis fringilla. Ut lobortis placerat mi eget sollicitudin. Maecenas ullamcorper leo id nibh dignissim, nec sagittis augue dapibus. Maecenas a imperdiet est, eget finibus tortor. Pellentesque sollicitudin ante quis libero ornare, a auctor orci blandit. Donec sodales odio vel congue rutrum. Aenean eu efficitur magna, in pharetra ex. Nullam efficitur imperdiet urna, vitae aliquet enim dignissim sed. Vestibulum at tempus enim, at tempus leo.'),
(1702, 205, '_timeline_0_description', 'field_5b3dc2a861c87'),
(1703, 205, 'timeline_1_time', '1997'),
(1704, 205, '_timeline_1_time', 'field_5b3dc22061c84'),
(1705, 205, 'timeline_1_image', '200'),
(1706, 205, '_timeline_1_image', 'field_5b3dc27161c85'),
(1707, 205, 'timeline_1_title', 'Nullam tristique'),
(1708, 205, '_timeline_1_title', 'field_5b3dc29c61c86'),
(1709, 205, 'timeline_1_description', 'Etiam id aliquam lacus. Praesent velit ante, accumsan non tortor vel, hendrerit finibus ipsum. Mauris condimentum mauris sed lorem vehicula dapibus. Aenean pretium ante non enim convallis fringilla. Ut lobortis placerat mi eget sollicitudin. Maecenas ullamcorper leo id nibh dignissim, nec sagittis augue dapibus. Maecenas a imperdiet est, eget finibus tortor. Pellentesque sollicitudin ante quis libero ornare, a auctor orci blandit. Donec sodales odio vel congue rutrum. Aenean eu efficitur magna, in pharetra ex. Nullam efficitur imperdiet urna, vitae aliquet enim dignissim sed. Vestibulum at tempus enim, at tempus leo.'),
(1710, 205, '_timeline_1_description', 'field_5b3dc2a861c87'),
(1711, 205, 'timeline_2_time', '2004'),
(1712, 205, '_timeline_2_time', 'field_5b3dc22061c84'),
(1713, 205, 'timeline_2_image', '201'),
(1714, 205, '_timeline_2_image', 'field_5b3dc27161c85'),
(1715, 205, 'timeline_2_title', 'Nullam tristique'),
(1716, 205, '_timeline_2_title', 'field_5b3dc29c61c86'),
(1717, 205, 'timeline_2_description', 'Etiam id aliquam lacus. Praesent velit ante, accumsan non tortor vel, hendrerit finibus ipsum. Mauris condimentum mauris sed lorem vehicula dapibus. Aenean pretium ante non enim convallis fringilla. Ut lobortis placerat mi eget sollicitudin. Maecenas ullamcorper leo id nibh dignissim, nec sagittis augue dapibus. Maecenas a imperdiet est, eget finibus tortor. Pellentesque sollicitudin ante quis libero ornare, a auctor orci blandit. Donec sodales odio vel congue rutrum. Aenean eu efficitur magna, in pharetra ex. Nullam efficitur imperdiet urna, vitae aliquet enim dignissim sed. Vestibulum at tempus enim, at tempus leo.'),
(1718, 205, '_timeline_2_description', 'field_5b3dc2a861c87'),
(1719, 205, 'timeline_3_time', '2011'),
(1720, 205, '_timeline_3_time', 'field_5b3dc22061c84'),
(1721, 205, 'timeline_3_image', '202'),
(1722, 205, '_timeline_3_image', 'field_5b3dc27161c85'),
(1723, 205, 'timeline_3_title', 'Nullam tristique'),
(1724, 205, '_timeline_3_title', 'field_5b3dc29c61c86'),
(1725, 205, 'timeline_3_description', 'Etiam id aliquam lacus. Praesent velit ante, accumsan non tortor vel, hendrerit finibus ipsum. Mauris condimentum mauris sed lorem vehicula dapibus. Aenean pretium ante non enim convallis fringilla. Ut lobortis placerat mi eget sollicitudin. Maecenas ullamcorper leo id nibh dignissim, nec sagittis augue dapibus. Maecenas a imperdiet est, eget finibus tortor. Pellentesque sollicitudin ante quis libero ornare, a auctor orci blandit. Donec sodales odio vel congue rutrum. Aenean eu efficitur magna, in pharetra ex. Nullam efficitur imperdiet urna, vitae aliquet enim dignissim sed. Vestibulum at tempus enim, at tempus leo.'),
(1726, 205, '_timeline_3_description', 'field_5b3dc2a861c87'),
(1727, 205, 'timeline_4_time', '2015'),
(1728, 205, '_timeline_4_time', 'field_5b3dc22061c84'),
(1729, 205, 'timeline_4_image', '203'),
(1730, 205, '_timeline_4_image', 'field_5b3dc27161c85'),
(1731, 205, 'timeline_4_title', 'Nullam tristique'),
(1732, 205, '_timeline_4_title', 'field_5b3dc29c61c86'),
(1733, 205, 'timeline_4_description', 'Etiam id aliquam lacus. Praesent velit ante, accumsan non tortor vel, hendrerit finibus ipsum. Mauris condimentum mauris sed lorem vehicula dapibus. Aenean pretium ante non enim convallis fringilla. Ut lobortis placerat mi eget sollicitudin. Maecenas ullamcorper leo id nibh dignissim, nec sagittis augue dapibus. Maecenas a imperdiet est, eget finibus tortor. Pellentesque sollicitudin ante quis libero ornare, a auctor orci blandit. Donec sodales odio vel congue rutrum. Aenean eu efficitur magna, in pharetra ex. Nullam efficitur imperdiet urna, vitae aliquet enim dignissim sed. Vestibulum at tempus enim, at tempus leo.'),
(1734, 205, '_timeline_4_description', 'field_5b3dc2a861c87'),
(1735, 205, 'timeline_5_time', 'Present'),
(1736, 205, '_timeline_5_time', 'field_5b3dc22061c84'),
(1737, 205, 'timeline_5_image', '204'),
(1738, 205, '_timeline_5_image', 'field_5b3dc27161c85'),
(1739, 205, 'timeline_5_title', 'Nullam tristique'),
(1740, 205, '_timeline_5_title', 'field_5b3dc29c61c86'),
(1741, 205, 'timeline_5_description', 'Etiam id aliquam lacus. Praesent velit ante, accumsan non tortor vel, hendrerit finibus ipsum. Mauris condimentum mauris sed lorem vehicula dapibus. Aenean pretium ante non enim convallis fringilla. Ut lobortis placerat mi eget sollicitudin. Maecenas ullamcorper leo id nibh dignissim, nec sagittis augue dapibus. Maecenas a imperdiet est, eget finibus tortor. Pellentesque sollicitudin ante quis libero ornare, a auctor orci blandit. Donec sodales odio vel congue rutrum. Aenean eu efficitur magna, in pharetra ex. Nullam efficitur imperdiet urna, vitae aliquet enim dignissim sed. Vestibulum at tempus enim, at tempus leo.'),
(1742, 205, '_timeline_5_description', 'field_5b3dc2a861c87'),
(1743, 205, 'timeline', '6'),
(1744, 205, '_timeline', 'field_5b3dc20461c83'),
(1745, 206, 'introduction_image', '192'),
(1746, 206, '_introduction_image', 'field_5b3da7b8f92ad'),
(1747, 206, 'introduction_title', 'THE KEEPALL BAG'),
(1748, 206, '_introduction_title', 'field_5b3da7caf92ae'),
(1749, 206, 'introduction_description', 'Louis Vuitton created the Keepall Bag in 1930 as a light and supple luggage which symbolised new ways of travel. Acclaimed designer Jonathan Riss’ life-long love for exploration led him to collect and build one of the world’s largest collection of vintage Louis Vuitton Keepall bags. Combined with his creative talent which led to the cult brand Jay Ahr, Riss applied his artistic inspiration and embroidery techniques developed over two decades to create iconic themes for the world\'s largest collection of unique embroidered vintage Keepalls.\r\n\r\nThe inspiration behind the artworks came from local artists and cultural traditions from around the world, including Persian rugs from Iran, Hokusai, Shunga from Japan, Africa and PrecolombianArt, Calligraphy, Iconic symbol from China, Central Asia craftmenship, etc... Riss took these broader themes as his inspiration and created individual modern interpretations for each well travelled bag. The embroidery techniques makes use of stones, beads, crystals, yarn and hundreds of different elements using techniques perfected from more than 10 years in the fashion industry.\r\n\r\nAll the bags in Riss\' collection has travelled around the world and has been affected by the passage of time, meanwhile, the embroidery techniques captures the concept of time as it can take weeks to complete and reminds the wearer of a particular time and place.Each pattern is designed around the wear and tear of each bag in question, and exists as a singular unique and timeless object. The artwork recreates each vintage bag into a contemporary object which is both functional and beautiful to behold.\r\n\r\nThe first embroidery theme to be revealed will be world flags - whereby artistic interpretations of each country\'s flag weaves around the Vuitton monogram.The JAY AHR x Vintage VUITTON project turns classic and vintage pieces into a unique and contemporary travel objects which captures the imagination of bag and art lovers around the world. Wearers will also be investing into a truly unique and timeless piece which was created using vintage pieces and sustainable practices.'),
(1750, 206, '_introduction_description', 'field_5b3da7d2f92af'),
(1751, 206, 'introduction', ''),
(1752, 206, '_introduction', 'field_5b3da768f92ac'),
(1753, 206, 'timeline_0_time', '1992'),
(1754, 206, '_timeline_0_time', 'field_5b3dc22061c84'),
(1755, 206, 'timeline_0_image', '199'),
(1756, 206, '_timeline_0_image', 'field_5b3dc27161c85'),
(1757, 206, 'timeline_0_title', 'Nullam tristique'),
(1758, 206, '_timeline_0_title', 'field_5b3dc29c61c86'),
(1759, 206, 'timeline_0_description', 'Etiam id aliquam lacus. Praesent velit ante, accumsan non tortor vel, hendrerit finibus ipsum. Mauris condimentum mauris sed lorem vehicula dapibus. Aenean pretium ante non enim convallis fringilla. Ut lobortis placerat mi eget sollicitudin. Maecenas ullamcorper leo id nibh dignissim, nec sagittis augue dapibus. Maecenas a imperdiet est, eget finibus tortor. Pellentesque sollicitudin ante quis libero ornare, a auctor orci blandit. Donec sodales odio vel congue rutrum. Aenean eu efficitur magna, in pharetra ex. Nullam efficitur imperdiet urna, vitae aliquet enim dignissim sed. Vestibulum at tempus enim, at tempus leo.'),
(1760, 206, '_timeline_0_description', 'field_5b3dc2a861c87'),
(1761, 206, 'timeline_1_time', '1997'),
(1762, 206, '_timeline_1_time', 'field_5b3dc22061c84'),
(1763, 206, 'timeline_1_image', '200'),
(1764, 206, '_timeline_1_image', 'field_5b3dc27161c85'),
(1765, 206, 'timeline_1_title', 'Nullam tristique'),
(1766, 206, '_timeline_1_title', 'field_5b3dc29c61c86'),
(1767, 206, 'timeline_1_description', 'Etiam id aliquam lacus. Praesent velit ante, accumsan non tortor vel, hendrerit finibus ipsum. Mauris condimentum mauris sed lorem vehicula dapibus. Aenean pretium ante non enim convallis fringilla. Ut lobortis placerat mi eget sollicitudin. Maecenas ullamcorper leo id nibh dignissim, nec sagittis augue dapibus. Maecenas a imperdiet est, eget finibus tortor. Pellentesque sollicitudin ante quis libero ornare, a auctor orci blandit. Donec sodales odio vel congue rutrum. Aenean eu efficitur magna, in pharetra ex. Nullam efficitur imperdiet urna, vitae aliquet enim dignissim sed. Vestibulum at tempus enim, at tempus leo.'),
(1768, 206, '_timeline_1_description', 'field_5b3dc2a861c87'),
(1769, 206, 'timeline_2_time', '2004'),
(1770, 206, '_timeline_2_time', 'field_5b3dc22061c84'),
(1771, 206, 'timeline_2_image', '201'),
(1772, 206, '_timeline_2_image', 'field_5b3dc27161c85'),
(1773, 206, 'timeline_2_title', 'Nullam tristique Nullam tristique Nullam tristique Nullam tristique Nullam tristique'),
(1774, 206, '_timeline_2_title', 'field_5b3dc29c61c86'),
(1775, 206, 'timeline_2_description', 'Etiam id aliquam lacus. Praesent velit ante, accumsan non tortor vel, hendrerit finibus ipsum. Mauris condimentum mauris sed lorem vehicula dapibus. Aenean pretium ante non enim convallis fringilla. Ut lobortis placerat mi eget sollicitudin. Maecenas ullamcorper leo id nibh dignissim, nec sagittis augue dapibus. Maecenas a imperdiet est, eget finibus tortor. Pellentesque sollicitudin ante quis libero ornare, a auctor orci blandit. Donec sodales odio vel congue rutrum. Aenean eu efficitur magna, in pharetra ex. Nullam efficitur imperdiet urna, vitae aliquet enim dignissim sed. Vestibulum at tempus enim, at tempus leo.'),
(1776, 206, '_timeline_2_description', 'field_5b3dc2a861c87'),
(1777, 206, 'timeline_3_time', '2011'),
(1778, 206, '_timeline_3_time', 'field_5b3dc22061c84'),
(1779, 206, 'timeline_3_image', '202'),
(1780, 206, '_timeline_3_image', 'field_5b3dc27161c85'),
(1781, 206, 'timeline_3_title', 'Nullam tristique'),
(1782, 206, '_timeline_3_title', 'field_5b3dc29c61c86'),
(1783, 206, 'timeline_3_description', 'Etiam id aliquam lacus. Praesent velit ante, accumsan non tortor vel, hendrerit finibus ipsum. Mauris condimentum mauris sed lorem vehicula dapibus. Aenean pretium ante non enim convallis fringilla. Ut lobortis placerat mi eget sollicitudin. Maecenas ullamcorper leo id nibh dignissim, nec sagittis augue dapibus. Maecenas a imperdiet est, eget finibus tortor. Pellentesque sollicitudin ante quis libero ornare, a auctor orci blandit. Donec sodales odio vel congue rutrum. Aenean eu efficitur magna, in pharetra ex. Nullam efficitur imperdiet urna, vitae aliquet enim dignissim sed. Vestibulum at tempus enim, at tempus leo.\r\n\r\nEtiam id aliquam lacus. Praesent velit ante, accumsan non tortor vel, hendrerit finibus ipsum. Mauris condimentum mauris sed lorem vehicula dapibus. Aenean pretium ante non enim convallis fringilla. Ut lobortis placerat mi eget sollicitudin. Maecenas ullamcorper leo id nibh dignissim, nec sagittis augue dapibus. Maecenas a imperdiet est, eget finibus tortor. Pellentesque sollicitudin ante quis libero ornare, a auctor orci blandit. Donec sodales odio vel congue rutrum. Aenean eu efficitur magna, in pharetra ex. Nullam efficitur imperdiet urna, vitae aliquet enim dignissim sed. Vestibulum at tempus enim, at tempus leo.\r\n\r\nEtiam id aliquam lacus. Praesent velit ante, accumsan non tortor vel, hendrerit finibus ipsum. Mauris condimentum mauris sed lorem vehicula dapibus. Aenean pretium ante non enim convallis fringilla. Ut lobortis placerat mi eget sollicitudin. Maecenas ullamcorper leo id nibh dignissim, nec sagittis augue dapibus. Maecenas a imperdiet est, eget finibus tortor. Pellentesque sollicitudin ante quis libero ornare, a auctor orci blandit. Donec sodales odio vel congue rutrum. Aenean eu efficitur magna, in pharetra ex. Nullam efficitur imperdiet urna, vitae aliquet enim dignissim sed. Vestibulum at tempus enim, at tempus leo.'),
(1784, 206, '_timeline_3_description', 'field_5b3dc2a861c87'),
(1785, 206, 'timeline_4_time', '2015'),
(1786, 206, '_timeline_4_time', 'field_5b3dc22061c84'),
(1787, 206, 'timeline_4_image', '203'),
(1788, 206, '_timeline_4_image', 'field_5b3dc27161c85'),
(1789, 206, 'timeline_4_title', 'Nullam tristique'),
(1790, 206, '_timeline_4_title', 'field_5b3dc29c61c86'),
(1791, 206, 'timeline_4_description', 'Etiam id aliquam lacus. Praesent velit ante, accumsan non tortor vel, hendrerit finibus ipsum. Mauris condimentum mauris sed lorem vehicula dapibus. Aenean pretium ante non enim convallis fringilla. Ut lobortis placerat mi eget sollicitudin. Maecenas ullamcorper leo id nibh dignissim, nec sagittis augue dapibus. Maecenas a imperdiet est, eget finibus tortor. Pellentesque sollicitudin ante quis libero ornare, a auctor orci blandit. Donec sodales odio vel congue rutrum. Aenean eu efficitur magna, in pharetra ex. Nullam efficitur imperdiet urna, vitae aliquet enim dignissim sed. Vestibulum at tempus enim, at tempus leo.'),
(1792, 206, '_timeline_4_description', 'field_5b3dc2a861c87'),
(1793, 206, 'timeline_5_time', 'Present'),
(1794, 206, '_timeline_5_time', 'field_5b3dc22061c84'),
(1795, 206, 'timeline_5_image', '204'),
(1796, 206, '_timeline_5_image', 'field_5b3dc27161c85'),
(1797, 206, 'timeline_5_title', 'Nullam tristique'),
(1798, 206, '_timeline_5_title', 'field_5b3dc29c61c86'),
(1799, 206, 'timeline_5_description', 'Etiam id aliquam lacus. Praesent velit ante, accumsan non tortor vel, hendrerit finibus ipsum. Mauris condimentum mauris sed lorem vehicula dapibus. Aenean pretium ante non enim convallis fringilla. Ut lobortis placerat mi eget sollicitudin. Maecenas ullamcorper leo id nibh dignissim, nec sagittis augue dapibus. Maecenas a imperdiet est, eget finibus tortor. Pellentesque sollicitudin ante quis libero ornare, a auctor orci blandit. Donec sodales odio vel congue rutrum. Aenean eu efficitur magna, in pharetra ex. Nullam efficitur imperdiet urna, vitae aliquet enim dignissim sed. Vestibulum at tempus enim, at tempus leo.'),
(1800, 206, '_timeline_5_description', 'field_5b3dc2a861c87'),
(1801, 206, 'timeline', '6'),
(1802, 206, '_timeline', 'field_5b3dc20461c83'),
(1803, 207, 'introduction_image', '192'),
(1804, 207, '_introduction_image', 'field_5b3da7b8f92ad'),
(1805, 207, 'introduction_title', 'THE KEEPALL BAG'),
(1806, 207, '_introduction_title', 'field_5b3da7caf92ae'),
(1807, 207, 'introduction_description', 'Louis Vuitton created the Keepall Bag in 1930 as a light and supple luggage which symbolised new ways of travel. Acclaimed designer Jonathan Riss’ life-long love for exploration led him to collect and build one of the world’s largest collection of vintage Louis Vuitton Keepall bags. Combined with his creative talent which led to the cult brand Jay Ahr, Riss applied his artistic inspiration and embroidery techniques developed over two decades to create iconic themes for the world\'s largest collection of unique embroidered vintage Keepalls.\r\n\r\nThe inspiration behind the artworks came from local artists and cultural traditions from around the world, including Persian rugs from Iran, Hokusai, Shunga from Japan, Africa and PrecolombianArt, Calligraphy, Iconic symbol from China, Central Asia craftmenship, etc... Riss took these broader themes as his inspiration and created individual modern interpretations for each well travelled bag. The embroidery techniques makes use of stones, beads, crystals, yarn and hundreds of different elements using techniques perfected from more than 10 years in the fashion industry.\r\n\r\nAll the bags in Riss\' collection has travelled around the world and has been affected by the passage of time, meanwhile, the embroidery techniques captures the concept of time as it can take weeks to complete and reminds the wearer of a particular time and place.Each pattern is designed around the wear and tear of each bag in question, and exists as a singular unique and timeless object. The artwork recreates each vintage bag into a contemporary object which is both functional and beautiful to behold.\r\n\r\nThe first embroidery theme to be revealed will be world flags - whereby artistic interpretations of each country\'s flag weaves around the Vuitton monogram.The JAY AHR x Vintage VUITTON project turns classic and vintage pieces into a unique and contemporary travel objects which captures the imagination of bag and art lovers around the world. Wearers will also be investing into a truly unique and timeless piece which was created using vintage pieces and sustainable practices.'),
(1808, 207, '_introduction_description', 'field_5b3da7d2f92af'),
(1809, 207, 'introduction', ''),
(1810, 207, '_introduction', 'field_5b3da768f92ac'),
(1811, 207, 'timeline_0_time', '1992'),
(1812, 207, '_timeline_0_time', 'field_5b3dc22061c84'),
(1813, 207, 'timeline_0_image', '199'),
(1814, 207, '_timeline_0_image', 'field_5b3dc27161c85'),
(1815, 207, 'timeline_0_title', 'Nullam tristique'),
(1816, 207, '_timeline_0_title', 'field_5b3dc29c61c86'),
(1817, 207, 'timeline_0_description', 'Etiam id aliquam lacus. Praesent velit ante, accumsan non tortor vel, hendrerit finibus ipsum. Mauris condimentum mauris sed lorem vehicula dapibus. Aenean pretium ante non enim convallis fringilla. Ut lobortis placerat mi eget sollicitudin. Maecenas ullamcorper leo id nibh dignissim, nec sagittis augue dapibus. Maecenas a imperdiet est, eget finibus tortor. Pellentesque sollicitudin ante quis libero ornare, a auctor orci blandit. Donec sodales odio vel congue rutrum. Aenean eu efficitur magna, in pharetra ex. Nullam efficitur imperdiet urna, vitae aliquet enim dignissim sed. Vestibulum at tempus enim, at tempus leo.'),
(1818, 207, '_timeline_0_description', 'field_5b3dc2a861c87'),
(1819, 207, 'timeline_1_time', '1997'),
(1820, 207, '_timeline_1_time', 'field_5b3dc22061c84'),
(1821, 207, 'timeline_1_image', '200'),
(1822, 207, '_timeline_1_image', 'field_5b3dc27161c85'),
(1823, 207, 'timeline_1_title', 'Nullam tristique'),
(1824, 207, '_timeline_1_title', 'field_5b3dc29c61c86'),
(1825, 207, 'timeline_1_description', 'Etiam id aliquam lacus. Praesent velit ante, accumsan non tortor vel, hendrerit finibus ipsum. Mauris condimentum mauris sed lorem vehicula dapibus. Aenean pretium ante non enim convallis fringilla. Ut lobortis placerat mi eget sollicitudin. Maecenas ullamcorper leo id nibh dignissim, nec sagittis augue dapibus. Maecenas a imperdiet est, eget finibus tortor. Pellentesque sollicitudin ante quis libero ornare, a auctor orci blandit. Donec sodales odio vel congue rutrum. Aenean eu efficitur magna, in pharetra ex. Nullam efficitur imperdiet urna, vitae aliquet enim dignissim sed. Vestibulum at tempus enim, at tempus leo.'),
(1826, 207, '_timeline_1_description', 'field_5b3dc2a861c87'),
(1827, 207, 'timeline_2_time', '2004'),
(1828, 207, '_timeline_2_time', 'field_5b3dc22061c84'),
(1829, 207, 'timeline_2_image', '201'),
(1830, 207, '_timeline_2_image', 'field_5b3dc27161c85'),
(1831, 207, 'timeline_2_title', 'Nullam tristique'),
(1832, 207, '_timeline_2_title', 'field_5b3dc29c61c86'),
(1833, 207, 'timeline_2_description', 'Etiam id aliquam lacus. Praesent velit ante, accumsan non tortor vel, hendrerit finibus ipsum. Mauris condimentum mauris sed lorem vehicula dapibus. Aenean pretium ante non enim convallis fringilla. Ut lobortis placerat mi eget sollicitudin. Maecenas ullamcorper leo id nibh dignissim, nec sagittis augue dapibus. Maecenas a imperdiet est, eget finibus tortor. Pellentesque sollicitudin ante quis libero ornare, a auctor orci blandit. Donec sodales odio vel congue rutrum. Aenean eu efficitur magna, in pharetra ex. Nullam efficitur imperdiet urna, vitae aliquet enim dignissim sed. Vestibulum at tempus enim, at tempus leo.'),
(1834, 207, '_timeline_2_description', 'field_5b3dc2a861c87'),
(1835, 207, 'timeline_3_time', '2011'),
(1836, 207, '_timeline_3_time', 'field_5b3dc22061c84'),
(1837, 207, 'timeline_3_image', '202'),
(1838, 207, '_timeline_3_image', 'field_5b3dc27161c85'),
(1839, 207, 'timeline_3_title', 'Nullam tristique'),
(1840, 207, '_timeline_3_title', 'field_5b3dc29c61c86'),
(1841, 207, 'timeline_3_description', 'Etiam id aliquam lacus. Praesent velit ante, accumsan non tortor vel, hendrerit finibus ipsum. Mauris condimentum mauris sed lorem vehicula dapibus. Aenean pretium ante non enim convallis fringilla. Ut lobortis placerat mi eget sollicitudin. Maecenas ullamcorper leo id nibh dignissim, nec sagittis augue dapibus. Maecenas a imperdiet est, eget finibus tortor. Pellentesque sollicitudin ante quis libero ornare, a auctor orci blandit. Donec sodales odio vel congue rutrum. Aenean eu efficitur magna, in pharetra ex. Nullam efficitur imperdiet urna, vitae aliquet enim dignissim sed. Vestibulum at tempus enim, at tempus leo.'),
(1842, 207, '_timeline_3_description', 'field_5b3dc2a861c87'),
(1843, 207, 'timeline_4_time', '2015'),
(1844, 207, '_timeline_4_time', 'field_5b3dc22061c84'),
(1845, 207, 'timeline_4_image', '203'),
(1846, 207, '_timeline_4_image', 'field_5b3dc27161c85'),
(1847, 207, 'timeline_4_title', 'Nullam tristique'),
(1848, 207, '_timeline_4_title', 'field_5b3dc29c61c86'),
(1849, 207, 'timeline_4_description', 'Etiam id aliquam lacus. Praesent velit ante, accumsan non tortor vel, hendrerit finibus ipsum. Mauris condimentum mauris sed lorem vehicula dapibus. Aenean pretium ante non enim convallis fringilla. Ut lobortis placerat mi eget sollicitudin. Maecenas ullamcorper leo id nibh dignissim, nec sagittis augue dapibus. Maecenas a imperdiet est, eget finibus tortor. Pellentesque sollicitudin ante quis libero ornare, a auctor orci blandit. Donec sodales odio vel congue rutrum. Aenean eu efficitur magna, in pharetra ex. Nullam efficitur imperdiet urna, vitae aliquet enim dignissim sed. Vestibulum at tempus enim, at tempus leo.'),
(1850, 207, '_timeline_4_description', 'field_5b3dc2a861c87'),
(1851, 207, 'timeline_5_time', 'Present'),
(1852, 207, '_timeline_5_time', 'field_5b3dc22061c84'),
(1853, 207, 'timeline_5_image', '204'),
(1854, 207, '_timeline_5_image', 'field_5b3dc27161c85'),
(1855, 207, 'timeline_5_title', 'Nullam tristique'),
(1856, 207, '_timeline_5_title', 'field_5b3dc29c61c86'),
(1857, 207, 'timeline_5_description', 'Etiam id aliquam lacus. Praesent velit ante, accumsan non tortor vel, hendrerit finibus ipsum. Mauris condimentum mauris sed lorem vehicula dapibus. Aenean pretium ante non enim convallis fringilla. Ut lobortis placerat mi eget sollicitudin. Maecenas ullamcorper leo id nibh dignissim, nec sagittis augue dapibus. Maecenas a imperdiet est, eget finibus tortor. Pellentesque sollicitudin ante quis libero ornare, a auctor orci blandit. Donec sodales odio vel congue rutrum. Aenean eu efficitur magna, in pharetra ex. Nullam efficitur imperdiet urna, vitae aliquet enim dignissim sed. Vestibulum at tempus enim, at tempus leo.'),
(1858, 207, '_timeline_5_description', 'field_5b3dc2a861c87'),
(1859, 207, 'timeline', '6'),
(1860, 207, '_timeline', 'field_5b3dc20461c83'),
(1861, 211, '_wp_attached_file', '2018/07/blacksmith-1.jpg'),
(1862, 211, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1366;s:6:\"height\";i:747;s:4:\"file\";s:24:\"2018/07/blacksmith-1.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"blacksmith-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"blacksmith-1-300x164.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"blacksmith-1-768x420.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:420;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"blacksmith-1-1024x560.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:560;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"blacksmith-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"blacksmith-1-600x328.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"blacksmith-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"blacksmith-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"blacksmith-1-600x328.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"blacksmith-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1863, 212, '_wp_attached_file', '2018/07/apollo-1.jpg'),
(1864, 212, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1366;s:6:\"height\";i:747;s:4:\"file\";s:20:\"2018/07/apollo-1.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"apollo-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"apollo-1-300x164.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"apollo-1-768x420.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:420;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"apollo-1-1024x560.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:560;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"apollo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"apollo-1-600x328.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"apollo-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"apollo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"apollo-1-600x328.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"apollo-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1865, 213, '_wp_attached_file', '2018/07/massad-1.jpg'),
(1866, 213, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1366;s:6:\"height\";i:747;s:4:\"file\";s:20:\"2018/07/massad-1.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"massad-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"massad-1-300x164.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"massad-1-768x420.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:420;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"massad-1-1024x560.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:560;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"massad-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"massad-1-600x328.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"massad-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"massad-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"massad-1-600x328.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"massad-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1867, 214, '_wp_attached_file', '2018/07/apollo-2.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1868, 214, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1366;s:6:\"height\";i:747;s:4:\"file\";s:20:\"2018/07/apollo-2.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"apollo-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"apollo-2-300x164.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"apollo-2-768x420.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:420;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"apollo-2-1024x560.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:560;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"apollo-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"apollo-2-600x328.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"apollo-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"apollo-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"apollo-2-600x328.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"apollo-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1869, 215, '_wp_attached_file', '2018/07/armored-battalion-1.jpg'),
(1870, 215, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1366;s:6:\"height\";i:747;s:4:\"file\";s:31:\"2018/07/armored-battalion-1.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"armored-battalion-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"armored-battalion-1-300x164.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"armored-battalion-1-768x420.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:420;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"armored-battalion-1-1024x560.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:560;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"armored-battalion-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:31:\"armored-battalion-1-600x328.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"armored-battalion-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:31:\"armored-battalion-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:31:\"armored-battalion-1-600x328.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"armored-battalion-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1871, 27, 'slider_0_image', '211'),
(1872, 27, '_slider_0_image', 'field_5b3df812cd3cc'),
(1873, 27, 'slider_0_link', ''),
(1874, 27, '_slider_0_link', 'field_5b3df82bcd3cd'),
(1875, 27, 'slider_1_image', '213'),
(1876, 27, '_slider_1_image', 'field_5b3df812cd3cc'),
(1877, 27, 'slider_1_link', ''),
(1878, 27, '_slider_1_link', 'field_5b3df82bcd3cd'),
(1879, 27, 'slider_2_image', '214'),
(1880, 27, '_slider_2_image', 'field_5b3df812cd3cc'),
(1881, 27, 'slider_2_link', ''),
(1882, 27, '_slider_2_link', 'field_5b3df82bcd3cd'),
(1883, 27, 'slider_3_image', '215'),
(1884, 27, '_slider_3_image', 'field_5b3df812cd3cc'),
(1885, 27, 'slider_3_link', ''),
(1886, 27, '_slider_3_link', 'field_5b3df82bcd3cd'),
(1887, 27, 'slider', '4'),
(1888, 27, '_slider', 'field_5b3df7fecd3cb'),
(1889, 216, 'image', '44'),
(1890, 216, '_image', 'field_5b3ae86b2b1b2'),
(1891, 216, 'title', '\"Creating   the details   that matter\"'),
(1892, 216, '_title', 'field_5b3ae8822b1b3'),
(1893, 216, 'description', 'Nullam imperdiet dapibus ipsum in pulvinar. Maecenas egestas ipsum eget magna venenatis, in aliquet metus dictum. Etiam porta magna non urna aliquet mattis. Donec accumsan lorem lacinia ante vulputate suscipit. Sed convallis dictum lacinia. '),
(1894, 216, '_description', 'field_5b3ae88c2b1b4'),
(1895, 216, 'text_link', 'LEARN MORE'),
(1896, 216, '_text_link', 'field_5b3ae8a22b1b5'),
(1897, 216, 'link', ''),
(1898, 216, '_link', 'field_5b3ae8ac2b1b6'),
(1899, 216, 'section_1_image', '60'),
(1900, 216, '_section_1_image', 'field_5b3aeb0a0b025'),
(1901, 216, 'section_1_title', 'Aenean ut libero eu nunc faucibus'),
(1902, 216, '_section_1_title', 'field_5b3aeb1c0b026'),
(1903, 216, 'section_1_description', 'Vestibulum scelerisque quis sem a aliquet. Sed eu diam sit amet purus suscipit porta in eget velit. Phasellus volutpat turpis ac congue efficitur. Maecenas pulvinar egestas semper. Sed blandit a purus non volutpat. Vivamus aliquam ante augue, at sagittis nulla commodo viverra. Donec hendrerit tellus at vestibulum tristique. Aenean in quam tortor. Integer blandit non enim sit amet molestie. Integer consectetur dignissim enim. Pellentesque eget metus tellus.'),
(1904, 216, '_section_1_description', 'field_5b3aeb280b027'),
(1905, 216, 'section_1_text_link', 'DÉCOUVRIR'),
(1906, 216, '_section_1_text_link', 'field_5b3aeb450b028'),
(1907, 216, 'section_1_link', ''),
(1908, 216, '_section_1_link', 'field_5b3aeb530b029'),
(1909, 216, 'section_1', ''),
(1910, 216, '_section_1', 'field_5b3ae8442b1b0'),
(1911, 216, 'section_2_image', '44'),
(1912, 216, '_section_2_image', 'field_5b3aeb6e0b02b'),
(1913, 216, 'section_2_title', '\"Creating   the details   that matter\"'),
(1914, 216, '_section_2_title', 'field_5b3aeb6e0b02c'),
(1915, 216, 'section_2_description', 'Nullam imperdiet dapibus ipsum in pulvinar. Maecenas egestas ipsum eget magna venenatis, in aliquet metus dictum. Etiam porta magna non urna aliquet mattis. Donec accumsan lorem lacinia ante vulputate suscipit. Sed convallis dictum lacinia. '),
(1916, 216, '_section_2_description', 'field_5b3aeb6e0b02d'),
(1917, 216, 'section_2_text_link', 'LEARN MORE'),
(1918, 216, '_section_2_text_link', 'field_5b3aeb6e0b02e'),
(1919, 216, 'section_2_link', ''),
(1920, 216, '_section_2_link', 'field_5b3aeb6e0b02f'),
(1921, 216, 'section_2', ''),
(1922, 216, '_section_2', 'field_5b3aeb6e0b02a'),
(1923, 216, 'official_gallery', 'a:6:{i:0;s:2:\"65\";i:1;s:2:\"66\";i:2;s:2:\"67\";i:3;s:2:\"68\";i:4;s:2:\"69\";i:5;s:2:\"70\";}'),
(1924, 216, '_official_gallery', 'field_5b3b004daeb56'),
(1925, 216, 'official_link', ''),
(1926, 216, '_official_link', 'field_5b3b00a4aeb57'),
(1927, 216, 'official', ''),
(1928, 216, '_official', 'field_5b3b0036aeb55'),
(1929, 216, 'contact_background', '77'),
(1930, 216, '_contact_background', 'field_5b3b190b10e96'),
(1931, 216, 'contact_map', 'a:3:{s:7:\"address\";s:23:\"A4, Addu City, Maldives\";s:3:\"lat\";s:19:\"-0.6774881521434611\";s:3:\"lng\";s:17:\"73.19501308900703\";}'),
(1932, 216, '_contact_map', 'field_5b3b191d10e97'),
(1933, 216, 'contact_title', 'Jay ahr concept store'),
(1934, 216, '_contact_title', 'field_5b3b192e10e98'),
(1935, 216, 'contact_information', '<ul>\r\n 	<li><strong>A.</strong>   Villingili Island, Addu Atoll, Maldives</li>\r\n 	<li><strong>T.</strong>   <a href=\"tel:(960) 689 7888\">(960) 689 7888</a></li>\r\n 	<li><strong>F.</strong>   <a href=\"(960) 689 7999\">(960) 689 7999</a></li>\r\n</ul>'),
(1936, 216, '_contact_information', 'field_5b3b193d10e99'),
(1937, 216, 'contact', ''),
(1938, 216, '_contact', 'field_5b3b18fe10e95'),
(1939, 216, 'slider_0_image', '211'),
(1940, 216, '_slider_0_image', 'field_5b3df812cd3cc'),
(1941, 216, 'slider_0_link', ''),
(1942, 216, '_slider_0_link', 'field_5b3df82bcd3cd'),
(1943, 216, 'slider_1_image', '213'),
(1944, 216, '_slider_1_image', 'field_5b3df812cd3cc'),
(1945, 216, 'slider_1_link', ''),
(1946, 216, '_slider_1_link', 'field_5b3df82bcd3cd'),
(1947, 216, 'slider_2_image', '214'),
(1948, 216, '_slider_2_image', 'field_5b3df812cd3cc'),
(1949, 216, 'slider_2_link', ''),
(1950, 216, '_slider_2_link', 'field_5b3df82bcd3cd'),
(1951, 216, 'slider_3_image', '215'),
(1952, 216, '_slider_3_image', 'field_5b3df812cd3cc'),
(1953, 216, 'slider_3_link', ''),
(1954, 216, '_slider_3_link', 'field_5b3df82bcd3cd'),
(1955, 216, 'slider', '4'),
(1956, 216, '_slider', 'field_5b3df7fecd3cb');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-07-02 04:59:19', '2018-07-02 04:59:19', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-07-02 04:59:19', '2018-07-02 04:59:19', '', 0, 'http://localhost/jayahr/?p=1', 0, 'post', '', 1),
(2, 1, '2018-07-02 04:59:19', '2018-07-02 04:59:19', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\r\n\r\n...or something like this:\r\n\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\n\r\nAs a new WordPress user, you should go to <a href=\"http://localhost/jayahr/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-07-02 04:59:19', '2018-07-02 04:59:19', '', 0, 'http://localhost/jayahr/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-07-02 04:59:19', '2018-07-02 04:59:19', '<h2>Who we are</h2><p>Our website address is: http://localhost/jayahr.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracing your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-07-02 04:59:19', '2018-07-02 04:59:19', '', 0, 'http://localhost/jayahr/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-07-02 04:59:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-07-02 04:59:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/jayahr/?p=4', 0, 'post', '', 0),
(5, 1, '2018-07-02 08:01:08', '2018-07-02 08:01:08', '', 'Iconic vintage', '', 'publish', 'closed', 'closed', '', 'iconic-vintage', '', '', '2018-07-05 05:05:48', '2018-07-05 05:05:48', '', 0, 'http://localhost/jayahr/?p=5', 1, 'nav_menu_item', '', 0),
(6, 1, '2018-07-02 08:01:08', '2018-07-02 08:01:08', '', 'Jay Ahr collection', '', 'publish', 'closed', 'closed', '', 'jay-ahr-collection', '', '', '2018-07-05 05:05:48', '2018-07-05 05:05:48', '', 0, 'http://localhost/jayahr/?p=6', 5, 'nav_menu_item', '', 0),
(7, 1, '2018-07-02 08:01:08', '2018-07-02 08:01:08', '', 'Customize', '', 'publish', 'closed', 'closed', '', 'customize', '', '', '2018-07-05 05:05:48', '2018-07-05 05:05:48', '', 0, 'http://localhost/jayahr/?p=7', 6, 'nav_menu_item', '', 0),
(10, 1, '2018-07-02 08:01:09', '2018-07-02 08:01:09', '', 'Stores', '', 'publish', 'closed', 'closed', '', 'stores', '', '', '2018-07-05 05:05:48', '2018-07-05 05:05:48', '', 0, 'http://localhost/jayahr/?p=10', 9, 'nav_menu_item', '', 0),
(11, 1, '2018-07-02 08:01:09', '2018-07-02 08:01:09', '', 'Client Services', '', 'publish', 'closed', 'closed', '', 'client-services', '', '', '2018-07-05 05:05:48', '2018-07-05 05:05:48', '', 0, 'http://localhost/jayahr/?p=11', 10, 'nav_menu_item', '', 0),
(16, 1, '2018-07-02 08:37:58', '2018-07-02 08:37:58', '', 'Orders', '', 'publish', 'closed', 'closed', '', 'orders', '', '', '2018-07-05 05:05:48', '2018-07-05 05:05:48', '', 0, 'http://localhost/jayahr/?p=16', 11, 'nav_menu_item', '', 0),
(17, 1, '2018-07-02 08:37:58', '2018-07-02 08:37:58', '', 'Delivery & Returns', '', 'publish', 'closed', 'closed', '', 'delivery-returns', '', '', '2018-07-05 05:05:48', '2018-07-05 05:05:48', '', 0, 'http://localhost/jayahr/?p=17', 12, 'nav_menu_item', '', 0),
(18, 1, '2018-07-02 08:37:58', '2018-07-02 08:37:58', '', 'Privacy & Legal', '', 'publish', 'closed', 'closed', '', 'privacy-legal', '', '', '2018-07-05 05:05:48', '2018-07-05 05:05:48', '', 0, 'http://localhost/jayahr/?p=18', 13, 'nav_menu_item', '', 0),
(19, 1, '2018-07-02 09:33:03', '2018-07-02 09:33:03', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2018-07-02 09:33:03', '2018-07-02 09:33:03', '', 0, 'http://localhost/jayahr/wp-content/uploads/2018/07/logo.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2018-07-02 09:41:06', '2018-07-02 09:41:06', '', 'Orders', '', 'publish', 'closed', 'closed', '', 'orders-2', '', '', '2018-07-02 09:41:06', '2018-07-02 09:41:06', '', 0, 'http://localhost/jayahr/?p=23', 1, 'nav_menu_item', '', 0),
(24, 1, '2018-07-02 09:41:06', '2018-07-02 09:41:06', '', 'Delivery & Returns', '', 'publish', 'closed', 'closed', '', 'delivery-returns-2', '', '', '2018-07-02 09:41:06', '2018-07-02 09:41:06', '', 0, 'http://localhost/jayahr/?p=24', 2, 'nav_menu_item', '', 0),
(25, 1, '2018-07-02 09:41:06', '2018-07-02 09:41:06', '', 'Privacy & Legal', '', 'publish', 'closed', 'closed', '', 'privacy-legal-2', '', '', '2018-07-02 09:41:06', '2018-07-02 09:41:06', '', 0, 'http://localhost/jayahr/?p=25', 3, 'nav_menu_item', '', 0),
(26, 1, '2018-07-02 09:41:51', '2018-07-02 09:41:51', '', 'Store', '', 'publish', 'closed', 'closed', '', 'store', '', '', '2018-07-02 09:41:51', '2018-07-02 09:41:51', '', 0, 'http://localhost/jayahr/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2018-07-03 02:58:52', '2018-07-03 02:58:52', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-07-05 10:53:07', '2018-07-05 10:53:07', '', 0, 'http://localhost/jayahr/?page_id=27', 0, 'page', '', 0),
(28, 1, '2018-07-03 02:58:52', '2018-07-03 02:58:52', '', 'Home', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-07-03 02:58:52', '2018-07-03 02:58:52', '', 27, 'http://localhost/jayahr/2018/07/03/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-07-03 03:04:02', '2018-07-03 03:04:02', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"sidebar.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Home Page', 'home-page', 'publish', 'closed', 'closed', '', 'group_5b3ae68804be5', '', '', '2018-07-05 10:51:51', '2018-07-05 10:51:51', '', 0, 'http://localhost/jayahr/?post_type=acf-field-group&#038;p=29', 0, 'acf-field-group', '', 0),
(36, 1, '2018-07-03 03:08:43', '2018-07-03 03:08:43', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Section 1', 'section_1', 'publish', 'closed', 'closed', '', 'field_5b3ae8442b1b0', '', '', '2018-07-05 10:51:51', '2018-07-05 10:51:51', '', 29, 'http://localhost/jayahr/?post_type=acf-field&#038;p=36', 1, 'acf-field', '', 0),
(44, 1, '2018-07-03 03:10:58', '2018-07-03 03:10:58', '', 'cat-2', '', 'inherit', 'open', 'closed', '', 'cat-2', '', '', '2018-07-03 03:22:20', '2018-07-03 03:22:20', '', 27, 'http://localhost/jayahr/wp-content/uploads/2018/07/cat-2.png', 0, 'attachment', 'image/png', 0),
(45, 1, '2018-07-03 03:11:40', '2018-07-03 03:11:40', '', 'Home', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-07-03 03:11:40', '2018-07-03 03:11:40', '', 27, 'http://localhost/jayahr/2018/07/03/27-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2018-07-03 03:20:40', '2018-07-03 03:20:40', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_5b3aeb0a0b025', '', '', '2018-07-03 03:27:48', '2018-07-03 03:27:48', '', 36, 'http://localhost/jayahr/?post_type=acf-field&#038;p=48', 0, 'acf-field', '', 0),
(49, 1, '2018-07-03 03:20:40', '2018-07-03 03:20:40', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_5b3aeb1c0b026', '', '', '2018-07-03 03:20:40', '2018-07-03 03:20:40', '', 36, 'http://localhost/jayahr/?post_type=acf-field&p=49', 1, 'acf-field', '', 0),
(50, 1, '2018-07-03 03:20:40', '2018-07-03 03:20:40', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"30\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_5b3aeb280b027', '', '', '2018-07-03 03:20:40', '2018-07-03 03:20:40', '', 36, 'http://localhost/jayahr/?post_type=acf-field&p=50', 2, 'acf-field', '', 0),
(51, 1, '2018-07-03 03:20:40', '2018-07-03 03:20:40', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"10\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Text link', 'text_link', 'publish', 'closed', 'closed', '', 'field_5b3aeb450b028', '', '', '2018-07-03 03:20:40', '2018-07-03 03:20:40', '', 36, 'http://localhost/jayahr/?post_type=acf-field&p=51', 3, 'acf-field', '', 0),
(52, 1, '2018-07-03 03:20:40', '2018-07-03 03:20:40', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_5b3aeb530b029', '', '', '2018-07-03 03:20:40', '2018-07-03 03:20:40', '', 36, 'http://localhost/jayahr/?post_type=acf-field&p=52', 4, 'acf-field', '', 0),
(53, 1, '2018-07-03 03:20:40', '2018-07-03 03:20:40', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Section 2', 'section_2', 'publish', 'closed', 'closed', '', 'field_5b3aeb6e0b02a', '', '', '2018-07-05 10:51:51', '2018-07-05 10:51:51', '', 29, 'http://localhost/jayahr/?post_type=acf-field&#038;p=53', 2, 'acf-field', '', 0),
(54, 1, '2018-07-03 03:20:40', '2018-07-03 03:20:40', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_5b3aeb6e0b02b', '', '', '2018-07-03 03:20:40', '2018-07-03 03:20:40', '', 53, 'http://localhost/jayahr/?post_type=acf-field&p=54', 0, 'acf-field', '', 0),
(55, 1, '2018-07-03 03:20:40', '2018-07-03 03:20:40', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_5b3aeb6e0b02c', '', '', '2018-07-03 03:20:40', '2018-07-03 03:20:40', '', 53, 'http://localhost/jayahr/?post_type=acf-field&p=55', 1, 'acf-field', '', 0),
(56, 1, '2018-07-03 03:20:40', '2018-07-03 03:20:40', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"30\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_5b3aeb6e0b02d', '', '', '2018-07-03 03:20:40', '2018-07-03 03:20:40', '', 53, 'http://localhost/jayahr/?post_type=acf-field&p=56', 2, 'acf-field', '', 0),
(57, 1, '2018-07-03 03:20:40', '2018-07-03 03:20:40', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"10\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Text link', 'text_link', 'publish', 'closed', 'closed', '', 'field_5b3aeb6e0b02e', '', '', '2018-07-03 03:20:40', '2018-07-03 03:20:40', '', 53, 'http://localhost/jayahr/?post_type=acf-field&p=57', 3, 'acf-field', '', 0),
(58, 1, '2018-07-03 03:20:40', '2018-07-03 03:20:40', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_5b3aeb6e0b02f', '', '', '2018-07-03 03:20:40', '2018-07-03 03:20:40', '', 53, 'http://localhost/jayahr/?post_type=acf-field&p=58', 4, 'acf-field', '', 0),
(59, 1, '2018-07-03 03:22:44', '2018-07-03 03:22:44', '', 'Home', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-07-03 03:22:44', '2018-07-03 03:22:44', '', 27, 'http://localhost/jayahr/2018/07/03/27-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2018-07-03 03:36:21', '2018-07-03 03:36:21', '', 'cat-1', '', 'inherit', 'open', 'closed', '', 'cat-1', '', '', '2018-07-03 03:36:24', '2018-07-03 03:36:24', '', 27, 'http://localhost/jayahr/wp-content/uploads/2018/07/cat-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2018-07-03 03:36:26', '2018-07-03 03:36:26', '', 'Home', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-07-03 03:36:26', '2018-07-03 03:36:26', '', 27, 'http://localhost/jayahr/2018/07/03/27-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2018-07-03 04:51:00', '2018-07-03 04:51:00', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Official', 'official', 'publish', 'closed', 'closed', '', 'field_5b3b0036aeb55', '', '', '2018-07-05 10:51:51', '2018-07-05 10:51:51', '', 29, 'http://localhost/jayahr/?post_type=acf-field&#038;p=62', 3, 'acf-field', '', 0),
(63, 1, '2018-07-03 04:51:00', '2018-07-03 04:51:00', 'a:16:{s:4:\"type\";s:7:\"gallery\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"70\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"insert\";s:6:\"append\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Gallery', 'gallery', 'publish', 'closed', 'closed', '', 'field_5b3b004daeb56', '', '', '2018-07-03 04:51:32', '2018-07-03 04:51:32', '', 62, 'http://localhost/jayahr/?post_type=acf-field&#038;p=63', 0, 'acf-field', '', 0),
(64, 1, '2018-07-03 04:51:00', '2018-07-03 04:51:00', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"30\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_5b3b00a4aeb57', '', '', '2018-07-03 04:51:00', '2018-07-03 04:51:00', '', 62, 'http://localhost/jayahr/?post_type=acf-field&p=64', 1, 'acf-field', '', 0),
(65, 1, '2018-07-03 04:52:01', '2018-07-03 04:52:01', '', 'offical-1', '', 'inherit', 'open', 'closed', '', 'offical-1', '', '', '2018-07-03 04:52:01', '2018-07-03 04:52:01', '', 27, 'http://localhost/jayahr/wp-content/uploads/2018/07/offical-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2018-07-03 04:52:02', '2018-07-03 04:52:02', '', 'offical-2', '', 'inherit', 'open', 'closed', '', 'offical-2', '', '', '2018-07-03 04:52:02', '2018-07-03 04:52:02', '', 27, 'http://localhost/jayahr/wp-content/uploads/2018/07/offical-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2018-07-03 04:52:03', '2018-07-03 04:52:03', '', 'offical-3', '', 'inherit', 'open', 'closed', '', 'offical-3', '', '', '2018-07-03 04:52:03', '2018-07-03 04:52:03', '', 27, 'http://localhost/jayahr/wp-content/uploads/2018/07/offical-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2018-07-03 04:52:03', '2018-07-03 04:52:03', '', 'offical-4', '', 'inherit', 'open', 'closed', '', 'offical-4', '', '', '2018-07-03 04:52:03', '2018-07-03 04:52:03', '', 27, 'http://localhost/jayahr/wp-content/uploads/2018/07/offical-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2018-07-03 04:52:04', '2018-07-03 04:52:04', '', 'offical-5', '', 'inherit', 'open', 'closed', '', 'offical-5', '', '', '2018-07-03 04:52:04', '2018-07-03 04:52:04', '', 27, 'http://localhost/jayahr/wp-content/uploads/2018/07/offical-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2018-07-03 04:52:05', '2018-07-03 04:52:05', '', 'offical-6', '', 'inherit', 'open', 'closed', '', 'offical-6', '', '', '2018-07-03 04:52:05', '2018-07-03 04:52:05', '', 27, 'http://localhost/jayahr/wp-content/uploads/2018/07/offical-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2018-07-03 04:52:20', '2018-07-03 04:52:20', '', 'Home', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-07-03 04:52:20', '2018-07-03 04:52:20', '', 27, 'http://localhost/jayahr/2018/07/03/27-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2018-07-03 06:36:07', '2018-07-03 06:36:07', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Contact', 'contact', 'publish', 'closed', 'closed', '', 'field_5b3b18fe10e95', '', '', '2018-07-05 10:51:51', '2018-07-05 10:51:51', '', 29, 'http://localhost/jayahr/?post_type=acf-field&#038;p=72', 4, 'acf-field', '', 0),
(73, 1, '2018-07-03 06:36:07', '2018-07-03 06:36:07', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"30\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Background', 'background', 'publish', 'closed', 'closed', '', 'field_5b3b190b10e96', '', '', '2018-07-03 06:36:07', '2018-07-03 06:36:07', '', 72, 'http://localhost/jayahr/?post_type=acf-field&p=73', 0, 'acf-field', '', 0),
(74, 1, '2018-07-03 06:36:07', '2018-07-03 06:36:07', 'a:9:{s:4:\"type\";s:10:\"google_map\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"30\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"center_lat\";s:0:\"\";s:10:\"center_lng\";s:0:\"\";s:4:\"zoom\";s:0:\"\";s:6:\"height\";s:0:\"\";}', 'Map', 'map', 'publish', 'closed', 'closed', '', 'field_5b3b191d10e97', '', '', '2018-07-03 06:36:07', '2018-07-03 06:36:07', '', 72, 'http://localhost/jayahr/?post_type=acf-field&p=74', 1, 'acf-field', '', 0),
(75, 1, '2018-07-03 06:36:07', '2018-07-03 06:36:07', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_5b3b192e10e98', '', '', '2018-07-03 06:36:07', '2018-07-03 06:36:07', '', 72, 'http://localhost/jayahr/?post_type=acf-field&p=75', 2, 'acf-field', '', 0),
(76, 1, '2018-07-03 06:36:07', '2018-07-03 06:36:07', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Information', 'information', 'publish', 'closed', 'closed', '', 'field_5b3b193d10e99', '', '', '2018-07-03 06:36:07', '2018-07-03 06:36:07', '', 72, 'http://localhost/jayahr/?post_type=acf-field&p=76', 3, 'acf-field', '', 0),
(77, 1, '2018-07-03 06:36:28', '2018-07-03 06:36:28', '', 'store-bg', '', 'inherit', 'open', 'closed', '', 'store-bg', '', '', '2018-07-03 06:36:33', '2018-07-03 06:36:33', '', 27, 'http://localhost/jayahr/wp-content/uploads/2018/07/store-bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2018-07-03 06:39:33', '2018-07-03 06:39:33', '', 'Home', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-07-03 06:39:33', '2018-07-03 06:39:33', '', 27, 'http://localhost/jayahr/2018/07/03/27-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2018-07-03 07:13:37', '2018-07-03 07:13:37', '', 'Home', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-07-03 07:13:37', '2018-07-03 07:13:37', '', 27, 'http://localhost/jayahr/2018/07/03/27-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2018-07-03 09:16:34', '2018-07-03 09:16:34', '', 'Lorem Ipsum 1/1', '', 'publish', 'open', 'closed', '', 'lorem-ipsum-1-1', '', '', '2018-07-04 06:25:04', '2018-07-04 06:25:04', '', 0, 'http://localhost/jayahr/?post_type=product&#038;p=80', 0, 'product', '', 0),
(81, 1, '2018-07-03 09:16:20', '2018-07-03 09:16:20', '', 'product-1', '', 'inherit', 'open', 'closed', '', 'product-1', '', '', '2018-07-03 09:16:20', '2018-07-03 09:16:20', '', 80, 'http://localhost/jayahr/wp-content/uploads/2018/07/product-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2018-07-03 09:22:53', '2018-07-03 09:22:53', '', 'Lorem Ipsum 1/1', '', 'publish', 'open', 'closed', '', 'lorem-ipsum-1-1-1', '', '', '2018-07-04 06:25:32', '2018-07-04 06:25:32', '', 0, 'http://localhost/jayahr/?post_type=product&#038;p=82', 0, 'product', '', 0),
(83, 1, '2018-07-03 09:23:50', '2018-07-03 09:23:50', '', 'product-2', '', 'inherit', 'open', 'closed', '', 'product-2', '', '', '2018-07-03 09:23:50', '2018-07-03 09:23:50', '', 82, 'http://localhost/jayahr/wp-content/uploads/2018/07/product-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2018-07-03 09:24:07', '2018-07-03 09:24:07', '', 'Lorem Ipsum 1/1', '', 'publish', 'open', 'closed', '', 'lorem-ipsum-1-1-2', '', '', '2018-07-04 06:26:00', '2018-07-04 06:26:00', '', 0, 'http://localhost/jayahr/?post_type=product&#038;p=84', 0, 'product', '', 0),
(85, 1, '2018-07-03 09:24:37', '2018-07-03 09:24:37', '', 'product-3', '', 'inherit', 'open', 'closed', '', 'product-3', '', '', '2018-07-03 09:24:37', '2018-07-03 09:24:37', '', 84, 'http://localhost/jayahr/wp-content/uploads/2018/07/product-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2018-07-03 09:25:00', '2018-07-03 09:25:00', '', 'Lorem Ipsum 1/1', '', 'publish', 'open', 'closed', '', 'lorem-ipsum-1-1-3', '', '', '2018-07-04 06:26:28', '2018-07-04 06:26:28', '', 0, 'http://localhost/jayahr/?post_type=product&#038;p=86', 0, 'product', '', 0),
(87, 1, '2018-07-03 09:25:24', '2018-07-03 09:25:24', '', 'offical-4', '', 'inherit', 'open', 'closed', '', 'offical-4-2', '', '', '2018-07-03 09:25:24', '2018-07-03 09:25:24', '', 86, 'http://localhost/jayahr/wp-content/uploads/2018/07/offical-4-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2018-07-03 09:25:33', '2018-07-03 09:25:33', '', 'Lorem Ipsum 1/1', '', 'publish', 'open', 'closed', '', 'lorem-ipsum-1-1-4', '', '', '2018-07-04 06:27:03', '2018-07-04 06:27:03', '', 0, 'http://localhost/jayahr/?post_type=product&#038;p=88', 0, 'product', '', 0),
(89, 1, '2018-07-03 09:25:57', '2018-07-03 09:25:57', '', 'product-5', '', 'inherit', 'open', 'closed', '', 'product-5', '', '', '2018-07-03 09:25:57', '2018-07-03 09:25:57', '', 88, 'http://localhost/jayahr/wp-content/uploads/2018/07/product-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2018-07-03 09:26:09', '2018-07-03 09:26:09', '', 'Lorem Ipsum 1/1', '', 'publish', 'open', 'closed', '', 'lorem-ipsum-1-1-5', '', '', '2018-07-04 06:27:27', '2018-07-04 06:27:27', '', 0, 'http://localhost/jayahr/?post_type=product&#038;p=90', 0, 'product', '', 0),
(91, 1, '2018-07-03 09:26:34', '2018-07-03 09:26:34', '', 'product-6', '', 'inherit', 'open', 'closed', '', 'product-6', '', '', '2018-07-03 09:26:34', '2018-07-03 09:26:34', '', 90, 'http://localhost/jayahr/wp-content/uploads/2018/07/product-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2018-07-03 09:26:45', '2018-07-03 09:26:45', '', 'Lorem Ipsum 1/1', '', 'publish', 'open', 'closed', '', 'lorem-ipsum-1-1-6', '', '', '2018-07-04 06:27:50', '2018-07-04 06:27:50', '', 0, 'http://localhost/jayahr/?post_type=product&#038;p=92', 0, 'product', '', 0),
(93, 1, '2018-07-03 09:27:04', '2018-07-03 09:27:04', '', 'product-7', '', 'inherit', 'open', 'closed', '', 'product-7', '', '', '2018-07-03 09:27:04', '2018-07-03 09:27:04', '', 92, 'http://localhost/jayahr/wp-content/uploads/2018/07/product-7.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2018-07-03 09:27:16', '2018-07-03 09:27:16', '', 'Lorem Ipsum 1/1', '', 'publish', 'open', 'closed', '', 'lorem-ipsum-1-1-7', '', '', '2018-07-04 06:28:15', '2018-07-04 06:28:15', '', 0, 'http://localhost/jayahr/?post_type=product&#038;p=94', 0, 'product', '', 0),
(95, 1, '2018-07-03 09:27:35', '2018-07-03 09:27:35', '', 'product-8', '', 'inherit', 'open', 'closed', '', 'product-8', '', '', '2018-07-03 09:27:35', '2018-07-03 09:27:35', '', 94, 'http://localhost/jayahr/wp-content/uploads/2018/07/product-8.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2018-07-03 09:27:45', '2018-07-03 09:27:45', '', 'Lorem Ipsum 1/1', '', 'publish', 'open', 'closed', '', 'lorem-ipsum-1-1-8', '', '', '2018-07-05 04:14:28', '2018-07-05 04:14:28', '', 0, 'http://localhost/jayahr/?post_type=product&#038;p=96', 0, 'product', '', 0),
(97, 1, '2018-07-03 09:28:06', '2018-07-03 09:28:06', '', 'product-9', '', 'inherit', 'open', 'closed', '', 'product-9', '', '', '2018-07-03 09:28:06', '2018-07-03 09:28:06', '', 96, 'http://localhost/jayahr/wp-content/uploads/2018/07/product-9.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2018-07-03 09:28:19', '2018-07-03 09:28:19', '', 'Lorem Ipsum 1/1', '', 'publish', 'open', 'closed', '', 'lorem-ipsum-1-1-9', '', '', '2018-07-04 06:29:00', '2018-07-04 06:29:00', '', 0, 'http://localhost/jayahr/?post_type=product&#038;p=98', 0, 'product', '', 0),
(99, 1, '2018-07-03 09:28:38', '2018-07-03 09:28:38', '', 'product-10', '', 'inherit', 'open', 'closed', '', 'product-10', '', '', '2018-07-03 09:28:38', '2018-07-03 09:28:38', '', 98, 'http://localhost/jayahr/wp-content/uploads/2018/07/product-10.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2018-07-03 09:28:54', '2018-07-03 09:28:54', '', 'Lorem Ipsum 1/1', '', 'publish', 'open', 'closed', '', 'lorem-ipsum-1-1-10', '', '', '2018-07-05 04:14:55', '2018-07-05 04:14:55', '', 0, 'http://localhost/jayahr/?post_type=product&#038;p=100', 0, 'product', '', 0),
(101, 1, '2018-07-03 09:29:12', '2018-07-03 09:29:12', '', 'product-11', '', 'inherit', 'open', 'closed', '', 'product-11', '', '', '2018-07-03 09:29:12', '2018-07-03 09:29:12', '', 100, 'http://localhost/jayahr/wp-content/uploads/2018/07/product-11.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2018-07-03 09:29:22', '2018-07-03 09:29:22', '', 'Lorem Ipsum 1/1', '', 'publish', 'open', 'closed', '', 'lorem-ipsum-1-1-11', '', '', '2018-07-04 06:29:44', '2018-07-04 06:29:44', '', 0, 'http://localhost/jayahr/?post_type=product&#038;p=102', 0, 'product', '', 0),
(103, 1, '2018-07-03 09:29:38', '2018-07-03 09:29:38', '', 'product-12', '', 'inherit', 'open', 'closed', '', 'product-12', '', '', '2018-07-03 09:29:38', '2018-07-03 09:29:38', '', 102, 'http://localhost/jayahr/wp-content/uploads/2018/07/product-12.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2018-07-03 09:29:49', '2018-07-03 09:29:49', '', 'Lorem Ipsum 1/1', '', 'publish', 'open', 'closed', '', 'lorem-ipsum-1-1-12', '', '', '2018-07-04 06:30:09', '2018-07-04 06:30:09', '', 0, 'http://localhost/jayahr/?post_type=product&#038;p=104', 0, 'product', '', 0),
(105, 1, '2018-07-03 09:30:08', '2018-07-03 09:30:08', '', 'product-13', '', 'inherit', 'open', 'closed', '', 'product-13', '', '', '2018-07-03 09:30:08', '2018-07-03 09:30:08', '', 104, 'http://localhost/jayahr/wp-content/uploads/2018/07/product-13.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2018-07-03 09:30:18', '2018-07-03 09:30:18', '', 'Lorem Ipsum 1/1', '', 'publish', 'open', 'closed', '', 'lorem-ipsum-1-1-13', '', '', '2018-07-04 06:30:31', '2018-07-04 06:30:31', '', 0, 'http://localhost/jayahr/?post_type=product&#038;p=106', 0, 'product', '', 0),
(107, 1, '2018-07-03 09:30:38', '2018-07-03 09:30:38', '', 'product-14', '', 'inherit', 'open', 'closed', '', 'product-14', '', '', '2018-07-03 09:30:38', '2018-07-03 09:30:38', '', 106, 'http://localhost/jayahr/wp-content/uploads/2018/07/product-14.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2018-07-03 09:30:48', '2018-07-03 09:30:48', '', 'Lorem Ipsum 1/1', '', 'publish', 'open', 'closed', '', 'lorem-ipsum-1-1-14', '', '', '2018-07-04 06:30:55', '2018-07-04 06:30:55', '', 0, 'http://localhost/jayahr/?post_type=product&#038;p=108', 0, 'product', '', 0),
(109, 1, '2018-07-03 09:31:08', '2018-07-03 09:31:08', '', 'product-15', '', 'inherit', 'open', 'closed', '', 'product-15', '', '', '2018-07-03 09:31:08', '2018-07-03 09:31:08', '', 108, 'http://localhost/jayahr/wp-content/uploads/2018/07/product-15.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2018-07-03 09:31:18', '2018-07-03 09:31:18', '', 'Lorem Ipsum 1/1', '', 'publish', 'open', 'closed', '', 'lorem-ipsum-1-1-15', '', '', '2018-07-04 06:31:25', '2018-07-04 06:31:25', '', 0, 'http://localhost/jayahr/?post_type=product&#038;p=110', 0, 'product', '', 0),
(111, 1, '2018-07-03 09:31:39', '2018-07-03 09:31:39', '', 'product-16', '', 'inherit', 'open', 'closed', '', 'product-16', '', '', '2018-07-03 09:31:39', '2018-07-03 09:31:39', '', 110, 'http://localhost/jayahr/wp-content/uploads/2018/07/product-16.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2018-07-03 09:31:48', '2018-07-03 09:31:48', '', 'Lorem Ipsum 1/1', 'Proin finibus lectus libero, sed ornare velit dapibus sit amet. Praesent consectetur, risus ut molestie pellentesque, neque est scelerisque turpis, sit amet finibus tellus nisi nec urna. Ut eleifend ex quis libero lobortis, id fringilla sem varius. Maecenas pharetra eget risus at posuere. Sed volutpat elementum leo, vitae malesuada sem porttitor vel. Curabitur sit amet consequat ante. Aenean convallis malesuada purus id vehicula. Mauris consectetur est at quam rutrum tincidunt.', 'publish', 'open', 'closed', '', 'lorem-ipsum-1-1-16', '', '', '2018-07-04 06:32:35', '2018-07-04 06:32:35', '', 0, 'http://localhost/jayahr/?post_type=product&#038;p=112', 0, 'product', '', 0),
(113, 1, '2018-07-03 09:32:06', '2018-07-03 09:32:06', '', 'product-17', '', 'inherit', 'open', 'closed', '', 'product-17', '', '', '2018-07-03 09:32:06', '2018-07-03 09:32:06', '', 112, 'http://localhost/jayahr/wp-content/uploads/2018/07/product-17.jpg', 0, 'attachment', 'image/jpeg', 0),
(114, 1, '2018-07-03 09:47:44', '2018-07-03 09:47:44', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2018-07-03 09:47:44', '2018-07-03 09:47:44', '', 0, 'http://localhost/jayahr/shop/', 0, 'page', '', 0),
(115, 1, '2018-07-03 09:47:44', '2018-07-03 09:47:44', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2018-07-03 09:47:44', '2018-07-03 09:47:44', '', 0, 'http://localhost/jayahr/cart/', 0, 'page', '', 0),
(116, 1, '2018-07-03 09:47:44', '2018-07-03 09:47:44', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2018-07-03 09:47:44', '2018-07-03 09:47:44', '', 0, 'http://localhost/jayahr/checkout/', 0, 'page', '', 0),
(117, 1, '2018-07-03 09:47:44', '2018-07-03 09:47:44', '[woocommerce_my_account]', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2018-07-03 09:47:44', '2018-07-03 09:47:44', '', 0, 'http://localhost/jayahr/my-account/', 0, 'page', '', 0),
(118, 1, '2018-07-03 10:51:20', '2018-07-03 10:51:20', '', 'product-4', '', 'inherit', 'open', 'closed', '', 'product-4', '', '', '2018-07-03 10:51:20', '2018-07-03 10:51:20', '', 86, 'http://localhost/jayahr/wp-content/uploads/2018/07/product-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(119, 1, '2018-07-04 04:16:15', '2018-07-04 04:16:15', ' ', '', '', 'publish', 'closed', 'closed', '', '119', '', '', '2018-07-04 04:16:15', '2018-07-04 04:16:15', '', 0, 'http://localhost/jayahr/?p=119', 1, 'nav_menu_item', '', 0),
(120, 1, '2018-07-04 04:16:15', '2018-07-04 04:16:15', ' ', '', '', 'publish', 'closed', 'closed', '', '120', '', '', '2018-07-04 04:16:15', '2018-07-04 04:16:15', '', 0, 'http://localhost/jayahr/?p=120', 2, 'nav_menu_item', '', 0),
(121, 1, '2018-07-04 04:16:15', '2018-07-04 04:16:15', ' ', '', '', 'publish', 'closed', 'closed', '', '121', '', '', '2018-07-04 04:16:15', '2018-07-04 04:16:15', '', 0, 'http://localhost/jayahr/?p=121', 3, 'nav_menu_item', '', 0),
(122, 1, '2018-07-04 04:17:11', '2018-07-04 04:17:11', ' ', '', '', 'publish', 'closed', 'closed', '', '122', '', '', '2018-07-05 05:05:48', '2018-07-05 05:05:48', '', 0, 'http://localhost/jayahr/?p=122', 2, 'nav_menu_item', '', 0),
(123, 1, '2018-07-04 04:17:11', '2018-07-04 04:17:11', ' ', '', '', 'publish', 'closed', 'closed', '', '123', '', '', '2018-07-05 05:05:48', '2018-07-05 05:05:48', '', 0, 'http://localhost/jayahr/?p=123', 3, 'nav_menu_item', '', 0),
(124, 1, '2018-07-04 04:17:11', '2018-07-04 04:17:11', ' ', '', '', 'publish', 'closed', 'closed', '', '124', '', '', '2018-07-05 05:05:48', '2018-07-05 05:05:48', '', 0, 'http://localhost/jayahr/?p=124', 4, 'nav_menu_item', '', 0),
(125, 1, '2018-07-04 06:17:27', '2018-07-04 06:17:27', '', 'Lorem Ipsum 1/1', 'Proin finibus lectus libero, sed ornare velit dapibus sit amet. Praesent consectetur, risus ut molestie pellentesque, neque est scelerisque turpis, sit amet finibus tellus nisi nec urna. Ut eleifend ex quis libero lobortis, id fringilla sem varius. Maecenas pharetra eget risus at posuere. Sed volutpat elementum leo, vitae malesuada sem porttitor vel. Curabitur sit amet consequat ante. Aenean convallis malesuada purus id vehicula. Mauris consectetur est at quam rutrum tincidunt.', 'publish', 'open', 'closed', '', 'lorem-ipsum-1-1-17', '', '', '2018-07-04 06:59:21', '2018-07-04 06:59:21', '', 0, 'http://localhost/jayahr/?post_type=product&#038;p=125', 0, 'product', '', 0),
(127, 1, '2018-07-04 08:26:21', '2018-07-04 08:26:21', '', 'Embroidery', '', 'publish', 'closed', 'closed', '', 'embroidery', '', '', '2018-07-04 09:10:06', '2018-07-04 09:10:06', '', 0, 'http://localhost/jayahr/?page_id=127', 0, 'page', '', 0),
(128, 1, '2018-07-04 08:28:55', '2018-07-04 08:28:55', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:29:\"template-parts/embroidery.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Embroidery', 'embroidery', 'publish', 'closed', 'closed', '', 'group_5b3c84975e646', '', '', '2018-07-04 08:28:59', '2018-07-04 08:28:59', '', 0, 'http://localhost/jayahr/?post_type=acf-field-group&#038;p=128', 0, 'acf-field-group', '', 0),
(129, 1, '2018-07-04 08:26:21', '2018-07-04 08:26:21', '', 'Embroidery', '', 'inherit', 'closed', 'closed', '', '127-revision-v1', '', '', '2018-07-04 08:26:21', '2018-07-04 08:26:21', '', 127, 'http://localhost/jayahr/2018/07/04/127-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2018-07-04 08:28:55', '2018-07-04 08:28:55', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Banner top', 'banner_top', 'publish', 'closed', 'closed', '', 'field_5b3c84b8bc994', '', '', '2018-07-04 08:28:55', '2018-07-04 08:28:55', '', 128, 'http://localhost/jayahr/?post_type=acf-field&p=130', 0, 'acf-field', '', 0),
(131, 1, '2018-07-04 08:28:55', '2018-07-04 08:28:55', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_5b3c84dbbc995', '', '', '2018-07-04 08:28:55', '2018-07-04 08:28:55', '', 128, 'http://localhost/jayahr/?post_type=acf-field&p=131', 1, 'acf-field', '', 0),
(132, 1, '2018-07-04 08:28:55', '2018-07-04 08:28:55', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_5b3c84fcbc996', '', '', '2018-07-04 08:28:55', '2018-07-04 08:28:55', '', 128, 'http://localhost/jayahr/?post_type=acf-field&p=132', 2, 'acf-field', '', 0),
(133, 1, '2018-07-04 08:28:55', '2018-07-04 08:28:55', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Content right', 'content_right', 'publish', 'closed', 'closed', '', 'field_5b3c8510bc997', '', '', '2018-07-04 08:28:55', '2018-07-04 08:28:55', '', 128, 'http://localhost/jayahr/?post_type=acf-field&p=133', 3, 'acf-field', '', 0),
(134, 1, '2018-07-04 08:28:55', '2018-07-04 08:28:55', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Content left', 'content_left', 'publish', 'closed', 'closed', '', 'field_5b3c852dbc998', '', '', '2018-07-04 08:28:55', '2018-07-04 08:28:55', '', 128, 'http://localhost/jayahr/?post_type=acf-field&p=134', 4, 'acf-field', '', 0),
(135, 1, '2018-07-04 08:28:55', '2018-07-04 08:28:55', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Background bottom', 'background_bottom', 'publish', 'closed', 'closed', '', 'field_5b3c8538bc999', '', '', '2018-07-04 08:28:55', '2018-07-04 08:28:55', '', 128, 'http://localhost/jayahr/?post_type=acf-field&p=135', 5, 'acf-field', '', 0),
(136, 1, '2018-07-04 08:34:39', '2018-07-04 08:34:39', '', 'embroidery-banner', '', 'inherit', 'open', 'closed', '', 'embroidery-banner', '', '', '2018-07-04 08:35:51', '2018-07-04 08:35:51', '', 127, 'http://localhost/jayahr/wp-content/uploads/2018/07/embroidery-banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(137, 1, '2018-07-04 08:37:07', '2018-07-04 08:37:07', '', 'Embroidery', '', 'inherit', 'closed', 'closed', '', '127-revision-v1', '', '', '2018-07-04 08:37:07', '2018-07-04 08:37:07', '', 127, 'http://localhost/jayahr/2018/07/04/127-revision-v1/', 0, 'revision', '', 0),
(138, 1, '2018-07-04 08:37:21', '2018-07-04 08:37:21', '', 'embroidery-img', '', 'inherit', 'open', 'closed', '', 'embroidery-img', '', '', '2018-07-04 08:37:23', '2018-07-04 08:37:23', '', 127, 'http://localhost/jayahr/wp-content/uploads/2018/07/embroidery-img.jpg', 0, 'attachment', 'image/jpeg', 0),
(139, 1, '2018-07-04 08:38:58', '2018-07-04 08:38:58', '', 'embroidery-bg', '', 'inherit', 'open', 'closed', '', 'embroidery-bg', '', '', '2018-07-04 08:39:00', '2018-07-04 08:39:00', '', 127, 'http://localhost/jayahr/wp-content/uploads/2018/07/embroidery-bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(140, 1, '2018-07-04 08:39:03', '2018-07-04 08:39:03', '', 'Embroidery', '', 'inherit', 'closed', 'closed', '', '127-revision-v1', '', '', '2018-07-04 08:39:03', '2018-07-04 08:39:03', '', 127, 'http://localhost/jayahr/2018/07/04/127-revision-v1/', 0, 'revision', '', 0),
(141, 1, '2018-07-04 09:00:14', '2018-07-04 09:00:14', '', 'Embroidery', '', 'inherit', 'closed', 'closed', '', '127-revision-v1', '', '', '2018-07-04 09:00:14', '2018-07-04 09:00:14', '', 127, 'http://localhost/jayahr/2018/07/04/127-revision-v1/', 0, 'revision', '', 0),
(142, 1, '2018-07-04 09:10:06', '2018-07-04 09:10:06', '', 'Embroidery', '', 'inherit', 'closed', 'closed', '', '127-revision-v1', '', '', '2018-07-04 09:10:06', '2018-07-04 09:10:06', '', 127, 'http://localhost/jayahr/2018/07/04/127-revision-v1/', 0, 'revision', '', 0),
(143, 1, '2018-07-04 09:50:41', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-04 09:50:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/jayahr/?page_id=143', 0, 'page', '', 0),
(144, 1, '2018-07-04 09:51:10', '2018-07-04 09:51:10', ' ', '', '', 'publish', 'closed', 'closed', '', '144', '', '', '2018-07-05 05:05:48', '2018-07-05 05:05:48', '', 0, 'http://localhost/jayahr/?p=144', 8, 'nav_menu_item', '', 0),
(145, 1, '2018-07-04 10:07:30', '2018-07-04 10:07:30', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-07-04 10:23:30', '2018-07-04 10:23:30', '', 0, 'http://localhost/jayahr/?page_id=145', 0, 'page', '', 0),
(146, 1, '2018-07-04 10:07:30', '2018-07-04 10:07:30', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2018-07-04 10:07:30', '2018-07-04 10:07:30', '', 145, 'http://localhost/jayahr/2018/07/04/145-revision-v1/', 0, 'revision', '', 0),
(147, 1, '2018-07-04 10:10:04', '2018-07-04 10:10:04', '', 'contact-img', '', 'inherit', 'open', 'closed', '', 'contact-img', '', '', '2018-07-04 10:10:04', '2018-07-04 10:10:04', '', 145, 'http://localhost/jayahr/wp-content/uploads/2018/07/contact-img.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(148, 1, '2018-07-04 10:20:02', '2018-07-04 10:20:02', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:26:\"template-parts/contact.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Contact', 'contact', 'publish', 'closed', 'closed', '', 'group_5b3c9f17c413c', '', '', '2018-07-04 10:20:02', '2018-07-04 10:20:02', '', 0, 'http://localhost/jayahr/?post_type=acf-field-group&#038;p=148', 0, 'acf-field-group', '', 0),
(149, 1, '2018-07-04 10:20:02', '2018-07-04 10:20:02', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'List Email', 'list_email', 'publish', 'closed', 'closed', '', 'field_5b3c9f232e75d', '', '', '2018-07-04 10:20:02', '2018-07-04 10:20:02', '', 148, 'http://localhost/jayahr/?post_type=acf-field&p=149', 0, 'acf-field', '', 0),
(150, 1, '2018-07-04 10:20:02', '2018-07-04 10:20:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_5b3c9f382e75e', '', '', '2018-07-04 10:20:02', '2018-07-04 10:20:02', '', 149, 'http://localhost/jayahr/?post_type=acf-field&p=150', 0, 'acf-field', '', 0),
(151, 1, '2018-07-04 10:20:02', '2018-07-04 10:20:02', 'a:9:{s:4:\"type\";s:5:\"email\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Email', 'email', 'publish', 'closed', 'closed', '', 'field_5b3c9f442e75f', '', '', '2018-07-04 10:20:02', '2018-07-04 10:20:02', '', 149, 'http://localhost/jayahr/?post_type=acf-field&p=151', 1, 'acf-field', '', 0),
(152, 1, '2018-07-04 10:23:30', '2018-07-04 10:23:30', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2018-07-04 10:23:30', '2018-07-04 10:23:30', '', 145, 'http://localhost/jayahr/2018/07/04/145-revision-v1/', 0, 'revision', '', 0),
(153, 1, '2018-07-04 10:33:59', '2018-07-04 10:33:59', '<div class=\"group\">[text* your-name class:your-name placeholder \"Name\"]</div>\r\n<div class=\"group\">[email* your-email class:your-email placeholder \"Email\"]</div>\r\n<div class=\"group\">[tel* your-phone class:your-phone placeholder \"Phone Number\"]</div>\r\n<div class=\"group\">[textarea* your-message class:your-message placeholder \"Message\"]</div>\n1\nJay Ahr \"[your-subject]\"\n[your-name] <arrowicode.tester@gmail.com>\narrowicode.tester@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Jay Ahr (http://localhost/jayahr)\nReply-To: [your-email]\n\n\n\n\nJay Ahr \"[your-subject]\"\nJay Ahr <arrowicode.tester@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Jay Ahr (http://localhost/jayahr)\nReply-To: arrowicode.tester@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-07-04 10:40:32', '2018-07-04 10:40:32', '', 0, 'http://localhost/jayahr/?post_type=wpcf7_contact_form&#038;p=153', 0, 'wpcf7_contact_form', '', 0),
(154, 1, '2018-07-04 11:07:30', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-04 11:07:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/jayahr/?page_id=154', 0, 'page', '', 0),
(155, 1, '2018-07-05 02:14:59', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-05 02:14:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/jayahr/?page_id=155', 0, 'page', '', 0),
(156, 1, '2018-07-05 02:17:20', '2018-07-05 02:17:20', '', 'Editorial', '', 'publish', 'closed', 'closed', '', 'editorial', '', '', '2018-07-05 03:36:13', '2018-07-05 03:36:13', '', 0, 'http://localhost/jayahr/?page_id=156', 0, 'page', '', 0),
(157, 1, '2018-07-05 02:17:20', '2018-07-05 02:17:20', '', 'Editorial', '', 'inherit', 'closed', 'closed', '', '156-revision-v1', '', '', '2018-07-05 02:17:20', '2018-07-05 02:17:20', '', 156, 'http://localhost/jayahr/2018/07/05/156-revision-v1/', 0, 'revision', '', 0),
(158, 1, '2018-07-05 02:17:47', '2018-07-05 02:17:47', ' ', '', '', 'publish', 'closed', 'closed', '', '158', '', '', '2018-07-05 05:05:48', '2018-07-05 05:05:48', '', 0, 'http://localhost/jayahr/?p=158', 7, 'nav_menu_item', '', 0),
(159, 1, '2018-07-05 02:25:42', '2018-07-05 02:25:42', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:28:\"template-parts/editorial.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Editorial', 'editorial', 'publish', 'closed', 'closed', '', 'group_5b3d811f22c81', '', '', '2018-07-05 02:25:42', '2018-07-05 02:25:42', '', 0, 'http://localhost/jayahr/?post_type=acf-field-group&#038;p=159', 0, 'acf-field-group', '', 0),
(160, 1, '2018-07-05 02:25:42', '2018-07-05 02:25:42', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'List Editorial', 'list_editorial', 'publish', 'closed', 'closed', '', 'field_5b3d812ae384a', '', '', '2018-07-05 02:25:42', '2018-07-05 02:25:42', '', 159, 'http://localhost/jayahr/?post_type=acf-field&p=160', 0, 'acf-field', '', 0),
(161, 1, '2018-07-05 02:25:42', '2018-07-05 02:25:42', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"30\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_5b3d8151e384b', '', '', '2018-07-05 02:25:42', '2018-07-05 02:25:42', '', 160, 'http://localhost/jayahr/?post_type=acf-field&p=161', 0, 'acf-field', '', 0),
(162, 1, '2018-07-05 02:25:42', '2018-07-05 02:25:42', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_5b3d816be384c', '', '', '2018-07-05 02:25:42', '2018-07-05 02:25:42', '', 160, 'http://localhost/jayahr/?post_type=acf-field&p=162', 1, 'acf-field', '', 0),
(163, 1, '2018-07-05 02:25:42', '2018-07-05 02:25:42', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Sub Title', 'sub_title', 'publish', 'closed', 'closed', '', 'field_5b3d8198e384e', '', '', '2018-07-05 02:25:42', '2018-07-05 02:25:42', '', 160, 'http://localhost/jayahr/?post_type=acf-field&p=163', 2, 'acf-field', '', 0),
(164, 1, '2018-07-05 02:25:42', '2018-07-05 02:25:42', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"30\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_5b3d8178e384d', '', '', '2018-07-05 02:25:42', '2018-07-05 02:25:42', '', 160, 'http://localhost/jayahr/?post_type=acf-field&p=164', 3, 'acf-field', '', 0),
(169, 1, '2018-07-05 02:37:23', '2018-07-05 02:37:23', '', 'Editorial', '', 'inherit', 'closed', 'closed', '', '156-revision-v1', '', '', '2018-07-05 02:37:23', '2018-07-05 02:37:23', '', 156, 'http://localhost/jayahr/2018/07/05/156-revision-v1/', 0, 'revision', '', 0),
(171, 1, '2018-07-05 02:46:24', '2018-07-05 02:46:24', '', 'Editorial', '', 'inherit', 'closed', 'closed', '', '156-revision-v1', '', '', '2018-07-05 02:46:24', '2018-07-05 02:46:24', '', 156, 'http://localhost/jayahr/2018/07/05/156-revision-v1/', 0, 'revision', '', 0),
(176, 1, '2018-07-05 02:58:58', '2018-07-05 02:58:58', '', 'Editorial', '', 'inherit', 'closed', 'closed', '', '156-revision-v1', '', '', '2018-07-05 02:58:58', '2018-07-05 02:58:58', '', 156, 'http://localhost/jayahr/2018/07/05/156-revision-v1/', 0, 'revision', '', 0),
(178, 1, '2018-07-05 03:25:10', '2018-07-05 03:25:10', '', 'Editorial', '', 'inherit', 'closed', 'closed', '', '156-revision-v1', '', '', '2018-07-05 03:25:10', '2018-07-05 03:25:10', '', 156, 'http://localhost/jayahr/2018/07/05/156-revision-v1/', 0, 'revision', '', 0),
(179, 1, '2018-07-05 03:35:42', '2018-07-05 03:35:42', '', 'massad', '', 'inherit', 'open', 'closed', '', 'massad', '', '', '2018-07-05 03:35:44', '2018-07-05 03:35:44', '', 156, 'http://localhost/jayahr/wp-content/uploads/2018/07/massad.jpg', 0, 'attachment', 'image/jpeg', 0),
(180, 1, '2018-07-05 03:35:51', '2018-07-05 03:35:51', '', 'apollo', '', 'inherit', 'open', 'closed', '', 'apollo', '', '', '2018-07-05 03:35:54', '2018-07-05 03:35:54', '', 156, 'http://localhost/jayahr/wp-content/uploads/2018/07/apollo.jpg', 0, 'attachment', 'image/jpeg', 0),
(181, 1, '2018-07-05 03:36:00', '2018-07-05 03:36:00', '', 'armored-battalion', '', 'inherit', 'open', 'closed', '', 'armored-battalion', '', '', '2018-07-05 03:36:02', '2018-07-05 03:36:02', '', 156, 'http://localhost/jayahr/wp-content/uploads/2018/07/armored-battalion.jpg', 0, 'attachment', 'image/jpeg', 0),
(182, 1, '2018-07-05 03:36:08', '2018-07-05 03:36:08', '', 'blacksmith', '', 'inherit', 'open', 'closed', '', 'blacksmith', '', '', '2018-07-05 03:36:11', '2018-07-05 03:36:11', '', 156, 'http://localhost/jayahr/wp-content/uploads/2018/07/blacksmith.jpg', 0, 'attachment', 'image/jpeg', 0),
(183, 1, '2018-07-05 03:36:13', '2018-07-05 03:36:13', '', 'Editorial', '', 'inherit', 'closed', 'closed', '', '156-revision-v1', '', '', '2018-07-05 03:36:13', '2018-07-05 03:36:13', '', 156, 'http://localhost/jayahr/2018/07/05/156-revision-v1/', 0, 'revision', '', 0),
(184, 1, '2018-07-05 05:05:23', '2018-07-05 05:05:23', '', 'Story', '', 'publish', 'closed', 'closed', '', 'story', '', '', '2018-07-05 10:20:06', '2018-07-05 10:20:06', '', 0, 'http://localhost/jayahr/?page_id=184', 0, 'page', '', 0),
(185, 1, '2018-07-05 05:05:23', '2018-07-05 05:05:23', '', 'Story', '', 'inherit', 'closed', 'closed', '', '184-revision-v1', '', '', '2018-07-05 05:05:23', '2018-07-05 05:05:23', '', 184, 'http://localhost/jayahr/2018/07/05/184-revision-v1/', 0, 'revision', '', 0),
(186, 1, '2018-07-05 05:05:48', '2018-07-05 05:05:48', ' ', '', '', 'publish', 'closed', 'closed', '', '186', '', '', '2018-07-05 05:05:48', '2018-07-05 05:05:48', '', 0, 'http://localhost/jayahr/?p=186', 14, 'nav_menu_item', '', 0),
(187, 1, '2018-07-05 05:09:01', '2018-07-05 05:09:01', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:24:\"template-parts/story.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Story', 'story', 'publish', 'closed', 'closed', '', 'group_5b3da75e66927', '', '', '2018-07-05 07:03:27', '2018-07-05 07:03:27', '', 0, 'http://localhost/jayahr/?post_type=acf-field-group&#038;p=187', 0, 'acf-field-group', '', 0),
(188, 1, '2018-07-05 05:09:01', '2018-07-05 05:09:01', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Introduction', 'introduction', 'publish', 'closed', 'closed', '', 'field_5b3da768f92ac', '', '', '2018-07-05 05:09:01', '2018-07-05 05:09:01', '', 187, 'http://localhost/jayahr/?post_type=acf-field&p=188', 0, 'acf-field', '', 0),
(189, 1, '2018-07-05 05:09:01', '2018-07-05 05:09:01', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"30\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_5b3da7b8f92ad', '', '', '2018-07-05 05:09:01', '2018-07-05 05:09:01', '', 188, 'http://localhost/jayahr/?post_type=acf-field&p=189', 0, 'acf-field', '', 0),
(190, 1, '2018-07-05 05:09:01', '2018-07-05 05:09:01', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_5b3da7caf92ae', '', '', '2018-07-05 05:09:01', '2018-07-05 05:09:01', '', 188, 'http://localhost/jayahr/?post_type=acf-field&p=190', 1, 'acf-field', '', 0),
(191, 1, '2018-07-05 05:09:01', '2018-07-05 05:09:01', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_5b3da7d2f92af', '', '', '2018-07-05 05:09:01', '2018-07-05 05:09:01', '', 188, 'http://localhost/jayahr/?post_type=acf-field&p=191', 2, 'acf-field', '', 0),
(192, 1, '2018-07-05 05:10:10', '2018-07-05 05:10:10', '', 'story-img', '', 'inherit', 'open', 'closed', '', 'story-img', '', '', '2018-07-05 05:10:11', '2018-07-05 05:10:11', '', 184, 'http://localhost/jayahr/wp-content/uploads/2018/07/story-img.jpg', 0, 'attachment', 'image/jpeg', 0),
(193, 1, '2018-07-05 05:11:17', '2018-07-05 05:11:17', '', 'Story', '', 'inherit', 'closed', 'closed', '', '184-revision-v1', '', '', '2018-07-05 05:11:17', '2018-07-05 05:11:17', '', 184, 'http://localhost/jayahr/2018/07/05/184-revision-v1/', 0, 'revision', '', 0),
(194, 1, '2018-07-05 07:03:26', '2018-07-05 07:03:26', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Timeline', 'timeline', 'publish', 'closed', 'closed', '', 'field_5b3dc20461c83', '', '', '2018-07-05 07:03:26', '2018-07-05 07:03:26', '', 187, 'http://localhost/jayahr/?post_type=acf-field&p=194', 1, 'acf-field', '', 0),
(195, 1, '2018-07-05 07:03:26', '2018-07-05 07:03:26', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"15\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Time', 'time', 'publish', 'closed', 'closed', '', 'field_5b3dc22061c84', '', '', '2018-07-05 07:03:26', '2018-07-05 07:03:26', '', 194, 'http://localhost/jayahr/?post_type=acf-field&p=195', 0, 'acf-field', '', 0),
(196, 1, '2018-07-05 07:03:27', '2018-07-05 07:03:27', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"25\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_5b3dc27161c85', '', '', '2018-07-05 07:03:27', '2018-07-05 07:03:27', '', 194, 'http://localhost/jayahr/?post_type=acf-field&p=196', 1, 'acf-field', '', 0),
(197, 1, '2018-07-05 07:03:27', '2018-07-05 07:03:27', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"15\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_5b3dc29c61c86', '', '', '2018-07-05 07:03:27', '2018-07-05 07:03:27', '', 194, 'http://localhost/jayahr/?post_type=acf-field&p=197', 2, 'acf-field', '', 0),
(198, 1, '2018-07-05 07:03:27', '2018-07-05 07:03:27', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"45\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_5b3dc2a861c87', '', '', '2018-07-05 07:03:27', '2018-07-05 07:03:27', '', 194, 'http://localhost/jayahr/?post_type=acf-field&p=198', 3, 'acf-field', '', 0),
(199, 1, '2018-07-05 07:05:36', '2018-07-05 07:05:36', '', 'story-1992', '', 'inherit', 'open', 'closed', '', 'story-1992', '', '', '2018-07-05 07:05:44', '2018-07-05 07:05:44', '', 184, 'http://localhost/jayahr/wp-content/uploads/2018/07/story-1992.jpg', 0, 'attachment', 'image/jpeg', 0),
(200, 1, '2018-07-05 07:08:56', '2018-07-05 07:08:56', '', 'story-1997', '', 'inherit', 'open', 'closed', '', 'story-1997', '', '', '2018-07-05 07:08:56', '2018-07-05 07:08:56', '', 184, 'http://localhost/jayahr/wp-content/uploads/2018/07/story-1997.jpg', 0, 'attachment', 'image/jpeg', 0),
(201, 1, '2018-07-05 07:09:21', '2018-07-05 07:09:21', '', 'story-2004', '', 'inherit', 'open', 'closed', '', 'story-2004', '', '', '2018-07-05 07:09:21', '2018-07-05 07:09:21', '', 184, 'http://localhost/jayahr/wp-content/uploads/2018/07/story-2004.jpg', 0, 'attachment', 'image/jpeg', 0),
(202, 1, '2018-07-05 07:09:42', '2018-07-05 07:09:42', '', 'story-2011', '', 'inherit', 'open', 'closed', '', 'story-2011', '', '', '2018-07-05 07:09:42', '2018-07-05 07:09:42', '', 184, 'http://localhost/jayahr/wp-content/uploads/2018/07/story-2011.jpg', 0, 'attachment', 'image/jpeg', 0),
(203, 1, '2018-07-05 07:09:58', '2018-07-05 07:09:58', '', 'story-2015', '', 'inherit', 'open', 'closed', '', 'story-2015', '', '', '2018-07-05 07:09:58', '2018-07-05 07:09:58', '', 184, 'http://localhost/jayahr/wp-content/uploads/2018/07/story-2015.jpg', 0, 'attachment', 'image/jpeg', 0),
(204, 1, '2018-07-05 07:10:26', '2018-07-05 07:10:26', '', 'story-present', '', 'inherit', 'open', 'closed', '', 'story-present', '', '', '2018-07-05 07:10:26', '2018-07-05 07:10:26', '', 184, 'http://localhost/jayahr/wp-content/uploads/2018/07/story-present.jpg', 0, 'attachment', 'image/jpeg', 0),
(205, 1, '2018-07-05 07:10:39', '2018-07-05 07:10:39', '', 'Story', '', 'inherit', 'closed', 'closed', '', '184-revision-v1', '', '', '2018-07-05 07:10:39', '2018-07-05 07:10:39', '', 184, 'http://localhost/jayahr/2018/07/05/184-revision-v1/', 0, 'revision', '', 0),
(206, 1, '2018-07-05 10:18:50', '2018-07-05 10:18:50', '', 'Story', '', 'inherit', 'closed', 'closed', '', '184-revision-v1', '', '', '2018-07-05 10:18:50', '2018-07-05 10:18:50', '', 184, 'http://localhost/jayahr/2018/07/05/184-revision-v1/', 0, 'revision', '', 0),
(207, 1, '2018-07-05 10:20:06', '2018-07-05 10:20:06', '', 'Story', '', 'inherit', 'closed', 'closed', '', '184-revision-v1', '', '', '2018-07-05 10:20:06', '2018-07-05 10:20:06', '', 184, 'http://localhost/jayahr/2018/07/05/184-revision-v1/', 0, 'revision', '', 0),
(208, 1, '2018-07-05 10:51:34', '2018-07-05 10:51:34', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Slider', 'slider', 'publish', 'closed', 'closed', '', 'field_5b3df7fecd3cb', '', '', '2018-07-05 10:51:51', '2018-07-05 10:51:51', '', 29, 'http://localhost/jayahr/?post_type=acf-field&#038;p=208', 0, 'acf-field', '', 0),
(209, 1, '2018-07-05 10:51:34', '2018-07-05 10:51:34', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_5b3df812cd3cc', '', '', '2018-07-05 10:51:34', '2018-07-05 10:51:34', '', 208, 'http://localhost/jayahr/?post_type=acf-field&p=209', 0, 'acf-field', '', 0),
(210, 1, '2018-07-05 10:51:34', '2018-07-05 10:51:34', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_5b3df82bcd3cd', '', '', '2018-07-05 10:51:34', '2018-07-05 10:51:34', '', 208, 'http://localhost/jayahr/?post_type=acf-field&p=210', 1, 'acf-field', '', 0),
(211, 1, '2018-07-05 10:52:22', '2018-07-05 10:52:22', '', 'blacksmith', '', 'inherit', 'open', 'closed', '', 'blacksmith-2', '', '', '2018-07-05 10:52:24', '2018-07-05 10:52:24', '', 27, 'http://localhost/jayahr/wp-content/uploads/2018/07/blacksmith-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(212, 1, '2018-07-05 10:52:32', '2018-07-05 10:52:32', '', 'apollo', '', 'inherit', 'open', 'closed', '', 'apollo-2', '', '', '2018-07-05 10:52:32', '2018-07-05 10:52:32', '', 27, 'http://localhost/jayahr/wp-content/uploads/2018/07/apollo-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(213, 1, '2018-07-05 10:52:41', '2018-07-05 10:52:41', '', 'massad', '', 'inherit', 'open', 'closed', '', 'massad-2', '', '', '2018-07-05 10:52:45', '2018-07-05 10:52:45', '', 27, 'http://localhost/jayahr/wp-content/uploads/2018/07/massad-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(214, 1, '2018-07-05 10:52:51', '2018-07-05 10:52:51', '', 'apollo', '', 'inherit', 'open', 'closed', '', 'apollo-3', '', '', '2018-07-05 10:52:55', '2018-07-05 10:52:55', '', 27, 'http://localhost/jayahr/wp-content/uploads/2018/07/apollo-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(215, 1, '2018-07-05 10:53:01', '2018-07-05 10:53:01', '', 'armored-battalion', '', 'inherit', 'open', 'closed', '', 'armored-battalion-2', '', '', '2018-07-05 10:53:04', '2018-07-05 10:53:04', '', 27, 'http://localhost/jayahr/wp-content/uploads/2018/07/armored-battalion-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(216, 1, '2018-07-05 10:53:07', '2018-07-05 10:53:07', '', 'Home', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-07-05 10:53:07', '2018-07-05 10:53:07', '', 27, 'http://localhost/jayahr/2018/07/05/27-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'display_type', ''),
(2, 15, 'thumbnail_id', '0'),
(3, 20, 'order', '0'),
(4, 20, 'display_type', ''),
(5, 20, 'thumbnail_id', '0'),
(6, 21, 'order', '0'),
(7, 21, 'display_type', ''),
(8, 21, 'thumbnail_id', '0'),
(9, 15, 'product_count_product_cat', '18'),
(10, 22, 'order_pa_size', '0'),
(11, 23, 'order_pa_series', '0'),
(12, 24, 'order', '0'),
(13, 24, 'display_type', ''),
(14, 24, 'thumbnail_id', '0'),
(15, 25, 'order', '0'),
(16, 25, 'display_type', ''),
(17, 25, 'thumbnail_id', '0'),
(18, 26, 'order', '0'),
(19, 26, 'display_type', ''),
(20, 26, 'thumbnail_id', '0'),
(21, 27, 'order', '0'),
(22, 27, 'display_type', ''),
(23, 27, 'thumbnail_id', '0'),
(24, 28, 'order', '0'),
(25, 28, 'display_type', ''),
(26, 28, 'thumbnail_id', '0'),
(27, 29, 'order_pa_size', '0'),
(28, 30, 'order_pa_size', '0'),
(29, 31, 'order_pa_series', '0'),
(30, 32, 'order_pa_attr-type', '0'),
(31, 33, 'order_pa_attr-type', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'The Louis Vuitton Keepall Collection', 'the-louis-vuitton-keepall-collection', 0),
(16, 'Main menu', 'main-menu', 0),
(17, 'Iconic Vintage', 'iconic-vintage', 0),
(18, 'Client Services', 'client-services', 0),
(19, 'Contact Us', 'contact-us', 0),
(20, 'The Hermès Collection', 'the-hermes-collection', 0),
(21, 'The Levi’s Jacket Collection', 'the-levis-jacket-collection', 0),
(22, 'Size 50', 'size-50', 0),
(23, 'September 2001', 'september-2001', 0),
(24, 'Flags', 'flags', 0),
(25, 'Keffieh', 'keffieh', 0),
(26, 'Persian Rug', 'persian-rug', 0),
(27, 'Shunga', 'shunga', 0),
(28, 'Weapons', 'weapons', 0),
(29, 'Size 100', 'size-100', 0),
(30, '55', '55', 0),
(31, 'December 1999', 'december-1999', 0),
(32, 'Yarn Embroidery', 'yarn-embroidery', 0),
(33, 'The Louis Vuitton Keepall Collection', 'the-louis-vuitton-keepall-collection', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 16, 0),
(6, 16, 0),
(7, 16, 0),
(10, 16, 0),
(11, 16, 0),
(16, 16, 0),
(17, 16, 0),
(18, 16, 0),
(23, 18, 0),
(24, 18, 0),
(25, 18, 0),
(26, 19, 0),
(80, 2, 0),
(80, 15, 0),
(80, 22, 0),
(80, 23, 0),
(80, 33, 0),
(82, 2, 0),
(82, 15, 0),
(82, 22, 0),
(82, 23, 0),
(82, 33, 0),
(84, 2, 0),
(84, 15, 0),
(84, 22, 0),
(84, 23, 0),
(84, 33, 0),
(86, 2, 0),
(86, 15, 0),
(86, 22, 0),
(86, 23, 0),
(86, 33, 0),
(88, 2, 0),
(88, 15, 0),
(88, 22, 0),
(88, 23, 0),
(88, 33, 0),
(90, 2, 0),
(90, 15, 0),
(90, 22, 0),
(90, 23, 0),
(90, 33, 0),
(92, 2, 0),
(92, 15, 0),
(92, 22, 0),
(92, 23, 0),
(92, 33, 0),
(94, 2, 0),
(94, 15, 0),
(94, 22, 0),
(94, 23, 0),
(94, 33, 0),
(96, 2, 0),
(96, 9, 0),
(96, 15, 0),
(96, 22, 0),
(96, 23, 0),
(96, 33, 0),
(98, 2, 0),
(98, 15, 0),
(98, 22, 0),
(98, 23, 0),
(98, 33, 0),
(100, 2, 0),
(100, 9, 0),
(100, 15, 0),
(100, 22, 0),
(100, 23, 0),
(100, 33, 0),
(102, 2, 0),
(102, 15, 0),
(102, 22, 0),
(102, 23, 0),
(102, 33, 0),
(104, 2, 0),
(104, 15, 0),
(104, 22, 0),
(104, 23, 0),
(104, 33, 0),
(106, 2, 0),
(106, 15, 0),
(106, 22, 0),
(106, 23, 0),
(106, 33, 0),
(108, 2, 0),
(108, 15, 0),
(108, 22, 0),
(108, 23, 0),
(108, 33, 0),
(110, 2, 0),
(110, 15, 0),
(110, 22, 0),
(110, 23, 0),
(110, 33, 0),
(112, 2, 0),
(112, 15, 0),
(112, 22, 0),
(112, 23, 0),
(112, 33, 0),
(119, 17, 0),
(120, 17, 0),
(121, 17, 0),
(122, 16, 0),
(123, 16, 0),
(124, 16, 0),
(125, 2, 0),
(125, 15, 0),
(125, 30, 0),
(125, 31, 0),
(125, 32, 0),
(144, 16, 0),
(158, 16, 0),
(186, 16, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 18),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 2),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 18),
(16, 16, 'nav_menu', '', 0, 14),
(17, 17, 'nav_menu', '', 0, 3),
(18, 18, 'nav_menu', '', 0, 3),
(19, 19, 'nav_menu', '', 0, 1),
(20, 20, 'product_cat', '', 0, 0),
(21, 21, 'product_cat', '', 0, 0),
(22, 22, 'pa_size', '', 0, 17),
(23, 23, 'pa_series', '', 0, 17),
(24, 24, 'product_cat', '', 15, 0),
(25, 25, 'product_cat', '', 15, 0),
(26, 26, 'product_cat', '', 15, 0),
(27, 27, 'product_cat', '', 15, 0),
(28, 28, 'product_cat', '', 15, 0),
(29, 29, 'pa_size', '', 0, 0),
(30, 30, 'pa_size', '', 0, 1),
(31, 31, 'pa_series', '', 0, 1),
(32, 32, 'pa_attr-type', '', 0, 1),
(33, 33, 'pa_attr-type', '', 0, 17);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
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
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,text_widget_custom_html'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"feaefdcbca66a6e98f871d25b12c7fd4a3267937f6895d21ef3df504ee26e5be\";a:4:{s:10:\"expiration\";i:1530680369;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1530507569;}s:64:\"37f5cf26329df22591acc9819ba443c8307d7bd69cbe6ea8ca65a96a58524d6d\";a:4:{s:10:\"expiration\";i:1531796296;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1530586696;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(19, 1, 'dismissed_install_notice', '1'),
(20, 1, 'wc_last_active', '1530748800'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-product_tag\";}'),
(23, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(24, 1, 'wp_user-settings-time', '1530767473'),
(25, 1, 'nav_menu_recently_edited', '16'),
(26, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(27, 1, 'acf_user_settings', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
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
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B45b2jNsFB5V/Xh4bQvRPh3abFgnC/1', 'admin', 'arrowicode.tester@gmail.com', '', '2018-07-02 04:59:19', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_attribute_taxonomies`
--

INSERT INTO `wp_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'size', 'Size', 'select', 'menu_order', 0),
(2, 'series', 'Series', 'select', 'menu_order', 0),
(3, 'attr-type', 'Type', 'select', 'menu_order', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(2, '1', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:715:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"VN\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"VN\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:27:\"arrowicode.tester@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1530929777);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=809;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1957;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
