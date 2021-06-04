-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3307
-- Généré le : jeu. 06 mai 2021 à 15:32
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `expressdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `id` int(10) NOT NULL,
  `nom` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`id`, `nom`) VALUES
(1, 'ouahdane'),
(2, 'chaymae');

-- --------------------------------------------------------

--
-- Structure de la table `monuments`
--

CREATE TABLE `monuments` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `ville` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `monuments`
--

INSERT INTO `monuments` (`id`, `nom`, `latitude`, `longitude`, `ville`) VALUES
(2, 'phare de Sidi Bouafi', '33.250277777777775', '-8.516944444444444', 'El Jadida'),
(4, 'ENSAJ', '33.25081', '-8.43466', 'El Jadida'),
(6, 'La Citerne Portugaise', '33.25666666666667', '-8.502777777777778', 'El Jadida'),
(10, 'kkk', '32.971804', '-7.250979', 'El Jadida');

-- --------------------------------------------------------

--
-- Structure de la table `visite`
--

CREATE TABLE `visite` (
  `id` int(11) NOT NULL,
  `id_m` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `visite`
--

INSERT INTO `visite` (`id`, `id_m`, `date`, `latitude`, `longitude`, `etat`) VALUES
(32, 6, '2021-05-06', 33.25666666666667, -8.502777777777778, 1),
(33, 6, '2021-05-06', 33.25666666666667, -8.502777777777778, 1),
(34, 6, '2021-05-06', 33.25666666666667, -8.502777777777778, 1),
(35, 4, '2021-05-06', 33.25081, -8.43466, 1),
(36, 10, '2021-05-06', 32.971804, -7.250979, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `monuments`
--
ALTER TABLE `monuments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `visite`
--
ALTER TABLE `visite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk` (`id_m`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `visite`
--
ALTER TABLE `visite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `visite`
--
ALTER TABLE `visite`
  ADD CONSTRAINT `fk` FOREIGN KEY (`id_m`) REFERENCES `monuments` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
