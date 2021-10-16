-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2021 at 05:47 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 - deactive, 1 - active',
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `status`, `role_id`, `name`, `username`, `email`, `email_verified`, `image`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Admin', 'admin', 'admin@gmail.com', 0, '1613814214513697840.png', '$2y$10$q7PIHP9NSRt2TUUnqdYwJeiC6aIPcr5xy1h6BqN11Ou4BGjWvZfTG', NULL, NULL, '2021-04-11 06:19:17'),
(2, 1, 1, 'Rony', 'rony', 'rony@gmail.com', 0, '16137989081753336377.png', '$2y$10$19NOEORKuK8qEPM13S38R.lD.tsOCQntS2rK9finxx3zNt8Ql/d2.', NULL, '2021-02-19 22:28:56', '2021-02-19 23:28:28'),
(3, 1, 2, 'Sihab', 'sihab', 'sihab@gmail.com', 0, '1613798862914110019.png', '$2y$10$KLLAvssopCM/dr2iNW53E.VPU2Me2hG1XcrSPWt/zedsvgWEN7jzK', NULL, '2021-02-19 22:31:38', '2021-02-20 03:37:24');

-- --------------------------------------------------------

--
-- Table structure for table `archives`
--

CREATE TABLE `archives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `archives`
--

INSERT INTO `archives` (`id`, `date`, `created_at`, `updated_at`) VALUES
(1, '01/2021', '2021-02-11 05:12:54', '2021-02-11 05:12:54'),
(2, '09/2020', '2021-02-11 05:13:12', '2021-02-11 05:13:12'),
(3, '02/2021', '2021-02-11 05:13:24', '2021-02-16 07:57:44');

-- --------------------------------------------------------

--
-- Table structure for table `backups`
--

CREATE TABLE `backups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bcategories`
--

CREATE TABLE `bcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bcategories`
--

INSERT INTO `bcategories` (`id`, `language_id`, `name`, `slug`, `status`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, 1, 'Business', 'Business', 1, 0, '2021-02-11 00:51:53', '2021-02-11 00:58:11'),
(2, 1, 'Technology', 'Technology', 1, 1, '2021-02-11 00:52:01', '2021-02-11 00:58:07'),
(3, 1, 'Digital Marketing', 'Digital-Marketing', 1, 0, '2021-02-11 00:52:40', '2021-02-11 00:52:40'),
(4, 1, 'UI Design', 'UI-Design', 1, 0, '2021-02-11 00:52:59', '2021-02-11 00:52:59'),
(5, 2, 'Business', 'Business', 1, 0, '2021-02-11 00:51:53', '2021-02-11 00:58:11'),
(6, 2, 'Technology', 'Technology', 1, 1, '2021-02-11 00:52:01', '2021-02-11 00:58:07'),
(7, 2, 'Digital Marketing', 'Digital-Marketing', 1, 0, '2021-02-11 00:52:40', '2021-02-11 00:52:40'),
(8, 2, 'UI Design', 'UI-Design', 1, 0, '2021-02-11 00:52:59', '2021-02-11 00:52:59'),
(9, 3, 'Business', 'Business', 1, 0, '2021-02-11 00:51:53', '2021-02-11 00:58:11'),
(10, 3, 'Technology', 'Technology', 1, 1, '2021-02-11 00:52:01', '2021-02-11 00:58:07'),
(11, 3, 'Digital Marketing', 'Digital-Marketing', 1, 0, '2021-02-11 00:52:40', '2021-02-11 00:52:40'),
(12, 3, 'UI Design', 'UI-Design', 1, 0, '2021-02-11 00:52:59', '2021-02-11 00:52:59');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `bcategory_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `language_id`, `bcategory_id`, `title`, `slug`, `image`, `content`, `status`, `meta_keywords`, `meta_description`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'Magna aliqua. Ut enim ad minim venia m, quis nostrud exercitation ullamco', 'Magna-aliqua.-Ut-enim-ad-minim-venia-m,-quis-nostrud-exercitation-ullamco', '16130436341918352388.jpg', '<div><p>Lorem ipsum dolor sit amet, consectetur\r\n adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore \r\nmagna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco\r\n laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor \r\nin reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla \r\npariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa \r\nqui officia deserunt mollit anim id est laborum. Sed ut perspiciatis \r\nunde omnis iste natus error sit voluptatem accusantium doloremque \r\nlaudantium, totam rem aperiam, eaque ipsa quae ab illo inventore \r\nveritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo \r\nenim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, \r\nsed quia consequuntur magni dolores eos qui ratione voluptatem sequi \r\nnesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit \r\namet, consectetur, adipisci velit, sed quia non numquam eius modi \r\ntempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\r\n                                    <p>Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud\r\n exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia deserunt.</p>\r\n                                    \r\n                                </div>\r\n\r\n<div><br>Setting the mood with incense\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    A cleansing hot shower or bath\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    Setting the mood with incense\r\n                                    <ul>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li></ul></div>', 1, 'html,css,js', 'Duis aute irure dolor in repre-henderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia.', 0, '2021-02-11 05:35:56', '2021-02-11 05:41:33'),
(2, 1, 2, 'Adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.', 'Adipisicing-elit,-sed-do-eiusmod-tempor-incididunt-ut-labore-et-dolore.', '16130436082031699655.jpg', '<div><p>Lorem ipsum dolor sit amet, consectetur\r\n adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore \r\nmagna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco\r\n laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor \r\nin reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla \r\npariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa \r\nqui officia deserunt mollit anim id est laborum. Sed ut perspiciatis \r\nunde omnis iste natus error sit voluptatem accusantium doloremque \r\nlaudantium, totam rem aperiam, eaque ipsa quae ab illo inventore \r\nveritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo \r\nenim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, \r\nsed quia consequuntur magni dolores eos qui ratione voluptatem sequi \r\nnesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit \r\namet, consectetur, adipisci velit, sed quia non numquam eius modi \r\ntempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\r\n                                    <p>Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud\r\n exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia deserunt.</p>\r\n                                    \r\n                                </div>\r\n\r\n<div><br>Setting the mood with incense\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    A cleansing hot shower or bath\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    Setting the mood with incense\r\n                                    <ul>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li></ul></div>', 1, 'html,css,js', 'Duis aute irure dolor in repre-henderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia.', 0, '2021-02-11 05:35:56', '2021-02-11 05:41:24'),
(3, 1, 1, 'Lorem ipsum dolor sit amet, consecte cing elit, sed do eiusmod tempor.', 'Lorem-ipsum-dolor-sit-amet,-consecte-cing-elit,-sed-do-eiusmod-tempor.', '1613043644825936294.jpg', '<div><p>Lorem ipsum dolor sit amet, consectetur\r\n adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore \r\nmagna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco\r\n laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor \r\nin reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla \r\npariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa \r\nqui officia deserunt mollit anim id est laborum. Sed ut perspiciatis \r\nunde omnis iste natus error sit voluptatem accusantium doloremque \r\nlaudantium, totam rem aperiam, eaque ipsa quae ab illo inventore \r\nveritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo \r\nenim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, \r\nsed quia consequuntur magni dolores eos qui ratione voluptatem sequi \r\nnesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit \r\namet, consectetur, adipisci velit, sed quia non numquam eius modi \r\ntempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\r\n                                    <p>Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud\r\n exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia deserunt.</p>\r\n                                    \r\n                                </div>\r\n\r\n<div><br>Setting the mood with incense\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    A cleansing hot shower or bath\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    Setting the mood with incense\r\n                                    <ul>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li></ul></div>', 1, 'html,css,js', 'Duis aute irure dolor in repre-henderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia.', 0, '2021-02-11 05:35:56', '2021-02-11 05:41:18'),
(4, 2, 8, 'Magna aliqua. Ut enim ad minim venia m, quis nostrud exercitation ullamco', 'Magna-aliqua.-Ut-enim-ad-minim-venia-m,-quis-nostrud-exercitation-ullamco', '16130436341918352388.jpg', '<div><p>Lorem ipsum dolor sit amet, consectetur\r\n adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore \r\nmagna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco\r\n laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor \r\nin reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla \r\npariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa \r\nqui officia deserunt mollit anim id est laborum. Sed ut perspiciatis \r\nunde omnis iste natus error sit voluptatem accusantium doloremque \r\nlaudantium, totam rem aperiam, eaque ipsa quae ab illo inventore \r\nveritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo \r\nenim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, \r\nsed quia consequuntur magni dolores eos qui ratione voluptatem sequi \r\nnesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit \r\namet, consectetur, adipisci velit, sed quia non numquam eius modi \r\ntempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\r\n                                    <p>Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud\r\n exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia deserunt.</p>\r\n                                    \r\n                                </div>\r\n\r\n<div><br>Setting the mood with incense\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    A cleansing hot shower or bath\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    Setting the mood with incense\r\n                                    <ul>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li></ul></div>', 1, 'html,css,js', 'Duis aute irure dolor in repre-henderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia.', 0, '2021-02-11 05:35:56', '2021-02-11 05:41:33'),
(5, 2, 6, 'Adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.', 'Adipisicing-elit,-sed-do-eiusmod-tempor-incididunt-ut-labore-et-dolore.', '16130436082031699655.jpg', '<div><p>Lorem ipsum dolor sit amet, consectetur\r\n adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore \r\nmagna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco\r\n laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor \r\nin reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla \r\npariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa \r\nqui officia deserunt mollit anim id est laborum. Sed ut perspiciatis \r\nunde omnis iste natus error sit voluptatem accusantium doloremque \r\nlaudantium, totam rem aperiam, eaque ipsa quae ab illo inventore \r\nveritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo \r\nenim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, \r\nsed quia consequuntur magni dolores eos qui ratione voluptatem sequi \r\nnesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit \r\namet, consectetur, adipisci velit, sed quia non numquam eius modi \r\ntempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\r\n                                    <p>Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud\r\n exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia deserunt.</p>\r\n                                    \r\n                                </div>\r\n\r\n<div><br>Setting the mood with incense\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    A cleansing hot shower or bath\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    Setting the mood with incense\r\n                                    <ul>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li></ul></div>', 1, 'html,css,js', 'Duis aute irure dolor in repre-henderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia.', 0, '2021-02-11 05:35:56', '2021-02-11 05:41:24'),
(6, 2, 5, 'Lorem ipsum dolor sit amet, consecte cing elit, sed do eiusmod tempor.', 'Lorem-ipsum-dolor-sit-amet,-consecte-cing-elit,-sed-do-eiusmod-tempor.', '1613043644825936294.jpg', '<div><p>Lorem ipsum dolor sit amet, consectetur\r\n adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore \r\nmagna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco\r\n laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor \r\nin reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla \r\npariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa \r\nqui officia deserunt mollit anim id est laborum. Sed ut perspiciatis \r\nunde omnis iste natus error sit voluptatem accusantium doloremque \r\nlaudantium, totam rem aperiam, eaque ipsa quae ab illo inventore \r\nveritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo \r\nenim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, \r\nsed quia consequuntur magni dolores eos qui ratione voluptatem sequi \r\nnesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit \r\namet, consectetur, adipisci velit, sed quia non numquam eius modi \r\ntempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\r\n                                    <p>Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud\r\n exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia deserunt.</p>\r\n                                    \r\n                                </div>\r\n\r\n<div><br>Setting the mood with incense\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    A cleansing hot shower or bath\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    Setting the mood with incense\r\n                                    <ul>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li></ul></div>', 1, 'html,css,js', 'Duis aute irure dolor in repre-henderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia.', 0, '2021-02-11 05:35:56', '2021-02-11 05:41:18'),
(7, 3, 9, 'Magna aliqua. Ut enim ad minim venia m, quis nostrud exercitation ullamco', 'Magna-aliqua.-Ut-enim-ad-minim-venia-m,-quis-nostrud-exercitation-ullamco', '16130436341918352388.jpg', '<div><p>Lorem ipsum dolor sit amet, consectetur\r\n adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore \r\nmagna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco\r\n laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor \r\nin reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla \r\npariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa \r\nqui officia deserunt mollit anim id est laborum. Sed ut perspiciatis \r\nunde omnis iste natus error sit voluptatem accusantium doloremque \r\nlaudantium, totam rem aperiam, eaque ipsa quae ab illo inventore \r\nveritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo \r\nenim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, \r\nsed quia consequuntur magni dolores eos qui ratione voluptatem sequi \r\nnesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit \r\namet, consectetur, adipisci velit, sed quia non numquam eius modi \r\ntempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\r\n                                    <p>Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud\r\n exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia deserunt.</p>\r\n                                    \r\n                                </div>\r\n\r\n<div><br>Setting the mood with incense\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    A cleansing hot shower or bath\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    Setting the mood with incense\r\n                                    <ul>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li></ul></div>', 1, 'html,css,js', 'Duis aute irure dolor in repre-henderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia.', 0, '2021-02-11 05:35:56', '2021-02-11 05:41:33'),
(8, 3, 10, 'Adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.', 'Adipisicing-elit,-sed-do-eiusmod-tempor-incididunt-ut-labore-et-dolore.', '16130436082031699655.jpg', '<div><p>Lorem ipsum dolor sit amet, consectetur\r\n adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore \r\nmagna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco\r\n laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor \r\nin reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla \r\npariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa \r\nqui officia deserunt mollit anim id est laborum. Sed ut perspiciatis \r\nunde omnis iste natus error sit voluptatem accusantium doloremque \r\nlaudantium, totam rem aperiam, eaque ipsa quae ab illo inventore \r\nveritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo \r\nenim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, \r\nsed quia consequuntur magni dolores eos qui ratione voluptatem sequi \r\nnesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit \r\namet, consectetur, adipisci velit, sed quia non numquam eius modi \r\ntempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\r\n                                    <p>Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud\r\n exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia deserunt.</p>\r\n                                    \r\n                                </div>\r\n\r\n<div><br>Setting the mood with incense\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    A cleansing hot shower or bath\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    Setting the mood with incense\r\n                                    <ul>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li></ul></div>', 1, 'html,css,js', 'Duis aute irure dolor in repre-henderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia.', 0, '2021-02-11 05:35:56', '2021-02-11 05:41:24'),
(9, 3, 11, 'Lorem ipsum dolor sit amet, consecte cing elit, sed do eiusmod tempor.', 'Lorem-ipsum-dolor-sit-amet,-consecte-cing-elit,-sed-do-eiusmod-tempor.', '1613043644825936294.jpg', '<div><p>Lorem ipsum dolor sit amet, consectetur\r\n adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore \r\nmagna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco\r\n laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor \r\nin reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla \r\npariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa \r\nqui officia deserunt mollit anim id est laborum. Sed ut perspiciatis \r\nunde omnis iste natus error sit voluptatem accusantium doloremque \r\nlaudantium, totam rem aperiam, eaque ipsa quae ab illo inventore \r\nveritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo \r\nenim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, \r\nsed quia consequuntur magni dolores eos qui ratione voluptatem sequi \r\nnesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit \r\namet, consectetur, adipisci velit, sed quia non numquam eius modi \r\ntempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\r\n                                    <p>Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud\r\n exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia deserunt.</p>\r\n                                    \r\n                                </div>\r\n\r\n<div><br>Setting the mood with incense\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    A cleansing hot shower or bath\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    Setting the mood with incense\r\n                                    <ul>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li></ul></div>', 1, 'html,css,js', 'Duis aute irure dolor in repre-henderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia.', 0, '2021-02-11 05:35:56', '2021-02-11 05:41:18');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `language_id`, `status`, `name`, `image`, `link`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, '1', 1, 'geniusdevs', '16129535581894368474.png', 'https://themeforest.net/user/geniusdevs/portfolio', 0, '2021-02-10 04:39:18', '2021-02-10 05:41:14'),
(2, '1', 1, 'geniusdevs', '16129535851643753715.png', 'https://themeforest.net/user/geniusdevs/portfolio', 0, '2021-02-10 04:39:45', '2021-02-10 05:41:08'),
(3, '1', 1, 'geniusdevs', '16129536061477062131.png', 'https://themeforest.net/user/geniusdevs/portfolio', 0, '2021-02-10 04:40:06', '2021-02-10 05:41:04'),
(4, '1', 1, 'geniusdevs', '16129536221147220531.png', 'https://themeforest.net/user/geniusdevs/portfolio', 0, '2021-02-10 04:40:22', '2021-02-10 05:40:59'),
(5, '1', 1, 'geniusdevs', '1612953650268349824.png', 'https://themeforest.net/user/geniusdevs/portfolio', 0, '2021-02-10 04:40:50', '2021-02-10 05:40:55'),
(6, '1', 1, 'geniusdevs', '1612953665451385670.png', 'https://themeforest.net/user/geniusdevs/portfolio', 0, '2021-02-10 04:41:05', '2021-02-10 05:40:48'),
(7, '2', 1, 'geniusdevs', '16129535581894368474.png', 'https://themeforest.net/user/geniusdevs/portfolio', 0, '2021-02-10 04:39:18', '2021-02-10 05:41:14'),
(8, '2', 1, 'geniusdevs', '16129535851643753715.png', 'https://themeforest.net/user/geniusdevs/portfolio', 0, '2021-02-10 04:39:45', '2021-02-10 05:41:08'),
(9, '2', 1, 'geniusdevs', '16129536061477062131.png', 'https://themeforest.net/user/geniusdevs/portfolio', 0, '2021-02-10 04:40:06', '2021-02-10 05:41:04'),
(10, '2', 1, 'geniusdevs', '16129536221147220531.png', 'https://themeforest.net/user/geniusdevs/portfolio', 0, '2021-02-10 04:40:22', '2021-02-10 05:40:59'),
(11, '2', 1, 'geniusdevs', '1612953650268349824.png', 'https://themeforest.net/user/geniusdevs/portfolio', 0, '2021-02-10 04:40:50', '2021-02-10 05:40:55'),
(12, '2', 1, 'geniusdevs', '1612953665451385670.png', 'https://themeforest.net/user/geniusdevs/portfolio', 0, '2021-02-10 04:41:05', '2021-02-10 05:40:48'),
(13, '3', 1, 'geniusdevs', '16129535581894368474.png', 'https://themeforest.net/user/geniusdevs/portfolio', 0, '2021-02-10 04:39:18', '2021-02-10 05:41:14'),
(14, '3', 1, 'geniusdevs', '16129535851643753715.png', 'https://themeforest.net/user/geniusdevs/portfolio', 0, '2021-02-10 04:39:45', '2021-02-10 05:41:08'),
(15, '3', 1, 'geniusdevs', '16129536061477062131.png', 'https://themeforest.net/user/geniusdevs/portfolio', 0, '2021-02-10 04:40:06', '2021-02-10 05:41:04'),
(16, '3', 1, 'geniusdevs', '16129536221147220531.png', 'https://themeforest.net/user/geniusdevs/portfolio', 0, '2021-02-10 04:40:22', '2021-02-10 05:40:59'),
(17, '3', 1, 'geniusdevs', '1612953650268349824.png', 'https://themeforest.net/user/geniusdevs/portfolio', 0, '2021-02-10 04:40:50', '2021-02-10 05:40:55'),
(18, '3', 1, 'geniusdevs', '1612953665451385670.png', 'https://themeforest.net/user/geniusdevs/portfolio', 0, '2021-02-10 04:41:05', '2021-02-10 05:40:48');

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `language_id`, `status`, `title`, `number`, `icon`, `text`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Projct Complate', 569, 'fal fa-box', 'Sed ut perspiciatis unde omnis iste natus error sit voluptsantium doloremque laudantium', 0, '2021-02-10 03:19:45', '2021-02-12 22:02:20'),
(2, 1, 1, 'Happy Clients', 356, 'fal fa-users', 'Sed ut perspiciatis unde omnis iste natus error sit voluptsantium doloremque laudantium', 0, '2021-02-10 03:20:34', '2021-02-12 22:02:16'),
(3, 1, 1, 'Business Partners', 783, 'fal fa-globe', 'Sed ut perspiciatis unde omnis iste natus error sit voluptsantium doloremque laudantium', 0, '2021-02-10 03:21:11', '2021-02-12 22:02:12'),
(4, 1, 1, 'IT Consultant', 894, 'fal fa-award', 'Sed ut perspiciatis unde omnis iste natus error sit voluptsantium doloremque laudantiu', 0, '2021-02-10 03:21:37', '2021-02-12 22:01:30'),
(5, 2, 1, 'Projct Complate', 569, 'fal fa-box', 'Sed ut perspiciatis unde omnis iste natus error sit voluptsantium doloremque laudantium', 0, '2021-02-10 03:19:45', '2021-02-12 22:02:20'),
(6, 2, 1, 'Happy Clients', 356, 'fal fa-users', 'Sed ut perspiciatis unde omnis iste natus error sit voluptsantium doloremque laudantium', 0, '2021-02-10 03:20:34', '2021-02-12 22:02:16'),
(7, 2, 1, 'Business Partners', 783, 'fal fa-globe', 'Sed ut perspiciatis unde omnis iste natus error sit voluptsantium doloremque laudantium', 0, '2021-02-10 03:21:11', '2021-02-12 22:02:12'),
(8, 2, 1, 'IT Consultant', 894, 'fal fa-award', 'Sed ut perspiciatis unde omnis iste natus error sit voluptsantium doloremque laudantiu', 0, '2021-02-10 03:21:37', '2021-02-12 22:01:30'),
(9, 3, 1, 'Projct Complate', 569, 'fal fa-box', 'Sed ut perspiciatis unde omnis iste natus error sit voluptsantium doloremque laudantium', 0, '2021-02-10 03:19:45', '2021-02-12 22:02:20'),
(10, 3, 1, 'Happy Clients', 356, 'fal fa-users', 'Sed ut perspiciatis unde omnis iste natus error sit voluptsantium doloremque laudantium', 0, '2021-02-10 03:20:34', '2021-02-12 22:02:16'),
(11, 3, 1, 'Business Partners', 783, 'fal fa-globe', 'Sed ut perspiciatis unde omnis iste natus error sit voluptsantium doloremque laudantium', 0, '2021-02-10 03:21:11', '2021-02-12 22:02:12'),
(12, 3, 1, 'IT Consultant', 894, 'fal fa-award', 'Sed ut perspiciatis unde omnis iste natus error sit voluptsantium doloremque laudantiu', 0, '2021-02-10 03:21:37', '2021-02-12 22:01:30');

-- --------------------------------------------------------

--
-- Table structure for table `daynamicpages`
--

CREATE TABLE `daynamicpages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` blob DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `daynamicpages`
--

INSERT INTO `daynamicpages` (`id`, `language_id`, `name`, `title`, `subtitle`, `slug`, `body`, `status`, `serial_number`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Trams & Conditions', 'Trams', 'Trams-&-Conditions', 0x3c73656374696f6e20636c6173733d22707269766163792d61726561223e0d0a20202020202020203c64697620636c6173733d22636f6e7461696e6572223e0d0a2020202020202020202020203c64697620636c6173733d22726f77223e0d0a202020202020202020202020202020203c64697620636c6173733d22636f6c2d6c672d3132223e0d0a20202020202020202020202020202020202020203c64697620636c6173733d22636f6e74656e742d626f78206d622d3530223e0d0a2020202020202020202020202020202020202020202020203c68323e5472616d732026616d703b20436f6e646974696f6e733c2f68323e0d0a2020202020202020202020202020202020202020202020203c703e546865726520617265206d616e7920766172696174696f6e73206f66207061737361676573206f66200d0a4c6f72656d20497073756d20617661696c61626c652c2062757420746865206d616a6f72697479206861766520737566666572656420616c7465726174696f6e20696e20736f6d650d0a20666f726d2c20627920696e6a65637465642068756d6f75722c206f722072616e646f6d6973656420776f72647320776869636820646f6e2774206c6f6f6b206576656e200d0a736c696768746c792062656c69657661626c652e20496620796f752061726520676f696e6720746f2075736520612070617373616765206f6620546865726520617265206d616e790d0a20766172696174696f6e73206f66207061737361676573206f66204c6f72656d20497073756d20617661696c61626c652c2062757420746865206d616a6f726974792068617665200d0a737566666572656420616c7465726174696f6e20696e20736f6d6520666f726d2c20627920696e6a65637465642068756d6f75722c206f722072616e646f6d69736564200d0a776f72647320776869636820646f6e2774206c6f6f6b206576656e20736c696768746c792062656c69657661626c652e20496620796f752061726520676f696e6720746f207573650d0a20612070617373616765206f6620546865726520617265206d616e7920766172696174696f6e732e3c2f703e0d0a2020202020202020202020202020202020202020202020203c7370616e20636c6173733d2264617465223e55706461746564204a616e7561727920362c20323032303c2f7370616e3e0d0a2020202020202020202020202020202020202020202020203c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572200d0a61646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c200d0a73757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d692061756775652c20757420736f64616c65732066656c69730d0a2072686f6e63757320626962656e64756d2e204675736365207361676974746973206e696268206f7263692c20696420766573746962756c756d20746f72746f72200d0a616c69717565742075742e20566976616d7573206d6178696d75732066656c6973206163206e69736c206c75637475732e204c6f72656d20697073756d20646f6c6f7220736974200d0a616d65742c20636f6e73656374657475722061646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e64697373652076697461650d0a206578206665726d656e74756d2c2073757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d692061756775652c200d0a757420736f64616c65732066656c69732072686f6e63757320626962656e64756d2e204675736365207361676974746973206e696268206f7263692c206964200d0a766573746962756c756d20746f72746f7220616c69717565742075742e20566976616d7573206d6178696d75732066656c6973206163206e69736c206c75637475732e3c2f703e0d0a2020202020202020202020202020202020202020202020203c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572200d0a61646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c200d0a73757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d69206175677565204c6f72656d20697073756d20646f6c6f720d0a2073697420616d65742c20636f6e73656374657475722061646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365200d0a7669746165206578206665726d656e74756d2c2073757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d69200d0a61756775652e3c2f703e0d0a20202020202020202020202020202020202020203c2f6469763e0d0a20202020202020202020202020202020202020203c64697620636c6173733d22636f6e74656e742d626f78206d622d3530223e0d0a2020202020202020202020202020202020202020202020203c68323e4f766572766965773c2f68323e0d0a2020202020202020202020202020202020202020202020203c703e546865726520617265206d616e7920766172696174696f6e73206f66207061737361676573206f66200d0a4c6f72656d20497073756d20617661696c61626c652c2062757420746865206d616a6f72697479206861766520737566666572656420616c7465726174696f6e20696e20736f6d650d0a20666f726d2c20627920696e6a65637465642068756d6f75722c206f722072616e646f6d6973656420776f72647320776869636820646f6e2774206c6f6f6b206576656e200d0a736c696768746c792062656c69657661626c652e20496620796f752061726520676f696e6720746f2075736520612070617373616765206f6620546865726520617265206d616e790d0a20766172696174696f6e73206f66207061737361676573206f66204c6f72656d20497073756d20617661696c61626c652c2062757420746865206d616a6f726974792068617665200d0a737566666572656420616c7465726174696f6e20696e20736f6d6520666f726d2c20627920696e6a65637465642068756d6f75722e3c2f703e0d0a20202020202020202020202020202020202020203c2f6469763e0d0a20202020202020202020202020202020202020203c64697620636c6173733d22636f6e74656e742d626f78206d622d3530223e0d0a2020202020202020202020202020202020202020202020203c68343e546865207374616e64617264206368756e6b206f66204c6f72656d20497073756d20757365642073696e63652074686520313530307320697320726570726f64756365642062656c6f7720666f722074686f736520696e74657265737465642e3c2f68343e0d0a2020202020202020202020202020202020202020202020203c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572200d0a61646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c200d0a73757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d692061756775652c20757420736f64616c65732066656c69730d0a2072686f6e63757320626962656e64756d2e204675736365207361676974746973206e696268206f7263692c20696420766573746962756c756d20746f72746f72200d0a616c69717565742075742e20566976616d7573206d6178696d75732066656c6973206163206e69736c206c75637475732c20757420616c6971756574206d61737361200d0a73757363697069742e20536564207363656c65726973717565207175616d206a7573746f2c2073656420766f6c7574706174206e657175652074656d706f7220706f7274612e200d0a496e74657264756d206574206d616c6573756164612066616d657320616320616e746520697073756d207072696d697320696e2066617563696275732e20416c697175616d200d0a636f6e7365717561742074656c6c757320696420726973757320636f6e64696d656e74756d206672696e67696c6c612e20457469616d206d6178696d757320706f72747469746f720d0a206d61676e612073697420616d657420636f6e73656374657475722e20496e7465676572206567657420616e7465207363656c6572697371756520746f72746f72200d0a736f64616c657320616c69717565742e20496e746567657220696e20766573746962756c756d206c656f2c20766974616520747269737469717565206f7263692e20457469616d200d0a746f72746f722073656d2c20706f72747469746f722061742070656c6c656e7465737175652073697420616d65742c206672696e67696c6c61206e6563206d617373612e200d0a4e756e63206e6563206d61676e6120736564206d6574757320747269737469717565206f726e617265207669746165207574206e69736c2e204d6175726973206c61637573200d0a656e696d2c20706f73756572652065742074696e636964756e7420636f6e64696d656e74756d2c20736f64616c657320616320656c69742e3c2f703e0d0a2020202020202020202020202020202020202020202020203c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572200d0a61646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c200d0a73757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d692061756775652c20757420736f64616c65732066656c69730d0a2072686f6e63757320626962656e64756d2e204675736365207361676974746973206e696268206f7263692c20696420766573746962756c756d20746f72746f72200d0a616c69717565742075742e3c2f703e0d0a2020202020202020202020202020202020202020202020203c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572200d0a61646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c200d0a73757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d692061756775652c20757420736f64616c65732066656c69730d0a2072686f6e63757320626962656e64756d2e204675736365207361676974746973206e696268206f7263692c20696420766573746962756c756d20746f72746f72200d0a616c69717565742075742e20566976616d7573206d6178696d75732066656c6973206163206e69736c206c75637475732c20757420616c6971756574206d61737361200d0a73757363697069742e20536564207363656c65726973717565207175616d206a7573746f2c2073656420766f6c7574706174206e657175652074656d706f7220706f7274612e200d0a496e74657264756d206574206d616c6573756164612066616d657320616320616e746520697073756d207072696d697320696e2066617563696275732e20416c697175616d200d0a636f6e7365717561742074656c6c757320696420726973757320636f6e64696d656e74756d206672696e67696c6c612e20457469616d206d6178696d757320706f72747469746f720d0a206d61676e612073697420616d657420636f6e73656374657475722e20496e7465676572206567657420616e7465207363656c6572697371756520746f72746f72200d0a736f64616c657320616c69717565742e20496e746567657220696e20766573746962756c756d206c656f2c20766974616520747269737469717565206f7263692e20457469616d200d0a746f72746f723c2f703e0d0a20202020202020202020202020202020202020203c2f6469763e0d0a20202020202020202020202020202020202020203c64697620636c6173733d22636f6e74656e742d626f78206d622d3530223e0d0a2020202020202020202020202020202020202020202020203c68343e546865207374616e64617264206368756e6b206f66204c6f72656d20497073756d20757365642073696e63652074686520313530307320697320726570726f64756365642062656c6f7720666f722074686f736520696e74657265737465642e3c2f68343e0d0a2020202020202020202020202020202020202020202020203c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572200d0a61646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c200d0a73757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d692061756775652c20757420736f64616c65732066656c69730d0a2072686f6e63757320626962656e64756d2e204675736365207361676974746973206e696268206f7263692c20696420766573746962756c756d20746f72746f72200d0a616c69717565742075742e20566976616d7573206d6178696d75732066656c6973206163206e69736c206c75637475732c20757420616c6971756574206d61737361200d0a73757363697069742e20536564207363656c65726973717565207175616d206a7573746f2c2073656420766f6c7574706174206e657175652074656d706f7220706f7274612e200d0a496e74657264756d206574206d616c6573756164612066616d657320616320616e746520697073756d207072696d697320696e2066617563696275732e20416c697175616d200d0a636f6e7365717561742074656c6c757320696420726973757320636f6e64696d656e74756d206672696e67696c6c612e20457469616d206d6178696d757320706f72747469746f720d0a206d61676e612073697420616d657420636f6e73656374657475722e20496e7465676572206567657420616e7465207363656c6572697371756520746f72746f72200d0a736f64616c657320616c69717565742e20496e746567657220696e20766573746962756c756d206c656f2c20766974616520747269737469717565206f7263692e20457469616d200d0a746f72746f722073656d2c20706f72747469746f722061742070656c6c656e7465737175652073697420616d65742c206672696e67696c6c61206e6563206d617373612e200d0a4e756e63206e6563206d61676e6120736564206d6574757320747269737469717565206f726e617265207669746165207574206e69736c2e204d6175726973206c61637573200d0a656e696d2c20706f73756572652065742074696e636964756e7420636f6e64696d656e74756d2c20736f64616c657320616320656c69742e3c2f703e0d0a2020202020202020202020202020202020202020202020203c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572200d0a61646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c200d0a73757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d692061756775652c20757420736f64616c65732066656c69730d0a2072686f6e63757320626962656e64756d2e204675736365207361676974746973206e696268206f7263692c20696420766573746962756c756d20746f72746f72200d0a616c69717565742075742e3c2f703e0d0a2020202020202020202020202020202020202020202020203c756c20636c6173733d226c697374223e0d0a202020202020202020202020202020202020202020202020202020203c6c693e52616e646f6d6973656420776f72647320776869636820646f6e2774206c6f6f6b206576656e20736c696768746c792062656c69657661626c652e3c2f6c693e0d0a202020202020202020202020202020202020202020202020202020203c6c693e42792070726f766964696e6720706572736f6e616c20696e666f726d6174696f6e20746f20757320616e642062792072657461696e696e6720757320746f2070726f7669646520796f752077697468207468652053657276696365732e3c2f6c693e0d0a202020202020202020202020202020202020202020202020202020203c6c693e566f6c756e746172696c7920636f6e73656e7420746f2074686520636f6c6c656374696f6e2c2075736520616e6420646973636c6f73757265206f66207375636820706572736f6e616c20696e666f726d6174696f6e2061732073706563696669656420696e2074686973205072697661637920506f6c6963792e3c2f6c693e0d0a202020202020202020202020202020202020202020202020202020203c6c693e546865206c6567616c20626173657320666f72206f75722070726f63657373696e67206f66200d0a706572736f6e616c20696e666f726d6174696f6e20617265207072696d6172696c792074686174207468652070726f63657373696e67206973206e656365737361727920666f72200d0a70726f766964696e672074686520536572766963657320616e642074686174207468652070726f63657373696e672069732063617272696564206f757420696e206f7572200d0a6c65676974696d61746520696e746572657374732c207768696368206172652066757274686572206578706c61696e65642062656c6f772e3c2f6c693e0d0a202020202020202020202020202020202020202020202020202020203c6c693e576974686f7574206c696d6974696e672074686520666f7265676f696e672c207765206d6179206f6e206f63636173696f6e2061736b20796f7520746f20636f6e73656e74207768656e20776520636f6c6c6563742e3c2f6c693e0d0a2020202020202020202020202020202020202020202020203c2f756c3e0d0a20202020202020202020202020202020202020203c2f6469763e0d0a20202020202020202020202020202020202020203c64697620636c6173733d22636f6e74656e742d626f78206d622d3530223e0d0a2020202020202020202020202020202020202020202020203c68343e546865207374616e64617264206368756e6b206f66204c6f72656d20497073756d20757365642073696e63652074686520313530307320697320726570726f64756365642062656c6f7720666f722074686f736520696e74657265737465642e3c2f68343e0d0a2020202020202020202020202020202020202020202020203c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572200d0a61646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c200d0a73757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d692061756775652c20757420736f64616c65732066656c69730d0a2072686f6e63757320626962656e64756d2e204675736365207361676974746973206e696268206f7263692c20696420766573746962756c756d20746f72746f72200d0a616c69717565742075742e20566976616d7573206d6178696d75732066656c6973206163206e69736c206c75637475732c20757420616c6971756574206d61737361200d0a73757363697069742e20536564207363656c65726973717565207175616d206a7573746f2c2073656420766f6c7574706174206e657175652074656d706f7220706f7274612e200d0a496e74657264756d206574206d616c6573756164612066616d657320616320616e746520697073756d207072696d697320696e2066617563696275732e20416c697175616d200d0a636f6e7365717561742074656c6c757320696420726973757320636f6e64696d656e74756d206672696e67696c6c612e20457469616d206d6178696d757320706f72747469746f720d0a206d61676e612073697420616d657420636f6e73656374657475722e20496e7465676572206567657420616e7465207363656c6572697371756520746f72746f72200d0a736f64616c657320616c69717565742e20496e746567657220696e20766573746962756c756d206c656f2c20766974616520747269737469717565206f7263692e20457469616d200d0a746f72746f722073656d2c20706f72747469746f722061742070656c6c656e7465737175652073697420616d65742c206672696e67696c6c61206e6563206d617373612e200d0a4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e73656374657475722061646970697363696e6720656c69742e204e616d206174206e69736c200d0a6c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c2073757363697069742073656d2069642c2064617069627573206f7263692e3c2f703e0d0a20202020202020202020202020202020202020203c2f6469763e0d0a20202020202020202020202020202020202020203c64697620636c6173733d22636f6e74656e742d626f78206d622d3530223e0d0a2020202020202020202020202020202020202020202020203c68323e536563757269747920616e6420526574656e74696f6e3c2f68323e0d0a2020202020202020202020202020202020202020202020203c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572200d0a61646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c200d0a73757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d692061756775652c20757420736f64616c65732066656c69730d0a2072686f6e63757320626962656e64756d2e204675736365207361676974746973206e696268206f7263692c20696420766573746962756c756d20746f72746f72200d0a616c69717565742075742e20566976616d7573206d6178696d75732066656c6973206163206e69736c206c75637475732c20757420616c6971756574206d61737361200d0a73757363697069742e20536564207363656c65726973717565207175616d206a7573746f2c2073656420766f6c7574706174206e657175652074656d706f7220706f7274612e200d0a496e74657264756d206574206d616c6573756164612066616d657320616320616e746520697073756d207072696d697320696e2066617563696275732e20416c697175616d200d0a636f6e7365717561742074656c6c757320696420726973757320636f6e64696d656e74756d206672696e67696c6c612e3c2f703e0d0a20202020202020202020202020202020202020203c2f6469763e0d0a20202020202020202020202020202020202020203c64697620636c6173733d22636f6e74656e742d626f78206d622d3530223e0d0a2020202020202020202020202020202020202020202020203c68323e436f6e746163742055733c2f68323e0d0a2020202020202020202020202020202020202020202020203c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572200d0a61646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c200d0a73757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d692061756775652c20757420736f64616c65732066656c69730d0a2072686f6e63757320626962656e64756d2e204675736365207361676974746973206e696268206f7263692c20696420766573746962756c756d20746f72746f72200d0a616c69717565742075742e20566976616d7573206d6178696d75732066656c6973206163206e69736c206c75637475732c20757420616c6971756574206d61737361200d0a73757363697069742e20536564207363656c65726973717565207175616d206a7573746f2c2073656420766f6c7574706174206e657175652074656d706f7220706f7274612e200d0a496e74657264756d206574206d616c6573756164612066616d657320616320616e746520697073756d207072696d697320696e2066617563696275732e20416c697175616d200d0a636f6e7365717561742074656c6c757320696420726973757320636f6e64696d656e74756d206672696e67696c6c612e204c6f72656d20697073756d20646f6c6f7220736974200d0a616d65742c20636f6e73656374657475722061646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e3c2f703e0d0a20202020202020202020202020202020202020203c2f6469763e0d0a202020202020202020202020202020203c2f6469763e0d0a2020202020202020202020203c2f6469763e0d0a20202020202020203c2f6469763e3c2f73656374696f6e3e, 1, 0, 'html,css,js', '1914 translation by H. Rackham \"On the other hand, we denounce with righteous indignation and dislike men', '2021-02-17 06:54:16', '2021-02-17 07:52:57'),
(2, 1, NULL, 'Privecy & Policy', 'Policy', 'Privecy-&-Policy', 0x3c73656374696f6e20636c6173733d22707269766163792d61726561223e0d0a20202020202020203c64697620636c6173733d22636f6e7461696e6572223e0d0a2020202020202020202020203c64697620636c6173733d22726f77223e0d0a202020202020202020202020202020203c64697620636c6173733d22636f6c2d6c672d3132223e0d0a20202020202020202020202020202020202020203c64697620636c6173733d22636f6e74656e742d626f78206d622d3530223e0d0a2020202020202020202020202020202020202020202020203c68323e5072697661637920506f6c6963793c2f68323e0d0a2020202020202020202020202020202020202020202020203c703e546865726520617265206d616e7920766172696174696f6e73206f66207061737361676573206f66200d0a4c6f72656d20497073756d20617661696c61626c652c2062757420746865206d616a6f72697479206861766520737566666572656420616c7465726174696f6e20696e20736f6d650d0a20666f726d2c20627920696e6a65637465642068756d6f75722c206f722072616e646f6d6973656420776f72647320776869636820646f6e2774206c6f6f6b206576656e200d0a736c696768746c792062656c69657661626c652e20496620796f752061726520676f696e6720746f2075736520612070617373616765206f6620546865726520617265206d616e790d0a20766172696174696f6e73206f66207061737361676573206f66204c6f72656d20497073756d20617661696c61626c652c2062757420746865206d616a6f726974792068617665200d0a737566666572656420616c7465726174696f6e20696e20736f6d6520666f726d2c20627920696e6a65637465642068756d6f75722c206f722072616e646f6d69736564200d0a776f72647320776869636820646f6e2774206c6f6f6b206576656e20736c696768746c792062656c69657661626c652e20496620796f752061726520676f696e6720746f207573650d0a20612070617373616765206f6620546865726520617265206d616e7920766172696174696f6e732e3c2f703e0d0a2020202020202020202020202020202020202020202020203c7370616e20636c6173733d2264617465223e55706461746564204a616e7561727920362c20323032303c2f7370616e3e0d0a2020202020202020202020202020202020202020202020203c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572200d0a61646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c200d0a73757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d692061756775652c20757420736f64616c65732066656c69730d0a2072686f6e63757320626962656e64756d2e204675736365207361676974746973206e696268206f7263692c20696420766573746962756c756d20746f72746f72200d0a616c69717565742075742e20566976616d7573206d6178696d75732066656c6973206163206e69736c206c75637475732e204c6f72656d20697073756d20646f6c6f7220736974200d0a616d65742c20636f6e73656374657475722061646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e64697373652076697461650d0a206578206665726d656e74756d2c2073757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d692061756775652c200d0a757420736f64616c65732066656c69732072686f6e63757320626962656e64756d2e204675736365207361676974746973206e696268206f7263692c206964200d0a766573746962756c756d20746f72746f7220616c69717565742075742e20566976616d7573206d6178696d75732066656c6973206163206e69736c206c75637475732e3c2f703e0d0a2020202020202020202020202020202020202020202020203c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572200d0a61646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c200d0a73757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d69206175677565204c6f72656d20697073756d20646f6c6f720d0a2073697420616d65742c20636f6e73656374657475722061646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365200d0a7669746165206578206665726d656e74756d2c2073757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d69200d0a61756775652e3c2f703e0d0a20202020202020202020202020202020202020203c2f6469763e0d0a20202020202020202020202020202020202020203c64697620636c6173733d22636f6e74656e742d626f78206d622d3530223e0d0a2020202020202020202020202020202020202020202020203c68323e4f766572766965773c2f68323e0d0a2020202020202020202020202020202020202020202020203c703e546865726520617265206d616e7920766172696174696f6e73206f66207061737361676573206f66200d0a4c6f72656d20497073756d20617661696c61626c652c2062757420746865206d616a6f72697479206861766520737566666572656420616c7465726174696f6e20696e20736f6d650d0a20666f726d2c20627920696e6a65637465642068756d6f75722c206f722072616e646f6d6973656420776f72647320776869636820646f6e2774206c6f6f6b206576656e200d0a736c696768746c792062656c69657661626c652e20496620796f752061726520676f696e6720746f2075736520612070617373616765206f6620546865726520617265206d616e790d0a20766172696174696f6e73206f66207061737361676573206f66204c6f72656d20497073756d20617661696c61626c652c2062757420746865206d616a6f726974792068617665200d0a737566666572656420616c7465726174696f6e20696e20736f6d6520666f726d2c20627920696e6a65637465642068756d6f75722e3c2f703e0d0a20202020202020202020202020202020202020203c2f6469763e0d0a20202020202020202020202020202020202020203c64697620636c6173733d22636f6e74656e742d626f78206d622d3530223e0d0a2020202020202020202020202020202020202020202020203c68343e546865207374616e64617264206368756e6b206f66204c6f72656d20497073756d20757365642073696e63652074686520313530307320697320726570726f64756365642062656c6f7720666f722074686f736520696e74657265737465642e3c2f68343e0d0a2020202020202020202020202020202020202020202020203c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572200d0a61646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c200d0a73757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d692061756775652c20757420736f64616c65732066656c69730d0a2072686f6e63757320626962656e64756d2e204675736365207361676974746973206e696268206f7263692c20696420766573746962756c756d20746f72746f72200d0a616c69717565742075742e20566976616d7573206d6178696d75732066656c6973206163206e69736c206c75637475732c20757420616c6971756574206d61737361200d0a73757363697069742e20536564207363656c65726973717565207175616d206a7573746f2c2073656420766f6c7574706174206e657175652074656d706f7220706f7274612e200d0a496e74657264756d206574206d616c6573756164612066616d657320616320616e746520697073756d207072696d697320696e2066617563696275732e20416c697175616d200d0a636f6e7365717561742074656c6c757320696420726973757320636f6e64696d656e74756d206672696e67696c6c612e20457469616d206d6178696d757320706f72747469746f720d0a206d61676e612073697420616d657420636f6e73656374657475722e20496e7465676572206567657420616e7465207363656c6572697371756520746f72746f72200d0a736f64616c657320616c69717565742e20496e746567657220696e20766573746962756c756d206c656f2c20766974616520747269737469717565206f7263692e20457469616d200d0a746f72746f722073656d2c20706f72747469746f722061742070656c6c656e7465737175652073697420616d65742c206672696e67696c6c61206e6563206d617373612e200d0a4e756e63206e6563206d61676e6120736564206d6574757320747269737469717565206f726e617265207669746165207574206e69736c2e204d6175726973206c61637573200d0a656e696d2c20706f73756572652065742074696e636964756e7420636f6e64696d656e74756d2c20736f64616c657320616320656c69742e3c2f703e0d0a2020202020202020202020202020202020202020202020203c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572200d0a61646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c200d0a73757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d692061756775652c20757420736f64616c65732066656c69730d0a2072686f6e63757320626962656e64756d2e204675736365207361676974746973206e696268206f7263692c20696420766573746962756c756d20746f72746f72200d0a616c69717565742075742e3c2f703e0d0a2020202020202020202020202020202020202020202020203c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572200d0a61646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c200d0a73757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d692061756775652c20757420736f64616c65732066656c69730d0a2072686f6e63757320626962656e64756d2e204675736365207361676974746973206e696268206f7263692c20696420766573746962756c756d20746f72746f72200d0a616c69717565742075742e20566976616d7573206d6178696d75732066656c6973206163206e69736c206c75637475732c20757420616c6971756574206d61737361200d0a73757363697069742e20536564207363656c65726973717565207175616d206a7573746f2c2073656420766f6c7574706174206e657175652074656d706f7220706f7274612e200d0a496e74657264756d206574206d616c6573756164612066616d657320616320616e746520697073756d207072696d697320696e2066617563696275732e20416c697175616d200d0a636f6e7365717561742074656c6c757320696420726973757320636f6e64696d656e74756d206672696e67696c6c612e20457469616d206d6178696d757320706f72747469746f720d0a206d61676e612073697420616d657420636f6e73656374657475722e20496e7465676572206567657420616e7465207363656c6572697371756520746f72746f72200d0a736f64616c657320616c69717565742e20496e746567657220696e20766573746962756c756d206c656f2c20766974616520747269737469717565206f7263692e20457469616d200d0a746f72746f723c2f703e0d0a20202020202020202020202020202020202020203c2f6469763e0d0a20202020202020202020202020202020202020203c64697620636c6173733d22636f6e74656e742d626f78206d622d3530223e0d0a2020202020202020202020202020202020202020202020203c68343e546865207374616e64617264206368756e6b206f66204c6f72656d20497073756d20757365642073696e63652074686520313530307320697320726570726f64756365642062656c6f7720666f722074686f736520696e74657265737465642e3c2f68343e0d0a2020202020202020202020202020202020202020202020203c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572200d0a61646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c200d0a73757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d692061756775652c20757420736f64616c65732066656c69730d0a2072686f6e63757320626962656e64756d2e204675736365207361676974746973206e696268206f7263692c20696420766573746962756c756d20746f72746f72200d0a616c69717565742075742e20566976616d7573206d6178696d75732066656c6973206163206e69736c206c75637475732c20757420616c6971756574206d61737361200d0a73757363697069742e20536564207363656c65726973717565207175616d206a7573746f2c2073656420766f6c7574706174206e657175652074656d706f7220706f7274612e200d0a496e74657264756d206574206d616c6573756164612066616d657320616320616e746520697073756d207072696d697320696e2066617563696275732e20416c697175616d200d0a636f6e7365717561742074656c6c757320696420726973757320636f6e64696d656e74756d206672696e67696c6c612e20457469616d206d6178696d757320706f72747469746f720d0a206d61676e612073697420616d657420636f6e73656374657475722e20496e7465676572206567657420616e7465207363656c6572697371756520746f72746f72200d0a736f64616c657320616c69717565742e20496e746567657220696e20766573746962756c756d206c656f2c20766974616520747269737469717565206f7263692e20457469616d200d0a746f72746f722073656d2c20706f72747469746f722061742070656c6c656e7465737175652073697420616d65742c206672696e67696c6c61206e6563206d617373612e200d0a4e756e63206e6563206d61676e6120736564206d6574757320747269737469717565206f726e617265207669746165207574206e69736c2e204d6175726973206c61637573200d0a656e696d2c20706f73756572652065742074696e636964756e7420636f6e64696d656e74756d2c20736f64616c657320616320656c69742e3c2f703e0d0a2020202020202020202020202020202020202020202020203c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572200d0a61646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c200d0a73757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d692061756775652c20757420736f64616c65732066656c69730d0a2072686f6e63757320626962656e64756d2e204675736365207361676974746973206e696268206f7263692c20696420766573746962756c756d20746f72746f72200d0a616c69717565742075742e3c2f703e0d0a2020202020202020202020202020202020202020202020203c756c20636c6173733d226c697374223e0d0a202020202020202020202020202020202020202020202020202020203c6c693e52616e646f6d6973656420776f72647320776869636820646f6e2774206c6f6f6b206576656e20736c696768746c792062656c69657661626c652e3c2f6c693e0d0a202020202020202020202020202020202020202020202020202020203c6c693e42792070726f766964696e6720706572736f6e616c20696e666f726d6174696f6e20746f20757320616e642062792072657461696e696e6720757320746f2070726f7669646520796f752077697468207468652053657276696365732e3c2f6c693e0d0a202020202020202020202020202020202020202020202020202020203c6c693e566f6c756e746172696c7920636f6e73656e7420746f2074686520636f6c6c656374696f6e2c2075736520616e6420646973636c6f73757265206f66207375636820706572736f6e616c20696e666f726d6174696f6e2061732073706563696669656420696e2074686973205072697661637920506f6c6963792e3c2f6c693e0d0a202020202020202020202020202020202020202020202020202020203c6c693e546865206c6567616c20626173657320666f72206f75722070726f63657373696e67206f66200d0a706572736f6e616c20696e666f726d6174696f6e20617265207072696d6172696c792074686174207468652070726f63657373696e67206973206e656365737361727920666f72200d0a70726f766964696e672074686520536572766963657320616e642074686174207468652070726f63657373696e672069732063617272696564206f757420696e206f7572200d0a6c65676974696d61746520696e746572657374732c207768696368206172652066757274686572206578706c61696e65642062656c6f772e3c2f6c693e0d0a202020202020202020202020202020202020202020202020202020203c6c693e576974686f7574206c696d6974696e672074686520666f7265676f696e672c207765206d6179206f6e206f63636173696f6e2061736b20796f7520746f20636f6e73656e74207768656e20776520636f6c6c6563742e3c2f6c693e0d0a2020202020202020202020202020202020202020202020203c2f756c3e0d0a20202020202020202020202020202020202020203c2f6469763e0d0a20202020202020202020202020202020202020203c64697620636c6173733d22636f6e74656e742d626f78206d622d3530223e0d0a2020202020202020202020202020202020202020202020203c68343e546865207374616e64617264206368756e6b206f66204c6f72656d20497073756d20757365642073696e63652074686520313530307320697320726570726f64756365642062656c6f7720666f722074686f736520696e74657265737465642e3c2f68343e0d0a2020202020202020202020202020202020202020202020203c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572200d0a61646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c200d0a73757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d692061756775652c20757420736f64616c65732066656c69730d0a2072686f6e63757320626962656e64756d2e204675736365207361676974746973206e696268206f7263692c20696420766573746962756c756d20746f72746f72200d0a616c69717565742075742e20566976616d7573206d6178696d75732066656c6973206163206e69736c206c75637475732c20757420616c6971756574206d61737361200d0a73757363697069742e20536564207363656c65726973717565207175616d206a7573746f2c2073656420766f6c7574706174206e657175652074656d706f7220706f7274612e200d0a496e74657264756d206574206d616c6573756164612066616d657320616320616e746520697073756d207072696d697320696e2066617563696275732e20416c697175616d200d0a636f6e7365717561742074656c6c757320696420726973757320636f6e64696d656e74756d206672696e67696c6c612e20457469616d206d6178696d757320706f72747469746f720d0a206d61676e612073697420616d657420636f6e73656374657475722e20496e7465676572206567657420616e7465207363656c6572697371756520746f72746f72200d0a736f64616c657320616c69717565742e20496e746567657220696e20766573746962756c756d206c656f2c20766974616520747269737469717565206f7263692e20457469616d200d0a746f72746f722073656d2c20706f72747469746f722061742070656c6c656e7465737175652073697420616d65742c206672696e67696c6c61206e6563206d617373612e200d0a4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e73656374657475722061646970697363696e6720656c69742e204e616d206174206e69736c200d0a6c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c2073757363697069742073656d2069642c2064617069627573206f7263692e3c2f703e0d0a20202020202020202020202020202020202020203c2f6469763e0d0a20202020202020202020202020202020202020203c64697620636c6173733d22636f6e74656e742d626f78206d622d3530223e0d0a2020202020202020202020202020202020202020202020203c68323e536563757269747920616e6420526574656e74696f6e3c2f68323e0d0a2020202020202020202020202020202020202020202020203c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572200d0a61646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c200d0a73757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d692061756775652c20757420736f64616c65732066656c69730d0a2072686f6e63757320626962656e64756d2e204675736365207361676974746973206e696268206f7263692c20696420766573746962756c756d20746f72746f72200d0a616c69717565742075742e20566976616d7573206d6178696d75732066656c6973206163206e69736c206c75637475732c20757420616c6971756574206d61737361200d0a73757363697069742e20536564207363656c65726973717565207175616d206a7573746f2c2073656420766f6c7574706174206e657175652074656d706f7220706f7274612e200d0a496e74657264756d206574206d616c6573756164612066616d657320616320616e746520697073756d207072696d697320696e2066617563696275732e20416c697175616d200d0a636f6e7365717561742074656c6c757320696420726973757320636f6e64696d656e74756d206672696e67696c6c612e3c2f703e0d0a20202020202020202020202020202020202020203c2f6469763e0d0a20202020202020202020202020202020202020203c64697620636c6173733d22636f6e74656e742d626f78206d622d3530223e0d0a2020202020202020202020202020202020202020202020203c68323e436f6e746163742055733c2f68323e0d0a2020202020202020202020202020202020202020202020203c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572200d0a61646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c200d0a73757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d692061756775652c20757420736f64616c65732066656c69730d0a2072686f6e63757320626962656e64756d2e204675736365207361676974746973206e696268206f7263692c20696420766573746962756c756d20746f72746f72200d0a616c69717565742075742e20566976616d7573206d6178696d75732066656c6973206163206e69736c206c75637475732c20757420616c6971756574206d61737361200d0a73757363697069742e20536564207363656c65726973717565207175616d206a7573746f2c2073656420766f6c7574706174206e657175652074656d706f7220706f7274612e200d0a496e74657264756d206574206d616c6573756164612066616d657320616320616e746520697073756d207072696d697320696e2066617563696275732e20416c697175616d200d0a636f6e7365717561742074656c6c757320696420726973757320636f6e64696d656e74756d206672696e67696c6c612e204c6f72656d20697073756d20646f6c6f7220736974200d0a616d65742c20636f6e73656374657475722061646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e3c2f703e0d0a20202020202020202020202020202020202020203c2f6469763e0d0a202020202020202020202020202020203c2f6469763e0d0a2020202020202020202020203c2f6469763e0d0a20202020202020203c2f6469763e3c2f73656374696f6e3e, 1, 0, 'html,css', 'perspiciatis unde omnis iste natus error sit voluptatem accusantium', '2021-02-17 06:55:45', '2021-02-17 07:53:17'),
(3, 2, NULL, 'Trams & Conditions', 'Trams', 'Trams-&-Conditions', NULL, 1, 0, 'html,css,js', '1914 translation by H. Rackham \"On the other hand, we denounce with righteous indignation and dislike men', '2021-02-17 06:54:16', '2021-02-17 07:52:57'),
(4, 2, NULL, 'Privecy & Policy', 'Policy', 'Privecy-&-Policy', NULL, 1, 0, 'html,css', 'perspiciatis unde omnis iste natus error sit voluptatem accusantium', '2021-02-17 06:55:45', '2021-02-17 07:53:17'),
(5, 3, NULL, 'Trams & Conditions', 'Trams', 'Trams-&-Conditions', NULL, 1, 0, 'html,css,js', '1914 translation by H. Rackham \"On the other hand, we denounce with righteous indignation and dislike men', '2021-02-17 06:54:16', '2021-02-17 07:52:57'),
(6, 3, NULL, 'Privecy & Policy', 'Policy', 'Privecy-&-Policy', NULL, 1, 0, 'html,css', 'perspiciatis unde omnis iste natus error sit voluptatem accusantium', '2021-02-17 06:55:45', '2021-02-17 07:53:17');

-- --------------------------------------------------------

--
-- Table structure for table `emailsettings`
--

CREATE TABLE `emailsettings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_smtp` int(11) DEFAULT NULL,
  `header_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_encryption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_pass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verification_email` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `emailsettings`
--

INSERT INTO `emailsettings` (`id`, `is_smtp`, `header_email`, `smtp_host`, `smtp_port`, `email_encryption`, `smtp_user`, `smtp_pass`, `from_email`, `from_name`, `is_verification_email`, `created_at`, `updated_at`) VALUES
(1, 0, 'smtp', 'smtp.mailtrap.io', '2525', 'tls', '8db3922982412e', 'mamun', 'skynet@gmail.com', 'Skynet', 1, NULL, '2021-05-19 09:45:16');

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
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `language_id`, `status`, `title`, `content`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, '1', 1, 'We Provide Professional Service', '<p><span style=\"color:rgb(97,97,97);font-family:Karla, sans-serif;font-size:15px;\">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam</span><br></p>', 0, '2021-02-10 00:33:37', '2021-02-10 00:39:16'),
(2, '1', 1, 'Stay Up, Stay Running & Protected', '<p><span style=\"color:rgb(97,97,97);font-family:Karla, sans-serif;font-size:15px;\">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam</span><br></p>', 1, '2021-02-10 00:34:16', '2021-02-10 00:39:04'),
(3, '1', 1, 'Our Experienced Experts', '<p><span style=\"color:rgb(97,97,97);font-family:Karla, sans-serif;font-size:15px;\">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam</span><br></p>', 0, '2021-02-10 00:34:37', '2021-02-10 00:38:55'),
(4, '1', 1, 'Management Engineering System', '<p><span style=\"color:rgb(97,97,97);font-family:Karla, sans-serif;font-size:15px;\">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam</span><br></p>', 0, '2021-02-10 00:34:53', '2021-02-10 00:38:51'),
(5, '2', 1, 'We Provide Professional Service', '<p><span style=\"color:rgb(97,97,97);font-family:Karla, sans-serif;font-size:15px;\">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam</span><br></p>', 0, '2021-02-10 00:33:37', '2021-02-10 00:39:16'),
(6, '2', 1, 'Stay Up, Stay Running & Protected', '<p><span style=\"color:rgb(97,97,97);font-family:Karla, sans-serif;font-size:15px;\">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam</span><br></p>', 1, '2021-02-10 00:34:16', '2021-02-10 00:39:04'),
(7, '2', 1, 'Our Experienced Experts', '<p><span style=\"color:rgb(97,97,97);font-family:Karla, sans-serif;font-size:15px;\">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam</span><br></p>', 0, '2021-02-10 00:34:37', '2021-02-10 00:38:55'),
(8, '2', 1, 'Management Engineering System', '<p><span style=\"color:rgb(97,97,97);font-family:Karla, sans-serif;font-size:15px;\">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam</span><br></p>', 0, '2021-02-10 00:34:53', '2021-02-10 00:38:51'),
(9, '3', 1, 'We Provide Professional Service', '<p><span style=\"color:rgb(97,97,97);font-family:Karla, sans-serif;font-size:15px;\">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam</span><br></p>', 0, '2021-02-10 00:33:37', '2021-02-10 00:39:16'),
(10, '3', 1, 'Stay Up, Stay Running & Protected', '<p><span style=\"color:rgb(97,97,97);font-family:Karla, sans-serif;font-size:15px;\">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam</span><br></p>', 1, '2021-02-10 00:34:16', '2021-02-10 00:39:04'),
(11, '3', 1, 'Our Experienced Experts', '<p><span style=\"color:rgb(97,97,97);font-family:Karla, sans-serif;font-size:15px;\">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam</span><br></p>', 0, '2021-02-10 00:34:37', '2021-02-10 00:38:55'),
(12, '3', 1, 'Management Engineering System', '<p><span style=\"color:rgb(97,97,97);font-family:Karla, sans-serif;font-size:15px;\">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam</span><br></p>', 0, '2021-02-10 00:34:53', '2021-02-10 00:38:51');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `language_id`, `status`, `icon`, `title`, `text`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, '1', 1, 'fal fa-laptop-code', 'IT Soluations', 'Sed ut perspiciatis unde omnis iste natus error volup', 0, '2021-02-08 21:32:48', '2021-02-08 21:47:31'),
(2, '1', 1, 'fal fa-fingerprint', 'Security System', 'Sed ut perspiciatis unde omnis iste natus error volup', 0, '2021-02-08 21:36:17', '2021-02-08 21:47:26'),
(3, '1', 1, 'fal fa-chalkboard', 'Web Development', 'Sed ut perspiciatis unde omnis iste natus error volup', 0, '2021-02-08 21:36:45', '2021-02-08 21:47:20'),
(4, '1', 1, 'fal fa-database', 'Database Security', 'Sed ut perspiciatis unde omnis iste natus error volup', 0, '2021-02-08 21:37:15', '2021-02-08 21:47:15'),
(5, '2', 1, 'fal fa-laptop-code', 'IT Soluations', 'Sed ut perspiciatis unde omnis iste natus error volup', 0, '2021-02-08 21:32:48', '2021-02-08 21:47:31'),
(6, '2', 1, 'fal fa-fingerprint', 'Security System', 'Sed ut perspiciatis unde omnis iste natus error volup', 0, '2021-02-08 21:36:17', '2021-02-08 21:47:26'),
(7, '2', 1, 'fal fa-chalkboard', 'Web Development', 'Sed ut perspiciatis unde omnis iste natus error volup', 0, '2021-02-08 21:36:45', '2021-02-08 21:47:20'),
(8, '2', 1, 'fal fa-database', 'Database Security', 'Sed ut perspiciatis unde omnis iste natus error volup', 0, '2021-02-08 21:37:15', '2021-02-08 21:47:15'),
(9, '3', 1, 'fal fa-laptop-code', 'IT Soluations', 'Sed ut perspiciatis unde omnis iste natus error volup', 0, '2021-02-08 21:32:48', '2021-02-08 21:47:31'),
(10, '3', 1, 'fal fa-fingerprint', 'Security System', 'Sed ut perspiciatis unde omnis iste natus error volup', 0, '2021-02-08 21:36:17', '2021-02-08 21:47:26'),
(11, '3', 1, 'fal fa-chalkboard', 'Web Development', 'Sed ut perspiciatis unde omnis iste natus error volup', 0, '2021-02-08 21:36:45', '2021-02-08 21:47:20'),
(12, '3', 1, 'fal fa-database', 'Database Security', 'Sed ut perspiciatis unde omnis iste natus error volup', 0, '2021-02-08 21:37:15', '2021-02-08 21:47:15');

-- --------------------------------------------------------

--
-- Table structure for table `flinks`
--

CREATE TABLE `flinks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flinks`
--

INSERT INTO `flinks` (`id`, `language_id`, `name`, `url`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, 1, 'About Us', '#', 0, '2021-02-14 22:55:49', '2021-02-14 22:55:49'),
(2, 1, 'Our Privacy', '#', 0, '2021-02-14 22:56:04', '2021-02-14 22:56:04'),
(3, 1, 'Services', '#', 0, '2021-02-14 22:56:19', '2021-02-14 22:56:19'),
(4, 1, 'Portfolio', '#', 1, '2021-02-14 22:56:27', '2021-02-14 23:00:17'),
(5, 1, 'Policy', '#', 0, '2021-02-19 07:45:06', '2021-02-19 07:45:06'),
(6, 2, 'About Us', '#', 0, '2021-02-14 22:55:49', '2021-02-14 22:55:49'),
(7, 2, 'Our Privacy', '#', 0, '2021-02-14 22:56:04', '2021-02-14 22:56:04'),
(8, 2, 'Services', '#', 0, '2021-02-14 22:56:19', '2021-02-14 22:56:19'),
(9, 2, 'Portfolio', '#', 1, '2021-02-14 22:56:27', '2021-02-14 23:00:17'),
(10, 2, 'Policy', '#', 0, '2021-02-19 07:45:06', '2021-02-19 07:45:06'),
(11, 3, 'About Us', '#', 0, '2021-02-14 22:55:49', '2021-02-14 22:55:49'),
(12, 3, 'Our Privacy', '#', 0, '2021-02-14 22:56:04', '2021-02-14 22:56:04'),
(13, 3, 'Services', '#', 0, '2021-02-14 22:56:19', '2021-02-14 22:56:19'),
(14, 3, 'Portfolio', '#', 1, '2021-02-14 22:56:27', '2021-02-14 23:00:17'),
(15, 3, 'Policy', '#', 0, '2021-02-19 07:45:06', '2021-02-19 07:45:06');

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

CREATE TABLE `histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `histories`
--

INSERT INTO `histories` (`id`, `language_id`, `status`, `title`, `image`, `date`, `position`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, '1', 1, 'Technical content may have per suasive objectives.', 'portfolio_1613022814321244425.jpg', '2021', 'Startup', 0, '2021-02-10 23:45:44', '2021-02-10 23:53:34'),
(2, '1', 1, 'Technical content may have per suasive objectives.', 'portfolio_16130228451015952493.jpg', '2021', 'Startup', 0, '2021-02-10 23:45:58', '2021-02-10 23:54:05'),
(3, '1', 1, 'Technical content may have per suasive objectives.', 'portfolio_16130228551806026364.jpg', '2021', 'Startup', 0, '2021-02-10 23:46:12', '2021-02-10 23:54:15'),
(4, '1', 1, 'Technical content may have per suasive objectives.', '161302242519469749.jpg', '2021', 'Startup', 0, '2021-02-10 23:47:05', '2021-02-10 23:54:19'),
(5, '2', 1, 'Technical content may have per suasive objectives.', 'portfolio_1613022814321244425.jpg', '2021', 'Startup', 0, '2021-02-10 23:45:44', '2021-02-10 23:53:34'),
(6, '2', 1, 'Technical content may have per suasive objectives.', 'portfolio_16130228451015952493.jpg', '2021', 'Startup', 0, '2021-02-10 23:45:58', '2021-02-10 23:54:05'),
(7, '2', 1, 'Technical content may have per suasive objectives.', 'portfolio_16130228551806026364.jpg', '2021', 'Startup', 0, '2021-02-10 23:46:12', '2021-02-10 23:54:15'),
(8, '2', 1, 'Technical content may have per suasive objectives.', '161302242519469749.jpg', '2021', 'Startup', 0, '2021-02-10 23:47:05', '2021-02-10 23:54:19'),
(9, '3', 1, 'Technical content may have per suasive objectives.', 'portfolio_1613022814321244425.jpg', '2021', 'Startup', 0, '2021-02-10 23:45:44', '2021-02-10 23:53:34'),
(10, '3', 1, 'Technical content may have per suasive objectives.', 'portfolio_16130228451015952493.jpg', '2021', 'Startup', 0, '2021-02-10 23:45:58', '2021-02-10 23:54:05'),
(11, '3', 1, 'Technical content may have per suasive objectives.', 'portfolio_16130228551806026364.jpg', '2021', 'Startup', 0, '2021-02-10 23:46:12', '2021-02-10 23:54:15'),
(12, '3', 1, 'Technical content may have per suasive objectives.', '161302242519469749.jpg', '2021', 'Startup', 0, '2021-02-10 23:47:05', '2021-02-10 23:54:19');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` int(11) NOT NULL DEFAULT 0,
  `direction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `is_default`, `direction`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 1, 'ltr', NULL, '2021-02-22 03:06:07'),
(2, 'Arabic', 'ar', 0, 'rtl', '2021-02-21 04:38:34', '2021-02-21 05:40:05'),
(3, 'Hindi', 'hi', 0, 'ltr', '2021-02-21 05:39:59', '2021-02-22 03:06:07');

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
(1, '2020_05_25_122740_create_admins_table', 1),
(2, '2020_05_26_000000_create_users_table', 1),
(3, '2020_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_12_100000_create_password_resets_table', 1),
(7, '2020_10_26_035012_create_languages_table', 1),
(8, '2020_10_27_024546_create_sliders_table', 1),
(10, '2020_10_27_025335_create_services_table', 1),
(12, '2020_10_27_025627_create_faqs_table', 1),
(13, '2020_11_17_122813_create_newsletters_table', 1),
(14, '2020_11_20_085050_create_emailsettings_table', 1),
(15, '2020_12_25_124242_create_socials_table', 1),
(16, '2021_01_01_123641_create_blogs_table', 1),
(17, '2021_01_01_123728_create_bcategories_table', 1),
(18, '2021_01_03_110518_create_testimonials_table', 1),
(22, '2021_01_24_111458_create_backups_table', 1),
(23, '2021_02_07_145147_create_features_table', 1),
(24, '2021_02_07_145631_create_why_selects_table', 1),
(26, '2021_02_07_151616_create_clients_table', 1),
(27, '2021_02_07_152047_create_counters_table', 1),
(28, '2021_02_08_041017_create_archives_table', 1),
(29, '2021_02_08_042120_create_portfolios_table', 1),
(30, '2021_02_08_042357_create_portfolio_images_table', 1),
(31, '2020_10_13_123757_create_settings_table', 2),
(32, '2020_10_14_103316_create_sectiontitle_table', 3),
(33, '2021_02_09_043348_add_video_info_to_sectiontitles_table', 4),
(34, '2021_02_09_050446_add_about_info_to_sectiontitles_table', 5),
(36, '2020_10_27_025547_create_teams_table', 6),
(37, '2021_02_07_151349_create_histories_table', 7),
(38, '2021_02_12_045400_add_opening_hours_to_settings', 8),
(39, '2021_02_13_041641_add_meet_text_to_sectiontitles_table', 9),
(40, '2021_02_15_035217_add_footer_bg_to_settings_table', 10),
(41, '2021_02_15_043251_create_flinks_table', 11),
(42, '2021_02_15_112132_add_testimonial_content_to_sectiontitles_table', 12),
(43, '2021_02_16_111526_add_link_to_portfolios_table', 13),
(44, '2020_10_27_025201_create_packages_table', 14),
(45, '2021_01_24_105925_create_quotes_table', 15),
(46, '2021_01_07_105717_create_daynamicpages_table', 16),
(47, '2021_02_19_140441_add_page_visibility_to_settings_table', 17),
(48, '2021_01_24_110045_create_roles_table', 18),
(50, '2021_04_23_204005_add_moretableinsettings2_to_settings_table', 19);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'devmamun8@gmail.com', '2021-02-16 09:49:35', '2021-02-16 09:49:35'),
(2, 'djrafi@gmail.com', '2021-02-16 09:50:42', '2021-02-16 09:50:42');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `language_id`, `status`, `title`, `price`, `time`, `feature`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, '1', 1, 'Early Birds', '9', '', '6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision', 0, '2021-02-16 10:13:11', '2021-02-16 10:13:11'),
(2, '1', 1, 'Team', '32', '', '6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision', 0, '2021-02-16 10:13:11', '2021-02-16 10:13:11'),
(3, '1', 1, 'Personal', '69', '', '6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision', 0, '2021-02-16 10:13:11', '2021-02-16 10:13:11'),
(4, '1', 1, 'Plutinum', '99', NULL, '6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision', 0, '2021-02-16 10:13:11', '2021-02-16 10:20:21'),
(5, '1', 1, 'Max', '120', '', '6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision', 0, '2021-02-16 10:13:11', '2021-02-16 10:13:11'),
(6, '1', 1, 'Pro', '150', NULL, '6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision', 0, '2021-02-16 10:13:11', '2021-02-16 10:20:21'),
(7, '2', 1, 'Early Birds', '9', '', '6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision', 0, '2021-02-16 10:13:11', '2021-02-16 10:13:11'),
(8, '2', 1, 'Team', '32', '', '6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision', 0, '2021-02-16 10:13:11', '2021-02-16 10:13:11'),
(9, '2', 1, 'Personal', '69', '', '6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision', 0, '2021-02-16 10:13:11', '2021-02-16 10:13:11'),
(10, '2', 1, 'Plutinum', '99', NULL, '6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision', 0, '2021-02-16 10:13:11', '2021-02-16 10:20:21'),
(11, '2', 1, 'Max', '120', '', '6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision', 0, '2021-02-16 10:13:11', '2021-02-16 10:13:11'),
(12, '2', 1, 'Pro', '150', NULL, '6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision', 0, '2021-02-16 10:13:11', '2021-02-16 10:20:21'),
(13, '3', 1, 'Early Birds', '9', '', '6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision', 0, '2021-02-16 10:13:11', '2021-02-16 10:13:11'),
(14, '3', 1, 'Team', '32', '', '6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision', 0, '2021-02-16 10:13:11', '2021-02-16 10:13:11'),
(15, '3', 1, 'Personal', '69', '', '6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision', 0, '2021-02-16 10:13:11', '2021-02-16 10:13:11'),
(16, '3', 1, 'Plutinum', '99', NULL, '6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision', 0, '2021-02-16 10:13:11', '2021-02-16 10:20:21'),
(17, '3', 1, 'Max', '120', '', '6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision', 0, '2021-02-16 10:13:11', '2021-02-16 10:13:11'),
(18, '3', 1, 'Pro', '150', NULL, '6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision', 0, '2021-02-16 10:13:11', '2021-02-16 10:20:21');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submission_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `language_id`, `title`, `slug`, `start_date`, `submission_date`, `client_name`, `link`, `featured_image`, `service_id`, `content`, `status`, `meta_keywords`, `meta_description`, `serial_number`, `created_at`, `updated_at`) VALUES
(7, 1, 'Software Landing Page HTML', 'Software-Landing-Page-HTML', '02/08/2021', '02/09/2021', 'Yoko Best', NULL, '16133912601093644789.jpg', 3, '<p>As a result, most of us need to know how to use computers. Our knowledge\r\n of computers will help us to tap into challenging career opportunities \r\nand enhance the quality of our lives. It is imperative that quality \r\nstudents be encouraged and motivated to study computers and become \r\ncapable and responsible IT professionals. The education model needs to \r\nalign itself with dynamically changing technology to meet the growing \r\nneed for skilled IT manpower and deliver state-of-the-art, industry \r\nrelevant and technology ready programs.​  Today, the term Information \r\nTechnology (IT) has ballooned to encompass many aspects of computing and\r\n technology and the term is more recognizable than ever before. The \r\nInformation Technology umbrella can be quite large, covering many \r\nfields. IT professionals perform a variety of duties that range from \r\ninstalling applications, managing information, to designing complex \r\napplications, managing computer networks and designing and managing \r\ndatabases. <br></p>', 1, 'css,js', 'As a result, most of us need to know how to use computers.', 0, '2021-02-12 09:09:17', '2021-02-21 03:41:45'),
(8, 1, 'Product Landing Page HTML Template', 'Product-Landing-Page-HTML-Template', '02/01/2021', '02/10/2021', 'Aquila Wolf', 'https://codecanyon.net/user/geniusdevs/portfolio', '16133912531466478446.jpg', 1, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.<br></p>', 1, 'html', 'with the release of Letraset sheets containing Lorem Ipsum passages', 0, '2021-02-11 08:37:38', '2021-02-21 03:41:32'),
(9, 1, 'Personal Portfolio HTML Template', 'Personal-Portfolio-HTML-Template', '02/01/2021', '02/02/2021', 'Audrey Molina', NULL, '1613391244817360549.jpg', 3, '<p>As a result, most of us need to know how to use computers. Our knowledge\r\n of computers will help us to tap into challenging career opportunities \r\nand enhance the quality of our lives. It is imperative that quality \r\nstudents be encouraged and motivated to study computers and become \r\ncapable and responsible IT professionals. The education model needs to \r\nalign itself with dynamically changing technology to meet the growing \r\nneed for skilled IT manpower and deliver state-of-the-art, industry \r\nrelevant and technology ready programs.​  Today, the term Information \r\nTechnology (IT) has ballooned to encompass many aspects of computing and\r\n technology and the term is more recognizable than ever before. The \r\nInformation Technology umbrella can be quite large, covering many \r\nfields. IT professionals perform a variety of duties that range from \r\ninstalling applications, managing information, to designing complex \r\napplications, managing computer networks and designing and managing \r\ndatabases. <br></p>', 1, 'html,css,php', 'As a result, most of us need to know how to use computers.', 0, '2021-02-12 09:08:25', '2021-02-21 03:41:09'),
(10, 1, 'Multipurpose Business & Digital Agency HTML Template', 'Multipurpose-Business-&-Digital-Agency-HTML-Template', '02/08/2021', '02/09/2021', 'Yoko Best', 'https://codecanyon.net/user/geniusdevs/portfolio', '1613391236518553535.jpg', 3, '<p>As a result, most of us need to know how to use computers. Our knowledge\r\n of computers will help us to tap into challenging career opportunities \r\nand enhance the quality of our lives. It is imperative that quality \r\nstudents be encouraged and motivated to study computers and become \r\ncapable and responsible IT professionals. The education model needs to \r\nalign itself with dynamically changing technology to meet the growing \r\nneed for skilled IT manpower and deliver state-of-the-art, industry \r\nrelevant and technology ready programs.​  Today, the term Information \r\nTechnology (IT) has ballooned to encompass many aspects of computing and\r\n technology and the term is more recognizable than ever before. The \r\nInformation Technology umbrella can be quite large, covering many \r\nfields. IT professionals perform a variety of duties that range from \r\ninstalling applications, managing information, to designing complex \r\napplications, managing computer networks and designing and managing \r\ndatabases. <br></p>', 1, 'css,js', 'As a result, most of us need to know how to use computers.', 0, '2021-02-12 09:09:17', '2021-02-21 03:40:46'),
(11, 1, 'One Page Parallax HTML Template', 'One-Page-Parallax-HTML-Template', '02/08/2021', '02/10/2021', 'Audrey Molina', 'https://codecanyon.net/user/geniusdevs/portfolio', '16133913082004583501.jpg', 6, '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;text-align:justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span><br></p>', 1, 'html', 'model text, and a s', 0, '2021-02-15 06:15:08', '2021-02-21 03:40:37'),
(12, 1, 'Broadband & Internet Service Providers Laravel CMS', 'Broadband-&-Internet-Service-Providers-Laravel-CMS', '02/08/2021', '02/10/2021', 'Audrey Molina', 'https://codecanyon.net/user/geniusdevs/portfolio', '16135358341098236821.jpg', 6, '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;text-align:justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span><br></p>', 1, 'html', 'model text, and a s', 0, '2021-02-15 06:15:08', '2021-02-21 03:40:13'),
(13, 2, 'Software Landing Page HTML', 'Software-Landing-Page-HTML', '02/08/2021', '02/09/2021', 'Yoko Best', NULL, '16133912601093644789.jpg', 8, '<p>As a result, most of us need to know how to use computers. Our knowledge\r\n of computers will help us to tap into challenging career opportunities \r\nand enhance the quality of our lives. It is imperative that quality \r\nstudents be encouraged and motivated to study computers and become \r\ncapable and responsible IT professionals. The education model needs to \r\nalign itself with dynamically changing technology to meet the growing \r\nneed for skilled IT manpower and deliver state-of-the-art, industry \r\nrelevant and technology ready programs.​  Today, the term Information \r\nTechnology (IT) has ballooned to encompass many aspects of computing and\r\n technology and the term is more recognizable than ever before. The \r\nInformation Technology umbrella can be quite large, covering many \r\nfields. IT professionals perform a variety of duties that range from \r\ninstalling applications, managing information, to designing complex \r\napplications, managing computer networks and designing and managing \r\ndatabases. <br></p>', 1, 'css,js', 'As a result, most of us need to know how to use computers.', 0, '2021-02-12 09:09:17', '2021-02-21 03:41:45'),
(14, 2, 'Product Landing Page HTML Template', 'Product-Landing-Page-HTML-Template', '02/01/2021', '02/10/2021', 'Aquila Wolf', 'https://codecanyon.net/user/geniusdevs/portfolio', '16133912531466478446.jpg', 9, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.<br></p>', 1, 'html', 'with the release of Letraset sheets containing Lorem Ipsum passages', 0, '2021-02-11 08:37:38', '2021-02-21 03:41:32'),
(15, 2, 'Personal Portfolio HTML Template', 'Personal-Portfolio-HTML-Template', '02/01/2021', '02/02/2021', 'Audrey Molina', NULL, '1613391244817360549.jpg', 10, '<p>As a result, most of us need to know how to use computers. Our knowledge\r\n of computers will help us to tap into challenging career opportunities \r\nand enhance the quality of our lives. It is imperative that quality \r\nstudents be encouraged and motivated to study computers and become \r\ncapable and responsible IT professionals. The education model needs to \r\nalign itself with dynamically changing technology to meet the growing \r\nneed for skilled IT manpower and deliver state-of-the-art, industry \r\nrelevant and technology ready programs.​  Today, the term Information \r\nTechnology (IT) has ballooned to encompass many aspects of computing and\r\n technology and the term is more recognizable than ever before. The \r\nInformation Technology umbrella can be quite large, covering many \r\nfields. IT professionals perform a variety of duties that range from \r\ninstalling applications, managing information, to designing complex \r\napplications, managing computer networks and designing and managing \r\ndatabases. <br></p>', 1, 'html,css,php', 'As a result, most of us need to know how to use computers.', 0, '2021-02-12 09:08:25', '2021-02-21 03:41:09'),
(16, 2, 'Multipurpose Business & Digital Agency HTML Template', 'Multipurpose-Business-&-Digital-Agency-HTML-Template', '02/08/2021', '02/09/2021', 'Yoko Best', 'https://codecanyon.net/user/geniusdevs/portfolio', '1613391236518553535.jpg', 11, '<p>As a result, most of us need to know how to use computers. Our knowledge\r\n of computers will help us to tap into challenging career opportunities \r\nand enhance the quality of our lives. It is imperative that quality \r\nstudents be encouraged and motivated to study computers and become \r\ncapable and responsible IT professionals. The education model needs to \r\nalign itself with dynamically changing technology to meet the growing \r\nneed for skilled IT manpower and deliver state-of-the-art, industry \r\nrelevant and technology ready programs.​  Today, the term Information \r\nTechnology (IT) has ballooned to encompass many aspects of computing and\r\n technology and the term is more recognizable than ever before. The \r\nInformation Technology umbrella can be quite large, covering many \r\nfields. IT professionals perform a variety of duties that range from \r\ninstalling applications, managing information, to designing complex \r\napplications, managing computer networks and designing and managing \r\ndatabases. <br></p>', 1, 'css,js', 'As a result, most of us need to know how to use computers.', 0, '2021-02-12 09:09:17', '2021-02-21 03:40:46'),
(17, 2, 'One Page Parallax HTML Template', 'One-Page-Parallax-HTML-Template', '02/08/2021', '02/10/2021', 'Audrey Molina', 'https://codecanyon.net/user/geniusdevs/portfolio', '16133913082004583501.jpg', 12, '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;text-align:justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span><br></p>', 1, 'html', 'model text, and a s', 0, '2021-02-15 06:15:08', '2021-02-21 03:40:37'),
(18, 2, 'Broadband & Internet Service Providers Laravel CMS', 'Broadband-&-Internet-Service-Providers-Laravel-CMS', '02/08/2021', '02/10/2021', 'Audrey Molina', 'https://codecanyon.net/user/geniusdevs/portfolio', '16135358341098236821.jpg', 13, '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;text-align:justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span><br></p>', 1, 'html', 'model text, and a s', 0, '2021-02-15 06:15:08', '2021-02-21 03:40:13'),
(19, 3, 'Software Landing Page HTML', 'Software-Landing-Page-HTML', '02/08/2021', '02/09/2021', 'Yoko Best', NULL, '16133912601093644789.jpg', 14, '<p>As a result, most of us need to know how to use computers. Our knowledge\r\n of computers will help us to tap into challenging career opportunities \r\nand enhance the quality of our lives. It is imperative that quality \r\nstudents be encouraged and motivated to study computers and become \r\ncapable and responsible IT professionals. The education model needs to \r\nalign itself with dynamically changing technology to meet the growing \r\nneed for skilled IT manpower and deliver state-of-the-art, industry \r\nrelevant and technology ready programs.​  Today, the term Information \r\nTechnology (IT) has ballooned to encompass many aspects of computing and\r\n technology and the term is more recognizable than ever before. The \r\nInformation Technology umbrella can be quite large, covering many \r\nfields. IT professionals perform a variety of duties that range from \r\ninstalling applications, managing information, to designing complex \r\napplications, managing computer networks and designing and managing \r\ndatabases. <br></p>', 1, 'css,js', 'As a result, most of us need to know how to use computers.', 0, '2021-02-12 09:09:17', '2021-02-21 03:41:45'),
(20, 3, 'Product Landing Page HTML Template', 'Product-Landing-Page-HTML-Template', '02/01/2021', '02/10/2021', 'Aquila Wolf', 'https://codecanyon.net/user/geniusdevs/portfolio', '16133912531466478446.jpg', 15, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.<br></p>', 1, 'html', 'with the release of Letraset sheets containing Lorem Ipsum passages', 0, '2021-02-11 08:37:38', '2021-02-21 03:41:32'),
(21, 3, 'Personal Portfolio HTML Template', 'Personal-Portfolio-HTML-Template', '02/01/2021', '02/02/2021', 'Audrey Molina', NULL, '1613391244817360549.jpg', 16, '<p>As a result, most of us need to know how to use computers. Our knowledge\r\n of computers will help us to tap into challenging career opportunities \r\nand enhance the quality of our lives. It is imperative that quality \r\nstudents be encouraged and motivated to study computers and become \r\ncapable and responsible IT professionals. The education model needs to \r\nalign itself with dynamically changing technology to meet the growing \r\nneed for skilled IT manpower and deliver state-of-the-art, industry \r\nrelevant and technology ready programs.​  Today, the term Information \r\nTechnology (IT) has ballooned to encompass many aspects of computing and\r\n technology and the term is more recognizable than ever before. The \r\nInformation Technology umbrella can be quite large, covering many \r\nfields. IT professionals perform a variety of duties that range from \r\ninstalling applications, managing information, to designing complex \r\napplications, managing computer networks and designing and managing \r\ndatabases. <br></p>', 1, 'html,css,php', 'As a result, most of us need to know how to use computers.', 0, '2021-02-12 09:08:25', '2021-02-21 03:41:09'),
(22, 3, 'Multipurpose Business & Digital Agency HTML Template', 'Multipurpose-Business-&-Digital-Agency-HTML-Template', '02/08/2021', '02/09/2021', 'Yoko Best', 'https://codecanyon.net/user/geniusdevs/portfolio', '1613391236518553535.jpg', 17, '<p>As a result, most of us need to know how to use computers. Our knowledge\r\n of computers will help us to tap into challenging career opportunities \r\nand enhance the quality of our lives. It is imperative that quality \r\nstudents be encouraged and motivated to study computers and become \r\ncapable and responsible IT professionals. The education model needs to \r\nalign itself with dynamically changing technology to meet the growing \r\nneed for skilled IT manpower and deliver state-of-the-art, industry \r\nrelevant and technology ready programs.​  Today, the term Information \r\nTechnology (IT) has ballooned to encompass many aspects of computing and\r\n technology and the term is more recognizable than ever before. The \r\nInformation Technology umbrella can be quite large, covering many \r\nfields. IT professionals perform a variety of duties that range from \r\ninstalling applications, managing information, to designing complex \r\napplications, managing computer networks and designing and managing \r\ndatabases. <br></p>', 1, 'css,js', 'As a result, most of us need to know how to use computers.', 0, '2021-02-12 09:09:17', '2021-02-21 03:40:46'),
(23, 3, 'One Page Parallax HTML Template', 'One-Page-Parallax-HTML-Template', '02/08/2021', '02/10/2021', 'Audrey Molina', 'https://codecanyon.net/user/geniusdevs/portfolio', '16133913082004583501.jpg', 18, '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;text-align:justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span><br></p>', 1, 'html', 'model text, and a s', 0, '2021-02-15 06:15:08', '2021-02-21 03:40:37'),
(24, 3, 'Broadband & Internet Service Providers Laravel CMS', 'Broadband-&-Internet-Service-Providers-Laravel-CMS', '02/08/2021', '02/10/2021', 'Audrey Molina', 'https://codecanyon.net/user/geniusdevs/portfolio', '16135358341098236821.jpg', 19, '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;text-align:justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span><br></p>', 1, 'html', 'model text, and a s', 0, '2021-02-15 06:15:08', '2021-02-21 03:40:13');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_images`
--

CREATE TABLE `portfolio_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `portfolio_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_images`
--

INSERT INTO `portfolio_images` (`id`, `portfolio_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 7, 'portfolio_116134162331069324685.jpg', '2021-02-15 13:10:33', '2021-02-15 13:10:33'),
(2, 7, 'portfolio_216134162331517266711.jpg', '2021-02-15 13:10:33', '2021-02-15 13:10:33'),
(3, 7, 'portfolio_316134162331745428499.jpg', '2021-02-15 13:10:33', '2021-02-15 13:10:33');

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `budget` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skypenumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-pending, 1-prcessing, 2-completed, 3-rejected',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `name`, `email`, `phone`, `country`, `budget`, `skypenumber`, `subject`, `file`, `description`, `status`, `created_at`, `updated_at`) VALUES
(8, 'Genius Mamun', 'gmamun2435@gmail.com', '324234123', 'Bangladesh', '345', '234234234234', 'Web Design & Development', '16135595621654910309.pdf', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 2, '2021-02-17 04:59:22', '2021-02-17 05:10:00'),
(9, 'Mahfuj', 'mahfuj@gmail.com', '0438263458', 'Bangladesh', '3453', '45364564', 'Laravel CMS Design', '16135600042114205085.pdf', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 0, '2021-02-17 05:06:44', '2021-02-17 05:06:44'),
(10, 'rony', 'djrafi@gmail.com', '435653', 'Bangladesh', '333', '234234', 'WordPress CMS Design', '161356005685981243.pdf', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 0, '2021-02-17 05:07:36', '2021-02-17 05:07:36'),
(11, 'Sihab', 'sihab@gmail.com', '4563435', 'Bangladesh', '432', '2345234535', 'HTML & CSS3 Website Design', NULL, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 3, '2021-02-17 05:09:37', '2021-02-17 05:09:54'),
(12, 'Iliana Emerson', 'cylusadah@mailinator.com', '5966503', 'Aut fugiat do simili', 'Cupiditate ipsum con', '436', 'Cillum voluptatem si', NULL, 'Dolor similique temp', 0, '2021-04-23 13:02:21', '2021-04-23 13:02:21'),
(13, 'Emma Lynch', 'zebezaxys@mailinator.com', '3518', 'Provident facere nu', 'Molestias nostrud ex', '124', 'Dolorum ex sed non a', '1619609498606016260.pdf', 'Ea delectus qui mag', 0, '2021-04-28 05:31:38', '2021-04-28 05:31:38');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '[\"General Setting\",\"Home\",\"About\",\"Package\",\"Quote\",\"Service\",\"Contact\",\"Portfolio\",\"Blog\",\"Subscribers\",\"Footer\",\"Clear Cache\"]', '2021-02-19 12:53:15', '2021-02-19 23:33:57'),
(2, 'Moderator', '[\"Package\",\"Service\",\"Blog\",\"Dynamic Page\"]', '2021-02-19 13:44:23', '2021-02-19 13:44:36'),
(3, 'Super Admin', NULL, '2021-02-19 13:47:18', '2021-02-19 13:47:18');

-- --------------------------------------------------------

--
-- Table structure for table `sectiontitles`
--

CREATE TABLE `sectiontitles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_we_are_sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_we_are_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_we_are_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_image_right` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_image_left` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_bg_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_c_us_sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_c_us_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_c_us_image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_c_us_image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_form_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_section_bg_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_form_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_map` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_bg_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_bg_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_f_icon1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_f_icon2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_f_text1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_f_text2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_experince_yers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_intro_video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `get_quote_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `get_quote_sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `our_history_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `our_history_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_bg_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeet_us_bg_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeet_us_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeet_us_button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeet_us_button_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `testimonial_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sectiontitles`
--

INSERT INTO `sectiontitles` (`id`, `language_id`, `w_we_are_sub_title`, `w_we_are_title`, `w_we_are_text`, `video_title`, `video_sub_title`, `video_text`, `video_image`, `video_link`, `video_image_right`, `video_image_left`, `video_bg_image`, `video_content`, `service_title`, `service_sub_title`, `w_c_us_sub_title`, `w_c_us_title`, `w_c_us_image1`, `w_c_us_image2`, `team_title`, `team_sub_title`, `contact_sub_title`, `contact_title`, `contact_form_title`, `contact_section_bg_image`, `contact_form_image`, `contact_map`, `faq_sub_title`, `faq_title`, `faq_bg_image`, `faq_image1`, `faq_image2`, `blog_title`, `blog_sub_title`, `hero_sub_title`, `hero_title`, `hero_text`, `hero_image`, `hero_bg_image`, `hero_f_icon1`, `hero_f_icon2`, `hero_f_text1`, `hero_f_text2`, `about_title`, `about_sub_title`, `about_text`, `about_experince_yers`, `about_intro_video`, `about_image`, `get_quote_title`, `get_quote_sub_title`, `our_history_title`, `our_history_text`, `package_sub_title`, `package_title`, `portfolio_title`, `portfolio_sub_title`, `counter_bg_image`, `meeet_us_bg_image`, `meeet_us_text`, `meeet_us_button_text`, `meeet_us_button_link`, `created_at`, `updated_at`, `testimonial_title`, `testimonial_subtitle`) VALUES
(1, '1', 'WHO WE ARE', 'We Work Hard Play Hard Explore Creative Mmind', 'Perspiciatis unde omnis iste natus error sit voluptatem accusantium dolorem-quelaudantium, totam rem aperiam eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quiavoluptas sit aspernatur aut odit aut fugit, sed quia quuntur magni dolores eos ratione voluptatem sequi nesciunt eque porroe.', 'How we growth our business.', 'INTRO VIDEO', 'The introduction of cloud and mobile technologies into enterprise software.', '1612877990706065974.jpg', 'https://www.youtube.com/watch?v=TdSA7gkVYU0', '1612877965616485669.png', '1612877965496788649.png', '16128779901457503508.jpg', 'hether you are building an enterprise web portal or a state-of-the-art website, you always need the right modern tools. Well-built and maintained PHP frameworks provide those tools in abundance, allowing maintained PHP frameworks provide those tools in abundance, allowing developers to save time, re-use code, and streamline the back end. As software development tools continuously.', 'We Offer Better Soluation', 'OUR LATEST SERVICES', 'WHO WE ARE', 'Why Choose Us', '16128799941528559809.jpg', '16128799942058255621.jpg', 'Meet Our Exclusive Leadership', 'OUR TEAM MEMBER', 'CONTACT US', 'Join Us To Get Free Consultations', 'Don\'t Hesitate To Contact With Us, Say Hello......', '16129356111909515361.jpg', '16129356111047618438.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2993207.564767118!2d-77.9807899414373!3d42.92219345357043!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4ccc4bf0f123a5a9%3A0xddcfc6c1de189567!2sNew%20York%2C%20USA!5e0!3m2!1sen!2sbd!4v1569310771254!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 'FAQ', 'Why Choose Our Solutions', '1612937982770064829.jpg', '1612937982435794173.jpg', '1612938123482410717.jpg', 'Read Our Latest News & Blog', 'LATEST NEWS', 'Promote any poduct, service or online course.', 'Get every it Services Here', 'Make your products with good & professionals', '16127989421745785160.png', '1613561714482991106.jpg', 'fal fa-gem', 'fal fa-bullseye', 'IT Product', 'IT Services', 'You can\'t use up creativity.', 'ABOUT US', '<p>Does any industry face a more complex audience journey and marketing sales process than B2B technology? Consider the number of people who influence a sale, the length of the decision-making cycle, the competing interests of the people who purchase, implement, manage, and use the technology. It’s a lot meaningful content here. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p><p><br></p><p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '30', 'https://www.youtube.com/watch?v=TdSA7gkVYU0', '16128479611329287952.jpg', NULL, NULL, 'Our History', 'Does any industry face a more complex audience journey and marketing sales process than B2B technology.', 'Plans', 'Our Pricing Plans', 'Reads Our Recent Case Studies', 'LATEST CASE STUDIES', NULL, '16131902461486580724.jpg', 'Preparing For Your Business Success', 'Meet With Us', 'https://codecanyon.net/user/geniusdevs', NULL, '2021-02-17 10:22:10', 'What Our Client Says', 'TESTIMONIAL'),
(2, '3', 'हम कौन हैं', 'हम काम करते हैं हार्ड प्ले क्रिएटिव माइंड का अन्वेषण करें', 'Perspiciatis unde omnis iste natus error sit voluptatem accusantium dolorem-quelaudantium, totam rem aperiam eaque ipsa quale ab illo inventore veritatis-quasi Architecto beatae vitae sunt explicabo। निमो एनीम इप्सम वॉलप्टेटम क्वियावोलुप्टस एस्परनटूर ऑट ओडिट ऑट फ्यूगिट, सेड क्विया क्वंटूर मैग्नी डोलोर्स इओस राशन वॉल्यूपटेटम सेवि नेसिंटंट टी पोरो।', 'हम अपने व्यापार को कैसे बढ़ाते हैं।', 'इंट्रो वीडियो', 'उद्यम सॉफ्टवेयर में क्लाउड और मोबाइल प्रौद्योगिकियों की शुरूआत।', '6032382aa9857.jpg', 'https://www.youtube.com/watch?v=TdSA7gkVYU0', '6032382aad4af.png', '6032382ab2623.png', '6032382ab5ea0.jpg', 'आप एक उद्यम वेब पोर्टल या एक अत्याधुनिक वेबसाइट का निर्माण कर रहे हैं, आपको हमेशा सही आधुनिक उपकरणों की आवश्यकता होती है। अच्छी तरह से निर्मित और बनाए रखा PHP चौखटे उन उपकरणों को बहुतायत में प्रदान करता है, जो बनाए रखने की अनुमति देता है, PHP चौखटे उन उपकरणों को बहुतायत में प्रदान करता है, जिससे डेवलपर्स को समय बचाने, कोड का पुन: उपयोग करने और बैक एंड को कारगर बनाने की अनुमति मिलती है। सॉफ्टवेयर विकास उपकरण के रूप में लगातार।', 'हम बेहतर समाधान प्रदान करते हैं', 'हमारे नवीनतम सेवाएं', 'हम कौन हैं', 'हमें क्यों चुनें', '6032382ab9a1a.jpg', '6032382abd9f1.jpg', 'मिलिए हमारे एक्सक्लूसिव लीडरशिप से', 'हमारा TEAM प्रोफाइल', 'संपर्क करें', 'निःशुल्क परामर्श प्राप्त करने के लिए हमसे जुड़ें', 'हमसे संपर्क करने में संकोच न करें, नमस्ते कहें ......', '6032382abf186.jpg', '6032382ac321e.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2993207.564767118!2d-77.9807899414373!3d42.92219345357043!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4ccc4bf0f123a5a9%3A0xddcfc6c1de189567!2sNew%20York%2C%20USA!5e0!3m2!1sen!2sbd!4v1569310771254!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 'सामान्य प्रश्न', 'हमारे समाधान क्यों चुनें', '6032382ac6c24.jpg', '6032382aca9ee.jpg', '6032382ace982.jpg', 'हमारे नवीनतम समाचार और ब्लॉग पढ़ें', 'ताजा खबर', 'किसी भी उत्पाद, सेवा या ऑनलाइन पाठ्यक्रम को बढ़ावा देना।', 'यहाँ हर सेवा प्राप्त करें', 'अपने उत्पादों को अच्छे और पेशेवरों के साथ बनाएं', '6032382ad2abe.png', '6032382ad6e9e.jpg', 'fal fa-gem', 'fal fa-bullseye', 'आईटी उत्पाद', 'सूचान प्रौद्योगिकी सेवाएं', 'आप रचनात्मकता का उपयोग नहीं कर सकते।', 'हमारे बारे में', '<p>Does any industry face a more complex audience journey and marketing sales process than B2B technology? Consider the number of people who influence a sale, the length of the decision-making cycle, the competing interests of the people who purchase, implement, manage, and use the technology. It’s a lot meaningful content here. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p><p><br></p><p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '30', 'https://www.youtube.com/watch?v=TdSA7gkVYU0', '6032382adb368.jpg', NULL, NULL, 'हमारा इतिहास', 'क्या किसी भी उद्योग को बी 2 बी तकनीक की तुलना में अधिक जटिल दर्शक यात्रा और विपणन बिक्री प्रक्रिया का सामना करना पड़ता है।', 'योजनाओं', 'हमारे मूल्य निर्धारण योजनाएँ', 'हमारे हालिया केस स्टडीज को पढ़ता है', 'नवीनतम मामला अध्ययन', '6032382adf5d1.jpg', '6032382ae22f3.jpg', 'आपके व्यवसाय की सफलता के लिए तैयारी', 'हमारे साथ मिलो', 'https://codecanyon.net/user/geniusdevs', NULL, '2021-02-17 10:22:10', 'हमारे ग्राहक क्या कहते हैं', 'गुणों का वर्ण - पत्र'),
(3, '2', 'من نحن', 'نعمل بجد ونلعب بجد. استكشف العقل الإبداعي', 'إن الفرس ليس له أي خطأ طبيعي يجلس على عاتق الاتهام بالآخرين ، كما يجب أن يخترع الواقع وشبه معماري السيرة الذاتية التي يجب شرحها. Nemo enim ipsam voluptatem quiavoluptas sit aspernatur aut odit aut fugit، sed quia quuntur magni dolores eos ratione voluptatem Sequi nesciunt eque porroe.', 'كيف ننمي أعمالنا.', 'مقدمة فيديو', 'إدخال تقنيات السحابة والأجهزة المحمولة في برامج المؤسسة.', '6032468f665ad.jpg', 'https://www.youtube.com/watch?v=TdSA7gkVYU0', '6032468f67b7e.png', '6032468f6b80b.png', '6032468f6f528.jpg', 'سواء كنت تقوم ببناء بوابة ويب مؤسسة أو موقع ويب حديث ، فأنت بحاجة دائمًا إلى الأدوات الحديثة المناسبة. توفر أطر PHP جيدة التصميم والصيانة هذه الأدوات بكثرة ، مما يسمح لأطر PHP التي يتم الحفاظ عليها بتوفير هذه الأدوات بوفرة ، مما يسمح للمطورين بتوفير الوقت وإعادة استخدام التعليمات البرمجية وتبسيط النهاية الخلفية. كأدوات تطوير البرمجيات بشكل مستمر.', 'نحن نقدم أفضل الحلول', 'أحدث خدماتنا', 'من نحن', 'لماذا أخترتنا', '6032468f73366.jpg', '6032468f77049.jpg', 'تعرف على قيادتنا الحصرية', 'عضو فريقنا', 'اتصل بنا', 'انضم إلينا للحصول على استشارات مجانية', 'لا تتردد في الاتصال بنا ، قل مرحبا ......', '6032468f7abcd.jpg', '6032468f7e7a7.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2993207.564767118!2d-77.9807899414373!3d42.92219345357043!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4ccc4bf0f123a5a9%3A0xddcfc6c1de189567!2sNew%20York%2C%20USA!5e0!3m2!1sen!2sbd!4v1569310771254!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 'التعليمات', 'لماذا تختار حلولنا', '6032468f824b7.jpg', '6032468f86033.jpg', '6032468f89a6c.jpg', 'اقرأ آخر الأخبار والمدونة', 'أحدث الأخبار', 'قم بالترويج لأي منتج أو خدمة أو دورة تدريبية عبر الإنترنت.', 'احصل على كل خدمات تكنولوجيا المعلومات هنا', 'اصنع منتجاتك مع محترفين وجيدين', '6032468f8d5e7.png', '6032468f913fd.jpg', 'fal fa-gem', 'fal fa-bullseye', 'منتج تكنولوجيا المعلومات', 'خدمات تكنولوجيا المعلومات', 'لا يمكنك استخدام الإبداع.', 'معلومات عنا', '<p>Does any industry face a more complex audience journey and marketing sales process than B2B technology? Consider the number of people who influence a sale, the length of the decision-making cycle, the competing interests of the people who purchase, implement, manage, and use the technology. It’s a lot meaningful content here. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p><p><br></p><p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '30', 'https://www.youtube.com/watch?v=TdSA7gkVYU0', '6032468f94f27.jpg', NULL, NULL, 'تاريخنا', 'هل تواجه أي صناعة رحلة جمهور وعمليات مبيعات تسويقية أكثر تعقيدًا من تقنية B2B.', 'الخطط', 'خطط التسعير لدينا', 'يقرأ دراسات الحالة الأخيرة', 'أحدث دراسات الحالة', '6032468f98dfd.jpg', '6032468f9bb3d.jpg', 'التحضير لنجاح عملك', 'قابلنا', 'https://codecanyon.net/user/geniusdevs', NULL, '2021-02-17 10:22:10', 'ماذا يقول عملائنا', 'شهادة');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `language_id`, `status`, `title`, `slug`, `icon`, `image`, `content`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, '1', 1, 'UI/UX Design', 'UIUX-Design', 'fal fa-eye-dropper', '1613397069283872525.jpg', '<p>As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​ Today, the term Information Technology (IT) has ballooned to encompass many aspects of computing and technology and the term is more recognizable than ever before. The Information Technology umbrella can be quite large, covering many fields. IT professionals perform a variety of duties that range from installing applications, managing information, to designing complex applications, managing computer networks and designing and managing databases. <br></p>', 0, '2021-02-11 07:10:50', '2021-02-15 07:51:09'),
(2, '1', 1, 'IT Consultancy', 'IT-Consultancy', 'fal fa-gavel', '16133970622043779736.jpg', '<p>As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​ Today, the term Information Technology (IT) has ballooned to encompass many aspects of computing and technology and the term is more recognizable than ever before. The Information Technology umbrella can be quite large, covering many fields. IT professionals perform a variety of duties that range from installing applications, managing information, to designing complex applications, managing computer networks and designing and managing databases. <br></p>', 0, '2021-02-11 07:15:31', '2021-02-15 07:51:02'),
(3, '1', 1, 'Technology Prof', 'Technology-Prof', 'fal fa-map-marked-alt', '16133970542027137282.jpg', '<p>As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​ Today, the term Information Technology (IT) has ballooned to encompass many aspects of computing and technology and the term is more recognizable than ever before. The Information Technology umbrella can be quite large, covering many fields. IT professionals perform a variety of duties that range from installing applications, managing information, to designing complex applications, managing computer networks and designing and managing databases. <br></p>', 0, '2021-02-11 07:16:06', '2021-02-15 07:50:54'),
(5, '1', 1, 'Web Development', 'Web-Development', 'fal fa-hurricane', '16133970471491364505.jpg', '<p>As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​ Today, the term Information Technology (IT) has ballooned to encompass many aspects of computing and technology and the term is more recognizable than ever before. The Information Technology umbrella can be quite large, covering many fields. IT professionals perform a variety of duties that range from installing applications, managing information, to designing complex applications, managing computer networks and designing and managing databases. <br></p>', 0, '2021-02-11 07:22:50', '2021-02-15 07:50:47'),
(6, '1', 1, 'App Development', 'App-Development', 'fal fa-bezier-curve', '16133970351881484414.jpg', '<p>As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​ Today, the term Information Technology (IT) has ballooned to encompass many aspects of computing and technology and the term is more recognizable than ever before. The Information Technology umbrella can be quite large, covering many fields. IT professionals perform a variety of duties that range from installing applications, managing information, to designing complex applications, managing computer networks and designing and managing databases. <br></p>', 0, '2021-02-11 07:23:18', '2021-02-15 07:50:35'),
(7, '1', 1, 'Game Design', 'Game-Design', 'fal fa-umbrella', '16133970281893173429.jpg', '<p>As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​ Today, the term Information Technology (IT) has ballooned to encompass many aspects of computing and technology and the term is more recognizable than ever before. The Information Technology umbrella can be quite large, covering many fields. IT professionals perform a variety of duties that range from installing applications, managing information, to designing complex applications, managing computer networks and designing and managing databases. <br></p>', 0, '2021-02-11 07:24:00', '2021-02-15 07:50:28'),
(8, '2', 1, 'UI/UX Design', 'UIUX-Design', 'fal fa-eye-dropper', '1613397069283872525.jpg', '<p>As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​ Today, the term Information Technology (IT) has ballooned to encompass many aspects of computing and technology and the term is more recognizable than ever before. The Information Technology umbrella can be quite large, covering many fields. IT professionals perform a variety of duties that range from installing applications, managing information, to designing complex applications, managing computer networks and designing and managing databases. <br></p>', 0, '2021-02-11 07:10:50', '2021-02-15 07:51:09'),
(9, '2', 1, 'IT Consultancy', 'IT-Consultancy', 'fal fa-gavel', '16133970622043779736.jpg', '<p>As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​ Today, the term Information Technology (IT) has ballooned to encompass many aspects of computing and technology and the term is more recognizable than ever before. The Information Technology umbrella can be quite large, covering many fields. IT professionals perform a variety of duties that range from installing applications, managing information, to designing complex applications, managing computer networks and designing and managing databases. <br></p>', 0, '2021-02-11 07:15:31', '2021-02-15 07:51:02'),
(10, '2', 1, 'Technology Prof', 'Technology-Prof', 'fal fa-map-marked-alt', '16133970542027137282.jpg', '<p>As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​ Today, the term Information Technology (IT) has ballooned to encompass many aspects of computing and technology and the term is more recognizable than ever before. The Information Technology umbrella can be quite large, covering many fields. IT professionals perform a variety of duties that range from installing applications, managing information, to designing complex applications, managing computer networks and designing and managing databases. <br></p>', 0, '2021-02-11 07:16:06', '2021-02-15 07:50:54'),
(11, '2', 1, 'Web Development', 'Web-Development', 'fal fa-hurricane', '16133970471491364505.jpg', '<p>As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​ Today, the term Information Technology (IT) has ballooned to encompass many aspects of computing and technology and the term is more recognizable than ever before. The Information Technology umbrella can be quite large, covering many fields. IT professionals perform a variety of duties that range from installing applications, managing information, to designing complex applications, managing computer networks and designing and managing databases. <br></p>', 0, '2021-02-11 07:22:50', '2021-02-15 07:50:47'),
(12, '2', 1, 'App Development', 'App-Development', 'fal fa-bezier-curve', '16133970351881484414.jpg', '<p>As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​ Today, the term Information Technology (IT) has ballooned to encompass many aspects of computing and technology and the term is more recognizable than ever before. The Information Technology umbrella can be quite large, covering many fields. IT professionals perform a variety of duties that range from installing applications, managing information, to designing complex applications, managing computer networks and designing and managing databases. <br></p>', 0, '2021-02-11 07:23:18', '2021-02-15 07:50:35'),
(13, '2', 1, 'Game Design', 'Game-Design', 'fal fa-umbrella', '16133970281893173429.jpg', '<p>As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​ Today, the term Information Technology (IT) has ballooned to encompass many aspects of computing and technology and the term is more recognizable than ever before. The Information Technology umbrella can be quite large, covering many fields. IT professionals perform a variety of duties that range from installing applications, managing information, to designing complex applications, managing computer networks and designing and managing databases. <br></p>', 0, '2021-02-11 07:24:00', '2021-02-15 07:50:28'),
(14, '3', 1, 'UI/UX Design', 'UIUX-Design', 'fal fa-eye-dropper', '1613397069283872525.jpg', '<p>As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​ Today, the term Information Technology (IT) has ballooned to encompass many aspects of computing and technology and the term is more recognizable than ever before. The Information Technology umbrella can be quite large, covering many fields. IT professionals perform a variety of duties that range from installing applications, managing information, to designing complex applications, managing computer networks and designing and managing databases. <br></p>', 0, '2021-02-11 07:10:50', '2021-02-15 07:51:09'),
(15, '3', 1, 'IT Consultancy', 'IT-Consultancy', 'fal fa-gavel', '16133970622043779736.jpg', '<p>As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​ Today, the term Information Technology (IT) has ballooned to encompass many aspects of computing and technology and the term is more recognizable than ever before. The Information Technology umbrella can be quite large, covering many fields. IT professionals perform a variety of duties that range from installing applications, managing information, to designing complex applications, managing computer networks and designing and managing databases. <br></p>', 0, '2021-02-11 07:15:31', '2021-02-15 07:51:02'),
(16, '3', 1, 'Technology Prof', 'Technology-Prof', 'fal fa-map-marked-alt', '16133970542027137282.jpg', '<p>As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​ Today, the term Information Technology (IT) has ballooned to encompass many aspects of computing and technology and the term is more recognizable than ever before. The Information Technology umbrella can be quite large, covering many fields. IT professionals perform a variety of duties that range from installing applications, managing information, to designing complex applications, managing computer networks and designing and managing databases. <br></p>', 0, '2021-02-11 07:16:06', '2021-02-15 07:50:54'),
(17, '3', 1, 'Web Development', 'Web-Development', 'fal fa-hurricane', '16133970471491364505.jpg', '<p>As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​ Today, the term Information Technology (IT) has ballooned to encompass many aspects of computing and technology and the term is more recognizable than ever before. The Information Technology umbrella can be quite large, covering many fields. IT professionals perform a variety of duties that range from installing applications, managing information, to designing complex applications, managing computer networks and designing and managing databases. <br></p>', 0, '2021-02-11 07:22:50', '2021-02-15 07:50:47'),
(18, '3', 1, 'App Development', 'App-Development', 'fal fa-bezier-curve', '16133970351881484414.jpg', '<p>As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​ Today, the term Information Technology (IT) has ballooned to encompass many aspects of computing and technology and the term is more recognizable than ever before. The Information Technology umbrella can be quite large, covering many fields. IT professionals perform a variety of duties that range from installing applications, managing information, to designing complex applications, managing computer networks and designing and managing databases. <br></p>', 0, '2021-02-11 07:23:18', '2021-02-15 07:50:35'),
(19, '3', 1, 'Game Design', 'Game-Design', 'fal fa-umbrella', '16133970281893173429.jpg', '<p>As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​ Today, the term Information Technology (IT) has ballooned to encompass many aspects of computing and technology and the term is more recognizable than ever before. The Information Technology umbrella can be quite large, covering many fields. IT professionals perform a variety of duties that range from installing applications, managing information, to designing complex applications, managing computer networks and designing and managing databases. <br></p>', 0, '2021-02-11 07:24:00', '2021-02-15 07:50:28');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme_version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fav_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contactemail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opening_hours` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_bg_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `messenger` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disqus` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_this_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_pexel` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `announcement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `announcement_delay` decimal(11,2) NOT NULL DEFAULT 0.00,
  `maintainance_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tawk_to` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cookie_alert_text` blob DEFAULT NULL,
  `google_recaptcha_site_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_recaptcha_secret_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_messenger` tinyint(4) NOT NULL DEFAULT 1,
  `is_disqus` tinyint(4) NOT NULL DEFAULT 1,
  `is_google_analytics` tinyint(4) NOT NULL DEFAULT 1,
  `is_add_this_status` tinyint(4) NOT NULL DEFAULT 1,
  `is_facebook_pexel` tinyint(4) NOT NULL DEFAULT 1,
  `is_announcement` tinyint(4) NOT NULL DEFAULT 1,
  `is_maintainance_mode` tinyint(4) NOT NULL DEFAULT 1,
  `is_blog_share_links` tinyint(4) NOT NULL DEFAULT 1,
  `is_tawk_to` tinyint(4) NOT NULL DEFAULT 1,
  `is_recaptcha` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_cooki_alert` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_t1_slider_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t1_who_we_are_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t1_intro_video_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t1_service_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t1_why_choose_us_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t1_portfolio_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t1_testimonial_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t1_team_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t1_contact_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t1_faq_counter_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t1_meet_us_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t1_blog_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t1_clint_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t2_hero_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t2_about_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t2_service_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t2_intro_video_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t2_team_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t2_counter_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t2_testimonial_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t2_contact_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t2_faq_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t2_quote_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t2_news_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t2_client_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t3_hero_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t3_service_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t3_portfolio_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t3_testimonial_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t3_faq_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t3_team_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t3_meet_us_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t3_news_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t3_client_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t4_hero_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t4_client_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t4_about_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t4_feature_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t4_who_we_are_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t4_intro_video_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t4_portfolio_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t4_counter_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t4_testmonial_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t4_faq_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_t4_contact_section` tinyint(4) NOT NULL DEFAULT 1,
  `about_page` tinyint(4) NOT NULL DEFAULT 1,
  `service_page` tinyint(4) NOT NULL DEFAULT 1,
  `poerfolio_page` tinyint(4) NOT NULL DEFAULT 1,
  `package_page` tinyint(4) NOT NULL DEFAULT 1,
  `team_page` tinyint(4) NOT NULL DEFAULT 1,
  `faq_page` tinyint(4) NOT NULL DEFAULT 1,
  `blog_page` tinyint(4) NOT NULL DEFAULT 1,
  `contact_page` tinyint(4) NOT NULL DEFAULT 1,
  `quote_page` tinyint(4) NOT NULL DEFAULT 1,
  `about_about` tinyint(4) NOT NULL DEFAULT 1,
  `about_w_w_a` tinyint(4) NOT NULL DEFAULT 1,
  `about_choose_us` tinyint(4) NOT NULL DEFAULT 1,
  `about_history` tinyint(4) NOT NULL DEFAULT 1,
  `is_video_hero` tinyint(4) NOT NULL DEFAULT 1,
  `is_whatsapp` tinyint(4) NOT NULL DEFAULT 1,
  `is_call_button` tinyint(4) NOT NULL DEFAULT 1,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintainance_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_video_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `language_id`, `theme_version`, `website_title`, `base_color`, `header_logo`, `footer_logo`, `fav_icon`, `breadcrumb_image`, `number`, `email`, `contactemail`, `address`, `opening_hours`, `footer_text`, `footer_bg_image`, `meta_keywords`, `meta_description`, `copyright_text`, `messenger`, `disqus`, `add_this_status`, `facebook_pexel`, `google_analytics`, `announcement`, `announcement_delay`, `maintainance_text`, `tawk_to`, `cookie_alert_text`, `google_recaptcha_site_key`, `google_recaptcha_secret_key`, `is_messenger`, `is_disqus`, `is_google_analytics`, `is_add_this_status`, `is_facebook_pexel`, `is_announcement`, `is_maintainance_mode`, `is_blog_share_links`, `is_tawk_to`, `is_recaptcha`, `is_cooki_alert`, `created_at`, `updated_at`, `is_t1_slider_section`, `is_t1_who_we_are_section`, `is_t1_intro_video_section`, `is_t1_service_section`, `is_t1_why_choose_us_section`, `is_t1_portfolio_section`, `is_t1_testimonial_section`, `is_t1_team_section`, `is_t1_contact_section`, `is_t1_faq_counter_section`, `is_t1_meet_us_section`, `is_t1_blog_section`, `is_t1_clint_section`, `is_t2_hero_section`, `is_t2_about_section`, `is_t2_service_section`, `is_t2_intro_video_section`, `is_t2_team_section`, `is_t2_counter_section`, `is_t2_testimonial_section`, `is_t2_contact_section`, `is_t2_faq_section`, `is_t2_quote_section`, `is_t2_news_section`, `is_t2_client_section`, `is_t3_hero_section`, `is_t3_service_section`, `is_t3_portfolio_section`, `is_t3_testimonial_section`, `is_t3_faq_section`, `is_t3_team_section`, `is_t3_meet_us_section`, `is_t3_news_section`, `is_t3_client_section`, `is_t4_hero_section`, `is_t4_client_section`, `is_t4_about_section`, `is_t4_feature_section`, `is_t4_who_we_are_section`, `is_t4_intro_video_section`, `is_t4_portfolio_section`, `is_t4_counter_section`, `is_t4_testmonial_section`, `is_t4_faq_section`, `is_t4_contact_section`, `about_page`, `service_page`, `poerfolio_page`, `package_page`, `team_page`, `faq_page`, `blog_page`, `contact_page`, `quote_page`, `about_about`, `about_w_w_a`, `about_choose_us`, `about_history`, `is_video_hero`, `is_whatsapp`, `is_call_button`, `whatsapp`, `maintainance_image`, `hero_section_video_link`) VALUES
(1, '1', 'theme1', 'Skynet - Multipurpose Website  & Business  Management System CMS', '0C59DB', 'header_logo_1615901449730003744.png', 'footer_logo16159014611986770640.png', 'fav_icon_16131013892108825182.png', 'breadcrumb_image_.jpg', '+33 454 342 654,+55 344 213 345', 'demoemail@gmail.com,testemail@gmail.com', 'skynet@gmail.com', '2963  University Drive, Chicago', 'Sat - Wed / 10AM - 7PM', 'The web has changed a lot since Vitaly posted his first article back in 2006. The team at Smashing has changed too, as have the things that we bring to our community onferences, books, and our membershipe.', 'footer_bg_image_1613361435502004358.jpg', 'business,agency,it,company,nextit,corporate,service,degital service,creative service', 'Nextit - Multipurpose Website  and Business  Management System CMS', '<p>Copyright by @ GeniusDevs - 2021</p>', NULL, 'nextit-1', NULL, NULL, '6Lf9jOQUAAAAALO4C5pC7O_HHw0Z1BuYCU_FA606', '16159015311612204557.jpg', '2.00', 'We are upgrading our site. We will come back soon. \r\nPlease stay with us.\r\nThank you.', '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/602f3cb99c4f165d47c4d425/1eus8adqv\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', 0x3c703e3c7370616e20636c6173733d22636f6f6b69652d636f6e73656e745f5f6d65737361676522207374796c653d226d617267696e3a203070783b2070616464696e673a203070783b20626f726465723a203070783b20766572746963616c2d616c69676e3a20626173656c696e653b20666f6e742d66616d696c793a20506f7070696e732c2073616e732d73657269663b223e596f757220657870657269656e6365206f6e207468697320736974652077696c6c20626520696d70726f76656420627920616c6c6f77696e6720636f6f6b6965732e3c2f7370616e3e3c62723e3c2f703e, '6Lf9jOQUAAAAABJKj_nQBNvji7wh4DdOZIPAdRKk', '6Lf9jOQUAAAAALO4C5pC7O_HHw0Z1BuYCU_FA606', 1, 1, 0, 1, 1, 1, 0, 1, 1, '1', 1, NULL, '2021-05-19 09:45:20', 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '234234546', '1619241714761747856.jpg', 'https://www.youtube.com/watch?v=BAVfUvByStY&t=2s'),
(2, '2', 'theme1', 'NextIT - Multipurpose Website  & Business  Management System CMS', '0C59DB', '6032382a96628.png', '6032382a994e9.png', '6032382a9ce0b.png', '6032382aa0a28.jpg', '+33 454 342 654,+55 344 213 345', 'demoemail@gmail.com,testemail@gmail.com', 'devmamun8@gmail.com', '2963  University Drive, Chicago', 'Sat - Wed / 10AM - 7PM', 'The web has changed a lot since Vitaly posted his first article back in 2006. The team at Smashing has changed too, as have the things that we bring to our community onferences, books, and our membershipe.', '6032382aa4aee.jpg', 'business,agency,it,company,nextit,corporate,service,degital service,creative service', 'Nextit - Multipurpose Website  and Business  Management System CMS', '<p>Copyright by @ GeniusDevs - 2021</p>', NULL, 'nextit-1', NULL, NULL, '<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n</script>', '1613881674773120698.jpg', '2.00', NULL, '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/602f3cb99c4f165d47c4d425/1eus8adqv\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', 0x3c703e3c7370616e20636c6173733d22636f6f6b69652d636f6e73656e745f5f6d65737361676522207374796c653d226d617267696e3a203070783b2070616464696e673a203070783b20626f726465723a203070783b20766572746963616c2d616c69676e3a20626173656c696e653b20666f6e742d66616d696c793a20506f7070696e732c2073616e732d73657269663b223e596f757220657870657269656e6365206f6e207468697320736974652077696c6c20626520696d70726f76656420627920616c6c6f77696e6720636f6f6b6965732e3c2f7370616e3e3c62723e3c2f703e, NULL, NULL, 1, 1, 0, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '2021-04-23 15:01:35', 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '234234546', NULL, NULL),
(3, '3', 'theme1', 'NextIT - Multipurpose Website  & Business  Management System CMS', '0C59DB', '6032468f53837.png', '6032468f56b72.png', '6032468f59c07.png', '6032468f5d9d7.jpg', '+33 454 342 654,+55 344 213 345', 'demoemail@gmail.com,testemail@gmail.com', 'devmamun8@gmail.com', '2963  University Drive, Chicago', 'Sat - Wed / 10AM - 7PM', 'The web has changed a lot since Vitaly posted his first article back in 2006. The team at Smashing has changed too, as have the things that we bring to our community onferences, books, and our membershipe.', '6032468f61813.jpg', 'business,agency,it,company,nextit,corporate,service,degital service,creative service', 'Nextit - Multipurpose Website  and Business  Management System CMS', '<p>Copyright by @ GeniusDevs - 2021</p>', NULL, 'nextit-1', NULL, NULL, '<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n</script>', '1613881674773120698.jpg', '2.00', NULL, '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/602f3cb99c4f165d47c4d425/1eus8adqv\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', 0x3c703e3c7370616e20636c6173733d22636f6f6b69652d636f6e73656e745f5f6d65737361676522207374796c653d226d617267696e3a203070783b2070616464696e673a203070783b20626f726465723a203070783b20766572746963616c2d616c69676e3a20626173656c696e653b20666f6e742d66616d696c793a20506f7070696e732c2073616e732d73657269663b223e596f757220657870657269656e6365206f6e207468697320736974652077696c6c20626520696d70726f76656420627920616c6c6f77696e6720636f6f6b6965732e3c2f7370616e3e3c62723e3c2f703e, NULL, NULL, 1, 1, 0, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '2021-04-23 15:01:39', 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '234234546', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `language_id`, `status`, `image`, `subtitle`, `title`, `text`, `button_text`, `button_link`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '16127970561434260582.jpg', 'IT Business Consulting', 'Best IT Soluations Provider Agency', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremda tium totam rem aperiam eaque ipsa quae ab illo inventore veritatis', 'Our Services', '#', 0, '2021-02-08 08:27:37', '2021-02-21 04:43:30'),
(3, '1', '1', '1612795438968642221.jpg', 'IT Business Consulting', 'Best IT Soluations Provider Agency', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremda tium totam rem aperiam eaque ipsa quae ab illo inventore veritatis', 'Our Services', '#', 1, '2021-02-08 08:27:37', '2021-02-21 04:42:52'),
(4, '1', '1', '1613904115990305225.jpg', 'IT Business Consulting', 'Best IT Soluations Provider Agency', 'Sed ut perspiciatis unde omnis iste natus error si...\r\n', 'Our Services', '#', 0, '2021-02-08 08:27:37', '2021-02-21 04:41:55'),
(5, '2', '1', '16127970561434260582.jpg', 'استشارات أعمال تكنولوجيا المعلومات', 'أفضل وكالة مزود لحلول تكنولوجيا المعلومات', 'ضع علامة على العرق في كل مكان خطأ ناتج عن الجلوس في حالة من الاتهام بالآخرين', 'خدماتنا', '#', 0, '2021-02-08 08:27:37', '2021-02-21 04:43:30'),
(6, '2', '1', '1612795438968642221.jpg', 'استشارات أعمال تكنولوجيا المعلومات', 'أفضل وكالة مزود لحلول تكنولوجيا المعلومات', 'ضع علامة على العرق في كل مكان خطأ ناتج عن الجلوس في حالة من الاتهام بالآخرين', 'خدماتنا', '#', 1, '2021-02-08 08:27:37', '2021-02-21 04:42:52'),
(7, '2', '1', '1613904115990305225.jpg', 'استشارات أعمال تكنولوجيا المعلومات', 'أفضل وكالة مزود لحلول تكنولوجيا المعلومات', 'ضع علامة على العرق في كل مكان خطأ ناتج عن الجلوس في حالة من الاتهام بالآخرين', 'خدماتنا', '#', 0, '2021-02-08 08:27:37', '2021-02-21 04:46:09'),
(8, '3', '1', '16127970561434260582.jpg', 'आईटी व्यापार परामर्श', 'सर्वश्रेष्ठ आईटी समाधान प्रदाता एजेंसी', 'सेड यूटिसियाटिस यूड ओम्निस इस् ट नटस एरर वल्प्टेटम एक्सीसेंटियम डोलरमेडा टियम टोटम रेम एपरियम ईक ipsa क्वाले अब इलो इनवोर वेरिटेट', 'हमारी सेवाएँ', '#', 0, '2021-02-08 08:27:37', '2021-02-21 04:43:30'),
(9, '3', '1', '1612795438968642221.jpg', 'आईटी व्यापार परामर्श', 'सर्वश्रेष्ठ आईटी समाधान प्रदाता एजेंसी', 'सेड यूटिसियाटिस यूड ओम्निस इस् ट नटस एरर वल्प्टेटम एक्सीसेंटियम डोलरमेडा टियम टोटम रेम एपरियम ईक ipsa क्वाले अब इलो इनवोर वेरिटेट', 'हमारी सेवाएँ', '#', 1, '2021-02-08 08:27:37', '2021-02-21 04:42:52'),
(10, '3', '1', '1613904115990305225.jpg', 'आईटी व्यापार परामर्श', 'सर्वश्रेष्ठ आईटी समाधान प्रदाता एजेंसी', 'सेड यूटिसियाटिस यूड ओम्निस इस् ट नटस एरर वल्प्टेटम एक्सीसेंटियम डोलरमेडा टियम टोटम रेम एपरियम ईक ipsa क्वाले अब इलो इनवोर वेरिटेट', 'हमारी सेवाएँ', '#', 0, '2021-02-08 08:27:37', '2021-02-21 04:41:55');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `icon`, `url`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, 'fab fa-youtube', 'https://codecanyon.net/user/geniusdevs/portfolio', 0, '2021-02-14 03:17:51', '2021-02-14 03:17:51'),
(2, 'fab fa-linkedin-in', 'https://codecanyon.net/user/geniusdevs/portfolio', 0, '2021-02-14 03:18:04', '2021-02-14 03:18:04'),
(3, 'fab fa-twitter', 'https://codecanyon.net/user/geniusdevs/portfolio', 0, '2021-02-14 03:18:16', '2021-02-14 03:18:16'),
(4, 'fab fa-facebook-f', 'https://codecanyon.net/user/geniusdevs/portfolio', 0, '2021-02-14 03:18:24', '2021-02-14 03:18:24'),
(5, 'fab fa-instagram', 'https://codecanyon.net/user/geniusdevs/portfolio', 0, '2021-02-14 03:18:53', '2021-02-14 03:18:53');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dagenation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `icon1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `language_id`, `status`, `image`, `name`, `dagenation`, `description`, `serial_number`, `icon1`, `icon2`, `icon3`, `icon4`, `icon5`, `url1`, `url2`, `url3`, `url4`, `url5`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '16129338312071725073.jpg', 'D. Williamson', 'Founder', '<p>Does any industry face a more complex audience journey and marketing sales process than B2B technology? Consider the number of people who influence a sale, the length of the decision-making cycle, the competing interests of the people who purchase, implement, manage, and use the technology. It’s a lot meaningful content here.&nbsp; As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​<br></p>', 0, 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-behance', 'fab fa-linkedin-in', NULL, 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', NULL, '2021-02-09 22:50:20', '2021-02-09 23:11:44'),
(2, 1, 1, '16129338221686840959.jpg', 'D. Williamson', 'Founder', '<p>Does any industry face a more complex audience journey and marketing sales process than B2B technology? Consider the number of people who influence a sale, the length of the decision-making cycle, the competing interests of the people who purchase, implement, manage, and use the technology. It’s a lot meaningful content here.&nbsp; As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​<br></p>', 0, 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-behance', 'fab fa-linkedin-in', NULL, 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', NULL, '2021-02-09 22:50:20', '2021-02-09 23:11:39'),
(3, 1, 1, '1612933813754845667.jpg', 'D. Williamson', 'Founder', '<p>Does any industry face a more complex audience journey and marketing sales process than B2B technology? Consider the number of people who influence a sale, the length of the decision-making cycle, the competing interests of the people who purchase, implement, manage, and use the technology. It’s a lot meaningful content here.&nbsp; As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​<br></p>', 0, 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-behance', 'fab fa-linkedin-in', NULL, 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', NULL, '2021-02-09 22:50:20', '2021-02-09 23:11:33'),
(4, 1, 1, '1612933803370198115.jpg', 'D. Williamson', 'Founder', '<p>Does any industry face a more complex audience journey and marketing sales process than B2B technology? Consider the number of people who influence a sale, the length of the decision-making cycle, the competing interests of the people who purchase, implement, manage, and use the technology. It’s a lot meaningful content here.&nbsp; As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​<br></p>', 0, 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-behance', 'fab fa-linkedin-in', NULL, 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', NULL, '2021-02-09 22:50:20', '2021-02-09 23:11:28'),
(5, 1, 1, '16129337911260741882.jpg', 'D. Williamson', 'Founder', '<p>Does any industry face a more complex audience journey and marketing sales process than B2B technology? Consider the number of people who influence a sale, the length of the decision-making cycle, the competing interests of the people who purchase, implement, manage, and use the technology. It’s a lot meaningful content here.&nbsp; As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​<br></p>', 0, 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-behance', 'fab fa-linkedin-in', NULL, 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', NULL, '2021-02-09 22:50:20', '2021-02-09 23:11:22'),
(6, 1, 1, '16129337752084136888.jpg', 'D. Williamson', 'Founder', '<p>Does any industry face a more complex audience journey and marketing sales process than B2B technology? Consider the number of people who influence a sale, the length of the decision-making cycle, the competing interests of the people who purchase, implement, manage, and use the technology. It’s a lot meaningful content here.&nbsp; As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​<br></p>', 0, 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-behance', 'fab fa-linkedin-in', NULL, 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', NULL, '2021-02-09 22:50:20', '2021-02-09 23:11:16'),
(7, 1, 1, '16129337621309526882.jpg', 'D. Williamson', 'Founder', '<p>Does any industry face a more complex audience journey and marketing sales process than B2B technology? Consider the number of people who influence a sale, the length of the decision-making cycle, the competing interests of the people who purchase, implement, manage, and use the technology. It’s a lot meaningful content here.&nbsp; As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​<br></p>', 0, 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-behance', 'fab fa-linkedin-in', NULL, 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', NULL, '2021-02-09 22:50:20', '2021-02-09 23:11:10'),
(8, 1, 1, '16129337511015110346.jpg', 'D. Williamson', 'Founder', '<p>Does any industry face a more complex audience journey and marketing sales process than B2B technology? Consider the number of people who influence a sale, the length of the decision-making cycle, the competing interests of the people who purchase, implement, manage, and use the technology. It’s a lot meaningful content here.&nbsp; As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​<br></p>', 0, 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-behance', 'fab fa-linkedin-in', NULL, 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', NULL, '2021-02-09 22:50:20', '2021-02-09 23:11:04'),
(9, 1, 1, '1612933721528929386.jpg', 'D. Williamson', 'Founder', '<p>Does any industry face a more complex audience journey and marketing sales process than B2B technology? Consider the number of people who influence a sale, the length of the decision-making cycle, the competing interests of the people who purchase, implement, manage, and use the technology. It’s a lot meaningful content here.&nbsp; As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​<br></p>', 0, 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-behance', NULL, NULL, 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', NULL, NULL, '2021-02-09 22:50:20', '2021-02-16 08:11:50'),
(28, 2, 1, '16129338312071725073.jpg', 'D. Williamson', 'Founder', '<p>Does any industry face a more complex audience journey and marketing sales process than B2B technology? Consider the number of people who influence a sale, the length of the decision-making cycle, the competing interests of the people who purchase, implement, manage, and use the technology. It’s a lot meaningful content here.&nbsp; As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​<br></p>', 0, 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-behance', 'fab fa-linkedin-in', NULL, 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', NULL, '2021-02-09 22:50:20', '2021-02-09 23:11:44'),
(29, 2, 1, '16129338221686840959.jpg', 'D. Williamson', 'Founder', '<p>Does any industry face a more complex audience journey and marketing sales process than B2B technology? Consider the number of people who influence a sale, the length of the decision-making cycle, the competing interests of the people who purchase, implement, manage, and use the technology. It’s a lot meaningful content here.&nbsp; As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​<br></p>', 0, 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-behance', 'fab fa-linkedin-in', NULL, 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', NULL, '2021-02-09 22:50:20', '2021-02-09 23:11:39'),
(30, 2, 1, '1612933813754845667.jpg', 'D. Williamson', 'Founder', '<p>Does any industry face a more complex audience journey and marketing sales process than B2B technology? Consider the number of people who influence a sale, the length of the decision-making cycle, the competing interests of the people who purchase, implement, manage, and use the technology. It’s a lot meaningful content here.&nbsp; As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​<br></p>', 0, 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-behance', 'fab fa-linkedin-in', NULL, 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', NULL, '2021-02-09 22:50:20', '2021-02-09 23:11:33'),
(31, 3, 1, '16129338312071725073.jpg', 'D. Williamson', 'Founder', '<p>Does any industry face a more complex audience journey and marketing sales process than B2B technology? Consider the number of people who influence a sale, the length of the decision-making cycle, the competing interests of the people who purchase, implement, manage, and use the technology. It’s a lot meaningful content here.&nbsp; As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​<br></p>', 0, 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-behance', 'fab fa-linkedin-in', NULL, 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', NULL, '2021-02-09 22:50:20', '2021-02-09 23:11:44'),
(32, 3, 1, '16129338221686840959.jpg', 'D. Williamson', 'Founder', '<p>Does any industry face a more complex audience journey and marketing sales process than B2B technology? Consider the number of people who influence a sale, the length of the decision-making cycle, the competing interests of the people who purchase, implement, manage, and use the technology. It’s a lot meaningful content here.&nbsp; As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​<br></p>', 0, 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-behance', 'fab fa-linkedin-in', NULL, 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', NULL, '2021-02-09 22:50:20', '2021-02-09 23:11:39'),
(33, 3, 1, '1612933813754845667.jpg', 'D. Williamson', 'Founder', '<p>Does any industry face a more complex audience journey and marketing sales process than B2B technology? Consider the number of people who influence a sale, the length of the decision-making cycle, the competing interests of the people who purchase, implement, manage, and use the technology. It’s a lot meaningful content here.&nbsp; As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​<br></p>', 0, 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-behance', 'fab fa-linkedin-in', NULL, 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', NULL, '2021-02-09 22:50:20', '2021-02-09 23:11:33');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `language_id`, `status`, `name`, `position`, `message`, `image`, `rating`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'mamun', 'CEO of Apple', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '16133882602016629985.png', '5', 0, '2021-02-15 05:24:20', '2021-02-15 05:24:20'),
(2, 1, NULL, 'Genius Mamun', 'CEO of Apple', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '16133882721147818251.png', '5', 0, '2021-02-15 05:24:32', '2021-02-15 05:24:32'),
(3, 1, NULL, 'Lisa', 'CEO of Apple', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '1613388285721028944.png', '5', 1, '2021-02-15 05:24:45', '2021-02-15 05:29:28'),
(4, 2, NULL, 'mamun', 'CEO of Apple', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '16133882602016629985.png', '5', 0, '2021-02-15 05:24:20', '2021-02-15 05:24:20'),
(5, 2, NULL, 'Genius Mamun', 'CEO of Apple', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '16133882721147818251.png', '5', 0, '2021-02-15 05:24:32', '2021-02-15 05:24:32'),
(6, 2, NULL, 'Lisa', 'CEO of Apple', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '1613388285721028944.png', '5', 1, '2021-02-15 05:24:45', '2021-02-15 05:29:28'),
(7, 3, NULL, 'mamun', 'CEO of Apple', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '16133882602016629985.png', '5', 0, '2021-02-15 05:24:20', '2021-02-15 05:24:20'),
(8, 3, NULL, 'Genius Mamun', 'CEO of Apple', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '16133882721147818251.png', '5', 0, '2021-02-15 05:24:32', '2021-02-15 05:24:32'),
(9, 3, NULL, 'Lisa', 'CEO of Apple', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '1613388285721028944.png', '5', 1, '2021-02-15 05:24:45', '2021-02-15 05:29:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `email_verify_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `why_selects`
--

CREATE TABLE `why_selects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `why_selects`
--

INSERT INTO `why_selects` (`id`, `language_id`, `status`, `title`, `icon`, `text`, `serial_number`, `created_at`, `updated_at`) VALUES
(2, '1', 1, 'Beneficial Strategies', 'fal fa-server', 'Sed ut perspiciatis unde omnis iste natus error voluptatem accusantium doloremque laudan-tium totam.', 0, '2021-02-09 08:27:19', '2021-02-17 06:14:34'),
(3, '1', 1, 'Automated Software', 'fal fa-tools', 'Sed ut perspiciatis unde omnis iste natus error voluptatem accusantium doloremque laudan-tium totam.', 0, '2021-02-09 08:27:45', '2021-02-17 06:14:29'),
(4, '1', 1, 'Modify Whole System', 'fal fa-laptop-code', 'Sed ut perspiciatis unde omnis iste natus error voluptatem accusantium doloremque laudan-tium totam.', 0, '2021-02-09 08:51:00', '2021-02-17 06:14:25'),
(5, '2', 1, 'Beneficial Strategies', 'fal fa-server', 'Sed ut perspiciatis unde omnis iste natus error voluptatem accusantium doloremque laudan-tium totam.', 0, '2021-02-09 08:27:19', '2021-02-17 06:14:34'),
(6, '2', 1, 'Automated Software', 'fal fa-tools', 'Sed ut perspiciatis unde omnis iste natus error voluptatem accusantium doloremque laudan-tium totam.', 0, '2021-02-09 08:27:45', '2021-02-17 06:14:29'),
(7, '2', 1, 'Modify Whole System', 'fal fa-laptop-code', 'Sed ut perspiciatis unde omnis iste natus error voluptatem accusantium doloremque laudan-tium totam.', 0, '2021-02-09 08:51:00', '2021-02-17 06:14:25'),
(8, '3', 1, 'Beneficial Strategies', 'fal fa-server', 'Sed ut perspiciatis unde omnis iste natus error voluptatem accusantium doloremque laudan-tium totam.', 0, '2021-02-09 08:27:19', '2021-02-17 06:14:34'),
(9, '3', 1, 'Automated Software', 'fal fa-tools', 'Sed ut perspiciatis unde omnis iste natus error voluptatem accusantium doloremque laudan-tium totam.', 0, '2021-02-09 08:27:45', '2021-02-17 06:14:29'),
(10, '3', 1, 'Modify Whole System', 'fal fa-laptop-code', 'Sed ut perspiciatis unde omnis iste natus error voluptatem accusantium doloremque laudan-tium totam.', 0, '2021-02-09 08:51:00', '2021-02-17 06:14:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `archives`
--
ALTER TABLE `archives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backups`
--
ALTER TABLE `backups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bcategories`
--
ALTER TABLE `bcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daynamicpages`
--
ALTER TABLE `daynamicpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emailsettings`
--
ALTER TABLE `emailsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flinks`
--
ALTER TABLE `flinks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio_images`
--
ALTER TABLE `portfolio_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sectiontitles`
--
ALTER TABLE `sectiontitles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `why_selects`
--
ALTER TABLE `why_selects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `archives`
--
ALTER TABLE `archives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `backups`
--
ALTER TABLE `backups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bcategories`
--
ALTER TABLE `bcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `daynamicpages`
--
ALTER TABLE `daynamicpages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `emailsettings`
--
ALTER TABLE `emailsettings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `flinks`
--
ALTER TABLE `flinks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `portfolio_images`
--
ALTER TABLE `portfolio_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sectiontitles`
--
ALTER TABLE `sectiontitles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `why_selects`
--
ALTER TABLE `why_selects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
