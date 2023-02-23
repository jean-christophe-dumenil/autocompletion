-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 23 fév. 2023 à 13:24
-- Version du serveur : 10.10.2-MariaDB
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `autocompletion`
--

-- --------------------------------------------------------

--
-- Structure de la table `pokemon`
--

DROP TABLE IF EXISTS `pokemon`;
CREATE TABLE IF NOT EXISTS `pokemon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `taille` varchar(255) NOT NULL,
  `poid` varchar(255) NOT NULL,
  `categorie` varchar(255) NOT NULL,
  `talent` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `faiblesse` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `pokemon`
--

INSERT INTO `pokemon` (`id`, `numero`, `nom`, `taille`, `poid`, `categorie`, `talent`, `type`, `faiblesse`) VALUES
(1, '001', 'Bulbizarre', '0.7 m', '6.9 kg', 'Graine', 'Engrais', 'Plante / Poison', 'Feu / Psy / Vol / Glace'),
(2, '002', 'Herbizarre', '1.0 m', '13.0 kg', 'Graine', 'Engrais', 'Plante / Poison', 'Feu / Psy / Vol / Glace'),
(3, '003', 'Florizarre', '2.0 m', '100.0 kg', 'Graine', 'Engrais', 'Plante / Poison', 'Feu / Psy / Vol / Glace'),
(4, '004', 'Salameche', '0.6 m', '8.5 kg', 'Lezard', 'Brasier', 'Feu', 'Eau / Sol / Roche'),
(5, '005', 'Reptincel', '1.1 m', '19.0 kg', 'Flamme', 'Brasier', 'Feu', 'Eau / Sol / Roche'),
(6, '006', 'Dracaufeu', '1.7 m', '90.5 kg', 'Flamme', 'Brasier', 'Feu / Vol', 'Eau / Electik / Roche'),
(7, '007', 'Carapuce', '0.5 m', '9.0 kg', 'Minitortue', 'Torrent', 'Eau', 'Plante / Electrik'),
(8, '008', 'Carabaffe', '1.0 m', '22.5 kg', 'Tortue', 'Torrent', 'Eau', 'Plante / Electrik'),
(9, '009', 'Tortank', '1.6 m', '85.5 kg', 'Carapace', 'Torrent', 'Eau ', 'Plante / Electrik'),
(10, '152', 'Germignon', '0.9 m', '6.4 kg', 'Feuille', 'Engrais', 'Plante', 'Feu / Vol / Glace / Poison / Insecte'),
(11, '153', 'Macronium', '1.2 m', '15.8 kg', 'Feuille ', 'Engrais', 'Plante', 'Feu / Vol / Glace / Poison / Insecte'),
(12, '154', 'Meganium', '1.8 m', '100.5 kg', 'Herbe', 'Engrais', 'Plante', 'feu / Vol / Glace / Poison / Insecte'),
(13, '155', 'Hericendre', '0.5 m', '7.9 kg', 'Souris', 'Brasier', 'Feu', 'Eau / Sol / Roche'),
(14, '156', 'Feurisson', '0.9 m', '19.0 kg ', 'Volcan', 'Brasier', 'Feu', 'Eau / Sol / Roche'),
(15, '157', 'Typhlosion', '1.7 m ', '79.5 kg', 'Volcan', 'Brasier', 'Feu', 'Eau / Sol / Roche'),
(16, '158', 'Kaiminus', '0.6 m', '9.5 kg', 'Machoire', 'Torrent', 'Eau', 'Plante / Electrik'),
(17, '159', 'Crocrodil', '1.1 m', '25.0 kg', 'Machoire', 'Torrent', 'Eau', 'Plante / Electrik'),
(18, '160', 'Aligatueur', '2.3 m', '88.8 kg', 'Machoire', 'Torrent', 'Eau', 'Plante / Electrik'),
(19, '252 ', 'Arcko', '0.5 m', '5.0 kg ', 'Gecko', 'Engrais', 'Plante', 'Feu / Vol / Glace / Poison / Insecte'),
(20, '253', 'Massko', '0.9 m', '21.6 kg', 'Gecko', 'Engrais', 'Plante', 'Feu / Vol / Glace / Poison / Insecte'),
(21, '254', 'Jungko', '1.7 m', '52.2 kg', 'Foret ', 'Engrais', 'Plante', 'Feu / Vol / Glace / Poison / Insecte'),
(22, '255', 'Poussifeu', '0.4 m', '2.5 kg', 'Poussin', 'Brasier', 'Feu', 'Eau / Sol / Roche'),
(23, '256', 'Galifeu', '0.9 m', '19.5 kg', 'Poulet', 'Brasier', 'Feu / Combat', 'Eau / Psy / Vol / Sol'),
(24, '257', 'Brasegali', ' 1.9 m', '52.0 kg', 'Ardent', 'Brasier', 'Feu / Combat', 'Eau / Psy / Vol / Sol'),
(25, '258', 'Gobou', '0.4 m', '7.6 kg', 'Poisson', 'Torrent', 'Eau ', 'Plante / Electrik'),
(26, '259', 'Flobio', '0.7 m', '28.0 kg ', 'Poisson', 'Torrent', 'Eau / Sol ', 'Plante'),
(27, '260', 'Laggron', '1.5 m', '81.9 kg ', 'Poisson', 'Torrent', 'Eau / Sol ', 'Plante'),
(28, '387', 'Tortipouss', '0.4 m', '10.2 kg', 'Minifeuille', 'Engrais', 'Plante', 'Feu / Vol / Glace / Poison / Insecte'),
(29, '388', 'Boskara', '1.1 m', '97.0 kg', 'Bosquet', 'Engrais', 'Plante', 'Feu / Vol / Glace / Poison / Insecte'),
(30, '389', 'Torterra', '2.2 m ', '310.0 kg ', 'Continent', 'Engrais', 'Plante / Sol', 'Feu / Vol / Insecte / Glace'),
(31, '390 ', 'Ouisticram', '0.5 m', '6.2 kg', 'Chimpanze', 'Brasier', 'Feu ', 'Eau / Sol / Roche'),
(32, '391', 'Chimpenfeu', '0.9 m', '22.0 kg', 'Garnement', 'Brasier', 'Feu / Combat', 'Eau / Psy / Vol / Sol'),
(33, '392', 'Simiabraz', '1.2 m', '55.0 kg', 'Flamme', 'Brasier', 'Feu / Combat', 'Eau / Psy / Vol / Sol'),
(34, '393', 'Tiplouf', '0.4 m', '5.2 kg', 'Pinguoin', 'Torrent', 'Eau ', 'Plante / Electrik'),
(35, '394', 'Prinplouf', '0.8 m', '23.0 kg', 'Pinguoin', 'Torrent', 'Eau', 'Plante / Electrik'),
(36, '395', 'Pingoleon', '1.7 m', ' 84.5 kg ', 'Empereur', 'Torrent', 'Eau / Acier', 'Electrik / Combat / Sol'),
(37, '495', 'Vipelierre', '0.6 m', '8.1', 'Serpenterbe', 'Engrais', 'Plante', 'Feu / Vol / Glace / Poison / Insecte'),
(38, '496', 'Lianaja', '0.8 m', '16.0 kg ', 'Serpenterbe', 'Engrais', 'Plante', 'Feu / Vol / Glace / Poison / Insecte'),
(39, '497', 'Majaspic', '3.3 m ', '63.0 kg ', 'Majestueux', 'Engrais', 'Plante ', 'Feu / Vol / Glace / Poison / Insecte'),
(40, '498', 'Gruikui', '0.5 m', '9.9 kg', ' Cochon feu', 'Brasier', 'Feu', 'Eau / Sol/ Roche'),
(41, '499', 'Grotichon', '1.0 m ', '55.5 kg ', 'Cochon feu ', 'Brasier ', 'Feu / Combat', 'Eau / Psy / Vol / Sol'),
(42, '500', 'Roitiflam', '1.6 m ', '150.0 kg ', 'Cochon Feu', 'Brasier', 'Feu / Combat ', 'Eau / Psy / Vol / Sol'),
(43, '501 ', 'Moustillon', '0.5 m ', '5.9 kg ', 'Loutre', 'Torrent', 'Eau ', 'Plante / Electrik'),
(44, '502', 'Mateloutre', '0.8 m ', '24.5 kg ', 'Loutre', 'Torrent', 'Eau ', 'Plante / Electrik'),
(45, '503', 'Clamiral', '1.5 m ', '94.6 kg ', 'Dignitaire', 'Torrent', 'Eau ', 'Plante / Electrik'),
(48, '650 ', 'Marisson', '0.4 m ', '9.0 kg ', 'Boque ', 'Engrais', 'Plante', 'Feu / Vol / Glace / Poison / Insecte'),
(49, '651', 'Boguerisse', '0.7 m ', '29.0 kg ', 'Epinearmure', 'Engrais', 'Plante', 'Feu / Vol/ Glace / Poison / Insecte '),
(52, '652', 'Blindepique', '1.6 m ', '90.0 kg ', 'Epinearmure', 'Engrais', 'Plante / Combat', 'Feu / Psy / Vol / Glace / Poison / Fee'),
(53, '653', 'Feunnec', '0.4 m ', '9.4 kg ', 'Renard', 'Brasier', 'Feu', 'Eau / Sol / Roche'),
(54, '654', 'Roussil', '1.0 m', '14.5 kg', 'Renard', 'Brasier', 'Feu ', 'Eau / Sol / Roche'),
(55, '655', 'Goupelin', '1.5 m', '39.0 kg ', 'Renard', 'Brasier', 'Feu / Psy', 'Spectre / Tenebres / Sol / Eau  / Roche'),
(56, '656 ', 'Grenousse', '0.3 m ', '7.0 kg', 'Crapobulle', 'Torrent', 'Eau ', 'Plante / Electrik'),
(57, '657', 'Croaporal', '0.6 m ', '10.9 kg', 'Crapobulle', 'Torrent', 'Eau', 'Plante / Electrik'),
(60, '658', 'Amphinobie', '1.5 m', '40.0 kg', 'Ninja ', 'Synergie', 'Eau / Tenebres', 'Fee / Plante / Electrik / Combat / Insecte'),
(61, '722', 'Brindibou', '0.3 m', '1.5 kg ', 'Plumefeuille', 'Engrais', 'Plante / Vol', 'Feu / Vol / Glace / Poison / Roche '),
(62, '723', 'Effleche', '0.7 m', '16.0 kg ', 'Plumeaceree', 'Engrais', 'Plante / Vol', 'Feu / Vol / Glace / Poison / Roche '),
(63, '724', 'Archeduc', '1.6 m', '36.6 kg', 'Plumefleche', 'Engrais', 'Plante / Sprectre', 'Spectre/ Tenebres / Feu /Vol / Glace'),
(64, '725', 'Flamaiou', '0.4 m', '4.3 kg ', 'Chat feu ', 'Brasier', 'Geu ', 'Eau / Sol / Roche '),
(65, '726', 'Matoufeu ', '0.7 m ', '25.0 kg ', 'Chat feu ', 'Brasier ', 'Feu ', 'Eau / Sol /Roche'),
(66, '727', 'Felinferno', '1.8 m ', '83.0 kg', 'Chat Catcheur ', 'Brasier', 'Feu / Tenebres', 'Eau / Sol / Combat / Roche'),
(67, '728', 'Otaquin ', '0.4 m ', '7.5 kg ', 'Otarie ', 'Torrent', 'Eau ', 'Plante / Electrik'),
(68, '729 ', 'Otarlette', '0.6 m', '17.5 kg ', 'Starlette', 'Torrent', 'Eau ', 'Plante / Electrik'),
(69, '730 ', 'Oratoria', '1.8 m ', '44.0 kg ', 'Soliste ', 'Torrent', 'Eau / Fee', 'Plante / Electrik / Poison'),
(70, '810', 'Ouistempo', '0.3 m', '5.0 kg ', 'Chimpanze', 'Engrais', 'Plante', 'Feu / Vol / Glace / Poison / Insecte'),
(71, '811', 'Badabouin', '0.7 m', '14.0 kg ', 'Percussion', 'Engrais', 'Plante ', 'Feu / Vol / Glace / Poison / Insecte'),
(72, '812', 'Gorythmic', '2.1 m ', '90.0 kg ', 'Batteur', 'Engrais ', 'Plante ', 'Feu / Vol / Glace / Poison / Insecte'),
(73, '813', 'Flambino ', '0.3 m ', '4.5 kg ', 'Lapin', 'Brasier ', 'feu ', ' Eau / Sol / Roche '),
(74, '814', 'Lapyro', '0.6 m ', '9.0 kg ', 'Lapin', 'Brasier ', 'Feu ', 'Eau / Sol / Roche '),
(75, '815', 'Pyrobut', '1.4 m ', '33.0 kg ', 'Buteur ', 'Brasier ', 'Feu ', 'Eau / Sol / Roche '),
(76, '816', 'Larmeleon', '0.3 m ', '4.0 kg ', 'Lezardeau', 'Torrent ', 'Eau ', 'Plante / Electrik'),
(77, '817', 'Arrozard', '0.7 m ', '11.5 kg ', 'Lezardeau', 'Torrent', 'Eau ', 'Plante / Electrik'),
(78, '818 ', 'Lezargus', '1.9 m ', '42.5 kg ', 'Agent secret ', 'Torrent', 'Eau ', 'Plante / Electrik'),
(79, '906', 'Poussacha', '0.4 m', '4.1 kg ', 'Chat plante ', 'Engrais ', 'Plante', 'Feu / Vol / Glace / Poison / Insecte'),
(82, '907 ', 'Matourgeon', '0.9 m', '12.2 kg ', 'Chat plante', 'Engrais', 'Plante ', 'Feu / Vol / Glace / Poison / Insecte '),
(83, '908', 'Miascarade', '1.5 m', '31.2 kg ', 'Magicien', 'Engrais ', 'Plante / Tenebres', 'Glace / Feu / Vol / Poison / Combat /Fee / Insecte'),
(84, '909', 'Chochodile', '0.4 m ', '9.8 kg ', 'Croco feu ', 'Brasier', 'Feu ', 'Eau / Sol / Roche '),
(85, '910 ', 'Crocogril', '1.0 m ', '30.7 kg ', 'Croco feu', 'Brasier', 'Feu ', 'Eau / Sol / Roche '),
(86, '911', 'Flamigator', '1.6 m ', '326 kg ', 'Chanteur', 'Brasier', 'Feu / Spectre  ', 'Eau / Spectre / Sol / Tenebres / Roche'),
(87, '912 ', 'Coiffeton', '0.5 m', '6.1 kg', 'Caneton ', 'Torrent', 'Eau ', 'Plante / Electrik'),
(88, '913', 'Canarbello', '1.2 m ', '21.5 kg ', 'Leçon', 'Torrent', 'Eau ', 'Plante / Electrik'),
(89, '914', 'Palmaval', '1.8 m', '61.9 kg ', 'Danseur ', 'Torrent', 'Eau / Combat ', 'Fee / Plante / Vol / Psy / Electrik');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
