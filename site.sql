-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 15 mai 2024 à 22:41
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `site`
--

-- --------------------------------------------------------

--
-- Structure de la table `etudiants`
--

CREATE TABLE `etudiants` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `sexe` varchar(10) DEFAULT NULL,
  `ville_naissance` varchar(255) DEFAULT NULL,
  `filiere_souhaitee` varchar(255) DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `note_bac` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nom_tuteur` varchar(255) DEFAULT NULL,
  `prenom_tuteur` varchar(255) DEFAULT NULL,
  `profession_tuteur` varchar(255) DEFAULT NULL,
  `numero_telephone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `etudiants`
--

INSERT INTO `etudiants` (`id`, `nom`, `prenom`, `sexe`, `ville_naissance`, `filiere_souhaitee`, `date_naissance`, `note_bac`, `email`, `nom_tuteur`, `prenom_tuteur`, `profession_tuteur`, `numero_telephone`) VALUES
(1, 'ABDERRAHIM Tonzar', 'ABDERRAHIM', 'male', '&#1575;&#1604;&#1583;&#1575;&#1585; &#1575;&#1604;&#1576;&#1610;&#1590;&#1575;&#1569;', 'DSI', '2024-05-24', '12', 'abdoutonzar@gmail.com', 'ABDERRAHIM Tonzar', 'TON', 'DD', '0644682290'),
(2, 'ABDERRAHIM Tonzar', 'ABDERRAHIM', 'male', '&#1575;&#1604;&#1583;&#1575;&#1585; &#1575;&#1604;&#1576;&#1610;&#1590;&#1575;&#1569;', 'DSI', '2024-05-02', '12', 'abdoutonzar@gmail.com', 'ABDERRAHIM Tonzar', 'TON', 'SQS', '0644682290'),
(13, 'auba', '', '-Choisir-', '', NULL, '0000-00-00', '', '', '', '', '', ''),
(14, 'ABDERRAHIM Tonzar', 'ABDERRAHIM', 'male', '&#1575;&#1604;&#1583;&#1575;&#1585; &#1575;&#1604;&#1576;&#1610;&#1590;&#1575;&#1569;', 'DSI', '2024-05-16', '12', 'abdoutonzar@gmail.com', 'ABDERRAHIM Tonzar', 'TON', 'SQS', '0644682290'),
(17, 'ABDERRAHIM Tonzar', 'ABDERRAHIM', 'male', '&#1575;&#1604;&#1583;&#1575;&#1585; &#1575;&#1604;&#1576;&#1610;&#1590;&#1575;&#1569;', 'DSI', '2024-05-11', '12', 'abdoutonzar@gmail.com', 'cv', 'TON', 'SQS', '0694369994'),
(18, 'ABDERRAHIM Tonzar', 'ABDERRAHIM', 'male', '&#1575;&#1604;&#1583;&#1575;&#1585; &#1575;&#1604;&#1576;&#1610;&#1590;&#1575;&#1569;', 'DSI', '2024-05-11', '12', 'abdoutonzar@gmail.com', 'cv', 'TON', 'SQS', '0694369994');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `etudiants`
--
ALTER TABLE `etudiants`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `etudiants`
--
ALTER TABLE `etudiants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
