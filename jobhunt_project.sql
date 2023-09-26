-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2023 at 12:07 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobhunt_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `photo`, `token`, `created_at`, `updated_at`) VALUES
(1, 'Mister Salifu Shahaban', 'snsalifu@gmail.com', '$2y$10$rvro5ntMcJWU2Bin9IL3Weah/6.V4ucDSIesg4H89KY2kAAwtZrmu', 'admin.jpg', '', NULL, '2023-05-31 11:03:59');

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_listing_ad` varchar(255) NOT NULL,
  `job_listing_ad_url` varchar(255) DEFAULT NULL,
  `job_listing_ad_status` varchar(255) NOT NULL,
  `company_listing_ad` varchar(255) NOT NULL,
  `company_listing_ad_url` varchar(255) DEFAULT NULL,
  `company_listing_ad_status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `job_listing_ad`, `job_listing_ad_url`, `job_listing_ad_status`, `company_listing_ad`, `company_listing_ad_url`, `company_listing_ad_status`, `created_at`, `updated_at`) VALUES
(1, 'job_listing_ad.png', NULL, 'Show', 'company_listing_ad.png', NULL, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `biography` text DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `marital_status` varchar(255) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `name`, `designation`, `username`, `email`, `password`, `token`, `photo`, `biography`, `phone`, `country`, `address`, `state`, `city`, `zip_code`, `gender`, `marital_status`, `date_of_birth`, `website`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Peter Smith', 'PHP Developer', 'peter', 'peter@gmail.com', '$2y$10$1Mw0vTZ7vb37S4SAwbiMJeGWodibvBKnlUWOKR0M6ek3yc0Lgnxii', '', 'candidate_photo_1692526008.jpg', '<p style=\"border: 0px solid #393e40; box-sizing: border-box; --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-scroll-snap-strictness: proximity; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --darkreader-bg--tw-ring-offset-width: 0px; --darkreader-bg--tw-ring-offset-color: #181a1b; --darkreader-bg--tw-ring-color: rgba(55, 71, 131, 0.5); --darkreader-bg--tw-ring-offset-shadow: 0 0 transparent; --darkreader-bg--tw-ring-shadow: 0 0 transparent; --darkreader-bg--tw-shadow: 0 0 transparent; margin: 1.25em 0px; color: #cecac3; font-family: S&ouml;hne, ui-sans-serif, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, \'Helvetica Neue\', Arial, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; white-space-collapse: preserve; background-color: #393e40; --darkreader-inline-border-top: #786f63; --darkreader-inline-border-right: #786f63; --darkreader-inline-border-bottom: #786f63; --darkreader-inline-border-left: #786f63; --darkreader-inline-color: #c6c1b9; --darkreader-inline-bgcolor: #2e3133;\" data-darkreader-inline-border-top=\"\" data-darkreader-inline-border-right=\"\" data-darkreader-inline-border-bottom=\"\" data-darkreader-inline-border-left=\"\" data-darkreader-inline-color=\"\" data-darkreader-inline-bgcolor=\"\">Introduction: Peter\'s life is a testament to the power of curiosity and creativity. From a young age, he displayed an insatiable thirst for knowledge and an innate ability to transform his ideas into reality. Through a series of pivotal moments and dedicated efforts, Peter\'s journey has been marked by innovation, growth, and a commitment to making a positive impact on the world.</p>\r\n<p style=\"border: 0px solid #393e40; box-sizing: border-box; --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-scroll-snap-strictness: proximity; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --darkreader-bg--tw-ring-offset-width: 0px; --darkreader-bg--tw-ring-offset-color: #181a1b; --darkreader-bg--tw-ring-color: rgba(55, 71, 131, 0.5); --darkreader-bg--tw-ring-offset-shadow: 0 0 transparent; --darkreader-bg--tw-ring-shadow: 0 0 transparent; --darkreader-bg--tw-shadow: 0 0 transparent; margin: 1.25em 0px; color: #cecac3; font-family: S&ouml;hne, ui-sans-serif, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, \'Helvetica Neue\', Arial, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; white-space-collapse: preserve; background-color: #393e40; --darkreader-inline-border-top: #786f63; --darkreader-inline-border-right: #786f63; --darkreader-inline-border-bottom: #786f63; --darkreader-inline-border-left: #786f63; --darkreader-inline-color: #c6c1b9; --darkreader-inline-bgcolor: #2e3133;\" data-darkreader-inline-border-top=\"\" data-darkreader-inline-border-right=\"\" data-darkreader-inline-border-bottom=\"\" data-darkreader-inline-border-left=\"\" data-darkreader-inline-color=\"\" data-darkreader-inline-bgcolor=\"\">Early Years and Curious Mind: Born into a family that valued education and exploration, Peter\'s curiosity was nurtured from the very beginning. As a child, he was often found engrossed in books, eager to learn about a wide range of subjects. His insatiable appetite for knowledge led him to excel academically and earn recognition among his peers and teachers.</p>\r\n<p style=\"border: 0px solid #393e40; box-sizing: border-box; --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-scroll-snap-strictness: proximity; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --darkreader-bg--tw-ring-offset-width: 0px; --darkreader-bg--tw-ring-offset-color: #181a1b; --darkreader-bg--tw-ring-color: rgba(55, 71, 131, 0.5); --darkreader-bg--tw-ring-offset-shadow: 0 0 transparent; --darkreader-bg--tw-ring-shadow: 0 0 transparent; --darkreader-bg--tw-shadow: 0 0 transparent; margin: 1.25em 0px; color: #cecac3; font-family: S&ouml;hne, ui-sans-serif, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, \'Helvetica Neue\', Arial, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; white-space-collapse: preserve; background-color: #393e40; --darkreader-inline-border-top: #786f63; --darkreader-inline-border-right: #786f63; --darkreader-inline-border-bottom: #786f63; --darkreader-inline-border-left: #786f63; --darkreader-inline-color: #c6c1b9; --darkreader-inline-bgcolor: #2e3133;\" data-darkreader-inline-border-top=\"\" data-darkreader-inline-border-right=\"\" data-darkreader-inline-border-bottom=\"\" data-darkreader-inline-border-left=\"\" data-darkreader-inline-color=\"\" data-darkreader-inline-bgcolor=\"\">The Spark of Creativity: Peter\'s natural curiosity was complemented by his growing penchant for creativity. He found joy in sketching, painting, and building intricate structures using everyday materials. This combination of curiosity and creativity set the stage for his future endeavors.</p>', '111-2231-14132', 'USA', 'Westborough, MA 01581', 'WASHINGTON DC', 'WASHINGTON', '212891', 'Male', 'Married', '1998-01-09', 'https://www.curityone.com', 1, '2023-06-12 18:09:01', '2023-08-20 10:06:48'),
(2, 'James Aziawa', 'PHP Developer', 'james', 'james@gmail.com', '$2y$10$OE//wPVJ5ziSon.uX58tbuKZoN5f.RtWzWztNdO4HaIOG.rFe33xS', '', 'candidate_photo_1687605228.jpg', '<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; text-align: justify; background-color: #181a1b; --darkreader-inline-bgcolor: #131516;\" data-darkreader-inline-bgcolor=\"\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</span></p>', '222-222-333', 'Canada', NULL, 'Toronto', 'Toronto', '34443', 'Male', 'Unmarried', '2000-11-22', 'www.abcmedialtd.com', 1, '2023-06-12 23:06:20', '2023-06-24 12:05:31'),
(3, 'Salifu Shahaban', 'Web Designer', 'snsalifu_', 'snsalifu@gmail.com', '$2y$10$bxTNDpwJ7W7nkWNHKsHVRuIuYC0wQfeVtOf.sHPdLXYQJV/tTQEeS', '', 'candidate_photo_1691516507.jpg', '<p>Veritus scaevola ad sit. Tantas persecuti ad mea, atqui nonumes prodesset an qui. Ne nibh oratio graece pro, in est civibus blandit argumentum. Populo commune qualisque ea eum, ius movet ubique officiis et, his persecuti intellegebat an. Ex dicant dissentias eos, labore constituam ei vix. Vim invenire qualisque cu.</p>\r\n<p>At purto omnis quo, id accusam repudiandae pro. Esse vide conclusionemque te eam. Pro te iusto tollit eloquentiam, ut inermis intellegat quo. Labitur nostrud te quo, utinam patrioque an eum. Et viris latine mei, ei maluisset sententiae consectetuer sea.</p>\r\n<p>Ne zril tritani facilisi duo. Adhuc mentitum omittantur ut ius, at timeam feugiat has. In habeo legimus eos, mel hinc wisi ipsum no. Esse aeque legere usu id, at duo mazim dolor causae.</p>', '423-294-6882', 'USA', '1006 Public Works Drive Chattanooga, TN 37408', 'Texas', 'texas', '232123', 'Male', 'Married', '2000-11-28', NULL, 1, '2023-06-13 22:46:07', '2023-08-08 17:41:47'),
(4, 'Jessica Cromwell', 'Data Science Analyst', 'Jessica', 'jessica@gmail.com', '$2y$10$c5arZa82Imn2ic6Z6iWGge3Pg1w7KoRF1/rKEGv3m5Im898jUOQVi', '', 'candidate_photo_1692995505.jpg', '<p style=\"box-sizing: border-box; margin: 0.5em 0em 0.6em; font-size: 16px; text-align: justify; padding: 0px; line-height: 1.6; font-family: Nunito, sans-serif;\">Laravel is an open-source PHP framework, which is robust and easy to understand. It follows a model-view-controller design pattern. Laravel reuses the existing components of different frameworks which helps in creating a web application. The web application thus designed is more structured and pragmatic.</p>\r\n<p style=\"box-sizing: border-box; margin: 0.5em 0em 0.6em; font-size: 16px; text-align: justify; padding: 0px; line-height: 1.6; font-family: Nunito, sans-serif;\">Laravel offers a rich set of functionalities which incorporates the basic features of PHP frameworks like CodeIgniter, Yii and other programming languages like Ruby on Rails. Laravel has a very rich set of features which will boost the speed of web development.</p>\r\n<p style=\"box-sizing: border-box; margin: 0.5em 0em 0.6em; font-size: 16px; text-align: justify; padding: 0px; line-height: 1.6; font-family: Nunito, sans-serif;\">If you are familiar with Core PHP and Advanced PHP, Laravel will make your task easier. It saves a lot time if you are planning to develop a website from scratch. Moreover, a website built in Laravel is secure and prevents several web attacks.</p>', '223-233-1123', 'Canada', '17 washington Ave, Accra', NULL, 'Toronto', '21133', 'Female', 'Divorced', '1992-12-09', 'www.arrowheadnews.com', 1, '2023-08-07 05:40:08', '2023-08-25 20:31:45'),
(5, 'Adam Johnson', 'PHP Developer', 'adam', 'adam@gmail.com', '$2y$10$05WfoK6RvqJGuS5hkoJRw.fzniWKKZaIk9Pvora7ZOVxFwRw89gDW', '', 'candidate_photo_1691514648.jpg', '<p>Lorem ipsum dolor sit amet, modus officiis postulant ei per. Alia aliquip tamquam eam no, vis et tota utinam appareat. Ex aperiam sententiae sea, eum audire accumsan cu, legimus volumus qui at. Dictas aliquip nam et, ei nemore viderer abhorreant eam, ei dolor aperiri sea. Summo nostro qualisque vel ad, cu pri laudem animal. Sint eros eu vim, mea duis vocibus ad.</p>\r\n<p>Omnes aeterno no pro, usu illud admodum deleniti at, splendide disputando ius eu. Minim omittam ea usu, eu accusam indoctum iracundia sit. Has consul primis an, soleat eleifend euripidis cu ius. Sed an enim omnes intellegebat.</p>', '707-602-7944', 'USA', '4239 Marietta Street San Jose, CA 95113', 'Phoenix, Arizona', 'Phoenix', '212891', 'Male', 'Unmarried', '2000-08-10', NULL, 1, '2023-08-07 07:00:32', '2023-08-08 17:10:48'),
(6, 'Mary Jane', NULL, 'mary', 'mary@gmail.com', '$2y$10$HmLH0RkC6/OfGNmpwOVVqO7umDOO9I1ILzgLQ1FW6uaQohqHgYOZq', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-08-07 07:04:15', '2023-08-07 07:04:42'),
(7, 'Mercy Johnson', NULL, 'mercy', 'mercy@gmail.com', '$2y$10$egrg.WSS5SHOQ4OC1k1xX.zKJP5O7mj9MUqVagB4NhbyPi9j5kW3e', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-08-07 10:01:15', '2023-08-21 10:26:41'),
(8, 'Destiny Daniels', 'Laravel Developer', 'destiny', 'destiny@gmail.com', '$2y$10$l/aO7HcQRWsWCUTFS5.n6eGZU/nzVzDk5BazKNrQCMb387X4DrSmu', '', 'candidate_photo_1691516173.jpg', '<p>At alia solum neglegentur qui, pri pertinax pertinacia necessitatibus an, delenit debitis te sit. Ut ignota vivendum singulis pri, an augue deleniti splendide per. Ad tamquam temporibus cum, et accusata expetenda nec. Id mei aliquip moderatius elaboraret, sit eu laboramus similique deseruisse. Noluisse intellegebat vix cu, mei ea errem solet.</p>\r\n<p>Ad quando probatus mei, eos graeci consectetuer ne. Has in simul affert. Ex solet atomorum moderatius sea, intellegat voluptatum at cum, zril deleniti complectitur vel ei. Quo ne vidit aliquando efficiendi, ad ipsum lorem necessitatibus per, ignota oportere cu sit.</p>', '714-286-5567', 'Canada', '1662 Maple Street Toronto, CA 90017', 'Toronto', 'Maples', '243323', 'Female', 'Unmarried', '1998-01-09', NULL, 1, '2023-08-07 10:06:42', '2023-08-08 17:36:13'),
(9, 'Afrifa Kojo', NULL, 'afrifa', 'afrifa@gmail.com', '$2y$10$M6P9w3x7Dr/oZ/m2cNSSJ.bR2/Ubr8JiuWso3hm2iNtnKrdavhFVi', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-08-29 15:04:19', '2023-08-29 15:05:11');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_applications`
--

CREATE TABLE `candidate_applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `cover_letter` text NOT NULL,
  `status` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_applications`
--

INSERT INTO `candidate_applications` (`id`, `candidate_id`, `job_id`, `cover_letter`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 8, 'Hi,\r\n\r\nI am an expert PHP Developer and I will like a job at your company.\r\n\r\nThank you', 'Applied', '2023-08-19 23:37:47', '2023-08-19 23:37:47'),
(2, 2, 8, 'Hi,\r\n\r\nI am an expert PHP Developer and I will like a job at your company.\r\n\r\nThank you', 'Applied', '2023-08-19 23:38:34', '2023-08-19 23:38:34'),
(3, 2, 8, 'Hi,\r\n\r\nI am an expert PHP Developer and I will like a job at your company.\r\n\r\nThank you', 'Applied', '2023-08-19 23:39:00', '2023-08-19 23:39:00'),
(4, 2, 8, 'Hi,\r\n\r\nI am an expert PHP Developer and I will like a job at your company.\r\n\r\nThank you', 'Applied', '2023-08-19 23:39:52', '2023-08-19 23:39:52'),
(5, 1, 1, 'Hi,\r\n\r\nI am a highly motivated and skilled Laravel developer. I have several years of experience and i would be glad to be given an opportunity to work in your higly esteemed company.\r\n\r\nThank you.\r\n\r\nbest regards', 'Approved', '2023-08-20 02:53:11', '2023-08-21 10:34:57'),
(6, 2, 7, 'Hi,\r\n \r\nI am very excited to apply here. Please check my CV and resume details to know  about me. Thank you', 'Applied', '2023-08-21 10:28:27', '2023-08-21 10:28:27'),
(8, 2, 19, 'Dear HR,\r\n\r\nI am writing to express my interest in the Sales Representative position that I saw advertised on [website]. I have been working in sales for the past five years, and I have a proven track record of success in generating new business and exceeding sales goals.\r\n\r\nIn my previous role at [previous company], I was responsible for developing and maintaining relationships with key accounts. I also managed a team of sales representatives and was responsible for setting and tracking sales goals. I consistently exceeded my sales goals by an average of 15%, and I was awarded the \"Top Sales Representative\" award two years in a row.\r\n\r\nI am a highly motivated and results-oriented individual with a strong work ethic. I am also an excellent communicator and have a proven ability to build relationships with customers. I am confident that I have the skills and experience necessary to be successful in this role.\r\n\r\nI am eager to learn more about the Sales Representative position at Nakib Associates. I am available for an interview at your earliest convenience. Thank you for your time and consideration.\r\n\r\nSincerely,\r\nJames.', 'Applied', '2023-08-29 14:12:44', '2023-08-29 14:12:44');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_awards`
--

CREATE TABLE `candidate_awards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `date` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_bookmarks`
--

CREATE TABLE `candidate_bookmarks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_bookmarks`
--

INSERT INTO `candidate_bookmarks` (`id`, `candidate_id`, `job_id`, `created_at`, `updated_at`) VALUES
(1, 1, 8, '2023-08-16 08:31:58', '2023-08-16 08:31:58'),
(4, 2, 8, '2023-08-19 19:06:54', '2023-08-19 19:06:54');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_education`
--

CREATE TABLE `candidate_education` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `level` text NOT NULL,
  `institute` text NOT NULL,
  `degree` text NOT NULL,
  `passing_year` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_education`
--

INSERT INTO `candidate_education` (`id`, `candidate_id`, `level`, `institute`, `degree`, `passing_year`, `created_at`, `updated_at`) VALUES
(1, 2, 'Secondary', 'Presby Boys\'', 'WASSCE', '2019', '2023-06-24 17:05:43', '2023-06-24 17:05:43'),
(3, 4, 'Undergraduate', 'Kwame Nkurmah University of science and Technology', 'Bsc Actuarial Science', '2020', '2023-08-25 20:24:57', '2023-08-25 20:24:57'),
(4, 2, 'Undergraduate', 'University of Cape Coast', 'Bsc Statistics', '2020', '2023-08-29 14:08:18', '2023-08-29 14:08:18');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_experiences`
--

CREATE TABLE `candidate_experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `company` text NOT NULL,
  `designation` text NOT NULL,
  `start_date` text NOT NULL,
  `end_date` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_experiences`
--

INSERT INTO `candidate_experiences` (`id`, `candidate_id`, `company`, `designation`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(2, 4, 'Kwame Nkurmah University of science and Technology', 'Teaching Assistant', '2020', '2021', '2023-08-25 20:26:07', '2023-08-25 20:26:07');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_resumes`
--

CREATE TABLE `candidate_resumes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `file` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_resumes`
--

INSERT INTO `candidate_resumes` (`id`, `candidate_id`, `name`, `file`, `created_at`, `updated_at`) VALUES
(2, 2, 'My CV', 'resume_1687733718.docx', '2023-06-25 22:55:18', '2023-06-25 22:55:18'),
(3, 1, 'My CV', 'resume_1691251837.pdf', '2023-08-05 16:10:37', '2023-08-05 16:10:37'),
(4, 4, 'My CV', 'resume_1692995204.docx', '2023-08-25 20:26:44', '2023-08-25 20:26:44'),
(5, 4, 'My CV', 'resume_1692995210.docx', '2023-08-25 20:26:50', '2023-08-25 20:26:50');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_skills`
--

CREATE TABLE `candidate_skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `percentage` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_skills`
--

INSERT INTO `candidate_skills` (`id`, `candidate_id`, `name`, `percentage`, `created_at`, `updated_at`) VALUES
(1, 2, 'Networking', '90', '2023-06-24 17:32:09', '2023-06-24 17:32:09'),
(2, 2, 'Laravel', '80', '2023-06-24 17:32:35', '2023-06-24 17:32:35'),
(4, 4, 'Data Science', '90', '2023-08-25 20:25:19', '2023-08-25 20:25:19');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `person_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `company_location_id` int(11) DEFAULT NULL,
  `company_industry_id` int(11) DEFAULT NULL,
  `company_size_id` int(11) DEFAULT NULL,
  `founded_on` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `oh_mon` varchar(255) DEFAULT NULL,
  `oh_tue` varchar(255) DEFAULT NULL,
  `oh_wed` varchar(255) DEFAULT NULL,
  `oh_thu` varchar(255) DEFAULT NULL,
  `oh_fri` varchar(255) DEFAULT NULL,
  `oh_sat` varchar(255) DEFAULT NULL,
  `oh_sun` varchar(255) DEFAULT NULL,
  `map_code` text DEFAULT NULL,
  `facebook` text DEFAULT NULL,
  `twitter` text DEFAULT NULL,
  `linkedin` text DEFAULT NULL,
  `instagram` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `company_name`, `person_name`, `username`, `email`, `password`, `token`, `logo`, `phone`, `address`, `company_location_id`, `company_industry_id`, `company_size_id`, `founded_on`, `website`, `description`, `oh_mon`, `oh_tue`, `oh_wed`, `oh_thu`, `oh_fri`, `oh_sat`, `oh_sun`, `map_code`, `facebook`, `twitter`, `linkedin`, `instagram`, `status`, `created_at`, `updated_at`) VALUES
(5, 'ABC Media Ltd', 'James Aziawa', 'james', 'james@gmail.com', '$2y$10$NKpkpdOFlB5XEN05aJFbzOCJhgNh.k9Y5MWIIaFQG5XCrfcU/yJoS', '', 'company_logo_1693165971.png', '0255-1881-29', '58, AM Road, KK Street', 14, 2, 4, '2009', 'www.abcmedialtd.com', '<p>Lorem ipsum dolor sit amet, error invidunt quaerendum pri no, congue quando mediocrem qui at. Ut vel soleat graece mediocritatem, per cibo phaedrum patrioque et. Mel cu eius possim adversarium. Soleat dolores prodesset ei duo, deleniti conceptam nam in, novum tantas fabellas vis ea. Solet populo conceptam usu eu.</p>\r\n<p>Ei dicit labore deleniti vim, cetero sententiae ea his. Mazim iriure partiendo ut has. His malorum apeirian ex, utroque partiendo ut pri, ea mediocrem accommodare mediocritatem mei. Vel ea dico urbanitas prodesset, per at maiorum consetetur definitionem. Vix id quidam tincidunt. Sed hinc labore at, natum persecuti ea sed.</p>\r\n<p>Mel illud prompta salutandi et. Mundi nusquam sententiae quo id, cum in novum ornatus voluptatum, vivendo alienum et vel. An possim viderer mei, nulla luptatum sit an, verear hendrerit mei ut. Elitr primis corrumpit te mei, sit utamur prompta ea. Et recusabo mnesarchum has, eu vix nostrum recusabo maluisset.</p>\r\n<p>Eum summo appellantur ex. Dolore malorum his an, animal audire vivendum duo at. Est quaestio adolescens constituam et, per debet moderatius at. Duo eius omittam appellantur cu. Affert quodsi vivendum eos ad. Nostro integre deleniti eos id.</p>\r\n<p>&nbsp;</p>', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', 'OffDay', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d16252.61414006596!2d-113.19008677736619!3d52.98348214463544!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4b0d03d337cc6ad9%3A0x9968b72aa2438fa5!2sCanada!5e0!3m2!1sen!2sgh!4v1686911647423!5m2!1sen!2sgh\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.linkedin.com', 'https://www.instagram.com', 1, '2023-06-11 18:10:38', '2023-08-27 19:52:51'),
(6, 'ZZ Multimedia Ltd', 'Gifty Arthur', 'gifty', 'gifty@gmail.com', '$2y$10$Vk7k6Itzy5XynKOB2J.vO.zM.Lfv7TWnfTg9myWu2TTH0gXPXh9xC', '', 'company_logo_1691601922.png', NULL, NULL, 4, 1, 1, '1900', 'https://zzmultimediaco.com', '<p>Lorem ipsum dolor sit amet, ei phaedrum sadipscing quo, in scriptorem signiferumque quo. Probo dicant eu duo, primis denique mei an. Cum solum vituperatoribus ea. Mei ne affert debitis facilisi, mei ea eros option sapientem. In quod alterum mentitum vim, vis fierent propriae epicurei id, an equidem evertitur duo. Dolor putant no cum.</p>\r\n<p>Ne verear accusata quo, id integre alterum numquam per, minim noluisse at mea. Probo habeo liberavisse est ne. Ut usu soleat pertinax, persius assentior ius te, malis viris salutandi pri ne. Usu no veri nusquam, ridens ceteros patrioque usu ut. Duo no veri falli, audire scribentur cum ei.</p>', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', 'Off Day', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15882.504165322734!2d-0.1733501!3d5.6221003!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xfdf9b13b0062aad%3A0x75de9717e31b2442!2sAccra%20Mall!5e0!3m2!1sen!2sgh!4v1691601905259!5m2!1sen!2sgh\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '#', 'https://www.twitter.com', 'https://www.linkedin.com', 'https://www.instagram.com', 1, '2023-06-17 10:05:15', '2023-08-09 17:25:22'),
(7, 'Mawums Engineering company Limited', 'Denzel Johnson', 'johnson123', 'johnson@gmail.com', '$2y$10$hEcknNiT2F0a8lXrk6fVauUYeluCs1cs82Nnu3xLxJBXF5CS4XjF2', '', 'company_logo_1691602257.png', '562-403-9958', '242 Locust Court Artesia, CA 90701', 16, 4, 1, '1999', 'https://mawumsengineering.com', '<p>Vel evertitur reprehendunt eu, mea nisl sensibus moderatius et, deleniti aliquando his ne. Officiis dignissim eos ea, ea vitae utroque evertitur usu. Mea bonorum feugait aliquando ut, his ullum noster singulis ut. Ad nam omnium persius, illum delectus ne duo, natum delenit efficiendi ad eum.</p>\r\n<p>Vim malis percipit inimicus in. Usu id latine nostrud, postea quodsi laboramus vim ei, electram accommodare mel ea. Ne eam dicat nonumy, no dolor vituperata usu. Sapientem disputationi reprehendunt ad vix, ut nec alii prima detraxit. Sed ut alienum insolens. Dicant essent ne sit, duo quod conceptam ut.</p>', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', 'Off Day', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15882.504165322734!2d-0.1733501!3d5.6221003!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xfdf9b13b0062aad%3A0x75de9717e31b2442!2sAccra%20Mall!5e0!3m2!1sen!2sgh!4v1691601905259!5m2!1sen!2sgh\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '#', '#', '#', '#', 1, '2023-08-07 05:35:24', '2023-08-27 21:52:33'),
(8, 'Strategy One', 'Salifu Shahaban', 'salifu', 'salifu@gmail.com', '$2y$10$kZSZQYKz4Z/ke/vlpnEeFOi1Sq1ykDkBclhyg2khJYFJWP.cEhipC', '', 'company_logo_1691499767.png', '256-397-3317', '4367 Turnpike Drive Birmingham, AL 35222', 4, 5, 1, '1900', 'https://www.strategyone.com', '<p>Sale quodsi propriae nec an. Eu suscipit scribentur vim, et vim quem insolens. Id nonumes rationibus nec, mei prima oratio ei. Sumo dicunt complectitur vel id, aliquam albucius pro cu.</p>\r\n<p>Per ferri illud constituam ei, quo et alii audiam. Iriure detracto consetetur ei mel, ea laoreet persecuti sea, cu per nisl vivendum. Pri aliquam albucius appetere at. Ne nemore inimicus patrioque per, audire complectitur cu nec.</p>', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', 'Off Day', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15882.504165322734!2d-0.1733501!3d5.6221003!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xfdf9b13b0062aad%3A0x75de9717e31b2442!2sAccra%20Mall!5e0!3m2!1sen!2sgh!4v1691496369412!5m2!1sen!2sgh\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '#', '#', '#', '#', 1, '2023-08-07 05:41:49', '2023-08-08 13:02:47'),
(10, 'Nakib & Associates', 'Nasir Jones', 'nasir', 'nasir@gmail.com', '$2y$10$BUXGclgIDO84cmdQV2nFp.D/JD5DFsngi3ZpHcPnz9.oBX.haVuLy', '', 'company_logo_1691499975.png', '864-222-8009', '4958 Mill Street Anderson, SC 29621', 12, 4, 1, '1900', 'https://www.nakib.com', '<p>Lorem ipsum dolor sit amet, modus officiis postulant ei per. Alia aliquip tamquam eam no, vis et tota utinam appareat. Ex aperiam sententiae sea, eum audire accumsan cu, legimus volumus qui at. Dictas aliquip nam et, ei nemore viderer abhorreant eam, ei dolor aperiri sea. Summo nostro qualisque vel ad, cu pri laudem animal. Sint eros eu vim, mea duis vocibus ad.</p>\r\n<p>Omnes aeterno no pro, usu illud admodum deleniti at, splendide disputando ius eu. Minim omittam ea usu, eu accusam indoctum iracundia sit. Has consul primis an, soleat eleifend euripidis cu ius. Sed an enim omnes intellegebat.</p>', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', 'Off Day', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15882.504165322734!2d-0.1733501!3d5.6221003!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xfdf9b13b0062aad%3A0x75de9717e31b2442!2sAccra%20Mall!5e0!3m2!1sen!2sgh!4v1691499939145!5m2!1sen!2sgh\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '#', '#', '#', '#', 1, '2023-08-07 06:57:38', '2023-08-08 13:06:15'),
(11, 'Skyline Corporate Law', 'Issah Fatah', 'issah', 'issah@gmail.com', '$2y$10$tlvd7mQT2hQpd1JU2xa4l./vn8k0boySYh1IGDGVFIcbp5y1rvQBa', '', 'company_logo_1691496426.png', '410-381-9349', 'Columbia, MD 21045', 2, 1, 1, '1900', 'https://www.jourrapide.com', '<p>Lorem ipsum dolor sit amet, modus officiis postulant ei per. Alia aliquip tamquam eam no, vis et tota utinam appareat. Ex aperiam sententiae sea, eum audire accumsan cu, legimus volumus qui at. Dictas aliquip nam et, ei nemore viderer abhorreant eam, ei dolor aperiri sea. Summo nostro qualisque vel ad, cu pri laudem animal. Sint eros eu vim, mea duis vocibus ad.</p>\r\n<p>Omnes aeterno no pro, usu illud admodum deleniti at, splendide disputando ius eu. Minim omittam ea usu, eu accusam indoctum iracundia sit. Has consul primis an, soleat eleifend euripidis cu ius. Sed an enim omnes intellegebat.</p>', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', 'Off Day', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15882.504165322734!2d-0.1733501!3d5.6221003!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xfdf9b13b0062aad%3A0x75de9717e31b2442!2sAccra%20Mall!5e0!3m2!1sen!2sgh!4v1691496369412!5m2!1sen!2sgh\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '#', '#', '#', '#', 1, '2023-08-07 06:59:08', '2023-08-08 12:07:06'),
(12, 'Arrowhead IT solutions', 'Daniels Brian', 'daniels', 'daniels@gmail.com', '$2y$10$1Zt8kour8ODbzdie1Msdb.eXgbhCddIBiGh0XqRxBPrm8JI6mfmfK', '', 'company_logo_1691511044.png', '773-363-4088', '1494 Oakmound Drive Chicago, IL 60637', 18, 3, 1, '2015', 'www.arrowhead.com', '<p>Per ferri illud constituam ei, quo et alii audiam. Iriure detracto consetetur ei mel, ea laoreet persecuti sea, cu per nisl vivendum. Pri aliquam albucius appetere at. Ne nemore inimicus patrioque per, audire complectitur cu nec.</p>\r\n<p>Nominavi definiebas an pri, sea ad postea alienum. Ea habeo vivendo propriae vim, essent vocibus postulant no cum. No vis quas equidem nominati, id vim consul discere adolescens, dicit legere nostrum mea ne. Vix elit nihil blandit ex, melius explicari euripidis id mel. Pro everti appetere vivendum ei.</p>', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', 'Off Day', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15882.504165322734!2d-0.1733501!3d5.6221003!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xfdf9b13b0062aad%3A0x75de9717e31b2442!2sAccra%20Mall!5e0!3m2!1sen!2sgh!4v1691496369412!5m2!1sen!2sgh\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '#', '#', '#', '#', 1, '2023-08-07 07:22:28', '2023-08-27 22:52:19');

-- --------------------------------------------------------

--
-- Table structure for table `company_industries`
--

CREATE TABLE `company_industries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_industries`
--

INSERT INTO `company_industries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Accounting Firm', '2023-06-15 22:46:03', '2023-06-15 22:46:03'),
(2, 'Software Company', '2023-06-15 22:46:20', '2023-06-15 22:46:20'),
(3, 'IT Company', '2023-06-15 22:46:37', '2023-06-15 22:46:37'),
(4, 'Real Estate Company', '2023-06-15 22:46:53', '2023-06-15 22:46:53'),
(5, 'Law Firm', '2023-06-15 22:47:06', '2023-06-15 22:47:06');

-- --------------------------------------------------------

--
-- Table structure for table `company_locations`
--

CREATE TABLE `company_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_locations`
--

INSERT INTO `company_locations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(14, 'Ashanti Region', '2023-08-27 17:52:08', '2023-08-27 17:52:08'),
(15, 'Brong-Ahafo Region', '2023-08-27 17:52:26', '2023-08-27 17:52:26'),
(16, 'Central Region', '2023-08-27 17:55:04', '2023-08-27 17:55:04'),
(17, 'Eastern Region', '2023-08-27 17:55:19', '2023-08-27 17:55:19'),
(18, 'Greater Accra Region', '2023-08-27 17:55:30', '2023-08-27 17:55:30'),
(19, 'Northern Region', '2023-08-27 17:55:42', '2023-08-27 17:55:42'),
(20, 'Upper East Region', '2023-08-27 17:55:55', '2023-08-27 17:55:55'),
(21, 'Upper West Region', '2023-08-27 17:56:14', '2023-08-27 17:56:14'),
(22, 'Volta Region', '2023-08-27 17:56:36', '2023-08-27 17:56:36'),
(23, 'Western Region', '2023-08-27 17:56:53', '2023-08-27 17:56:53');

-- --------------------------------------------------------

--
-- Table structure for table `company_photos`
--

CREATE TABLE `company_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_photos`
--

INSERT INTO `company_photos` (`id`, `company_id`, `photo`, `created_at`, `updated_at`) VALUES
(3, 5, 'company_photo_1687045691.png', '2023-06-17 23:48:11', '2023-06-17 23:48:11');

-- --------------------------------------------------------

--
-- Table structure for table `company_sizes`
--

CREATE TABLE `company_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_sizes`
--

INSERT INTO `company_sizes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '2-5 Persons', '2023-06-15 22:57:10', '2023-06-15 22:57:10'),
(2, '5-10 Persons', '2023-06-15 22:57:29', '2023-06-15 22:57:29'),
(3, '10-20 Persons', '2023-06-15 22:57:47', '2023-06-15 22:57:47'),
(4, '20-50 Persons', '2023-06-15 22:58:03', '2023-06-15 22:58:03'),
(5, '50-100 Persons', '2023-06-15 22:58:26', '2023-06-15 22:58:26'),
(6, '100+ Persons', '2023-06-15 22:58:39', '2023-06-15 22:58:39');

-- --------------------------------------------------------

--
-- Table structure for table `company_videos`
--

CREATE TABLE `company_videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `video_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'Lorem ipsum dolor sit amet, aeque pertinax conclusionemque pri at?', '<p>Lorem ipsum dolor sit amet, aeque pertinax conclusionemque pri at. Dictas impedit omittam cum eu, et ius tale sonet homero. Eius eirmod diceret pri te, diam iriure philosophia ius ei, ne semper fabellas concludaturque pro. Suscipit disputando ea eam. Tibique blandit qui id.</p>', '2023-06-05 16:21:49', '2023-06-05 16:21:49'),
(2, 'Quo ut error noluisse vituperata. Brute novum has in?', '<p>Quo ut error noluisse vituperata. Brute novum has in, id mei dicit sonet nusquam. Cu sed fuisset suscipiantur, at everti ornatus has, has prima sonet mandamus ad. Quo no mutat nostrud. Per natum facete no.</p>', '2023-06-05 16:24:03', '2023-06-05 16:24:03'),
(3, 'Ei vel nihil graeco perfecto, per ad doming molestie?', '<p>Ei vel nihil graeco perfecto, per ad doming molestie. Ex alia sensibus nam, qui id inermis honestatis. Eu duo diceret vocibus maluisset, eruditi habemus in mei, vis ad quis mediocritatem. Ne nemore utamur molestiae vix, sed ne oportere intellegat, quo ad duis perpetua salutatus.</p>\r\n<p>&nbsp;</p>\r\n<p>Aperiam electram torquatos cu his, eu mel graeco quodsi mandamus, mandamus forensibus vis eu. Ferri harum cu qui. Aliquid delenit ne qui. Ne quod vivendo salutatus eos, duis propriae molestie an vis. Ius movet feugiat explicari no, eos movet timeam integre no.</p>', '2023-06-05 16:35:16', '2023-06-05 16:35:16'),
(4, 'Te nihil sententiae vituperata mei?', '<p>Te nihil sententiae vituperata mei, elit aliquid cu sit. Nihil graece mel no. Eleifend praesent posidonium eu vim. Minim eruditi vim ea, te putent dolorem eos, in erant efficiendi vel. Prompta dissentiunt quo cu. Ei vix hinc imperdiet.</p>', '2023-06-05 16:35:48', '2023-06-05 16:45:51');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `responsibility` text DEFAULT NULL,
  `skill` text DEFAULT NULL,
  `education` text DEFAULT NULL,
  `benefit` text DEFAULT NULL,
  `deadline` text NOT NULL,
  `vacancy` int(11) NOT NULL,
  `job_category_id` int(11) NOT NULL,
  `job_location_id` int(11) NOT NULL,
  `job_type_id` int(11) NOT NULL,
  `job_experience_id` int(11) NOT NULL,
  `job_gender_id` int(11) NOT NULL,
  `job_salary_range_id` int(11) NOT NULL,
  `map_code` text DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL,
  `is_urgent` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `company_id`, `title`, `description`, `responsibility`, `skill`, `education`, `benefit`, `deadline`, `vacancy`, `job_category_id`, `job_location_id`, `job_type_id`, `job_experience_id`, `job_gender_id`, `job_salary_range_id`, `map_code`, `is_featured`, `is_urgent`, `created_at`, `updated_at`) VALUES
(1, 5, 'Laravel Developer', '<p><span style=\"color: #212529; font-family: \'Work Sans\', sans-serif; font-size: 15px; background-color: #ffffff; --darkreader-inline-color: #d1cdc7; --darkreader-inline-bgcolor: #181a1b;\" data-darkreader-inline-color=\"\" data-darkreader-inline-bgcolor=\"\">We are looking for a motivated PHP / Laravel developer to come join our agile team of professionals. If you are passionate about technology, constantly seeking to learn and improve your skillset, then you are the type of person we are looking for! We are offering superb career growth opportunities, great compensation, and benefits.</span></p>', '<ul style=\"box-sizing: border-box; padding-left: 2rem; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: \'Work Sans\', sans-serif; font-size: 15px; background-color: #ffffff; --darkreader-inline-color: #d1cdc7; --darkreader-inline-bgcolor: #181a1b;\" data-darkreader-inline-color=\"\" data-darkreader-inline-bgcolor=\"\">\r\n<li style=\"box-sizing: border-box;\">Develop, record and maintain cutting edge web-based PHP applications on portal plus premium service platforms</li>\r\n<li style=\"box-sizing: border-box;\">Build innovative, state-of-the-art applications and collaborate with the User Experience (UX) team</li>\r\n<li style=\"box-sizing: border-box;\">Ensure HTML, CSS, and shared JavaScript is valid and consistent across applications</li>\r\n<li style=\"box-sizing: border-box;\">Prepare and maintain all applications utilizing standard development tools</li>\r\n<li style=\"box-sizing: border-box;\">Utilize backend data services and contribute to increase existing data services API</li>\r\n<li style=\"box-sizing: border-box;\">Lead the entire web application development life cycle right from concept stage to delivery and post launch support</li>\r\n</ul>', '<ul style=\"box-sizing: border-box; padding-left: 2rem; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: \'Work Sans\', sans-serif; font-size: 15px; background-color: #ffffff; --darkreader-inline-color: #d1cdc7; --darkreader-inline-bgcolor: #181a1b;\" data-darkreader-inline-color=\"\" data-darkreader-inline-bgcolor=\"\">\r\n<li style=\"box-sizing: border-box;\">Previous working experience as a PHP / Laravel developer for 4 year(s)</li>\r\n<li style=\"box-sizing: border-box;\">BS/MS degree in Computer Science, Engineering, MIS or similar relevant field</li>\r\n<li style=\"box-sizing: border-box;\">In depth knowledge of object-oriented PHP and Laravel PHP Framework</li>\r\n<li style=\"box-sizing: border-box;\">Hands on experience with SQL schema design, SOLID principles, REST API design</li>\r\n<li style=\"box-sizing: border-box;\">Software testing (PHPUnit, PHPSpec, Behat)</li>\r\n<li style=\"box-sizing: border-box;\">MySQL profiling and query optimization</li>\r\n<li style=\"box-sizing: border-box;\">Creative and efficient problem solver</li>\r\n</ul>', '<ul style=\"box-sizing: border-box; padding-left: 2rem; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: \'Work Sans\', sans-serif; font-size: 15px; background-color: #ffffff; --darkreader-inline-color: #d1cdc7; --darkreader-inline-bgcolor: #181a1b;\" data-darkreader-inline-color=\"\" data-darkreader-inline-bgcolor=\"\">\r\n<li style=\"box-sizing: border-box;\">B.Sc. in CSE from any reputed University</li>\r\n<li style=\"box-sizing: border-box;\">CGPA minimum 3.50</li>\r\n</ul>', '<div class=\"left-item\" style=\"box-sizing: border-box; margin-bottom: 30px; color: #212529; font-family: \'Work Sans\', sans-serif; font-size: 15px; background-color: #ffffff; --darkreader-inline-color: #d1cdc7; --darkreader-inline-bgcolor: #181a1b;\" data-darkreader-inline-color=\"\" data-darkreader-inline-bgcolor=\"\">\r\n<ul style=\"box-sizing: border-box; padding-left: 2rem; margin-top: 0px; margin-bottom: 1rem;\">\r\n<li style=\"box-sizing: border-box;\">Early finish on Fridays for our end of week catch up (4:30 finish, and drink of your choice from the bar)</li>\r\n<li style=\"box-sizing: border-box;\">28 days holiday(including bank holidays) rising by 1 day per year PLUS an additional day off on your birthday</li>\r\n<li style=\"box-sizing: border-box;\">Generous annual bonus.</li>\r\n<li style=\"box-sizing: border-box;\">Healthcare package</li>\r\n<li style=\"box-sizing: border-box;\">Free Breakfast on Mondays and free snacks in the office</li>\r\n<li style=\"box-sizing: border-box;\">Cycle 2 Work Scheme</li>\r\n<li style=\"box-sizing: border-box;\">Brand new MacBook Pro</li>\r\n</ul>\r\n</div>', '2023-10-28', 12, 1, 2, 3, 1, 1, 1, NULL, 1, 0, '2023-06-18 12:53:20', '2023-08-20 02:49:31'),
(2, 5, 'Software Engineer', '<p>There are many different types of filters, each with its own specific properties. Some common types of filters include low-pass filters, high-pass filters, band-pass filters, and band-reject filters. Low-pass filters allow low-frequency signals to pass through, while blocking high-frequency signals. High-pass filters allow high-frequency signals to pass through, while blocking low-frequency signals. Band-pass filters allow signals within a specific frequency band to pass through, while blocking signals outside of that band. Band-reject filters block signals within a specific frequency band, while allowing signals outside of that band to pass through.</p>', '<p>able to build and deploy mobile apps</p>\r\n<p>front end engineering</p>\r\n<p>backend engineering</p>', '<p>Be able to work under pressure.</p>\r\n<p>Be able to work on weekends</p>', '<p>Bsc computer science and engineering</p>', '<p>Monthly stipends</p>\r\n<p>Monthly bonuses</p>\r\n<p>ability to work from home</p>', '2023-11-15', 2, 1, 1, 3, 1, 3, 3, NULL, 1, 0, '2023-08-06 12:58:29', '2023-08-20 02:50:06'),
(3, 11, 'Law Clerk', '<p>Lorem ipsum dolor sit amet, mea verear percipit postulant et, his ut iriure commodo incorrupte, ius melius imperdiet cu. No audiam legimus appellantur est, nonumes salutatus vim ex. Per et essent dictas lucilius, no has maiorum constituto. Salutatus dissentiet at his, mea cu rebum repudiare.</p>\r\n<p>Ei novum movet verterem vel, sit ut probo insolens, per summo graeci consectetuer ad. Quo laudem deseruisse consectetuer an, omittam atomorum eos ne, eam nihil utinam officiis ad. Id est imperdiet instructior, eu pri vivendum democritum. His at latine accusam conclusionemque. Pri et inani voluptua.</p>\r\n<p>&nbsp;</p>', '<p>-Impetus explicari qui no, vel congue animal similique ad. Ad eum choro dolorem, no primis quidam iisque sea</p>\r\n<p>-mea etiam probatus in. Est in nulla atomorum definitionem, luptatum platonem per ex. No mei facilisi efficiantur</p>\r\n<p>-qui et repudiandae ullamcorper. Est quas nominavi ocurreret ut, ea suscipit consulatu sea, magna lorem cotidieque eum te.</p>\r\n<p>-Ad sed dicam alterum. Ut molestie prodesset vim, vis id dico dolor, cu est case erat</p>\r\n<p>-Probo offendit pri et. No stet antiopam eam, ei paulo facilisi consectetuer pri.</p>\r\n<p>-Ei lorem omnesque per, epicuri mandamus oportere eos te. Dictas persequeris eu mei, illum maiestatis ne cum.</p>', '<p>-Impetus explicari qui no, vel congue animal similique ad. Ad eum choro dolorem, no primis quidam iisque sea</p>\r\n<p>-mea etiam probatus in. Est in nulla atomorum definitionem, luptatum platonem per ex. No mei facilisi efficiantur</p>\r\n<p>-qui et repudiandae ullamcorper. Est quas nominavi ocurreret ut, ea suscipit consulatu sea, magna lorem cotidieque eum te.</p>\r\n<p>-Ad sed dicam alterum. Ut molestie prodesset vim, vis id dico dolor, cu est case erat</p>\r\n<p>-Probo offendit pri et. No stet antiopam eam, ei paulo facilisi consectetuer pri.</p>\r\n<p>-Ei lorem omnesque per, epicuri mandamus oportere eos te. Dictas persequeris eu mei, illum maiestatis ne cum.</p>', '<p>-Impetus explicari qui no, vel congue animal similique ad. Ad eum choro dolorem, no primis quidam iisque sea</p>\r\n<p>-mea etiam probatus in. Est in nulla atomorum definitionem, luptatum platonem per ex. No mei facilisi efficiantur</p>\r\n<p>-qui et repudiandae ullamcorper. Est quas nominavi ocurreret ut, ea suscipit consulatu sea, magna lorem cotidieque eum te.</p>\r\n<p>-Ad sed dicam alterum. Ut molestie prodesset vim, vis id dico dolor, cu est case erat</p>\r\n<p>-Probo offendit pri et. No stet antiopam eam, ei paulo facilisi consectetuer pri.</p>\r\n<p>-Ei lorem omnesque per, epicuri mandamus oportere eos te. Dictas persequeris eu mei, illum maiestatis ne cum.</p>', '<p>-Impetus explicari qui no, vel congue animal similique ad. Ad eum choro dolorem, no primis quidam iisque sea</p>\r\n<p>-mea etiam probatus in. Est in nulla atomorum definitionem, luptatum platonem per ex. No mei facilisi efficiantur</p>\r\n<p>-qui et repudiandae ullamcorper. Est quas nominavi ocurreret ut, ea suscipit consulatu sea, magna lorem cotidieque eum te.</p>\r\n<p>-Ad sed dicam alterum. Ut molestie prodesset vim, vis id dico dolor, cu est case erat</p>\r\n<p>-Probo offendit pri et. No stet antiopam eam, ei paulo facilisi consectetuer pri.</p>\r\n<p>-Ei lorem omnesque per, epicuri mandamus oportere eos te. Dictas persequeris eu mei, illum maiestatis ne cum.</p>', '2023-08-29', 2, 14, 1, 1, 3, 3, 5, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15882.504165322734!2d-0.1733501!3d5.6221003!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xfdf9b13b0062aad%3A0x75de9717e31b2442!2sAccra%20Mall!5e0!3m2!1sen!2sgh!4v1691733872659!5m2!1sen!2sgh\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 0, 1, '2023-08-11 06:07:21', '2023-08-11 06:07:21'),
(6, 12, 'Python Programmer', '<p>Lorem ipsum dolor sit amet, id vim bonorum posidonium, an cum sanctus sadipscing dissentiunt, velit platonem vix ea. In eam harum oblique ancillae, nec eu legendos laboramus. In vix mundi facilis reprimique, ei minim blandit splendide vix. Sit te eius fabellas probatus. Mel erant scribentur conclusionemque in, cu sed illum dolore detraxit.</p>\r\n<p>&nbsp;</p>\r\n<p>Sit an cibo oporteat. Ei purto minimum adipiscing mel, usu exerci option salutandi ei, at vim modo fugit postulant. Ponderum atomorum at duo, vix eius regione id, cu sea illum volumus. An mediocrem aliquando sadipscing per.</p>\r\n<p>&nbsp;</p>', '<p>-Impetus explicari qui no, vel congue animal similique ad. Ad eum choro dolorem, no primis quidam iisque sea</p>\r\n<p>&nbsp;</p>\r\n<p>-mea etiam probatus in. Est in nulla atomorum definitionem, luptatum platonem per ex. No mei facilisi efficiantur</p>\r\n<p>&nbsp;</p>\r\n<p>-qui et repudiandae ullamcorper. Est quas nominavi ocurreret ut, ea suscipit consulatu sea, magna lorem cotidieque eum te.</p>\r\n<p>&nbsp;</p>\r\n<p>-Ad sed dicam alterum. Ut molestie prodesset vim, vis id dico dolor, cu est case erat</p>\r\n<p>&nbsp;</p>\r\n<p>-Probo offendit pri et. No stet antiopam eam, ei paulo facilisi consectetuer pri.</p>\r\n<p>&nbsp;</p>\r\n<p>-Ei lorem omnesque per, epicuri mandamus oportere eos te. Dictas persequeris eu mei, illum maiestatis ne cum.</p>', '<p>-Impetus explicari qui no, vel congue animal similique ad. Ad eum choro dolorem, no primis quidam iisque sea</p>\r\n<p>&nbsp;</p>\r\n<p>-mea etiam probatus in. Est in nulla atomorum definitionem, luptatum platonem per ex. No mei facilisi efficiantur</p>\r\n<p>&nbsp;</p>\r\n<p>-qui et repudiandae ullamcorper. Est quas nominavi ocurreret ut, ea suscipit consulatu sea, magna lorem cotidieque eum te.</p>\r\n<p>&nbsp;</p>\r\n<p>-Ad sed dicam alterum. Ut molestie prodesset vim, vis id dico dolor, cu est case erat</p>\r\n<p>&nbsp;</p>\r\n<p>-Probo offendit pri et. No stet antiopam eam, ei paulo facilisi consectetuer pri.</p>\r\n<p>&nbsp;</p>\r\n<p>-Ei lorem omnesque per, epicuri mandamus oportere eos te. Dictas persequeris eu mei, illum maiestatis ne cum.</p>', '<p>-Impetus explicari qui no, vel congue animal similique ad. Ad eum choro dolorem, no primis quidam iisque sea</p>\r\n<p>&nbsp;</p>\r\n<p>-mea etiam probatus in. Est in nulla atomorum definitionem, luptatum platonem per ex. No mei facilisi efficiantur</p>\r\n<p>&nbsp;</p>\r\n<p>-qui et repudiandae ullamcorper. Est quas nominavi ocurreret ut, ea suscipit consulatu sea, magna lorem cotidieque eum te.</p>\r\n<p>&nbsp;</p>\r\n<p>-Ad sed dicam alterum. Ut molestie prodesset vim, vis id dico dolor, cu est case erat</p>\r\n<p>&nbsp;</p>\r\n<p>-Probo offendit pri et. No stet antiopam eam, ei paulo facilisi consectetuer pri.</p>\r\n<p>&nbsp;</p>\r\n<p>-Ei lorem omnesque per, epicuri mandamus oportere eos te. Dictas persequeris eu mei, illum maiestatis ne cum.</p>', '<p>-Impetus explicari qui no, vel congue animal similique ad. Ad eum choro dolorem, no primis quidam iisque sea</p>\r\n<p>&nbsp;</p>\r\n<p>-mea etiam probatus in. Est in nulla atomorum definitionem, luptatum platonem per ex. No mei facilisi efficiantur</p>\r\n<p>&nbsp;</p>\r\n<p>-qui et repudiandae ullamcorper. Est quas nominavi ocurreret ut, ea suscipit consulatu sea, magna lorem cotidieque eum te.</p>\r\n<p>&nbsp;</p>\r\n<p>-Ad sed dicam alterum. Ut molestie prodesset vim, vis id dico dolor, cu est case erat</p>\r\n<p>&nbsp;</p>\r\n<p>-Probo offendit pri et. No stet antiopam eam, ei paulo facilisi consectetuer pri.</p>\r\n<p>&nbsp;</p>\r\n<p>-Ei lorem omnesque per, epicuri mandamus oportere eos te. Dictas persequeris eu mei, illum maiestatis ne cum.</p>', '2023-12-11', 2, 1, 7, 1, 2, 3, 5, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15882.504165322734!2d-0.1733501!3d5.6221003!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xfdf9b13b0062aad%3A0x75de9717e31b2442!2sAccra%20Mall!5e0!3m2!1sen!2sgh!4v1691734403623!5m2!1sen!2sgh\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1, 1, '2023-08-11 06:40:03', '2023-08-27 22:51:57'),
(7, 8, 'Communications Director', '<p>Lorem ipsum dolor sit amet, id vim bonorum posidonium, an cum sanctus sadipscing dissentiunt, velit platonem vix ea. In eam harum oblique ancillae, nec eu legendos laboramus. In vix mundi facilis reprimique, ei minim blandit splendide vix. Sit te eius fabellas probatus. Mel erant scribentur conclusionemque in, cu sed illum dolore detraxit.</p>\r\n<p>Sit an cibo oporteat. Ei purto minimum adipiscing mel, usu exerci option salutandi ei, at vim modo fugit postulant. Ponderum atomorum at duo, vix eius regione id, cu sea illum volumus. An mediocrem aliquando sadipscing per.</p>\r\n<p>&nbsp;</p>', '<p>-Impetus explicari qui no, vel congue animal similique ad. Ad eum choro dolorem, no primis quidam iisque sea</p>\r\n<p>&nbsp;</p>\r\n<p>-mea etiam probatus in. Est in nulla atomorum definitionem, luptatum platonem per ex. No mei facilisi efficiantur</p>\r\n<p>&nbsp;</p>\r\n<p>-qui et repudiandae ullamcorper. Est quas nominavi ocurreret ut, ea suscipit consulatu sea, magna lorem cotidieque eum te.</p>\r\n<p>&nbsp;</p>\r\n<p>-Ad sed dicam alterum. Ut molestie prodesset vim, vis id dico dolor, cu est case erat</p>\r\n<p>&nbsp;</p>\r\n<p>-Probo offendit pri et. No stet antiopam eam, ei paulo facilisi consectetuer pri.</p>\r\n<p>&nbsp;</p>\r\n<p>-Ei lorem omnesque per, epicuri mandamus oportere eos te. Dictas persequeris eu mei, illum maiestatis ne cum.</p>', '<p>-Impetus explicari qui no, vel congue animal similique ad. Ad eum choro dolorem, no primis quidam iisque sea</p>\r\n<p>&nbsp;</p>\r\n<p>-mea etiam probatus in. Est in nulla atomorum definitionem, luptatum platonem per ex. No mei facilisi efficiantur</p>\r\n<p>&nbsp;</p>\r\n<p>-qui et repudiandae ullamcorper. Est quas nominavi ocurreret ut, ea suscipit consulatu sea, magna lorem cotidieque eum te.</p>\r\n<p>&nbsp;</p>\r\n<p>-Ad sed dicam alterum. Ut molestie prodesset vim, vis id dico dolor, cu est case erat</p>\r\n<p>&nbsp;</p>\r\n<p>-Probo offendit pri et. No stet antiopam eam, ei paulo facilisi consectetuer pri.</p>\r\n<p>&nbsp;</p>\r\n<p>-Ei lorem omnesque per, epicuri mandamus oportere eos te. Dictas persequeris eu mei, illum maiestatis ne cum.</p>', '<p>-Impetus explicari qui no, vel congue animal similique ad. Ad eum choro dolorem, no primis quidam iisque sea</p>\r\n<p>&nbsp;</p>\r\n<p>-mea etiam probatus in. Est in nulla atomorum definitionem, luptatum platonem per ex. No mei facilisi efficiantur</p>\r\n<p>&nbsp;</p>\r\n<p>-qui et repudiandae ullamcorper. Est quas nominavi ocurreret ut, ea suscipit consulatu sea, magna lorem cotidieque eum te.</p>\r\n<p>&nbsp;</p>\r\n<p>-Ad sed dicam alterum. Ut molestie prodesset vim, vis id dico dolor, cu est case erat</p>\r\n<p>&nbsp;</p>\r\n<p>-Probo offendit pri et. No stet antiopam eam, ei paulo facilisi consectetuer pri.</p>\r\n<p>&nbsp;</p>\r\n<p>-Ei lorem omnesque per, epicuri mandamus oportere eos te. Dictas persequeris eu mei, illum maiestatis ne cum.</p>', '<p>-Impetus explicari qui no, vel congue animal similique ad. Ad eum choro dolorem, no primis quidam iisque sea</p>\r\n<p>&nbsp;</p>\r\n<p>-mea etiam probatus in. Est in nulla atomorum definitionem, luptatum platonem per ex. No mei facilisi efficiantur</p>\r\n<p>&nbsp;</p>\r\n<p>-qui et repudiandae ullamcorper. Est quas nominavi ocurreret ut, ea suscipit consulatu sea, magna lorem cotidieque eum te.</p>\r\n<p>&nbsp;</p>\r\n<p>-Ad sed dicam alterum. Ut molestie prodesset vim, vis id dico dolor, cu est case erat</p>\r\n<p>&nbsp;</p>\r\n<p>-Probo offendit pri et. No stet antiopam eam, ei paulo facilisi consectetuer pri.</p>\r\n<p>&nbsp;</p>\r\n<p>-Ei lorem omnesque per, epicuri mandamus oportere eos te. Dictas persequeris eu mei, illum maiestatis ne cum.</p>', '2023-12-11', 1, 13, 8, 1, 3, 3, 4, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15882.504165322734!2d-0.1733501!3d5.6221003!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xfdf9b13b0062aad%3A0x75de9717e31b2442!2sAccra%20Mall!5e0!3m2!1sen!2sgh!4v1691734403623!5m2!1sen!2sgh\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 0, 0, '2023-08-11 06:45:31', '2023-08-11 06:45:31'),
(8, 7, 'Civil Engineer', '<p>Lorem ipsum dolor sit amet, id vim bonorum posidonium, an cum sanctus sadipscing dissentiunt, velit platonem vix ea. In eam harum oblique ancillae, nec eu legendos laboramus. In vix mundi facilis reprimique, ei minim blandit splendide vix. Sit te eius fabellas probatus. Mel erant scribentur conclusionemque in, cu sed illum dolore detraxit.</p>\r\n<p>&nbsp;</p>\r\n<p>Sit an cibo oporteat. Ei purto minimum adipiscing mel, usu exerci option salutandi ei, at vim modo fugit postulant. Ponderum atomorum at duo, vix eius regione id, cu sea illum volumus. An mediocrem aliquando sadipscing per.</p>\r\n<p>&nbsp;</p>', '<p>-Impetus explicari qui no, vel congue animal similique ad. Ad eum choro dolorem, no primis quidam iisque sea</p>\r\n<p>&nbsp;</p>\r\n<p>-mea etiam probatus in. Est in nulla atomorum definitionem, luptatum platonem per ex. No mei facilisi efficiantur</p>\r\n<p>&nbsp;</p>\r\n<p>-qui et repudiandae ullamcorper. Est quas nominavi ocurreret ut, ea suscipit consulatu sea, magna lorem cotidieque eum te.</p>\r\n<p>&nbsp;</p>\r\n<p>-Ad sed dicam alterum. Ut molestie prodesset vim, vis id dico dolor, cu est case erat</p>\r\n<p>&nbsp;</p>\r\n<p>-Probo offendit pri et. No stet antiopam eam, ei paulo facilisi consectetuer pri.</p>\r\n<p>&nbsp;</p>\r\n<p>-Ei lorem omnesque per, epicuri mandamus oportere eos te. Dictas persequeris eu mei, illum maiestatis ne cum.</p>', '<p>-Impetus explicari qui no, vel congue animal similique ad. Ad eum choro dolorem, no primis quidam iisque sea</p>\r\n<p>&nbsp;</p>\r\n<p>-mea etiam probatus in. Est in nulla atomorum definitionem, luptatum platonem per ex. No mei facilisi efficiantur</p>\r\n<p>&nbsp;</p>\r\n<p>-qui et repudiandae ullamcorper. Est quas nominavi ocurreret ut, ea suscipit consulatu sea, magna lorem cotidieque eum te.</p>\r\n<p>&nbsp;</p>\r\n<p>-Ad sed dicam alterum. Ut molestie prodesset vim, vis id dico dolor, cu est case erat</p>\r\n<p>&nbsp;</p>\r\n<p>-Probo offendit pri et. No stet antiopam eam, ei paulo facilisi consectetuer pri.</p>\r\n<p>&nbsp;</p>\r\n<p>-Ei lorem omnesque per, epicuri mandamus oportere eos te. Dictas persequeris eu mei, illum maiestatis ne cum.</p>', '<p>-Impetus explicari qui no, vel congue animal similique ad. Ad eum choro dolorem, no primis quidam iisque sea</p>\r\n<p>&nbsp;</p>\r\n<p>-mea etiam probatus in. Est in nulla atomorum definitionem, luptatum platonem per ex. No mei facilisi efficiantur</p>\r\n<p>&nbsp;</p>\r\n<p>-qui et repudiandae ullamcorper. Est quas nominavi ocurreret ut, ea suscipit consulatu sea, magna lorem cotidieque eum te.</p>\r\n<p>&nbsp;</p>\r\n<p>-Ad sed dicam alterum. Ut molestie prodesset vim, vis id dico dolor, cu est case erat</p>\r\n<p>&nbsp;</p>\r\n<p>-Probo offendit pri et. No stet antiopam eam, ei paulo facilisi consectetuer pri.</p>\r\n<p>&nbsp;</p>\r\n<p>-Ei lorem omnesque per, epicuri mandamus oportere eos te. Dictas persequeris eu mei, illum maiestatis ne cum.</p>', '<p>-Impetus explicari qui no, vel congue animal similique ad. Ad eum choro dolorem, no primis quidam iisque sea</p>\r\n<p>&nbsp;</p>\r\n<p>-mea etiam probatus in. Est in nulla atomorum definitionem, luptatum platonem per ex. No mei facilisi efficiantur</p>\r\n<p>&nbsp;</p>\r\n<p>-qui et repudiandae ullamcorper. Est quas nominavi ocurreret ut, ea suscipit consulatu sea, magna lorem cotidieque eum te.</p>\r\n<p>&nbsp;</p>\r\n<p>-Ad sed dicam alterum. Ut molestie prodesset vim, vis id dico dolor, cu est case erat</p>\r\n<p>&nbsp;</p>\r\n<p>-Probo offendit pri et. No stet antiopam eam, ei paulo facilisi consectetuer pri.</p>\r\n<p>&nbsp;</p>\r\n<p>-Ei lorem omnesque per, epicuri mandamus oportere eos te. Dictas persequeris eu mei, illum maiestatis ne cum.</p>', '2023-11-11', 5, 1, 4, 1, 2, 3, 4, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15882.504165322734!2d-0.1733501!3d5.6221003!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xfdf9b13b0062aad%3A0x75de9717e31b2442!2sAccra%20Mall!5e0!3m2!1sen!2sgh!4v1691734403623!5m2!1sen!2sgh\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1, 1, '2023-08-11 06:50:25', '2023-08-27 20:31:22'),
(10, 5, 'Marketing Manager', '<p><span style=\"color: #cecac3; font-family: S&ouml;hne, ui-sans-serif, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, \'Helvetica Neue\', Arial, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; white-space-collapse: preserve; background-color: #393e40; --darkreader-inline-color: #c6c1b9; --darkreader-inline-bgcolor: #2e3133;\" data-darkreader-inline-color=\"\" data-darkreader-inline-bgcolor=\"\">We are seeking a highly motivated and results-driven Marketing Manager to lead our marketing efforts in Ghana. The successful candidate will be responsible for developing and implementing marketing strategies, managing a team, and driving brand awareness and customer engagement. If you are a strategic thinker with a passion for marketing, this is an excellent opportunity to contribute to the growth and success of our organization.</span></p>', '<ul style=\"margin-top: 0in;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Develop and execute comprehensive marketing plans to drive brand recognition and revenue growth.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Lead and mentor a marketing team, fostering a collaborative and creative work environment.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Conduct market research to identify trends, competitor activities, and customer preferences.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Manage and allocate the marketing budget effectively to achieve maximum ROI.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Oversee the creation of marketing materials, including digital and print collateral.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Collaborate with cross-functional teams to ensure alignment of marketing efforts with business goals.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Analyze campaign performance and make data-driven recommendations for improvements.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Monitor and manage the organization\'s online presence and social media channels.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Identify and explore new marketing opportunities and channels.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Stay updated on industry trends and emerging marketing technologies.</span></li>\r\n</ul>', '<ul style=\"margin-top: 0in;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Proven experience in developing and implementing successful marketing strategies.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Strong leadership and team management skills.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Excellent communication and interpersonal abilities.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Analytical mindset with the ability to interpret data and make informed decisions.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Creative thinking and the ability to conceptualize and execute innovative marketing campaigns.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Proficiency in digital marketing, SEO, SEM, and social media platforms.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Strong project management skills with the ability to meet deadlines and manage multiple tasks.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Exceptional problem-solving and decision-making skills.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Strong understanding of market dynamics and consumer behavior in Ghana.</span></li>\r\n</ul>', '<ul style=\"margin-top: 0in;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Bachelor\'s degree in Marketing, Business Administration, or a related field.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Master\'s degree in Marketing or Business Administration (preferred).</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Professional certification in marketing (e.g., CIM, AMA) is a plus.</span></li>\r\n</ul>\r\n<p class=\"MsoNormal\"><span style=\"mso-no-proof: yes;\">&nbsp;</span></p>', '<ul style=\"margin-top: 0in;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Competitive salary and performance-based bonuses.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Health insurance coverage.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Professional development opportunities.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Dynamic and inclusive work environment.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Opportunity to make a significant impact on the company\'s growth.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Employee recognition programs.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Access to cutting-edge marketing tools and technologies.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Networking opportunities within the industry.</span></li>\r\n</ul>', '2023-12-27', 3, 6, 9, 2, 4, 3, 5, NULL, 1, 1, '2023-08-27 19:51:22', '2023-08-27 19:51:22'),
(11, 5, 'Registered Nurse', '<p><span style=\"color: #cecac3; font-family: S&ouml;hne, ui-sans-serif, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, \'Helvetica Neue\', Arial, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; white-space-collapse: preserve; background-color: #393e40; --darkreader-inline-color: #c6c1b9; --darkreader-inline-bgcolor: #2e3133;\" data-darkreader-inline-color=\"\" data-darkreader-inline-bgcolor=\"\">The Registered Nurse will play a vital role in delivering quality healthcare services to patients. This role involves providing patient care, administering medications, maintaining medical records, and collaborating with healthcare teams to ensure optimal patient outcomes.</span></p>', '<ul style=\"margin-top: 0in;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Conduct patient assessments and develop care plans based on individual needs.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Administer medications and treatments as prescribed by physicians.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Monitor and record patient vital signs and medical histories.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Provide emotional support and education to patients and their families.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Collaborate with physicians and other healthcare professionals to coordinate patient care.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Assist in surgical procedures and post-operative care when required.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Maintain accurate and up-to-date patient records and documentation.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Participate in ongoing training and professional development to stay updated on medical advancements.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Adhere to ethical and legal standards of nursing practice.</span></li>\r\n</ul>', '<ul style=\"margin-top: 0in;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Strong clinical judgment and critical thinking skills.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Excellent communication and interpersonal skills.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Ability to remain calm and composed in high-pressure situations.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Proficiency in using medical equipment and technology.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Empathy and compassion for patients and their families.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Attention to detail and accuracy in record-keeping.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Effective time management and organizational skills.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Ability to work both independently and as part of a team</span></li>\r\n</ul>\r\n<p class=\"MsoNormal\"><span style=\"mso-no-proof: yes;\">&nbsp;</span></p>', '<ul style=\"margin-top: 0in;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Bachelor\'s degree or diploma in Nursing from a recognized institution.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Registered Nurse (RN) license issued by the Nursing and Midwifery Council of Ghana.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Additional certifications in specialized areas of nursing are advantageous.</span></li>\r\n</ul>\r\n<p class=\"MsoNormal\"><span style=\"mso-no-proof: yes;\">&nbsp;</span></p>', '<ul style=\"margin-top: 0in;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Competitive salary and benefits package.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Opportunities for professional growth and advancement.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Work in a collaborative and supportive healthcare environment.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Making a positive impact on patients\' lives and well-being.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Access to continuous training and development programs.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Contributing to the improvement of healthcare standards in Ghana.</span></li>\r\n</ul>', '2023-11-27', 10, 16, 1, 1, 2, 3, 5, NULL, 1, 0, '2023-08-27 19:58:51', '2023-08-27 19:58:51'),
(12, 7, 'Electrical Engineer', '<p><span style=\"color: #cecac3; font-family: S&ouml;hne, ui-sans-serif, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, \'Helvetica Neue\', Arial, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; white-space-collapse: preserve; background-color: #393e40; --darkreader-inline-color: #c6c1b9; --darkreader-inline-bgcolor: #2e3133;\" data-darkreader-inline-color=\"\" data-darkreader-inline-bgcolor=\"\">The Electrical Engineer will play a crucial role in designing, developing, and maintaining electrical systems and components. This role requires a deep understanding of electrical principles and the ability to apply them to real-world projects. The engineer will collaborate with multidisciplinary teams to ensure the successful execution of projects, adhering to safety standards and regulations.</span></p>', '<ul style=\"margin-top: 0in;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Design, develop, and test electrical systems, components, and equipment.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Create and interpret technical drawings, blueprints, and specifications.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Collaborate with other engineers and professionals to determine project requirements and objectives.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Conduct feasibility studies and cost analyses for electrical projects.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Install, troubleshoot, and maintain electrical systems and equipment.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Ensure that electrical systems comply with safety, environmental, and quality standards.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Provide technical support to other departments and clients.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Stay updated with advancements in electrical engineering technology and techniques.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Manage and oversee electrical projects from conception to completion.</span></li>\r\n</ul>', '<ul style=\"margin-top: 0in;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Proficiency in electrical engineering principles and practices.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Strong knowledge of electrical codes, standards, and regulations.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Ability to use CAD software for designing and drafting.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Problem-solving skills to identify and resolve technical issues.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Excellent communication and teamwork abilities.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Attention to detail and a high level of accuracy.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Project management skills to handle multiple tasks simultaneously.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Adaptability to work in diverse and challenging environments.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Knowledge of renewable energy systems is a plus.</span></li>\r\n</ul>', '<ul style=\"margin-top: 0in;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Bachelor\'s degree in Electrical Engineering or a related field.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Professional certification in electrical engineering is advantageous.</span></li>\r\n</ul>', '<ul style=\"margin-top: 0in;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Competitive salary and benefits package.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Opportunity to work on diverse and impactful projects.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Professional growth and development opportunities.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Collaborative and dynamic work environment.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Chance to contribute to the development of sustainable energy solutions in Ghana.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Health and wellness programs.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Retirement and pension plans.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Ongoing training and skill enhancement.</span></li>\r\n</ul>', '2023-10-27', 5, 1, 16, 3, 4, 1, 9, NULL, 1, 1, '2023-08-27 20:09:15', '2023-08-27 20:09:15'),
(13, 7, 'Mechanical Engineers', '<p><span style=\"color: #cecac3; font-family: S&ouml;hne, ui-sans-serif, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, \'Helvetica Neue\', Arial, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; white-space-collapse: preserve; background-color: #393e40; --darkreader-inline-color: #c6c1b9; --darkreader-inline-bgcolor: #2e3133;\" data-darkreader-inline-color=\"\" data-darkreader-inline-bgcolor=\"\">We are seeking a skilled and motivated Mechanical Engineer to join our team in Ghana. As a Mechanical Engineer, you will play a crucial role in the design, development, and maintenance of mechanical systems and components. Your innovative thinking and problem-solving skills will contribute to the successful execution of projects in various industries.</span></p>', '<ul style=\"margin-top: 0in;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Design and develop mechanical systems, components, and products based on project requirements.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Conduct thorough analysis and simulations to ensure the integrity and efficiency of designs.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Collaborate with cross-functional teams to ensure projects are delivered on time and meet quality standards.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Create detailed engineering drawings, specifications, and documentation.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Perform tests and experiments to validate designs and identify areas for improvement.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Provide technical support and guidance to manufacturing and maintenance teams.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Stay up-to-date with industry trends and advancements in mechanical engineering.</span></li>\r\n</ul>', '<ul style=\"margin-top: 0in;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Strong knowledge of mechanical engineering principles, theories, and concepts.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Proficiency in computer-aided design (CAD) software for creating detailed models and drawings.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Analytical mindset with the ability to solve complex technical problems.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Excellent communication skills for effective collaboration and project management.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Attention to detail to ensure accuracy in designs and documentation.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Adaptability and creativity to develop innovative solutions.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Time management skills to meet project deadlines.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Familiarity with relevant industry standards and regulations.</span></li>\r\n</ul>', '<ul style=\"margin-top: 0in;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Bachelor\'s degree in Mechanical Engineering or a related field.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Professional certification or membership in relevant engineering associations is a plus.</span></li>\r\n</ul>', '<ul style=\"margin-top: 0in;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Competitive salary and benefits package.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Opportunity to work on diverse projects and industries.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Professional growth and development through challenging assignments.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Collaborative and inclusive work environment.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Access to training and workshops to enhance skills.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Health and wellness benefits.</span></li>\r\n</ul>', '2023-11-21', 2, 1, 4, 3, 1, 1, 7, NULL, 1, 1, '2023-08-27 20:29:00', '2023-08-27 20:29:00');
INSERT INTO `jobs` (`id`, `company_id`, `title`, `description`, `responsibility`, `skill`, `education`, `benefit`, `deadline`, `vacancy`, `job_category_id`, `job_location_id`, `job_type_id`, `job_experience_id`, `job_gender_id`, `job_salary_range_id`, `map_code`, `is_featured`, `is_urgent`, `created_at`, `updated_at`) VALUES
(14, 12, 'Graphic Designer', '<p><span style=\"color: #cecac3; font-family: S&ouml;hne, ui-sans-serif, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, \'Helvetica Neue\', Arial, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; white-space-collapse: preserve; background-color: #393e40; --darkreader-inline-color: #c6c1b9; --darkreader-inline-bgcolor: #2e3133;\" data-darkreader-inline-color=\"\" data-darkreader-inline-bgcolor=\"\">The Graphic Designer will play a crucial role in creating visually engaging and compelling designs that communicate messages effectively across various mediums. This role requires a keen eye for detail, creativity, and the ability to collaborate with a multidisciplinary team to deliver innovative design solutions.</span></p>', '<ul style=\"margin-top: 0in;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Develop creative and visually appealing designs for both digital and print media, including advertisements, brochures, websites, social media content, and more.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Collaborate with the marketing and creative teams to conceptualize and execute design concepts that align with brand guidelines and project objectives.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Create graphics, illustrations, and layouts that effectively communicate messages and concepts to the target audience.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Stay updated with design trends and industry best practices to ensure the organization\'s designs remain fresh and relevant.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Provide input during brainstorming sessions and contribute innovative ideas for design projects.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Prepare and present design concepts, mock-ups, and prototypes to stakeholders for feedback and approval.</span></li>\r\n</ul>', '<ul style=\"margin-top: 0in;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Proficient in graphic design software such as Adobe Creative Suite (Photoshop, Illustrator, InDesign, etc.).</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Strong understanding of design principles, layout composition, and typography.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Ability to translate creative briefs and concepts into compelling visual designs.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Excellent communication skills to collaborate effectively with team members and clients.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Detail-oriented with the ability to maintain high-quality standards in design work.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Creativity and a strong portfolio showcasing a range of design projects.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Time management skills to handle multiple projects and meet deadlines.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Knowledge of UI/UX design principles (an added advantage).</span></li>\r\n</ul>', '<ul style=\"margin-top: 0in;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">A bachelor\'s degree or equivalent in graphic design, visual communication, or a related field.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Relevant certifications or additional courses in graphic design are advantageous.</span></li>\r\n</ul>', '<ul style=\"margin-top: 0in;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Competitive salary and potential for performance-based bonuses.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Opportunity to work in a dynamic and collaborative creative environment.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Chance to contribute to the development of brands and creative strategies.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Access to the latest design tools and technologies.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Professional growth and development opportunities.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Health and wellness benefits.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Networking opportunities within the industry.</span></li>\r\n</ul>', '2023-10-27', 2, 18, 13, 2, 1, 1, 4, NULL, 1, 1, '2023-08-27 23:01:27', '2023-08-27 23:01:27'),
(15, 12, 'UX/UI Designer', '<p><span style=\"color: #cecac3; font-family: S&ouml;hne, ui-sans-serif, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, \'Helvetica Neue\', Arial, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; white-space-collapse: preserve; background-color: #393e40; --darkreader-inline-color: #c6c1b9; --darkreader-inline-bgcolor: #2e3133;\" data-darkreader-inline-color=\"\" data-darkreader-inline-bgcolor=\"\">The UX/UI Designer role in Ghana involves creating intuitive and visually appealing user experiences for digital products and applications. The designer will collaborate with cross-functional teams to understand user needs, design interfaces, and ensure seamless interactions. The goal is to enhance user satisfaction by improving the usability, accessibility, and overall aesthetics of digital products.</span></p>', '<ul style=\"margin-top: 0in;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Collaborate with product managers, developers, and other stakeholders to gather requirements and define user needs.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Create wireframes, prototypes, and mockups that effectively illustrate design ideas and user flows.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Design user interfaces that balance aesthetics, functionality, and usability.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Conduct user research, analyze user feedback, and iterate on designs to enhance user experience.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Implement user-centered design principles to ensure consistency and coherence across platforms.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Collaborate with developers to ensure designs are accurately implemented.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Stay updated on industry trends, best practices, and emerging technologies related to UX/UI design.</span></li>\r\n</ul>', '<ul style=\"margin-top: 0in;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Proficiency in design and prototyping tools such as Adobe XD, Sketch, Figma, or similar.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Strong understanding of user-centered design principles and usability concepts.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Ability to create visually appealing and intuitive user interfaces.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Excellent communication and collaboration skills to work effectively with cross-functional teams.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Problem-solving skills to address design challenges and create innovative solutions.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Attention to detail and the ability to work in a fast-paced environment.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Knowledge of front-end development technologies is a plus.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Portfolio showcasing previous UX/UI design projects and problem-solving skills.</span></li>\r\n</ul>', '<p><span style=\"color: #cecac3; font-family: S&ouml;hne, ui-sans-serif, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, \'Helvetica Neue\', Arial, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; white-space-collapse: preserve; background-color: #393e40; --darkreader-inline-color: #c6c1b9; --darkreader-inline-bgcolor: #2e3133;\" data-darkreader-inline-color=\"\" data-darkreader-inline-bgcolor=\"\">A bachelor\'s degree in Graphic Design, Interaction Design, Human-Computer Interaction, or a related field is typically required for this position. However, equivalent experience and a strong portfolio demonstrating relevant skills can also be considered</span></p>', '<ul style=\"margin-top: 0in;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Competitive salary and compensation package.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Opportunity to work on a wide range of projects across different industries.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Chance to collaborate with talented professionals in a dynamic and creative environment.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Professional development opportunities to enhance skills and stay updated with industry trends.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Potential for career growth within the company.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Health and wellness benefits.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Positive work culture that values innovation and teamwork.</span></li>\r\n</ul>', '2023-10-27', 2, 18, 16, 2, 1, 3, 5, NULL, 1, 1, '2023-08-27 23:24:07', '2023-08-27 23:24:07'),
(16, 10, 'Accountant', '<p class=\"MsoNormal\"><span style=\"mso-no-proof: yes;\">As an Accountant, you will play a crucial role in managing financial transactions, preparing financial statements, and ensuring the accuracy of financial records. This role requires attention to detail, analytical skills, and a solid understanding of accounting principles and regulations.</span></p>', '<ul style=\"margin-top: 0in;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Prepare and maintain accurate financial records, including ledgers, journals, and invoices.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Process financial transactions, including accounts payable and accounts receivable.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Reconcile bank statements and other financial documents.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Prepare and analyze financial statements, such as income statements and balance sheets.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Assist in budget preparation and forecasting.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Ensure compliance with relevant accounting standards and regulations.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Handle tax preparation and filing.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Contribute to the preparation of financial reports for management.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Assist with internal and external audits.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Provide financial advice and support to management.</span></li>\r\n</ul>', '<ul style=\"margin-top: 0in;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Strong understanding of accounting principles, practices, and regulations.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Proficiency in using accounting software and tools.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Excellent numerical and analytical skills.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Attention to detail and accuracy in financial record-keeping.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Effective communication skills for collaborating with colleagues and presenting financial data.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Problem-solving abilities to identify discrepancies and resolve financial issues.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Organizational skills to manage multiple tasks and deadlines.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Ability to adapt to changing financial regulations and standards.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Ethical and trustworthy conduct in handling sensitive financial information.</span></li>\r\n</ul>', '<ul style=\"margin-top: 0in;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Bachelor\'s degree in Accounting, Finance, or a related field.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Professional certifications such as ACCA, CIMA, or CPA are preferred but not always mandatory.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Relevant postgraduate degrees or additional certifications can be advantageous.</span></li>\r\n</ul>', '<ul style=\"margin-top: 0in;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Competitive salary and compensation package.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Opportunity to work with reputable companies and gain valuable experience.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Chance to advance your career in the finance and accounting field.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Networking opportunities within the financial sector in Ghana.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Exposure to diverse industries and business operations.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Continuous learning and professional development opportunities.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Health and retirement benefits, depending on the employer.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Work-life balance initiatives and supportive work environments.</span></li>\r\n</ul>', '2023-10-28', 3, 3, 9, 3, 3, 3, 10, NULL, 1, 1, '2023-08-28 09:21:07', '2023-08-28 09:21:07'),
(17, 10, 'Human Resources Manager', '<p><span style=\"color: #cecac3; font-family: S&ouml;hne, ui-sans-serif, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, \'Helvetica Neue\', Arial, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; white-space-collapse: preserve; background-color: #393e40; --darkreader-inline-color: #c6c1b9; --darkreader-inline-bgcolor: #2e3133;\" data-darkreader-inline-color=\"\" data-darkreader-inline-bgcolor=\"\">We are seeking a dynamic and experienced Human Resources Manager to join our team in Ghana. The ideal candidate will be responsible for overseeing all aspects of the HR department, ensuring the effective management of human resources processes, policies, and procedures.</span></p>', '<ul style=\"margin-top: 0in;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Develop and implement HR policies and procedures in compliance with local labor laws.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Manage the recruitment and selection process, including sourcing candidates, conducting interviews, and onboarding.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Oversee employee relations, addressing and resolving workplace issues.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Administer employee benefits and compensation programs.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Provide guidance and support to managers and employees regarding HR-related matters.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Ensure compliance with health and safety regulations.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Manage performance appraisal and feedback processes.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Conduct training and development programs for employees.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Handle disciplinary actions when necessary.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Maintain and update employee records and HR databases.</span></li>\r\n</ul>', '<ul style=\"margin-top: 0in;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Strong knowledge of Ghanaian labor laws and regulations.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Excellent interpersonal and communication skills.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Problem-solving and conflict resolution abilities.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Proficiency in HR software and tools.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Strong organizational and time management skills.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Ability to maintain confidentiality.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Leadership and team management skills.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Adaptability and flexibility in a changing environment.</span></li>\r\n</ul>', '<ul style=\"margin-top: 0in;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Bachelor\'s degree in Human Resources Management, Business Administration, or a related field.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Professional certification in HR (e.g., SHRM, HRCI) is preferred.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Minimum of 5 years of HR management experience, with a proven track record in a similar </span></li>\r\n</ul>\r\n<p class=\"MsoNormal\"><span style=\"mso-no-proof: yes;\">&nbsp;</span></p>', '<ul style=\"margin-top: 0in;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Competitive salary package commensurate with experience.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Health and wellness benefits.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Professional development opportunities.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Supportive and inclusive work environment.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Opportunity to make a meaningful impact on the organization.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Employee recognition programs.</span></li>\r\n</ul>', '2023-11-28', 2, 7, 16, 1, 5, 3, 10, NULL, 1, 1, '2023-08-28 09:26:29', '2023-08-28 09:26:29'),
(18, 10, 'Administrative Assistant', '<p><span style=\"color: #cecac3; font-family: S&ouml;hne, ui-sans-serif, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, \'Helvetica Neue\', Arial, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; white-space-collapse: preserve; background-color: #393e40; --darkreader-inline-color: #c6c1b9; --darkreader-inline-bgcolor: #2e3133;\" data-darkreader-inline-color=\"\" data-darkreader-inline-bgcolor=\"\">Welcome to our job search portal\'s Administrative Assistant job listing in Ghana. This role is crucial for maintaining the efficient operation of an organization by providing administrative and clerical support to various departments and teams.</span></p>', '<ul style=\"margin-top: 0in;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Managing and organizing paperwork, documents, and files.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Answering and directing phone calls, emails, and inquiries to the appropriate personnel.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Scheduling appointments, meetings, and travel arrangements.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Assisting in preparing reports, presentations, and correspondence.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Coordinating and facilitating communication between departments.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Greeting and assisting visitors and clients.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Maintaining office supplies and equipment inventory.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Performing data entry and basic bookkeeping tasks.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Supporting the team in various administrative tasks.</span></li>\r\n</ul>', '<ul style=\"margin-top: 0in;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Excellent communication skills, both written and verbal.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Strong organizational and multitasking abilities.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Proficiency in using office software (e.g., Microsoft Office Suite).</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Attention to detail and accuracy in completing tasks.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Time management skills to prioritize tasks effectively.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Problem-solving capabilities to handle unexpected situations.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Professionalism and discretion in dealing with sensitive information.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Customer service orientation for interacting with visitors and clients.</span></li>\r\n</ul>', '<ul style=\"margin-top: 0in;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">A high school diploma or equivalent.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Additional certifications or training in office administration is a plus.</span></li>\r\n</ul>\r\n<p class=\"MsoNormal\"><span style=\"mso-no-proof: yes;\">&nbsp;</span></p>', '<ul style=\"margin-top: 0in;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Competitive salary based on experience and qualifications.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Health and wellness benefits, including medical insurance.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Professional development opportunities and training.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Collaborative and inclusive work environment.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Opportunities for growth within the organization.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Paid time off and leave benefits.</span></li>\r\n</ul>', '2023-10-28', 3, 20, 11, 3, 2, 1, 5, NULL, 1, 1, '2023-08-28 09:52:13', '2023-08-28 09:52:13'),
(19, 10, 'Sales Representative', '<p class=\"MsoNormal\"><span style=\"mso-no-proof: yes;\">Welcome to our job search portal for Sales Representative positions in Ghana. This platform connects job seekers with opportunities in the dynamic field of sales. As a Sales Representative, you will play a crucial role in promoting and selling products or services to potential customers. This role requires effective communication, negotiation skills, and a strong drive to meet sales targets.</span></p>', '<ul style=\"margin-top: 0in;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Actively seek out and approach potential customers to introduce products or services.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Present, demonstrate, and explain the features and benefits of products to potential clients.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Build and maintain strong relationships with clients to ensure customer satisfaction and repeat business.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Achieve and exceed sales targets by developing and implementing effective sales strategies.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Prepare and submit sales reports, forecasts, and market analysis to management.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Collaborate with marketing and product teams to provide feedback from clients and contribute to product development.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Keep up-to-date with industry trends, competitors, and market conditions to identify new opportunities.</span></li>\r\n</ul>', '<ul style=\"margin-top: 0in;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Excellent interpersonal and communication skills to effectively interact with clients.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Strong persuasion and negotiation abilities to close sales deals.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Self-motivated and goal-oriented mindset to meet and surpass sales targets.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Problem-solving skills to address client concerns and objections.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Time management and organizational skills to prioritize leads and follow-ups.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Adaptability to changing market conditions and client preferences.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Proficiency in using sales tools and software.</span></li>\r\n</ul>', '<ul style=\"margin-top: 0in;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">A minimum of a high school diploma or equivalent is usually required.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">A degree in business, marketing, or a related field can be an advantage.</span></li>\r\n</ul>', '<ul style=\"margin-top: 0in;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Competitive commission-based compensation structure.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Opportunity for career growth and advancement within the sales department.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Training and professional development to enhance sales skills.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Networking opportunities within the industry.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Performance-based incentives and bonuses.</span></li>\r\n<li class=\"MsoNormal\" style=\"mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"mso-no-proof: yes;\">Flexible work arrangements in some cases.</span></li>\r\n</ul>', '2023-12-28', 1, 20, 2, 3, 1, 3, 8, NULL, 1, 1, '2023-08-28 10:00:31', '2023-08-28 10:00:31');

-- --------------------------------------------------------

--
-- Table structure for table `job_categories`
--

CREATE TABLE `job_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `icon` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_categories`
--

INSERT INTO `job_categories` (`id`, `name`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Engineering', 'fas fa-magic', '2023-05-24 12:56:00', '2023-05-24 12:56:00'),
(2, 'Medical', 'fas fa-stethoscope', '2023-05-24 12:56:24', '2023-05-24 12:56:24'),
(3, 'Accounting', 'fas fa-landmark', '2023-05-24 12:58:42', '2023-05-24 12:58:42'),
(4, 'Garments', 'fas fa-users', '2023-05-24 13:00:01', '2023-05-24 13:00:01'),
(5, 'Date Entry', 'fas fa-share-alt', '2023-05-24 13:05:26', '2023-05-24 15:18:22'),
(6, 'Marketing', 'fas fa-bullhorn', '2023-05-24 13:05:54', '2023-05-24 13:05:54'),
(7, 'Production', 'fas fa-sitemap', '2023-05-24 13:07:21', '2023-05-24 13:07:21'),
(8, 'Education', 'fas fa-user-graduate', '2023-05-24 13:08:48', '2023-05-24 13:08:48'),
(10, 'Technician', 'fas fa-street-view', '2023-05-24 13:10:15', '2023-05-24 13:10:15'),
(12, 'Security', 'fas fa-lock', '2023-05-29 23:59:03', '2023-05-29 23:59:03'),
(13, 'Telecommunication', 'fas fa-vector-square', '2023-05-30 00:00:17', '2023-05-30 00:00:17'),
(14, 'Commercial', 'fas fa-suitcase', '2023-05-30 00:00:48', '2023-05-30 00:00:48'),
(15, 'Marketing', 'fas fa-comments-dollar', '2023-08-27 18:15:54', '2023-08-27 18:15:54'),
(16, 'Nursing', 'fas fa-briefcase-medical', '2023-08-27 18:17:23', '2023-08-27 18:17:23'),
(17, 'Data Analysis', 'fas fa-database', '2023-08-27 18:19:07', '2023-08-27 18:19:07'),
(18, 'Graphic Designing', 'fas fa-paint-brush', '2023-08-27 18:20:23', '2023-08-27 18:20:23'),
(19, 'Media', 'fas fa-chalkboard', '2023-08-27 19:47:57', '2023-08-27 19:47:57'),
(20, 'Customer Service', 'fas fa-assistive-listening-systems', '2023-08-27 19:49:03', '2023-08-27 19:49:03'),
(21, 'Full Stack Engineer', 'fas fa-keyboard', '2023-08-27 23:06:44', '2023-08-27 23:06:44');

-- --------------------------------------------------------

--
-- Table structure for table `job_experiences`
--

CREATE TABLE `job_experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_experiences`
--

INSERT INTO `job_experiences` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Fresher', '2023-06-14 17:15:13', '2023-06-14 17:15:13'),
(2, '1 Year', '2023-06-14 17:15:46', '2023-06-14 17:15:46'),
(3, '2 Years', '2023-06-14 17:15:59', '2023-06-14 17:15:59'),
(4, '3 Years', '2023-06-14 17:16:26', '2023-06-14 17:16:26'),
(5, '4 Years', '2023-06-14 17:16:37', '2023-06-14 17:16:37'),
(6, '5+ Years', '2023-06-14 17:16:50', '2023-06-14 17:20:58');

-- --------------------------------------------------------

--
-- Table structure for table `job_genders`
--

CREATE TABLE `job_genders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_genders`
--

INSERT INTO `job_genders` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Male', '2023-06-14 20:07:43', '2023-06-14 20:07:43'),
(2, 'Female', '2023-06-14 20:07:54', '2023-06-14 20:07:54'),
(3, 'Not Specified', '2023-06-14 20:08:20', '2023-06-14 20:08:20');

-- --------------------------------------------------------

--
-- Table structure for table `job_locations`
--

CREATE TABLE `job_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_locations`
--

INSERT INTO `job_locations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Tamale Municipal', '2023-06-14 15:17:19', '2023-08-27 17:44:53'),
(2, 'Tema', '2023-06-14 15:17:31', '2023-08-27 17:45:58'),
(3, 'Takoradi', '2023-06-14 15:17:41', '2023-08-27 17:46:09'),
(4, 'Takwa', '2023-06-14 15:17:50', '2023-08-27 17:46:20'),
(5, 'Wa Municipal', '2023-06-14 15:18:00', '2023-08-27 17:46:47'),
(7, 'Sunyani', '2023-08-08 11:42:13', '2023-08-27 17:47:11'),
(8, 'Bolgatanga', '2023-08-08 11:47:11', '2023-08-27 17:47:27'),
(9, 'Kumasi', '2023-08-27 17:47:47', '2023-08-27 17:47:47'),
(10, 'Techiman', '2023-08-27 17:48:05', '2023-08-27 17:48:05'),
(11, 'Wenchi', '2023-08-27 17:48:13', '2023-08-27 17:48:13'),
(12, 'Nungua', '2023-08-27 17:48:31', '2023-08-27 17:48:31'),
(13, 'Koforidua', '2023-08-27 17:49:02', '2023-08-27 17:49:02'),
(14, 'Cape Coast', '2023-08-27 17:49:16', '2023-08-27 17:49:16'),
(15, 'Ho', '2023-08-27 17:49:29', '2023-08-27 17:49:29'),
(16, 'Accra', '2023-08-27 20:02:32', '2023-08-27 20:02:32');

-- --------------------------------------------------------

--
-- Table structure for table `job_salary_ranges`
--

CREATE TABLE `job_salary_ranges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_salary_ranges`
--

INSERT INTO `job_salary_ranges` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'GH₵100-GH₵500', '2023-06-14 22:28:29', '2023-08-23 15:02:43'),
(2, 'GH₵500-GH₵1000', '2023-06-14 22:28:54', '2023-08-23 15:03:10'),
(3, 'GH₵1000-GH₵1500', '2023-06-14 22:29:43', '2023-08-23 15:03:27'),
(4, 'GH₵1500-GH₵2000', '2023-06-14 22:30:13', '2023-08-23 15:03:48'),
(5, 'GH₵2000-GH₵2500', '2023-06-14 22:30:37', '2023-08-23 15:04:01'),
(7, 'GH₵2500-GH₵3000', '2023-06-14 22:44:20', '2023-08-23 15:04:22'),
(8, 'GH₵3000-GH₵3500', '2023-06-14 22:44:49', '2023-08-23 15:04:42'),
(9, 'GH₵3500-GH₵4000', '2023-06-14 22:45:12', '2023-08-23 15:04:57'),
(10, 'GH₵4000+', '2023-08-27 17:50:39', '2023-08-27 17:50:39');

-- --------------------------------------------------------

--
-- Table structure for table `job_types`
--

CREATE TABLE `job_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_types`
--

INSERT INTO `job_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Full Time', '2023-06-14 16:34:16', '2023-06-14 16:34:16'),
(2, 'Part Time', '2023-06-14 16:34:26', '2023-06-14 16:34:26'),
(3, 'Contractual', '2023-06-14 16:34:37', '2023-06-14 16:34:37'),
(4, 'Internship', '2023-06-14 16:34:48', '2023-06-14 16:34:48'),
(5, 'National Service', '2023-06-14 16:35:00', '2023-06-14 16:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_05_04_093938_create_admins_table', 1),
(7, '2023_05_22_114648_create_page_home_items_table', 2),
(9, '2023_05_24_100745_create_job_categories_table', 3),
(10, '2023_05_30_202735_create_why_choose_items_table', 4),
(11, '2023_06_01_093604_create_testimonials_table', 5),
(12, '2023_06_03_145444_create_posts_table', 6),
(13, '2023_06_05_155955_create_faqs_table', 7),
(14, '2023_06_05_195858_create_page_faq_items_table', 8),
(15, '2023_06_06_161417_create_page_blog_items_table', 9),
(16, '2023_06_07_002851_create_page_terms_items_table', 10),
(17, '2023_06_07_094613_create_page_term_items_table', 11),
(18, '2023_06_07_095220_create_page_term_items_table', 12),
(19, '2023_06_07_095411_create_page_term_items_table', 13),
(20, '2023_06_07_143718_create_privacy_items_table', 14),
(21, '2023_06_07_143947_create_page_privacy_items_table', 15),
(22, '2023_06_07_151922_create_page_contact_items_table', 16),
(23, '2023_06_07_221415_create_page_job_category_items_table', 17),
(24, '2023_06_08_005748_create_packages_table', 18),
(25, '2023_06_10_122910_create_page_pricing_items_table', 19),
(26, '2023_06_10_175501_create_page_other_items_table', 20),
(27, '2023_06_11_020819_create_companies_table', 21),
(28, '2023_06_12_165952_create_candidates_table', 22),
(29, '2023_06_13_230215_create_orders_table', 23),
(30, '2023_06_14_145041_create_job_locations_table', 24),
(31, '2023_06_14_162026_create_job_types_table', 25),
(32, '2023_06_14_164744_create_job_experiences_table', 26),
(33, '2023_06_14_172709_create_job_genders_table', 27),
(34, '2023_06_14_205613_create_job_salary_ranges_table', 28),
(35, '2023_06_15_144512_create_company_locations_table', 29),
(36, '2023_06_15_222923_create_company_industries_table', 30),
(37, '2023_06_15_224819_create_company_sizes_table', 31),
(38, '2023_06_17_090108_create_company_photos_table', 32),
(39, '2023_06_17_094925_create_company_photos_table', 33),
(40, '2023_06_17_235235_create_company_videos_table', 34),
(41, '2023_06_18_040943_create_jobs_table', 35),
(42, '2023_06_18_124344_create_jobs_table', 36),
(43, '2023_06_24_120910_create_candidate_education_table', 37),
(44, '2023_06_24_171459_create_candidate_skills_table', 38),
(45, '2023_06_24_225025_create_candidate_experiences_table', 39),
(46, '2023_06_25_000628_create_candidate_awards_table', 40),
(47, '2023_06_25_224551_create_candidate_resumes_table', 41),
(48, '2023_08_16_071045_create_candidate_bookmarks_table', 42),
(49, '2023_08_19_230756_create_candidate_applicatons_table', 43),
(50, '2023_08_19_233304_create_candidate_applicatons_table', 44),
(51, '2023_08_20_102815_create_advertisements_table', 45);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `order_no` varchar(255) NOT NULL,
  `paid_amount` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `expire_date` varchar(255) NOT NULL,
  `currently_active` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `company_id`, `package_id`, `order_no`, `paid_amount`, `payment_method`, `start_date`, `expire_date`, `currently_active`, `created_at`, `updated_at`) VALUES
(1, 5, 2, '1686709207', '29', 'PayPal', '2023-06-14', '2023-07-14', 0, '2023-06-14 02:20:07', '2023-08-28 09:29:56'),
(2, 5, 2, '1686709349', '29', 'PayPal', '2023-06-14', '2023-07-14', 0, '2023-06-14 02:22:29', '2023-08-28 09:29:56'),
(3, 5, 3, '1686712957', '49', 'PayPal', '2023-06-14', '2023-09-12', 0, '2023-06-14 03:22:37', '2023-08-28 09:29:56'),
(4, 5, 2, '1686736274', '29', 'PayPal', '2023-06-14', '2023-07-14', 0, '2023-06-14 09:51:14', '2023-08-28 09:29:56'),
(5, 5, 1, '1686739305', '18', 'Stripe', '2023-06-14', '2023-06-21', 0, '2023-06-14 10:41:45', '2023-08-28 09:29:56'),
(6, 5, 2, '1687044455', '29', 'Stripe', '2023-06-17', '2023-07-17', 0, '2023-06-17 23:27:35', '2023-08-28 09:29:56'),
(7, 5, 2, '1691326405', '10', 'PayPal', '2023-08-06', '2023-09-05', 0, '2023-08-06 12:53:25', '2023-08-28 09:29:56'),
(9, 6, 2, '1691615829', '10', 'Stripe', '2023-08-09', '2023-09-08', 1, '2023-08-09 21:17:09', '2023-08-09 21:17:09'),
(10, 11, 2, '1691733673', '10', 'Stripe', '2023-08-11', '2023-09-10', 1, '2023-08-11 06:01:13', '2023-08-11 06:01:13'),
(12, 12, 2, '1691735896', '10', 'Stripe', '2023-08-11', '2023-09-10', 0, '2023-08-11 06:38:16', '2023-08-27 23:18:52'),
(13, 8, 2, '1691736063', '10', 'PayPal', '2023-08-11', '2023-09-10', 1, '2023-08-11 06:41:03', '2023-08-11 06:41:03'),
(14, 7, 2, '1691736535', '10', 'PayPal', '2023-08-11', '2023-09-10', 0, '2023-08-11 06:48:55', '2023-08-27 20:16:20'),
(16, 5, 1, '1692698775', '4', 'PayPal', '2023-08-22', '2023-08-29', 0, '2023-08-22 10:06:15', '2023-08-28 09:29:56'),
(17, 7, 1, '1693167343', '4', 'PayPal', '2023-08-27', '2023-09-03', 0, '2023-08-27 20:15:43', '2023-08-27 20:16:20'),
(18, 7, 3, '1693167380', '20', 'PayPal', '2023-08-27', '2023-11-25', 1, '2023-08-27 20:16:20', '2023-08-27 20:16:20'),
(19, 12, 3, '1693178332', '20', 'Stripe', '2023-08-27', '2023-11-25', 1, '2023-08-27 23:18:52', '2023-08-27 23:18:52'),
(20, 10, 3, '1693213569', '20', 'PayPal', '2023-08-28', '2023-11-26', 1, '2023-08-28 09:06:09', '2023-08-28 09:06:09'),
(21, 5, 3, '1693214996', '20', 'Stripe', '2023-08-28', '2023-11-26', 1, '2023-08-28 09:29:56', '2023-08-28 09:29:56');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_name` varchar(200) NOT NULL,
  `package_price` smallint(4) NOT NULL,
  `package_days` smallint(4) NOT NULL,
  `package_display_time` varchar(100) NOT NULL,
  `total_allowed_jobs` tinyint(4) NOT NULL,
  `total_allowed_featured_jobs` tinyint(4) NOT NULL,
  `total_allowed_photos` tinyint(4) NOT NULL,
  `total_allowed_videos` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `package_name`, `package_price`, `package_days`, `package_display_time`, `total_allowed_jobs`, `total_allowed_featured_jobs`, `total_allowed_photos`, `total_allowed_videos`, `created_at`, `updated_at`) VALUES
(1, 'Basic', 4, 7, '1 Week', 5, 0, 0, 0, '2023-06-09 11:08:45', '2023-06-24 18:18:53'),
(2, 'Standard', 10, 30, '1 Month', 10, 2, 2, 2, '2023-06-09 11:10:37', '2023-06-09 11:10:37'),
(3, 'Gold', 20, 90, '3 Months', -1, 15, 10, 10, '2023-06-09 11:11:53', '2023-06-09 11:11:53');

-- --------------------------------------------------------

--
-- Table structure for table `page_blog_items`
--

CREATE TABLE `page_blog_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text NOT NULL,
  `title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_blog_items`
--

INSERT INTO `page_blog_items` (`id`, `heading`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Blog Page', 'Blog', 'Blog', NULL, '2023-06-06 16:39:18');

-- --------------------------------------------------------

--
-- Table structure for table `page_contact_items`
--

CREATE TABLE `page_contact_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text NOT NULL,
  `map_code` text NOT NULL,
  `title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_contact_items`
--

INSERT INTO `page_contact_items` (`id`, `heading`, `map_code`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Contact', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31763.674198198372!2d-0.21164172413147656!3d5.646493095274272!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xfdf9c7dd4389017%3A0x8a140595c282296d!2sLegon%2C%20Accra!5e0!3m2!1sen!2sgh!4v1686152479024!5m2!1sen!2sgh\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Contact', 'Contact', NULL, '2023-06-07 16:36:00');

-- --------------------------------------------------------

--
-- Table structure for table `page_faq_items`
--

CREATE TABLE `page_faq_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text NOT NULL,
  `title` text DEFAULT NULL,
  `meta_description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_faq_items`
--

INSERT INTO `page_faq_items` (`id`, `heading`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Frequently Asked Questions (FAQ)', 'FAQ', 'FAQ', NULL, '2023-06-05 22:25:52');

-- --------------------------------------------------------

--
-- Table structure for table `page_home_items`
--

CREATE TABLE `page_home_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text NOT NULL,
  `text` text DEFAULT NULL,
  `job_title` text NOT NULL,
  `job_category` text NOT NULL,
  `job_location` text NOT NULL,
  `search` text NOT NULL,
  `background` text NOT NULL,
  `job_category_heading` text NOT NULL,
  `job_category_subheading` text DEFAULT NULL,
  `job_category_status` text NOT NULL,
  `why_choose_heading` text NOT NULL,
  `why_choose_subheading` text DEFAULT NULL,
  `why_choose_background` text NOT NULL,
  `why_choose_status` text NOT NULL,
  `featured_jobs_heading` text NOT NULL,
  `featured_jobs_subheading` text DEFAULT NULL,
  `featured_jobs_status` text NOT NULL,
  `testimonial_heading` text NOT NULL,
  `testimonial_background` text NOT NULL,
  `testimonial_status` text NOT NULL,
  `blog_heading` text NOT NULL,
  `blog_subheading` text DEFAULT NULL,
  `blog_status` text NOT NULL,
  `title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_home_items`
--

INSERT INTO `page_home_items` (`id`, `heading`, `text`, `job_title`, `job_category`, `job_location`, `search`, `background`, `job_category_heading`, `job_category_subheading`, `job_category_status`, `why_choose_heading`, `why_choose_subheading`, `why_choose_background`, `why_choose_status`, `featured_jobs_heading`, `featured_jobs_subheading`, `featured_jobs_status`, `testimonial_heading`, `testimonial_background`, `testimonial_status`, `blog_heading`, `blog_subheading`, `blog_status`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Find Your Desired Job', NULL, 'Job Title', 'Job Category', 'Job Location', 'Search', 'banner_home.jpg', 'Job Categories', 'Get the list of all popular job categories here', 'Show', 'Why Choose Us', NULL, 'why_choose_home_background.jpg', 'Show', 'Featured Jobs', 'Find the awesome jobs that matches your skill', 'Show', 'Our Happy Clients', 'testimonial_home_background.jpg', 'Show', 'Latest News', 'Check our latest news from the following section', 'Show', 'JobHunt-A complete job search portal', 'JobHunt-A complete job search portal', NULL, '2023-06-10 17:24:25');

-- --------------------------------------------------------

--
-- Table structure for table `page_job_category_items`
--

CREATE TABLE `page_job_category_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text NOT NULL,
  `title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_job_category_items`
--

INSERT INTO `page_job_category_items` (`id`, `heading`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Job Categories', 'Job Categories', 'Job Categories', NULL, '2023-06-07 23:51:53');

-- --------------------------------------------------------

--
-- Table structure for table `page_other_items`
--

CREATE TABLE `page_other_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `login_page_heading` text NOT NULL,
  `login_page_title` text DEFAULT NULL,
  `login_page_meta_description` text DEFAULT NULL,
  `signup_page_heading` text NOT NULL,
  `signup_page_title` text DEFAULT NULL,
  `signup_page_meta_description` text DEFAULT NULL,
  `forget_password_page_heading` text NOT NULL,
  `forget_password_page_title` text DEFAULT NULL,
  `forget_password_page_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_other_items`
--

INSERT INTO `page_other_items` (`id`, `login_page_heading`, `login_page_title`, `login_page_meta_description`, `signup_page_heading`, `signup_page_title`, `signup_page_meta_description`, `forget_password_page_heading`, `forget_password_page_title`, `forget_password_page_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Login', 'Login', 'Login', 'Create Account', 'signup', 'signup', 'Forget Password', NULL, NULL, NULL, '2023-06-10 23:05:50');

-- --------------------------------------------------------

--
-- Table structure for table `page_pricing_items`
--

CREATE TABLE `page_pricing_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text NOT NULL,
  `title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_pricing_items`
--

INSERT INTO `page_pricing_items` (`id`, `heading`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Pricing', 'Pricing', 'Pricing', NULL, '2023-06-10 14:02:02');

-- --------------------------------------------------------

--
-- Table structure for table `page_privacy_items`
--

CREATE TABLE `page_privacy_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text NOT NULL,
  `content` text NOT NULL,
  `title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_privacy_items`
--

INSERT INTO `page_privacy_items` (`id`, `heading`, `content`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Privacy Policy', '<p>Lorem ipsum dolor sit amet, cu postea reformidans qui. Ut qui ullum signiferumque, nullam dictas mea an. Cu vis tibique reprimique, et vix rebum dicunt interpretaris, choro partem ne vis. In graeco feugait mel, ad brute referrentur pro, hinc cibo forensibus vel ne. Agam doctus pertinacia nec no. Te nec verear inimicus mediocrem, at mei autem ipsum tacimates.</p>\r\n<p>Atomorum oportere neglegentur ei eos, ne commodo persius delicata vim, vim eleifend tractatos mnesarchum id. Cum iriure invenire constituto eu. Mel id bonorm quaerendum, eu sit reque tantas. Pri elitr fastidii intellegam no, laoreet copiosae eu sed, probo ipsum iriure eum in.</p>\r\n<p>Nusquam luptatum suavitate no sea, viderer tamquam ei sit. Et sit nullam placerat. Velit accommodare vim an, eu atqui dolor salutandi pro. Vel an probo possit quodsi, qui soluta fabulas ad. At sit option meliore feugait.</p>\r\n<p>Ea eum simul moderatius theophrastus, amet aliquando moderatius mel in. Etiam dolores oporteat cu his, ex primis voluptua vix. Amet harum an ius, no nam dicant postulant accommodare, stet iuvaret quo ad. Id bonorum adipiscing his, ei elitr efficiantur nam. Vis quidam causae patrioque no.</p>\r\n<p>Ne eum luptatum principes intellegam. Sea mutat autem veritus ad, nam ex possim accusam liberavisse. No vel amet mucius phaedrum. Et unum mazim adversarium pri, vix reque solet elaboraret id, eum nullam possim id. Ius exerci postea labitur te, stet vero homero ex quo, ne quo aeque animal.</p>\r\n<p>Mel nusquam menandri ex, ad animal atomorum postulant vim. Tempor nonumes placerat per ei, te quot nobis per. Alii stet dissentiet at est, suas latine appetere ut pro. Natum utinam saperet ad ius, pro dicit nominati splendide id. Mea nostrum eleifend elaboraret ea.</p>\r\n<p>Ei usu fabulas aliquando. At iisque voluptatibus concludaturque ius. Fuisset volutpat accusamus ea pro, eu sed solet postea. Accusam phaedrum has ea. Case aliquid copiosae ad nec.</p>\r\n<p>Debet democritum te qui, ex invenire partiendo temporibus sed, mea eros adipisci cu. Esse paulo integre ut cum, at mei alii constituto eloquentiam. Sit cu ipsum nulla, rebum falli ex his, vel option alienum te. Nibh definiebas sit in, qui unum ocurreret concludaturque et, ius no diam dicant nostrum. Vis graece graeco temporibus an, ad mel etiam scripta democritum.</p>\r\n<p>An mea mnesarchum ullamcorper, duo dicunt scripta viderer ei. Id ipsum eripuit vim, his duis ponderum moderatius in. Vis ad aeque possim delenit, ne est velit inani liberavisse, an usu animal eruditi liberavisse. Meis oblique aliquando no sea, has ne periculis referrentur.</p>\r\n<p>Adhuc novum has ad, possim urbanitas at eam, pri no facer aperiam. Ea ullum aliquam argumentum vis, nec ea quod oporteat. Cu vim erant argumentum, et sit aeterno prompta dolores, per at elit idque aeterno. Numquam debitis expetendis ea duo, ad unum deleniti mei, cum doming fierent ne.</p>\r\n<p>In eum eripuit veritus delicata, ne feugiat gloriatur mea. Offendit voluptua at vix, ad qui tacimates similique, vis id agam tantas omittam. Iracundia assueverit eu his. Id antiopam concludaturque has. Ei vix nusquam praesent, habeo deserunt mei at. Ei admodum expetendis est, id adolescens sadipscing has, ea qui commodo graecis erroribus.</p>\r\n<p>At qui consul labitur detracto, vim eu wisi quas fastidii. Id his exerci fierent. Nostrud quaeque omnesque quo te, at vim dicant mucius semper. Quo nihil voluptua id, postulant petentium id nec. Eu mollis mentitum repudiare cum. Vis at delenit noluisse tractatos, mea no mandamus consulatu ullamcorper. Labores oporteat duo id, aliquid tibique vis et.</p>\r\n<p>Mandamus disputationi his in, in pro erat exerci. Nec prima dicta qualisque ad, et sed luptatum facilisi. Nam virtute deterruisset te, cu oportere interesset eos. Elit ancillae in vix, ei facete noluisse petentium vix. In eam virtute ancillae.</p>\r\n<p>Eos id melius tincidunt, no maiorum offendit ocurreret vim. Ea qui posse impetus pericula, ne mundi deleniti interesset mel. In consul omnium vis, vix nisl conceptam id. Ea modo nobis menandri eum, ex vide consul suscipit mei. Quas instructior mel id</p>\r\n<p>Nam at purto recusabo dissentiet. Qui delectus corrumpit ad. Illum iudico iracundia no his, ut idque intellegam vis. Vel in inani recteque honestatis, te pro partem elaboraret suscipiantur, sit diam patrioque eu. Homero corpora qualisque cu nam, ea adhuc aeque virtute nam, laudem habemus quo eu. Te quo tantas accumsan officiis.</p>\r\n<p>His dicit albucius placerat et. Vitae gubergren voluptatum eam ei, eu appareat vituperata theophrastus vim, putent dolorum pericula te has. Sit adolescens percipitur in, te nec consul populo aliquando. Ea dicta tibique volutpat usu.</p>\r\n<p>Malis omnium ei nam. Ei qui alii congue labores. Te congue ceteros mel. An cetero insolens duo, mandamus facilisis cum ad, sale disputando id vix. Iudico nonumy percipit cu usu, discere delenit iracundia duo no, mei case lorem graeci ei.</p>\r\n<p>Cu his tantas labore sanctus, aeque verear minimum per ne. Est eu expetendis moderatius dissentiet, qui ut legendos persecuti. Omnis oportere eam te. Id facete voluptua indoctum per.</p>\r\n<p>In usu porro equidem, tota oblique tibique eum et. Te aperiam similique conclusionemque eos, at oblique corpora tincidunt eum. Timeam mentitum percipit sit te, eos indoctum concludaturque no, sit hinc necessitatibus conclusionemque ei. Iudicabit consetetur reprimique qui cu, ex partem probatus his, iisque discere necessitatibus an mei. Ei decore putent usu.</p>\r\n<p>Ad nam utroque sapientem. Eum in nobis copiosae. Ullum libris nam id. No detraxit sapientem vim, ei eam nostrum molestie mediocrem.</p>', 'Privacy Policy', 'Privacy Policy', NULL, '2023-06-07 15:15:57');

-- --------------------------------------------------------

--
-- Table structure for table `page_term_items`
--

CREATE TABLE `page_term_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text NOT NULL,
  `content` text NOT NULL,
  `title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_term_items`
--

INSERT INTO `page_term_items` (`id`, `heading`, `content`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Terms of Use', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #d1cdc7; font-family: \'Work Sans\', sans-serif; font-size: 15px; background-color: #181a1b; --darkreader-inline-color: #c8c3bc; --darkreader-inline-bgcolor: #131516;\" data-darkreader-inline-color=\"\" data-darkreader-inline-bgcolor=\"\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio. Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #d1cdc7; font-family: \'Work Sans\', sans-serif; font-size: 15px; background-color: #181a1b; --darkreader-inline-color: #c8c3bc; --darkreader-inline-bgcolor: #131516;\" data-darkreader-inline-color=\"\" data-darkreader-inline-bgcolor=\"\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio. Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #d1cdc7; font-family: \'Work Sans\', sans-serif; font-size: 15px; background-color: #181a1b; --darkreader-inline-color: #c8c3bc; --darkreader-inline-bgcolor: #131516;\" data-darkreader-inline-color=\"\" data-darkreader-inline-bgcolor=\"\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio. Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #d1cdc7; font-family: \'Work Sans\', sans-serif; font-size: 15px; background-color: #181a1b; --darkreader-inline-color: #c8c3bc; --darkreader-inline-bgcolor: #131516;\" data-darkreader-inline-color=\"\" data-darkreader-inline-bgcolor=\"\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio. Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #d1cdc7; font-family: \'Work Sans\', sans-serif; font-size: 15px; background-color: #181a1b; --darkreader-inline-color: #c8c3bc; --darkreader-inline-bgcolor: #131516;\" data-darkreader-inline-bgcolor=\"\"><span style=\"font-family: Work Sans, sans-serif;\"><span style=\"font-size: 15px;\">Nam an probo mazim, verear atomorum partiendo sit ut, reprimique cotidieque no ius. Aliquam nusquam reprimique est et, nostrud insolens liberavisse ei quo. Vis ne velit commodo. In movet mnesarchum vel, ius at offendit constituto temporibus. Ex qui illud inani, te causae aperiam similique has, at vim tollit eleifend democritum.</span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #d1cdc7; font-family: \'Work Sans\', sans-serif; font-size: 15px; background-color: #181a1b; --darkreader-inline-color: #c8c3bc; --darkreader-inline-bgcolor: #131516;\" data-darkreader-inline-bgcolor=\"\"><span style=\"font-family: Work Sans, sans-serif;\"><span style=\"font-size: 15px;\">&nbsp;</span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #d1cdc7; font-family: \'Work Sans\', sans-serif; font-size: 15px; background-color: #181a1b; --darkreader-inline-color: #c8c3bc; --darkreader-inline-bgcolor: #131516;\" data-darkreader-inline-bgcolor=\"\"><span style=\"font-family: Work Sans, sans-serif;\"><span style=\"font-size: 15px;\">Pri in dicant semper quaeque. Usu causae sententiae ea, id vis graeci malorum blandit, quis oportere splendide id per. Ne eam vidisse partiendo, pro commodo fabulas id. Harum aperiri has id. Vidit efficiendi ut his, vix salutatus incorrupte no. Sumo wisi ei pro, amet expetenda voluptatum per no, vel te denique splendide.</span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #d1cdc7; font-family: \'Work Sans\', sans-serif; font-size: 15px; background-color: #181a1b; --darkreader-inline-color: #c8c3bc; --darkreader-inline-bgcolor: #131516;\" data-darkreader-inline-bgcolor=\"\"><span style=\"font-family: Work Sans, sans-serif;\"><span style=\"font-size: 15px;\">&nbsp;</span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #d1cdc7; font-family: \'Work Sans\', sans-serif; font-size: 15px; background-color: #181a1b; --darkreader-inline-color: #c8c3bc; --darkreader-inline-bgcolor: #131516;\" data-darkreader-inline-bgcolor=\"\"><span style=\"font-family: Work Sans, sans-serif;\"><span style=\"font-size: 15px;\">Vidisse tritani accumsan quo no, cu his libris alienum philosophia. Ius illud summo mundi id. Eu feugait invidunt his, ad nec adhuc aliquip praesent, ad vis eius vivendo definitiones. Ad vim perfecto comprehensam, ius te dolorem ceteros pertinax. Ignota laboramus sed an, in assum summo mel. Vero petentium voluptaria eam no, audiam nominavi et per, dicunt perfecto disputationi eu vel.</span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #d1cdc7; font-family: \'Work Sans\', sans-serif; font-size: 15px; background-color: #181a1b; --darkreader-inline-color: #c8c3bc; --darkreader-inline-bgcolor: #131516;\" data-darkreader-inline-bgcolor=\"\"><span style=\"font-family: Work Sans, sans-serif;\"><span style=\"font-size: 15px;\">&nbsp;</span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #d1cdc7; font-family: \'Work Sans\', sans-serif; font-size: 15px; background-color: #181a1b; --darkreader-inline-color: #c8c3bc; --darkreader-inline-bgcolor: #131516;\" data-darkreader-inline-bgcolor=\"\"><span style=\"font-family: Work Sans, sans-serif;\"><span style=\"font-size: 15px;\">Principes neglegentur cum et, quo ne audiam dissentiet. Vivendo intellegat mei id. Feugait petentium interesset at nam, per ea mundi eirmod scripta. Ad sale dolor putent vis, albucius indoctum cu sed, ius noster malorum no. Ne pro idque aliquid, ceteros epicuri quo cu, vero recteque ei eum.</span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #d1cdc7; font-family: \'Work Sans\', sans-serif; font-size: 15px; background-color: #181a1b; --darkreader-inline-color: #c8c3bc; --darkreader-inline-bgcolor: #131516;\" data-darkreader-inline-bgcolor=\"\"><span style=\"font-family: Work Sans, sans-serif;\"><span style=\"font-size: 15px;\">&nbsp;</span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #d1cdc7; font-family: \'Work Sans\', sans-serif; font-size: 15px; background-color: #181a1b; --darkreader-inline-color: #c8c3bc; --darkreader-inline-bgcolor: #131516;\" data-darkreader-inline-bgcolor=\"\"><span style=\"font-family: Work Sans, sans-serif;\"><span style=\"font-size: 15px;\">At alia vituperatoribus qui, et suas epicuri neglegentur vim. Ad eos aliquid senserit scripserit, omnis complectitur cu eum. Pri qualisque molestiae constituto cu, at eum diam democritum, in saepe tation mel. Cu eius causae reprehendunt mei, ei harum postulant has. Nec ea fierent omittantur adversarium, in option copiosae pro. Eum ea purto facer efficiendi, erroribus abhorreant eam ut.</span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #d1cdc7; font-family: \'Work Sans\', sans-serif; font-size: 15px; background-color: #181a1b; --darkreader-inline-color: #c8c3bc; --darkreader-inline-bgcolor: #131516;\" data-darkreader-inline-bgcolor=\"\"><span style=\"font-family: Work Sans, sans-serif;\"><span style=\"font-size: 15px;\">&nbsp;</span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #d1cdc7; font-family: \'Work Sans\', sans-serif; font-size: 15px; background-color: #181a1b; --darkreader-inline-color: #c8c3bc; --darkreader-inline-bgcolor: #131516;\" data-darkreader-inline-bgcolor=\"\"><span style=\"font-family: Work Sans, sans-serif;\"><span style=\"font-size: 15px;\">Latine volutpat eum ei. Reque petentium iudicabit ut mei, et pri inani eruditi propriae, ne quidam legimus vix. Id vix alia intellegat, dicit vocibus probatus est id, propriae percipit praesent eum id. Pri ei liber invidunt, regione tacimates partiendo no pro, te error quando deterruisset sea.</span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #d1cdc7; font-family: \'Work Sans\', sans-serif; font-size: 15px; background-color: #181a1b; --darkreader-inline-color: #c8c3bc; --darkreader-inline-bgcolor: #131516;\" data-darkreader-inline-bgcolor=\"\"><span style=\"font-family: Work Sans, sans-serif;\"><span style=\"font-size: 15px;\">&nbsp;</span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #d1cdc7; font-family: \'Work Sans\', sans-serif; font-size: 15px; background-color: #181a1b; --darkreader-inline-color: #c8c3bc; --darkreader-inline-bgcolor: #131516;\" data-darkreader-inline-bgcolor=\"\"><span style=\"font-family: Work Sans, sans-serif;\"><span style=\"font-size: 15px;\">Usu zril regione cu. Mei in laoreet maiorum. Ex purto appetere per. Et aeterno reprehendunt delicatissimi nam, mea verear gloriatur reformidans ex, decore fabulas salutatus quo te. At munere interesset quo, consul doming facilis ad vel.</span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #d1cdc7; font-family: \'Work Sans\', sans-serif; font-size: 15px; background-color: #181a1b; --darkreader-inline-color: #c8c3bc; --darkreader-inline-bgcolor: #131516;\" data-darkreader-inline-bgcolor=\"\"><span style=\"font-family: Work Sans, sans-serif;\"><span style=\"font-size: 15px;\">&nbsp;</span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #d1cdc7; font-family: \'Work Sans\', sans-serif; font-size: 15px; background-color: #181a1b; --darkreader-inline-color: #c8c3bc; --darkreader-inline-bgcolor: #131516;\" data-darkreader-inline-bgcolor=\"\"><span style=\"font-family: Work Sans, sans-serif;\"><span style=\"font-size: 15px;\">At vim munere nostrum voluptatibus. Nam te nonumes pericula, eu eam feugiat sensibus laboramus. Te ferri assum exerci pri, dicunt eripuit reprimique eu mea. Vim zril decore ceteros et. Duo at ancillae dissentiet vituperatoribus, partem sadipscing vel ex.</span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #d1cdc7; font-family: \'Work Sans\', sans-serif; font-size: 15px; background-color: #181a1b; --darkreader-inline-color: #c8c3bc; --darkreader-inline-bgcolor: #131516;\" data-darkreader-inline-bgcolor=\"\"><span style=\"font-family: Work Sans, sans-serif;\"><span style=\"font-size: 15px;\">&nbsp;</span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #d1cdc7; font-family: \'Work Sans\', sans-serif; font-size: 15px; background-color: #181a1b; --darkreader-inline-color: #c8c3bc; --darkreader-inline-bgcolor: #131516;\" data-darkreader-inline-bgcolor=\"\"><span style=\"font-family: Work Sans, sans-serif;\"><span style=\"font-size: 15px;\">Lorem tation mediocritatem duo ut, no erat vulputate pri. Vis no saperet detracto forensibus, has augue impedit ne. Te enim postea elaboraret nam. Quis accommodare ad eum, usu commodo appareat ad.</span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #d1cdc7; font-family: \'Work Sans\', sans-serif; font-size: 15px; background-color: #181a1b; --darkreader-inline-color: #c8c3bc; --darkreader-inline-bgcolor: #131516;\" data-darkreader-inline-bgcolor=\"\"><span style=\"font-family: Work Sans, sans-serif;\"><span style=\"font-size: 15px;\">&nbsp;</span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #d1cdc7; font-family: \'Work Sans\', sans-serif; font-size: 15px; background-color: #181a1b; --darkreader-inline-color: #c8c3bc; --darkreader-inline-bgcolor: #131516;\" data-darkreader-inline-bgcolor=\"\"><span style=\"font-family: Work Sans, sans-serif;\"><span style=\"font-size: 15px;\">Appetere voluptatibus pri in, ad duo saepe nostrum eloquentiam, nec aperiam graecis vituperata id. Iusto dolorum eos ad, sed solet corrumpit posidonium no. Cu oporteat postulant cotidieque his. Ea fabulas minimum legendos has.</span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #d1cdc7; font-family: \'Work Sans\', sans-serif; font-size: 15px; background-color: #181a1b; --darkreader-inline-color: #c8c3bc; --darkreader-inline-bgcolor: #131516;\" data-darkreader-inline-bgcolor=\"\"><span style=\"font-family: Work Sans, sans-serif;\"><span style=\"font-size: 15px;\">&nbsp;</span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #d1cdc7; font-family: \'Work Sans\', sans-serif; font-size: 15px; background-color: #181a1b; --darkreader-inline-color: #c8c3bc; --darkreader-inline-bgcolor: #131516;\" data-darkreader-inline-bgcolor=\"\"><span style=\"font-family: Work Sans, sans-serif;\"><span style=\"font-size: 15px;\">Agam mutat intellegebat nec te. Te mea dolorem prodesset reformidans, petentium reprimique mea id, ad audiam laoreet est. Est erant euismod eu, eam omnes offendit efficiendi ex, nihil labitur no pri. Est eripuit admodum docendi ex, ne dolorem liberavisse consequuntur usu. Ea sumo reprehendunt has, an vel stet paulo. Mei at aperiri intellegat, id duo tibique appareat mediocritatem, te clita graeco evertitur vix.</span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #d1cdc7; font-family: \'Work Sans\', sans-serif; font-size: 15px; background-color: #181a1b; --darkreader-inline-color: #c8c3bc; --darkreader-inline-bgcolor: #131516;\" data-darkreader-inline-bgcolor=\"\"><span style=\"font-family: Work Sans, sans-serif;\"><span style=\"font-size: 15px;\">Amet gubergren necessitatibus pri eu, nam minim nullam voluptatibus te. Nam tollit deleniti ea, et vel nonumy laboramus inciderint. Meis iisque usu et. Possim democritum voluptatibus in vix. Ea vim error aliquip suavitate, qui no probo appareat.</span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #d1cdc7; font-family: \'Work Sans\', sans-serif; font-size: 15px; background-color: #181a1b; --darkreader-inline-color: #c8c3bc; --darkreader-inline-bgcolor: #131516;\" data-darkreader-inline-bgcolor=\"\"><span style=\"font-family: Work Sans, sans-serif;\"><span style=\"font-size: 15px;\">Constituto dissentiet te eos, id pro aliquid dissentiet, maluisset principes sadipscing te est. Cu consul mentitum constituam sea, ad est augue officiis theophrastus, duo aliquid prodesset ut. Option petentium conceptam pri in, homero explicari rationibus id mel, ius an idque docendi. Sea ex dicta convenire, quo unum postea lucilius ei. Ex partem abhorreant pri.</span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #d1cdc7; font-family: \'Work Sans\', sans-serif; font-size: 15px; background-color: #181a1b; --darkreader-inline-color: #c8c3bc; --darkreader-inline-bgcolor: #131516;\" data-darkreader-inline-bgcolor=\"\"><span style=\"font-family: Work Sans, sans-serif;\"><span style=\"font-size: 15px;\">Ei nullam meliore insolens vis. Ut agam minim iuvaret sit. Nostrum singulis argumentum ut mea, id pro tale soluta lucilius. Praesent sadipscing mel et, eum et partem timeam. Duo liber iriure oporteat ex, sit cu cetero mnesarchum.</span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #d1cdc7; font-family: \'Work Sans\', sans-serif; font-size: 15px; background-color: #181a1b; --darkreader-inline-color: #c8c3bc; --darkreader-inline-bgcolor: #131516;\" data-darkreader-inline-bgcolor=\"\"><span style=\"font-family: Work Sans, sans-serif;\"><span style=\"font-size: 15px;\">Nam cu sint dicunt. An tritani integre debitis sit, ex vis regione sapientem. Ut nec nemore gloriatur, usu cu delenit insolens. Ne regione platonem qui. Dicant saperet per no, qui alii nominavi ut.</span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #d1cdc7; font-family: \'Work Sans\', sans-serif; font-size: 15px; background-color: #181a1b; --darkreader-inline-color: #c8c3bc; --darkreader-inline-bgcolor: #131516;\" data-darkreader-inline-bgcolor=\"\"><span style=\"font-family: Work Sans, sans-serif;\"><span style=\"font-size: 15px;\">Per eu veri nullam appareat, iisque patrioque vis ne. Quo id dicat congue. Cu usu ignota eligendi partiendo, ne eligendi splendide concludaturque est. Aliquid corrumpit id vim.</span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #d1cdc7; font-family: \'Work Sans\', sans-serif; font-size: 15px; background-color: #181a1b; --darkreader-inline-color: #c8c3bc; --darkreader-inline-bgcolor: #131516;\" data-darkreader-inline-bgcolor=\"\"><span style=\"font-family: Work Sans, sans-serif;\"><span style=\"font-size: 15px;\">Ius eu feugait tibique scriptorem, nec choro adipiscing cotidieque te. Wisi dicunt contentiones mel te. Mazim ornatus no vim, graeci perpetua ne mel. Ea vix ubique oportere percipitur. Quas saperet cu sea, eum fierent deseruisse in.</span></span></p>', 'Terms of Use', 'Terms of Use', NULL, '2023-06-07 10:32:00');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text NOT NULL,
  `slug` text NOT NULL,
  `short_description` text NOT NULL,
  `description` text NOT NULL,
  `total_view` text NOT NULL,
  `photo` text NOT NULL,
  `title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `heading`, `slug`, `short_description`, `description`, `total_view`, `photo`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Lorem ipsum dolor sit amet', 'lorem-ipsum-dolor-sit-ame-jah', 'Lorem ipsum dolor sit amet, et laudem graeco hendrerit sea. An harum dignissim sea, eam ad vero ignota theophrastus. An aliquid hendrerit eam. Cibo putant ad mei.', 'Lorem ipsum dolor sit amet', '8', 'post_1685849958.jpg', 'Lorem ipsum dolor sit amet', NULL, '2023-06-04 03:39:18', '2023-06-06 21:48:28'),
(2, 'Dictas molestiae his te, cu cibo justo laoreet quo', 'pictas-molestiae-his-te-cu-cibo-justo-laoreet-quo-jah', 'Dictas molestiae his te, cu cibo justo laoreet quo. Et his vidit everti, ei usu nihil democritum. Eu eros expetendis duo, ius munere suscipit adipisci ne. Esse malorum accusam sea cu, te mel dico recusabo reprehendunt. Ius cu sint aliquam, mea aeque noster assueverit id, assum recusabo et qui. Ex sea congue epicurei, mundi dictas adolescens vis cu.', 'Dictas molestiae his te, cu cibo justo laoreet quo', '11', 'post_1685879087.jpg', 'Dictas molestiae his te, cu cibo justo laoreet quo', NULL, '2023-06-04 11:44:47', '2023-06-06 22:52:08'),
(3, 'Lorem ipsum dolor sit amet, vix eu utamur malorum.', 'lorem-ipsum-dolor-sit-ame-smilw', 'Lorem ipsum dolor sit amet, vix eu utamur malorum. Ex usu mucius suavitate. Eu decore eleifend duo, eum partiendo efficiantur ne. Ea pro torquatos complectitur, wisi pertinax his cu.', 'Lorem ipsum dolor sit amet, vix eu utamur malorum.', '0', 'post_1685879206.jpg', 'Lorem ipsum dolor sit amet, vix eu utamur malorum.', NULL, '2023-06-04 11:46:46', '2023-06-06 21:51:23'),
(4, 'Lorem ipsum dolor sit amet, eu choro utamur sea.', 'pictas-molestiae-his-te-cu-cibo-justo-laoreet-quo-okah', 'Lorem ipsum dolor sit amet, eu choro utamur sea. Mel tibique ocurreret ex, populo adipiscing adversarium eos eu. Qui iusto tibique ei. Id est saepe corpora vulputate, at eos detraxit sadipscing disputationi', 'Lorem ipsum dolor sit amet, vix eu utamur malorum.', '0', 'post_1685879398.jpg', 'Lorem ipsum dolor sit amet, vix eu utamur malorum.', NULL, '2023-06-04 11:49:58', '2023-06-06 21:52:17'),
(5, 'Eam virtute scaevola assueverit cu', 'pictas-molestiae-his-te-cu-cibo-justo-laoreet-quo-damn', 'Eam virtute scaevola assueverit cu. Cum ex augue repudiare, augue saepe decore ne quo. Sit ne etiam laoreet liberavisse, mundi luptatum postulant no nam,', 'Eam virtute scaevola assueverit cu', '8', 'post_1685879503.jpg', 'Eam virtute scaevola assueverit cu', NULL, '2023-06-04 11:51:43', '2023-06-16 09:09:39'),
(6, 'Wisi dolore consequuntur has ex.', 'pictas-molestiae-his-te-cu-cibo-justo-laoreet-quo-yurlim', 'Wisi dolore consequuntur has ex. Te erant nusquam menandri vis, per viris latine reprehendunt ut. Sit no integre assentior, iudico voluptua consequuntur in vim.', 'Wisi dolore consequuntur has ex.', '4', 'post_1685879595.jpg', 'Wisi dolore consequuntur has ex.', NULL, '2023-06-04 11:53:15', '2023-06-06 22:50:33'),
(7, 'Nemore impedit docendi an duo', 'pictas-molestiae-his-te-cu-cibo-justo-laoreet-quo-your', 'Nemore impedit docendi an duo. Quem discere nonumes vim te. Graece officiis complectitur per et, ullum accusam repudiandae te sit, his aeque aeterno ad.', 'Nemore impedit docendi an duo', '0', 'post_1685880859.jpg', 'Nemore impedit docendi an duo', NULL, '2023-06-04 12:14:19', '2023-06-06 21:53:54');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `designation` text NOT NULL,
  `comment` text NOT NULL,
  `photo` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `designation`, `comment`, `photo`, `created_at`, `updated_at`) VALUES
(2, 'Robert Krol', 'CEO, A&C Company Ltd', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'testimonial_1685691969.jpg', '2023-06-02 07:46:09', '2023-06-02 07:46:09'),
(3, 'Harvey James', 'Director, Harvey Agro chemicals', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'testimonial1692802461.jpg', '2023-06-02 07:47:12', '2023-08-23 14:54:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `why_choose_items`
--

CREATE TABLE `why_choose_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` text NOT NULL,
  `heading` text NOT NULL,
  `text` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `why_choose_items`
--

INSERT INTO `why_choose_items` (`id`, `icon`, `heading`, `text`, `created_at`, `updated_at`) VALUES
(1, 'fas fa-briefcase', 'Quick Apply', 'You can just create your account in our website and apply for desired job very quickly.', '2023-05-30 22:30:56', '2023-05-30 23:28:53'),
(2, 'fas fa-search', 'Search Tool', 'We provide a perfect and advanced search tool for job seekers, employees and companies.', '2023-05-30 22:34:03', '2023-05-30 22:34:03'),
(3, 'fas fa-share-alt', 'Best Companies', 'The best and reputed worldwide companies registered here and so you will get the quality jobs.', '2023-05-30 22:35:14', '2023-05-30 22:57:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_applications`
--
ALTER TABLE `candidate_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_awards`
--
ALTER TABLE `candidate_awards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_bookmarks`
--
ALTER TABLE `candidate_bookmarks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_education`
--
ALTER TABLE `candidate_education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_experiences`
--
ALTER TABLE `candidate_experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_resumes`
--
ALTER TABLE `candidate_resumes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_skills`
--
ALTER TABLE `candidate_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_industries`
--
ALTER TABLE `company_industries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_locations`
--
ALTER TABLE `company_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_photos`
--
ALTER TABLE `company_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_sizes`
--
ALTER TABLE `company_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_videos`
--
ALTER TABLE `company_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_categories`
--
ALTER TABLE `job_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_experiences`
--
ALTER TABLE `job_experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_genders`
--
ALTER TABLE `job_genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_locations`
--
ALTER TABLE `job_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_salary_ranges`
--
ALTER TABLE `job_salary_ranges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_types`
--
ALTER TABLE `job_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_blog_items`
--
ALTER TABLE `page_blog_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_contact_items`
--
ALTER TABLE `page_contact_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_faq_items`
--
ALTER TABLE `page_faq_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_home_items`
--
ALTER TABLE `page_home_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_job_category_items`
--
ALTER TABLE `page_job_category_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_other_items`
--
ALTER TABLE `page_other_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_pricing_items`
--
ALTER TABLE `page_pricing_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_privacy_items`
--
ALTER TABLE `page_privacy_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_term_items`
--
ALTER TABLE `page_term_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `why_choose_items`
--
ALTER TABLE `why_choose_items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `candidate_applications`
--
ALTER TABLE `candidate_applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `candidate_awards`
--
ALTER TABLE `candidate_awards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `candidate_bookmarks`
--
ALTER TABLE `candidate_bookmarks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `candidate_education`
--
ALTER TABLE `candidate_education`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `candidate_experiences`
--
ALTER TABLE `candidate_experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `candidate_resumes`
--
ALTER TABLE `candidate_resumes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `candidate_skills`
--
ALTER TABLE `candidate_skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `company_industries`
--
ALTER TABLE `company_industries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `company_locations`
--
ALTER TABLE `company_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `company_photos`
--
ALTER TABLE `company_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `company_sizes`
--
ALTER TABLE `company_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `company_videos`
--
ALTER TABLE `company_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `job_categories`
--
ALTER TABLE `job_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `job_experiences`
--
ALTER TABLE `job_experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `job_genders`
--
ALTER TABLE `job_genders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `job_locations`
--
ALTER TABLE `job_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `job_salary_ranges`
--
ALTER TABLE `job_salary_ranges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `job_types`
--
ALTER TABLE `job_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `page_blog_items`
--
ALTER TABLE `page_blog_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `page_contact_items`
--
ALTER TABLE `page_contact_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_faq_items`
--
ALTER TABLE `page_faq_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_home_items`
--
ALTER TABLE `page_home_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_job_category_items`
--
ALTER TABLE `page_job_category_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_other_items`
--
ALTER TABLE `page_other_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `page_pricing_items`
--
ALTER TABLE `page_pricing_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_privacy_items`
--
ALTER TABLE `page_privacy_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_term_items`
--
ALTER TABLE `page_term_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `why_choose_items`
--
ALTER TABLE `why_choose_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
