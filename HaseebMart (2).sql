-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 16, 2023 at 12:08 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `HaseebMart`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `short_title`, `short_description`, `long_description`, `about_image`, `created_at`, `updated_at`) VALUES
(1, 'Mens', 'Men\'s Cloth will available here', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum generators on the Internet tend to repeat predefined chunks as necessary,', '<p class=\"desc\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated lorem ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n<ul class=\"about__exp__list\">\r\n<li>\r\n<h5 class=\"title\">User experience design - (Product Design)</h5>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable. If you are going to unseery.</p>\r\n</li>\r\n<li>\r\n<h5 class=\"title\">Web and user interface design - Development</h5>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable. If you are going to use a passage of lorem ipsum.</p>\r\n</li>\r\n<li>\r\n<h5 class=\"title\">Interaction design - Animation</h5>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable.</p>\r\n</li>\r\n</ul>', 'upload/home_about/1750762694232898.png', NULL, '2023-02-14 03:18:55');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_category_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `blog_category_id`, `blog_title`, `blog_image`, `blog_tags`, `blog_description`, `created_at`, `updated_at`) VALUES
(9, '5', 'Inventory  Management  Function', 'upload/blog/1753438677158128.jpeg', 'JAVA', '<p>this is test category</p>', '2022-12-28 01:37:11', '2023-02-14 02:47:02'),
(12, '4', 'Inventory  Management  System', 'upload/blog/1753929158135774.jpg', 'PHp,Laravel', '<div class=\"wDYxhc\" lang=\"en-PK\" data-md=\"50\" data-hveid=\"CFIQAA\" data-ved=\"2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQkCl6BAhSEAA\">\r\n<div class=\"PZPZlf hb8SAc\" data-attrid=\"description\" data-hveid=\"CFIQAQ\" data-ved=\"2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQziAoAHoECFIQAQ\">\r\n<div>\r\n<div class=\"kno-rdesc\">Laravel is a free and open-source PHP web framework, created by Taylor Otwell and intended for the development of web applications following the model&ndash;view&ndash;controller architectural pattern and based on Symfony.&nbsp;<a class=\"ruhjFe NJLBac fl\" href=\"https://en.wikipedia.org/wiki/Laravel\" data-ved=\"2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQmhN6BAhSEAI\">Wikipedia</a></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"wDYxhc\" lang=\"en-PK\" data-attrid=\"hw:/collection/software:appear date\" data-md=\"1001\" data-hveid=\"CGQQAA\" data-ved=\"2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQkCl6BAhkEAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQyxMoAHoECGQQAQ\">\r\n<div class=\"rVusze\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALiCzsYEuu3FevIr5Rv7Fb-9_o_B6vWN0Q:1672677121542&amp;q=laravel+initial+release+date&amp;stick=H4sIAAAAAAAAAOPgE-LSz9U3yCqvNDSx0FLOKLfST87PyUlNLsnMz9Mvzk8rKU8sSrVKLChITSxSSEksSV3EKpOTWJRYlpqjkJmXWZKZmKNQlJqTmlicCpYGAPunS95SAAAA&amp;sa=X&amp;ved=2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQ6BMoAHoECGQQAg\" data-ved=\"2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQ6BMoAHoECGQQAg\">Initial release date</a><span class=\"eTVOZd\">:</span>&nbsp;</span><span class=\"LrzXr kno-fv wHYlTd z8gr9e\">June 2011</span></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"wDYxhc\" lang=\"en-PK\" data-attrid=\"kc:/computer/software:original_author\" data-md=\"1001\" data-hveid=\"CGMQAA\" data-ved=\"2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQkCl6BAhjEAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQyxMoAHoECGMQAQ\">\r\n<div class=\"rVusze\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALiCzsYEuu3FevIr5Rv7Fb-9_o_B6vWN0Q:1672677121542&amp;q=laravel+original+author&amp;stick=H4sIAAAAAAAAAOPgE-LSz9U3yCqvNDSx0FLNTrbST87PLSgtSS3SL85PKylPLEq1yi_KTM_MS8yJTywtycgvWsQqnpNYlFiWmqMAk1GAyAAA4oH6HU8AAAA&amp;sa=X&amp;ved=2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQ6BMoAHoECGMQAg\" data-ved=\"2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQ6BMoAHoECGMQAg\">Original author</a><span class=\"eTVOZd\">:</span>&nbsp;</span><span class=\"LrzXr kno-fv wHYlTd z8gr9e\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALiCzsYEuu3FevIr5Rv7Fb-9_o_B6vWN0Q:1672677121542&amp;q=Taylor+Otwell&amp;stick=H4sIAAAAAAAAAOPgE-LSz9U3yCqvNDSxUOLVT9c3NEwqN43PtciJ11LNTrbST87PLSgtSS3SL85PKylPLEq1yi_KTM_MS8yJTywtycgvWsTKG5JYmZNfpOBfUp6ak7ODlXEXOxMHAwDNfpO3XAAAAA&amp;sa=X&amp;ved=2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQmxMoAXoECGMQAw\" data-ved=\"2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQmxMoAXoECGMQAw\">Taylor Otwell</a></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"wDYxhc\" lang=\"en-PK\" data-attrid=\"kc:/computer/software:developer\" data-md=\"1001\" data-hveid=\"CGUQAA\" data-ved=\"2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQkCl6BAhlEAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQyxMoAHoECGUQAQ\">\r\n<div class=\"rVusze\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALiCzsYEuu3FevIr5Rv7Fb-9_o_B6vWN0Q:1672677121542&amp;q=laravel+developer&amp;stick=H4sIAAAAAAAAAOPgE-LSz9U3yCqvNDSx0JLPTrbST87PLSgtSS3SL85PKylPLEq1SkktS83JL0gtWsQqmJNYlAjkKcDFAKblFy1DAAAA&amp;sa=X&amp;ved=2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQ6BMoAHoECGUQAg\" data-ved=\"2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQ6BMoAHoECGUQAg\">Developer</a><span class=\"eTVOZd\">:</span>&nbsp;</span><span class=\"LrzXr kno-fv wHYlTd z8gr9e\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALiCzsYEuu3FevIr5Rv7Fb-9_o_B6vWN0Q:1672677121542&amp;q=Taylor+Otwell&amp;stick=H4sIAAAAAAAAAOPgE-LSz9U3yCqvNDSxUOLVT9c3NEwqN43PtciJ15LPTrbST87PLSgtSS3SL85PKylPLEq1SkktS83JL0gtWsTKG5JYmZNfpOBfUp6ak7ODlXEXOxMHAwBh4QIwVgAAAA&amp;sa=X&amp;ved=2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQmxMoAXoECGUQAw\" data-ved=\"2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQmxMoAXoECGUQAw\">Taylor Otwell</a></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"wDYxhc\" lang=\"en-PK\" data-attrid=\"ss:/webfacts:repositori\" data-md=\"1001\" data-hveid=\"CFQQAA\" data-ved=\"2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQkCl6BAhUEAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQyxMoAHoECFQQAQ\">\r\n<div class=\"rVusze\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALiCzsYEuu3FevIr5Rv7Fb-9_o_B6vWN0Q:1672677121542&amp;q=laravel+repository&amp;sa=X&amp;ved=2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQ6BMoAHoECFQQAg\" data-ved=\"2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQ6BMoAHoECFQQAg\">Repository</a><span class=\"eTVOZd\">:</span>&nbsp;</span><span class=\"LrzXr kno-fv wHYlTd z8gr9e\">github.com/laravel/framework</span></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"wDYxhc\" lang=\"en-PK\" data-attrid=\"ss:/webfacts:licens\" data-md=\"1001\" data-hveid=\"CFgQAA\" data-ved=\"2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQkCl6BAhYEAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQyxMoAHoECFgQAQ\">\r\n<div class=\"rVusze\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALiCzsYEuu3FevIr5Rv7Fb-9_o_B6vWN0Q:1672677121542&amp;q=laravel+license&amp;sa=X&amp;ved=2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQ6BMoAHoECFgQAg\" data-ved=\"2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQ6BMoAHoECFgQAg\">License</a><span class=\"eTVOZd\">:</span>&nbsp;</span><span class=\"LrzXr kno-fv wHYlTd z8gr9e\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALiCzsYEuu3FevIr5Rv7Fb-9_o_B6vWN0Q:1672677121542&amp;q=MIT+License&amp;stick=H4sIAAAAAAAAAONgVuLQz9U3MCkryF3Eyu3rGaLgk5mcmlecCgA_x3mRGgAAAA&amp;sa=X&amp;ved=2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQmxMoAXoECFgQAw\" data-ved=\"2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQmxMoAXoECFgQAw\">MIT License</a></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"wDYxhc\" lang=\"en-PK\" data-attrid=\"ss:/webfacts:stabl_releas\" data-md=\"1001\" data-hveid=\"CFUQAA\" data-ved=\"2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQkCl6BAhVEAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQyxMoAHoECFUQAQ\">\r\n<div class=\"rVusze\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALiCzsYEuu3FevIr5Rv7Fb-9_o_B6vWN0Q:1672677121542&amp;q=laravel+stable+release&amp;sa=X&amp;ved=2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQ6BMoAHoECFUQAg\" data-ved=\"2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQ6BMoAHoECFUQAg\">Stable release</a><span class=\"eTVOZd\">:</span>&nbsp;</span><span class=\"LrzXr kno-fv wHYlTd z8gr9e\">9.38.0 / 1 November 2022; 60 days ago</span></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"wDYxhc\" lang=\"en-PK\" data-attrid=\"hw:/collection/software:programming language\" data-md=\"1001\" data-hveid=\"CFcQAA\" data-ved=\"2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQkCl6BAhXEAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQyxMoAHoECFcQAQ\">\r\n<div class=\"rVusze\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALiCzsYEuu3FevIr5Rv7Fb-9_o_B6vWN0Q:1672677121542&amp;q=laravel+programming+language&amp;stick=H4sIAAAAAAAAAOPgE-LSz9U3yCqvNDSx0NLJKLfST87PyUlNLsnMz9Mvzk8rKU8sSrUqKMpPL0rMzc3MS1fIScxLL01MT13EKpOTWJRYlpqjgE0aAHgr4NxbAAAA&amp;sa=X&amp;ved=2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQ6BMoAHoECFcQAg\" data-ved=\"2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQ6BMoAHoECFcQAg\">Programming language</a><span class=\"eTVOZd\">:</span>&nbsp;</span><span class=\"LrzXr kno-fv wHYlTd z8gr9e\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALiCzsYEuu3FevIr5Rv7Fb-9_o_B6vWN0Q:1672677121542&amp;q=PHP&amp;stick=H4sIAAAAAAAAAOPgE-LSz9U3yCqvNDSxUOIAsc0Mssu0dDLKrfST83NyUpNLMvPz9Ivz00rKE4tSrQqK8tOLEnNzM_PSFXIS89JLE9NTF7EyB3gE7GBl3MXOxMEAADnuyvpUAAAA&amp;sa=X&amp;ved=2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQmxMoAXoECFcQAw\" data-ved=\"2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQmxMoAXoECFcQAw\">PHP</a></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"wDYxhc NFQFxe viOShc LKPcQc\" lang=\"en-PK\" data-md=\"471\">\r\n<div class=\"mFVw3b\">\r\n<div class=\"a84NUc CQKTwc wDYxhc gtZZUc\" lang=\"en-PK\" data-md=\"407\">\r\n<div class=\"PZPZlf\" role=\"presentation\" data-attrid=\"okra/answer_panel/Log location\" data-hveid=\"CF4QAA\" data-ved=\"2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQh_0CegQIXhAA\">\r\n<div class=\"LjTgvd\" role=\"presentation\">\r\n<div class=\"wwfboe naFSC EmfKGc\" role=\"presentation\">\r\n<div id=\"_AQezY8zVIMWV9u8PxIWgmAE_53\" class=\"mWyH1d UgLoB\" tabindex=\"0\" role=\"button\" aria-controls=\"_AQezY8zVIMWV9u8PxIWgmAE_52\" aria-expanded=\"false\">\r\n<div>\r\n<div class=\"KA4pGd mDj5wd QTsT3e\" data-hveid=\"CF4QAQ\" data-ved=\"2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQ_JoDKAB6BAheEAE\"><span class=\"OS8yje oJc6P QTsT3e\">Log location</span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"a84NUc CQKTwc wDYxhc gtZZUc\" lang=\"en-PK\" data-md=\"407\">\r\n<div class=\"PZPZlf\" role=\"presentation\" data-attrid=\"okra/answer_panel/End of life\" data-hveid=\"CF8QAA\" data-ved=\"2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQh_0CegQIXxAA\">\r\n<div class=\"LjTgvd\" role=\"presentation\">\r\n<div class=\"wwfboe naFSC EmfKGc\" role=\"presentation\">\r\n<div id=\"_AQezY8zVIMWV9u8PxIWgmAE_48\" class=\"mWyH1d UgLoB\" tabindex=\"0\" role=\"button\" aria-controls=\"_AQezY8zVIMWV9u8PxIWgmAE_46\" aria-expanded=\"false\">\r\n<div>\r\n<div class=\"KA4pGd mDj5wd QTsT3e\" data-hveid=\"CF8QAQ\" data-ved=\"2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQ_JoDKAB6BAhfEAE\"><span class=\"OS8yje oJc6P QTsT3e\">End of life</span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2023-01-02 11:33:11', NULL),
(13, '5', 'Inventory', 'upload/blog/1753929213633403.jpeg', 'HTML,CSS,JAVA', '<div class=\"wDYxhc\" lang=\"en-PK\" data-md=\"50\" data-hveid=\"CFIQAA\" data-ved=\"2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQkCl6BAhSEAA\">\r\n<div class=\"PZPZlf hb8SAc\" data-attrid=\"description\" data-hveid=\"CFIQAQ\" data-ved=\"2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQziAoAHoECFIQAQ\">\r\n<div>\r\n<div class=\"kno-rdesc\">Laravel is a free and open-source PHP web framework, created by Taylor Otwell and intended for the development of web applications following the model&ndash;view&ndash;controller architectural pattern and based on Symfony.&nbsp;<a class=\"ruhjFe NJLBac fl\" href=\"https://en.wikipedia.org/wiki/Laravel\" data-ved=\"2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQmhN6BAhSEAI\">Wikipedia</a></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"wDYxhc\" lang=\"en-PK\" data-attrid=\"hw:/collection/software:appear date\" data-md=\"1001\" data-hveid=\"CGQQAA\" data-ved=\"2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQkCl6BAhkEAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQyxMoAHoECGQQAQ\">\r\n<div class=\"rVusze\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALiCzsYEuu3FevIr5Rv7Fb-9_o_B6vWN0Q:1672677121542&amp;q=laravel+initial+release+date&amp;stick=H4sIAAAAAAAAAOPgE-LSz9U3yCqvNDSx0FLOKLfST87PyUlNLsnMz9Mvzk8rKU8sSrVKLChITSxSSEksSV3EKpOTWJRYlpqjkJmXWZKZmKNQlJqTmlicCpYGAPunS95SAAAA&amp;sa=X&amp;ved=2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQ6BMoAHoECGQQAg\" data-ved=\"2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQ6BMoAHoECGQQAg\">Initial release date</a><span class=\"eTVOZd\">:</span>&nbsp;</span><span class=\"LrzXr kno-fv wHYlTd z8gr9e\">June 2011</span></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"wDYxhc\" lang=\"en-PK\" data-attrid=\"kc:/computer/software:original_author\" data-md=\"1001\" data-hveid=\"CGMQAA\" data-ved=\"2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQkCl6BAhjEAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQyxMoAHoECGMQAQ\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<div class=\"wDYxhc NFQFxe viOShc LKPcQc\" lang=\"en-PK\" data-md=\"471\">\r\n<div class=\"mFVw3b\">\r\n<div class=\"a84NUc CQKTwc wDYxhc gtZZUc\" lang=\"en-PK\" data-md=\"407\">\r\n<div class=\"PZPZlf\" role=\"presentation\" data-attrid=\"okra/answer_panel/End of life\" data-hveid=\"CF8QAA\" data-ved=\"2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQh_0CegQIXxAA\">\r\n<div class=\"LjTgvd\" role=\"presentation\">\r\n<div class=\"wwfboe naFSC EmfKGc\" role=\"presentation\">\r\n<div id=\"_AQezY8zVIMWV9u8PxIWgmAE_48\" class=\"mWyH1d UgLoB\" tabindex=\"0\" role=\"button\" aria-controls=\"_AQezY8zVIMWV9u8PxIWgmAE_46\" aria-expanded=\"false\">\r\n<div>\r\n<div class=\"KA4pGd mDj5wd QTsT3e\" data-hveid=\"CF8QAQ\" data-ved=\"2ahUKEwiM2pztp6n8AhXFiv0HHcQCCBMQ_JoDKAB6BAhfEAE\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2023-01-02 11:34:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `blog_category`, `created_at`, `updated_at`) VALUES
(3, 'PHP', NULL, NULL),
(4, 'Laravel', NULL, NULL),
(5, 'JAVASCRIPT', NULL, NULL),
(6, 'PHP', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_slides`
--

CREATE TABLE `home_slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_slide` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_slides`
--

INSERT INTO `home_slides` (`id`, `title`, `short_title`, `home_slide`, `video_url`, `created_at`, `updated_at`) VALUES
(1, 'Use straightforward words to describe your item. ...', 'Make full use of the available character limit by using strong keywords.', 'upload/home_slide/1750379061894835.png', 'https://www.youtube.com/watch?v=yqGsiBrr1ew&list=PLkGKV06sMGoofbvxt46mQ5JSrw67tbdiG', NULL, '2022-12-28 01:11:10');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2022_11_09_164336_create_home_slides_table', 2),
(8, '2022_11_25_071023_create_abouts_table', 3),
(10, '2022_12_01_104639_create_multi_images_table', 4),
(11, '2022_12_21_061411_create_portfolios_table', 5),
(12, '2022_12_27_071514_create_blog_categories_table', 6),
(14, '2022_12_27_101019_create_blogs_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `multi_images`
--

CREATE TABLE `multi_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `multi_images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_images`
--

INSERT INTO `multi_images` (`id`, `multi_images`, `created_at`, `updated_at`) VALUES
(2, 'upload/about_MultiImages/1751015238621547.jpeg', '2022-12-01 07:37:40', NULL),
(3, 'upload/about_MultiImages/1751015238754298.jpeg', '2022-12-01 07:37:40', NULL),
(4, 'upload/about_MultiImages/1751015238936992.jpeg', '2022-12-01 07:37:41', NULL),
(5, 'upload/about_MultiImages/1751015239250941.jpeg', '2022-12-01 07:37:41', NULL),
(6, 'upload/about_MultiImages/1751015239366760.jpg', '2022-12-01 07:37:41', NULL),
(7, 'upload/about_MultiImages/1751015239548328.jpg', '2022-12-01 07:37:41', NULL);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `portfolio_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `portfolio_name`, `portfolio_title`, `portfolio_image`, `portfolio_description`, `created_at`, `updated_at`) VALUES
(1, 'Studio Feixen 2', 'Top design portfolio examples for inspiration 2', 'upload/portfolio/1754007431658029.jpeg', '<p>Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable, creative experience to be truly ... License: MIT License Type: Web framework</p>', '2022-12-22 02:41:57', '2023-01-03 08:17:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `profile_image`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Admin', 'admin@admin.com', 'admin1', '202211061238wallpaperflare.com_wallpaper.jpg', '2022-08-31 11:43:11', '$2y$10$cGJ7yQLOd5Dt7TD/EzNFY.QzhdlMikoPe/TBe.fBdLP7iW1Qkjrdy', NULL, '2022-08-31 11:42:42', '2022-12-08 03:44:50'),
(3, 'admin1', 'admin@gmail.com', 'haseeb', NULL, '2022-09-02 09:20:47', '$2y$10$cF/QJrgAR3/ILhhtlLjaf.ThdCESJe.nfXWy0bik6Argyls/43TyK', NULL, '2022-09-02 09:20:23', '2022-09-02 09:20:47'),
(4, 'admin', 'InventryManager@gmail.com', 'InventryManager', '202302140733download (1).jpeg', '2023-01-26 07:08:33', '$2y$10$3KoGHgBSLbWe6c6eBNcgpel9wTXZuKS2eIms59KBLJl0HyWpeaZgi', NULL, '2023-01-26 07:07:26', '2023-02-14 02:33:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_slides`
--
ALTER TABLE `home_slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multi_images`
--
ALTER TABLE `multi_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_slides`
--
ALTER TABLE `home_slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `multi_images`
--
ALTER TABLE `multi_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
