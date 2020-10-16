-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Сен 04 2020 г., 10:50
-- Версия сервера: 10.4.14-MariaDB
-- Версия PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `horizon`
--

-- --------------------------------------------------------

--
-- Структура таблицы `accounts`
--

CREATE TABLE `accounts` (
  `socialclub` text NOT NULL,
  `login` varchar(155) NOT NULL,
  `hwid` varchar(155) NOT NULL,
  `redbucks` varchar(155) NOT NULL,
  `ip` varchar(155) NOT NULL,
  `character1` varchar(155) NOT NULL,
  `character2` varchar(155) NOT NULL,
  `character3` varchar(155) NOT NULL,
  `email` varchar(155) NOT NULL,
  `password` varchar(155) NOT NULL,
  `viplvl` varchar(155) NOT NULL,
  `vipdate` datetime NOT NULL,
  `promocodes` varchar(155) NOT NULL,
  `present` tinyint(1) NOT NULL DEFAULT 0,
  `idkey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `accounts`
--

-- --------------------------------------------------------

--
-- Структура таблицы `adminaccess`
--

CREATE TABLE `adminaccess` (
  `minrank` int(11) NOT NULL,
  `command` varchar(155) NOT NULL,
  `isadmin` tinyint(1) NOT NULL,
  `idkey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `adminaccess`
--

INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES
(7, 'hp', 1, 1),
(7, 'payday', 1, 2),
(7, 'save', 1, 3),
(7, 'vehc', 1, 4),
(7, 'allspawncar', 1, 5),
(7, 'ban', 1, 6),
(7, 'givemoney', 1, 7),
(7, 'st', 1, 8),
(7, 'tpc', 1, 9),
(7, 'fixcar', 1, 10),
(7, 'sw', 1, 11),
(7, 'kill', 1, 12),
(7, 'gm', 1, 13),
(7, 'giveexp', 1, 14),
(7, 'givelic', 1, 15),
(7, 'a', 1, 16),
(7, 'setvehdirt', 1, 17),
(7, 'tp', 1, 18),
(7, 'mtp', 1, 19),
(7, 'setadmin', 1, 20),
(7, 'global', 1, 21),
(7, 'guns', 1, 22),
(7, 'sp', 1, 23),
(7, 'stt', 1, 24),
(7, 'metp', 1, 25);

-- --------------------------------------------------------

--
-- Структура таблицы `advertised`
--

CREATE TABLE `advertised` (
  `ID` int(12) UNSIGNED NOT NULL,
  `Author` varchar(40) NOT NULL,
  `AuthorSIM` int(11) NOT NULL,
  `AD` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Editor` varchar(40) DEFAULT NULL,
  `EditedAD` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Opened` datetime NOT NULL,
  `Closed` datetime DEFAULT NULL,
  `Status` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `alcoclubs`
--

CREATE TABLE `alcoclubs` (
  `id` int(155) NOT NULL,
  `alco1` int(155) NOT NULL,
  `alco2` int(155) NOT NULL,
  `alco3` int(155) NOT NULL,
  `pricemod` varchar(155) NOT NULL,
  `mats` int(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `alcoclubs`
--

INSERT INTO `alcoclubs` (`id`, `alco1`, `alco2`, `alco3`, `pricemod`, `mats`) VALUES
(10, 421, 312, 220, '0', 1000),
(11, 0, 0, 0, '0', 995),
(12, 485, 388, 297, '0', 1000),
(13, 0, 0, 0, '0', 1000);

-- --------------------------------------------------------

--
-- Структура таблицы `banned`
--

CREATE TABLE `banned` (
  `uuid` int(155) NOT NULL,
  `name` text NOT NULL,
  `account` text NOT NULL,
  `time` varchar(155) NOT NULL,
  `until` varchar(155) NOT NULL,
  `ishard` bigint(155) NOT NULL,
  `ip` varchar(155) NOT NULL,
  `socialclub` text NOT NULL,
  `hwid` varchar(155) NOT NULL,
  `reason` text NOT NULL,
  `byadmin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `businesses`
--

CREATE TABLE `businesses` (
  `id` int(255) NOT NULL,
  `owner` text NOT NULL,
  `sellprice` text NOT NULL,
  `type` text NOT NULL,
  `products` text NOT NULL,
  `enterpoint` text NOT NULL,
  `unloadpoint` text NOT NULL,
  `money` text NOT NULL,
  `mafia` text NOT NULL,
  `orders` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `businesses`
--

INSERT INTO `businesses` (`id`, `owner`, `sellprice`, `type`, `products`, `enterpoint`, `unloadpoint`, `money`, `mafia`, `orders`) VALUES
(1, 'Государство', '250000', '1', '[{\"Price\":4,\"Lefts\":76732,\"Autosell\":0,\"Name\":\"Бензин\",\"Ordered\":true}]', '{\"x\":-70.06739,\"y\":-1760.14441,\"z\":28.4140377}', '{\"x\":-73.90815,\"y\":-1773.15356,\"z\":28.778429}', '239700', '10', '[]'),
(2, 'Государство', '250000', '0', '[{\"Price\":200,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Монтировка\",\"Ordered\":true},{\"Price\":240,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Фонарик\",\"Ordered\":true},{\"Price\":200,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Молоток\",\"Ordered\":true},{\"Price\":200,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Гаечный ключ\",\"Ordered\":true},{\"Price\":120,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Канистра бензина\",\"Ordered\":true},{\"Price\":60,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Чипсы\",\"Ordered\":true},{\"Price\":100,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Пицца\",\"Ordered\":true},{\"Price\":200,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Сим-карта\",\"Ordered\":true},{\"Price\":200,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Связка ключей\",\"Ordered\":true}]', '{\"x\":-48.1351662,\"y\":-1757.58716,\"z\":28.3009987}', '{\"x\":-30.6712265,\"y\":-137.504532,\"z\":56.980423}', '368581', '10', '[{\"Name\":\"Фонарик\",\"Amount\":5},{\"Name\":\"Молоток\",\"Amount\":5}]'),
(3, 'Государство', '250000', '1', '[{\"Price\":5,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Бензин\",\"Ordered\":true}]', '{\"x\":265.066132,\"y\":-1263.33813,\"z\":28.1729412}', '{\"x\":264.819122,\"y\":-1283.881,\"z\":29.1734142}', '975718', '10', '[]'),
(4, 'Государство', '250000', '1', '[{\"Price\":2,\"Lefts\":796813,\"Autosell\":0,\"Name\":\"Бензин\",\"Ordered\":true}]', '{\"x\":175.203369,\"y\":-1561.85132,\"z\":28.14208}', '{\"x\":155.525452,\"y\":-1572.7688,\"z\":29.2454815}', '804284', '10', '[]'),
(5, 'Государство', '250000', '0', '[{\"Price\":200,\"Lefts\":9999,\"Autosell\":1,\"Name\":\"Монтировка\",\"Ordered\":true},{\"Price\":240,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Фонарик\",\"Ordered\":true},{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Молоток\",\"Ordered\":true},{\"Price\":200,\"Lefts\":9998,\"Autosell\":1,\"Name\":\"Гаечный ключ\",\"Ordered\":true},{\"Price\":120,\"Lefts\":9999,\"Autosell\":1,\"Name\":\"Канистра бензина\",\"Ordered\":true},{\"Price\":60,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Чипсы\",\"Ordered\":true},{\"Price\":100,\"Lefts\":9998,\"Autosell\":1,\"Name\":\"Пицца\",\"Ordered\":true},{\"Price\":200,\"Lefts\":9997,\"Autosell\":1,\"Name\":\"Сим-карта\",\"Ordered\":true},{\"Price\":200,\"Lefts\":9999,\"Autosell\":1,\"Name\":\"Связка ключей\",\"Ordered\":true}]', '{\"x\":25.7490425,\"y\":-1346.60315,\"z\":28.3770275}', '{\"x\":18.9526539,\"y\":-1354.33655,\"z\":29.30266}', '41002', '10', '[]'),
(6, 'Государство', '500000', '7', '[{\"Price\":100,\"Lefts\":8608,\"Autosell\":10,\"Name\":\"Одежда\",\"Ordered\":true}]', '{\"x\":422.415771,\"y\":-809.7023,\"z\":28.3711281}', '{\"x\":411.7006,\"y\":-808.452637,\"z\":29.1457481}', '858783', '10', '[]'),
(7, 'Государство', '500000', '7', '[{\"Price\":100,\"Lefts\":6559,\"Autosell\":10,\"Name\":\"Одежда\",\"Ordered\":false}]', '{\"x\":77.58358,\"y\":-1389.2688,\"z\":28.2561417}', '{\"x\":97.56552,\"y\":-1402.75879,\"z\":29.1981}', '895471', '10', '[]'),
(8, 'Государство', '250000', '1', '[{\"Price\":2,\"Lefts\":9793,\"Autosell\":0,\"Name\":\"Бензин\",\"Ordered\":true}]', '{\"x\":-319.703217,\"y\":-1472.16211,\"z\":29.4286861}', '{\"x\":-298.1518,\"y\":6234.973,\"z\":31.4381218}', '467400', '10', '[]'),
(12, 'Государство', '500000', '6', '[{\"Price\":720,\"Lefts\":554,\"Autosell\":5,\"Name\":\"Pistol\",\"Ordered\":true},{\"Price\":1000,\"Lefts\":555,\"Autosell\":5,\"Name\":\"CombatPistol\",\"Ordered\":true},{\"Price\":3000,\"Lefts\":475,\"Autosell\":5,\"Name\":\"Revolver\",\"Ordered\":true},{\"Price\":1600,\"Lefts\":555,\"Autosell\":5,\"Name\":\"HeavyPistol\",\"Ordered\":true},{\"Price\":3000,\"Lefts\":554,\"Autosell\":5,\"Name\":\"BullpupShotgun\",\"Ordered\":true},{\"Price\":3800,\"Lefts\":547,\"Autosell\":5,\"Name\":\"CombatPDW\",\"Ordered\":true},{\"Price\":2300,\"Lefts\":555,\"Autosell\":5,\"Name\":\"MachinePistol\",\"Ordered\":true},{\"Price\":4,\"Lefts\":9521,\"Autosell\":5,\"Name\":\"Патроны\",\"Ordered\":true}]', '{\"x\":810.1498,\"y\":-2157.24146,\"z\":28.49901}', '{\"x\":816.1721,\"y\":-2128.54248,\"z\":29.2923584}', '537600', '10', '[]'),
(13, 'Государство', '500000', '6', '[{\"Price\":720,\"Lefts\":555,\"Autosell\":5,\"Name\":\"Pistol\",\"Ordered\":true},{\"Price\":1000,\"Lefts\":554,\"Autosell\":5,\"Name\":\"CombatPistol\",\"Ordered\":true},{\"Price\":3000,\"Lefts\":475,\"Autosell\":5,\"Name\":\"Revolver\",\"Ordered\":true},{\"Price\":1600,\"Lefts\":555,\"Autosell\":5,\"Name\":\"HeavyPistol\",\"Ordered\":true},{\"Price\":3000,\"Lefts\":554,\"Autosell\":5,\"Name\":\"BullpupShotgun\",\"Ordered\":true},{\"Price\":3800,\"Lefts\":547,\"Autosell\":5,\"Name\":\"CombatPDW\",\"Ordered\":true},{\"Price\":2300,\"Lefts\":555,\"Autosell\":5,\"Name\":\"MachinePistol\",\"Ordered\":true},{\"Price\":4,\"Lefts\":9920,\"Autosell\":5,\"Name\":\"Патроны\",\"Ordered\":true}]', '{\"x\":21.9912987,\"y\":-1106.91724,\"z\":28.6770229}', '{\"x\":14.400857,\"y\":-1127.73718,\"z\":28.7759323}', '964885', '11', '[]'),
(14, 'Государство', '500000', '6', '[{\"Price\":720,\"Lefts\":555,\"Autosell\":5,\"Name\":\"Pistol\",\"Ordered\":true},{\"Price\":1000,\"Lefts\":555,\"Autosell\":5,\"Name\":\"CombatPistol\",\"Ordered\":true},{\"Price\":3000,\"Lefts\":465,\"Autosell\":5,\"Name\":\"Revolver\",\"Ordered\":true},{\"Price\":1600,\"Lefts\":555,\"Autosell\":5,\"Name\":\"HeavyPistol\",\"Ordered\":true},{\"Price\":3000,\"Lefts\":554,\"Autosell\":5,\"Name\":\"BullpupShotgun\",\"Ordered\":true},{\"Price\":3800,\"Lefts\":547,\"Autosell\":5,\"Name\":\"CombatPDW\",\"Ordered\":true},{\"Price\":2300,\"Lefts\":555,\"Autosell\":5,\"Name\":\"MachinePistol\",\"Ordered\":true},{\"Price\":4,\"Lefts\":10000,\"Autosell\":5,\"Name\":\"Патроны\",\"Ordered\":true}]', '{\"x\":842.3952,\"y\":-1033.68677,\"z\":27.0748482}', '{\"x\":847.8642,\"y\":-1007.35028,\"z\":28.3418388}', '409350', '10', '[]'),
(15, 'Государство', '250000', '1', '[{\"Price\":3,\"Lefts\":9941,\"Autosell\":0,\"Name\":\"Бензин\",\"Ordered\":true}]', '{\"x\":818.8285,\"y\":-1027.56165,\"z\":25.2843132}', '{\"x\":819.497131,\"y\":-1011.059,\"z\":26.155447}', '600683', '10', '[]'),
(16, 'Государство', '250000', '0', '[{\"Price\":200,\"Lefts\":9999,\"Autosell\":1,\"Name\":\"Монтировка\",\"Ordered\":true},{\"Price\":240,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Фонарик\",\"Ordered\":true},{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Молоток\",\"Ordered\":true},{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Гаечный ключ\",\"Ordered\":true},{\"Price\":120,\"Lefts\":9996,\"Autosell\":1,\"Name\":\"Канистра бензина\",\"Ordered\":true},{\"Price\":60,\"Lefts\":9999,\"Autosell\":1,\"Name\":\"Чипсы\",\"Ordered\":true},{\"Price\":100,\"Lefts\":9998,\"Autosell\":1,\"Name\":\"Пицца\",\"Ordered\":true},{\"Price\":200,\"Lefts\":9999,\"Autosell\":1,\"Name\":\"Сим-карта\",\"Ordered\":true},{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Связка ключей\",\"Ordered\":true}]', '{\"x\":1136.03308,\"y\":-982.2533,\"z\":45.29586}', '{\"x\":1150.572,\"y\":-980.6595,\"z\":46.1583}', '505910', '10', '[{\"Name\":\"Фонарик\",\"Amount\":5},{\"Name\":\"Молоток\",\"Amount\":5}]'),
(17, 'Государство', '250000', '1', '[{\"Price\":7,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Бензин\",\"Ordered\":true}]', '{\"x\":1208.88245,\"y\":-1402.42517,\"z\":34.10415}', '{\"x\":1220.52832,\"y\":-1392.94568,\"z\":35.1502571}', '892650', '10', '[{\"Name\":\"Бензин\",\"Amount\":9000}]'),
(18, 'Государство', '400000', '9', '[{\"Price\":100,\"Lefts\":9718,\"Autosell\":0,\"Name\":\"Расходники\",\"Ordered\":true},{\"Price\":100,\"Lefts\":10000,\"Autosell\":0,\"Name\":\"Татуировки\",\"Ordered\":false}]', '{\"x\":1321.72876,\"y\":-1653.29919,\"z\":51.1552963}', '{\"x\":1316.91248,\"y\":-1639.098,\"z\":52.375042}', '47621', '10', '[]'),
(19, 'Государство', '500000', '7', '[{\"Price\":100,\"Lefts\":0,\"Autosell\":10,\"Name\":\"Одежда\",\"Ordered\":true}]', '{\"x\":125.596184,\"y\":-223.745468,\"z\":53.43743}', '{\"x\":132.016327,\"y\":-201.47261,\"z\":54.4956436}', '173617', '11', '[]'),
(20, 'Государство', '500000', '7', '[{\"Price\":100,\"Lefts\":25,\"Autosell\":10,\"Name\":\"Одежда\",\"Ordered\":true}]', '{\"x\":-163.4802,\"y\":-302.8575,\"z\":38.6132851}', '{\"x\":-149.489761,\"y\":-309.134644,\"z\":38.4286957}', '714210', '10', '[]'),
(22, 'Государство', '500000', '7', '[{\"Price\":100,\"Lefts\":3665,\"Autosell\":10,\"Name\":\"Одежда\",\"Ordered\":true}]', '{\"x\":-709.8169,\"y\":-153.047455,\"z\":36.2951164}', '{\"x\":-726.959534,\"y\":-163.092346,\"z\":37.08786}', '526612', '10', '[]'),
(23, 'Государство', '3800000', '12', '[{\"Price\":100,\"Lefts\":576,\"Autosell\":10000,\"Name\":\"Запчасти\",\"Ordered\":true}]', '{\"x\":-361.602478,\"y\":-132.873581,\"z\":37.560154}', '{\"x\":-379.471039,\"y\":-119.772125,\"z\":38.68728}', '392248', '11', '[]'),
(24, 'Государство', '3800000', '12', '[{\"Price\":95,\"Lefts\":93984,\"Autosell\":0,\"Name\":\"Запчасти\",\"Ordered\":true}]', '{\"x\":-205.807541,\"y\":-1306.96777,\"z\":30.16265}', '{\"x\":-193.220123,\"y\":-1304.82678,\"z\":31.342062}', '141134', '11', '[]'),
(25, 'Государство', '250000', '0', '[{\"Price\":200,\"Lefts\":496,\"Autosell\":1,\"Name\":\"Монтировка\",\"Ordered\":true},{\"Price\":240,\"Lefts\":544,\"Autosell\":1,\"Name\":\"Фонарик\",\"Ordered\":false},{\"Price\":200,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Молоток\",\"Ordered\":false},{\"Price\":200,\"Lefts\":545,\"Autosell\":1,\"Name\":\"Гаечный ключ\",\"Ordered\":true},{\"Price\":120,\"Lefts\":537,\"Autosell\":1,\"Name\":\"Канистра бензина\",\"Ordered\":true},{\"Price\":60,\"Lefts\":9999,\"Autosell\":1,\"Name\":\"Чипсы\",\"Ordered\":true},{\"Price\":100,\"Lefts\":456,\"Autosell\":1,\"Name\":\"Пицца\",\"Ordered\":true},{\"Price\":200,\"Lefts\":289,\"Autosell\":1,\"Name\":\"Сим-карта\",\"Ordered\":true},{\"Price\":200,\"Lefts\":541,\"Autosell\":1,\"Name\":\"Связка ключей\",\"Ordered\":true}]', '{\"x\":374.3244,\"y\":326.75058,\"z\":102.446358}', '{\"x\":375.335571,\"y\":315.834351,\"z\":103.2855}', '713340', '11', '[]'),
(26, 'Государство', '250000', '10', '[{\"Price\":100,\"Lefts\":9983,\"Autosell\":0,\"Name\":\"Расходники\",\"Ordered\":true},{\"Price\":100,\"Lefts\":10000,\"Autosell\":0,\"Name\":\"Парики\",\"Ordered\":false}]', '{\"x\":-30.54569,\"y\":-149.898636,\"z\":55.95653}', '{\"x\":-32.1384468,\"y\":-139.677719,\"z\":57.08342}', '862433', '11', '[]'),
(27, 'Государство', '250000', '10', '[{\"Price\":100,\"Lefts\":10000,\"Autosell\":0,\"Name\":\"Расходники\",\"Ordered\":true},{\"Price\":100,\"Lefts\":10000,\"Autosell\":0,\"Name\":\"Парики\",\"Ordered\":false}]', '{\"x\":1209.66443,\"y\":-470.760559,\"z\":65.0879745}', '{\"x\":1131.78943,\"y\":-3267.703,\"z\":5.2302804}', '834908', '11', '[{\"Name\":\"Расходники\",\"Amount\":80}]'),
(28, 'Государство', '250000', '0', '[{\"Price\":225,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Монтировка\",\"Ordered\":true},{\"Price\":250,\"Lefts\":9999,\"Autosell\":1,\"Name\":\"Фонарик\",\"Ordered\":true},{\"Price\":225,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Молоток\",\"Ordered\":true},{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Гаечный ключ\",\"Ordered\":true},{\"Price\":120,\"Lefts\":9998,\"Autosell\":1,\"Name\":\"Канистра бензина\",\"Ordered\":true},{\"Price\":60,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Чипсы\",\"Ordered\":true},{\"Price\":100,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Пицца\",\"Ordered\":true},{\"Price\":200,\"Lefts\":9990,\"Autosell\":1,\"Name\":\"Сим-карта\",\"Ordered\":true},{\"Price\":220,\"Lefts\":9999,\"Autosell\":1,\"Name\":\"Связка ключей\",\"Ordered\":true}]', '{\"x\":1163.24963,\"y\":-323.301544,\"z\":68.0850754}', '{\"x\":1156.75317,\"y\":-345.325043,\"z\":67.4118347}', '93345', '11', '[]'),
(30, 'Государство', '250000', '1', '[{\"Price\":6,\"Lefts\":78879,\"Autosell\":0,\"Name\":\"Бензин\",\"Ordered\":true}]', '{\"x\":1180.82849,\"y\":-334.415222,\"z\":68.05686}', '{\"x\":1195.16626,\"y\":-331.459473,\"z\":69.1170349}', '344214', '11', '[]'),
(31, 'Государство', '250000', '1', '[{\"Price\":4,\"Lefts\":9057,\"Autosell\":0,\"Name\":\"Бензин\",\"Ordered\":true}]', '{\"x\":620.685852,\"y\":268.866882,\"z\":101.969383}', '{\"x\":618.141235,\"y\":254.147079,\"z\":103.1056}', '624506', '11', '[]'),
(33, 'Государство', '1500000', '3', '[{\"Price\":482000,\"Lefts\":553,\"Autosell\":0,\"Name\":\"Comet2\",\"Ordered\":true},{\"Price\":500000,\"Lefts\":553,\"Autosell\":0,\"Name\":\"Coquette\",\"Ordered\":true},{\"Price\":495500,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Ninef\",\"Ordered\":true},{\"Price\":480000,\"Lefts\":551,\"Autosell\":0,\"Name\":\"Ninef2\",\"Ordered\":true},{\"Price\":552000,\"Lefts\":552,\"Autosell\":0,\"Name\":\"Jester\",\"Ordered\":true},{\"Price\":455000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Elegy2\",\"Ordered\":true},{\"Price\":525000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Infernus\",\"Ordered\":true},{\"Price\":565000,\"Lefts\":553,\"Autosell\":0,\"Name\":\"Carbonizzare\",\"Ordered\":true},{\"Price\":480000,\"Lefts\":550,\"Autosell\":0,\"Name\":\"Dubsta2\",\"Ordered\":true},{\"Price\":560000,\"Lefts\":552,\"Autosell\":0,\"Name\":\"Baller3\",\"Ordered\":true},{\"Price\":485000,\"Lefts\":553,\"Autosell\":0,\"Name\":\"Huntley\",\"Ordered\":true},{\"Price\":820000,\"Lefts\":554,\"Autosell\":0,\"Name\":\"Superd\",\"Ordered\":true},{\"Price\":720000,\"Lefts\":553,\"Autosell\":0,\"Name\":\"Windsor\",\"Ordered\":true},{\"Price\":482000,\"Lefts\":552,\"Autosell\":0,\"Name\":\"BestiaGTS\",\"Ordered\":true},{\"Price\":835000,\"Lefts\":554,\"Autosell\":0,\"Name\":\"Banshee2\",\"Ordered\":true},{\"Price\":920000,\"Lefts\":551,\"Autosell\":0,\"Name\":\"EntityXF\",\"Ordered\":true},{\"Price\":945000,\"Lefts\":540,\"Autosell\":0,\"Name\":\"Neon\",\"Ordered\":true},{\"Price\":880000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Jester2\",\"Ordered\":true},{\"Price\":1400000,\"Lefts\":550,\"Autosell\":0,\"Name\":\"Turismor\",\"Ordered\":true},{\"Price\":1320000,\"Lefts\":553,\"Autosell\":0,\"Name\":\"Penetrator\",\"Ordered\":true},{\"Price\":765000,\"Lefts\":551,\"Autosell\":0,\"Name\":\"Omnis\",\"Ordered\":true},{\"Price\":2400000,\"Lefts\":544,\"Autosell\":0,\"Name\":\"Reaper\",\"Ordered\":true},{\"Price\":1800000,\"Lefts\":549,\"Autosell\":0,\"Name\":\"Italigtb2\",\"Ordered\":true},{\"Price\":3000000,\"Lefts\":542,\"Autosell\":0,\"Name\":\"Xa21\",\"Ordered\":true},{\"Price\":3500000,\"Lefts\":547,\"Autosell\":0,\"Name\":\"Osiris\",\"Ordered\":true},{\"Price\":4400000,\"Lefts\":541,\"Autosell\":0,\"Name\":\"Pfister811\",\"Ordered\":true},{\"Price\":5500000,\"Lefts\":544,\"Autosell\":0,\"Name\":\"Zentorno\",\"Ordered\":true}]', '{\"x\":-804.3674,\"y\":-224.580078,\"z\":36.1057549}', '{\"x\":-811.55304,\"y\":-228.504929,\"z\":37.2433434}', '664576', '11', '[]'),
(34, 'Государство', '1500000', '3', '[{\"Price\":482000,\"Lefts\":553,\"Autosell\":0,\"Name\":\"\",\"Ordered\":true},{\"Price\":500000,\"Lefts\":547,\"Autosell\":0,\"Name\":\"Coquette\",\"Ordered\":true},{\"Price\":495500,\"Lefts\":553,\"Autosell\":0,\"Name\":\"Ninef\",\"Ordered\":true},{\"Price\":480000,\"Lefts\":550,\"Autosell\":0,\"Name\":\"Ninef2\",\"Ordered\":true},{\"Price\":552000,\"Lefts\":545,\"Autosell\":0,\"Name\":\"Jester\",\"Ordered\":true},{\"Price\":455000,\"Lefts\":553,\"Autosell\":0,\"Name\":\"Elegy2\",\"Ordered\":true},{\"Price\":525000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Infernus\",\"Ordered\":true},{\"Price\":565000,\"Lefts\":552,\"Autosell\":0,\"Name\":\"Carbonizzare\",\"Ordered\":true},{\"Price\":480000,\"Lefts\":550,\"Autosell\":0,\"Name\":\"Dubsta2\",\"Ordered\":true},{\"Price\":560000,\"Lefts\":551,\"Autosell\":0,\"Name\":\"Baller3\",\"Ordered\":true},{\"Price\":485000,\"Lefts\":553,\"Autosell\":0,\"Name\":\"Huntley\",\"Ordered\":true},{\"Price\":820000,\"Lefts\":554,\"Autosell\":0,\"Name\":\"Superd\",\"Ordered\":true},{\"Price\":720000,\"Lefts\":552,\"Autosell\":0,\"Name\":\"Windsor\",\"Ordered\":true},{\"Price\":482000,\"Lefts\":552,\"Autosell\":0,\"Name\":\"BestiaGTS\",\"Ordered\":true},{\"Price\":835000,\"Lefts\":554,\"Autosell\":0,\"Name\":\"Banshee2\",\"Ordered\":true},{\"Price\":920000,\"Lefts\":551,\"Autosell\":0,\"Name\":\"EntityXF\",\"Ordered\":true},{\"Price\":945000,\"Lefts\":540,\"Autosell\":0,\"Name\":\"Neon\",\"Ordered\":true},{\"Price\":880000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Jester2\",\"Ordered\":true},{\"Price\":1400000,\"Lefts\":550,\"Autosell\":0,\"Name\":\"Turismor\",\"Ordered\":true},{\"Price\":1320000,\"Lefts\":553,\"Autosell\":0,\"Name\":\"Penetrator\",\"Ordered\":true},{\"Price\":765000,\"Lefts\":551,\"Autosell\":0,\"Name\":\"Omnis\",\"Ordered\":true},{\"Price\":2400000,\"Lefts\":543,\"Autosell\":0,\"Name\":\"Reaper\",\"Ordered\":true},{\"Price\":1800000,\"Lefts\":549,\"Autosell\":0,\"Name\":\"Italigtb2\",\"Ordered\":true},{\"Price\":3000000,\"Lefts\":542,\"Autosell\":0,\"Name\":\"Xa21\",\"Ordered\":true},{\"Price\":3500000,\"Lefts\":542,\"Autosell\":0,\"Name\":\"Osiris\",\"Ordered\":true},{\"Price\":4400000,\"Lefts\":541,\"Autosell\":0,\"Name\":\"Pfister811\",\"Ordered\":true},{\"Price\":5500000,\"Lefts\":543,\"Autosell\":0,\"Name\":\"Zentorno\",\"Ordered\":true}]', '{\"x\":-640.2429,\"y\":297.010376,\"z\":81.3361}', '{\"x\":-638.574951,\"y\":284.024841,\"z\":81.42186}', '579844', '11', '[]'),
(35, 'Государство', '680000', '4', '[{\"Price\":7500,\"Lefts\":1110,\"Autosell\":0,\"Name\":\"Tornado3\",\"Ordered\":true},{\"Price\":8000,\"Lefts\":1110,\"Autosell\":0,\"Name\":\"Tornado4\",\"Ordered\":true},{\"Price\":8000,\"Lefts\":1110,\"Autosell\":0,\"Name\":\"Emperor2\",\"Ordered\":true},{\"Price\":8250,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Voodoo2\",\"Ordered\":true},{\"Price\":8500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Regina\",\"Ordered\":true},{\"Price\":8750,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Ingot\",\"Ordered\":true},{\"Price\":20000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Emperor\",\"Ordered\":true},{\"Price\":22500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Picador\",\"Ordered\":true},{\"Price\":20000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Minivan\",\"Ordered\":true},{\"Price\":22500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Blista2\",\"Ordered\":true},{\"Price\":22500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Manana\",\"Ordered\":true},{\"Price\":25000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Dilettante\",\"Ordered\":true},{\"Price\":25000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Asea\",\"Ordered\":true},{\"Price\":32500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Glendale\",\"Ordered\":true},{\"Price\":25000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Voodoo\",\"Ordered\":true},{\"Price\":32500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Surge\",\"Ordered\":true},{\"Price\":33750,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Primo\",\"Ordered\":true},{\"Price\":35000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Stanier\",\"Ordered\":true},{\"Price\":37500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Stratum\",\"Ordered\":true},{\"Price\":38750,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Tampa\",\"Ordered\":true},{\"Price\":39500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Prairie\",\"Ordered\":true},{\"Price\":39000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Radi\",\"Ordered\":true},{\"Price\":41500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Blista\",\"Ordered\":true},{\"Price\":42500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Stalion\",\"Ordered\":true},{\"Price\":47000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Asterope\",\"Ordered\":true},{\"Price\":49750,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Washington\",\"Ordered\":true},{\"Price\":50000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Premier\",\"Ordered\":true},{\"Price\":45000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Intruder\",\"Ordered\":true},{\"Price\":50000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Ruiner\",\"Ordered\":true},{\"Price\":52500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Oracle\",\"Ordered\":true},{\"Price\":62500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Phoenix\",\"Ordered\":true},{\"Price\":70000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Gauntlet\",\"Ordered\":true},{\"Price\":70000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Buffalo\",\"Ordered\":true},{\"Price\":37500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"RancherXL\",\"Ordered\":true},{\"Price\":50000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Seminole\",\"Ordered\":true},{\"Price\":125000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Baller\",\"Ordered\":true},{\"Price\":137500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Landstalker\",\"Ordered\":true},{\"Price\":150000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Cavalcade\",\"Ordered\":true},{\"Price\":152500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"BJXL\",\"Ordered\":true},{\"Price\":175000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Patriot\",\"Ordered\":true},{\"Price\":75000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Bison3\",\"Ordered\":true},{\"Price\":85000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Issi2\",\"Ordered\":true},{\"Price\":45000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Panto\",\"Ordered\":true}]', '{\"x\":11.1838675,\"y\":-1668.51208,\"z\":28.1402664}', '{\"x\":1131.78943,\"y\":-3267.703,\"z\":5.2302804}', '910669', '11', '[]'),
(36, 'Государство', '680000', '4', '[{\"Price\":7500,\"Lefts\":1110,\"Autosell\":0,\"Name\":\"Tornado3\",\"Ordered\":true},{\"Price\":8000,\"Lefts\":1110,\"Autosell\":0,\"Name\":\"Tornado4\",\"Ordered\":true},{\"Price\":8000,\"Lefts\":1110,\"Autosell\":0,\"Name\":\"Emperor2\",\"Ordered\":true},{\"Price\":8250,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Voodoo2\",\"Ordered\":true},{\"Price\":8500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Regina\",\"Ordered\":true},{\"Price\":8750,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Ingot\",\"Ordered\":true},{\"Price\":20000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Emperor\",\"Ordered\":true},{\"Price\":22500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Picador\",\"Ordered\":true},{\"Price\":20000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Minivan\",\"Ordered\":true},{\"Price\":22500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Blista2\",\"Ordered\":true},{\"Price\":22500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Manana\",\"Ordered\":true},{\"Price\":25000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Dilettante\",\"Ordered\":true},{\"Price\":25000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Asea\",\"Ordered\":true},{\"Price\":32500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Glendale\",\"Ordered\":true},{\"Price\":25000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Voodoo\",\"Ordered\":true},{\"Price\":32500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Surge\",\"Ordered\":true},{\"Price\":33750,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Primo\",\"Ordered\":true},{\"Price\":35000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Stanier\",\"Ordered\":true},{\"Price\":37500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Stratum\",\"Ordered\":true},{\"Price\":38750,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Tampa\",\"Ordered\":true},{\"Price\":39500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Prairie\",\"Ordered\":true},{\"Price\":39000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Radi\",\"Ordered\":true},{\"Price\":41500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Blista\",\"Ordered\":true},{\"Price\":42500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Stalion\",\"Ordered\":true},{\"Price\":47000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Asterope\",\"Ordered\":true},{\"Price\":49750,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Washington\",\"Ordered\":true},{\"Price\":50000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Premier\",\"Ordered\":true},{\"Price\":45000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Intruder\",\"Ordered\":true},{\"Price\":50000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Ruiner\",\"Ordered\":true},{\"Price\":52500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Oracle\",\"Ordered\":true},{\"Price\":62500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Phoenix\",\"Ordered\":true},{\"Price\":70000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Gauntlet\",\"Ordered\":true},{\"Price\":70000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Buffalo\",\"Ordered\":true},{\"Price\":37500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"RancherXL\",\"Ordered\":true},{\"Price\":50000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Seminole\",\"Ordered\":true},{\"Price\":125000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Baller\",\"Ordered\":true},{\"Price\":137500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Landstalker\",\"Ordered\":true},{\"Price\":150000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Cavalcade\",\"Ordered\":true},{\"Price\":152500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"BJXL\",\"Ordered\":true},{\"Price\":175000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Patriot\",\"Ordered\":true},{\"Price\":75000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Bison3\",\"Ordered\":true},{\"Price\":85000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Issi2\",\"Ordered\":true},{\"Price\":45000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Panto\",\"Ordered\":true}]', '{\"x\":-51.3517036,\"y\":6360.021,\"z\":30.3317814}', '{\"x\":-40.0485535,\"y\":6356.36475,\"z\":31.3234921}', '996891', '11', '[]'),
(37, 'Государство', '680000', '4', '[{\"Price\":7500,\"Lefts\":1110,\"Autosell\":0,\"Name\":\"Tornado3\",\"Ordered\":true},{\"Price\":8000,\"Lefts\":1110,\"Autosell\":0,\"Name\":\"Tornado4\",\"Ordered\":true},{\"Price\":8000,\"Lefts\":1110,\"Autosell\":0,\"Name\":\"Emperor2\",\"Ordered\":true},{\"Price\":8250,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Voodoo2\",\"Ordered\":true},{\"Price\":8500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Regina\",\"Ordered\":true},{\"Price\":8750,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Ingot\",\"Ordered\":true},{\"Price\":20000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Emperor\",\"Ordered\":true},{\"Price\":22500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Picador\",\"Ordered\":true},{\"Price\":20000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Minivan\",\"Ordered\":true},{\"Price\":22500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Blista2\",\"Ordered\":true},{\"Price\":22500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Manana\",\"Ordered\":true},{\"Price\":25000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Dilettante\",\"Ordered\":true},{\"Price\":25000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Asea\",\"Ordered\":true},{\"Price\":32500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Glendale\",\"Ordered\":true},{\"Price\":25000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Voodoo\",\"Ordered\":true},{\"Price\":32500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Surge\",\"Ordered\":true},{\"Price\":33750,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Primo\",\"Ordered\":true},{\"Price\":35000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Stanier\",\"Ordered\":true},{\"Price\":37500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Stratum\",\"Ordered\":true},{\"Price\":38750,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Tampa\",\"Ordered\":true},{\"Price\":39500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Prairie\",\"Ordered\":true},{\"Price\":39000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Radi\",\"Ordered\":true},{\"Price\":41500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Blista\",\"Ordered\":true},{\"Price\":42500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Stalion\",\"Ordered\":true},{\"Price\":47000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Asterope\",\"Ordered\":true},{\"Price\":49750,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Washington\",\"Ordered\":true},{\"Price\":50000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Premier\",\"Ordered\":true},{\"Price\":45000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Intruder\",\"Ordered\":true},{\"Price\":50000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Ruiner\",\"Ordered\":true},{\"Price\":52500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Oracle\",\"Ordered\":true},{\"Price\":62500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Phoenix\",\"Ordered\":true},{\"Price\":70000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Gauntlet\",\"Ordered\":true},{\"Price\":70000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Buffalo\",\"Ordered\":true},{\"Price\":37500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"RancherXL\",\"Ordered\":true},{\"Price\":50000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Seminole\",\"Ordered\":true},{\"Price\":125000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Baller\",\"Ordered\":true},{\"Price\":137500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Landstalker\",\"Ordered\":true},{\"Price\":150000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Cavalcade\",\"Ordered\":true},{\"Price\":152500,\"Lefts\":0,\"Autosell\":0,\"Name\":\"BJXL\",\"Ordered\":true},{\"Price\":175000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Patriot\",\"Ordered\":true},{\"Price\":75000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Bison3\",\"Ordered\":true},{\"Price\":85000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Issi2\",\"Ordered\":true},{\"Price\":45000,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Panto\",\"Ordered\":true}]', '{\"x\":-69.42376,\"y\":62.67527,\"z\":70.77328}', '{\"x\":-77.5058441,\"y\":54.6940536,\"z\":71.84757}', '328613', '11', '[]'),
(39, 'Государство', '1100000', '2', '[{\"Price\":1000000,\"Lefts\":545,\"Autosell\":0,\"Name\":\"gtr\",\"Ordered\":true},{\"Price\":135000,\"Lefts\":547,\"Autosell\":0,\"Name\":\"Sultan\",\"Ordered\":true},{\"Price\":960000,\"Lefts\":553,\"Autosell\":0,\"Name\":\"SultanRS\",\"Ordered\":true},{\"Price\":480000,\"Lefts\":553,\"Autosell\":0,\"Name\":\"Kuruma\",\"Ordered\":true},{\"Price\":111000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Fugitive\",\"Ordered\":true},{\"Price\":114000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Tailgater\",\"Ordered\":true},{\"Price\":135000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Sentinel\",\"Ordered\":true},{\"Price\":144000,\"Lefts\":553,\"Autosell\":0,\"Name\":\"F620\",\"Ordered\":true},{\"Price\":219000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Schwarzer\",\"Ordered\":true},{\"Price\":225000,\"Lefts\":554,\"Autosell\":0,\"Name\":\"Exemplar\",\"Ordered\":true},{\"Price\":249000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Felon\",\"Ordered\":true},{\"Price\":240000,\"Lefts\":554,\"Autosell\":0,\"Name\":\"Schafter2\",\"Ordered\":true},{\"Price\":270000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Jackal\",\"Ordered\":true},{\"Price\":300000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Oracle2\",\"Ordered\":true},{\"Price\":360000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Surano\",\"Ordered\":true},{\"Price\":390000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Zion\",\"Ordered\":true},{\"Price\":450000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Dominator\",\"Ordered\":true},{\"Price\":270000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"FQ2\",\"Ordered\":true},{\"Price\":315000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Gresley\",\"Ordered\":true},{\"Price\":330000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Serrano\",\"Ordered\":true},{\"Price\":390000,\"Lefts\":553,\"Autosell\":0,\"Name\":\"Dubsta\",\"Ordered\":true},{\"Price\":405000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Rocoto\",\"Ordered\":true},{\"Price\":450000,\"Lefts\":554,\"Autosell\":0,\"Name\":\"Cavalcade2\",\"Ordered\":true},{\"Price\":480000,\"Lefts\":553,\"Autosell\":0,\"Name\":\"XLS\",\"Ordered\":true},{\"Price\":540000,\"Lefts\":552,\"Autosell\":0,\"Name\":\"Baller2\",\"Ordered\":true},{\"Price\":840000,\"Lefts\":539,\"Autosell\":0,\"Name\":\"Elegy\",\"Ordered\":true},{\"Price\":810000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Banshee\",\"Ordered\":true},{\"Price\":714000,\"Lefts\":554,\"Autosell\":0,\"Name\":\"Massacro2\",\"Ordered\":true},{\"Price\":750000,\"Lefts\":550,\"Autosell\":0,\"Name\":\"GP1\",\"Ordered\":true}]', '{\"x\":-38.7776527,\"y\":-1109.83826,\"z\":25.3179569}', '{\"x\":-62.8620644,\"y\":-1108.12427,\"z\":26.3592052}', '792270', '11', '[]'),
(40, 'Государство', '1100000', '2', '[{\"Price\":135000,\"Lefts\":548,\"Autosell\":0,\"Name\":\"Sultan\",\"Ordered\":true},{\"Price\":960000,\"Lefts\":553,\"Autosell\":0,\"Name\":\"SultanRS\",\"Ordered\":true},{\"Price\":480000,\"Lefts\":554,\"Autosell\":0,\"Name\":\"Kuruma\",\"Ordered\":true},{\"Price\":111000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Fugitive\",\"Ordered\":true},{\"Price\":114000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Tailgater\",\"Ordered\":true},{\"Price\":135000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Sentinel\",\"Ordered\":true},{\"Price\":144000,\"Lefts\":553,\"Autosell\":0,\"Name\":\"F620\",\"Ordered\":true},{\"Price\":219000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Schwarzer\",\"Ordered\":true},{\"Price\":225000,\"Lefts\":554,\"Autosell\":0,\"Name\":\"Exemplar\",\"Ordered\":true},{\"Price\":249000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Felon\",\"Ordered\":true},{\"Price\":240000,\"Lefts\":554,\"Autosell\":0,\"Name\":\"Schafter2\",\"Ordered\":true},{\"Price\":270000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Jackal\",\"Ordered\":true},{\"Price\":300000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Oracle2\",\"Ordered\":true},{\"Price\":360000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Surano\",\"Ordered\":true},{\"Price\":390000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Zion\",\"Ordered\":true},{\"Price\":450000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Dominator\",\"Ordered\":true},{\"Price\":270000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"FQ2\",\"Ordered\":true},{\"Price\":315000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Gresley\",\"Ordered\":true},{\"Price\":330000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Serrano\",\"Ordered\":true},{\"Price\":390000,\"Lefts\":553,\"Autosell\":0,\"Name\":\"Dubsta\",\"Ordered\":true},{\"Price\":405000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Rocoto\",\"Ordered\":true},{\"Price\":450000,\"Lefts\":554,\"Autosell\":0,\"Name\":\"Cavalcade2\",\"Ordered\":true},{\"Price\":480000,\"Lefts\":553,\"Autosell\":0,\"Name\":\"XLS\",\"Ordered\":true},{\"Price\":540000,\"Lefts\":552,\"Autosell\":0,\"Name\":\"Baller2\",\"Ordered\":true},{\"Price\":840000,\"Lefts\":539,\"Autosell\":0,\"Name\":\"Elegy\",\"Ordered\":true},{\"Price\":810000,\"Lefts\":555,\"Autosell\":0,\"Name\":\"Banshee\",\"Ordered\":true},{\"Price\":714000,\"Lefts\":554,\"Autosell\":0,\"Name\":\"Massacro2\",\"Ordered\":true},{\"Price\":750000,\"Lefts\":550,\"Autosell\":0,\"Name\":\"GP1\",\"Ordered\":true}]', '{\"x\":1174.66174,\"y\":2648.34155,\"z\":36.6761627}', '{\"x\":1177.24927,\"y\":2660.06152,\"z\":37.9990158}', '7929', '11', '[]'),
(41, 'Государство', '380000', '11', '[{\"Price\":100,\"Lefts\":9992,\"Autosell\":0,\"Name\":\"Маски\",\"Ordered\":false}]', '{\"x\":-1337.7655,\"y\":-1277.31848,\"z\":3.762885}', '{\"x\":-1336.95764,\"y\":-1295.47168,\"z\":4.83847332}', '193645', '11', '[]'),
(42, 'Государство', '250000', '0', '[{\"Price\":200,\"Lefts\":498,\"Autosell\":1,\"Name\":\"Монтировка\",\"Ordered\":true},{\"Price\":240,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Фонарик\",\"Ordered\":false},{\"Price\":200,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Молоток\",\"Ordered\":false},{\"Price\":200,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Гаечный ключ\",\"Ordered\":true},{\"Price\":120,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Канистра бензина\",\"Ordered\":true},{\"Price\":60,\"Lefts\":50,\"Autosell\":1,\"Name\":\"Чипсы\",\"Ordered\":true},{\"Price\":100,\"Lefts\":549,\"Autosell\":1,\"Name\":\"Пицца\",\"Ordered\":true},{\"Price\":200,\"Lefts\":422,\"Autosell\":1,\"Name\":\"Сим-карта\",\"Ordered\":true},{\"Price\":200,\"Lefts\":549,\"Autosell\":1,\"Name\":\"Связка ключей\",\"Ordered\":true}]', '{\"x\":-3243.16064,\"y\":1001.66724,\"z\":11.705678}', '{\"x\":-3230.602,\"y\":1003.31091,\"z\":12.3125191}', '493466', '11', '[]'),
(43, 'Государство', '250000', '0', '[{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Монтировка\",\"Ordered\":true},{\"Price\":240,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Фонарик\",\"Ordered\":true},{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Молоток\",\"Ordered\":true},{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Гаечный ключ\",\"Ordered\":true},{\"Price\":120,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Канистра бензина\",\"Ordered\":true},{\"Price\":60,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Чипсы\",\"Ordered\":true},{\"Price\":100,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Пицца\",\"Ordered\":true},{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Сим-карта\",\"Ordered\":true},{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Связка ключей\",\"Ordered\":true}]', '{\"x\":-3040.22681,\"y\":586.1577,\"z\":6.77249432}', '{\"x\":-3030.126,\"y\":592.1546,\"z\":7.76843357}', '262647', '12', '[{\"Name\":\"Фонарик\",\"Amount\":5},{\"Name\":\"Молоток\",\"Amount\":5}]'),
(44, 'Государство', '250000', '0', '[{\"Price\":200,\"Lefts\":500,\"Autosell\":1,\"Name\":\"Монтировка\",\"Ordered\":true},{\"Price\":240,\"Lefts\":549,\"Autosell\":1,\"Name\":\"Фонарик\",\"Ordered\":false},{\"Price\":200,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Молоток\",\"Ordered\":false},{\"Price\":200,\"Lefts\":549,\"Autosell\":1,\"Name\":\"Гаечный ключ\",\"Ordered\":true},{\"Price\":120,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Канистра бензина\",\"Ordered\":true},{\"Price\":60,\"Lefts\":49,\"Autosell\":1,\"Name\":\"Чипсы\",\"Ordered\":true},{\"Price\":100,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Пицца\",\"Ordered\":true},{\"Price\":200,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Сим-карта\",\"Ordered\":true},{\"Price\":200,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Связка ключей\",\"Ordered\":true}]', '{\"x\":1729.538,\"y\":6415.213,\"z\":33.9172173}', '{\"x\":1723.4718,\"y\":6402.528,\"z\":34.2770844}', '335785', '12', '[]'),
(45, 'Государство', '250000', '0', '[{\"Price\":200,\"Lefts\":500,\"Autosell\":1,\"Name\":\"Монтировка\",\"Ordered\":true},{\"Price\":240,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Фонарик\",\"Ordered\":false},{\"Price\":200,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Молоток\",\"Ordered\":false},{\"Price\":200,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Гаечный ключ\",\"Ordered\":true},{\"Price\":120,\"Lefts\":549,\"Autosell\":1,\"Name\":\"Канистра бензина\",\"Ordered\":true},{\"Price\":60,\"Lefts\":30,\"Autosell\":1,\"Name\":\"Чипсы\",\"Ordered\":true},{\"Price\":100,\"Lefts\":535,\"Autosell\":1,\"Name\":\"Пицца\",\"Ordered\":true},{\"Price\":200,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Сим-карта\",\"Ordered\":true},{\"Price\":200,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Связка ключей\",\"Ordered\":true}]', '{\"x\":2678.31543,\"y\":3281.311,\"z\":54.12112}', '{\"x\":2691.84326,\"y\":3284.796,\"z\":55.2405243}', '213493', '12', '[]'),
(46, 'Государство', '250000', '0', '[{\"Price\":200,\"Lefts\":500,\"Autosell\":1,\"Name\":\"Монтировка\",\"Ordered\":true},{\"Price\":240,\"Lefts\":549,\"Autosell\":1,\"Name\":\"Фонарик\",\"Ordered\":false},{\"Price\":200,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Молоток\",\"Ordered\":false},{\"Price\":200,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Гаечный ключ\",\"Ordered\":true},{\"Price\":120,\"Lefts\":544,\"Autosell\":1,\"Name\":\"Канистра бензина\",\"Ordered\":true},{\"Price\":60,\"Lefts\":30,\"Autosell\":1,\"Name\":\"Чипсы\",\"Ordered\":true},{\"Price\":100,\"Lefts\":537,\"Autosell\":1,\"Name\":\"Пицца\",\"Ordered\":true},{\"Price\":200,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Сим-карта\",\"Ordered\":true},{\"Price\":200,\"Lefts\":549,\"Autosell\":1,\"Name\":\"Связка ключей\",\"Ordered\":true}]', '{\"x\":2556.57617,\"y\":382.462036,\"z\":107.502892}', '{\"x\":2575.692,\"y\":398.397552,\"z\":108.447441}', '745219', '12', '[]'),
(47, 'Государство', '250000', '0', '[{\"Price\":200,\"Lefts\":500,\"Autosell\":1,\"Name\":\"Монтировка\",\"Ordered\":true},{\"Price\":240,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Фонарик\",\"Ordered\":false},{\"Price\":200,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Молоток\",\"Ordered\":false},{\"Price\":200,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Гаечный ключ\",\"Ordered\":true},{\"Price\":120,\"Lefts\":546,\"Autosell\":1,\"Name\":\"Канистра бензина\",\"Ordered\":true},{\"Price\":60,\"Lefts\":49,\"Autosell\":1,\"Name\":\"Чипсы\",\"Ordered\":true},{\"Price\":100,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Пицца\",\"Ordered\":true},{\"Price\":200,\"Lefts\":527,\"Autosell\":1,\"Name\":\"Сим-карта\",\"Ordered\":true},{\"Price\":200,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Связка ключей\",\"Ordered\":true}]', '{\"x\":1961.18811,\"y\":3741.19775,\"z\":31.2237186}', '{\"x\":1969.81616,\"y\":3731.47314,\"z\":32.3546753}', '401096', '12', '[]'),
(48, 'Государство', '250000', '0', '[{\"Price\":200,\"Lefts\":500,\"Autosell\":1,\"Name\":\"Монтировка\",\"Ordered\":true},{\"Price\":240,\"Lefts\":549,\"Autosell\":1,\"Name\":\"Фонарик\",\"Ordered\":false},{\"Price\":200,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Молоток\",\"Ordered\":false},{\"Price\":200,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Гаечный ключ\",\"Ordered\":true},{\"Price\":120,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Канистра бензина\",\"Ordered\":true},{\"Price\":60,\"Lefts\":46,\"Autosell\":1,\"Name\":\"Чипсы\",\"Ordered\":true},{\"Price\":100,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Пицца\",\"Ordered\":true},{\"Price\":200,\"Lefts\":403,\"Autosell\":1,\"Name\":\"Сим-карта\",\"Ordered\":true},{\"Price\":200,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Связка ключей\",\"Ordered\":true}]', '{\"x\":1698.844,\"y\":4924.11035,\"z\":40.943634}', '{\"x\":1690.6936,\"y\":4937.692,\"z\":42.1078644}', '265811', '12', '[]'),
(49, 'Государство', '250000', '0', '[{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Монтировка\",\"Ordered\":true},{\"Price\":240,\"Lefts\":9999,\"Autosell\":1,\"Name\":\"Фонарик\",\"Ordered\":true},{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Молоток\",\"Ordered\":true},{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Гаечный ключ\",\"Ordered\":true},{\"Price\":120,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Канистра бензина\",\"Ordered\":true},{\"Price\":60,\"Lefts\":9996,\"Autosell\":1,\"Name\":\"Чипсы\",\"Ordered\":true},{\"Price\":100,\"Lefts\":9997,\"Autosell\":1,\"Name\":\"Пицца\",\"Ordered\":true},{\"Price\":200,\"Lefts\":9989,\"Autosell\":1,\"Name\":\"Сим-карта\",\"Ordered\":true},{\"Price\":200,\"Lefts\":9998,\"Autosell\":1,\"Name\":\"Связка ключей\",\"Ordered\":true}]', '{\"x\":547.0276,\"y\":2670.162,\"z\":41.0364571}', '{\"x\":542.0344,\"y\":2681.44727,\"z\":42.2523956}', '610466', '12', '[{\"Name\":\"Фонарик\",\"Amount\":5},{\"Name\":\"Молоток\",\"Amount\":5}]'),
(50, 'Государство', '250000', '0', '[{\"Price\":200,\"Lefts\":500,\"Autosell\":1,\"Name\":\"Монтировка\",\"Ordered\":true},{\"Price\":240,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Фонарик\",\"Ordered\":false},{\"Price\":200,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Молоток\",\"Ordered\":false},{\"Price\":200,\"Lefts\":550,\"Autosell\":1,\"Name\":\"Гаечный ключ\",\"Ordered\":true},{\"Price\":120,\"Lefts\":547,\"Autosell\":1,\"Name\":\"Канистра бензина\",\"Ordered\":true},{\"Price\":60,\"Lefts\":50,\"Autosell\":1,\"Name\":\"Чипсы\",\"Ordered\":true},{\"Price\":100,\"Lefts\":511,\"Autosell\":1,\"Name\":\"Пицца\",\"Ordered\":true},{\"Price\":200,\"Lefts\":491,\"Autosell\":1,\"Name\":\"Сим-карта\",\"Ordered\":true},{\"Price\":200,\"Lefts\":548,\"Autosell\":1,\"Name\":\"Связка ключей\",\"Ordered\":true}]', '{\"x\":1166.41,\"y\":2709.18457,\"z\":37.03764}', '{\"x\":1165.99817,\"y\":2692.4563,\"z\":37.90284}', '604606', '12', '[]'),
(51, 'Государство', '250000', '0', '[{\"Price\":230,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Монтировка\",\"Ordered\":true},{\"Price\":260,\"Lefts\":9999,\"Autosell\":1,\"Name\":\"Фонарик\",\"Ordered\":true},{\"Price\":230,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Молоток\",\"Ordered\":true},{\"Price\":230,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Гаечный ключ\",\"Ordered\":true},{\"Price\":140,\"Lefts\":9999,\"Autosell\":1,\"Name\":\"Канистра бензина\",\"Ordered\":true},{\"Price\":70,\"Lefts\":9995,\"Autosell\":1,\"Name\":\"Чипсы\",\"Ordered\":true},{\"Price\":120,\"Lefts\":9997,\"Autosell\":1,\"Name\":\"Пицца\",\"Ordered\":true},{\"Price\":235,\"Lefts\":9997,\"Autosell\":1,\"Name\":\"Сим-карта\",\"Ordered\":true},{\"Price\":235,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Связка ключей\",\"Ordered\":true}]', '{\"x\":-1223.89966,\"y\":-906.8769,\"z\":11.2062941}', '{\"x\":-1229.94629,\"y\":-892.973,\"z\":12.3492374}', '510748', '12', '[]'),
(52, 'Государство', '250000', '0', '[{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Монтировка\",\"Ordered\":true},{\"Price\":240,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Фонарик\",\"Ordered\":true},{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Молоток\",\"Ordered\":true},{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Гаечный ключ\",\"Ordered\":true},{\"Price\":120,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Канистра бензина\",\"Ordered\":true},{\"Price\":60,\"Lefts\":9999,\"Autosell\":1,\"Name\":\"Чипсы\",\"Ordered\":true},{\"Price\":100,\"Lefts\":9999,\"Autosell\":1,\"Name\":\"Пицца\",\"Ordered\":true},{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Сим-карта\",\"Ordered\":true},{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Связка ключей\",\"Ordered\":true}]', '{\"x\":-707.604431,\"y\":-913.824341,\"z\":18.0955734}', '{\"x\":-722.5427,\"y\":-921.1238,\"z\":19.0140419}', '867727', '12', '[{\"Name\":\"Фонарик\",\"Amount\":5},{\"Name\":\"Молоток\",\"Amount\":5}]'),
(53, 'Государство', '250000', '0', '[{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Монтировка\",\"Ordered\":true},{\"Price\":240,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Фонарик\",\"Ordered\":true},{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Молоток\",\"Ordered\":true},{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Гаечный ключ\",\"Ordered\":true},{\"Price\":120,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Канистра бензина\",\"Ordered\":true},{\"Price\":60,\"Lefts\":9996,\"Autosell\":1,\"Name\":\"Чипсы\",\"Ordered\":true},{\"Price\":100,\"Lefts\":9998,\"Autosell\":1,\"Name\":\"Пицца\",\"Ordered\":true},{\"Price\":200,\"Lefts\":9899,\"Autosell\":1,\"Name\":\"Сим-карта\",\"Ordered\":true},{\"Price\":200,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Связка ключей\",\"Ordered\":true}]', '{\"x\":-1821.29138,\"y\":792.9603,\"z\":137.001221}', '{\"x\":-1802.89734,\"y\":778.2964,\"z\":137.039749}', '800434', '12', '[]'),
(54, 'Государство', '250000', '0', '[{\"Price\":210,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Монтировка\",\"Ordered\":true},{\"Price\":240,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Фонарик\",\"Ordered\":true},{\"Price\":200,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Молоток\",\"Ordered\":true},{\"Price\":200,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Гаечный ключ\",\"Ordered\":true},{\"Price\":120,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Канистра бензина\",\"Ordered\":true},{\"Price\":60,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Чипсы\",\"Ordered\":true},{\"Price\":100,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Пицца\",\"Ordered\":true},{\"Price\":200,\"Lefts\":993,\"Autosell\":1,\"Name\":\"Сим-карта\",\"Ordered\":true},{\"Price\":200,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Связка ключей\",\"Ordered\":true}]', '{\"x\":77.884964,\"y\":-226.15773,\"z\":53.52209}', '{\"x\":86.8339,\"y\":-205.151733,\"z\":54.49134}', '11610', '12', '[]'),
(55, 'Государство', '250000', '1', '[{\"Price\":2,\"Lefts\":9914,\"Autosell\":0,\"Name\":\"Бензин\",\"Ordered\":true}]', '{\"x\":1205.74158,\"y\":2658.04688,\"z\":36.7042923}', '{\"x\":1202.79211,\"y\":2670.93042,\"z\":37.75307}', '299737', '12', '[]'),
(56, 'Государство', '250000', '1', '[{\"Price\":2,\"Lefts\":79897,\"Autosell\":0,\"Name\":\"Бензин\",\"Ordered\":true}]', '{\"x\":2581.088,\"y\":361.911,\"z\":107.348686}', '{\"x\":2579.80762,\"y\":337.9975,\"z\":108.446136}', '468774', '12', '[]'),
(57, 'Государство', '250000', '1', '[{\"Price\":2,\"Lefts\":9644,\"Autosell\":0,\"Name\":\"Бензин\",\"Ordered\":true}]', '{\"x\":-525.634338,\"y\":-1211.07727,\"z\":17.0511761}', '{\"x\":-542.3996,\"y\":-1197.64807,\"z\":18.0142727}', '63989', '12', '[]'),
(58, 'Государство', '250000', '1', '[{\"Price\":2,\"Lefts\":9474,\"Autosell\":0,\"Name\":\"Бензин\",\"Ordered\":true}]', '{\"x\":-1436.56543,\"y\":-276.918335,\"z\":45.0811539}', '{\"x\":-1455.40515,\"y\":-287.4856,\"z\":46.53601}', '648965', '12', '[]'),
(59, 'Государство', '250000', '1', '[{\"Price\":2,\"Lefts\":9954,\"Autosell\":0,\"Name\":\"Бензин\",\"Ordered\":true}]', '{\"x\":-2096.324,\"y\":-316.9588,\"z\":11.90341}', '{\"x\":-2096.202,\"y\":-349.548218,\"z\":12.808816}', '128310', '12', '[]'),
(60, 'Государство', '250000', '1', '[{\"Price\":7,\"Lefts\":10000,\"Autosell\":0,\"Name\":\"Бензин\",\"Ordered\":true}]', '{\"x\":-1801.248,\"y\":804.5142,\"z\":137.347733}', '{\"x\":-1784.113,\"y\":785.7257,\"z\":138.3047}', '145634', '12', '[]'),
(61, 'Государство', '250000', '1', '[{\"Price\":4,\"Lefts\":9845,\"Autosell\":0,\"Name\":\"Бензин\",\"Ordered\":true}]', '{\"x\":-2555.043,\"y\":2334.29272,\"z\":31.92724}', '{\"x\":-2531.66382,\"y\":2332.90332,\"z\":33.05685}', '753153', '12', '[{\"Name\":\"Бензин\",\"Amount\":5000}]'),
(62, 'Государство', '250000', '1', '[{\"Price\":2,\"Lefts\":80000,\"Autosell\":0,\"Name\":\"Бензин\",\"Ordered\":true}]', '{\"x\":179.974442,\"y\":6602.88428,\"z\":30.7481575}', '{\"x\":179.712082,\"y\":6580.05273,\"z\":31.84439}', '842316', '11', '[]'),
(63, 'Государство', '250000', '1', '[{\"Price\":2,\"Lefts\":79726,\"Autosell\":0,\"Name\":\"Бензин\",\"Ordered\":true}]', '{\"x\":1702.22632,\"y\":6420.794,\"z\":31.50728}', '{\"x\":1686.82349,\"y\":6404.84131,\"z\":31.5433521}', '333778', '12', '[]'),
(64, 'Государство', '250000', '1', '[{\"Price\":2,\"Lefts\":79741,\"Autosell\":0,\"Name\":\"Бензин\",\"Ordered\":true}]', '{\"x\":2682.836,\"y\":3262.572,\"z\":54.1205063}', '{\"x\":2675.53125,\"y\":3246.5293,\"z\":55.2263527}', '627989', '12', '[]');
INSERT INTO `businesses` (`id`, `owner`, `sellprice`, `type`, `products`, `enterpoint`, `unloadpoint`, `money`, `mafia`, `orders`) VALUES
(65, 'Государство', '500000', '6', '[{\"Price\":720,\"Lefts\":555,\"Autosell\":5,\"Name\":\"Pistol\",\"Ordered\":true},{\"Price\":1000,\"Lefts\":555,\"Autosell\":5,\"Name\":\"CombatPistol\",\"Ordered\":true},{\"Price\":3000,\"Lefts\":475,\"Autosell\":5,\"Name\":\"Revolver\",\"Ordered\":true},{\"Price\":1600,\"Lefts\":555,\"Autosell\":5,\"Name\":\"HeavyPistol\",\"Ordered\":true},{\"Price\":3000,\"Lefts\":554,\"Autosell\":5,\"Name\":\"BullpupShotgun\",\"Ordered\":true},{\"Price\":3800,\"Lefts\":547,\"Autosell\":5,\"Name\":\"CombatPDW\",\"Ordered\":true},{\"Price\":2300,\"Lefts\":555,\"Autosell\":5,\"Name\":\"MachinePistol\",\"Ordered\":true},{\"Price\":4,\"Lefts\":10000,\"Autosell\":5,\"Name\":\"Патроны\",\"Ordered\":true}]', '{\"x\":-1117.67993,\"y\":2698.89551,\"z\":17.434124}', '{\"x\":-1103.45422,\"y\":2685.62061,\"z\":19.2382488}', '484926', '13', '[]'),
(66, 'Государство', '500000', '6', '[{\"Price\":720,\"Lefts\":555,\"Autosell\":5,\"Name\":\"Pistol\",\"Ordered\":true},{\"Price\":1000,\"Lefts\":555,\"Autosell\":5,\"Name\":\"CombatPistol\",\"Ordered\":true},{\"Price\":3000,\"Lefts\":475,\"Autosell\":5,\"Name\":\"Revolver\",\"Ordered\":true},{\"Price\":1600,\"Lefts\":555,\"Autosell\":5,\"Name\":\"HeavyPistol\",\"Ordered\":true},{\"Price\":3000,\"Lefts\":554,\"Autosell\":5,\"Name\":\"BullpupShotgun\",\"Ordered\":true},{\"Price\":3800,\"Lefts\":547,\"Autosell\":5,\"Name\":\"CombatPDW\",\"Ordered\":true},{\"Price\":2300,\"Lefts\":555,\"Autosell\":5,\"Name\":\"MachinePistol\",\"Ordered\":true},{\"Price\":4,\"Lefts\":10000,\"Autosell\":5,\"Name\":\"Патроны\",\"Ordered\":true}]', '{\"x\":-330.25827,\"y\":6084.55664,\"z\":30.334753}', '{\"x\":-316.978149,\"y\":6067.50537,\"z\":31.1962566}', '209512', '13', '[]'),
(67, 'Государство', '500000', '6', '[{\"Price\":720,\"Lefts\":555,\"Autosell\":5,\"Name\":\"Pistol\",\"Ordered\":true},{\"Price\":1000,\"Lefts\":555,\"Autosell\":5,\"Name\":\"CombatPistol\",\"Ordered\":true},{\"Price\":3000,\"Lefts\":474,\"Autosell\":5,\"Name\":\"Revolver\",\"Ordered\":true},{\"Price\":1600,\"Lefts\":555,\"Autosell\":5,\"Name\":\"HeavyPistol\",\"Ordered\":true},{\"Price\":3000,\"Lefts\":554,\"Autosell\":5,\"Name\":\"BullpupShotgun\",\"Ordered\":true},{\"Price\":3800,\"Lefts\":547,\"Autosell\":5,\"Name\":\"CombatPDW\",\"Ordered\":true},{\"Price\":2300,\"Lefts\":555,\"Autosell\":5,\"Name\":\"MachinePistol\",\"Ordered\":true},{\"Price\":4,\"Lefts\":8891,\"Autosell\":5,\"Name\":\"Патроны\",\"Ordered\":true}]', '{\"x\":-3171.90869,\"y\":1088.22827,\"z\":19.7187176}', '{\"x\":-3156.62256,\"y\":1079.93408,\"z\":20.69209}', '33434', '13', '[]'),
(68, 'Государство', '250000', '0', '[{\"Price\":210,\"Lefts\":9999,\"Autosell\":1,\"Name\":\"Монтировка\",\"Ordered\":true},{\"Price\":240,\"Lefts\":9999,\"Autosell\":1,\"Name\":\"Фонарик\",\"Ordered\":true},{\"Price\":200,\"Lefts\":9999,\"Autosell\":1,\"Name\":\"Молоток\",\"Ordered\":true},{\"Price\":200,\"Lefts\":9999,\"Autosell\":1,\"Name\":\"Гаечный ключ\",\"Ordered\":true},{\"Price\":120,\"Lefts\":9998,\"Autosell\":1,\"Name\":\"Канистра бензина\",\"Ordered\":true},{\"Price\":60,\"Lefts\":9997,\"Autosell\":1,\"Name\":\"Чипсы\",\"Ordered\":true},{\"Price\":100,\"Lefts\":9997,\"Autosell\":1,\"Name\":\"Пицца\",\"Ordered\":true},{\"Price\":200,\"Lefts\":9984,\"Autosell\":1,\"Name\":\"Сим-карта\",\"Ordered\":true},{\"Price\":200,\"Lefts\":9998,\"Autosell\":1,\"Name\":\"Связка ключей\",\"Ordered\":true}]', '{\"x\":-1487.093,\"y\":-379.434662,\"z\":39.04345}', '{\"x\":-1509.184,\"y\":-388.679657,\"z\":40.737072}', '913004', '12', '[]'),
(69, 'Государство', '500000', '6', '[{\"Price\":720,\"Lefts\":555,\"Autosell\":5,\"Name\":\"Pistol\",\"Ordered\":true},{\"Price\":1000,\"Lefts\":555,\"Autosell\":5,\"Name\":\"CombatPistol\",\"Ordered\":true},{\"Price\":3000,\"Lefts\":472,\"Autosell\":5,\"Name\":\"Revolver\",\"Ordered\":true},{\"Price\":1600,\"Lefts\":555,\"Autosell\":5,\"Name\":\"HeavyPistol\",\"Ordered\":true},{\"Price\":3000,\"Lefts\":554,\"Autosell\":5,\"Name\":\"BullpupShotgun\",\"Ordered\":true},{\"Price\":3800,\"Lefts\":546,\"Autosell\":5,\"Name\":\"CombatPDW\",\"Ordered\":true},{\"Price\":2300,\"Lefts\":555,\"Autosell\":5,\"Name\":\"MachinePistol\",\"Ordered\":true},{\"Price\":4,\"Lefts\":1701,\"Autosell\":5,\"Name\":\"Патроны\",\"Ordered\":true}]', '{\"x\":-662.0225,\"y\":-935.5671,\"z\":20.7092056}', '{\"x\":-663.1217,\"y\":-953.027344,\"z\":21.3285446}', '141732', '13', '[]'),
(70, 'Государство', '500000', '6', '[{\"Price\":720,\"Lefts\":555,\"Autosell\":5,\"Name\":\"Pistol\",\"Ordered\":true},{\"Price\":1000,\"Lefts\":555,\"Autosell\":5,\"Name\":\"CombatPistol\",\"Ordered\":true},{\"Price\":3000,\"Lefts\":475,\"Autosell\":5,\"Name\":\"Revolver\",\"Ordered\":true},{\"Price\":1600,\"Lefts\":555,\"Autosell\":5,\"Name\":\"HeavyPistol\",\"Ordered\":true},{\"Price\":3000,\"Lefts\":554,\"Autosell\":5,\"Name\":\"BullpupShotgun\",\"Ordered\":true},{\"Price\":3800,\"Lefts\":547,\"Autosell\":5,\"Name\":\"CombatPDW\",\"Ordered\":true},{\"Price\":2300,\"Lefts\":555,\"Autosell\":5,\"Name\":\"MachinePistol\",\"Ordered\":true},{\"Price\":4,\"Lefts\":10000,\"Autosell\":5,\"Name\":\"Патроны\",\"Ordered\":true}]', '{\"x\":1693.81116,\"y\":3760.32178,\"z\":33.57493}', '{\"x\":1705.18591,\"y\":3746.067,\"z\":33.7958946}', '434198', '13', '[]'),
(71, 'Государство', '500000', '7', '[{\"Price\":80,\"Lefts\":706,\"Autosell\":10,\"Name\":\"Одежда\",\"Ordered\":false}]', '{\"x\":1199.62939,\"y\":2707.944,\"z\":37.10261}', '{\"x\":1188.3988,\"y\":2693.28955,\"z\":37.8783646}', '165995', '13', '[]'),
(72, 'Государство', '500000', '1', '[{\"Price\":5,\"Lefts\":10000,\"Autosell\":0,\"Name\":\"Бензин\",\"Ordered\":true}]', '{\"x\":2005.18347,\"y\":3774.22021,\"z\":31.27714}', '{\"x\":2028.83838,\"y\":3780.91113,\"z\":32.3173676}', '696957', '13', '[]'),
(74, 'Государство', '500000', '7', '[{\"Price\":100,\"Lefts\":13154,\"Autosell\":10,\"Name\":\"Одежда\",\"Ordered\":true}]', '{\"x\":1.29105687,\"y\":6511.752,\"z\":30.7578468}', '{\"x\":-5.73671246,\"y\":6522.363,\"z\":31.2750511}', '957483', '13', '[]'),
(75, 'Государство', '500000', '7', '[{\"Price\":100,\"Lefts\":10000,\"Autosell\":10,\"Name\":\"Одежда\",\"Ordered\":true}]', '{\"x\":-1097.49084,\"y\":2709.87573,\"z\":17.98746}', '{\"x\":-1088.38953,\"y\":2696.223,\"z\":20.1692028}', '182811', '13', '[]'),
(76, 'Государство', '500000', '7', '[{\"Price\":100,\"Lefts\":33910,\"Autosell\":10,\"Name\":\"Одежда\",\"Ordered\":true}]', '{\"x\":1691.59583,\"y\":4819.584,\"z\":40.9430542}', '{\"x\":1672.18628,\"y\":4817.8125,\"z\":42.0242653}', '1290', '13', '[]'),
(77, 'Государство', '500000', '7', '[{\"Price\":100,\"Lefts\":9868,\"Autosell\":10,\"Name\":\"Одежда\",\"Ordered\":false}]', '{\"x\":-819.035339,\"y\":-1074.36621,\"z\":10.2079821}', '{\"x\":-810.1715,\"y\":-1091.70642,\"z\":10.7681923}', '821503', '13', '[]'),
(78, 'Государство', '500000', '7', '[{\"Price\":100,\"Lefts\":6882,\"Autosell\":10,\"Name\":\"Одежда\",\"Ordered\":true}]', '{\"x\":-1450.672,\"y\":-237.27858,\"z\":48.68984}', '{\"x\":-1461.93188,\"y\":-227.497162,\"z\":49.27594}', '92010', '13', '[]'),
(79, 'Государство', '500000', '7', '[{\"Price\":150,\"Lefts\":7361,\"Autosell\":10,\"Name\":\"Одежда\",\"Ordered\":true}]', '{\"x\":-1192.24036,\"y\":-768.2272,\"z\":16.1999226}', '{\"x\":-1226.274,\"y\":-776.5295,\"z\":18.2160454}', '354814', '13', '[]'),
(85, 'Государство', '400000', '9', '[{\"Price\":100,\"Lefts\":4058,\"Autosell\":0,\"Name\":\"Расходники\",\"Ordered\":true},{\"Price\":100,\"Lefts\":10000,\"Autosell\":0,\"Name\":\"Татуировки\",\"Ordered\":false}]', '{\"x\":322.338684,\"y\":181.6579,\"z\":102.459709}', '{\"x\":315.215332,\"y\":165.3087,\"z\":103.708687}', '776722', '13', '[]'),
(86, 'Государство', '400000', '9', '[{\"Price\":100,\"Lefts\":3342,\"Autosell\":0,\"Name\":\"Расходники\",\"Ordered\":true},{\"Price\":100,\"Lefts\":5000,\"Autosell\":0,\"Name\":\"Татуировки\",\"Ordered\":false}]', '{\"x\":1864.00378,\"y\":3749.57935,\"z\":31.9118214}', '{\"x\":1851.36121,\"y\":3742.94214,\"z\":33.12282}', '532613', '13', '[]'),
(87, 'Государство', '400000', '9', '[{\"Price\":100,\"Lefts\":795,\"Autosell\":0,\"Name\":\"Расходники\",\"Ordered\":true},{\"Price\":100,\"Lefts\":5000,\"Autosell\":0,\"Name\":\"Татуировки\",\"Ordered\":false}]', '{\"x\":-292.9138,\"y\":6198.12061,\"z\":30.3602352}', '{\"x\":-283.419434,\"y\":6202.01367,\"z\":31.3185139}', '652494', '10', '[]'),
(88, 'Государство', '250000', '10', '[{\"Price\":100,\"Lefts\":981,\"Autosell\":0,\"Name\":\"Расходники\",\"Ordered\":true},{\"Price\":100,\"Lefts\":1000,\"Autosell\":0,\"Name\":\"Парики\",\"Ordered\":false}]', '{\"x\":-279.4777,\"y\":6231.512,\"z\":30.5755081}', '{\"x\":1131.78943,\"y\":-3267.703,\"z\":5.2302804}', '817639', '10', '[]'),
(89, 'Государство', '250000', '10', '[{\"Price\":100,\"Lefts\":985,\"Autosell\":0,\"Name\":\"Расходники\",\"Ordered\":true},{\"Price\":100,\"Lefts\":1000,\"Autosell\":0,\"Name\":\"Парики\",\"Ordered\":false}]', '{\"x\":1932.00745,\"y\":3726.64453,\"z\":31.72441}', '{\"x\":1131.78943,\"y\":-3267.703,\"z\":5.2302804}', '284537', '11', '[]'),
(90, 'Государство', '380000', '11', '[{\"Price\":100,\"Lefts\":10000,\"Autosell\":0,\"Name\":\"Маски\",\"Ordered\":false}]', '{\"x\":-2966.78564,\"y\":452.043549,\"z\":14.1804485}', '{\"x\":-2983.12329,\"y\":449.038818,\"z\":15.0970907}', '608389', '13', '[]'),
(91, 'Государство', '600000', '8', '[{\"Price\":80,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Бургер\",\"Ordered\":true},{\"Price\":60,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Хот-Дог\",\"Ordered\":true},{\"Price\":30,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Сэндвич\",\"Ordered\":true},{\"Price\":20,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"eCola\",\"Ordered\":true},{\"Price\":30,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Sprunk\",\"Ordered\":true}]', '{\"x\":-1180.76526,\"y\":-882.3682,\"z\":12.7150126}', '{\"x\":-1172.39868,\"y\":-879.6908,\"z\":14.084898}', '376556', '-1', '[{\"Name\":\"Бургер\",\"Amount\":25}]'),
(92, 'Государство', '600000', '8', '[{\"Price\":100,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Бургер\",\"Ordered\":true},{\"Price\":60,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Хот-Дог\",\"Ordered\":true},{\"Price\":30,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Сэндвич\",\"Ordered\":true},{\"Price\":20,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"eCola\",\"Ordered\":true},{\"Price\":30,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Sprunk\",\"Ordered\":true}]', '{\"x\":-1546.58679,\"y\":-466.92807,\"z\":35.07086}', '{\"x\":-1547.23694,\"y\":-479.3586,\"z\":35.35823}', '606630', '-1', '[]'),
(93, 'Государство', '600000', '8', '[{\"Price\":100,\"Lefts\":9927,\"Autosell\":1,\"Name\":\"Бургер\",\"Ordered\":true},{\"Price\":60,\"Lefts\":9981,\"Autosell\":1,\"Name\":\"Хот-Дог\",\"Ordered\":true},{\"Price\":30,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Сэндвич\",\"Ordered\":true},{\"Price\":20,\"Lefts\":9974,\"Autosell\":1,\"Name\":\"eCola\",\"Ordered\":true},{\"Price\":30,\"Lefts\":9983,\"Autosell\":1,\"Name\":\"Sprunk\",\"Ordered\":true}]', '{\"x\":98.2156754,\"y\":283.9292,\"z\":108.856255}', '{\"x\":79.60029,\"y\":246.732956,\"z\":109.093285}', '410448', '-1', '[{\"Name\":\"eCola\",\"Amount\":10},{\"Name\":\"Sprunk\",\"Amount\":10}]'),
(94, 'Государство', '600000', '8', '[{\"Price\":110,\"Lefts\":9984,\"Autosell\":1,\"Name\":\"Бургер\",\"Ordered\":true},{\"Price\":70,\"Lefts\":9985,\"Autosell\":1,\"Name\":\"Хот-Дог\",\"Ordered\":true},{\"Price\":35,\"Lefts\":9989,\"Autosell\":1,\"Name\":\"Сэндвич\",\"Ordered\":true},{\"Price\":20,\"Lefts\":9999,\"Autosell\":1,\"Name\":\"eCola\",\"Ordered\":true},{\"Price\":33,\"Lefts\":9992,\"Autosell\":1,\"Name\":\"Sprunk\",\"Ordered\":true}]', '{\"x\":-137.866013,\"y\":-256.778748,\"z\":42.474968}', '{\"x\":-127.275681,\"y\":-253.6882,\"z\":43.8664742}', '887619', '-1', '[{\"Name\":\"Бургер\",\"Amount\":25},{\"Name\":\"Хот-Дог\",\"Amount\":10},{\"Name\":\"Сэндвич\",\"Amount\":10},{\"Name\":\"eCola\",\"Amount\":10},{\"Name\":\"Sprunk\",\"Amount\":10}]'),
(95, 'Государство', '600000', '8', '[{\"Price\":105,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Бургер\",\"Ordered\":true},{\"Price\":70,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Хот-Дог\",\"Ordered\":true},{\"Price\":35,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Сэндвич\",\"Ordered\":true},{\"Price\":20,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"eCola\",\"Ordered\":true},{\"Price\":30,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Sprunk\",\"Ordered\":true}]', '{\"x\":-185.414932,\"y\":-1427.50049,\"z\":30.3610268}', '{\"x\":-193.35997,\"y\":-1424.19238,\"z\":31.3378029}', '106169', '12', '[{\"Name\":\"Сэндвич\",\"Amount\":30},{\"Name\":\"Sprunk\",\"Amount\":30},{\"Name\":\"eCola\",\"Amount\":20},{\"Name\":\"Хот-Дог\",\"Amount\":60}]'),
(97, 'Государство', '600000', '8', '[{\"Price\":120,\"Lefts\":9994,\"Autosell\":1,\"Name\":\"Бургер\",\"Ordered\":true},{\"Price\":70,\"Lefts\":9995,\"Autosell\":1,\"Name\":\"Хот-Дог\",\"Ordered\":true},{\"Price\":35,\"Lefts\":9994,\"Autosell\":1,\"Name\":\"Сэндвич\",\"Ordered\":true},{\"Price\":24,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"eCola\",\"Ordered\":true},{\"Price\":35,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Sprunk\",\"Ordered\":true}]', '{\"x\":165.850418,\"y\":-1452.01038,\"z\":28.12164}', '{\"x\":163.360168,\"y\":-1462.042,\"z\":29.1416073}', '857063', '11', '[]'),
(98, 'Государство', '600000', '8', '[{\"Price\":120,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Бургер\",\"Ordered\":true},{\"Price\":70,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Хот-Дог\",\"Ordered\":true},{\"Price\":35,\"Lefts\":9991,\"Autosell\":1,\"Name\":\"Сэндвич\",\"Ordered\":true},{\"Price\":24,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"eCola\",\"Ordered\":true},{\"Price\":35,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Sprunk\",\"Ordered\":true}]', '{\"x\":144.777908,\"y\":-1461.338,\"z\":28.0216179}', '{\"x\":128.916626,\"y\":-1449.40149,\"z\":29.2926311}', '814340', '-1', '[]'),
(99, 'Государство', '600000', '8', '[{\"Price\":100,\"Lefts\":10192,\"Autosell\":1,\"Name\":\"Бургер\",\"Ordered\":false},{\"Price\":60,\"Lefts\":9994,\"Autosell\":1,\"Name\":\"Хот-Дог\",\"Ordered\":true},{\"Price\":30,\"Lefts\":9994,\"Autosell\":1,\"Name\":\"Сэндвич\",\"Ordered\":true},{\"Price\":20,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"eCola\",\"Ordered\":true},{\"Price\":30,\"Lefts\":10000,\"Autosell\":1,\"Name\":\"Sprunk\",\"Ordered\":true}]', '{\"x\":169.230347,\"y\":-1633.71667,\"z\":28.1716671}', '{\"x\":158.623856,\"y\":-1622.20532,\"z\":29.2667027}', '335887', '-1', '[{\"Name\":\"Хот-Дог\",\"Amount\":10},{\"Name\":\"Сэндвич\",\"Amount\":10},{\"Name\":\"eCola\",\"Amount\":10},{\"Name\":\"Sprunk\",\"Amount\":10}]'),
(100, 'Государство', '250000', '13', '[{\"Price\":200,\"Lefts\":11191,\"Autosell\":0,\"Name\":\"Средство для мытья\",\"Ordered\":false}]', '{\"x\":-699.734741,\"y\":-932.436951,\"z\":17.893898}', '{\"x\":-707.1299,\"y\":-948.920044,\"z\":19.1610222}', '320320', '-1', '[]'),
(101, 'Государство', '200000', '13', '[{\"Price\":200,\"Lefts\":11199,\"Autosell\":0,\"Name\":\"Средство для мытья\",\"Ordered\":false}]', '{\"x\":104.208336,\"y\":6622.299,\"z\":30.7085018}', '{\"x\":116.525826,\"y\":6611.232,\"z\":31.8753357}', '690068', '-1', '[]'),
(102, 'Государство', '300000', '13', '[{\"Price\":200,\"Lefts\":11200,\"Autosell\":0,\"Name\":\"Средство для мытья\",\"Ordered\":false}]', '{\"x\":1182.44141,\"y\":2638.496,\"z\":36.675045}', '{\"x\":1182.70361,\"y\":2660.33374,\"z\":37.9147224}', '927792', '-1', '[]'),
(103, 'Государство', '400000', '9', '[{\"Price\":100,\"Lefts\":100,\"Autosell\":0,\"Name\":\"Расходники\",\"Ordered\":false},{\"Price\":100,\"Lefts\":0,\"Autosell\":0,\"Name\":\"Татуировки\",\"Ordered\":false}]', '{\"x\":-1155.3573,\"y\":-1427.2318,\"z\":3.8344622}', '{\"x\":0.0,\"y\":0.0,\"z\":0.0}', '282122', '-1', '[]'),
(104, 'Государство', '250000', '11', '[{\"Price\":100,\"Lefts\":47,\"Autosell\":0,\"Name\":\"Маски\",\"Ordered\":false}]', '{\"x\":-1483.1567,\"y\":-226.71503,\"z\":48.879322}', '{\"x\":0.0,\"y\":0.0,\"z\":0.0}', '202414', '-1', '[]'),
(105, 'Государство', '250000', '15', '[{\"Price\":1200,\"Lefts\":996,\"Autosell\":1,\"Name\":\"Удочка\",\"Ordered\":true},{\"Price\":110,\"Lefts\":941,\"Autosell\":1,\"Name\":\"Наживка\",\"Ordered\":true}]', '{\"x\":-1654.8417,\"y\":-1036.9357,\"z\":12.032769}', '{\"x\":314.557373,\"y\":-1151.36816,\"z\":29.2919159}', '769338', '11', '[{\"Name\":\"Удочка\",\"Amount\":10},{\"Name\":\"Наживка\",\"Amount\":10},{\"Name\":\"Улучшенная удочка\",\"Amount\":1},{\"Name\":\"Удочка MK2\",\"Amount\":1}]'),
(106, 'Государство', '5000000', '16', '[{\"Price\":13,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Корюшка\",\"Ordered\":false},{\"Price\":16,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Кунджа\",\"Ordered\":false},{\"Price\":10,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Лосось\",\"Ordered\":false},{\"Price\":4,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Окунь\",\"Ordered\":false},{\"Price\":5,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Осётр\",\"Ordered\":false},{\"Price\":12,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Скат\",\"Ordered\":false},{\"Price\":18,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Тунец\",\"Ordered\":false},{\"Price\":5,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Угорь\",\"Ordered\":false},{\"Price\":15,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Чёрный амур\",\"Ordered\":false},{\"Price\":6,\"Lefts\":0,\"Autosell\":1,\"Name\":\"Щука\",\"Ordered\":false}]', '{\"x\":1953.49231,\"y\":3842.458,\"z\":31.061697}', '{\"x\":0.0,\"y\":0.0,\"z\":0.0}', '815214', '-1', '[]');

-- --------------------------------------------------------

--
-- Структура таблицы `characters`
--

CREATE TABLE `characters` (
  `uuid` bigint(255) NOT NULL,
  `adminlvl` int(255) NOT NULL,
  `money` int(255) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `fraction` int(255) NOT NULL,
  `fractionlvl` int(255) NOT NULL,
  `warns` int(255) NOT NULL,
  `biz` text NOT NULL,
  `hotel` int(255) NOT NULL,
  `hotelleft` int(255) NOT NULL,
  `sim` int(255) NOT NULL,
  `PetName` text DEFAULT NULL,
  `eat` int(255) NOT NULL,
  `water` int(255) NOT NULL,
  `demorgan` int(255) NOT NULL,
  `arrest` int(255) NOT NULL,
  `unwarn` datetime NOT NULL,
  `unmute` int(255) NOT NULL,
  `bank` int(255) NOT NULL,
  `wanted` text NOT NULL DEFAULT '0',
  `lvl` int(255) NOT NULL,
  `exp` int(255) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `health` int(255) NOT NULL,
  `armor` int(255) NOT NULL,
  `licenses` text NOT NULL,
  `lastveh` text NOT NULL,
  `onduty` tinyint(1) NOT NULL,
  `lasthour` int(255) NOT NULL,
  `contacts` text NOT NULL,
  `achiev` text NOT NULL,
  `createdate` datetime NOT NULL,
  `pos` text NOT NULL,
  `work` int(255) NOT NULL,
  `idkey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `characters`
--


-- --------------------------------------------------------

--
-- Структура таблицы `customization`
--

CREATE TABLE `customization` (
  `uuid` bigint(255) NOT NULL,
  `gender` text NOT NULL,
  `parents` text NOT NULL,
  `features` text NOT NULL,
  `appearance` text NOT NULL,
  `hair` text NOT NULL,
  `clothes` text NOT NULL,
  `accessory` text NOT NULL,
  `tattoos` text NOT NULL,
  `eyebrowc` text NOT NULL,
  `beardc` text NOT NULL,
  `eyec` text NOT NULL,
  `blushc` text NOT NULL,
  `lipstickc` text NOT NULL,
  `chesthairc` text NOT NULL,
  `iscreated` tinyint(1) NOT NULL,
  `idkey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `customization`
--


-- --------------------------------------------------------

--
-- Структура таблицы `eventcfg`
--

CREATE TABLE `eventcfg` (
  `RewardLimit` int(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `e_candidates`
--

CREATE TABLE `e_candidates` (
  `ID` int(11) NOT NULL,
  `Votes` text NOT NULL,
  `Election` text NOT NULL,
  `Name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `e_points`
--

CREATE TABLE `e_points` (
  `Election` int(155) NOT NULL,
  `X` varchar(11) NOT NULL,
  `Y` varchar(11) NOT NULL,
  `Z` varchar(11) NOT NULL,
  `Dimension` int(11) NOT NULL,
  `Opened` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `e_voters`
--

CREATE TABLE `e_voters` (
  `Election` int(155) NOT NULL,
  `Login` text NOT NULL,
  `TimeVoted` text NOT NULL,
  `VotedFor` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fractionaccess`
--

CREATE TABLE `fractionaccess` (
  `idkey` int(155) NOT NULL,
  `fraction` int(155) NOT NULL,
  `commands` text NOT NULL,
  `weapons` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `fractionaccess`
--

INSERT INTO `fractionaccess` (`idkey`, `fraction`, `commands`, `weapons`) VALUES
(1, 1, '{\"takedrugs\":6,\"takemedkits\":8,\"takestock\":10,\"openweaponstock\":10,\"takemats\":10,\"capture\":10,\"takemoney\":11,\"invite\":10,\"setrank\":11,\"openstock\":10,\"closestock\":10,\"respawn\":12,\"uninvite\":10,\"buydrugs\":8}', '{\"Medkits\":8}'),
(2, 2, '{\"takedrugs\":6,\"takemedkits\":8,\"takestock\":10,\"openweaponstock\":10,\"takemats\":10,\"capture\":10,\"takemoney\":11,\"invite\":10,\"setrank\":11,\"openstock\":10,\"closestock\":10,\"respawn\":12,\"uninvite\":10,\"buydrugs\":8}', '{\"Medkits\":8}'),
(3, 3, '{\"takedrugs\":6,\"takemedkits\":8,\"takestock\":10,\"openweaponstock\":10,\"takemats\":10,\"capture\":10,\"takemoney\":11,\"invite\":10,\"setrank\":11,\"openstock\":10,\"closestock\":10,\"respawn\":12,\"uninvite\":10,\"buydrugs\":8}', '{\"Medkits\":8}'),
(4, 4, '{\"takedrugs\":6,\"takemedkits\":8,\"takestock\":10,\"openweaponstock\":10,\"takemats\":10,\"capture\":10,\"takemoney\":11,\"invite\":10,\"setrank\":11,\"openstock\":10,\"closestock\":10,\"respawn\":12,\"uninvite\":10,\"buydrugs\":8}', '{\"Medkits\":8}'),
(5, 5, '{\"takedrugs\":6,\"takemedkits\":8,\"takestock\":10,\"openweaponstock\":10,\"takemats\":10,\"capture\":10,\"takemoney\":11,\"invite\":10,\"setrank\":11,\"openstock\":10,\"closestock\":10,\"respawn\":12,\"uninvite\":10,\"buydrugs\":8}', '{\"Medkits\":8}'),
(6, 6, '{\"openweaponstock\":4,\"follow\":4,\"cuff\":4,\"uncuff\":4,\"dep\":6,\"gov\":7,\"invite\":7,\"uninvite\":7,\"setrank\":7,\"openstock\":7,\"closestock\":7,\"respawn\":8,\"opensafedoor\":8,\"takemedkits\":4}', '{\"stungun\":3,\"pistol\":4,\"PistolAmmo\":4,\"armor\":4,\"MedKits\":4,\"AdvancedRifle\":5,\"RiflesAmmo\":5,\"gusenberg\":20,\"SMGAmmo\":6,\"Medkits\":4}'),
(7, 7, '{\"dep\":12,\"gov\":12,\"pd\":1,\"takeguns\":2,\"openweaponstock\":2,\"cuff\":2,\"uncuff\":2,\"ticket\":2,\"pull\":2,\"incar\":2,\"su\":2,\"arrest\":2,\"rfp\":2,\"follow\":2,\"takegunlic\":5,\"warg\":9,\"givegunlic\":9,\"invite\":13,\"uninvite\":13,\"setrank\":13,\"openstock\":13,\"closestock\":13,\"respawn\":14}', '{\"Nightstick\":1,\"Pistol\":2,\"PistolAmmo\":2,\"armor\":2,\"Medkits\":2,\"StunGun\":2,\"PumpShotgun\":4,\"ShotgunsAmmo\":4,\"SMG\":5,\"SMGAmmo\":5,\"HeavyShotgun\":13,\"RiflesAmmo\":5,\"CarabineRifle\":5}'),
(8, 8, '{\"dep\":9,\"gov\":9,\"heal\":1,\"ems\":2,\"givemedlic\":4,\"setrank\":9,\"invite\":9,\"uninvite\":9,\"openstock\":11,\"closestock\":11,\"respawn\":11}', '{\"Medkits\":2,\"StunGun\":3}'),
(9, 9, '{\"dep\":11,\"gov\":12,\"pd\":1,\"takeguns\":2,\"cuff\":2,\"uncuff\":2,\"ticket\":2,\"pull\":2,\"incar\":2,\"su\":2,\"arrest\":2,\"rfp\":2,\"follow\":2,\"openweaponstock\":3,\"takegunlic\":6,\"warg\":10,\"invite\":13,\"uninvite\":13,\"setrank\":13,\"openstock\":13,\"closestock\":13,\"respawn\":14}', '{\"StunGun\":1,\"Pistol\":2,\"PistolAmmo\":2,\"armor\":2,\"CombatPDW\":3,\"SMGAmmo\":3,\"AdvancedRifle\":4,\"RiflesAmmo\":4,\"HeavySniper\":13,\"SniperAmmo\":13,\"Medkits\":2}'),
(10, 10, '{\"buydrugs\":8,\"cuff\":2,\"uncuff\":2,\"pocket\":2,\"follow\":2,\"incar\":2,\"pull\":2,\"takedrugs\":3,\"takemedkits\":4,\"openweaponstock\":5,\"takemats\":5,\"bizwar\":7,\"takemoney\":8,\"takestock\":8,\"setrank\":9,\"invite\":9,\"uninvite\":9,\"openstock\":9,\"closestock\":9,\"respawn\":10,\"takebiz\":8}', '{\"Medkits\":4}'),
(11, 11, '{\"buydrugs\":8,\"cuff\":2,\"uncuff\":2,\"pocket\":2,\"takebiz\":8,\"follow\":2,\"incar\":2,\"pull\":2,\"takedrugs\":3,\"takemedkits\":4,\"openweaponstock\":5,\"takemats\":5,\"bizwar\":7,\"takemoney\":8,\"takestock\":8,\"setrank\":9,\"invite\":9,\"uninvite\":9,\"openstock\":9,\"closestock\":9,\"respawn\":10}', '{\"Medkits\":4}'),
(12, 12, '{\"buydrugs\":8,\"cuff\":2,\"uncuff\":2,\"pocket\":2,\"follow\":2,\"incar\":2,\"pull\":2,\"takedrugs\":3,\"takemedkits\":4,\"openweaponstock\":5,\"takemats\":5,\"bizwar\":7,\"takemoney\":8,\"takestock\":8,\"setrank\":9,\"invite\":9,\"uninvite\":9,\"openstock\":9,\"closestock\":9,\"respawn\":10,\"takebiz\":8}', '{\"Medkits\":4}'),
(13, 13, '{\"buydrugs\":8,\"cuff\":2,\"uncuff\":2,\"pocket\":2,\"follow\":2,\"incar\":2,\"pull\":2,\"takedrugs\":3,\"takemedkits\":4,\"openweaponstock\":5,\"takemats\":5,\"bizwar\":7,\"takemoney\":8,\"takestock\":8,\"setrank\":9,\"invite\":9,\"uninvite\":9,\"openstock\":9,\"closestock\":9,\"respawn\":10,\"takebiz\":8}', '{\"Medkits\":4}'),
(14, 14, '{\"dep\":12,\"gov\":13,\"openweaponstock\":5,\"cuff\":8,\"follow\":8,\"incar\":8,\"pull\":8,\"invite\":14,\"uninvite\":14,\"setrank\":14,\"openstock\":14,\"closestock\":14,\"respawn\":15,\"givearmylic\":14}', '{\"pistol\":2,\"PistolAmmo\":2,\"carabine\":3,\"RiflesAmmo\":3,\"Medkits\":3,\"armor\":3,\"SMGAmmo\":13,\"CombatMG\":14}');

-- --------------------------------------------------------

--
-- Структура таблицы `fractionranks`
--

CREATE TABLE `fractionranks` (
  `idkey` int(155) NOT NULL,
  `fraction` int(155) NOT NULL,
  `rank` int(155) NOT NULL,
  `payday` int(155) NOT NULL,
  `name` text NOT NULL,
  `clothesm` text NOT NULL,
  `clothesf` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `fractionranks`
--

INSERT INTO `fractionranks` (`idkey`, `fraction`, `rank`, `payday`, `name`, `clothesm`, `clothesf`) VALUES
(8, 1, 1, 100, 'Outsider', '', ''),
(9, 1, 2, 200, 'Playa', '', ''),
(10, 1, 3, 300, 'Killa', '', ''),
(11, 1, 4, 400, 'B.A.D', '', ''),
(12, 1, 5, 500, 'Gangster', '', ''),
(13, 1, 6, 600, 'De King', '', ''),
(14, 1, 7, 700, 'O.G', '', ''),
(15, 1, 8, 800, 'Hommie', '', ''),
(16, 1, 9, 900, 'Sweet', '', ''),
(17, 1, 10, 1000, 'Legend', '', ''),
(18, 1, 11, 1100, 'Mad Dog', '', ''),
(19, 1, 12, 1200, 'Big Daddy', '', ''),
(26, 2, 1, 100, 'Freak', '', ''),
(27, 2, 2, 200, 'Little Nigga', '', ''),
(28, 2, 3, 300, 'Homeboy', '', ''),
(29, 2, 4, 400, 'Mature', '', ''),
(30, 2, 5, 500, 'Gun Bro', '', ''),
(31, 2, 6, 600, 'Gunsta', '', ''),
(32, 2, 7, 700, 'Hustle', '', ''),
(33, 2, 8, 800, 'Young Gangsta', '', ''),
(34, 2, 9, 900, 'Wiseman', '', ''),
(35, 2, 10, 1000, 'Beast', '', ''),
(36, 2, 11, 1100, 'O.G', '', ''),
(37, 2, 12, 1200, 'Daddy', '', ''),
(44, 3, 1, 100, 'Novito', '', ''),
(45, 3, 2, 200, 'Ordinario', '', ''),
(46, 3, 3, 300, 'Locale', '', ''),
(47, 3, 4, 400, 'Verification', '', ''),
(48, 3, 5, 500, 'Sangre Joven', '', ''),
(49, 3, 6, 600, 'Murda', '', ''),
(50, 3, 7, 700, 'Assessino', '', ''),
(51, 3, 8, 800, 'Latino King', '', ''),
(52, 3, 9, 900, 'Bandito', '', ''),
(53, 3, 10, 1000, 'Definido', '', ''),
(54, 3, 11, 1100, 'De Confianza', '', ''),
(55, 3, 12, 1200, 'Padrino', '', ''),
(62, 4, 1, 100, 'Nadie', '', ''),
(63, 4, 2, 200, 'Seguro', '', ''),
(64, 4, 3, 300, 'Artesano', '', ''),
(65, 4, 4, 400, 'Allegado', '', ''),
(66, 4, 5, 500, 'Caza', '', ''),
(67, 4, 6, 600, 'Soldado', '', ''),
(68, 4, 7, 700, 'J.', '', ''),
(69, 4, 8, 800, 'Ayudante', '', ''),
(70, 4, 9, 900, 'Mentor', '', ''),
(71, 4, 10, 1000, 'Explosion', '', ''),
(72, 4, 11, 1100, 'Maestro', '', ''),
(73, 4, 12, 1200, 'El Padre', '', ''),
(80, 5, 1, 100, 'Fresh Meat', '', ''),
(81, 5, 2, 200, 'Young Blood', '', ''),
(82, 5, 3, 300, 'Mature Blood', '', ''),
(83, 5, 4, 400, 'Gangster Blood', '', ''),
(84, 5, 5, 500, 'Kill Blood', '', ''),
(85, 5, 6, 600, 'Beef', '', ''),
(86, 5, 7, 700, 'Looker Blood', '', ''),
(87, 5, 8, 800, 'Confirmed ', '', ''),
(88, 5, 9, 900, 'Little Bos', '', ''),
(89, 5, 10, 1000, 'Big Blood Boss', '', ''),
(90, 5, 11, 1100, 'Rex', '', ''),
(91, 5, 12, 1200, 'King of Blood', '', ''),
(94, 6, 1, 350, 'Trainee', 'city_1', 'city_1'),
(95, 6, 2, 450, 'Jurist', 'city_1', 'city_1'),
(96, 6, 3, 600, 'Secretary', 'city_1', 'city_1'),
(97, 6, 4, 750, 'Officer', 'city_4', 'city_4'),
(98, 6, 5, 1000, 'Junior Lawyer', 'city_2', 'city_2'),
(99, 6, 6, 1200, 'Secretary Assistant', 'city_2', 'city_2'),
(100, 6, 7, 1300, 'Agent', 'city_5', 'city_5'),
(101, 6, 8, 1450, 'Lawyer', 'city_3', 'city_3'),
(102, 6, 9, 1550, 'HR Manager', 'city_7', 'city_7'),
(103, 6, 10, 1750, 'Special Agent', 'city_5', 'city_5'),
(104, 6, 11, 1900, 'Prosecutor', 'city_7', 'city_7'),
(105, 6, 12, 2100, 'Event Manager', 'city_3', 'city_3'),
(106, 6, 13, 2250, 'Head', 'city_6', 'city_6'),
(107, 6, 14, 2500, 'Judge', 'city_5', 'city_5'),
(108, 6, 15, 2800, 'Supreme Judge', 'city_6', 'city_6'),
(109, 6, 16, 3100, 'Chief of Staff', 'city_7', 'city_7'),
(110, 6, 17, 3450, 'Director', 'city_6', 'city_6'),
(111, 6, 18, 3650, 'Advisor', 'city_8', 'city_8'),
(112, 6, 19, 3800, 'Mayor', 'city_8', 'city_8'),
(113, 6, 20, 4000, 'Minister', 'city_9', 'city_9'),
(114, 6, 21, 4500, 'Governor', 'city_9', 'city_9'),
(116, 7, 1, 100, 'Cadet', 'police_1', 'police_1'),
(117, 7, 2, 200, 'Officer I', 'police_1', 'police_1'),
(118, 7, 3, 500, 'Officer II', 'police_2', 'police_2'),
(119, 7, 4, 700, 'Senior Officer', 'police_2', 'police_2'),
(120, 7, 5, 850, 'Corporal', 'police_3', 'police_3'),
(121, 7, 6, 900, 'Sergeant I', 'police_4', 'police_4'),
(122, 7, 7, 1150, 'Sergeant II', 'police_5', 'police_5'),
(123, 7, 8, 1350, 'Lieutenant', 'police_6', 'police_6'),
(124, 7, 9, 1500, 'Captain', 'police_6', 'police_6'),
(125, 7, 10, 1650, 'Major', 'police_7', 'police_7'),
(126, 7, 11, 1850, 'Colonel', 'police_7', 'police_7'),
(127, 7, 12, 2000, 'Commander', 'police_8', 'police_8'),
(128, 7, 13, 2250, 'Deputy Chief', 'police_8', 'police_8'),
(129, 7, 14, 2500, 'Chief', 'police_8', 'police_8'),
(134, 8, 1, 300, 'Intern', 'ems_1', 'ems_1'),
(135, 8, 2, 650, 'Medical Worker', 'ems_1', 'ems_1'),
(136, 8, 3, 850, 'Assistant of Doctor', 'ems_1', 'ems_1'),
(137, 8, 4, 1100, 'Doctor', 'ems_2', 'ems_2'),
(138, 8, 5, 1350, 'Narcology', 'ems_2', 'ems_2'),
(139, 8, 6, 1450, 'Superintendent', 'ems_3', 'ems_3'),
(140, 8, 7, 1600, 'Specialist', 'ems_3', 'ems_3'),
(141, 8, 8, 1750, 'Deputy Chief of Department', 'ems_3', 'ems_3'),
(142, 8, 9, 1850, 'Chief Department', 'ems_4', 'ems_4'),
(143, 8, 10, 2000, 'Deputy Head Physician', 'ems_4', 'ems_4'),
(144, 8, 11, 2250, 'Head Physician', 'ems_4', 'ems_4'),
(152, 9, 1, 350, 'Trainee', 'city_6', 'city_6'),
(153, 9, 2, 500, 'Bureau Security', 'city_6', 'city_6'),
(154, 9, 3, 650, 'Junior Agent', 'city_6', 'city_6'),
(155, 9, 4, 750, 'Agent', 'city_6', 'city_6'),
(156, 9, 5, 900, 'Secret Agent', 'city_6', 'city_6'),
(157, 9, 6, 1200, 'Special Agent', 'city_6', 'city_6'),
(158, 9, 7, 1350, 'Head of Agency', 'city_6', 'city_6'),
(159, 9, 8, 1550, 'Agent NATs. Securities', 'city_6', 'city_6'),
(160, 9, 9, 1700, 'Deputy Chief of Department', 'city_6', 'city_6'),
(161, 9, 10, 1950, 'Chief of the Department', 'city_5', 'city_5'),
(162, 9, 11, 2350, 'Head of Department', 'city_5', 'city_5'),
(163, 9, 12, 2550, 'Inspector', 'city_5', 'city_5'),
(164, 9, 13, 2850, 'Deputy of Director', 'city_5', 'city_5'),
(165, 9, 14, 3100, 'Director', 'city_5', 'city_5'),
(170, 10, 1, 100, 'Novicio', '', ''),
(171, 10, 2, 200, 'Assosiato', '', ''),
(172, 10, 3, 300, 'Combattente', '', ''),
(173, 10, 4, 400, 'Soldato', '', ''),
(174, 10, 5, 500, 'Man-O-War', '', ''),
(175, 10, 6, 600, 'Sotto-Kapo', '', ''),
(176, 10, 7, 700, 'Kapo', '', ''),
(177, 10, 8, 800, 'Little Boss', '', ''),
(178, 10, 9, 900, 'Consigliere', '', ''),
(179, 10, 10, 1000, 'Don', '', ''),
(188, 11, 1, 100, 'Шнырь', '', ''),
(189, 11, 2, 200, 'Босяк', '', ''),
(190, 11, 3, 300, 'Бык', '', ''),
(191, 11, 4, 400, 'Барыга', '', ''),
(192, 11, 5, 500, 'Блатной', '', ''),
(193, 11, 6, 600, 'Фраер', '', ''),
(194, 11, 7, 700, 'Браток', '', ''),
(195, 11, 8, 800, 'Пахан', '', ''),
(196, 11, 9, 900, 'Авторитет', '', ''),
(197, 11, 10, 1000, 'Вор в законе', '', ''),
(206, 12, 1, 100, 'Cyatay', '', ''),
(207, 12, 2, 200, 'Kodai', '', ''),
(208, 12, 3, 300, 'Syatai', '', ''),
(209, 12, 4, 400, 'Fuku-Hombute', '', ''),
(210, 12, 5, 500, 'Wakagasira', '', ''),
(211, 12, 6, 600, 'So-Hombute', '', ''),
(212, 12, 7, 700, 'Kambu', '', ''),
(213, 12, 8, 800, 'Saiko-Komon', '', ''),
(214, 12, 9, 900, 'Kumite', '', ''),
(215, 12, 10, 1000, 'Oyadzi', '', ''),
(224, 13, 1, 100, 'Ержан', '', ''),
(225, 13, 2, 200, 'Лав Тха', '', ''),
(226, 13, 3, 300, 'Хардах', '', ''),
(227, 13, 4, 400, 'Анцагорц', '', ''),
(228, 13, 5, 500, 'Джепкир', '', ''),
(229, 13, 6, 600, 'Ехпайр', '', ''),
(230, 13, 7, 700, 'Найох', '', ''),
(231, 13, 8, 800, 'Гох', '', ''),
(232, 13, 9, 900, 'Кероп', '', ''),
(233, 13, 10, 1000, 'Баир', '', ''),
(242, 14, 1, 350, 'Recruit', 'army_1', 'army_1'),
(243, 14, 2, 450, 'Private', 'army_2', 'army_2'),
(244, 14, 3, 650, 'Specialist', 'army_3', 'army_3'),
(245, 14, 4, 800, 'Corporal', 'army_4', 'army_4'),
(246, 14, 5, 900, 'Sergeant', 'army_5', 'army_5'),
(247, 14, 6, 600, 'Staff Sergeant', 'army_6', 'army_6'),
(248, 14, 7, 700, 'Master Segeant', 'army_7', 'army_7'),
(249, 14, 8, 800, 'Sergeant Major', 'army_8', 'army_8'),
(250, 14, 9, 900, 'Warrant Officer', 'army_9', 'army_9'),
(251, 14, 10, 1050, 'Lieutenant', 'army_10', 'army_10'),
(252, 14, 11, 1350, 'Captain', 'army_11', 'army_11'),
(253, 14, 12, 1550, 'Major', 'army_12', 'army_12'),
(254, 14, 13, 1750, 'Colonel', 'army_13', 'army_13'),
(255, 14, 14, 2200, 'General lieutenant', 'army_14', 'army_14'),
(256, 14, 15, 2600, 'General', 'army_15', 'army_15'),
(259, 15, 1, 300, 'Trainee', '', ''),
(260, 15, 2, 500, 'Journalist', '', ''),
(261, 15, 3, 700, 'Specialist', ' ', ''),
(262, 15, 4, 900, 'Mentor', ' ', ' '),
(263, 15, 5, 1100, 'Photographer', ' ', ' '),
(264, 15, 6, 1250, 'Rewriter', ' ', ' '),
(265, 15, 7, 1350, 'Assistant Editor', ' ', ' '),
(266, 15, 8, 1500, 'Operator', ' ', ' '),
(267, 15, 9, 1600, 'Personnel Manager', ' ', ' '),
(268, 15, 10, 1750, 'Chief Editor', ' ', ' '),
(269, 15, 11, 1850, 'Producer', ' ', ' '),
(270, 15, 12, 1900, 'Chief Manager', ' ', ' '),
(271, 15, 13, 2100, 'Head Editor', ' ', ' '),
(272, 15, 14, 2200, 'Head Presenter', ' ', ' '),
(273, 15, 15, 2250, 'Head Manager', ' ', ' '),
(274, 15, 16, 2400, 'Deputy General Director', ' ', ' '),
(275, 15, 17, 2600, 'General Director', ' ', ' '),
(277, 16, 0, 0, 'rank_0', 'police_1', 'police_1'),
(278, 16, 1, 100, 'rank_1', 'police_1', 'police_1'),
(279, 16, 2, 200, 'rank_2', 'police_1', 'police_1'),
(280, 16, 3, 300, 'rank_3', 'police_1', 'police_1'),
(281, 16, 4, 400, 'rank_4', 'police_1', 'police_1'),
(282, 16, 5, 500, 'rank_5', 'police_1', 'police_1'),
(283, 16, 6, 600, 'rank_6', 'police_1', 'police_1'),
(284, 16, 7, 700, 'rank_7', 'police_1', 'police_1'),
(285, 16, 8, 800, 'rank_8', 'police_1', 'police_1'),
(286, 16, 9, 900, 'rank_9', 'police_1', 'police_1'),
(287, 16, 10, 1000, 'rank_10', 'police_1', 'police_1'),
(288, 16, 11, 1100, 'rank_11', 'police_1', 'police_1'),
(289, 16, 12, 1200, 'rank_12', 'police_1', 'police_1'),
(290, 16, 13, 1300, 'rank_13', 'police_1', 'police_1'),
(291, 16, 14, 1400, 'rank_14', 'police_1', 'police_1'),
(292, 16, 15, 1500, 'rank_15', 'police_1', 'police_1'),
(293, 16, 16, 1600, 'rank_16', 'police_1', 'police_1'),
(294, 16, 17, 1700, 'rank_17', 'police_1', 'police_1'),
(295, 17, 0, 0, 'rank_0', 'police_1', 'police_1'),
(296, 17, 1, 100, 'rank_1', 'police_1', 'police_1'),
(297, 17, 2, 200, 'rank_2', 'police_1', 'police_1'),
(298, 17, 3, 300, 'rank_3', 'police_1', 'police_1'),
(299, 17, 4, 400, 'rank_4', 'police_1', 'police_1'),
(300, 17, 5, 500, 'rank_5', 'police_1', 'police_1'),
(301, 17, 6, 600, 'rank_6', 'police_1', 'police_1'),
(302, 17, 7, 700, 'rank_7', 'police_1', 'police_1'),
(303, 17, 8, 800, 'rank_8', 'police_1', 'police_1'),
(304, 17, 9, 900, 'rank_9', 'police_1', 'police_1'),
(305, 17, 10, 1000, 'rank_10', 'police_1', 'police_1'),
(306, 17, 11, 1100, 'rank_11', 'police_1', 'police_1'),
(307, 17, 12, 1200, 'rank_12', 'police_1', 'police_1'),
(308, 17, 13, 1300, 'rank_13', 'police_1', 'police_1'),
(309, 17, 14, 1400, 'rank_14', 'police_1', 'police_1'),
(310, 17, 15, 1500, 'rank_15', 'police_1', 'police_1'),
(311, 17, 16, 1600, 'rank_16', 'police_1', 'police_1'),
(312, 17, 17, 1700, 'rank_17', 'police_1', 'police_1');

-- --------------------------------------------------------

--
-- Структура таблицы `fractions`
--

CREATE TABLE `fractions` (
  `id` int(155) NOT NULL,
  `drugs` int(155) NOT NULL,
  `money` int(155) NOT NULL,
  `mats` int(155) NOT NULL,
  `medkits` int(155) NOT NULL,
  `lastserial` text NOT NULL,
  `weapons` text NOT NULL,
  `isopen` tinyint(1) NOT NULL,
  `fuellimit` int(155) NOT NULL,
  `fuelleft` int(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fractions`
--

INSERT INTO `fractions` (`id`, `drugs`, `money`, `mats`, `medkits`, `lastserial`, `weapons`, `isopen`, `fuellimit`, `fuelleft`) VALUES
(1, 1300, 1788500, 115920, 0, '24', '[{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1001xxxxx\",\"ID\":100,\"Type\":100,\"Count\":1,\"IsActive\":false},{\"Data\":\"1001xxxxx\",\"ID\":103,\"Type\":103,\"Count\":1,\"IsActive\":false},{\"Data\":\"1005xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":null,\"ID\":204,\"Type\":204,\"Count\":100,\"IsActive\":false},{\"Data\":\"201300055\",\"ID\":119,\"Type\":119,\"Count\":1,\"IsActive\":false},{\"Data\":\"201300083\",\"ID\":143,\"Type\":143,\"Count\":1,\"IsActive\":false},{\"Data\":null,\"ID\":201,\"Type\":201,\"Count\":200,\"IsActive\":false},{\"Data\":\"1001xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":\"families1\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"families1\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"families1\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":null,\"ID\":200,\"Type\":200,\"Count\":120,\"IsActive\":false},{\"Data\":\"1001xxxxx\",\"ID\":142,\"Type\":142,\"Count\":1,\"IsActive\":false},{\"Data\":\"1001xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":null,\"ID\":200,\"Type\":200,\"Count\":120,\"IsActive\":false},{\"Data\":\"1001xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":null,\"ID\":201,\"Type\":201,\"Count\":200,\"IsActive\":false},{\"Data\":null,\"ID\":200,\"Type\":200,\"Count\":120,\"IsActive\":false},{\"Data\":null,\"ID\":201,\"Type\":201,\"Count\":200,\"IsActive\":false},{\"Data\":\"1001xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":null,\"ID\":200,\"Type\":200,\"Count\":60,\"IsActive\":false},{\"Data\":null,\"ID\":201,\"Type\":201,\"Count\":200,\"IsActive\":false},{\"Data\":null,\"ID\":201,\"Type\":201,\"Count\":15,\"IsActive\":false}]', 1, 0, 0),
(2, 128, 1240669, 117538, 0, '24', '[{\"Data\":null,\"ID\":201,\"Type\":201,\"Count\":4,\"IsActive\":false}]', 1, 0, 0),
(3, 160, 1297900, 121372, 117, '24', '[]', 1, 0, 0),
(4, 1173, 6637900, 205930, 176, '24', '[{\"Data\":\"101400098\",\"ID\":100,\"Type\":100,\"Count\":1,\"IsActive\":false},{\"Data\":\"201300087\",\"ID\":101,\"Type\":101,\"Count\":1,\"IsActive\":false},{\"Data\":\"201300081\",\"ID\":104,\"Type\":104,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900047\",\"ID\":116,\"Type\":116,\"Count\":1,\"IsActive\":false},{\"Data\":null,\"ID\":204,\"Type\":204,\"Count\":40,\"IsActive\":false},{\"Data\":\"1012xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1012xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1012xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900079\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900124\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900125\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900127\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900053\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900089\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"1012xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900129\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900081\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900143\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900075\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900091\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900132\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900076\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900130\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900063\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900087\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900133\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900142\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900080\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900145\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900088\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900137\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900082\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900146\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900134\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900092\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900122\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900136\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900144\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900135\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900147\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900086\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900141\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900140\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900085\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"201200080\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900084\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"1012xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900138\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900120\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"1012xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1012xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1012xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1012xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1012xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1012xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1012xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":null,\"ID\":201,\"Type\":201,\"Count\":200,\"IsActive\":false},{\"Data\":null,\"ID\":201,\"Type\":201,\"Count\":200,\"IsActive\":false},{\"Data\":null,\"ID\":201,\"Type\":201,\"Count\":200,\"IsActive\":false},{\"Data\":null,\"ID\":201,\"Type\":201,\"Count\":200,\"IsActive\":false},{\"Data\":null,\"ID\":200,\"Type\":200,\"Count\":120,\"IsActive\":false},{\"Data\":null,\"ID\":200,\"Type\":200,\"Count\":110,\"IsActive\":false},{\"Data\":null,\"ID\":201,\"Type\":201,\"Count\":80,\"IsActive\":false},{\"Data\":\"777777777\",\"ID\":122,\"Type\":122,\"Count\":1,\"IsActive\":false},{\"Data\":\"777777777\",\"ID\":122,\"Type\":122,\"Count\":1,\"IsActive\":false},{\"Data\":\"777777777\",\"ID\":122,\"Type\":122,\"Count\":1,\"IsActive\":false},{\"Data\":\"100700219\",\"ID\":130,\"Type\":130,\"Count\":1,\"IsActive\":false},{\"Data\":\"777777777\",\"ID\":146,\"Type\":146,\"Count\":1,\"IsActive\":false},{\"Data\":\"777777777\",\"ID\":146,\"Type\":146,\"Count\":1,\"IsActive\":false},{\"Data\":\"777777777\",\"ID\":146,\"Type\":146,\"Count\":1,\"IsActive\":false},{\"Data\":\"1012xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":null,\"ID\":202,\"Type\":202,\"Count\":58,\"IsActive\":false},{\"Data\":\"1004xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":\"1004xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false}]', 1, 0, 0),
(5, 160, 2833600, 134600, 0, '24', '[{\"Data\":\"100700056\",\"ID\":100,\"Type\":100,\"Count\":1,\"IsActive\":false},{\"Data\":\"101400046\",\"ID\":127,\"Type\":127,\"Count\":1,\"IsActive\":false},{\"Data\":\"1005xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":\"1005xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":\"1005xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":\"101400049\",\"ID\":127,\"Type\":127,\"Count\":1,\"IsActive\":false},{\"Data\":\"1005xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":\"1005xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":\"1005xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":\"1005xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":\"1005xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":\"1005xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":\"1005xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":\"1005xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":\"1005xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":\"1005xxxxx\",\"ID\":142,\"Type\":142,\"Count\":1,\"IsActive\":false},{\"Data\":\"1005xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":\"1005xxxxx\",\"ID\":142,\"Type\":142,\"Count\":1,\"IsActive\":false},{\"Data\":\"101400044\",\"ID\":127,\"Type\":127,\"Count\":1,\"IsActive\":false},{\"Data\":\"100700030\",\"ID\":127,\"Type\":127,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":null,\"ID\":202,\"Type\":202,\"Count\":200,\"IsActive\":false},{\"Data\":null,\"ID\":202,\"Type\":202,\"Count\":200,\"IsActive\":false},{\"Data\":null,\"ID\":202,\"Type\":202,\"Count\":200,\"IsActive\":false},{\"Data\":null,\"ID\":202,\"Type\":202,\"Count\":200,\"IsActive\":false},{\"Data\":null,\"ID\":202,\"Type\":202,\"Count\":9,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"201300076\",\"ID\":119,\"Type\":119,\"Count\":1,\"IsActive\":false},{\"Data\":\"1005xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false}]', 1, 0, 0),
(6, 0, 541254, 116408, 128, '147', '[{\"Data\":null,\"ID\":202,\"Type\":202,\"Count\":148,\"IsActive\":false},{\"Data\":\"100600058\",\"ID\":100,\"Type\":100,\"Count\":1,\"IsActive\":false}]', 1, 150000, 150000),
(7, 0, 1, 114824, 843, '347', '[{\"Data\":\"100700170\",\"ID\":141,\"Type\":141,\"Count\":1,\"IsActive\":false},{\"Data\":\"100700176\",\"ID\":100,\"Type\":100,\"Count\":1,\"IsActive\":false},{\"Data\":\"100700216\",\"ID\":117,\"Type\":117,\"Count\":1,\"IsActive\":false},{\"Data\":\"100700217\",\"ID\":100,\"Type\":100,\"Count\":1,\"IsActive\":false},{\"Data\":\"100700236\",\"ID\":100,\"Type\":100,\"Count\":1,\"IsActive\":false},{\"Data\":\"101400129\",\"ID\":100,\"Type\":100,\"Count\":1,\"IsActive\":false},{\"Data\":\"100700274\",\"ID\":141,\"Type\":141,\"Count\":1,\"IsActive\":false},{\"Data\":\"1001xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":\"100700269\",\"ID\":117,\"Type\":117,\"Count\":1,\"IsActive\":false},{\"Data\":null,\"ID\":202,\"Type\":202,\"Count\":150,\"IsActive\":false},{\"Data\":\"100700285\",\"ID\":102,\"Type\":102,\"Count\":1,\"IsActive\":false},{\"Data\":null,\"ID\":201,\"Type\":201,\"Count\":58,\"IsActive\":false}]', 1, 1000, 1000),
(8, 0, 1, 50101, 348, '53', '[{\"Data\":null,\"ID\":200,\"Type\":200,\"Count\":1,\"IsActive\":false}]', 1, 150000, 150000),
(9, 0, 1, 34336, 489, '376', '[{\"Data\":\"100900035\",\"ID\":101,\"Type\":101,\"Count\":1,\"IsActive\":false},{\"Data\":\"100900083\",\"ID\":101,\"Type\":101,\"Count\":1,\"IsActive\":false},{\"Data\":\"100900161\",\"ID\":101,\"Type\":101,\"Count\":1,\"IsActive\":false},{\"Data\":\"100900172\",\"ID\":101,\"Type\":101,\"Count\":1,\"IsActive\":false},{\"Data\":null,\"ID\":201,\"Type\":201,\"Count\":200,\"IsActive\":false},{\"Data\":\"100900299\",\"ID\":119,\"Type\":119,\"Count\":1,\"IsActive\":false},{\"Data\":\"100900307\",\"ID\":119,\"Type\":119,\"Count\":1,\"IsActive\":false},{\"Data\":\"206500033\",\"ID\":119,\"Type\":119,\"Count\":1,\"IsActive\":false},{\"Data\":\"100900309\",\"ID\":119,\"Type\":119,\"Count\":1,\"IsActive\":false},{\"Data\":\"100900315\",\"ID\":101,\"Type\":101,\"Count\":1,\"IsActive\":false},{\"Data\":\"100700260\",\"ID\":117,\"Type\":117,\"Count\":1,\"IsActive\":false},{\"Data\":null,\"ID\":201,\"Type\":201,\"Count\":200,\"IsActive\":false},{\"Data\":\"100900318\",\"ID\":119,\"Type\":119,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900185\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"201300239\",\"ID\":116,\"Type\":116,\"Count\":1,\"IsActive\":false},{\"Data\":\"1005xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":\"201200089\",\"ID\":119,\"Type\":119,\"Count\":1,\"IsActive\":false},{\"Data\":\"100900330\",\"ID\":101,\"Type\":101,\"Count\":1,\"IsActive\":false},{\"Data\":\"100900346\",\"ID\":119,\"Type\":119,\"Count\":1,\"IsActive\":false},{\"Data\":null,\"ID\":203,\"Type\":203,\"Count\":20,\"IsActive\":false},{\"Data\":null,\"ID\":201,\"Type\":201,\"Count\":140,\"IsActive\":false},{\"Data\":\"100900339\",\"ID\":101,\"Type\":101,\"Count\":1,\"IsActive\":false},{\"Data\":\"Admin7777\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"100900347\",\"ID\":128,\"Type\":128,\"Count\":1,\"IsActive\":false},{\"Data\":\"206700039\",\"ID\":143,\"Type\":143,\"Count\":1,\"IsActive\":false},{\"Data\":\"100900352\",\"ID\":128,\"Type\":128,\"Count\":1,\"IsActive\":false},{\"Data\":\"100900351\",\"ID\":119,\"Type\":119,\"Count\":1,\"IsActive\":false},{\"Data\":\"100900256\",\"ID\":119,\"Type\":119,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900116\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"100900369\",\"ID\":137,\"Type\":137,\"Count\":1,\"IsActive\":false},{\"Data\":null,\"ID\":203,\"Type\":203,\"Count\":9,\"IsActive\":false},{\"Data\":\"100900375\",\"ID\":127,\"Type\":127,\"Count\":1,\"IsActive\":false},{\"Data\":null,\"ID\":202,\"Type\":202,\"Count\":143,\"IsActive\":false}]', 1, 150000, 150000),
(10, 240, 7066740, 111534, 0, '24', '[{\"Data\":\"201300192\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"201300172\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"201300174\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"201300186\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"201300180\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206700076\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206700060\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206700066\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"206700068\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"201300193\",\"ID\":119,\"Type\":119,\"Count\":1,\"IsActive\":false},{\"Data\":\"201300179\",\"ID\":119,\"Type\":119,\"Count\":1,\"IsActive\":false},{\"Data\":\"201300181\",\"ID\":119,\"Type\":119,\"Count\":1,\"IsActive\":false},{\"Data\":\"201300191\",\"ID\":119,\"Type\":119,\"Count\":1,\"IsActive\":false},{\"Data\":\"201300187\",\"ID\":119,\"Type\":119,\"Count\":1,\"IsActive\":false},{\"Data\":\"201300183\",\"ID\":119,\"Type\":119,\"Count\":1,\"IsActive\":false},{\"Data\":\"201300177\",\"ID\":119,\"Type\":119,\"Count\":1,\"IsActive\":false},{\"Data\":\"201300175\",\"ID\":119,\"Type\":119,\"Count\":1,\"IsActive\":false},{\"Data\":\"1010xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"201300079\",\"ID\":143,\"Type\":143,\"Count\":1,\"IsActive\":false},{\"Data\":\"1010xxxxx\",\"ID\":106,\"Type\":106,\"Count\":1,\"IsActive\":false},{\"Data\":\"1010xxxxx\",\"ID\":106,\"Type\":106,\"Count\":1,\"IsActive\":false},{\"Data\":\"1010xxxxx\",\"ID\":106,\"Type\":106,\"Count\":1,\"IsActive\":false},{\"Data\":\"1010xxxxx\",\"ID\":106,\"Type\":106,\"Count\":1,\"IsActive\":false},{\"Data\":\"1010xxxxx\",\"ID\":106,\"Type\":106,\"Count\":1,\"IsActive\":false},{\"Data\":\"1010xxxxx\",\"ID\":106,\"Type\":106,\"Count\":1,\"IsActive\":false},{\"Data\":\"1010xxxxx\",\"ID\":106,\"Type\":106,\"Count\":1,\"IsActive\":false},{\"Data\":\"1010xxxxx\",\"ID\":106,\"Type\":106,\"Count\":1,\"IsActive\":false},{\"Data\":\"1010xxxxx\",\"ID\":106,\"Type\":106,\"Count\":1,\"IsActive\":false},{\"Data\":\"1010xxxxx\",\"ID\":106,\"Type\":106,\"Count\":1,\"IsActive\":false},{\"Data\":\"1010xxxxx\",\"ID\":106,\"Type\":106,\"Count\":1,\"IsActive\":false},{\"Data\":\"1010xxxxx\",\"ID\":106,\"Type\":106,\"Count\":1,\"IsActive\":false}]', 1, 0, 0),
(11, 236, 967656, 148485, 0, '24', '[{\"Data\":\"201300019\",\"ID\":119,\"Type\":119,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":105,\"Type\":105,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":131,\"Type\":131,\"Count\":1,\"IsActive\":false},{\"Data\":\"206900002\",\"ID\":116,\"Type\":116,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1001xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":\"1005xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":\"1005xxxxx\",\"ID\":115,\"Type\":115,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":141,\"Type\":141,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"101400054\",\"ID\":127,\"Type\":127,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"206700010\",\"ID\":107,\"Type\":107,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":123,\"Type\":123,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":105,\"Type\":105,\"Count\":1,\"IsActive\":false},{\"Data\":\"1011xxxxx\",\"ID\":126,\"Type\":126,\"Count\":1,\"IsActive\":false}]', 0, 0, 0),
(12, 165, 1112057, 122362, 629, '24', '[]', 1, 0, 0),
(13, 190, 417608, 129046, 272, '24', '[{\"Data\":\"Admin1234\",\"ID\":128,\"Type\":128,\"Count\":1,\"IsActive\":false},{\"Data\":null,\"ID\":204,\"Type\":204,\"Count\":100,\"IsActive\":false},{\"Data\":\"1013xxxxx\",\"ID\":106,\"Type\":106,\"Count\":1,\"IsActive\":false},{\"Data\":\"1013xxxxx\",\"ID\":106,\"Type\":106,\"Count\":1,\"IsActive\":false}]', 1, 0, 0),
(14, 0, 1, 97494, 0, '162', '[]', 1, 10000, 10000),
(15, 0, 1, 1, 100, '4', '[{\"Data\":null,\"ID\":0,\"Type\":0,\"Count\":0,\"IsActive\":false}]', 1, 1000, 0),
(16, 0, 1, 1, 10, '4', '[{\"Data\":null,\"ID\":0,\"Type\":0,\"Count\":0,\"IsActive\":false}]', 1, 0, 0),
(17, 0, 1, 1, 100, '4', '[{\"Data\":null,\"ID\":0,\"Type\":0,\"Count\":0,\"IsActive\":false}]', 1, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `fractionvehicles`
--

CREATE TABLE `fractionvehicles` (
  `fraction` int(155) NOT NULL,
  `number` text NOT NULL,
  `components` text NOT NULL,
  `model` text NOT NULL,
  `position` text NOT NULL,
  `rotation` text NOT NULL,
  `rank` int(155) NOT NULL,
  `colorprim` int(11) NOT NULL,
  `colorsec` int(11) NOT NULL,
  `idkey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fractionvehicles`
--

INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES
(5, 'BLOODS01', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'youga', '{\"x\":964.68,\"y\":-1823.35,\"z\":31.10}', '{\"x\":0.06626982,\"y\":-0.00215839967,\"z\":353.53}', 10, 45, 45, 1),
(6, 'GOVFLY1', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'Luxor2', '{\"x\":-978.2288,\"y\":-3002.78223,\"z\":13.9479656}', '{\"x\":0.0644961745,\"y\":0.0581368171,\"z\":61.27643}', 14, 111, 73, 2),
(6, 'GOVFLY3', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'Luxor2', '{\"x\":-966.534668,\"y\":-2983.3042,\"z\":15.04949}', '{\"x\":-0.140227869,\"y\":-0.143193379,\"z\":61.4855957}', 14, 73, 111, 3),
(9, 'FIBFLY1', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'frogger2', '{\"x\":122.905441,\"y\":-744.519653,\"z\":262.964172}', '{\"x\":-0.0479557477,\"y\":0.00194021291,\"z\":160.058533}', 11, 1, 1, 4),
(8, 'EMS01', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'ambulance', '{\"x\":368.554321,\"y\":-541.4619,\"z\":29.01248}', '{\"x\":-0.0103013394,\"y\":-0.142090678,\"z\":89.90253}', 3, 111, 1, 5),
(7, 'LSPD01', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'polmav', '{\"x\":448.961,\"y\":-980.952,\"z\":44.2952156}', '{\"x\":-0.7118948,\"y\":-0.06647531,\"z\":0.6068115}', 11, 1, 1, 6),
(7, 'LSPD02', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'polmav', '{\"x\":481.666473,\"y\":-982.4717,\"z\":41.0080566}', '{\"x\":-0.7118948,\"y\":-0.06647531,\"z\":0.6068115}', 11, 1, 1, 7),
(8, 'EMSFLY1', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'buzzard2', '{\"x\":348.056183,\"y\":-597.2191,\"z\":74.43513}', '{\"x\":0.183723018,\"y\":-0.0416264124,\"z\":158.028076}', 9, 111, 0, 8),
(5, 'BLOODS02', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'youga', '{\"x\":969.51,\"y\":-1823.35,\"z\":31.10}', '{\"x\":0.197975576,\"y\":-0.01314722,\"z\":353.53}', 10, 45, 45, 9),
(5, 'BLOODS03', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'm5e60', '{\"x\":985.44,\"y\":-1825.42,\"z\":31.17}', '{\"x\":0.0364565738,\"y\":-0.0378393568,\"z\":79.20}', 6, 45, 45, 10),
(5, 'BLOODS11', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'primo', '{\"x\":985.44,\"y\":-1820.42,\"z\":31.15}', '{\"x\":-0.09027422,\"y\":0.0700615942,\"z\":79.20}', 6, 45, 45, 11),
(5, 'BLOODS04', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'G63', '{\"x\":974.88,\"y\":-1823.35,\"z\":31.10}', '{\"x\":0.0364565738,\"y\":-0.0378393568,\"z\":353.53}', 11, 45, 45, 12),
(5, 'BLOODS05', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'm5e60', '{\"x\":985.44,\"y\":-1815.42,\"z\":31.15}', '{\"x\":-0.276131362,\"y\":-0.293805659,\"z\":79.20}', 3, 45, 45, 13),
(5, 'BLOODS06', '{}', 'picador', '{\"x\":979.73,\"y\":-1815.58,\"z\":31.18}', '{\"x\":0.0,\"y\":0.0,\"z\":84.14}', 3, 45, 45, 14),
(5, 'BLOODS07', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'enduro', '{\"x\":984.51,\"y\":-1831.20,\"z\":31.16}', '{\"x\":-4.367451,\"y\":-6.70572042,\"z\":173.89}', 8, 45, 45, 15),
(5, 'BLOODS08', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'enduro', '{\"x\":985.54,\"y\":-1809.35,\"z\":31.16}', '{\"x\":-3.96385455,\"y\":-7.44372272,\"z\":353.07}', 8, 45, 45, 16),
(5, 'BLOODS09', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'bjxl', '{\"x\":973.17,\"y\":-1815.58,\"z\":31.18}', '{\"x\":0.0186818428,\"y\":-0.030284863,\"z\":84.14}', 5, 45, 45, 17),
(5, 'BLOODS10', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'bjxl', '{\"x\":967.17,\"y\":-1815.58,\"z\":31.18}', '{\"x\":-0.01742046,\"y\":0.00246752682,\"z\":84.14}', 5, 45, 45, 18),
(4, 'MARA01', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'youga', '{\"x\":1409.99,\"y\":-1504.78,\"z\":59.56}', '{\"x\":0.0,\"y\":0.0,\"z\":199.64}', 10, 73, 1, 19),
(4, 'MARA02', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'youga', '{\"x\":1414.52,\"y\":-1502.22,\"z\":59.99}', '{\"x\":0.0,\"y\":0.0,\"z\":199.64}', 10, 73, 1, 20),
(4, 'MARA03', '{}', 'enduro', '{\"x\":1454.23,\"y\":-1502.55,\"z\":64.59}', '{\"x\":0.0,\"y\":0.0,\"z\":338.55}', 8, 73, 1, 21),
(4, 'MARA04', '{}', 'enduro', '{\"x\":1449.83,\"y\":-1503.01,\"z\":64.00}', '{\"x\":0.0,\"y\":0.0,\"z\":338.55}', 8, 73, 1, 22),
(4, 'MARA05', '{}', 'faction2', '{\"x\":1432.22,\"y\":-1499.04,\"z\":63.12}', '{\"x\":0.0,\"y\":0.0,\"z\":163.80}', 11, 73, 1, 23),
(4, 'MARA06', '{}', 'bjxl', '{\"x\":1419.57,\"y\":-1518.14,\"z\":60.11}', '{\"x\":0.0,\"y\":0.0,\"z\":278.03}', 5, 73, 1, 24),
(4, 'MARA07', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'bjxl', '{\"x\":1428.21,\"y\":-1515.98,\"z\":61.07}', '{\"x\":0.0,\"y\":0.0,\"z\":272.77}', 5, 73, 1, 25),
(4, 'MARA08', '{}', 'picador', '{\"x\":1436.76,\"y\":-1515.53,\"z\":61.95}', '{\"x\":0.0,\"y\":0.0,\"z\":261.97}', 3, 73, 1, 26),
(4, 'MARA09', '{}', 'picador', '{\"x\":1430.13,\"y\":-1508.04,\"z\":61.60}', '{\"x\":0.0,\"y\":0.0,\"z\":85.87}', 3, 73, 1, 27),
(4, 'MARA10', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'primo', '{\"x\":1436.27,\"y\":-1507.67,\"z\":62.89}', '{\"x\":0.0,\"y\":0.0,\"z\":85.87}', 6, 73, 73, 28),
(4, 'MARA11', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'primo', '{\"x\":1443.58,\"y\":-1508.13,\"z\":62.89}', '{\"x\":0.0,\"y\":0.0,\"z\":85.87}', 6, 73, 73, 29),
(3, 'VAG01', '{}', 'bjxl', '{\"x\":485.62,\"y\":-1895.79,\"z\":25.56}', '{\"x\":0.0,\"y\":0.0,\"z\":292.85}', 5, 126, 1, 30),
(3, 'VAG02', '{}', 'bjxl', '{\"x\":481.09,\"y\":-1898.79,\"z\":25.54}', '{\"x\":0.0,\"y\":0.0,\"z\":292.85}', 5, 126, 1, 31),
(3, 'VAG03', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'sabregt', '{\"x\":476.65,\"y\":-1905.24,\"z\":25.24}', '{\"x\":3.143746,\"y\":6.3003,\"z\":293.85}', 11, 126, 1, 32),
(3, 'VAG04', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'youga', '{\"x\":478.62,\"y\":-1888.86,\"z\":26.09}', '{\"x\":-4.38273239,\"y\":0.272755831,\"z\":293.85}', 10, 126, 1, 33),
(3, 'VAG05', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'youga', '{\"x\":480.22,\"y\":-1892.56,\"z\":26.09}', '{\"x\":-7.819543,\"y\":-1.68098426,\"z\":293.85}', 10, 126, 1, 34),
(3, 'VAG06', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'oracle', '{\"x\":492.39,\"y\":-1902.56,\"z\":25.44}', '{\"x\":4.862114,\"y\":6.45387459,\"z\":292.86}', 8, 126, 1, 35),
(3, 'VAG07', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'oracle', '{\"x\":476.79,\"y\":-1909.79,\"z\":25.21}', '{\"x\":7.338584,\"y\":7.460592,\"z\":292.86}', 8, 126, 1, 36),
(3, 'VAG08', '{}', 'picador', '{\"x\":464.68,\"y\":-1906.88,\"z\":25.28}', '{\"x\":0.0,\"y\":0.0,\"z\":202.83}', 3, 126, 1, 37),
(3, 'VAG09', '{}', 'picador', '{\"x\":462.26,\"y\":-1901.40,\"z\":25.51}', '{\"x\":0.0,\"y\":0.0,\"z\":202.83}', 3, 126, 1, 38),
(3, 'VAG10', '{}', 'primo', '{\"x\":459.68,\"y\":-1895.49,\"z\":25.82}', '{\"x\":0.0,\"y\":0.0,\"z\":202.83}', 3, 126, 1, 39),
(3, 'VAG11', '{}', 'primo', '{\"x\":457.04,\"y\":-1889.68,\"z\":26.12}', '{\"x\":0.0,\"y\":0.0,\"z\":202.83}', 1, 126, 1, 40),
(1, 'FAM01', '{}', 'youga', '{\"x\":-242.469177,\"y\":-1593.38684,\"z\":33.6039734}', '{\"x\":0.0,\"y\":0.0,\"z\":359.1496}', 10, 57, 1, 41),
(1, 'FAM02', '{}', 'youga', '{\"x\":-242.5712,\"y\":-1600.2804,\"z\":33.64202}', '{\"x\":0.0,\"y\":0.0,\"z\":352.6439}', 10, 57, 1, 42),
(1, 'FAM03', '{}', 'phoenix', '{\"x\":-191.60759,\"y\":-1583.63025,\"z\":34.75038}', '{\"x\":0.0,\"y\":0.0,\"z\":228.411423}', 11, 57, 1, 43),
(1, 'FAM04', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'bjxl', '{\"x\":-170.910019,\"y\":-1594.44226,\"z\":34.5836334}', '{\"x\":-6.18571,\"y\":-2.67520571,\"z\":321.888763}', 5, 57, 1, 44),
(1, 'FAM05', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'bjxl', '{\"x\":-174.2438,\"y\":-1599.16443,\"z\":34.434742}', '{\"x\":-4.27972126,\"y\":-2.78891683,\"z\":327.977966}', 5, 57, 1, 45),
(1, 'FAM06', '{}', 'enduro', '{\"x\":-193.218277,\"y\":-1612.86328,\"z\":33.91154}', '{\"x\":0.0,\"y\":0.0,\"z\":137.525833}', 8, 57, 1, 46),
(1, 'FAM07', '{}', 'enduro', '{\"x\":-194.4664,\"y\":-1611.64233,\"z\":33.93908}', '{\"x\":0.0,\"y\":0.0,\"z\":137.634552}', 8, 57, 1, 47),
(1, 'FAM08', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'primo', '{\"x\":-178.473785,\"y\":-1613.62463,\"z\":33.439476}', '{\"x\":-1.48942173,\"y\":-3.7475028,\"z\":356.324219}', 6, 57, 1, 48),
(1, 'FAM09', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'primo', '{\"x\":-178.47084,\"y\":-1619.10974,\"z\":33.31939}', '{\"x\":-1.38572514,\"y\":-2.473949,\"z\":0.6513977}', 6, 57, 1, 49),
(1, 'FAM10', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'picador', '{\"x\":-188.760864,\"y\":-1616.75061,\"z\":33.84107}', '{\"x\":-1.22752035,\"y\":0.228851363,\"z\":357.681671}', 3, 57, 1, 50),
(1, 'FAM11', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'picador', '{\"x\":-188.617065,\"y\":-1610.67554,\"z\":33.996933}', '{\"x\":-1.50156593,\"y\":-0.143164322,\"z\":355.2146}', 3, 57, 1, 51),
(2, 'BAL01', '{}', 'youga', '{\"x\":88.2467041,\"y\":-1968.299,\"z\":20.7474518}', '{\"x\":0.0,\"y\":0.0,\"z\":317.5794}', 10, 145, 1, 52),
(2, 'BAL02', '{}', 'youga', '{\"x\":92.3245,\"y\":-1963.23792,\"z\":20.7475338}', '{\"x\":0.0,\"y\":0.0,\"z\":316.0877}', 10, 145, 1, 53),
(2, 'BAL03', '{}', 'buccaneer2', '{\"x\":116.714539,\"y\":-1949.61121,\"z\":20.737608}', '{\"x\":0.0,\"y\":0.0,\"z\":47.050087}', 11, 145, 1, 54),
(2, 'BAL04', '{}', 'enduro', '{\"x\":129.992218,\"y\":-1937.61438,\"z\":20.61713}', '{\"x\":0.0,\"y\":0.0,\"z\":120.131165}', 8, 145, 1, 55),
(2, 'BAL05', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'enduro', '{\"x\":131.057587,\"y\":-1939.50183,\"z\":20.5921822}', '{\"x\":-10.5111752,\"y\":-6.956541,\"z\":122.467468}', 8, 145, 1, 56),
(2, 'BAL06', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'bjxl', '{\"x\":84.83413,\"y\":-1930.02222,\"z\":21.0372219}', '{\"x\":-1.623555,\"y\":1.52319765,\"z\":44.99765}', 5, 145, 1, 57),
(2, 'BAL07', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'bjxl', '{\"x\":88.34561,\"y\":-1934.08594,\"z\":21.0368519}', '{\"x\":-1.44526744,\"y\":1.70989585,\"z\":34.60913}', 5, 145, 1, 58),
(2, 'BAL08', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'picador', '{\"x\":91.52753,\"y\":-1939.23035,\"z\":20.7833424}', '{\"x\":-1.11730242,\"y\":2.088266,\"z\":29.4743958}', 3, 145, 1, 59),
(2, 'BAL09', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'picador', '{\"x\":94.18025,\"y\":-1944.73547,\"z\":20.7843056}', '{\"x\":-0.9019738,\"y\":2.18026781,\"z\":26.4478149}', 3, 145, 1, 60),
(2, 'BAL10', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'primo', '{\"x\":96.4377747,\"y\":-1925.22241,\"z\":20.5823555}', '{\"x\":2.59953976,\"y\":-2.18265963,\"z\":63.69348}', 6, 145, 1, 61),
(2, 'BAL11', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'primo', '{\"x\":91.3508453,\"y\":-1922.01831,\"z\":20.5903473}', '{\"x\":1.86620581,\"y\":-0.9970261,\"z\":54.3088074}', 6, 145, 1, 62),
(6, 'GOVFLY2', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'maverick', '{\"x\":-522.207031,\"y\":-176.948608,\"z\":54.78559}', '{\"x\":0.109789632,\"y\":0.06661252,\"z\":31.3600464}', 14, 111, 1, 63),
(6, 'GOV1', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'Stretch', '{\"x\":-564.770752,\"y\":-165.9105,\"z\":38.2192345}', '{\"x\":-0.301207483,\"y\":0.5663513,\"z\":292.550751}', 7, 111, 1, 64),
(6, 'GOV2', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'raiden', '{\"x\":-560.497559,\"y\":-146.706192,\"z\":38.3146667}', '{\"x\":-3.47023726,\"y\":-0.171296284,\"z\":59.0449829}', 19, 111, 1, 65),
(6, 'GOV3', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'raiden', '{\"x\":-556.4399,\"y\":-144.987946,\"z\":38.3773727}', '{\"x\":-3.063745,\"y\":-0.523451865,\"z\":58.48221}', 19, 111, 1, 66),
(6, 'GOV4', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'raiden', '{\"x\":-552.5825,\"y\":-143.367767,\"z\":38.419323}', '{\"x\":-2.611339,\"y\":-0.830320239,\"z\":57.4231567}', 19, 111, 1, 67),
(6, 'GOV5', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'raiden', '{\"x\":-548.919861,\"y\":-141.806763,\"z\":38.4962349}', '{\"x\":-2.99311638,\"y\":1.81003022,\"z\":64.436615}', 19, 111, 1, 68),
(6, 'GOV6', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'fbi2', '{\"x\":-576.4954,\"y\":-148.0309,\"z\":37.8479042}', '{\"x\":6.2003026,\"y\":2.325003,\"z\":202.924713}', 6, 111, 1, 69),
(6, 'GOV7', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'fbi2', '{\"x\":-570.258667,\"y\":-145.499954,\"z\":37.86206}', '{\"x\":6.164353,\"y\":2.889131,\"z\":202.5322}', 6, 111, 1, 70),
(6, 'GOV8', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'fbi2', '{\"x\":-581.422546,\"y\":-155.684082,\"z\":38.04}', '{\"x\":-3.78174734,\"y\":-1.52422273,\"z\":294.705872}', 6, 111, 1, 71),
(6, 'GOV9', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'fbi2', '{\"x\":-587.4597,\"y\":-158.399933,\"z\":38.026638}', '{\"x\":-2.16769648,\"y\":-1.27010965,\"z\":293.57135}', 6, 111, 1, 72),
(6, 'GOV10', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'fbi2', '{\"x\":-538.410645,\"y\":-150.989944,\"z\":38.4993973}', '{\"x\":-1.11288941,\"y\":-0.06965328,\"z\":292.757324}', 6, 111, 1, 73),
(6, 'GOV11', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'fbi2', '{\"x\":-530.8009,\"y\":-147.954865,\"z\":38.5553131}', '{\"x\":-1.70179188,\"y\":-0.0588764325,\"z\":292.5849}', 6, 111, 1, 74),
(6, 'GOV12', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'fbi', '{\"x\":-550.4419,\"y\":-159.7692,\"z\":38.3556633}', '{\"x\":-0.238298446,\"y\":0.226027712,\"z\":293.3225}', 4, 111, 1, 75),
(6, 'GOV13', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'fbi', '{\"x\":-556.478455,\"y\":-162.3915,\"z\":38.3317375}', '{\"x\":-0.26992932,\"y\":0.475000858,\"z\":293.290527}', 4, 111, 1, 76),
(6, 'GOV14', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'fbi', '{\"x\":-573.686,\"y\":-169.564331,\"z\":38.108284}', '{\"x\":-0.398194581,\"y\":0.621386647,\"z\":291.631348}', 4, 111, 1, 77),
(6, 'GOV15', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'fbi', '{\"x\":-580.2237,\"y\":-172.234436,\"z\":37.9860153}', '{\"x\":-1.02067578,\"y\":0.7448937,\"z\":292.8343}', 4, 111, 1, 78),
(6, 'GOV16', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'fbi', '{\"x\":-591.7311,\"y\":-173.380814,\"z\":37.9359055}', '{\"x\":-2.735601,\"y\":-0.295018226,\"z\":292.838867}', 4, 111, 1, 79),
(6, 'GOV17', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'Schafter5', '{\"x\":-500.734863,\"y\":-175.0675,\"z\":37.7684021}', '{\"x\":-0.402092218,\"y\":-0.483495057,\"z\":153.11322}', 11, 111, 1, 80),
(6, 'GOV18', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'Schafter5', '{\"x\":-499.103058,\"y\":-177.719727,\"z\":37.68526}', '{\"x\":-0.4780054,\"y\":-0.538114846,\"z\":152.260254}', 11, 111, 1, 81),
(6, 'GOV19', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'Schafter5', '{\"x\":-497.56778,\"y\":-180.515747,\"z\":37.6032028}', '{\"x\":-0.5143058,\"y\":-0.61999017,\"z\":151.420166}', 11, 111, 1, 82),
(6, 'GOV20', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'Schafter5', '{\"x\":-495.9218,\"y\":-183.3748,\"z\":37.5167656}', '{\"x\":-0.528079867,\"y\":-0.6250855,\"z\":148.02124}', 11, 111, 1, 83),
(6, 'GOV21', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'Schafter5', '{\"x\":-492.873138,\"y\":-188.629166,\"z\":37.3554344}', '{\"x\":-0.6169036,\"y\":-0.666313,\"z\":146.967133}', 11, 111, 1, 84),
(6, 'GOV22', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'Schafter5', '{\"x\":-494.357758,\"y\":-186.069962,\"z\":37.4332581}', '{\"x\":-0.6002987,\"y\":-0.7292211,\"z\":143.739716}', 11, 111, 1, 85),
(6, 'GOV23', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'Schafter5', '{\"x\":-489.868317,\"y\":-193.8398,\"z\":37.2024536}', '{\"x\":-0.7206203,\"y\":-0.4609991,\"z\":146.573059}', 11, 111, 1, 86);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES
(6, 'GOV24', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'Schafter5', '{\"x\":-491.3455,\"y\":-191.184021,\"z\":37.2796364}', '{\"x\":-0.8216058,\"y\":-0.630632639,\"z\":149.217834}', 11, 111, 1, 87),
(6, 'GOV25', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'Schafter5', '{\"x\":-485.135651,\"y\":-201.555023,\"z\":36.9691658}', '{\"x\":-0.5846602,\"y\":-0.418016583,\"z\":146.45105}', 11, 111, 1, 88),
(6, 'GOV26', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'Schafter5', '{\"x\":-486.701721,\"y\":-198.852692,\"z\":37.046257}', '{\"x\":-0.733366251,\"y\":-0.468612254,\"z\":147.471252}', 11, 111, 1, 89),
(6, 'GOV27', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'Schafter5', '{\"x\":-488.414276,\"y\":-196.441833,\"z\":37.12285}', '{\"x\":-0.806936741,\"y\":-0.4510095,\"z\":146.688812}', 11, 111, 1, 90),
(6, 'GOV28', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'Schafter5', '{\"x\":-483.6164,\"y\":-204.453964,\"z\":36.8825264}', '{\"x\":-0.813280344,\"y\":-0.509607,\"z\":147.410522}', 11, 111, 1, 91),
(8, 'EMS04', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'ambulance', '{\"x\":398.72702,\"y\":-546.361,\"z\":28.8781033}', '{\"x\":-0.360399067,\"y\":-0.7349402,\"z\":68.95703}', 3, 111, 1, 93),
(8, 'EMS06', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'ambulance', '{\"x\":375.742157,\"y\":-541.2623,\"z\":29.0140915}', '{\"x\":0.035027083,\"y\":-0.373112321,\"z\":92.3056946}', 3, 111, 1, 95),
(8, 'EMS07', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'ambulance', '{\"x\":391.556854,\"y\":-544.166565,\"z\":28.93727}', '{\"x\":-0.360399067,\"y\":-0.7349402,\"z\":68.95703}', 3, 111, 1, 96),
(8, 'EMS08', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'ambulance', '{\"x\":384.098,\"y\":-541.5711,\"z\":29.0006142}', '{\"x\":-0.0475431867,\"y\":-0.156150073,\"z\":78.48187}', 3, 111, 1, 97),
(8, 'EMS09', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'ambulance', '{\"x\":361.63443,\"y\":-541.2295,\"z\":29.0127983}', '{\"x\":0.00399880251,\"y\":-0.0645541,\"z\":93.01837}', 3, 111, 1, 98),
(8, 'EMS10', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'ambulance', '{\"x\":399.602234,\"y\":-553.0578,\"z\":28.8355465}', '{\"x\":-0.427612334,\"y\":-0.153711647,\"z\":250.8428}', 3, 111, 1, 99),
(8, 'EMS11', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'ambulance', '{\"x\":354.1797,\"y\":-541.0956,\"z\":29.012558}', '{\"x\":0.07737209,\"y\":0.18106921,\"z\":88.87018}', 3, 111, 1, 100),
(8, 'EMS12', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'ambulance', '{\"x\":392.3396,\"y\":-550.578247,\"z\":28.9018764}', '{\"x\":-0.242579237,\"y\":-0.491966963,\"z\":250.856354}', 3, 111, 1, 101),
(8, 'EMS13', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'ambulance', '{\"x\":385.2938,\"y\":-548.285339,\"z\":28.9729271}', '{\"x\":-0.6975075,\"y\":-0.46986863,\"z\":250.462982}', 3, 111, 1, 102),
(8, 'EMS14', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'ambulance', '{\"x\":370.699524,\"y\":-547.0482,\"z\":29.0127678}', '{\"x\":-0.265845656,\"y\":-0.0583269224,\"z\":269.0098}', 3, 111, 1, 103),
(8, 'EMS15', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'ambulance', '{\"x\":378.143646,\"y\":-546.942444,\"z\":29.0124283}', '{\"x\":0.00229245075,\"y\":0.0361539759,\"z\":268.022339}', 3, 111, 1, 104),
(8, 'EMS16', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'ambulance', '{\"x\":362.663361,\"y\":-547.036865,\"z\":29.0130577}', '{\"x\":-0.0326471068,\"y\":-0.137781069,\"z\":270.58316}', 3, 111, 1, 105),
(8, 'EMS17', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'ambulance', '{\"x\":355.28067,\"y\":-546.8256,\"z\":29.0100212}', '{\"x\":-0.000141265351,\"y\":0.0164895,\"z\":269.043274}', 3, 111, 1, 106),
(8, 'EMSFLY2', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'buzzard2', '{\"x\":354.704559,\"y\":-579.397034,\"z\":74.56317}', '{\"x\":-0.05863272,\"y\":-0.02599346,\"z\":340.597443}', 9, 111, 0, 111),
(7, 'LSPD1', '{}', 'riot', '{\"x\":436.8745,\"y\":-1009.7088,\"z\":28.198616}', '{\"x\":0.0,\"y\":0.0,\"z\":183.1122}', 8, 0, 0, 112),
(7, 'LSPD3', '{}', 'riot', '{\"x\":431.4817,\"y\":-1009.65564,\"z\":28.3325748}', '{\"x\":0.0,\"y\":0.0,\"z\":176.693787}', 8, 0, 0, 113),
(7, 'LSPD4', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'insurgent2', '{\"x\":447.580475,\"y\":-1009.19934,\"z\":28.4799137}', '{\"x\":13.3305693,\"y\":-0.253869653,\"z\":182.3066}', 9, 1, 1, 114),
(7, 'LSPD5', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'insurgent2', '{\"x\":452.4071,\"y\":-1008.84473,\"z\":28.4241943}', '{\"x\":14.6249685,\"y\":-0.321601152,\"z\":179.985474}', 9, 1, 1, 115),
(7, 'LSPD6', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'police3', '{\"x\":408.252716,\"y\":-980.159851,\"z\":29.523716}', '{\"x\":0.060755,\"y\":0.02545211,\"z\":233.210159}', 3, 111, 111, 116),
(7, 'LSPD7', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'police3', '{\"x\":408.369781,\"y\":-989.1463,\"z\":29.5225849}', '{\"x\":-0.0417116,\"y\":0.116475455,\"z\":232.046844}', 3, 111, 111, 117),
(7, 'LSPD9', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'police3', '{\"x\":408.955566,\"y\":-998.786255,\"z\":29.52108}', '{\"x\":-0.06751108,\"y\":0.128513411,\"z\":230.705688}', 3, 111, 111, 119),
(7, 'LSPD10', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'police3', '{\"x\":408.565674,\"y\":-993.628235,\"z\":29.5224075}', '{\"x\":-0.009527455,\"y\":0.001757239,\"z\":229.508148}', 3, 111, 111, 120),
(7, 'LSPD11', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'police3', '{\"x\":408.433655,\"y\":-984.816833,\"z\":29.5231838}', '{\"x\":-0.008607403,\"y\":0.03613176,\"z\":232.603638}', 3, 111, 111, 121),
(7, 'LSPD12', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'raiden', '{\"x\":462.843353,\"y\":-1019.686,\"z\":28.2873783}', '{\"x\":0.175747707,\"y\":0.224384263,\"z\":91.01755}', 11, 1, 1, 122),
(7, 'LSPD13', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'raiden', '{\"x\":462.797943,\"y\":-1014.83752,\"z\":27.9074554}', '{\"x\":0.263600677,\"y\":-0.04844205,\"z\":89.47537}', 11, 1, 1, 123),
(7, 'LSPD14', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'xls2', '{\"x\":434.92,\"y\":-1027.10815,\"z\":29.26661}', '{\"x\":0.107089013,\"y\":-1.06849039,\"z\":183.654}', 7, 1, 1, 124),
(7, 'LSPD15', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'xls2', '{\"x\":427.369629,\"y\":-1027.89819,\"z\":29.4014282}', '{\"x\":0.005144453,\"y\":-1.03291237,\"z\":185.859482}', 7, 1, 1, 125),
(7, 'LSPD16', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'xls2', '{\"x\":431.101257,\"y\":-1027.6145,\"z\":29.3352375}', '{\"x\":0.07076498,\"y\":-0.9851173,\"z\":186.8523}', 7, 1, 1, 126),
(7, 'LSPD17', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'xls2', '{\"x\":438.59845,\"y\":-1026.62378,\"z\":29.2010784}', '{\"x\":0.04558062,\"y\":-1.07895613,\"z\":183.041809}', 7, 1, 1, 127),
(7, 'LSPD18', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'xls2', '{\"x\":442.538849,\"y\":-1026.15039,\"z\":29.1217976}', '{\"x\":0.3878964,\"y\":-1.02394474,\"z\":184.345032}', 7, 1, 1, 128),
(7, 'LSPD19', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'xls2', '{\"x\":446.0902,\"y\":-1025.82568,\"z\":29.0572243}', '{\"x\":0.258325636,\"y\":-1.00394154,\"z\":184.47699}', 7, 1, 1, 129),
(7, 'LSPD20', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'police3', '{\"x\":485.806946,\"y\":-1079.423,\"z\":29.3137169}', '{\"x\":-0.061289724,\"y\":-0.04600215,\"z\":266.0009}', 3, 111, 1, 130),
(7, 'LSPD21', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'police3', '{\"x\":485.627655,\"y\":-1082.95569,\"z\":29.3144112}', '{\"x\":0.05904763,\"y\":-0.0659574643,\"z\":268.4145}', 3, 111, 1, 131),
(7, 'LSPD22', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'police3', '{\"x\":485.664246,\"y\":-1102.21436,\"z\":29.3132286}', '{\"x\":0.00499306526,\"y\":-0.0354465544,\"z\":268.5743}', 3, 111, 1, 132),
(7, 'LSPD23', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'police3', '{\"x\":485.896179,\"y\":-1105.70825,\"z\":29.3071957}', '{\"x\":-0.0380977727,\"y\":-0.0378757827,\"z\":270.353577}', 3, 111, 1, 133),
(7, 'LSPD24', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'police3', '{\"x\":485.9677,\"y\":-1109.07043,\"z\":29.3068619}', '{\"x\":-0.0474395,\"y\":-0.285403043,\"z\":265.6986}', 3, 111, 1, 134),
(7, 'LSPD25', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'police3', '{\"x\":485.893921,\"y\":-1112.62256,\"z\":29.30599}', '{\"x\":-0.0361085273,\"y\":-0.0237363372,\"z\":270.0654}', 3, 111, 1, 135),
(7, 'LSPD26', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'police3', '{\"x\":472.3626,\"y\":-1109.22534,\"z\":29.3059025}', '{\"x\":-0.08201427,\"y\":-0.155946687,\"z\":89.38986}', 3, 111, 1, 136),
(7, 'LSPD27', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'police3', '{\"x\":472.5152,\"y\":-1105.92371,\"z\":29.3073788}', '{\"x\":0.150914431,\"y\":0.08774629,\"z\":89.362854}', 3, 111, 1, 137),
(7, 'LSPD28', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'police2', '{\"x\":472.113739,\"y\":-1102.35913,\"z\":29.31346}', '{\"x\":0.1694519,\"y\":-0.09123363,\"z\":88.71594}', 4, 111, 1, 138),
(7, 'LSPD29', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'police2', '{\"x\":472.205963,\"y\":-1099.2113,\"z\":29.3154488}', '{\"x\":-0.127834991,\"y\":0.03300827,\"z\":95.57895}', 4, 111, 1, 139),
(7, 'LSPD30', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'police2', '{\"x\":472.4341,\"y\":-1095.38464,\"z\":29.3157425}', '{\"x\":-0.162116349,\"y\":0.110825367,\"z\":90.58942}', 4, 111, 1, 140),
(7, 'LSPD31', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'police2', '{\"x\":472.104248,\"y\":-1092.49377,\"z\":29.3158627}', '{\"x\":0.0223710723,\"y\":-0.0215224624,\"z\":93.52319}', 4, 111, 1, 141),
(7, 'LSPD32', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'police2', '{\"x\":472.033447,\"y\":-1089.33057,\"z\":29.3169289}', '{\"x\":-0.00550831435,\"y\":0.1323281,\"z\":90.70715}', 4, 111, 1, 142),
(7, 'LSPD33', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'police2', '{\"x\":458.791443,\"y\":-1083.59827,\"z\":29.3180828}', '{\"x\":0.09768664,\"y\":0.0112527562,\"z\":88.8487549}', 4, 111, 1, 143),
(7, 'LSPD34', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'police2', '{\"x\":458.834167,\"y\":-1079.87952,\"z\":29.3167076}', '{\"x\":0.0107410727,\"y\":0.121184364,\"z\":92.22763}', 4, 111, 1, 144),
(7, 'LSPD35', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'police2', '{\"x\":458.874268,\"y\":-1087.54456,\"z\":29.31598}', '{\"x\":-0.07548067,\"y\":0.101822495,\"z\":89.00412}', 4, 111, 1, 145),
(7, 'LSPD36', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'police2', '{\"x\":458.726349,\"y\":-1091.24622,\"z\":29.3125572}', '{\"x\":0.0448677354,\"y\":0.0121080959,\"z\":90.82654}', 4, 111, 1, 146),
(7, 'LSPD37', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'police2', '{\"x\":458.768219,\"y\":-1095.11035,\"z\":29.31075}', '{\"x\":-0.454401344,\"y\":0.116712116,\"z\":87.34775}', 4, 111, 1, 147),
(7, 'LSPD38', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'police2', '{\"x\":458.776917,\"y\":-1098.60986,\"z\":29.3134766}', '{\"x\":-0.114485443,\"y\":0.01882653,\"z\":94.50659}', 4, 111, 1, 148),
(7, 'LSPD39', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'towtruck', '{\"x\":460.4653,\"y\":-1105.2218,\"z\":29.6689816}', '{\"x\":0.369837582,\"y\":0.5127767,\"z\":46.8180847}', 8, 1, 111, 149),
(7, 'LSPD40', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'towtruck', '{\"x\":460.00473,\"y\":-1110.86462,\"z\":29.6666584}', '{\"x\":0.484348625,\"y\":0.4495527,\"z\":44.02881}', 8, 1, 111, 150),
(14, 'ARMY01', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'barracks', '{\"x\":-2411.47583,\"y\":3279.12329,\"z\":32.9509277}', '{\"x\":-0.36936003,\"y\":-0.746038854,\"z\":241.29834}', 3, 99, 99, 151),
(14, 'ARMY02', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'barracks', '{\"x\":-2409.78687,\"y\":3282.21118,\"z\":32.9507}', '{\"x\":-0.412521869,\"y\":-0.686305165,\"z\":239.448914}', 3, 99, 99, 152),
(14, 'ARMY03', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'barracks', '{\"x\":-2406.34546,\"y\":3287.84937,\"z\":32.954216}', '{\"x\":-0.306399375,\"y\":-0.6496362,\"z\":241.696045}', 3, 99, 99, 153),
(14, 'ARMY04', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'barracks', '{\"x\":-2402.61816,\"y\":3293.83716,\"z\":32.9521141}', '{\"x\":-0.313543051,\"y\":-0.617363453,\"z\":240.191589}', 3, 99, 99, 154),
(14, 'ARMY05', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'barracks', '{\"x\":-2395.79736,\"y\":3306.1394,\"z\":32.95035}', '{\"x\":-0.236012414,\"y\":-0.9055912,\"z\":240.580643}', 3, 99, 99, 155),
(14, 'ARMY06', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'barracks', '{\"x\":-2401.05957,\"y\":3297.07935,\"z\":32.9517174}', '{\"x\":-0.339640439,\"y\":-0.6166905,\"z\":239.39859}', 3, 99, 99, 156),
(14, 'ARMY07', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'barracks', '{\"x\":-2399.467,\"y\":3299.91968,\"z\":32.95043}', '{\"x\":-0.409930974,\"y\":-0.7261707,\"z\":241.26825}', 3, 99, 99, 157),
(14, 'ARMY08', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'barracks', '{\"x\":-2407.99,\"y\":3285.02124,\"z\":32.9506836}', '{\"x\":-0.4052113,\"y\":-0.7160499,\"z\":240.499573}', 3, 99, 99, 158),
(14, 'ARMY09', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'barracks', '{\"x\":-2404.559,\"y\":3290.82568,\"z\":32.9454651}', '{\"x\":-0.360769242,\"y\":-0.7956792,\"z\":239.188416}', 3, 99, 99, 159),
(14, 'ARMY10', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'barracks', '{\"x\":-2397.58032,\"y\":3302.99146,\"z\":32.94814}', '{\"x\":0.269535035,\"y\":-0.72613287,\"z\":240.303955}', 3, 99, 99, 160),
(14, 'ARMY11', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'Buzzard', '{\"x\":-2121.79785,\"y\":3134.98462,\"z\":32.9301529}', '{\"x\":0.0239031818,\"y\":-0.005181194,\"z\":331.16275}', 8, 99, 99, 161),
(14, 'ARMY12', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'Buzzard', '{\"x\":-2057.573,\"y\":3095.41064,\"z\":32.9296074}', '{\"x\":-0.088237755,\"y\":0.009552645,\"z\":329.381836}', 8, 99, 99, 162);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES
(14, 'ARMY13', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'lazer', '{\"x\":-2129.51465,\"y\":3256.24048,\"z\":33.2317352}', '{\"x\":-0.17480053,\"y\":0.09484037,\"z\":150.411987}', 13, 99, 1, 163),
(14, 'ARMY16', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'insurgent', '{\"x\":-2305.51636,\"y\":3277.60742,\"z\":33.2458267}', '{\"x\":-0.07162552,\"y\":-0.13039279,\"z\":241.273834}', 7, 99, 1, 166),
(14, 'ARMY17', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'insurgent', '{\"x\":-2309.0105,\"y\":3271.96655,\"z\":33.3988838}', '{\"x\":0.0,\"y\":0.0,\"z\":241.3772}', 7, 99, 1, 167),
(14, 'ARMY18', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'insurgent', '{\"x\":-2307.1875,\"y\":3274.96753,\"z\":33.0137444}', '{\"x\":0.05880006,\"y\":0.0436308719,\"z\":239.825165}', 7, 99, 1, 168),
(14, 'ARMY19', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'lazer', '{\"x\":-2143.48,\"y\":3265.03,\"z\":33.2317352}', '{\"x\":-0.17480053,\"y\":0.09484037,\"z\":150.411987}', 12, 99, 1, 169),
(14, 'ARMY20', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'bombushka', '{\"x\":-2140.43,\"y\":2890.12,\"z\":32.81}', '{\"x\":0.0,\"y\":0.0,\"z\":30.09}', 12, 99, 1, 170),
(14, 'ARMY21', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'contender', '{\"x\":-2320.99854,\"y\":3330.21362,\"z\":33.5602}', '{\"x\":-0.4812048,\"y\":-0.0410385877,\"z\":331.7549}', 7, 99, 99, 171),
(14, 'ARMY22', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'contender', '{\"x\":-2318.32471,\"y\":3328.55884,\"z\":33.5597343}', '{\"x\":-0.310866356,\"y\":0.150957346,\"z\":324.934}', 7, 99, 99, 172),
(14, 'ARMY23', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'contender', '{\"x\":-2315.56738,\"y\":3327.02173,\"z\":33.55704}', '{\"x\":-0.247893527,\"y\":0.142920256,\"z\":328.861359}', 7, 99, 99, 173),
(14, 'ARMY24', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'contender', '{\"x\":-2326.756,\"y\":3333.23462,\"z\":33.55701}', '{\"x\":-0.246086225,\"y\":0.1442901,\"z\":328.1531}', 7, 99, 99, 174),
(14, 'ARMY25', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'contender', '{\"x\":-2323.94873,\"y\":3331.758,\"z\":33.56089}', '{\"x\":-0.436912656,\"y\":0.12652941,\"z\":332.877228}', 7, 99, 99, 175),
(14, 'ARMY26', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'xls2', '{\"x\":-2315.522,\"y\":3359.37476,\"z\":33.27601}', '{\"x\":-0.23109284,\"y\":0.0001945886,\"z\":332.9729}', 6, 99, 99, 176),
(14, 'ARMY27', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'xls2', '{\"x\":-2312.92114,\"y\":3357.977,\"z\":33.2666969}', '{\"x\":-0.0436779559,\"y\":-0.513596535,\"z\":329.796539}', 6, 99, 99, 177),
(14, 'ARMY28', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'xls2', '{\"x\":-2310.56934,\"y\":3356.57959,\"z\":33.249054}', '{\"x\":-0.07527891,\"y\":-0.1935545,\"z\":331.5678}', 6, 99, 99, 178),
(14, 'ARMY29', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'xls2', '{\"x\":-2308.30273,\"y\":3355.20044,\"z\":33.24828}', '{\"x\":0.14117001,\"y\":-0.204702914,\"z\":327.2561}', 6, 99, 99, 179),
(14, 'ARMY30', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'xls2', '{\"x\":-2305.69751,\"y\":3353.548,\"z\":33.24586}', '{\"x\":0.08771958,\"y\":-0.09368459,\"z\":330.168945}', 6, 99, 99, 180),
(14, 'ARMY33', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'fbi2', '{\"x\":-2364.93359,\"y\":3355.19922,\"z\":32.9554939}', '{\"x\":0.08292573,\"y\":0.00359317032,\"z\":330.425751}', 5, 99, 99, 183),
(14, 'ARMY34', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'fbi2', '{\"x\":-2354.35986,\"y\":3349.0752,\"z\":32.9550743}', '{\"x\":0.105919473,\"y\":-0.06788532,\"z\":329.4551}', 5, 99, 99, 184),
(14, 'ARMY35', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'fbi2', '{\"x\":-2356.84375,\"y\":3350.48218,\"z\":32.9559975}', '{\"x\":-0.05326579,\"y\":0.03553231,\"z\":327.5303}', 5, 99, 99, 185),
(14, 'ARMY36', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'fbi2', '{\"x\":-2359.32446,\"y\":3351.981,\"z\":32.9561653}', '{\"x\":0.0221505836,\"y\":-0.07728809,\"z\":328.42038}', 5, 99, 99, 186),
(14, 'ARMY37', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'fbi2', '{\"x\":-2362.07275,\"y\":3353.45776,\"z\":32.955513}', '{\"x\":-0.0553899221,\"y\":0.0300717726,\"z\":330.885681}', 5, 99, 99, 187),
(14, 'ARMY41', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'crusader', '{\"x\":-2328.49658,\"y\":3367.326,\"z\":32.85609}', '{\"x\":-0.9744377,\"y\":0.526335239,\"z\":333.973724}', 2, 99, 99, 191),
(14, 'ARMY42', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'crusader', '{\"x\":-2325.88452,\"y\":3366.3457,\"z\":32.86479}', '{\"x\":-0.9880526,\"y\":0.3132635,\"z\":336.142548}', 2, 99, 99, 192),
(14, 'ARMY43', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'crusader', '{\"x\":-2330.97559,\"y\":3368.72827,\"z\":32.8504868}', '{\"x\":-0.693796754,\"y\":0.448789656,\"z\":330.766449}', 2, 99, 99, 193),
(14, 'ARMY44', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'mesa', '{\"x\":-2340.59644,\"y\":3374.07275,\"z\":32.829052}', '{\"x\":-0.0300446153,\"y\":0.04280658,\"z\":334.722}', 5, 99, 99, 194),
(14, 'ARMY45', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'mesa', '{\"x\":-2348.144,\"y\":3378.64575,\"z\":32.834343}', '{\"x\":-0.0180001035,\"y\":-0.07698105,\"z\":335.308044}', 5, 99, 99, 195),
(14, 'ARMY46', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'mesa', '{\"x\":-2358.20532,\"y\":3383.97632,\"z\":32.84036}', '{\"x\":-0.09907932,\"y\":-0.161007762,\"z\":334.6752}', 5, 99, 99, 196),
(14, 'ARMY47', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'mesa', '{\"x\":-2350.31177,\"y\":3379.94,\"z\":32.8347931}', '{\"x\":-0.0145184761,\"y\":-0.0411096066,\"z\":331.5403}', 5, 99, 99, 197),
(14, 'ARMY48', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'mesa', '{\"x\":-2353.3042,\"y\":3381.05225,\"z\":32.8400345}', '{\"x\":0.166560754,\"y\":-0.1108765,\"z\":331.7432}', 5, 99, 99, 198),
(14, 'ARMY49', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'mesa', '{\"x\":-2355.75146,\"y\":3382.594,\"z\":32.8403969}', '{\"x\":-0.103435315,\"y\":-0.165846393,\"z\":334.345917}', 5, 99, 99, 199),
(14, 'ARMY50', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'crusader', '{\"x\":-2333.60132,\"y\":3370.01416,\"z\":32.8449478}', '{\"x\":-0.4503569,\"y\":0.3070438,\"z\":334.254425}', 2, 99, 99, 200),
(14, 'ARMY51', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'crusader', '{\"x\":-2335.88379,\"y\":3371.39478,\"z\":32.84168}', '{\"x\":-0.414199233,\"y\":0.256935984,\"z\":332.300751}', 2, 99, 99, 201),
(14, 'ARMY52', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'mesa', '{\"x\":-2338.16846,\"y\":3372.90942,\"z\":32.8400574}', '{\"x\":-0.124640509,\"y\":0.1643419,\"z\":338.59375}', 5, 99, 99, 202),
(14, 'ARMY53', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'mesa', '{\"x\":-2343.259,\"y\":3375.597,\"z\":32.8303757}', '{\"x\":-0.05049328,\"y\":-0.102643907,\"z\":331.711456}', 5, 99, 99, 203),
(14, 'ARMY54', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'mesa', '{\"x\":-2345.49585,\"y\":3377.28052,\"z\":33.33787}', '{\"x\":0.0,\"y\":0.0,\"z\":333.199554}', 5, 99, 99, 204),
(9, 'FBI1', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'fbi', '{\"x\":125.241486,\"y\":-720.090637,\"z\":33.28043}', '{\"x\":-0.0105128521,\"y\":-0.05040036,\"z\":160.7923}', 3, 1, 1, 205),
(9, 'FBI2', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'fbi', '{\"x\":132.758209,\"y\":-722.881836,\"z\":33.2799072}', '{\"x\":-0.0148432031,\"y\":0.00364152226,\"z\":159.839233}', 3, 1, 1, 206),
(9, 'FBI3', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'fbi', '{\"x\":121.389122,\"y\":-718.8132,\"z\":33.28145}', '{\"x\":0.0287823714,\"y\":0.0504472665,\"z\":161.694031}', 3, 1, 1, 207),
(9, 'FBI4', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'fbi', '{\"x\":117.460037,\"y\":-717.4551,\"z\":33.2787666}', '{\"x\":-0.0492618531,\"y\":-0.01663374,\"z\":157.661011}', 3, 1, 1, 208),
(9, 'FBI5', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'fbi', '{\"x\":113.701332,\"y\":-716.067,\"z\":33.2813225}', '{\"x\":0.0216773674,\"y\":0.0479444675,\"z\":159.427}', 3, 1, 1, 209),
(9, 'FBI6', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'fbi', '{\"x\":110.124428,\"y\":-714.3543,\"z\":33.2824173}', '{\"x\":0.101220019,\"y\":0.148223937,\"z\":161.147949}', 3, 1, 1, 210),
(9, 'FBI7', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'fbi', '{\"x\":128.92627,\"y\":-721.5477,\"z\":33.2826462}', '{\"x\":0.06099619,\"y\":0.07751625,\"z\":159.509949}', 3, 1, 1, 211),
(9, 'FBI8', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'fbi', '{\"x\":136.3138,\"y\":-724.2521,\"z\":33.28012}', '{\"x\":0.0152876973,\"y\":-0.00663077366,\"z\":162.86322}', 3, 1, 1, 212),
(9, 'FBI9', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'fbi', '{\"x\":140.091125,\"y\":-725.988464,\"z\":33.2823372}', '{\"x\":0.09304037,\"y\":0.110836186,\"z\":157.0232}', 3, 1, 1, 213),
(9, 'FBI10', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'fbi', '{\"x\":165.4755,\"y\":-733.539246,\"z\":33.2801}', '{\"x\":-0.06251927,\"y\":0.00915936,\"z\":70.4449158}', 3, 1, 1, 214),
(9, 'FBI11', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'fbi', '{\"x\":147.681488,\"y\":-728.7484,\"z\":33.2821426}', '{\"x\":0.06430348,\"y\":0.0876920745,\"z\":160.223816}', 3, 1, 1, 215),
(9, 'FBI12', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'fbi', '{\"x\":151.188049,\"y\":-729.653564,\"z\":33.27391}', '{\"x\":-0.120795004,\"y\":0.5039419,\"z\":162.22229}', 3, 1, 1, 216),
(9, 'FBI19', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'contender', '{\"x\":133.3365,\"y\":-741.441345,\"z\":33.86007}', '{\"x\":-0.342742234,\"y\":0.118341208,\"z\":338.7555}', 6, 1, 1, 223),
(9, 'FBI20', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'contender', '{\"x\":136.98877,\"y\":-742.8248,\"z\":33.8581352}', '{\"x\":-0.496562451,\"y\":0.0135561805,\"z\":340.403473}', 6, 1, 1, 224),
(9, 'FBI21', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'contender', '{\"x\":147.582016,\"y\":-746.3317,\"z\":33.86059}', '{\"x\":-0.3958241,\"y\":0.116727017,\"z\":338.412781}', 6, 1, 1, 225),
(9, 'FBI22', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'contender', '{\"x\":140.780548,\"y\":-743.9162,\"z\":33.8551064}', '{\"x\":-0.378152579,\"y\":0.112081714,\"z\":342.635834}', 6, 1, 1, 226),
(9, 'FBI23', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'contender', '{\"x\":151.164078,\"y\":-747.7126,\"z\":33.8610954}', '{\"x\":-0.5206076,\"y\":0.159613416,\"z\":340.938568}', 6, 1, 1, 227),
(9, 'FBI24', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'contender', '{\"x\":154.809753,\"y\":-749.309753,\"z\":33.8618851}', '{\"x\":-0.314754128,\"y\":0.288007617,\"z\":339.557983}', 6, 1, 1, 228),
(9, 'FBI25', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'fbi2', '{\"x\":103.716545,\"y\":-693.2569,\"z\":33.2412338}', '{\"x\":0.143747136,\"y\":0.0259376056,\"z\":158.997986}', 5, 1, 1, 229),
(9, 'FBI26', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'fbi2', '{\"x\":110.974968,\"y\":-696.3541,\"z\":33.2414627}', '{\"x\":0.15797165,\"y\":0.03147822,\"z\":160.351257}', 5, 1, 1, 230),
(9, 'FBI27', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'fbi2', '{\"x\":107.234077,\"y\":-694.8459,\"z\":33.2395439}', '{\"x\":0.108769156,\"y\":-0.0441256538,\"z\":162.1051}', 5, 1, 1, 231),
(9, 'FBI28', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'fbi2', '{\"x\":122.2144,\"y\":-700.5321,\"z\":33.2293053}', '{\"x\":0.053785786,\"y\":1.04975784,\"z\":159.074219}', 5, 1, 1, 232),
(9, 'FBI29', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'fbi2', '{\"x\":118.614273,\"y\":-698.968933,\"z\":33.23322}', '{\"x\":0.03350527,\"y\":0.153221369,\"z\":161.0304}', 5, 1, 1, 233),
(9, 'FBI30', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'fbi2', '{\"x\":114.668304,\"y\":-697.4956,\"z\":33.2620659}', '{\"x\":0.0350586362,\"y\":-0.011837923,\"z\":159.055}', 5, 1, 1, 234),
(9, 'FBI31', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'cavalcade2', '{\"x\":97.85131,\"y\":-709.2097,\"z\":33.4403267}', '{\"x\":0.06371545,\"y\":0.157383963,\"z\":248.862823}', 8, 1, 1, 235),
(9, 'FBI32', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'cavalcade2', '{\"x\":95.8466644,\"y\":-712.8234,\"z\":33.434}', '{\"x\":0.08627231,\"y\":0.2901574,\"z\":253.916748}', 8, 1, 1, 236),
(9, 'FBI33', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'cavalcade2', '{\"x\":94.587,\"y\":-716.2509,\"z\":33.44054}', '{\"x\":0.03374167,\"y\":0.116892472,\"z\":253.846191}', 8, 1, 1, 237),
(9, 'FBI34', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'cavalcade2', '{\"x\":93.25159,\"y\":-720.4028,\"z\":33.44229}', '{\"x\":-0.014399346,\"y\":0.246326745,\"z\":247.303589}', 8, 1, 1, 238),
(9, 'FBI35', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'insurgent2', '{\"x\":162.324615,\"y\":-741.0743,\"z\":33.5617867}', '{\"x\":-0.00591143966,\"y\":-0.008695296,\"z\":70.509}', 9, 1, 1, 239),
(9, 'FBI36', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'insurgent2', '{\"x\":163.6133,\"y\":-737.298767,\"z\":33.5621071}', '{\"x\":-0.005717653,\"y\":-0.009208539,\"z\":69.83383}', 9, 1, 1, 240),
(9, 'FBI37', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'brabus850', '{\"x\":115.499832,\"y\":-734.490845,\"z\":32.96647}', '{\"x\":-0.240873367,\"y\":-0.233325616,\"z\":340.934021}', 11, 1, 1, 241),
(9, 'FBI38', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'brabus850', '{\"x\":118.824341,\"y\":-736.110962,\"z\":32.96617}', '{\"x\":-0.0259791985,\"y\":0.0293015987,\"z\":340.048462}', 11, 1, 1, 242);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES
(11, 'RM1', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'youga', '{\"x\":-123.956161,\"y\":1008.63666,\"z\":235.734985}', '{\"x\":0.027756,\"y\":0.0107590584,\"z\":200.26}', 8, 1, 1, 243),
(11, 'RM2', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'youga', '{\"x\":-132.0058,\"y\":1005.76868,\"z\":235.7354}', '{\"x\":0.110045806,\"y\":0.0406230725,\"z\":199.484253}', 8, 1, 1, 244),
(11, 'RM3', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'G63', '{\"x\":-114.95,\"y\":979.52,\"z\":235.76}', '{\"x\":0.0,\"y\":0.0,\"z\":110.59}', 7, 1, 1, 245),
(11, 'RM4', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'baller3', '{\"x\":-118.65,\"y\":990.97,\"z\":235.75}', '{\"x\":0.0,\"y\":0.0,\"z\":110.59}', 7, 1, 1, 246),
(11, 'RM5', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'oracle', '{\"x\":-107.49,\"y\":1010.21,\"z\":235.76}', '{\"x\":0.0,\"y\":0.0,\"z\":110.59}', 2, 1, 1, 247),
(11, 'RM6', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'oracle', '{\"x\":-114.28,\"y\":1007.83,\"z\":235.77}', '{\"x\":0.0,\"y\":0.0,\"z\":110.59}', 2, 1, 1, 248),
(11, 'RM7', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'Schafter4', '{\"x\":-112.14,\"y\":1001.96,\"z\":235.77}', '{\"x\":0.0,\"y\":0.0,\"z\":110.59}', 4, 1, 1, 249),
(11, 'RM8', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'Schafter4', '{\"x\":-105.39,\"y\":1004.26,\"z\":235.76}', '{\"x\":0.0,\"y\":0.0,\"z\":110.59}', 4, 1, 1, 250),
(11, 'RM9', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'windsor', '{\"x\":-136.93,\"y\":998.32,\"z\":236.65}', '{\"x\":0.0,\"y\":0.0,\"z\":20.02}', 9, 1, 1, 251),
(11, 'RM10', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'Gresley', '{\"x\":-106.82,\"y\":1007.12,\"z\":235.76}', '{\"x\":0.0,\"y\":0.0,\"z\":110.59}', 5, 1, 1, 252),
(11, 'RM11', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'Gresley', '{\"x\":-113.15,\"y\":1004.90,\"z\":235.77}', '{\"x\":0.0,\"y\":0.0,\"z\":110.59}', 5, 1, 1, 253),
(10, 'LCN1', '{}', 'Youga', '{\"x\":1407.62573,\"y\":1116.1322,\"z\":114.837631}', '{\"x\":0.0,\"y\":0.0,\"z\":357.9661}', 8, 156, 156, 254),
(10, 'LCN2', '{}', 'Youga', '{\"x\":1401.62329,\"y\":1116.29285,\"z\":114.837631}', '{\"x\":0.0,\"y\":0.0,\"z\":358.4806}', 8, 156, 156, 255),
(10, 'LCN3', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'lc200', '{\"x\":1474.74036,\"y\":1119.603,\"z\":114.757111}', '{\"x\":-0.00563292159,\"y\":0.0580959767,\"z\":264.489838}', 7, 156, 156, 256),
(10, 'LCN4', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'baller3', '{\"x\":1474.68713,\"y\":1122.45093,\"z\":114.760262}', '{\"x\":-0.221599638,\"y\":0.4432286,\"z\":268.826569}', 7, 156, 156, 257),
(10, 'LCN5', '{}', 'fusilade', '{\"x\":1443.23767,\"y\":1120.74133,\"z\":114.33297}', '{\"x\":0.0,\"y\":0.0,\"z\":0.0117846541}', 4, 156, 156, 258),
(10, 'LCN6', '{}', 'fusilade', '{\"x\":1446.32813,\"y\":1120.40222,\"z\":114.334076}', '{\"x\":0.0,\"y\":0.0,\"z\":2.232198}', 4, 156, 156, 259),
(10, 'LCN7', '{}', 'hermes', '{\"x\":1449.21887,\"y\":1120.34753,\"z\":114.334}', '{\"x\":0.0,\"y\":0.0,\"z\":358.406158}', 2, 156, 156, 260),
(10, 'LCN8', '{}', 'hermes', '{\"x\":1452.585,\"y\":1120.23792,\"z\":114.334}', '{\"x\":0.0,\"y\":0.0,\"z\":0.7993294}', 2, 156, 156, 261),
(10, 'LCN9', '{}', 'cog55', '{\"x\":1443.211,\"y\":1104.94653,\"z\":114.35453}', '{\"x\":0.0,\"y\":0.0,\"z\":179.568619}', 5, 156, 156, 262),
(10, 'LCN10', '{}', 'cog55', '{\"x\":1446.41052,\"y\":1104.94446,\"z\":114.3466}', '{\"x\":0.0,\"y\":0.0,\"z\":177.7135}', 5, 156, 156, 263),
(10, 'LCN11', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'revolter', '{\"x\":1371.74158,\"y\":1147.48315,\"z\":113.766876}', '{\"x\":0.0221958831,\"y\":-0.0252553429,\"z\":0.156494141}', 9, 156, 156, 264),
(13, 'ARM1', '{}', 'Youga', '{\"x\":-1922.15,\"y\":2044.52,\"z\":140.73}', '{\"x\":0.0,\"y\":0.0,\"z\":257.918327}', 8, 23, 23, 265),
(13, 'ARM2', '{}', 'Youga', '{\"x\":-1923.78,\"y\":2036.35,\"z\":140.73}', '{\"x\":0.0,\"y\":0.0,\"z\":257.15409}', 8, 23, 23, 266),
(13, 'ARM3', '{}', 'Swinger', '{\"x\":-1899.69,\"y\":2036.40,\"z\":140.73}', '{\"x\":-0.03266864,\"y\":0.006542582,\"z\":158.12747}', 9, 23, 23, 267),
(13, 'ARM4', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'Dubsta', '{\"x\":-1919.80,\"y\":2052.64,\"z\":140.73}', '{\"x\":0.0,\"y\":0.0,\"z\":257.15409}', 5, 23, 23, 268),
(13, 'ARM5', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'Dubsta', '{\"x\":-1920.38,\"y\":2048.51,\"z\":140.73}', '{\"x\":0.0,\"y\":0.0,\"z\":257.15409}', 5, 23, 23, 269),
(13, 'ARM6', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'Alpha', '{\"x\":-1895,\"y\":2034.74,\"z\":140.73}', '{\"x\":-0.03266864,\"y\":0.006542582,\"z\":158.12747}', 4, 23, 23, 270),
(13, 'ARM7', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'Alpha', '{\"x\":-1891.83,\"y\":2033.34,\"z\":140.73}', '{\"x\":-0.0313293226,\"y\":0.012842766,\"z\":158.1600952}', 4, 23, 23, 271),
(13, 'ARM8', '{}', 'Savestra', '{\"x\":-1887.67,\"y\":2031.84,\"z\":140.73}', '{\"x\":0.0,\"y\":0.0,\"z\":158.7055}', 2, 23, 23, 272),
(13, 'ARM9', '{}', 'Savestra', '{\"x\":-1883.19,\"y\":2030.19,\"z\":140.73}', '{\"x\":0.0,\"y\":0.0,\"z\":158.088074}', 2, 23, 23, 273),
(13, 'ARM10', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'retinue', '{\"x\":-1906.16,\"y\":2021.38,\"z\":140.79}', '{\"x\":-0.6096021,\"y\":4.86261,\"z\":268.9499}', 7, 23, 23, 274),
(13, 'ARM11', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'retinue', '{\"x\":-1906.21,\"y\":2017.00,\"z\":140.94}', '{\"x\":0.113649093,\"y\":6.72542858,\"z\":267.0854}', 7, 23, 23, 275),
(12, 'MEK1', '{}', 'carbonrs', '{\"x\":-1518.81,\"y\":863.76,\"z\":181.68}', '{\"x\":0.0,\"y\":0.0,\"z\":343.09}', 7, 48, 48, 276),
(12, 'MEK2', '{}', 'carbonrs', '{\"x\":-1544.97,\"y\":859.03,\"z\":181.47}', '{\"x\":0.0,\"y\":0.0,\"z\":230.69}', 7, 48, 48, 277),
(12, 'MEK3', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'G63', '{\"x\":-1524.25,\"y\":857.78,\"z\":181.62}', '{\"x\":0.0,\"y\":0.0,\"z\":314.71}', 5, 48, 48, 278),
(12, 'MEK4', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'baller3', '{\"x\":-1535.62,\"y\":854.91,\"z\":181.54}', '{\"x\":0.0,\"y\":0.0,\"z\":268.58}', 5, 48, 48, 279),
(12, 'MEK5', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'fugitive', '{\"x\":-1535.03,\"y\":890.04,\"z\":181.81}', '{\"x\":0.0,\"y\":0.0,\"z\":199.82}', 4, 48, 48, 280),
(12, 'MEK6', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'fugitive', '{\"x\":-1531.14,\"y\":890.39,\"z\":181.89}', '{\"x\":0.0,\"y\":0.0,\"z\":199.82}', 4, 48, 48, 281),
(12, 'MEK7', '{}', 'Youga', '{\"x\":-1549.04,\"y\":884.50,\"z\":181.30}', '{\"x\":0.0,\"y\":0.0,\"z\":199.82}', 8, 48, 48, 282),
(12, 'MEK8', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'youga', '{\"x\":-1545.87,\"y\":887.12,\"z\":181.34}', '{\"x\":0.0,\"y\":0.0,\"z\":199.82}', 8, 48, 48, 283),
(12, 'MEK9', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'gauntlet', '{\"x\":-1542.87,\"y\":888.92,\"z\":181.49}', '{\"x\":0.0,\"y\":0.0,\"z\":199.82}', 2, 48, 48, 284),
(12, 'MEK10', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'gauntlet', '{\"x\":-1538.79,\"y\":889.59,\"z\":181.69}', '{\"x\":0.0,\"y\":0.0,\"z\":199.82}', 2, 48, 48, 285),
(12, 'MEK11', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'kuruma', '{\"x\":-1517.21,\"y\":870.51,\"z\":181.73}', '{\"x\":0.0,\"y\":0.0,\"z\":352.74}', 9, 48, 48, 286),
(7, 'PRISON1', '{}', 'pranger', '{\"x\":1869.80347,\"y\":2618.49976,\"z\":45.67201}', '{\"x\":0.0,\"y\":0.0,\"z\":269.903473}', 13, 73, 73, 287),
(7, 'PRISON2', '{}', 'pranger', '{\"x\":1869.78772,\"y\":2622.07959,\"z\":45.6720238}', '{\"x\":0.0,\"y\":0.0,\"z\":265.5458}', 13, 73, 73, 288),
(7, 'PRISON3', '{}', 'pranger', '{\"x\":1870.03735,\"y\":2625.78613,\"z\":45.6720238}', '{\"x\":0.0,\"y\":0.0,\"z\":265.418457}', 13, 73, 73, 289),
(7, 'PRISON4', '{}', 'pranger', '{\"x\":1870.23523,\"y\":2629.03784,\"z\":45.6720238}', '{\"x\":0.0,\"y\":0.0,\"z\":270.231934}', 13, 73, 73, 290),
(7, 'PRISON5', '{}', 'pranger', '{\"x\":1870.2019,\"y\":2632.814,\"z\":45.6720238}', '{\"x\":0.0,\"y\":0.0,\"z\":266.75}', 13, 73, 73, 291),
(7, 'PRISON6', '{}', 'pranger', '{\"x\":1870.34753,\"y\":2636.09277,\"z\":45.6720238}', '{\"x\":0.0,\"y\":0.0,\"z\":266.550781}', 13, 73, 73, 292),
(7, 'PRISON7', '{}', 'pranger', '{\"x\":1869.84338,\"y\":2639.562,\"z\":45.6720238}', '{\"x\":0.0,\"y\":0.0,\"z\":266.297272}', 13, 73, 73, 293),
(7, 'PRISON8', '{}', 'pranger', '{\"x\":1870.06726,\"y\":2642.96436,\"z\":45.67184}', '{\"x\":0.0,\"y\":0.0,\"z\":266.6244}', 13, 73, 73, 294),
(7, 'PRISON9', '{}', 'pbus', '{\"x\":1868.62085,\"y\":2595.14575,\"z\":45.6720238}', '{\"x\":0.0,\"y\":0.0,\"z\":267.611816}', 13, 73, 73, 295),
(7, 'PRISON10', '{}', 'pbus', '{\"x\":1868.5022,\"y\":2591.60645,\"z\":45.6720238}', '{\"x\":0.0,\"y\":0.0,\"z\":268.8429}', 13, 73, 73, 296),
(7, 'PRISON11', '{}', 'volatus', '{\"x\":1690.35474,\"y\":2604.732,\"z\":45.56486}', '{\"x\":0.0,\"y\":0.0,\"z\":178.796249}', 13, 73, 73, 297),
(15, 'NEWS1', '{}', 'rumpo', '{\"x\":-1065.1792,\"y\":-228.978577,\"z\":38.1795158}', '{\"x\":0.0,\"y\":0.0,\"z\":234.770233}', 5, 111, 1, 298),
(15, 'NEWS2', '{}', 'rumpo', '{\"x\":-1061.98889,\"y\":-226.67807,\"z\":38.1528435}', '{\"x\":0.0,\"y\":0.0,\"z\":240.262085}', 5, 111, 1, 299),
(15, 'NEWS3', '{}', 'rumpo', '{\"x\":-1058.35461,\"y\":-224.140076,\"z\":38.1005478}', '{\"x\":0.0,\"y\":0.0,\"z\":235.259583}', 5, 111, 1, 300),
(15, 'NEWS4', '{}', 'rumpo', '{\"x\":-1053.92615,\"y\":-222.26149,\"z\":38.0599136}', '{\"x\":0.0,\"y\":0.0,\"z\":241.027756}', 5, 111, 1, 301),
(15, 'NEWS5', '{}', 'rumpo', '{\"x\":-1050.2074,\"y\":-220.106415,\"z\":37.9381828}', '{\"x\":0.0,\"y\":0.0,\"z\":236.28125}', 5, 111, 1, 302),
(15, 'NEWS6', '{}', 'buzzard2', '{\"x\":-1080.09863,\"y\":-249.8955,\"z\":59.78906}', '{\"x\":0.0,\"y\":0.0,\"z\":117.626495}', 15, 111, 1, 303),
(15, 'NEWS7', '{}', 'Pariah', '{\"x\":-1096.11853,\"y\":-255.104187,\"z\":37.6777878}', '{\"x\":0.0,\"y\":0.0,\"z\":119.747345}', 16, 111, 1, 304),
(15, 'NEWS8', '{}', 'Lynx', '{\"x\":-1108.5907,\"y\":-277.4016,\"z\":37.676918}', '{\"x\":0.0,\"y\":0.0,\"z\":106.426117}', 11, 111, 1, 305),
(15, 'NEWS9', '{}', 'Lynx', '{\"x\":-1113.99219,\"y\":-278.850769,\"z\":37.6983}', '{\"x\":0.0,\"y\":0.0,\"z\":104.725578}', 11, 111, 1, 306),
(15, 'NEWS10', '{}', 'faggio3', '{\"x\":-1091.74792,\"y\":-265.7352,\"z\":37.7783279}', '{\"x\":0.0,\"y\":0.0,\"z\":198.052734}', 2, 111, 1, 307),
(15, 'NEWS11', '{}', 'faggio3', '{\"x\":-1089.521,\"y\":-265.171,\"z\":37.7503433}', '{\"x\":0.0,\"y\":0.0,\"z\":209.760071}', 2, 111, 1, 308),
(15, 'NEWS12', '{}', 'faggio3', '{\"x\":-1087.28906,\"y\":-264.021362,\"z\":37.75621}', '{\"x\":0.0,\"y\":0.0,\"z\":201.092484}', 2, 111, 1, 309),
(15, 'NEWS13', '{}', 'faggio3', '{\"x\":-1085.18567,\"y\":-263.077362,\"z\":37.75843}', '{\"x\":0.0,\"y\":0.0,\"z\":211.432785}', 2, 111, 1, 310),
(15, 'NEWS14', '{}', 'baller3', '{\"x\":-1090.40613,\"y\":-280.9552,\"z\":37.61473}', '{\"x\":0.0,\"y\":0.0,\"z\":285.424622}', 8, 111, 1, 311),
(15, 'NEWS15', '{}', 'baller3', '{\"x\":-1095.749,\"y\":-282.373322,\"z\":37.6377754}', '{\"x\":0.0,\"y\":0.0,\"z\":285.554932}', 8, 111, 1, 312),
(14, 'ARMY55', '{}', 'Havok', '{\"x\":-2177.97583,\"y\":3164.734,\"z\":32.8101044}', '{\"x\":0.0,\"y\":0.0,\"z\":328.7887}', 8, 99, 99, 313),
(14, 'ARMY56', '{}', 'Havok', '{\"x\":-2192.68384,\"y\":3174.35645,\"z\":32.8100967}', '{\"x\":0.0,\"y\":0.0,\"z\":327.5946}', 8, 99, 99, 314),
(14, 'ARMY57', '{}', 'Frogger', '{\"x\":-1992.64758,\"y\":3058.09,\"z\":32.8102875}', '{\"x\":0.0,\"y\":0.0,\"z\":325.2859}', 7, 99, 99, 315),
(14, 'ARMY58', '{}', 'Frogger', '{\"x\":-1927.6853,\"y\":3020.75269,\"z\":32.8102951}', '{\"x\":0.0,\"y\":0.0,\"z\":326.0328}', 7, 99, 99, 316),
(9, 'FIBFLY2', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'frogger2', '{\"x\":149.018234,\"y\":-754.3728,\"z\":262.9944}', '{\"x\":-0.134179369,\"y\":-0.562064469,\"z\":338.463623}', 11, 1, 1, 317),
(17, 'MWS01', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'Terbyte', '{\"x\":2552.25,\"y\":-402.50,\"z\":92.99}', '{\"x\":0.0,\"y\":0.0,\"z\":272.96}', 1, 49, 49, 318),
(17, 'MWS02', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'Kuruma', '{\"x\":2537.17,\"y\":-378.07,\"z\":92.99}', '{\"x\":0.0,\"y\":0.0,\"z\":165.67}', 1, 49, 49, 319),
(17, 'MWS03', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'Kuruma', '{\"x\":2540.85,\"y\":-378.07,\"z\":92.99}', '{\"x\":0.0,\"y\":0.0,\"z\":165.67}', 1, 49, 49, 320),
(17, 'MWS05', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'Kuruma', '{\"x\":2544.50,\"y\":-378.07,\"z\":92.99}', '{\"x\":0.0,\"y\":0.0,\"z\":165.67}', 1, 49, 49, 321),
(17, 'MWS04', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'Kuruma', '{\"x\":2548.09,\"y\":-378.07,\"z\":92.99}', '{\"x\":0.0,\"y\":0.0,\"z\":165.67}', 1, 49, 49, 322),
(17, 'MWS16', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'Frogger', '{\"x\":2511.32,\"y\":-341.89,\"z\":118.19}', '{\"x\":0.0,\"y\":0.0,\"z\":57.90}', 1, 49, 49, 323),
(17, 'MWS15', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'Cog552', '{\"x\":2521.93,\"y\":-383.35,\"z\":92.99}', '{\"x\":0.0,\"y\":0.0,\"z\":178.66}', 1, 49, 49, 324),
(17, 'MWS14', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'Brawler', '{\"x\":2530.73,\"y\":-402.93,\"z\":92.99}', '{\"x\":0.0,\"y\":0.0,\"z\":224.53}', 1, 49, 49, 325),
(17, 'MWS13', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'Brawler', '{\"x\":2525.23,\"y\":-397.35,\"z\":92.99}', '{\"x\":0.0,\"y\":0.0,\"z\":224.53}', 1, 49, 49, 326),
(17, 'MWS12', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'Mesa3', '{\"x\":2534.57,\"y\":-361.86,\"z\":92.99}', '{\"x\":0.0,\"y\":0.0,\"z\":311.62}', 1, 49, 49, 327),
(17, 'MWS11', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'Mesa3', '{\"x\":2529.30,\"y\":-366.93,\"z\":92.99}', '{\"x\":0.0,\"y\":0.0,\"z\":311.62}', 1, 49, 49, 328),
(17, 'MWS10', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'Mesa3', '{\"x\":2523.79,\"y\":-372.35,\"z\":92.99}', '{\"x\":0.0,\"y\":0.0,\"z\":311.62}', 1, 49, 49, 329),
(17, 'MWS09', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'Baller5', '{\"x\":2537.26,\"y\":-390.81,\"z\":92.99}', '{\"x\":0.0,\"y\":0.0,\"z\":12.06}', 1, 49, 49, 330),
(17, 'MWS08', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'Baller5', '{\"x\":2541.12,\"y\":-390.81,\"z\":92.99}', '{\"x\":0.0,\"y\":0.0,\"z\":12.06}', 1, 49, 49, 331),
(17, 'MWS07', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'Rumpo3', '{\"x\":2544.66,\"y\":-390.81,\"z\":92.99}', '{\"x\":0.0,\"y\":0.0,\"z\":12.06}', 1, 49, 49, 332),
(17, 'MWS06', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'Rumpo3', '{\"x\":2548.34,\"y\":-390.81,\"z\":92.99}', '{\"x\":0.0,\"y\":0.0,\"z\":12.06}', 1, 49, 49, 333),
(17, 'MWS17', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'Frogger', '{\"x\":2511.49,\"y\":-426.46,\"z\":118.19}', '{\"x\":0.0,\"y\":0.0,\"z\":42.31}', 1, 49, 49, 334),
(14, 'ARMY59', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'lazer', '{\"x\":3068.34,\"y\":-4615.58,\"z\":15.26}', '{\"x\":0.0,\"y\":0.0,\"z\":106.27}', 12, 99, 1, 335),
(14, 'ARMY60', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'lazer', '{\"x\":3108.36,\"y\":-4761.22,\"z\":15.26}', '{\"x\":0.0,\"y\":0.0,\"z\":106.27}', 12, 99, 1, 336),
(14, 'ARMY61', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'savage', '{\"x\":3048.36,\"y\":-4762.85,\"z\":15.26}', '{\"x\":0.0,\"y\":0.0,\"z\":290.56}', 12, 99, 1, 337),
(14, 'ARMY62', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'cargobob3', '{\"x\":3115.74,\"y\":-4787.83,\"z\":15.26}', '{\"x\":0.0,\"y\":0.0,\"z\":108.24}', 12, 99, 1, 338),
(14, 'ARMY63', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'dinghy', '{\"x\":3096.54,\"y\":-4812.27,\"z\":1.04}', '{\"x\":0.0,\"y\":0.0,\"z\":194.81}', 12, 99, 1, 339),
(14, 'ARMY64', '{\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"Armor\":-1}', 'dinghy', '{\"x\":3086.74,\"y\":-4812.27,\"z\":1.04}', '{\"x\":0.0,\"y\":0.0,\"z\":194.81}', 12, 99, 1, 340);

-- --------------------------------------------------------

--
-- Структура таблицы `furniture`
--

CREATE TABLE `furniture` (
  `uuid` varchar(155) NOT NULL,
  `furniture` text NOT NULL,
  `data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `furniture`
--

INSERT INTO `furniture` (`uuid`, `furniture`, `data`) VALUES
('0', '{\"0\":{\"Name\":\"Оружейный сейф\",\"Model\":\"prop_ld_int_safe_01\",\"ID\":0,\"Position\":{\"x\":0.0,\"y\":0.0,\"z\":0.0},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":0.0},\"IsSet\":false},\"1\":{\"Name\":\"Шкаф с одеждой\",\"Model\":\"prop_rub_cabinet02\",\"ID\":1,\"Position\":{\"x\":0.0,\"y\":0.0,\"z\":0.0},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":0.0},\"IsSet\":false}}', '{\"0\":[],\"1\":[]}'),
('1', '{}', '{}'),
('10', '{}', '{}'),
('100', '{}', '{}'),
('101', '{}', '{}'),
('102', '{}', '{}'),
('103', '{}', '{}'),
('104', '{}', '{}'),
('105', '{}', '{}'),
('106', '{}', '{}'),
('107', '{}', '{}'),
('108', '{}', '{}'),
('109', '{}', '{}'),
('11', '{}', '{}'),
('110', '{}', '{}'),
('111', '{}', '{}'),
('112', '{}', '{}'),
('113', '{}', '{}'),
('114', '{}', '{}'),
('115', '{}', '{}'),
('116', '{}', '{}'),
('117', '{}', '{}'),
('118', '{}', '{}'),
('119', '{}', '{}'),
('12', '{}', '{}'),
('120', '{}', '{}'),
('121', '{}', '{}'),
('122', '{}', '{}'),
('123', '{}', '{}'),
('124', '{}', '{}'),
('125', '{}', '{}'),
('126', '{}', '{}'),
('127', '{}', '{}'),
('128', '{}', '{}'),
('129', '{}', '{}'),
('13', '{}', '{}'),
('130', '{}', '{}'),
('131', '{}', '{}'),
('132', '{}', '{}'),
('133', '{}', '{}'),
('134', '{}', '{}'),
('135', '{}', '{}'),
('136', '{}', '{}'),
('137', '{}', '{}'),
('138', '{}', '{}'),
('139', '{}', '{}'),
('14', '{}', '{}'),
('140', '{}', '{}'),
('141', '{}', '{}'),
('142', '{}', '{}'),
('143', '{}', '{}'),
('144', '{}', '{}'),
('145', '{}', '{}'),
('146', '{}', '{}'),
('147', '{}', '{}'),
('148', '{}', '{}'),
('149', '{}', '{}'),
('15', '{}', '{}'),
('150', '{}', '{}'),
('151', '{}', '{}'),
('152', '{}', '{}'),
('153', '{}', '{}'),
('154', '{}', '{}'),
('155', '{}', '{}'),
('156', '{}', '{}'),
('157', '{}', '{}'),
('158', '{}', '{}'),
('159', '{}', '{}'),
('16', '{}', '{}'),
('160', '{}', '{}'),
('161', '{}', '{}'),
('162', '{}', '{}'),
('163', '{}', '{}'),
('164', '{}', '{}'),
('165', '{}', '{}'),
('166', '{}', '{}'),
('167', '{}', '{}'),
('168', '{}', '{}'),
('169', '{}', '{}'),
('17', '{}', '{}'),
('170', '{}', '{}'),
('171', '{}', '{}'),
('172', '{}', '{}'),
('173', '{}', '{}'),
('174', '{}', '{}'),
('175', '{}', '{}'),
('176', '{}', '{}'),
('177', '{}', '{}'),
('178', '{}', '{}'),
('179', '{}', '{}'),
('18', '{}', '{}'),
('180', '{}', '{}'),
('181', '{}', '{}'),
('182', '{}', '{}'),
('183', '{}', '{}'),
('184', '{}', '{}'),
('185', '{}', '{}'),
('186', '{}', '{}'),
('187', '{}', '{}'),
('188', '{}', '{}'),
('189', '{}', '{}'),
('19', '{}', '{}'),
('190', '{}', '{}'),
('191', '{}', '{}'),
('192', '{}', '{}'),
('193', '{}', '{}'),
('194', '{}', '{}'),
('195', '{}', '{}'),
('196', '{}', '{}'),
('197', '{}', '{}'),
('198', '{}', '{}'),
('199', '{}', '{}'),
('2', '{}', '{}'),
('20', '{}', '{}'),
('200', '{}', '{}'),
('201', '{}', '{}'),
('202', '{}', '{}'),
('203', '{}', '{}'),
('204', '{}', '{}'),
('205', '{}', '{}'),
('206', '{}', '{}'),
('207', '{}', '{}'),
('208', '{}', '{}'),
('209', '{}', '{}'),
('21', '{}', '{}'),
('210', '{}', '{}'),
('211', '{}', '{}'),
('212', '{}', '{}'),
('213', '{}', '{}'),
('214', '{}', '{}'),
('215', '{}', '{}'),
('216', '{}', '{}'),
('217', '{}', '{}'),
('218', '{}', '{}'),
('219', '{}', '{}'),
('22', '{}', '{}'),
('220', '{}', '{}'),
('221', '{}', '{}'),
('222', '{}', '{}'),
('223', '{}', '{}'),
('224', '{}', '{}'),
('225', '{}', '{}'),
('226', '{}', '{}'),
('227', '{}', '{}'),
('228', '{}', '{}'),
('229', '{}', '{}'),
('23', '{}', '{}'),
('230', '{}', '{}'),
('231', '{}', '{}'),
('232', '{}', '{}'),
('233', '{}', '{}'),
('234', '{}', '{}'),
('235', '{}', '{}'),
('236', '{}', '{}'),
('237', '{}', '{}'),
('238', '{}', '{}'),
('239', '{}', '{}'),
('24', '{}', '{}'),
('240', '{}', '{}'),
('241', '{}', '{}'),
('242', '{}', '{}'),
('243', '{}', '{}'),
('244', '{}', '{}'),
('245', '{}', '{}'),
('246', '{}', '{}'),
('247', '{}', '{}'),
('248', '{}', '{}'),
('249', '{}', '{}'),
('25', '{}', '{}'),
('250', '{}', '{}'),
('251', '{}', '{}'),
('252', '{}', '{}'),
('253', '{}', '{}'),
('254', '{}', '{}'),
('255', '{}', '{}'),
('256', '{}', '{}'),
('257', '{}', '{}'),
('258', '{}', '{}'),
('259', '{}', '{}'),
('26', '{}', '{}'),
('260', '{}', '{}'),
('261', '{}', '{}'),
('262', '{}', '{}'),
('263', '{}', '{}'),
('264', '{}', '{}'),
('265', '{}', '{}'),
('266', '{}', '{}'),
('267', '{}', '{}'),
('268', '{}', '{}'),
('269', '{}', '{}'),
('27', '{}', '{}'),
('270', '{}', '{}'),
('271', '{}', '{}'),
('272', '{}', '{}'),
('273', '{}', '{}'),
('274', '{}', '{}'),
('275', '{}', '{}'),
('276', '{}', '{}'),
('277', '{}', '{}'),
('278', '{}', '{}'),
('279', '{}', '{}'),
('28', '{}', '{}'),
('280', '{}', '{}'),
('281', '{}', '{}'),
('282', '{}', '{}'),
('283', '{}', '{}'),
('284', '{}', '{}'),
('285', '{}', '{}'),
('286', '{}', '{}'),
('287', '{}', '{}'),
('288', '{}', '{}'),
('289', '{}', '{}'),
('29', '{}', '{}'),
('290', '{}', '{}'),
('291', '{}', '{}'),
('292', '{}', '{}'),
('293', '{}', '{}'),
('294', '{}', '{}'),
('295', '{}', '{}'),
('296', '{}', '{}'),
('297', '{}', '{}'),
('298', '{}', '{}'),
('299', '{}', '{}'),
('3', '{}', '{}'),
('30', '{}', '{}'),
('300', '{}', '{}'),
('301', '{}', '{}'),
('302', '{}', '{}'),
('303', '{}', '{}'),
('304', '{}', '{}'),
('305', '{}', '{}'),
('306', '{}', '{}'),
('307', '{}', '{}'),
('308', '{}', '{}'),
('309', '{}', '{}'),
('31', '{}', '{}'),
('310', '{}', '{}'),
('311', '{}', '{}'),
('312', '{}', '{}'),
('313', '{}', '{}'),
('314', '{}', '{}'),
('315', '{}', '{}'),
('316', '{}', '{}'),
('317', '{}', '{}'),
('318', '{}', '{}'),
('319', '{}', '{}'),
('32', '{}', '{}'),
('320', '{}', '{}'),
('321', '{}', '{}'),
('322', '{}', '{}'),
('323', '{}', '{}'),
('324', '{}', '{}'),
('325', '{}', '{}'),
('326', '{}', '{}'),
('327', '{}', '{}'),
('328', '{}', '{}'),
('329', '{}', '{}'),
('33', '{}', '{}'),
('330', '{}', '{}'),
('331', '{}', '{}'),
('332', '{}', '{}'),
('333', '{}', '{}'),
('334', '{}', '{}'),
('335', '{}', '{}'),
('336', '{}', '{}'),
('337', '{}', '{}'),
('338', '{}', '{}'),
('339', '{}', '{}'),
('34', '{}', '{}'),
('340', '{}', '{}'),
('341', '{}', '{}'),
('342', '{}', '{}'),
('343', '{}', '{}'),
('344', '{}', '{}'),
('345', '{}', '{}'),
('346', '{}', '{}'),
('347', '{}', '{}'),
('348', '{}', '{}'),
('349', '{}', '{}'),
('35', '{}', '{}'),
('350', '{}', '{}'),
('351', '{}', '{}'),
('352', '{}', '{}'),
('353', '{}', '{}'),
('355', '{}', '{}'),
('356', '{}', '{}'),
('357', '{}', '{}'),
('358', '{}', '{}'),
('359', '{}', '{}'),
('36', '{}', '{}'),
('360', '{}', '{}'),
('361', '{}', '{}'),
('362', '{}', '{}'),
('363', '{}', '{}'),
('364', '{}', '{}'),
('365', '{}', '{}'),
('366', '{}', '{}'),
('367', '{}', '{}'),
('368', '{}', '{}'),
('369', '{}', '{}'),
('37', '{}', '{}'),
('370', '{}', '{}'),
('371', '{}', '{}'),
('372', '{}', '{}'),
('373', '{}', '{}'),
('374', '{}', '{}'),
('375', '{}', '{}'),
('376', '{}', '{}'),
('377', '{}', '{}'),
('378', '{}', '{}'),
('379', '{}', '{}'),
('38', '{}', '{}'),
('380', '{}', '{}'),
('381', '{}', '{}'),
('382', '{}', '{}'),
('383', '{}', '{}'),
('384', '{}', '{}'),
('385', '{}', '{}'),
('386', '{}', '{}'),
('387', '{}', '{}'),
('388', '{}', '{}'),
('389', '{}', '{}'),
('39', '{}', '{}'),
('390', '{}', '{}'),
('391', '{}', '{}'),
('392', '{}', '{}'),
('393', '{}', '{}'),
('394', '{}', '{}'),
('395', '{}', '{}'),
('396', '{}', '{}'),
('397', '{}', '{}'),
('398', '{}', '{}'),
('399', '{}', '{}'),
('4', '{}', '{}'),
('40', '{}', '{}'),
('400', '{}', '{}'),
('401', '{}', '{}'),
('402', '{}', '{}'),
('403', '{}', '{}'),
('404', '{}', '{}'),
('405', '{}', '{}'),
('406', '{}', '{}'),
('407', '{}', '{}'),
('408', '{}', '{}'),
('409', '{}', '{}'),
('41', '{}', '{}'),
('410', '{}', '{}'),
('411', '{}', '{}'),
('412', '{}', '{}'),
('413', '{}', '{}'),
('414', '{}', '{}'),
('415', '{}', '{}'),
('416', '{}', '{}'),
('417', '{}', '{}'),
('418', '{}', '{}'),
('419', '{}', '{}'),
('42', '{}', '{}'),
('420', '{}', '{}'),
('421', '{}', '{}'),
('422', '{}', '{}'),
('423', '{}', '{}'),
('424', '{}', '{}'),
('425', '{}', '{}'),
('426', '{}', '{}'),
('427', '{}', '{}'),
('428', '{}', '{}'),
('429', '{}', '{}'),
('43', '{}', '{}'),
('430', '{}', '{}'),
('431', '{}', '{}'),
('432', '{}', '{}'),
('433', '{}', '{}'),
('434', '{}', '{}'),
('435', '{}', '{}'),
('436', '{}', '{}'),
('437', '{}', '{}'),
('438', '{}', '{}'),
('439', '{}', '{}'),
('44', '{}', '{}'),
('440', '{}', '{}'),
('441', '{}', '{}'),
('442', '{}', '{}'),
('443', '{}', '{}'),
('444', '{}', '{}'),
('445', '{}', '{}'),
('446', '{}', '{}'),
('447', '{}', '{}'),
('448', '{}', '{}'),
('449', '{}', '{}'),
('45', '{}', '{}'),
('450', '{}', '{}'),
('451', '{}', '{}'),
('452', '{}', '{}'),
('453', '{}', '{}'),
('454', '{}', '{}'),
('455', '{}', '{}'),
('456', '{}', '{}'),
('457', '{}', '{}'),
('458', '{}', '{}'),
('459', '{}', '{}'),
('46', '{}', '{}'),
('460', '{}', '{}'),
('461', '{}', '{}'),
('462', '{}', '{}'),
('463', '{}', '{}'),
('464', '{}', '{}'),
('465', '{}', '{}'),
('466', '{}', '{}'),
('467', '{}', '{}'),
('468', '{}', '{}'),
('469', '{}', '{}'),
('47', '{}', '{}'),
('470', '{}', '{}'),
('471', '{}', '{}'),
('472', '{}', '{}'),
('473', '{}', '{}'),
('474', '{}', '{}'),
('475', '{}', '{}'),
('476', '{}', '{}'),
('477', '{}', '{}'),
('478', '{}', '{}'),
('479', '{}', '{}'),
('48', '{}', '{}'),
('480', '{}', '{}'),
('481', '{}', '{}'),
('482', '{}', '{}'),
('483', '{}', '{}'),
('484', '{}', '{}'),
('485', '{}', '{}'),
('486', '{}', '{}'),
('487', '{}', '{}'),
('488', '{}', '{}'),
('489', '{}', '{}'),
('49', '{}', '{}'),
('490', '{}', '{}'),
('491', '{}', '{}'),
('492', '{}', '{}'),
('493', '{}', '{}'),
('494', '{}', '{}'),
('495', '{}', '{}'),
('496', '{}', '{}'),
('497', '{}', '{}'),
('498', '{}', '{}'),
('499', '{}', '{}'),
('5', '{}', '{}'),
('50', '{}', '{}'),
('500', '{}', '{}'),
('501', '{}', '{}'),
('502', '{}', '{}'),
('503', '{}', '{}'),
('504', '{}', '{}'),
('505', '{}', '{}'),
('506', '{}', '{}'),
('507', '{}', '{}'),
('508', '{}', '{}'),
('509', '{}', '{}'),
('51', '{}', '{}'),
('510', '{}', '{}'),
('511', '{}', '{}'),
('512', '{}', '{}'),
('513', '{}', '{}'),
('514', '{}', '{}'),
('515', '{}', '{}'),
('516', '{}', '{}'),
('517', '{}', '{}'),
('518', '{}', '{}'),
('519', '{}', '{}'),
('52', '{}', '{}'),
('520', '{}', '{}'),
('521', '{}', '{}'),
('522', '{}', '{}'),
('523', '{}', '{}'),
('524', '{}', '{}'),
('525', '{}', '{}'),
('526', '{}', '{}'),
('527', '{}', '{}'),
('528', '{}', '{}'),
('529', '{}', '{}'),
('53', '{}', '{}'),
('530', '{}', '{}'),
('531', '{}', '{}'),
('532', '{}', '{}'),
('533', '{}', '{}'),
('534', '{}', '{}'),
('535', '{}', '{}'),
('536', '{}', '{}'),
('537', '{}', '{}'),
('538', '{}', '{}'),
('539', '{}', '{}'),
('54', '{}', '{}'),
('540', '{}', '{}'),
('541', '{}', '{}'),
('542', '{}', '{}'),
('543', '{}', '{}'),
('544', '{}', '{}'),
('545', '{}', '{}'),
('546', '{}', '{}'),
('547', '{}', '{}'),
('548', '{}', '{}'),
('549', '{}', '{}'),
('55', '{}', '{}'),
('550', '{}', '{}'),
('551', '{}', '{}'),
('552', '{}', '{}'),
('553', '{}', '{}'),
('554', '{}', '{}'),
('555', '{}', '{}'),
('556', '{}', '{}'),
('557', '{}', '{}'),
('558', '{}', '{}'),
('559', '{}', '{}'),
('56', '{}', '{}'),
('560', '{}', '{}'),
('561', '{}', '{}'),
('562', '{}', '{}'),
('563', '{}', '{}'),
('564', '{}', '{}'),
('565', '{}', '{}'),
('566', '{}', '{}'),
('567', '{}', '{}'),
('568', '{}', '{}'),
('569', '{}', '{}'),
('57', '{}', '{}'),
('570', '{}', '{}'),
('571', '{}', '{}'),
('572', '{}', '{}'),
('573', '{}', '{}'),
('574', '{}', '{}'),
('575', '{}', '{}'),
('576', '{}', '{}'),
('577', '{}', '{}'),
('578', '{}', '{}'),
('579', '{}', '{}'),
('58', '{}', '{}'),
('580', '{}', '{}'),
('581', '{}', '{}'),
('582', '{}', '{}'),
('583', '{}', '{}'),
('584', '{}', '{}'),
('585', '{}', '{}'),
('586', '{}', '{}'),
('587', '{}', '{}'),
('588', '{}', '{}'),
('589', '{}', '{}'),
('59', '{}', '{}'),
('590', '{}', '{}'),
('591', '{}', '{}'),
('592', '{}', '{}'),
('593', '{}', '{}'),
('594', '{}', '{}'),
('595', '{}', '{}'),
('596', '{}', '{}'),
('597', '{}', '{}'),
('598', '{}', '{}'),
('599', '{}', '{}'),
('6', '{}', '{}'),
('60', '{}', '{}'),
('600', '{}', '{}'),
('601', '{}', '{}'),
('602', '{}', '{}'),
('603', '{}', '{}'),
('604', '{}', '{}'),
('605', '{}', '{}'),
('606', '{}', '{}'),
('607', '{}', '{}'),
('608', '{}', '{}'),
('609', '{}', '{}'),
('61', '{}', '{}'),
('610', '{}', '{}'),
('611', '{}', '{}'),
('612', '{}', '{}'),
('613', '{}', '{}'),
('614', '{}', '{}'),
('615', '{}', '{}'),
('616', '{}', '{}'),
('617', '{}', '{}'),
('618', '{}', '{}'),
('619', '{}', '{}'),
('62', '{}', '{}'),
('620', '{}', '{}'),
('621', '{}', '{}'),
('622', '{}', '{}'),
('623', '{}', '{}'),
('624', '{}', '{}'),
('625', '{}', '{}'),
('626', '{}', '{}'),
('627', '{}', '{}'),
('628', '{}', '{}'),
('629', '{}', '{}'),
('63', '{}', '{}'),
('630', '{}', '{}'),
('631', '{}', '{}'),
('632', '{}', '{}'),
('633', '{}', '{}'),
('634', '{}', '{}'),
('635', '{}', '{}'),
('636', '{}', '{}'),
('637', '{}', '{}'),
('638', '{}', '{}'),
('639', '{}', '{}'),
('64', '{}', '{}'),
('640', '{}', '{}'),
('641', '{}', '{}'),
('642', '{}', '{}'),
('643', '{}', '{}'),
('644', '{}', '{}'),
('645', '{}', '{}'),
('646', '{}', '{}'),
('647', '{}', '{}'),
('648', '{}', '{}'),
('649', '{}', '{}'),
('65', '{}', '{}'),
('650', '{}', '{}'),
('651', '{}', '{}'),
('652', '{}', '{}'),
('653', '{}', '{}'),
('654', '{}', '{}'),
('655', '{}', '{}'),
('656', '{}', '{}'),
('657', '{}', '{}'),
('658', '{}', '{}'),
('659', '{}', '{}'),
('66', '{}', '{}'),
('660', '{}', '{}'),
('661', '{}', '{}'),
('662', '{}', '{}'),
('663', '{}', '{}'),
('664', '{}', '{}'),
('665', '{}', '{}'),
('666', '{}', '{}'),
('667', '{}', '{}'),
('668', '{}', '{}'),
('669', '{}', '{}'),
('67', '{}', '{}'),
('670', '{}', '{}'),
('671', '{}', '{}'),
('672', '{}', '{}'),
('673', '{}', '{}'),
('674', '{}', '{}'),
('675', '{}', '{}'),
('676', '{}', '{}'),
('677', '{}', '{}'),
('678', '{}', '{}'),
('679', '{}', '{}'),
('68', '{}', '{}'),
('680', '{}', '{}'),
('681', '{}', '{}'),
('682', '{}', '{}'),
('683', '{}', '{}'),
('684', '{}', '{}'),
('685', '{}', '{}'),
('686', '{}', '{}'),
('687', '{}', '{}'),
('688', '{}', '{}'),
('689', '{}', '{}'),
('69', '{}', '{}'),
('690', '{}', '{}'),
('691', '{}', '{}'),
('692', '{}', '{}'),
('693', '{}', '{}'),
('694', '{}', '{}'),
('695', '{}', '{}'),
('696', '{}', '{}'),
('697', '{}', '{}'),
('698', '{}', '{}'),
('699', '{}', '{}'),
('7', '{}', '{}'),
('70', '{}', '{}'),
('700', '{}', '{}'),
('701', '{}', '{}'),
('702', '{}', '{}'),
('703', '{}', '{}'),
('704', '{}', '{}'),
('705', '{}', '{}'),
('706', '{}', '{}'),
('707', '{}', '{}'),
('708', '{}', '{}'),
('709', '{}', '{}'),
('71', '{}', '{}'),
('710', '{}', '{}'),
('711', '{}', '{}'),
('712', '{}', '{}'),
('713', '{}', '{}'),
('714', '{}', '{}'),
('715', '{}', '{}'),
('716', '{}', '{}'),
('717', '{}', '{}'),
('718', '{}', '{}'),
('719', '{}', '{}'),
('72', '{}', '{}'),
('720', '{}', '{}'),
('73', '{}', '{}'),
('74', '{}', '{}'),
('75', '{}', '{}'),
('76', '{}', '{}'),
('77', '{}', '{}'),
('78', '{}', '{}'),
('79', '{}', '{}'),
('8', '{}', '{}'),
('80', '{}', '{}'),
('81', '{}', '{}'),
('82', '{}', '{}'),
('83', '{}', '{}'),
('84', '{}', '{}'),
('85', '{}', '{}'),
('86', '{}', '{}'),
('87', '{}', '{}'),
('88', '{}', '{}'),
('89', '{}', '{}'),
('9', '{}', '{}'),
('90', '{}', '{}'),
('91', '{}', '{}'),
('92', '{}', '{}'),
('93', '{}', '{}'),
('94', '{}', '{}'),
('95', '{}', '{}'),
('96', '{}', '{}'),
('97', '{}', '{}'),
('98', '{}', '{}'),
('99', '{}', '{}');

-- --------------------------------------------------------

--
-- Структура таблицы `gangspoints`
--

CREATE TABLE `gangspoints` (
  `id` int(155) NOT NULL,
  `gangid` int(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gangspoints`
--

INSERT INTO `gangspoints` (`id`, `gangid`) VALUES
(0, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 3),
(11, 3),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 3),
(19, 3),
(20, 3),
(21, 1),
(22, 1),
(23, 2),
(24, 2),
(25, 2),
(26, 3),
(27, 3),
(28, 3),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 3),
(34, 3),
(35, 3),
(36, 2),
(37, 2),
(38, 2),
(39, 3),
(40, 3),
(41, 3),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 5),
(49, 5),
(50, 5),
(51, 5),
(52, 5),
(53, 5),
(54, 5),
(55, 5),
(56, 5),
(57, 5),
(58, 5),
(59, 5),
(60, 5),
(61, 5),
(62, 5),
(63, 5),
(64, 5),
(65, 5),
(66, 5),
(67, 5),
(68, 5),
(69, 5),
(70, 5),
(71, 5),
(72, 5),
(73, 5),
(74, 5),
(75, 4),
(76, 4),
(77, 5),
(78, 5),
(79, 5),
(80, 4),
(81, 4),
(82, 4),
(83, 5),
(84, 5),
(85, 4),
(86, 4),
(87, 4),
(88, 4),
(89, 4),
(90, 3),
(91, 3),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 3),
(97, 1),
(98, 3),
(99, 3),
(100, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `garages`
--

CREATE TABLE `garages` (
  `id` int(155) NOT NULL,
  `type` int(155) NOT NULL,
  `position` text NOT NULL,
  `rotation` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `garages`
--

INSERT INTO `garages` (`id`, `type`, `position`, `rotation`) VALUES
(1, 3, '{\"x\":-470.00226,\"y\":540.975,\"z\":120.42935}', '{\"x\":-12.982107,\"y\":-1.2040682,\"z\":-5.7158275}'),
(2, 2, '{\"x\":-1333.4738,\"y\":-1163.7335,\"z\":3.8789556}', '{\"x\":-0.8359972,\"y\":0.6818716,\"z\":91.51236}'),
(3, 5, '{\"x\":-1939.5293,\"y\":362.07626,\"z\":92.90927}', '{\"x\":-3.525789,\"y\":3.3383486,\"z\":-178.24055}');

-- --------------------------------------------------------

--
-- Структура таблицы `houses`
--

CREATE TABLE `houses` (
  `id` int(155) NOT NULL,
  `owner` text NOT NULL,
  `type` varchar(11) NOT NULL,
  `position` text NOT NULL,
  `price` text NOT NULL,
  `locked` tinyint(155) NOT NULL,
  `garage` text NOT NULL,
  `bank` text NOT NULL,
  `roommates` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `houses`
--

INSERT INTO `houses` (`id`, `owner`, `type`, `position`, `price`, `locked`, `garage`, `bank`, `roommates`) VALUES
(0, 'Lil_Pumpers', '4', '{\"x\":-459.06177,\"y\":537.54126,\"z\":120.33679}', '250000', 1, '1', '154082', '[]'),
(1, '', '1', '{\"x\":-1350.0253,\"y\":-1161.5399,\"z\":3.3874726}', '250000', 1, '2', '841666', '[]'),
(2, '', '5', '{\"x\":-1931.428,\"y\":362.44345,\"z\":92.66442}', '500000', 1, '3', '513729', '[]');

-- --------------------------------------------------------

--
-- Структура таблицы `inventory`
--

CREATE TABLE `inventory` (
  `items` text NOT NULL,
  `uuid` int(255) NOT NULL,
  `idkey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `inventory`
--

INSERT INTO `inventory` (`items`, `uuid`, `idkey`) VALUES
('[{\"Data\":\"92_0_False\",\"ID\":-11,\"Type\":-11,\"Count\":1,\"IsActive\":true},{\"Data\":\"6_0_False\",\"ID\":-8,\"Type\":-8,\"Count\":1,\"IsActive\":true},{\"Data\":\"5_0_False\",\"ID\":-3,\"Type\":-3,\"Count\":1,\"IsActive\":true},{\"Data\":\"5_0_False\",\"ID\":-14,\"Type\":-14,\"Count\":1,\"IsActive\":true},{\"Data\":\"6_0_False\",\"ID\":-7,\"Type\":-7,\"Count\":1,\"IsActive\":true},{\"Data\":\"27_6_False\",\"ID\":-4,\"Type\":-4,\"Count\":1,\"IsActive\":true},{\"Data\":\"6_0_False\",\"ID\":-6,\"Type\":-6,\"Count\":1,\"IsActive\":true},{\"Data\":null,\"ID\":208,\"Type\":208,\"Count\":20,\"IsActive\":false},{\"Data\":\"201200100\",\"ID\":100,\"Type\":100,\"Count\":1,\"IsActive\":false},{\"Data\":null,\"ID\":200,\"Type\":200,\"Count\":28,\"IsActive\":false},{\"Data\":null,\"ID\":205,\"Type\":205,\"Count\":1,\"IsActive\":false},{\"Data\":null,\"ID\":218,\"Type\":218,\"Count\":1,\"IsActive\":false},{\"Data\":null,\"ID\":212,\"Type\":212,\"Count\":1,\"IsActive\":false},{\"Data\":\"J501H_0\",\"ID\":19,\"Type\":19,\"Count\":1,\"IsActive\":false},{\"Data\":\"I056G_0\",\"ID\":19,\"Type\":19,\"Count\":1,\"IsActive\":false},{\"Data\":\"K645X_0\",\"ID\":19,\"Type\":19,\"Count\":1,\"IsActive\":false}]', 333333, 1),
('[]', 368676, 2),
('[{\"Data\":\"13_12_False\",\"ID\":-6,\"Type\":-6,\"Count\":1,\"IsActive\":false},{\"Data\":\"92_0_False\",\"ID\":-11,\"Type\":-11,\"Count\":1,\"IsActive\":true},{\"Data\":\"0_0_False\",\"ID\":-8,\"Type\":-8,\"Count\":1,\"IsActive\":true},{\"Data\":\"6_0_False\",\"ID\":-7,\"Type\":-7,\"Count\":1,\"IsActive\":true},{\"Data\":\"2_0_False\",\"ID\":-14,\"Type\":-14,\"Count\":1,\"IsActive\":true},{\"Data\":\"5_0_False\",\"ID\":-3,\"Type\":-3,\"Count\":1,\"IsActive\":true},{\"Data\":\"27_6_False\",\"ID\":-4,\"Type\":-4,\"Count\":1,\"IsActive\":true},{\"Data\":\"6_0_False\",\"ID\":-6,\"Type\":-6,\"Count\":1,\"IsActive\":true}]', 996406, 3),
('[{\"Data\":\"26_5_True\",\"ID\":-11,\"Type\":-11,\"Count\":1,\"IsActive\":true},{\"Data\":\"103_2_True\",\"ID\":-4,\"Type\":-4,\"Count\":1,\"IsActive\":true},{\"Data\":\"5_3_True\",\"ID\":-6,\"Type\":-6,\"Count\":1,\"IsActive\":true},{\"Data\":\"O548W_0\",\"ID\":19,\"Type\":19,\"Count\":1,\"IsActive\":false},{\"Data\":\"201300318\",\"ID\":101,\"Type\":101,\"Count\":1,\"IsActive\":false},{\"Data\":null,\"ID\":200,\"Type\":200,\"Count\":76,\"IsActive\":false}]', 3799, 4),
('[{\"Data\":\"26_9_True\",\"ID\":-11,\"Type\":-11,\"Count\":1,\"IsActive\":true},{\"Data\":\"103_4_True\",\"ID\":-4,\"Type\":-4,\"Count\":1,\"IsActive\":true},{\"Data\":\"5_3_True\",\"ID\":-6,\"Type\":-6,\"Count\":1,\"IsActive\":true}]', 676797, 5),
('[{\"Data\":\"26_4_True\",\"ID\":-11,\"Type\":-11,\"Count\":1,\"IsActive\":true},{\"Data\":\"103_5_True\",\"ID\":-4,\"Type\":-4,\"Count\":1,\"IsActive\":true},{\"Data\":\"5_1_True\",\"ID\":-6,\"Type\":-6,\"Count\":1,\"IsActive\":true}]', 492375, 6),
('[{\"Data\":\"0_0_True\",\"ID\":-4,\"Type\":-4,\"Count\":1,\"IsActive\":true},{\"Data\":null,\"ID\":205,\"Type\":205,\"Count\":1,\"IsActive\":false},{\"Data\":null,\"ID\":208,\"Type\":208,\"Count\":4,\"IsActive\":false},{\"Data\":null,\"ID\":218,\"Type\":218,\"Count\":1,\"IsActive\":false}]', 113475, 7);

-- --------------------------------------------------------

--
-- Структура таблицы `main`
--

CREATE TABLE `main` (
  `Fraction` int(11) NOT NULL DEFAULT 0,
  `Rank` double NOT NULL DEFAULT 0,
  `FPosX` double NOT NULL DEFAULT 0,
  `FPosY` double NOT NULL DEFAULT 0,
  `FPosZ` double NOT NULL DEFAULT 0,
  `FPosDim` double NOT NULL DEFAULT 0,
  `TPosX` double NOT NULL DEFAULT 0,
  `TPosY` double NOT NULL DEFAULT 0,
  `TPosZ` double NOT NULL DEFAULT 0,
  `TPosDim` double NOT NULL DEFAULT 0,
  `Revers` int(11) NOT NULL DEFAULT 0,
  `ForVeh` int(11) NOT NULL DEFAULT 0,
  `Interact` int(11) NOT NULL DEFAULT 0,
  `SID` int(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `money`
--

CREATE TABLE `money` (
  `id` varchar(155) NOT NULL,
  `holder` varchar(155) NOT NULL,
  `balance` varchar(155) NOT NULL,
  `type` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `money`
--

INSERT INTO `money` (`id`, `holder`, `balance`, `type`) VALUES
('126597', 'Lil_Pumpers', '0', '1'),
('154082', '', '36', '2'),
('19254', '', '0', '2'),
('217197', 'Elena_Pegas', '0', '1'),
('27376', 'Julia_Aurora', '0', '1'),
('283900', 'Elena_Pegas', '0', '1'),
('304090', '', '0', '2'),
('471423', 'Julia_Aurora', '0', '1'),
('472932', 'Sergey_Hydra', '0', '1'),
('513729', '', '-60', '2'),
('766275', 'John_Shepard', '0', '1'),
('841666', '', '100', '2'),
('905219', 'Fost_Frendy', '0', '1'),
('957832', 'Julia_Cyrus', '0', '1');

INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('239700', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('368581', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('975718', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('804284', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('41002', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('858783', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('895471', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('467400', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('537600', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('964885', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('409350', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('600683', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('505910', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('892650', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('47621', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('173617', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('714210', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('526612', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('392248', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('141134', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('713340', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('862433', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('834908', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('93345', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('344214', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('624506', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('664576', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('579844', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('910669', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('996891', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('328613', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('792270', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('7929', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('193645', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('493466', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('262647', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('335785', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('213493', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('745219', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('401096', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('265811', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('610466', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('604606', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('510748', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('867727', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('800434', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('11610', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('299737', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('468774', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('63989', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('648965', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('128310', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('145634', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('753153', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('842316', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('333778', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('627989', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('484926', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('209512', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('33434', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('913004', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('141732', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('434198', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('165995', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('696957', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('957483', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('182811', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('1290', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('821503', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('92010', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('354814', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('776722', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('532613', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('652494', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('817639', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('284537', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('608389', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('376556', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('606630', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('410448', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('887619', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('106169', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('857063', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('814340', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('335887', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('320320', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('690068', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('927792', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('282122', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('202414', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('769338', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('815214', '3', '', '0');
INSERT INTO `money`(`id`, `type`, `holder`, `balance`) VALUES ('353637', '3', '', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `nicknames`
--

CREATE TABLE `nicknames` (
  `srv` varchar(155) NOT NULL,
  `name` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `othervehicles`
--

CREATE TABLE `othervehicles` (
  `type` varchar(155) NOT NULL,
  `number` text NOT NULL,
  `model` text NOT NULL,
  `position` text NOT NULL,
  `rotation` text NOT NULL,
  `color1` int(155) NOT NULL,
  `color2` int(155) NOT NULL,
  `price` int(155) NOT NULL,
  `idkey` int(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `othervehicles`
--

INSERT INTO `othervehicles` (`type`, `number`, `model`, `position`, `rotation`, `color1`, `color2`, `price`, `idkey`) VALUES
('0', 'RENT1', 'bmwe34', '{\"x\":-521.12384,\"y\":52.846096,\"z\":52.5798721}', '{\"x\":0.0,\"y\":0.0,\"z\":87.19976}', 1, 1, 300, 5),
('0', 'RENT2', 'bmwe34', '{\"x\":-521.589233,\"y\":49.0047836,\"z\":52.57987}', '{\"x\":0.0,\"y\":0.0,\"z\":82.17097}', 1, 1, 300, 6),
('0', 'RENT3', 'bmwe38', '{\"x\":-522.1691,\"y\":45.4501228,\"z\":52.57987}', '{\"x\":0.0,\"y\":0.0,\"z\":83.34381}', 1, 1, 300, 7),
('0', 'RENT4', 'bmwe38', '{\"x\":-520.52655,\"y\":56.01141,\"z\":52.57994}', '{\"x\":0.0,\"y\":0.0,\"z\":82.72127}', 1, 1, 300, 8),
('0', 'RENT5', 'vaz2106', '{\"x\":-520.311157,\"y\":59.73555,\"z\":52.57994}', '{\"x\":0.0,\"y\":0.0,\"z\":85.65968}', 1, 1, 250, 9),
('0', 'RENT6', 'z419', '{\"x\":-520.0662,\"y\":62.9709778,\"z\":52.57994}', '{\"x\":0.0,\"y\":0.0,\"z\":87.6282349}', 1, 1, 450, 10),
('0', 'RENT7', 'vaz2113', '{\"x\":-519.9702,\"y\":66.31444,\"z\":52.5856323}', '{\"x\":0.0,\"y\":0.0,\"z\":60.46362}', 1, 1, 260, 11),
('0', 'RENT8', 'x5e53', '{\"x\":-510.766663,\"y\":51.7032738,\"z\":52.5798721}', '{\"x\":0.0,\"y\":0.0,\"z\":81.76482}', 1, 1, 400, 12),
('0', 'RENT9', '370z', '{\"x\":-510.325653,\"y\":55.2610779,\"z\":52.5798721}', '{\"x\":0.0,\"y\":0.0,\"z\":87.5693359}', 1, 1, 400, 13),
('0', 'RENT10', 'evo10', '{\"x\":-510.009918,\"y\":58.9088745,\"z\":52.57989}', '{\"x\":0.0,\"y\":0.0,\"z\":84.62456}', 1, 1, 300, 14),
('0', 'RENT11', 'evo10', '{\"x\":-509.417358,\"y\":62.3256264,\"z\":52.57989}', '{\"x\":0.0,\"y\":0.0,\"z\":82.241394}', 1, 1, 300, 15),
('0', 'RENT12', 'vaz21099', '{\"x\":-509.6754,\"y\":65.68881,\"z\":52.57989}', '{\"x\":0.0,\"y\":0.0,\"z\":84.56193}', 1, 1, 250, 16),
('0', 'RENT13', 'camry55', '{\"x\":-510.104645,\"y\":48.0617676,\"z\":52.57987}', '{\"x\":0.0,\"y\":0.0,\"z\":83.04841}', 1, 1, 500, 17),
('0', 'RENT14', 'camry55', '{\"x\":-510.5071,\"y\":44.8358459,\"z\":52.57987}', '{\"x\":0.0,\"y\":0.0,\"z\":87.21101}', 1, 1, 500, 18),
('3', 'TAXI1', 'taximer', '{\"x\":908.729431,\"y\":-183.183441,\"z\":74.2098541}', '{\"x\":0.0,\"y\":0.0,\"z\":56.8869324}', 1, 111, 0, 19),
('3', 'TAXI2', 'taximer', '{\"x\":906.750549,\"y\":-186.171463,\"z\":74.0064}', '{\"x\":0.0,\"y\":0.0,\"z\":67.4313354}', 1, 111, 0, 20),
('3', 'TAXI3', 'taximer', '{\"x\":905.3642,\"y\":-189.168777,\"z\":73.79182}', '{\"x\":0.0,\"y\":0.0,\"z\":51.56245}', 1, 111, 0, 21),
('3', 'TAXI4', 'taximer', '{\"x\":903.3636,\"y\":-191.996872,\"z\":73.79078}', '{\"x\":0.0,\"y\":0.0,\"z\":51.19381}', 1, 111, 0, 22),
('3', 'TAXI5', 'taximer', '{\"x\":898.533264,\"y\":-180.150375,\"z\":73.79694}', '{\"x\":0.0,\"y\":0.0,\"z\":235.476181}', 1, 111, 0, 32),
('3', 'TAXI6', 'taximer', '{\"x\":896.7452,\"y\":-183.393021,\"z\":73.74892}', '{\"x\":0.0,\"y\":0.0,\"z\":240.536423}', 1, 111, 0, 33),
('3', 'TAXI7', 'taximer', '{\"x\":917.9934,\"y\":-170.517563,\"z\":74.54337}', '{\"x\":0.0,\"y\":0.0,\"z\":95.39015}', 1, 111, 0, 34),
('3', 'TAXI8', 'taximer', '{\"x\":919.197266,\"y\":-165.999863,\"z\":74.70241}', '{\"x\":0.0,\"y\":0.0,\"z\":97.54752}', 1, 111, 0, 35),
('3', 'TAXI9', 'taximer', '{\"x\":920.677856,\"y\":-163.12561,\"z\":74.8556442}', '{\"x\":0.0,\"y\":0.0,\"z\":89.02103}', 1, 111, 0, 36),
('3', 'TAXI10', 'taximer', '{\"x\":914.6609,\"y\":-157.933823,\"z\":74.9846039}', '{\"x\":0.0,\"y\":0.0,\"z\":190.995865}', 1, 111, 0, 37),
('3', 'TAXI11', 'taximer', '{\"x\":912.4611,\"y\":-161.135,\"z\":74.62062}', '{\"x\":0.0,\"y\":0.0,\"z\":194.091721}', 1, 111, 0, 38),
('3', 'TAXI12', 'taximer', '{\"x\":910.37854,\"y\":-164.991608,\"z\":74.22407}', '{\"x\":0.0,\"y\":0.0,\"z\":193.573059}', 1, 111, 0, 39),
('3', 'TAXI13', 'taxi', '{\"x\":1962.51379,\"y\":3767.24927,\"z\":32.197464}', '{\"x\":0.0,\"y\":0.0,\"z\":206.721954}', 1, 111, 0, 40),
('3', 'TAXI14', 'taxi', '{\"x\":1959.18188,\"y\":3765.22485,\"z\":32.199707}', '{\"x\":0.0,\"y\":0.0,\"z\":204.882263}', 1, 111, 0, 41),
('3', 'TAXI15', 'taxi', '{\"x\":1955.66333,\"y\":3763.31274,\"z\":32.2021332}', '{\"x\":0.0,\"y\":0.0,\"z\":204.496948}', 1, 111, 0, 42),
('3', 'TAXI16', 'taxi', '{\"x\":1952.57446,\"y\":3761.54126,\"z\":32.2042351}', '{\"x\":0.0,\"y\":0.0,\"z\":205.576187}', 1, 111, 0, 43),
('3', 'TAXI17', 'taxi', '{\"x\":1949.33325,\"y\":3759.30518,\"z\":32.20623}', '{\"x\":0.0,\"y\":0.0,\"z\":207.473053}', 1, 111, 0, 44),
('3', 'TAXI18', 'taxi', '{\"x\":1965.63782,\"y\":3769.11377,\"z\":32.19542}', '{\"x\":0.0,\"y\":0.0,\"z\":205.381287}', 1, 111, 0, 45),
('3', 'TAXI19', 'taxi', '{\"x\":1968.80664,\"y\":3770.47168,\"z\":32.19319}', '{\"x\":0.0,\"y\":0.0,\"z\":201.577576}', 1, 111, 0, 46),
('3', 'TAXI20', 'taxi', '{\"x\":1782.7373,\"y\":4585.198,\"z\":37.588562}', '{\"x\":0.0,\"y\":0.0,\"z\":1.44128466}', 1, 111, 0, 47),
('3', 'TAXI21', 'taxi', '{\"x\":1785.97888,\"y\":4585.05029,\"z\":37.5007553}', '{\"x\":0.0,\"y\":0.0,\"z\":1.28620625}', 1, 111, 0, 48),
('3', 'TAXI22', 'taxi', '{\"x\":1789.43262,\"y\":4585.18164,\"z\":37.3980675}', '{\"x\":0.0,\"y\":0.0,\"z\":4.497265}', 1, 111, 0, 49),
('3', 'TAXI23', 'taxi', '{\"x\":1792.92249,\"y\":4585.59863,\"z\":37.26253}', '{\"x\":0.0,\"y\":0.0,\"z\":5.63719225}', 1, 111, 0, 50),
('3', 'TAXI24', 'taxi', '{\"x\":1796.17175,\"y\":4586.11035,\"z\":37.1896744}', '{\"x\":0.0,\"y\":0.0,\"z\":3.20388269}', 1, 111, 0, 51),
('3', 'TAXI25', 'taxi', '{\"x\":1799.44556,\"y\":4586.37451,\"z\":37.11447}', '{\"x\":0.0,\"y\":0.0,\"z\":0.8618738}', 1, 111, 0, 52),
('3', 'TAXI26', 'taxi', '{\"x\":1802.80432,\"y\":4586.721,\"z\":36.9659843}', '{\"x\":0.0,\"y\":0.0,\"z\":2.06149149}', 1, 111, 0, 53),
('4', 'BUS1', 'bus', '{\"x\":432.828644,\"y\":-599.3293,\"z\":28.4998283}', '{\"x\":0.0,\"y\":0.0,\"z\":265.064056}', 1, 111, 0, 54),
('4', 'BUS2', 'bus', '{\"x\":432.472229,\"y\":-602.7609,\"z\":28.49982}', '{\"x\":0.0,\"y\":0.0,\"z\":265.064056}', 1, 111, 0, 55),
('4', 'BUS3', 'bus', '{\"x\":432.229828,\"y\":-606.448242,\"z\":28.4998837}', '{\"x\":0.0,\"y\":0.0,\"z\":265.064056}', 1, 111, 0, 56),
('4', 'BUS4', 'bus', '{\"x\":432.161957,\"y\":-609.690063,\"z\":28.4959755}', '{\"x\":0.0,\"y\":0.0,\"z\":265.064056}', 1, 111, 0, 57),
('4', 'BUS5', 'bus', '{\"x\":431.77655,\"y\":-613.947937,\"z\":28.4937668}', '{\"x\":0.0,\"y\":0.0,\"z\":265.064056}', 1, 111, 0, 58),
('4', 'BUS6', 'bus', '{\"x\":431.079559,\"y\":-618.2692,\"z\":28.4996014}', '{\"x\":0.0,\"y\":0.0,\"z\":265.064056}', 1, 111, 0, 59),
('4', 'BUS7', 'bus', '{\"x\":430.721619,\"y\":-621.5432,\"z\":28.4999924}', '{\"x\":0.0,\"y\":0.0,\"z\":265.064056}', 1, 111, 0, 60),
('7', 'INCAS1', 'stockade', '{\"x\":907.2564,\"y\":-1226.42615,\"z\":25.5029469}', '{\"x\":0.0,\"y\":0.0,\"z\":353.890625}', 111, 111, 0, 61),
('7', 'INCAS2', 'stockade', '{\"x\":911.502747,\"y\":-1226.61365,\"z\":25.5212173}', '{\"x\":0.0,\"y\":0.0,\"z\":0.110426247}', 111, 111, 0, 62),
('7', 'INCAS3', 'stockade', '{\"x\":916.2686,\"y\":-1227.23474,\"z\":25.5413265}', '{\"x\":0.0,\"y\":0.0,\"z\":359.076447}', 111, 111, 0, 63),
('7', 'INCAS4', 'stockade', '{\"x\":920.829956,\"y\":-1227.30151,\"z\":25.56334}', '{\"x\":0.0,\"y\":0.0,\"z\":359.325348}', 111, 111, 0, 64),
('7', 'INCAS5', 'stockade', '{\"x\":925.325562,\"y\":-1227.45789,\"z\":25.5828724}', '{\"x\":0.0,\"y\":0.0,\"z\":0.008356135}', 111, 111, 0, 65),
('7', 'INCAS6', 'stockade', '{\"x\":929.992737,\"y\":-1227.45227,\"z\":25.6125412}', '{\"x\":0.0,\"y\":0.0,\"z\":357.359161}', 111, 111, 0, 66),
('7', 'INCAS7', 'stockade', '{\"x\":934.342651,\"y\":-1227.36377,\"z\":25.63588}', '{\"x\":0.0,\"y\":0.0,\"z\":358.728943}', 111, 111, 0, 67),
('7', 'INCAS9', 'stockade', '{\"x\":938.7172,\"y\":-1227.25745,\"z\":25.6565533}', '{\"x\":0.0,\"y\":0.0,\"z\":0.4929691}', 111, 111, 0, 68),
('7', 'INCAS10', 'stockade', '{\"x\":-1466.60779,\"y\":-503.249,\"z\":32.80682}', '{\"x\":0.0,\"y\":0.0,\"z\":213.807053}', 111, 111, 0, 69),
('7', 'INCAS11', 'stockade', '{\"x\":-1470.348,\"y\":-504.063873,\"z\":32.8069}', '{\"x\":0.0,\"y\":0.0,\"z\":217.26268}', 111, 111, 0, 70),
('7', 'INCAS12', 'stockade', '{\"x\":-1473.412,\"y\":-506.241241,\"z\":32.8069}', '{\"x\":0.0,\"y\":0.0,\"z\":213.90564}', 111, 111, 0, 71),
('7', 'INCAS13', 'stockade', '{\"x\":-1476.748,\"y\":-508.4988,\"z\":32.8069}', '{\"x\":0.0,\"y\":0.0,\"z\":214.787354}', 111, 111, 0, 72),
('7', 'INCAS14', 'stockade', '{\"x\":-1479.74023,\"y\":-510.463318,\"z\":32.8069}', '{\"x\":0.0,\"y\":0.0,\"z\":213.166183}', 111, 111, 0, 73),
('7', 'INCAS15', 'stockade', '{\"x\":-1482.76782,\"y\":-512.4883,\"z\":32.8069}', '{\"x\":0.0,\"y\":0.0,\"z\":213.64299}', 111, 111, 0, 74),
('7', 'INCAS16', 'stockade', '{\"x\":-1485.521,\"y\":-514.6919,\"z\":32.8069}', '{\"x\":0.0,\"y\":0.0,\"z\":212.706772}', 111, 111, 0, 75),
('7', 'INCAS17', 'stockade', '{\"x\":-149.401276,\"y\":6362.06152,\"z\":31.4909134}', '{\"x\":0.0,\"y\":0.0,\"z\":38.99737}', 111, 111, 0, 76),
('7', 'INCAS18', 'stockade', '{\"x\":-152.2036,\"y\":6359.164,\"z\":31.4908562}', '{\"x\":0.0,\"y\":0.0,\"z\":45.3314667}', 111, 111, 0, 77),
('7', 'INCAS19', 'stockade', '{\"x\":-137.644012,\"y\":6347.76465,\"z\":31.4906273}', '{\"x\":0.0,\"y\":0.0,\"z\":222.723038}', 111, 111, 0, 78),
('7', 'INCAS20', 'stockade', '{\"x\":-135.031036,\"y\":6350.10254,\"z\":31.4906235}', '{\"x\":0.0,\"y\":0.0,\"z\":221.547043}', 111, 111, 0, 79),
('7', 'INCAS21', 'stockade', '{\"x\":-132.380783,\"y\":6352.35938,\"z\":31.4906254}', '{\"x\":0.0,\"y\":0.0,\"z\":220.4681}', 111, 111, 0, 80),
('6', 'TRUCK1', 'phantom', '{\"x\":320.7653,\"y\":3405.03442,\"z\":36.747364}', '{\"x\":0.0,\"y\":0.0,\"z\":70.8380661}', 111, 111, 0, 81),
('6', 'TRUCK2', 'phantom', '{\"x\":322.159332,\"y\":3409.14746,\"z\":36.7221527}', '{\"x\":0.0,\"y\":0.0,\"z\":65.3772659}', 111, 111, 0, 82),
('6', 'TRUCK3', 'phantom', '{\"x\":323.0591,\"y\":3413.52881,\"z\":36.6829948}', '{\"x\":0.0,\"y\":0.0,\"z\":63.98915}', 111, 111, 0, 83),
('6', 'TRUCK4', 'phantom', '{\"x\":324.07428,\"y\":3418.2876,\"z\":36.62214}', '{\"x\":0.0,\"y\":0.0,\"z\":63.35774}', 111, 111, 0, 84),
('6', 'TRUCK5', 'phantom', '{\"x\":326.520264,\"y\":3422.34546,\"z\":36.53324}', '{\"x\":0.0,\"y\":0.0,\"z\":59.1481628}', 111, 111, 0, 85),
('6', 'TRUCK6', 'phantom', '{\"x\":-2205.79419,\"y\":4251.19727,\"z\":47.47976}', '{\"x\":0.0,\"y\":0.0,\"z\":214.569458}', 111, 111, 0, 86),
('6', 'TRUCK7', 'phantom', '{\"x\":-2211.072,\"y\":4247.269,\"z\":47.4635353}', '{\"x\":0.0,\"y\":0.0,\"z\":218.630966}', 111, 111, 0, 87),
('6', 'TRUCK8', 'phantom', '{\"x\":-2214.94019,\"y\":4242.046,\"z\":47.41728}', '{\"x\":0.0,\"y\":0.0,\"z\":210.83934}', 111, 111, 0, 88),
('6', 'TRUCK9', 'phantom', '{\"x\":-2219.60767,\"y\":4238.392,\"z\":47.1614876}', '{\"x\":0.0,\"y\":0.0,\"z\":211.267639}', 111, 111, 0, 89),
('6', 'TRUCK10', 'phantom', '{\"x\":-2223.78735,\"y\":4233.35449,\"z\":46.96459}', '{\"x\":0.0,\"y\":0.0,\"z\":214.811615}', 111, 111, 0, 90),
('6', 'TRUCK11', 'phantom', '{\"x\":591.551,\"y\":-3032.086,\"z\":6.069285}', '{\"x\":0.0,\"y\":0.0,\"z\":178.203247}', 111, 111, 0, 91),
('6', 'TRUCK12', 'phantom', '{\"x\":585.045837,\"y\":-3031.85352,\"z\":6.069285}', '{\"x\":0.0,\"y\":0.0,\"z\":176.516251}', 111, 111, 0, 92),
('6', 'TRUCK13', 'phantom', '{\"x\":578.391968,\"y\":-3031.93457,\"z\":6.069287}', '{\"x\":0.0,\"y\":0.0,\"z\":179.8373}', 111, 111, 0, 93),
('6', 'TRUCK14', 'phantom', '{\"x\":571.661438,\"y\":-3032.115,\"z\":6.0692873}', '{\"x\":0.0,\"y\":0.0,\"z\":177.895416}', 111, 111, 0, 94),
('6', 'TRUCK15', 'phantom', '{\"x\":565.0058,\"y\":-3032.18872,\"z\":6.069289}', '{\"x\":0.0,\"y\":0.0,\"z\":180.173279}', 111, 111, 0, 95),
('6', 'TRUCK16', 'phantom', '{\"x\":558.4167,\"y\":-3031.991,\"z\":6.067675}', '{\"x\":0.0,\"y\":0.0,\"z\":180.4587}', 111, 111, 0, 96),
('6', 'TRUCK17', 'phantom', '{\"x\":551.708252,\"y\":-3032.09155,\"z\":6.06916666}', '{\"x\":0.0,\"y\":0.0,\"z\":177.524536}', 111, 111, 0, 97),
('5', 'MOWER1', 'mower', '{\"x\":-1322.22009,\"y\":69.74267,\"z\":53.67442}', '{\"x\":0.0,\"y\":0.0,\"z\":5.004691}', 111, 111, 0, 98),
('5', 'MOWER2', 'mower', '{\"x\":-1322.30847,\"y\":72.83111,\"z\":53.8227272}', '{\"x\":0.0,\"y\":0.0,\"z\":5.154625}', 111, 111, 0, 99),
('5', 'MOWER3', 'mower', '{\"x\":-1322.42822,\"y\":74.8364258,\"z\":53.93651}', '{\"x\":0.0,\"y\":0.0,\"z\":2.755131}', 111, 111, 0, 100),
('5', 'MOWER4', 'mower', '{\"x\":-1322.72473,\"y\":77.82687,\"z\":54.1305771}', '{\"x\":0.0,\"y\":0.0,\"z\":355.199829}', 111, 111, 0, 101),
('5', 'MOWER5', 'mower', '{\"x\":-1322.94885,\"y\":80.32102,\"z\":54.3672829}', '{\"x\":0.0,\"y\":0.0,\"z\":4.539686}', 111, 111, 0, 102),
('5', 'MOWER6', 'mower', '{\"x\":-1328.64746,\"y\":80.0936,\"z\":54.43415}', '{\"x\":0.0,\"y\":0.0,\"z\":188.623108}', 111, 111, 0, 103),
('5', 'MOWER7', 'mower', '{\"x\":-1328.34045,\"y\":77.58774,\"z\":54.2115364}', '{\"x\":0.0,\"y\":0.0,\"z\":177.603134}', 111, 111, 0, 104),
('5', 'MOWER8', 'mower', '{\"x\":-1328.28967,\"y\":75.3847656,\"z\":54.0345345}', '{\"x\":0.0,\"y\":0.0,\"z\":181.548111}', 111, 111, 0, 105),
('5', 'MOWER9', 'mower', '{\"x\":-1328.142,\"y\":72.091774,\"z\":53.83202}', '{\"x\":0.0,\"y\":0.0,\"z\":184.400192}', 111, 111, 0, 106),
('5', 'MOWER10', 'mower', '{\"x\":-1328.10962,\"y\":69.98141,\"z\":53.70651}', '{\"x\":0.0,\"y\":0.0,\"z\":175.070511}', 111, 111, 0, 107),
('0', 'RENT22', 'faggio', '{\"x\":283.97,\"y\":-323.81,\"z\":44.92}', '{\"x\":0.0,\"y\":0.0,\"z\":71.21}', 1, 1, 50, 108),
('0', 'RENT23', 'faggio', '{\"x\":282.42,\"y\":-327.05,\"z\":44.92}', '{\"x\":0.0,\"y\":0.0,\"z\":71.21}', 1, 1, 50, 109),
('0', 'RENT24', 'faggio', '{\"x\":281.17,\"y\":-330.47,\"z\":44.92}', '{\"x\":0.0,\"y\":0.0,\"z\":71.21}', 1, 1, 50, 110),
('0', 'RENT25', 'faggio', '{\"x\":280.06,\"y\":-333.85,\"z\":44.92}', '{\"x\":0.0,\"y\":0.0,\"z\":71.21}', 1, 1, 50, 111),
('0', 'RENT26', 'faggio', '{\"x\":278.92,\"y\":-336.86,\"z\":44.92}', '{\"x\":0.0,\"y\":0.0,\"z\":71.21}', 1, 1, 50, 112),
('0', 'RENT27', 'faggio', '{\"x\":277.78,\"y\":-340.23,\"z\":44.92}', '{\"x\":0.0,\"y\":0.0,\"z\":71.21}', 1, 1, 50, 113),
('0', 'RENT28', 'faggio', '{\"x\":283.19,\"y\":-342.35,\"z\":44.92}', '{\"x\":0.0,\"y\":0.0,\"z\":250.73}', 1, 1, 50, 114),
('0', 'RENT29', 'faggio', '{\"x\":284.26,\"y\":-338.92,\"z\":44.92}', '{\"x\":0.0,\"y\":0.0,\"z\":250.73}', 1, 1, 50, 115),
('0', 'SRENT1', 'suntrap', '{\"x\":1584.26343,\"y\":3930.29468,\"z\":31.8750267}', '{\"x\":0.0,\"y\":0.0,\"z\":78.22144}', 73, 73, 1000, 116),
('0', 'SRENT2', 'suntrap', '{\"x\":1574.0686,\"y\":3935.48218,\"z\":31.86631}', '{\"x\":0.0,\"y\":0.0,\"z\":78.22144}', 73, 73, 1000, 117),
('0', 'SRENT3', 'suntrap', '{\"x\":1561.23865,\"y\":3932.96436,\"z\":32.7743149}', '{\"x\":0.0,\"y\":0.0,\"z\":78.22144}', 73, 73, 1000, 118),
('0', 'SRENT4', 'suntrap', '{\"x\":1588.27185,\"y\":3924.111,\"z\":32.4850731}', '{\"x\":0.0,\"y\":0.0,\"z\":78.22144}', 73, 73, 1000, 119),
('0', 'RENT30', 'faggio', '{\"x\":285.38,\"y\":-335.57,\"z\":44.92}', '{\"x\":0.0,\"y\":0.0,\"z\":250.73}', 1, 1, 50, 120),
('0', 'RENT31', 'faggio', '{\"x\":286.46,\"y\":-332.23,\"z\":44.92}', '{\"x\":0.0,\"y\":0.0,\"z\":250.73}', 1, 1, 50, 121),
('0', 'RENT32', 'faggio', '{\"x\":287.71,\"y\":-328.86,\"z\":44.92}', '{\"x\":0.0,\"y\":0.0,\"z\":250.73}', 1, 1, 50, 122),
('0', 'RENT33', 'faggio', '{\"x\":288.83,\"y\":-325.82,\"z\":44.92}', '{\"x\":0.0,\"y\":0.0,\"z\":250.73}', 1, 1, 50, 123),
('0', 'RENT34', 'Hakuchou', '{\"x\":299.88,\"y\":-329.83,\"z\":44.92}', '{\"x\":0.0,\"y\":0.0,\"z\":71.21}', 2, 2, 200, 124),
('0', 'RENT35', 'Hakuchou', '{\"x\":298.88,\"y\":-333.30,\"z\":44.92}', '{\"x\":0.0,\"y\":0.0,\"z\":71.21}', 2, 2, 200, 125),
('0', 'RENT36', 'Hakuchou', '{\"x\":297.88,\"y\":-336.74,\"z\":44.92}', '{\"x\":0.0,\"y\":0.0,\"z\":71.21}', 2, 2, 200, 126),
('0', 'RENT37', 'Hakuchou', '{\"x\":296.81,\"y\":-340.10,\"z\":44.92}', '{\"x\":0.0,\"y\":0.0,\"z\":71.21}', 2, 2, 200, 127),
('0', 'RENT38', 'Hakuchou', '{\"x\":295.83,\"y\":-343.23,\"z\":44.92}', '{\"x\":0.0,\"y\":0.0,\"z\":71.21}', 2, 2, 200, 128),
('0', 'RENT39', 'Hakuchou', '{\"x\":294.73,\"y\":-346.56,\"z\":44.92}', '{\"x\":0.0,\"y\":0.0,\"z\":71.21}', 2, 2, 200, 129);

-- --------------------------------------------------------

--
-- Структура таблицы `promocodes`
--

CREATE TABLE `promocodes` (
  `name` text NOT NULL,
  `type` int(155) NOT NULL,
  `count` int(155) NOT NULL,
  `owner` int(155) NOT NULL,
  `idkey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `questions`
--

CREATE TABLE `questions` (
  `ID` int(12) UNSIGNED NOT NULL,
  `Author` text NOT NULL,
  `Question` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Respondent` text DEFAULT NULL,
  `Response` text CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Opened` datetime NOT NULL,
  `Closed` datetime DEFAULT NULL,
  `Status` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `rodings`
--

CREATE TABLE `rodings` (
  `id` int(11) NOT NULL,
  `radius` varchar(255) DEFAULT NULL,
  `pos` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `rodings`
--

INSERT INTO `rodings` (`id`, `radius`, `pos`) VALUES
(0, '50', '{\"x\":-1858.76306,\"y\":-1243.2915,\"z\":7.4957943}'),
(1, '50', '{\"x\":-2018.68884,\"y\":-1032.878,\"z\":1.32705271}'),
(2, '200', '{\"x\":-2104.93164,\"y\":-1005.13721,\"z\":7.85218334}'),
(3, '500', '{\"x\":2558.60278,\"y\":6155.892,\"z\":160.88092}'),
(4, '900', '{\"x\":713.062,\"y\":4093.02173,\"z\":33.60789}'),
(5, '300', '{\"x\":-1612.84766,\"y\":5262.49561,\"z\":2.85410357}');

-- --------------------------------------------------------

--
-- Структура таблицы `safes`
--

CREATE TABLE `safes` (
  `minamount` int(155) NOT NULL,
  `maxamount` int(155) NOT NULL,
  `pos` text NOT NULL,
  `address` text NOT NULL,
  `rotation` int(11) NOT NULL,
  `idkey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `vehicles`
--

CREATE TABLE `vehicles` (
  `holder` varchar(155) NOT NULL,
  `model` varchar(155) NOT NULL,
  `health` int(155) NOT NULL,
  `fuel` int(155) NOT NULL,
  `components` text NOT NULL,
  `items` text NOT NULL,
  `position` varchar(255) NOT NULL,
  `rotation` varchar(255) NOT NULL,
  `keynum` int(155) NOT NULL,
  `dirt` float NOT NULL,
  `price` int(155) NOT NULL,
  `idkey` int(155) NOT NULL,
  `number` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `vehicles`
--

INSERT INTO `vehicles` (`holder`, `model`, `health`, `fuel`, `components`, `items`, `position`, `rotation`, `keynum`, `dirt`, `price`, `idkey`, `number`) VALUES
('Julia_Aurora', 'Osiris', 1000, 100, '{\"PrimColor\":{\"Red\":225,\"Green\":225,\"Blue\":225,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":225,\"Green\":225,\"Blue\":225,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":3,\"Turbo\":0,\"Horn\":-1,\"Transmission\":2,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"Armor\":-1}', '[]', '', '', 0, 0, 0, 1, 'D741V'),
('Julia_Cyrus', 'Osiris', 1000, 150, '{\"PrimColor\":{\"Red\":225,\"Green\":225,\"Blue\":225,\"Alpha\":255},\"SecColor\":{\"Red\":225,\"Green\":225,\"Blue\":225,\"Alpha\":255},\"NeonColor\":{\"Red\":225,\"Green\":225,\"Blue\":225,\"Alpha\":255},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"Armor\":-1}', '[]', '{\"x\":-1939.7003,\"y\":361.7826,\"z\":93.132225}', '{\"x\":3.6795223,\"y\":-2.7478735,\"z\":-3.5711794}', 0, 0, 0, 13, 'K645X'),
('John_Shepard', 'Osiris', 1000, 100, '{\"PrimColor\":{\"Red\":225,\"Green\":225,\"Blue\":225,\"Alpha\":255},\"SecColor\":{\"Red\":225,\"Green\":225,\"Blue\":225,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":-1,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"Armor\":-1}', '[]', '', '', 0, 0, 0, 14, 'O548W'),
('Lil_Pumpers', 'Ninef', 1000, 100, '{\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":147,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PrimModColor\":-1,\"SecModColor\":-1,\"Muffler\":-1,\"SideSkirt\":-1,\"Hood\":-1,\"Spoiler\":-1,\"Lattice\":-1,\"Wings\":-1,\"Roof\":-1,\"Vinyls\":-1,\"FrontBumper\":0,\"RearBumper\":-1,\"Engine\":-1,\"Turbo\":-1,\"Horn\":-1,\"Transmission\":-1,\"WindowTint\":0,\"Suspension\":-1,\"Brakes\":-1,\"Headlights\":-1,\"NumberPlate\":0,\"Wheels\":-1,\"WheelsType\":0,\"WheelsColor\":0,\"Armor\":-1}', '[]', '{\"x\":918.27484,\"y\":-178.98537,\"z\":73.87863}', '{\"x\":3.4384117,\"y\":0.120831415,\"z\":-24.53384}', 0, 0, 0, 15, 'S216R');

-- --------------------------------------------------------

--
-- Структура таблицы `weapons`
--

CREATE TABLE `weapons` (
  `id` varchar(155) NOT NULL,
  `lastserial` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `weapons`
--

INSERT INTO `weapons` (`id`, `lastserial`) VALUES
('12', '101'),
('13', '319'),
('14', '53'),
('65', '39'),
('66', '20'),
('67', '106'),
('69', '203'),
('70', '22');

-- --------------------------------------------------------

--
-- Структура таблицы `whitelist`
--

CREATE TABLE `whitelist` (
  `id` int(11) NOT NULL,
  `socialclub` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`idkey`);

--
-- Индексы таблицы `adminaccess`
--
ALTER TABLE `adminaccess`
  ADD PRIMARY KEY (`idkey`);

--
-- Индексы таблицы `advertised`
--
ALTER TABLE `advertised`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `alcoclubs`
--
ALTER TABLE `alcoclubs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `banned`
--
ALTER TABLE `banned`
  ADD PRIMARY KEY (`uuid`);

--
-- Индексы таблицы `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`idkey`);

--
-- Индексы таблицы `customization`
--
ALTER TABLE `customization`
  ADD PRIMARY KEY (`idkey`);

--
-- Индексы таблицы `e_candidates`
--
ALTER TABLE `e_candidates`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `e_points`
--
ALTER TABLE `e_points`
  ADD PRIMARY KEY (`Election`);

--
-- Индексы таблицы `fractionaccess`
--
ALTER TABLE `fractionaccess`
  ADD PRIMARY KEY (`idkey`);

--
-- Индексы таблицы `fractionranks`
--
ALTER TABLE `fractionranks`
  ADD PRIMARY KEY (`idkey`);

--
-- Индексы таблицы `fractions`
--
ALTER TABLE `fractions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `fractionvehicles`
--
ALTER TABLE `fractionvehicles`
  ADD PRIMARY KEY (`idkey`);

--
-- Индексы таблицы `furniture`
--
ALTER TABLE `furniture`
  ADD PRIMARY KEY (`uuid`);

--
-- Индексы таблицы `gangspoints`
--
ALTER TABLE `gangspoints`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `garages`
--
ALTER TABLE `garages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`idkey`);

--
-- Индексы таблицы `main`
--
ALTER TABLE `main`
  ADD PRIMARY KEY (`SID`);

--
-- Индексы таблицы `money`
--
ALTER TABLE `money`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `othervehicles`
--
ALTER TABLE `othervehicles`
  ADD PRIMARY KEY (`idkey`);

--
-- Индексы таблицы `promocodes`
--
ALTER TABLE `promocodes`
  ADD PRIMARY KEY (`idkey`);

--
-- Индексы таблицы `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `rodings`
--
ALTER TABLE `rodings`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Индексы таблицы `safes`
--
ALTER TABLE `safes`
  ADD PRIMARY KEY (`idkey`);

--
-- Индексы таблицы `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`idkey`);

--
-- Индексы таблицы `weapons`
--
ALTER TABLE `weapons`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `whitelist`
--
ALTER TABLE `whitelist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `accounts`
--
ALTER TABLE `accounts`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=532;

--
-- AUTO_INCREMENT для таблицы `adminaccess`
--
ALTER TABLE `adminaccess`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `advertised`
--
ALTER TABLE `advertised`
  MODIFY `ID` int(12) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `characters`
--
ALTER TABLE `characters`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=673;

--
-- AUTO_INCREMENT для таблицы `customization`
--
ALTER TABLE `customization`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=669;

--
-- AUTO_INCREMENT для таблицы `e_candidates`
--
ALTER TABLE `e_candidates`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `e_points`
--
ALTER TABLE `e_points`
  MODIFY `Election` int(155) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fractionaccess`
--
ALTER TABLE `fractionaccess`
  MODIFY `idkey` int(155) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `fractionranks`
--
ALTER TABLE `fractionranks`
  MODIFY `idkey` int(155) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT для таблицы `fractionvehicles`
--
ALTER TABLE `fractionvehicles`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=341;

--
-- AUTO_INCREMENT для таблицы `inventory`
--
ALTER TABLE `inventory`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `othervehicles`
--
ALTER TABLE `othervehicles`
  MODIFY `idkey` int(155) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT для таблицы `promocodes`
--
ALTER TABLE `promocodes`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `questions`
--
ALTER TABLE `questions`
  MODIFY `ID` int(12) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `safes`
--
ALTER TABLE `safes`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `idkey` int(155) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `whitelist`
--
ALTER TABLE `whitelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
