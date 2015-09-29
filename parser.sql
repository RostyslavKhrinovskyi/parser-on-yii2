-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Час створення: Вер 30 2015 р., 00:51
-- Версія сервера: 5.5.44-0ubuntu0.14.04.1
-- Версія PHP: 5.5.9-1ubuntu4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База даних: `parser`
--

-- --------------------------------------------------------

--
-- Структура таблиці `history`
--

CREATE TABLE IF NOT EXISTS `history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `team` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `draw` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `away` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=52 ;

--
-- Дамп даних таблиці `history`
--

INSERT INTO `history` (`id`, `score`, `team`, `home`, `draw`, `away`, `hash`, `date`) VALUES
(1, '2-1', 'Porto   v   Chelsea', '1/20', '10/1', '50/1', 'c3fe818ad526e5ac76b8371939d60513', '2015-09-29 20:35:11'),
(2, '2-3', 'Arsenal   v   Olympiacos', '40/1', '11/2', '1/8', '5bea448a0eb0ae3b328fbe311a1d935d', '2015-09-29 20:35:11'),
(3, '2-1', 'Barcelona   v   Bayer Leverkusen', '1/33', '12/1', '66/1', '21a486b45f5e3db40b283eec53df97bb', '2015-09-29 20:35:11'),
(4, '0-1', 'Lyon   v   Valencia', '60/1', '9/1', '1/20', 'cc6bb589dfb2ef082a811a26171a0f05', '2015-09-29 20:35:11'),
(5, '3-2', 'BATE Borisov   v   Roma', '1/14', '8/1', '55/1', 'f8b8b4f03e81a19651eb95bedfcc4ca5', '2015-09-29 20:35:11'),
(6, '0-2', 'Maccabi Tel Aviv   v   Dynamo Kiev', '80/1', '66/1', '1/2000', 'df64f9786eb7e1e45f3af82ebc32cb6a', '2015-09-29 20:35:11'),
(7, '0-3', 'Fulham   v   Wolves', '80/1', '80/1', '1/25000', 'ab944546de4a9183c536058b2f8b8754', '2015-09-29 20:35:11'),
(8, '0-1', 'Brentford   v   Birmingham', '60/1', '10/1', '1/20', '6b76f36bbbc6a4148565610ee6cfd7a4', '2015-09-29 20:35:11'),
(9, '3-2', 'Rochdale   v   Shrewsbury', '1/40', '12/1', '80/1', '9ec1402385a8b675f365e70c3451c7be', '2015-09-29 20:35:12'),
(10, '1-2', 'Crewe   v   Southend', '70/1', '14/1', '1/50', 'cc4da93efc650f351192860ce5494f8f', '2015-09-29 20:35:12'),
(11, '0-0', 'Burton   v   Sheff Utd', '14/1', '1/16', '18/1', '80f3a2b434b1ddb71d5736ab4f0f36f5', '2015-09-29 20:35:12'),
(12, '1-1', 'Port Vale   v   Oldham', '11/1', '1/10', '14/1', '15fdacd5aa94823e6a5500e605521138', '2015-09-29 20:35:12'),
(13, '2-0', 'Colchester   v   Bradford', '1/1000', '60/1', '80/1', 'ce423b31513217c9d5d7397217a63d2d', '2015-09-29 20:35:12'),
(14, '5-1', 'Gillingham   v   Fleetwood', '1/25000', '80/1', '80/1', '209008bf06f5a6dd6f72811ea42dc350', '2015-09-29 20:35:12'),
(15, '2-0', 'Blackpool   v   Chesterfield', '1/1000', '55/1', '80/1', '57a24d089f1db27691e8ca878956eb1f', '2015-09-29 20:35:12'),
(16, '2-3', 'Peterborough   v   Bury', '70/1', '12/1', '1/33', '61898f87ba2ec8a6d78b6f20441a1244', '2015-09-29 20:35:12'),
(17, '2-2', 'Doncaster   v   Swindon', '1/33', '12/1', '66/1', 'a630401ba2826a3103c36e953d3db934', '2015-09-29 20:35:12'),
(18, '1-2', 'Wigan   v   Millwall', '66/1', '12/1', '1/33', '2a261766d0ff596aaef192d75aaef126', '2015-09-29 20:35:12'),
(19, '0-3', 'Newport   v   Crawley', '80/1', '70/1', '1/10000', '37b116a77ea0f6dfa14bd273851e83dc', '2015-09-29 20:35:12'),
(20, '2-1', 'Plymouth   v   Barnet', '1/50', '14/1', '70/1', '3285506821830d7ce2fa1a3fe53b32dc', '2015-09-29 20:35:12'),
(21, '1-3', 'Morecambe   v   Luton', '80/1', '66/1', '1/2000', 'bcb8ff541146dca215e8a19e3afe6079', '2015-09-29 20:35:12'),
(22, '1-0', 'Wycombe   v   Cambridge', '1/100', '18/1', '80/1', '7b55828c5c78d23d17dbadb2a6f7a12c', '2015-09-29 20:35:12'),
(23, '2-1', 'Accrington   v   Yeovil', '1/100', '16/1', '80/1', '77d2268caee88520b925307f7bfca955', '2015-09-29 20:35:12'),
(24, '1-1', 'Wimbledon   v   Northampton', '12/1', '1/12', '16/1', '08408a0ad41bc71473250df659f32aea', '2015-09-29 20:35:12'),
(25, '0-3', 'Hartlepool   v   Bristol Rovers', '80/1', '80/1', '1/25000', '3dd8d0eb42c3f4f7633821e72f3cc2a6', '2015-09-29 20:35:13'),
(26, '1-2', 'York   v   Oxford', '70/1', '14/1', '1/50', 'd8331a850fd792a7c8256c5b812ee844', '2015-09-29 20:35:13'),
(27, '1-1', 'Dag and Red   v   Notts County', '14/1', '1/9', '10/1', '5cc767a3bcb7f94a071d600e4c04b3e0', '2015-09-29 20:35:13'),
(28, '1-2', 'Leyton Orient   v   Carlisle', '55/1', '7/1', '1/12', 'ce6463bf9dce7031b4d571ec007995a5', '2015-09-29 20:35:13'),
(29, '0-2', 'Stevenage   v   Mansfield', '80/1', '66/1', '1/2000', '475a9495f6dd5522d260acc5187a1ca2', '2015-09-29 20:35:13'),
(30, '0-2', 'Portsmouth   v   Exeter', '70/1', '45/1', '1/500', 'bebc90726bacc2ae01691dc32137f224', '2015-09-29 20:35:13'),
(31, '2-1', 'Rushall Olympic   v   Corby', '1/10', '11/2', '28/1', 'ae2673bf2c1a3958436a1c08c610c185', '2015-09-29 20:35:13'),
(32, '1-1', 'Washington   v   Marine', '4/1', '4/9', '19/5', '7d2fd9e246674cc18d8dc8d3ddcc55c8', '2015-09-29 20:35:13'),
(33, '2-0', 'Worcester   v   Holbeach U', '1/2000', '40/1', '45/1', 'de2bff24f9ce49218b31011a0b12edcc', '2015-09-29 20:35:13'),
(34, '1-0', 'Ashton Utd   v   Frickley Ath', '1/10', '11/2', '28/1', 'bfb9655ae446d9ae109ea6f15be85e0d', '2015-09-29 20:35:13'),
(35, '3-3', 'Stamford   v   Sutton Coldfield', '6/1', '1/3', '24/5', 'ef70256c9f98c602747493d815c6bdb3', '2015-09-29 20:35:13'),
(36, '1-0', 'Mickleover Sports   v   Matlock', '1/14', '6/1', '33/1', 'ae07f8d5ea727658da6559babb3bf8ce', '2015-09-29 20:35:13'),
(37, '2-0', 'Buxton   v   Colwyn Bay', '1/2000', '66/1', '80/1', 'eee075b52d71dcf7943ef5876e0f93b6', '2015-09-29 20:35:13'),
(38, '1-2', 'Fiorentino   v   SP La Fiorita', '35/1', '8/1', '1/25', '47038dab81b98c0d37d34771add8c39d', '2015-09-29 20:35:13'),
(39, '0-2', 'Ayr U20   v   Clyde U20', '35/1', '20/1', '1/150', '65c3314328aeba300f3ff9fdbbf4ea8a', '2015-09-29 20:35:13'),
(40, '2-2', 'Queen of the South U20   v   Airdrieonians U20', '13/5', '13/20', '16/5', '4d65d7519f0b60cfb594772cbb91356a', '2015-09-29 20:35:13'),
(41, '1-2', 'Stenhousemuir U20   v   Stirling Albion U20', '16/1', '4/1', '2/13', '8099867d9bd681fb14fbd3812707e869', '2015-09-29 20:35:13'),
(42, '0-0', 'Real Garcilaso   v   Uni Cesar Vallejo', '4/7', '27/10', '11/2', '95ca5549145597f22b31d0e62fba2217', '2015-09-29 20:35:13'),
(43, '2-2', 'Wigan   v   Millwall', '66/1', '12/1', '1/33', '358667c7162fabf9e9336e5f3bc7dabe', '2015-09-29 20:35:46'),
(44, '1-0', 'Real Garcilaso   v   Uni Cesar Vallejo', '2/7', '4/1', '11/1', '9612a2db58e6c10d10f25059a907383e', '2015-09-29 21:10:21'),
(45, '1-0', 'Real Garcilaso   v   Uni Cesar Vallejo', '1/4', '4/1', '14/1', 'edc1e8b3ff2d7e9656d6c9bc8c56cb3a', '2015-09-29 21:26:19'),
(46, '0-0', 'Sao Paulo U20   v   America FC Belo Horizonte U20', '1/4', '9/2', '17/2', '971435eb89f447e055ce73d7bd43273a', '2015-09-29 21:47:10'),
(47, '2-0', 'Real Garcilaso   v   Uni Cesar Vallejo', '1/50', '16/1', '45/1', '17d929b49eb3f45b0f5aefcfed21ce38', '2015-09-29 21:47:10'),
(48, '0-0', 'Sao Paulo U20   v   America FC Belo Horizonte U20', '2/7', '4/1', '17/2', 'e57b6931985f542db39428d1d8bf80ab', '2015-09-29 21:49:38'),
(49, '2-0', 'Real Garcilaso   v   Uni Cesar Vallejo', '1/100', '20/1', '55/1', '8b5a12d835f07e71c6a4e24f33fcdf7d', '2015-09-29 21:49:38'),
(50, '2-0', 'Real Garcilaso   v   Uni Cesar Vallejo', '1/150', '25/1', '60/1', 'aec2cc09e9da2d7a156aff9571f87e0c', '2015-09-29 21:50:11'),
(51, '0-0', 'Sao Paulo U20   v   America FC Belo Horizonte U20', '1/4', '9/2', '10/1', 'e15ad8db80f94e148dc9e1b6e208c44a', '2015-09-29 21:50:43');

-- --------------------------------------------------------

--
-- Структура таблиці `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) COLLATE utf8_bin NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп даних таблиці `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1443554980),
('m130524_201442_init', 1443554982),
('m150929_193111_history', 1443555614);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
