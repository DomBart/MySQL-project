-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017 m. Kov 21 d. 15:59
-- Server version: 10.1.9-MariaDB
-- PHP Version: 7.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `autonuoma_min`
--

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `pavyzdys_aiksteles`
--

CREATE TABLE `pavyzdys_aiksteles` (
  `id` int(11) NOT NULL,
  `pavadinimas` varchar(40) NOT NULL,
  `adresas` text NOT NULL,
  `fk_miestas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sukurta duomenų kopija lentelei `pavyzdys_aiksteles`
--

INSERT INTO `pavyzdys_aiksteles` (`id`, `pavadinimas`, `adresas`, `fk_miestas`) VALUES
(1, 'Vilniaus oro uostas', '', 1),
(2, 'Kauno oro uostas', '', 2),
(3, 'Vilniaus geležinkelio stotis', '', 1),
(4, 'Kauno geležinkelio stotis', '', 2),
(5, 'Palangos oro uostas', '', 3);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `pavyzdys_automobiliai`
--

CREATE TABLE `pavyzdys_automobiliai` (
  `id` int(11) NOT NULL,
  `valstybinis_nr` char(6) NOT NULL,
  `pagaminimo_data` date NOT NULL,
  `rida` int(11) NOT NULL,
  `radijas` tinyint(1) NOT NULL,
  `grotuvas` tinyint(1) NOT NULL,
  `kondicionierius` tinyint(1) NOT NULL,
  `vietu_skaicius` smallint(6) NOT NULL,
  `registravimo_data` date NOT NULL,
  `verte` decimal(8,2) NOT NULL,
  `pavaru_deze` int(11) NOT NULL,
  `degalu_tipas` int(11) NOT NULL,
  `kebulas` int(11) NOT NULL,
  `bagazo_dydis` int(11) NOT NULL,
  `busena` int(11) DEFAULT NULL,
  `fk_modelis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sukurta duomenų kopija lentelei `pavyzdys_automobiliai`
--

INSERT INTO `pavyzdys_automobiliai` (`id`, `valstybinis_nr`, `pagaminimo_data`, `rida`, `radijas`, `grotuvas`, `kondicionierius`, `vietu_skaicius`, `registravimo_data`, `verte`, `pavaru_deze`, `degalu_tipas`, `kebulas`, `bagazo_dydis`, `busena`, `fk_modelis`) VALUES
(1, 'CBA989', '2016-01-29', 120000, 1, 1, 1, 5, '2016-02-21', '15000.00', 2, 1, 8, 7, 2, 11),
(2, 'GBA545', '2015-12-21', 15693, 1, 1, 1, 5, '2016-01-01', '15000.00', 1, 1, 2, 4, 2, 17),
(4, 'ABK165', '2009-01-01', 12000, 1, 0, 0, 5, '2010-01-01', '12000.00', 2, 3, 8, 7, 1, 3),
(5, 'ABS365', '2015-06-07', 1000, 1, 1, 0, 5, '2016-01-01', '10000.00', 1, 3, 2, 2, 1, 2),
(6, 'DFG989', '2013-01-01', 23654, 1, 1, 1, 5, '2013-06-01', '18000.00', 1, 3, 3, 7, 1, 1),
(7, 'GDF698', '2014-02-04', 35000, 1, 1, 1, 5, '2014-06-15', '13000.00', 2, 1, 8, 6, 1, 10),
(8, 'GCB699', '2013-12-10', 25000, 1, 1, 1, 4, '2014-01-05', '14500.00', 2, 1, 2, 5, 1, 12),
(9, 'FDR654', '2013-06-05', 18659, 1, 1, 1, 4, '2013-09-08', '16500.00', 1, 3, 2, 5, 1, 21),
(10, 'DRF546', '2011-05-06', 85600, 1, 1, 1, 5, '2011-07-15', '4500.00', 2, 1, 3, 7, 1, 11),
(11, 'FDS656', '2011-12-10', 98655, 1, 0, 1, 4, '2012-01-16', '4000.00', 1, 1, 2, 5, 2, 12),
(12, 'DHN356', '2011-01-01', 298606, 1, 0, 0, 5, '2011-03-05', '4500.00', 2, 3, 8, 7, 1, 3);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `pavyzdys_auto_busenos`
--

CREATE TABLE `pavyzdys_auto_busenos` (
  `ID` int(11) NOT NULL,
  `name` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sukurta duomenų kopija lentelei `pavyzdys_auto_busenos`
--

INSERT INTO `pavyzdys_auto_busenos` (`ID`, `name`) VALUES
(1, 'laisvas'),
(2, 'išnuomotas'),
(3, 'remonte'),
(4, 'tikrinamas');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `pavyzdys_darbuotojai`
--

CREATE TABLE `pavyzdys_darbuotojai` (
  `tabelio_nr` char(6) NOT NULL,
  `vardas` varchar(20) NOT NULL,
  `pavarde` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sukurta duomenų kopija lentelei `pavyzdys_darbuotojai`
--

INSERT INTO `pavyzdys_darbuotojai` (`tabelio_nr`, `vardas`, `pavarde`) VALUES
('A56568', 'Mantas', 'Titas'),
('A6564d', 'Tomas', 'Kasauskas'),
('A65656', 'Marta', 'Gasiulytė'),
('A6575D', 'Nerijus', 'Linkus'),
('A65DFG', 'Marius', 'Kasparas'),
('A665F', 'Aurimas', 'Nikas'),
('A698GF', 'Tadas', 'Linikas'),
('A6998d', 'Greta', 'Lingytė');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `pavyzdys_degalu_tipai`
--

CREATE TABLE `pavyzdys_degalu_tipai` (
  `id` int(11) NOT NULL,
  `name` char(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sukurta duomenų kopija lentelei `pavyzdys_degalu_tipai`
--

INSERT INTO `pavyzdys_degalu_tipai` (`id`, `name`) VALUES
(1, 'benzinas'),
(2, 'benzinas/elektra'),
(3, 'dyzelis'),
(4, 'dujos'),
(5, 'elektra');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `pavyzdys_kebulu_tipai`
--

CREATE TABLE `pavyzdys_kebulu_tipai` (
  `id` int(11) NOT NULL,
  `name` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sukurta duomenų kopija lentelei `pavyzdys_kebulu_tipai`
--

INSERT INTO `pavyzdys_kebulu_tipai` (`id`, `name`) VALUES
(1, 'sedanas'),
(2, 'hečbekas'),
(3, 'universalas'),
(4, 'visureigis'),
(5, 'pikapas'),
(6, 'coupe'),
(7, 'kabrioletas'),
(8, 'vienatūris');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `pavyzdys_klientai`
--

CREATE TABLE `pavyzdys_klientai` (
  `asmens_kodas` char(11) NOT NULL,
  `vardas` varchar(20) NOT NULL,
  `pavarde` varchar(20) NOT NULL,
  `gimimo_data` date NOT NULL,
  `telefonas` varchar(20) NOT NULL,
  `epastas` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sukurta duomenų kopija lentelei `pavyzdys_klientai`
--

INSERT INTO `pavyzdys_klientai` (`asmens_kodas`, `vardas`, `pavarde`, `gimimo_data`, `telefonas`, `epastas`) VALUES
('3729898989', 'Giedrius', 'Mikelionis', '1972-05-04', '877777771', ''),
('3746656464', 'Jonas', 'Narkevičius', '1974-09-09', '8999999999', ''),
('3756565656', 'Jonas', 'Gervė', '1974-05-05', '855555555', ''),
('3804556464', 'Romas', 'Aušra', '1980-01-05', '811111111', ''),
('3806565656', 'Justinas', 'Tarasevičius', '1980-05-05', '855555555', ''),
('3815656449', 'Tadas', 'Mikalajūnas', '1982-02-02', '8655655555', ''),
('3816565656', 'Antanas', 'Narbutas', '1981-01-01', '8111111111', ''),
('391898899', 'Artūras', 'Mikaila', '1991-01-01', '866666666', ''),
('39456465466', 'Jonas', 'Grigas', '2015-01-01', '865665674', '333@333.lt'),
('3953656325', 'Marius', 'Lankauskas', '1995-01-01', '1456456455', ''),
('3956565656', 'Tadas', 'Linkus', '1995-02-05', '865665555', ''),
('39865641111', 'Marius', 'Linksmuolis', '1998-01-01', '8961111111', ''),
('4656656556', 'Aušra', 'Titienė', '1965-04-04', '8444444444', ''),
('47059898998', 'Asta', 'Laurinkienė', '1970-06-06', '866666664', ''),
('4723565599', 'Violeta', 'Masaitienė', '1972-07-07', '874444444', ''),
('4760205060', 'Janina', 'Laucienė', '1976-05-06', '822222222', ''),
('4789898989', 'Adelė', 'Kasauskienė', '1978-02-02', '833333333', ''),
('480156446', 'Renata', 'Narvydienė', '1980-02-02', '811111111', ''),
('48565656566', 'Sigita', 'Zinevičienė', '1985-02-02', '822222222', ''),
('4886565656', 'Karolina', 'Zinkutė', '1988-05-05', '833333333', '');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `pavyzdys_lagaminai`
--

CREATE TABLE `pavyzdys_lagaminai` (
  `id` int(11) NOT NULL,
  `name` char(29) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sukurta duomenų kopija lentelei `pavyzdys_lagaminai`
--

INSERT INTO `pavyzdys_lagaminai` (`id`, `name`) VALUES
(1, '1_mažas_lagaminas'),
(2, '2_maži_lagaminai'),
(3, '1_didelis_lagaminas'),
(4, '2_dideli_lagaminai'),
(5, '1_mažas_ir_1didelis_lagaminas'),
(6, '3_dideli_lagaminai'),
(7, '4_dideli_lagaminai');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `pavyzdys_markes`
--

CREATE TABLE `pavyzdys_markes` (
  `pavadinimas` varchar(20) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sukurta duomenų kopija lentelei `pavyzdys_markes`
--

INSERT INTO `pavyzdys_markes` (`pavadinimas`, `id`) VALUES
('Renault', 1),
('Opel', 2),
('Škoda', 3);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `pavyzdys_miestai`
--

CREATE TABLE `pavyzdys_miestai` (
  `id` int(11) NOT NULL,
  `pavadinimas` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sukurta duomenų kopija lentelei `pavyzdys_miestai`
--

INSERT INTO `pavyzdys_miestai` (`id`, `pavadinimas`) VALUES
(1, 'Vilnius'),
(2, 'Kaunas'),
(3, 'Palanga');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `pavyzdys_modeliai`
--

CREATE TABLE `pavyzdys_modeliai` (
  `pavadinimas` varchar(20) NOT NULL,
  `id` int(11) NOT NULL,
  `fk_marke` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sukurta duomenų kopija lentelei `pavyzdys_modeliai`
--

INSERT INTO `pavyzdys_modeliai` (`pavadinimas`, `id`, `fk_marke`) VALUES
('Megane', 1, 1),
('Clio', 2, 1),
('Kangoo', 3, 1),
('Laguna Coupe', 4, 1),
('Master', 5, 1),
('Twingo', 6, 1),
('Twizy', 7, 1),
('Symbol', 8, 1),
('Koleos', 9, 1),
('Meriva', 10, 2),
('Astra', 11, 2),
('Corsa', 12, 2),
('Zafira', 13, 2),
('Omega', 14, 2),
('Calibra', 15, 2),
('Vectra', 16, 2),
('Yeti', 17, 3),
('Roomster', 18, 3),
('Superb', 19, 3),
('Rapid', 20, 3),
('Fabia', 21, 3),
('Joyster', 23, 3);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `pavyzdys_paslaugos`
--

CREATE TABLE `pavyzdys_paslaugos` (
  `id` int(11) NOT NULL,
  `pavadinimas` varchar(40) NOT NULL,
  `aprasymas` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sukurta duomenų kopija lentelei `pavyzdys_paslaugos`
--

INSERT INTO `pavyzdys_paslaugos` (`id`, `pavadinimas`, `aprasymas`) VALUES
(1, 'Draudimas vagystės atveju', ''),
(2, 'Draudimas autoįvykio atveju', ''),
(3, 'Navigacijos sistema', NULL),
(4, 'Vaikiška kėdutė', NULL),
(5, 'Tvirtinimas slidėms', NULL),
(6, 'Papildoma bagažinė', NULL),
(7, 'Skubi pagalba kelyje', ''),
(8, 'Keleivių draudimas', 'Keleivių draudimas nuo nelaimingų atsitikimų.'),
(9, 'Papildomas vairuotojas', ''),
(10, 'Neribota rida', ''),
(11, 'Tvirtinimas dviračiams', '');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `pavyzdys_paslaugu_kainos`
--

CREATE TABLE `pavyzdys_paslaugu_kainos` (
  `fk_paslauga` int(11) NOT NULL,
  `galioja_nuo` date NOT NULL,
  `galioja_iki` date DEFAULT NULL,
  `kaina` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sukurta duomenų kopija lentelei `pavyzdys_paslaugu_kainos`
--

INSERT INTO `pavyzdys_paslaugu_kainos` (`fk_paslauga`, `galioja_nuo`, `galioja_iki`, `kaina`) VALUES
(11, '2015-08-01', NULL, '15.00'),
(7, '2015-10-01', NULL, '25.00'),
(8, '2015-10-01', NULL, '30.00'),
(9, '2015-10-15', NULL, '10.00'),
(10, '2015-11-11', NULL, '15.00'),
(1, '2016-01-01', NULL, '45.00'),
(8, '2016-01-01', NULL, '25.00'),
(1, '2016-02-01', NULL, '15.00'),
(2, '2016-02-01', NULL, '24.00'),
(3, '2016-02-01', NULL, '45.00'),
(4, '2016-02-01', NULL, '32.00'),
(5, '2016-02-01', NULL, '27.00'),
(6, '2016-02-01', NULL, '26.00'),
(1, '2016-03-01', NULL, '18.00'),
(2, '2016-03-01', NULL, '25.00'),
(1, '2016-04-01', NULL, '17.00');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `pavyzdys_pavaru_dezes`
--

CREATE TABLE `pavyzdys_pavaru_dezes` (
  `id` int(11) NOT NULL,
  `name` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sukurta duomenų kopija lentelei `pavyzdys_pavaru_dezes`
--

INSERT INTO `pavyzdys_pavaru_dezes` (`id`, `name`) VALUES
(1, 'automatinė'),
(2, 'mechaninė');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `pavyzdys_sutarties_busenos`
--

CREATE TABLE `pavyzdys_sutarties_busenos` (
  `id` int(11) NOT NULL,
  `name` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sukurta duomenų kopija lentelei `pavyzdys_sutarties_busenos`
--

INSERT INTO `pavyzdys_sutarties_busenos` (`id`, `name`) VALUES
(1, 'užsakyta'),
(2, 'patvirtinta'),
(3, 'nutraukta'),
(4, 'užbaigta');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `pavyzdys_sutartys`
--

CREATE TABLE `pavyzdys_sutartys` (
  `nr` int(11) NOT NULL,
  `sutarties_data` date NOT NULL,
  `nuomos_data_laikas` datetime NOT NULL,
  `planuojama_grazinimo_data_laikas` datetime NOT NULL,
  `faktine_grazinimo_data_laikas` datetime DEFAULT NULL,
  `pradine_rida` int(11) NOT NULL,
  `galine_rida` int(11) DEFAULT NULL,
  `kaina` decimal(8,2) NOT NULL,
  `degalu_kiekis_paimant` smallint(6) NOT NULL,
  `dagalu_kiekis_grazinus` smallint(6) DEFAULT NULL,
  `busena` int(11) NOT NULL,
  `fk_klientas` char(11) NOT NULL,
  `fk_darbuotojas` char(11) NOT NULL,
  `fk_automobilis` int(11) NOT NULL,
  `fk_grazinimo_vieta` int(11) NOT NULL,
  `fk_paemimo_vieta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sukurta duomenų kopija lentelei `pavyzdys_sutartys`
--

INSERT INTO `pavyzdys_sutartys` (`nr`, `sutarties_data`, `nuomos_data_laikas`, `planuojama_grazinimo_data_laikas`, `faktine_grazinimo_data_laikas`, `pradine_rida`, `galine_rida`, `kaina`, `degalu_kiekis_paimant`, `dagalu_kiekis_grazinus`, `busena`, `fk_klientas`, `fk_darbuotojas`, `fk_automobilis`, `fk_grazinimo_vieta`, `fk_paemimo_vieta`) VALUES
(1, '2016-01-05', '2016-01-20 10:00:00', '2016-01-27 10:00:00', '2016-01-27 09:00:00', 15889, 16542, '170.00', 55, 57, 4, '47059898998', 'A65656', 4, 2, 1),
(2, '2016-01-05', '2016-01-20 10:00:00', '2016-01-27 10:00:00', '2016-01-27 09:00:00', 15889, 16542, '170.00', 55, 57, 4, '47059898998', 'A65656', 4, 2, 1),
(3, '2016-01-01', '2016-01-20 02:00:00', '2016-01-20 04:00:00', '0000-00-00 00:00:00', 125000, 0, '55.00', 50, 0, 1, '3956565656', 'A56568', 4, 1, 1),
(4, '2016-01-01', '2016-01-01 00:00:00', '2016-01-08 00:00:00', '0000-00-00 00:00:00', 15000, 0, '100.00', 50, 0, 1, '3953656325', 'A665F', 4, 2, 1),
(5, '2016-01-01', '2016-01-01 00:00:00', '2016-01-03 00:00:00', '0000-00-00 00:00:00', 10000, 0, '120.00', 50, 0, 1, '48565656566', 'A6998d', 4, 2, 1),
(6, '2016-02-01', '2016-02-02 00:00:00', '2016-02-05 00:00:00', '2016-02-05 00:00:00', 154656, 155656, '155.00', 40, 40, 2, '391898899', 'A665F', 10, 2, 1),
(7, '2016-01-02', '2016-01-15 00:00:00', '2016-01-22 00:00:00', '2016-01-22 00:00:00', 35698, 37608, '135.00', 45, 45, 2, '48565656566', 'A56568', 7, 2, 2),
(8, '2016-01-07', '2016-01-20 00:00:00', '2016-01-30 00:00:00', '2016-01-30 00:00:00', 45656, 47016, '145.00', 50, 50, 1, '4656656556', 'A65DFG', 11, 1, 1),
(9, '2016-01-19', '2016-01-15 00:00:00', '2016-01-28 00:00:00', '2016-01-28 00:00:00', 56466, 57656, '165.00', 35, 35, 1, '4760205060', 'A6575D', 9, 2, 1),
(10, '2016-01-20', '2016-01-20 00:00:00', '2016-01-31 00:00:00', '2016-01-31 00:00:00', 35689, 37656, '129.00', 48, 48, 3, '3956565656', 'A65656', 10, 4, 4),
(11, '2016-01-17', '2016-01-28 00:00:00', '2016-02-06 00:00:00', '2016-01-06 00:00:00', 78998, 81545, '189.00', 50, 50, 4, '3815656449', 'A6998d', 4, 4, 2),
(12, '2016-01-18', '2016-01-27 00:00:00', '2016-01-31 00:00:00', '2016-01-31 00:00:00', 45697, 47799, '79.00', 35, 35, 4, '3746656464', 'A6564d', 7, 2, 2),
(13, '2016-01-04', '2016-01-11 00:00:00', '2016-01-18 00:00:00', '2016-01-18 00:00:00', 68987, 70155, '136.00', 50, 50, 4, '3729898989', 'A6998d', 2, 4, 3),
(14, '2016-01-11', '2016-01-19 00:00:00', '2016-01-26 00:00:00', '2016-01-26 00:00:00', 46364, 48615, '164.00', 35, 35, 4, '3746656464', 'A698GF', 5, 3, 4),
(15, '2016-01-20', '2016-01-27 00:00:00', '2016-02-03 00:00:00', '2016-02-10 00:00:00', 64898, 66598, '135.00', 46, 46, 4, '3729898989', 'A6575D', 1, 3, 3),
(16, '2016-01-18', '2016-01-30 00:00:00', '2016-02-18 00:00:00', '0000-00-00 00:00:00', 45677, 0, '167.00', 38, 0, 1, '4723565599', 'A65DFG', 9, 2, 2),
(17, '2016-01-12', '2016-01-20 00:00:00', '2016-01-28 00:00:00', '2016-01-28 00:00:00', 64646, 65494, '178.00', 38, 38, 1, '3756565656', 'A65DFG', 8, 5, 5),
(18, '2016-01-20', '2016-01-14 00:00:00', '2016-01-21 00:00:00', '2016-01-21 00:00:00', 34645, 36454, '164.00', 48, 48, 2, '3804556464', 'A698GF', 6, 4, 4),
(19, '2016-01-26', '2016-01-28 00:00:00', '2016-02-28 00:00:00', '0000-00-00 00:00:00', 69878, 0, '256.00', 46, 0, 1, '3756565656', 'A6575D', 7, 4, 3),
(20, '2016-01-12', '2016-01-12 00:00:00', '2016-01-28 00:00:00', '2016-01-28 00:00:00', 64978, 65699, '134.00', 38, 38, 2, '3756565656', 'A65656', 4, 3, 4),
(21, '2016-01-27', '2016-01-30 00:00:00', '2016-02-06 00:00:00', '2016-02-06 00:00:00', 34989, 36987, '132.00', 39, 42, 1, '3953656325', 'A6575D', 1, 2, 3),
(22, '2016-01-19', '2016-01-20 00:00:00', '2016-01-27 00:00:00', '2016-01-27 00:00:00', 34565, 36545, '134.00', 51, 51, 3, '3806565656', 'A65DFG', 6, 3, 3),
(50, '2016-02-06', '2016-01-06 01:00:00', '2016-01-14 01:00:00', '2016-01-13 01:00:00', 100, 150, '12.00', 40, 39, 1, '3729898989', 'A56568', 2, 5, 2);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `pavyzdys_uzsakytos_paslaugos`
--

CREATE TABLE `pavyzdys_uzsakytos_paslaugos` (
  `fk_sutartis` int(11) NOT NULL,
  `fk_kaina_galioja_nuo` date NOT NULL,
  `fk_paslauga` int(11) NOT NULL,
  `kiekis` smallint(6) NOT NULL,
  `kaina` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sukurta duomenų kopija lentelei `pavyzdys_uzsakytos_paslaugos`
--

INSERT INTO `pavyzdys_uzsakytos_paslaugos` (`fk_sutartis`, `fk_kaina_galioja_nuo`, `fk_paslauga`, `kiekis`, `kaina`) VALUES
(1, '2016-01-01', 1, 1, '45.00'),
(1, '2016-03-01', 2, 1, '25.00'),
(2, '2016-01-01', 1, 1, '45.00'),
(2, '2016-02-01', 4, 2, '32.00'),
(3, '2016-02-01', 1, 1, '15.00'),
(4, '2016-02-01', 1, 1, '15.00'),
(4, '2016-02-01', 2, 1, '24.00'),
(4, '2016-02-01', 5, 1, '27.00'),
(5, '2016-02-01', 1, 5, '15.00'),
(5, '2016-02-01', 4, 2, '32.00'),
(6, '2016-01-01', 1, 1, '45.00'),
(7, '2015-10-01', 7, 1, '25.00'),
(8, '2016-03-01', 2, 1, '25.00'),
(9, '2016-02-01', 5, 1, '27.00'),
(11, '2016-02-01', 1, 1, '15.00'),
(11, '2016-02-01', 2, 1, '24.00'),
(11, '2016-02-01', 3, 1, '45.00'),
(11, '2016-02-01', 4, 2, '32.00'),
(12, '2016-02-01', 5, 2, '27.00'),
(12, '2015-10-01', 7, 1, '25.00'),
(13, '2016-02-01', 4, 1, '32.00'),
(15, '2016-02-01', 3, 1, '45.00'),
(15, '2016-02-01', 5, 1, '27.00'),
(19, '2016-03-01', 1, 1, '18.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pavyzdys_aiksteles`
--
ALTER TABLE `pavyzdys_aiksteles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkc_vieta` (`fk_miestas`);

--
-- Indexes for table `pavyzdys_automobiliai`
--
ALTER TABLE `pavyzdys_automobiliai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pavaru_deze` (`pavaru_deze`),
  ADD KEY `degalu_tipas` (`degalu_tipas`),
  ADD KEY `kebulas` (`kebulas`),
  ADD KEY `bagazo_dydis` (`bagazo_dydis`),
  ADD KEY `busena` (`busena`),
  ADD KEY `fkc_modelis` (`fk_modelis`);

--
-- Indexes for table `pavyzdys_auto_busenos`
--
ALTER TABLE `pavyzdys_auto_busenos`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `pavyzdys_darbuotojai`
--
ALTER TABLE `pavyzdys_darbuotojai`
  ADD PRIMARY KEY (`tabelio_nr`);

--
-- Indexes for table `pavyzdys_degalu_tipai`
--
ALTER TABLE `pavyzdys_degalu_tipai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pavyzdys_kebulu_tipai`
--
ALTER TABLE `pavyzdys_kebulu_tipai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pavyzdys_klientai`
--
ALTER TABLE `pavyzdys_klientai`
  ADD PRIMARY KEY (`asmens_kodas`);

--
-- Indexes for table `pavyzdys_lagaminai`
--
ALTER TABLE `pavyzdys_lagaminai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pavyzdys_markes`
--
ALTER TABLE `pavyzdys_markes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pavyzdys_miestai`
--
ALTER TABLE `pavyzdys_miestai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pavyzdys_modeliai`
--
ALTER TABLE `pavyzdys_modeliai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkc_marke` (`fk_marke`);

--
-- Indexes for table `pavyzdys_paslaugos`
--
ALTER TABLE `pavyzdys_paslaugos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pavyzdys_paslaugu_kainos`
--
ALTER TABLE `pavyzdys_paslaugu_kainos`
  ADD PRIMARY KEY (`galioja_nuo`,`fk_paslauga`),
  ADD KEY `fkc_paslauga` (`fk_paslauga`);

--
-- Indexes for table `pavyzdys_pavaru_dezes`
--
ALTER TABLE `pavyzdys_pavaru_dezes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pavyzdys_sutarties_busenos`
--
ALTER TABLE `pavyzdys_sutarties_busenos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pavyzdys_sutartys`
--
ALTER TABLE `pavyzdys_sutartys`
  ADD PRIMARY KEY (`nr`),
  ADD KEY `busena` (`busena`),
  ADD KEY `fkc_nuomininkas` (`fk_klientas`),
  ADD KEY `fkc_tvirtinantis_darbuotojas` (`fk_darbuotojas`),
  ADD KEY `fkc_automobilis` (`fk_automobilis`),
  ADD KEY `fkc_grazinimo_vieta` (`fk_grazinimo_vieta`),
  ADD KEY `fkc_paemimo_vieta` (`fk_paemimo_vieta`);

--
-- Indexes for table `pavyzdys_uzsakytos_paslaugos`
--
ALTER TABLE `pavyzdys_uzsakytos_paslaugos`
  ADD PRIMARY KEY (`fk_sutartis`,`fk_paslauga`,`fk_kaina_galioja_nuo`),
  ADD KEY `fkc_paslaugos_kaina` (`fk_kaina_galioja_nuo`,`fk_paslauga`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pavyzdys_aiksteles`
--
ALTER TABLE `pavyzdys_aiksteles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pavyzdys_automobiliai`
--
ALTER TABLE `pavyzdys_automobiliai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `pavyzdys_auto_busenos`
--
ALTER TABLE `pavyzdys_auto_busenos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pavyzdys_markes`
--
ALTER TABLE `pavyzdys_markes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pavyzdys_modeliai`
--
ALTER TABLE `pavyzdys_modeliai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `pavyzdys_paslaugos`
--
ALTER TABLE `pavyzdys_paslaugos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `pavyzdys_sutartys`
--
ALTER TABLE `pavyzdys_sutartys`
  MODIFY `nr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- Apribojimai eksportuotom lentelėm
--

--
-- Apribojimai lentelei `pavyzdys_aiksteles`
--
ALTER TABLE `pavyzdys_aiksteles`
  ADD CONSTRAINT `fkc_vieta` FOREIGN KEY (`fk_miestas`) REFERENCES `pavyzdys_miestai` (`id`);

--
-- Apribojimai lentelei `pavyzdys_automobiliai`
--
ALTER TABLE `pavyzdys_automobiliai`
  ADD CONSTRAINT `fkc_modelis` FOREIGN KEY (`fk_modelis`) REFERENCES `pavyzdys_modeliai` (`id`),
  ADD CONSTRAINT `pavyzdys_automobiliai_ibfk_1` FOREIGN KEY (`pavaru_deze`) REFERENCES `pavyzdys_pavaru_dezes` (`id`),
  ADD CONSTRAINT `pavyzdys_automobiliai_ibfk_2` FOREIGN KEY (`degalu_tipas`) REFERENCES `pavyzdys_degalu_tipai` (`id`),
  ADD CONSTRAINT `pavyzdys_automobiliai_ibfk_3` FOREIGN KEY (`kebulas`) REFERENCES `pavyzdys_kebulu_tipai` (`id`),
  ADD CONSTRAINT `pavyzdys_automobiliai_ibfk_4` FOREIGN KEY (`bagazo_dydis`) REFERENCES `pavyzdys_lagaminai` (`id`),
  ADD CONSTRAINT `pavyzdys_automobiliai_ibfk_5` FOREIGN KEY (`busena`) REFERENCES `pavyzdys_auto_busenos` (`id`);

--
-- Apribojimai lentelei `pavyzdys_modeliai`
--
ALTER TABLE `pavyzdys_modeliai`
  ADD CONSTRAINT `fkc_marke` FOREIGN KEY (`fk_marke`) REFERENCES `pavyzdys_markes` (`id`);

--
-- Apribojimai lentelei `pavyzdys_paslaugu_kainos`
--
ALTER TABLE `pavyzdys_paslaugu_kainos`
  ADD CONSTRAINT `fkc_paslauga` FOREIGN KEY (`fk_paslauga`) REFERENCES `pavyzdys_paslaugos` (`id`);

--
-- Apribojimai lentelei `pavyzdys_sutartys`
--
ALTER TABLE `pavyzdys_sutartys`
  ADD CONSTRAINT `fkc_automobilis` FOREIGN KEY (`fk_automobilis`) REFERENCES `pavyzdys_automobiliai` (`id`),
  ADD CONSTRAINT `fkc_grazinimo_vieta` FOREIGN KEY (`fk_grazinimo_vieta`) REFERENCES `pavyzdys_aiksteles` (`id`),
  ADD CONSTRAINT `fkc_nuomininkas` FOREIGN KEY (`fk_klientas`) REFERENCES `pavyzdys_klientai` (`asmens_kodas`),
  ADD CONSTRAINT `fkc_paemimo_vieta` FOREIGN KEY (`fk_paemimo_vieta`) REFERENCES `pavyzdys_aiksteles` (`id`),
  ADD CONSTRAINT `fkc_tvirtinantis_darbuotojas` FOREIGN KEY (`fk_darbuotojas`) REFERENCES `pavyzdys_darbuotojai` (`tabelio_nr`),
  ADD CONSTRAINT `pavyzdys_sutartys_ibfk_1` FOREIGN KEY (`busena`) REFERENCES `pavyzdys_sutarties_busenos` (`id`);

--
-- Apribojimai lentelei `pavyzdys_uzsakytos_paslaugos`
--
ALTER TABLE `pavyzdys_uzsakytos_paslaugos`
  ADD CONSTRAINT `fkc_paslaugos_kaina` FOREIGN KEY (`fk_kaina_galioja_nuo`,`fk_paslauga`) REFERENCES `pavyzdys_paslaugu_kainos` (`galioja_nuo`, `fk_paslauga`),
  ADD CONSTRAINT `fkc_paslaugu_sutartis` FOREIGN KEY (`fk_sutartis`) REFERENCES `pavyzdys_sutartys` (`nr`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
