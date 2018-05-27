-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 27 mai 2018 à 17:28
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
-- Base de données :  `music_charts`
--

-- --------------------------------------------------------

--
-- Structure de la table `albums`
--

DROP TABLE IF EXISTS `albums`;
CREATE TABLE IF NOT EXISTS `albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `artist` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `topAlbumBoolean` int(11) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `albums`
--

INSERT INTO `albums` (`id`, `name`, `artist`, `topAlbumBoolean`, `createdAt`, `updatedAt`) VALUES
(1, 'The Beautiful and Damned', 'G-Eazy', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(2, 'When It\'s Dark Out', 'G-Eazy', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(3, 'These Things Happen', 'G-Eazy', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(4, 'Black Panther The Album Music From And Inspired By', 'Kendrick Lamar', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(5, 'DAMN. COLLECTORS EDITION.', 'Kendrick Lamar', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(6, 'DAMN.', 'Kendrick Lamar', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(7, 'Random Access Memories', 'Daft Punk', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(8, 'Daft Punk | Random Access Memories | The Collaborators', 'Daft Punk', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(9, 'TRON Legacy: Reconfigured', 'Daft Punk', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(10, 'beerbongs & bentleys', 'Post Malone', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(11, 'Stoney', 'Post Malone', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(12, 'Stoney (Deluxe)', 'Post Malone', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(13, 'Funk Wav Bounces Vol.1', 'Calvin Harris', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(14, 'Motion', 'Calvin Harris', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(15, '18 Months', 'Calvin Harris', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(16, '\"Awaken, My Love!\"', 'Childish Gambino', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(17, 'Kauai', 'Childish Gambino', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(18, 'because the internet', 'Childish Gambino', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(19, 'More Life', 'Drake', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(20, 'Views', 'Drake', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(21, 'What A Time To Be Alive', 'Drake', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(22, 'Fénix', 'Nicky Jam', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(23, 'Vida Escante', 'Nicky Jam', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(24, 'Exitos', 'Nicky Jam', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(25, 'Blank Face LP', 'ScHoolboy Q', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(26, 'Schoolboy Q 2', 'ScHoolboy Q', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(27, 'Schoolboy Q', 'ScHoolboy Q', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(28, 'Love Yourself 轉 \'Tear\'', 'BTS', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(29, 'FACE YOURSELF', 'BTS', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(30, 'You Never Walk Alone', 'BTS', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(31, 'Revival', 'Eminem', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(32, 'The Marshall Mathers LP2', 'Eminem', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(33, 'The Marshall Mathers LP2 (Deluxe)', 'Eminem', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(34, 'Black Panther The Album Music From And Inspired By', 'The Weeknd', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(35, 'Starboy', 'The Weeknd', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(36, 'Beauty Behind The Madness', 'The Weeknd', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(37, 'Listen Again', 'David Guetta', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(38, 'Listen', 'David Guetta', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(39, 'Nothing But the Beat (Ultimate Edition)', 'David Guetta', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(40, 'Le Sébastien nouveau est arrivé', 'Patrick Sébastien', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(41, 'Ça va bouger !', 'Patrick Sébastien', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(42, 'Ca va être ta fête (Edition 40 ans de carrière)', 'Patrick Sébastien', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(43, 'Culture II', 'Migos', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(44, 'Culture', 'Migos', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(45, 'YRN 2 (Young Rich Niggas 2)', 'Migos', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(46, 'SUPER SLIMEY', 'Young Thug', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(47, 'Beautiful Thugger Girls', 'Young Thug', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(48, 'JEFFERY', 'Young Thug', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(49, 'Shawn Mendes', 'Shawn Mendes', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(50, 'MTV Unplugged', 'Shawn Mendes', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(51, 'Illuminate (Deluxe)', 'Shawn Mendes', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(52, 'New Eyes', 'Clean Bandit', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(53, 'Solo (feat. Demi Lovato) [Wideboys Remix]', 'Clean Bandit', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(54, 'Solo (feat. Demi Lovato)', 'Clean Bandit', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(55, '13 Reasons Why (Season 2)', 'Selena Gomez', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(56, 'Revival', 'Selena Gomez', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(57, 'Revival (Deluxe)', 'Selena Gomez', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(58, 'Nevermind', 'Dennis Lloyd', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(59, 'Nevermind (Alright)', 'Dennis Lloyd', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(60, 'Leftovers', 'Dennis Lloyd', 1, '2018-05-20 14:03:17', '2018-05-20 14:03:17'),
(61, 'Acts & Results', 'Dennis Lloyd', 0, '2018-05-26 16:34:24', NULL),
(62, 'Fetish (feat. Gucci Mane)', 'Selena Gomez', 0, '2018-05-26 16:38:10', NULL),
(63, 'Drip (feat. Migos)', 'Migos', 0, '2018-05-27 14:46:57', '2018-05-27 14:46:57');

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
  `updatedAt` timestamp NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `artists`
--

INSERT INTO `artists` (`id`, `name`, `genre`, `createdAt`, `updatedAt`) VALUES
(1, 'G-Eazy', 'hip hop', '2018-05-25 18:29:28', '2018-05-25 18:29:28'),
(2, 'Kendrick Lamar', 'hip hop', '2018-05-25 18:29:56', '2018-05-25 18:29:56'),
(3, 'Daft Punk', 'electro', '2018-05-26 09:26:42', '2018-05-26 09:26:42'),
(4, 'Post Malone', 'pop', '2018-05-26 09:26:42', '2018-05-26 09:26:42'),
(5, 'Calvin Harris', 'EDM', '2018-05-26 09:26:42', '2018-05-26 09:26:42'),
(6, 'Childish Gambino', 'hip hop', '2018-05-26 09:26:42', '2018-05-26 09:26:42'),
(7, 'Drake', 'canadian hip hop', '2018-05-26 10:26:28', '2018-05-26 10:26:28'),
(8, 'Nicky Jam', 'latin', '2018-05-26 10:26:28', '2018-05-26 10:26:28'),
(9, 'ScHoolboy Q', 'gangster rap', '2018-05-26 10:26:28', '2018-05-26 10:26:28'),
(10, 'BTS', 'k-pop', '2018-05-26 10:26:28', '2018-05-26 10:26:28'),
(11, 'Eminem', 'detroit hip hop', '2018-05-26 10:26:28', '2018-05-26 10:26:28'),
(12, 'The Weeknd', 'canadian pop', '2018-05-26 10:26:28', '2018-05-26 10:26:28'),
(13, 'David Guetta', 'dance pop', '2018-05-26 10:26:28', '2018-05-26 10:26:28'),
(14, 'Patrick Sébastien', 'francoton', '2018-05-26 10:26:28', '2018-05-26 10:26:28'),
(15, 'Migos', 'pop', '2018-05-26 10:26:28', '2018-05-26 10:26:28'),
(16, 'Young Thug', 'dwn trap', '2018-05-26 10:26:28', '2018-05-26 10:26:28'),
(17, 'Shawn Mendes', 'canadian pop', '2018-05-26 10:26:28', '2018-05-26 10:26:28'),
(18, 'Clean Bandit', 'dance pop', '2018-05-26 10:26:28', '2018-05-26 10:26:28'),
(19, 'Selena Gomez', 'dance pop', '2018-05-26 10:26:28', '2018-05-26 10:26:28'),
(20, 'Dennis Lloyd', 'israeli pop', '2018-05-26 10:26:28', '2018-05-26 10:26:28');

-- --------------------------------------------------------

--
-- Structure de la table `charts`
--

DROP TABLE IF EXISTS `charts`;
CREATE TABLE IF NOT EXISTS `charts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL,
  PRIMARY KEY (`id`)
);

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
);

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
  `chartBoolean` tinyint(4) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `tracks`
--

INSERT INTO `tracks` (`id`, `title`, `artist`, `album`, `topArtistBoolean`, `chartBoolean`, `createdAt`, `updatedAt`) VALUES
(1, 'Habitué', 'Dosseh', 'Habitué', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(2, 'Djadja', 'Aya Nakamura', 'Djadja', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(3, 'La même', 'Maître Gims', 'Ceinture noire', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(4, 'Mafiosa (feat. Caroliina)', 'Lartiste', 'Grandestino', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(5, 'Bella ciao (feat. Maître Gims, Vitaa, Dadju & Slimane)', 'Naestro', 'Bella ciao (feat. Maître Gims, Vitaa, Dadju & Slimane)', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(6, 'Va Bene', 'L\'Algérino', 'Taxi 5 (Bande originale inspirée du film)', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(7, 'X', 'Nicky Jam', 'X', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(8, 'Santana', 'Alonzo', 'Taxi 5 (Bande originale inspirée du film)', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(9, 'Ipséité', 'Damso', 'Ipséité', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(10, 'One Kiss', 'Calvin Harris', 'One Kiss', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(11, 'Un Poco', 'Ninho', 'M.I.L.S 2.0', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(12, 'Bob Marley', 'Dadju', 'Gentleman 2.0', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(13, 'Flames', 'David Guetta', 'Flames', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(14, 'Bandolero', 'Moha La Squale', 'Bandolero', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(15, 'Leave a Light On', 'Tom Walker', 'Leave a Light On', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(16, 'Casa de papel', 'SKG', 'Casa de papel', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(17, 'Désaccordé', 'Vald', 'XEU', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(18, 'God\'s Plan', 'Drake', 'Scary Hours', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(19, 'Bella Ciao (Bonus track)', 'Rémy', 'C\'est Rémy', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(20, 'FRIENDS', 'Marshmello', 'FRIENDS', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(21, 'Hit Sale (feat. Roméo Elvis)', 'Therapie TAXI', 'Hit Sale', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(22, 'Mi Gna (Maître Gims Remix)', 'Maître Gims', 'Mi Gna (Maître Gims Remix)', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(23, 'Favela', 'Naps', 'À l\'instinct', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(24, 'M.I.L.S 2.0', 'Ninho', 'M.I.L.S 2.0', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(25, 'Country', 'Niska', 'Game Over', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(26, 'These Days (feat. Jess Glynne, Macklemore & Dan Caplen)', 'Rudimental', 'These Days (feat. Jess Glynne, Macklemore & Dan Caplen)', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(27, 'No Tears Left To Cry', 'Ariana Grande', 'No Tears Left To Cry', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(28, 'La pluie (feat. Stromae)', 'Orelsan', 'La fête est finie', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(29, 'Vai et viens', 'Lartiste', 'Vai et viens', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(30, 'Juste pour voir', 'S.Pri Noir', 'Masque blanc', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(31, 'Reine', 'Dadju', 'Gentleman 2.0', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(32, 'C\'était pas gagné', 'Moha La Squale', 'Bendero', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(33, 'Complètemment sonné', 'KeBlack', 'Complètemment sonné', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(34, 'Pourquoi tu forces', 'Dj Erise', 'Pourquoi tu forces', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(35, 'Échame La Culpa', 'Luis Fonsi', 'Échame La Culpa', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(36, 'Bad boy', 'Marwa Loud', 'Loud', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(37, 'Fallait pas', 'Marwa Loud', 'Fallait pas', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(38, 'Havana', 'Camila Cabello', 'Camila', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(39, 'Prologue', 'Moha La Squale', 'Bendero', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(40, 'La BP', 'Moha La Squale', 'La BP', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(41, 'Bendero', 'Moha La Squale', 'Bendero', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(42, 'Luna', 'Moha La Squale', 'Bendero', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(43, 'Guerilla', 'Soolking', 'Guerilla', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(44, 'Breathe', 'Feder', 'Breathe', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(45, 'Remind Me to Forget', 'Kygo', 'Remind Me to Forget', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(46, 'Caméléon', 'Maître Gims', 'Ceinture noire', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(47, 'Arrivant', 'Timal', 'Arrivant', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(48, 'Snow', 'Moha La Squale', 'Bendero', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(49, 'Like I Do', 'David Guetta', 'Like I Do', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(50, 'Bonnie & Clyde', 'Moha La Squale', 'Bendero', NULL, 1, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(51, 'Him & I (with Halsey)', 'G-Eazy', 'The Beautiful and Damned', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(52, '1942', 'G-Eazy', 'Uncle Drew (Original Motion Picture Soundtrack)', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(53, 'No Limit', 'G-Eazy', 'The Beautiful and Damned', 1, 0, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(54, 'All The Stars (with SZA)', 'Kendrick Lamar', 'Black Panther: The Album', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(55, 'King\'s Dead', 'Kendrick Lamar', 'Black Panther: The Album', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(56, 'HUMBLE.', 'Kendrick Lamar', 'Damn', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(57, 'Get Lucky - Radio Edit', 'Daft Punk', 'Random Access Memories', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(58, 'One More Time', 'Daft Punk', 'Interstella 5555', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(59, 'Instant Crush', 'Daft Punk', 'Random Access Memories', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(60, 'Better Now', 'Post Malone', 'Beerbongs & Bentleys', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(61, 'Psycho (feat. Ty Dolla $ign)', 'Post Malone', 'Beerbongs & Bentleys', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(62, 'rockstar (feat. 21 Savage)', 'Post Malone', 'Beerbongs & Bentleys', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(63, 'One Kiss (with Dua Lipa)', 'Calvin Harris', NULL, 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(64, 'Feels', 'Calvin Harris', 'Funk Wav Bounces Vol. 1', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(65, 'This Is What You Came For', 'Calvin Harris', NULL, 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(66, 'This Is America', 'Childish Gambino', NULL, 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(67, 'Redbone', 'Childish Gambino', 'Awaken, My Love!', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(68, 'V.3005', 'Childish Gambino', 'Because the Internet', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(69, 'Nice For What', 'Drake', NULL, 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(70, 'God\'s Plan', 'Drake', 'Scary Hours', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(71, 'Look Alive (feat. Drake)', 'Drake', 'Simi', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(72, 'X', 'Nicky Jam', NULL, 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(73, 'Bella y Sensual', 'Nicky Jam', 'Golden', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(74, 'El Amante', 'Nicky Jam', 'Fénix', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(75, 'X (with 2 Chainz & Saudi', 'ScHoolboy Q', '', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(76, 'Collard Greens', 'ScHoolboy Q', '', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(77, 'THat Part', 'ScHoolboy Q', '', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(78, 'FAKE LOVE', 'BTS', 'Love Yourself: Tear', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(79, 'The Truth Untold', 'BTS', NULL, 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(80, 'Airplane pt.2', 'BTS', NULL, 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(81, 'River (feat. Ed Sheeran)', 'Eminem', 'Revival', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(82, 'Lose Yourself - From "8 Mile" Soundtrack', 'Eminem', '8 Mile', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(83, 'Till I Collapse', 'Eminem', 'Real Steel', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(84, 'Call Out My Name', 'The Weeknd', 'My Dear Melancholy,', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(85, 'Wasted Times', 'The Weeknd', 'My Dear Melancholy,', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(86, 'Try Me', 'The Weeknd', 'My Dear Melancholy,', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(87, 'Flames', 'David Guetta', NULL, 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(88, 'Like I Do', 'David Guetta', NULL, 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(89, 'Mad Love', 'David Guetta', NULL, 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(90, 'Les Sardines', 'Patrick Sébastien', 'Pochette surprise', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(91, 'Joyeux Anniversaire', 'Patrick Sébastien', 'Magick Sébastien', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(92, 'Tourner les serviettes', 'Patrick Sébastien', 'Magick Sébastien', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(93, 'Walk It Talk It', 'Migos', 'Culture II', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(94, 'Stir Fry', 'Migos', 'Culture II', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(95, 'Drip (feat. Migos)', 'Migos', 'Invasion of Privacy', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(96, 'Relationship (feat. Future)', 'Young Thug', 'Beautiful Thugger Girls', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(97, 'Anybody (feat. Nicki Minaj)', 'Young Thug', 'Hear No Evil', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(98, 'pick up the phone', 'Young Thug', 'Birds in the Trap Sing McKnight', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(99, 'In My Blood', 'Shawn Mendes', 'Shawn Mendes', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(100, 'Youth feat. Khalid', 'Shawn Mendes', 'Shawn Mendes', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(101, 'Lost In Japan', 'Shawn Mendes', 'Shawn Mendes', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(102, 'I Miss You (feat. Julia Michaels)', 'Clean Bandit', NULL, 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(103, 'Symphony (feat. Zara Larsson)', 'Clean Bandit', 'So Good', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(104, 'Solo (feat. Demi Lovato)', 'Clean Bandit', NULL, 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(105, 'Back To You', 'Selena Gomez', '13 Reasons Why', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(106, 'Wolves', 'Selena Gomez', NULL, 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(107, 'It Ain\'t Me (with Selena Gomez)', 'Selena Gomez', 'Stargazing - EP', 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(108, 'Nevermind', 'Dennis Lloyd', NULL, 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(109, 'Leftovers', 'Dennis Lloyd', NULL, 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27'),
(110, 'Nevermind (Alright)', 'Dennis Lloyd', NULL, 1, NULL, '2018-05-27 17:09:27', '2018-05-27 17:09:27');

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
