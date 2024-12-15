-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 02 déc. 2024 à 19:07
-- Version du serveur : 8.0.36
-- Version de PHP : 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `vue-api`
--

-- --------------------------------------------------------

--
-- Structure de la table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE IF NOT EXISTS `appointment` (
  `idAppointment` int NOT NULL AUTO_INCREMENT,
  `law` varchar(30) NOT NULL,
  `client` varchar(30) NOT NULL,
  `service` varchar(30) NOT NULL,
  `price` double NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`idAppointment`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `appointment`
--

INSERT INTO `appointment` (`idAppointment`, `law`, `client`, `service`, `price`, `date`) VALUES
(1, 'RayenBenzid', 'Rayen.Benzid', 'IT Consulting', 570, '2024-12-28'),
(2, 'RayenBenzid', 'Amine', 'IT Consulting', 1500, '2024-12-31'),
(3, 'Souha Karoui', 'Amine', 'IT Consulting', 230, '2024-12-07'),
(4, 'RayenBenzid', 'Amine', 'IT Consulting', 20, '2024-12-18'),
(5, 'Souha Karoui', 'Amine', 'IT Consulting', 10, '2024-12-07'),
(11, 'Souha Karoui', 'Amine', 'La crime', 300, '2024-12-02'),
(12, 'Souha Karoui', 'Rayen.Benzid', 'it-consulting', 120, '2024-12-02'),
(13, 'Souha Karoui', 'Aziz', 'family-law', 1000, '2024-12-02');

-- --------------------------------------------------------

--
-- Structure de la table `categorys`
--

DROP TABLE IF EXISTS `categorys`;
CREATE TABLE IF NOT EXISTS `categorys` (
  `id` int NOT NULL AUTO_INCREMENT,
  `price` double NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `title` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `categorys`
--

INSERT INTO `categorys` (`id`, `price`, `image`, `description`, `title`) VALUES
(2, 300, 'assets/criminal.jpg', 'Involve legal representation and support provided to individuals accused of committing a crime.', 'Criminal Defense Services'),
(4, 200, 'assets/family.jpg', 'Family law services provide legal assistance for issues like divorce and child custody', 'Family Law Services     '),
(5, 500, 'assets/RES.jpeg', 'Involve legal assistance and guidance in matters related to property transactions and disputes.', 'Real Estate Legal Services'),
(6, 700, 'assets/imeg.jpg', 'Provide assistance and representation to individuals navigating immigration processes and laws.', 'Immigration Legal Services'),
(7, 800, 'assets/empl.jpg', 'Services provide legal guidance to employers, responsibilitie and with labor laws.', 'Employment Law Advisory');

-- --------------------------------------------------------

--
-- Structure de la table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `title` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `location` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `date` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `time` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `organizer` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=907 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `events`
--

INSERT INTO `events` (`id`, `category`, `title`, `description`, `location`, `date`, `time`, `organizer`) VALUES
(888, 'sustainability', 'Beach Cleanup', 'Help pick up trash along the shore.', 'Playa Del Carmen', 'July 22, 2022', '11:00', 'Carey Wales'),
(894, 'bien-être animal', 'Journée d\'adoption des chats', 'Trouvez votre nouvel ami félin lors de cet événement', 'Bizerte', '28 January 2022', '12:00', 'Foulen Ben Foulen'),
(906, 'animal welfare', 'test', 'test', 'test', 'test', 'test', 'test');

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `description` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `consultantName` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `services`
--

INSERT INTO `services` (`id`, `image`, `title`, `price`, `description`, `category`, `consultantName`) VALUES
(10, 'assets/about.png', 'Rayen', 500, 'Test', 'criminal-law', 'RayenBenzid'),
(19, 'assets/about-img.jpg', 'La crime', 300, 'HJHJKHJK', 'Crime familiale', 'RayenBenzid'),
(20, 'assets/about-img.jpg', 'La crime', 300, 'test souha', 'La crime', 'Souha Karoui'),
(22, 'assets/about.png', 'test souha', 120, 'testetstets', 'it-consulting', 'Souha Karoui'),
(23, 'assets/about.png', 'What happen', 740, 'wow', 'criminal-law', 'RayenBenzid'),
(24, 'assets/about.png', 'Fixing people problems', 1000, 'TestTest', 'family-law', 'Souha Karoui');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
