-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2019 at 10:40 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fotoprekes`
--

-- --------------------------------------------------------

--
-- Table structure for table `atmintine`
--

CREATE TABLE `atmintine` (
  `Gamyklinis_kodas` int(11) NOT NULL,
  `Tipas` varchar(20) COLLATE utf8_lithuanian_ci NOT NULL,
  `Talpa` int(11) NOT NULL,
  `Greičio_sertifikatas` varchar(20) COLLATE utf8_lithuanian_ci NOT NULL,
  `Kaina` int(11) NOT NULL,
  `fk_KREPŠELISid_KREPSELIS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `atmintine`
--

INSERT INTO `atmintine` (`Gamyklinis_kodas`, `Tipas`, `Talpa`, `Greičio_sertifikatas`, `Kaina`, `fk_KREPŠELISid_KREPSELIS`) VALUES
(10841, 'jtuffs4', 77, '0185-0139', 13, 437),
(11248, 'lmorena8', 65, '58930-061', 82, 167),
(12493, 'vhamnerc', 79, '59630-777', 71, 614),
(14314, 'lshurmerx', 7, '52959-088', 64, 523),
(14861, 'edownhamv', 52, '54868-5704', 100, 501),
(15091, 'bbillinge1c', 17, '54868-4438', 52, 856),
(15192, 'cwealleansj', 59, '65841-668', 29, 814),
(16527, 'garboine10', 98, '55154-1875', 77, 400),
(16873, 'lwalsomd', 41, '51079-902', 26, 867),
(17909, 'vorromw', 75, '47335-890', 83, 559),
(19087, 'hwatkiss1', 9, '16590-074', 96, 432),
(19858, 'lragless12', 90, '55316-852', 13, 897),
(20494, 'gtitterington1h', 29, '0404-0370', 12, 947),
(25457, 'cfrangellof', 56, '64117-984', 21, 138),
(25866, 'rcannings8', 39, '56062-500', 78, 298),
(26330, 'balelsandrowiczs', 46, '36987-1956', 33, 323),
(27538, 'tpysono', 73, '0591-0502', 66, 408),
(29548, 'lcamamill19', 94, '54868-3129', 48, 863),
(31022, 'aberingerg', 99, '0135-0225', 17, 949),
(34053, 'mbardnam4', 56, '54868-4741', 77, 242),
(35375, 'obroadway16', 80, '55289-384', 64, 424),
(38526, 'ldoggett11', 53, '60505-0191', 19, 745),
(38898, 'weaston15', 47, '59091-1001', 29, 354),
(39788, 'ochicchellib', 92, '0677-1980', 65, 887),
(40833, 'swestpfell', 91, '64760-408', 63, 985),
(41124, 'jburgene', 70, '10356-802', 31, 689),
(41551, 'tuttermarep', 95, '44363-1815', 66, 623),
(42313, 'dmetham3', 35, '52125-761', 100, 218),
(44087, 'dgarvan17', 57, '0363-0939', 26, 613),
(44740, 'aschulken9', 34, '53603-1007', 100, 986),
(46371, 'ndillon1a', 100, '61509-103', 49, 223),
(49555, 'bambergb', 29, '0904-6362', 71, 992),
(49865, 'psoanes1j', 18, '36800-055', 38, 514),
(51403, 'bthornber6', 61, '52533-161', 27, 331),
(51868, 'ytricker5', 90, '51060-064', 55, 803),
(52563, 'gbendixr', 64, '54973-2913', 81, 124),
(55570, 'tasser1e', 50, '55154-8294', 96, 723),
(59250, 'cdrengg', 41, '41250-449', 42, 956),
(59322, 'fmatis6', 50, '57691-565', 43, 703),
(60955, 'imarfelli', 12, '58411-174', 85, 839),
(60963, 'bshepeard14', 17, '50419-344', 22, 942),
(61002, 'gwoolvink', 37, '44224-1499', 51, 925),
(63114, 'jscripps7', 84, '55315-124', 68, 201),
(64313, 'ckinch9', 65, '55111-149', 11, 309),
(64316, 'pcudde1b', 3, '37808-801', 89, 197),
(64548, 'SD', 16, 'UTF-3', 35, 156),
(66330, 'dwakelin13', 50, '13537-305', 28, 918),
(67382, 'vkirkbridet', 10, '51668-401', 66, 923),
(69739, 'iosorio18', 91, '0904-5611', 11, 152),
(70358, 'jfidiand', 94, '66184-154', 66, 522),
(70884, 'carranh', 4, '60681-1703', 74, 172),
(74189, 'xbartulc', 28, '11822-3300', 62, 120),
(74736, 'bhunnawillu', 52, '11701-063', 70, 767),
(75524, 'rsnyderi', 5, '65044-1454', 53, 472),
(75604, 'lgolborne0', 51, '37012-612', 78, 297),
(75886, 'easlott7', 16, '49035-196', 22, 641),
(76538, 'fworsleye', 56, '63323-563', 46, 203),
(83204, 'mfenemore1f', 80, '65044-4707', 52, 641),
(83921, 'trozenzweig1d', 12, '52891-104', 75, 728),
(85223, 'eelvidge5', 50, '68016-050', 13, 273),
(85707, 'jgisbeyn', 66, '50436-7216', 37, 224),
(88027, 'cjoules1g', 80, '36800-213', 31, 119),
(88174, 'adettmara', 37, '50436-6733', 86, 734),
(89229, 'battrilla', 15, '16590-030', 74, 353),
(89446, 'ekarp1', 32, '58232-0723', 56, 108),
(90723, 'rbearcock3', 94, '24385-307', 46, 651),
(91279, 'ldishman0', 76, '55910-302', 27, 796),
(91745, 'eaikenheadm', 36, '59970-178', 30, 933),
(92435, 'gpetchz', 73, '25021-657', 67, 383),
(92864, 'rbraycottonh', 72, '53346-1353', 49, 338),
(94481, 'cpomfreyq', 49, '60760-124', 64, 290),
(95141, 'kgaddf', 90, '43598-348', 62, 523),
(96683, 'gpetrichat2', 73, '37808-369', 59, 322),
(99116, 'tbewsy2', 19, '66116-352', 76, 428),
(99964, 'adomeneyy', 1, '49738-456', 61, 933);

-- --------------------------------------------------------

--
-- Table structure for table `blykste`
--

CREATE TABLE `blykste` (
  `Gamyklinis_kodas` int(11) NOT NULL,
  `Tipas` varchar(20) COLLATE utf8_lithuanian_ci NOT NULL,
  `Lumenai` int(11) NOT NULL,
  `Dydis` int(11) NOT NULL,
  `Baterijos` varchar(20) COLLATE utf8_lithuanian_ci NOT NULL,
  `Kaina` int(11) NOT NULL,
  `fk_KREPŠELISid_KREPSELIS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `blykste`
--

INSERT INTO `blykste` (`Gamyklinis_kodas`, `Tipas`, `Lumenai`, `Dydis`, `Baterijos`, `Kaina`, `fk_KREPŠELISid_KREPSELIS`) VALUES
(10426, 'opethickf', 129, 46, '63323-471', 29, 622),
(21272, 'valpeb', 581, 80, '0085-0314', 67, 938),
(21501, 'ksokalei', 614, 47, '76125-900', 52, 945),
(26462, 'phemberyd', 592, 89, '59556-007', 63, 320),
(27639, 'gfickenh', 678, 93, '64679-954', 69, 371),
(28473, 'wlagrange0', 340, 46, '51009-153', 10, 333),
(38267, 'gdavidescoc', 265, 72, '69231-002', 88, 895),
(47956, 'ilaffin4', 167, 73, '12634-129', 74, 425),
(53323, 'amcruvie8', 212, 18, '66689-031', 72, 846),
(56484, 'crengger9', 437, 54, '0041-0341', 94, 610),
(58930, 'fscheu6', 90, 39, '58232-0805', 76, 366),
(60044, 'blickessg', 309, 31, '55714-4592', 71, 731),
(62796, 'rnockolds5', 894, 7, '11410-086', 56, 255),
(64164, 'wguyea', 631, 8, '98132-746', 100, 920),
(65202, 'retterj', 546, 35, '55111-255', 91, 410),
(67686, 'cdallye', 213, 53, '59535-5101', 10, 930),
(69759, 'oparkeson1', 638, 41, '41167-0172', 60, 469),
(69804, 'maldridge2', 770, 78, '49288-0323', 66, 130),
(88474, 'pizzat7', 195, 20, '45548-141', 71, 976),
(92752, 'gbukowski3', 696, 11, '47682-115', 57, 779);

-- --------------------------------------------------------

--
-- Table structure for table `deklas`
--

CREATE TABLE `deklas` (
  `Gamyklinis_kodas` int(11) NOT NULL,
  `Talpa` int(11) NOT NULL,
  `Medziaga` varchar(20) COLLATE utf8_lithuanian_ci NOT NULL,
  `Kaina` int(11) NOT NULL,
  `fk_KREPSELISid_KREPSELIS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `deklas`
--

INSERT INTO `deklas` (`Gamyklinis_kodas`, `Talpa`, `Medziaga`, `Kaina`, `fk_KREPSELISid_KREPSELIS`) VALUES
(15655, 90, 'tknibley5', 64, 423),
(18001, 87, 'gpetrud', 86, 861),
(18465, 29, 'talexsandrowicza', 85, 940),
(20322, 28, 'dlidster4', 16, 699),
(27289, 40, 'rneilusg', 38, 967),
(42625, 14, 'jcolbrun2', 51, 976),
(42981, 36, 'mhenden9', 59, 457),
(51798, 63, 'dreanb', 18, 644),
(64597, 26, 'smacmoyerh', 57, 551),
(71674, 100, 'dspringhami', 12, 537),
(74576, 78, 'kborwickj', 82, 637),
(80502, 61, 'tlead0', 25, 503),
(81680, 19, 'gcabena1', 20, 305),
(83522, 60, 'pcroci3', 38, 479),
(86521, 41, 'pfeldon6', 60, 676),
(91566, 72, 'hlandmane', 33, 665),
(93275, 23, 'galldredf', 53, 953),
(93344, 96, 'wbaylie8', 32, 491),
(94176, 88, 'bghirardi7', 38, 561),
(95717, 56, 'mfellisc', 36, 300);

-- --------------------------------------------------------

--
-- Table structure for table `filtras`
--

CREATE TABLE `filtras` (
  `Gamyklinis_kodas` int(11) NOT NULL,
  `Tipas` varchar(20) COLLATE utf8_lithuanian_ci NOT NULL,
  `Diametras` int(11) NOT NULL,
  `Spalva` varchar(20) COLLATE utf8_lithuanian_ci NOT NULL,
  `Sviesos_pralaidumas` int(11) NOT NULL,
  `Kaina` int(11) NOT NULL,
  `fk_KREPSELISid_KREPSELIS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `filtras`
--

INSERT INTO `filtras` (`Gamyklinis_kodas`, `Tipas`, `Diametras`, `Spalva`, `Sviesos_pralaidumas`, `Kaina`, `fk_KREPSELISid_KREPSELIS`) VALUES
(22727, 'rbrosiusg', 96, 'Yellow', 374, 61, 512),
(24770, 'zfennelly2', 66, 'Pink', 352, 48, 357),
(33154, 'hornilsc', 46, 'Puce', 255, 35, 694),
(34543, 'nfardyi', 71, 'Mauv', 906, 87, 179),
(35649, 'fharvarda', 45, 'Turquoise', 946, 98, 829),
(44225, 'onosworthy9', 43, 'Crimson', 668, 30, 857),
(45341, 'ggurryd', 9, 'Yellow', 590, 15, 357),
(45771, 'cyarnold0', 3, 'Red', 416, 62, 588),
(52433, 'vhowat1', 79, 'Yellow', 924, 37, 414),
(59587, 'kreaperf', 60, 'Khaki', 424, 37, 424),
(59908, 'vcaudelier4', 73, 'Orange', 738, 100, 187),
(71542, 'ostove8', 70, 'Violet', 992, 54, 647),
(71701, 'mmacmanus3', 19, 'Indigo', 302, 12, 355),
(72850, 'smiddlewick6', 40, 'Violet', 519, 62, 219),
(72902, 'nrickeard5', 99, 'Khaki', 657, 88, 663),
(83609, 'rlukianovich7', 93, 'Indigo', 834, 77, 892),
(90147, 'byaneleh', 74, 'Violet', 397, 33, 440),
(93529, 'ceassomb', 79, 'Teal', 790, 49, 369),
(94250, 'lfarresj', 65, 'Mauv', 669, 42, 184),
(94580, 'lburrowe', 56, 'Mauv', 226, 65, 483);

-- --------------------------------------------------------

--
-- Table structure for table `fotoaparatas`
--

CREATE TABLE `fotoaparatas` (
  `Gamyklinis_kodas` int(11) NOT NULL,
  `Tipas` varchar(20) COLLATE utf8_lithuanian_ci NOT NULL,
  `Sensorius` varchar(20) COLLATE utf8_lithuanian_ci NOT NULL,
  `Objektyvo_jungtis` varchar(20) COLLATE utf8_lithuanian_ci NOT NULL,
  `Baterija` varchar(20) COLLATE utf8_lithuanian_ci NOT NULL,
  `Kaina` int(11) NOT NULL,
  `fk_KREPŠELISid_KREPSELIS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `fotoaparatas`
--

INSERT INTO `fotoaparatas` (`Gamyklinis_kodas`, `Tipas`, `Sensorius`, `Objektyvo_jungtis`, `Baterija`, `Kaina`, `fk_KREPŠELISid_KREPSELIS`) VALUES
(14638, 'wtadlow0', '49288-0566', 'Sr', '341-93-6425', 48, 977),
(16504, 'mcovolinia', '51389-111', 'III', '387-92-8768', 14, 740),
(18929, 'jeouzan3', '17089-304', 'Sr', '283-89-1695', 83, 183),
(19088, 'rodger8', '55714-4591', 'III', '364-61-6449', 61, 945),
(30577, 'mfitkine', '50114-0227', 'IV', '546-12-5756', 35, 930),
(36057, 'bgeffeng', '50383-807', 'IV', '731-28-7311', 27, 721),
(36802, 'rmalsheri', '58503-065', 'III', '456-16-0066', 38, 896),
(37098, 'rmarch2', '0039-0223', 'IV', '440-87-9610', 60, 560),
(38229, 'ltrebyh', '68084-201', 'Jr', '791-37-1286', 24, 244),
(40739, 'sjako5', '55621-008', 'II', '503-21-9369', 40, 241),
(42241, 'bdannehl1', '53150-247', 'IV', '834-88-7063', 38, 708),
(43061, 'dfitzroyd', '16590-027', 'Jr', '655-26-0965', 29, 924),
(47403, 'jgillaspyc', '0115-0522', 'Sr', '842-65-8145', 43, 609),
(65965, 'gdouthwaite7', '61941-1003', 'Jr', '242-63-8813', 59, 516),
(75751, 'ostrete4', '55312-272', 'IV', '735-23-6290', 56, 915),
(77633, 'lbumpassf', '0781-5208', 'III', '458-73-3661', 20, 535),
(82004, 'mcardenoza9', '52125-749', 'Jr', '749-20-8825', 66, 508),
(86564, 'akintonj', '0115-5922', 'IV', '306-79-9676', 70, 897),
(92288, 'gminorb', '49288-0607', 'Jr', '565-81-8001', 81, 142),
(92801, 'iomeara6', '76369-4001', 'II', '376-23-1637', 34, 791);

-- --------------------------------------------------------

--
-- Table structure for table `fotojuosta`
--

CREATE TABLE `fotojuosta` (
  `Gamyklinis_kodas` int(11) NOT NULL,
  `Tipas` varchar(20) COLLATE utf8_lithuanian_ci NOT NULL,
  `Plotis` int(11) NOT NULL,
  `Sviesos_jautrumas` int(11) NOT NULL,
  `Kadru_sk` int(11) NOT NULL,
  `Kaina` int(11) NOT NULL,
  `fk_KREPSELISid_KREPSELIS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `fotojuosta`
--

INSERT INTO `fotojuosta` (`Gamyklinis_kodas`, `Tipas`, `Plotis`, `Sviesos_jautrumas`, `Kadru_sk`, `Kaina`, `fk_KREPSELISid_KREPSELIS`) VALUES
(14738, 'rfaireclough6', 45, 2071, 29, 35, 655),
(20308, 'gshutt9', 46, 2106, 25, 92, 443),
(25616, 'tbenson8', 11, 2902, 45, 61, 838),
(27857, 'rbruineman2', 17, 1482, 21, 87, 154),
(35963, 'hfrearson5', 17, 1858, 23, 71, 123),
(43308, 'hprinettj', 50, 643, 21, 21, 176),
(47872, 'umcmechane', 30, 3165, 30, 89, 478),
(48038, 'mvamplusa', 38, 1826, 24, 94, 343),
(48931, 'dsheveling', 27, 1329, 42, 52, 589),
(50498, 'ptapsonf', 67, 1082, 27, 27, 216),
(50616, 'dpaz4', 11, 929, 36, 64, 163),
(51814, 'sforkerc', 75, 1830, 45, 92, 588),
(54696, 'jmichieli1', 71, 2522, 36, 86, 551),
(58101, 'hsurgisond', 70, 2260, 18, 80, 724),
(61470, 'sleckeyh', 30, 224, 46, 56, 939),
(61612, 'istarbeckb', 37, 2877, 23, 15, 770),
(62339, 'rmingardoi', 22, 2598, 48, 28, 283),
(70336, 'btidman3', 78, 304, 25, 96, 411),
(73552, 'tbly7', 77, 854, 38, 48, 974),
(83526, 'dglynn0', 10, 1052, 21, 25, 604);

-- --------------------------------------------------------

--
-- Table structure for table `gamintojas`
--

CREATE TABLE `gamintojas` (
  `Pavadinimas` varchar(20) COLLATE utf8_lithuanian_ci NOT NULL,
  `Salis` varchar(20) COLLATE utf8_lithuanian_ci NOT NULL,
  `Garantinis` date NOT NULL,
  `fk_FOTOAPARATASGamyklinis_kodas` int(11) NOT NULL,
  `fk_FOTO_JUOSTAGamyklinis_kodas` int(11) NOT NULL,
  `fk_OBJEKTYVASGamyklinis_kodas` int(11) NOT NULL,
  `fk_FILTRASGamyklinis_kodas` int(11) NOT NULL,
  `fk_BLYKSTEGamyklinis_kodas` int(11) NOT NULL,
  `fk_DEKLASGamyklinis_kodas` int(11) NOT NULL,
  `fk_STOVASGamyklinis_kodas` int(11) NOT NULL,
  `fk_ATMINTINĖGamyklinis_kodas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `gamintojas`
--

INSERT INTO `gamintojas` (`Pavadinimas`, `Salis`, `Garantinis`, `fk_FOTOAPARATASGamyklinis_kodas`, `fk_FOTO_JUOSTAGamyklinis_kodas`, `fk_OBJEKTYVASGamyklinis_kodas`, `fk_FILTRASGamyklinis_kodas`, `fk_BLYKSTEGamyklinis_kodas`, `fk_DEKLASGamyklinis_kodas`, `fk_STOVASGamyklinis_kodas`, `fk_ATMINTINĖGamyklinis_kodas`) VALUES
('abeaverb', 'France', '0000-00-00', 56800, 43092, 54352, 12993, 94946, 75032, 18730, 76788),
('dcolombi', 'China', '0000-00-00', 81464, 59377, 81845, 49088, 24900, 66237, 85322, 12558),
('dladds0', 'Brazil', '0000-00-00', 10397, 25745, 47012, 82416, 95472, 21375, 57380, 20648),
('dtamburif', 'Nigeria', '0000-00-00', 81211, 46781, 37557, 27930, 55192, 78993, 71891, 72640),
('dtukelye', 'Brazil', '0000-00-00', 47266, 11947, 52058, 24214, 90762, 33533, 67864, 65886),
('gbasilid', 'Canada', '0000-00-00', 52496, 95653, 88466, 35335, 14588, 47941, 74250, 77353),
('gcoronas4', 'Brazil', '0000-00-00', 62783, 72017, 68270, 42055, 39111, 96078, 82301, 83116),
('jhamshar8', 'China', '0000-00-00', 28267, 67272, 20159, 92242, 89636, 69922, 89094, 86798),
('jholde6', 'Portugal', '0000-00-00', 38272, 70888, 28756, 35964, 86109, 65749, 43871, 61886),
('jsheatherh', 'Indonesia', '0000-00-00', 47252, 66263, 35438, 79916, 68236, 23074, 51748, 66716),
('khadyej', 'France', '0000-00-00', 16590, 40687, 13178, 65621, 78841, 17013, 33325, 58828),
('mgirardy9', 'Brazil', '0000-00-00', 56315, 67582, 17408, 92941, 61051, 34801, 53119, 48825),
('nklauerc', 'New Zealand', '0000-00-00', 20213, 42865, 68184, 84689, 88975, 78084, 14073, 24571),
('nolekhov3', 'China', '0000-00-00', 88604, 25552, 33782, 64146, 93844, 55481, 67440, 46923),
('paubrayg', 'Indonesia', '0000-00-00', 17310, 25299, 15115, 38614, 64282, 64818, 74414, 14858),
('rmazella5', 'Brazil', '0000-00-00', 83883, 20260, 33658, 18995, 34319, 54336, 21999, 88399),
('rseaa', 'Morocco', '0000-00-00', 34448, 11510, 99787, 96862, 74115, 69067, 90768, 85426),
('shutchason2', 'Indonesia', '0000-00-00', 16338, 61820, 25281, 66208, 78292, 19613, 29572, 16936),
('vprose7', 'Ghana', '0000-00-00', 71018, 22460, 12471, 34441, 56240, 73861, 16161, 11030),
('vwolvey1', 'Venezuela', '0000-00-00', 82091, 35305, 79416, 99385, 61948, 99300, 88593, 10721);

-- --------------------------------------------------------

--
-- Table structure for table `krepselis`
--

CREATE TABLE `krepselis` (
  `Suma` int(11) NOT NULL,
  `Klientas` varchar(20) COLLATE utf8_lithuanian_ci NOT NULL,
  `id_KREPSELIS` int(11) NOT NULL,
  `fk_UZSAKYMASNumeris` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `krepselis`
--

INSERT INTO `krepselis` (`Suma`, `Klientas`, `id_KREPSELIS`, `fk_UZSAKYMASNumeris`) VALUES
(45120, 'Olegas', 45272, 260),
(73, 'Ernis', 57877, 278),
(876, 'Henris', 67876, 779),
(79, 'Jupas', 68486, 200),
(6785, 'Erika', 68965, 872),
(7965, 'Faustas', 98977, 286),
(4898, 'Justina', 213648, 117),
(345, 'Arnas', 345548, 136),
(7868, 'Kastis', 376846, 875),
(96468, 'Uoga', 676868, 881),
(9664, 'Gedis', 869786, 348),
(996, 'Redas', 966867, 204),
(10542, 'Raimis', 3453543, 178),
(469, 'Erika', 3463631, 408),
(5648, 'Kipras', 4386844, 206),
(55, 'Ema', 4644978, 291),
(78545, 'Gustas', 5742454, 208),
(6344, 'Juozas', 6778976, 104),
(45, 'Fausta', 9746112, 982),
(280, 'Tomas', 19030501, 1);

-- --------------------------------------------------------

--
-- Table structure for table `objektyvas`
--

CREATE TABLE `objektyvas` (
  `Gamyklinis_kodas` int(11) NOT NULL,
  `Tipas` varchar(20) COLLATE utf8_lithuanian_ci NOT NULL,
  `Zidinio_nuotolis` int(11) NOT NULL,
  `Ilgis` int(11) NOT NULL,
  `Fokusavimo_ats` int(11) NOT NULL,
  `Kaina` int(11) NOT NULL,
  `fk_KREPSELISid_KREPSELIS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `objektyvas`
--

INSERT INTO `objektyvas` (`Gamyklinis_kodas`, `Tipas`, `Zidinio_nuotolis`, `Ilgis`, `Fokusavimo_ats`, `Kaina`, `fk_KREPSELISid_KREPSELIS`) VALUES
(11435, '', 96, 106, 195, 69, 823),
(17501, '', 50, 112, 67, 76, 759),
(17567, '', 52, 32, 121, 20, 495),
(27203, '', 5, 100, 132, 74, 254),
(29227, '', 19, 45, 90, 93, 275),
(32645, '', 35, 100, 94, 65, 756),
(50769, '', 89, 43, 85, 42, 525),
(51404, '', 4, 26, 59, 22, 592),
(53005, '', 100, 49, 178, 55, 612),
(54039, '', 28, 146, 70, 64, 820),
(59017, '', 99, 28, 93, 26, 408),
(60418, '', 27, 151, 177, 57, 918),
(65484, 'Portrait', 2, 55, 10, 400, 19030501),
(66560, '', 60, 148, 124, 25, 211),
(78908, '', 65, 33, 36, 59, 908),
(79362, '', 62, 120, 39, 22, 385),
(81593, '', 91, 156, 32, 80, 465),
(83094, '', 7, 151, 164, 95, 923),
(88730, '', 59, 96, 128, 31, 255),
(95718, '', 18, 176, 176, 50, 916),
(97602, '', 15, 127, 168, 27, 687);

-- --------------------------------------------------------

--
-- Table structure for table `pirkejas`
--

CREATE TABLE `pirkejas` (
  `Pirkejo_kod` int(11) NOT NULL,
  `Vardas` varchar(20) COLLATE utf8_lithuanian_ci NOT NULL,
  `Fotografo_tp` varchar(20) COLLATE utf8_lithuanian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `pirkejas`
--

INSERT INTO `pirkejas` (`Pirkejo_kod`, `Vardas`, `Fotografo_tp`) VALUES
(7, 'hgingedalea', 'Customer-focused'),
(19, 'adowlese', 'asynchronous'),
(22, 'mtruesdaled', 'forecast'),
(30, 'sreggiof', 'array'),
(40, 'gnorres2', 'Down-sized'),
(42, 'dstateb', 'success'),
(43, 'stanner7', 'interactive'),
(45, 'blorait0', 'static'),
(50, 'cskough3', 'needs-based'),
(53, 'ulates4', 'architecture'),
(73, 'lbakeup4', 'Down-sized'),
(76, 'jthunnercliffe9', 'Horizontal'),
(77, 'cjesper2', '6th generation'),
(79, 'rgirod6', 'challenge'),
(80, 'jlaybournc', 'Graphic Interface'),
(89, 'jdownton5', 'Organic'),
(96, 'zcroom8', 'Implemented'),
(98, 'acornner1', 'success'),
(99, 'eskippingg', '5th generation'),
(474, 'mfillgate1', 'parallelism'),
(553, 'jlibbey0', 'Front-line'),
(592, 'mbarrus6', 'next generation'),
(623, 'jdalyiel5', 'Decentralized'),
(664, 'ebentick2', 'circuit'),
(776, 'ajizhaki7', 'Triple-buffered'),
(785, 'bmelmeth3', 'parallelism'),
(858, 'lsemaine0', 'upward-trending'),
(916, 'nlightbown4', 'installation'),
(956, 'rusher3', 'orchestration'),
(970, 'eveschi1', 'adapter'),
(19030501, 'Tomas', 'Portretai');

-- --------------------------------------------------------

--
-- Table structure for table `stovas`
--

CREATE TABLE `stovas` (
  `Gamyklinis_kodas` int(11) NOT NULL,
  `Tipas` varchar(20) COLLATE utf8_lithuanian_ci NOT NULL,
  `Aukstis` int(11) NOT NULL,
  `Svorio_palaikymas` int(11) NOT NULL,
  `Galvos_tipas` varchar(20) COLLATE utf8_lithuanian_ci NOT NULL,
  `Kaina` int(11) NOT NULL,
  `fk_KREPSELISid_KREPSELIS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `stovas`
--

INSERT INTO `stovas` (`Gamyklinis_kodas`, `Tipas`, `Aukstis`, `Svorio_palaikymas`, `Galvos_tipas`, `Kaina`, `fk_KREPSELISid_KREPSELIS`) VALUES
(25323, 'ctrinder9', 100, 3220, 'LZB', 24, 166),
(27271, 'ppavolilloh', 80, 2869, 'HYND', 32, 618),
(28446, 'aarnaldie', 213, 1891, 'IRS', 57, 773),
(32971, 'ijanosevicd', 109, 2385, 'MATW', 35, 864),
(33993, 'rmclenahanb', 42, 2999, 'SRI', 53, 502),
(41410, 'mmcgillreich5', 56, 4177, 'ALSN', 55, 115),
(44183, 'tmellong', 74, 3742, 'TPC', 74, 573),
(49879, 'gtreat4', 106, 3941, 'BANC', 81, 929),
(51180, 'dderr1', 178, 4491, 'CNTY', 42, 665),
(52619, 'whassekl0', 178, 1468, 'NIHD', 44, 236),
(58501, 'kmitkcovi', 66, 2943, 'XENT', 59, 801),
(64376, 'kknellenc', 94, 1079, 'NC', 97, 691),
(65995, 'vchattaway6', 90, 3860, 'EFAS', 45, 993),
(66484, 'agabbatissf', 85, 2870, 'BHK', 95, 974),
(73456, 'awoan8', 71, 4321, 'WMK', 13, 642),
(87988, 'pqueree7', 87, 1726, 'GNTY', 61, 805),
(88928, 'gjamieson2', 182, 3607, 'PDP', 20, 944),
(91030, 'pgaynes3', 216, 2699, 'SKX', 73, 704),
(94540, 'vlavenderj', 81, 1496, 'TTGT', 60, 869),
(95946, 'dcovella', 208, 4528, 'ORBC', 76, 468);

-- --------------------------------------------------------

--
-- Table structure for table `uzsakymas`
--

CREATE TABLE `uzsakymas` (
  `Numeris` int(11) NOT NULL,
  `Data` date NOT NULL,
  `fk_PIRKEJAS` varchar(20) COLLATE utf8_lithuanian_ci NOT NULL,
  `fk_PIRKEJASPirkejo_kod` int(11) NOT NULL,
  `fk_KREPSELISid_KREPSELIS` int(11) NOT NULL,
  `fk_KREPSELISid_KREPSELIS1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `uzsakymas`
--

INSERT INTO `uzsakymas` (`Numeris`, `Data`, `fk_PIRKEJAS`, `fk_PIRKEJASPirkejo_kod`, `fk_KREPSELISid_KREPSELIS`, `fk_KREPSELISid_KREPSELIS1`) VALUES
(1, '2019-03-05', 'Tomas', 19030501, 156, 156),
(104, '0000-00-00', 'tbraggec', 61665, 41226, 92301),
(117, '0000-00-00', 'wpetruskevich9', 74987, 22775, 54846),
(136, '0000-00-00', 'stissimani', 76984, 81378, 72379),
(178, '0000-00-00', 'cvickarmane', 99438, 51596, 42105),
(200, '0000-00-00', 'everdun4', 73664, 75663, 51599),
(204, '0000-00-00', 'erawlisond', 50855, 82352, 89714),
(206, '0000-00-00', 'lbreada', 58525, 47729, 21899),
(208, '0000-00-00', 'lcartwright1', 67878, 46663, 74660),
(260, '0000-00-00', 'apuckring5', 78225, 51103, 10982),
(278, '0000-00-00', 'kbrickellf', 62201, 66441, 66810),
(286, '0000-00-00', 'vjoslin3', 35700, 46437, 71970),
(291, '0000-00-00', 'cgierok0', 91193, 82660, 12920),
(348, '0000-00-00', 'jback7', 83291, 23611, 55071),
(408, '0000-00-00', 'bekinsj', 43045, 38565, 50429),
(779, '0000-00-00', 'lkaygillg', 81298, 82704, 51690),
(795, '0000-00-00', 'ewitherbedb', 83392, 93756, 64814),
(872, '0000-00-00', 'mgear8', 48873, 81968, 39971),
(875, '0000-00-00', 'gfishbyh', 25391, 94056, 64705),
(881, '0000-00-00', 'fgrigorini2', 78485, 91445, 66921),
(982, '0000-00-00', 'dtolchar6', 17064, 92790, 13704);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atmintine`
--
ALTER TABLE `atmintine`
  ADD PRIMARY KEY (`Gamyklinis_kodas`);

--
-- Indexes for table `blykste`
--
ALTER TABLE `blykste`
  ADD PRIMARY KEY (`Gamyklinis_kodas`);

--
-- Indexes for table `deklas`
--
ALTER TABLE `deklas`
  ADD PRIMARY KEY (`Gamyklinis_kodas`);

--
-- Indexes for table `filtras`
--
ALTER TABLE `filtras`
  ADD PRIMARY KEY (`Gamyklinis_kodas`);

--
-- Indexes for table `fotoaparatas`
--
ALTER TABLE `fotoaparatas`
  ADD PRIMARY KEY (`Gamyklinis_kodas`);

--
-- Indexes for table `fotojuosta`
--
ALTER TABLE `fotojuosta`
  ADD PRIMARY KEY (`Gamyklinis_kodas`);

--
-- Indexes for table `gamintojas`
--
ALTER TABLE `gamintojas`
  ADD PRIMARY KEY (`Pavadinimas`);

--
-- Indexes for table `krepselis`
--
ALTER TABLE `krepselis`
  ADD PRIMARY KEY (`id_KREPSELIS`),
  ADD UNIQUE KEY `fk_UZSAKYMASNumeris` (`fk_UZSAKYMASNumeris`);

--
-- Indexes for table `objektyvas`
--
ALTER TABLE `objektyvas`
  ADD PRIMARY KEY (`Gamyklinis_kodas`);

--
-- Indexes for table `pirkejas`
--
ALTER TABLE `pirkejas`
  ADD PRIMARY KEY (`Pirkejo_kod`);

--
-- Indexes for table `stovas`
--
ALTER TABLE `stovas`
  ADD PRIMARY KEY (`Gamyklinis_kodas`);

--
-- Indexes for table `uzsakymas`
--
ALTER TABLE `uzsakymas`
  ADD PRIMARY KEY (`Numeris`),
  ADD UNIQUE KEY `fk_KREPSELISid_KREPSELIS` (`fk_KREPSELISid_KREPSELIS`),
  ADD UNIQUE KEY `fk_KREPSELISid_KREPSELIS1` (`fk_KREPSELISid_KREPSELIS1`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `krepselis`
--
ALTER TABLE `krepselis`
  ADD CONSTRAINT `krepselis_ibfk_1` FOREIGN KEY (`fk_UZSAKYMASNumeris`) REFERENCES `uzsakymas` (`Numeris`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
