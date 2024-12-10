-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 10.12.2024 klo 11:09
-- Palvelimen versio: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `verkkokauppa`
--

-- --------------------------------------------------------

--
-- Rakenne taululle `tuotteet`
--

DROP TABLE IF EXISTS `tuotteet`;
CREATE TABLE IF NOT EXISTS `tuotteet` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` mediumtext NOT NULL,
  `title` mediumtext NOT NULL,
  `price` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `category` mediumtext NOT NULL,
  `meta_description` mediumtext NOT NULL,
  `meta_keywords` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='tuotteet taulu';

--
-- Vedos taulusta `tuotteet`
--

INSERT INTO `tuotteet` (`id`, `image`, `title`, `price`, `description`, `category`, `meta_description`, `meta_keywords`) VALUES
(1, '../img/puhelin1.jpg', 'älypuhelin1', '399,99€', 'Lorem ipsum odor amet, consectetuer adipiscing elit. Velit rutrum placerat vestibulum porttitor commodo.', 'puhelimet', 'Lorem ipsum odor amet, consectetuer adipiscing elit.', 'Lorem ipsum odor amet, consectetuer adipiscing elit.'),
(2, '../img/puhelin2.jpg', 'älypuhelin2', '699,99€', 'Lorem ipsum odor amet, consectetuer adipiscing elit. Velit rutrum placerat vestibulum porttitor commodo.', 'puhelimet', 'Lorem ipsum odor amet, consectetuer adipiscing elit.', 'Lorem ipsum odor amet, consectetuer adipiscing elit.'),
(3, '../img/puhelin3.jpg', 'älypuhelin3', '1299,99€', 'Lorem ipsum odor amet, consectetuer adipiscing elit. Velit rutrum placerat vestibulum porttitor commodo.', 'puhelimet', 'Lorem ipsum odor amet, consectetuer adipiscing elit.', 'Lorem ipsum odor amet, consectetuer adipiscing elit.'),
(4, '../img/läppäri1.jpg', 'läppäri1', '799,99€', 'Lorem ipsum odor amet, consectetuer adipiscing elit. Velit rutrum placerat vestibulum porttitor commodo.', 'tietokoneet', 'Lorem ipsum odor amet, consectetuer adipiscing elit.', 'Lorem ipsum odor amet, consectetuer adipiscing elit.'),
(5, '../img/läppäri2.jpg', 'läppäri2', '1699,99€', 'Lorem ipsum odor amet, consectetuer adipiscing elit. Velit rutrum placerat vestibulum porttitor commodo.', 'tietokoneet', 'Lorem ipsum odor amet, consectetuer adipiscing elit.', 'Lorem ipsum odor amet, consectetuer adipiscing elit.'),
(6, '../img/läppäri3.jpg', 'läppäri3', '599,99€', 'Lorem ipsum odor amet, consectetuer adipiscing elit. Velit rutrum placerat vestibulum porttitor commodo.', 'tietokoneet', 'Lorem ipsum odor amet, consectetuer adipiscing elit.', 'Lorem ipsum odor amet, consectetuer adipiscing elit.'),
(7, '../img/liittymä1.jpg', 'liittymä1', '36,99€/kk', 'Lorem ipsum odor amet, consectetuer adipiscing elit. Duis dolor senectus litora turpis tincidunt sem praesent mollis. Risus non parturient tortor pellentesque ultricies.', 'liittymät', 'Lorem ipsum odor amet, consectetuer adipiscing elit.', 'Lorem ipsum odor amet, consectetuer adipiscing elit.'),
(8, '../img/liittymä2.jpg', 'liittymä2', '24,99€/kk', 'Lorem ipsum odor amet, consectetuer adipiscing elit. Duis dolor senectus litora turpis tincidunt sem praesent mollis. Risus non parturient tortor pellentesque ultricies.', 'liittymät', 'Lorem ipsum odor amet, consectetuer adipiscing elit.', 'Lorem ipsum odor amet, consectetuer adipiscing elit.'),
(9, '../img/liittymä3.jpg', 'liittymä3', '16,99€/kk', 'Lorem ipsum odor amet, consectetuer adipiscing elit. Duis dolor senectus litora turpis tincidunt sem praesent mollis. Risus non parturient tortor pellentesque ultricies.', 'liittymät', 'Lorem ipsum odor amet, consectetuer adipiscing elit.', 'Lorem ipsum odor amet, consectetuer adipiscing elit.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
