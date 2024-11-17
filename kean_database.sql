-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 17, 2024 at 02:39 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kean_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
CREATE TABLE IF NOT EXISTS `expenses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `description` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `token_expires` datetime NOT NULL,
  PRIMARY KEY (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `token_expires`) VALUES
('chtrinidad67@gmail.com', '4213b671749e5f95f194b28dacce4eb946bc6745e9af5daf9af63dfe5dbd51c1', '2024-11-13 19:43:36'),
('chtrinidad67@gmail.com', 'ea7af1d42e8eeeabcc3f0b7e81770ab58af8cef40ec369db65fdcf2f84f5b091', '2024-11-13 19:46:38'),
('charliespencer2250@gmail.com', '6d63be6a2fa5c5a5462bb71d937cb75b41676a1b8f699ece005ecba62a8718ad', '2024-11-13 19:50:47'),
('chtrinidad67@gmail.com', '9e34edcd6ac66420e4daef72ee317503ec4993b0a3ddb65a28a78dcf1a525e30', '2024-11-13 19:51:22'),
('chtrinidad67@gmail.com', 'b77fd1736bd1b2c1d9665748eb9934fe3eb8b598da9c6e8ca248ea8ba37c334a', '2024-11-13 19:56:34'),
('chtrinidad67@gmail.com', 'a1d413286826b47cf035927e8adb0131a6bda1ece03625aea884d3a9e78e0f3f', '2024-11-14 04:48:26'),
('chtrinidad67@gmail.com', '00ccdfafd1f7e8096ddcd5ea7739a5e415de40a9bd664555c4d0cb19f4b26156', '2024-11-14 04:53:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile_picture` varchar(255) DEFAULT 'default-profile-pic.jpg',
  `balance` decimal(10,2) DEFAULT '0.00',
  `salary` decimal(10,2) DEFAULT '0.00',
  `reset_token` varchar(64) DEFAULT NULL,
  `reset_token_expires` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `profile_picture`, `balance`, `salary`, `reset_token`, `reset_token_expires`) VALUES
(1, 'marc2250', 'trinidadhero@yahoo.com', '$2y$10$kZrLzoUIbciqU6xRD2AZKOyVZB17ou6Q0/HNOwLf3SnmthnWxd0me', 'uploads/stonks.jpeg', '690.00', '500.00', NULL, NULL),
(22, 'cherrie', 'chtrinidad67@gmail.com', '$2y$10$.efu26Ff9.1XlkKLqxvSh.pxpn3hQLUHU3QGZleVGSv47VQMcZQRW', 'default-profile-pic.jpg', '3000.00', '69000.00', NULL, NULL),
(25, 'charlie2k24', 'charliespencer2250@gmail.com', '$2y$10$2tkOkUFvm54zFxZdxANeA.pHjAeHluF1d2OaUjeZfB48eJWLwSaPS', 'default-profile-pic.jpg', '150.00', '500.00', NULL, NULL),
(26, 'asher', 'asher12345@gmail.com', '$2y$10$ZtaG9W603P1KSqACJle15.P53gs.kF1eMn/jjlnXzwA4b.V.pm8L6', 'uploads/E-Collage by Trinidad & Calipes.jpeg', '6000.00', '1000.00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_activity`
--

DROP TABLE IF EXISTS `user_activity`;
CREATE TABLE IF NOT EXISTS `user_activity` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `activity` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=248 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_activity`
--

INSERT INTO `user_activity` (`id`, `user_id`, `activity`, `timestamp`) VALUES
(247, 26, 'asher logged in', '2024-11-15 11:35:47'),
(246, 26, 'asher logged out', '2024-11-15 11:32:11'),
(245, 26, 'asher logged in', '2024-11-15 11:31:28'),
(244, 26, 'asher logged out', '2024-11-15 11:31:20'),
(243, 26, 'asher logged in', '2024-11-15 11:30:34'),
(242, 26, 'asher logged out', '2024-11-15 11:30:28'),
(241, 26, 'asher logged in', '2024-11-15 11:29:04'),
(240, 1, 'marc2250 logged out', '2024-11-14 14:26:39'),
(239, 1, 'marc2250 logged in', '2024-11-14 14:25:07');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
