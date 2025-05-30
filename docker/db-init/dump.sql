-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : lun. 12 mai 2025 à 13:49
-- Version du serveur : 10.11.11-MariaDB-0+deb12u1
-- Version de PHP : 8.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `service_medin`
--
CREATE DATABASE IF NOT EXISTS `service_medin` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci;
USE `service_medin`;

-- --------------------------------------------------------

--
-- Structure de la table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL,
  `number` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `business_id` varchar(255) DEFAULT '0',
  `customer_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `location_id` int(11) DEFAULT 0,
  `sub_location_id` varchar(155) DEFAULT '0',
  `date` date NOT NULL,
  `time` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `group_booking` varchar(155) DEFAULT '0',
  `total_person` varchar(155) DEFAULT '0',
  `status` int(11) DEFAULT NULL,
  `pay_info` int(11) DEFAULT 2,
  `sync_calendar` varchar(155) DEFAULT '0',
  `sync_calendar_staff` varchar(155) DEFAULT '0',
  `sync_calendar_user` varchar(155) DEFAULT '0',
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `appointments`
--

INSERT INTO `appointments` (`id`, `number`, `user_id`, `business_id`, `customer_id`, `staff_id`, `service_id`, `location_id`, `sub_location_id`, `date`, `time`, `note`, `group_booking`, `total_person`, `status`, `pay_info`, `sync_calendar`, `sync_calendar_staff`, `sync_calendar_user`, `created_at`) VALUES
(2, '35018', 2, '894321299572', 3, 2, 2, 1, '0', '2023-04-24', '11:00-11:30', '', '0', '0', 0, 2, '0', '0', '0', '2023-04-08 11:33:58'),
(3, '31682', 2, '894321299572', 4, 2, 3, 1, '0', '2023-05-01', '14:00-14:30', '', '0', '0', 1, 2, '0', '0', '0', '2023-04-20 08:19:59'),
(4, '35860', 2, '894321299572', 5, 2, 2, 1, '0', '2023-05-01', '15:00-15:30', 'testttt$sdsq\r\nsdcqswxcd', '0', '0', 1, 2, '0', '0', '0', '2023-04-20 08:22:17'),
(5, '97283', 2, '894321299572', 6, 2, 2, 1, '0', '2023-04-24', '12:00-12:30', '', '0', '0', 0, 2, '0', '0', '0', '2023-04-20 08:23:55'),
(6, '76049', 2, '894321299572', 7, 2, 3, 1, '0', '2023-05-01', '13:00-13:30', '', '0', '0', 1, 2, '0', '0', '0', '2023-04-20 08:27:36'),
(7, '46170', 4, '482767835247', 8, 3, 6, 0, '0', '2023-05-22', '13:30-14:00', 'I need it ASAP', '0', '0', 1, 2, '0', '0', '0', '2023-05-22 14:01:49'),
(8, '97160', 4, '482767835247', 9, 3, 6, 0, '0', '2023-05-31', '16:00-16:30', '', '0', '0', 2, 2, '0', '0', '0', '2023-05-22 15:47:11'),
(9, '94275', 2, '894321299572', 10, 2, 2, 1, '0', '2023-08-28', '13:00-13:30', '', '0', '0', 0, 2, '0', '0', '0', '2023-08-28 00:09:20'),
(10, '26134', 2, '894321299572', 11, 2, 3, 1, '0', '2024-01-22', '12:00-12:30', '', '0', '0', 0, 2, '0', '0', '0', '2024-01-07 22:13:30'),
(11, '14609', 2, '894321299572', 12, 2, 2, 1, '0', '2025-03-17', '13:00-13:30', '', '0', '0', 0, NULL, '0', '0', '0', '2025-03-09 13:38:04'),
(12, '54182', 4, '482767835247', 13, 3, 6, 0, '0', '2025-05-28', '10:00-10:30', '', '1', '1', 0, 2, '0', '0', '0', '2025-05-10 17:57:39');

-- --------------------------------------------------------

--
-- Structure de la table `blog_category`
--

CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `is_featured` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `booking_val`
--

CREATE TABLE `booking_val` (
  `id` int(11) NOT NULL,
  `business_id` varchar(155) DEFAULT '0',
  `staff_id` varchar(155) DEFAULT '0',
  `service_id` varchar(155) DEFAULT '0',
  `location_id` varchar(155) DEFAULT '0',
  `sub_location_id` varchar(155) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `booking_val`
--

INSERT INTO `booking_val` (`id`, `business_id`, `staff_id`, `service_id`, `location_id`, `sub_location_id`) VALUES
(1, '894321299572', '2', '2', '1', '0'),
(2, '482767835247', '3', '6', '0', '0');

-- --------------------------------------------------------

--
-- Structure de la table `business`
--

CREATE TABLE `business` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 1,
  `title` varchar(255) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `address` mediumtext DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `business_type` int(11) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `thumb` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `enable_gallery` varchar(255) DEFAULT '1',
  `enable_staff` varchar(255) NOT NULL DEFAULT '1',
  `is_primary` int(11) DEFAULT NULL,
  `template_style` int(11) NOT NULL DEFAULT 1,
  `curr_locate` varchar(155) DEFAULT '0',
  `num_format` varchar(155) DEFAULT '0',
  `color` varchar(255) NOT NULL DEFAULT '#546af1',
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `qr_code` varchar(255) DEFAULT NULL,
  `time_zone` int(11) DEFAULT 1,
  `date_format` varchar(255) DEFAULT 'd M Y',
  `time_format` varchar(255) DEFAULT 'hh',
  `time_interval` varchar(255) DEFAULT '30',
  `interval_type` varchar(255) DEFAULT 'minute',
  `interval_settings` varchar(155) DEFAULT '2',
  `enable_category` varchar(155) DEFAULT '0',
  `enable_rating` varchar(155) DEFAULT '0',
  `enable_location` varchar(155) DEFAULT '0',
  `enable_group` varchar(155) DEFAULT '0',
  `enable_guest` varchar(155) DEFAULT '0',
  `total_person` varchar(155) DEFAULT '5',
  `enable_payment` varchar(155) DEFAULT '1',
  `enable_onsite` varchar(155) DEFAULT '1',
  `holidays` longtext DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `business`
--

INSERT INTO `business` (`id`, `uid`, `user_id`, `name`, `slug`, `details`, `keywords`, `description`, `type`, `title`, `country`, `address`, `email`, `phone`, `category`, `business_type`, `logo`, `image`, `thumb`, `status`, `enable_gallery`, `enable_staff`, `is_primary`, `template_style`, `curr_locate`, `num_format`, `color`, `facebook`, `twitter`, `instagram`, `whatsapp`, `qr_code`, `time_zone`, `date_format`, `time_format`, `time_interval`, `interval_type`, `interval_settings`, `enable_category`, `enable_rating`, `enable_location`, `enable_group`, `enable_guest`, `total_person`, `enable_payment`, `enable_onsite`, `holidays`, `created_at`) VALUES
(1, '894321299572', 2, 'FMM', 'tice', '', '', '', 1, '', 170, '', 'ticeamed@gmail.com', '', '4', NULL, 'uploads/medium/b79e0c9d900d95d87241fef87c4f48b5_medium-413x151.png', NULL, NULL, 1, '1', '1', NULL, 2, '1', '0', '#546af1', '', '', '', '', 'uploads/files/qrcode_758331421.png', 52, 'd M Y', 'hh', '30', 'minute', '2', '1', '0', '1', '0', '1', '5', '0', '1', NULL, '2023-04-06 17:32:28'),
(3, '482767835247', 4, 'Explorations FMM', 'explorations', '', '', '', 1, '', 170, 'Faculté de Medecine de Monastir , Avenue Avicienna Monastir 5000 , Tunisie', 'explorations.fmm@gmail.com', '', '5', NULL, NULL, NULL, NULL, 1, '1', '1', NULL, 2, '1', '0', '#546af1', '', '', '', '', NULL, 1, 'd M Y', 'hh', '30', 'minute', '2', '1', '1', '0', '1', '1', '5', '1', '1', NULL, '2023-05-22 13:03:47'),
(4, '981373518542', 5, 'Your Company', 'recherche', '', NULL, NULL, 1, NULL, 0, NULL, 'recherche.fmm@gmail.com', NULL, '1', NULL, NULL, NULL, NULL, 1, '1', '0', NULL, 1, '0', '0', '#546af1', NULL, NULL, NULL, NULL, NULL, 1, 'd M Y', 'hh', '30', 'minute', '2', '0', '0', '0', '0', '0', '5', '1', '1', NULL, '2023-05-22 13:21:27'),
(5, '731801082393', 6, 'Your Company', 'pedagogie', '', NULL, NULL, 1, NULL, 0, NULL, 'recherche.fmm@gmail.com', NULL, '1', NULL, NULL, NULL, NULL, 1, '1', '0', NULL, 1, '0', '0', '#546af1', NULL, NULL, NULL, NULL, NULL, 1, 'd M Y', 'hh', '30', 'minute', '2', '0', '0', '0', '0', '0', '5', '1', '1', NULL, '2023-05-22 13:23:32'),
(6, '805976683213', 7, 'FMM Services ', 'Info', '', '', '', 1, 'Informatique ', 0, 'Avenue Avicienne , Faculté de Médecine de Monastir 5000 Tunisie', 'info.fmm@gmail.com', '+216 73 462 200', '9', NULL, 'uploads/medium/846087b9332a653ea5e466d79cdbf664_medium-267x113.png', 'uploads/medium/9f0eecfc97eedf3b6d1e9a291f12b609_medium-1600x966.jpg', 'uploads/thumbnail/9f0eecfc97eedf3b6d1e9a291f12b609_thumb-150x90.jpg', 1, '1', '0', NULL, 1, '0', '0', '#546af1', '', '', '', '', NULL, 1, 'd M Y', 'hh', '30', 'minute', '2', '0', '0', '0', '0', '0', '5', '1', '1', NULL, '2023-06-07 16:54:01'),
(7, '750291265794', 8, 'EQiblyCaw', 'google', '', NULL, NULL, 1, NULL, 0, NULL, 'taanakeif@gazeta.pl', NULL, '9', NULL, NULL, NULL, NULL, 1, '1', '0', NULL, 1, '0', '0', '#546af1', NULL, NULL, NULL, NULL, NULL, 1, 'd M Y', 'hh', '30', 'minute', '2', '0', '0', '0', '0', '0', '5', '1', '1', NULL, '2025-02-10 20:13:01'),
(8, '817328808088', 9, 'Your Company', 'cryo', '', NULL, NULL, 1, NULL, 0, NULL, 'wellbeing.fmm@gmail.com', NULL, '1', NULL, NULL, NULL, NULL, 1, '1', '0', NULL, 1, '0', '0', '#546af1', NULL, NULL, NULL, NULL, NULL, 1, 'd M Y', 'hh', '30', 'minute', '2', '0', '0', '0', '0', '0', '5', '1', '1', NULL, '2025-03-09 15:14:30'),
(9, '396501447964', 10, 'SmartLab', 'impedacemetrie', '', NULL, NULL, 1, NULL, 170, NULL, 'fmm.tice@gmail.com', NULL, '12', NULL, NULL, NULL, NULL, 1, '1', '0', NULL, 1, '0', '0', '#546af1', NULL, NULL, NULL, NULL, NULL, 1, 'd M Y', 'hh', '30', 'minute', '2', '0', '0', '0', '0', '0', '5', '1', '1', NULL, '2025-05-10 18:00:05');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `business_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `details` text DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `business_id`, `name`, `slug`, `details`, `status`) VALUES
(5, '2345', 'Explorations & Analyses', 'explorations-analyses', '', 1),
(9, NULL, 'Langue & Informatique', 'langue-informatique', '', 1),
(10, NULL, 'Assistance Pédagogique', 'assistance-pedagogique', '', 1),
(11, NULL, 'Assistance en méthodologie de Recherche', 'assistance-en-methodologie-de-recherche', '', 1),
(12, NULL, 'Bien être : Remise en forme', 'bien-etre-remise-en-forme', '', 1);

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `code` varchar(2) NOT NULL,
  `dial_code` varchar(5) NOT NULL,
  `currency_name` varchar(20) NOT NULL,
  `currency_symbol` varchar(20) NOT NULL,
  `currency_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `country`
--

INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES
(1, 'Andorra', 'AD', '+376', 'Euro', '€', 'EUR'),
(2, 'United Arab Emirates', 'AE', '+971', 'United Arab Emirates', 'د.إ', 'AED'),
(3, 'Afghanistan', 'AF', '+93', 'Afghan afghani', '؋', 'AFN'),
(4, 'Antigua and Barbuda', 'AG', '+1268', 'East Caribbean dolla', '$', 'XCD'),
(5, 'Anguilla', 'AI', '+1264', 'East Caribbean dolla', '$', 'XCD'),
(6, 'Albania', 'AL', '+355', 'Albanian lek', 'L', 'ALL'),
(7, 'Armenia', 'AM', '+374', 'Armenian dram', '', 'AMD'),
(8, 'Angola', 'AO', '+244', 'Angolan kwanza', 'Kz', 'AOA'),
(9, 'Argentina', 'AR', '+54', 'Argentine peso', '$', 'ARS'),
(10, 'Austria', 'AT', '+43', 'Euro', '€', 'EUR'),
(11, 'Australia', 'AU', '+61', 'Australian dollar', '$', 'AUD'),
(12, 'Aruba', 'AW', '+297', 'Aruban florin', 'ƒ', 'AWG'),
(13, 'Azerbaijan', 'AZ', '+994', 'Azerbaijani manat', '', 'AZN'),
(14, 'Barbados', 'BB', '+1246', 'Barbadian dollar', '$', 'BBD'),
(15, 'Bangladesh', 'BD', '+880', 'Bangladeshi taka', '৳', 'BDT'),
(16, 'Belgium', 'BE', '+32', 'Euro', '€', 'EUR'),
(17, 'Burkina Faso', 'BF', '+226', 'West African CFA fra', 'Fr', 'XOF'),
(18, 'Bulgaria', 'BG', '+359', 'Bulgarian lev', 'лв', 'BGN'),
(19, 'Bahrain', 'BH', '+973', 'Bahraini dinar', '.د.ب', 'BHD'),
(20, 'Burundi', 'BI', '+257', 'Burundian franc', 'Fr', 'BIF'),
(21, 'Benin', 'BJ', '+229', 'West African CFA fra', 'Fr', 'XOF'),
(22, 'Bermuda', 'BM', '+1441', 'Bermudian dollar', '$', 'BMD'),
(23, 'Brazil', 'BR', '+55', 'Brazilian real', 'R$', 'BRL'),
(24, 'Bhutan', 'BT', '+975', 'Bhutanese ngultrum', 'Nu.', 'BTN'),
(25, 'Botswana', 'BW', '+267', 'Botswana pula', 'P', 'BWP'),
(26, 'Belarus', 'BY', '+375', 'Belarusian ruble', 'Br', 'BYR'),
(27, 'Belize', 'BZ', '+501', 'Belize dollar', '$', 'BZD'),
(28, 'Canada', 'CA', '+1', 'Canadian dollar', '$', 'CAD'),
(29, 'Switzerland', 'CH', '+41', 'Swiss franc', 'Fr', 'CHF'),
(30, 'Cote d\'Ivoire', 'CI', '+225', 'West African CFA fra', 'Fr', 'XOF'),
(31, 'Cook Islands', 'CK', '+682', 'New Zealand dollar', '$', 'NZD'),
(32, 'Chile', 'CL', '+56', 'Chilean peso', '$', 'CLP'),
(33, 'Cameroon', 'CM', '+237', 'Central African CFA ', 'Fr', 'XAF'),
(34, 'China', 'CN', '+86', 'Chinese yuan', '¥ or 元', 'CNY'),
(35, 'Colombia', 'CO', '+57', 'Colombian peso', '$', 'COP'),
(36, 'Costa Rica', 'CR', '+506', 'Costa Rican colón', '₡', 'CRC'),
(37, 'Cuba', 'CU', '+53', 'Cuban convertible pe', '$', 'CUC'),
(38, 'Cape Verde', 'CV', '+238', 'Cape Verdean escudo', 'Esc or $', 'CVE'),
(39, 'Cyprus', 'CY', '+357', 'Euro', '€', 'EUR'),
(40, 'Czech Republic', 'CZ', '+420', 'Czech koruna', 'Kč', 'CZK'),
(41, 'Germany', 'DE', '+49', 'Euro', '€', 'EUR'),
(42, 'Djibouti', 'DJ', '+253', 'Djiboutian franc', 'Fr', 'DJF'),
(43, 'Denmark', 'DK', '+45', 'Danish krone', 'kr', 'DKK'),
(44, 'Dominica', 'DM', '+1767', 'East Caribbean dolla', '$', 'XCD'),
(45, 'Dominican Republic', 'DO', '+1849', 'Dominican peso', '$', 'DOP'),
(46, 'Algeria', 'DZ', '+213', 'Algerian dinar', 'د.ج', 'DZD'),
(47, 'Ecuador', 'EC', '+593', 'United States dollar', '$', 'USD'),
(48, 'Estonia', 'EE', '+372', 'Euro', '€', 'EUR'),
(49, 'Egypt', 'EG', '+20', 'Egyptian pound', '£ or ج.م', 'EGP'),
(50, 'Eritrea', 'ER', '+291', 'Eritrean nakfa', 'Nfk', 'ERN'),
(51, 'Spain', 'ES', '+34', 'Euro', '€', 'EUR'),
(52, 'Ethiopia', 'ET', '+251', 'Ethiopian birr', 'Br', 'ETB'),
(53, 'Finland', 'FI', '+358', 'Euro', '€', 'EUR'),
(54, 'Fiji', 'FJ', '+679', 'Fijian dollar', '$', 'FJD'),
(55, 'Faroe Islands', 'FO', '+298', 'Danish krone', 'kr', 'DKK'),
(56, 'France', 'FR', '+33', 'Euro', '€', 'EUR'),
(57, 'Gabon', 'GA', '+241', 'Central African CFA ', 'Fr', 'XAF'),
(58, 'United Kingdom', 'GB', '+44', 'British pound', '£', 'GBP'),
(59, 'Grenada', 'GD', '+1473', 'East Caribbean dolla', '$', 'XCD'),
(60, 'Georgia', 'GE', '+995', 'Georgian lari', 'ლ', 'GEL'),
(61, 'Guernsey', 'GG', '+44', 'British pound', '£', 'GBP'),
(62, 'Ghana', 'GH', '+233', 'Ghana cedi', '₵', 'GHS'),
(63, 'Gibraltar', 'GI', '+350', 'Gibraltar pound', '£', 'GIP'),
(64, 'Guinea', 'GN', '+224', 'Guinean franc', 'Fr', 'GNF'),
(65, 'Equatorial Guinea', 'GQ', '+240', 'Central African CFA ', 'Fr', 'XAF'),
(66, 'Greece', 'GR', '+30', 'Euro', '€', 'EUR'),
(67, 'Guatemala', 'GT', '+502', 'Guatemalan quetzal', 'Q', 'GTQ'),
(68, 'Guinea-Bissau', 'GW', '+245', 'West African CFA fra', 'Fr', 'XOF'),
(69, 'Guyana', 'GY', '+595', 'Guyanese dollar', '$', 'GYD'),
(70, 'Hong Kong', 'HK', '+852', 'Hong Kong dollar', '$', 'HKD'),
(71, 'Honduras', 'HN', '+504', 'Honduran lempira', 'L', 'HNL'),
(72, 'Croatia', 'HR', '+385', 'Croatian kuna', 'kn', 'HRK'),
(73, 'Haiti', 'HT', '+509', 'Haitian gourde', 'G', 'HTG'),
(74, 'Hungary', 'HU', '+36', 'Hungarian forint', 'Ft', 'HUF'),
(75, 'Indonesia', 'ID', '+62', 'Indonesian rupiah', 'Rp', 'IDR'),
(76, 'Ireland', 'IE', '+353', 'Euro', '€', 'EUR'),
(77, 'Israel', 'IL', '+972', 'Israeli new shekel', '₪', 'ILS'),
(78, 'Isle of Man', 'IM', '+44', 'British pound', '£', 'GBP'),
(79, 'India', 'IN', '+91', 'Indian rupee', '₹', 'INR'),
(80, 'Iraq', 'IQ', '+964', 'Iraqi dinar', 'ع.د', 'IQD'),
(81, 'Iceland', 'IS', '+354', 'Icelandic króna', 'kr', 'ISK'),
(82, 'Italy', 'IT', '+39', 'Euro', '€', 'EUR'),
(83, 'Jersey', 'JE', '+44', 'British pound', '£', 'GBP'),
(84, 'Jamaica', 'JM', '+1876', 'Jamaican dollar', '$', 'JMD'),
(85, 'Jordan', 'JO', '+962', 'Jordanian dinar', 'د.ا', 'JOD'),
(86, 'Japan', 'JP', '+81', 'Japanese yen', '¥', 'JPY'),
(87, 'Kenya', 'KE', '+254', 'Kenyan shilling', 'Sh', 'KES'),
(88, 'Kyrgyzstan', 'KG', '+996', 'Kyrgyzstani som', 'лв', 'KGS'),
(89, 'Cambodia', 'KH', '+855', 'Cambodian riel', '៛', 'KHR'),
(90, 'Kiribati', 'KI', '+686', 'Australian dollar', '$', 'AUD'),
(91, 'Comoros', 'KM', '+269', 'Comorian franc', 'Fr', 'KMF'),
(92, 'Kuwait', 'KW', '+965', 'Kuwaiti dinar', 'د.ك', 'KWD'),
(93, 'Cayman Islands', 'KY', '+ 345', 'Cayman Islands dolla', '$', 'KYD'),
(94, 'Kazakhstan', 'KZ', '+7 7', 'Kazakhstani tenge', '', 'KZT'),
(95, 'Laos', 'LA', '+856', 'Lao kip', '₭', 'LAK'),
(96, 'Lebanon', 'LB', '+961', 'Lebanese pound', 'ل.ل', 'LBP'),
(97, 'Saint Lucia', 'LC', '+1758', 'East Caribbean dolla', '$', 'XCD'),
(98, 'Liechtenstein', 'LI', '+423', 'Swiss franc', 'Fr', 'CHF'),
(99, 'Sri Lanka', 'LK', '+94', 'Sri Lankan rupee', 'Rs or රු', 'LKR'),
(100, 'Liberia', 'LR', '+231', 'Liberian dollar', '$', 'LRD'),
(101, 'Lesotho', 'LS', '+266', 'Lesotho loti', 'L', 'LSL'),
(102, 'Lithuania', 'LT', '+370', 'Euro', '€', 'EUR'),
(103, 'Luxembourg', 'LU', '+352', 'Euro', '€', 'EUR'),
(104, 'Latvia', 'LV', '+371', 'Euro', '€', 'EUR'),
(105, 'Morocco', 'MA', '+212', 'Moroccan dirham', 'د.م.', 'MAD'),
(106, 'Monaco', 'MC', '+377', 'Euro', '€', 'EUR'),
(107, 'Moldova', 'MD', '+373', 'Moldovan leu', 'L', 'MDL'),
(108, 'Montenegro', 'ME', '+382', 'Euro', '€', 'EUR'),
(109, 'Madagascar', 'MG', '+261', 'Malagasy ariary', 'Ar', 'MGA'),
(110, 'Marshall Islands', 'MH', '+692', 'United States dollar', '$', 'USD'),
(111, 'Mali', 'ML', '+223', 'West African CFA fra', 'Fr', 'XOF'),
(112, 'Myanmar', 'MM', '+95', 'Burmese kyat', 'Ks', 'MMK'),
(113, 'Mongolia', 'MN', '+976', 'Mongolian tögrög', '₮', 'MNT'),
(114, 'Mauritania', 'MR', '+222', 'Mauritanian ouguiya', 'UM', 'MRO'),
(115, 'Montserrat', 'MS', '+1664', 'East Caribbean dolla', '$', 'XCD'),
(116, 'Malta', 'MT', '+356', 'Euro', '€', 'EUR'),
(117, 'Mauritius', 'MU', '+230', 'Mauritian rupee', '₨', 'MUR'),
(118, 'Maldives', 'MV', '+960', 'Maldivian rufiyaa', '.ރ', 'MVR'),
(119, 'Malawi', 'MW', '+265', 'Malawian kwacha', 'MK', 'MWK'),
(120, 'Mexico', 'MX', '+52', 'Mexican peso', '$', 'MXN'),
(121, 'Malaysia', 'MY', '+60', 'Malaysian ringgit', 'RM', 'MYR'),
(122, 'Mozambique', 'MZ', '+258', 'Mozambican metical', 'MT', 'MZN'),
(123, 'Namibia', 'NA', '+264', 'Namibian dollar', '$', 'NAD'),
(124, 'New Caledonia', 'NC', '+687', 'CFP franc', 'Fr', 'XPF'),
(125, 'Niger', 'NE', '+227', 'West African CFA fra', 'Fr', 'XOF'),
(126, 'Nigeria', 'NG', '+234', 'Nigerian naira', '₦', 'NGN'),
(127, 'Nicaragua', 'NI', '+505', 'Nicaraguan córdoba', 'C$', 'NIO'),
(128, 'Netherlands', 'NL', '+31', 'Euro', '€', 'EUR'),
(129, 'Norway', 'NO', '+47', 'Norwegian krone', 'kr', 'NOK'),
(130, 'Nepal', 'NP', '+977', 'Nepalese rupee', '₨', 'NPR'),
(131, 'Nauru', 'NR', '+674', 'Australian dollar', '$', 'AUD'),
(132, 'Niue', 'NU', '+683', 'New Zealand dollar', '$', 'NZD'),
(133, 'New Zealand', 'NZ', '+64', 'New Zealand dollar', '$', 'NZD'),
(134, 'Oman', 'OM', '+968', 'Omani rial', 'ر.ع.', 'OMR'),
(135, 'Panama', 'PA', '+507', 'Panamanian balboa', 'B/.', 'PAB'),
(136, 'Peru', 'PE', '+51', 'Peruvian nuevo sol', 'S/.', 'PEN'),
(137, 'French Polynesia', 'PF', '+689', 'CFP franc', 'Fr', 'XPF'),
(138, 'Papua New Guinea', 'PG', '+675', 'Papua New Guinean ki', 'K', 'PGK'),
(139, 'Philippines', 'PH', '+63', 'Philippine peso', '₱', 'PHP'),
(140, 'Pakistan', 'PK', '+92', 'Pakistani rupee', '₨', 'PKR'),
(141, 'Poland', 'PL', '+48', 'Polish z?oty', 'zł', 'PLN'),
(142, 'Portugal', 'PT', '+351', 'Euro', '€', 'EUR'),
(143, 'Palau', 'PW', '+680', 'Palauan dollar', '$', ''),
(144, 'Paraguay', 'PY', '+595', 'Paraguayan guaraní', '₲', 'PYG'),
(145, 'Qatar', 'QA', '+974', 'Qatari riyal', 'ر.ق', 'QAR'),
(146, 'Romania', 'RO', '+40', 'Romanian leu', 'lei', 'RON'),
(147, 'Serbia', 'RS', '+381', 'Serbian dinar', 'дин. or din.', 'RSD'),
(148, 'Russia', 'RU', '+7', 'Russian ruble', '', 'RUB'),
(149, 'Rwanda', 'RW', '+250', 'Rwandan franc', 'Fr', 'RWF'),
(150, 'Saudi Arabia', 'SA', '+966', 'Saudi riyal', 'ر.س', 'SAR'),
(151, 'Solomon Islands', 'SB', '+677', 'Solomon Islands doll', '$', 'SBD'),
(152, 'Seychelles', 'SC', '+248', 'Seychellois rupee', '₨', 'SCR'),
(153, 'Sudan', 'SD', '+249', 'Sudanese pound', 'ج.س.', 'SDG'),
(154, 'Sweden', 'SE', '+46', 'Swedish krona', 'kr', 'SEK'),
(155, 'Singapore', 'SG', '+65', 'Singapore dollar', '$', 'SGD'),
(156, 'Slovenia', 'SI', '+386', 'Euro', '€', 'EUR'),
(157, 'Slovakia', 'SK', '+421', 'Euro', '€', 'EUR'),
(158, 'Sierra Leone', 'SL', '+232', 'Sierra Leonean leone', 'Le', 'SLL'),
(159, 'San Marino', 'SM', '+378', 'Euro', '€', 'EUR'),
(160, 'Senegal', 'SN', '+221', 'West African CFA fra', 'Fr', 'XOF'),
(161, 'Somalia', 'SO', '+252', 'Somali shilling', 'Sh', 'SOS'),
(162, 'Suriname', 'SR', '+597', 'Surinamese dollar', '$', 'SRD'),
(163, 'El Salvador', 'SV', '+503', 'United States dollar', '$', 'USD'),
(164, 'Swaziland', 'SZ', '+268', 'Swazi lilangeni', 'L', 'SZL'),
(165, 'Chad', 'TD', '+235', 'Central African CFA ', 'Fr', 'XAF'),
(166, 'Togo', 'TG', '+228', 'West African CFA fra', 'Fr', 'XOF'),
(167, 'Thailand', 'TH', '+66', 'Thai baht', '฿', 'THB'),
(168, 'Tajikistan', 'TJ', '+992', 'Tajikistani somoni', 'ЅМ', 'TJS'),
(169, 'Turkmenistan', 'TM', '+993', 'Turkmenistan manat', 'm', 'TMT'),
(170, 'Tunisia', 'TN', '+216', 'Tunisian dinar', 'د.ت', 'TND'),
(171, 'Tonga', 'TO', '+676', 'Tongan pa?anga', 'T$', 'TOP'),
(172, 'Turkey', 'TR', '+90', 'Turkish lira', '', 'TRY'),
(173, 'Trinidad and Tobago', 'TT', '+1868', 'Trinidad and Tobago ', '$', 'TTD'),
(174, 'Tuvalu', 'TV', '+688', 'Australian dollar', '$', 'AUD'),
(175, 'Taiwan', 'TW', '+886', 'New Taiwan dollar', '$', 'TWD'),
(176, 'Ukraine', 'UA', '+380', 'Ukrainian hryvnia', '₴', 'UAH'),
(177, 'Uganda', 'UG', '+256', 'Ugandan shilling', 'Sh', 'UGX'),
(178, 'United States', 'US', '+1', 'United States dollar', '$', 'USD'),
(179, 'Uruguay', 'UY', '+598', 'Uruguayan peso', '$', 'UYU'),
(180, 'Uzbekistan', 'UZ', '+998', 'Uzbekistani som', '', 'UZS'),
(181, 'Vietnam', 'VN', '+84', 'Vietnamese ??ng', '₫', 'VND'),
(182, 'Vanuatu', 'VU', '+678', 'Vanuatu vatu', 'Vt', 'VUV'),
(183, 'Wallis and Futuna', 'WF', '+681', 'CFP franc', 'Fr', 'XPF'),
(184, 'Samoa', 'WS', '+685', 'Samoan t?l?', 'T', 'WST'),
(185, 'Yemen', 'YE', '+967', 'Yemeni rial', '﷼', 'YER'),
(186, 'South Africa', 'ZA', '+27', 'South African rand', 'R', 'ZAR'),
(187, 'Zambia', 'ZM', '+260', 'Zambian kwacha', 'ZK', 'ZMW'),
(188, 'Zimbabwe', 'ZW', '+263', 'Botswana pula', 'P', 'BWP');

-- --------------------------------------------------------

--
-- Structure de la table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `business_id` varchar(25) DEFAULT '0',
  `service_id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `once_per_customer` int(11) DEFAULT 0,
  `usages_limit` varchar(255) DEFAULT NULL,
  `used` int(11) DEFAULT 0,
  `status` int(11) DEFAULT 1,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `coupons_apply`
--

CREATE TABLE `coupons_apply` (
  `id` int(11) NOT NULL,
  `business_id` varchar(25) DEFAULT '0',
  `code` varchar(255) NOT NULL,
  `discount` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `business_id` varchar(25) DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT 'customer',
  `gender` varchar(255) DEFAULT NULL,
  `last_appointment` date DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `image` text DEFAULT NULL,
  `thumb` text DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `customers`
--

INSERT INTO `customers` (`id`, `user_id`, `business_id`, `name`, `slug`, `phone`, `email`, `password`, `role`, `gender`, `last_appointment`, `status`, `image`, `thumb`, `created_at`) VALUES
(2, 2, '894321299572', 'Demandeur', NULL, '', 'charfeddine.amri@gmail.com', '$2y$10$kRA8r7jdTpzV.tXVXrCZluL55Of5S40/kwEpVz7suXhmRtP4gKZOa', 'customer', NULL, NULL, 1, 'assets/images/no-photo.png', 'assets/images/no-photo-sm.png', '2023-04-07 12:07:17'),
(3, 2, '894321299572', 'hounaida', NULL, '+21658042279', 'benmohamedhounaida21@gmail.com', '$2y$10$ER.aP8XzbH6CdsN9a0IGU.7ehGBZdxNaGK2InZ/gUYu/rB7FMT0RC', 'customer', NULL, NULL, 1, 'assets/images/no-photo.png', 'assets/images/no-photo-sm.png', '2023-04-08 11:33:58'),
(4, 2, '894321299572', 'test', NULL, '+21629905945', 'Charfeddine.amri@gmail.com', '$2y$10$sQBnDFkoJ85fKKJZvhk5.ermr5cPyJIQ7Tm86suuufg87OfiS2fuW', 'guest', NULL, NULL, 1, 'assets/images/no-photo.png', 'assets/images/no-photo-sm.png', '2023-04-20 08:17:19'),
(5, 2, '894321299572', 'Charfeddine', NULL, '+21629905945', 'Charfeddine.amri@gmail.com', '$2y$10$dSZsbH7PlLw967BM/CqAKegTXO//d53eYGHxYduD8fp4ZRKPNe632', 'guest', NULL, NULL, 1, 'assets/images/no-photo.png', 'assets/images/no-photo-sm.png', '2023-04-20 08:21:19'),
(6, 2, '894321299572', 'docteur', NULL, '+2163456789', 'Charfeddine.amri@gmail.com', '$2y$10$/01sy3DRONN0JUYWuQOone3ymb8V959zY33jVd8Ak7jLeXSPhtq3C', 'guest', NULL, NULL, 1, 'assets/images/no-photo.png', 'assets/images/no-photo-sm.png', '2023-04-20 08:23:55'),
(7, 2, '894321299572', 'dr', NULL, '+2164567890', 'Charfeddine.amri@gmail.com', '$2y$10$KdobggZ0mIqXOPsrlctRl.fhulZ.5UvCg93d5U0a8Ki7nqnSJai/q', 'guest', NULL, NULL, 1, 'assets/images/no-photo.png', 'assets/images/no-photo-sm.png', '2023-04-20 08:26:05'),
(8, 4, '482767835247', 'Hounayda', NULL, '+21658042279', 'benmohamedhounaida@gmail.com', '$2y$10$RXGdQCC7/iOYXJhCVcPwH.M7tuOvfdxP5zJCVnlac.OvK4E.QeLKm', 'guest', NULL, NULL, 1, 'assets/images/no-photo.png', 'assets/images/no-photo-sm.png', '2023-05-22 14:01:49'),
(9, 4, '482767835247', 'hounaida.benmohamed', NULL, '+21622 670 288', 'benmohamedhounaida21@gmail.com', '$2y$10$XaKOVuqMJDsCb8I8QklBsOcs/j/i30/kBx/o.IsPCGEp78mDezu/C', 'guest', NULL, NULL, 1, 'assets/images/no-photo.png', 'assets/images/no-photo-sm.png', '2023-05-22 15:47:11'),
(10, 2, '894321299572', 'sqdqsd', NULL, '+216456787654', 'Charfeddine.amri@gmail.com', '$2y$10$VysGwSuj4ofx7OLx/zwLCOTUZr2LS/FqCVbarIuOKXRv26zGL9tja', 'guest', NULL, NULL, 1, 'assets/images/no-photo.png', 'assets/images/no-photo-sm.png', '2023-08-28 00:09:20'),
(11, 2, '894321299572', 'dsqd', NULL, '+21698954095', 'charfeddine.amri@gmail.com', '$2y$10$IFO/UhawABmyRbeDLCXoAerEK1KlAseTY6CjFomVlAfKTSpE5ndNW', 'guest', NULL, NULL, 1, 'assets/images/no-photo.png', 'assets/images/no-photo-sm.png', '2024-01-07 22:13:30'),
(12, 2, '894321299572', 'dssqd', NULL, '+216456789', 'dcfvgbhjn@ezsdfez.fr', '$2y$10$BblI2pE6eSUFwtwsEJNDz.RyKTbfm0RLPGACH5uzZarPufL3fvahu', 'guest', NULL, NULL, 1, 'assets/images/no-photo.png', 'assets/images/no-photo-sm.png', '2025-03-09 13:38:04'),
(13, 4, '482767835247', 'Charfeddine Amri', NULL, '+21698954095', 'charfeddine.amri@fmm.u-monastir.tn', '$2y$10$cEgkbE86aBY.cRlH5T.3Eu56E88dnpphYtvHwX7ckVjbJlUOTC2Mu', 'guest', NULL, NULL, 1, 'assets/images/no-photo.png', 'assets/images/no-photo-sm.png', '2025-05-10 17:57:39');

-- --------------------------------------------------------

--
-- Structure de la table `dialing_codes`
--

CREATE TABLE `dialing_codes` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `iso_code` varchar(2) NOT NULL,
  `isd_code` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `dialing_codes`
--

INSERT INTO `dialing_codes` (`id`, `name`, `iso_code`, `isd_code`) VALUES
(1, 'Afghanistan', 'AF', '93'),
(2, 'Albania', 'AL', '355'),
(3, 'Algeria', 'DZ', '213'),
(4, 'American Samoa', 'AS', '1-684'),
(5, 'Andorra', 'AD', '376'),
(6, 'Angola', 'AO', '244'),
(7, 'Anguilla', 'AI', '1-264'),
(8, 'Antarctica', 'AQ', '672'),
(9, 'Antigua and Barbuda', 'AG', '1-268'),
(10, 'Argentina', 'AR', '54'),
(11, 'Armenia', 'AM', '374'),
(12, 'Aruba', 'AW', '297'),
(13, 'Australia', 'AU', '61'),
(14, 'Austria', 'AT', '43'),
(15, 'Azerbaijan', 'AZ', '994'),
(16, 'Bahamas', 'BS', '1-242'),
(17, 'Bahrain', 'BH', '973'),
(18, 'Bangladesh', 'BD', '880'),
(19, 'Barbados', 'BB', '1-246'),
(20, 'Belarus', 'BY', '375'),
(21, 'Belgium', 'BE', '32'),
(22, 'Belize', 'BZ', '501'),
(23, 'Benin', 'BJ', '229'),
(24, 'Bermuda', 'BM', '1-441'),
(25, 'Bhutan', 'BT', '975'),
(26, 'Bolivia', 'BO', '591'),
(27, 'Bosnia and Herzegowina', 'BA', '387'),
(28, 'Botswana', 'BW', '267'),
(29, 'Bouvet Island', 'BV', '47'),
(30, 'Brazil', 'BR', '55'),
(31, 'British Indian Ocean Territory', 'IO', '246'),
(32, 'Brunei Darussalam', 'BN', '673'),
(33, 'Bulgaria', 'BG', '359'),
(34, 'Burkina Faso', 'BF', '226'),
(35, 'Burundi', 'BI', '257'),
(36, 'Cambodia', 'KH', '855'),
(37, 'Cameroon', 'CM', '237'),
(38, 'Canada', 'CA', '1'),
(39, 'Cape Verde', 'CV', '238'),
(40, 'Cayman Islands', 'KY', '1-345'),
(41, 'Central African Republic', 'CF', '236'),
(42, 'Chad', 'TD', '235'),
(43, 'Chile', 'CL', '56'),
(44, 'China', 'CN', '86'),
(45, 'Christmas Island', 'CX', '61'),
(46, 'Cocos (Keeling) Islands', 'CC', '61'),
(47, 'Colombia', 'CO', '57'),
(48, 'Comoros', 'KM', '269'),
(49, 'Congo Democratic Republic of', 'CG', '242'),
(50, 'Cook Islands', 'CK', '682'),
(51, 'Costa Rica', 'CR', '506'),
(52, 'Cote D\'Ivoire', 'CI', '225'),
(53, 'Croatia', 'HR', '385'),
(54, 'Cuba', 'CU', '53'),
(55, 'Cyprus', 'CY', '357'),
(56, 'Czech Republic', 'CZ', '420'),
(57, 'Denmark', 'DK', '45'),
(58, 'Djibouti', 'DJ', '253'),
(59, 'Dominica', 'DM', '1-767'),
(60, 'Dominican Republic', 'DO', '1-809'),
(61, 'Timor-Leste', 'TL', '670'),
(62, 'Ecuador', 'EC', '593'),
(63, 'Egypt', 'EG', '20'),
(64, 'El Salvador', 'SV', '503'),
(65, 'Equatorial Guinea', 'GQ', '240'),
(66, 'Eritrea', 'ER', '291'),
(67, 'Estonia', 'EE', '372'),
(68, 'Ethiopia', 'ET', '251'),
(69, 'Falkland Islands (Malvinas)', 'FK', '500'),
(70, 'Faroe Islands', 'FO', '298'),
(71, 'Fiji', 'FJ', '679'),
(72, 'Finland', 'FI', '358'),
(73, 'France', 'FR', '33'),
(75, 'French Guiana', 'GF', '594'),
(76, 'French Polynesia', 'PF', '689'),
(77, 'French Southern Territories', 'TF', NULL),
(78, 'Gabon', 'GA', '241'),
(79, 'Gambia', 'GM', '220'),
(80, 'Georgia', 'GE', '995'),
(81, 'Germany', 'DE', '49'),
(82, 'Ghana', 'GH', '233'),
(83, 'Gibraltar', 'GI', '350'),
(84, 'Greece', 'GR', '30'),
(85, 'Greenland', 'GL', '299'),
(86, 'Grenada', 'GD', '1-473'),
(87, 'Guadeloupe', 'GP', '590'),
(88, 'Guam', 'GU', '1-671'),
(89, 'Guatemala', 'GT', '502'),
(90, 'Guinea', 'GN', '224'),
(91, 'Guinea-bissau', 'GW', '245'),
(92, 'Guyana', 'GY', '592'),
(93, 'Haiti', 'HT', '509'),
(94, 'Heard Island and McDonald Islands', 'HM', '011'),
(95, 'Honduras', 'HN', '504'),
(96, 'Hong Kong', 'HK', '852'),
(97, 'Hungary', 'HU', '36'),
(98, 'Iceland', 'IS', '354'),
(99, 'India', 'IN', '91'),
(100, 'Indonesia', 'ID', '62'),
(101, 'Iran (Islamic Republic of)', 'IR', '98'),
(102, 'Iraq', 'IQ', '964'),
(103, 'Ireland', 'IE', '353'),
(104, 'Israel', 'IL', '972'),
(105, 'Italy', 'IT', '39'),
(106, 'Jamaica', 'JM', '1-876'),
(107, 'Japan', 'JP', '81'),
(108, 'Jordan', 'JO', '962'),
(109, 'Kazakhstan', 'KZ', '7'),
(110, 'Kenya', 'KE', '254'),
(111, 'Kiribati', 'KI', '686'),
(112, 'Korea, Democratic People\'s Republic of', 'KP', '850'),
(113, 'South Korea', 'KR', '82'),
(114, 'Kuwait', 'KW', '965'),
(115, 'Kyrgyzstan', 'KG', '996'),
(116, 'Lao People\'s Democratic Republic', 'LA', '856'),
(117, 'Latvia', 'LV', '371'),
(118, 'Lebanon', 'LB', '961'),
(119, 'Lesotho', 'LS', '266'),
(120, 'Liberia', 'LR', '231'),
(121, 'Libya', 'LY', '218'),
(122, 'Liechtenstein', 'LI', '423'),
(123, 'Lithuania', 'LT', '370'),
(124, 'Luxembourg', 'LU', '352'),
(125, 'Macao', 'MO', '853'),
(126, 'Macedonia, The Former Yugoslav Republic of', 'MK', '389'),
(127, 'Madagascar', 'MG', '261'),
(128, 'Malawi', 'MW', '265'),
(129, 'Malaysia', 'MY', '60'),
(130, 'Maldives', 'MV', '960'),
(131, 'Mali', 'ML', '223'),
(132, 'Malta', 'MT', '356'),
(133, 'Marshall Islands', 'MH', '692'),
(134, 'Martinique', 'MQ', '596'),
(135, 'Mauritania', 'MR', '222'),
(136, 'Mauritius', 'MU', '230'),
(137, 'Mayotte', 'YT', '262'),
(138, 'Mexico', 'MX', '52'),
(139, 'Micronesia, Federated States of', 'FM', '691'),
(140, 'Moldova', 'MD', '373'),
(141, 'Monaco', 'MC', '377'),
(142, 'Mongolia', 'MN', '976'),
(143, 'Montserrat', 'MS', '1-664'),
(144, 'Morocco', 'MA', '212'),
(145, 'Mozambique', 'MZ', '258'),
(146, 'Myanmar', 'MM', '95'),
(147, 'Namibia', 'NA', '264'),
(148, 'Nauru', 'NR', '674'),
(149, 'Nepal', 'NP', '977'),
(150, 'Netherlands', 'NL', '31'),
(151, 'Netherlands Antilles', 'AN', '599'),
(152, 'New Caledonia', 'NC', '687	'),
(153, 'New Zealand', 'NZ', '64'),
(154, 'Nicaragua', 'NI', '505'),
(155, 'Niger', 'NE', '227'),
(156, 'Nigeria', 'NG', '234'),
(157, 'Niue', 'NU', '683'),
(158, 'Norfolk Island', 'NF', '672'),
(159, 'Northern Mariana Islands', 'MP', '1-670'),
(160, 'Norway', 'NO', '47'),
(161, 'Oman', 'OM', '968'),
(162, 'Pakistan', 'PK', '92'),
(163, 'Palau', 'PW', '680'),
(164, 'Panama', 'PA', '507'),
(165, 'Papua New Guinea', 'PG', '675'),
(166, 'Paraguay', 'PY', '595'),
(167, 'Peru', 'PE', '51'),
(168, 'Philippines', 'PH', '63'),
(169, 'Pitcairn', 'PN', '64'),
(170, 'Poland', 'PL', '48'),
(171, 'Portugal', 'PT', '351'),
(172, 'Puerto Rico', 'PR', '1-787'),
(173, 'Qatar', 'QA', '974'),
(174, 'Reunion', 'RE', '262'),
(175, 'Romania', 'RO', '40'),
(176, 'Russian Federation', 'RU', '7'),
(177, 'Rwanda', 'RW', '250'),
(178, 'Saint Kitts and Nevis', 'KN', '1-869'),
(179, 'Saint Lucia', 'LC', '1-758'),
(180, 'Saint Vincent and the Grenadines', 'VC', '1-784'),
(181, 'Samoa', 'WS', '685'),
(182, 'San Marino', 'SM', '378'),
(183, 'Sao Tome and Principe', 'ST', '239'),
(184, 'Saudi Arabia', 'SA', '966'),
(185, 'Senegal', 'SN', '221'),
(186, 'Seychelles', 'SC', '248'),
(187, 'Sierra Leone', 'SL', '232'),
(188, 'Singapore', 'SG', '65'),
(189, 'Slovakia (Slovak Republic)', 'SK', '421'),
(190, 'Slovenia', 'SI', '386'),
(191, 'Solomon Islands', 'SB', '677'),
(192, 'Somalia', 'SO', '252'),
(193, 'South Africa', 'ZA', '27'),
(194, 'South Georgia and the South Sandwich Islands', 'GS', '500'),
(195, 'Spain', 'ES', '34'),
(196, 'Sri Lanka', 'LK', '94'),
(197, 'Saint Helena, Ascension and Tristan da Cunha', 'SH', '290'),
(198, 'St. Pierre and Miquelon', 'PM', '508'),
(199, 'Sudan', 'SD', '249'),
(200, 'Suriname', 'SR', '597'),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', '47'),
(202, 'Swaziland', 'SZ', '268'),
(203, 'Sweden', 'SE', '46'),
(204, 'Switzerland', 'CH', '41'),
(205, 'Syrian Arab Republic', 'SY', '963'),
(206, 'Taiwan', 'TW', '886'),
(207, 'Tajikistan', 'TJ', '992'),
(208, 'Tanzania, United Republic of', 'TZ', '255'),
(209, 'Thailand', 'TH', '66'),
(210, 'Togo', 'TG', '228'),
(211, 'Tokelau', 'TK', '690'),
(212, 'Tonga', 'TO', '676'),
(213, 'Trinidad and Tobago', 'TT', '1-868'),
(214, 'Tunisia', 'TN', '216'),
(215, 'Turkey', 'TR', '90'),
(216, 'Turkmenistan', 'TM', '993'),
(217, 'Turks and Caicos Islands', 'TC', '1-649'),
(218, 'Tuvalu', 'TV', '688'),
(219, 'Uganda', 'UG', '256'),
(220, 'Ukraine', 'UA', '380'),
(221, 'United Arab Emirates', 'AE', '971'),
(222, 'United Kingdom', 'GB', '44'),
(223, 'United States', 'US', '1'),
(224, 'United States Minor Outlying Islands', 'UM', '246'),
(225, 'Uruguay', 'UY', '598'),
(226, 'Uzbekistan', 'UZ', '998'),
(227, 'Vanuatu', 'VU', '678'),
(228, 'Vatican City State (Holy See)', 'VA', '379'),
(229, 'Venezuela', 'VE', '58'),
(230, 'Vietnam', 'VN', '84'),
(231, 'Virgin Islands (British)', 'VG', '1-284'),
(232, 'Virgin Islands (U.S.)', 'VI', '1-340'),
(233, 'Wallis and Futuna Islands', 'WF', '681'),
(234, 'Western Sahara', 'EH', '212'),
(235, 'Yemen', 'YE', '967'),
(236, 'Serbia', 'RS', '381'),
(238, 'Zambia', 'ZM', '260'),
(239, 'Zimbabwe', 'ZW', '263'),
(240, 'Aaland Islands', 'AX', '358'),
(241, 'Palestine', 'PS', '970'),
(242, 'Montenegro', 'ME', '382'),
(243, 'Guernsey', 'GG', '44-1481'),
(244, 'Isle of Man', 'IM', '44-1624'),
(245, 'Jersey', 'JE', '44-1534'),
(247, 'CuraÃ§ao', 'CW', '599'),
(248, 'Ivory Coast', 'CI', '225'),
(249, 'Kosovo', 'XK', '383');

-- --------------------------------------------------------

--
-- Structure de la table `domains`
--

CREATE TABLE `domains` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `current_domain` varchar(255) DEFAULT NULL,
  `custom_domain` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `domain_settings`
--

CREATE TABLE `domain_settings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `short_details` text NOT NULL,
  `details` text NOT NULL,
  `ip` varchar(255) NOT NULL,
  `type1` varchar(255) NOT NULL,
  `host1` varchar(255) NOT NULL,
  `value1` varchar(255) NOT NULL,
  `ttl1` varchar(255) NOT NULL,
  `type2` varchar(255) NOT NULL,
  `host2` varchar(255) NOT NULL,
  `value2` varchar(255) NOT NULL,
  `ttl2` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `domain_settings`
--

INSERT INTO `domain_settings` (`id`, `user_id`, `title`, `short_details`, `details`, `ip`, `type1`, `host1`, `value1`, `ttl1`, `type2`, `host2`, `value2`, `ttl2`, `image`, `thumb`) VALUES
(1, 1, 'Custom Domain Integration Guideline', 'Custom Domain Integration Guideline short details', '<div>Integrating a custom domain with DNS settings typically involves the following steps:</div><div><br></div><ol><li><b>Purchase a domain name:</b> You\'ll need to purchase a domain name from a domain registrar such as GoDaddy, Namecheap, or Google Domains.</li><li><b>Obtain your DNS records: </b>Once you have a domain provider, they will provide you with <b>DNS records</b> that you\'ll need to configure for your domain. These records will typically include an <b>A record & CNAME record</b>.</li><li><b>Configure DNS settings:</b> Log in to your domain registrar\'s account and navigate to the DNS management section.You need to add 2 new DNS record, choose the record type (<b>A & CNAME</b>) & follow the settings below <b>(<span xss=\"removed\">DNS Settings One </span><span xss=\"removed\">& </span><span xss=\"removed\">DNS Settings Two</span>)</b>, and enter the corresponding value.</li><li><b>Wait for propagation:</b> Once you\'ve made the changes to your DNS settings, it can take up to 48 hours for the changes to propagate throughout the internet. During this time, your website or application may be temporarily unavailable.</li></ol><div>That\'s it! Once your DNS records have propagated, your custom domain should be fully integrated with our application.</div>', '200.201.200.122', 'CNAME Record', 'www', 'localhost', 'Automatic', 'A Record', '@', '200.201.200.122', 'Automatic', 'uploads/medium/ffacb0959f18f3f8043243c937559a6c_medium-1200x1200.jpg', 'uploads/thumbnail/ffacb0959f18f3f8043243c937559a6c_thumb-150x150.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `details` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `details`) VALUES
(1, 'How does the free trial work?', 'Our 14 day trial is 100% free and does not require any credit card information to start. If at the end of your trial you would like to upgrade, great. If not, your plan will automatically be downgraded to the free plan.'),
(2, 'Do I need to choose a plan now?', 'No. You get the full featured, unlimited version of our service completely free for 14 days. Once you\'re ready to upgrade, you may choose a plan which suits your needs.'),
(3, 'What is an online booking system?', 'What is an online booking system? In short, an online booking system is an online interface which enables customers to book the services that you offer in the form an appointment.\r\nWith an online booking system, businesses and professionals alike are in control of the services and available slots that are bookable by clients. Setting buffer time and configuring recurring appointments is also possible with many systems.\r\nAdvanced booking systems such as the Aoxio online booking system will also allow for booking pages to be customised and branded.'),
(4, 'What is an online appointment?', 'An online appointment typically refers to exactly that, a booking for a service made via an online booking system. An online appointment could be for a service, such as a dental appointment, for example, a meeting, or any number of reasons. While the booking for the appointment is made online, the actual appointment may take place over the phone, or in person at a later time and date as agreed at the point of booking.'),
(5, 'How do I set up an online booking?', 'If you want to set up and offer an online booking service for your clients, then you can do that with the help of a free online scheduling tool. You’ll benefit from an online booking page which you can customize with your own branding. Furthermore, with a good online booking system, you will be able to seamlessly integrate and offer an online booking facility via your own website.');

-- --------------------------------------------------------

--
-- Structure de la table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `is_limit` int(11) NOT NULL,
  `basic` int(11) DEFAULT NULL,
  `standared` int(11) DEFAULT NULL,
  `premium` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `features`
--

INSERT INTO `features` (`id`, `name`, `slug`, `is_limit`, `basic`, `standared`, `premium`) VALUES
(1, 'Customers', 'customers', 1, 1, 200, -1),
(2, 'Staffs', 'staffs', 1, 10, 20, -1),
(3, 'Services', 'services', 1, 10, 20, 200),
(4, 'Appointments', 'appointments', 1, 100, 20, -1),
(5, 'Gallery', 'gallery', 0, NULL, NULL, NULL),
(6, 'Get Online Payments', 'get-online-payments', 0, NULL, NULL, NULL),
(7, 'Virtual Meeting(Zoom, Google Meet)', 'zoom-meeting', 0, NULL, NULL, NULL),
(8, 'Google Calendar Sync', 'google-calendar-sync', 0, NULL, NULL, NULL),
(9, 'Custom Domain', 'custom-domain', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `feature_assaign`
--

CREATE TABLE `feature_assaign` (
  `id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `feature_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `feature_assaign`
--

INSERT INTO `feature_assaign` (`id`, `package_id`, `feature_id`) VALUES
(212, 2, 8),
(213, 2, 7),
(214, 2, 6),
(215, 2, 5),
(216, 2, 4),
(217, 2, 3),
(218, 2, 2),
(219, 2, 1),
(233, 3, 8),
(234, 3, 7),
(235, 3, 6),
(236, 3, 5),
(237, 3, 4),
(238, 3, 3),
(239, 3, 2),
(240, 3, 1),
(241, 1, 8),
(242, 1, 6),
(243, 1, 5),
(244, 1, 4),
(245, 1, 3),
(246, 1, 2),
(247, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `business_id` varchar(25) DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `short_name` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `text_direction` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `language`
--

INSERT INTO `language` (`id`, `name`, `slug`, `short_name`, `code`, `text_direction`, `status`) VALUES
(1, 'English', 'english', 'en', '', 'ltr', 1),
(6, 'French', 'french', 'fr', NULL, 'ltr', 1);

-- --------------------------------------------------------

--
-- Structure de la table `lang_values`
--

CREATE TABLE `lang_values` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `label` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `english` text DEFAULT NULL,
  `french` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `lang_values`
--

INSERT INTO `lang_values` (`id`, `type`, `label`, `keyword`, `english`, `french`) VALUES
(1, 'admin', 'Language', 'language', 'Language', NULL),
(2, 'admin', 'Edit frontend values', 'edit-frontend-values', 'Translate Frontend', NULL),
(3, 'admin', 'Edit admin values', 'edit-admin-values', 'Translate Admin Panel', NULL),
(4, 'admin', 'Edit user values', 'edit-user-values', 'Translate User Panel', NULL),
(5, 'admin', 'Update language for', 'update-language-for', 'Update language for', NULL),
(6, 'admin', 'Frontend', 'frontend', 'Frontend', NULL),
(7, 'admin', 'Admin', 'admin', 'Admin', NULL),
(8, 'admin', 'User', 'user', 'User', NULL),
(9, 'admin', 'Add New Language ', 'add-new-language', 'Add New Language ', NULL),
(10, 'admin', 'Manage Language', 'manage-language', 'Manage Language', NULL),
(11, 'admin', 'Update values', 'update-values', 'Update values', NULL),
(12, 'admin', 'Your Password has been changed Successfully', 'password-reset-success-msg', 'Your Password has been changed Successfully', NULL),
(13, 'admin', 'Oops', 'oops', 'Oops', NULL),
(14, 'admin', 'Your Confirm Password doesn\'t Match', 'confirm-pass-not-match-msg', 'Your Confirm Password doesn\'t Match', NULL),
(15, 'admin', 'Your Old Password doesn\'t Match', 'old-password-doesnt-match', 'Your Old Password doesn\'t Match', NULL),
(16, 'admin', 'Sorry', 'sorry', 'Sorry!', NULL),
(17, 'admin', 'Something wrong', 'something-wrong', 'Something wrong', NULL),
(18, 'admin', 'Success', 'success', 'Success!', NULL),
(19, 'admin', 'Setup successfully', 'setup-successfully', 'Setup successfully', NULL),
(20, 'admin', 'Send successfully', 'send-successfully', 'Send successfully', NULL),
(21, 'admin', 'Are you sure', 'are-you-sure', 'Are you sure?', NULL),
(22, 'admin', 'Converted successfully', 'converted-successfully', 'Converted successfully', NULL),
(23, 'admin', 'Data limit has been over', 'data-limit-over', 'Data limit has been over', NULL),
(24, 'admin', 'Sending failed', 'sending-failed', 'Sending failed', NULL),
(25, 'admin', 'Approved Successfully', 'approved-successfully', 'Approved Successfully', NULL),
(26, 'admin', 'You will not be able to recover this file', 'not-recover-file', 'You will not be able to recover this file', NULL),
(27, 'admin', 'Deleted successfully', 'deleted-successfully', 'Deleted successfully', NULL),
(28, 'admin', 'Approve this invoice', 'approve-this-invoice', 'Approve this invoice', NULL),
(29, 'admin', 'Set as your primary chamber', 'set-as-your-primary-chamber', 'Set as your primary chamber', NULL),
(30, 'admin', 'Want to set', 'want-to-set', 'Want to set', NULL),
(31, 'admin', 'You have made some changes and it\'s not saved?', 'made-changes-not-saved', 'You have made some changes and it\'s not saved?', NULL),
(32, 'admin', 'Your account has been suspended', 'account-suspend-msg', 'Your account has been suspended!', NULL),
(33, 'front', 'This email already exist, try another one', 'email-exist', 'This email already exist, try another one', NULL),
(34, 'front', 'Your account is not active', 'account-not-active', 'Your account is not active', NULL),
(35, 'front', 'Sorry your username or password is not correct!', 'wrong-username-password', 'Sorry your username or password is not correct!', NULL),
(36, 'front', 'Your email is not verified, Please verify your email', 'email-not-verified', 'Your email is not verified, Please verify your email', NULL),
(37, 'front', 'We\'ve sent a password to your email address. Please check your inbox', 'password-sent-to-email', 'We\'ve sent a password to your email address. Please check your inbox', NULL),
(38, 'front', 'Password Reset Successfully !', 'password-reset-successfully', 'Password Reset Successfully !', NULL),
(39, 'front', 'You are not a valid user', 'not-a-valid-user', 'You are not a valid user', NULL),
(40, 'admin', 'Set default language', 'set-default-language', 'Set default language', NULL),
(41, 'admin', 'Short Form', 'short-form', 'Short Form', NULL),
(42, 'admin', 'Text direction', 'text-direction', 'Text direction', NULL),
(44, 'admin', 'Set Trial Days', 'set-trial-days', 'Set trial days', NULL),
(45, 'front', 'Start', 'start', 'Start', NULL),
(46, 'front', 'days trial', 'days-trial', 'days trial', NULL),
(47, 'admin', 'Delete', 'delete', 'Delete', NULL),
(48, 'admin', 'Activate', 'activate', 'Activate', NULL),
(49, 'admin', 'Deactivate', 'deactivate', 'Deactivate', NULL),
(50, 'admin', 'Dashboard', 'dashboard', 'Dashboard', NULL),
(51, 'admin', 'Save', 'save', 'Save', NULL),
(52, 'front', 'Home', 'home', 'Home', NULL),
(53, 'front', 'Pricing', 'pricing', 'Pricing', NULL),
(54, 'front', 'Blogs', 'blogs', 'Blogs', NULL),
(55, 'front', 'Faqs', 'faqs', 'FAQs', NULL),
(56, 'front', 'Contact', 'contact', 'Contact', NULL),
(57, 'front', 'Pages', 'pages', 'Pages', NULL),
(58, 'front', 'Sign In', 'sign-in', 'Sign In', NULL),
(59, 'front', 'Sign Out', 'sign-out', 'Sign Out', NULL),
(60, 'front', 'Get Started', 'get-started', 'Get Started', NULL),
(61, 'front', 'Workflow', 'workflow', 'Workflow', NULL),
(62, 'front', 'Look at a glance how our system works', 'workflow-title', 'Look at a glance how our system works', NULL),
(63, 'front', 'Choose Plan', 'choose-plan', 'Choose Plan', NULL),
(64, 'front', 'Choose your confortable plan', 'choose-your-confortable-plan', 'Choose your confortable plan', NULL),
(65, 'front', 'Get Paid', 'get-paid', 'Get Paid', NULL),
(66, 'front', 'Get Paid title', 'get-paid-title', 'Paid via paypal/stripe payment method', NULL),
(67, 'front', 'Start Working', 'start-working', 'Start Working', NULL),
(68, 'front', 'Start Working title', 'start-working-title', 'Start Using and explore the featuers', NULL),
(69, 'front', 'Start using', 'start-using', 'Start using', NULL),
(70, 'front', 'account', 'account', 'account', NULL),
(71, 'front', 'Our online registration process makes it easy for you to sign up for an free or pro account.', 'home-intro-desc', 'Our online registration process makes it easy for you to sign up for an free or pro account.', NULL),
(72, 'front', 'Services', 'services', 'Services', NULL),
(73, 'front', 'All rights reserved', 'all-rights-reserved', 'All rights reserved', NULL),
(74, 'front', 'Small Business — friendly Pricing', 'pricing-title', 'Small Business — friendly Pricing', NULL),
(75, 'front', 'We\'re offering a generous Free Plan and affordable Standard & Premium pricing plans that will help you to grow with', 'pricing-desc', 'We\'re offering a generous Free Plan and affordable Standard & Premium pricing plans that will help you to grow with', NULL),
(76, 'front', 'Monthly', 'monthly', 'Monthly', NULL),
(77, 'front', 'Yearly', 'yearly', 'Yearly', NULL),
(78, 'front', 'Per Year', 'per-year', 'Per Year', NULL),
(79, 'front', 'Per Month', 'per-month', 'Per Month', NULL),
(80, 'front', 'Select Plan', 'select-plan', 'Select Plan', NULL),
(81, 'front', 'Experts', 'experts', 'Experts', NULL),
(82, 'front', 'Meet our experienced experts and book your appoinment in online.', 'expert-title', 'Meet our experienced experts and book your appoinment in online.', NULL),
(83, 'front', 'Select Departments', 'select-departments', 'Select Departments', NULL),
(84, 'front', 'Select Experiences', 'select-experiences', 'Select Experiences', NULL),
(85, 'front', 'Search by name', 'search-by-name', 'Search by name', NULL),
(86, 'front', 'Book Appointment', 'book-appointment', 'Book Appointment', NULL),
(87, 'front', 'No data found!', 'no-data-found', 'No data found!', NULL),
(88, 'front', 'Blog & News', 'blog-news', 'Blog & News', NULL),
(89, 'front', 'Learn More & Empower Yourself', 'learn-more-empower-yourself', 'Learn More & Empower Yourself', NULL),
(90, 'front', 'Search blog posts', 'search-blog-posts', 'Search blog posts', NULL),
(91, 'front', 'Tags', 'tags', 'Tags', NULL),
(92, 'front', 'Leave a reply', 'leave-a-reply', 'Leave a reply', NULL),
(93, 'front', 'Name', 'name', 'Name', NULL),
(94, 'front', 'Address', 'address', 'Address', NULL),
(95, 'front', 'Comment', 'comment', 'Comment', NULL),
(96, 'front', 'Submit', 'submit', 'Submit', NULL),
(97, 'front', 'Frequently Asked Questions', 'frequently-asked-questions', 'Frequently Asked Questions', NULL),
(98, 'front', 'Get In Touch', 'get-in-touch', 'Get In Touch', NULL),
(99, 'front', 'Message', 'message', 'Message', NULL),
(100, 'front', 'Sign in to your', 'sign-in-to-your', 'Sign in to your', NULL),
(101, 'front', 'Username', 'username', 'Username', NULL),
(102, 'front', 'Password', 'password', 'Password', NULL),
(103, 'front', 'Forgot password?', 'forgot-password', 'Forgot password?', NULL),
(104, 'front', 'Don\'t have an account yet?', 'an-account-yet', 'Don\'t have an account yet?', NULL),
(105, 'front', 'Select Your Role', 'select-your-role', 'Select Your Role', NULL),
(106, 'front', 'Enter your email', 'enter-your-email', 'Enter your email', NULL),
(107, 'front', ' Back', 'back', ' Back', NULL),
(108, 'front', 'Email', 'email', 'Email', NULL),
(109, 'front', 'Your full name', 'your-full-name', 'Your full name', NULL),
(110, 'front', 'Your email address', 'your-email-address', 'Your email', NULL),
(111, 'front', 'Your password', 'your-password', 'Your password', NULL),
(112, 'front', 'I have read and understood the', 'i-have-read-and-understood-the', 'I have read and understood the', NULL),
(113, 'front', 'Terms and Conditions', 'terms-and-conditions', 'Terms and Conditions', NULL),
(114, 'front', 'Privacy Policy', 'privacy-policy', 'Privacy Policy', NULL),
(115, 'front', 'and', 'and', 'and', NULL),
(116, 'front', 'of this site', 'of-this-site', 'of this site', NULL),
(117, 'front', 'Already have an account?', 'already-have-an-account', 'Already have an account?', NULL),
(118, 'front', 'Register', 'register', 'Register', NULL),
(119, 'front', 'Privacy', 'privacy', 'Privacy', NULL),
(120, 'front', 'Terms', 'terms', 'Terms', NULL),
(121, 'front', 'Error', 'error', 'Error', NULL),
(122, 'front', 'Warning', 'warning', 'Warning', NULL),
(123, 'front', 'Appointment type is required', 'appointment-type-is-required', 'Appointment type is required', NULL),
(124, 'front', 'Booking date is required', 'booking-date-is-required', 'Booking date is required', NULL),
(125, 'front', 'Booking time is required', 'booking-time-is-required', 'Booking time is required', NULL),
(126, 'front', 'Processing', 'processing', 'Processing', NULL),
(127, 'front', 'Appointment booked successfully', 'appointment-booked-successfully', 'Appointment booked successfully', NULL),
(128, 'front', 'Incorrect username or password', 'incorrect-username-or-password', 'Incorrect username or password', NULL),
(129, 'front', 'Please enter a valid date', 'please-enter-a-valid-date', 'Please enter a valid date', NULL),
(130, 'front', 'Recaptcha is required', 'recaptcha-is-required', 'Recaptcha is required', NULL),
(131, 'front', 'Signing In', 'signing-in', 'Signing In', NULL),
(132, 'front', 'Your account is not active', 'your-account-is-not-active', 'Your account is not active', NULL),
(133, 'front', 'Your account has been suspended', 'your-account-has-been-suspended', 'Your account has been suspended', NULL),
(134, 'front', 'Your email is not verified, Please verify your email', 'your-email-is-not-verified-please-verify-your-email', 'Your email is not verified, Please verify your email', NULL),
(135, 'front', 'Registared successfully!', 'registared-successfully', 'Registered successfully!', NULL),
(136, 'front', 'Please wait we are preparing environment for you...', 'preparing-environment', 'Please wait we are preparing environment for you...', NULL),
(137, 'front', 'This email already used, please try another one', 'email-exitsts', 'This email already used, please try another one', NULL),
(138, 'front', 'Something wrong !, Failed to send code in your email.', 'something-wrong', 'Something wrong !, Failed to send code in your email.', NULL),
(139, 'front', 'We\'ve sent a password to your email address. Please check your inbox', 'email-send-notify', 'We\'ve sent a password to your email address. Please check your inbox', NULL),
(140, 'front', 'You are not a valid user', 'you-are-not-a-valid-user', 'You are not a valid user', NULL),
(141, 'front', 'Try Again', 'try-again', 'Try Again', NULL),
(142, 'front', 'Your account verified successfully!', 'your-account-verified-successfully', 'Your account verified successfully!', NULL),
(143, 'front', 'Verify code is not matched', 'verify-code-is-not-matched', 'Verify code is not matched', NULL),
(144, 'front', 'Experience Years', 'experience-years', 'Experience Years', NULL),
(145, 'front', 'Patients', 'patients', 'Patients', NULL),
(146, 'front', 'Visited Patient\'s', 'visited-patients', 'Visited Patient\'s', NULL),
(147, 'front', 'Before booked an appointment check the availability', 'booking-availability', 'Before booked an appointment check the availability', NULL),
(148, 'front', 'Appointment Type', 'appointment-type', 'Appointment Type', NULL),
(149, 'front', 'Select Type', 'select-type', 'Select Type', NULL),
(150, 'front', 'Date ', 'date', 'Date ', NULL),
(151, 'front', 'Time', 'time', 'Time', NULL),
(152, 'front', 'Consultation Fee', 'consultation-fee', 'Consultation Fee', NULL),
(153, 'front', 'Continue', 'continue', 'Continue', NULL),
(154, 'front', ' New Registration', 'new-registration', ' New Registration', NULL),
(155, 'front', ' Already have account?', 'already-have-account', ' Already have account?', NULL),
(156, 'front', 'Close', 'close', 'Close', NULL),
(157, 'front', 'Powered by', 'powered-by', 'Powered by', NULL),
(158, 'admin', 'Settings', 'settings', 'Settings', NULL),
(159, 'admin', 'Payment Settings', 'payment-settings', 'Payment Settings', NULL),
(160, 'admin', 'Plans', 'plans', 'Plans', NULL),
(161, 'admin', 'Departments', 'departments', 'Departments', NULL),
(162, 'admin', 'Add Category', 'add-category', 'Add Category', NULL),
(163, 'admin', 'Blog Posts', 'blog-posts', 'Blog Posts', NULL),
(164, 'admin', 'Change Password', 'change-password', 'Change Password', NULL),
(165, 'admin', 'Logout', 'logout', 'Logout', NULL),
(166, 'admin', 'Verified', 'verified', 'Verified', NULL),
(167, 'admin', 'Pending', 'pending', 'Pending', NULL),
(168, 'admin', 'Expired', 'expired', 'Expired', NULL),
(169, 'admin', 'Last 12 months Income', 'last-12-months-income', 'Last 12 months Income', NULL),
(170, 'admin', 'Income', 'income', 'Income', NULL),
(171, 'admin', 'Recently joined Users', 'recently-joined-users', 'Recently joined Users', NULL),
(172, 'admin', 'a week ago', 'a-week-ago', 'a week ago', NULL),
(173, 'admin', 'Net Income', 'net-income', 'Net Income', NULL),
(174, 'admin', 'Fiscal year', 'fiscal-year', 'Fiscal year', NULL),
(175, 'admin', 'Fiscal year start is January 01', 'fiscal-year-title', 'Fiscal year start is January 01', NULL),
(176, 'admin', 'Version', 'version', 'Version', NULL),
(177, 'admin', 'Plans by user', 'plans-by-user', 'Plans by user', NULL),
(178, 'admin', 'Manage Settings', 'manage-settings', 'Manage Settings', NULL),
(179, 'admin', ' Website Settings', 'website-settings', ' Website Settings', NULL),
(180, 'admin', 'Upload Favicon', 'upload-favicon', 'Upload Favicon', NULL),
(181, 'admin', 'Upload Logo', 'upload-logo', 'Upload Logo', NULL),
(182, 'admin', 'Upload home image', 'upload-home-image', 'Upload home image', NULL),
(183, 'admin', 'Application Name', 'application-name', 'Application Name', NULL),
(184, 'admin', 'Application Title', 'application-title', 'Application Title', NULL),
(185, 'admin', 'Keywords', 'keywords', 'Keywords', NULL),
(186, 'admin', 'Description', 'description', 'Description', NULL),
(187, 'admin', 'Footer About', 'footer-about', 'Footer About', NULL),
(188, 'admin', 'Admin Email', 'admin-email', 'Admin Email', NULL),
(189, 'admin', 'Copyright', 'copyright', 'Copyright', NULL),
(190, 'admin', 'This email will used for your site from mail', 'settings-email-info', 'This email will used for your site from mail', NULL),
(191, 'admin', 'Zoom Settings', 'zoom-settings', 'Zoom Settings', NULL),
(192, 'admin', 'Preferences', 'preferences', 'Preferences', NULL),
(193, 'admin', 'Registration System', 'registration-system', 'Registration System', NULL),
(194, 'admin', 'Enable to allow sign up users to your site.', 'registration-title', 'Enable to allow sign up users to your site.', NULL),
(195, 'admin', 'Enable reCaptcha for all open froms (Sign up, contact, comments)', 'recaptcha-title', 'Enable reCaptcha for all open froms (Sign up, contact, comments)', NULL),
(196, 'admin', 'Email Verification', 'email-verification', 'Email Verification', NULL),
(197, 'admin', 'Enable to allow email verification for registered users.', 'email-verify-title', 'Enable to allow email verification for registered users.', NULL),
(198, 'admin', 'Enable to show users option in frontend', 'users-title', 'Enable to show users option in frontend', NULL),
(199, 'admin', 'Enable to show blog option in frontend', 'blogs-title', 'Enable to show blog option in frontend', NULL),
(200, 'admin', 'Enable to show faqs option in frontend', 'faq-title', 'Enable to show faqs option in frontend', NULL),
(201, 'admin', 'Enable to show home page workflow section in frontend', 'workflow-enable', 'Enable to show home page workflow section in frontend', NULL),
(202, 'admin', 'Email Settings', 'email-settings', 'Email Settings', NULL),
(203, 'admin', 'If you are using gmail smtp please make sure you have set below settings before sending mail', 'mail-info-title', 'If you are using gmail smtp please make sure you have set below settings before sending mail', NULL),
(204, 'admin', 'Two factor authentication off', 'two-factor-off', 'Two factor authentication off', NULL),
(205, 'admin', 'Less secure app on', 'less-secure-app-on', 'Less secure app on', NULL),
(206, 'admin', 'Mail Type', 'mail-type', 'Mail Type', NULL),
(207, 'admin', 'Mail Title', 'mail-title', 'Mail Title', NULL),
(208, 'admin', 'Mail Host', 'mail-host', 'Mail Host', NULL),
(209, 'admin', 'Mail Port', 'mail-port', 'Mail Port', NULL),
(210, 'admin', 'Mail Username', 'mail-username', 'Mail Username', NULL),
(211, 'admin', 'Mail Password', 'mail-password', 'Mail Password', NULL),
(212, 'admin', 'Mail Encryption', 'mail-encryption', 'Mail Encryption', NULL),
(213, 'admin', '  SSL is used for port 465/25, TLS is used for port 587', 'mail-port-help', '  SSL is used for port 465/25, TLS is used for port 587', NULL),
(214, 'admin', 'Send Test Mail', 'send-test-mail', 'Send Test Mail', NULL),
(215, 'admin', 'Social Settings', 'social-settings', 'Social Settings', NULL),
(216, 'admin', 'Set default', 'set-default', 'Set default', NULL),
(217, 'admin', 'Update', 'update', 'Update', NULL),
(218, 'admin', 'Direction', 'direction', 'Direction', NULL),
(219, 'admin', 'Status', 'status', 'Status', NULL),
(220, 'admin', 'Action', 'action', 'Action', NULL),
(221, 'admin', 'Currency', 'currency', 'Currency', NULL),
(222, 'admin', 'Paypal mode', 'paypal-mode', 'Paypal mode', NULL),
(223, 'admin', 'Paypal Account', 'paypal-account', 'Paypal Account', NULL),
(224, 'admin', 'Publish key', 'publish-key', 'Public key', NULL),
(225, 'admin', 'Secret key', 'secret-key', 'Secret key', NULL),
(226, 'admin', 'Add Offline Payment', 'add-offline-payment', 'Add Offline Payment', NULL),
(227, 'admin', 'Select User', 'select-user', 'Select User', NULL),
(228, 'admin', 'Subscription type', 'subscription-type', 'Subscription type', NULL),
(229, 'admin', 'Payment Status', 'payment-status', 'Payment Status', NULL),
(230, 'admin', 'Manage Plans', 'manage-plans', 'Manage Plans', NULL),
(231, 'admin', 'Show', 'show', 'Show', NULL),
(232, 'admin', 'Hide', 'hide', 'Hide', NULL),
(233, 'admin', 'Disable to hide this plan', 'disable-to-hide-this-plan', 'Disable to hide this plan', NULL),
(234, 'admin', 'Active', 'active', 'Active', NULL),
(235, 'admin', 'Edit Plan', 'edit-plan', 'Edit Plan', NULL),
(236, 'admin', 'Update plan', 'update-plan', 'Update plan', NULL),
(237, 'admin', 'Manage your plan settings here', 'manage-your-plan', 'Manage your plan settings here', NULL),
(238, 'admin', 'Plan Settings', 'plan-settings', 'Plan Settings', NULL),
(239, 'admin', 'Plan', 'plan', 'Plan', NULL),
(240, 'admin', 'Choose which features you want to add in this plan', 'choose-which-features', 'Choose which features you want to add in this plan', NULL),
(241, 'admin', 'Plan Name', 'plan-name', 'Plan Name', NULL),
(242, 'admin', 'Monthly Price', 'monthly-price', 'Monthly Price', NULL),
(243, 'admin', 'Yearly Price', 'yearly-price', 'Yearly Price', NULL),
(244, 'admin', 'Set 0 price for free package', 'set-0-price-for-free-package', 'Set 0 price for free package', NULL),
(245, 'admin', 'Online Consultation & get payments', 'online-consultation-get-payments', 'Online Consultation & get payments', NULL),
(260, 'admin', 'Set limit -1 for unlimited', 'set-limit-1-for-unlimited', 'Set limit -1 for unlimited', NULL),
(261, 'admin', 'Add New Department', 'add-new-department', 'Add New Department', NULL),
(262, 'admin', 'All Users', 'all-users', 'All Users', NULL),
(263, 'admin', 'Sort by Packages', 'sort-by-packages', 'Sort by Packages', NULL),
(264, 'admin', 'Sort by Status', 'sort-by-status', 'Sort by Status', NULL),
(265, 'admin', 'Avatar', 'avatar', 'Avatar', NULL),
(266, 'admin', 'Account Status', 'account-status', 'Account Status', NULL),
(267, 'admin', 'Joined', 'joined', 'Joined', NULL),
(268, 'admin', 'All category', 'all-category', 'All category', NULL),
(269, 'admin', ' Add new Category', 'add-new-category', ' Add new Category', NULL),
(270, 'admin', 'Category Name', 'category-name', 'Category Name', NULL),
(271, 'admin', 'Edit', 'edit', 'Edit', NULL),
(272, 'admin', 'All Blog posts', 'all-blog-posts', 'All Blog posts', NULL),
(273, 'admin', 'Thumb', 'thumb', 'Thumb', NULL),
(274, 'admin', 'Title', 'title', 'Title', NULL),
(275, 'admin', 'Details', 'details', 'Details', NULL),
(276, 'admin', 'Add new blog', 'add-new-blog', 'Add new blog', NULL),
(277, 'admin', 'Category ', 'category', 'Category ', NULL),
(278, 'admin', 'Slug', 'slug', 'Slug', NULL),
(279, 'admin', 'Inactive', 'inactive', 'Inactive', NULL),
(280, 'admin', 'All Services', 'all-services', 'All Services', NULL),
(281, 'admin', 'Add new Services', 'add-new-services', 'Add new Services', NULL),
(282, 'admin', 'Upload Image', 'upload-image', 'Upload Image', NULL),
(283, 'admin', 'Order', 'order', 'Order', NULL),
(284, 'admin', 'Add New service', 'add-new-service', 'Add New service', NULL),
(285, 'admin', 'Add new page', 'add-new-page', 'Add new page', NULL),
(286, 'admin', 'Page title', 'page-title', 'Page title', NULL),
(287, 'admin', 'Page slug', 'page-slug', 'Page slug', NULL),
(288, 'admin', 'Page description', 'page-description', 'Page description', NULL),
(289, 'admin', 'All Faqs', 'all-faqs', 'All Faqs', NULL),
(290, 'admin', 'Add New FAQ', 'add-new-faq', 'Add New FAQ', NULL),
(291, 'admin', 'Old Password', 'old-password', 'Old Password', NULL),
(292, 'admin', 'New Password', 'new-password', 'New Password', NULL),
(293, 'admin', 'Confirm New Password', 'confirm-new-password', 'Confirm New Password', NULL),
(294, 'front', 'Resources', 'resources', 'Resources', NULL),
(295, 'front', 'Users', 'users', 'Users', NULL),
(296, 'front', 'The better way to manage your chambers, prescriptions, appointments & patients', 'feature-home-title', 'The better way to manage your chambers, prescriptions, appointments & patients', NULL),
(297, 'front', 'account you can easily manage chamber wise prescriptions, patients, appointments and many more features.', 'feature-home-desc', 'account you can easily manage chamber wise prescriptions, patients, appointments and many more features.', NULL),
(298, 'front', 'Using', 'using', 'Using', NULL),
(299, 'front', 'Features not selected !', 'features-not-selected', 'Features not selected !', NULL),
(300, 'front', 'years experience', 'years-experience', 'years experience', NULL),
(301, 'front', 'View Profile', 'view-profile', 'View Profile', NULL),
(302, 'front', 'Explore our features', 'explore-our-features', 'Explore our features', NULL),
(303, 'front', 'Read More', 'read-more', 'Read More', NULL),
(304, 'front', 'Appointment schedule is not setted.', 'schedule-is-not-setted', 'Appointment schedule is not setted.', NULL),
(305, 'front', 'Online Consultation', 'online-consultation', 'Online Consultation', NULL),
(306, 'front', 'Offline', 'offline', 'Offline', NULL),
(307, 'front', 'Email or Mobile', 'email-or-mobile', 'Email or Mobile', NULL),
(308, 'front', 'Phone', 'phone', 'Phone', NULL),
(309, 'front', 'Educations', 'educations', 'Educations', NULL),
(310, 'front', 'Experiences', 'experiences', 'Experiences', NULL),
(311, 'front', 'This profile is currently not available', 'profile-not-available', 'This profile is currently not available', NULL),
(312, 'front', 'Upgrade your plan', 'upgrade-your-plan', 'Upgrade your plan', NULL),
(313, 'front', 'Back to Home', 'back-to-home', 'Back to Home', NULL),
(314, 'front', 'The resource requested could not be found on this site!', 'error-404', 'The resource requested could not be found on this site!', NULL),
(315, 'front', 'Verify Account', 'verify-account', 'Verify Account', NULL),
(316, 'front', 'We have sent a link to your registered email address, please click this link to verify your account', 'verify-email-sent-link', 'We have sent a link to your registered email address, please click this link to verify your account', NULL),
(317, 'front', 'Email verification failed!', 'email-verification-failed', 'Email verification failed!', NULL),
(318, 'front', 'Congratulation\'s', 'congratulations', 'Congratulation\'s', NULL),
(319, 'front', 'Your account successfully verified', 'your-account-successfully-verified', 'Your account successfully verified', NULL),
(320, 'front', 'Logout Successfully !', 'logout-successfully-', 'Logout Successfully !', NULL),
(321, 'front', 'Recover password', 'recover-password', 'Recover password', NULL),
(322, 'front', 'Admin/Doctors', 'admindoctors', 'Admin/Doctors', NULL),
(323, 'front', 'Staff', 'staff', 'Staff', NULL),
(324, 'front', 'Patient', 'patient', 'Patient', NULL),
(325, 'front', 'Enter username', 'enter-username', 'Enter username', NULL),
(326, 'front', 'Enter password', 'enter-password', 'Enter password', NULL),
(327, 'front', 'Registration system is disabled !', 'registration-system-is-disabled-', 'Registration system is disabled !', NULL),
(328, 'front', 'Contact Admin', 'contact-admin', 'Contact Admin', NULL),
(329, 'front', 'Get started with a', 'get-started-with-a', 'Get started with a', NULL),
(330, 'admin', 'Subscription', 'subscription', 'Subscription', NULL),
(331, 'admin', 'Consultation Settings', 'consultation-settings', 'Consultation Settings', NULL),
(332, 'admin', 'Live Consultations', 'live-consultations', 'Live Consultations', NULL),
(333, 'admin', 'Prescription', 'prescription', 'Prescription', NULL),
(334, 'admin', 'Prescriptions', 'prescriptions', 'Prescriptions', NULL),
(335, 'admin', 'Create New', 'create-new', 'Create New', NULL),
(336, 'admin', 'Lists', 'lists', 'Lists', NULL),
(337, 'admin', 'Set Schedule', 'set-schedule', 'Set Schedule', NULL),
(338, 'admin', 'Drugs', 'drugs', 'Drugs', NULL),
(339, 'admin', 'Personal Info', 'personal-info', 'Personal Info', NULL),
(340, 'admin', 'Manage Education', 'manage-education', 'Manage Education', NULL),
(341, 'admin', 'Manage Experiences', 'manage-experiences', 'Manage Experiences', NULL),
(342, 'admin', 'Profile', 'profile', 'Profile', NULL),
(343, 'admin', 'Blog', 'blog', 'Blog', NULL),
(344, 'admin', 'Today\'s Appointment', 'todays-appointment', 'Today\'s Appointment', NULL),
(345, 'admin', 'Serial No', 'serial-no', 'Serial No', NULL),
(346, 'admin', 'Upcoming Appointment\'s', 'upcoming-appointments', 'Upcoming Appointment\'s', NULL),
(347, 'admin', 'Mr. No', 'mr.-no', 'Mr. No', NULL),
(348, 'admin', 'Doctor Info', 'doctor-info', 'Doctor Info', NULL),
(349, 'admin', 'Schedule Info', 'schedule-info', 'Schedule Info', NULL),
(350, 'admin', 'Consultation type', 'consultation-type', 'Consultation type', NULL),
(351, 'admin', 'Online', 'online', 'Online', NULL),
(352, 'admin', 'Offline (Chamber)', 'offline-chamber', 'Offline (Chamber)', NULL),
(353, 'admin', 'See all Users', 'see-all-users', 'See all Users', NULL),
(354, 'admin', 'Save Changes', 'save-changes', 'Save Changes', NULL),
(355, 'admin', 'mode', 'mode', 'mode', NULL),
(356, 'admin', 'Add Payment', 'add-payment', 'Add Payment', NULL),
(357, 'admin', 'Select Plans', 'select-plans', 'Select Plans', NULL),
(358, 'admin', 'Enable to active this plan', 'enable-to-active-this-plan', 'Enable to active this plan', NULL),
(359, 'admin', 'Hidden', 'hidden', 'Hidden', NULL),
(360, 'admin', 'Enable access to', 'enable-access-to', 'Enable access to', NULL),
(361, 'admin', 'feature in this plan', 'feature-in-this-plan', 'feature in this plan', NULL),
(362, 'admin', 'Chambers', 'chambers', 'Chambers', NULL),
(363, 'admin', 'Package', 'package', 'Package', NULL),
(364, 'admin', 'Days left', 'days-left', 'Days left', NULL),
(365, 'admin', 'Disabled', 'disabled', 'Disabled', NULL),
(366, 'admin', 'All Categories', 'all-categories', 'All Categories', NULL),
(367, 'admin', 'Add New Post', 'add-new-post', 'Add New Post', NULL),
(368, 'admin', 'Enter your tags', 'enter-your-tags', 'Enter your tags', NULL),
(369, 'admin', 'Accounts', 'accounts', 'Accounts', NULL),
(486, 'admin', 'Insert your translate value here', 'insert-your-translate-value-here', 'Insert your translate value here', NULL),
(487, 'front', 'Code resend successfully', 'email-resend-successfully', 'Code resend successfully', NULL),
(490, 'front', 'Verify Code', 'verify-code', 'Verify Code', NULL),
(491, 'admin', 'Prescription created successfully', 'prescription-created-successfully', 'Prescription created successfully', NULL),
(492, 'admin', 'You are ready to start a live consultation with your patient', 'ready-to-start-a-live', 'You are ready to start a live consultation with your patient', NULL),
(493, 'admin', 'Yes, Start It', 'yes-start', 'Yes, Start It', NULL),
(494, 'admin', 'Set this chamber as a default', 'set-this-chamber-default', 'Set this chamber as a default', NULL),
(495, 'admin', 'Cancel this user serial', 'cancel-this-user-serial', 'Cancel this user serial', NULL),
(496, 'admin', 'Serial cancel successfully', 'serial-cancel-success', 'Serial cancel successfully', NULL),
(498, 'admin', 'Inserted Successfully !', 'inserted-successfully', 'Inserted Successfully !', NULL),
(499, 'admin', 'Updated Successfully !', 'updated-successfully', 'Updated Successfully !', NULL),
(509, 'front', 'days free trial', 'days-free-trial', 'days free trial', NULL),
(510, 'admin', 'Multilingual System', 'multilingual-system', 'Multilingual System', NULL),
(511, 'admin', 'Enable to allow multilingual system', 'enable-multilingual', 'Enable to allow multilingual system', NULL),
(527, 'admin', 'Set 0 to hide trial option', 'set-trial-info', 'Set 0 to disable trial option', NULL),
(528, 'admin', 'Label', 'label', 'Label', NULL),
(529, 'admin', 'keyword', 'keyword', 'keyword', NULL),
(530, 'admin', 'Type', 'type', 'Type', NULL),
(531, 'admin', 'Value', 'value', 'Value', NULL),
(532, 'front', 'Companies', 'companies', 'Companies', NULL),
(533, 'front', 'Company Lists', 'company-lists', 'Company Lists', NULL),
(534, 'front', 'All Countries', 'all-countries', 'All Countries', NULL),
(535, 'front', 'View Page', 'view-page', 'View Page', NULL),
(536, 'front', 'Customers', 'customers', 'Customers', NULL),
(537, 'front', 'Staffs', 'staffs', 'Staffs', NULL),
(538, 'front', 'Appointments', 'appointments', 'Appointments', NULL),
(539, 'front', 'Gallery', 'gallery', 'Gallery', NULL),
(540, 'front', 'Get Online Payments', 'get-online-payments', 'Get Online Payments', NULL),
(541, 'front', 'Zoom Meeting', 'zoom-meeting', 'Virtual Meeting(Zoom, Google Meet)', NULL),
(542, 'front', 'Book Now', 'book-now', 'Book Now', NULL),
(543, 'front', 'About', 'about', 'About', NULL),
(544, 'front', 'Business Days', 'business-days', 'Business Days', NULL),
(545, 'front', 'Sort by Staffs', 'sort-by-staffs', 'Sort by Staffs', NULL),
(546, 'front', 'Duration', 'duration', 'Duration', NULL),
(547, 'front', 'Price', 'price', 'Price', NULL),
(548, 'front', 'No image found!', 'no-image-found', 'No image found!', NULL),
(549, 'front', 'Select Service', 'select-service', 'Select Service', NULL),
(550, 'front', 'Select Staff', 'select-staff', 'Select Staff', NULL),
(551, 'front', 'Select Date & Time', 'select-date-time', 'Select Date & Time', NULL),
(552, 'front', 'Schedule not available', 'schedule-not-available', 'Schedule not available', NULL),
(553, 'front', 'Pick Appointment Time For', 'pick-time-for', 'Pick Appointment Time For', NULL),
(554, 'front', 'Easy step by step appointment booking', 'easy-step-booking-title', 'Easy step by step appointment booking', NULL),
(555, 'front', 'Choose staff, schedule date & time to booking your services.', 'easy-step-booking-details', 'Choose staff, schedule date & time to booking your services.', NULL),
(556, 'front', 'Phone Number', 'phone-number', 'Phone Number', NULL),
(557, 'front', 'Select Country', 'select-country', 'Select Country', NULL),
(558, 'front', 'Confirm Booking Details', 'confirm-booking-details', 'Confirm Booking Details', NULL),
(559, 'front', 'You are almost done!', 'you-are-almost-done', 'You are almost done!', NULL),
(560, 'front', 'Booking Number', 'booking-number', 'Booking Number', NULL),
(561, 'front', 'Booking Info', 'booking-info', 'Booking Info', NULL),
(562, 'front', 'Customer Info', 'customer-info', 'Customer Info', NULL),
(563, 'front', 'Payment Info', 'payment-info', 'Payment Info', NULL),
(564, 'front', 'Discount', 'discount', 'Discount', NULL),
(565, 'front', 'Total Cost', 'total-cost', 'Total Cost', NULL),
(566, 'front', 'Add Coupon', 'add-coupon', 'Add Coupon', NULL),
(567, 'front', 'Code here', 'code-here', 'Code here', NULL),
(568, 'front', 'Apply', 'apply', 'Apply', NULL),
(569, 'front', 'Pay Now', 'pay-now', 'Pay Now', NULL),
(570, 'front', 'Pay On Site', 'pay-on-site', 'Pay On Site', NULL),
(571, 'front', 'All transactions are secure and encrypted. Credit card information is never stored.', 'secure-and-encrypted', 'All transactions are secure and encrypted. Credit card information is never stored.', NULL),
(572, 'front', 'Confirm Booking', 'confirm-booking', 'Confirm Booking', NULL),
(573, 'front', 'Customer Panel', 'customer-panel', 'Customer Panel', NULL),
(574, 'front', 'Staff Panel', 'staff-panel', 'Staff Panel', NULL),
(575, 'front', 'Approved', 'approved', 'Approved', NULL),
(576, 'front', 'Completed', 'completed', 'Completed', NULL),
(577, 'front', 'Register your company', 'register-your-company', 'Register your company', NULL),
(578, 'front', 'Basic information, You can add more later', 'basic-information-you-can-add-more-later', 'Basic information, You can add more later', NULL),
(579, 'front', 'Company Slug (Related to url & cannot be changed)', 'company-slug-restrict', 'Company Slug (Related to url & cannot be changed)', NULL),
(580, 'front', 'Company Name', 'company-name', 'Company Name', NULL),
(581, 'front', 'Categories', 'categories', 'Categories', NULL),
(582, 'front', 'Country', 'country', 'Country', NULL),
(583, 'front', 'Select Code', 'select-code', 'Select Code', NULL),
(584, 'front', 'This site uses cookies. By continuing to browse the site you are agreeing to our use of cookies', 'accept_cookies', 'This site uses cookies. By continuing to browse the site you are agreeing to our use of cookies', NULL),
(585, 'front', 'Accept', 'accept', 'Accept', NULL),
(586, 'front', 'Staff Not found!', 'staff-not-found', 'Staff Not found!', NULL),
(587, 'front', 'Card Details', 'card-details', 'Card Details', NULL),
(588, 'front', 'Card Number', 'card-number', 'Card Number', NULL),
(589, 'front', 'Cardholder\'s Name', 'cardholders-name', 'Cardholder\'s Name', NULL),
(590, 'front', 'Loading', 'loading', 'Loading', NULL),
(591, 'front', 'One Platform For any Business', 'one-platform-for-any-business', 'One Platform For any Business', NULL),
(592, 'front', 'Smart booking tool to grow your online business', 'smart-booking-tool-to-grow-your-online-business', 'Smart booking tool to grow your online business', NULL),
(593, 'front', 'The best solution to start your online business <br> with powerful features', 'the-best-solution-to-start', 'The best solution to start your online business <br> with powerful features', NULL),
(594, 'front', 'Booking Website', 'booking-website', 'Booking Website', NULL),
(595, 'front', 'You will get a ready to use booking site after signup in', 'booking-website-title', 'You will get a ready to use booking site after signup in', NULL),
(596, 'front', 'Accept online bookings', 'accept-online-bookings', 'Accept online bookings', NULL),
(597, 'front', 'Accept bookings from your clients using your own booking site', 'accept-online-bookings-title', 'Accept bookings from your clients using your own booking site', NULL),
(598, 'front', 'Staff & Client Portal', 'staff-client-portal', 'Staff & Client Portal', NULL),
(599, 'front', 'Your Staffs & Clients will get access to their own portal', 'staff-client-portal-title', 'Your Staffs & Clients will get access to their own portal', NULL),
(600, 'front', 'Accept Payments', 'accept-payments', 'Accept Payments', NULL),
(601, 'front', 'Accept Online / Offline payments from your clients', 'accept-payments-title', 'Accept Online / Offline payments from your clients', NULL),
(602, 'front', 'Customize your appointment schedule and booking page', 'customize-your-appointment-schedule-and-booking-page', 'Customize your appointment schedule and booking page', NULL),
(603, 'front', 'Share your personal booking page with your customers & prospects', 'share-your-personal-booking-page', 'Share your personal booking page with your customers & prospects', NULL),
(604, 'front', 'Your customers & prospects book an available time with you', 'your-customers-prospects-book-an-available-time-with-you', 'Your customers & prospects book an available time with you', NULL),
(605, 'front', 'Sign up for our 14-day trial with all features. No credit card required', 'sign-up-for-our-14-day-trial-with-all-features', 'Sign up for our 14-day trial with all features. No credit card required', NULL),
(606, 'front', 'Write more details', 'write-more-details', 'Write more details', NULL),
(607, 'front', 'Features not selected !', 'features-not-selected-', 'Features not selected !', NULL),
(608, 'front', 'year', 'year', 'year', NULL),
(609, 'front', 'month', 'month', 'month', NULL),
(610, 'front', 'Admin/User', 'adminuser', 'Admin/User', NULL),
(611, 'front', 'Customer', 'customer', 'Customer', NULL),
(612, 'front', 'Enter email or username', 'enter-email-or-username', 'Enter email or username', NULL),
(613, 'front', 'Name of your company', 'name-of-your-company', 'Name of your company', NULL),
(614, 'front', 'Select', 'select', 'Select', NULL),
(615, 'front', 'This name is already taken, try another one', 'name-is-already-taken', 'This name is already taken, try another one', NULL),
(616, 'front', 'Name is available', 'name-is-available', 'Name is available', NULL),
(617, 'front', 'We have send a verification code in your', 'we-have-send-a-verification-code-in-your', 'We have send a verification code in your', NULL),
(618, 'front', 'Enter Code here', 'enter-code-here', 'Enter Code here', NULL),
(619, 'front', 'Resend', 'resend', 'Resend', NULL),
(620, 'front', 'Open', 'open', 'Open', NULL),
(621, 'front', 'Free', 'free', 'Free', NULL),
(622, 'front', 'Booking is temporary unavailable!', 'booking-is-temporary-unavailable', 'Booking is temporary unavailable!', NULL),
(623, 'front', 'Capacity', 'capacity', 'Capacity', NULL),
(624, 'front', 'Service', 'service', 'Service', NULL),
(625, 'front', 'Invalid code', 'invalid-code', 'Invalid code', NULL),
(626, 'front', 'You have already applied this code', 'already-applied-code', 'You have already applied this code', NULL),
(627, 'front', 'Coupon applied successfully!', 'coupon-applied-successfully', 'Coupon applied successfully!', NULL),
(628, 'front', 'off', 'off', 'off', NULL),
(629, 'front', 'Edit Appointment', 'edit-appointment', 'Edit Appointment', NULL),
(630, 'front', 'Rejected', 'rejected', 'Rejected', NULL),
(631, 'front', 'Start Time', 'start-time', 'Start Time', NULL),
(632, 'front', 'End Time', 'end-time', 'End Time', NULL),
(633, 'front', 'Cancelled', 'cancelled', 'Cancelled', NULL),
(634, 'front', 'Complete your payment', 'complete-your-payment', 'Complete your payment', NULL),
(635, 'front', 'Cancel Appointment', 'cancel-appointment', 'Cancel Appointment', NULL),
(636, 'front', 'Zoom Meeting Link', 'zoom-meeting-link', 'Zoom Meeting Link', NULL),
(637, 'front', 'Booking Confirmation', 'booking-confirmation', 'Booking Confirmation', NULL),
(638, 'front', 'Please complete your payment to confirm the booking', 'confirm-the-booking', 'Please complete your payment to confirm the booking', NULL),
(639, 'admin', 'View Site', 'view-site', 'View Site', NULL),
(640, 'admin', 'Manage Profile', 'manage-profile', 'Manage Profile', NULL),
(641, 'admin', 'License', 'license', 'License', NULL),
(642, 'admin', 'Transactions', 'transactions', 'Transactions', NULL),
(643, 'admin', 'Features', 'features', 'Features', NULL),
(644, 'admin', 'Contacts', 'contacts', 'Contacts', NULL),
(645, 'admin', 'Info', 'info', 'Info', NULL),
(646, 'user', 'Company Settings', 'company-settings', 'Company Settings', NULL),
(647, 'user', 'Working Hours', 'working-hours', 'Working Hours', NULL),
(648, 'admin', 'Latest Users', 'latest-users', 'Latest Users', NULL),
(649, 'admin', 'Joining date', 'joining-date', 'Joining date', NULL),
(650, 'admin', 'Packages by User', 'packages-by-user', 'Packages by User', NULL),
(651, 'admin', 'Charts', 'charts', 'Charts', NULL),
(652, 'admin', 'SMS Settings', 'sms-settings', 'SMS Settings', NULL),
(653, 'admin', 'Subscription Tax', 'subscription-tax', 'Subscription Tax', NULL),
(654, 'admin', 'For better view please use logo size 300 ✕ 150', 'logo-suggestions', 'For better view please use logo size 300 ✕ 150', NULL),
(655, 'admin', 'Upload hero image', 'upload-hero-image', 'Upload hero image', NULL),
(656, 'admin', 'Set 0 to disable the trial option', 'set-0-to-disable-the-trial-option', 'Set 0 to disable the trial option', NULL),
(657, 'admin', 'Preferences', 'prefrences', 'Preferences', NULL),
(658, 'admin', 'Enable to active payment options for users subscription', 'payment-title', 'Enable to active payment options for users subscription', NULL),
(659, 'admin', 'SMS Verification', 'sms-verification', 'SMS Verification', NULL),
(660, 'admin', 'Enable to allow sms verification for registered users.', 'sms-title1', 'Enable to allow sms verification for registered users.', NULL),
(661, 'admin', 'Note: If you want to enable sms verification please make sure you have disabled the email verification', 'sms-title2', 'Note: If you want to enable sms verification please make sure you have disabled the email verification', NULL),
(662, 'admin', 'Company List', 'company-list', 'Company List', NULL),
(663, 'admin', 'Enable to show company list in frontend', 'company-list-title', 'Enable to show company list in frontend', NULL),
(664, 'admin', 'Features Intro', 'features-intro', 'Features Intro', NULL),
(665, 'admin', 'Enable to show home page feature intro section in frontend', 'features-intro-title', 'Enable to show home page feature intro section in frontend', NULL),
(666, 'admin', 'Select Income Chart Style', 'select-income-chart-style', 'Select Income Chart Style', NULL),
(667, 'admin', 'Bar Chart', 'bar-chart', 'Bar Chart', NULL),
(668, 'admin', 'Line Chart', 'line-chart', 'Line Chart', NULL),
(669, 'admin', 'Area Line Chart', 'area-line-chart', 'Area Line Chart', NULL),
(670, 'admin', 'Area Shape Chart', 'area-shape-chart', 'Area Shape Chart', NULL),
(671, 'admin', 'Account SID', 'account-sid', 'Account SID', NULL),
(672, 'admin', 'Auth Token', 'auth-token', 'Auth Token', NULL),
(673, 'admin', 'Sender Number (Twillo)', 'sender-number-tw', 'Sender Number (Twillo)', NULL),
(674, 'admin', 'Tax Name', 'tax-name', 'Tax Name', NULL),
(675, 'admin', 'Tax Amount', 'tax-amount', 'Tax Amount', NULL),
(676, 'admin', 'Gmail Smtp', 'gmail-smtp', 'Gmail Smtp', NULL),
(677, 'admin', 'Two factor authentication off ', 'two-factor-authentication-off', 'Two factor authentication off ', NULL),
(678, 'admin', 'Captcha Site key', 'captcha-site-key', 'Captcha Site key', NULL),
(679, 'admin', 'Captcha Secret key', 'captcha-secret-key', 'Captcha Secret key', NULL),
(680, 'admin', 'Payment', 'payment', 'Payment', NULL),
(681, 'admin', 'This currency will used to receive your subscription payments', 'currency-title', 'This currency will used to receive your subscription payments', NULL),
(682, 'admin', 'Setup Your Paypal Account to Accept Payments', 'paypal-title', 'Setup Your Paypal Account to Accept Payments', NULL),
(683, 'admin', 'Setup Your Stripe Account to Accept Payments', 'stripe-title', 'Setup Your Stripe Account to Accept Payments', NULL),
(684, 'admin', 'Offline Payment', 'offline-payment', 'Offline Payment', NULL),
(685, 'admin', 'Setup Your Bank Info to receive offline payment directly to your bank account', 'offline-payment-title', 'Setup Your Bank Info to receive offline payment directly to your bank account', NULL),
(686, 'admin', 'Offline Payment Instructions', 'offline-payment-instructions', 'Offline Payment Instructions', NULL),
(687, 'admin', 'Your customer will see this instruction before submit payment', 'offline-payment-suggestions', 'Your customer will see this instruction before submit payment', NULL),
(688, 'admin', 'License Info', 'license-info', 'License Info', NULL),
(689, 'admin', 'License Type', 'license-type', 'License Type', NULL),
(690, 'admin', 'Regular', 'regular', 'Regular', NULL),
(691, 'admin', 'Extended', 'extended', 'Extended', NULL),
(692, 'admin', 'If you want to upgrade your license from regular to extended please send email to us', 'license-upgrade-info', 'If you want to upgrade your license from regular to extended please send email to us', NULL),
(693, 'admin', 'Click to Send Mail', 'click-to-send-mail', 'Click to Send Mail', NULL),
(694, 'admin', 'Disable', 'disable', 'Disable', NULL),
(695, 'admin', 'Approve Payment', 'approve-payment', 'Approve Payment', NULL),
(696, 'admin', 'View Proof', 'view-proof', 'View Proof', NULL),
(697, 'admin', 'View Invoice', 'view-invoice', 'View Invoice', NULL),
(698, 'admin', 'Billing Cycle', 'billing-cycle', 'Billing Cycle', NULL),
(699, 'admin', 'Posts', 'posts', 'Posts', NULL),
(700, 'admin', 'Filters', 'filters', 'Filters', NULL),
(701, 'admin', 'Informations', 'informations', 'Informations', NULL),
(702, 'admin', 'Booking Page', 'booking-page', 'Booking Page', NULL),
(703, 'admin', 'Expire', 'expire', 'Expire', NULL),
(704, 'admin', 'Record Payment', 'record-payment', 'Record Payment', NULL),
(705, 'admin', 'All', 'all', 'All', NULL),
(706, 'admin', 'Image', 'image', 'Image', NULL),
(707, 'admin', 'Example', 'example', 'Example', NULL),
(708, 'user', 'Latest Appointments', 'latest-appointments', 'Latest Appointments', NULL),
(709, 'user', 'Time & Date', 'time-date', 'Time & Date', NULL),
(710, 'user', 'Created', 'created', 'Created', NULL),
(711, 'user', 'Last Billing', 'last-billing', 'Last Billing', NULL),
(712, 'user', 'Your Selected Plan', 'your-selected-plan', 'Your Selected Plan', NULL),
(713, 'user', 'Upgrade', 'upgrade', 'Upgrade', NULL),
(714, 'user', 'Are you sure want to upgrade your plan?', 'sure-upgrade', 'Are you sure want to upgrade your plan?', NULL),
(715, 'user', 'Yes Continue', 'yes-continue', 'Yes Continue', NULL),
(716, 'user', 'Embedded Code', 'embedded-code', 'Embedded Code', NULL),
(717, 'user', 'QR Code', 'qr-code', 'QR Code', NULL),
(718, 'user', 'Upload Company Logo', 'upload-company-logo', 'Upload Company Logo', NULL),
(719, 'user', 'Banner image', 'banner-image', 'Banner image', NULL),
(720, 'user', 'Company  Title', 'company-title', 'Company  Title', NULL),
(721, 'user', 'Date Format', 'date-format', 'Date Format', NULL),
(722, 'user', 'Enable Gallery', 'enable-gallery', 'Enable Gallery', NULL),
(723, 'user', 'Enable to show gallery option in booking page', 'enable-gallery-title', 'Enable to show gallery option in booking page', NULL),
(724, 'user', 'Sunday', 'sunday', 'Sunday', NULL),
(725, 'user', 'Monday', 'monday', 'Monday', NULL),
(726, 'user', 'Tuesday', 'tuesday', 'Tuesday', NULL),
(727, 'user', 'Wednesday', 'wednesday', 'Wednesday', NULL),
(728, 'user', 'Thursday', 'thursday', 'Thursday', NULL),
(729, 'user', 'Friday', 'friday', 'Friday', NULL),
(730, 'user', 'Satarday', 'satarday', 'Saturday', NULL),
(731, 'user', 'Add new time', 'add-new-time', 'Add new time', NULL),
(732, 'user', 'Enable Booking Confirmation SMS', 'enable-booking-confirmation-sms', 'Enable Booking Confirmation SMS', NULL),
(733, 'user', 'Enable to send booking notification message to your customers, after make a appointment', 'enable-booking-con-title', 'Enable to send booking notification message to your customers, after make a appointment', NULL),
(734, 'user', 'Enable Booking Reminder Alert', 'enable-booking-reminder-alert', 'Enable Booking Reminder Alert', NULL),
(735, 'user', 'Enable to send booking reminder alert to your users before booking expire', 'enable-booking-alert-title', 'Enable to send booking reminder alert to your users before booking expire', NULL),
(736, 'user', 'Paypal', 'paypal', 'Paypal', NULL),
(737, 'user', 'Stripe', 'stripe', 'Stripe', NULL),
(738, 'user', 'Sandbox', 'sandbox', 'Sandbox', NULL),
(739, 'user', 'Live', 'live', 'Live', NULL),
(740, 'user', 'Your payment has been completed Successfully', 'payment-completed-successfully', 'Your payment has been completed Successfully', NULL),
(741, 'user', 'Your payment has been failed', 'your-payment-has-been-failed', 'Your payment has been failed', NULL),
(742, 'user', 'Copy below code to show your booking page in another site', 'embed-code-copy', ' Click here to copy below code and add to your website', NULL),
(743, 'user', 'Share your business page using QR Code', 'share-qr-code', 'Share your business page using QR Code', NULL),
(744, 'user', 'Preview', 'preview', 'Preview', NULL),
(745, 'user', 'Download', 'download', 'Download', NULL),
(746, 'user', 'New Appointment', 'new-appointment', 'New Appointment', NULL),
(747, 'user', 'Notify Customers', 'notify-customers', 'Notify Customers', NULL),
(748, 'user', 'Booking date', 'booking-date', 'Booking date', NULL),
(749, 'user', 'Today', 'today', 'Today', NULL),
(750, 'user', 'Tomorrow', 'tomorrow', 'Tomorrow', NULL),
(751, 'user', 'Next 7 days', 'next-7-days', 'Next 7 days', NULL),
(752, 'user', 'Next 15 days', 'next-15-days', 'Next 15 days', NULL),
(753, 'user', 'Date & Time', 'date-time', 'Date & Time', NULL),
(754, 'user', 'Reset', 'reset', 'Reset', NULL),
(755, 'user', 'Enter email for username', 'enter-email-for-username', 'Enter email for username', NULL),
(756, 'user', 'Set or reset password', 'set-or-reset-password', 'Set or reset password', NULL);
INSERT INTO `lang_values` (`id`, `type`, `label`, `keyword`, `english`, `french`) VALUES
(757, 'user', 'Create New Category', 'create-new-category', 'Create New Category', NULL),
(758, 'user', 'Create New Service', 'create-new-service', 'Create New Service', NULL),
(759, 'user', 'Service Name', 'service-name', 'Service Name', NULL),
(760, 'user', 'Service Image', 'service-image', 'Service Image', NULL),
(761, 'user', 'Assign Staffs', 'assign-staffs', 'Assign Staffs', NULL),
(762, 'user', 'Set 0 for free', 'set-0-for-free', 'Set 0 for free', NULL),
(763, 'user', 'Person', 'person', 'Person', NULL),
(764, 'user', 'Set -1 for unlimited', 'set-1-for-unlimited', 'Set -1 for unlimited', NULL),
(765, 'user', 'Minutes', 'minutes', 'Minutes', NULL),
(766, 'user', 'Allow Zoom Meeting', 'allow-zoom-meeting', 'Allow Zoom Meeting', NULL),
(767, 'user', 'Zoom Invitation Link', 'zoom-invitation-link', 'Zoom Invitation Link', NULL),
(768, 'user', 'Not found', 'not-found', 'Not found', NULL),
(769, 'user', 'Select staffs', 'select-staffs', 'Select staffs', NULL),
(770, 'user', 'New Coupon', 'new-coupon', 'New Coupon', NULL),
(771, 'user', 'Coupons', 'coupons', 'Coupons', NULL),
(772, 'user', 'Limit', 'limit', 'Limit', NULL),
(773, 'user', 'Once per customer', 'once-per-customer', 'Once per customer', NULL),
(774, 'user', 'Code', 'code', 'Code', NULL),
(775, 'user', 'Yes', 'yes', 'Yes', NULL),
(776, 'user', 'No', 'no', 'No', NULL),
(777, 'user', 'Start Date', 'start-date', 'Start Date', NULL),
(778, 'user', 'End Date', 'end-date', 'End Date', NULL),
(779, 'user', 'Image Title', 'image-title', 'Image Title', NULL),
(780, 'user', 'Galleries', 'galleries', 'Galleries', NULL),
(781, 'user', 'Upload Payment Proof', 'upload-payment-proof', 'Upload Payment Proof', NULL),
(782, 'user', 'Please select a valid date', 'select-a-valid-date', 'Please select a valid date', NULL),
(783, 'user', 'Downloaded Successfully', 'downloaded-successfully', 'Downloaded Successfully', NULL),
(784, 'front', 'Appointment date is required', 'appointment-date-is-required', 'Appointment date is required', NULL),
(785, 'user', 'Appointment time is required', 'appointment-time-is-required', 'Appointment time is required', NULL),
(786, 'front', 'Want to cancel this appointment', 'want-to-cancel-this-appointment', 'Want to cancel this appointment', NULL),
(787, 'front', 'Canceled Successfully', 'canceled-successfully', 'Canceled Successfully', NULL),
(788, 'user', 'Company', 'company', 'Company', NULL),
(789, 'admin', 'Translate Language', 'translate-language', 'Translate Language', NULL),
(790, 'user', 'Calendars', 'calendars', 'Calendars', NULL),
(791, 'user', 'Item', 'item', 'Item', NULL),
(792, 'user', 'Total', 'total', 'Total', NULL),
(793, 'user', 'Sub Total', 'sub-total', 'Sub Total', NULL),
(794, 'user', 'Order No', 'order-no', 'Order No', NULL),
(795, 'user', 'Invoice', 'invoice', 'Invoice', NULL),
(796, 'user', 'Time Format', 'time-format', 'Time Format', NULL),
(797, 'user', 'Hours', 'hours', 'Hours', NULL),
(798, 'user', 'Time interval', 'time-interval', 'Time interval', NULL),
(799, 'user', 'Are you sure send a sms notification to customer?', 'confirm-sms-notify', 'Send a sms notification to customer.', NULL),
(800, 'user', 'Actions are disabled for demo purposes', 'action-off', 'Actions are disabled for demo purposes', NULL),
(801, 'user', 'Enable Staff', 'enable-staff', 'Enable Staff', NULL),
(802, 'user', 'If you enable this your customer must need add at least one staff while booking', 'enable-staff-title', 'If you enable this your customers must need add at least one staff while booking', NULL),
(803, 'admin', 'You have reached the maximum limit! Please upgrade your plan.', 'reached-maximum-limit', 'You have reached the maximum limit! Please upgrade your plan', NULL),
(804, 'user', 'Enable Category', 'enable-category', 'Enable Category', NULL),
(805, 'user', 'Disable Category', 'disable-category', 'Disable Category', NULL),
(806, 'user', 'Location', 'location', 'Location', NULL),
(807, 'user', 'Locations', 'locations', 'Locations', NULL),
(808, 'user', 'Sub location', 'sub-location', 'Sub location', NULL),
(809, 'user', 'Sub locations', 'sub-locations', 'Sub locations', NULL),
(810, 'user', 'Currency location', 'currency-location', 'Currency location', NULL),
(811, 'user', 'Number format', 'number-format', 'Number format', NULL),
(812, 'user', 'Currency Position', 'currency-position', 'Currency Position', NULL),
(813, 'user', 'Paid', 'paid', 'Paid', NULL),
(814, 'user', 'Minute', 'minute', 'Minute', NULL),
(815, 'user', 'Hour', 'hour', 'Hour', NULL),
(816, 'user', 'Send SMS Reminder', 'send-sms-reminder', 'Send SMS Reminder', NULL),
(817, 'user', 'Review', 'review', 'Review', NULL),
(818, 'user', 'Reviews', 'reviews', 'Reviews', NULL),
(819, 'user', 'Customer Feedback', 'customer-feedback', 'Customer Feedback', NULL),
(820, 'user', 'Average Rating', 'average-rating', 'Average Rating', NULL),
(821, 'user', 'Ratings Summary', 'ratings-summary', 'Ratings Summary', NULL),
(822, 'user', 'Ratings', 'ratings', 'Ratings', NULL),
(823, 'user', 'Service Ratings', 'service-ratings', 'Service Ratings', NULL),
(824, 'user', 'Enable Ratings', 'enable-ratings', 'Enable Ratings', NULL),
(825, 'user', 'Enable to publicly visible service ratings, Until complete 3 ratings it will be hidden', 'enable-ratings-title', 'Enable to publicly visible service ratings, Until complete 3 ratings it will be hidden', NULL),
(826, 'user', 'Learn more', 'learn-more', 'Learn more', NULL),
(827, 'user', 'Write your review', 'write-review', 'Write your review', NULL),
(828, 'user', 'January', 'january', 'January', NULL),
(829, 'user', 'February', 'february', 'February', NULL),
(830, 'user', 'March', 'march', 'March', NULL),
(831, 'user', 'April', 'april', 'April', NULL),
(832, 'user', 'May', 'may', 'May', NULL),
(833, 'user', 'June', 'june', 'June', NULL),
(834, 'user', 'July', 'july', 'July', NULL),
(835, 'user', 'August', 'august', 'August', NULL),
(836, 'user', 'September', 'september', 'September', NULL),
(837, 'user', 'October', 'october', 'October', NULL),
(838, 'user', 'November', 'november', 'November', NULL),
(839, 'user', 'December', 'december', 'December', NULL),
(840, 'user', 'Su', 'su', 'Su', NULL),
(841, 'user', 'Mo', 'mo', 'Mo', NULL),
(842, 'user', 'Tu', 'tu', 'Tu', NULL),
(843, 'user', 'We', 'we', 'We', NULL),
(844, 'user', 'Th', 'th', 'Th', NULL),
(845, 'user', 'Fr', 'fr', 'Fr', NULL),
(846, 'user', 'Sa', 'sa', 'Sa', NULL),
(847, 'user', 'Days', 'days', 'Days', NULL),
(848, 'user', 'Day', 'day', 'Day', NULL),
(849, 'user', 'Kay Id', 'kay-id', 'Key Id', NULL),
(850, 'user', 'Key Secret', 'key-secret', 'Key Secret', NULL),
(851, 'user', 'Setup your Razorpay account to accept payments', 'razorpay-title', 'Setup your Razorpay account to accept payments', NULL),
(852, 'user', 'Razorpay ', 'razorpay', 'Razorpay ', NULL),
(853, 'user', 'Opening Hour', 'opening-hour', 'Opening Hour', NULL),
(854, 'user', 'End Hour', 'end-hour', 'End Hour', NULL),
(855, 'user', 'Branches', 'branches', 'Branches', NULL),
(856, 'user', 'Enable Locations', 'enable-locations', 'Enable Locations', NULL),
(857, 'user', 'Disable Locations', 'disable-locations', 'Disable Locations', NULL),
(858, 'user', 'Enable to allow locations in booking page', 'enable-location-title', 'Enable to allow locations in booking page', NULL),
(859, 'user', 'Disable to hide locations in booking page', 'disable-location-title', 'Disable to hide locations in booking page', NULL),
(860, 'user', 'Any special notes?', 'any-special-notes', 'Any special notes?', NULL),
(861, 'user', 'Write your notes here', 'write-your-notes-here', 'Write your notes here', NULL),
(862, 'user', 'Enable Frontend', 'enable-frontend', 'Enable Frontend', NULL),
(863, 'user', 'Enable to show frontend site', 'enable-to-show-frontend-site', 'Enable to show frontend site', NULL),
(864, 'user', 'View Details', 'view-details', 'View Details', NULL),
(865, 'user', 'Total Appointments', 'total-appointments', 'Total Appointments', NULL),
(866, 'user', 'Total Services', 'total-services', 'Total Services', NULL),
(867, 'user', 'Last Appointment', 'last-appointment', 'Last Appointment', NULL),
(868, 'user', 'Add Breaks', 'add-breaks', 'Add Breaks', NULL),
(869, 'user', 'This phone number will used for as username', 'phone-as-username', 'This phone number will used for as username', NULL),
(870, 'user', 'Search', 'search', 'Search', NULL),
(871, 'user', 'Search Value', 'search-value', 'Search Value', NULL),
(872, 'user', ' Twillo SMS Settings', 'twillo-sms-settings', ' Twillo SMS Settings', NULL),
(873, 'user', 'Cancel', 'cancel', 'Cancel', NULL),
(874, 'user', 'Phone already exist', 'phone-exist', 'Phone already exist', NULL),
(875, 'user', 'Persons', 'persons', 'Persons', NULL),
(876, 'user', 'Bringing anyone with you?', 'bringing-anyone-with-you', 'Bringing anyone with you?', NULL),
(877, 'user', 'Additional Persons:', 'additional-persons', 'Additional Persons:', NULL),
(878, 'user', 'General Settings', 'general-settings', 'General Settings', NULL),
(879, 'user', 'Enable Group Booking', 'enable-group-booking', 'Enable Group Booking', NULL),
(880, 'user', 'Enable to allow group booking for your customers', 'enable-group-title', 'Enable to allow group booking for your customers', NULL),
(881, 'user', 'Maximum allowed additional persons', 'max-allowed-persons', 'Maximum allowed additional persons', NULL),
(882, 'user', 'Group Booking', 'group-booking', 'Group Booking', NULL),
(883, 'user', 'Payments', 'payments', 'Payments', NULL),
(884, 'user', 'just now', 'just-now', 'just now', NULL),
(885, 'user', 'one minute ago', 'one-minute-ago', 'one minute ago', NULL),
(886, 'user', 'minutes ago', 'minutes-ago', 'minutes ago', NULL),
(887, 'user', 'an hour ago', 'an-hour-ago', 'an hour ago', NULL),
(888, 'user', 'hours ago', 'hours-ago', 'hours ago', NULL),
(889, 'user', 'yesterday', 'yesterday', 'yesterday', NULL),
(890, 'user', 'days ago', 'days-ago', 'days ago', NULL),
(891, 'user', 'weeks ago', 'weeks-ago', 'weeks ago', NULL),
(892, 'user', 'a month ago', 'a-month-ago', 'a month ago', NULL),
(893, 'user', 'months ago', 'months-ago', 'months ago', NULL),
(894, 'user', 'one year ago', 'one-year-ago', 'one year ago', NULL),
(895, 'user', 'years ago', 'years-ago', 'years ago', NULL),
(896, 'user', 'Jan', 'jan', 'Jan', NULL),
(897, 'user', 'Feb', 'feb', 'Feb', NULL),
(898, 'user', 'Mar', 'mar', 'Mar', NULL),
(899, 'user', 'Apr', 'apr', 'Apr', NULL),
(900, 'user', 'Jun', 'jun', 'Jun', NULL),
(901, 'user', 'Jul', 'jul', 'Jul', NULL),
(902, 'user', 'Aug', 'aug', 'Aug', NULL),
(903, 'user', 'Sep', 'sep', 'Sep', NULL),
(904, 'user', 'Oct', 'oct', 'Oct', NULL),
(905, 'user', 'Nov', 'nov', 'Nov', NULL),
(906, 'user', 'Dec', 'dec', 'Dec', NULL),
(907, 'user', 'Facebook', 'facebook', 'Facebook', NULL),
(908, 'user', 'Twitter', 'twitter', 'Twitter', NULL),
(909, 'user', 'Instagram', 'instagram', 'Instagram', NULL),
(910, 'user', 'WhatsApp', 'whatsapp', 'WhatsApp', NULL),
(911, 'user', 'LinkedIn', 'linkedin', 'LinkedIn', NULL),
(912, 'user', 'Google Analytics', 'google-analytics', 'Google Analytics', NULL),
(913, 'user', 'reCaptcha', 'recaptcha', 'reCaptcha', NULL),
(914, 'user', 'Total Persons', 'total-persons', 'Total Persons', NULL),
(915, 'user', 'Apply service duration to generate booking time slots', 'generate-booking-time-slots', 'Apply service duration to generate booking time slots', NULL),
(916, 'user', 'Apply fixed duration to generate booking time slots', 'fixed-booking-time-slots', 'Apply fixed duration to generate booking time slots', NULL),
(917, 'user', 'Enable Online Payments', 'enable-online-payment', 'Enable Online Payments', NULL),
(918, 'user', 'Enable to active only payment methods to receive booking payments', 'enable-online-title', 'Enable to active online payment methods to receive booking payments', NULL),
(919, 'user', 'Enable offline payment', 'enable-offline-payment', 'Enable offline payment', NULL),
(920, 'user', 'Enable to active onsite payment option', 'enable-offline-title', 'Enable to active onsite payment option', NULL),
(921, 'admin', 'Not Assigned', 'not-assigned', 'Not Assigned', NULL),
(922, 'admin', 'Notes', 'notes', 'Notes', NULL),
(923, 'admin', 'Appearance', 'appearance', 'Appearance', NULL),
(924, 'admin', 'Frontend Color', 'frontend-color', 'Frontend Color', NULL),
(925, 'admin', 'Set layout', 'set-layout', 'Set layout', NULL),
(926, 'admin', 'Light', 'light', 'Light', NULL),
(927, 'admin', 'Dark', 'dark', 'Dark', NULL),
(928, 'admin', 'Used', 'used', 'Used', NULL),
(929, 'admin', 'Select payment method', 'select-payment-method', 'Select payment method', NULL),
(930, 'admin', 'Designation', 'designation', 'Designation', NULL),
(931, 'admin', 'Feedback', 'feedback', 'Feedback', NULL),
(932, 'admin', 'Testimonials', 'testimonials', 'Testimonials', NULL),
(933, 'admin', 'What our customer says about ', 'testimonial-title', 'What our customer says about ', NULL),
(934, 'admin', 'SEO Settings', 'seo-settings', 'SEO Settings', NULL),
(935, 'admin', 'Reports', 'reports', 'Reports', NULL),
(936, 'admin', 'Most booked customers', 'most-booked-customers', 'Most booked customers', NULL),
(937, 'admin', 'Most serviced staffs', 'most-serviced-staffs', 'Most serviced staffs', NULL),
(938, 'admin', 'Most booked services', 'most-booked-services', 'Most booked services', NULL),
(939, 'admin', 'Time Zone', 'time-zone', 'Time Zone', NULL),
(940, 'admin', 'Enable to allow locations in booking page and your staffs will be available by locations', 'location-title-2', 'Enable to allow locations in booking page and your staffs will be available by location', NULL),
(941, 'admin', 'left', 'left', 'left', NULL),
(942, 'admin', 'Calendar Settings', 'calendar-settings', 'Calendar Settings', NULL),
(943, 'admin', 'Client Id', 'client-id', 'Client Id', NULL),
(944, 'admin', 'Client Secret', 'client-secret', 'Client Secret', NULL),
(945, 'admin', 'Google Calendar', 'google-calendar', 'Google Calendar', NULL),
(946, 'admin', 'Authorized redirect URIs', 'authorized-redirect-uris', 'Authorized redirect URIs', NULL),
(947, 'admin', 'Google Callback URL', 'google-callback-url', 'Google Callback URL', NULL),
(948, 'admin', 'Google Calendar Sync', 'google-calendar-sync', 'Google Calendar Sync', NULL),
(949, 'admin', 'Sync Google Calendar', 'sync-google-calendar', 'Sync Google Calendar', NULL),
(950, 'admin', 'Google Calendar Integration Doc', 'google-calendar-integration', 'Google Calendar Integration Doc', NULL),
(951, 'admin', 'Lifetime Price', 'lifetime-price', 'Lifetime Price', NULL),
(952, 'admin', 'Lifetime', 'lifetime', 'Lifetime', NULL),
(953, 'admin', 'Enable Lifetime Plan', 'enable-lifetime', 'Enable Lifetime Plan', NULL),
(954, 'admin', 'Enable to active lifetime plan for subscribed users.', 'enable-lifetime-title', 'Enable to active lifetime plan for subscribed users.', NULL),
(955, 'admin', 'For better view use', 'for-better-view-use', 'For better view use', NULL),
(956, 'admin', 'Header Script Codes', 'header-script-codes', 'Header Script Codes', NULL),
(957, 'admin', 'Paste google analytics, Facebook Pixel or any other script codes here', 'header-script-codes-title', 'Paste google analytics, Facebook Pixel or any other script codes here', NULL),
(958, 'admin', 'Welcome to', 'welcome-to', 'Welcome to', NULL),
(959, 'admin', 'Your verification code is', 'your-verification-code-is', 'Your verification code is', NULL),
(960, 'admin', 'Appointment', 'appointment', 'Appointment', NULL),
(961, 'admin', 'booking is confirmed at', 'booking-is-confirmed-at', 'booking is confirmed at', NULL),
(962, 'admin', 'Appointment Confirmation', 'appointment-confirmation', 'Appointment Confirmation', NULL),
(963, 'admin', 'Your appointment is booked successfully at', 'appointment-successfully-at', 'Your appointment is booked successfully at', NULL),
(964, 'admin', 'Please login to your account for more details', 'login-more-details', 'Please login to your account for more details', NULL),
(965, 'user', 'Apply your coupon code here', 'apply-your-coupon-code-here', 'Apply your coupon code here', NULL),
(966, 'user', 'Coupons limit', 'coupons-limit', 'Coupons limit', NULL),
(967, 'user', 'How many days will be active this coupon', 'how-many-days-will-be-active-this-coupon', 'How many days will be active this coupon', NULL),
(968, 'user', 'Discount must be between 1% - 99%', 'discount-must-be-between', 'Discount must be between 1% - 99%', NULL),
(969, 'user', 'Export as CSV', 'export-as-csv', 'Export as CSV', NULL),
(970, 'user', 'Codes', 'codes', 'Codes', NULL),
(971, 'user', 'See all codes', 'see-all-codes', 'See all codes', NULL),
(972, 'user', 'Your name string contains illegal characters.', 'illegal-characters-title', 'Your name string contains illegal characters.', NULL),
(973, 'user', 'Please Complete these steps', 'please-complete-these-steps', 'Please Complete these steps', NULL),
(974, 'user', 'Set Business Hours', 'set-business-hours', 'Set Business Hours', NULL),
(975, 'user', 'Add Staff', 'add-staff', 'Add Staff', NULL),
(976, 'user', 'Add Customer', 'add-customer', 'Add Customer', NULL),
(977, 'user', 'Add Service', 'add-service', 'Add Service', NULL),
(978, 'user', 'Enter phone number with dial code', 'enter-phone-number-with-dial-code', 'Enter phone number with dial code', NULL),
(979, 'user', 'Cities', 'cities', 'Cities', NULL),
(980, 'user', 'Location is required', 'location-required', 'Location is required', NULL),
(981, 'admin', 'Paystack', 'paystack', 'Paystack', NULL),
(982, 'admin', 'Setup Your Paystack Account to Accept Payments', 'paystack-title', 'Setup Your Paystack Account to Accept Payments', NULL),
(983, 'user', 'Recently booked an appointment at', 'recently-booked-an-appointment', 'Recently booked an appointment at', NULL),
(984, 'user', 'New appointment is booked', 'new-appointment-is-booked', 'Booked new appointment', NULL),
(985, 'user', 'Quantity', 'quantity', 'Quantity', NULL),
(986, 'user', 'Coupon code already applied', 'coupon-code-already-applied', 'Coupon code already applied', NULL),
(987, 'user', 'Have any coupon code?', 'have-any-coupon-code', 'Have any coupon code?', NULL),
(988, 'user', 'Enable to active coupon code feature', 'enable-coupon-title', 'Enable to active coupon code feature', NULL),
(989, 'user', 'Allow Google Meet', 'allow-google-meet', 'Allow Google Meet', NULL),
(990, 'user', 'Google meet link', 'google-meet-link', 'Google meet invitation link', NULL),
(991, 'user', 'Google Meet', 'google-meet', 'Google Meet', NULL),
(992, 'user', 'Virtual Meeting', 'virtual-meeting', 'Virtual Meeting', NULL),
(993, 'user', 'Zoom', 'zoom', 'Zoom', NULL),
(994, 'user', 'Enable Coupon from', 'enable-coupon-from', 'Enable Coupon from', NULL),
(995, 'user', 'Holidays', 'holidays', 'Holidays', NULL),
(996, 'user', 'Interval Settings', 'interval-settings', 'Interval Settings', NULL),
(997, 'user', 'Enable Appointment Reminder', 'enable-appointment-reminder', 'Enable Appointment Reminder', NULL),
(998, 'user', 'Send reminder email', 'send-reminder-email', 'Send reminder email', NULL),
(999, 'user', 'Same day', 'same-day', 'Same day', NULL),
(1000, 'user', 'Before', 'before', 'Before', NULL),
(1001, 'user', 'Login', 'login', 'Login', NULL),
(1002, 'user', 'Trial', 'trial', 'Trial', NULL),
(1003, 'user', 'Plan Coupons', 'plan-coupons', 'Plan Coupons', NULL),
(1004, 'user', 'System Settings', 'system-settings', 'System Settings', NULL),
(1005, 'user', 'Guest Booking', 'guest-booking', 'Guest Booking', NULL),
(1006, 'user', 'Enable Guest Booking', 'enable-guest-booking', 'Enable Guest Booking', NULL),
(1007, 'user', 'Enable to allow guest booking', 'enable-guest-booking-title', 'Enable to allow guest booking', NULL),
(1008, 'user', 'Wallet Settings', 'wallet-settings', 'Wallet Settings', NULL),
(1009, 'user', 'Commission Rate', 'commission-rate', 'Commission Rate', NULL),
(1010, 'user', 'Minimum Payout Amount', 'minimum-payout-amount', 'Minimum Payout Amount', NULL),
(1011, 'user', 'Enable Payouts', 'enable-payouts', 'Enable Payouts', NULL),
(1012, 'user', 'Enable to active payouts module and receive users appointment payment to admin account.', 'enable-payout-title', 'Enable to active payouts module and receive users appointment payment to admin account.', NULL),
(1013, 'user', 'Payouts', 'payouts', 'Payouts', NULL),
(1014, 'user', 'Setup Payout Accounts', 'setup-payout-accounts', 'Setup Payout Accounts', NULL),
(1015, 'user', 'Set Payout Account', 'set-payout-account', 'Set Payout Account', NULL),
(1016, 'user', 'Full Name', 'full-name', 'Full Name', NULL),
(1017, 'user', 'IBAN', 'iban', 'IBAN', NULL),
(1018, 'user', 'Bank Name', 'bank-name', 'Bank Name', NULL),
(1019, 'user', 'International Bank Account Number(IBAN) ', 'iban-number', 'International Bank Account Number(IBAN) ', NULL),
(1020, 'user', 'State', 'state', 'State', NULL),
(1021, 'user', 'City', 'city', 'City', NULL),
(1022, 'user', 'Postcode', 'post-code', 'Postcode', NULL),
(1023, 'user', 'Bank Account Holder\'s Name', 'bank-account-holders-name', 'Bank Account Holder\'s Name', NULL),
(1024, 'user', 'Bank Branch Country', 'bank-branch-country', 'Bank Branch Country', NULL),
(1025, 'user', 'Bank Branch City', 'bank-branch-city', 'Bank Branch City', NULL),
(1026, 'user', 'Bank Account Number', 'bank-account-number', 'Bank Account Number', NULL),
(1027, 'user', 'Swift Code', 'swift-code', 'Swift Code', NULL),
(1028, 'user', 'Swift', 'swift', 'Swift', NULL),
(1029, 'user', 'Invalid withdrawal amount!', 'invalid-withdrawal-amount', 'Invalid withdrawal amount!', NULL),
(1030, 'user', 'Payout request sent successfully !', 'payout-request-sent-successfully', 'Payout request sent successfully !', NULL),
(1031, 'user', 'Minimum Payout Amounts', 'minimum-payout-amounts', 'Minimum Payout Amounts', NULL),
(1032, 'user', 'Empty Paypal email', 'empty-paypal-email', 'Empty Paypal email', NULL),
(1033, 'user', 'Empty IBAN info', 'empty-iban-info', 'Empty IBAN info', NULL),
(1034, 'user', 'Empty Swift info', 'empty-swift-info', 'Empty Swift info', NULL),
(1035, 'user', 'Transaction ID', 'transaction-id', 'Transaction ID', NULL),
(1036, 'user', 'Withdrawal Method', 'withdrawal-method', 'Withdrawal Method', NULL),
(1037, 'user', 'Amount', 'amount', 'Amount', NULL),
(1038, 'user', 'Send Payout Request', 'send-payout-request', 'Send Payout Request', NULL),
(1039, 'user', 'Total Earnings', 'total-earnings', 'Total Earnings', NULL),
(1040, 'user', 'Total Withdraw', 'total-withdraw', 'Total Withdraw', NULL),
(1041, 'user', 'Balance', 'balance', 'Balance', NULL),
(1042, 'user', 'after commission of', 'after-commission-of', 'after commission of', NULL),
(1043, 'user', 'Payout Settings', 'payout-settings', 'Payout Settings', NULL),
(1044, 'user', 'Payout Requests', 'payout-requests', 'Payout Requests', NULL),
(1045, 'user', 'Payout Completed', 'payout-completed', 'Payout Completed', NULL),
(1046, 'user', 'Request Sent', 'request-sent', 'Request Sent', NULL),
(1047, 'user', 'Enable / Disable Payout Methods', 'enabledisable-payout-methods', 'Enable / Disable Payout Methods', NULL),
(1048, 'user', 'must be between 1% - 99%', 'must-be-between-1-99', 'must be between 1% - 99%', NULL),
(1049, 'user', 'Payout History', 'payout-history', 'Payout History', NULL),
(1050, 'user', 'Payout Method', 'payout-method', 'Payout Method', NULL),
(1051, 'user', 'Add Payout', 'add-payout', 'Add Payout', NULL),
(1052, 'user', 'Wallet', 'wallet', 'Wallet', NULL),
(1053, 'user', 'User Dashboard', 'user-dashboard', 'User Dashboard', NULL),
(1054, 'user', 'has been', 'has-been', 'has been', NULL),
(1055, 'user', 'Appointment Reminder', 'appointment-reminder', 'Appointment Reminder', NULL),
(1056, 'user', 'Tomorrow you have an appointment', 'tomorrow-you-have-an-appointment', 'Tomorrow you have an appointment', NULL),
(1057, 'admin', 'Dear', 'dear', 'Dear', NULL),
(1058, 'admin', 'thank you for your booking at our', 'thank-you-for-your-booking-at-our', 'thank you for your booking at our', NULL),
(1059, 'admin', 'at', 'at', 'at', NULL),
(1060, 'admin', 'is', 'is', 'is', NULL),
(1061, 'admin', 'Confirmed', 'confirmed', 'Confirmed', NULL),
(1062, 'admin', 'Rate this service', 'rate-this-service', 'Rate this service', NULL),
(1063, 'admin', 'Your feedback', 'your-feedback', 'Your feedback', NULL),
(1064, 'admin', 'Your account has been created successfully, now you can login to your account using below access', 'new-user-account-login', 'Your account has been created successfully, now you can login to your account using below access', NULL),
(1065, 'admin', 'Site Animation', 'site-animation', 'Site Animation', NULL),
(1066, 'admin', 'Enable to activate website animation', 'site-animation-title', 'Enable to activate website animation', NULL),
(1067, 'admin', 'Enable', 'enable', 'Enable', NULL),
(1068, 'admin', 'Amount Withdraw', 'amount-withdraw', 'Amount Withdraw', NULL),
(1069, 'admin', 'Flutterwave', 'flutterwave', 'Flutterwave', NULL),
(1070, 'admin', 'Copy', 'copy', 'Copy', NULL),
(1071, 'admin', 'Copied', 'copied', 'Copied', NULL),
(1072, 'admin', 'Sender Email', 'sender-email', 'Sender Email', NULL),
(1073, 'admin', 'Access Token', 'access-token', 'Access Token', NULL),
(1074, 'admin', 'Password Recovery', 'password-recovery', 'Password Recovery', NULL),
(1075, 'admin', 'Hello', 'hello', 'Hello', NULL),
(1076, 'admin', 'We have reset your password, Please use this', 'we-reset-pass', 'We have reset your password, Please use below', NULL),
(1077, 'admin', 'code to login your account', 'code-to-login-your-account', 'code to login your account', NULL),
(1078, 'admin', 'Custom Domain', 'custom-domain', 'Custom Domain', NULL),
(1079, 'admin', 'Domains', 'domain', 'Domains', NULL),
(1080, 'admin', 'Requests', 'request', 'Requests', NULL),
(1081, 'admin', 'Current domain', 'current-domain', 'Current domain', NULL),
(1082, 'admin', 'Custom domain', 'custom-domain', 'Custom domain', NULL),
(1083, 'admin', 'Approve', 'approve', 'Approve', NULL),
(1084, 'admin', 'Short details', 'short-details', 'Short details', NULL),
(1085, 'admin', 'Host', 'host', 'Host', NULL),
(1086, 'admin', 'ttl', 'ttl', 'TTL', NULL),
(1087, 'admin', 'two', 'two', 'two', NULL),
(1088, 'admin', 'One', 'one', 'one', NULL),
(1089, 'admin', 'IP', 'ip', 'IP', NULL),
(1090, 'admin', 'Write details here', 'write-details-here', 'Write details here', NULL),
(1091, 'admin', 'Domain Requests', 'domain-requests', 'Domain Requests', NULL),
(1092, 'admin', 'Current Url', 'current-url', 'Current Url', NULL),
(1093, 'admin', 'Domain Settings', 'domain-settings', 'Domain Settings', NULL),
(1094, 'admin', 'Custom Domains', 'custom-domains', 'Custom Domains', NULL),
(1095, 'admin', 'Your Server IP Address', 'server-ip-address', 'Your Server IP Address', NULL),
(1096, 'admin', 'This ip address will be used to setup users custom domain > DNS settings', 'ip-help-info', 'This ip address will be used to setup users custom domain > DNS settings', NULL),
(1097, 'admin', 'DNS Settings', 'dns-settings', 'DNS Settings', NULL),
(1098, 'admin', 'Upload an Example Screenshot', 'upload-an-example-screenshot', 'Upload an Example Screenshot', NULL),
(1099, 'admin', 'This part will be shown for your users to setup custom domain > DNS settings', 'user-dns-settings-types', 'This part will be shown for your users to setup custom domain > DNS settings', NULL),
(1100, 'admin', 'Before going to submit your custom domain request make sure you have purchased this domain and its ready to use', 'custom-domain-user-warning-info', 'Before going to submit your custom domain request make sure you have purchased this domain and its ready to use', NULL),
(1101, 'admin', 'Default Url', 'default-url', 'Default Url', NULL),
(1102, 'admin', 'Openai API', 'openai-api', 'Openai API', NULL),
(1103, 'admin', 'Openai API Key', 'openai-api-key', 'Openai API Key', NULL),
(1104, 'admin', 'Openai Model', 'openai-model', 'Openai Model', NULL),
(1105, 'admin', 'Enable to allow openai in this system', 'enable-openai', 'Enable to allow openai in this system', NULL),
(1106, 'admin', 'Ai Response', 'ai-response', 'Ai Response', NULL),
(1107, 'admin', 'Generate', 'generate', 'Generate', NULL),
(1108, 'admin', 'Advanced settings', 'advanced-settings', 'Advanced settings', NULL),
(1109, 'admin', 'Content creativity level', 'content-creativity-level', 'Content creativity level', NULL),
(1110, 'admin', 'Output Variations', 'output-variations', 'Output Variations', NULL),
(1111, 'admin', 'Max words', 'max-wrods', 'Max words', NULL),
(1112, 'admin', 'No content yet', 'no-content-yet', 'No content yet', NULL),
(1113, 'admin', 'Output', 'output', 'Output', NULL),
(1114, 'admin', 'Documents', 'documents', 'Documents', NULL),
(1115, 'admin', 'Low', 'low', 'Low', NULL),
(1116, 'admin', 'Medium', 'medium', 'Medium', NULL),
(1117, 'admin', 'High', 'high', 'High', NULL),
(1118, 'admin', 'Generate AI Response', 'generate-ai-response', 'Generate AI Response', NULL),
(1119, 'admin', 'Give some directions about your topic', 'give-some-directions-about-your-topic', 'Give some directions about your topic', NULL),
(1120, 'admin', 'Enable to allow custom domain feature for users', 'enable-cdomain', 'Enable to allow custom domain feature for users', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `service_id` varchar(155) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `business_id` varchar(25) DEFAULT '0',
  `phone` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `locations`
--

INSERT INTO `locations` (`id`, `parent_id`, `service_id`, `user_id`, `business_id`, `phone`, `name`, `address`, `status`) VALUES
(1, 0, NULL, 2, '894321299572', '', 'SMARTLab', '', 1),
(2, 0, NULL, 2, '894321299572', '', 'Labo des Langues', '', 1);

-- --------------------------------------------------------

--
-- Structure de la table `package`
--

CREATE TABLE `package` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT 0.00,
  `monthly_price` decimal(10,2) DEFAULT NULL,
  `lifetime_price` decimal(10,2) NOT NULL DEFAULT 1000.00,
  `bill_type` varchar(255) DEFAULT NULL,
  `is_special` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `package`
--

INSERT INTO `package` (`id`, `name`, `slug`, `price`, `monthly_price`, `lifetime_price`, `bill_type`, `is_special`, `status`) VALUES
(1, 'Free', 'basic', 0.00, 0.00, 0.00, 'year', 0, 2),
(2, 'Standard', 'standared', 10.00, 5.50, 15.00, 'year', 1, 2),
(3, 'Premium', 'premium', 15.00, 10.00, 20.00, 'year', 0, 2);

-- --------------------------------------------------------

--
-- Structure de la table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `business_id` varchar(255) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `details` longtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `pages`
--

INSERT INTO `pages` (`id`, `business_id`, `title`, `slug`, `details`, `status`, `created_at`) VALUES
(1, '0', 'Terms and Conditions', 'terms-of-service', 'Terms and Conditions', NULL, '0000-00-00 00:00:00'),
(2, '0', 'Privacy Policy', 'privacy-policy', 'Privacy Policy', 1, '2021-07-06 22:17:52'),
(3, '894321299572', 'tice', 'tice', '', 1, '2023-04-07 12:08:15');

-- --------------------------------------------------------

--
-- Structure de la table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `puid` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `package_id` varchar(255) DEFAULT NULL,
  `billing_type` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `expire_on` date DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `proof` text DEFAULT NULL,
  `tax` varchar(255) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `payment`
--

INSERT INTO `payment` (`id`, `puid`, `user_id`, `package_id`, `billing_type`, `amount`, `status`, `created_at`, `expire_on`, `payment_method`, `proof`, `tax`) VALUES
(1, '06178', 2, '1', 'yearly', 0.00, 'verified', '2023-04-07', NULL, NULL, NULL, '0'),
(2, '06178', 2, '1', 'yearly', 0.00, 'verified', '2023-04-07', NULL, NULL, NULL, '0'),
(3, '06178', 2, '1', 'yearly', 0.00, 'verified', '2023-04-07', NULL, NULL, NULL, '0'),
(5, '76125', 4, '1', 'yearly', 0.00, 'verified', '2023-05-22', NULL, NULL, NULL, '0'),
(6, '06874', 5, '1', 'yearly', 0.00, 'verified', '2023-05-22', NULL, NULL, NULL, '0'),
(7, '07518', 6, '1', 'yearly', 0.00, 'verified', '2023-05-22', NULL, NULL, NULL, '0'),
(8, '98145', 7, '1', 'yearly', 0.00, 'verified', '2023-06-07', NULL, NULL, NULL, '0'),
(9, '75809', 8, '1', 'monthly', 0.00, 'pending', '2025-02-10', '2025-03-10', NULL, NULL, '0'),
(10, '85432', 9, '3', 'monthly', 10.00, 'verified', '2025-03-09', NULL, NULL, NULL, '0'),
(11, '47569', 10, '1', 'monthly', 0.00, 'pending', '2025-05-10', '2025-06-10', NULL, NULL, '0');

-- --------------------------------------------------------

--
-- Structure de la table `payment_user`
--

CREATE TABLE `payment_user` (
  `id` int(11) NOT NULL,
  `puid` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT 0.00,
  `commission_amount` decimal(10,2) DEFAULT 0.00,
  `commission_rate` int(11) DEFAULT 0,
  `status` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `proof` varchar(255) DEFAULT NULL,
  `type` varchar(155) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `payment_user`
--

INSERT INTO `payment_user` (`id`, `puid`, `user_id`, `customer_id`, `appointment_id`, `amount`, `total_amount`, `commission_amount`, `commission_rate`, `status`, `created_at`, `payment_method`, `proof`, `type`) VALUES
(1, '41865', 2, 7, 6, 10.00, 0.00, 0.00, 0, 'verified', '2023-04-20', 'offline', NULL, 'user'),
(2, '92741', 2, 4, 3, 10.00, 0.00, 0.00, 0, 'verified', '2023-04-20', 'offline', NULL, 'user');

-- --------------------------------------------------------

--
-- Structure de la table `payouts`
--

CREATE TABLE `payouts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `payout_method` varchar(255) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `plan_coupons`
--

CREATE TABLE `plan_coupons` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `user_id` varchar(155) DEFAULT '0',
  `plan` varchar(255) NOT NULL,
  `plan_type` varchar(255) DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `days` varchar(155) DEFAULT NULL,
  `discount` int(11) NOT NULL,
  `discount_type` varchar(155) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `quantity` int(11) DEFAULT 0,
  `used` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `apply_date` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `plan_coupons_apply`
--

CREATE TABLE `plan_coupons_apply` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `product_services`
--

CREATE TABLE `product_services` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `orders` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `product_services`
--

INSERT INTO `product_services` (`id`, `name`, `details`, `image`, `thumb`, `orders`) VALUES
(1, 'Create your own booking page that is branding your business', 'Customise and branding your business to share your booking page with a smart URL which will help you to run your business a smart way.', 'uploads/medium/copywriting-social-media-post-content-marketing-internet-commercial-cartoon-character-writing-text-advertising-promotional-strategy-concept-illustration_335657-2066_medium-600x600.jpg', 'uploads/thumbnail/copywriting-social-media-post-content-marketing-internet-commercial-cartoon-character-writing-text-advertising-promotional-strategy-concept-illustration_335657-2066_thumb-150x150.jpg', 1),
(2, 'Accept bookings from anywhere anytime', 'There are no boundary for your business, Share your booking page URL using any social platform email or others to  booking your services from anywhere in the world.', 'uploads/medium/scheduling-forming-filling-timetable-digital-calendar-time-management-arranging-controlling-optimizing-effective-plans-organization-vector-isolated-concept-metaphor-illustration_335657-2748_medium-600x600.jpg', 'uploads/thumbnail/scheduling-forming-filling-timetable-digital-calendar-time-management-arranging-controlling-optimizing-effective-plans-organization-vector-isolated-concept-metaphor-illustration_335657-2748_thumb-150x150.jpg', 2),
(3, 'Accept Online / Offline Payments from your Customers', 'Easily process your payments online in a secure manner, Select from Payment Processors like PayPal, Stripe and offline. ', 'uploads/medium/finances-management-budget-assessment-financial-literacy-accounting-idea-financier-with-cash-economist-holding-golden-coin-cartoon-character_335657-3538_medium-600x600.jpg', 'uploads/thumbnail/finances-management-budget-assessment-financial-literacy-accounting-idea-financier-with-cash-economist-holding-golden-coin-cartoon-character_335657-3538_thumb-150x150.jpg', 4),
(4, 'Connect with your customers all around the world using zoom meeting', 'Integrate with Zoom, So you can easily manage your Virtual Meetings and Classes right from Aoxio. ', 'uploads/medium/online-meetup-abstract-concept-vector-illustration-conference-call-join-meetup-group-video-call-online-service-distance-communication-informal-meeting-members-networking-abstract-metaphor_335657-2920_medium-600x600.jpg', 'uploads/thumbnail/online-meetup-abstract-concept-vector-illustration-conference-call-join-meetup-group-video-call-online-service-distance-communication-informal-meeting-members-networking-abstract-metaphor_335657-2920_thumb-150x150.jpg', 3);

-- --------------------------------------------------------

--
-- Structure de la table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `business_id` varchar(25) DEFAULT '0',
  `service_id` int(11) DEFAULT NULL,
  `appointment_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `feedback` text DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `business_id` varchar(25) DEFAULT '0',
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `details` longtext DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `capacity_left` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `duration_type` varchar(255) DEFAULT 'minute',
  `price` decimal(10,2) DEFAULT NULL,
  `staffs` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `orders` int(11) DEFAULT 0,
  `zoom_link` text DEFAULT NULL,
  `google_meet` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `services`
--

INSERT INTO `services` (`id`, `business_id`, `category_id`, `user_id`, `name`, `slug`, `details`, `capacity`, `capacity_left`, `duration`, `duration_type`, `price`, `staffs`, `status`, `orders`, `zoom_link`, `google_meet`, `image`, `thumb`, `created_at`) VALUES
(2, '894321299572', 1, 2, 'Anti-Plagiat', 'anti-plagiat', '', -1, NULL, '30', 'minute', 0.00, '[\"2\"]', 1, 0, '', '', 'uploads/medium/e23dc463a875053474d622a1d337a8f9_medium-256x256.png', 'uploads/thumbnail/e23dc463a875053474d622a1d337a8f9_thumb-200x200.png', '2023-04-07 12:10:02'),
(3, '894321299572', 1, 2, 'Office 365', 'office-365', '', -1, NULL, '15', 'minute', 0.00, '[\"2\"]', 1, 0, '', '', 'uploads/medium/f3cd942444075038a0e2b83028c0b42c_medium-760x471.png', 'uploads/thumbnail/f3cd942444075038a0e2b83028c0b42c_thumb-200x123.png', '2023-05-12 09:57:34'),
(4, '894321299572', 2, 2, 'Support de cours multimédia', 'support-de-cours-multimedia', '', -1, NULL, '6', 'hour', 0.00, 'null', 1, 1, '', '', 'uploads/medium/7a65f0da90730d360b3cb3509bb012d2_medium-482x432.png', 'uploads/thumbnail/7a65f0da90730d360b3cb3509bb012d2_thumb-200x179.png', '2023-05-12 10:00:17'),
(5, '894321299572', 2, 2, 'Capsule vidéo 360°', 'capsule-video-360', '', -1, NULL, '24', 'hour', 0.00, 'null', 1, 2, '', '', 'uploads/medium/e5997e1f14c89d67ea73d6590d7c53d0_medium-474x265.jpeg', 'uploads/thumbnail/e5997e1f14c89d67ea73d6590d7c53d0_thumb-200x111.jpeg', '2023-05-12 10:02:53'),
(6, '482767835247', 3, 4, 'ENMG', 'enmg', '', -1, NULL, '15', 'minute', 0.00, '[\"3\"]', 1, 0, '', '', 'uploads/medium/107d83bb5e9c09a823a26abc977be746_medium-900x600.jpg', 'uploads/thumbnail/107d83bb5e9c09a823a26abc977be746_thumb-200x133.jpg', '2023-05-22 15:46:32');

-- --------------------------------------------------------

--
-- Structure de la table `service_category`
--

CREATE TABLE `service_category` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `business_id` varchar(25) DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `orders` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `service_category`
--

INSERT INTO `service_category` (`id`, `user_id`, `business_id`, `name`, `status`, `orders`) VALUES
(1, 2, '894321299572', 'Informatique', 1, 3),
(2, 2, '894321299572', 'Pédagogie numérique', 1, 1),
(3, 4, '482767835247', 'Service de Physiologie', 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `site_title` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `hero_img` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `footer_about` text DEFAULT NULL,
  `admin_email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `copyright` varchar(255) DEFAULT NULL,
  `pagination_limit` int(11) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `google_analytics` longtext DEFAULT NULL,
  `site_color` varchar(255) DEFAULT NULL,
  `site_font` varchar(255) DEFAULT NULL,
  `layout` int(11) DEFAULT NULL,
  `about_info` mediumtext DEFAULT NULL,
  `ind_code` varchar(255) DEFAULT NULL,
  `purchase_code` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `enable_captcha` int(11) NOT NULL DEFAULT 0,
  `enable_workflow` int(11) NOT NULL DEFAULT 1,
  `enable_feature` int(11) NOT NULL,
  `enable_users` int(11) NOT NULL DEFAULT 1,
  `enable_blog` int(11) NOT NULL,
  `enable_faq` int(11) NOT NULL,
  `enable_animation` int(11) DEFAULT 1,
  `enable_registration` int(11) NOT NULL,
  `enable_payment` int(11) NOT NULL,
  `enable_paypal` int(11) NOT NULL DEFAULT 0,
  `enable_email_verify` int(11) NOT NULL,
  `check_email_verify_user` varchar(155) DEFAULT '0',
  `enable_multilingual` int(11) DEFAULT 0,
  `enable_frontend` varchar(155) DEFAULT '1',
  `enable_lifetime` varchar(155) DEFAULT '0',
  `enable_coupon` int(11) DEFAULT 0,
  `captcha_type` int(11) DEFAULT NULL,
  `captcha_site_key` varchar(255) DEFAULT NULL,
  `captcha_secret_key` varchar(255) DEFAULT NULL,
  `paypal_email` varchar(255) DEFAULT NULL,
  `paypal_payment` int(11) DEFAULT 0,
  `stripe_payment` int(11) DEFAULT 0,
  `publish_key` varchar(255) DEFAULT NULL,
  `secret_key` varchar(255) DEFAULT NULL,
  `paystack_payment` varchar(155) DEFAULT '0',
  `paystack_secret_key` varchar(255) DEFAULT NULL,
  `paystack_public_key` varchar(255) DEFAULT NULL,
  `razorpay_payment` varchar(155) DEFAULT '0',
  `razorpay_key_id` varchar(255) DEFAULT NULL,
  `razorpay_key_secret` varchar(255) DEFAULT NULL,
  `mercado_payment` int(11) DEFAULT 0,
  `mercado_currency` varchar(155) DEFAULT NULL,
  `mercado_api_key` varchar(255) DEFAULT NULL,
  `mercado_token` varchar(255) DEFAULT NULL,
  `flutterwave_payment` int(11) DEFAULT 0,
  `flutterwave_public_key` varchar(255) DEFAULT NULL,
  `flutterwave_secret_key` varchar(255) DEFAULT NULL,
  `paypal_mode` varchar(255) DEFAULT 'sandbox',
  `twillo_account_sid` varchar(255) DEFAULT NULL,
  `twillo_auth_token` varchar(255) DEFAULT NULL,
  `twillo_number` varchar(255) DEFAULT NULL,
  `enable_sms` varchar(255) NOT NULL DEFAULT '0',
  `enable_wallet` varchar(155) DEFAULT '0',
  `min_payout_amount` varchar(155) DEFAULT '0',
  `commission_rate` varchar(155) DEFAULT '0',
  `paypal_payout` varchar(155) DEFAULT '1',
  `iban_payout` varchar(155) DEFAULT '1',
  `swift_payout` varchar(155) DEFAULT '1',
  `google_client_id` text DEFAULT NULL,
  `google_client_secret` varchar(255) DEFAULT NULL,
  `enable_offline_payment` varchar(255) DEFAULT '0',
  `offline_details` text DEFAULT NULL,
  `openai_key` varchar(255) DEFAULT NULL,
  `openai_model` varchar(255) DEFAULT NULL,
  `enable_openai` int(11) DEFAULT 0,
  `enable_cdomain` int(11) DEFAULT 1,
  `mail_protocol` varchar(255) DEFAULT NULL,
  `mail_title` varchar(255) DEFAULT NULL,
  `mail_host` varchar(255) DEFAULT NULL,
  `mail_port` varchar(255) DEFAULT NULL,
  `mail_encryption` varchar(255) DEFAULT 'ssl',
  `mail_username` varchar(255) DEFAULT NULL,
  `mail_password` varchar(255) DEFAULT NULL,
  `is_smtp` int(11) DEFAULT 1,
  `sender_mail` varchar(255) DEFAULT NULL,
  `chart_style` varchar(255) NOT NULL DEFAULT 'style1',
  `num_format` varchar(155) DEFAULT '0',
  `curr_locate` varchar(155) DEFAULT '0',
  `country` int(11) NOT NULL DEFAULT 178,
  `site_info` int(11) DEFAULT NULL,
  `lang` int(11) NOT NULL DEFAULT 1,
  `trial_days` varchar(155) DEFAULT '0',
  `tax_name` varchar(255) DEFAULT NULL,
  `tax_value` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'live',
  `time_zone` int(11) DEFAULT 1,
  `site_url` varchar(255) DEFAULT NULL,
  `version` varchar(255) NOT NULL DEFAULT 'v1.1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `site_title`, `favicon`, `logo`, `hero_img`, `keywords`, `description`, `footer_about`, `admin_email`, `mobile`, `copyright`, `pagination_limit`, `facebook`, `instagram`, `twitter`, `linkedin`, `google_analytics`, `site_color`, `site_font`, `layout`, `about_info`, `ind_code`, `purchase_code`, `link`, `enable_captcha`, `enable_workflow`, `enable_feature`, `enable_users`, `enable_blog`, `enable_faq`, `enable_animation`, `enable_registration`, `enable_payment`, `enable_paypal`, `enable_email_verify`, `check_email_verify_user`, `enable_multilingual`, `enable_frontend`, `enable_lifetime`, `enable_coupon`, `captcha_type`, `captcha_site_key`, `captcha_secret_key`, `paypal_email`, `paypal_payment`, `stripe_payment`, `publish_key`, `secret_key`, `paystack_payment`, `paystack_secret_key`, `paystack_public_key`, `razorpay_payment`, `razorpay_key_id`, `razorpay_key_secret`, `mercado_payment`, `mercado_currency`, `mercado_api_key`, `mercado_token`, `flutterwave_payment`, `flutterwave_public_key`, `flutterwave_secret_key`, `paypal_mode`, `twillo_account_sid`, `twillo_auth_token`, `twillo_number`, `enable_sms`, `enable_wallet`, `min_payout_amount`, `commission_rate`, `paypal_payout`, `iban_payout`, `swift_payout`, `google_client_id`, `google_client_secret`, `enable_offline_payment`, `offline_details`, `openai_key`, `openai_model`, `enable_openai`, `enable_cdomain`, `mail_protocol`, `mail_title`, `mail_host`, `mail_port`, `mail_encryption`, `mail_username`, `mail_password`, `is_smtp`, `sender_mail`, `chart_style`, `num_format`, `curr_locate`, `country`, `site_info`, `lang`, `trial_days`, `tax_name`, `tax_value`, `type`, `time_zone`, `site_url`, `version`) VALUES
(1, 'FMM Service', 'FMM Service', 'uploads/thumbnail/d960cbd0e3e5db39db53056064df6413_thumb-137x200.png', 'uploads/medium/output-onlinepngtools-3_medium-300x150.png', 'uploads/medium/4d4a56bb03dd594cea4802f58add9e36_medium-959x640.jpg', 'saas,appointment,booking,services', 'Simplifies appointment booking, helping you to manage business  in a smart way.', 'Fmm Services...', 'conseillerdigital@gmail.com', '', '© 2025 All rights reserved.', 0, 'facebook.com', 'Instagram.com', 'Twitter.com', 'linkedin', 'PCEtLSBHb29nbGUgQW5hbHl0aWNzIC0tPg0KPHNjcmlwdD4NCihmdW5jdGlvbihpLHMsbyxnLHIsYSxtKXtpWydHb29nbGVBbmFseXRpY3NPYmplY3QnXT1yO2lbcl09aVtyXXx8ZnVuY3Rpb24oKXsNCihpW3JdLnE9aVtyXS5xfHxbXSkucHVzaChhcmd1bWVudHMpfSxpW3JdLmw9MSpuZXcgRGF0ZSgpO2E9cy5jcmVhdGVFbGVtZW50KG8pLA0KbT1zLmdldEVsZW1lbnRzQnlUYWdOYW1lKG8pWzBdO2EuYXN5bmM9MTthLnNyYz1nO20ucGFyZW50Tm9kZS5pbnNlcnRCZWZvcmUoYSxtKQ0KfSkod2luZG93LGRvY3VtZW50LCdzY3JpcHQnLCdodHRwczovL3d3dy5nb29nbGUtYW5hbHl0aWNzLmNvbS9hbmFseXRpY3MuanMnLCdnYScpOw0KDQpnYSgnY3JlYXRlJywgJ1VBLVhYWFhYLVknLCAnYXV0bycpOw0KZ2EoJ3NlbmQnLCAncGFnZXZpZXcnKTsNCjwvc2NyaXB0Pg0KPCEtLSBFbmQgR29vZ2xlIEFuYWx5dGljcyAtLT4NCg0KPHNjcmlwdD4NCiAgIWZ1bmN0aW9uKGYsYixlLHYsbix0LHMpDQogIHtpZihmLmZicSlyZXR1cm47bj1mLmZicT1mdW5jdGlvbigpe24uY2FsbE1ldGhvZD8NCiAgbi5jYWxsTWV0aG9kLmFwcGx5KG4sYXJndW1lbnRzKTpuLnF1ZXVlLnB1c2goYXJndW1lbnRzKX07DQogIGlmKCFmLl9mYnEpZi5fZmJxPW47bi5wdXNoPW47bi5sb2FkZWQ9ITA7bi52ZXJzaW9uPScyLjAnOw0KICBuLnF1ZXVlPVtdO3Q9Yi5jcmVhdGVFbGVtZW50KGUpO3QuYXN5bmM9ITA7DQogIHQuc3JjPXY7cz1iLmdldEVsZW1lbnRzQnlUYWdOYW1lKGUpWzBdOw0KICBzLnBhcmVudE5vZGUuaW5zZXJ0QmVmb3JlKHQscyl9KHdpbmRvdywgZG9jdW1lbnQsJ3NjcmlwdCcsDQogICdodHRwczovL2Nvbm5lY3QuZmFjZWJvb2submV0L2VuX1VTL2ZiZXZlbnRzLmpzJyk7DQogIGZicSgnaW5pdCcsICd7eW91ci1waXhlbC1pZC1nb2VzLWhlcmV9Jyk7DQogIGZicSgndHJhY2snLCAnUGFnZVZpZXcnKTsNCjwvc2NyaXB0Pg0KPG5vc2NyaXB0Pg0KICA8aW1nIGhlaWdodD0iMSIgd2lkdGg9IjEiIHN0eWxlPSJkaXNwbGF5Om5vbmUiIA0KICAgICAgIHNyYz0iaHR0cHM6Ly93d3cuZmFjZWJvb2suY29tL3RyP2lkPXt5b3VyLXBpeGVsLWlkLWdvZXMtaGVyZX0mZXY9UGFnZVZpZXcmbm9zY3JpcHQ9MSIvPg0KPC9ub3NjcmlwdD4NCg0KDQo=', '286EFB', 'Alata', 0, 'SW52YWxpZCBMaWNlbnNlIEtleQ==', 'xxxx-xxxxxxxx-xxxx', '1134765986653', 'aHR0cHM6Ly9jZG5qcy5jbG91ZGZsYXJlLmNvbS9hamF4L2xpYnMv', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '0', 1, '1', '0', 0, NULL, '6LePpnMbAAAAAF9M3gPZehvReqSKSDzNjwKR2rMg', '6LePpnMbAAAAAJv2VCnkvvF5LTSBWj9BQypWUwRt', 'demo@business.example.com', 0, 0, 'pk_test_miL3pzy2WRveqVtkSvnAiyEk00TbcdiWmW', 'sk_test_zHkX8tpxqezUjxwKKrOENoKH00i4EnkxdN', '0', '', '', '0', 'rzp_test_B61V9Rq0gGmYwP', 'fgbB9V1n0aQ68krnSDUY0JXB', 0, 'ARS', '', '', 0, '', '', 'sandbox', 'ACe18ba19ed1df9246688a74d6bab688ae', '37d2c4648e2d7ab2dc50d294e22313f7', '', '0', '0', '0', '0', '1', '1', '1', '926711531504-lhamb9e7bbpfptvb5t88d8jghqalhg00.apps.googleusercontent.com', 'GkLThGkP55gKbcJwS7agg2aC', '1', '<p style=\"line-height: 1;\">Enter your bank info to receive offline payments</p>', '', 'davinci', 1, 1, 'smtp', 'Notifications', 'smtp.gmail.com', '465', 'ssl', 'conseillerdigital@gmail.com', 'cGVibyBnaXF1IHB5ZnogZXBzeQ==', 1, 'conseillerdigital@gmail.com', 'column', '0', '1', 170, 2, 1, '14', 'Subscription Tax', '20', 'live', 52, 'service.fmm.tn', '2.0');

-- --------------------------------------------------------

--
-- Structure de la table `site_contacts`
--

CREATE TABLE `site_contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `site_contacts`
--

INSERT INTO `site_contacts` (`id`, `name`, `email`, `message`, `created_at`) VALUES
(1, 'ZEMZEMI DHOUHA ', 'salahzemzemi27@gmail.com', 'inchallah ni ba7dhakom 2023\r\nya rabbi', '2023-06-03 13:51:56'),
(2, 'Marcelo Sparkes', 'sparkes.marcelo@gmail.com', 'Hi!\r\n\r\nIt is with sad regret to inform you that LeadsBox.biz is shutting down. \r\n\r\nWe have made all our databases available to the public.  \r\n\r\n25 Million Companies!\r\n527 Million People! \r\n145 Countries! \r\n\r\nCome visit us on LeadsBox.biz', '2024-10-09 07:55:10'),
(3, 'Xavier Townsend', 'oren.millican72@gmail.com', 'Reach out to 100 Million contact form submissions now.\r\n\r\nAs you got this form submissiomn and are perusing it at this moment, countless website owners and managers will obtain your communication.\r\n\r\n++ Check out: https://contactformleads.com now\r\n\r\nCutting-edge Targeted outreach at scale with cost-effective pricing.\r\n\r\n- Connect with businesses at scale\r\n- Generate profits, prospects, business deals\r\n- Get into the inbox of millions for just $22\r\n\r\nBoost your company immediately!\r\n\r\n++ Check out: https://contactformleads.com now\r\n\r\n\r\n\r\n\r\n\r\nShould you no longer want to receive future communications from our side, simply click this link: bit. ly/plsremovefrom\r\n42 Coast Rd, Kirkley, CA, USA, Nr33 8tj', '2025-05-03 17:00:51');

-- --------------------------------------------------------

--
-- Structure de la table `staffs`
--

CREATE TABLE `staffs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `business_id` varchar(25) DEFAULT '0',
  `service_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'staff',
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `staffs`
--

INSERT INTO `staffs` (`id`, `user_id`, `business_id`, `service_id`, `name`, `slug`, `role`, `email`, `password`, `phone`, `image`, `thumb`, `status`, `created_at`) VALUES
(1, 2, '894321299572', NULL, 'Doyen', 'doyen', 'staff', 'charfeddine.amri@gmail.com', '$2y$10$ZaCc.SOzb.O4A1F9BrdnXeqUbW8Str.YfHhP3iGpnZxM2TWG7r1Pe', '', 'assets/images/no-photo.png', 'assets/images/no-photo-sm.png', 1, '2023-04-07'),
(2, 2, '894321299572', NULL, 'Informaticien', 'informaticien', 'staff', 'demo.fmm@gmail.com', '$2y$10$QMvzI6VYc0MnA25o36T/qe4EgiSL0LrHetNhwzkNwF.RoOvKsZ8Ky', '', 'assets/images/no-photo.png', 'assets/images/no-photo-sm.png', 1, '2023-04-07'),
(3, 4, '482767835247', NULL, 'Pr. M.A.SAAFI', 'pr.-m.a.saafi', 'staff', 'saaf1973@gmail.com', '$2y$10$j1jy/RLYi4zRx7N1Cx5hP.GHwTuhxc6gg1TJyG1qmbErpWZRHaztK', '22 670 288', 'assets/images/no-photo.png', 'assets/images/no-photo-sm.png', 1, '2023-05-22');

-- --------------------------------------------------------

--
-- Structure de la table `staff_locations`
--

CREATE TABLE `staff_locations` (
  `id` int(11) NOT NULL,
  `business_id` varchar(25) DEFAULT '0',
  `staff_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `sub_location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `staff_locations`
--

INSERT INTO `staff_locations` (`id`, `business_id`, `staff_id`, `location_id`, `sub_location_id`) VALUES
(1, '894321299572', 1, 1, 0),
(2, '894321299572', 2, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `tag_slug` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `feedback` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `time_zone`
--

CREATE TABLE `time_zone` (
  `id` int(10) NOT NULL,
  `name` varchar(35) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `time_zone`
--

INSERT INTO `time_zone` (`id`, `name`) VALUES
(1, 'Europe/Andorra'),
(2, 'Asia/Dubai'),
(3, 'Asia/Kabul'),
(4, 'America/Antigua'),
(5, 'America/Anguilla'),
(6, 'Europe/Tirane'),
(7, 'Asia/Yerevan'),
(8, 'Africa/Luanda'),
(9, 'Antarctica/McMurdo'),
(10, 'Antarctica/Casey'),
(11, 'Antarctica/Davis'),
(12, 'Antarctica/DumontDUrville'),
(13, 'Antarctica/Mawson'),
(14, 'Antarctica/Palmer'),
(15, 'Antarctica/Rothera'),
(16, 'Antarctica/Syowa'),
(17, 'Antarctica/Troll'),
(18, 'Antarctica/Vostok'),
(19, 'America/Argentina/Buenos_Aires'),
(20, 'America/Argentina/Cordoba'),
(21, 'America/Argentina/Salta'),
(22, 'America/Argentina/Jujuy'),
(23, 'America/Argentina/Tucuman'),
(24, 'America/Argentina/Catamarca'),
(25, 'America/Argentina/La_Rioja'),
(26, 'America/Argentina/San_Juan'),
(27, 'America/Argentina/Mendoza'),
(28, 'America/Argentina/San_Luis'),
(29, 'America/Argentina/Rio_Gallegos'),
(30, 'America/Argentina/Ushuaia'),
(31, 'Pacific/Pago_Pago'),
(32, 'Europe/Vienna'),
(33, 'Australia/Lord_Howe'),
(34, 'Antarctica/Macquarie'),
(35, 'Australia/Hobart'),
(36, 'Australia/Currie'),
(37, 'Australia/Melbourne'),
(38, 'Australia/Sydney'),
(39, 'Australia/Broken_Hill'),
(40, 'Australia/Brisbane'),
(41, 'Australia/Lindeman'),
(42, 'Australia/Adelaide'),
(43, 'Australia/Darwin'),
(44, 'Australia/Perth'),
(45, 'Australia/Eucla'),
(46, 'America/Aruba'),
(47, 'Europe/Mariehamn'),
(48, 'Asia/Baku'),
(49, 'Europe/Sarajevo'),
(50, 'America/Barbados'),
(51, 'Asia/Dhaka'),
(52, 'Europe/Brussels'),
(53, 'Africa/Ouagadougou'),
(54, 'Europe/Sofia'),
(55, 'Asia/Bahrain'),
(56, 'Africa/Bujumbura'),
(57, 'Africa/Porto-Novo'),
(58, 'America/St_Barthelemy'),
(59, 'Atlantic/Bermuda'),
(60, 'Asia/Brunei'),
(61, 'America/La_Paz'),
(62, 'America/Kralendijk'),
(63, 'America/Noronha'),
(64, 'America/Belem'),
(65, 'America/Fortaleza'),
(66, 'America/Recife'),
(67, 'America/Araguaina'),
(68, 'America/Maceio'),
(69, 'America/Bahia'),
(70, 'America/Sao_Paulo'),
(71, 'America/Campo_Grande'),
(72, 'America/Cuiaba'),
(73, 'America/Santarem'),
(74, 'America/Porto_Velho'),
(75, 'America/Boa_Vista'),
(76, 'America/Manaus'),
(77, 'America/Eirunepe'),
(78, 'America/Rio_Branco'),
(79, 'America/Nassau'),
(80, 'Asia/Thimphu'),
(81, 'Africa/Gaborone'),
(82, 'Europe/Minsk'),
(83, 'America/Belize'),
(84, 'America/St_Johns'),
(85, 'America/Halifax'),
(86, 'America/Glace_Bay'),
(87, 'America/Moncton'),
(88, 'America/Goose_Bay'),
(89, 'America/Blanc-Sablon'),
(90, 'America/Toronto'),
(91, 'America/Nipigon'),
(92, 'America/Thunder_Bay'),
(93, 'America/Iqaluit'),
(94, 'America/Pangnirtung'),
(95, 'America/Atikokan'),
(96, 'America/Winnipeg'),
(97, 'America/Rainy_River'),
(98, 'America/Resolute'),
(99, 'America/Rankin_Inlet'),
(100, 'America/Regina'),
(101, 'America/Swift_Current'),
(102, 'America/Edmonton'),
(103, 'America/Cambridge_Bay'),
(104, 'America/Yellowknife'),
(105, 'America/Inuvik'),
(106, 'America/Creston'),
(107, 'America/Dawson_Creek'),
(108, 'America/Fort_Nelson'),
(109, 'America/Vancouver'),
(110, 'America/Whitehorse'),
(111, 'America/Dawson'),
(112, 'Indian/Cocos'),
(113, 'Africa/Kinshasa'),
(114, 'Africa/Lubumbashi'),
(115, 'Africa/Bangui'),
(116, 'Africa/Brazzaville'),
(117, 'Europe/Zurich'),
(118, 'Africa/Abidjan'),
(119, 'Pacific/Rarotonga'),
(120, 'America/Santiago'),
(121, 'America/Punta_Arenas'),
(122, 'Pacific/Easter'),
(123, 'Africa/Douala'),
(124, 'Asia/Shanghai'),
(125, 'Asia/Urumqi'),
(126, 'America/Bogota'),
(127, 'America/Costa_Rica'),
(128, 'America/Havana'),
(129, 'Atlantic/Cape_Verde'),
(130, 'America/Curacao'),
(131, 'Indian/Christmas'),
(132, 'Asia/Nicosia'),
(133, 'Asia/Famagusta'),
(134, 'Europe/Prague'),
(135, 'Europe/Berlin'),
(136, 'Europe/Busingen'),
(137, 'Africa/Djibouti'),
(138, 'Europe/Copenhagen'),
(139, 'America/Dominica'),
(140, 'America/Santo_Domingo'),
(141, 'Africa/Algiers'),
(142, 'America/Guayaquil'),
(143, 'Pacific/Galapagos'),
(144, 'Europe/Tallinn'),
(145, 'Africa/Cairo'),
(146, 'Africa/El_Aaiun'),
(147, 'Africa/Asmara'),
(148, 'Europe/Madrid'),
(149, 'Africa/Ceuta'),
(150, 'Atlantic/Canary'),
(151, 'Africa/Addis_Ababa'),
(152, 'Europe/Helsinki'),
(153, 'Pacific/Fiji'),
(154, 'Atlantic/Stanley'),
(155, 'Pacific/Chuuk'),
(156, 'Pacific/Pohnpei'),
(157, 'Pacific/Kosrae'),
(158, 'Atlantic/Faroe'),
(159, 'Europe/Paris'),
(160, 'Africa/Libreville'),
(161, 'Europe/London'),
(162, 'America/Grenada'),
(163, 'Asia/Tbilisi'),
(164, 'America/Cayenne'),
(165, 'Europe/Guernsey'),
(166, 'Africa/Accra'),
(167, 'Europe/Gibraltar'),
(168, 'America/Nuuk'),
(169, 'America/Danmarkshavn'),
(170, 'America/Scoresbysund'),
(171, 'America/Thule'),
(172, 'Africa/Banjul'),
(173, 'Africa/Conakry'),
(174, 'America/Guadeloupe'),
(175, 'Africa/Malabo'),
(176, 'Europe/Athens'),
(177, 'Atlantic/South_Georgia'),
(178, 'America/Guatemala'),
(179, 'Pacific/Guam'),
(180, 'Africa/Bissau'),
(181, 'America/Guyana'),
(182, 'Asia/Hong_Kong'),
(183, 'America/Tegucigalpa'),
(184, 'Europe/Zagreb'),
(185, 'America/Port-au-Prince'),
(186, 'Europe/Budapest'),
(187, 'Asia/Jakarta'),
(188, 'Asia/Pontianak'),
(189, 'Asia/Makassar'),
(190, 'Asia/Jayapura'),
(191, 'Europe/Dublin'),
(192, 'Asia/Jerusalem'),
(193, 'Europe/Isle_of_Man'),
(194, 'Asia/Kolkata'),
(195, 'Indian/Chagos'),
(196, 'Asia/Baghdad'),
(197, 'Asia/Tehran'),
(198, 'Atlantic/Reykjavik'),
(199, 'Europe/Rome'),
(200, 'Europe/Jersey'),
(201, 'America/Jamaica'),
(202, 'Asia/Amman'),
(203, 'Asia/Tokyo'),
(204, 'Africa/Nairobi'),
(205, 'Asia/Bishkek'),
(206, 'Asia/Phnom_Penh'),
(207, 'Pacific/Tarawa'),
(208, 'Pacific/Enderbury'),
(209, 'Pacific/Kiritimati'),
(210, 'Indian/Comoro'),
(211, 'America/St_Kitts'),
(212, 'Asia/Pyongyang'),
(213, 'Asia/Seoul'),
(214, 'Asia/Kuwait'),
(215, 'America/Cayman'),
(216, 'Asia/Almaty'),
(217, 'Asia/Qyzylorda'),
(218, 'Asia/Qostanay'),
(219, 'Asia/Aqtobe'),
(220, 'Asia/Aqtau'),
(221, 'Asia/Atyrau'),
(222, 'Asia/Oral'),
(223, 'Asia/Vientiane'),
(224, 'Asia/Beirut'),
(225, 'America/St_Lucia'),
(226, 'Europe/Vaduz'),
(227, 'Asia/Colombo'),
(228, 'Africa/Monrovia'),
(229, 'Africa/Maseru'),
(230, 'Europe/Vilnius'),
(231, 'Europe/Luxembourg'),
(232, 'Europe/Riga'),
(233, 'Africa/Tripoli'),
(234, 'Africa/Casablanca'),
(235, 'Europe/Monaco'),
(236, 'Europe/Chisinau'),
(237, 'Europe/Podgorica'),
(238, 'America/Marigot'),
(239, 'Indian/Antananarivo'),
(240, 'Pacific/Majuro'),
(241, 'Pacific/Kwajalein'),
(242, 'Europe/Skopje'),
(243, 'Africa/Bamako'),
(244, 'Asia/Yangon'),
(245, 'Asia/Ulaanbaatar'),
(246, 'Asia/Hovd'),
(247, 'Asia/Choibalsan'),
(248, 'Asia/Macau'),
(249, 'Pacific/Saipan'),
(250, 'America/Martinique'),
(251, 'Africa/Nouakchott'),
(252, 'America/Montserrat'),
(253, 'Europe/Malta'),
(254, 'Indian/Mauritius'),
(255, 'Indian/Maldives'),
(256, 'Africa/Blantyre'),
(257, 'America/Mexico_City'),
(258, 'America/Cancun'),
(259, 'America/Merida'),
(260, 'America/Monterrey'),
(261, 'America/Matamoros'),
(262, 'America/Mazatlan'),
(263, 'America/Chihuahua'),
(264, 'America/Ojinaga'),
(265, 'America/Hermosillo'),
(266, 'America/Tijuana'),
(267, 'America/Bahia_Banderas'),
(268, 'Asia/Kuala_Lumpur'),
(269, 'Asia/Kuching'),
(270, 'Africa/Maputo'),
(271, 'Africa/Windhoek'),
(272, 'Pacific/Noumea'),
(273, 'Africa/Niamey'),
(274, 'Pacific/Norfolk'),
(275, 'Africa/Lagos'),
(276, 'America/Managua'),
(277, 'Europe/Amsterdam'),
(278, 'Europe/Oslo'),
(279, 'Asia/Kathmandu'),
(280, 'Pacific/Nauru'),
(281, 'Pacific/Niue'),
(282, 'Pacific/Auckland'),
(283, 'Pacific/Chatham'),
(284, 'Asia/Muscat'),
(285, 'America/Panama'),
(286, 'America/Lima'),
(287, 'Pacific/Tahiti'),
(288, 'Pacific/Marquesas'),
(289, 'Pacific/Gambier'),
(290, 'Pacific/Port_Moresby'),
(291, 'Pacific/Bougainville'),
(292, 'Asia/Manila'),
(293, 'Asia/Karachi'),
(294, 'Europe/Warsaw'),
(295, 'America/Miquelon'),
(296, 'Pacific/Pitcairn'),
(297, 'America/Puerto_Rico'),
(298, 'Asia/Gaza'),
(299, 'Asia/Hebron'),
(300, 'Europe/Lisbon'),
(301, 'Atlantic/Madeira'),
(302, 'Atlantic/Azores'),
(303, 'Pacific/Palau'),
(304, 'America/Asuncion'),
(305, 'Asia/Qatar'),
(306, 'Indian/Reunion'),
(307, 'Europe/Bucharest'),
(308, 'Europe/Belgrade'),
(309, 'Europe/Kaliningrad'),
(310, 'Europe/Moscow'),
(311, 'Europe/Simferopol'),
(312, 'Europe/Kirov'),
(313, 'Europe/Astrakhan'),
(314, 'Europe/Volgograd'),
(315, 'Europe/Saratov'),
(316, 'Europe/Ulyanovsk'),
(317, 'Europe/Samara'),
(318, 'Asia/Yekaterinburg'),
(319, 'Asia/Omsk'),
(320, 'Asia/Novosibirsk'),
(321, 'Asia/Barnaul'),
(322, 'Asia/Tomsk'),
(323, 'Asia/Novokuznetsk'),
(324, 'Asia/Krasnoyarsk'),
(325, 'Asia/Irkutsk'),
(326, 'Asia/Chita'),
(327, 'Asia/Yakutsk'),
(328, 'Asia/Khandyga'),
(329, 'Asia/Vladivostok'),
(330, 'Asia/Ust-Nera'),
(331, 'Asia/Magadan'),
(332, 'Asia/Sakhalin'),
(333, 'Asia/Srednekolymsk'),
(334, 'Asia/Kamchatka'),
(335, 'Asia/Anadyr'),
(336, 'Africa/Kigali'),
(337, 'Asia/Riyadh'),
(338, 'Pacific/Guadalcanal'),
(339, 'Indian/Mahe'),
(340, 'Africa/Khartoum'),
(341, 'Europe/Stockholm'),
(342, 'Asia/Singapore'),
(343, 'Atlantic/St_Helena'),
(344, 'Europe/Ljubljana'),
(345, 'Arctic/Longyearbyen'),
(346, 'Europe/Bratislava'),
(347, 'Africa/Freetown'),
(348, 'Europe/San_Marino'),
(349, 'Africa/Dakar'),
(350, 'Africa/Mogadishu'),
(351, 'America/Paramaribo'),
(352, 'Africa/Juba'),
(353, 'Africa/Sao_Tome'),
(354, 'America/El_Salvador'),
(355, 'America/Lower_Princes'),
(356, 'Asia/Damascus'),
(357, 'Africa/Mbabane'),
(358, 'America/Grand_Turk'),
(359, 'Africa/Ndjamena'),
(360, 'Indian/Kerguelen'),
(361, 'Africa/Lome'),
(362, 'Asia/Bangkok'),
(363, 'Asia/Dushanbe'),
(364, 'Pacific/Fakaofo'),
(365, 'Asia/Dili'),
(366, 'Asia/Ashgabat'),
(367, 'Africa/Tunis'),
(368, 'Pacific/Tongatapu'),
(369, 'Europe/Istanbul'),
(370, 'America/Port_of_Spain'),
(371, 'Pacific/Funafuti'),
(372, 'Asia/Taipei'),
(373, 'Africa/Dar_es_Salaam'),
(374, 'Europe/Kiev'),
(375, 'Europe/Uzhgorod'),
(376, 'Europe/Zaporozhye'),
(377, 'Africa/Kampala'),
(378, 'Pacific/Midway'),
(379, 'Pacific/Wake'),
(380, 'America/New_York'),
(381, 'America/Detroit'),
(382, 'America/Kentucky/Louisville'),
(383, 'America/Kentucky/Monticello'),
(384, 'America/Indiana/Indianapolis'),
(385, 'America/Indiana/Vincennes'),
(386, 'America/Indiana/Winamac'),
(387, 'America/Indiana/Marengo'),
(388, 'America/Indiana/Petersburg'),
(389, 'America/Indiana/Vevay'),
(390, 'America/Chicago'),
(391, 'America/Indiana/Tell_City'),
(392, 'America/Indiana/Knox'),
(393, 'America/Menominee'),
(394, 'America/North_Dakota/Center'),
(395, 'America/North_Dakota/New_Salem'),
(396, 'America/North_Dakota/Beulah'),
(397, 'America/Denver'),
(398, 'America/Boise'),
(399, 'America/Phoenix'),
(400, 'America/Los_Angeles'),
(401, 'America/Anchorage'),
(402, 'America/Juneau'),
(403, 'America/Sitka'),
(404, 'America/Metlakatla'),
(405, 'America/Yakutat'),
(406, 'America/Nome'),
(407, 'America/Adak'),
(408, 'Pacific/Honolulu'),
(409, 'America/Montevideo'),
(410, 'Asia/Samarkand'),
(411, 'Asia/Tashkent'),
(412, 'Europe/Vatican'),
(413, 'America/St_Vincent'),
(414, 'America/Caracas'),
(415, 'America/Tortola'),
(416, 'America/St_Thomas'),
(417, 'Asia/Ho_Chi_Minh'),
(418, 'Pacific/Efate'),
(419, 'Pacific/Wallis'),
(420, 'Pacific/Apia'),
(421, 'Asia/Aden'),
(422, 'Indian/Mayotte'),
(423, 'Africa/Johannesburg'),
(424, 'Africa/Lusaka'),
(425, 'Africa/Harare');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `balance` bigint(20) DEFAULT 0,
  `total_sales` bigint(20) DEFAULT 0,
  `email` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(100) DEFAULT 'user',
  `account_type` varchar(255) DEFAULT NULL,
  `user_type` varchar(100) DEFAULT 'registered',
  `trial_expire` date DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `email_verified` int(11) DEFAULT 0,
  `verify_code` varchar(255) DEFAULT NULL,
  `phone_verified` varchar(255) NOT NULL DEFAULT '0',
  `sms_count` varchar(255) NOT NULL DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `paypal_payment` int(11) DEFAULT 1,
  `stripe_payment` int(11) DEFAULT 1,
  `paypal_email` varchar(255) DEFAULT NULL,
  `publish_key` varchar(255) DEFAULT NULL,
  `secret_key` varchar(255) DEFAULT NULL,
  `paystack_payment` varchar(155) DEFAULT '0',
  `paystack_secret_key` varchar(255) DEFAULT NULL,
  `paystack_public_key` varchar(255) DEFAULT NULL,
  `razorpay_payment` varchar(155) DEFAULT '0',
  `razorpay_key_id` varchar(255) DEFAULT NULL,
  `razorpay_key_secret` varchar(255) DEFAULT NULL,
  `mercado_payment` int(11) DEFAULT 0,
  `mercado_currency` varchar(155) DEFAULT NULL,
  `mercado_api_key` varchar(255) DEFAULT NULL,
  `mercado_token` varchar(255) DEFAULT NULL,
  `flutterwave_payment` int(11) DEFAULT 0,
  `flutterwave_public_key` varchar(255) DEFAULT NULL,
  `flutterwave_secret_key` varchar(255) DEFAULT NULL,
  `offline_details` text DEFAULT NULL,
  `enable_offline_payment` int(11) DEFAULT 0,
  `status` int(11) DEFAULT 0,
  `country` int(11) DEFAULT NULL,
  `currency` varchar(255) DEFAULT 'USD',
  `paypal_mode` varchar(255) DEFAULT 'live',
  `about_me` varchar(5000) DEFAULT NULL,
  `available_days` varchar(255) DEFAULT NULL,
  `google_analytics` text DEFAULT NULL,
  `enable_appointment` int(11) DEFAULT 1,
  `enable_rating` int(11) DEFAULT 1,
  `twillo_account_sid` varchar(255) DEFAULT NULL,
  `twillo_auth_token` varchar(255) DEFAULT NULL,
  `twillo_number` varchar(255) DEFAULT NULL,
  `enable_sms_notify` varchar(255) DEFAULT '0',
  `enable_sms_alert` varchar(255) DEFAULT '0',
  `date_format` varchar(255) DEFAULT 'd M Y',
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `parent_id`, `name`, `slug`, `balance`, `total_sales`, `email`, `user_name`, `password`, `role`, `account_type`, `user_type`, `trial_expire`, `phone`, `address`, `email_verified`, `verify_code`, `phone_verified`, `sms_count`, `image`, `thumb`, `paypal_payment`, `stripe_payment`, `paypal_email`, `publish_key`, `secret_key`, `paystack_payment`, `paystack_secret_key`, `paystack_public_key`, `razorpay_payment`, `razorpay_key_id`, `razorpay_key_secret`, `mercado_payment`, `mercado_currency`, `mercado_api_key`, `mercado_token`, `flutterwave_payment`, `flutterwave_public_key`, `flutterwave_secret_key`, `offline_details`, `enable_offline_payment`, `status`, `country`, `currency`, `paypal_mode`, `about_me`, `available_days`, `google_analytics`, `enable_appointment`, `enable_rating`, `twillo_account_sid`, `twillo_auth_token`, `twillo_number`, `enable_sms_notify`, `enable_sms_alert`, `date_format`, `created_at`) VALUES
(1, 0, NULL, 'tice', 0, 0, 'conseillerdigital@gmail.com', 'tice', '$2y$10$WF002n018errojrSJilj.er6YMq2nv8nsv60YuN61bxO6BLvlgg/W', 'admin', NULL, 'registered', '2023-04-06', NULL, NULL, 1, NULL, '0', '0', NULL, NULL, 1, 1, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 1, NULL, 'USD', 'live', NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, '0', '0', 'd M Y', '2023-04-06 13:30:29'),
(2, 0, 'tice', 'tice', 0, 0, 'ticeamed@gmail.com', 'tice', '$2y$10$dTo.iKfTf4sR1OJ56Ofydei6hbPjC8fJDwoHcxkw87mdzR.5CeM0y', 'user', NULL, 'registered', '0000-00-00', '', NULL, 0, '0', '0', '0', NULL, 'assets/images/no-photo-sm.png', 0, 0, '', '', '', '0', '', '', '0', '', '', 0, 'ARS', '', '', 0, '', '', '', 1, 1, 0, 'USD', 'live', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '0', '0', 'd M Y', '2023-04-07 12:17:33'),
(4, 0, 'explorations', 'explorations', 0, 0, 'explorations.fmm@gmail.com', 'explorations', '$2y$10$FG855/i2sWvMrLZev95CBOlg3P8tmCpPeGg1AEzinsiDQbg8QHRAu', 'user', NULL, 'registered', '0000-00-00', '', NULL, 0, '3467', '1', '0', NULL, 'assets/images/no-photo-sm.png', 0, 0, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 1, NULL, 'USD', 'live', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '0', '0', 'd M Y', '2023-05-22 13:03:47'),
(5, 0, 'Recherche', 'recherche', 0, 0, 'recherche.fmm@gmail.com', 'recherche', '$2y$10$/C.4lSRoLCxXdLygrII8wuOP7xdFr6m0STeEYuZ8kTBwZ1u7KLYXC', 'user', NULL, 'registered', '0000-00-00', '', NULL, 0, '0', '0', '0', NULL, 'assets/images/no-photo-sm.png', 0, 0, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 1, NULL, 'USD', 'live', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '0', '0', 'd M Y', '2023-05-22 13:21:27'),
(6, 0, 'Pédagogie ', 'pedagogie', 0, 0, 'recherche.fmm@gmail.com', 'pedagogie', '$2y$10$aQUBKyN5ebV4WV/Orltqq.rO6q1F8lRpRc06qmlGWw6SJOhfhdx6a', 'user', NULL, 'registered', '0000-00-00', '', NULL, 0, '0', '0', '0', NULL, 'assets/images/no-photo-sm.png', 0, 0, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 1, NULL, 'USD', 'live', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '0', '0', 'd M Y', '2023-05-22 13:23:32'),
(7, 0, 'Informatique ', 'informatique', 0, 0, 'info.fmm@gmail.com', 'informatique', '$2y$10$1fVIcoZagLlNkb59PRYIUehNvosVfyof/sz8C/ftf3ojfYMlY36xS', 'user', NULL, 'registered', '0000-00-00', '58 042 279', NULL, 0, '0', '0', '0', NULL, 'assets/images/no-photo-sm.png', 0, 0, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 1, NULL, 'USD', 'live', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '0', '0', 'd M Y', '2023-06-07 16:54:01'),
(9, 0, 'Remise en forme / Cryolipolyse', 'remise-en-forme-cryolipolyse', 0, 0, 'wellbeing.fmm@gmail.com', 'remise-en-forme-cryolipolyse', '$2y$10$9woNtg5UsMoVxdcNFEmpreqgTzrJNVkkgoXSPvAoQ0zyipOeg..j2', 'user', NULL, 'registered', '0000-00-00', '', NULL, 0, '0', '0', '0', NULL, 'assets/images/no-photo-sm.png', 0, 0, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 1, NULL, 'USD', 'live', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '0', '0', 'd M Y', '2025-03-09 15:14:30'),
(10, 0, 'SmartLab', 'impedacemetrie', 0, 0, 'fmm.tice@gmail.com', 'impedacemetrie', '$2y$10$DzWUxjlY0D.xdpc7/Zc0Iuvk.SDXApmv.7yi2isdn9FTy1Gz.s8be', 'user', NULL, 'trial', '2025-05-24', '+21698954095', NULL, 0, '2064', '1', '0', NULL, 'assets/images/no-photo-sm.png', 0, 0, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 1, NULL, 'USD', 'live', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '0', '0', 'd M Y', '2025-05-10 18:00:05');

-- --------------------------------------------------------

--
-- Structure de la table `users_payout_accounts`
--

CREATE TABLE `users_payout_accounts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payout_paypal_email` varchar(255) DEFAULT NULL,
  `payout_bank_info` mediumtext DEFAULT NULL,
  `iban_full_name` varchar(255) DEFAULT NULL,
  `iban_country_id` varchar(20) DEFAULT NULL,
  `iban_bank_name` varchar(255) DEFAULT NULL,
  `iban_number` varchar(500) DEFAULT NULL,
  `swift_full_name` varchar(255) DEFAULT NULL,
  `swift_address` varchar(500) DEFAULT NULL,
  `swift_state` varchar(255) DEFAULT NULL,
  `swift_city` varchar(255) DEFAULT NULL,
  `swift_postcode` varchar(100) DEFAULT NULL,
  `swift_country_id` varchar(20) DEFAULT NULL,
  `swift_bank_account_holder_name` varchar(255) DEFAULT NULL,
  `swift_iban` varchar(255) DEFAULT NULL,
  `swift_code` varchar(255) DEFAULT NULL,
  `swift_bank_name` varchar(255) DEFAULT NULL,
  `swift_bank_branch_city` varchar(255) DEFAULT NULL,
  `swift_bank_branch_country_id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `working_days`
--

CREATE TABLE `working_days` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `staff_id` varchar(155) DEFAULT '0',
  `business_id` varchar(25) DEFAULT '0',
  `day` int(11) DEFAULT NULL,
  `start` varchar(255) DEFAULT NULL,
  `end` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `working_days`
--

INSERT INTO `working_days` (`id`, `user_id`, `staff_id`, `business_id`, `day`, `start`, `end`) VALUES
(17, 2, '0', '894321299572', 0, '', ''),
(18, 2, '0', '894321299572', 2, '09:00', '16:00'),
(19, 2, '1', '894321299572', 0, '', ''),
(20, 2, '1', '894321299572', 0, '', ''),
(21, 2, '1', '894321299572', 0, '', ''),
(22, 2, '1', '894321299572', 0, '', ''),
(23, 2, '1', '894321299572', 0, '', ''),
(24, 2, '1', '894321299572', 0, '', ''),
(25, 2, '1', '894321299572', 0, '', ''),
(26, 2, '2', '894321299572', 0, '', ''),
(27, 2, '2', '894321299572', 0, '', ''),
(28, 2, '2', '894321299572', 0, '', ''),
(29, 2, '2', '894321299572', 0, '', ''),
(30, 2, '2', '894321299572', 0, '', ''),
(31, 2, '2', '894321299572', 0, '', ''),
(32, 2, '2', '894321299572', 0, '', ''),
(62, 4, '0', '482767835247', 0, '', ''),
(63, 4, '0', '482767835247', 0, '', ''),
(64, 4, '0', '482767835247', 0, '', ''),
(65, 4, '0', '482767835247', 4, '00:00', '00:00'),
(73, 4, '3', '482767835247', 0, '', ''),
(74, 4, '3', '482767835247', 2, '20:00', '17:00'),
(75, 4, '3', '482767835247', 0, '', ''),
(76, 4, '3', '482767835247', 4, '08:00', '17:00'),
(77, 4, '3', '482767835247', 0, '', ''),
(78, 4, '3', '482767835247', 0, '', ''),
(79, 4, '3', '482767835247', 7, '20:00', '14:00'),
(80, 7, '0', '805976683213', 0, '', ''),
(81, 7, '0', '805976683213', 2, '20:00', '16:00'),
(82, 9, '0', '817328808088', 0, '', ''),
(83, 9, '0', '817328808088', 2, '10:00', '16:00'),
(84, 9, '0', '817328808088', 3, '10:00', '16:00'),
(85, 9, '0', '817328808088', 4, '10:00', '16:00'),
(86, 9, '0', '817328808088', 5, '10:00', '16:00'),
(87, 9, '0', '817328808088', 0, '', ''),
(88, 9, '0', '817328808088', 0, '', '');

-- --------------------------------------------------------

--
-- Structure de la table `working_time`
--

CREATE TABLE `working_time` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `business_id` varchar(25) DEFAULT '0',
  `day_id` int(11) NOT NULL,
  `time` varchar(255) DEFAULT NULL,
  `start` varchar(255) DEFAULT NULL,
  `end` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `working_time`
--

INSERT INTO `working_time` (`id`, `user_id`, `business_id`, `day_id`, `time`, `start`, `end`) VALUES
(1, 9, '817328808088', 2, '12:00-13:00', '12:00', '13:00'),
(2, 9, '817328808088', 3, '12:00-13:00', '12:00', '13:00'),
(3, 9, '817328808088', 4, '12:00-13:00', '12:00', '13:00'),
(4, 9, '817328808088', 5, '12:00-13:00', '12:00', '13:00');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `booking_val`
--
ALTER TABLE `booking_val`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Index pour la table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `coupons_apply`
--
ALTER TABLE `coupons_apply`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dialing_codes`
--
ALTER TABLE `dialing_codes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `domains`
--
ALTER TABLE `domains`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `domain_settings`
--
ALTER TABLE `domain_settings`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `feature_assaign`
--
ALTER TABLE `feature_assaign`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `lang_values`
--
ALTER TABLE `lang_values`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `payment_user`
--
ALTER TABLE `payment_user`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `payouts`
--
ALTER TABLE `payouts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `plan_coupons`
--
ALTER TABLE `plan_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `plan_coupons_apply`
--
ALTER TABLE `plan_coupons_apply`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product_services`
--
ALTER TABLE `product_services`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `service_category`
--
ALTER TABLE `service_category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `site_contacts`
--
ALTER TABLE `site_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `staff_locations`
--
ALTER TABLE `staff_locations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `time_zone`
--
ALTER TABLE `time_zone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_zone_name` (`name`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users_payout_accounts`
--
ALTER TABLE `users_payout_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Index pour la table `working_days`
--
ALTER TABLE `working_days`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `working_time`
--
ALTER TABLE `working_time`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `booking_val`
--
ALTER TABLE `booking_val`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `business`
--
ALTER TABLE `business`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT pour la table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `coupons_apply`
--
ALTER TABLE `coupons_apply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `dialing_codes`
--
ALTER TABLE `dialing_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT pour la table `domains`
--
ALTER TABLE `domains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `domain_settings`
--
ALTER TABLE `domain_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `feature_assaign`
--
ALTER TABLE `feature_assaign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT pour la table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `lang_values`
--
ALTER TABLE `lang_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1121;

--
-- AUTO_INCREMENT pour la table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `package`
--
ALTER TABLE `package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `payment_user`
--
ALTER TABLE `payment_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `payouts`
--
ALTER TABLE `payouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `plan_coupons`
--
ALTER TABLE `plan_coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `plan_coupons_apply`
--
ALTER TABLE `plan_coupons_apply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `product_services`
--
ALTER TABLE `product_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `service_category`
--
ALTER TABLE `service_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `site_contacts`
--
ALTER TABLE `site_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `staff_locations`
--
ALTER TABLE `staff_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `time_zone`
--
ALTER TABLE `time_zone`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=426;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `users_payout_accounts`
--
ALTER TABLE `users_payout_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `working_days`
--
ALTER TABLE `working_days`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT pour la table `working_time`
--
ALTER TABLE `working_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
