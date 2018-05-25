-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 25 mai 2018 à 18:30
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
  `genre` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `idRefArtist` int(11) DEFAULT NULL,
  `topAlbumBoolean` int(11) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `albums`
--

INSERT INTO `albums` (`id`, `name`, `genre`, `idRefArtist`, `topAlbumBoolean`, `createdAt`, `updatedAt`) VALUES
(1, 'album1', 'genre1', 10, 0, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(2, 'album2', 'genre2', 9, 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(3, 'album3', 'genre3', 8, 0, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(4, 'album4', 'genre4', 7, 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(5, 'album5', 'genre5', 6, 0, '2018-05-20 14:03:17', '2018-05-20 14:03:17');

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
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `artists`
--

INSERT INTO `artists` (`id`, `name`, `genre`, `createdAt`, `updatedAt`) VALUES
(1, 'G-Eazy', 'hip-hop', '2018-05-25 18:29:28', '2018-05-25 18:29:28'),
(2, 'Kendrick Lamar', 'hip-hop', '2018-05-25 18:29:56', '2018-05-25 18:29:56');

-- --------------------------------------------------------

--
-- Structure de la table `charts`
--

DROP TABLE IF EXISTS `charts`;
CREATE TABLE IF NOT EXISTS `charts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `genre` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `chart_tracks`
--

DROP TABLE IF EXISTS `chart_tracks`;
CREATE TABLE IF NOT EXISTS `chart_tracks` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
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
  `idRefChart` int(11) DEFAULT NULL,
  `topArtistBoolean` int(11) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `tracks`
--

INSERT INTO `tracks` (`id`, `title`, `artist`, `album`, `idRefChart`, `topArtistBoolean`, `createdAt`, `updatedAt`) VALUES
(1, 'La même', 'Maître Gims', 'Ceinture noire', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(2, 'Habitué', 'Dosseh', 'Habitué', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(3, 'Djadja', 'Aya Nakamura', 'Djadja', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(4, 'Mafiosa (feat. Caroliina)', 'Lartiste', 'Grandestino', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(5, 'Va Bene', 'L\'Algérino', 'Taxi 5 (Bande originale inspirée du film)', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(6, 'X', 'Nicky Jam', 'X', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(7, 'Ipséité', 'Damso', 'Ipséité', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(8, 'Bob Marley', 'Dadju', 'Gentleman 2.0', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(9, 'Flames', 'David Guetta', 'Flames', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(10, 'Leave a Light On', 'Tom Walker', 'Leave a Light On', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(11, 'Un Poco', 'Ninho', 'M.I.L.S 2.0', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(12, 'God\'s Plan', 'Drake', 'Scary Hours', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(13, 'One Kiss', 'Calvin Harris', 'One Kiss', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(14, 'Santana', 'Alonzo', 'Taxi 5 (Bande originale inspirée du film)', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(15, 'Bella ciao (feat. Maître Gims, Vitaa, Dadju & Slimane)', 'Naestro', 'Bella ciao (feat. Maître Gims, Vitaa, Dadju & Slimane)', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(16, 'Désaccordé', 'Vald', 'XEU', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(17, 'FRIENDS', 'Marshmello', 'FRIENDS', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(18, 'Mi Gna (Maître Gims Remix)', 'Maître Gims', 'Mi Gna (Maître Gims Remix)', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(19, 'Bella Ciao (Bonus track)', 'Rémy', 'C\'est Rémy', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(20, 'Hit Sale (feat. Roméo Elvis)', 'Therapie TAXI', 'Hit Sale', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(21, 'Casa de papel', 'SKG', 'Casa de papel', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(22, 'Reine', 'Dadju', 'Gentleman 2.0', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(23, 'These Days (feat. Jess Glynne, Macklemore & Dan Caplen)', 'Rudimental', 'These Days (feat. Jess Glynne, Macklemore & Dan Caplen)', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(24, 'La pluie (feat. Stromae)', 'Orelsan', 'La fête est finie', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(25, 'Country', 'Niska', 'Game Over', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(26, 'Bad boy', 'Marwa Loud', 'Loud', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(27, 'Fallait pas', 'Marwa Loud', 'Fallait pas', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(28, 'Favela', 'Naps', 'À l\'instinct', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(29, 'M.I.L.S 2.0', 'Ninho', 'M.I.L.S 2.0', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(30, 'Échame La Culpa', 'Luis Fonsi', 'Échame La Culpa', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(31, 'Vai et viens', 'Lartiste', 'Vai et viens', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(32, 'Breathe', 'Feder', 'Breathe', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(33, 'Havana', 'Camila Cabello', 'Camila', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(34, 'Whatever It Takes', 'Imagine Dragons', 'Evolve', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(35, 'No Tears Left To Cry', 'Ariana Grande', 'No Tears Left To Cry', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(36, 'Caméléon', 'Maître Gims', 'Ceinture noire', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(37, 'Shape of You', 'Ed Sheeran', 'Shape of You', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(38, 'Juste pour voir', 'S.Pri Noir', 'Masque blanc', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(39, 'Like I Do', 'David Guetta', 'Like I Do', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(40, 'Pourquoi tu forces', 'Dj Erise', 'Pourquoi tu forces', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(41, 'Remind Me to Forget', 'Kygo', 'Remind Me to Forget', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(42, 'Katchi (Ofenbach vs. Nick Waterhouse)', 'Ofenbach', 'Katchi (Ofenbach vs. Nick Waterhouse)', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(43, 'Lundi', 'Sofiane', 'Affranchis', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(44, 'Complètemment sonné', 'KeBlack', 'Complètemment sonné', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(45, 'Feel It Still', 'Portugal. The Man', 'Woodstock', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(46, 'Magenta Riddim', 'DJ Snake', 'Magenta Riddim', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(47, 'Guerilla', 'Soolking', 'Guerilla', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(48, 'Bum Bum Tam Tam', 'MC Fioti', 'Bum Bum Tam Tam', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(49, 'Nice For What', 'Drake', 'Nice For What', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(50, 'Billet', 'Marwa Loud', 'Loud', NULL, NULL, '2018-05-21 21:12:27', '2018-05-21 21:12:27'),
(51, 'Mafiosa (feat. Caroliina)', 'Caroliina', 'Grandestino', NULL, NULL, '2018-05-23 19:08:29', '2018-05-23 19:08:29'),
(52, 'One Kiss (with Dua Lipa)', 'Dua Lipa', 'One Kiss (with Dua Lipa)', NULL, NULL, '2018-05-23 19:08:29', '2018-05-23 19:08:29'),
(53, 'X', 'J Balvin', 'X', NULL, NULL, '2018-05-23 19:08:29', '2018-05-23 19:08:29'),
(54, 'Va Bene', 'Kore', 'Va Bene (Extrait de la BOF de \"Taxi 5\")', NULL, NULL, '2018-05-23 19:08:29', '2018-05-23 19:08:29'),
(55, 'La même', 'Vianney', 'Ceinture noire', NULL, NULL, '2018-05-23 19:08:29', '2018-05-23 19:08:29'),
(56, 'Bella ciao - HUGEL Remix', 'HUGEL', 'Bella ciao (HUGEL Remix)', NULL, NULL, '2018-05-23 19:08:29', '2018-05-23 19:08:29'),
(57, 'FRIENDS', 'Anne-Marie', 'FRIENDS', NULL, NULL, '2018-05-23 19:08:29', '2018-05-23 19:08:29'),
(58, 'Hit Sale (feat. Roméo Elvis)', 'Roméo Elvis', 'Hit Sale', NULL, NULL, '2018-05-23 19:08:29', '2018-05-23 19:08:29'),
(59, 'Bella ciao (feat. Maître Gims, Vitaa, Dadju & Slimane)', 'Vitaa', 'Bella ciao (feat. Maître Gims, Vitaa, Dadju & Slimane)', NULL, NULL, '2018-05-23 19:08:29', '2018-05-23 19:08:29'),
(60, 'These Days (feat. Jess Glynne, Macklemore & Dan Caplen)', 'Dan Caplen', 'These Days (feat. Jess Glynne, Macklemore & Dan Caplen)', NULL, NULL, '2018-05-23 19:08:29', '2018-05-23 19:08:29'),
(61, 'Flames', 'Sia', 'Flames', NULL, NULL, '2018-05-23 19:08:29', '2018-05-23 19:08:29'),
(62, 'Nevermind', 'Dennis Lloyd', 'Nevermind', NULL, NULL, '2018-05-23 19:08:29', '2018-05-23 19:08:29'),
(63, 'Fallait pas', 'Marwa Loud', 'Loud', NULL, NULL, '2018-05-23 19:08:29', '2018-05-23 19:08:29'),
(64, 'Mad Love', 'Becky G', 'Mad Love', NULL, NULL, '2018-05-23 19:08:29', '2018-05-23 19:08:29'),
(65, 'I Like It', 'J Balvin', 'Invasion of Privacy', NULL, NULL, '2018-05-23 19:08:29', '2018-05-23 19:08:29'),
(66, 'Vai et viens', 'Lartiste', 'Grandestino', NULL, NULL, '2018-05-23 19:08:29', '2018-05-23 19:08:29'),
(67, 'This Is America', 'Childish Gambino', 'This Is America', NULL, NULL, '2018-05-23 19:08:29', '2018-05-23 19:08:29'),
(68, 'Like I Do', 'Brooks', 'Like I Do', NULL, NULL, '2018-05-23 19:08:29', '2018-05-23 19:08:29'),
(69, 'The Middle', 'Grey', 'The Middle', NULL, NULL, '2018-05-23 19:08:29', '2018-05-23 19:08:29'),
(70, 'Better Now', 'Post Malone', 'beerbongs & bentleys', NULL, NULL, '2018-05-23 19:08:29', '2018-05-23 19:08:29'),
(71, 'La pluie (feat. Stromae)', 'Stromae', 'La fête est finie', NULL, NULL, '2018-05-23 19:08:29', '2018-05-23 19:08:29'),
(72, 'Remind Me to Forget', 'Miguel', 'Kids in Love', NULL, NULL, '2018-05-23 19:08:29', '2018-05-23 19:08:29'),
(73, 'Arrivant', 'Timal', 'Trop chaud', NULL, NULL, '2018-05-23 19:08:29', '2018-05-23 19:08:29'),
(74, 'Mi Gna - Maître Gims Remix', 'Hayko', 'Ceinture noire', NULL, NULL, '2018-05-23 19:08:29', '2018-05-23 19:08:29'),
(75, 'Bella Ciao - Bonus track', 'Rémy', 'C\'est Rémy', NULL, NULL, '2018-05-23 19:08:29', '2018-05-23 19:08:29'),
(76, 'Fendi', 'Ninho', 'M.I.L.S 2.0', NULL, NULL, '2018-05-23 19:08:29', '2018-05-23 19:08:29'),
(77, 'Psycho', 'Ty Dolla $ign', 'beerbongs & bentleys', NULL, NULL, '2018-05-23 19:08:29', '2018-05-23 19:08:29'),
(78, 'Favela', 'Soolking', 'À l\'instinct', NULL, NULL, '2018-05-23 19:08:29', '2018-05-23 19:08:29'),
(79, 'Coffrer', 'Ninho', 'M.I.L.S 2.0', NULL, NULL, '2018-05-23 19:08:29', '2018-05-23 19:08:29'),
(80, 'Crazy', 'Zonderling', 'Crazy', NULL, NULL, '2018-05-23 19:08:29', '2018-05-23 19:08:29'),
(81, 'Juste pour voir', 'Nekfeu', 'Masque blanc', NULL, NULL, '2018-05-23 19:08:29', '2018-05-23 19:08:29'),
(82, 'Call Out My Name', 'The Weeknd', 'My Dear Melancholy,', NULL, NULL, '2018-05-23 19:08:29', '2018-05-23 19:08:29'),
(83, 'Love Lies (with Normani)', 'Normani', 'Love Lies (with Normani)', NULL, NULL, '2018-05-23 19:08:29', '2018-05-23 19:08:29'),
(84, 'Breathe', 'Ina Wroldsen', 'Breathe', NULL, NULL, '2018-05-23 19:08:29', '2018-05-23 19:08:29'),
(85, 'Arrivant', 'Timal', 'Arrivant', NULL, NULL, '2018-05-23 19:08:30', '2018-05-23 19:08:30'),
(86, 'Mad Love', 'Sean Paul', 'Mad Love', NULL, NULL, '2018-05-23 19:08:30', '2018-05-23 19:08:30'),
(87, 'J\'souris', 'Djadja & Dinaz', 'Le revers de la médaille', NULL, NULL, '2018-05-23 19:08:30', '2018-05-23 19:08:30'),
(88, 'Wolves', 'Selena Gomez', 'Wolves', NULL, NULL, '2018-05-23 19:08:30', '2018-05-23 19:08:30');

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
