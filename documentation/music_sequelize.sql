-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  sam. 26 mai 2018 à 12:50
-- Version du serveur :  5.7.19
-- Version de PHP :  7.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `music_sequelize`
--

-- --------------------------------------------------------

--
-- Structure de la table `albums`
--

DROP TABLE IF EXISTS `albums`;
CREATE TABLE IF NOT EXISTS `albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `idRefArtist` int(11) DEFAULT NULL,
  `topAlbumBoolean` int(11) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `artists`
--

DROP TABLE IF EXISTS `artists`;
CREATE TABLE IF NOT EXISTS `artists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `genre` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `charts`
--

DROP TABLE IF EXISTS `charts`;
CREATE TABLE IF NOT EXISTS `charts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `genre` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `chart_tracks`
--

DROP TABLE IF EXISTS `chart_tracks`;
CREATE TABLE IF NOT EXISTS `chart_tracks` (
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT NULL,
  `chartId` int(11) NOT NULL,
  `trackId` int(11) NOT NULL,
  PRIMARY KEY (`chartId`,`trackId`),
  KEY `trackId` (`trackId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `tracks`
--

DROP TABLE IF EXISTS `tracks`;
CREATE TABLE IF NOT EXISTS `tracks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `artist` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `album` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `topArtistBoolean` int(11) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `tracks`
--

INSERT INTO `tracks` (`id`, `title`, `artist`, `album`, `topArtistBoolean`, `createdAt`, `updatedAt`) VALUES
(1, 'Habitué', 'Dosseh', 'Habitué', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(2, 'Ipséité', 'Damso', 'Ipséité', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(3, 'Mafiosa (feat. Caroliina)', 'Caroliina', 'Grandestino', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(4, 'Djadja', 'Aya Nakamura', 'Djadja', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(5, 'One Kiss (with Dua Lipa)', 'Dua Lipa', 'One Kiss (with Dua Lipa)', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(6, 'X', 'J Balvin', 'X', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(7, 'La même', 'Vianney', 'Ceinture noire', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(8, 'Va Bene', 'Kore', 'Va Bene (Extrait de la BOF de \"Taxi 5\")', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(9, 'Un Poco', 'Ninho', 'M.I.L.S 2.0', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(10, 'God\'s Plan', 'Drake', 'Scary Hours', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(11, 'Désaccordé', 'Vald', 'XEU', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(12, 'Bob Marley', 'Dadju', 'Gentleman 2.0', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(13, 'FRIENDS', 'Anne-Marie', 'FRIENDS', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(14, 'Bella ciao - HUGEL Remix', 'HUGEL', 'Bella ciao (HUGEL Remix)', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(15, 'Hit Sale (feat. Roméo Elvis)', 'Roméo Elvis', 'Hit Sale', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(16, 'Bella ciao (feat. Maître Gims, Vitaa, Dadju & Slimane)', 'Vitaa', 'Bella ciao (feat. Maître Gims, Vitaa, Dadju & Slimane)', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(17, 'M.I.L.S 2.0', 'Ninho', 'M.I.L.S 2.0', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(18, 'Flames', 'Sia', 'Flames', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(19, 'These Days (feat. Jess Glynne, Macklemore & Dan Caplen)', 'Dan Caplen', 'These Days (feat. Jess Glynne, Macklemore & Dan Caplen)', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(20, 'Nevermind', 'Dennis Lloyd', 'Nevermind', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(21, 'Santana', 'Alonzo', 'Taxi 5 (Bande originale inspirée du film)', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(22, 'No Tears Left To Cry', 'Ariana Grande', 'No Tears Left To Cry', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(23, 'Fallait pas', 'Marwa Loud', 'Loud', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(24, 'Mad Love', 'Becky G', 'Mad Love', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(25, 'Country', 'Niska', 'Game Over', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(26, 'I Like It', 'J Balvin', 'Invasion of Privacy', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(27, 'Nice For What', 'Drake', 'Nice For What', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(28, 'Vai et viens', 'Lartiste', 'Grandestino', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(29, 'The Middle', 'Grey', 'The Middle', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(30, 'Like I Do', 'Brooks', 'Like I Do', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(31, 'This Is America', 'Childish Gambino', 'This Is America', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(32, 'Magenta Riddim', 'DJ Snake', 'Magenta Riddim', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(33, 'Better Now', 'Post Malone', 'beerbongs & bentleys', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(34, 'Lundi', 'Sofiane', 'Affranchis', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(35, 'Remind Me to Forget', 'Miguel', 'Kids in Love', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(36, 'Bella Ciao - Bonus track', 'Rémy', 'C\'est Rémy', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(37, 'La pluie (feat. Stromae)', 'Stromae', 'La fête est finie', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(38, 'Juste pour voir', 'Nekfeu', 'Masque blanc', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(39, 'Favela', 'Soolking', 'À l\'instinct', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(40, 'Arrivant', 'Timal', 'Trop chaud', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(41, 'Guerilla', 'Soolking', 'Guerilla', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(42, 'Fendi', 'Ninho', 'M.I.L.S 2.0', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(43, 'Mi Gna - Maître Gims Remix', 'Hayko', 'Ceinture noire', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(44, 'Coffrer', 'Ninho', 'M.I.L.S 2.0', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(45, 'Psycho (feat. Ty Dolla $ign)', 'Ty Dolla $ign', 'beerbongs & bentleys', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(46, 'Leave a Light On', 'Tom Walker', 'Leave a Light On', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(47, 'Breathe', 'Ina Wroldsen', 'Breathe', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(48, 'Bandolero', 'Moha La Squale', 'Bandolero', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(49, 'Love Lies (with Normani)', 'Normani', 'Love Lies (with Normani)', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(50, 'Complètement sonné', 'KeBlack', 'Appartement 105', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(51, 'La même', 'Maître Gims', 'Ceinture noire', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(52, 'Mafiosa (feat. Caroliina)', 'Lartiste', 'Grandestino', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(53, 'Bella ciao (feat. Maître Gims, Vitaa, Dadju & Slimane)', 'Naestro', 'Bella ciao (feat. Maître Gims, Vitaa, Dadju & Slimane)', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(54, 'Va Bene', 'L\'Algérino', 'Taxi 5 (Bande originale inspirée du film)', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(55, 'X', 'Nicky Jam', 'X', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(56, 'One Kiss', 'Calvin Harris', 'One Kiss', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(57, 'Flames', 'David Guetta', 'Flames', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(58, 'Casa de papel', 'SKG', 'Casa de papel', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(59, 'Bella Ciao (Bonus track)', 'Rémy', 'C\'est Rémy', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(60, 'FRIENDS', 'Marshmello', 'FRIENDS', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(61, 'Hit Sale (feat. Roméo Elvis)', 'Therapie TAXI', 'Hit Sale', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(62, 'Mi Gna (Maître Gims Remix)', 'Maître Gims', 'Mi Gna (Maître Gims Remix)', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(63, 'Favela', 'Naps', 'À l\'instinct', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(64, 'These Days (feat. Jess Glynne, Macklemore & Dan Caplen)', 'Rudimental', 'These Days (feat. Jess Glynne, Macklemore & Dan Caplen)', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(65, 'La pluie (feat. Stromae)', 'Orelsan', 'La fête est finie', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(66, 'Vai et viens', 'Lartiste', 'Vai et viens', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(67, 'Juste pour voir', 'S.Pri Noir', 'Masque blanc', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(68, 'Reine', 'Dadju', 'Gentleman 2.0', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(69, 'C\'était pas gagné', 'Moha La Squale', 'Bendero', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(70, 'Complètemment sonné', 'KeBlack', 'Complètemment sonné', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(71, 'Pourquoi tu forces', 'Dj Erise', 'Pourquoi tu forces', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(72, 'Échame La Culpa', 'Luis Fonsi', 'Échame La Culpa', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(73, 'Bad boy', 'Marwa Loud', 'Loud', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(74, 'Fallait pas', 'Marwa Loud', 'Fallait pas', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(75, 'Havana', 'Camila Cabello', 'Camila', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(76, 'Prologue', 'Moha La Squale', 'Bendero', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(77, 'La BP', 'Moha La Squale', 'La BP', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(78, 'Bendero', 'Moha La Squale', 'Bendero', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(79, 'Luna', 'Moha La Squale', 'Bendero', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(80, 'Breathe', 'Feder', 'Breathe', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(81, 'Remind Me to Forget', 'Kygo', 'Remind Me to Forget', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(82, 'Caméléon', 'Maître Gims', 'Ceinture noire', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(83, 'Arrivant', 'Timal', 'Arrivant', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(84, 'Snow', 'Moha La Squale', 'Bendero', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(85, 'Like I Do', 'David Guetta', 'Like I Do', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43'),
(86, 'Bonnie & Clyde', 'Moha La Squale', 'Bendero', NULL, '2018-05-26 12:01:43', '2018-05-26 12:01:43');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `chart_tracks`
--
ALTER TABLE `chart_tracks`
  ADD CONSTRAINT `chart_tracks_ibfk_1` FOREIGN KEY (`chartId`) REFERENCES `charts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chart_tracks_ibfk_2` FOREIGN KEY (`trackId`) REFERENCES `tracks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
