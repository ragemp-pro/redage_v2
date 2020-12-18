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

INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'createstock', 1, 1);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (5, 'setleader', 1, 2);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (7, 'guns', 1, 3);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (5, 'giveammo', 1, 4);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'givemoney', 1, 5);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (4, 'vehc', 1, 6);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (2, 'hp', 1, 7);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (5, 'delacars', 1, 8);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'givereds', 1, 9);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (4, 'setdim', 1, 10);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (5, 'createmp', 1, 11);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (5, 'startmp', 1, 12);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (5, 'stopmp', 1, 13);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (7, 'stt', 1, 14);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (6, 'setbizmafia', 1, 15);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'takeoffbiz', 1, 16);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (4, 'skick', 1, 17);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (6, 'setcolour', 1, 18);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (3, 'fixcar', 1, 19);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'createsafe', 1, 20);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'allspawncar', 1, 21);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'save', 1, 22);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (3, 'ban', 1, 23);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'setfracveh', 1, 24);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (3, 'delfrac', 1, 25);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (6, 'startmatwars', 1, 26);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'setvehdirt', 1, 27);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'createbusiness', 1, 28);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'newfracveh', 1, 29);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (1, 'redname', 1, 30);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (6, 'setadmin', 1, 31);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (6, 'setadminrank', 1, 32);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (4, 'global', 1, 33);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (2, 'metp', 1, 34);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (2, 'demorgan', 1, 35);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (1, 'a', 1, 36);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (3, 'warn', 1, 37);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (3, 'unwarn', 1, 38);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (2, 'tp', 1, 39);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (2, 'admins', 1, 40);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (2, 'gm', 1, 41);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (2, 'sp', 1, 42);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (3, 'checkmoney', 1, 43);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (1, 'id', 1, 44);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (2, 'mute', 1, 45);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (1, 'asms', 1, 46);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (1, 'ans', 1, 47);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (3, 'fz', 1, 48);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'udemorgan', 1, 49);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (6, 'deladmin', 1, 50);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (3, 'delacar', 1, 51);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (4, 'setskin', 1, 52);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (2, 'agm', 1, 53);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (3, 'ufz', 1, 54);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (3, 'offban', 1, 55);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'newrentveh', 1, 56);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'newjobveh', 1, 57);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (5, 'sendcreator', 1, 58);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (6, 'delleader', 1, 59);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'ar', 1, 60);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'st', 1, 61);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (2, 'unmute', 1, 62);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (2, 'inv', 1, 63);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'oguns', 1, 64);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (3, 'rescar', 1, 65);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'giveclothes', 1, 66);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'delhouseowner', 1, 67);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (3, 'checkprop', 1, 68);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'deletebusiness', 1, 69);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (2, 'afuel', 1, 70);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (6, 'setviplvl', 1, 71);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (6, 'sw', 1, 72);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (6, 'deljob', 1, 73);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'stop', 1, 74);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'createunloadpoint', 1, 75);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'pa', 1, 76);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'sa', 1, 77);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (2, 'stats', 1, 78);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (2, 'delad', 1, 79);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (3, 'offjail', 1, 80);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (3, 'offwarn', 1, 81);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'removeobj', 1, 82);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (6, 'giveexp', 1, 83);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'svh', 1, 84);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (7, 'expmultiplier', 1, 85);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (7, 'payday', 1, 86);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'newsimcard', 1, 87);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'fixgovbizprices', 1, 88);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'housetypeprice', 1, 89);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (2, 'kick', 1, 90);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (3, 'kill', 1, 91);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'svm', 1, 92);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (5, 'changename', 1, 93);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (7, 'givelic', 1, 94);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (2, 'tpcar', 1, 95);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'lsn', 1, 96);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (6, 'changestock', 1, 97);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'mtp', 1, 98);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (3, 'tpc', 1, 99);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (5, 'offdelfrac', 1, 100);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'removesafe', 1, 101);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'paydaymultiplier', 1, 102);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'setproductbyindex', 1, 103);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'deleteproducts', 1, 104);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'changebizprice', 1, 105);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (8, 'delhouseowner', 1, 106);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (7, 'vehhash', 1, 107);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (4, 'veh', 1, 108);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (7, 'newvnum', 1, 109);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (7, 'admins', 1, 110);
INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`) VALUES (7, 'stop', 1, 111);

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
INSERT INTO `businesses` (`id`, `owner`, `sellprice`, `type`, `products`, `enterpoint`, `unloadpoint`, `money`, `mafia`, `orders`) VALUES (107, 'Государство', '100000000', '17', '[{"Price":300,"Lefts":10000,"Autosell":0,"Name":"deluxo","Ordered":true}]', '{"x":-177.17743,"y":-1158.7092,"z":22.693691}', '{"x":-177.17743,"y":-1158.7092,"z":22.693691}', '0', '-1', '[]');
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
  `wanted` text DEFAULT NULL,
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

INSERT INTO `fractionaccess` (`idkey`, `fraction`, `commands`, `weapons`) VALUES (18, 18, '{"invite": "13",  "uninvite": "13",  "setrank": "13",  "ticket": "1",  "arrest": "1",  "rfp": "1",  "follow": "1",  "su": "1",  "incar": "1",  "pull": "1",  "warg": "12",  "openweaponstock": "12",  "openstock": "12",  "givegunlic": "5",  "takegunlic": "5",  "cuff": "1",  "dep": "1",  "gov": "1"}', '{"sheriffgun":"1", "armor":"1", "Medkits":"1", "PistolAmmo":"1", "SMGAmmo":"1", "ShotgunsAmmo":"1", "RiflesAmmo":"1"}');

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

INSERT INTO `fractionranks` (`idkey`, `fraction`, `rank`, `payday`, `name`, `clothesm`, `clothesf`) VALUES (313, 18, 1, 300, 'Кадет', 'sheriff_1', 'sheriff_1');
INSERT INTO `fractionranks` (`idkey`, `fraction`, `rank`, `payday`, `name`, `clothesm`, `clothesf`) VALUES (314, 18, 2, 400, 'Стёпка 2 уровня', 'sheriff_1', 'sheriff_1');
INSERT INTO `fractionranks` (`idkey`, `fraction`, `rank`, `payday`, `name`, `clothesm`, `clothesf`) VALUES (315, 18, 3, 500, 'Стёпка 3 уровня', 'sheriff_2', 'sheriff_2');
INSERT INTO `fractionranks` (`idkey`, `fraction`, `rank`, `payday`, `name`, `clothesm`, `clothesf`) VALUES (316, 18, 4, 600, 'Стёпка 4 уровня', 'sheriff_2', 'sheriff_2');
INSERT INTO `fractionranks` (`idkey`, `fraction`, `rank`, `payday`, `name`, `clothesm`, `clothesf`) VALUES (317, 18, 5, 700, 'Стёпка 5 уровня', 'sheriff_3', 'sheriff_3');
INSERT INTO `fractionranks` (`idkey`, `fraction`, `rank`, `payday`, `name`, `clothesm`, `clothesf`) VALUES (318, 18, 6, 800, 'Стёпка 6 уровня', 'sheriff_4', 'sheriff_4');
INSERT INTO `fractionranks` (`idkey`, `fraction`, `rank`, `payday`, `name`, `clothesm`, `clothesf`) VALUES (319, 18, 7, 900, 'Стёпка 7 уровня', 'sheriff_4', 'sheriff_4');
INSERT INTO `fractionranks` (`idkey`, `fraction`, `rank`, `payday`, `name`, `clothesm`, `clothesf`) VALUES (320, 18, 8, 1000, 'Стёпка 8 уровня', 'sheriff_4', 'sheriff_4');
INSERT INTO `fractionranks` (`idkey`, `fraction`, `rank`, `payday`, `name`, `clothesm`, `clothesf`) VALUES (321, 18, 9, 1100, 'Стёпка 9 уровня', 'sheriff_5', 'sheriff_5');
INSERT INTO `fractionranks` (`idkey`, `fraction`, `rank`, `payday`, `name`, `clothesm`, `clothesf`) VALUES (322, 18, 10, 1200, 'Стёпка 10 уровня', 'sheriff_6', 'sheriff_6');
INSERT INTO `fractionranks` (`idkey`, `fraction`, `rank`, `payday`, `name`, `clothesm`, `clothesf`) VALUES (323, 18, 11, 1300, 'Стёпка 11 уровня', 'sheriff_7', 'sheriff_7');
INSERT INTO `fractionranks` (`idkey`, `fraction`, `rank`, `payday`, `name`, `clothesm`, `clothesf`) VALUES (324, 18, 12, 1500, 'Стёпка 12 уровня', 'sheriff_8', 'sheriff_8');
INSERT INTO `fractionranks` (`idkey`, `fraction`, `rank`, `payday`, `name`, `clothesm`, `clothesf`) VALUES (325, 18, 13, 3000, 'Стёпка 13 уровня', 'sheriff_8', 'sheriff_8');
INSERT INTO `fractionranks` (`idkey`, `fraction`, `rank`, `payday`, `name`, `clothesm`, `clothesf`) VALUES (326, 18, 14, 6600, 'Стёпка 14 уровня', 'sheriff_8', 'sheriff_8');


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

INSERT INTO `fractions` VALUES ('18', '0', '0', '10000', '0', '18', '[]', '1', '200', '200');

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

INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (5, 'BLOODS01', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'youga', '{"x":878.6237,"y":-2198.41016,"z":30.5223083}', '{"x":-0.193169221,"y":0.0179918241,"z":354.680756}', 10, 45, 45, 1);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (6, 'GOVFLY1', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Luxor2', '{"x":-978.2288,"y":-3002.78223,"z":13.9479656}', '{"x":0.0644961745,"y":0.0581368171,"z":61.27643}', 14, 111, 73, 2);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (6, 'GOVFLY3', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Luxor2', '{"x":-966.534668,"y":-2983.3042,"z":15.04949}', '{"x":-0.140227869,"y":-0.143193379,"z":61.4855957}', 14, 73, 111, 3);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (9, 'FIBFLY1', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'frogger2', '{"x":122.905441,"y":-744.519653,"z":262.964172}', '{"x":-0.0479557477,"y":0.00194021291,"z":160.058533}', 11, 1, 1, 4);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (8, 'EMS01', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'ambulance', '{"x":368.554321,"y":-541.4619,"z":29.01248}', '{"x":-0.0103013394,"y":-0.142090678,"z":89.90253}', 3, 111, 1, 5);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'LSPD01', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'polmav', '{"x":448.961,"y":-980.952,"z":45.7952156}', '{"x":-0.7118948,"y":-0.06647531,"z":0.6068115}', 11, 1, 1, 6);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'LSPD02', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'polmav', '{"x":481.666473,"y":-982.4717,"z":42.5080566}', '{"x":-0.7118948,"y":-0.06647531,"z":0.6068115}', 11, 1, 1, 7);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (8, 'EMSFLY1', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'buzzard2', '{"x":348.056183,"y":-597.2191,"z":74.43513}', '{"x":0.183723018,"y":-0.0416264124,"z":158.028076}', 9, 111, 0, 8);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (5, 'BLOODS02', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'youga', '{"x":881.509644,"y":-2198.61646,"z":30.5211868}', '{"x":-0.0357532948,"y":0.005248905,"z":359.573456}', 10, 45, 45, 9);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (5, 'BLOODS03', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'm5e60', '{"x":875.5041,"y":-2179.74048,"z":30.5193558}', '{"x":0.0,"y":0.0,"z":123.710114}', 6, 45, 45, 10);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (5, 'BLOODS11', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'primo', '{"x":874.2379,"y":-2178.91162,"z":30.51936}', '{"x":0.0,"y":0.0,"z":125.844208}', 6, 45, 45, 11);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (5, 'BLOODS04', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'G63', '{"x":879.118958,"y":-2174.111,"z":30.2241821}', '{"x":0.0462980941,"y":-0.003054764,"z":170.536926}', 11, 45, 45, 12);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (5, 'BLOODS05', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'm5e60', '{"x":853.155762,"y":-2179.72363,"z":30.35577}', '{"x":0.985458851,"y":5.34056425,"z":180.852859}', 3, 45, 45, 13);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (5, 'BLOODS06', '{}', 'picador', '{"x":850.0212,"y":-2179.98853,"z":31.7330265}', '{"x":0.0,"y":0.0,"z":181.5619}', 3, 45, 45, 14);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (5, 'BLOODS07', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'enduro', '{"x":846.8095,"y":-2179.45679,"z":30.4621315}', '{"x":0.17139104,"y":-0.05613219,"z":178.299744}', 8, 45, 45, 15);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (5, 'BLOODS08', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'enduro', '{"x":843.953735,"y":-2179.501,"z":30.45835}', '{"x":0.219354987,"y":-0.00122676208,"z":177.4082}', 8, 45, 45, 16);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (5, 'BLOODS09', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'bjxl', '{"x":863.795349,"y":-2166.43384,"z":31.0713844}', '{"x":0.0,"y":0.0,"z":355.620483}', 5, 45, 45, 17);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (5, 'BLOODS10', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'bjxl', '{"x":863.9251,"y":-2172.47144,"z":30.58477}', '{"x":-1.1989311,"y":-3.54497671,"z":357.741638}', 5, 45, 45, 18);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (4, 'MARA01', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'youga', '{"x":1409.99,"y":-1504.78,"z":59.56}', '{"x":0.0,"y":0.0,"z":199.64}', 10, 73, 1, 19);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (4, 'MARA02', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'youga', '{"x":1414.52,"y":-1502.22,"z":59.99}', '{"x":0.0,"y":0.0,"z":199.64}', 10, 73, 1, 20);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (4, 'MARA03', '{}', 'enduro', '{"x":1454.23,"y":-1502.55,"z":64.59}', '{"x":0.0,"y":0.0,"z":338.55}', 8, 73, 1, 21);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (4, 'MARA04', '{}', 'enduro', '{"x":1449.83,"y":-1503.01,"z":64.00}', '{"x":0.0,"y":0.0,"z":338.55}', 8, 73, 1, 22);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (4, 'MARA05', '{}', 'faction2', '{"x":1432.22,"y":-1499.04,"z":63.12}', '{"x":0.0,"y":0.0,"z":163.80}', 11, 73, 1, 23);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (4, 'MARA06', '{}', 'bjxl', '{"x":1419.57,"y":-1518.14,"z":60.11}', '{"x":0.0,"y":0.0,"z":278.03}', 5, 73, 1, 24);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (4, 'MARA07', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'bjxl', '{"x":1428.21,"y":-1515.98,"z":61.07}', '{"x":0.0,"y":0.0,"z":272.77}', 5, 73, 1, 25);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (4, 'MARA08', '{}', 'picador', '{"x":1436.76,"y":-1515.53,"z":61.95}', '{"x":0.0,"y":0.0,"z":261.97}', 3, 73, 1, 26);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (4, 'MARA09', '{}', 'picador', '{"x":1430.13,"y":-1508.04,"z":61.60}', '{"x":0.0,"y":0.0,"z":85.87}', 3, 73, 1, 27);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (4, 'MARA10', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'primo', '{"x":1436.27,"y":-1507.67,"z":62.89}', '{"x":0.0,"y":0.0,"z":85.87}', 6, 73, 73, 28);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (4, 'MARA11', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'primo', '{"x":1443.58,"y":-1508.13,"z":62.89}', '{"x":0.0,"y":0.0,"z":85.87}', 6, 73, 73, 29);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (3, 'VAG01', '{}', 'bjxl', '{"x":507.06366,"y":-1495.92554,"z":29.2909622}', '{"x":0.06626982,"y":-0.00215839967,"z":180.133072}', 5, 126, 1, 30);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (3, 'VAG02', '{}', 'bjxl', '{"x":500.8766,"y":-1495.93359,"z":29.2918873}', '{"x":0.197975576,"y":-0.01314722,"z":180.31427}', 5, 126, 1, 31);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (3, 'VAG03', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'sabregt', '{"x":497.806763,"y":-1522.35669,"z":29.8607941}', '{"x":0.0,"y":0.0,"z":314.7564}', 11, 126, 1, 32);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (3, 'VAG04', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'youga', '{"x":495.636749,"y":-1520.3385,"z":29.0740738}', '{"x":0.118999533,"y":-0.153831378,"z":314.792755}', 10, 126, 1, 33);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (3, 'VAG05', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'youga', '{"x":487.527,"y":-1523.9502,"z":29.1832027}', '{"x":2.41663957,"y":-0.488451868,"z":45.1978149}', 10, 126, 1, 34);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (3, 'VAG06', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'oracle', '{"x":503.7224,"y":-1514.03943,"z":29.34862}', '{"x":-0.204506516,"y":0.186353728,"z":136.9866}', 8, 126, 1, 35);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (3, 'VAG07', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'oracle', '{"x":506.381317,"y":-1516.053,"z":29.7883949}', '{"x":0.0,"y":0.0,"z":141.09227}', 8, 126, 1, 36);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (3, 'VAG08', '{}', 'picador', '{"x":471.464,"y":-1517.48535,"z":29.2646942}', '{"x":-4.367451,"y":-6.70572042,"z":144.319458}', 3, 126, 1, 37);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (3, 'VAG09', '{}', 'picador', '{"x":473.222748,"y":-1517.37756,"z":29.26335}', '{"x":-3.96385455,"y":-7.44372272,"z":149.242767}', 3, 126, 1, 38);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (3, 'VAG10', '{}', 'primo', '{"x":502.946381,"y":-1526.8042,"z":29.493063}', '{"x":-0.6835947,"y":-0.6381334,"z":314.458435}', 3, 126, 1, 39);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (3, 'VAG11', '{}', 'primo', '{"x":500.501984,"y":-1524.68762,"z":29.49329}', '{"x":-0.6472862,"y":-0.916472,"z":315.9211}', 1, 126, 1, 40);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (1, 'FAM01', '{}', 'youga', '{"x":-242.469177,"y":-1593.38684,"z":33.6039734}', '{"x":0.0,"y":0.0,"z":359.1496}', 10, 57, 1, 41);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (1, 'FAM02', '{}', 'youga', '{"x":-242.5712,"y":-1600.2804,"z":33.64202}', '{"x":0.0,"y":0.0,"z":352.6439}', 10, 57, 1, 42);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (1, 'FAM03', '{}', 'phoenix', '{"x":-191.60759,"y":-1583.63025,"z":34.75038}', '{"x":0.0,"y":0.0,"z":228.411423}', 11, 57, 1, 43);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (1, 'FAM04', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'bjxl', '{"x":-170.910019,"y":-1594.44226,"z":34.5836334}', '{"x":-6.18571,"y":-2.67520571,"z":321.888763}', 5, 57, 1, 44);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (1, 'FAM05', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'bjxl', '{"x":-174.2438,"y":-1599.16443,"z":34.434742}', '{"x":-4.27972126,"y":-2.78891683,"z":327.977966}', 5, 57, 1, 45);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (1, 'FAM06', '{}', 'enduro', '{"x":-193.218277,"y":-1612.86328,"z":33.91154}', '{"x":0.0,"y":0.0,"z":137.525833}', 8, 57, 1, 46);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (1, 'FAM07', '{}', 'enduro', '{"x":-194.4664,"y":-1611.64233,"z":33.93908}', '{"x":0.0,"y":0.0,"z":137.634552}', 8, 57, 1, 47);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (1, 'FAM08', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'primo', '{"x":-178.473785,"y":-1613.62463,"z":33.439476}', '{"x":-1.48942173,"y":-3.7475028,"z":356.324219}', 6, 57, 1, 48);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (1, 'FAM09', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'primo', '{"x":-178.47084,"y":-1619.10974,"z":33.31939}', '{"x":-1.38572514,"y":-2.473949,"z":0.6513977}', 6, 57, 1, 49);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (1, 'FAM10', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'picador', '{"x":-188.760864,"y":-1616.75061,"z":33.84107}', '{"x":-1.22752035,"y":0.228851363,"z":357.681671}', 3, 57, 1, 50);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (1, 'FAM11', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'picador', '{"x":-188.617065,"y":-1610.67554,"z":33.996933}', '{"x":-1.50156593,"y":-0.143164322,"z":355.2146}', 3, 57, 1, 51);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (2, 'BAL01', '{}', 'youga', '{"x":88.2467041,"y":-1968.299,"z":20.7474518}', '{"x":0.0,"y":0.0,"z":317.5794}', 10, 145, 1, 52);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (2, 'BAL02', '{}', 'youga', '{"x":92.3245,"y":-1963.23792,"z":20.7475338}', '{"x":0.0,"y":0.0,"z":316.0877}', 10, 145, 1, 53);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (2, 'BAL03', '{}', 'buccaneer2', '{"x":116.714539,"y":-1949.61121,"z":20.737608}', '{"x":0.0,"y":0.0,"z":47.050087}', 11, 145, 1, 54);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (2, 'BAL04', '{}', 'enduro', '{"x":129.992218,"y":-1937.61438,"z":20.61713}', '{"x":0.0,"y":0.0,"z":120.131165}', 8, 145, 1, 55);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (2, 'BAL05', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'enduro', '{"x":131.057587,"y":-1939.50183,"z":20.5921822}', '{"x":-10.5111752,"y":-6.956541,"z":122.467468}', 8, 145, 1, 56);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (2, 'BAL06', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'bjxl', '{"x":84.83413,"y":-1930.02222,"z":21.0372219}', '{"x":-1.623555,"y":1.52319765,"z":44.99765}', 5, 145, 1, 57);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (2, 'BAL07', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'bjxl', '{"x":88.34561,"y":-1934.08594,"z":21.0368519}', '{"x":-1.44526744,"y":1.70989585,"z":34.60913}', 5, 145, 1, 58);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (2, 'BAL08', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'picador', '{"x":91.52753,"y":-1939.23035,"z":20.7833424}', '{"x":-1.11730242,"y":2.088266,"z":29.4743958}', 3, 145, 1, 59);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (2, 'BAL09', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'picador', '{"x":94.18025,"y":-1944.73547,"z":20.7843056}', '{"x":-0.9019738,"y":2.18026781,"z":26.4478149}', 3, 145, 1, 60);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (2, 'BAL10', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'primo', '{"x":96.4377747,"y":-1925.22241,"z":20.5823555}', '{"x":2.59953976,"y":-2.18265963,"z":63.69348}', 6, 145, 1, 61);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (2, 'BAL11', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'primo', '{"x":91.3508453,"y":-1922.01831,"z":20.5903473}', '{"x":1.86620581,"y":-0.9970261,"z":54.3088074}', 6, 145, 1, 62);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (6, 'GOVFLY2', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'maverick', '{"x":-522.207031,"y":-176.948608,"z":54.78559}', '{"x":0.109789632,"y":0.06661252,"z":31.3600464}', 14, 111, 1, 63);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (6, 'GOV1', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Stretch', '{"x":-564.770752,"y":-165.9105,"z":38.2192345}', '{"x":-0.301207483,"y":0.5663513,"z":292.550751}', 7, 111, 1, 64);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (6, 'GOV2', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'raiden', '{"x":-560.497559,"y":-146.706192,"z":38.3146667}', '{"x":-3.47023726,"y":-0.171296284,"z":59.0449829}', 19, 111, 1, 65);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (6, 'GOV3', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'raiden', '{"x":-556.4399,"y":-144.987946,"z":38.3773727}', '{"x":-3.063745,"y":-0.523451865,"z":58.48221}', 19, 111, 1, 66);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (6, 'GOV4', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'raiden', '{"x":-552.5825,"y":-143.367767,"z":38.419323}', '{"x":-2.611339,"y":-0.830320239,"z":57.4231567}', 19, 111, 1, 67);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (6, 'GOV5', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'raiden', '{"x":-548.919861,"y":-141.806763,"z":38.4962349}', '{"x":-2.99311638,"y":1.81003022,"z":64.436615}', 19, 111, 1, 68);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (6, 'GOV6', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'fbi2', '{"x":-576.4954,"y":-148.0309,"z":37.8479042}', '{"x":6.2003026,"y":2.325003,"z":202.924713}', 6, 111, 1, 69);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (6, 'GOV7', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'fbi2', '{"x":-570.258667,"y":-145.499954,"z":37.86206}', '{"x":6.164353,"y":2.889131,"z":202.5322}', 6, 111, 1, 70);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (6, 'GOV8', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'fbi2', '{"x":-581.422546,"y":-155.684082,"z":38.04}', '{"x":-3.78174734,"y":-1.52422273,"z":294.705872}', 6, 111, 1, 71);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (6, 'GOV9', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'fbi2', '{"x":-587.4597,"y":-158.399933,"z":38.026638}', '{"x":-2.16769648,"y":-1.27010965,"z":293.57135}', 6, 111, 1, 72);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (6, 'GOV10', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'fbi2', '{"x":-538.410645,"y":-150.989944,"z":38.4993973}', '{"x":-1.11288941,"y":-0.06965328,"z":292.757324}', 6, 111, 1, 73);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (6, 'GOV11', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'fbi2', '{"x":-530.8009,"y":-147.954865,"z":38.5553131}', '{"x":-1.70179188,"y":-0.0588764325,"z":292.5849}', 6, 111, 1, 74);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (6, 'GOV12', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'fbi', '{"x":-550.4419,"y":-159.7692,"z":38.3556633}', '{"x":-0.238298446,"y":0.226027712,"z":293.3225}', 4, 111, 1, 75);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (6, 'GOV13', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'fbi', '{"x":-556.478455,"y":-162.3915,"z":38.3317375}', '{"x":-0.26992932,"y":0.475000858,"z":293.290527}', 4, 111, 1, 76);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (6, 'GOV14', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'fbi', '{"x":-573.686,"y":-169.564331,"z":38.108284}', '{"x":-0.398194581,"y":0.621386647,"z":291.631348}', 4, 111, 1, 77);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (6, 'GOV15', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'fbi', '{"x":-580.2237,"y":-172.234436,"z":37.9860153}', '{"x":-1.02067578,"y":0.7448937,"z":292.8343}', 4, 111, 1, 78);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (6, 'GOV16', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'fbi', '{"x":-591.7311,"y":-173.380814,"z":37.9359055}', '{"x":-2.735601,"y":-0.295018226,"z":292.838867}', 4, 111, 1, 79);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (6, 'GOV17', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Schafter5', '{"x":-500.734863,"y":-175.0675,"z":37.7684021}', '{"x":-0.402092218,"y":-0.483495057,"z":153.11322}', 11, 111, 1, 80);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (6, 'GOV18', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Schafter5', '{"x":-499.103058,"y":-177.719727,"z":37.68526}', '{"x":-0.4780054,"y":-0.538114846,"z":152.260254}', 11, 111, 1, 81);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (6, 'GOV19', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Schafter5', '{"x":-497.56778,"y":-180.515747,"z":37.6032028}', '{"x":-0.5143058,"y":-0.61999017,"z":151.420166}', 11, 111, 1, 82);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (6, 'GOV20', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Schafter5', '{"x":-495.9218,"y":-183.3748,"z":37.5167656}', '{"x":-0.528079867,"y":-0.6250855,"z":148.02124}', 11, 111, 1, 83);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (6, 'GOV21', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Schafter5', '{"x":-492.873138,"y":-188.629166,"z":37.3554344}', '{"x":-0.6169036,"y":-0.666313,"z":146.967133}', 11, 111, 1, 84);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (6, 'GOV22', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Schafter5', '{"x":-494.357758,"y":-186.069962,"z":37.4332581}', '{"x":-0.6002987,"y":-0.7292211,"z":143.739716}', 11, 111, 1, 85);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (6, 'GOV23', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Schafter5', '{"x":-489.868317,"y":-193.8398,"z":37.2024536}', '{"x":-0.7206203,"y":-0.4609991,"z":146.573059}', 11, 111, 1, 86);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (6, 'GOV24', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Schafter5', '{"x":-491.3455,"y":-191.184021,"z":37.2796364}', '{"x":-0.8216058,"y":-0.630632639,"z":149.217834}', 11, 111, 1, 87);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (6, 'GOV25', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Schafter5', '{"x":-485.135651,"y":-201.555023,"z":36.9691658}', '{"x":-0.5846602,"y":-0.418016583,"z":146.45105}', 11, 111, 1, 88);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (6, 'GOV26', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Schafter5', '{"x":-486.701721,"y":-198.852692,"z":37.046257}', '{"x":-0.733366251,"y":-0.468612254,"z":147.471252}', 11, 111, 1, 89);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (6, 'GOV27', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Schafter5', '{"x":-488.414276,"y":-196.441833,"z":37.12285}', '{"x":-0.806936741,"y":-0.4510095,"z":146.688812}', 11, 111, 1, 90);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (6, 'GOV28', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Schafter5', '{"x":-483.6164,"y":-204.453964,"z":36.8825264}', '{"x":-0.813280344,"y":-0.509607,"z":147.410522}', 11, 111, 1, 91);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (8, 'EMS04', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'ambulance', '{"x":398.72702,"y":-546.361,"z":28.8781033}', '{"x":-0.360399067,"y":-0.7349402,"z":68.95703}', 3, 111, 1, 93);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (8, 'EMS06', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'ambulance', '{"x":375.742157,"y":-541.2623,"z":29.0140915}', '{"x":0.035027083,"y":-0.373112321,"z":92.3056946}', 3, 111, 1, 95);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (8, 'EMS07', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'ambulance', '{"x":391.556854,"y":-544.166565,"z":28.93727}', '{"x":-0.360399067,"y":-0.7349402,"z":68.95703}', 3, 111, 1, 96);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (8, 'EMS08', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'ambulance', '{"x":384.098,"y":-541.5711,"z":29.0006142}', '{"x":-0.0475431867,"y":-0.156150073,"z":78.48187}', 3, 111, 1, 97);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (8, 'EMS09', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'ambulance', '{"x":361.63443,"y":-541.2295,"z":29.0127983}', '{"x":0.00399880251,"y":-0.0645541,"z":93.01837}', 3, 111, 1, 98);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (8, 'EMS10', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'ambulance', '{"x":399.602234,"y":-553.0578,"z":28.8355465}', '{"x":-0.427612334,"y":-0.153711647,"z":250.8428}', 3, 111, 1, 99);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (8, 'EMS11', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'ambulance', '{"x":354.1797,"y":-541.0956,"z":29.012558}', '{"x":0.07737209,"y":0.18106921,"z":88.87018}', 3, 111, 1, 100);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (8, 'EMS12', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'ambulance', '{"x":392.3396,"y":-550.578247,"z":28.9018764}', '{"x":-0.242579237,"y":-0.491966963,"z":250.856354}', 3, 111, 1, 101);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (8, 'EMS13', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'ambulance', '{"x":385.2938,"y":-548.285339,"z":28.9729271}', '{"x":-0.6975075,"y":-0.46986863,"z":250.462982}', 3, 111, 1, 102);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (8, 'EMS14', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'ambulance', '{"x":370.699524,"y":-547.0482,"z":29.0127678}', '{"x":-0.265845656,"y":-0.0583269224,"z":269.0098}', 3, 111, 1, 103);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (8, 'EMS15', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'ambulance', '{"x":378.143646,"y":-546.942444,"z":29.0124283}', '{"x":0.00229245075,"y":0.0361539759,"z":268.022339}', 3, 111, 1, 104);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (8, 'EMS16', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'ambulance', '{"x":362.663361,"y":-547.036865,"z":29.0130577}', '{"x":-0.0326471068,"y":-0.137781069,"z":270.58316}', 3, 111, 1, 105);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (8, 'EMS17', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'ambulance', '{"x":355.28067,"y":-546.8256,"z":29.0100212}', '{"x":-0.000141265351,"y":0.0164895,"z":269.043274}', 3, 111, 1, 106);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (8, 'EMSFLY2', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'buzzard2', '{"x":354.704559,"y":-579.397034,"z":74.56317}', '{"x":-0.05863272,"y":-0.02599346,"z":340.597443}', 9, 111, 0, 111);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'LSPD1', '{}', 'riot', '{"x":436.8745,"y":-1009.7088,"z":28.198616}', '{"x":0.0,"y":0.0,"z":183.1122}', 8, 0, 0, 112);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'LSPD3', '{}', 'riot', '{"x":431.4817,"y":-1009.65564,"z":28.3325748}', '{"x":0.0,"y":0.0,"z":176.693787}', 8, 0, 0, 113);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'LSPD4', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'insurgent2', '{"x":447.580475,"y":-1009.19934,"z":28.4799137}', '{"x":13.3305693,"y":-0.253869653,"z":182.3066}', 9, 1, 1, 114);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'LSPD5', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'insurgent2', '{"x":452.4071,"y":-1008.84473,"z":28.4241943}', '{"x":14.6249685,"y":-0.321601152,"z":179.985474}', 9, 1, 1, 115);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'LSPD6', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'police3', '{"x":408.252716,"y":-980.159851,"z":29.523716}', '{"x":0.060755,"y":0.02545211,"z":233.210159}', 3, 111, 111, 116);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'LSPD7', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'police3', '{"x":408.369781,"y":-989.1463,"z":29.5225849}', '{"x":-0.0417116,"y":0.116475455,"z":232.046844}', 3, 111, 111, 117);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'LSPD9', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'police3', '{"x":408.955566,"y":-998.786255,"z":29.52108}', '{"x":-0.06751108,"y":0.128513411,"z":230.705688}', 3, 111, 111, 119);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'LSPD10', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'police3', '{"x":408.565674,"y":-993.628235,"z":29.5224075}', '{"x":-0.009527455,"y":0.001757239,"z":229.508148}', 3, 111, 111, 120);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'LSPD11', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'police3', '{"x":408.433655,"y":-984.816833,"z":29.5231838}', '{"x":-0.008607403,"y":0.03613176,"z":232.603638}', 3, 111, 111, 121);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'LSPD12', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'raiden', '{"x":462.843353,"y":-1019.686,"z":28.2873783}', '{"x":0.175747707,"y":0.224384263,"z":91.01755}', 11, 1, 1, 122);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'LSPD13', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'raiden', '{"x":462.797943,"y":-1014.83752,"z":27.9074554}', '{"x":0.263600677,"y":-0.04844205,"z":89.47537}', 11, 1, 1, 123);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'LSPD14', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'xls2', '{"x":434.92,"y":-1027.10815,"z":29.26661}', '{"x":0.107089013,"y":-1.06849039,"z":183.654}', 7, 1, 1, 124);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'LSPD15', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'xls2', '{"x":427.369629,"y":-1027.89819,"z":29.4014282}', '{"x":0.005144453,"y":-1.03291237,"z":185.859482}', 7, 1, 1, 125);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'LSPD16', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'xls2', '{"x":431.101257,"y":-1027.6145,"z":29.3352375}', '{"x":0.07076498,"y":-0.9851173,"z":186.8523}', 7, 1, 1, 126);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'LSPD17', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'xls2', '{"x":438.59845,"y":-1026.62378,"z":29.2010784}', '{"x":0.04558062,"y":-1.07895613,"z":183.041809}', 7, 1, 1, 127);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'LSPD18', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'xls2', '{"x":442.538849,"y":-1026.15039,"z":29.1217976}', '{"x":0.3878964,"y":-1.02394474,"z":184.345032}', 7, 1, 1, 128);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'LSPD19', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'xls2', '{"x":446.0902,"y":-1025.82568,"z":29.0572243}', '{"x":0.258325636,"y":-1.00394154,"z":184.47699}', 7, 1, 1, 129);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'LSPD20', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'police3', '{"x":485.806946,"y":-1079.423,"z":29.3137169}', '{"x":-0.061289724,"y":-0.04600215,"z":266.0009}', 3, 111, 1, 130);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'LSPD21', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'police3', '{"x":485.627655,"y":-1082.95569,"z":29.3144112}', '{"x":0.05904763,"y":-0.0659574643,"z":268.4145}', 3, 111, 1, 131);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'LSPD22', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'police3', '{"x":485.664246,"y":-1102.21436,"z":29.3132286}', '{"x":0.00499306526,"y":-0.0354465544,"z":268.5743}', 3, 111, 1, 132);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'LSPD23', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'police3', '{"x":485.896179,"y":-1105.70825,"z":29.3071957}', '{"x":-0.0380977727,"y":-0.0378757827,"z":270.353577}', 3, 111, 1, 133);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'LSPD24', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'police3', '{"x":485.9677,"y":-1109.07043,"z":29.3068619}', '{"x":-0.0474395,"y":-0.285403043,"z":265.6986}', 3, 111, 1, 134);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'LSPD25', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'police3', '{"x":485.893921,"y":-1112.62256,"z":29.30599}', '{"x":-0.0361085273,"y":-0.0237363372,"z":270.0654}', 3, 111, 1, 135);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'LSPD26', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'police3', '{"x":472.3626,"y":-1109.22534,"z":29.3059025}', '{"x":-0.08201427,"y":-0.155946687,"z":89.38986}', 3, 111, 1, 136);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'LSPD27', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'police3', '{"x":472.5152,"y":-1105.92371,"z":29.3073788}', '{"x":0.150914431,"y":0.08774629,"z":89.362854}', 3, 111, 1, 137);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'LSPD28', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'police2', '{"x":472.113739,"y":-1102.35913,"z":29.31346}', '{"x":0.1694519,"y":-0.09123363,"z":88.71594}', 4, 111, 1, 138);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'LSPD29', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'police2', '{"x":472.205963,"y":-1099.2113,"z":29.3154488}', '{"x":-0.127834991,"y":0.03300827,"z":95.57895}', 4, 111, 1, 139);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'LSPD30', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'police2', '{"x":472.4341,"y":-1095.38464,"z":29.3157425}', '{"x":-0.162116349,"y":0.110825367,"z":90.58942}', 4, 111, 1, 140);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'LSPD31', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'police2', '{"x":472.104248,"y":-1092.49377,"z":29.3158627}', '{"x":0.0223710723,"y":-0.0215224624,"z":93.52319}', 4, 111, 1, 141);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'LSPD32', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'police2', '{"x":472.033447,"y":-1089.33057,"z":29.3169289}', '{"x":-0.00550831435,"y":0.1323281,"z":90.70715}', 4, 111, 1, 142);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'LSPD33', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'police2', '{"x":458.791443,"y":-1083.59827,"z":29.3180828}', '{"x":0.09768664,"y":0.0112527562,"z":88.8487549}', 4, 111, 1, 143);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'LSPD34', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'police2', '{"x":458.834167,"y":-1079.87952,"z":29.3167076}', '{"x":0.0107410727,"y":0.121184364,"z":92.22763}', 4, 111, 1, 144);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'LSPD35', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'police2', '{"x":458.874268,"y":-1087.54456,"z":29.31598}', '{"x":-0.07548067,"y":0.101822495,"z":89.00412}', 4, 111, 1, 145);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'LSPD36', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'police2', '{"x":458.726349,"y":-1091.24622,"z":29.3125572}', '{"x":0.0448677354,"y":0.0121080959,"z":90.82654}', 4, 111, 1, 146);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'LSPD37', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'police2', '{"x":458.768219,"y":-1095.11035,"z":29.31075}', '{"x":-0.454401344,"y":0.116712116,"z":87.34775}', 4, 111, 1, 147);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'LSPD38', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'police2', '{"x":458.776917,"y":-1098.60986,"z":29.3134766}', '{"x":-0.114485443,"y":0.01882653,"z":94.50659}', 4, 111, 1, 148);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'LSPD39', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'towtruck', '{"x":460.4653,"y":-1105.2218,"z":29.6689816}', '{"x":0.369837582,"y":0.5127767,"z":46.8180847}', 8, 1, 111, 149);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'LSPD40', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'towtruck', '{"x":460.00473,"y":-1110.86462,"z":29.6666584}', '{"x":0.484348625,"y":0.4495527,"z":44.02881}', 8, 1, 111, 150);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY01', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'barracks', '{"x":-2411.47583,"y":3279.12329,"z":32.9509277}', '{"x":-0.36936003,"y":-0.746038854,"z":241.29834}', 3, 99, 99, 151);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY02', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'barracks', '{"x":-2409.78687,"y":3282.21118,"z":32.9507}', '{"x":-0.412521869,"y":-0.686305165,"z":239.448914}', 3, 99, 99, 152);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY03', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'barracks', '{"x":-2406.34546,"y":3287.84937,"z":32.954216}', '{"x":-0.306399375,"y":-0.6496362,"z":241.696045}', 3, 99, 99, 153);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY04', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'barracks', '{"x":-2402.61816,"y":3293.83716,"z":32.9521141}', '{"x":-0.313543051,"y":-0.617363453,"z":240.191589}', 3, 99, 99, 154);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY05', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'barracks', '{"x":-2395.79736,"y":3306.1394,"z":32.95035}', '{"x":-0.236012414,"y":-0.9055912,"z":240.580643}', 3, 99, 99, 155);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY06', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'barracks', '{"x":-2401.05957,"y":3297.07935,"z":32.9517174}', '{"x":-0.339640439,"y":-0.6166905,"z":239.39859}', 3, 99, 99, 156);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY07', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'barracks', '{"x":-2399.467,"y":3299.91968,"z":32.95043}', '{"x":-0.409930974,"y":-0.7261707,"z":241.26825}', 3, 99, 99, 157);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY08', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'barracks', '{"x":-2407.99,"y":3285.02124,"z":32.9506836}', '{"x":-0.4052113,"y":-0.7160499,"z":240.499573}', 3, 99, 99, 158);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY09', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'barracks', '{"x":-2404.559,"y":3290.82568,"z":32.9454651}', '{"x":-0.360769242,"y":-0.7956792,"z":239.188416}', 3, 99, 99, 159);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY10', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'barracks', '{"x":-2397.58032,"y":3302.99146,"z":32.94814}', '{"x":0.269535035,"y":-0.72613287,"z":240.303955}', 3, 99, 99, 160);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY11', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Buzzard', '{"x":-2121.79785,"y":3134.98462,"z":32.9301529}', '{"x":0.0239031818,"y":-0.005181194,"z":331.16275}', 8, 99, 99, 161);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY12', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Buzzard', '{"x":-2057.573,"y":3095.41064,"z":32.9296074}', '{"x":-0.088237755,"y":0.009552645,"z":329.381836}', 8, 99, 99, 162);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY13', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'lazer', '{"x":-2129.51465,"y":3256.24048,"z":33.2317352}', '{"x":-0.17480053,"y":0.09484037,"z":150.411987}', 13, 99, 1, 163);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY16', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'insurgent', '{"x":-2305.51636,"y":3277.60742,"z":33.2458267}', '{"x":-0.07162552,"y":-0.13039279,"z":241.273834}', 7, 99, 1, 166);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY17', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'insurgent', '{"x":-2309.0105,"y":3271.96655,"z":33.3988838}', '{"x":0.0,"y":0.0,"z":241.3772}', 7, 99, 1, 167);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY18', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'insurgent', '{"x":-2307.1875,"y":3274.96753,"z":33.0137444}', '{"x":0.05880006,"y":0.0436308719,"z":239.825165}', 7, 99, 1, 168);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY19', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'lazer', '{"x":-2143.48,"y":3265.03,"z":33.2317352}', '{"x":-0.17480053,"y":0.09484037,"z":150.411987}', 12, 99, 1, 169);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY20', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'bombushka', '{"x":-2140.43,"y":2890.12,"z":32.81}', '{"x":0.0,"y":0.0,"z":30.09}', 12, 99, 1, 170);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY21', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'contender', '{"x":-2320.99854,"y":3330.21362,"z":33.5602}', '{"x":-0.4812048,"y":-0.0410385877,"z":331.7549}', 7, 99, 99, 171);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY22', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'contender', '{"x":-2318.32471,"y":3328.55884,"z":33.5597343}', '{"x":-0.310866356,"y":0.150957346,"z":324.934}', 7, 99, 99, 172);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY23', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'contender', '{"x":-2315.56738,"y":3327.02173,"z":33.55704}', '{"x":-0.247893527,"y":0.142920256,"z":328.861359}', 7, 99, 99, 173);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY24', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'contender', '{"x":-2326.756,"y":3333.23462,"z":33.55701}', '{"x":-0.246086225,"y":0.1442901,"z":328.1531}', 7, 99, 99, 174);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY25', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'contender', '{"x":-2323.94873,"y":3331.758,"z":33.56089}', '{"x":-0.436912656,"y":0.12652941,"z":332.877228}', 7, 99, 99, 175);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY26', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'xls2', '{"x":-2315.522,"y":3359.37476,"z":33.27601}', '{"x":-0.23109284,"y":0.0001945886,"z":332.9729}', 6, 99, 99, 176);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY27', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'xls2', '{"x":-2312.92114,"y":3357.977,"z":33.2666969}', '{"x":-0.0436779559,"y":-0.513596535,"z":329.796539}', 6, 99, 99, 177);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY28', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'xls2', '{"x":-2310.56934,"y":3356.57959,"z":33.249054}', '{"x":-0.07527891,"y":-0.1935545,"z":331.5678}', 6, 99, 99, 178);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY29', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'xls2', '{"x":-2308.30273,"y":3355.20044,"z":33.24828}', '{"x":0.14117001,"y":-0.204702914,"z":327.2561}', 6, 99, 99, 179);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY30', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'xls2', '{"x":-2305.69751,"y":3353.548,"z":33.24586}', '{"x":0.08771958,"y":-0.09368459,"z":330.168945}', 6, 99, 99, 180);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY33', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'fbi2', '{"x":-2364.93359,"y":3355.19922,"z":32.9554939}', '{"x":0.08292573,"y":0.00359317032,"z":330.425751}', 5, 99, 99, 183);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY34', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'fbi2', '{"x":-2354.35986,"y":3349.0752,"z":32.9550743}', '{"x":0.105919473,"y":-0.06788532,"z":329.4551}', 5, 99, 99, 184);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY35', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'fbi2', '{"x":-2356.84375,"y":3350.48218,"z":32.9559975}', '{"x":-0.05326579,"y":0.03553231,"z":327.5303}', 5, 99, 99, 185);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY36', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'fbi2', '{"x":-2359.32446,"y":3351.981,"z":32.9561653}', '{"x":0.0221505836,"y":-0.07728809,"z":328.42038}', 5, 99, 99, 186);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY37', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'fbi2', '{"x":-2362.07275,"y":3353.45776,"z":32.955513}', '{"x":-0.0553899221,"y":0.0300717726,"z":330.885681}', 5, 99, 99, 187);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY41', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'crusader', '{"x":-2328.49658,"y":3367.326,"z":32.85609}', '{"x":-0.9744377,"y":0.526335239,"z":333.973724}', 2, 99, 99, 191);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY42', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'crusader', '{"x":-2325.88452,"y":3366.3457,"z":32.86479}', '{"x":-0.9880526,"y":0.3132635,"z":336.142548}', 2, 99, 99, 192);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY43', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'crusader', '{"x":-2330.97559,"y":3368.72827,"z":32.8504868}', '{"x":-0.693796754,"y":0.448789656,"z":330.766449}', 2, 99, 99, 193);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY44', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'mesa', '{"x":-2340.59644,"y":3374.07275,"z":32.829052}', '{"x":-0.0300446153,"y":0.04280658,"z":334.722}', 5, 99, 99, 194);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY45', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'mesa', '{"x":-2348.144,"y":3378.64575,"z":32.834343}', '{"x":-0.0180001035,"y":-0.07698105,"z":335.308044}', 5, 99, 99, 195);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY46', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'mesa', '{"x":-2358.20532,"y":3383.97632,"z":32.84036}', '{"x":-0.09907932,"y":-0.161007762,"z":334.6752}', 5, 99, 99, 196);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY47', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'mesa', '{"x":-2350.31177,"y":3379.94,"z":32.8347931}', '{"x":-0.0145184761,"y":-0.0411096066,"z":331.5403}', 5, 99, 99, 197);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY48', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'mesa', '{"x":-2353.3042,"y":3381.05225,"z":32.8400345}', '{"x":0.166560754,"y":-0.1108765,"z":331.7432}', 5, 99, 99, 198);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY49', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'mesa', '{"x":-2355.75146,"y":3382.594,"z":32.8403969}', '{"x":-0.103435315,"y":-0.165846393,"z":334.345917}', 5, 99, 99, 199);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY50', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'crusader', '{"x":-2333.60132,"y":3370.01416,"z":32.8449478}', '{"x":-0.4503569,"y":0.3070438,"z":334.254425}', 2, 99, 99, 200);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY51', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'crusader', '{"x":-2335.88379,"y":3371.39478,"z":32.84168}', '{"x":-0.414199233,"y":0.256935984,"z":332.300751}', 2, 99, 99, 201);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY52', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'mesa', '{"x":-2338.16846,"y":3372.90942,"z":32.8400574}', '{"x":-0.124640509,"y":0.1643419,"z":338.59375}', 5, 99, 99, 202);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY53', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'mesa', '{"x":-2343.259,"y":3375.597,"z":32.8303757}', '{"x":-0.05049328,"y":-0.102643907,"z":331.711456}', 5, 99, 99, 203);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY54', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'mesa', '{"x":-2345.49585,"y":3377.28052,"z":33.33787}', '{"x":0.0,"y":0.0,"z":333.199554}', 5, 99, 99, 204);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (9, 'FBI1', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'fbi', '{"x":125.241486,"y":-720.090637,"z":33.28043}', '{"x":-0.0105128521,"y":-0.05040036,"z":160.7923}', 3, 1, 1, 205);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (9, 'FBI2', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'fbi', '{"x":132.758209,"y":-722.881836,"z":33.2799072}', '{"x":-0.0148432031,"y":0.00364152226,"z":159.839233}', 3, 1, 1, 206);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (9, 'FBI3', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'fbi', '{"x":121.389122,"y":-718.8132,"z":33.28145}', '{"x":0.0287823714,"y":0.0504472665,"z":161.694031}', 3, 1, 1, 207);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (9, 'FBI4', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'fbi', '{"x":117.460037,"y":-717.4551,"z":33.2787666}', '{"x":-0.0492618531,"y":-0.01663374,"z":157.661011}', 3, 1, 1, 208);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (9, 'FBI5', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'fbi', '{"x":113.701332,"y":-716.067,"z":33.2813225}', '{"x":0.0216773674,"y":0.0479444675,"z":159.427}', 3, 1, 1, 209);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (9, 'FBI6', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'fbi', '{"x":110.124428,"y":-714.3543,"z":33.2824173}', '{"x":0.101220019,"y":0.148223937,"z":161.147949}', 3, 1, 1, 210);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (9, 'FBI7', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'fbi', '{"x":128.92627,"y":-721.5477,"z":33.2826462}', '{"x":0.06099619,"y":0.07751625,"z":159.509949}', 3, 1, 1, 211);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (9, 'FBI8', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'fbi', '{"x":136.3138,"y":-724.2521,"z":33.28012}', '{"x":0.0152876973,"y":-0.00663077366,"z":162.86322}', 3, 1, 1, 212);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (9, 'FBI9', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'fbi', '{"x":140.091125,"y":-725.988464,"z":33.2823372}', '{"x":0.09304037,"y":0.110836186,"z":157.0232}', 3, 1, 1, 213);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (9, 'FBI10', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'fbi', '{"x":165.4755,"y":-733.539246,"z":33.2801}', '{"x":-0.06251927,"y":0.00915936,"z":70.4449158}', 3, 1, 1, 214);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (9, 'FBI11', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'fbi', '{"x":147.681488,"y":-728.7484,"z":33.2821426}', '{"x":0.06430348,"y":0.0876920745,"z":160.223816}', 3, 1, 1, 215);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (9, 'FBI12', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'fbi', '{"x":151.188049,"y":-729.653564,"z":33.27391}', '{"x":-0.120795004,"y":0.5039419,"z":162.22229}', 3, 1, 1, 216);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (9, 'FBI19', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'contender', '{"x":133.3365,"y":-741.441345,"z":33.86007}', '{"x":-0.342742234,"y":0.118341208,"z":338.7555}', 6, 1, 1, 223);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (9, 'FBI20', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'contender', '{"x":136.98877,"y":-742.8248,"z":33.8581352}', '{"x":-0.496562451,"y":0.0135561805,"z":340.403473}', 6, 1, 1, 224);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (9, 'FBI21', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'contender', '{"x":147.582016,"y":-746.3317,"z":33.86059}', '{"x":-0.3958241,"y":0.116727017,"z":338.412781}', 6, 1, 1, 225);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (9, 'FBI22', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'contender', '{"x":140.780548,"y":-743.9162,"z":33.8551064}', '{"x":-0.378152579,"y":0.112081714,"z":342.635834}', 6, 1, 1, 226);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (9, 'FBI23', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'contender', '{"x":151.164078,"y":-747.7126,"z":33.8610954}', '{"x":-0.5206076,"y":0.159613416,"z":340.938568}', 6, 1, 1, 227);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (9, 'FBI24', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'contender', '{"x":154.809753,"y":-749.309753,"z":33.8618851}', '{"x":-0.314754128,"y":0.288007617,"z":339.557983}', 6, 1, 1, 228);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (9, 'FBI25', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'fbi2', '{"x":103.716545,"y":-693.2569,"z":33.2412338}', '{"x":0.143747136,"y":0.0259376056,"z":158.997986}', 5, 1, 1, 229);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (9, 'FBI26', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'fbi2', '{"x":110.974968,"y":-696.3541,"z":33.2414627}', '{"x":0.15797165,"y":0.03147822,"z":160.351257}', 5, 1, 1, 230);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (9, 'FBI27', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'fbi2', '{"x":107.234077,"y":-694.8459,"z":33.2395439}', '{"x":0.108769156,"y":-0.0441256538,"z":162.1051}', 5, 1, 1, 231);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (9, 'FBI28', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'fbi2', '{"x":122.2144,"y":-700.5321,"z":33.2293053}', '{"x":0.053785786,"y":1.04975784,"z":159.074219}', 5, 1, 1, 232);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (9, 'FBI29', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'fbi2', '{"x":118.614273,"y":-698.968933,"z":33.23322}', '{"x":0.03350527,"y":0.153221369,"z":161.0304}', 5, 1, 1, 233);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (9, 'FBI30', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'fbi2', '{"x":114.668304,"y":-697.4956,"z":33.2620659}', '{"x":0.0350586362,"y":-0.011837923,"z":159.055}', 5, 1, 1, 234);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (9, 'FBI31', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'cavalcade2', '{"x":97.85131,"y":-709.2097,"z":33.4403267}', '{"x":0.06371545,"y":0.157383963,"z":248.862823}', 8, 1, 1, 235);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (9, 'FBI32', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'cavalcade2', '{"x":95.8466644,"y":-712.8234,"z":33.434}', '{"x":0.08627231,"y":0.2901574,"z":253.916748}', 8, 1, 1, 236);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (9, 'FBI33', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'cavalcade2', '{"x":94.587,"y":-716.2509,"z":33.44054}', '{"x":0.03374167,"y":0.116892472,"z":253.846191}', 8, 1, 1, 237);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (9, 'FBI34', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'cavalcade2', '{"x":93.25159,"y":-720.4028,"z":33.44229}', '{"x":-0.014399346,"y":0.246326745,"z":247.303589}', 8, 1, 1, 238);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (9, 'FBI35', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'insurgent2', '{"x":162.324615,"y":-741.0743,"z":33.5617867}', '{"x":-0.00591143966,"y":-0.008695296,"z":70.509}', 9, 1, 1, 239);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (9, 'FBI36', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'insurgent2', '{"x":163.6133,"y":-737.298767,"z":33.5621071}', '{"x":-0.005717653,"y":-0.009208539,"z":69.83383}', 9, 1, 1, 240);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (9, 'FBI37', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'brabus850', '{"x":115.499832,"y":-734.490845,"z":32.96647}', '{"x":-0.240873367,"y":-0.233325616,"z":340.934021}', 11, 1, 1, 241);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (9, 'FBI38', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'brabus850', '{"x":118.824341,"y":-736.110962,"z":32.96617}', '{"x":-0.0259791985,"y":0.0293015987,"z":340.048462}', 11, 1, 1, 242);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (11, 'RM1', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'youga', '{"x":-123.956161,"y":1008.63666,"z":235.734985}', '{"x":0.027756,"y":0.0107590584,"z":200.26}', 8, 1, 1, 243);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (11, 'RM2', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'youga', '{"x":-132.0058,"y":1005.76868,"z":235.7354}', '{"x":0.110045806,"y":0.0406230725,"z":199.484253}', 8, 1, 1, 244);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (11, 'RM3', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'G63', '{"x":-114.95,"y":979.52,"z":235.76}', '{"x":0.0,"y":0.0,"z":110.59}', 7, 1, 1, 245);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (11, 'RM4', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'baller3', '{"x":-118.65,"y":990.97,"z":235.75}', '{"x":0.0,"y":0.0,"z":110.59}', 7, 1, 1, 246);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (11, 'RM5', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'oracle', '{"x":-107.49,"y":1010.21,"z":235.76}', '{"x":0.0,"y":0.0,"z":110.59}', 2, 1, 1, 247);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (11, 'RM6', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'oracle', '{"x":-114.28,"y":1007.83,"z":235.77}', '{"x":0.0,"y":0.0,"z":110.59}', 2, 1, 1, 248);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (11, 'RM7', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Schafter4', '{"x":-112.14,"y":1001.96,"z":235.77}', '{"x":0.0,"y":0.0,"z":110.59}', 4, 1, 1, 249);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (11, 'RM8', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Schafter4', '{"x":-105.39,"y":1004.26,"z":235.76}', '{"x":0.0,"y":0.0,"z":110.59}', 4, 1, 1, 250);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (11, 'RM9', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'windsor', '{"x":-136.93,"y":998.32,"z":236.65}', '{"x":0.0,"y":0.0,"z":20.02}', 9, 1, 1, 251);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (11, 'RM10', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Gresley', '{"x":-106.82,"y":1007.12,"z":235.76}', '{"x":0.0,"y":0.0,"z":110.59}', 5, 1, 1, 252);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (11, 'RM11', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Gresley', '{"x":-113.15,"y":1004.90,"z":235.77}', '{"x":0.0,"y":0.0,"z":110.59}', 5, 1, 1, 253);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (10, 'LCN1', '{}', 'Youga', '{"x":1407.62573,"y":1116.1322,"z":114.837631}', '{"x":0.0,"y":0.0,"z":357.9661}', 8, 156, 156, 254);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (10, 'LCN2', '{}', 'Youga', '{"x":1401.62329,"y":1116.29285,"z":114.837631}', '{"x":0.0,"y":0.0,"z":358.4806}', 8, 156, 156, 255);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (10, 'LCN3', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'lc200', '{"x":1474.74036,"y":1119.603,"z":114.757111}', '{"x":-0.00563292159,"y":0.0580959767,"z":264.489838}', 7, 156, 156, 256);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (10, 'LCN4', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'baller3', '{"x":1474.68713,"y":1122.45093,"z":114.760262}', '{"x":-0.221599638,"y":0.4432286,"z":268.826569}', 7, 156, 156, 257);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (10, 'LCN5', '{}', 'fusilade', '{"x":1443.23767,"y":1120.74133,"z":114.33297}', '{"x":0.0,"y":0.0,"z":0.0117846541}', 4, 156, 156, 258);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (10, 'LCN6', '{}', 'fusilade', '{"x":1446.32813,"y":1120.40222,"z":114.334076}', '{"x":0.0,"y":0.0,"z":2.232198}', 4, 156, 156, 259);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (10, 'LCN7', '{}', 'hermes', '{"x":1449.21887,"y":1120.34753,"z":114.334}', '{"x":0.0,"y":0.0,"z":358.406158}', 2, 156, 156, 260);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (10, 'LCN8', '{}', 'hermes', '{"x":1452.585,"y":1120.23792,"z":114.334}', '{"x":0.0,"y":0.0,"z":0.7993294}', 2, 156, 156, 261);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (10, 'LCN9', '{}', 'cog55', '{"x":1443.211,"y":1104.94653,"z":114.35453}', '{"x":0.0,"y":0.0,"z":179.568619}', 5, 156, 156, 262);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (10, 'LCN10', '{}', 'cog55', '{"x":1446.41052,"y":1104.94446,"z":114.3466}', '{"x":0.0,"y":0.0,"z":177.7135}', 5, 156, 156, 263);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (10, 'LCN11', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'revolter', '{"x":1371.74158,"y":1147.48315,"z":113.766876}', '{"x":0.0221958831,"y":-0.0252553429,"z":0.156494141}', 9, 156, 156, 264);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (13, 'ARM1', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Revolter', '{"x":-1811.77539,"y":454.9523,"z":128.803162}', '{"x":0.43395555,"y":-0.157323509,"z":41.2114868}', 8, 23, 23, 265);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (13, 'ARM2', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Revolter', '{"x":-1808.08545,"y":454.9437,"z":128.8016}', '{"x":0.36299333,"y":-0.009218686,"z":40.8683167}', 8, 23, 23, 266);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (13, 'ARM3', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Revolter', '{"x":-1803.5238,"y":454.843231,"z":128.803223}', '{"x":0.241843551,"y":0.01138053,"z":46.4804077}', 9, 23, 23, 267);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (13, 'ARM4', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Turismo2', '{"x":-1800.02368,"y":460.9983,"z":128.939056}', '{"x":0.004167868,"y":0.04070229,"z":90.79523}', 5, 23, 23, 268);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (13, 'ARM5', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Dubsta', '{"x":-1790.60242,"y":462.653931,"z":128.861511}', '{"x":0.0377745852,"y":0.0386783,"z":136.779663}', 5, 23, 23, 269);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (13, 'ARM6', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Dubsta', '{"x":-1789.46326,"y":459.146667,"z":128.861755}', '{"x":-0.007887921,"y":0.04355207,"z":129.631226}', 4, 23, 23, 270);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (13, 'ARM7', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Dubsta', '{"x":-1787.97742,"y":455.9829,"z":128.862915}', '{"x":0.0197914038,"y":0.119012617,"z":117.927185}', 4, 23, 23, 271);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (13, 'ARM8', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Felon', '{"x":-1820.69934,"y":395.085236,"z":111.379}', '{"x":-3.27733684,"y":9.167961,"z":109.773865}', 2, 23, 23, 272);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (13, 'ARM9', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Felon', '{"x":-1813.99561,"y":397.2956,"z":112.504478}', '{"x":-2.58417821,"y":7.30826473,"z":109.797729}', 2, 23, 23, 273);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (13, 'ARM10', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Dubsta', '{"x":-1807.14832,"y":399.2698,"z":113.144951}', '{"x":-1.457383,"y":3.72270918,"z":106.323395}', 7, 23, 23, 274);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (13, 'ARM11', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Burrito3', '{"x":-1792.16077,"y":395.141968,"z":113.605049}', '{"x":-0.0830308348,"y":0.00646790629,"z":47.55786}', 7, 23, 23, 275);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (12, 'YAK1', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Jackal', '{"x":-1536.83423,"y":-85.4212,"z":54.8666725}', '{"x":-0.300451875,"y":0.234620228,"z":358.933746}', 7, 48, 48, 276);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (12, 'YAK2', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Jackal', '{"x":-1540.07092,"y":-85.82589,"z":54.86093}', '{"x":-0.170948148,"y":-0.02214021,"z":0.368713379}', 7, 48, 48, 277);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (12, 'YAK3', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Windsor2', '{"x":-1548.09155,"y":-83.53868,"z":54.5882378}', '{"x":-0.09211561,"y":0.0798090845,"z":270.467682}', 5, 48, 48, 278);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (12, 'YAK4', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'XLS', '{"x":-1561.32629,"y":-74.82666,"z":55.0568}', '{"x":0.0214437172,"y":-0.0274054985,"z":273.181458}', 5, 48, 48, 279);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (12, 'YAK5', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'XLS', '{"x":-1569.2865,"y":-75.70558,"z":55.0571136}', '{"x":0.07975337,"y":-0.0793952048,"z":272.432739}', 4, 48, 48, 280);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (12, 'YAK6', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'XLS', '{"x":-1577.13745,"y":-76.10648,"z":55.05701}', '{"x":0.00123191869,"y":-0.09987687,"z":271.400757}', 4, 48, 48, 281);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (12, 'YAK7', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Burrito3', '{"x":-1577.56189,"y":-80.03704,"z":54.9501648}', '{"x":-0.009107042,"y":-0.0427217446,"z":269.2853}', 8, 48, 48, 282);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (12, 'YAK8', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Burrito3', '{"x":-1577.54138,"y":-85.01933,"z":54.9508133}', '{"x":-0.105418004,"y":-0.00889161,"z":268.111481}', 8, 48, 48, 283);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (12, 'YAK9', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Kuruma', '{"x":-1560.74841,"y":-86.0877,"z":54.86405}', '{"x":-0.0689095557,"y":-0.005534506,"z":177.5564}', 2, 48, 48, 284);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (12, 'YAK10', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Kuruma', '{"x":-1563.57813,"y":-86.09229,"z":54.8640671}', '{"x":-0.0741436,"y":-0.00126617367,"z":180.747177}', 2, 48, 48, 285);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'PRISON1', '{}', 'pranger', '{"x":1869.80347,"y":2618.49976,"z":45.67201}', '{"x":0.0,"y":0.0,"z":269.903473}', 13, 73, 73, 287);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'PRISON2', '{}', 'pranger', '{"x":1869.78772,"y":2622.07959,"z":45.6720238}', '{"x":0.0,"y":0.0,"z":265.5458}', 13, 73, 73, 288);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'PRISON3', '{}', 'pranger', '{"x":1870.03735,"y":2625.78613,"z":45.6720238}', '{"x":0.0,"y":0.0,"z":265.418457}', 13, 73, 73, 289);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'PRISON4', '{}', 'pranger', '{"x":1870.23523,"y":2629.03784,"z":45.6720238}', '{"x":0.0,"y":0.0,"z":270.231934}', 13, 73, 73, 290);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'PRISON5', '{}', 'pranger', '{"x":1870.2019,"y":2632.814,"z":45.6720238}', '{"x":0.0,"y":0.0,"z":266.75}', 13, 73, 73, 291);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'PRISON6', '{}', 'pranger', '{"x":1870.34753,"y":2636.09277,"z":45.6720238}', '{"x":0.0,"y":0.0,"z":266.550781}', 13, 73, 73, 292);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'PRISON7', '{}', 'pranger', '{"x":1869.84338,"y":2639.562,"z":45.6720238}', '{"x":0.0,"y":0.0,"z":266.297272}', 13, 73, 73, 293);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'PRISON8', '{}', 'pranger', '{"x":1870.06726,"y":2642.96436,"z":45.67184}', '{"x":0.0,"y":0.0,"z":266.6244}', 13, 73, 73, 294);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'PRISON9', '{}', 'pbus', '{"x":1868.62085,"y":2595.14575,"z":45.6720238}', '{"x":0.0,"y":0.0,"z":267.611816}', 13, 73, 73, 295);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'PRISON10', '{}', 'pbus', '{"x":1868.5022,"y":2591.60645,"z":45.6720238}', '{"x":0.0,"y":0.0,"z":268.8429}', 13, 73, 73, 296);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (7, 'PRISON11', '{}', 'volatus', '{"x":1690.35474,"y":2604.732,"z":45.56486}', '{"x":0.0,"y":0.0,"z":178.796249}', 13, 73, 73, 297);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (15, 'NEWS1', '{}', 'rumpo', '{"x":-1065.1792,"y":-228.978577,"z":38.1795158}', '{"x":0.0,"y":0.0,"z":234.770233}', 5, 111, 1, 298);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (15, 'NEWS2', '{}', 'rumpo', '{"x":-1061.98889,"y":-226.67807,"z":38.1528435}', '{"x":0.0,"y":0.0,"z":240.262085}', 5, 111, 1, 299);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (15, 'NEWS3', '{}', 'rumpo', '{"x":-1058.35461,"y":-224.140076,"z":38.1005478}', '{"x":0.0,"y":0.0,"z":235.259583}', 5, 111, 1, 300);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (15, 'NEWS4', '{}', 'rumpo', '{"x":-1053.92615,"y":-222.26149,"z":38.0599136}', '{"x":0.0,"y":0.0,"z":241.027756}', 5, 111, 1, 301);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (15, 'NEWS5', '{}', 'rumpo', '{"x":-1050.2074,"y":-220.106415,"z":37.9381828}', '{"x":0.0,"y":0.0,"z":236.28125}', 5, 111, 1, 302);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (15, 'NEWS6', '{}', 'buzzard2', '{"x":-1080.09863,"y":-249.8955,"z":59.78906}', '{"x":0.0,"y":0.0,"z":117.626495}', 15, 111, 1, 303);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (15, 'NEWS7', '{}', 'Pariah', '{"x":-1096.11853,"y":-255.104187,"z":37.6777878}', '{"x":0.0,"y":0.0,"z":119.747345}', 16, 111, 1, 304);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (15, 'NEWS8', '{}', 'Lynx', '{"x":-1108.5907,"y":-277.4016,"z":37.676918}', '{"x":0.0,"y":0.0,"z":106.426117}', 11, 111, 1, 305);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (15, 'NEWS9', '{}', 'Lynx', '{"x":-1113.99219,"y":-278.850769,"z":37.6983}', '{"x":0.0,"y":0.0,"z":104.725578}', 11, 111, 1, 306);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (15, 'NEWS10', '{}', 'faggio3', '{"x":-1091.74792,"y":-265.7352,"z":37.7783279}', '{"x":0.0,"y":0.0,"z":198.052734}', 2, 111, 1, 307);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (15, 'NEWS11', '{}', 'faggio3', '{"x":-1089.521,"y":-265.171,"z":37.7503433}', '{"x":0.0,"y":0.0,"z":209.760071}', 2, 111, 1, 308);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (15, 'NEWS12', '{}', 'faggio3', '{"x":-1087.28906,"y":-264.021362,"z":37.75621}', '{"x":0.0,"y":0.0,"z":201.092484}', 2, 111, 1, 309);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (15, 'NEWS13', '{}', 'faggio3', '{"x":-1085.18567,"y":-263.077362,"z":37.75843}', '{"x":0.0,"y":0.0,"z":211.432785}', 2, 111, 1, 310);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (15, 'NEWS14', '{}', 'baller3', '{"x":-1090.40613,"y":-280.9552,"z":37.61473}', '{"x":0.0,"y":0.0,"z":285.424622}', 8, 111, 1, 311);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (15, 'NEWS15', '{}', 'baller3', '{"x":-1095.749,"y":-282.373322,"z":37.6377754}', '{"x":0.0,"y":0.0,"z":285.554932}', 8, 111, 1, 312);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY55', '{}', 'Havok', '{"x":-2177.97583,"y":3164.734,"z":32.8101044}', '{"x":0.0,"y":0.0,"z":328.7887}', 8, 99, 99, 313);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY56', '{}', 'Havok', '{"x":-2192.68384,"y":3174.35645,"z":32.8100967}', '{"x":0.0,"y":0.0,"z":327.5946}', 8, 99, 99, 314);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY57', '{}', 'Frogger', '{"x":-1992.64758,"y":3058.09,"z":32.8102875}', '{"x":0.0,"y":0.0,"z":325.2859}', 7, 99, 99, 315);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY58', '{}', 'Frogger', '{"x":-1927.6853,"y":3020.75269,"z":32.8102951}', '{"x":0.0,"y":0.0,"z":326.0328}', 7, 99, 99, 316);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (9, 'FIBFLY2', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'frogger2', '{"x":149.018234,"y":-754.3728,"z":262.9944}', '{"x":-0.134179369,"y":-0.562064469,"z":338.463623}', 11, 1, 1, 317);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (17, 'MWS01', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Terbyte', '{"x":2552.25,"y":-402.50,"z":92.99}', '{"x":0.0,"y":0.0,"z":272.96}', 1, 49, 49, 318);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (17, 'MWS02', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Kuruma', '{"x":2537.17,"y":-378.07,"z":92.99}', '{"x":0.0,"y":0.0,"z":165.67}', 1, 49, 49, 319);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (17, 'MWS03', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Kuruma', '{"x":2540.85,"y":-378.07,"z":92.99}', '{"x":0.0,"y":0.0,"z":165.67}', 1, 49, 49, 320);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (17, 'MWS05', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Kuruma', '{"x":2544.50,"y":-378.07,"z":92.99}', '{"x":0.0,"y":0.0,"z":165.67}', 1, 49, 49, 321);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (17, 'MWS04', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Kuruma', '{"x":2548.09,"y":-378.07,"z":92.99}', '{"x":0.0,"y":0.0,"z":165.67}', 1, 49, 49, 322);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (17, 'MWS16', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Frogger', '{"x":2511.32,"y":-341.89,"z":118.19}', '{"x":0.0,"y":0.0,"z":57.90}', 1, 49, 49, 323);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (17, 'MWS15', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Cog552', '{"x":2521.93,"y":-383.35,"z":92.99}', '{"x":0.0,"y":0.0,"z":178.66}', 1, 49, 49, 324);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (17, 'MWS14', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Brawler', '{"x":2530.73,"y":-402.93,"z":92.99}', '{"x":0.0,"y":0.0,"z":224.53}', 1, 49, 49, 325);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (17, 'MWS13', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Brawler', '{"x":2525.23,"y":-397.35,"z":92.99}', '{"x":0.0,"y":0.0,"z":224.53}', 1, 49, 49, 326);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (17, 'MWS12', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Mesa3', '{"x":2534.57,"y":-361.86,"z":92.99}', '{"x":0.0,"y":0.0,"z":311.62}', 1, 49, 49, 327);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (17, 'MWS11', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Mesa3', '{"x":2529.30,"y":-366.93,"z":92.99}', '{"x":0.0,"y":0.0,"z":311.62}', 1, 49, 49, 328);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (17, 'MWS10', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Mesa3', '{"x":2523.79,"y":-372.35,"z":92.99}', '{"x":0.0,"y":0.0,"z":311.62}', 1, 49, 49, 329);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (17, 'MWS09', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Baller5', '{"x":2537.26,"y":-390.81,"z":92.99}', '{"x":0.0,"y":0.0,"z":12.06}', 1, 49, 49, 330);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (17, 'MWS08', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Baller5', '{"x":2541.12,"y":-390.81,"z":92.99}', '{"x":0.0,"y":0.0,"z":12.06}', 1, 49, 49, 331);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (17, 'MWS07', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Rumpo3', '{"x":2544.66,"y":-390.81,"z":92.99}', '{"x":0.0,"y":0.0,"z":12.06}', 1, 49, 49, 332);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (17, 'MWS06', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Rumpo3', '{"x":2548.34,"y":-390.81,"z":92.99}', '{"x":0.0,"y":0.0,"z":12.06}', 1, 49, 49, 333);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (17, 'MWS17', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Frogger', '{"x":2511.49,"y":-426.46,"z":118.19}', '{"x":0.0,"y":0.0,"z":42.31}', 1, 49, 49, 334);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY59', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'lazer', '{"x":3068.34,"y":-4615.58,"z":15.26}', '{"x":0.0,"y":0.0,"z":106.27}', 12, 99, 1, 335);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY60', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'lazer', '{"x":3108.36,"y":-4761.22,"z":15.26}', '{"x":0.0,"y":0.0,"z":106.27}', 12, 99, 1, 336);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY61', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'savage', '{"x":3048.36,"y":-4762.85,"z":15.26}', '{"x":0.0,"y":0.0,"z":290.56}', 12, 99, 1, 337);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY62', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'cargobob3', '{"x":3115.74,"y":-4787.83,"z":15.26}', '{"x":0.0,"y":0.0,"z":108.24}', 12, 99, 1, 338);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY63', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'dinghy', '{"x":3096.54,"y":-4812.27,"z":1.04}', '{"x":0.0,"y":0.0,"z":194.81}', 12, 99, 1, 339);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (14, 'ARMY64', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'dinghy', '{"x":3086.74,"y":-4812.27,"z":1.04}', '{"x":0.0,"y":0.0,"z":194.81}', 12, 99, 1, 340);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (18, 'Sheriff1', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Sheriff', '{"x":-435.635468,"y":6032.05566,"z":31.5178642}', '{"x":0.342205435,"y":0.197096035,"z":208.64}', 0, 0, 1, 341);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (18, 'Sheriff2', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Sheriff', '{"x":-439.4983,"y":6029.916,"z":31.51695}', '{"x":0.6633728,"y":0.388851553,"z":212.087}', 0, 0, 1, 342);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (18, 'Sheriff3', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Sheriff', '{"x":-452.271942,"y":5998.48535,"z":31.51917}', '{"x":-0.0193028823,"y":0.167854875,"z":265.3626}', 0, 0, 1, 343);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (18, 'Sheriff4', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Sheriff', '{"x":-455.64798,"y":6002.089,"z":31.5192928}', '{"x":0.105739757,"y":0.322617322,"z":264.435547}', 0, 0, 1, 344);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (18, 'Sheriff5', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Sheriff', '{"x":-459.382477,"y":6005.8,"z":31.5170345}', '{"x":0.00731909461,"y":0.406080484,"z":266.130371}', 0, 0, 1, 345);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (18, 'Sheriff6', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Sheriff2', '{"x":-463.113434,"y":6009.4585,"z":31.5175018}', '{"x":-0.25124985,"y":0.6854923,"z":266.500641}', 0, 0, 1, 346);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (18, 'Sheriff7', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Sheriff2', '{"x":-482.256744,"y":6024.408,"z":31.5172825}', '{"x":-0.286874622,"y":-0.2924746,"z":44.26584}', 0, 0, 1, 347);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (18, 'Sheriff8', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Sheriff2', '{"x":-479.051971,"y":6027.844,"z":31.5172138}', '{"x":-0.244010568,"y":-0.336571932,"z":44.56244}', 0, 0, 1, 348);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (18, 'Sheriff9', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Sheriff', '{"x":-475.5173,"y":6031.286,"z":31.5181141}', '{"x":-0.266957074,"y":-0.2898007,"z":45.559967}', 0, 0, 1, 349);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (18, 'Sheriff10', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Sheriff', '{"x":-471.66568,"y":6034.85547,"z":31.5173016}', '{"x":-0.2901482,"y":-0.305691719,"z":44.3894348}', 0, 0, 1, 350);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (18, 'Sheriff11', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Sheriff', '{"x":-468.469727,"y":6038.498,"z":31.5184441}', '{"x":-0.0630238354,"y":-0.224015713,"z":44.7847}', 0, 0, 1, 351);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (18, 'Sheriff12', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Sheriff', '{"x":-460.9403,"y":6047.406,"z":31.5184879}', '{"x":-0.254084975,"y":0.105607674,"z":315.5944}', 0, 0, 1, 352);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (18, 'Sheriff13', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Sheriff2', '{"x":-458.095123,"y":6043.953,"z":31.518362}', '{"x":-0.3481215,"y":-0.0292744655,"z":314.901276}', 0, 0, 1, 353);
INSERT INTO `fractionvehicles` (`fraction`, `number`, `components`, `model`, `position`, `rotation`, `rank`, `colorprim`, `colorsec`, `idkey`) VALUES (18, 'Sheriff14', '{"PrimColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"SecColor":{"Red":0,"Green":0,"Blue":0,"Alpha":255},"PrimModColor":-1,"SecModColor":-1,"Muffler":-1,"SideSkirt":-1,"Hood":-1,"Spoiler":-1,"Lattice":-1,"Wings":-1,"Roof":-1,"Vinyls":-1,"FrontBumper":-1,"RearBumper":-1,"Engine":-1,"Turbo":-1,"Horn":-1,"Transmission":-1,"WindowTint":0,"Suspension":-1,"Brakes":-1,"Headlights":-1,"NumberPlate":0,"Wheels":-1,"WheelsType":0,"WheelsColor":0,"NeonColor":{"Red":0,"Green":0,"Blue":0,"Alpha":0},"Armor":-1}', 'Sheriff2', '{"x":-454.926117,"y":6040.89648,"z":31.5170479}', '{"x":-0.3007121,"y":0.322393775,"z":313.467682}', 0, 0, 1, 354);

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
	(1, 0, '{"x":306.3308,"y":-2022.97266,"z":19.6641884}', '{"x":0.28919673,"y":1.22567761,"z":323.386475}'),
	(2, 0, '{"x":308.8353,"y":-2024.99878,"z":19.7369423}', '{"x":1.06888866,"y":1.86222208,"z":320.153564}'),
	(3, 0, '{"x":310.9863,"y":-2026.833,"z":19.8331432}', '{"x":0.183384642,"y":1.33615971,"z":318.941772}'),
	(4, 0, '{"x":313.418121,"y":-2028.68054,"z":19.8751354}', '{"x":-0.408967763,"y":1.27423179,"z":320.255}'),
	(5, 0, '{"x":315.613129,"y":-2030.99768,"z":19.908802}', '{"x":-0.3189787,"y":1.16797006,"z":321.3879}'),
	(6, 0, '{"x":318.153717,"y":-2032.72278,"z":19.946291}', '{"x":-0.861367643,"y":1.51783919,"z":321.728424}'),
	(7, 0, '{"x":320.338165,"y":-2034.82373,"z":19.9719162}', '{"x":-1.13484228,"y":1.58200169,"z":323.152039}'),
	(8, 0, '{"x":322.261017,"y":-2036.68115,"z":19.99203}', '{"x":-1.19117165,"y":1.60068321,"z":319.796173}'),
	(9, 0, '{"x":324.517639,"y":-2038.71912,"z":20.0285625}', '{"x":-1.0797,"y":2.114232,"z":318.8557}'),
	(10, 0, '{"x":326.9625,"y":-2040.42468,"z":20.0917721}', '{"x":-1.14468527,"y":2.22789121,"z":320.267822}'),
	(11, 0, '{"x":329.635864,"y":-2042.15515,"z":20.1467438}', '{"x":-1.620252,"y":1.97530138,"z":322.061584}'),
	(12, 0, '{"x":331.873871,"y":-2044.58044,"z":20.1528625}', '{"x":-2.22251964,"y":1.94977212,"z":323.346252}'),
	(13, 0, '{"x":337.235382,"y":-2036.19043,"z":20.6593723}', '{"x":-2.74894452,"y":4.157428,"z":50.4411}'),
	(14, 0, '{"x":332.349518,"y":-2031.36267,"z":20.5320721}', '{"x":-2.57961249,"y":3.56527781,"z":142.436981}'),
	(15, 0, '{"x":330.096741,"y":-2029.56934,"z":20.4761944}', '{"x":-2.0694766,"y":3.20174432,"z":141.220428}'),
	(16, 0, '{"x":327.83963,"y":-2027.4762,"z":20.410532}', '{"x":-1.88560247,"y":3.52513337,"z":138.358643}'),
	(17, 0, '{"x":325.487366,"y":-2025.57629,"z":20.32554}', '{"x":-1.64253938,"y":3.78871322,"z":138.910278}'),
	(18, 0, '{"x":323.442871,"y":-2023.77478,"z":20.240221}', '{"x":-1.5254786,"y":3.74738765,"z":141.045959}'),
	(19, 0, '{"x":321.320343,"y":-2021.936,"z":20.154644}', '{"x":-1.5038389,"y":3.39848781,"z":139.221069}'),
	(20, 0, '{"x":318.789368,"y":-2019.561,"z":20.077467}', '{"x":-1.89252675,"y":3.71154356,"z":140.796814}'),
	(21, 0, '{"x":316.229034,"y":-2017.77246,"z":19.9434}', '{"x":-0.7808737,"y":3.98979783,"z":142.484863}'),
	(22, 5, '{"x":-720.073059,"y":77.06146,"z":55.187767}', '{"x":-0.0349616669,"y":0.0018839445,"z":24.11026}'),
	(23, 5, '{"x":-839.5977,"y":115.562653,"z":54.7263641}', '{"x":-0.868290544,"y":-1.03349531,"z":185.059448}'),
	(24, 5, '{"x":-1284.41028,"y":645.960938,"z":138.672791}', '{"x":-9.029148,"y":-1.20455337,"z":192.367523}'),
	(25, 0, '{"x":249.21608,"y":-2045.05457,"z":17.2363777}', '{"x":-1.799938,"y":-1.747228,"z":228.752121}'),
	(26, 0, '{"x":245.993744,"y":-2034.65686,"z":17.6080589}', '{"x":-1.00205374,"y":-0.8073587,"z":230.445251}'),
	(27, 0, '{"x":271.0536,"y":-2015.42615,"z":18.6916027}', '{"x":-4.06587648,"y":1.38689816,"z":228.800323}'),
	(28, 0, '{"x":282.9607,"y":-2004.2887,"z":19.5377674}', '{"x":-1.02644587,"y":0.678154469,"z":231.920517}'),
	(29, 0, '{"x":285.727478,"y":-1985.20972,"z":20.488102}', '{"x":-1.7765857,"y":1.48308778,"z":229.842743}'),
	(30, 0, '{"x":297.630249,"y":-1976.62354,"z":21.6905155}', '{"x":-0.7729907,"y":-1.39846814,"z":229.27742}'),
	(31, 0, '{"x":312.766754,"y":-1968.02075,"z":22.8737774}', '{"x":-3.91278315,"y":2.41042948,"z":227.295959}'),
	(32, 0, '{"x":318.031738,"y":-1945.0249,"z":23.9743843}', '{"x":-0.02894735,"y":0.0252609439,"z":230.088379}'),
	(33, 5, '{"x":-671.367,"y":911.0317,"z":229.662338}', '{"x":-3.53258061,"y":-5.238803,"z":322.197418}'),
	(34, 5, '{"x":-720.0269,"y":77.20651,"z":55.1878967}', '{"x":-0.051017,"y":0.000413143222,"z":22.6382751}'),
	(35, 0, '{"x":363.735046,"y":-1902.79248,"z":24.106842}', '{"x":-1.12205279,"y":0.323424518,"z":226.161957}'),
	(36, 0, '{"x":387.1604,"y":-1892.97693,"z":24.4496956}', '{"x":-3.121445,"y":-0.2529854,"z":222.302414}'),
	(37, 0, '{"x":397.689148,"y":-1875.31616,"z":25.54629}', '{"x":2.81966186,"y":-1.745343,"z":224.632813}'),
	(38, 0, '{"x":407.1065,"y":-1862.09375,"z":26.13337}', '{"x":-2.31543159,"y":2.31594276,"z":225.369492}'),
	(39, 0, '{"x":427.972015,"y":-1852.81274,"z":26.8568}', '{"x":-3.22140026,"y":-0.4109345,"z":227.224609}'),
	(40, 0, '{"x":435.3803,"y":-1835.29211,"z":27.3125172}', '{"x":0.0447110273,"y":0.0262333378,"z":223.739777}'),
	(41, -1, '{"x":1320.19592,"y":-1542.74219,"z":49.6629143}', '{"x":2.497576,"y":8.364815,"z":286.366547}'),
	(42, -1, '{"x":1336.82507,"y":-1548.56323,"z":52.15735}', '{"x":7.192618,"y":6.485021,"z":40.60083}'),
	(43, -1, '{"x":1335.77185,"y":-1537.84985,"z":51.5434761}', '{"x":2.162478,"y":5.68301,"z":267.791931}'),
	(44, -1, '{"x":1357.69617,"y":-1543.89954,"z":53.9452324}', '{"x":-4.859586,"y":5.43450737,"z":285.00235}'),
	(45, -1, '{"x":1372.50415,"y":-1520.87134,"z":56.63756}', '{"x":-7.509435,"y":-1.7256465,"z":198.060974}'),
	(46, -1, '{"x":1381.08618,"y":-1534.58813,"z":56.05348}', '{"x":-2.37047315,"y":2.66947579,"z":112.165131}'),
	(47, 5, '{"x":-1578.539,"y":-81.304184,"z":53.014492}', '{"x":0.0,"y":0.0,"z":271.9421}'),
	(48, 5, '{"x":-2597.154,"y":1929.70508,"z":166.639267}', '{"x":0.263080865,"y":-0.146755368,"z":276.5194}'),
	(49, 5, '{"x":-1526.89038,"y":855.702637,"z":180.924057}', '{"x":-0.752440155,"y":0.0658791661,"z":299.407074}'),
	(50, 5, '{"x":-1207.14319,"y":266.705017,"z":68.86664}', '{"x":-0.234035209,"y":0.140670151,"z":284.879883}'),
	(51, 0, '{"x":486.0619,"y":-1825.51392,"z":27.5278625}', '{"x":5.12384129,"y":7.42071438,"z":51.6329651}'),
	(52, 2, '{"x":1272.68079,"y":-1609.693,"z":53.40714}', '{"x":2.662431,"y":1.80316436,"z":34.05356}'),
	(53, 0, '{"x":1272.53833,"y":-1609.09155,"z":53.3752975}', '{"x":2.94997621,"y":2.25117755,"z":31.6286926}'),
	(54, 0, '{"x":1255.319,"y":-1624.02942,"z":52.6687469}', '{"x":-1.62896574,"y":0.548742235,"z":33.5834045}'),
	(55, 0, '{"x":1237.46191,"y":-1632.59436,"z":51.34475}', '{"x":2.38310885,"y":1.92086911,"z":32.8804932}'),
	(56, 0, '{"x":1226.87927,"y":-1602.90088,"z":51.2316628}', '{"x":-5.16306067,"y":1.93204129,"z":216.002884}'),
	(57, 0, '{"x":1215.04651,"y":-1620.75391,"z":47.6456337}', '{"x":-2.50345635,"y":8.589683,"z":120.030243}'),
	(58, 0, '{"x":1211.72021,"y":-1632.84338,"z":46.2046165}', '{"x":-6.576692,"y":6.93613243,"z":117.994812}'),
	(59, 0, '{"x":1197.08667,"y":-1631.97278,"z":43.60098}', '{"x":-3.58387756,"y":13.21006,"z":120.129852}'),
	(60, 0, '{"x":1190.59778,"y":-1645.99109,"z":40.97751}', '{"x":-7.44967461,"y":10.9841528,"z":125.791046}'),
	(61, 0, '{"x":1255.62427,"y":-1748.72913,"z":47.4014244}', '{"x":-7.51972675,"y":8.056554,"z":116.880066}'),
	(62, 0, '{"x":1257.42224,"y":-1742.14526,"z":48.2755127}', '{"x":-3.153002,"y":9.777723,"z":115.285553}'),
	(63, 0, '{"x":1303.05994,"y":-1742.25525,"z":53.178997}', '{"x":-0.0253155921,"y":-0.00386442267,"z":22.0980835}'),
	(64, 0, '{"x":1302.38989,"y":-1706.38025,"z":54.40888}', '{"x":-0.853291333,"y":1.66952026,"z":201.106125}'),
	(65, 0, '{"x":1331.50928,"y":-1735.23877,"z":55.48606}', '{"x":1.59788787,"y":4.67061138,"z":20.12738}'),
	(66, 0, '{"x":1330.642,"y":-1707.98022,"z":55.4928246}', '{"x":0.9193066,"y":7.688298,"z":108.542572}'),
	(67, 0, '{"x":1357.75989,"y":-1701.55432,"z":59.78902}', '{"x":5.958617,"y":9.955576,"z":281.9417}'),
	(68, 0, '{"x":1366.08057,"y":-1706.30029,"z":61.4777832}', '{"x":2.612745,"y":8.462314,"z":284.3271}'),
	(69, 0, '{"x":338.689423,"y":-207.432449,"z":53.3860626}', '{"x":-0.0286574066,"y":-0.03321916,"z":69.03137}'),
	(70, 0, '{"x":337.073059,"y":-210.549728,"z":53.3860779}', '{"x":-0.03045334,"y":-0.0234385915,"z":69.27985}'),
	(71, 0, '{"x":335.2934,"y":-213.683731,"z":53.38689}', '{"x":-0.0366404019,"y":-0.0370753855,"z":69.57056}'),
	(72, 0, '{"x":334.5663,"y":-216.910034,"z":53.3857155}', '{"x":-0.00981767,"y":-0.06480524,"z":68.26727}'),
	(73, 0, '{"x":318.0429,"y":-199.75856,"z":53.3864365}', '{"x":0.0244453438,"y":0.0337880068,"z":248.865631}'),
	(74, 0, '{"x":316.369446,"y":-202.847244,"z":53.3859444}', '{"x":0.0113720419,"y":0.0351227932,"z":250.714386}'),
	(75, 0, '{"x":316.3564,"y":-206.328278,"z":53.3868828}', '{"x":0.008085202,"y":-0.008400725,"z":249.9972}'),
	(76, -1, '{"x":884.4358,"y":2857.17432,"z":55.9393044}', '{"x":0.8850095,"y":-2.008708,"z":135.350952}'),
	(77, 0, '{"x":314.4841,"y":-209.319763,"z":53.386692}', '{"x":0.006119401,"y":-0.0142939324,"z":250.13681}'),
	(78, 0, '{"x":299.4307,"y":-235.421234,"z":53.2754021}', '{"x":2.00261474,"y":-0.5240554,"z":5.993408}'),
	(79, 0, '{"x":294.9674,"y":-233.501144,"z":53.2645149}', '{"x":2.30583048,"y":-0.8914507,"z":16.9040833}'),
	(80, 0, '{"x":289.138184,"y":-231.330475,"z":53.2630157}', '{"x":2.38933349,"y":-0.734292746,"z":10.6377258}'),
	(81, 0, '{"x":283.8979,"y":-229.5558,"z":53.264492}', '{"x":2.16082239,"y":-0.8021306,"z":10.9349976}'),
	(82, 0, '{"x":278.4013,"y":-227.42569,"z":53.25782}', '{"x":2.26965976,"y":-0.7527467,"z":12.1389465}'),
	(83, 0, '{"x":273.6913,"y":-225.658768,"z":53.25429}', '{"x":2.241158,"y":-0.737162232,"z":12.3921509}'),
	(84, 0, '{"x":325.165649,"y":-202.968353,"z":53.3859367}', '{"x":0.0255312733,"y":0.011880585,"z":158.718689}'),
	(85, 0, '{"x":331.028,"y":-204.88118,"z":53.3859978}', '{"x":0.03445293,"y":-0.0247219913,"z":161.260132}'),
	(86, 0, '{"x":318.888062,"y":-215.542542,"z":53.386158}', '{"x":0.0157712717,"y":-0.0133516146,"z":201.226166}'),
	(87, 0, '{"x":326.713837,"y":-219.5422,"z":53.3864}', '{"x":0.0113845831,"y":0.005491041,"z":121.897}'),
	(88, 0, '{"x":464.3061,"y":227.01976,"z":102.495689}', '{"x":-1.03883469,"y":0.410801917,"z":248.234161}'),
	(89, 0, '{"x":465.795441,"y":230.5596,"z":102.509552}', '{"x":-0.00146061834,"y":0.0379303843,"z":251.550613}'),
	(90, 0, '{"x":467.289429,"y":234.39267,"z":102.509796}', '{"x":0.012947293,"y":0.0241468,"z":249.4003}'),
	(91, 0, '{"x":468.584747,"y":238.6321,"z":102.510727}', '{"x":-0.0213605464,"y":-0.07618909,"z":250.546051}'),
	(92, 0, '{"x":469.8492,"y":242.338242,"z":102.509682}', '{"x":0.0169439986,"y":0.00245638634,"z":248.038025}'),
	(93, 0, '{"x":471.330231,"y":246.1607,"z":102.510048}', '{"x":0.0194613244,"y":0.0313623659,"z":250.761963}'),
	(94, 0, '{"x":472.697174,"y":250.188782,"z":102.510742}', '{"x":-0.0102892295,"y":0.00576520246,"z":252.381592}'),
	(95, 0, '{"x":473.932159,"y":254.084564,"z":102.508713}', '{"x":0.121276908,"y":-0.0109282611,"z":251.2284}'),
	(96, 0, '{"x":475.470734,"y":258.04422,"z":102.479584}', '{"x":0.5845486,"y":0.17094247,"z":249.9827}'),
	(97, 0, '{"x":458.610443,"y":264.922,"z":102.492485}', '{"x":-0.1277766,"y":-0.300711185,"z":251.122742}'),
	(98, 0, '{"x":457.78125,"y":261.181183,"z":102.503365}', '{"x":0.365515649,"y":-0.12888433,"z":249.344452}'),
	(99, 0, '{"x":456.218475,"y":257.097443,"z":102.50914}', '{"x":0.0102523761,"y":0.0249551032,"z":250.643555}'),
	(100, 0, '{"x":455.257324,"y":253.469025,"z":102.509}', '{"x":0.0119437166,"y":-0.00105391315,"z":252.003769}'),
	(101, 0, '{"x":453.5889,"y":249.668015,"z":102.508629}', '{"x":0.00175176514,"y":0.045195926,"z":249.74588}'),
	(102, 0, '{"x":451.9187,"y":246.041687,"z":102.509727}', '{"x":0.0119487839,"y":0.05059236,"z":251.440155}'),
	(103, 0, '{"x":450.586975,"y":241.768036,"z":102.53981}', '{"x":2.47902226,"y":0.3897109,"z":249.321243}'),
	(104, 0, '{"x":461.5311,"y":218.980057,"z":102.399963}', '{"x":-0.07675684,"y":0.0557640344,"z":251.183563}'),
	(105, 0, '{"x":1245.33569,"y":-578.3461,"z":68.6225052}', '{"x":-1.43313062,"y":-1.58510745,"z":268.80954}'),
	(106, 0, '{"x":1087.624,"y":-494.912018,"z":64.11845}', '{"x":0.7972066,"y":7.671755,"z":77.98639}'),
	(107, 0, '{"x":1099.60217,"y":-473.4788,"z":66.23935}', '{"x":-0.0697012,"y":-0.04404292,"z":258.1921}'),
	(108, 0, '{"x":1247.68262,"y":-585.9273,"z":68.4728546}', '{"x":-0.223666325,"y":-2.24953246,"z":268.508667}'),
	(109, 0, '{"x":1100.55823,"y":-429.046143,"z":66.69184}', '{"x":-0.0126298852,"y":0.0187053755,"z":263.178772}'),
	(110, 0, '{"x":1102.534,"y":-418.798,"z":66.45352}', '{"x":-0.206143469,"y":-0.00196203124,"z":266.1228}'),
	(111, 0, '{"x":1253.264,"y":-624.618347,"z":68.68353}', '{"x":-0.109507367,"y":0.026978014,"z":296.07193}'),
	(112, 1, '{"x":1103.13269,"y":-418.732544,"z":66.45389}', '{"x":-0.2228218,"y":-0.00367670413,"z":266.5146}'),
	(113, 1, '{"x":1109.57153,"y":-400.587036,"z":67.38448}', '{"x":-2.59004927,"y":1.42168164,"z":259.771057}'),
	(114, 1, '{"x":1100.66321,"y":-429.2656,"z":66.69355}', '{"x":-0.012686356,"y":-0.09285552,"z":265.705933}'),
	(115, 0, '{"x":1272.4552,"y":-658.3094,"z":67.0632858}', '{"x":-1.0834645,"y":-0.8362635,"z":294.050354}'),
	(116, 1, '{"x":1100.71887,"y":-473.4664,"z":66.23889}', '{"x":-0.04933191,"y":0.08591936,"z":257.960449}'),
	(117, 1, '{"x":1087.575,"y":-494.790955,"z":64.1101761}', '{"x":0.640300453,"y":8.050416,"z":258.181641}'),
	(118, 0, '{"x":1278.128,"y":-672.383545,"z":65.3826752}', '{"x":-2.497266,"y":2.76653433,"z":273.8769}'),
	(119, 1, '{"x":1049.65833,"y":-488.216858,"z":63.2258949}', '{"x":0.0884470344,"y":-0.07090199,"z":79.46625}'),
	(120, 0, '{"x":1262.52576,"y":-715.3399,"z":63.8376961}', '{"x":-1.82200146,"y":0.5446887,"z":239.033447}'),
	(121, 1, '{"x":1047.24866,"y":-481.314362,"z":63.2209}', '{"x":0.040182095,"y":0.009386889,"z":80.04773}'),
	(122, 1, '{"x":1055.60083,"y":-444.283356,"z":65.26678}', '{"x":-0.007669042,"y":-0.0148725687,"z":79.36035}'),
	(123, 1, '{"x":1021.70935,"y":-463.710754,"z":63.202404}', '{"x":-0.0230655838,"y":0.0980145261,"z":215.519272}'),
	(124, 1, '{"x":1225.14526,"y":-725.610168,"z":59.9280968}', '{"x":-0.557817161,"y":1.17124367,"z":183.269135}'),
	(125, 0, '{"x":1021.70935,"y":-463.7108,"z":63.2025337}', '{"x":-0.0286171064,"y":0.0840764344,"z":215.519}'),
	(126, 0, '{"x":960.349,"y":-500.281616,"z":60.6045227}', '{"x":3.1479156,"y":7.80949831,"z":37.1507568}'),
	(127, 1, '{"x":1219.66809,"y":-704.4649,"z":59.90569}', '{"x":-1.34009778,"y":4.927871,"z":97.95355}'),
	(128, 0, '{"x":949.1304,"y":-514.953,"z":59.53536}', '{"x":0.03486505,"y":0.266992539,"z":208.348389}'),
	(129, 0, '{"x":918.6786,"y":-528.3561,"z":58.5049}', '{"x":-0.4046844,"y":0.354094982,"z":204.115372}'),
	(130, 1, '{"x":1216.80078,"y":-665.1646,"z":62.18194}', '{"x":-0.0494381972,"y":4.03767252,"z":100.704285}'),
	(131, 1, '{"x":918.679138,"y":-528.355652,"z":58.502}', '{"x":-0.332031846,"y":0.391545147,"z":204.100159}'),
	(132, 1, '{"x":893.5571,"y":-550.0491,"z":57.4259262}', '{"x":0.06382326,"y":-0.003048866,"z":118.843445}'),
	(133, 1, '{"x":1200.7666,"y":-612.714,"z":64.62527}', '{"x":-3.38694143,"y":19.4603348,"z":94.04059}'),
	(134, 1, '{"x":925.1945,"y":-564.265137,"z":57.266758}', '{"x":0.0514621958,"y":-0.0775566,"z":25.7148743}'),
	(135, 1, '{"x":1190.0177,"y":-597.2199,"z":63.3016319}', '{"x":-0.8304979,"y":1.43844318,"z":97.59369}'),
	(136, 1, '{"x":954.8513,"y":-546.8967,"z":58.66506}', '{"x":0.285051674,"y":0.184990034,"z":26.7031555}'),
	(137, 1, '{"x":1187.46985,"y":-570.1218,"z":63.6670761}', '{"x":-0.695391536,"y":1.2029618,"z":91.9111938}'),
	(138, 0, '{"x":978.391968,"y":-527.1095,"z":59.4197426}', '{"x":0.07711594,"y":-0.245876908,"z":28.5651855}'),
	(139, 0, '{"x":955.0326,"y":-547.1715,"z":58.6671448}', '{"x":0.3169186,"y":0.140928552,"z":31.6431885}'),
	(140, 0, '{"x":1002.30475,"y":-512.4376,"z":59.9951324}', '{"x":0.114781208,"y":0.0120711252,"z":25.51538}'),
	(141, 1, '{"x":1189.23877,"y":-554.4206,"z":63.92257}', '{"x":-0.287544429,"y":1.57268691,"z":87.13931}'),
	(142, 0, '{"x":1007.61505,"y":-562.4639,"z":59.5006065}', '{"x":0.07054026,"y":-0.06311035,"z":81.08258}'),
	(143, 0, '{"x":1252.20007,"y":-522.886658,"z":68.31953}', '{"x":-0.6192333,"y":0.493680745,"z":256.132874}'),
	(144, 0, '{"x":1006.17493,"y":-588.7831,"z":58.42779}', '{"x":-0.868751168,"y":-0.47154817,"z":78.5694}'),
	(145, 0, '{"x":1254.93445,"y":-490.975067,"z":68.7808762}', '{"x":-0.0389284529,"y":-2.36447716,"z":256.169159}'),
	(146, 0, '{"x":977.916138,"y":-617.5301,"z":58.1444931}', '{"x":0.270840168,"y":0.179828733,"z":303.311768}'),
	(147, 1, '{"x":977.916138,"y":-617.5301,"z":58.1444931}', '{"x":0.270840168,"y":0.179828733,"z":303.311768}'),
	(148, 0, '{"x":977.197632,"y":-618.0029,"z":58.14552}', '{"x":0.163959026,"y":0.1741228,"z":303.308319}'),
	(149, 0, '{"x":1279.20935,"y":-474.976685,"z":68.28411}', '{"x":0.50531733,"y":2.07106447,"z":167.854736}'),
	(150, 0, '{"x":957.4825,"y":-602.5785,"z":58.67886}', '{"x":-0.0483961925,"y":0.0424351655,"z":26.1150818}'),
	(151, 0, '{"x":971.1037,"y":-583.8947,"z":58.57815}', '{"x":0.804914951,"y":-0.39390558,"z":33.0009766}'),
	(152, 0, '{"x":1273.89978,"y":-452.3247,"z":68.5728149}', '{"x":0.234122232,"y":-5.891609,"z":272.6256}'),
	(153, 0, '{"x":1264.853,"y":-417.2029,"z":68.43116}', '{"x":0.7356279,"y":-0.8158244,"z":302.409637}'),
	(154, 1, '{"x":1006.213,"y":-732.2785,"z":56.875145}', '{"x":-1.90030444,"y":3.15926361,"z":312.7031}'),
	(155, 1, '{"x":977.8475,"y":-712.8274,"z":57.08815}', '{"x":1.30915117,"y":-1.05340958,"z":132.510864}'),
	(156, 2, '{"x":1295.64783,"y":-567.1588,"z":70.5048447}', '{"x":5.10433531,"y":2.381178,"z":344.5135}'),
	(157, 1, '{"x":971.800232,"y":-686.5727,"z":57.0930977}', '{"x":1.90412974,"y":-4.43482971,"z":308.015045}'),
	(158, 1, '{"x":942.749146,"y":-670.8171,"z":57.3117676}', '{"x":0.0249165781,"y":-0.0234176032,"z":118.263824}'),
	(159, 1, '{"x":947.763367,"y":-656.3432,"z":57.32238}', '{"x":-0.240860164,"y":0.3544743,"z":127.805634}'),
	(160, 2, '{"x":1308.52954,"y":-534.3686,"z":70.63211}', '{"x":-0.196971744,"y":1.1242063,"z":162.170471}'),
	(161, 1, '{"x":914.178955,"y":-643.3315,"z":57.16266}', '{"x":-0.0184148084,"y":-0.003968732,"z":319.047363}'),
	(162, 1, '{"x":914.0002,"y":-629.9238,"z":57.3492241}', '{"x":-0.0123535749,"y":0.008640971,"z":137.965942}'),
	(163, 1, '{"x":871.989,"y":-601.3488,"z":57.5176048}', '{"x":0.205374539,"y":-0.123517059,"z":135.762878}'),
	(164, 1, '{"x":871.5414,"y":-590.30835,"z":57.35508}', '{"x":2.92190385,"y":-4.44438028,"z":314.728119}'),
	(165, 1, '{"x":844.424866,"y":-566.831238,"z":57.0096}', '{"x":-0.0342931971,"y":0.108552672,"z":99.51471}'),
	(166, 1, '{"x":840.477844,"y":-541.1765,"z":56.6267738}', '{"x":0.0234103464,"y":0.08434274,"z":84.82837}'),
	(167, 2, '{"x":1319.3175,"y":-574.4844,"z":72.27612}', '{"x":3.02859759,"y":2.164169,"z":335.0465}'),
	(168, 1, '{"x":853.7288,"y":-517.41156,"z":56.62882}', '{"x":-0.0331812054,"y":-0.048909016,"z":48.41922}'),
	(169, 1, '{"x":870.501953,"y":-502.654266,"z":56.7984123}', '{"x":0.05727596,"y":0.06058478,"z":44.80609}'),
	(170, 2, '{"x":1317.29736,"y":-537.301636,"z":71.31095}', '{"x":-1.37489665,"y":2.52849841,"z":159.575317}'),
	(171, 1, '{"x":911.7531,"y":-483.870941,"z":58.3372955}', '{"x":0.01969726,"y":-0.135987446,"z":23.5276489}'),
	(172, 2, '{"x":1352.95337,"y":-554.5135,"z":73.45657}', '{"x":4.484163,"y":-0.24870798,"z":155.6814}'),
	(173, 1, '{"x":930.8844,"y":-477.2382,"z":60.0028534}', '{"x":0.0206314512,"y":0.14721781,"z":26.074585}'),
	(174, 1, '{"x":940.9149,"y":-465.6165,"z":60.5531349}', '{"x":0.08872915,"y":0.02500134,"z":30.0944824}'),
	(175, 2, '{"x":1351.65576,"y":-595.1947,"z":73.67215}', '{"x":-0.139340371,"y":-0.0586860739,"z":315.727}'),
	(176, 1, '{"x":974.545654,"y":-451.842926,"z":61.7211075}', '{"x":0.5560082,"y":0.567770958,"z":34.9042969}'),
	(177, 2, '{"x":1362.13977,"y":-555.8651,"z":73.6721954}', '{"x":0.103256129,"y":0.104736246,"z":158.260376}'),
	(178, 1, '{"x":989.1693,"y":-437.279846,"z":63.04582}', '{"x":0.3987098,"y":-0.564513147,"z":303.696472}'),
	(179, 1, '{"x":1010.96265,"y":-417.389862,"z":64.25387}', '{"x":-0.0236302614,"y":0.0008021625,"z":36.5239258}'),
	(180, 2, '{"x":1359.79932,"y":-601.3592,"z":73.6721344}', '{"x":-0.0602567755,"y":-0.126523986,"z":358.176941}'),
	(181, 1, '{"x":1018.1806,"y":-413.3934,"z":65.24978}', '{"x":0.0149722081,"y":-0.317216545,"z":33.6077881}'),
	(182, 2, '{"x":1379.20044,"y":-597.211365,"z":73.6721344}', '{"x":0.07139139,"y":-0.125930473,"z":51.68228}'),
	(183, 1, '{"x":1051.06335,"y":-381.098419,"z":67.15389}', '{"x":0.0371558778,"y":0.04714894,"z":40.2737732}'),
	(184, 1, '{"x":1403.15955,"y":-571.409546,"z":73.6416}', '{"x":0.0606115125,"y":0.0595534146,"z":291.444458}'),
	(185, 2, '{"x":1399.20459,"y":-572.7282,"z":73.63977}', '{"x":0.04078417,"y":-0.09676619,"z":291.065643}'),
	(186, 1, '{"x":-1020.56409,"y":-1132.97083,"z":1.44207549}', '{"x":0.752301,"y":0.06137582,"z":29.1805725}'),
	(187, 1, '{"x":-1026.79553,"y":-1129.73462,"z":1.46546412}', '{"x":0.4794352,"y":-0.1391713,"z":209.593826}'),
	(188, 1, '{"x":-1037.74512,"y":-1142.70862,"z":1.41373253}', '{"x":2.30583453,"y":1.1927948,"z":300.306671}'),
	(189, 1, '{"x":-1045.07178,"y":-1141.05054,"z":1.43891644}', '{"x":-0.822091,"y":-0.294718444,"z":208.520279}'),
	(190, 1, '{"x":-1047.32556,"y":-1152.12549,"z":1.45843124}', '{"x":0.0111408429,"y":0.00162937632,"z":209.011078}'),
	(191, 1, '{"x":-1060.04517,"y":-1154.2439,"z":1.44051182}', '{"x":0.5729067,"y":0.216861069,"z":31.7667542}'),
	(192, 1, '{"x":-1076.13208,"y":-1159.05237,"z":1.437269}', '{"x":-0.9270952,"y":-0.202749744,"z":211.678833}'),
	(193, 1, '{"x":-1074.91443,"y":-1164.36829,"z":1.45443487}', '{"x":0.0992424041,"y":0.637545049,"z":299.0922}'),
	(194, 1, '{"x":-987.374451,"y":-1112.71289,"z":1.415707}', '{"x":1.42232037,"y":0.6017128,"z":209.780884}'),
	(195, 1, '{"x":-988.370361,"y":-1107.73047,"z":1.41902757}', '{"x":-1.109633,"y":-1.73071051,"z":298.298}'),
	(196, 1, '{"x":-974.129761,"y":-1104.47217,"z":1.44381511}', '{"x":0.485567749,"y":0.158071056,"z":298.1047}'),
	(197, 1, '{"x":-978.724,"y":-1102.55066,"z":1.37468791}', '{"x":-0.7199251,"y":0.08148,"z":300.014038}'),
	(198, 1, '{"x":-961.733337,"y":-1102.06641,"z":1.450155}', '{"x":-0.00532346824,"y":-0.0127413329,"z":209.7345}'),
	(199, 1, '{"x":-950.8731,"y":-1098.19067,"z":1.44941056}', '{"x":-0.0553956181,"y":-0.0260298569,"z":30.5349426}'),
	(200, 1, '{"x":-955.7924,"y":-1083.86792,"z":1.45005262}', '{"x":0.02449257,"y":0.003847679,"z":211.98526}'),
	(201, 1, '{"x":-1164.28809,"y":-1091.807,"z":1.38970828}', '{"x":-1.03897285,"y":-0.7540575,"z":117.188171}'),
	(202, 1, '{"x":-934.666565,"y":-1080.31055,"z":1.41126227}', '{"x":1.19615328,"y":1.20349014,"z":29.7527771}'),
	(203, 1, '{"x":-1156.56067,"y":-1132.91113,"z":2.13388777}', '{"x":0.159938008,"y":-0.6436362,"z":119.922668}'),
	(204, 1, '{"x":-936.2235,"y":-1074.63489,"z":1.45000088}', '{"x":0.0278339125,"y":-0.009307106,"z":119.212616}'),
	(205, 1, '{"x":-1154.92139,"y":-1136.49939,"z":2.12227583}', '{"x":-0.0250774939,"y":-0.341819882,"z":119.529419}'),
	(206, 1, '{"x":-1148.6062,"y":-1145.40088,"z":2.203151}', '{"x":-1.416801,"y":-0.600740731,"z":120.770813}'),
	(207, 1, '{"x":-985.3437,"y":-986.271545,"z":1.31576872}', '{"x":1.3718158,"y":1.53974891,"z":298.8178}'),
	(208, 1, '{"x":-991.4487,"y":-985.902832,"z":1.42633975}', '{"x":-1.56448174,"y":-0.7805287,"z":118.526611}'),
	(209, 1, '{"x":-1009.79449,"y":-1009.33759,"z":1.4498986}', '{"x":0.029744748,"y":0.0170502178,"z":210.659561}'),
	(210, 1, '{"x":-1144.75366,"y":-1153.16675,"z":2.13982654}', '{"x":0.160849214,"y":0.272933781,"z":121.532745}'),
	(211, 1, '{"x":-1019.48181,"y":-1002.23535,"z":1.44128335}', '{"x":-0.580399,"y":-0.339477181,"z":119.686035}'),
	(212, 1, '{"x":-1141.99,"y":-1155.59607,"z":2.09106469}', '{"x":-1.07376325,"y":-0.768052,"z":298.4376}'),
	(213, 1, '{"x":-1022.61804,"y":-1014.03345,"z":1.4500984}', '{"x":0.01875926,"y":0.008423615,"z":207.732208}'),
	(214, 1, '{"x":-1138.195,"y":-1166.39,"z":2.03514218}', '{"x":0.383401781,"y":-0.698455334,"z":120.19873}'),
	(215, 1, '{"x":-1038.19189,"y":-1019.56921,"z":1.43423092}', '{"x":0.389801383,"y":0.62490344,"z":31.039856}'),
	(216, 1, '{"x":-1131.41235,"y":-1172.57239,"z":1.68354809}', '{"x":-0.0462847427,"y":-0.3512429,"z":300.3929}'),
	(217, 1, '{"x":-1042.56079,"y":-1011.59991,"z":1.4499259}', '{"x":0.0232487936,"y":0.0162906125,"z":208.714127}'),
	(218, 1, '{"x":-1117.16223,"y":-1186.05981,"z":1.474132}', '{"x":-0.783168435,"y":-0.61519134,"z":301.081543}'),
	(219, 1, '{"x":-1076.27185,"y":-1045.60669,"z":1.44991064}', '{"x":-0.008779396,"y":-0.00512478361,"z":28.90213}'),
	(220, 1, '{"x":-1110.916,"y":-1229.83069,"z":1.91737556}', '{"x":0.54313457,"y":0.3063169,"z":112.331848}'),
	(221, 1, '{"x":-1095.86572,"y":-1044.18384,"z":1.468074}', '{"x":-0.222340539,"y":0.3622868,"z":297.4236}'),
	(222, 1, '{"x":-1111.344,"y":-1238.289,"z":1.74403107}', '{"x":-3.42407823,"y":4.11955833,"z":30.1307678}'),
	(223, 1, '{"x":-1107.49792,"y":-1049.10107,"z":1.45032823}', '{"x":0.0464611761,"y":0.0161469318,"z":209.274628}'),
	(224, 1, '{"x":-1211.7052,"y":-1025.91687,"z":1.4779377}', '{"x":-0.26253742,"y":-0.09793696,"z":303.866425}'),
	(225, 1, '{"x":-1100.55481,"y":-1053.85181,"z":1.42328382}', '{"x":1.01984811,"y":0.5297388,"z":31.3685}'),
	(226, 1, '{"x":-1203.77063,"y":-1037.45471,"z":1.47790945}', '{"x":0.228082672,"y":0.105697252,"z":121.558777}'),
	(227, 1, '{"x":-1116.91333,"y":-1064.77991,"z":1.41449428}', '{"x":2.12574172,"y":1.60902786,"z":300.128357}'),
	(228, 1, '{"x":-1199.438,"y":-1055.89258,"z":1.47515273}', '{"x":0.197239026,"y":0.775881648,"z":200.772}'),
	(229, 1, '{"x":-1121.663,"y":-1051.509,"z":1.45019937}', '{"x":-0.000280248525,"y":-0.000172483822,"z":29.3138123}'),
	(230, 1, '{"x":-1190.09851,"y":-1066.3728,"z":1.47792876}', '{"x":0.205737486,"y":0.103701524,"z":119.650513}'),
	(231, 1, '{"x":-1130.23853,"y":-1072.06934,"z":1.41611636}', '{"x":1.43402112,"y":0.4180223,"z":31.8911133}'),
	(232, 1, '{"x":-1187.41406,"y":-1077.17957,"z":1.47772682}', '{"x":0.234099671,"y":0.1019552,"z":119.488586}'),
	(233, 1, '{"x":-3083.822,"y":220.11496,"z":13.323823}', '{"x":-0.0734182745,"y":-0.316258729,"z":317.679138}'),
	(234, 1, '{"x":-3176.35,"y":1296.17249,"z":14.1447029}', '{"x":-2.14095449,"y":0.0257356558,"z":248.467743}'),
	(235, 1, '{"x":-3097.48,"y":746.3721,"z":20.5535374}', '{"x":-2.75234056,"y":-2.74950266,"z":231.196945}'),
	(236, 1, '{"x":-3183.09326,"y":1277.52844,"z":12.3478613}', '{"x":-1.505761,"y":1.63139236,"z":254.415283}'),
	(237, 1, '{"x":-3186.3916,"y":1223.08667,"z":9.652463}', '{"x":-0.92195034,"y":0.5286771,"z":262.6923}'),
	(238, 1, '{"x":-3101.7793,"y":716.678345,"z":19.8090744}', '{"x":-2.95656,"y":0.06049772,"z":284.764343}'),
	(239, 1, '{"x":-3188.82471,"y":1197.47131,"z":9.136649}', '{"x":-0.249107748,"y":1.52993619,"z":261.077362}'),
	(240, 1, '{"x":-3073.214,"y":656.738,"z":10.5922394}', '{"x":4.62549829,"y":-10.1233826,"z":131.0523}'),
	(241, 1, '{"x":-3028.5166,"y":572.996338,"z":6.994729}', '{"x":0.7134291,"y":-4.66594172,"z":282.474731}'),
	(242, 1, '{"x":-3189.84375,"y":1184.323,"z":9.020672}', '{"x":0.579500258,"y":1.48629451,"z":172.291443}'),
	(243, 1, '{"x":-3033.48413,"y":555.631,"z":6.835764}', '{"x":-0.221507922,"y":-0.05199334,"z":273.989258}'),
	(244, 1, '{"x":-3195.288,"y":1158.85266,"z":9.203925}', '{"x":-0.438517421,"y":-1.92088163,"z":250.258392}'),
	(245, 1, '{"x":-3029.60474,"y":520.956238,"z":6.68331337}', '{"x":-0.898285568,"y":-1.34478652,"z":264.103149}'),
	(246, 1, '{"x":-3203.34058,"y":1138.75354,"z":9.520713}', '{"x":-0.166529864,"y":-0.6466618,"z":245.673615}'),
	(247, 1, '{"x":-3032.354,"y":499.250427,"z":6.1273756}', '{"x":-0.38465178,"y":0.5690849,"z":260.778229}'),
	(248, 1, '{"x":-3041.00366,"y":478.9607,"z":6.10768747}', '{"x":0.351669252,"y":0.168873861,"z":74.6613159}'),
	(249, 1, '{"x":-3220.26953,"y":1105.46912,"z":10.133337}', '{"x":-0.436739415,"y":-1.77705717,"z":250.174835}'),
	(250, 1, '{"x":-3058.43,"y":442.045319,"z":5.68972635}', '{"x":-0.397248834,"y":-0.211871058,"z":246.969879}'),
	(251, 1, '{"x":-3225.26074,"y":1086.02087,"z":10.3454762}', '{"x":2.49012041,"y":3.08568859,"z":163.318176}'),
	(252, 1, '{"x":-3074.05322,"y":395.4868,"z":6.296767}', '{"x":-0.334301353,"y":-0.151056319,"z":253.110825}'),
	(253, 1, '{"x":-3079.09131,"y":371.3547,"z":6.454534}', '{"x":0.252038419,"y":0.0115334466,"z":73.79617}'),
	(254, 1, '{"x":-3228.87817,"y":1071.49207,"z":10.6137037}', '{"x":1.3889339,"y":2.00661564,"z":259.6368}'),
	(255, 1, '{"x":-3088.90771,"y":340.757141,"z":6.73259354}', '{"x":0.0264017247,"y":-1.0401696,"z":72.86447}'),
	(256, 1, '{"x":-3234.214,"y":1051.80237,"z":10.8445864}', '{"x":0.847446859,"y":2.048419,"z":264.133423}'),
	(257, 1, '{"x":-3091.54346,"y":322.526947,"z":6.83644438}', '{"x":0.205824941,"y":0.299209,"z":256.090546}'),
	(258, 1, '{"x":-3237.45923,"y":1034.438,"z":11.3443632}', '{"x":0.863197744,"y":0.311722457,"z":264.31424}'),
	(259, 1, '{"x":-3098.4314,"y":306.96814,"z":7.696529}', '{"x":0.174656123,"y":-0.505830944,"z":72.06604}'),
	(260, 1, '{"x":-3233.67749,"y":948.544861,"z":12.935}', '{"x":0.4756325,"y":3.64241624,"z":282.395325}'),
	(261, 1, '{"x":-3101.21851,"y":289.30307,"z":8.296385}', '{"x":1.71394682,"y":-0.568213642,"z":74.7679443}'),
	(262, 1, '{"x":-3231.31055,"y":939.9434,"z":13.3769951}', '{"x":1.31681061,"y":-1.97647893,"z":289.755371}'),
	(263, 1, '{"x":-3104.529,"y":253.233429,"z":11.4870186}', '{"x":4.23592949,"y":-7.69576645,"z":282.548828}'),
	(264, 1, '{"x":-3224.07178,"y":924.786438,"z":13.6074057}', '{"x":0.377418429,"y":0.239076212,"z":300.0449}'),
	(265, 1, '{"x":-3216.69165,"y":915.48645,"z":13.6735916}', '{"x":-1.2557385,"y":1.26585507,"z":317.835175}'),
	(266, 3, '{"x":-3017.53345,"y":739.515259,"z":26.91748}', '{"x":0.300706,"y":0.2718161,"z":111.663666}'),
	(267, 2, '{"x":-2993.62964,"y":705.2482,"z":27.826683}', '{"x":0.167383239,"y":0.142676964,"z":114.953979}'),
	(268, 2, '{"x":-2998.526,"y":687.6408,"z":24.5723476}', '{"x":-3.60436177,"y":12.529417,"z":106.122559}'),
	(269, 2, '{"x":-2980.22949,"y":655.269836,"z":24.9218845}', '{"x":-2.27306533,"y":8.730806,"z":104.973267}'),
	(270, 2, '{"x":-2980.47632,"y":612.7522,"z":19.5368}', '{"x":0.536404431,"y":1.90520787,"z":101.836639}'),
	(271, -1, '{"x":339.266174,"y":2568.31543,"z":42.85872}', '{"x":0.488704264,"y":-0.274137378,"z":209.4793}'),
	(272, -1, '{"x":361.5359,"y":2573.83667,"z":42.8522377}', '{"x":-0.0200520232,"y":-0.0112498375,"z":27.1528625}'),
	(273, -1, '{"x":376.538147,"y":2578.99463,"z":42.8525162}', '{"x":-0.0262214858,"y":-0.00559048029,"z":19.0576172}'),
	(274, -1, '{"x":396.0783,"y":2589.6792,"z":42.8524437}', '{"x":-0.0283325221,"y":-0.0106838914,"z":108.840881}'),
	(275, -1, '{"x":1137.634,"y":2656.98779,"z":37.5812874}', '{"x":-0.00412730547,"y":-0.0618062951,"z":92.3717957}'),
	(276, -1, '{"x":386.986847,"y":2638.28223,"z":43.8287773}', '{"x":0.0464484878,"y":-0.0430518426,"z":30.2751465}'),
	(277, -1, '{"x":1137.86169,"y":2651.05933,"z":37.5771255}', '{"x":-0.01179523,"y":0.129020676,"z":88.4283142}'),
	(278, -1, '{"x":374.568237,"y":2633.32471,"z":43.83094}', '{"x":-0.0315650776,"y":-0.0202927049,"z":30.1107178}'),
	(279, -1, '{"x":1135.23438,"y":2647.24268,"z":37.5739479}', '{"x":0.212600678,"y":-0.007507281,"z":359.6101}'),
	(280, -1, '{"x":361.671844,"y":2628.701,"z":43.8302727}', '{"x":-0.04460643,"y":-0.0201458838,"z":30.4292}'),
	(281, -1, '{"x":1131.34753,"y":2647.041,"z":37.5732574}', '{"x":0.09655002,"y":-0.0292111449,"z":359.48645}'),
	(282, -1, '{"x":348.887817,"y":2624.26074,"z":43.83308}', '{"x":0.00536757,"y":-0.0207648519,"z":29.9164429}'),
	(283, -1, '{"x":1127.75684,"y":2648.526,"z":37.5743523}', '{"x":0.104055084,"y":-0.0219079,"z":4.250885}'),
	(284, -1, '{"x":336.972961,"y":2619.44238,"z":43.8303833}', '{"x":0.0626243353,"y":0.113149062,"z":24.5472412}'),
	(285, -1, '{"x":1124.1521,"y":2647.86426,"z":37.5736046}', '{"x":0.146706864,"y":-0.218193248,"z":2.904358}'),
	(286, -1, '{"x":1120.68213,"y":2647.52661,"z":37.5735054}', '{"x":0.0624286979,"y":-0.009876269,"z":1.33822632}'),
	(287, -1, '{"x":1116.80579,"y":2647.63,"z":37.5732956}', '{"x":0.07218886,"y":0.00603483524,"z":358.759369}'),
	(288, -1, '{"x":1112.11816,"y":2647.40967,"z":37.573616}', '{"x":0.110817686,"y":-0.0127833765,"z":357.795715}'),
	(289, -1, '{"x":1111.05139,"y":2652.13062,"z":37.57321}', '{"x":0.00162625534,"y":-0.0697201043,"z":270.907654}'),
	(290, -1, '{"x":1111.173,"y":2656.58813,"z":37.5720444}', '{"x":0.0200523678,"y":-0.124936782,"z":270.196}'),
	(291, -1, '{"x":1105.64685,"y":2662.86768,"z":37.55273}', '{"x":-0.150976181,"y":0.00699682534,"z":0.6168823}'),
	(292, -1, '{"x":885.5021,"y":2846.403,"z":56.25335}', '{"x":0.517142355,"y":-0.2696134,"z":134.812958}'),
	(293, -1, '{"x":870.9132,"y":2872.78149,"z":56.47126}', '{"x":0.108919546,"y":-1.38271713,"z":187.970367}'),
	(294, -1, '{"x":857.3363,"y":2850.93921,"z":57.1373672}', '{"x":0.3338655,"y":-3.11990285,"z":247.611542}'),
	(295, -1, '{"x":1870.45227,"y":3915.199,"z":32.30007}', '{"x":0.23196499,"y":-0.995937347,"z":195.423141}'),
	(296, -1, '{"x":1893.62158,"y":3887.66113,"z":32.1383667}', '{"x":-0.335304648,"y":1.39673448,"z":118.777893}'),
	(297, -1, '{"x":1894.821,"y":3860.945,"z":31.7945786}', '{"x":-1.27140474,"y":0.9099434,"z":210.359024}'),
	(298, -1, '{"x":1932.125,"y":3882.79761,"z":31.7507572}', '{"x":-2.73432231,"y":-2.88893056,"z":208.259842}'),
	(299, -1, '{"x":1932.42175,"y":3925.94165,"z":31.6942635}', '{"x":-1.80084383,"y":1.61926091,"z":233.756409}'),
	(300, -1, '{"x":1909.9668,"y":3812.92334,"z":31.595068}', '{"x":2.16436362,"y":-4.694561,"z":35.322113}'),
	(301, -1, '{"x":1923.47021,"y":3792.63428,"z":31.6232777}', '{"x":-1.38343835,"y":0.355577439,"z":211.2028}'),
	(302, -1, '{"x":1980.66187,"y":3806.673,"z":31.4924622}', '{"x":2.23509359,"y":1.258016,"z":118.858063}'),
	(303, -1, '{"x":1901.50586,"y":3765.10425,"z":31.8918419}', '{"x":-3.66153884,"y":-2.23537683,"z":209.988861}'),
	(304, -1, '{"x":1892.838,"y":3814.45728,"z":31.6823864}', '{"x":0.9756285,"y":-1.84914231,"z":304.979248}'),
	(305, -1, '{"x":1838.0979,"y":3771.7312,"z":32.714138}', '{"x":-1.91330361,"y":2.52236915,"z":208.671936}'),
	(306, -1, '{"x":1754.25842,"y":3832.59424,"z":34.00901}', '{"x":1.03904676,"y":-0.669008732,"z":29.1123962}'),
	(307, -1, '{"x":1723.46143,"y":3818.41235,"z":34.2157326}', '{"x":-2.5360682,"y":-1.8612262,"z":121.629028}'),
	(308, -1, '{"x":1741.60034,"y":3772.92,"z":33.2098236}', '{"x":-0.09607381,"y":-4.763753,"z":210.036346}'),
	(309, -1, '{"x":1767.22363,"y":3756.77515,"z":33.10628}', '{"x":-0.0586666428,"y":-0.295788735,"z":297.474}'),
	(310, -1, '{"x":1779.36938,"y":3784.82861,"z":33.049942}', '{"x":3.27997637,"y":1.4150995,"z":119.682678}'),
	(311, -1, '{"x":1737.74683,"y":3853.712,"z":33.9757919}', '{"x":2.07664561,"y":-1.767333,"z":214.242126}'),
	(312, -1, '{"x":1691.07959,"y":3874.91357,"z":34.0976944}', '{"x":0.270841,"y":0.456633627,"z":312.3515}'),
	(313, -1, '{"x":1752.68848,"y":3892.02246,"z":34.04631}', '{"x":-0.8044237,"y":0.31718564,"z":33.4364}'),
	(314, -1, '{"x":1778.482,"y":3929.04443,"z":33.6716652}', '{"x":0.252341568,"y":-1.49795473,"z":106.184387}'),
	(315, -1, '{"x":1801.873,"y":3932.862,"z":33.13928}', '{"x":2.329348,"y":-0.99685353,"z":12.1304321}'),
	(316, -1, '{"x":1847.12939,"y":3921.54,"z":32.4092979}', '{"x":0.3726753,"y":-1.71102035,"z":282.144135}'),
	(317, -1, '{"x":3696.57739,"y":4563.236,"z":24.5691319}', '{"x":3.39417481,"y":-0.60899514,"z":179.4129}'),
	(318, -1, '{"x":3713.927,"y":4522.55225,"z":20.9878387}', '{"x":-0.4463577,"y":1.58383667,"z":137.357666}'),
	(319, 0, '{"x":3331.62769,"y":5157.06055,"z":17.6260185}', '{"x":0.07703561,"y":-0.17194131,"z":152.837463}'),
	(320, -1, '{"x":21.5043068,"y":6658.784,"z":30.84612}', '{"x":-0.413007051,"y":0.163321078,"z":182.347}'),
	(321, -1, '{"x":-15.0782337,"y":6643.795,"z":30.4228268}', '{"x":-0.751192331,"y":0.06746805,"z":208.699966}'),
	(322, -1, '{"x":-7.18539667,"y":6620.34131,"z":30.5853176}', '{"x":6.05935764,"y":3.86339784,"z":31.16092}'),
	(323, -1, '{"x":-51.4084244,"y":6589.88428,"z":29.6790276}', '{"x":10.1445866,"y":7.21803665,"z":40.4060974}'),
	(324, -1, '{"x":-7.778161,"y":6560.04443,"z":31.3033829}', '{"x":-0.009667761,"y":-0.0165917277,"z":44.7089233}'),
	(325, -1, '{"x":21.1077385,"y":6576.929,"z":31.2303715}', '{"x":-5.14247274,"y":-5.043249,"z":44.229126}'),
	(326, -1, '{"x":46.0893974,"y":6601.052,"z":31.26825}', '{"x":-2.69610739,"y":-3.7525866,"z":49.38916}'),
	(327, -1, '{"x":-120.728607,"y":6559.544,"z":28.8461246}', '{"x":-0.239958048,"y":-0.258422822,"z":224.723}'),
	(328, -1, '{"x":-108.8279,"y":6538.317,"z":29.1161289}', '{"x":0.7220967,"y":0.7343003,"z":46.7844849}'),
	(329, -1, '{"x":-191.364563,"y":6422.042,"z":31.1087151}', '{"x":2.23944163,"y":2.78114247,"z":45.4631042}'),
	(330, -1, '{"x":-232.157883,"y":6419.55664,"z":30.597929}', '{"x":1.78611517,"y":0.181137308,"z":217.91066}'),
	(331, -1, '{"x":-207.160568,"y":6407.952,"z":31.0694771}', '{"x":2.19140863,"y":2.16443229,"z":224.183914}'),
	(332, -1, '{"x":-227.636978,"y":6391.90869,"z":30.800148}', '{"x":0.438066185,"y":2.21514988,"z":214.42247}'),
	(333, -1, '{"x":-262.3484,"y":6402.196,"z":30.2679367}', '{"x":-0.9070187,"y":0.154452771,"z":203.735489}'),
	(334, -1, '{"x":-257.1984,"y":6362.292,"z":30.8133011}', '{"x":0.0251292922,"y":0.0133445561,"z":222.9628}'),
	(335, -1, '{"x":-272.4165,"y":6359.09668,"z":31.3845081}', '{"x":6.04398775,"y":4.13225365,"z":41.1732178}'),
	(336, -1, '{"x":-320.785736,"y":6319.62842,"z":30.74524}', '{"x":8.166174,"y":7.975442,"z":225.322235}'),
	(337, -1, '{"x":-353.8614,"y":6335.393,"z":29.1726437}', '{"x":-0.0459854864,"y":0.203361183,"z":217.514328}'),
	(338, -1, '{"x":-346.530731,"y":6313.2124,"z":29.2107849}', '{"x":-1.83178842,"y":-0.94834125,"z":310.268341}'),
	(339, -1, '{"x":-395.4197,"y":6311.336,"z":28.3466549}', '{"x":2.69906664,"y":3.26014447,"z":39.4135132}'),
	(340, -1, '{"x":-433.3022,"y":6260.16064,"z":29.5997868}', '{"x":0.4293684,"y":2.523392,"z":73.7939148}'),
	(341, -1, '{"x":-352.716644,"y":6272.92432,"z":30.4512768}', '{"x":2.49317169,"y":3.29736066,"z":220.713379}'),
	(342, -1, '{"x":-348.547333,"y":6216.41553,"z":30.8214436}', '{"x":-0.0208056532,"y":0.0229722634,"z":44.35327}'),
	(343, -1, '{"x":-365.556061,"y":6197.093,"z":30.8210716}', '{"x":0.00685042469,"y":0.0316427834,"z":223.871078}'),
	(344, -1, '{"x":-376.7708,"y":6182.595,"z":30.82299}', '{"x":-0.025243083,"y":-0.01876156,"z":43.5739136}'),
	(345, -1, '{"x":-99.01574,"y":6334.18457,"z":30.82329}', '{"x":0.02403561,"y":-0.0271471832,"z":134.210571}'),
	(346, -1, '{"x":-100.653847,"y":6338.919,"z":30.8228149}', '{"x":-0.0239097457,"y":-0.0212897137,"z":45.1802368}'),
	(347, -1, '{"x":-98.27438,"y":6341.90234,"z":30.8219814}', '{"x":0.0135265011,"y":0.0171065349,"z":46.96689}'),
	(348, -1, '{"x":-95.4736,"y":6344.57471,"z":30.8234787}', '{"x":0.0266801957,"y":0.0286765471,"z":226.245361}'),
	(349, -1, '{"x":-93.21443,"y":6347.593,"z":30.8230839}', '{"x":0.0618182272,"y":0.0467431955,"z":227.806152}'),
	(350, -1, '{"x":-80.0602,"y":6333.65674,"z":30.85692}', '{"x":0.05864316,"y":0.0848633051,"z":45.76416}'),
	(351, -1, '{"x":-90.09242,"y":6349.781,"z":30.8228264}', '{"x":0.0240972359,"y":0.006195926,"z":224.853531}'),
	(352, -1, '{"x":-87.4392853,"y":6352.36572,"z":30.82281}', '{"x":0.0214036684,"y":0.0186708849,"z":222.944626}'),
	(353, -1, '{"x":-77.90317,"y":6336.797,"z":30.857645}', '{"x":-0.07245632,"y":0.00287244213,"z":43.7928772}'),
	(354, -1, '{"x":-84.83293,"y":6355.41943,"z":30.8227959}', '{"x":0.0147266882,"y":0.02266172,"z":223.461578}'),
	(355, -1, '{"x":-74.8333,"y":6339.487,"z":30.8567924}', '{"x":0.053966105,"y":0.0817429,"z":48.14624}'),
	(356, -1, '{"x":-72.58706,"y":6341.96338,"z":30.857132}', '{"x":0.0381822661,"y":0.08402469,"z":44.2583}'),
	(357, -1, '{"x":-77.4312057,"y":6347.253,"z":30.8576813}', '{"x":0.09697165,"y":0.0490933135,"z":222.6652}'),
	(358, -1, '{"x":-79.609375,"y":6344.204,"z":30.8577652}', '{"x":0.07187016,"y":0.0201954953,"z":224.98}'),
	(359, -1, '{"x":-82.5818558,"y":6341.686,"z":30.8578949}', '{"x":0.110455647,"y":0.06406615,"z":225.033661}'),
	(360, -1, '{"x":-85.52991,"y":6338.681,"z":30.85716}', '{"x":-0.03547873,"y":-0.0529998653,"z":225.884659}'),
	(361, 5, '{"x":-1890.06567,"y":121.119591,"z":81.0312958}', '{"x":-0.476954937,"y":0.7157803,"z":308.403168}'),
	(362, 2, '{"x":-1936.91406,"y":181.533585,"z":83.99607}', '{"x":0.3867278,"y":-1.16262615,"z":314.387726}'),
	(363, 4, '{"x":-1870.35229,"y":190.533417,"z":83.6621246}', '{"x":-0.01804998,"y":-0.01816322,"z":126.961853}'),
	(364, 3, '{"x":-1902.92554,"y":240.1581,"z":85.618576}', '{"x":0.0246907678,"y":-0.118303828,"z":114.698456}'),
	(365, 3, '{"x":-1921.415,"y":284.551666,"z":88.44011}', '{"x":-0.05090821,"y":-0.107315578,"z":102.770752}'),
	(366, 3, '{"x":-1939.27063,"y":362.177429,"z":92.97706}', '{"x":-3.40319061,"y":3.0429666,"z":186.330627}'),
	(367, 3, '{"x":-1941.2937,"y":385.7709,"z":95.8745346}', '{"x":0.0158126317,"y":0.104503565,"z":279.236542}'),
	(368, 3, '{"x":-1938.87354,"y":560.380554,"z":114.490112}', '{"x":-7.22986555,"y":2.57419968,"z":70.27008}'),
	(369, 4, '{"x":-1938.87231,"y":560.3821,"z":114.482811}', '{"x":-7.25178766,"y":2.504152,"z":70.270874}'),
	(370, 4, '{"x":-1938.6156,"y":581.2324,"z":118.611389}', '{"x":-0.3778486,"y":7.81009865,"z":72.79608}'),
	(371, 4, '{"x":-1887.49036,"y":628.3023,"z":129.3669}', '{"x":-0.07606759,"y":0.0252563562,"z":135.31665}'),
	(372, 3, '{"x":-1887.49011,"y":628.302734,"z":129.36409}', '{"x":-0.0163918678,"y":-0.0247395728,"z":135.316864}'),
	(373, 3, '{"x":-1975.35913,"y":624.4347,"z":121.898422}', '{"x":-0.298516929,"y":-0.104489155,"z":67.17929}'),
	(374, 4, '{"x":-1975.35913,"y":624.434631,"z":121.893661}', '{"x":-0.317875862,"y":-0.148132309,"z":67.1789856}'),
	(375, 3, '{"x":-2013.87671,"y":484.8731,"z":106.478683}', '{"x":-0.772639,"y":-3.100074,"z":75.01541}'),
	(376, 4, '{"x":-2010.82715,"y":454.340942,"z":102.0338}', '{"x":-0.08475461,"y":-0.355176926,"z":109.990387}'),
	(377, 3, '{"x":-2001.41187,"y":380.004181,"z":93.8501358}', '{"x":0.0449904,"y":0.09887204,"z":0.473510742}'),
	(378, 4, '{"x":-1997.05725,"y":293.02124,"z":91.13192}', '{"x":-0.0327906273,"y":-0.0607722551,"z":104.240784}'),
	(379, 3, '{"x":-1980.42017,"y":259.255249,"z":86.5806}', '{"x":0.08684491,"y":0.2112571,"z":109.530457}'),
	(380, 3, '{"x":-1949.09534,"y":201.3582,"z":85.46914}', '{"x":1.27814281,"y":-5.93521547,"z":292.960083}'),
	(381, 3, '{"x":-1937.48352,"y":181.514343,"z":84.00223}', '{"x":0.0411784947,"y":-0.975878954,"z":130.262024}'),
	(382, 4, '{"x":-1857.30481,"y":324.61554,"z":88.07312}', '{"x":0.634698331,"y":0.1622505,"z":13.8666382}'),
	(383, 4, '{"x":-1792.39539,"y":346.6928,"z":87.9206848}', '{"x":-0.1274703,"y":-0.13579002,"z":245.6596}'),
	(384, 4, '{"x":-1748.13489,"y":366.823578,"z":89.0925}', '{"x":-0.01497556,"y":0.106471449,"z":297.854431}'),
	(385, 3, '{"x":-1665.04956,"y":387.917664,"z":88.68083}', '{"x":1.365875,"y":0.737544358,"z":355.490143}'),
	(386, 3, '{"x":-573.217468,"y":401.141479,"z":100.241264}', '{"x":0.196814492,"y":0.107946783,"z":211.485016}'),
	(387, 3, '{"x":-575.4849,"y":400.081451,"z":100.23687}', '{"x":-0.155974612,"y":-0.05580883,"z":22.9853821}'),
	(388, 3, '{"x":-604.0962,"y":397.755463,"z":101.300728}', '{"x":5.68234253,"y":0.373348147,"z":186.290421}'),
	(389, 3, '{"x":-627.9096,"y":399.931427,"z":100.761978}', '{"x":2.01732945,"y":0.119519904,"z":184.878754}'),
	(390, 3, '{"x":-514.4488,"y":425.210419,"z":96.5313339}', '{"x":4.20352936,"y":0.92179805,"z":43.252533}'),
	(391, 3, '{"x":-536.217163,"y":484.421844,"z":102.593437}', '{"x":1.8543849,"y":2.56911087,"z":236.741226}'),
	(392, 3, '{"x":-514.4175,"y":389.4025,"z":93.3423538}', '{"x":0.778904438,"y":1.12455571,"z":61.4201965}'),
	(393, 3, '{"x":-490.3629,"y":410.308075,"z":98.66416}', '{"x":-1.32350361,"y":3.04503441,"z":153.968079}'),
	(394, 3, '{"x":-455.72583,"y":378.018433,"z":104.292786}', '{"x":2.01803541,"y":0.0324485451,"z":5.904724}'),
	(395, 3, '{"x":-393.222,"y":431.509,"z":111.816025}', '{"x":-2.44978261,"y":-4.51148939,"z":69.38309}'),
	(396, 4, '{"x":-393.220032,"y":431.5082,"z":111.817261}', '{"x":-2.45739222,"y":-4.589269,"z":69.4160156}'),
	(397, 3, '{"x":-351.865021,"y":426.085571,"z":110.206772}', '{"x":8.61084652,"y":3.094852,"z":196.866943}'),
	(398, 3, '{"x":-318.164642,"y":431.491516,"z":109.351532}', '{"x":5.259579,"y":0.5552866,"z":199.659012}'),
	(399, 3, '{"x":-96.57412,"y":428.120575,"z":112.637596}', '{"x":-0.716875434,"y":-0.258992136,"z":169.05188}'),
	(400, 3, '{"x":15.2201939,"y":376.3611,"z":111.836884}', '{"x":-3.09096169,"y":2.9854672,"z":333.0981}'),
	(401, 3, '{"x":25.5241737,"y":368.519623,"z":112.194725}', '{"x":-2.052587,"y":2.87318349,"z":304.247467}'),
	(402, 3, '{"x":-184.243637,"y":419.149323,"z":110.316666}', '{"x":1.11823928,"y":0.284144282,"z":192.916779}'),
	(403, 3, '{"x":-200.525314,"y":408.430328,"z":110.3346}', '{"x":7.424261,"y":1.52511108,"z":185.843781}'),
	(404, 3, '{"x":-258.432953,"y":395.875671,"z":109.588669}', '{"x":0.404778838,"y":0.103894167,"z":192.929718}'),
	(405, 3, '{"x":-305.567535,"y":378.1059,"z":109.908737}', '{"x":0.139871955,"y":0.1319299,"z":196.5821}'),
	(406, 3, '{"x":-347.6364,"y":368.6656,"z":109.576935}', '{"x":0.438087016,"y":0.7338548,"z":206.082581}'),
	(407, 3, '{"x":-380.518433,"y":345.3649,"z":108.806656}', '{"x":1.40941787,"y":1.00230968,"z":184.146057}'),
	(408, 3, '{"x":-398.2808,"y":338.417938,"z":108.289467}', '{"x":0.250001073,"y":0.008103753,"z":180.411041}'),
	(409, 3, '{"x":-432.51886,"y":344.262146,"z":105.485069}', '{"x":0.321726024,"y":4.104519,"z":181.243057}'),
	(410, 3, '{"x":-473.7385,"y":351.963928,"z":103.65406}', '{"x":3.24812841,"y":-1.644716,"z":156.101563}'),
	(411, 3, '{"x":-525.578064,"y":527.313049,"z":111.72377}', '{"x":4.86199045,"y":4.79756641,"z":224.687378}'),
	(412, 3, '{"x":-482.631165,"y":548.555969,"z":119.522675}', '{"x":10.2334528,"y":-2.7675066,"z":163.487366}'),
	(413, 3, '{"x":-469.806671,"y":540.6635,"z":120.753181}', '{"x":12.783555,"y":-0.124422185,"z":180.3752}'),
	(414, 4, '{"x":-439.387177,"y":542.742859,"z":121.504425}', '{"x":10.4252272,"y":0.584079444,"z":160.080322}'),
	(415, 3, '{"x":-401.91217,"y":510.8589,"z":119.773453}', '{"x":0.24037616,"y":-0.08149384,"z":149.7497}'),
	(416, 3, '{"x":-359.2192,"y":515.487854,"z":119.411751}', '{"x":-5.014753,"y":4.77183,"z":315.5539}'),
	(417, 3, '{"x":-314.6103,"y":481.54776,"z":112.774376}', '{"x":-5.16540051,"y":7.48513174,"z":296.287354}'),
	(418, 3, '{"x":-354.57074,"y":474.454559,"z":112.230522}', '{"x":-2.40136,"y":2.849325,"z":106.795288}'),
	(419, 3, '{"x":-318.242523,"y":431.675964,"z":109.328117}', '{"x":5.946087,"y":0.3261604,"z":189.188324}'),
	(420, 3, '{"x":-245.3115,"y":493.8704,"z":125.3757}', '{"x":10.3304682,"y":7.57431936,"z":207.588348}'),
	(421, 3, '{"x":-189.139114,"y":501.969818,"z":134.007339}', '{"x":5.2590723,"y":6.751808,"z":89.05121}'),
	(422, 3, '{"x":21.7900276,"y":544.5429,"z":175.598618}', '{"x":0.0660519749,"y":0.118901029,"z":242.965988}'),
	(423, 3, '{"x":51.44721,"y":561.8542,"z":179.853912}', '{"x":-0.843181849,"y":1.54275012,"z":210.478134}'),
	(424, 3, '{"x":97.53255,"y":566.8623,"z":182.0429}', '{"x":8.453413,"y":1.696122,"z":3.94778442}'),
	(425, 2, '{"x":131.22789,"y":567.6368,"z":183.159241}', '{"x":10.111455,"y":2.25997972,"z":188.27597}'),
	(426, 3, '{"x":210.415527,"y":608.4594,"z":186.533737}', '{"x":1.83391583,"y":11.2689619,"z":63.3864136}'),
	(427, 3, '{"x":229.137711,"y":680.8338,"z":189.211792}', '{"x":-2.549955,"y":3.88248229,"z":287.006561}'),
	(428, 4, '{"x":229.138016,"y":680.832764,"z":189.215485}', '{"x":-2.68649626,"y":3.94372725,"z":286.962158}'),
	(429, 4, '{"x":218.801239,"y":756.2561,"z":204.321091}', '{"x":1.66691637,"y":2.66931653,"z":242.458923}'),
	(430, 3, '{"x":314.6278,"y":567.436157,"z":154.047058}', '{"x":2.29318738,"y":-2.67208457,"z":118.244446}'),
	(431, 3, '{"x":317.4449,"y":494.1141,"z":152.460052}', '{"x":1.18807125,"y":-6.75394869,"z":111.091705}'),
	(432, 4, '{"x":317.445862,"y":494.116119,"z":152.463043}', '{"x":1.2753973,"y":-6.85312,"z":111.108459}'),
	(433, 3, '{"x":327.235535,"y":481.902832,"z":150.716782}', '{"x":1.07199669,"y":-6.540867,"z":222.063248}'),
	(434, 3, '{"x":353.4941,"y":436.539124,"z":146.4754}', '{"x":8.5598135,"y":-16.4182835,"z":115.439209}'),
	(435, 3, '{"x":391.658722,"y":430.3679,"z":143.1693}', '{"x":14.7441006,"y":-4.0730505,"z":174.034424}'),
	(436, 4, '{"x":237.5766,"y":527.9727,"z":140.1476}', '{"x":-2.82924581,"y":-1.43904209,"z":298.8474}'),
	(437, 3, '{"x":173.78389,"y":471.4963,"z":141.478516}', '{"x":0.171291724,"y":-0.03639029,"z":168.713684}'),
	(438, 3, '{"x":113.456436,"y":498.264679,"z":146.718811}', '{"x":-0.133389458,"y":-0.0410745852,"z":14.3138428}'),
	(439, 3, '{"x":105.519073,"y":479.4264,"z":146.822281}', '{"x":-2.32810688,"y":-2.33528686,"z":105.125458}'),
	(440, 3, '{"x":89.3104858,"y":488.701,"z":147.419449}', '{"x":-3.645418,"y":-2.02821946,"z":26.04599}'),
	(441, 3, '{"x":65.1379242,"y":455.645142,"z":146.410889}', '{"x":0.6633442,"y":2.13464522,"z":214.220535}'),
	(442, 4, '{"x":65.1380539,"y":455.646454,"z":146.414948}', '{"x":0.763820469,"y":2.09649873,"z":214.222839}'),
	(443, 3, '{"x":56.3135262,"y":468.832733,"z":146.4126}', '{"x":-5.15363359,"y":-0.7904937,"z":21.79004}'),
	(444, 3, '{"x":0.3434922,"y":467.914917,"z":145.469589}', '{"x":3.85496855,"y":-1.25065374,"z":45.63159}'),
	(445, 3, '{"x":-73.81686,"y":494.564758,"z":144.096527}', '{"x":3.33096361,"y":-0.7377843,"z":163.221741}'),
	(446, 3, '{"x":-123.297729,"y":509.111,"z":142.585159}', '{"x":10.3550854,"y":1.34590089,"z":170.197815}'),
	(447, 4, '{"x":-520.654541,"y":575.2078,"z":120.595284}', '{"x":0.5505894,"y":-2.88649464,"z":101.953491}'),
	(448, 4, '{"x":-525.3975,"y":645.0897,"z":137.560074}', '{"x":-7.813028,"y":2.08910823,"z":293.328247}'),
	(449, 3, '{"x":-519.31134,"y":694.3775,"z":149.970337}', '{"x":-2.32446432,"y":17.227499,"z":276.0352}'),
	(450, 3, '{"x":-460.7233,"y":639.7052,"z":143.759567}', '{"x":0.114062853,"y":0.162942216,"z":228.559891}'),
	(451, 3, '{"x":-465.4031,"y":674.1574,"z":147.613129}', '{"x":-8.364553,"y":8.259234,"z":316.2492}'),
	(452, 3, '{"x":-394.0842,"y":670.5584,"z":162.73317}', '{"x":1.76570225,"y":6.37917,"z":181.6517}'),
	(453, 3, '{"x":-394.016724,"y":670.530762,"z":162.520874}', '{"x":0.8881121,"y":5.68122673,"z":0.9760132}'),
	(454, 3, '{"x":-344.434174,"y":664.3105,"z":168.734741}', '{"x":6.8524375,"y":-0.4077313,"z":352.0085}'),
	(455, 4, '{"x":-339.9644,"y":631.8674,"z":171.7205}', '{"x":0.02163937,"y":-0.0224345252,"z":236.2494}'),
	(456, 3, '{"x":-300.858948,"y":632.531738,"z":175.053864}', '{"x":1.8382349,"y":1.01744878,"z":300.4169}'),
	(457, 3, '{"x":-276.112854,"y":598.1894,"z":181.04982}', '{"x":-0.0160546675,"y":-0.03115281,"z":176.3667}'),
	(458, 3, '{"x":-242.8201,"y":611.9391,"z":186.697266}', '{"x":-6.963156,"y":9.930413,"z":326.9072}'),
	(459, 3, '{"x":-224.108978,"y":590.793152,"z":189.4988}', '{"x":-4.56470871,"y":1.52172709,"z":178.821777}'),
	(460, 4, '{"x":-196.807953,"y":619.2301,"z":197.236938}', '{"x":-1.930082,"y":-0.2830855,"z":359.93045}'),
	(461, 3, '{"x":-178.301147,"y":586.097168,"z":196.994873}', '{"x":-0.134471536,"y":-0.0401135832,"z":181.510376}'),
	(462, 4, '{"x":-143.809723,"y":595.0252,"z":203.195435}', '{"x":0.2816686,"y":2.94591665,"z":183.58783}'),
	(463, 4, '{"x":-513.633667,"y":624.3163,"z":132.150085}', '{"x":-3.07024837,"y":-20.2059135,"z":293.819916}'),
	(464, 3, '{"x":-559.072266,"y":688.1234,"z":144.747864}', '{"x":-0.0284494888,"y":0.0100072874,"z":344.166534}'),
	(465, 3, '{"x":-522.4102,"y":711.9981,"z":152.06839}', '{"x":-23.950325,"y":-3.77337265,"z":13.1083374}'),
	(466, 3, '{"x":-497.369659,"y":745.706665,"z":162.163849}', '{"x":0.00654471945,"y":0.0246613212,"z":67.98627}'),
	(467, 3, '{"x":-484.813843,"y":797.13385,"z":179.978714}', '{"x":-7.93640947,"y":-0.258676559,"z":167.725342}'),
	(468, 3, '{"x":-552.423767,"y":829.4139,"z":196.996765}', '{"x":-6.589411,"y":-1.710059,"z":162.1969}'),
	(469, 3, '{"x":-609.0231,"y":864.854553,"z":212.679184}', '{"x":-4.436074,"y":-2.993023,"z":158.112915}'),
	(470, 4, '{"x":-676.127136,"y":903.7377,"z":229.912674}', '{"x":-0.1673368,"y":0.0727789253,"z":143.041473}'),
	(471, 4, '{"x":-748.404053,"y":820.187561,"z":212.7215}', '{"x":0.7768731,"y":0.2827148,"z":136.809631}'),
	(472, 4, '{"x":-811.069336,"y":805.7863,"z":201.498947}', '{"x":0.8310197,"y":0.379410267,"z":200.122665}'),
	(473, 3, '{"x":-851.274,"y":790.4348,"z":191.095428}', '{"x":-1.5523814,"y":0.113875665,"z":185.387146}'),
	(474, 3, '{"x":-905.016846,"y":782.103455,"z":185.517365}', '{"x":6.97108936,"y":2.29495668,"z":189.3788}'),
	(475, 3, '{"x":-918.5481,"y":810.048035,"z":183.668564}', '{"x":-0.0107242316,"y":0.0008805333,"z":9.379456}'),
	(476, 3, '{"x":-956.7317,"y":802.2442,"z":176.99791}', '{"x":3.52364349,"y":2.58828688,"z":5.661377}'),
	(477, 3, '{"x":-996.4413,"y":810.6595,"z":171.80304}', '{"x":-0.424393415,"y":3.069008,"z":179.826111}'),
	(478, 3, '{"x":-965.1972,"y":762.8898,"z":174.770126}', '{"x":0.723111749,"y":0.9463938,"z":224.633743}'),
	(479, 3, '{"x":-1001.39154,"y":784.7924,"z":170.88298}', '{"x":-1.12544513,"y":4.72289228,"z":111.515808}'),
	(480, 4, '{"x":-1041.27112,"y":796.8855,"z":166.607758}', '{"x":4.620543,"y":3.20184135,"z":14.8683167}'),
	(481, 3, '{"x":-1054.16223,"y":768.742859,"z":167.011383}', '{"x":0.324085027,"y":-3.08059764,"z":96.12329}'),
	(482, 3, '{"x":-1107.64392,"y":796.85144,"z":164.705566}', '{"x":-4.69878,"y":-0.52779156,"z":8.516663}'),
	(483, 3, '{"x":-1115.04236,"y":769.0133,"z":162.691238}', '{"x":5.48912764,"y":2.33820224,"z":207.590836}'),
	(484, 3, '{"x":-1123.95715,"y":790.394043,"z":162.866577}', '{"x":-7.991196,"y":-6.115117,"z":54.51422}'),
	(485, 3, '{"x":-1159.34729,"y":740.0949,"z":154.779}', '{"x":1.574946,"y":2.52733016,"z":227.297638}'),
	(486, 3, '{"x":-1200.41064,"y":689.877258,"z":146.475174}', '{"x":1.50764751,"y":9.099041,"z":67.8705444}'),
	(487, 3, '{"x":-1223.47827,"y":663.119934,"z":143.248718}', '{"x":9.051219,"y":14.1380329,"z":233.408844}'),
	(488, 3, '{"x":-1250.79871,"y":666.1788,"z":142.1462}', '{"x":-0.360724628,"y":-0.08941669,"z":18.4104919}'),
	(489, 3, '{"x":-1235.55933,"y":653.2947,"z":141.8696}', '{"x":9.803303,"y":8.696431,"z":113.78537}'),
	(490, 3, '{"x":-1286.58521,"y":650.4122,"z":139.23494}', '{"x":-2.06927514,"y":-0.5121721,"z":23.4772034}'),
	(491, 3, '{"x":-1287.62085,"y":624.4757,"z":138.274429}', '{"x":4.5563283,"y":4.86915827,"z":221.939865}'),
	(492, 3, '{"x":-1343.257,"y":612.0369,"z":133.077164}', '{"x":-0.527695,"y":-2.58402228,"z":275.0728}'),
	(493, 3, '{"x":-1364.09937,"y":603.9584,"z":133.2131}', '{"x":-0.1611457,"y":0.3134007,"z":105.66922}'),
	(494, 3, '{"x":-1358.485,"y":579.800049,"z":130.775635}', '{"x":-1.0782758,"y":1.32879925,"z":72.32782}'),
	(495, 3, '{"x":-1358.418,"y":552.634033,"z":129.502686}', '{"x":10.5000906,"y":13.3781223,"z":233.355316}'),
	(496, 3, '{"x":-1411.99231,"y":559.6732,"z":124.030762}', '{"x":-22.90776,"y":-1.36139226,"z":101.238251}'),
	(497, 3, '{"x":-1454.34021,"y":533.9593,"z":118.619164}', '{"x":-6.92659044,"y":-2.797507,"z":72.96921}'),
	(498, 3, '{"x":-1470.80469,"y":511.01947,"z":117.035721}', '{"x":-2.58284974,"y":-0.720741749,"z":192.706268}'),
	(499, 3, '{"x":-1487.92578,"y":527.5914,"z":117.604607}', '{"x":0.025849646,"y":0.016689213,"z":212.5488}'),
	(500, 3, '{"x":-1496.4054,"y":417.012573,"z":110.440445}', '{"x":-0.0407940969,"y":-0.03685148,"z":223.969788}'),
	(501, 4, '{"x":-1552.40967,"y":427.391144,"z":108.72699}', '{"x":3.9126482,"y":0.250678658,"z":96.28113}'),
	(502, 3, '{"x":-661.7799,"y":805.804443,"z":198.52037}', '{"x":-6.17845726,"y":-0.784275532,"z":184.827118}'),
	(503, 3, '{"x":-594.867737,"y":808.532043,"z":190.214645}', '{"x":0.804412246,"y":-1.69167411,"z":331.527283}'),
	(504, 3, '{"x":-595.1351,"y":753.8886,"z":183.048477}', '{"x":0.0211250409,"y":0.0160954334,"z":78.36322}'),
	(505, 2, '{"x":-573.1003,"y":754.887,"z":184.02095}', '{"x":-0.237034708,"y":2.61280584,"z":245.569351}'),
	(506, 3, '{"x":-577.3674,"y":742.494141,"z":183.260025}', '{"x":-1.3223182,"y":5.374974,"z":252.2452}'),
	(507, 3, '{"x":-670.309143,"y":750.207947,"z":173.2058}', '{"x":-5.456044,"y":2.617772,"z":181.24556}'),
	(508, 3, '{"x":-695.9677,"y":705.9461,"z":156.6361}', '{"x":7.530169,"y":-16.8645668,"z":162.990967}'),
	(509, 3, '{"x":-615.9028,"y":676.836731,"z":149.2131}', '{"x":2.66021848,"y":-1.98280418,"z":172.954346}'),
	(510, 3, '{"x":-666.7311,"y":669.4791,"z":149.748627}', '{"x":-0.306516737,"y":0.1296902,"z":257.5401}'),
	(511, 4, '{"x":-709.9111,"y":643.689,"z":154.50853}', '{"x":-0.04109626,"y":0.0277437828,"z":168.775757}'),
	(512, 3, '{"x":-670.524231,"y":646.0281,"z":148.713}', '{"x":-1.13120317,"y":4.32650375,"z":261.266}'),
	(513, 3, '{"x":-684.6076,"y":602.859,"z":142.940338}', '{"x":-1.87512553,"y":1.28185606,"z":55.09485}'),
	(514, 3, '{"x":-723.525757,"y":592.2462,"z":141.182388}', '{"x":-0.8433826,"y":0.191339433,"z":10.014679}'),
	(515, 3, '{"x":-743.0438,"y":601.8779,"z":141.448364}', '{"x":7.03913164,"y":-5.09511948,"z":329.2552}'),
	(516, 3, '{"x":-753.923767,"y":628.758362,"z":141.9369}', '{"x":0.9594732,"y":-5.160264,"z":301.872559}'),
	(517, 3, '{"x":-768.264832,"y":665.269,"z":144.431641}', '{"x":4.86678648,"y":-10.454114,"z":116.0813}'),
	(518, 3, '{"x":-809.823059,"y":703.3434,"z":146.476517}', '{"x":1.78949952,"y":-0.582614541,"z":201.926849}'),
	(519, 3, '{"x":-864.1763,"y":698.492859,"z":148.369812}', '{"x":-0.96806854,"y":-0.238533154,"z":154.0747}'),
	(520, 3, '{"x":-884.2854,"y":705.082153,"z":149.270142}', '{"x":-3.104808,"y":-2.48178172,"z":81.98013}'),
	(521, 3, '{"x":-913.521057,"y":695.873535,"z":150.755463}', '{"x":0.769333541,"y":-1.38761425,"z":169.978149}'),
	(522, 3, '{"x":-949.628357,"y":686.739441,"z":152.910919}', '{"x":0.03211933,"y":0.0110619646,"z":181.152451}'),
	(523, 3, '{"x":-1004.90942,"y":713.5253,"z":163.144577}', '{"x":-7.879491,"y":0.5364449,"z":357.075562}'),
	(524, 2, '{"x":-1004.90845,"y":713.526,"z":163.144958}', '{"x":-7.82770061,"y":0.437577635,"z":357.0847}'),
	(525, 3, '{"x":-1022.18964,"y":691.2388,"z":160.502136}', '{"x":-1.687566,"y":0.0320693478,"z":179.581909}'),
	(526, 3, '{"x":-982.019836,"y":693.582,"z":156.418381}', '{"x":-2.31813717,"y":-7.20604753,"z":96.67313}'),
	(527, 3, '{"x":-1418.17932,"y":466.143,"z":108.790459}', '{"x":7.436594,"y":-3.320999,"z":164.755981}'),
	(528, 3, '{"x":-1373.20007,"y":452.075653,"z":104.502251}', '{"x":0.923652351,"y":6.199307,"z":263.588531}'),
	(529, 3, '{"x":-1322.996,"y":447.57254,"z":99.0974}', '{"x":1.07088685,"y":-0.420573771,"z":181.679642}'),
	(530, 3, '{"x":-1270.23779,"y":451.352325,"z":94.2}', '{"x":-2.33792472,"y":-3.85642266,"z":226.491867}'),
	(531, 3, '{"x":-1270.47119,"y":507.8967,"z":96.58537}', '{"x":-0.696651757,"y":-4.243904,"z":359.881165}'),
	(532, 3, '{"x":-1231.00525,"y":461.48938,"z":91.16019}', '{"x":2.01607633,"y":-1.05603433,"z":193.28241}'),
	(533, 3, '{"x":-1176.99927,"y":455.5716,"z":85.97146}', '{"x":-0.221057609,"y":-0.165419608,"z":265.872223}'),
	(534, 3, '{"x":-1164.46472,"y":479.224457,"z":85.41104}', '{"x":-0.609541,"y":-0.267082185,"z":2.27584839}'),
	(535, 3, '{"x":-1115.23108,"y":483.2143,"z":81.49316}', '{"x":-0.03345479,"y":-0.0176169947,"z":350.255585}'),
	(536, 3, '{"x":-1098.16614,"y":439.674225,"z":74.61923}', '{"x":0.0392837152,"y":0.05797326,"z":87.14316}'),
	(537, 3, '{"x":-1064.91028,"y":437.594452,"z":73.19719}', '{"x":-0.0263144337,"y":-0.08410076,"z":278.1754}'),
	(538, 3, '{"x":-1075.95532,"y":465.7713,"z":77.03843}', '{"x":-1.61493552,"y":1.03451645,"z":330.145569}'),
	(539, 3, '{"x":-1044.72253,"y":501.07193,"z":83.4519348}', '{"x":-1.672367,"y":-1.11217988,"z":44.97455}'),
	(540, 3, '{"x":-1014.07074,"y":487.8369,"z":78.74353}', '{"x":1.02321088,"y":1.06156528,"z":158.267578}'),
	(541, 3, '{"x":-1011.25159,"y":510.315765,"z":79.02462}', '{"x":-1.76326323,"y":-0.409733325,"z":2.75540161}'),
	(542, 3, '{"x":-993.539063,"y":488.729553,"z":81.74319}', '{"x":0.210900262,"y":-0.0034693277,"z":190.345215}'),
	(543, 3, '{"x":-975.089661,"y":518.807068,"z":80.9485}', '{"x":-0.163167,"y":0.235144526,"z":327.0825}'),
	(544, 3, '{"x":-940.5181,"y":444.388367,"z":79.88881}', '{"x":0.258921325,"y":-0.0852299258,"z":155.390381}'),
	(545, 4, '{"x":-940.5168,"y":444.387939,"z":79.8885}', '{"x":0.2331396,"y":-0.205998421,"z":155.389954}'),
	(546, 3, '{"x":-990.595032,"y":421.594757,"z":74.65253}', '{"x":-0.3070083,"y":-0.416426122,"z":23.9503479}'),
	(547, 3, '{"x":-1208.96411,"y":558.4015,"z":98.97323}', '{"x":-14.016223,"y":0.830851555,"z":3.13601685}'),
	(548, 3, '{"x":-1158.12451,"y":567.163,"z":101.199547}', '{"x":0.0981274843,"y":0.0615812652,"z":13.4711}'),
	(549, 3, '{"x":-1158.05444,"y":547.450134,"z":100.2241}', '{"x":-1.47022212,"y":2.14623761,"z":289.0485}'),
	(550, 3, '{"x":-1134.783,"y":549.5058,"z":101.547134}', '{"x":11.8532209,"y":4.068873,"z":219.323471}'),
	(551, 3, '{"x":-1105.55042,"y":549.547668,"z":101.9997}', '{"x":1.14249051,"y":1.03460276,"z":216.6273}'),
	(552, 3, '{"x":-1096.17407,"y":599.3339,"z":102.431549}', '{"x":0.007893325,"y":0.04407991,"z":34.40045}'),
	(553, 3, '{"x":-1037.892,"y":590.2505,"z":102.612022}', '{"x":4.92155027,"y":-0.0250703283,"z":183.811691}'),
	(554, 3, '{"x":-987.8019,"y":586.7104,"z":101.688362}', '{"x":2.851083,"y":-0.6807389,"z":182.088516}'),
	(555, 3, '{"x":-946.3865,"y":594.7631,"z":100.372108}', '{"x":-0.0515157469,"y":0.0662767142,"z":341.2866}'),
	(556, 3, '{"x":-954.839539,"y":579.06366,"z":100.411705}', '{"x":3.42285085,"y":-4.26476431,"z":127.21106}'),
	(557, 3, '{"x":-933.920532,"y":569.847839,"z":99.33654}', '{"x":4.57690763,"y":-4.504255,"z":149.233276}'),
	(558, 3, '{"x":-911.124146,"y":589.068542,"z":100.370255}', '{"x":0.282563955,"y":-0.08949582,"z":326.140778}'),
	(559, 3, '{"x":-910.7373,"y":553.120056,"z":95.33627}', '{"x":-10.7640686,"y":3.90862322,"z":133.303772}'),
	(560, 3, '{"x":-872.778931,"y":540.9969,"z":91.59354}', '{"x":-9.89554,"y":8.393225,"z":317.004425}'),
	(561, 3, '{"x":-847.4851,"y":514.7722,"z":89.98887}', '{"x":0.0513105951,"y":-0.121297158,"z":278.015137}'),
	(562, 3, '{"x":-875.4125,"y":498.572479,"z":90.33811}', '{"x":0.765985668,"y":-1.93331563,"z":101.538818}'),
	(563, 3, '{"x":-845.056152,"y":460.932648,"z":87.19222}', '{"x":-1.39833319,"y":10.1181469,"z":280.352234}'),
	(564, 3, '{"x":-862.943848,"y":463.566833,"z":87.38125}', '{"x":1.26785922,"y":-8.756319,"z":103.962067}'),
	(565, 3, '{"x":-806.375061,"y":425.085876,"z":90.94898}', '{"x":-0.488576025,"y":0.475839436,"z":187.8853}'),
	(566, 3, '{"x":-755.6159,"y":438.779175,"z":99.2197342}', '{"x":2.3393383,"y":4.417657,"z":201.507431}'),
	(567, 3, '{"x":-767.699,"y":468.056915,"z":99.61076}', '{"x":2.770103,"y":3.20333338,"z":35.9471436}'),
	(568, 3, '{"x":-734.1118,"y":443.879547,"z":106.259644}', '{"x":0.446924776,"y":0.188947827,"z":211.662735}'),
	(569, 3, '{"x":-716.7658,"y":495.654816,"z":108.645912}', '{"x":0.0162292458,"y":0.05824936,"z":27.55774}'),
	(570, 3, '{"x":-690.3391,"y":510.6095,"z":109.731049}', '{"x":0.03263803,"y":0.02652882,"z":17.250061}'),
	(571, 3, '{"x":-660.0487,"y":489.8539,"z":109.20121}', '{"x":1.9151727,"y":-1.34876311,"z":283.778625}'),
	(572, 3, '{"x":-633.0753,"y":522.795044,"z":109.05117}', '{"x":-0.11541979,"y":0.348532915,"z":9.786102}'),
	(573, 3, '{"x":-615.0242,"y":492.592773,"z":107.773186}', '{"x":14.6354971,"y":2.23107,"z":187.067291}'),
	(574, 4, '{"x":-575.150146,"y":496.090271,"z":106.010506}', '{"x":11.1715,"y":0.47111696,"z":191.4893}'),
	(575, 1, '{"x":77.38936,"y":-1935.06946,"z":20.1851521}', '{"x":2.54431415,"y":-1.256147,"z":318.105438}'),
	(576, 0, '{"x":53.7480621,"y":-1878.02979,"z":21.6544914}', '{"x":-3.63131881,"y":0.9226608,"z":135.942444}'),
	(577, 0, '{"x":46.5663452,"y":-1915.205,"z":20.989954}', '{"x":0.596267641,"y":0.6228704,"z":320.308838}'),
	(578, 0, '{"x":40.68064,"y":-1854.55554,"z":22.2006969}', '{"x":-0.04983826,"y":0.03465881,"z":314.5436}'),
	(579, 0, '{"x":10.7845678,"y":-1845.46216,"z":23.7188778}', '{"x":-3.97469115,"y":1.1170963,"z":321.7771}'),
	(580, 0, '{"x":34.1948967,"y":-1893.78589,"z":21.5225487}', '{"x":-0.446701854,"y":-0.591674447,"z":319.638123}'),
	(581, 0, '{"x":18.6308784,"y":-1879.70679,"z":22.3544674}', '{"x":-0.2277754,"y":-2.89903164,"z":321.36087}'),
	(582, 0, '{"x":-49.7368774,"y":-1798.76526,"z":26.4953842}', '{"x":-3.244296,"y":-0.101986468,"z":157.7846}'),
	(583, 0, '{"x":3.07958555,"y":-1875.06323,"z":23.03005}', '{"x":-1.59528744,"y":-1.73270726,"z":318.437164}'),
	(584, 0, '{"x":-56.1618042,"y":-1785.157,"z":27.214386}', '{"x":-0.0286757555,"y":-0.0622597225,"z":317.507965}'),
	(585, 0, '{"x":-22.219408,"y":-1851.77319,"z":24.4286213}', '{"x":-1.68897939,"y":-0.79726547,"z":319.918945}'),
	(586, 0, '{"x":-29.1189079,"y":-1852.76978,"z":25.100069}', '{"x":-1.25521684,"y":-1.99046743,"z":139.647125}'),
	(587, 0, '{"x":-53.0929832,"y":-1455.546,"z":31.38017}', '{"x":-0.6901591,"y":-1.0939635,"z":184.449249}'),
	(588, 0, '{"x":-41.0519638,"y":-1459.87756,"z":30.898}', '{"x":2.27995229,"y":-3.43595648,"z":270.722565}'),
	(589, 0, '{"x":-38.3895569,"y":-1448.35156,"z":30.836916}', '{"x":0.4888895,"y":0.0351118371,"z":183.8384}'),
	(590, 0, '{"x":7.216839,"y":-1452.69568,"z":29.8394833}', '{"x":-1.44254947,"y":0.2835136,"z":169.6933}'),
	(591, 0, '{"x":-8.010869,"y":-1531.20923,"z":29.1229382}', '{"x":-1.00543475,"y":-1.025139,"z":141.555054}'),
	(592, 0, '{"x":-4.91187763,"y":-1532.8584,"z":29.0353088}', '{"x":-1.16423953,"y":-1.74601,"z":140.724548}'),
	(593, 0, '{"x":-2.27349663,"y":-1535.14624,"z":28.90485}', '{"x":-1.42387092,"y":-1.71064651,"z":140.1124}'),
	(594, 0, '{"x":1.05641651,"y":-1537.1886,"z":28.7517}', '{"x":-1.520658,"y":-0.9879014,"z":139.149963}'),
	(595, 0, '{"x":-59.5555878,"y":-1492.60571,"z":31.0938358}', '{"x":-0.660406649,"y":-0.247501329,"z":137.2673}'),
	(596, 0, '{"x":-7.91139555,"y":-1553.44824,"z":28.7908363}', '{"x":-2.61295152,"y":-3.28995776,"z":231.932831}'),
	(597, 0, '{"x":-55.7934036,"y":-1495.328,"z":31.0042324}', '{"x":-1.27580965,"y":-1.57754731,"z":140.591156}'),
	(598, 0, '{"x":-10.491663,"y":-1556.817,"z":28.78197}', '{"x":-2.76628947,"y":-3.4621098,"z":231.968369}'),
	(599, 0, '{"x":-60.4197044,"y":-1502.4635,"z":31.233036}', '{"x":6.31992149,"y":-7.38646269,"z":228.5792}'),
	(600, 0, '{"x":-66.10895,"y":-1497.33313,"z":31.3703365}', '{"x":4.137382,"y":-5.0344243,"z":229.445724}'),
	(601, 0, '{"x":-12.8860922,"y":-1559.83032,"z":28.7775326}', '{"x":-2.95012331,"y":-3.41965866,"z":230.799255}'),
	(602, 0, '{"x":-54.3304825,"y":-1501.62451,"z":30.73622}', '{"x":-2.77870917,"y":0.07062269,"z":48.0249634}'),
	(603, 0, '{"x":-49.8267174,"y":-1505.52478,"z":30.5237}', '{"x":-2.85922384,"y":-0.4574167,"z":49.0658569}'),
	(604, 0, '{"x":-17.52505,"y":-1532.47,"z":29.1705933}', '{"x":-2.723525,"y":-0.0242035426,"z":53.006897}'),
	(605, 0, '{"x":-44.0828476,"y":-1510.20264,"z":30.27636}', '{"x":-2.699595,"y":-0.06933615,"z":51.3114}'),
	(606, 0, '{"x":-24.2815018,"y":-1527.2937,"z":29.4662323}', '{"x":-1.63461244,"y":-0.6061791,"z":51.6393738}'),
	(607, 0, '{"x":-38.74572,"y":-1509.55139,"z":30.238802}', '{"x":-1.23042524,"y":-1.77354145,"z":137.469818}'),
	(608, 0, '{"x":-30.0415878,"y":-1526.04187,"z":29.8212051}', '{"x":5.74802637,"y":-6.59203243,"z":49.6642761}'),
	(609, 0, '{"x":-35.32902,"y":-1512.07861,"z":30.0516949}', '{"x":-1.50478625,"y":-2.03839517,"z":139.39679}'),
	(610, 0, '{"x":-9.1586895,"y":-1543.59363,"z":28.79504}', '{"x":1.5091877,"y":-3.28884649,"z":47.1331177}'),
	(611, 0, '{"x":-40.333683,"y":-1519.03918,"z":30.2871552}', '{"x":4.463183,"y":-6.378689,"z":228.554153}'),
	(612, 0, '{"x":-15.7357,"y":-1539.251,"z":29.19351}', '{"x":1.41735,"y":-5.721473,"z":52.8265076}'),
	(613, 0, '{"x":-44.9708672,"y":-1515.26685,"z":30.46629}', '{"x":3.75216651,"y":-6.009626,"z":228.148743}'),
	(614, 0, '{"x":-82.26419,"y":-1492.19141,"z":31.93886}', '{"x":1.36137617,"y":-3.755104,"z":320.386}'),
	(615, 0, '{"x":-88.6767,"y":-1499.78259,"z":32.54743}', '{"x":1.22960842,"y":-3.4220202,"z":319.85}'),
	(616, 0, '{"x":-96.46523,"y":-1508.86133,"z":32.87205}', '{"x":-0.2347982,"y":-1.59849787,"z":319.512115}'),
	(617, 0, '{"x":-98.79,"y":-1527.74072,"z":32.89755}', '{"x":1.99898338,"y":-2.328384,"z":48.92285}'),
	(618, 0, '{"x":-89.8447342,"y":-1535.36877,"z":32.7530479}', '{"x":0.305642158,"y":-3.967781,"z":49.1694031}'),
	(619, 0, '{"x":-88.893074,"y":-1583.90967,"z":30.5132446}', '{"x":2.05725956,"y":-4.86659527,"z":48.0827026}'),
	(620, 0, '{"x":-90.77688,"y":-1586.40247,"z":30.7371063}', '{"x":2.54621172,"y":-3.035803,"z":48.5638428}'),
	(621, 0, '{"x":-94.33599,"y":-1590.439,"z":30.9640045}', '{"x":0.881941438,"y":-0.460131377,"z":47.27066}'),
	(622, 0, '{"x":-99.33916,"y":-1591.85693,"z":30.9316654}', '{"x":2.383423,"y":2.49592638,"z":50.79309}'),
	(623, 0, '{"x":-101.060631,"y":-1594.129,"z":30.96408}', '{"x":1.94436729,"y":1.5362221,"z":52.73474}'),
	(624, 0, '{"x":-103.381157,"y":-1596.927,"z":31.0108585}', '{"x":1.4785409,"y":0.7976163,"z":52.5664673}'),
	(625, 0, '{"x":-107.500351,"y":-1604.007,"z":31.1338024}', '{"x":0.998339534,"y":0.06284492,"z":48.60373}'),
	(626, 0, '{"x":-109.668358,"y":-1606.48462,"z":31.1371956}', '{"x":0.8992263,"y":0.04360554,"z":51.9414673}'),
	(627, 0, '{"x":-112.934372,"y":-1607.924,"z":31.1955128}', '{"x":1.4881196,"y":0.365959883,"z":51.06021}'),
	(628, 0, '{"x":-114.895935,"y":-1610.60083,"z":31.2555542}', '{"x":1.62035358,"y":0.265124053,"z":52.3174744}'),
	(629, 0, '{"x":-116.494377,"y":-1612.46472,"z":31.30253}', '{"x":1.60694039,"y":0.226651162,"z":52.47809}'),
	(630, 0, '{"x":-118.331047,"y":-1614.60974,"z":31.35317}', '{"x":1.24308133,"y":0.376994,"z":50.6983337}'),
	(631, 0, '{"x":-120.02742,"y":-1616.9895,"z":31.39602}', '{"x":1.56830692,"y":0.586389661,"z":51.71762}'),
	(632, 0, '{"x":-147.066208,"y":-1640.60791,"z":32.2936172}', '{"x":-5.069619,"y":-8.147945,"z":142.5188}'),
	(633, 0, '{"x":-150.778732,"y":-1645.64111,"z":32.3761368}', '{"x":-5.61880445,"y":-8.502747,"z":143.097839}'),
	(634, 0, '{"x":-155.027344,"y":-1651.59253,"z":32.3907127}', '{"x":-3.718309,"y":-6.29298,"z":143.949585}'),
	(635, 0, '{"x":-160.148849,"y":-1656.729,"z":32.5542831}', '{"x":-3.15401864,"y":-4.132018,"z":140.868042}'),
	(636, 0, '{"x":-165.480484,"y":-1662.75073,"z":32.6763153}', '{"x":-3.991056,"y":-3.84984779,"z":126.978455}'),
	(637, 0, '{"x":-118.346794,"y":-1615.14539,"z":31.3756485}', '{"x":0.549308956,"y":1.61647749,"z":53.72992}'),
	(638, 0, '{"x":-167.161438,"y":-1669.939,"z":32.5163651}', '{"x":3.61911964,"y":-0.172969058,"z":279.58374}'),
	(639, 0, '{"x":-122.050407,"y":-1619.25684,"z":31.4362869}', '{"x":1.85915494,"y":0.832845449,"z":231.6178}'),
	(640, 0, '{"x":-160.953964,"y":-1666.88733,"z":32.3975449}', '{"x":2.80633378,"y":0.788521647,"z":305.7153}'),
	(641, 0, '{"x":-124.02137,"y":-1621.36475,"z":31.47642}', '{"x":1.98222148,"y":0.876586258,"z":231.803268}'),
	(642, 0, '{"x":-156.6213,"y":-1662.85815,"z":32.28168}', '{"x":1.75462079,"y":0.7118428,"z":322.247223}'),
	(643, 0, '{"x":-126.674866,"y":-1624.652,"z":31.53847}', '{"x":1.24470806,"y":0.3495833,"z":230.128632}'),
	(644, 0, '{"x":-151.517975,"y":-1660.93286,"z":32.1829834}', '{"x":0.514186442,"y":-2.00167775,"z":47.0144958}'),
	(645, 0, '{"x":-150.934662,"y":-1656.71057,"z":32.10991}', '{"x":1.26646972,"y":-0.663332164,"z":320.520966}'),
	(646, 0, '{"x":-59.57225,"y":-1627.0708,"z":28.60905}', '{"x":-4.433962,"y":-5.110978,"z":140.669739}'),
	(647, 0, '{"x":-147.373367,"y":-1651.41748,"z":32.0591431}', '{"x":1.27896392,"y":0.4778212,"z":320.657135}'),
	(648, 0, '{"x":-64.0662,"y":-1631.81287,"z":28.6189632}', '{"x":-5.613682,"y":-6.129993,"z":137.405273}'),
	(649, 0, '{"x":-143.256,"y":-1646.96973,"z":31.9812145}', '{"x":1.12699735,"y":0.599597633,"z":323.6214}'),
	(650, 0, '{"x":-68.26936,"y":-1636.584,"z":28.61885}', '{"x":-5.414927,"y":-6.560246,"z":141.658936}'),
	(651, 0, '{"x":-116.803185,"y":-1696.62488,"z":28.5337238}', '{"x":1.79202628,"y":1.86489892,"z":319.5541}'),
	(652, 0, '{"x":-101.286827,"y":-1585.91309,"z":30.9725933}', '{"x":-2.09853625,"y":-3.54309583,"z":137.600159}'),
	(653, 0, '{"x":-101.265915,"y":-1677.88892,"z":28.5070038}', '{"x":1.20095539,"y":1.42787027,"z":320.4127}'),
	(654, 0, '{"x":-104.144196,"y":-1589.25513,"z":31.0331631}', '{"x":-1.89921117,"y":-3.70421576,"z":140.28894}'),
	(655, 0, '{"x":-108.420769,"y":-1591.83826,"z":31.2282619}', '{"x":0.7214312,"y":-3.50817561,"z":49.2781067}'),
	(656, 0, '{"x":-114.463921,"y":-1601.5697,"z":31.5221767}', '{"x":-5.48631239,"y":-7.167551,"z":50.8046875}'),
	(657, 0, '{"x":-117.426704,"y":-1605.1405,"z":31.6567}', '{"x":-6.7893796,"y":-9.194781,"z":142.241882}'),
	(658, 0, '{"x":-120.944954,"y":-1609.73865,"z":31.6810646}', '{"x":-6.09197855,"y":-8.607331,"z":140.886414}'),
	(659, 0, '{"x":-125.921425,"y":-1615.66309,"z":31.7243786}', '{"x":-6.69348669,"y":-7.956857,"z":138.8555}'),
	(660, 0, '{"x":-96.77432,"y":-1565.89209,"z":31.8690014}', '{"x":-4.874179,"y":-1.3256464,"z":49.2508545}'),
	(661, 0, '{"x":-109.241112,"y":-1598.81519,"z":31.0735474}', '{"x":-2.08564186,"y":-4.495352,"z":140.057068}'),
	(662, 0, '{"x":-101.615417,"y":-1561.88818,"z":32.29444}', '{"x":-4.458017,"y":-1.09924018,"z":50.17163}'),
	(663, 0, '{"x":-106.636444,"y":-1557.85486,"z":32.6774635}', '{"x":-4.17003345,"y":-0.6913957,"z":47.5681152}'),
	(664, 0, '{"x":-116.231522,"y":-1549.70593,"z":33.22462}', '{"x":-3.14170122,"y":0.808439553,"z":50.0285034}'),
	(665, 0, '{"x":-134.039063,"y":-1549.39636,"z":33.4917336}', '{"x":-1.12146544,"y":-2.45289946,"z":138.296082}'),
	(666, 0, '{"x":-141.887848,"y":-1558.59656,"z":33.7135048}', '{"x":-1.0354414,"y":-3.85877013,"z":139.966034}'),
	(667, 0, '{"x":-146.803131,"y":-1564.70667,"z":33.8804321}', '{"x":-2.72523952,"y":-3.52721882,"z":140.703583}'),
	(668, 0, '{"x":-151.806946,"y":-1570.38293,"z":33.9901428}', '{"x":-2.65890574,"y":-4.39854,"z":137.918549}'),
	(669, 0, '{"x":-157.476471,"y":-1577.17114,"z":34.05546}', '{"x":-1.796594,"y":-3.89037728,"z":141.303955}'),
	(670, 0, '{"x":498.594055,"y":-1803.57153,"z":27.7924461}', '{"x":0.798637,"y":1.0473386,"z":50.1570129}'),
	(671, 0, '{"x":502.4527,"y":-1797.95972,"z":27.7808075}', '{"x":0.8572605,"y":1.35250354,"z":59.4672241}'),
	(672, 0, '{"x":500.154083,"y":-1778.24463,"z":27.69482}', '{"x":0.9131438,"y":-2.501954,"z":199.405945}'),
	(673, 0, '{"x":491.291718,"y":-1782.552,"z":27.72812}', '{"x":-0.6848127,"y":2.117577,"z":12.6673889}'),
	(674, 0, '{"x":488.749573,"y":-1757.31641,"z":27.754406}', '{"x":0.618652761,"y":2.84191,"z":339.5143}'),
	(675, 0, '{"x":480.0731,"y":-1746.14307,"z":28.1653919}', '{"x":-0.589806557,"y":-1.3263787,"z":69.02118}'),
	(676, 0, '{"x":489.1724,"y":-1721.872,"z":28.69449}', '{"x":-0.5196083,"y":-1.30525553,"z":248.1739}'),
	(677, 0, '{"x":498.0295,"y":-1702.86377,"z":28.703846}', '{"x":-0.7595629,"y":-0.98100996,"z":52.7914734}'),
	(678, 0, '{"x":440.769165,"y":-1696.43445,"z":28.6049614}', '{"x":0.3376071,"y":0.377766877,"z":48.63626}'),
	(679, 0, '{"x":427.19986,"y":-1711.83289,"z":28.5875168}', '{"x":0.7588754,"y":0.9205871,"z":48.26996}'),
	(680, 0, '{"x":422.763275,"y":-1728.72986,"z":28.5792046}', '{"x":-0.012040128,"y":-0.011193553,"z":50.18521}'),
	(681, 0, '{"x":399.0759,"y":-1753.12378,"z":28.6211643}', '{"x":0.317550361,"y":-0.256089181,"z":49.92978}'),
	(682, 0, '{"x":347.852051,"y":-1809.35535,"z":27.8424034}', '{"x":1.28628361,"y":3.70382047,"z":48.2507935}'),
	(683, 0, '{"x":337.027985,"y":-1820.06177,"z":27.2475624}', '{"x":-0.6495012,"y":2.4114902,"z":50.1866455}'),
	(684, 0, '{"x":332.495026,"y":-1833.0575,"z":26.7604561}', '{"x":-3.360286,"y":-0.475667924,"z":225.694382}'),
	(685, 0, '{"x":305.066,"y":-1850.504,"z":26.0584469}', '{"x":-0.84559083,"y":-1.567502,"z":138.87265}'),
	(686, 0, '{"x":300.7123,"y":-1794.34546,"z":27.1289616}', '{"x":-2.17694736,"y":-0.104290307,"z":228.98732}'),
	(687, 0, '{"x":308.9566,"y":-1793.66187,"z":27.11474}', '{"x":0.180741459,"y":3.30066919,"z":320.689}'),
	(688, 0, '{"x":321.2123,"y":-1771.19275,"z":28.0983143}', '{"x":-2.44323468,"y":-0.5328104,"z":228.2942}'),
	(689, 0, '{"x":333.750732,"y":-1764.059,"z":28.22088}', '{"x":0.745718062,"y":2.6323998,"z":320.0994}'),
	(690, 0, '{"x":329.4516,"y":-1750.76782,"z":28.62355}', '{"x":-1.69706631,"y":1.35687852,"z":48.7147522}'),
	(691, 0, '{"x":268.342224,"y":-1689.14893,"z":28.4654846}', '{"x":-2.06180763,"y":-1.64241648,"z":140.700012}'),
	(692, 0, '{"x":267.250366,"y":-1701.53918,"z":28.58462}', '{"x":0.74214375,"y":1.13275278,"z":50.308136}'),
	(693, 1, '{"x":-1742.83655,"y":-700.6773,"z":9.393715}', '{"x":0.388006747,"y":-0.559765637,"z":320.739044}'),
	(694, 0, '{"x":259.733032,"y":-1714.173,"z":28.6193085}', '{"x":0.06033561,"y":0.834810555,"z":229.412109}'),
	(695, 0, '{"x":238.1731,"y":-1724.99512,"z":28.2356014}', '{"x":-0.7707955,"y":-1.3422823,"z":318.522949}'),
	(696, 0, '{"x":210.6155,"y":-1730.82532,"z":28.39051}', '{"x":-4.567065,"y":-2.31578159,"z":206.4562}'),
	(697, 0, '{"x":225.670563,"y":-1718.94592,"z":28.43957}', '{"x":-2.45480919,"y":-3.034482,"z":229.379639}'),
	(698, 0, '{"x":234.970627,"y":-1713.72607,"z":28.2977562}', '{"x":1.37447059,"y":1.96896625,"z":320.236023}'),
	(699, 0, '{"x":242.156418,"y":-1699.67566,"z":28.4518223}', '{"x":-2.11593056,"y":-2.35003161,"z":230.738647}'),
	(700, 0, '{"x":255.2131,"y":-1682.86536,"z":28.5245571}', '{"x":-1.3581537,"y":-1.10133338,"z":50.08847}'),
	(701, 0, '{"x":268.240356,"y":-1894.75427,"z":25.8379745}', '{"x":-1.95378566,"y":0.435078681,"z":140.746216}'),
	(702, 0, '{"x":268.329224,"y":-1906.35315,"z":25.764267}', '{"x":-1.14171636,"y":1.70841277,"z":49.275116}'),
	(703, 2, '{"x":-1767.23889,"y":-677.425354,"z":9.511841}', '{"x":1.1179477,"y":-2.688978,"z":320.950317}'),
	(704, 0, '{"x":-1767.23865,"y":-677.4248,"z":9.512162}', '{"x":1.087279,"y":-2.69966936,"z":320.9544}'),
	(705, 0, '{"x":260.09137,"y":-1918.67773,"z":24.8616829}', '{"x":-3.59406447,"y":1.21838,"z":229.767715}'),
	(706, 0, '{"x":238.145432,"y":-1930.28931,"z":23.24471}', '{"x":-5.15332747,"y":-1.03958261,"z":322.45163}'),
	(707, 0, '{"x":149.2664,"y":-1983.91687,"z":17.5254974}', '{"x":1.35197294,"y":2.06690526,"z":321.6503}'),
	(708, 0, '{"x":164.769577,"y":-1965.05237,"z":18.138958}', '{"x":-0.810914159,"y":2.17370224,"z":321.373077}'),
	(709, 0, '{"x":165.798691,"y":-1956.24536,"z":18.6297264}', '{"x":-2.339756,"y":2.796703,"z":228.139435}'),
	(710, 0, '{"x":191.467316,"y":-1922.152,"z":21.6502457}', '{"x":-2.8387053,"y":1.45079327,"z":228.12674}'),
	(711, 0, '{"x":202.769409,"y":-1905.90442,"z":23.14603}', '{"x":-4.26498938,"y":-0.6741861,"z":51.5102539}'),
	(712, 0, '{"x":188.374542,"y":-1896.08374,"z":23.0633221}', '{"x":-1.70273519,"y":1.13032472,"z":65.59656}'),
	(713, 0, '{"x":176.392975,"y":-1885.02234,"z":23.42869}', '{"x":-3.82908869,"y":2.21133876,"z":154.347717}'),
	(714, 0, '{"x":158.6727,"y":-1898.72461,"z":22.3130531}', '{"x":-0.5404229,"y":-1.31493068,"z":333.3827}'),
	(715, 0, '{"x":139.115265,"y":-1868.21741,"z":23.52044}', '{"x":-2.99377227,"y":-0.507475138,"z":155.73291}'),
	(716, 0, '{"x":138.402679,"y":-1892.11536,"z":22.67938}', '{"x":0.7692209,"y":-0.5719198,"z":333.7619}'),
	(717, 0, '{"x":122.89653,"y":-1876.923,"z":23.077589}', '{"x":-3.64774919,"y":0.4082245,"z":65.6429443}'),
	(718, 0, '{"x":115.789917,"y":-1863.31641,"z":23.95492}', '{"x":-2.89815235,"y":-0.8173172,"z":63.76767}'),
	(719, 0, '{"x":106.970474,"y":-1870.46313,"z":23.4432869}', '{"x":-2.28170085,"y":1.02833724,"z":74.61856}'),
	(720, 1, '{"x":-1767.18372,"y":-677.430847,"z":9.512257}', '{"x":1.01145113,"y":-2.75680137,"z":323.854919}'),
	(721, 1, '{"x":-1777.62146,"y":-667.4426,"z":9.644677}', '{"x":-0.488002926,"y":-0.0105390577,"z":320.063049}'),
	(722, 1, '{"x":-1785.29932,"y":-659.676941,"z":9.692551}', '{"x":0.8380012,"y":-0.7343196,"z":322.374573}'),
	(723, 1, '{"x":-1795.798,"y":-644.898254,"z":10.1363459}', '{"x":-1.669631,"y":-0.0709583461,"z":45.56781}'),
	(724, 1, '{"x":-1806.5509,"y":-642.374,"z":10.1620064}', '{"x":-0.205793157,"y":0.157164663,"z":140.374786}'),
	(725, 1, '{"x":-1812.513,"y":-637.0956,"z":10.1999016}', '{"x":-0.0301903877,"y":0.0215532221,"z":135.334229}'),
	(726, 0, '{"x":136.393829,"y":-1826.8197,"z":26.3005219}', '{"x":-0.7280152,"y":3.59260917,"z":49.05652}'),
	(727, 1, '{"x":-1812.3717,"y":-636.9456,"z":10.2012186}', '{"x":-0.120789453,"y":0.09292436,"z":140.260559}'),
	(728, 1, '{"x":-1826.71436,"y":-625.211,"z":10.3293724}', '{"x":-0.6080305,"y":1.74113393,"z":139.46991}'),
	(729, 0, '{"x":369.3394,"y":-1978.11047,"z":23.478178}', '{"x":-1.7811178,"y":-0.666220963,"z":160.0951}'),
	(730, 0, '{"x":366.704681,"y":-1977.28687,"z":23.5189133}', '{"x":-1.84382939,"y":-0.229420692,"z":161.901}'),
	(731, 0, '{"x":366.703552,"y":-1977.28589,"z":23.5204639}', '{"x":-1.75243711,"y":-0.154197842,"z":161.895447}'),
	(732, 1, '{"x":-1826.78625,"y":-625.3139,"z":10.3259134}', '{"x":-0.5235788,"y":1.72219121,"z":139.525}'),
	(733, 1, '{"x":-1832.95178,"y":-616.3282,"z":10.4914761}', '{"x":-3.08800459,"y":2.50437832,"z":133.8883}'),
	(734, 0, '{"x":366.704926,"y":-1977.286,"z":23.52067}', '{"x":-1.80458558,"y":-0.276862562,"z":161.924622}'),
	(735, 2, '{"x":-1865.59229,"y":-590.367249,"z":11.0444183}', '{"x":1.92145908,"y":-1.92743647,"z":137.467834}'),
	(736, 0, '{"x":363.979218,"y":-1975.96753,"z":23.581625}', '{"x":-2.70288348,"y":-0.4292972,"z":159.054321}'),
	(737, 2, '{"x":-1879.04688,"y":-579.155762,"z":11.041173}', '{"x":1.2389611,"y":-0.6905973,"z":140.441711}'),
	(738, 2, '{"x":-1888.17737,"y":-571.0601,"z":11.0490093}', '{"x":0.7879304,"y":-0.719240248,"z":138.59259}'),
	(739, 0, '{"x":361.342529,"y":-1974.5498,"z":23.66348}', '{"x":-2.32279444,"y":-0.252438366,"z":163.000977}'),
	(740, 5, '{"x":-2610.22656,"y":1683.91016,"z":141.545651}', '{"x":0.0,"y":0.0,"z":55.4047539}'),
	(741, 2, '{"x":-1901.133,"y":-561.437866,"z":11.0685139}', '{"x":0.306938052,"y":-0.282681048,"z":138.9338}'),
	(742, 2, '{"x":-1907.33765,"y":-552.1616,"z":11.0614986}', '{"x":1.03008437,"y":-0.601627648,"z":146.195313}'),
	(743, 2, '{"x":-1913.56738,"y":-544.3592,"z":11.0574636}', '{"x":0.152947247,"y":-0.46820116,"z":322.542175}'),
	(744, 2, '{"x":-1939.36584,"y":-530.1286,"z":11.10017}', '{"x":0.179781884,"y":-0.008230539,"z":141.272064}'),
	(745, 2, '{"x":-1932.8147,"y":-534.405945,"z":11.0883846}', '{"x":0.02662749,"y":-0.06404749,"z":137.318817}'),
	(746, 2, '{"x":-1953.77307,"y":-515.865662,"z":11.1450911}', '{"x":-0.680190563,"y":0.09211762,"z":321.393463}'),
	(747, 2, '{"x":-1958.795,"y":-507.457947,"z":11.1154795}', '{"x":0.5208345,"y":-0.44147715,"z":47.8936768}'),
	(748, 2, '{"x":-1967.63489,"y":-502.64505,"z":11.1109638}', '{"x":-0.197089851,"y":-0.38168332,"z":319.610931}'),
	(749, 2, '{"x":-1959.24353,"y":-507.441681,"z":11.1181307}', '{"x":0.487959653,"y":-0.456117,"z":41.7030029}'),
	(750, 2, '{"x":-1967.44263,"y":-501.9487,"z":11.1150465}', '{"x":0.5372975,"y":-1.3442502,"z":319.905273}'),
	(751, 5, '{"x":-1939.5033,"y":580.34436,"z":118.455574}', '{"x":-0.267579615,"y":8.443619,"z":69.40637}'),
	(752, 5, '{"x":1413.79626,"y":1117.78162,"z":113.717918}', '{"x":0.0,"y":0.0,"z":352.834381}'),
	(753, 5, '{"x":-1662.84631,"y":-298.545166,"z":51.2644577}', '{"x":-2.25575352,"y":-1.016543,"z":51.9095764}'),
	(754, 5, '{"x":-1490.22,"y":20.1579742,"z":54.2952881}', '{"x":-0.201414481,"y":-0.028115781,"z":184.019379}'),
	(755, 3, '{"x":-1939.42712,"y":462.136658,"z":101.922287}', '{"x":-0.9280014,"y":3.40976071,"z":97.2038}'),
	(756, 5, '{"x":-3190.903,"y":819.6127,"z":8.610911}', '{"x":0.0,"y":0.0,"z":301.675323}'),
	(757, 4, '{"x":-1096.2959,"y":358.090271,"z":68.1563644}', '{"x":-0.727452636,"y":0.407940924,"z":359.7718}'),
	(758, 4, '{"x":-104.2828,"y":823.8885,"z":235.375015}', '{"x":-0.468397737,"y":-0.07669419,"z":10.25119}'),
	(759, 4, '{"x":-169.07132,"y":919.7096,"z":235.305954}', '{"x":-0.3558404,"y":0.337864518,"z":316.608246}'),
	(760, 4, '{"x":-1096.25867,"y":356.819244,"z":68.07653}', '{"x":0.0544856749,"y":0.299196929,"z":1.18127441}'),
	(761, 4, '{"x":-170.309631,"y":919.2121,"z":235.231613}', '{"x":0.0684275851,"y":-0.04062779,"z":314.112274}'),
	(762, 5, '{"x":-170.474945,"y":919.2476,"z":235.23143}', '{"x":0.0318946838,"y":-0.0508156866,"z":314.843475}'),
	(763, -1, '{"x":1969.38037,"y":3822.43774,"z":32.0205841}', '{"x":0.117234275,"y":-0.191620573,"z":122.701874}');
/*!40000 ALTER TABLE `garages` ENABLE KEYS */;

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
	(0, '', '2', '{"x":317.21393,"y":-2043.4792,"z":19.816385}', '40000', 0, '2', '214323', '[]'),
	(1, '', '2', '{"x":313.82245,"y":-2040.6072,"z":19.816381}', '40000', 0, '1', '868093', '[]'),
	(2, '', '2', '{"x":324.326,"y":-2049.711,"z":19.812498}', '40000', 0, '3', '618509', '[]'),
	(3, '', '2', '{"x":325.673,"y":-2050.7927,"z":19.816387}', '40000', 0, '4', '23158', '[]'),
	(4, '', '2', '{"x":333.16333,"y":-2056.7703,"z":19.816381}', '40000', 0, '5', '878164', '[]'),
	(5, '', '2', '{"x":334.5466,"y":-2058.1025,"z":19.816397}', '40000', 0, '6', '285119', '[]'),
	(6, '', '2', '{"x":341.80325,"y":-2064.2751,"z":19.819237}', '40000', 0, '7', '699680', '[]'),
	(7, '', '2', '{"x":345.54675,"y":-2067.419,"z":19.81643}', '40000', 0, '8', '366070', '[]'),
	(8, '', '2', '{"x":356.74585,"y":-2074.6848,"z":20.617907}', '40000', 0, '9', '526597', '[]'),
	(9, '', '2', '{"x":357.8474,"y":-2073.3677,"z":20.624485}', '40000', 0, '10', '849743', '[]'),
	(10, '', '2', '{"x":365.2743,"y":-2064.4656,"z":20.624401}', '40000', 0, '11', '241559', '[]'),
	(11, '', '2', '{"x":371.08908,"y":-2057.14,"z":20.624393}', '40000', 0, '12', '794814', '[]'),
	(12, '', '2', '{"x":372.24136,"y":-2055.7915,"z":20.624512}', '40000', 0, '13', '236504', '[]'),
	(13, '', '2', '{"x":364.15555,"y":-2045.9303,"z":21.23399}', '40000', 0, '14', '552377', '[]'),
	(14, '', '2', '{"x":360.4447,"y":-2042.9016,"z":21.234333}', '40000', 0, '15', '431560', '[]'),
	(15, '', '2', '{"x":353.61108,"y":-2036.2603,"z":21.234123}', '40000', 0, '16', '723530', '[]'),
	(16, '', '2', '{"x":352.12994,"y":-2035.1763,"z":21.234295}', '40000', 0, '17', '259808', '[]'),
	(17, '', '2', '{"x":344.73532,"y":-2028.9391,"z":21.232815}', '40000', 0, '18', '172933', '[]'),
	(18, '', '2', '{"x":343.40808,"y":-2027.8845,"z":21.234293}', '40000', 0, '19', '822643', '[]'),
	(19, '', '2', '{"x":336.057,"y":-2021.6538,"z":21.233143}', '40000', 0, '20', '179979', '[]'),
	(20, '', '2', '{"x":332.33127,"y":-2018.6263,"z":21.234287}', '40000', 0, '21', '440530', '[]'),
	(21, '', '3', '{"x":1090.521,"y":-484.41043,"z":64.536095}', '110000', 1, '117', '397757', '[]'),
	(22, '', '2', '{"x":236.38484,"y":-2045.9293,"z":17.259996}', '40000', 0, '25', '883059', '[]'),
	(23, '', '6', '{"x":-698.5782,"y":46.89701,"z":42.907898}', '800000', 1, '34', '654016', '[]'),
	(24, '', '2', '{"x":251.1861,"y":-2030.0282,"z":17.586128}', '40000', 0, '26', '934310', '[]'),
	(25, '', '2', '{"x":256.73178,"y":-2023.6107,"z":18.146286}', '40000', 0, '27', '510099', '[]'),
	(26, '', '2', '{"x":279.9102,"y":-1993.6504,"z":19.683743}', '40000', 0, '28', '254906', '[]'),
	(27, '', '2', '{"x":291.2865,"y":-1980.5872,"z":20.480524}', '40000', 0, '29', '252558', '[]'),
	(28, '', '2', '{"x":296.24048,"y":-1972.3716,"z":21.780952}', '40000', 0, '30', '434460', '[]'),
	(29, '', '2', '{"x":312.3926,"y":-1956.4044,"z":23.495216}', '40000', 0, '31', '844283', '[]'),
	(30, '', '2', '{"x":324.02527,"y":-1937.8783,"z":23.898966}', '40000', 1, '32', '436090', '[]'),
	(31, '', '2', '{"x":368.25314,"y":-1895.98,"z":24.058517}', '40000', 1, '35', '12400', '[]'),
	(32, '', '2', '{"x":385.3333,"y":-1882.003,"z":24.911942}', '40000', 1, '36', '789215', '[]'),
	(33, '', '2', '{"x":399.5597,"y":-1864.9646,"z":25.596336}', '40000', 0, '37', '441895', '[]'),
	(34, '', '2', '{"x":412.92792,"y":-1856.4076,"z":26.199396}', '40000', 0, '38', '202126', '[]'),
	(35, '', '2', '{"x":427.38678,"y":-1841.858,"z":27.33266}', '40000', 0, '39', '338770', '[]'),
	(36, '', '2', '{"x":440.27365,"y":-1829.7914,"z":27.237883}', '40000', 0, '40', '517218', '[]'),
	(37, '', '1', '{"x":1315.76,"y":-1526.7816,"z":50.68083}', '35000', 1, '41', '810384', '[]'),
	(38, '', '1', '{"x":1327.1919,"y":-1552.804,"z":52.931526}', '35000', 1, '42', '179196', '[]'),
	(39, '', '1', '{"x":1360.4197,"y":-1555.7731,"z":55.22131}', '25000', 1, '44', '165586', '[]'),
	(40, '', '1', '{"x":1338.1855,"y":-1524.5396,"z":53.46191}', '35000', 1, '43', '959886', '[]'),
	(41, '', '1', '{"x":1382.0878,"y":-1544.6637,"z":55.98719}', '25000', 1, '46', '350018', '[]'),
	(42, '', '1', '{"x":1379.2502,"y":-1515.0702,"z":57.315636}', '35000', 1, '45', '52626', '[]'),
	(43, '', '2', '{"x":1286.6776,"y":-1604.3154,"z":53.704887}', '60000', 1, '53', '685129', '[]'),
	(44, '', '2', '{"x":1261.5793,"y":-1616.8215,"z":53.6229}', '40000', 1, '54', '520202', '[]'),
	(45, '', '2', '{"x":1245.3737,"y":-1626.9296,"z":52.162445}', '40000', 0, '55', '255654', '[]'),
	(46, '', '2', '{"x":1230.731,"y":-1591.1416,"z":52.646114}', '40000', 0, '56', '779744', '[]'),
	(47, '', '2', '{"x":1205.7739,"y":-1607.4316,"z":49.6187}', '40000', 0, '57', '22532', '[]'),
	(48, '', '2', '{"x":1214.5049,"y":-1644.3094,"z":47.52601}', '40000', 0, '58', '426091', '[]'),
	(49, '', '2', '{"x":1193.0111,"y":-1622.6552,"z":44.101456}', '40000', 0, '59', '238025', '[]'),
	(50, '', '2', '{"x":1193.675,"y":-1656.4889,"z":41.906387}', '40000', 0, '60', '301799', '[]'),
	(51, '', '2', '{"x":1354.9104,"y":-1690.5558,"z":59.37117}', '40000', 0, '67', '620254', '[]'),
	(52, '', '2', '{"x":1365.5804,"y":-1721.7289,"z":64.4994}', '40000', 0, '68', '166818', '[]'),
	(53, '', '2', '{"x":1312.0833,"y":-1697.6171,"z":57.105373}', '40000', 0, '66', '578341', '[]'),
	(54, '', '2', '{"x":1314.5975,"y":-1733.0747,"z":53.57811}', '40000', 0, '65', '37771', '[]'),
	(55, '', '2', '{"x":1289.31,"y":-1710.7499,"z":54.35495}', '40000', 0, '64', '816565', '[]'),
	(56, '', '2', '{"x":1294.9944,"y":-1739.803,"z":53.151768}', '40000', 0, '63', '985033', '[]'),
	(57, '', '2', '{"x":1250.7135,"y":-1734.2885,"z":50.91199}', '40000', 0, '62', '964491', '[]'),
	(58, '', '2', '{"x":1259.1494,"y":-1761.9723,"z":48.53826}', '40000', 0, '61', '88847', '[]'),
	(59, '', '2', '{"x":1264.9614,"y":-702.8916,"z":63.59785}', '40000', 1, '120', '368065', '[]'),
	(60, '', '2', '{"x":1270.9791,"y":-683.3786,"z":64.91164}', '40000', 1, '118', '30214', '[]'),
	(61, '', '2', '{"x":1265.4755,"y":-648.4172,"z":66.80146}', '60000', 1, '115', '447123', '[]'),
	(62, '', '2', '{"x":1251.1211,"y":-621.2679,"z":68.29324}', '40000', 1, '111', '931609', '[]'),
	(63, '', '2', '{"x":1240.7615,"y":-601.63617,"z":68.6631}', '40000', 1, '108', '682313', '[]'),
	(64, '', '2', '{"x":1241.595,"y":-566.28125,"z":68.53742}', '60000', 1, '105', '413654', '[]'),
	(65, '', '2', '{"x":1251.015,"y":-515.58594,"z":68.223755}', '60000', 1, '143', '229160', '[]'),
	(66, '', '2', '{"x":1251.6835,"y":-494.16214,"z":68.78691}', '40000', 1, '145', '5600', '[]'),
	(67, '', '2', '{"x":1259.6887,"y":-480.04218,"z":69.06891}', '40000', 1, '149', '794608', '[]'),
	(68, '', '2', '{"x":1265.895,"y":-458.11258,"z":69.396866}', '60000', 1, '152', '350251', '[]'),
	(69, '', '2', '{"x":1262.5609,"y":-429.72662,"z":68.89474}', '40000', 1, '153', '92790', '[]'),
	(70, '', '3', '{"x":1229.4763,"y":-725.34235,"z":59.836483}', '110000', 0, '124', '206312', '[]'),
	(71, '', '3', '{"x":1223.0345,"y":-696.829,"z":59.683956}', '110000', 0, '127', '449422', '[]'),
	(72, '', '3', '{"x":1221.4639,"y":-669.2767,"z":62.413536}', '110000', 0, '130', '993735', '[]'),
	(73, '', '3', '{"x":1207.3943,"y":-620.2879,"z":65.31863}', '110000', 0, '133', '657058', '[]'),
	(74, '', '3', '{"x":1203.6174,"y":-598.47,"z":66.943535}', '110000', 1, '135', '220091', '[]'),
	(75, '', '3', '{"x":1201.0294,"y":-575.5069,"z":68.01912}', '110000', 0, '137', '90512', '[]'),
	(76, '', '3', '{"x":1204.8898,"y":-557.7646,"z":68.49516}', '110000', 0, '141', '345132', '[]'),
	(77, '', '4', '{"x":1303.1842,"y":-527.40405,"z":70.34066}', '120000', 1, '160', '197930', '[]'),
	(78, '', '4', '{"x":1301.0547,"y":-574.2354,"z":70.6122}', '120000', 1, '156', '133815', '[]'),
	(79, '', '4', '{"x":1328.378,"y":-535.91547,"z":71.320816}', '120000', 1, '170', '678657', '[]'),
	(80, '', '4', '{"x":1323.4315,"y":-582.99384,"z":72.126305}', '120000', 1, '167', '730353', '[]'),
	(81, '', '4', '{"x":1348.3075,"y":-546.93604,"z":72.77166}', '120000', 1, '172', '232375', '[]'),
	(82, '', '4', '{"x":1373.106,"y":-555.63025,"z":73.56568}', '120000', 1, '177', '826465', '[]'),
	(83, '', '4', '{"x":1388.8884,"y":-569.6225,"z":73.37649}', '120000', 1, '185', '196436', '[]'),
	(84, '', '4', '{"x":1386.1523,"y":-593.5735,"z":73.36508}', '120000', 1, '182', '542485', '[]'),
	(85, '', '4', '{"x":1367.296,"y":-606.444,"z":73.590935}', '120000', 1, '180', '815834', '[]'),
	(86, '', '4', '{"x":1341.5103,"y":-597.4519,"z":73.580925}', '120000', 1, '175', '845580', '[]'),
	(87, '', '3', '{"x":1098.5468,"y":-464.77454,"z":66.19316}', '110000', 1, '116', '210874', '[]'),
	(88, '', '3', '{"x":1099.4657,"y":-438.73495,"z":66.670555}', '110000', 0, '114', '404125', '[]'),
	(89, '', '3', '{"x":1100.7571,"y":-411.31638,"z":66.433846}', '110000', 1, '112', '385560', '[]'),
	(90, '', '3', '{"x":1114.381,"y":-391.329,"z":67.83453}', '110000', 0, '113', '353736', '[]'),
	(91, '', '3', '{"x":1056.2174,"y":-448.981,"z":65.13746}', '110000', 0, '122', '552726', '[]'),
	(92, '', '3', '{"x":1051.1207,"y":-470.47116,"z":63.166462}', '110000', 0, '121', '721538', '[]'),
	(93, '', '3', '{"x":1046.3667,"y":-497.75708,"z":62.935436}', '110000', 0, '119', '811129', '[]'),
	(94, '', '3', '{"x":1060.5464,"y":-378.39767,"z":67.09629}', '110000', 0, '183', '135372', '[]'),
	(95, '', '3', '{"x":1029.0269,"y":-408.603,"z":65.001305}', '110000', 0, '181', '512764', '[]'),
	(96, '', '3', '{"x":1010.3889,"y":-423.41785,"z":64.22189}', '110000', 0, '179', '418408', '[]'),
	(97, '', '3', '{"x":987.52185,"y":-432.9656,"z":62.928654}', '110000', 1, '178', '370312', '[]'),
	(98, '', '3', '{"x":967.16425,"y":-451.5857,"z":61.665436}', '110000', 0, '176', '271476', '[]'),
	(99, '', '3', '{"x":944.48016,"y":-463.072,"z":60.43346}', '110000', 0, '174', '291043', '[]'),
	(100, '', '3', '{"x":921.8205,"y":-477.87653,"z":59.963627}', '110000', 0, '173', '250055', '[]'),
	(101, '', '3', '{"x":906.19684,"y":-489.47696,"z":58.27557}', '110000', 1, '171', '985135', '[]'),
	(102, '', '3', '{"x":878.3909,"y":-497.9359,"z":56.9827}', '110000', 0, '169', '672279', '[]'),
	(103, '', '3', '{"x":861.4952,"y":-509.03656,"z":56.598328}', '110000', 0, '168', '333301', '[]'),
	(104, '', '3', '{"x":850.381,"y":-532.64374,"z":56.778877}', '110000', 1, '166', '31713', '[]'),
	(105, '', '3', '{"x":844.10065,"y":-562.6532,"z":56.84359}', '110000', 1, '165', '852375', '[]'),
	(106, '', '3', '{"x":861.73535,"y":-583.5375,"z":57.02173}', '110000', 1, '164', '626518', '[]'),
	(107, '', '3', '{"x":886.9701,"y":-608.1028,"z":57.31994}', '110000', 1, '163', '509759', '[]'),
	(108, '', '3', '{"x":903.1155,"y":-615.6634,"z":57.332832}', '110000', 1, '162', '358251', '[]'),
	(109, '', '3', '{"x":928.7755,"y":-639.7979,"z":57.10878}', '110000', 0, '161', '947258', '[]'),
	(110, '', '3', '{"x":943.7115,"y":-653.63824,"z":57.297947}', '110000', 0, '159', '471433', '[]'),
	(111, '', '3', '{"x":959.9991,"y":-669.83887,"z":57.329754}', '110000', 1, '158', '787103', '[]'),
	(112, '', '3', '{"x":970.76013,"y":-701.45667,"z":57.565655}', '110000', 0, '157', '830677', '[]'),
	(113, '', '3', '{"x":979.2583,"y":-716.1747,"z":57.07779}', '110000', 1, '155', '410188', '[]'),
	(114, '', '3', '{"x":996.72614,"y":-729.5223,"z":56.694695}', '110000', 1, '154', '637711', '[]'),
	(115, '', '2', '{"x":1014.4416,"y":-469.1557,"z":63.38299}', '40000', 1, '125', '797838', '[]'),
	(116, '', '2', '{"x":1005.95056,"y":-511.32846,"z":59.71394}', '40000', 1, '140', '620656', '[]'),
	(117, '', '2', '{"x":969.9736,"y":-502.31137,"z":61.020966}', '40000', 1, '126', '735174', '[]'),
	(118, '', '2', '{"x":946.00116,"y":-518.9806,"z":59.505447}', '40000', 1, '128', '139828', '[]'),
	(119, '', '3', '{"x":924.24756,"y":-525.8362,"z":58.668957}', '110000', 0, '131', '597819', '[]'),
	(120, '', '3', '{"x":893.02374,"y":-540.7058,"z":57.386604}', '110000', 0, '132', '383578', '[]'),
	(121, '', '3', '{"x":919.76825,"y":-569.7781,"z":57.24634}', '110000', 1, '134', '794724', '[]'),
	(122, '', '2', '{"x":965.33167,"y":-542.05493,"z":58.606144}', '40000', 1, '139', '390483', '[]'),
	(123, '', '2', '{"x":987.8692,"y":-525.9945,"z":59.56474}', '40000', 1, '138', '964690', '[]'),
	(124, '', '2', '{"x":1009.807,"y":-572.4869,"z":59.46886}', '40000', 1, '142', '739053', '[]'),
	(125, '', '2', '{"x":999.6056,"y":-593.8989,"z":58.49772}', '40000', 1, '144', '653585', '[]'),
	(126, '', '2', '{"x":993.86993,"y":-620.5413,"z":57.898975}', '40000', 1, '148', '727883', '[]'),
	(127, '', '2', '{"x":964.1757,"y":-596.0862,"z":58.782673}', '40000', 0, '150', '182606', '[]'),
	(128, '', '2', '{"x":976.5081,"y":-580.467,"z":58.729977}', '40000', 1, '151', '521686', '[]'),
	(129, '', '2', '{"x":309.46964,"y":-208.01523,"z":53.096897}', '40000', 0, '83', '707326', '[]'),
	(130, '', '2', '{"x":311.19888,"y":-203.46202,"z":53.0675}', '40000', 1, '82', '672103', '[]'),
	(131, '', '2', '{"x":313.2263,"y":-198.17963,"z":53.077423}', '40000', 1, '81', '974819', '[]'),
	(132, '', '2', '{"x":315.73755,"y":-195.02574,"z":53.062515}', '40000', 0, '80', '926452', '[]'),
	(133, '', '2', '{"x":319.3413,"y":-196.1717,"z":53.05803}', '40000', 0, '79', '842771', '[]'),
	(134, '', '2', '{"x":321.40015,"y":-196.96545,"z":53.106503}', '40000', 0, '78', '428603', '[]'),
	(135, '', '2', '{"x":307.59848,"y":-213.20831,"z":53.10168}', '40000', 0, '84', '745216', '[]'),
	(136, '', '2', '{"x":307.08258,"y":-216.53252,"z":53.101784}', '40000', 0, '85', '560095', '[]'),
	(137, '', '2', '{"x":310.77478,"y":-217.99457,"z":53.101807}', '40000', 0, '86', '493165', '[]'),
	(138, '', '2', '{"x":313.00623,"y":-218.80687,"z":53.101917}', '60000', 1, '87', '164723', '[]'),
	(139, '', '2', '{"x":329.28738,"y":-225.23036,"z":53.10178}', '60000', 1, '77', '690108', '[]'),
	(140, '', '2', '{"x":331.4496,"y":-225.95514,"z":53.10178}', '40000', 0, '75', '189317', '[]'),
	(141, '', '2', '{"x":334.9322,"y":-227.28891,"z":53.101784}', '40000', 0, '74', '335822', '[]'),
	(142, '', '2', '{"x":337.14066,"y":-224.64986,"z":53.101784}', '40000', 0, '73', '852621', '[]'),
	(143, '', '2', '{"x":339.15082,"y":-219.40901,"z":53.101784}', '40000', 1, '72', '456866', '[]'),
	(144, '', '2', '{"x":340.85522,"y":-214.97108,"z":53.10182}', '40000', 1, '71', '914125', '[]'),
	(145, '', '2', '{"x":342.9597,"y":-209.48753,"z":53.101807}', '40000', 0, '70', '566631', '[]'),
	(146, '', '2', '{"x":344.61954,"y":-205.16414,"z":53.104267}', '40000', 1, '69', '722047', '[]'),
	(147, '', '2', '{"x":520.11505,"y":228.76344,"z":103.62405}', '40000', 1, '96', '311350', '[]'),
	(148, '', '2', '{"x":527.4529,"y":226.09406,"z":103.62458}', '40000', 0, '97', '173419', '[]'),
	(149, '', '2', '{"x":531.60376,"y":222.09155,"z":103.61813}', '40000', 0, '98', '337533', '[]'),
	(150, '', '2', '{"x":528.2401,"y":213.97,"z":103.62444}', '40000', 1, '99', '892106', '[]'),
	(151, '', '2', '{"x":526.01996,"y":207.4017,"z":103.62412}', '40000', 1, '100', '683233', '[]'),
	(152, '', '2', '{"x":523.2421,"y":199.67238,"z":103.62426}', '40000', 1, '101', '230484', '[]'),
	(153, '', '2', '{"x":520.6013,"y":192.19632,"z":103.62466}', '40000', 0, '102', '673655', '[]'),
	(154, '', '2', '{"x":515.28064,"y":190.85217,"z":103.62498}', '40000', 0, '103', '907463', '[]'),
	(155, '', '2', '{"x":509.07703,"y":193.1034,"z":103.62498}', '40000', 0, '104', '455329', '[]'),
	(156, '', '2', '{"x":485.43167,"y":201.72672,"z":103.62497}', '40000', 0, '88', '594652', '[]'),
	(157, '', '2', '{"x":481.95316,"y":205.7631,"z":103.6248}', '40000', 0, '89', '707587', '[]'),
	(158, '', '2', '{"x":484.47354,"y":212.78642,"z":103.62419}', '40000', 0, '90', '594246', '[]'),
	(159, '', '2', '{"x":487.43835,"y":220.80852,"z":103.6242}', '40000', 1, '91', '378127', '[]'),
	(160, '', '2', '{"x":489.61893,"y":226.93057,"z":103.62467}', '40000', 0, '92', '124493', '[]'),
	(161, '', '2', '{"x":496.7859,"y":237.37482,"z":103.62491}', '40000', 0, '93', '443912', '[]'),
	(162, '', '2', '{"x":504.90823,"y":234.4458,"z":103.62442}', '40000', 0, '94', '988071', '[]'),
	(163, '', '2', '{"x":511.23877,"y":231.99352,"z":103.624084}', '40000', 0, '95', '650924', '[]'),
	(164, '', '6', '{"x":-1549.4196,"y":-90.46821,"z":53.809185}', '1500000', 1, '47', '275156', '[]'),
	(165, '', '6', '{"x":-2587.844,"y":1910.8741,"z":166.37897}', '2000000', 1, '48', '496613', '[]'),
	(166, '', '6', '{"x":-1516.7312,"y":851.6416,"z":180.4747}', '1800000', 1, '49', '860649', '[]'),
	(167, '', '6', '{"x":-1189.9221,"y":292.10178,"z":68.77236}', '13000000', 0, '50', '987905', '[]'),
	(168, '', '2', '{"x":495.56943,"y":-1823.0178,"z":27.749702}', '40000', 0, '51', '981584', '[]'),
	(169, '', '3', '{"x":-1024.6201,"y":-1139.4546,"z":1.6252726}', '110000', 0, '186', '892493', '[]'),
	(170, '', '3', '{"x":-1034.6089,"y":-1147.0815,"z":1.0385987}', '110000', 0, '188', '237743', '[]'),
	(171, '', '3', '{"x":-1045.9878,"y":-1159.8147,"z":1.0385994}', '110000', 0, '190', '127492', '[]'),
	(172, '', '3', '{"x":-1063.4043,"y":-1160.2498,"z":1.6254233}', '110000', 0, '191', '570451', '[]'),
	(173, '', '3', '{"x":-1068.1332,"y":-1163.57,"z":1.6252908}', '110000', 0, '193', '449719', '[]'),
	(174, '', '3', '{"x":-1127.9177,"y":-1080.781,"z":3.1026907}', '110000', 0, '231', '408503', '[]'),
	(175, '', '3', '{"x":-1074.0911,"y":-1152.7974,"z":1.0385963}', '110000', 0, '192', '47756', '[]'),
	(176, '', '3', '{"x":-1122.3341,"y":-1046.3596,"z":1.0303549}', '110000', 0, '229', '942102', '[]'),
	(177, '', '3', '{"x":-1114.1323,"y":-1069.2777,"z":1.0303558}', '110000', 0, '227', '933616', '[]'),
	(178, '', '3', '{"x":-1104.0731,"y":-1060.0085,"z":1.6124631}', '110000', 0, '225', '50566', '[]'),
	(179, '', '3', '{"x":-1108.7986,"y":-1040.9379,"z":1.030356}', '110000', 0, '223', '172423', '[]'),
	(180, '', '3', '{"x":-1040.5928,"y":-1135.9958,"z":1.038597}', '110000', 0, '189', '931536', '[]'),
	(181, '', '3', '{"x":-1092.0944,"y":-1039.9689,"z":1.030356}', '110000', 0, '221', '416533', '[]'),
	(182, '', '3', '{"x":-1068.4581,"y":-1049.1835,"z":5.2916627}', '110000', 1, '219', '9188', '[]'),
	(183, '', '3', '{"x":-1033.9913,"y":-1128.038,"z":1.0385967}', '110000', 1, '187', '184154', '[]'),
	(184, '', '3', '{"x":-1151.8959,"y":-1132.7695,"z":1.6296958}', '110000', 0, '203', '815218', '[]'),
	(185, '', '3', '{"x":-1041.5599,"y":-1025.7587,"z":1.6262716}', '110000', 0, '215', '988868', '[]'),
	(186, '', '3', '{"x":-1051.4618,"y":-1006.6263,"z":5.290491}', '110000', 0, '217', '744336', '[]'),
	(187, '', '3', '{"x":-1022.07227,"y":-1022.89484,"z":1.0303613}', '110000', 0, '213', '252798', '[]'),
	(188, '', '3', '{"x":-1023.0248,"y":-997.83386,"z":1.0301944}', '110000', 0, '211', '935306', '[]'),
	(189, '', '3', '{"x":-1008.50903,"y":-1015.2959,"z":1.0303081}', '110000', 0, '209', '973273', '[]'),
	(190, '', '3', '{"x":-1149.7931,"y":-1136.4124,"z":1.6242789}', '110000', 0, '205', '150565', '[]'),
	(191, '', '3', '{"x":-1142.5839,"y":-1144.1827,"z":1.7279204}', '110000', 0, '206', '852506', '[]'),
	(192, '', '3', '{"x":-990.67334,"y":-975.7802,"z":3.102696}', '110000', 0, '208', '898917', '[]'),
	(193, '', '3', '{"x":-978.5899,"y":-990.83215,"z":3.425321}', '110000', 0, '207', '786594', '[]'),
	(194, '', '3', '{"x":-1139.7964,"y":-1150.3866,"z":1.7054292}', '110000', 0, '210', '565615', '[]'),
	(195, '', '3', '{"x":-1135.6958,"y":-1153.1522,"z":1.6276563}', '110000', 0, '212', '745403', '[]'),
	(196, '', '3', '{"x":-1133.2269,"y":-1164.0406,"z":1.5752105}', '110000', 0, '214', '347749', '[]'),
	(197, '', '3', '{"x":-991.81805,"y":-1103.5428,"z":1.030312}', '110000', 0, '195', '201698', '[]'),
	(198, '', '3', '{"x":-1125.8105,"y":-1171.967,"z":1.2359425}', '110000', 0, '216', '181710', '[]'),
	(199, '', '3', '{"x":-985.80096,"y":-1121.8561,"z":3.4255795}', '110000', 0, '194', '417513', '[]'),
	(200, '', '3', '{"x":-1113.677,"y":-1193.6775,"z":1.2545439}', '110000', 0, '218', '705980', '[]'),
	(201, '', '3', '{"x":-977.70703,"y":-1092.3331,"z":3.1025543}', '110000', 0, '197', '734141', '[]'),
	(202, '', '3', '{"x":-1107.5906,"y":-1223.047,"z":1.4413348}', '110000', 0, '220', '329765', '[]'),
	(203, '', '3', '{"x":-978.10034,"y":-1108.2756,"z":1.0303131}', '110000', 0, '196', '280925', '[]'),
	(204, '', '3', '{"x":-1100.1569,"y":-1231.935,"z":2.0631351}', '110000', 0, '222', '99790', '[]'),
	(205, '', '3', '{"x":-952.3773,"y":-1077.5182,"z":1.5523206}', '110000', 0, '200', '764615', '[]'),
	(206, '', '3', '{"x":-948.4526,"y":-1107.6423,"z":1.0518461}', '110000', 0, '199', '112782', '[]'),
	(207, '', '3', '{"x":-943.18134,"y":-1075.3136,"z":1.6252724}', '110000', 0, '204', '780764', '[]'),
	(208, '', '3', '{"x":-1161.3701,"y":-1100.0197,"z":1.099821}', '110000', 0, '201', '265153', '[]'),
	(209, '', '3', '{"x":-3089.334,"y":221.13765,"z":12.998801}', '110000', 0, '233', '859707', '[]'),
	(210, '', '3', '{"x":-938.7285,"y":-1087.8195,"z":1.0303108}', '110000', 0, '202', '513225', '[]'),
	(211, '', '3', '{"x":-1182.8634,"y":-1064.3195,"z":1.0304111}', '110000', 0, '230', '661034', '[]'),
	(212, '', '3', '{"x":-1190.9622,"y":-1054.7097,"z":1.0304302}', '110000', 0, '228', '657022', '[]'),
	(213, '', '3', '{"x":-1200.5728,"y":-1031.8401,"z":1.0303913}', '110000', 0, '226', '421823', '[]'),
	(214, '', '3', '{"x":-959.7608,"y":-1109.7554,"z":1.0303129}', '110000', 0, '198', '446589', '[]'),
	(215, '', '3', '{"x":-1204.5652,"y":-1022.03156,"z":4.8251147}', '110000', 0, '224', '707959', '[]'),
	(216, '', '3', '{"x":-1177.6936,"y":-1073.3519,"z":4.7863784}', '110000', 0, '232', '434724', '[]'),
	(217, '', '3', '{"x":-3225.1714,"y":910.9689,"z":12.873272}', '110000', 0, '265', '803918', '[]'),
	(218, '', '3', '{"x":-3228.9346,"y":927.1513,"z":12.849764}', '110000', 0, '264', '835705', '[]'),
	(219, '', '3', '{"x":-3232.7734,"y":934.72906,"z":12.678426}', '110000', 0, '262', '286286', '[]'),
	(220, '', '3', '{"x":-3238.3984,"y":952.7047,"z":12.223186}', '110000', 0, '260', '752276', '[]'),
	(221, '', '3', '{"x":-3105.415,"y":246.82912,"z":11.376629}', '110000', 1, '263', '607852', '[]'),
	(222, '', '3', '{"x":-3251.2473,"y":1027.4392,"z":10.637702}', '110000', 0, '258', '52600', '[]'),
	(223, '', '3', '{"x":-3105.9666,"y":286.69604,"z":7.8521185}', '110000', 0, '261', '8311', '[]'),
	(224, '', '3', '{"x":-3254.7795,"y":1063.6849,"z":10.0261965}', '110000', 0, '256', '741929', '[]'),
	(225, '', '3', '{"x":-3105.9922,"y":311.80682,"z":7.261034}', '110000', 0, '259', '385236', '[]'),
	(226, '', '3', '{"x":-3232.8523,"y":1068.204,"z":9.913505}', '110000', 0, '254', '228573', '[]'),
	(227, '', '3', '{"x":-3110.6626,"y":335.11655,"z":6.373348}', '110000', 0, '257', '783856', '[]'),
	(228, '', '3', '{"x":-3232.1023,"y":1081.7463,"z":9.68725}', '110000', 0, '251', '884102', '[]'),
	(229, '', '3', '{"x":-3225.113,"y":1112.6859,"z":9.6765585}', '110000', 0, '249', '663098', '[]'),
	(230, '', '3', '{"x":-3093.7979,"y":349.29553,"z":6.424457}', '110000', 1, '255', '700006', '[]'),
	(231, '', '3', '{"x":-3091.5034,"y":379.24567,"z":5.99182}', '110000', 0, '253', '740405', '[]'),
	(232, '', '3', '{"x":-3220.0178,"y":1138.4219,"z":8.775405}', '110000', 0, '246', '751906', '[]'),
	(233, '', '3', '{"x":-3088.885,"y":392.2552,"z":10.332986}', '110000', 0, '252', '633051', '[]'),
	(234, '', '3', '{"x":-3200.3906,"y":1165.4545,"z":8.534345}', '110000', 0, '244', '466442', '[]'),
	(235, '', '3', '{"x":-3195.1545,"y":1179.2573,"z":8.538896}', '110000', 0, '242', '197396', '[]'),
	(236, '', '3', '{"x":-3059.424,"y":453.17688,"z":5.235004}', '110000', 0, '250', '86768', '[]'),
	(237, '', '3', '{"x":-3193.5596,"y":1208.3815,"z":8.305224}', '110000', 0, '239', '728262', '[]'),
	(238, '', '3', '{"x":-3047.4783,"y":482.99692,"z":5.6596475}', '110000', 0, '248', '84364', '[]'),
	(239, '', '3', '{"x":-3200.4326,"y":1232.5524,"z":8.928323}', '110000', 0, '237', '50603', '[]'),
	(240, '', '3', '{"x":-3039.5378,"y":492.74747,"z":5.6526327}', '110000', 0, '247', '876086', '[]'),
	(241, '', '3', '{"x":-3031.8206,"y":524.97424,"z":6.303022}', '110000', 0, '245', '963571', '[]'),
	(242, '', '3', '{"x":-3190.9888,"y":1297.7476,"z":17.972502}', '110000', 1, '234', '987644', '[]'),
	(243, '', '3', '{"x":-3037.2334,"y":558.8576,"z":6.3876824}', '110000', 0, '243', '75599', '[]'),
	(244, '', '3', '{"x":-3107.7524,"y":718.89526,"z":19.534058}', '110000', 0, '238', '460048', '[]'),
	(245, '', '3', '{"x":-3029.968,"y":568.62445,"z":6.70734}', '110000', 0, '241', '489529', '[]'),
	(246, '', '3', '{"x":-3078.0293,"y":658.95874,"z":10.546582}', '110000', 0, '240', '195485', '[]'),
	(247, '', '3', '{"x":-3187.3713,"y":1274.0477,"z":11.554646}', '110000', 0, '236', '477094', '[]'),
	(248, '', '3', '{"x":-3101.6753,"y":743.9611,"z":20.16481}', '110000', 0, '235', '340005', '[]'),
	(249, '', '5', '{"x":-3017.0728,"y":746.7931,"z":26.661707}', '680000', 0, '266', '857655', '[]'),
	(250, '', '4', '{"x":-2993.0356,"y":707.5565,"z":27.576683}', '135000', 1, '267', '310679', '[]'),
	(251, '', '4', '{"x":-2994.6333,"y":682.6437,"z":23.922121}', '135000', 1, '268', '543830', '[]'),
	(252, '', '4', '{"x":-2972.5637,"y":642.66425,"z":24.871944}', '135000', 1, '269', '365991', '[]'),
	(253, '', '4', '{"x":-2977.0312,"y":609.35535,"z":19.126158}', '135000', 1, '270', '895423', '[]'),
	(254, '', '0', '{"x":404.4113,"y":2584.4111,"z":42.399563}', '15000', 1, '274', '665236', '[]'),
	(255, '', '0', '{"x":382.85144,"y":2576.4922,"z":43.4084}', '15000', 1, '273', '98128', '[]'),
	(256, '', '0', '{"x":367.06638,"y":2571.6025,"z":43.412342}', '15000', 1, '272', '681541', '[]'),
	(257, '', '0', '{"x":348.40973,"y":2565.7805,"z":42.399563}', '15000', 1, '271', '321454', '[]'),
	(258, '', '1', '{"x":1142.3237,"y":2654.7756,"z":37.031277}', '35000', 1, '275', '538995', '[]'),
	(259, '', '1', '{"x":392.64557,"y":2634.1316,"z":43.552406}', '25000', 1, '276', '714553', '[]'),
	(260, '', '1', '{"x":1142.3225,"y":2651.2898,"z":37.02085}', '35000', 1, '277', '536042', '[]'),
	(261, '', '1', '{"x":1142.3359,"y":2643.5515,"z":37.02488}', '35000', 1, '279', '328925', '[]'),
	(262, '', '1', '{"x":380.0019,"y":2629.2908,"z":43.551815}', '25000', 1, '278', '896660', '[]'),
	(263, '', '1', '{"x":1141.2671,"y":2641.733,"z":37.02376}', '35000', 1, '281', '602053', '[]'),
	(264, '', '1', '{"x":367.0556,"y":2624.4587,"z":43.552395}', '35000', 1, '280', '159702', '[]'),
	(265, '', '1', '{"x":1136.5342,"y":2641.7288,"z":37.023773}', '35000', 1, '283', '772819', '[]'),
	(266, '', '1', '{"x":354.34656,"y":2619.7268,"z":43.5524}', '25000', 1, '282', '909126', '[]'),
	(267, '', '1', '{"x":1132.8906,"y":2641.7278,"z":37.02377}', '35000', 1, '285', '23971', '[]'),
	(268, '', '1', '{"x":341.7568,"y":2614.9712,"z":43.55206}', '35000', 1, '284', '955380', '[]'),
	(269, '', '1', '{"x":1125.1903,"y":2641.7341,"z":37.023766}', '25000', 0, '286', '249194', '[]'),
	(270, '', '1', '{"x":1121.4471,"y":2641.729,"z":37.023766}', '25000', 0, '287', '621191', '[]'),
	(271, '', '1', '{"x":1106.0933,"y":2649.0977,"z":37.020935}', '25000', 0, '290', '706461', '[]'),
	(272, '', '1', '{"x":1114.7832,"y":2641.7395,"z":37.02376}', '25000', 0, '288', '719554', '[]'),
	(273, '', '1', '{"x":1107.3281,"y":2641.7395,"z":37.023754}', '25000', 0, '289', '785102', '[]'),
	(274, '', '1', '{"x":1106.0929,"y":2652.9092,"z":37.020935}', '25000', 0, '291', '410198', '[]'),
	(275, '', '0', '{"x":890.83093,"y":2854.9014,"z":55.88039}', '15000', 1, '292', '788704', '[]'),
	(276, '', '0', '{"x":866.6161,"y":2878.4666,"z":56.756233}', '15000', 1, '293', '620207', '[]'),
	(277, '', '0', '{"x":848.14325,"y":2864.0728,"z":57.365692}', '15000', 1, '294', '976999', '[]'),
	(278, '', '0', '{"x":1936.5677,"y":3891.723,"z":31.84624}', '15000', 1, '298', '548262', '[]'),
	(279, '', '1', '{"x":1880.463,"y":3920.7778,"z":32.095516}', '25000', 1, '295', '252400', '[]'),
	(280, '', '1', '{"x":1919.017,"y":3913.779,"z":32.321644}', '25000', 1, '299', '189751', '[]'),
	(281, '', '0', '{"x":1777.5178,"y":3799.9714,"z":33.404064}', '15000', 0, '0', '751477', '[]'),
	(282, '', '0', '{"x":1902.342,"y":3866.919,"z":31.946104}', '15000', 1, '297', '443851', '[]'),
	(283, '', '1', '{"x":1925.0564,"y":3824.7112,"z":31.319975}', '35000', 1, '300', '26447', '[]'),
	(284, '', '1', '{"x":1932.9567,"y":3804.831,"z":31.789896}', '25000', 1, '301', '352419', '[]'),
	(285, '', '1', '{"x":3725.3044,"y":4525.6323,"z":21.350494}', '25000', 0, '318', '156176', '[]'),
	(286, '', '1', '{"x":1898.9744,"y":3781.705,"z":31.756887}', '35000', 1, '303', '374414', '[]'),
	(287, '', '1', '{"x":1880.6449,"y":3810.571,"z":31.658827}', '25000', 0, '304', '856482', '[]'),
	(288, '', '1', '{"x":1843.5087,"y":3778.0342,"z":32.465626}', '35000', 1, '305', '967814', '[]'),
	(289, '', '1', '{"x":1777.3702,"y":3738.1147,"z":33.535122}', '25000', 1, '309', '368314', '[]'),
	(290, '', '1', '{"x":1737.9492,"y":3709.1165,"z":33.015812}', '25000', 0, '0', '515853', '[]'),
	(291, '', '1', '{"x":1748.8414,"y":3783.505,"z":33.71492}', '25000', 1, '308', '765312', '[]'),
	(292, '', '1', '{"x":3688.075,"y":4562.674,"z":24.063055}', '25000', 0, '317', '189268', '[]'),
	(293, '', '1', '{"x":1763.7247,"y":3823.5752,"z":33.647816}', '25000', 0, '306', '369810', '[]'),
	(294, '', '1', '{"x":1733.6875,"y":3808.7456,"z":33.99911}', '25000', 1, '307', '514559', '[]'),
	(295, '', '1', '{"x":1728.4426,"y":3851.7559,"z":33.66497}', '25000', 1, '311', '547162', '[]'),
	(296, '', '1', '{"x":1744.3151,"y":3887.0454,"z":34.420128}', '25000', 0, '313', '66911', '[]'),
	(297, '', '1', '{"x":1691.6143,"y":3865.6763,"z":33.787598}', '35000', 1, '312', '385591', '[]'),
	(298, '', '1', '{"x":1661.2681,"y":3819.9575,"z":34.34819}', '25000', 0, '0', '915895', '[]'),
	(299, '', '1', '{"x":1781.5725,"y":3911.2158,"z":33.789616}', '25000', 0, '0', '687227', '[]'),
	(300, '', '1', '{"x":1803.5354,"y":3913.6704,"z":35.93693}', '25000', 1, '315', '580401', '[]'),
	(301, '', '1', '{"x":1845.7836,"y":3914.3928,"z":32.341145}', '25000', 1, '316', '171515', '[]'),
	(302, '', '2', '{"x":3310.7437,"y":5176.449,"z":18.494587}', '60000', 1, '319', '521713', '[]'),
	(303, '', '1', '{"x":35.4,"y":6663.1553,"z":31.070398}', '25000', 0, '320', '90812', '[]'),
	(304, '', '1', '{"x":-9.662527,"y":6654.1963,"z":30.57881}', '25000', 1, '321', '236464', '[]'),
	(305, '', '1', '{"x":1.6569208,"y":6612.475,"z":30.959627}', '25000', 0, '322', '604217', '[]'),
	(306, '', '1', '{"x":25.093637,"y":6601.8423,"z":31.350431}', '25000', 0, '326', '824275', '[]'),
	(307, '', '1', '{"x":11.582365,"y":6578.3755,"z":31.950834}', '25000', 0, '325', '580888', '[]'),
	(308, '', '1', '{"x":-15.30009,"y":6557.416,"z":32.120365}', '25000', 0, '324', '485225', '[]'),
	(309, '', '1', '{"x":-44.48674,"y":6581.9375,"z":31.055529}', '25000', 0, '323', '876530', '[]'),
	(310, '', '1', '{"x":-130.71378,"y":6551.9224,"z":28.75267}', '25000', 0, '327', '477919', '[]'),
	(311, '', '1', '{"x":-105.572586,"y":6528.503,"z":29.046915}', '25000', 0, '328', '704540', '[]'),
	(312, '', '1', '{"x":-188.89255,"y":6409.558,"z":31.176737}', '25000', 0, '329', '773191', '[]'),
	(313, '', '1', '{"x":-213.52187,"y":6396.3315,"z":31.965078}', '25000', 0, '331', '286595', '[]'),
	(314, '', '1', '{"x":-238.34024,"y":6423.6577,"z":30.342304}', '25000', 0, '330', '524802', '[]'),
	(315, '', '1', '{"x":-272.45032,"y":6401.1196,"z":30.384962}', '25000', 0, '333', '784564', '[]'),
	(316, '', '1', '{"x":-248.1171,"y":6370.113,"z":30.732088}', '25000', 0, '334', '885072', '[]'),
	(317, '', '1', '{"x":-227.13084,"y":6377.498,"z":30.63917}', '25000', 0, '332', '870214', '[]'),
	(318, '', '1', '{"x":-280.65012,"y":6350.5674,"z":31.480787}', '25000', 0, '335', '249634', '[]'),
	(319, '', '1', '{"x":-302.12656,"y":6327.077,"z":31.7674}', '25000', 0, '336', '3526', '[]'),
	(320, '', '1', '{"x":-332.9248,"y":6302.151,"z":31.968119}', '25000', 0, '338', '398406', '[]'),
	(321, '', '1', '{"x":-368.2299,"y":6341.5967,"z":28.723629}', '25000', 0, '337', '52645', '[]'),
	(322, '', '1', '{"x":-407.27188,"y":6314.181,"z":27.821283}', '25000', 0, '339', '56155', '[]'),
	(323, '', '1', '{"x":-437.78424,"y":6272.1226,"z":28.948261}', '25000', 1, '340', '587066', '[]'),
	(324, '', '1', '{"x":-468.10614,"y":6206.0894,"z":28.432848}', '25000', 0, '0', '733339', '[]'),
	(325, '', '1', '{"x":-374.32278,"y":6191.1616,"z":30.609537}', '25000', 1, '344', '855877', '[]'),
	(326, '', '1', '{"x":-357.02274,"y":6207.44,"z":30.722282}', '25000', 0, '343', '517194', '[]'),
	(327, '', '1', '{"x":-347.4574,"y":6225.418,"z":30.764097}', '35000', 1, '342', '349744', '[]'),
	(328, '', '1', '{"x":-360.16263,"y":6260.535,"z":30.78171}', '35000', 1, '341', '270543', '[]'),
	(329, '', '1', '{"x":-103.33752,"y":6330.7056,"z":34.38071}', '25000', 0, '350', '863034', '[]'),
	(330, '', '1', '{"x":-106.61586,"y":6333.971,"z":34.380714}', '25000', 0, '353', '721794', '[]'),
	(331, '', '1', '{"x":-107.522255,"y":6339.8467,"z":34.380714}', '25000', 0, '355', '234616', '[]'),
	(332, '', '1', '{"x":-102.25848,"y":6345.111,"z":34.380806}', '25000', 0, '356', '61105', '[]'),
	(333, '', '1', '{"x":-98.94812,"y":6348.405,"z":34.380806}', '25000', 0, '357', '861033', '[]'),
	(334, '', '1', '{"x":-93.64157,"y":6353.8447,"z":34.380806}', '25000', 0, '358', '671997', '[]'),
	(335, '', '1', '{"x":-90.26204,"y":6357.08,"z":34.380806}', '25000', 0, '359', '18237', '[]'),
	(336, '', '1', '{"x":-84.9899,"y":6362.376,"z":34.380806}', '25000', 1, '360', '229765', '[]'),
	(337, '', '1', '{"x":-84.970764,"y":6362.385,"z":30.455889}', '25000', 1, '354', '353040', '[]'),
	(338, '', '1', '{"x":-90.178024,"y":6357.144,"z":30.455889}', '25000', 0, '352', '789981', '[]'),
	(339, '', '1', '{"x":-93.4302,"y":6353.927,"z":30.455889}', '25000', 0, '351', '748201', '[]'),
	(340, '', '1', '{"x":-98.81999,"y":6348.5464,"z":30.455889}', '25000', 0, '349', '331900', '[]'),
	(341, '', '1', '{"x":-107.61434,"y":6339.752,"z":30.455889}', '25000', 0, '348', '793524', '[]'),
	(342, '', '1', '{"x":-109.63105,"y":6336.986,"z":30.456177}', '25000', 0, '347', '371257', '[]'),
	(343, '', '1', '{"x":-106.8208,"y":6334.1953,"z":30.456177}', '25000', 0, '346', '91285', '[]'),
	(344, '', '1', '{"x":-103.37009,"y":6330.7246,"z":30.456177}', '25000', 0, '345', '890393', '[]'),
	(345, '', '5', '{"x":-1899.0621,"y":132.3318,"z":80.86464}', '680000', 0, '361', '811312', '[]'),
	(346, '', '4', '{"x":-1932.0637,"y":162.63026,"z":83.53263}', '135000', 1, '362', '992120', '[]'),
	(347, '', '6', '{"x":-1929.3365,"y":595.309,"z":121.16483}', '999999', 1, '751', '902671', '[]'),
	(348, '', '5', '{"x":-1905.4836,"y":252.84344,"z":85.332855}', '680000', 0, '364', '845006', '[]'),
	(349, '', '5', '{"x":-1922.3376,"y":298.48926,"z":88.16725}', '680000', 0, '365', '729994', '[]'),
	(350, '', '5', '{"x":-1931.2698,"y":362.62375,"z":92.84668}', '680000', 0, '366', '662089', '[]'),
	(351, '', '5', '{"x":-1940.5282,"y":387.66113,"z":95.590164}', '680000', 0, '367', '196695', '[]'),
	(352, '', '6', '{"x":-1937.4115,"y":551.1088,"z":113.90328}', '950000', 0, '369', '135958', '[]'),
	(353, '', '5', '{"x":-1942.7102,"y":449.56766,"z":101.808044}', '680000', 0, '755', '912369', '[]'),
	(354, '', '6', '{"x":1393.8802,"y":1141.8655,"z":113.33125}', '5000000', 1, '752', '288822', '[]'),
	(355, '', '5', '{"x":-2014.7576,"y":499.70175,"z":106.05168}', '680000', 0, '375', '527757', '[]'),
	(356, '', '6', '{"x":-1974.6754,"y":631.0488,"z":121.55838}', '950000', 0, '374', '115360', '[]'),
	(357, '', '5', '{"x":-1896.0889,"y":642.4385,"z":129.08899}', '680000', 0, '372', '934645', '[]'),
	(358, '', '6', '{"x":-2011.0374,"y":445.2098,"z":101.89589}', '950000', 0, '376', '357472', '[]'),
	(359, '', '5', '{"x":-2008.8997,"y":367.6806,"z":93.69429}', '680000', 0, '377', '380585', '[]'),
	(360, '', '5', '{"x":-1995.7122,"y":300.9669,"z":90.84465}', '680000', 0, '378', '87023', '[]'),
	(361, '', '5', '{"x":-1970.3492,"y":246.06813,"z":86.69215}', '680000', 0, '379', '474531', '[]'),
	(362, '', '5', '{"x":-1961.2059,"y":211.86632,"z":85.68288}', '680000', 0, '380', '310345', '[]'),
	(363, '', '6', '{"x":-1861.2134,"y":310.50775,"z":87.99489}', '950000', 0, '382', '622190', '[]'),
	(364, '', '6', '{"x":-1807.8989,"y":333.1602,"z":88.44795}', '950000', 0, '383', '154737', '[]'),
	(365, '', '6', '{"x":-1733.3485,"y":378.84158,"z":88.60527}', '950000', 0, '384', '243304', '[]'),
	(366, '', '5', '{"x":-1673.3578,"y":385.63803,"z":88.22829}', '680000', 0, '385', '643436', '[]'),
	(367, '', '6', '{"x":-1539.875,"y":420.70972,"z":108.89398}', '950000', 0, '501', '912157', '[]'),
	(368, '', '5', '{"x":-1495.8696,"y":436.9247,"z":111.377884}', '680000', 0, '500', '614597', '[]'),
	(369, '', '5', '{"x":-1453.8715,"y":512.36255,"z":116.67611}', '680000', 0, '498', '506566', '[]'),
	(370, '', '5', '{"x":-1452.851,"y":545.7552,"z":119.87768}', '680000', 0, '497', '554799', '[]'),
	(371, '', '5', '{"x":-1500.5686,"y":523.1619,"z":117.152245}', '680000', 0, '499', '532033', '[]'),
	(372, '', '5', '{"x":373.87817,"y":427.8261,"z":144.56422}', '680000', 0, '435', '80233', '[]'),
	(373, '', '5', '{"x":-1405.0667,"y":561.91846,"z":124.28614}', '680000', 0, '496', '501432', '[]'),
	(374, '', '5', '{"x":-1405.4446,"y":526.86804,"z":122.711296}', '680000', 0, '0', '671625', '[]'),
	(375, '', '5', '{"x":346.40756,"y":440.707,"z":146.61446}', '680000', 0, '434', '604880', '[]'),
	(376, '', '5', '{"x":331.42145,"y":465.25217,"z":150.1385}', '680000', 0, '433', '681386', '[]'),
	(377, '', '5', '{"x":-1364.2859,"y":570.1966,"z":133.85277}', '680000', 0, '494', '964869', '[]'),
	(378, '', '5', '{"x":-1346.4839,"y":560.6025,"z":129.41148}', '680000', 0, '495', '696671', '[]'),
	(379, '', '6', '{"x":315.84683,"y":502.06168,"z":152.05977}', '950000', 0, '432', '922026', '[]'),
	(380, '', '5', '{"x":318.63788,"y":551.91614,"z":154.904}', '680000', 0, '430', '863756', '[]'),
	(381, '', '5', '{"x":-1337.2506,"y":606.1237,"z":133.25967}', '680000', 0, '492', '614522', '[]'),
	(382, '', '5', '{"x":-1291.8268,"y":650.42487,"z":140.38167}', '680000', 0, '490', '504736', '[]'),
	(383, '', '6', '{"x":228.52219,"y":765.76355,"z":203.855}', '950000', 0, '429', '540547', '[]'),
	(384, '', '5', '{"x":-1277.6189,"y":629.9066,"z":142.057}', '680000', 0, '491', '200946', '[]'),
	(385, '', '5', '{"x":-1248.6995,"y":642.80756,"z":141.5989}', '680000', 0, '489', '525099', '[]'),
	(386, '', '6', '{"x":232.16504,"y":672.1103,"z":188.85696}', '950000', 0, '428', '98659', '[]'),
	(387, '', '5', '{"x":216.3614,"y":620.38916,"z":186.63554}', '680000', 0, '426', '148734', '[]'),
	(388, '', '5', '{"x":-1255.1908,"y":667.0593,"z":141.70218}', '680000', 0, '488', '572212', '[]'),
	(389, '', '5', '{"x":-1218.4614,"y":665.21564,"z":143.41475}', '680000', 0, '487', '144240', '[]'),
	(390, '', '5', '{"x":-1196.6981,"y":693.5487,"z":146.30585}', '680000', 0, '486', '902875', '[]'),
	(391, '', '4', '{"x":127.996155,"y":566.00226,"z":182.83948}', '300000', 0, '425', '295118', '[]'),
	(392, '', '5', '{"x":-1165.8541,"y":726.92664,"z":154.48676}', '680000', 0, '485', '995566', '[]'),
	(393, '', '5', '{"x":85.313034,"y":561.71765,"z":181.65286}', '680000', 0, '424', '409397', '[]'),
	(394, '', '5', '{"x":-1117.8062,"y":761.6993,"z":163.16867}', '680000', 0, '483', '661178', '[]'),
	(395, '', '5', '{"x":-1130.8876,"y":784.44135,"z":162.76773}', '680000', 0, '484', '857367', '[]'),
	(396, '', '5', '{"x":45.728165,"y":555.6951,"z":179.1533}', '680000', 0, '423', '483180', '[]'),
	(397, '', '5', '{"x":-1100.783,"y":797.8896,"z":166.13622}', '680000', 0, '482', '749066', '[]'),
	(398, '', '6', '{"x":224.01083,"y":513.4255,"z":139.80305}', '950000', 0, '436', '936546', '[]'),
	(399, '', '6', '{"x":-1067.5906,"y":795.73376,"z":165.8616}', '950000', 0, '480', '647090', '[]'),
	(400, '', '5', '{"x":-1056.329,"y":761.591,"z":166.19601}', '680000', 0, '481', '167876', '[]'),
	(401, '', '5', '{"x":-999.764,"y":816.7882,"z":171.92955}', '680000', 0, '477', '79964', '[]'),
	(402, '', '5', '{"x":167.46576,"y":473.78683,"z":141.39328}', '680000', 1, '437', '288075', '[]'),
	(403, '', '5', '{"x":-998.5163,"y":768.4995,"z":170.4622}', '680000', 0, '479', '338441', '[]'),
	(404, '', '5', '{"x":119.76637,"y":494.84262,"z":146.22292}', '680000', 0, '438', '175195', '[]'),
	(405, '', '5', '{"x":106.76859,"y":466.70874,"z":146.43658}', '680000', 0, '439', '130056', '[]'),
	(406, '', '5', '{"x":-972.0222,"y":752.4696,"z":175.2609}', '680000', 0, '478', '116463', '[]'),
	(407, '', '5', '{"x":80.05565,"y":486.28745,"z":147.08168}', '680000', 0, '440', '634524', '[]'),
	(408, '', '5', '{"x":-962.87537,"y":814.26337,"z":176.63972}', '680000', 0, '476', '240745', '[]'),
	(409, '', '6', '{"x":57.31598,"y":449.8481,"z":145.9114}', '950000', 0, '442', '683940', '[]'),
	(410, '', '5', '{"x":43.01547,"y":468.80426,"z":146.9759}', '680000', 0, '443', '846370', '[]'),
	(411, '', '5', '{"x":-7.989691,"y":467.8914,"z":144.72484}', '680000', 0, '444', '150490', '[]'),
	(412, '', '5', '{"x":-921.3041,"y":813.99927,"z":183.2165}', '680000', 0, '475', '237975', '[]'),
	(413, '', '5', '{"x":-912.1289,"y":777.1782,"z":185.88976}', '680000', 0, '474', '435444', '[]'),
	(414, '', '5', '{"x":-867.2085,"y":784.7591,"z":190.81421}', '680000', 0, '473', '516828', '[]'),
	(415, '', '6', '{"x":-823.9686,"y":805.8879,"z":201.66373}', '950000', 0, '472', '472500', '[]'),
	(416, '', '6', '{"x":-747.335,"y":808.3581,"z":213.91054}', '950000', 1, '471', '969793', '[]'),
	(417, '', '6', '{"x":-658.34296,"y":886.2582,"z":228.18355}', '950000', 1, '470', '769796', '[]'),
	(418, '', '5', '{"x":-596.9457,"y":851.4015,"z":210.35825}', '680000', 1, '469', '421244', '[]'),
	(419, '', '5', '{"x":-536.9134,"y":818.2344,"z":196.3904}', '680000', 0, '468', '629637', '[]'),
	(420, '', '5', '{"x":-494.0884,"y":795.90155,"z":183.2205}', '680000', 0, '467', '144645', '[]'),
	(421, '', '5', '{"x":-495.53036,"y":738.5051,"z":161.911}', '680000', 0, '466', '494702', '[]'),
	(422, '', '5', '{"x":-498.54782,"y":683.315,"z":150.7416}', '680000', 0, '449', '339945', '[]'),
	(423, '', '5', '{"x":-544.76514,"y":694.4628,"z":144.95444}', '680000', 0, '464', '470357', '[]'),
	(424, '', '5', '{"x":-606.09155,"y":672.4675,"z":150.47694}', '680000', 0, '509', '603690', '[]'),
	(425, '', '5', '{"x":-661.7964,"y":678.901,"z":152.7906}', '680000', 0, '510', '259682', '[]'),
	(426, '', '5', '{"x":-699.5523,"y":705.8612,"z":157.0933}', '680000', 0, '508', '536465', '[]'),
	(427, '', '6', '{"x":-700.7833,"y":646.92035,"z":154.25516}', '950000', 0, '511', '670835', '[]'),
	(428, '', '5', '{"x":-668.8076,"y":637.938,"z":148.4091}', '680000', 0, '512', '840252', '[]'),
	(429, '', '5', '{"x":-685.62714,"y":595.9283,"z":142.83673}', '680000', 0, '513', '814256', '[]'),
	(430, '', '5', '{"x":-765.6667,"y":650.50024,"z":144.57906}', '680000', 0, '517', '121701', '[]'),
	(431, '', '5', '{"x":-819.4365,"y":696.581,"z":146.98987}', '680000', 0, '518', '932318', '[]'),
	(432, '', '5', '{"x":-1032.7463,"y":686.13074,"z":160.18277}', '680000', 0, '525', '28323', '[]'),
	(433, '', '5', '{"x":-1064.8279,"y":726.907,"z":164.35454}', '680000', 0, '0', '49581', '[]'),
	(434, '', '5', '{"x":-1413.4268,"y":462.1297,"z":108.08856}', '680000', 0, '527', '754150', '[]'),
	(435, '', '5', '{"x":-1258.8275,"y":446.91925,"z":93.615685}', '680000', 0, '530', '783793', '[]'),
	(436, '', '5', '{"x":-1371.523,"y":443.9831,"z":104.73713}', '680000', 0, '528', '326448', '[]'),
	(437, '', '5', '{"x":-1308.0754,"y":448.98724,"z":99.849625}', '680000', 0, '529', '166296', '[]'),
	(438, '', '5', '{"x":-1277.8875,"y":496.88818,"z":96.77037}', '680000', 1, '531', '365352', '[]'),
	(439, '', '5', '{"x":-1041.1444,"y":506.77505,"z":83.26086}', '680000', 0, '539', '70891', '[]'),
	(440, '', '5', '{"x":-1215.7657,"y":457.88565,"z":90.94349}', '680000', 0, '532', '408636', '[]'),
	(441, '', '5', '{"x":-1158.9276,"y":481.84064,"z":84.97381}', '680000', 0, '534', '464133', '[]'),
	(442, '', '5', '{"x":-1174.4851,"y":440.04755,"z":85.729805}', '680000', 0, '533', '907988', '[]'),
	(443, '', '5', '{"x":-1122.5725,"y":486.26755,"z":81.23566}', '680000', 0, '535', '888270', '[]'),
	(444, '', '5', '{"x":-1094.9061,"y":427.30215,"z":74.759735}', '680000', 0, '536', '297869', '[]'),
	(445, '', '5', '{"x":-1062.6489,"y":475.7873,"z":80.200516}', '680000', 0, '538', '752385', '[]'),
	(446, '', '5', '{"x":-967.0514,"y":510.5783,"z":80.94611}', '680000', 0, '543', '57143', '[]'),
	(447, '', '5', '{"x":-1009.4161,"y":479.33646,"z":78.294525}', '680000', 0, '540', '560123', '[]'),
	(448, '', '5', '{"x":-987.0399,"y":487.18338,"z":81.336525}', '680000', 0, '542', '892567', '[]'),
	(449, '', '5', '{"x":-1193.0609,"y":564.04095,"z":99.21944}', '680000', 0, '547', '188679', '[]'),
	(450, '', '5', '{"x":-1006.94775,"y":513.5894,"z":78.65024}', '680000', 0, '541', '887573', '[]'),
	(451, '', '5', '{"x":-1052.1615,"y":432.5526,"z":76.12784}', '680000', 0, '537', '713382', '[]'),
	(452, '', '6', '{"x":-949.99896,"y":465.07162,"z":79.68011}', '950000', 0, '545', '327823', '[]'),
	(453, '', '5', '{"x":-968.708,"y":436.97266,"z":79.64518}', '680000', 0, '546', '306909', '[]'),
	(454, '', '5', '{"x":-866.8054,"y":457.63278,"z":87.16105}', '680000', 0, '564', '502446', '[]'),
	(455, '', '5', '{"x":-884.4837,"y":517.70044,"z":91.32284}', '680000', 0, '562', '673172', '[]'),
	(456, '', '5', '{"x":-842.7625,"y":466.8764,"z":86.47579}', '680000', 0, '563', '740017', '[]'),
	(457, '', '5', '{"x":-848.4961,"y":508.59247,"z":89.69699}', '680000', 0, '561', '817716', '[]'),
	(458, '', '5', '{"x":-873.4159,"y":562.9013,"z":95.499435}', '680000', 0, '560', '734749', '[]'),
	(459, '', '5', '{"x":-904.5793,"y":588.1194,"z":100.07077}', '680000', 0, '558', '915512', '[]'),
	(460, '', '5', '{"x":-958.1424,"y":607.0159,"z":105.18598}', '680000', 0, '555', '593590', '[]'),
	(461, '', '5', '{"x":-907.5026,"y":544.9085,"z":99.08775}', '680000', 0, '559', '445627', '[]'),
	(462, '', '5', '{"x":-925.13794,"y":561.4822,"z":99.03812}', '680000', 0, '557', '794271', '[]'),
	(463, '', '5', '{"x":-947.9108,"y":567.7681,"z":100.385925}', '680000', 0, '556', '426487', '[]'),
	(464, '', '5', '{"x":-974.43353,"y":581.8272,"z":102.02878}', '680000', 0, '554', '562240', '[]'),
	(465, '', '5', '{"x":-1022.5179,"y":586.9396,"z":102.30835}', '680000', 0, '553', '914050', '[]'),
	(466, '', '5', '{"x":-1090.0221,"y":548.5026,"z":102.513306}', '680000', 1, '551', '122167', '[]'),
	(467, '', '5', '{"x":-1107.8263,"y":594.46436,"z":103.33458}', '680000', 0, '552', '188394', '[]'),
	(468, '', '5', '{"x":-853.1139,"y":694.676,"z":147.9218}', '680000', 0, '519', '681293', '[]'),
	(469, '', '5', '{"x":-884.54266,"y":699.51654,"z":150.1513}', '680000', 0, '520', '733033', '[]'),
	(470, '', '5', '{"x":-908.56104,"y":693.6847,"z":150.316}', '680000', 0, '521', '146052', '[]'),
	(471, '', '5', '{"x":-931.43994,"y":690.8923,"z":152.34668}', '680000', 0, '522', '803498', '[]'),
	(472, '', '4', '{"x":-1019.4217,"y":719.40106,"z":162.87617}', '135000', 0, '524', '404444', '[]'),
	(473, '', '5', '{"x":-595.9587,"y":780.4487,"z":188.1882}', '680000', 0, '504', '350354', '[]'),
	(474, '', '5', '{"x":-655.18066,"y":802.9306,"z":197.87036}', '680000', 0, '502', '221001', '[]'),
	(475, '', '5', '{"x":-664.52856,"y":742.1652,"z":173.16397}', '680000', 0, '507', '680510', '[]'),
	(476, '', '5', '{"x":-586.99414,"y":806.64545,"z":190.12747}', '680000', 0, '503', '586713', '[]'),
	(477, '', '4', '{"x":-565.7297,"y":761.13165,"z":184.30504}', '135000', 0, '505', '451674', '[]'),
	(478, '', '5', '{"x":-579.66003,"y":732.66656,"z":183.12761}', '680000', 0, '506', '172488', '[]'),
	(479, '', '6', '{"x":-515.20636,"y":629.11523,"z":132.49081}', '950000', 0, '463', '851303', '[]'),
	(480, '', '6', '{"x":-520.7059,"y":594.2283,"z":119.71651}', '950000', 0, '447', '202539', '[]'),
	(481, '', '5', '{"x":-554.45374,"y":541.2011,"z":109.58708}', '680000', 0, '0', '976341', '[]'),
	(482, '', '6', '{"x":-595.451,"y":530.355,"z":106.63464}', '950000', 0, '573', '778266', '[]'),
	(483, '', '5', '{"x":-640.7032,"y":520.586,"z":108.76282}', '680000', 0, '572', '651573', '[]'),
	(484, '', '5', '{"x":-678.824,"y":512.10706,"z":112.40597}', '680000', 0, '570', '926682', '[]'),
	(485, '', '5', '{"x":-741.51166,"y":484.74908,"z":108.58711}', '680000', 0, '569', '408318', '[]'),
	(486, '', '5', '{"x":-784.81934,"y":459.63394,"z":99.26595}', '680000', 0, '567', '604496', '[]'),
	(487, '', '5', '{"x":-824.7701,"y":421.99423,"z":91.00422}', '680000', 0, '565', '721413', '[]'),
	(488, '', '5', '{"x":-762.359,"y":430.7837,"z":99.076485}', '680000', 0, '566', '547134', '[]'),
	(489, '', '5', '{"x":-717.8248,"y":448.632,"z":105.7891}', '680000', 0, '568', '80979', '[]'),
	(490, '', '5', '{"x":-666.9529,"y":471.52792,"z":113.01651}', '680000', 0, '571', '43777', '[]'),
	(491, '', '5', '{"x":-622.74286,"y":488.88422,"z":107.75714}', '680000', 0, '573', '508730', '[]'),
	(492, '', '6', '{"x":-580.2862,"y":491.49707,"z":107.78287}', '950000', 0, '574', '431545', '[]'),
	(493, '', '5', '{"x":-526.4975,"y":517.31616,"z":111.81892}', '680000', 0, '411', '449839', '[]'),
	(494, '', '5', '{"x":-500.6564,"y":552.1302,"z":119.48459}', '680000', 0, '412', '477299', '[]'),
	(495, '', '5', '{"x":-476.59937,"y":647.7096,"z":143.26662}', '680000', 0, '450', '963008', '[]'),
	(496, '', '5', '{"x":-446.1294,"y":686.1808,"z":151.99614}', '680000', 0, '451', '669861', '[]'),
	(497, '', '5', '{"x":-400.0996,"y":664.9456,"z":162.71004}', '680000', 0, '453', '481501', '[]'),
	(498, '', '5', '{"x":-353.19022,"y":668.2028,"z":167.95386}', '680000', 0, '454', '326031', '[]'),
	(499, '', '6', '{"x":-339.77927,"y":625.5653,"z":170.23708}', '950000', 0, '455', '383818', '[]'),
	(500, '', '5', '{"x":-307.7282,"y":643.4849,"z":175.01233}', '680000', 0, '456', '630218', '[]'),
	(501, '', '5', '{"x":-293.486,"y":600.98804,"z":180.45552}', '680000', 0, '457', '868748', '[]'),
	(502, '', '5', '{"x":-246.05464,"y":622.0161,"z":186.69038}', '680000', 0, '458', '878829', '[]'),
	(503, '', '5', '{"x":-232.55621,"y":588.20447,"z":189.4163}', '680000', 0, '459', '159535', '[]'),
	(504, '', '5', '{"x":-185.29655,"y":591.1711,"z":196.70303}', '680000', 0, '461', '42627', '[]'),
	(505, '', '6', '{"x":-189.41528,"y":618.31995,"z":198.5412}', '950000', 0, '460', '84075', '[]'),
	(506, '', '6', '{"x":-126.36009,"y":588.275,"z":203.58662}', '950000', 0, '462', '308938', '[]'),
	(507, '', '5', '{"x":-533.08136,"y":709.5449,"z":152.03221}', '680000', 0, '465', '977467', '[]'),
	(508, '', '5', '{"x":-66.89165,"y":490.06693,"z":143.76482}', '680000', 0, '445', '85909', '[]'),
	(509, '', '5', '{"x":-109.926094,"y":501.89963,"z":142.33472}', '680000', 0, '446', '821935', '[]'),
	(510, '', '5', '{"x":-174.30469,"y":502.66296,"z":136.2998}', '680000', 0, '421', '86459', '[]'),
	(511, '', '5', '{"x":-230.2369,"y":487.92697,"z":127.64802}', '680000', 0, '420', '288343', '[]'),
	(512, '', '5', '{"x":-311.8611,"y":475.02115,"z":110.70425}', '680000', 0, '417', '645228', '[]'),
	(513, '', '5', '{"x":-348.789,"y":515.00287,"z":119.52777}', '680000', 0, '416', '883444', '[]'),
	(514, '', '5', '{"x":-355.89542,"y":469.98926,"z":111.526596}', '680000', 0, '418', '712973', '[]'),
	(515, '', '5', '{"x":-305.24026,"y":431.0382,"z":109.35356}', '680000', 0, '419', '617247', '[]'),
	(516, '', '5', '{"x":-340.62982,"y":424.012,"z":109.92886}', '680000', 0, '397', '667360', '[]'),
	(517, '', '6', '{"x":-401.18158,"y":427.6621,"z":111.278206}', '950000', 0, '396', '142699', '[]'),
	(518, '', '5', '{"x":-450.9438,"y":395.68512,"z":103.657585}', '680000', 0, '394', '499804', '[]'),
	(519, '', '5', '{"x":-500.38812,"y":398.32642,"z":97.16857}', '680000', 0, '392', '153922', '[]'),
	(520, '', '5', '{"x":-516.46655,"y":433.3117,"z":96.688286}', '680000', 0, '390', '309554', '[]'),
	(521, '', '5', '{"x":-536.8082,"y":477.20178,"z":102.07365}', '680000', 0, '391', '400753', '[]'),
	(522, '', '5', '{"x":-560.8958,"y":402.99646,"z":100.68787}', '680000', 0, '387', '641259', '[]'),
	(523, '', '5', '{"x":-595.6735,"y":393.0638,"z":100.76246}', '680000', 0, '388', '600314', '[]'),
	(524, '', '5', '{"x":-615.1386,"y":398.2653,"z":100.506546}', '680000', 0, '389', '689257', '[]'),
	(525, '', '5', '{"x":-458.9567,"y":537.06067,"z":120.340195}', '680000', 0, '413', '637321', '[]'),
	(526, '', '6', '{"x":-425.98935,"y":535.1217,"z":121.305954}', '950000', 0, '414', '371953', '[]'),
	(527, '', '5', '{"x":-386.7754,"y":504.14993,"z":119.29269}', '680000', 0, '415', '954604', '[]'),
	(528, '', '5', '{"x":37.695103,"y":365.6088,"z":114.921}', '680000', 0, '401', '873053', '[]'),
	(529, '', '5', '{"x":-6.407986,"y":409.38214,"z":119.167984}', '680000', 0, '400', '257992', '[]'),
	(530, '', '5', '{"x":-72.91693,"y":428.515,"z":111.91823}', '680000', 0, '399', '10649', '[]'),
	(531, '', '5', '{"x":-166.18448,"y":424.05096,"z":110.685844}', '680000', 0, '402', '105213', '[]'),
	(532, '', '5', '{"x":-214.0007,"y":399.55838,"z":110.1832}', '680000', 0, '403', '125643', '[]'),
	(533, '', '5', '{"x":-239.16475,"y":381.92706,"z":111.503136}', '680000', 0, '404', '788669', '[]'),
	(534, '', '5', '{"x":-297.94138,"y":380.11572,"z":110.976814}', '680000', 0, '405', '221085', '[]'),
	(535, '', '5', '{"x":-327.97714,"y":369.619,"z":108.88605}', '680000', 0, '406', '333790', '[]'),
	(536, '', '5', '{"x":-371.92267,"y":343.51663,"z":108.822525}', '680000', 0, '407', '97513', '[]'),
	(537, '', '5', '{"x":-409.5644,"y":341.729,"z":107.78744}', '680000', 0, '408', '618732', '[]'),
	(538, '', '5', '{"x":-444.26862,"y":342.81985,"z":104.50075}', '680000', 0, '409', '608946', '[]'),
	(539, '', '5', '{"x":-469.4648,"y":329.63055,"z":103.6268}', '680000', 0, '410', '842607', '[]'),
	(540, '', '5', '{"x":-477.15323,"y":413.12378,"z":102.001755}', '680000', 0, '393', '99380', '[]'),
	(541, '', '5', '{"x":-1367.3893,"y":610.6732,"z":132.75946}', '680000', 0, '493', '627027', '[]'),
	(542, '', '5', '{"x":-704.22003,"y":588.38617,"z":141.16162}', '680000', 0, '514', '635504', '[]'),
	(543, '', '5', '{"x":-732.9815,"y":593.85443,"z":141.15854}', '680000', 0, '515', '725198', '[]'),
	(544, '', '5', '{"x":-753.291,"y":620.40564,"z":141.69801}', '680000', 0, '516', '994518', '[]'),
	(545, '', '5', '{"x":-973.9475,"y":684.3711,"z":156.91426}', '680000', 0, '526', '755432', '[]'),
	(546, '', '5', '{"x":-1167.1442,"y":568.66956,"z":100.70734}', '680000', 0, '548', '863501', '[]'),
	(547, '', '5', '{"x":-1146.4308,"y":545.89496,"z":100.7864}', '680000', 0, '549', '548100', '[]'),
	(548, '', '5', '{"x":-1125.3414,"y":548.306,"z":101.44553}', '680000', 0, '550', '736865', '[]'),
	(549, '', '2', '{"x":54.507584,"y":-1873.1533,"z":21.685823}', '40000', 1, '576', '860051', '[]'),
	(550, '', '2', '{"x":38.994743,"y":-1911.5231,"z":20.8335}', '40000', 1, '577', '295649', '[]'),
	(551, '', '2', '{"x":22.971544,"y":-1896.824,"z":21.84587}', '40000', 1, '580', '527162', '[]'),
	(552, '', '2', '{"x":46.052135,"y":-1864.2408,"z":22.159449}', '40000', 0, '578', '981695', '[]'),
	(553, '', '2', '{"x":5.2595563,"y":-1884.3308,"z":22.577288}', '40000', 0, '581', '172109', '[]'),
	(554, '', '2', '{"x":21.269876,"y":-1844.6995,"z":23.481733}', '40000', 0, '579', '74265', '[]'),
	(555, '', '2', '{"x":-4.7860303,"y":-1872.1412,"z":23.031008}', '40000', 1, '583', '229466', '[]'),
	(556, '', '2', '{"x":-20.468283,"y":-1858.9578,"z":24.28867}', '40000', 0, '585', '227490', '[]'),
	(557, '', '2', '{"x":-34.204323,"y":-1847.1104,"z":25.073517}', '40000', 0, '586', '278515', '[]'),
	(558, '', '2', '{"x":-41.98147,"y":-1792.1174,"z":26.708235}', '40000', 1, '582', '470276', '[]'),
	(559, '', '2', '{"x":-50.338356,"y":-1783.36,"z":27.180824}', '40000', 1, '584', '405305', '[]'),
	(560, '', '2', '{"x":-64.521324,"y":-1449.4934,"z":31.404966}', '40000', 0, '587', '712121', '[]'),
	(561, '', '2', '{"x":-45.500698,"y":-1445.4417,"z":31.309595}', '40000', 0, '588', '354333', '[]'),
	(562, '', '2', '{"x":-32.29717,"y":-1446.3658,"z":30.771402}', '40000', 0, '589', '104415', '[]'),
	(563, '', '2', '{"x":16.681368,"y":-1443.8362,"z":29.830486}', '40000', 1, '590', '827915', '[]'),
	(564, '', '2', '{"x":-26.580673,"y":-1544.2452,"z":29.556757}', '40000', 0, '592', '811286', '[]'),
	(565, '', '2', '{"x":-19.652914,"y":-1550.8369,"z":32.701385}', '40000', 0, '601', '981245', '[]'),
	(566, '', '2', '{"x":-19.664066,"y":-1550.7651,"z":29.556759}', '40000', 0, '593', '162701', '[]'),
	(567, '', '2', '{"x":-24.86339,"y":-1556.9331,"z":29.566841}', '40000', 1, '594', '856558', '[]'),
	(568, '', '2', '{"x":-26.5758,"y":-1544.3081,"z":32.701385}', '40000', 0, '604', '662359', '[]'),
	(569, '', '2', '{"x":-35.735973,"y":-1555.3458,"z":29.55676}', '40000', 0, '596', '379183', '[]'),
	(570, '', '2', '{"x":-36.061066,"y":-1537.012,"z":33.501408}', '40000', 0, '606', '519735', '[]'),
	(571, '', '2', '{"x":-44.596527,"y":-1547.0435,"z":30.327816}', '40000', 0, '598', '48628', '[]'),
	(572, '', '2', '{"x":-44.531796,"y":-1547.1132,"z":33.501415}', '40000', 0, '608', '533751', '[]'),
	(573, '', '2', '{"x":-36.143864,"y":-1536.959,"z":30.356253}', '40000', 0, '591', '657196', '[]'),
	(574, '', '2', '{"x":-35.686573,"y":-1555.3004,"z":32.70144}', '40000', 0, '610', '54543', '[]'),
	(575, '', '2', '{"x":-28.157928,"y":-1560.8616,"z":32.70144}', '40000', 0, '612', '682525', '[]'),
	(576, '', '2', '{"x":-53.154873,"y":-1523.7019,"z":32.316147}', '40000', 0, '600', '765247', '[]'),
	(577, '', '2', '{"x":-59.908333,"y":-1517.122,"z":32.316143}', '40000', 0, '599', '916059', '[]'),
	(578, '', '2', '{"x":-65.04577,"y":-1512.9163,"z":32.316143}', '40000', 1, '597', '605795', '[]'),
	(579, '', '2', '{"x":-71.78605,"y":-1508.2107,"z":32.316143}', '40000', 0, '595', '933824', '[]'),
	(580, '', '2', '{"x":-77.762215,"y":-1515.2776,"z":33.125294}', '40000', 0, '607', '773819', '[]'),
	(581, '', '2', '{"x":-59.25706,"y":-1530.8522,"z":33.115288}', '40000', 0, '602', '823852', '[]'),
	(582, '', '2', '{"x":-62.318886,"y":-1532.611,"z":33.115234}', '40000', 0, '603', '217739', '[]'),
	(583, '', '2', '{"x":-69.30563,"y":-1526.8704,"z":33.11523}', '40000', 0, '605', '13002', '[]'),
	(584, '', '2', '{"x":-69.291534,"y":-1526.8539,"z":36.29958}', '40000', 0, '618', '962342', '[]'),
	(585, '', '2', '{"x":-62.20933,"y":-1532.7034,"z":36.29958}', '40000', 0, '617', '483485', '[]'),
	(586, '', '2', '{"x":-59.173977,"y":-1530.9158,"z":36.2996}', '40000', 0, '616', '123516', '[]'),
	(587, '', '2', '{"x":-53.265766,"y":-1523.7341,"z":35.504974}', '40000', 0, '615', '953533', '[]'),
	(588, '', '2', '{"x":-60.093933,"y":-1517.0701,"z":35.504917}', '40000', 0, '614', '714405', '[]'),
	(589, '', '2', '{"x":-65.073616,"y":-1512.7775,"z":35.504917}', '40000', 0, '613', '991618', '[]'),
	(590, '', '2', '{"x":-71.74645,"y":-1508.0681,"z":35.50491}', '40000', 0, '611', '106301', '[]'),
	(591, '', '2', '{"x":-77.70023,"y":-1515.0905,"z":36.299618}', '40000', 0, '609', '818997', '[]'),
	(592, '', '2', '{"x":-97.76659,"y":-1612.285,"z":31.192297}', '40000', 0, '627', '148456', '[]'),
	(593, '', '2', '{"x":-109.73996,"y":-1628.6893,"z":31.787573}', '40000', 0, '619', '203641', '[]'),
	(594, '', '2', '{"x":-105.466606,"y":-1632.7499,"z":31.786913}', '40000', 0, '620', '130486', '[]'),
	(595, '', '2', '{"x":-97.22861,"y":-1639.1959,"z":30.982985}', '40000', 0, '621', '745046', '[]'),
	(596, '', '2', '{"x":-89.57164,"y":-1630.0858,"z":30.38562}', '40000', 0, '622', '522613', '[]'),
	(597, '', '2', '{"x":-83.631294,"y":-1622.9899,"z":30.356823}', '40000', 0, '623', '807588', '[]'),
	(598, '', '2', '{"x":-80.208954,"y":-1607.9242,"z":30.36061}', '40000', 0, '624', '913911', '[]'),
	(599, '', '2', '{"x":-87.84027,"y":-1601.588,"z":31.19193}', '40000', 0, '625', '13273', '[]'),
	(600, '', '2', '{"x":-93.442825,"y":-1607.1605,"z":31.19193}', '40000', 0, '626', '592732', '[]'),
	(601, '', '2', '{"x":-109.51052,"y":-1628.4205,"z":35.169033}', '40000', 0, '628', '6943', '[]'),
	(602, '', '2', '{"x":-105.44352,"y":-1632.7395,"z":35.16907}', '40000', 0, '629', '885739', '[]'),
	(603, '', '2', '{"x":-97.03608,"y":-1638.9807,"z":34.36672}', '40000', 0, '0', '357682', '[]'),
	(604, '', '2', '{"x":-98.07757,"y":-1638.9246,"z":34.364155}', '40000', 0, '637', '340317', '[]'),
	(605, '', '2', '{"x":-89.45096,"y":-1630.0259,"z":33.56921}', '40000', 0, '639', '247021', '[]'),
	(606, '', '2', '{"x":-83.552055,"y":-1622.9105,"z":33.56919}', '40000', 0, '641', '993410', '[]'),
	(607, '', '2', '{"x":-80.35456,"y":-1607.783,"z":33.569164}', '40000', 0, '643', '324500', '[]'),
	(608, '', '2', '{"x":-87.80262,"y":-1601.46,"z":34.36918}', '40000', 0, '646', '117567', '[]'),
	(609, '', '2', '{"x":-93.45783,"y":-1607.1619,"z":34.36918}', '40000', 0, '648', '391738', '[]'),
	(610, '', '2', '{"x":-97.87138,"y":-1612.2793,"z":34.369183}', '40000', 0, '650', '464217', '[]'),
	(611, '', '2', '{"x":-123.010994,"y":-1591.1661,"z":33.087578}', '40000', 0, '652', '311429', '[]'),
	(612, '', '2', '{"x":-118.83944,"y":-1586.0868,"z":33.09297}', '40000', 0, '661', '672719', '[]'),
	(613, '', '2', '{"x":-114.00114,"y":-1579.5698,"z":33.057053}', '40000', 0, '659', '536450', '[]'),
	(614, '', '2', '{"x":-120.03088,"y":-1574.5863,"z":33.0563}', '40000', 1, '658', '631485', '[]'),
	(615, '', '2', '{"x":-134.24168,"y":-1580.2543,"z":33.088108}', '40000', 0, '657', '888268', '[]'),
	(616, '', '2', '{"x":-140.17705,"y":-1587.3103,"z":33.123653}', '40000', 0, '656', '136594', '[]'),
	(617, '', '2', '{"x":-147.84352,"y":-1596.5183,"z":33.711304}', '40000', 0, '655', '91413', '[]'),
	(618, '', '2', '{"x":-140.20703,"y":-1599.597,"z":33.711304}', '40000', 0, '654', '865572', '[]'),
	(619, '', '2', '{"x":-140.20647,"y":-1599.5968,"z":37.09262}', '40000', 0, '664', '327801', '[]'),
	(620, '', '2', '{"x":-147.76701,"y":-1596.3575,"z":37.09262}', '40000', 0, '0', '857730', '[]'),
	(621, '', '2', '{"x":-147.35692,"y":-1596.9929,"z":37.09262}', '40000', 0, '663', '209166', '[]'),
	(622, '', '2', '{"x":-140.28319,"y":-1587.5214,"z":36.28799}', '40000', 0, '0', '142153', '[]'),
	(623, '', '2', '{"x":-134.35182,"y":-1580.4497,"z":36.28781}', '40000', 0, '660', '670740', '[]'),
	(624, '', '2', '{"x":-120.04712,"y":-1574.4065,"z":36.287758}', '40000', 0, '665', '272883', '[]'),
	(625, '', '2', '{"x":-113.95048,"y":-1579.5452,"z":36.287758}', '40000', 0, '666', '700737', '[]'),
	(626, '', '2', '{"x":-118.86298,"y":-1586.1145,"z":36.287758}', '40000', 0, '667', '900171', '[]'),
	(627, '', '2', '{"x":-123.04479,"y":-1591.0935,"z":36.287758}', '40000', 0, '668', '330111', '[]'),
	(628, '', '2', '{"x":-124.10496,"y":-1671.2809,"z":31.444326}', '40000', 0, '634', '526710', '[]'),
	(629, '', '2', '{"x":-131.5975,"y":-1665.5233,"z":31.444376}', '40000', 0, '633', '309495', '[]'),
	(630, '', '2', '{"x":-138.70619,"y":-1658.8625,"z":32.216488}', '40000', 0, '632', '159913', '[]'),
	(631, '', '2', '{"x":-128.94463,"y":-1647.2295,"z":32.18854}', '40000', 0, '638', '957658', '[]'),
	(632, '', '2', '{"x":-121.17577,"y":-1653.255,"z":31.444372}', '40000', 0, '636', '2149', '[]'),
	(633, '', '2', '{"x":-114.41429,"y":-1659.7363,"z":31.444323}', '40000', 0, '635', '592522', '[]'),
	(634, '', '2', '{"x":-114.138916,"y":-1659.5535,"z":34.59425}', '40000', 0, '642', '341093', '[]'),
	(635, '', '2', '{"x":-121.146286,"y":-1653.322,"z":34.59419}', '40000', 0, '644', '766876', '[]'),
	(636, '', '2', '{"x":-128.98921,"y":-1647.468,"z":35.39423}', '40000', 0, '645', '938111', '[]'),
	(637, '', '2', '{"x":-138.74933,"y":-1658.9755,"z":35.394157}', '40000', 0, '649', '860056', '[]'),
	(638, '', '2', '{"x":-131.68988,"y":-1665.4889,"z":34.594254}', '40000', 0, '651', '672684', '[]'),
	(639, '', '2', '{"x":-124.143776,"y":-1671.3268,"z":34.5942}', '40000', 0, '653', '715321', '[]'),
	(640, '', '2', '{"x":-130.8,"y":-1679.3898,"z":33.79423}', '40000', 0, '647', '490074', '[]'),
	(641, '', '2', '{"x":-107.416214,"y":-1651.5476,"z":33.76107}', '40000', 0, '640', '799014', '[]'),
	(642, '', '2', '{"x":500.44565,"y":-1813.1892,"z":27.771206}', '40000', 0, '670', '835966', '[]'),
	(643, '', '2', '{"x":512.54694,"y":-1790.611,"z":27.800652}', '40000', 0, '671', '322668', '[]'),
	(644, '', '2', '{"x":514.1463,"y":-1780.9916,"z":27.793676}', '40000', 0, '672', '527402', '[]'),
	(645, '', '2', '{"x":472.0646,"y":-1775.1328,"z":27.95087}', '40000', 0, '673', '794871', '[]'),
	(646, '', '2', '{"x":474.46445,"y":-1757.6873,"z":27.972652}', '40000', 0, '674', '146279', '[]'),
	(647, '', '2', '{"x":479.67358,"y":-1735.6665,"z":28.031023}', '40000', 0, '675', '612005', '[]'),
	(648, '', '2', '{"x":489.52353,"y":-1714.1128,"z":28.586884}', '40000', 1, '676', '572155', '[]'),
	(649, '', '2', '{"x":500.57962,"y":-1697.1343,"z":28.669264}', '40000', 0, '677', '242216', '[]'),
	(650, '', '2', '{"x":443.32425,"y":-1707.3574,"z":28.588802}', '40000', 0, '678', '608453', '[]'),
	(651, '', '2', '{"x":431.23718,"y":-1725.4254,"z":28.481434}', '40000', 1, '679', '431200', '[]'),
	(652, '', '2', '{"x":419.1788,"y":-1735.586,"z":28.487694}', '40000', 1, '680', '942014', '[]'),
	(653, '', '2', '{"x":405.77347,"y":-1751.1404,"z":28.590328}', '40000', 0, '681', '586110', '[]'),
	(654, '', '3', '{"x":-1754.1006,"y":-708.9139,"z":9.276973}', '110000', 1, '693', '155542', '[]'),
	(655, '', '2', '{"x":348.52423,"y":-1820.8679,"z":27.774092}', '40000', 0, '682', '383566', '[]'),
	(656, '', '2', '{"x":338.61844,"y":-1829.5798,"z":27.216906}', '40000', 0, '683', '864789', '[]'),
	(657, '', '2', '{"x":329.40802,"y":-1845.9221,"z":26.628094}', '40000', 0, '684', '215000', '[]'),
	(658, '', '2', '{"x":320.32162,"y":-1854.0667,"z":26.390915}', '40000', 0, '685', '84800', '[]'),
	(659, '', '2', '{"x":288.67334,"y":-1792.6144,"z":26.968767}', '40000', 1, '686', '639578', '[]'),
	(660, '', '2', '{"x":300.27554,"y":-1783.6993,"z":27.318659}', '60000', 1, '687', '346849', '[]'),
	(661, '', '2', '{"x":304.40216,"y":-1775.5066,"z":27.981037}', '40000', 0, '688', '663299', '[]'),
	(662, '', '2', '{"x":320.6257,"y":-1759.9213,"z":28.51747}', '40000', 1, '689', '797788', '[]'),
	(663, '', '2', '{"x":333.02374,"y":-1740.8269,"z":28.610525}', '60000', 1, '690', '808070', '[]'),
	(664, '', '2', '{"x":282.01117,"y":-1694.9333,"z":28.526932}', '40000', 0, '691', '231825', '[]'),
	(665, '', '2', '{"x":269.60538,"y":-1712.76,"z":28.5488}', '40000', 0, '692', '506558', '[]'),
	(666, '', '2', '{"x":257.58527,"y":-1722.8977,"z":28.53413}', '40000', 1, '694', '309280', '[]'),
	(667, '', '2', '{"x":250.1072,"y":-1730.792,"z":28.549473}', '40000', 0, '695', '80197', '[]'),
	(668, '', '2', '{"x":197.59573,"y":-1725.801,"z":28.543646}', '40000', 0, '696', '195358', '[]'),
	(669, '', '2', '{"x":216.36693,"y":-1717.2985,"z":28.557793}', '40000', 0, '697', '864608', '[]'),
	(670, '', '2', '{"x":222.57892,"y":-1702.4877,"z":28.576872}', '40000', 1, '698', '950155', '[]'),
	(671, '', '2', '{"x":240.65765,"y":-1687.7922,"z":28.57961}', '40000', 0, '699', '276537', '[]'),
	(672, '', '2', '{"x":252.83719,"y":-1670.6849,"z":28.543165}', '40000', 0, '700', '418727', '[]'),
	(673, '', '3', '{"x":-1770.884,"y":-677.5725,"z":9.267259}', '110000', 0, '720', '150251', '[]'),
	(674, '', '3', '{"x":-1788.0238,"y":-672.0008,"z":9.532007}', '110000', 1, '721', '837725', '[]'),
	(675, '', '3', '{"x":-1800.028,"y":-667.1721,"z":9.481781}', '110000', 0, '722', '58717', '[]'),
	(676, '', '3', '{"x":-1803.8324,"y":-661.8749,"z":9.606813}', '110000', 0, '723', '373198', '[]'),
	(677, '', '3', '{"x":-1813.9103,"y":-656.6996,"z":9.769047}', '110000', 0, '724', '819484', '[]'),
	(678, '', '3', '{"x":-1816.8712,"y":-636.77,"z":9.818936}', '110000', 0, '727', '143339', '[]'),
	(679, '', '3', '{"x":-1836.5178,"y":-631.8368,"z":9.6311865}', '110000', 0, '732', '478010', '[]'),
	(680, '', '3', '{"x":-1838.9058,"y":-629.55914,"z":10.127707}', '110000', 0, '733', '554459', '[]'),
	(681, '', '4', '{"x":-1869.7599,"y":-590.407,"z":10.74065}', '135000', 0, '735', '288166', '[]'),
	(682, '', '4', '{"x":-1883.4708,"y":-578.888,"z":10.731897}', '135000', 0, '737', '757955', '[]'),
	(683, '', '4', '{"x":-1901.3081,"y":-586.16223,"z":10.752401}', '135000', 0, '738', '284494', '[]'),
	(684, '', '4', '{"x":-1898.5444,"y":-572.4745,"z":10.725463}', '135000', 1, '741', '701041', '[]'),
	(685, '', '4', '{"x":-1919.8204,"y":-569.8601,"z":10.792077}', '135000', 0, '742', '728712', '[]'),
	(686, '', '4', '{"x":-1918.726,"y":-542.57104,"z":10.705331}', '135000', 0, '743', '15645', '[]'),
	(687, '', '2', '{"x":282.78876,"y":-1899.192,"z":26.147552}', '40000', 0, '701', '416037', '[]'),
	(688, '', '2', '{"x":270.43274,"y":-1917.0096,"z":25.060331}', '40000', 0, '702', '436981', '[]'),
	(689, '', '2', '{"x":258.246,"y":-1927.0323,"z":24.324776}', '40000', 0, '705', '957526', '[]'),
	(690, '', '2', '{"x":250.85056,"y":-1934.9801,"z":23.579933}', '40000', 0, '706', '902086', '[]'),
	(691, '', '2', '{"x":144.29149,"y":-1968.8965,"z":17.737623}', '40000', 0, '707', '723112', '[]'),
	(692, '', '2', '{"x":148.87831,"y":-1960.5217,"z":18.33841}', '60000', 1, '708', '775256', '[]'),
	(693, '', '2', '{"x":165.21893,"y":-1944.7496,"z":19.115427}', '40000', 0, '709', '33106', '[]'),
	(694, '', '2', '{"x":179.2849,"y":-1923.925,"z":20.251019}', '40000', 0, '710', '368473', '[]'),
	(695, '', '4', '{"x":-1945.7944,"y":-544.7225,"z":10.743664}', '135000', 0, '745', '826774', '[]'),
	(696, '', '4', '{"x":-1946.948,"y":-544.0176,"z":10.743866}', '135000', 0, '744', '1226', '[]'),
	(697, '', '2', '{"x":208.58432,"y":-1895.2852,"z":23.694138}', '40000', 0, '711', '27897', '[]'),
	(698, '', '2', '{"x":192.45172,"y":-1883.3203,"z":23.936726}', '40000', 1, '712', '90843', '[]'),
	(699, '', '4', '{"x":-1964.3634,"y":-520.7873,"z":11.060844}', '135000', 0, '746', '20844', '[]'),
	(700, '', '2', '{"x":171.60435,"y":-1871.552,"z":23.280228}', '40000', 0, '713', '485592', '[]'),
	(701, '', '2', '{"x":148.88351,"y":-1904.5387,"z":22.411234}', '40000', 0, '714', '66082', '[]'),
	(702, '', '2', '{"x":150.09863,"y":-1864.6908,"z":23.471405}', '40000', 0, '715', '416648', '[]'),
	(703, '', '4', '{"x":-1969.4323,"y":-516.6045,"z":10.713116}', '135000', 0, '749', '707545', '[]'),
	(704, '', '2', '{"x":128.32123,"y":-1896.9858,"z":22.554195}', '40000', 0, '716', '292060', '[]'),
	(705, '', '4', '{"x":-1977.7839,"y":-509.23978,"z":10.730008}', '135000', 1, '750', '331916', '[]'),
	(706, '', '2', '{"x":115.43027,"y":-1887.9585,"z":22.808224}', '40000', 0, '717', '12473', '[]'),
	(707, '', '2', '{"x":130.63153,"y":-1853.2479,"z":24.114365}', '40000', 0, '718', '791763', '[]'),
	(708, '', '2', '{"x":104.041885,"y":-1885.3953,"z":23.198776}', '40000', 0, '719', '748384', '[]'),
	(709, '', '2', '{"x":152.80495,"y":-1823.7618,"z":26.748653}', '40000', 0, '726', '96826', '[]'),
	(710, '', '2', '{"x":385.23523,"y":-1995.536,"z":23.114977}', '40000', 0, '729', '10368', '[]'),
	(711, '', '2', '{"x":383.56644,"y":-1994.9474,"z":23.114977}', '40000', 0, '734', '45305', '[]'),
	(712, '', '2', '{"x":374.5884,"y":-1991.4457,"z":23.114922}', '40000', 0, '736', '71662', '[]'),
	(713, '', '2', '{"x":363.95206,"y":-1987.8237,"z":23.113703}', '40000', 0, '739', '606788', '[]'),
	(714, '', '4', '{"x":-2603.2346,"y":1686.2687,"z":141.54755}', '10000000', 1, '740', '85120', '[]'),
	(715, '', '6', '{"x":-1873.1367,"y":202.09323,"z":83.2552}', '950000', 0, '363', '58683', '[]'),
	(716, '', '6', '{"x":-1467.5907,"y":34.970257,"z":53.424877}', '5000000', 0, '754', '905343', '[]'),
	(717, '', '4', '{"x":-3215.7952,"y":816.05347,"z":7.8109055}', '13000000', 0, '756', '513295', '[]'),
	(718, '', '4', '{"x":-1135.5074,"y":375.77808,"z":70.17979}', '2000000', 0, '760', '107030', '[]'),
	(719, '', '4', '{"x":-86.05045,"y":834.51746,"z":234.80011}', '2000000', 0, '758', '503112', '[]'),
	(720, '', '4', '{"x":-151.74422,"y":910.728,"z":234.53563}', '2000000', 1, '762', '490914', '[]'),
	(721, '', '1', '{"x":1973.884,"y":3814.9824,"z":32.30409}', '25000', 1, '763', '722421', '[]');
/*!40000 ALTER TABLE `houses` ENABLE KEYS */;

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
	('10368', '', '0', '2'),
	('104415', '', '0', '2'),
	('105213', '', '0', '2'),
	('106169', '', '0', '3'),
	('106301', '', '0', '2'),
	('10649', '', '0', '2'),
	('107030', '', '0', '2'),
	('112782', '', '0', '2'),
	('115360', '', '0', '2'),
	('11610', '', '0', '3'),
	('116463', '', '0', '2'),
	('117567', '', '0', '2'),
	('121701', '', '0', '2'),
	('122167', '', '0', '2'),
	('1226', '', '0', '2'),
	('123516', '', '0', '2'),
	('12400', '', '0', '2'),
	('124493', '', '0', '2'),
	('12473', '', '0', '2'),
	('125643', '', '0', '2'),
	('126597', 'Lil_Pumpers', '0', '1'),
	('127492', '', '0', '2'),
	('128310', '', '0', '3'),
	('1290', '', '0', '3'),
	('13002', '', '0', '2'),
	('130056', '', '0', '2'),
	('130486', '', '0', '2'),
	('13273', '', '0', '2'),
	('133815', '', '0', '2'),
	('135372', '', '0', '2'),
	('135958', '', '0', '2'),
	('136594', '', '0', '2'),
	('139828', '', '0', '2'),
	('141134', '', '0', '3'),
	('141732', '', '0', '3'),
	('142153', '', '0', '2'),
	('142699', '', '0', '2'),
	('143339', '', '0', '2'),
	('144240', '', '0', '2'),
	('144645', '', '0', '2'),
	('145634', '', '0', '3'),
	('146052', '', '0', '2'),
	('146279', '', '0', '2'),
	('148456', '', '0', '2'),
	('148734', '', '0', '2'),
	('150251', '', '0', '2'),
	('150490', '', '0', '2'),
	('150565', '', '0', '2'),
	('153922', '', '0', '2'),
	('154737', '', '0', '2'),
	('155542', '', '0', '2'),
	('156176', '', '0', '2'),
	('15645', '', '0', '2'),
	('159535', '', '0', '2'),
	('159702', '', '0', '2'),
	('159913', '', '0', '2'),
	('162701', '', '0', '2'),
	('164723', '', '0', '2'),
	('165586', '', '0', '2'),
	('165995', '', '0', '3'),
	('166296', '', '0', '2'),
	('166818', '', '0', '2'),
	('167876', '', '0', '2'),
	('171515', '', '0', '2'),
	('172109', '', '0', '2'),
	('172423', '', '0', '2'),
	('172488', '', '0', '2'),
	('172933', '', '0', '2'),
	('173419', '', '0', '2'),
	('173617', '', '0', '3'),
	('175195', '', '0', '2'),
	('179196', '', '0', '2'),
	('179979', '', '0', '2'),
	('181710', '', '0', '2'),
	('18237', '', '0', '2'),
	('182606', '', '0', '2'),
	('182811', '', '0', '3'),
	('184154', '', '0', '2'),
	('188394', '', '0', '2'),
	('188679', '', '0', '2'),
	('189268', '', '0', '2'),
	('189317', '', '0', '2'),
	('189751', '', '0', '2'),
	('193645', '', '0', '3'),
	('195358', '', '0', '2'),
	('195485', '', '0', '2'),
	('196436', '', '0', '2'),
	('196695', '', '0', '2'),
	('197396', '', '0', '2'),
	('197930', '', '0', '2'),
	('200946', '', '0', '2'),
	('201698', '', '0', '2'),
	('202126', '', '0', '2'),
	('202414', '', '0', '3'),
	('202539', '', '0', '2'),
	('203641', '', '0', '2'),
	('206312', '', '0', '2'),
	('20844', '', '0', '2'),
	('209166', '', '0', '2'),
	('209512', '', '0', '3'),
	('210874', '', '0', '2'),
	('213493', '', '0', '3'),
	('214323', '', '0', '2'),
	('2149', '', '0', '2'),
	('215000', '', '0', '2'),
	('217197', 'Elena_Pegas', '0', '1'),
	('217739', '', '0', '2'),
	('220091', '', '0', '2'),
	('221001', '', '0', '2'),
	('221085', '', '0', '2'),
	('22532', '', '0', '2'),
	('227490', '', '0', '2'),
	('228573', '', '0', '2'),
	('229160', '', '0', '2'),
	('229466', '', '0', '2'),
	('229765', '', '0', '2'),
	('230484', '', '0', '2'),
	('23158', '', '0', '2'),
	('231825', '', '0', '2'),
	('232375', '', '0', '2'),
	('234616', '', '0', '2'),
	('236464', '', '0', '2'),
	('236504', '', '0', '2'),
	('237743', '', '0', '2'),
	('237975', '', '0', '2'),
	('238025', '', '0', '2'),
	('239700', '', '0', '3'),
	('23971', '', '0', '2'),
	('240745', '', '0', '2'),
	('241559', '', '0', '2'),
	('242216', '', '0', '2'),
	('243304', '', '0', '2'),
	('247021', '', '0', '2'),
	('249194', '', '0', '2'),
	('249634', '', '0', '2'),
	('250055', '', '0', '2'),
	('252400', '', '0', '2'),
	('252558', '', '0', '2'),
	('252798', '', '0', '2'),
	('254906', '', '0', '2'),
	('255654', '', '0', '2'),
	('257992', '', '0', '2'),
	('259682', '', '0', '2'),
	('259808', '', '0', '2'),
	('262647', '', '0', '3'),
	('26447', '', '0', '2'),
	('265153', '', '0', '2'),
	('265811', '', '0', '3'),
	('270543', '', '0', '2'),
	('271476', '', '0', '2'),
	('272883', '', '0', '2'),
	('27376', 'Julia_Aurora', '0', '1'),
	('275156', '', '0', '2'),
	('276537', '', '0', '2'),
	('278515', '', '0', '2'),
	('27897', '', '0', '2'),
	('280925', '', '0', '2'),
	('282122', '', '0', '3'),
	('28323', '', '0', '2'),
	('283900', 'Elena_Pegas', '0', '1'),
	('284494', '', '0', '2'),
	('284537', '', '0', '3'),
	('285119', '', '0', '2'),
	('286286', '', '0', '2'),
	('286595', '', '0', '2'),
	('288075', '', '0', '2'),
	('288166', '', '0', '2'),
	('288343', '', '0', '2'),
	('288822', '', '0', '2'),
	('291043', '', '0', '2'),
	('292060', '', '0', '2'),
	('295118', '', '0', '2'),
	('295649', '', '0', '2'),
	('297869', '', '0', '2'),
	('299737', '', '0', '3'),
	('301799', '', '0', '2'),
	('30214', '', '0', '2'),
	('306909', '', '0', '2'),
	('308938', '', '0', '2'),
	('309280', '', '0', '2'),
	('309495', '', '0', '2'),
	('309554', '', '0', '2'),
	('310345', '', '0', '2'),
	('310679', '', '0', '2'),
	('311350', '', '0', '2'),
	('311429', '', '0', '2'),
	('31713', '', '0', '2'),
	('320320', '', '0', '3'),
	('321454', '', '0', '2'),
	('322668', '', '0', '2'),
	('324500', '', '0', '2'),
	('326031', '', '0', '2'),
	('326448', '', '0', '2'),
	('327801', '', '0', '2'),
	('327823', '', '0', '2'),
	('328613', '', '0', '3'),
	('328925', '', '0', '2'),
	('329765', '', '0', '2'),
	('330111', '', '0', '2'),
	('33106', '', '0', '2'),
	('331900', '', '0', '2'),
	('331916', '', '0', '2'),
	('333301', '', '0', '2'),
	('333778', '', '0', '3'),
	('333790', '', '0', '2'),
	('33434', '', '0', '3'),
	('335785', '', '0', '3'),
	('335822', '', '0', '2'),
	('335887', '', '0', '3'),
	('337533', '', '0', '2'),
	('338441', '', '0', '2'),
	('338770', '', '0', '2'),
	('339945', '', '0', '2'),
	('340005', '', '0', '2'),
	('340317', '', '0', '2'),
	('341093', '', '0', '2'),
	('344214', '', '0', '3'),
	('345132', '', '0', '2'),
	('346849', '', '0', '2'),
	('347749', '', '0', '2'),
	('349744', '', '0', '2'),
	('350018', '', '0', '2'),
	('350251', '', '0', '2'),
	('350354', '', '0', '2'),
	('352419', '', '0', '2'),
	('3526', '', '0', '2'),
	('353040', '', '0', '2'),
	('353637', '', '0', '3'),
	('353736', '', '0', '2'),
	('354333', '', '0', '2'),
	('354814', '', '0', '3'),
	('357472', '', '0', '2'),
	('357682', '', '0', '2'),
	('358251', '', '0', '2'),
	('365352', '', '0', '2'),
	('365991', '', '0', '2'),
	('366070', '', '0', '2'),
	('368065', '', '0', '2'),
	('368314', '', '0', '2'),
	('368473', '', '0', '2'),
	('368581', '', '0', '3'),
	('369810', '', '0', '2'),
	('370312', '', '0', '2'),
	('371257', '', '0', '2'),
	('371953', '', '0', '2'),
	('373198', '', '0', '2'),
	('374414', '', '0', '2'),
	('376556', '', '0', '3'),
	('37771', '', '0', '2'),
	('378127', '', '0', '2'),
	('379183', '', '0', '2'),
	('380585', '', '0', '2'),
	('383566', '', '0', '2'),
	('383578', '', '0', '2'),
	('383818', '', '0', '2'),
	('385236', '', '0', '2'),
	('385560', '', '0', '2'),
	('385591', '', '0', '2'),
	('390483', '', '0', '2'),
	('391738', '', '0', '2'),
	('392248', '', '0', '3'),
	('397757', '', '0', '2'),
	('398406', '', '0', '2'),
	('400753', '', '0', '2'),
	('401096', '', '0', '3'),
	('404125', '', '0', '2'),
	('404444', '', '0', '2'),
	('405305', '', '0', '2'),
	('408318', '', '0', '2'),
	('408503', '', '0', '2'),
	('408636', '', '0', '2'),
	('409350', '', '0', '3'),
	('409397', '', '0', '2'),
	('41002', '', '0', '3'),
	('410188', '', '0', '2'),
	('410198', '', '0', '2'),
	('410448', '', '0', '3'),
	('413654', '', '0', '2'),
	('416037', '', '0', '2'),
	('416533', '', '0', '2'),
	('416648', '', '0', '2'),
	('417513', '', '0', '2'),
	('418408', '', '0', '2'),
	('418727', '', '0', '2'),
	('421244', '', '0', '2'),
	('421823', '', '0', '2'),
	('426091', '', '0', '2'),
	('42627', '', '0', '2'),
	('426487', '', '0', '2'),
	('428603', '', '0', '2'),
	('431200', '', '0', '2'),
	('431545', '', '0', '2'),
	('431560', '', '0', '2'),
	('434198', '', '0', '3'),
	('434460', '', '0', '2'),
	('434724', '', '0', '2'),
	('435444', '', '0', '2'),
	('436090', '', '0', '2'),
	('436981', '', '0', '2'),
	('43777', '', '0', '2'),
	('440530', '', '0', '2'),
	('441895', '', '0', '2'),
	('443851', '', '0', '2'),
	('443912', '', '0', '2'),
	('445627', '', '0', '2'),
	('446589', '', '0', '2'),
	('447123', '', '0', '2'),
	('449422', '', '0', '2'),
	('449719', '', '0', '2'),
	('449839', '', '0', '2'),
	('451674', '', '0', '2'),
	('45305', '', '0', '2'),
	('455329', '', '0', '2'),
	('456866', '', '0', '2'),
	('460048', '', '0', '2'),
	('464133', '', '0', '2'),
	('464217', '', '0', '2'),
	('466442', '', '0', '2'),
	('467400', '', '0', '3'),
	('468774', '', '0', '3'),
	('470276', '', '0', '2'),
	('470357', '', '0', '2'),
	('471423', 'Julia_Aurora', '0', '1'),
	('471433', '', '0', '2'),
	('472500', '', '0', '2'),
	('472932', 'Sergey_Hydra', '0', '1'),
	('474531', '', '0', '2'),
	('47621', '', '0', '3'),
	('477094', '', '0', '2'),
	('477299', '', '0', '2'),
	('47756', '', '0', '2'),
	('477919', '', '0', '2'),
	('478010', '', '0', '2'),
	('481501', '', '0', '2'),
	('483180', '', '0', '2'),
	('483485', '', '0', '2'),
	('484926', '', '0', '3'),
	('485225', '', '0', '2'),
	('485592', '', '0', '2'),
	('48628', '', '0', '2'),
	('489529', '', '0', '2'),
	('490074', '', '0', '2'),
	('490914', '', '0', '2'),
	('493165', '', '0', '2'),
	('493466', '', '0', '3'),
	('494702', '', '0', '2'),
	('49581', '', '0', '2'),
	('496613', '', '0', '2'),
	('499804', '', '0', '2'),
	('501432', '', '0', '2'),
	('502446', '', '0', '2'),
	('503112', '', '0', '2'),
	('504736', '', '0', '2'),
	('505585', 'Test_Test', '0', '1'),
	('50566', '', '0', '2'),
	('505910', '', '0', '3'),
	('50603', '', '0', '2'),
	('506558', '', '0', '2'),
	('506566', '', '0', '2'),
	('508730', '', '0', '2'),
	('509759', '', '0', '2'),
	('510099', '', '0', '2'),
	('510748', '', '0', '3'),
	('512764', '', '0', '2'),
	('513225', '', '0', '2'),
	('513295', '', '0', '2'),
	('514559', '', '0', '2'),
	('515853', '', '0', '2'),
	('516828', '', '0', '2'),
	('517194', '', '0', '2'),
	('517218', '', '0', '2'),
	('519735', '', '0', '2'),
	('520202', '', '0', '2'),
	('521686', '', '0', '2'),
	('521713', '', '0', '2'),
	('522613', '', '0', '2'),
	('524802', '', '0', '2'),
	('525099', '', '0', '2'),
	('52600', '', '0', '2'),
	('52626', '', '0', '2'),
	('52645', '', '0', '2'),
	('526597', '', '0', '2'),
	('526612', '', '0', '3'),
	('526710', '', '0', '2'),
	('527162', '', '0', '2'),
	('527402', '', '0', '2'),
	('527757', '', '0', '2'),
	('532033', '', '0', '2'),
	('532613', '', '0', '3'),
	('533751', '', '0', '2'),
	('536042', '', '0', '2'),
	('536450', '', '0', '2'),
	('536465', '', '0', '2'),
	('537600', '', '0', '3'),
	('538995', '', '0', '2'),
	('540547', '', '0', '2'),
	('542485', '', '0', '2'),
	('543830', '', '0', '2'),
	('54543', '', '0', '2'),
	('547134', '', '0', '2'),
	('547162', '', '0', '2'),
	('548100', '', '0', '2'),
	('548262', '', '0', '2'),
	('552377', '', '0', '2'),
	('552726', '', '0', '2'),
	('554459', '', '0', '2'),
	('554799', '', '0', '2'),
	('5600', '', '0', '2'),
	('560095', '', '0', '2'),
	('560123', '', '0', '2'),
	('56155', '', '0', '2'),
	('562240', '', '0', '2'),
	('565615', '', '0', '2'),
	('566631', '', '0', '2'),
	('570451', '', '0', '2'),
	('57143', '', '0', '2'),
	('572155', '', '0', '2'),
	('572212', '', '0', '2'),
	('578341', '', '0', '2'),
	('579844', '', '0', '3'),
	('580401', '', '0', '2'),
	('580888', '', '0', '2'),
	('586110', '', '0', '2'),
	('586713', '', '0', '2'),
	('58683', '', '0', '2'),
	('587066', '', '0', '2'),
	('58717', '', '0', '2'),
	('592522', '', '0', '2'),
	('592732', '', '0', '2'),
	('593590', '', '0', '2'),
	('594246', '', '0', '2'),
	('594652', '', '0', '2'),
	('597819', '', '0', '2'),
	('600314', '', '0', '2'),
	('600683', '', '0', '3'),
	('602053', '', '0', '2'),
	('603690', '', '0', '2'),
	('604217', '', '0', '2'),
	('604496', '', '0', '2'),
	('604606', '', '0', '3'),
	('604880', '', '0', '2'),
	('605795', '', '0', '2'),
	('606630', '', '0', '3'),
	('606788', '', '0', '2'),
	('607852', '', '0', '2'),
	('608389', '', '0', '3'),
	('608453', '', '0', '2'),
	('608946', '', '0', '2'),
	('610466', '', '0', '3'),
	('61105', '', '0', '2'),
	('612005', '', '0', '2'),
	('614522', '', '0', '2'),
	('614597', '', '0', '2'),
	('617247', '', '0', '2'),
	('618509', '', '0', '2'),
	('618732', '', '0', '2'),
	('620207', '', '0', '2'),
	('620254', '', '0', '2'),
	('620656', '', '0', '2'),
	('621191', '', '0', '2'),
	('622190', '', '0', '2'),
	('624506', '', '0', '3'),
	('626518', '', '0', '2'),
	('627027', '', '0', '2'),
	('627989', '', '0', '3'),
	('629637', '', '0', '2'),
	('630218', '', '0', '2'),
	('631485', '', '0', '2'),
	('633051', '', '0', '2'),
	('634524', '', '0', '2'),
	('635504', '', '0', '2'),
	('637321', '', '0', '2'),
	('637711', '', '0', '2'),
	('639578', '', '0', '2'),
	('63989', '', '0', '3'),
	('641259', '', '0', '2'),
	('643436', '', '0', '2'),
	('645228', '', '0', '2'),
	('647090', '', '0', '2'),
	('648965', '', '0', '3'),
	('650924', '', '0', '2'),
	('651573', '', '0', '2'),
	('652494', '', '0', '3'),
	('653585', '', '0', '2'),
	('654016', '', '0', '2'),
	('657022', '', '0', '2'),
	('657058', '', '0', '2'),
	('657196', '', '0', '2'),
	('66082', '', '0', '2'),
	('661034', '', '0', '2'),
	('661178', '', '0', '2'),
	('662089', '', '0', '2'),
	('662359', '', '0', '2'),
	('663098', '', '0', '2'),
	('663299', '', '0', '2'),
	('664576', '', '0', '3'),
	('665236', '', '0', '2'),
	('667360', '', '0', '2'),
	('66911', '', '0', '2'),
	('669861', '', '0', '2'),
	('670740', '', '0', '2'),
	('670835', '', '0', '2'),
	('671625', '', '0', '2'),
	('671997', '', '0', '2'),
	('672103', '', '0', '2'),
	('672279', '', '0', '2'),
	('672684', '', '0', '2'),
	('672719', '', '0', '2'),
	('673172', '', '0', '2'),
	('673655', '', '0', '2'),
	('678657', '', '0', '2'),
	('680510', '', '0', '2'),
	('681293', '', '0', '2'),
	('681386', '', '0', '2'),
	('681541', '', '0', '2'),
	('682313', '', '0', '2'),
	('682525', '', '0', '2'),
	('683233', '', '0', '2'),
	('683940', '', '0', '2'),
	('685129', '', '0', '2'),
	('687227', '', '0', '2'),
	('689257', '', '0', '2'),
	('690068', '', '0', '3'),
	('690108', '', '0', '2'),
	('6943', '', '0', '2'),
	('696671', '', '0', '2'),
	('696957', '', '0', '3'),
	('699680', '', '0', '2'),
	('700006', '', '0', '2'),
	('700737', '', '0', '2'),
	('701041', '', '0', '2'),
	('704540', '', '0', '2'),
	('705980', '', '0', '2'),
	('706461', '', '0', '2'),
	('707326', '', '0', '2'),
	('707545', '', '0', '2'),
	('707587', '', '0', '2'),
	('707959', '', '0', '2'),
	('70891', '', '0', '2'),
	('712121', '', '0', '2'),
	('712973', '', '0', '2'),
	('713340', '', '0', '3'),
	('713382', '', '0', '2'),
	('714210', '', '0', '3'),
	('714405', '', '0', '2'),
	('714553', '', '0', '2'),
	('715321', '', '0', '2'),
	('71662', '', '0', '2'),
	('719554', '', '0', '2'),
	('721413', '', '0', '2'),
	('721538', '', '0', '2'),
	('721794', '', '0', '2'),
	('722047', '', '0', '2'),
	('722421', '', '0', '2'),
	('723112', '', '0', '2'),
	('723530', '', '0', '2'),
	('725198', '', '0', '2'),
	('727883', '', '0', '2'),
	('728262', '', '0', '2'),
	('728712', '', '0', '2'),
	('729994', '', '0', '2'),
	('730353', '', '0', '2'),
	('733033', '', '0', '2'),
	('733339', '', '0', '2'),
	('734141', '', '0', '2'),
	('734749', '', '0', '2'),
	('735174', '', '0', '2'),
	('736865', '', '0', '2'),
	('739053', '', '0', '2'),
	('740017', '', '0', '2'),
	('740405', '', '0', '2'),
	('741929', '', '0', '2'),
	('74265', '', '0', '2'),
	('744336', '', '0', '2'),
	('745046', '', '0', '2'),
	('745216', '', '0', '2'),
	('745219', '', '0', '3'),
	('745403', '', '0', '2'),
	('748201', '', '0', '2'),
	('748384', '', '0', '2'),
	('749066', '', '0', '2'),
	('751477', '', '0', '2'),
	('751906', '', '0', '2'),
	('752276', '', '0', '2'),
	('752385', '', '0', '2'),
	('753153', '', '0', '3'),
	('754150', '', '0', '2'),
	('755432', '', '0', '2'),
	('75599', '', '0', '2'),
	('757955', '', '0', '2'),
	('764615', '', '0', '2'),
	('765247', '', '0', '2'),
	('765312', '', '0', '2'),
	('766275', 'John_Shepard', '0', '1'),
	('766876', '', '0', '2'),
	('769338', '', '0', '3'),
	('769796', '', '0', '2'),
	('772819', '', '0', '2'),
	('773191', '', '0', '2'),
	('773819', '', '0', '2'),
	('775256', '', '0', '2'),
	('776722', '', '0', '3'),
	('778266', '', '0', '2'),
	('779744', '', '0', '2'),
	('780764', '', '0', '2'),
	('781268', 'Trest_Trest', '0', '1'),
	('783793', '', '0', '2'),
	('783856', '', '0', '2'),
	('784564', '', '0', '2'),
	('785102', '', '0', '2'),
	('786594', '', '0', '2'),
	('787103', '', '0', '2'),
	('788669', '', '0', '2'),
	('788704', '', '0', '2'),
	('789215', '', '0', '2'),
	('789981', '', '0', '2'),
	('791763', '', '0', '2'),
	('792270', '', '0', '3'),
	('7929', '', '0', '3'),
	('793524', '', '0', '2'),
	('794271', '', '0', '2'),
	('794608', '', '0', '2'),
	('794724', '', '0', '2'),
	('794814', '', '0', '2'),
	('794871', '', '0', '2'),
	('797788', '', '0', '2'),
	('797838', '', '0', '2'),
	('799014', '', '0', '2'),
	('79964', '', '0', '2'),
	('800434', '', '0', '3'),
	('80197', '', '0', '2'),
	('80233', '', '0', '2'),
	('803498', '', '0', '2'),
	('803918', '', '0', '2'),
	('804284', '', '0', '3'),
	('807588', '', '0', '2'),
	('808070', '', '0', '2'),
	('80979', '', '0', '2'),
	('810384', '', '0', '2'),
	('811129', '', '0', '2'),
	('811286', '', '0', '2'),
	('811312', '', '0', '2'),
	('814256', '', '0', '2'),
	('814340', '', '0', '3'),
	('815214', '', '0', '3'),
	('815218', '', '0', '2'),
	('815834', '', '0', '2'),
	('816565', '', '0', '2'),
	('817639', '', '0', '3'),
	('817716', '', '0', '2'),
	('818997', '', '0', '2'),
	('819484', '', '0', '2'),
	('821503', '', '0', '3'),
	('821935', '', '0', '2'),
	('822643', '', '0', '2'),
	('823852', '', '0', '2'),
	('824275', '', '0', '2'),
	('826465', '', '0', '2'),
	('826774', '', '0', '2'),
	('827915', '', '0', '2'),
	('830677', '', '0', '2'),
	('8311', '', '0', '2'),
	('834908', '', '0', '3'),
	('835705', '', '0', '2'),
	('835966', '', '0', '2'),
	('837725', '', '0', '2'),
	('840252', '', '0', '2'),
	('84075', '', '0', '2'),
	('842316', '', '0', '3'),
	('842607', '', '0', '2'),
	('842771', '', '0', '2'),
	('84364', '', '0', '2'),
	('844283', '', '0', '2'),
	('845006', '', '0', '2'),
	('845580', '', '0', '2'),
	('846370', '', '0', '2'),
	('84800', '', '0', '2'),
	('849743', '', '0', '2'),
	('85120', '', '0', '2'),
	('851303', '', '0', '2'),
	('852375', '', '0', '2'),
	('852506', '', '0', '2'),
	('852621', '', '0', '2'),
	('855877', '', '0', '2'),
	('856482', '', '0', '2'),
	('856558', '', '0', '2'),
	('857063', '', '0', '3'),
	('857367', '', '0', '2'),
	('857655', '', '0', '2'),
	('857730', '', '0', '2'),
	('858783', '', '0', '3'),
	('85909', '', '0', '2'),
	('859707', '', '0', '2'),
	('860051', '', '0', '2'),
	('860056', '', '0', '2'),
	('860649', '', '0', '2'),
	('861033', '', '0', '2'),
	('862433', '', '0', '3'),
	('863034', '', '0', '2'),
	('863501', '', '0', '2'),
	('863756', '', '0', '2'),
	('86459', '', '0', '2'),
	('864608', '', '0', '2'),
	('864789', '', '0', '2'),
	('865572', '', '0', '2'),
	('86768', '', '0', '2'),
	('867727', '', '0', '3'),
	('868093', '', '0', '2'),
	('868748', '', '0', '2'),
	('870214', '', '0', '2'),
	('87023', '', '0', '2'),
	('873053', '', '0', '2'),
	('876086', '', '0', '2'),
	('876530', '', '0', '2'),
	('878164', '', '0', '2'),
	('878829', '', '0', '2'),
	('883059', '', '0', '2'),
	('883444', '', '0', '2'),
	('884102', '', '0', '2'),
	('885072', '', '0', '2'),
	('885739', '', '0', '2'),
	('887573', '', '0', '2'),
	('887619', '', '0', '3'),
	('888268', '', '0', '2'),
	('888270', '', '0', '2'),
	('88847', '', '0', '2'),
	('890393', '', '0', '2'),
	('892106', '', '0', '2'),
	('892493', '', '0', '2'),
	('892567', '', '0', '2'),
	('892650', '', '0', '3'),
	('895423', '', '0', '2'),
	('895471', '', '0', '3'),
	('896660', '', '0', '2'),
	('898917', '', '0', '2'),
	('900171', '', '0', '2'),
	('902086', '', '0', '2'),
	('902671', '', '0', '2'),
	('902875', '', '0', '2'),
	('90512', '', '0', '2'),
	('905219', 'Fost_Frendy', '0', '1'),
	('905343', '', '0', '2'),
	('907463', '', '0', '2'),
	('907988', '', '0', '2'),
	('90812', '', '0', '2'),
	('90843', '', '0', '2'),
	('909126', '', '0', '2'),
	('910669', '', '0', '3'),
	('912157', '', '0', '2'),
	('912369', '', '0', '2'),
	('91285', '', '0', '2'),
	('913004', '', '0', '3'),
	('913911', '', '0', '2'),
	('914050', '', '0', '2'),
	('914125', '', '0', '2'),
	('91413', '', '0', '2'),
	('915512', '', '0', '2'),
	('915895', '', '0', '2'),
	('916059', '', '0', '2'),
	('9188', '', '0', '2'),
	('92010', '', '0', '3'),
	('922026', '', '0', '2'),
	('926452', '', '0', '2'),
	('926682', '', '0', '2'),
	('927792', '', '0', '3'),
	('92790', '', '0', '2'),
	('931536', '', '0', '2'),
	('931609', '', '0', '2'),
	('932318', '', '0', '2'),
	('93345', '', '0', '3'),
	('933616', '', '0', '2'),
	('933824', '', '0', '2'),
	('934310', '', '0', '2'),
	('934645', '', '0', '2'),
	('935306', '', '0', '2'),
	('936546', '', '0', '2'),
	('938111', '', '0', '2'),
	('942014', '', '0', '2'),
	('942102', '', '0', '2'),
	('947258', '', '0', '2'),
	('950155', '', '0', '2'),
	('953533', '', '0', '2'),
	('954604', '', '0', '2'),
	('955380', '', '0', '2'),
	('957483', '', '0', '3'),
	('957526', '', '0', '2'),
	('957658', '', '0', '2'),
	('957832', 'Julia_Cyrus', '0', '1'),
	('959886', '', '0', '2'),
	('962342', '', '0', '2'),
	('963008', '', '0', '2'),
	('963571', '', '0', '2'),
	('964491', '', '0', '2'),
	('964690', '', '0', '2'),
	('964869', '', '0', '2'),
	('964885', '', '0', '3'),
	('967814', '', '0', '2'),
	('96826', '', '0', '2'),
	('969793', '', '0', '2'),
	('973273', '', '0', '2'),
	('974819', '', '0', '2'),
	('97513', '', '0', '2'),
	('975718', '', '0', '3'),
	('976341', '', '0', '2'),
	('976999', '', '0', '2'),
	('977467', '', '0', '2'),
	('981245', '', '0', '2'),
	('98128', '', '0', '2'),
	('981584', '', '0', '2'),
	('981695', '', '0', '2'),
	('985033', '', '0', '2'),
	('985135', '', '0', '2'),
	('98659', '', '0', '2'),
	('987644', '', '0', '2'),
	('987905', '', '0', '2'),
	('988071', '', '0', '2'),
	('988868', '', '0', '2'),
	('991618', '', '0', '2'),
	('992120', '', '0', '2'),
	('993410', '', '0', '2'),
	('993735', '', '0', '2'),
	('99380', '', '0', '2'),
	('994518', '', '0', '2'),
	('995566', '', '0', '2'),
	('996891', '', '0', '3'),
	('99790', '', '0', '2');

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
('0', 'RENT1', 'dilettante', '{"x":-521.12384,"y":52.846096,"z":52.5798721}', '{"x":0.0,"y":0.0,"z":87.19976}', 1, 1, 300, 5),
('0', 'RENT2', 'picador', '{"x":-521.589233,"y":49.0047836,"z":52.57987}', '{"x":0.0,"y":0.0,"z":82.17097}', 2, 2, 300, 6),
('0', 'RENT3', 'vigero', '{"x":-522.1691,"y":45.4501228,"z":52.57987}', '{"x":0.0,"y":0.0,"z":83.34381}', 0, 0, 300, 7),
('0', 'RENT4', 'stratum', '{"x":-520.52655,"y":56.01141,"z":52.57994}', '{"x":0.0,"y":0.0,"z":82.72127}', 3, 3, 300, 8),
('0', 'RENT5', 'stratum', '{"x":-520.311157,"y":59.73555,"z":52.57994}', '{"x":0.0,"y":0.0,"z":85.65968}', 4, 4, 250, 9),
('0', 'RENT6', 'vigero', '{"x":-520.0662,"y":62.9709778,"z":52.57994}', '{"x":0.0,"y":0.0,"z":87.6282349}', 5, 5, 450, 10),
('0', 'RENT7', 'dilettante', '{"x":-519.9702,"y":66.31444,"z":52.5856323}', '{"x":0.0,"y":0.0,"z":60.46362}', 6, 6, 260, 11),
('0', 'RENT8', 'stratum', '{"x":-510.766663,"y":51.7032738,"z":52.5798721}', '{"x":0.0,"y":0.0,"z":81.76482}', 7, 7, 400, 12),
('0', 'RENT9', 'picador', '{"x":-510.325653,"y":55.2610779,"z":52.5798721}', '{"x":0.0,"y":0.0,"z":87.5693359}', 8, 8, 400, 13),
('0', 'RENT10', 'vigero', '{"x":-510.009918,"y":58.9088745,"z":52.57989}', '{"x":0.0,"y":0.0,"z":84.62456}', 9, 9, 300, 14),
('0', 'RENT11', 'oracle', '{"x":-509.417358,"y":62.3256264,"z":52.57989}', '{"x":0.0,"y":0.0,"z":82.241394}', 10, 11, 300, 15),
('0', 'RENT12', 'oracle', '{"x":-509.6754,"y":65.68881,"z":52.57989}', '{"x":0.0,"y":0.0,"z":84.56193}', 0, 0, 250, 16),
('0', 'RENT13', 'picador', '{"x":-510.104645,"y":48.0617676,"z":52.57987}', '{"x":0.0,"y":0.0,"z":83.04841}', 30, 30, 500, 17),
('0', 'RENT14', 'dilettante', '{"x":-510.5071,"y":44.8358459,"z":52.57987}', '{"x":0.0,"y":0.0,"z":87.21101}', 36, 36, 500, 18),
('3', 'TAXI1', 'taxi', '{"x":908.729431,"y":-183.183441,"z":74.2098541}', '{"x":0.0,"y":0.0,"z":56.8869324}', 126, 73, 0, 19),
('3', 'TAXI2', 'taxi', '{"x":906.750549,"y":-186.171463,"z":74.0064}', '{"x":0.0,"y":0.0,"z":67.4313354}', 126, 73, 0, 20),
('3', 'TAXI3', 'taxi', '{"x":905.3642,"y":-189.168777,"z":73.79182}', '{"x":0.0,"y":0.0,"z":51.56245}', 126, 73, 0, 21),
('3', 'TAXI4', 'taxi', '{"x":903.3636,"y":-191.996872,"z":73.79078}', '{"x":0.0,"y":0.0,"z":51.19381}', 126, 73, 0, 22),
('3', 'TAXI5', 'taxi', '{"x":898.533264,"y":-180.150375,"z":73.79694}', '{"x":0.0,"y":0.0,"z":235.476181}', 126, 73, 0, 32),
('3', 'TAXI6', 'taxi', '{"x":896.7452,"y":-183.393021,"z":73.74892}', '{"x":0.0,"y":0.0,"z":240.536423}', 126, 73, 0, 33),
('3', 'TAXI7', 'taxi', '{"x":917.9934,"y":-170.517563,"z":74.54337}', '{"x":0.0,"y":0.0,"z":95.39015}', 126, 73, 0, 34),
('3', 'TAXI8', 'taxi', '{"x":919.197266,"y":-165.999863,"z":74.70241}', '{"x":0.0,"y":0.0,"z":97.54752}', 126, 73, 0, 35),
('3', 'TAXI9', 'taxi', '{"x":920.677856,"y":-163.12561,"z":74.8556442}', '{"x":0.0,"y":0.0,"z":89.02103}', 126, 73, 0, 36),
('3', 'TAXI10', 'taxi', '{"x":914.6609,"y":-157.933823,"z":74.9846039}', '{"x":0.0,"y":0.0,"z":190.995865}', 126, 73, 0, 37),
('3', 'TAXI11', 'taxi', '{"x":912.4611,"y":-161.135,"z":74.62062}', '{"x":0.0,"y":0.0,"z":194.091721}', 126, 73, 0, 38),
('3', 'TAXI12', 'taxi', '{"x":910.37854,"y":-164.991608,"z":74.22407}', '{"x":0.0,"y":0.0,"z":193.573059}', 126, 73, 0, 39),
('3', 'TAXI13', 'taxi', '{"x":1962.51379,"y":3767.24927,"z":32.197464}', '{"x":0.0,"y":0.0,"z":206.721954}', 126, 73, 0, 40),
('3', 'TAXI14', 'taxi', '{"x":1959.18188,"y":3765.22485,"z":32.199707}', '{"x":0.0,"y":0.0,"z":204.882263}', 126, 73, 0, 41),
('3', 'TAXI15', 'taxi', '{"x":1955.66333,"y":3763.31274,"z":32.2021332}', '{"x":0.0,"y":0.0,"z":204.496948}', 126, 73, 0, 42),
('3', 'TAXI16', 'taxi', '{"x":1952.57446,"y":3761.54126,"z":32.2042351}', '{"x":0.0,"y":0.0,"z":205.576187}', 126, 73, 0, 43),
('3', 'TAXI17', 'taxi', '{"x":1949.33325,"y":3759.30518,"z":32.20623}', '{"x":0.0,"y":0.0,"z":207.473053}', 126, 73, 0, 44),
('3', 'TAXI18', 'taxi', '{"x":1965.63782,"y":3769.11377,"z":32.19542}', '{"x":0.0,"y":0.0,"z":205.381287}', 126, 73, 0, 45),
('3', 'TAXI19', 'taxi', '{"x":1968.80664,"y":3770.47168,"z":32.19319}', '{"x":0.0,"y":0.0,"z":201.577576}', 126, 73, 0, 46),
('3', 'TAXI20', 'taxi', '{"x":1782.7373,"y":4585.198,"z":37.588562}', '{"x":0.0,"y":0.0,"z":1.44128466}', 126, 73, 0, 47),
('3', 'TAXI21', 'taxi', '{"x":1785.97888,"y":4585.05029,"z":37.5007553}', '{"x":0.0,"y":0.0,"z":1.28620625}', 126, 73, 0, 48),
('3', 'TAXI22', 'taxi', '{"x":1789.43262,"y":4585.18164,"z":37.3980675}', '{"x":0.0,"y":0.0,"z":4.497265}', 126, 73, 0, 49),
('3', 'TAXI23', 'taxi', '{"x":1792.92249,"y":4585.59863,"z":37.26253}', '{"x":0.0,"y":0.0,"z":5.63719225}', 126, 73, 0, 50),
('3', 'TAXI24', 'taxi', '{"x":1796.17175,"y":4586.11035,"z":37.1896744}', '{"x":0.0,"y":0.0,"z":3.20388269}', 126, 73, 0, 51),
('3', 'TAXI25', 'taxi', '{"x":1799.44556,"y":4586.37451,"z":37.11447}', '{"x":0.0,"y":0.0,"z":0.8618738}', 126, 73, 0, 52),
('3', 'TAXI26', 'taxi', '{"x":1802.80432,"y":4586.721,"z":36.9659843}', '{"x":0.0,"y":0.0,"z":2.06149149}', 126, 73, 0, 53),
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

INSERT INTO `safes` (`minamount`, `maxamount`, `pos`, `address`, `rotation`, `idkey`) VALUES
	(12859, 35870, '{"x":262.900482,"y":216.127136,"z":101.683334}', '0', 0, 1),
	(32428, 55800, '{"x":266.267944,"y":215.220749,"z":101.683441}', '0', 0, 2),
	(45200, 75800, '{"x":264.3013,"y":216.193329,"z":101.683372}', '0', 0, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `vehicles`
--

CREATE TABLE IF NOT EXISTS `vehicles` (
  `holder` varchar(155) NOT NULL,
  `model` varchar(155) NOT NULL,
  `health` int(11) NOT NULL,
  `fuel` int(11) NOT NULL,
  `components` text NOT NULL,
  `items` text NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `rotation` varchar(255) DEFAULT NULL,
  `keynum` int(11) DEFAULT NULL,
  `dirt` float DEFAULT NULL,
  `price` int(11) NOT NULL,
  `idkey` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(155) NOT NULL,
  PRIMARY KEY (`idkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

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
-- AUTO_INCREMENT для таблицы `whitelist`
--
ALTER TABLE `whitelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
