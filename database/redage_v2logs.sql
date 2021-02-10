-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               10.3.13-MariaDB-log - mariadb.org binary distribution
-- Операционная система:         Win64
-- HeidiSQL Версия:              11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры для таблица redage_v2logs.adminlog
CREATE TABLE IF NOT EXISTS `adminlog` (
  `time` datetime NOT NULL,
  `admin` text NOT NULL,
  `action` text NOT NULL,
  `player` text NOT NULL,
  `idkey` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы redage_v2logs.adminlog: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `adminlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `adminlog` ENABLE KEYS */;

-- Дамп структуры для таблица redage_v2logs.arrestlog
CREATE TABLE IF NOT EXISTS `arrestlog` (
  `time` datetime NOT NULL,
  `player` text NOT NULL,
  `target` text NOT NULL,
  `reason` text NOT NULL,
  `stars` text NOT NULL,
  `pnick` text NOT NULL,
  `tnick` text NOT NULL,
  `idkey` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы redage_v2logs.arrestlog: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `arrestlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `arrestlog` ENABLE KEYS */;

-- Дамп структуры для таблица redage_v2logs.banlog
CREATE TABLE IF NOT EXISTS `banlog` (
  `time` datetime NOT NULL,
  `admin` text NOT NULL,
  `player` text NOT NULL,
  `until` datetime NOT NULL,
  `reason` text NOT NULL,
  `ishard` text NOT NULL,
  `idkey` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы redage_v2logs.banlog: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `banlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `banlog` ENABLE KEYS */;

-- Дамп структуры для таблица redage_v2logs.connlog
CREATE TABLE IF NOT EXISTS `connlog` (
  `uuid` text NOT NULL,
  `in` datetime NOT NULL,
  `out` datetime DEFAULT NULL,
  `sclub` text NOT NULL,
  `hwid` text NOT NULL,
  `ip` text NOT NULL,
  `idkey` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idkey`)
) ENGINE=InnoDB AUTO_INCREMENT=3350 DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы redage_v2logs.connlog: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `connlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `connlog` ENABLE KEYS */;

-- Дамп структуры для таблица redage_v2logs.deletelog
CREATE TABLE IF NOT EXISTS `deletelog` (
  `time` datetime NOT NULL,
  `uuid` text NOT NULL,
  `name` text NOT NULL,
  `account` text NOT NULL,
  `idkey` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idkey`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы redage_v2logs.deletelog: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `deletelog` DISABLE KEYS */;
/*!40000 ALTER TABLE `deletelog` ENABLE KEYS */;

-- Дамп структуры для таблица redage_v2logs.eventslog
CREATE TABLE IF NOT EXISTS `eventslog` (
  `AdminStarted` text NOT NULL,
  `EventName` text NOT NULL,
  `MembersLimit` text NOT NULL,
  `Started` text NOT NULL,
  `idkey` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idkey`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы redage_v2logs.eventslog: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `eventslog` DISABLE KEYS */;
/*!40000 ALTER TABLE `eventslog` ENABLE KEYS */;

-- Дамп структуры для таблица redage_v2logs.idlog
CREATE TABLE IF NOT EXISTS `idlog` (
  `in` datetime NOT NULL,
  `out` datetime DEFAULT NULL,
  `uuid` text NOT NULL,
  `id` text NOT NULL,
  `name` text NOT NULL,
  `idkey` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы redage_v2logs.idlog: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `idlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `idlog` ENABLE KEYS */;

-- Дамп структуры для таблица redage_v2logs.itemslog
CREATE TABLE IF NOT EXISTS `itemslog` (
  `time` datetime NOT NULL,
  `from` text NOT NULL,
  `to` text NOT NULL,
  `type` text NOT NULL,
  `amount` text NOT NULL,
  `data` text NOT NULL,
  `idkey` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы redage_v2logs.itemslog: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `itemslog` DISABLE KEYS */;
/*!40000 ALTER TABLE `itemslog` ENABLE KEYS */;

-- Дамп структуры для таблица redage_v2logs.moneylog
CREATE TABLE IF NOT EXISTS `moneylog` (
  `time` datetime NOT NULL,
  `from` text NOT NULL,
  `to` text NOT NULL,
  `amount` text NOT NULL,
  `comment` text NOT NULL,
  `idkey` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы redage_v2logs.moneylog: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `moneylog` DISABLE KEYS */;
/*!40000 ALTER TABLE `moneylog` ENABLE KEYS */;

-- Дамп структуры для таблица redage_v2logs.namelog
CREATE TABLE IF NOT EXISTS `namelog` (
  `time` datetime NOT NULL,
  `uuid` text NOT NULL,
  `old` text NOT NULL,
  `new` text NOT NULL,
  `idkey` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы redage_v2logs.namelog: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `namelog` DISABLE KEYS */;
/*!40000 ALTER TABLE `namelog` ENABLE KEYS */;

-- Дамп структуры для таблица redage_v2logs.stocklog
CREATE TABLE IF NOT EXISTS `stocklog` (
  `time` datetime NOT NULL,
  `frac` text NOT NULL,
  `uuid` text NOT NULL,
  `type` text NOT NULL,
  `amount` text NOT NULL,
  `in` text NOT NULL,
  `idkey` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы redage_v2logs.stocklog: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `stocklog` DISABLE KEYS */;
/*!40000 ALTER TABLE `stocklog` ENABLE KEYS */;

-- Дамп структуры для таблица redage_v2logs.ticketlog
CREATE TABLE IF NOT EXISTS `ticketlog` (
  `time` datetime NOT NULL,
  `player` text NOT NULL,
  `target` text NOT NULL,
  `sum` text NOT NULL,
  `reason` text NOT NULL,
  `pnick` text NOT NULL,
  `tnick` text NOT NULL,
  `idkey` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы redage_v2logs.ticketlog: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `ticketlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticketlog` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
