-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 14 juin 2024 à 14:08
-- Version du serveur : 8.0.31
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `crud_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `created_at`) VALUES
(6, 'mathis', 'mathis@test.com', '$2y$10$xZ9NpKT6HHel.ybxX1FWQuD/nffRRmPhFUyFJ8QH4omx3lzakIgHa', '2024-06-14 13:30:09'),
(5, 'vincent', 'vct@test.com', '$2y$10$6ehEwACvvg8MTtRuSWfSr.2CXn2LICcDmqXtfPgsSPXg6enb6MDIa', '2024-06-14 13:18:22'),
(4, 'test888', 'test@test222.com', '$2y$10$aUgnQgd7gN1eusXoO27f8utvLiCb2pR0Awmi/5AdUYavm77MeaQAO', '2024-06-14 08:22:57'),
(7, 'anthony', 'antho@test.com', '$2y$10$xv7g/OrDJw9JeV74Jk0SC...HhZ1soWfq4n3oZhSgUsCqsM60n1FW', '2024-06-14 13:33:16'),
(8, 'mael', 'mael@test.com', '$2y$10$BVXmGl/rbYlK9sq5MlK.eembuZ4Q1XPJT/TX0mW5wnt3a4lrnjRhW', '2024-06-14 13:33:33'),
(9, 'illan', 'illan@test.com', '$2y$10$Ospa9Kq7xL.7Nz/7lHA2.u.fAVRrIAYVE/Nnmt15/sKyecYEwCzXq', '2024-06-14 13:33:58'),
(10, 'paul', 'paul@test.com', '$2y$10$QnFUcPgywSVJFe/TccnWGeUZa78WkcIiPGBs5HIo.8i3fn7YZCTFK', '2024-06-14 13:34:15'),
(11, 'toto', 'toto@test.com', '$2y$10$eIzNfVjuxLPFPJkNvqtGqO5uhiqXogGpDt3X8QYnED3vgXK5F6JuW', '2024-06-14 13:34:52'),
(12, 'tata', 'tata@test.com', '$2y$10$DcBLpg6/6hL33ZSNA0v2QOBURCYBR1pjJuBIFR.eW.VVW1qX4lvw.', '2024-06-14 13:35:13'),
(13, 'titou', 'titou@test.com', '$2y$10$TRBGs4OpVx3BNzqT00sVZecA1DGbraFHec30XroHef9q7USgq1nEO', '2024-06-14 13:35:41');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
