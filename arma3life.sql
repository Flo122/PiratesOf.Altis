-- phpMyAdmin SQL Dump
-- version 4.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 27. Sep 2014 um 17:05
-- Server Version: 5.6.19
-- PHP-Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `arma3lifetest`
--

DELIMITER $$
--
-- Prozeduren
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteDeadVehicles`()
BEGIN
	DELETE FROM `vehicles` WHERE `alive` = 0;
END$$

CREATE DEFINER=`arma3`@`localhost` PROCEDURE `deleteOldGangs`()
BEGIN 
	DELETE FROM `gangs` WHERE `active` = 0; 
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteOldHouses`()
BEGIN
  DELETE FROM `houses` WHERE `owned` = 0;
END$$

CREATE DEFINER=`arma3`@`localhost` PROCEDURE `resetLifeVehicles`()
BEGIN
	UPDATE vehicles SET `active`= 0;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `economy`
--

CREATE TABLE IF NOT EXISTS `economy` (
`numero` int(12) NOT NULL,
  `ressource` varchar(32) NOT NULL,
  `sellprice` int(100) NOT NULL DEFAULT '0',
  `buyprice` int(100) NOT NULL DEFAULT '0',
  `varprice` int(100) NOT NULL,
  `minprice` int(100) NOT NULL,
  `maxprice` int(100) NOT NULL,
  `factor` enum('0','1','2','3','4','5','6','7') NOT NULL DEFAULT '0',
  `shoptype` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=67 ;

--
-- Daten für Tabelle `economy`
--

INSERT INTO `economy` (`numero`, `ressource`, `sellprice`, `buyprice`, `varprice`, `minprice`, `maxprice`, `factor`, `shoptype`) VALUES
(1, 'apple', 53, 58, 10, 50, 75, '1', 'market'),
(2, 'salema', 45, 60, 25, 20, 70, '4', 'fishmarket'),
(3, 'ornate', 40, 60, 25, 40, 60, '4', 'fishmarket'),
(4, 'mackerel', 250, 265, 25, 175, 260, '4', 'fishmarket'),
(5, 'tuna', 1025, 1040, 25, 950, 1050, '4', 'fishmarket'),
(6, 'mullet', 350, 365, 25, 150, 375, '4', 'fishmarket'),
(7, 'catshark', 425, 450, 25, 100, 450, '4', 'fishmarket'),
(8, 'rabbit', 30, 75, 1, 75, 75, '1', 'market'),
(9, 'turtle', 37500, 0, 10, 12500, 37500, '2', 'wongs'),
(10, 'water', 5, 10, 1, 10, 10, '1', 'market'),
(11, 'coffee', 2, 2, 1, 1, 10, '1', 'cop'),
(12, 'turtlesoup', 2499, 2500, 1, 2500, 2500, '1', 'wongs'),
(13, 'donuts', 64, 64, 1, 60, 120, '1', 'cop'),
(14, 'tbacon', 30, 75, 1, 75, 75, '1', 'market'),
(15, 'lockpick', 100, 100000, 1, 100000, 100000, '1', 'market'),
(16, 'redgull', 750, 1500, 1, 1500, 1500, '1', 'market'),
(17, 'peach', 76, 81, 10, 75, 150, '1', 'market'),
(18, 'heroinu', 1500, 0, 5, 500, 1500, '2', 'heroin'),
(19, 'heroinp', 8250, 0, 10, 2750, 8250, '2', 'heroin'),
(20, 'cocaine', 1500, 0, 5, 500, 1500, '2', 'heroin'),
(21, 'cocainep', 9000, 0, 10, 3000, 9000, '2', 'heroin'),
(22, 'marijuana', 4800, 0, 10, 1600, 4800, '2', 'heroin'),
(23, 'oilp', 4650, 0, 10, 1550, 4650, '3', 'oil'),
(24, 'diamond', 1250, 0, 5, 625, 1250, '3', 'diamond'),
(25, 'diamondc', 3600, 0, 10, 1200, 3600, '3', 'diamond'),
(26, 'iron_r', 4040, 0, 10, 1350, 4050, '3', 'iron'),
(27, 'copper_r', 1793, 0, 10, 800, 1800, '3', 'iron'),
(28, 'salt_r', 3144, 0, 10, 1050, 3150, '3', 'salt'),
(29, 'glass', 2540, 0, 10, 850, 2550, '3', 'glass'),
(30, 'fuelF', 400, 850, 1, 850, 850, '1', 'market'),
(31, 'spikeStrip', 503, 503, 1, 500, 1000, '1', 'cop'),
(32, 'cement', 4150, 0, 10, 1450, 4350, '3', 'cement'),
(33, 'goldbar', 75000, 0, 1, 75000, 75000, '1', 'gold'),
(34, 'blastingcharge', 5000, 150000, 1, 150000, 150000, '1', 'rebel'),
(35, 'boltcutter', 5000, 150000, 1, 150000, 150000, '1', 'rebel'),
(36, 'defusekit', 1250, 2500, 1, 2500, 2500, '1', 'cop'),
(37, 'storagesmall', 100000, 500000, 1, 500000, 500000, '1', 'market'),
(38, 'storagebig', 200000, 1000000, 1, 1000000, 1000000, '1', 'market'),
(39, 'tracker', 5000, 10000, 1, 10000, 10000, '1', 'rebel'),
(40, 'speedbomb', 1000000, 4000000, 1, 4000000, 4000000, '1', 'rebel'),
(41, 'eisenp', 4790, 0, 10, 1600, 4800, '3', 'iron'),
(42, 'getreideip', 5980, 0, 10, 2000, 6000, '2', 'sprit'),
(43, 'zuckerip', 8850, 0, 10, 2950, 8850, '2', 'sprit'),
(44, 'tabakp', 4190, 0, 10, 1400, 4200, '3', 'tabak'),
(45, 'tabakip', 5840, 0, 10, 1950, 5850, '2', 'tabak'),
(46, 'getreidep', 4040, 0, 10, 1350, 4050, '3', 'backen'),
(47, 'zuckerp', 4640, 0, 10, 1550, 4650, '3', 'backen'),
(48, 'holzp', 3890, 0, 10, 1300, 3900, '3', 'kohle'),
(49, 'traubenp', 4340, 4355, 10, 1450, 4350, '3', 'trinken'),
(50, 'hopfenp', 3440, 3455, 10, 1150, 3450, '3', 'trinken'),
(51, 'zinnp', 2240, 0, 10, 750, 2250, '3', 'zinn'),
(52, 'silberp', 4640, 0, 10, 1550, 4650, '3', 'silber'),
(53, 'schwefelp', 3070, 0, 10, 1050, 3150, '3', 'schwefel'),
(54, 'schmuck', 14999, 0, 10, 7000, 21000, '3', 'schmuck'),
(55, 'bronze', 14995, 0, 10, 5000, 15000, '3', 'bronze'),
(56, 'pbrau', 22505, 0, 10, 8000, 24000, '2', 'pirat'),
(57, 'kkugel', 17995, 0, 10, 6000, 18000, '2', 'pirat'),
(58, 'spulver', 17995, 0, 10, 6000, 18000, '2', 'pirat'),
(59, 'pkugel', 74995, 0, 10, 25000, 75000, '2', 'pirat'),
(60, 'pickaxe', 600, 1200, 1, 1200, 1200, '1', 'market'),
(61, 'uran5', 35000, 0, 10, 20000, 40000, '3', 'uran'),
(62, 'uranip', 7500, 0, 10, 3750, 11250, '3', 'uranip'),
(63, 'handcuffkey', 500, 5000, 1, 5000, 5000, '1', 'market'),
(64, 'mauer', 2, 2, 1, 1, 10, '1', 'cop'),
(65, 'mauer2', 2, 2, 1, 1, 10, '1', 'cop'),
(66, 'licht', 2, 2, 1, 1, 10, '1', 'cop');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `gangs`
--

CREATE TABLE IF NOT EXISTS `gangs` (
`id` int(11) NOT NULL,
  `owner` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `members` text,
  `maxmembers` int(2) DEFAULT '4',
  `bank` int(100) DEFAULT '0',
  `active` tinyint(4) DEFAULT '1',
  `Last Active` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Daten für Tabelle `gangs`
--

INSERT INTO `gangs` (`id`, `owner`, `name`, `members`, `maxmembers`, `bank`, `active`, `Last Active`) VALUES
(1, '76561198066071224', 'Dein Gang Name', '"[`76561198066071224`]"', 4, 0, 1, '2014-09-15 21:07:38');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `houses`
--

CREATE TABLE IF NOT EXISTS `houses` (
`id` int(11) NOT NULL,
  `pid` varchar(32) NOT NULL,
  `pos` varchar(64) DEFAULT NULL,
  `inventory` text,
  `containers` text,
  `owned` tinyint(4) DEFAULT '0',
  `Last Active` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Daten für Tabelle `houses`
--

INSERT INTO `houses` (`id`, `pid`, `pos`, `inventory`, `containers`, `owned`, `Last Active`) VALUES
(1, '76561197978126241', '[3608.69,13152.1,0.370758]', '"[[],0]"', '"[]"', 1, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
`uid` int(12) NOT NULL,
  `fromID` varchar(50) NOT NULL,
  `toID` varchar(50) NOT NULL,
  `message` text,
  `fromName` varchar(32) NOT NULL,
  `toName` varchar(32) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `players`
--

CREATE TABLE IF NOT EXISTS `players` (
`uid` int(12) NOT NULL,
  `name` varchar(32) NOT NULL,
  `playerid` varchar(50) NOT NULL,
  `GUID` text,
  `cash` int(100) NOT NULL DEFAULT '0',
  `bankacc` int(100) NOT NULL DEFAULT '0',
  `coplevel` enum('0','1','2','3','4','5','6','7') NOT NULL DEFAULT '0',
  `cop_licenses` text,
  `civ_licenses` text,
  `med_licenses` text,
  `cop_gear` text NOT NULL,
  `med_gear` text NOT NULL,
  `mediclevel` enum('0','1','2','3','4','5') NOT NULL DEFAULT '0',
  `arrested` tinyint(1) NOT NULL DEFAULT '0',
  `aliases` text NOT NULL,
  `adminlevel` enum('0','1','2','3','4','5') NOT NULL DEFAULT '0',
  `donatorlvl` enum('0','1','2','3','4','5') NOT NULL DEFAULT '0',
  `civ_gear` text NOT NULL,
  `blacklist` tinyint(1) NOT NULL DEFAULT '0',
  `jail_time` int(11) NOT NULL DEFAULT '0',
  `Last Active` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `APH_licenses` text,
  `APH_gear` text NOT NULL,
  `APHlevel` enum('0','1','2','3','4','5') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `vehicles`
--

CREATE TABLE IF NOT EXISTS `vehicles` (
`id` int(12) NOT NULL,
  `side` varchar(15) NOT NULL,
  `classname` varchar(32) NOT NULL,
  `type` varchar(12) NOT NULL,
  `pid` varchar(32) NOT NULL,
  `alive` tinyint(1) NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `plate` int(20) NOT NULL,
  `color` int(20) NOT NULL,
  `inventory` varchar(500) NOT NULL,
  `Last Active` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `fuel` varchar(16) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `economy`
--
ALTER TABLE `economy`
 ADD PRIMARY KEY (`numero`), ADD UNIQUE KEY `ressource` (`ressource`);

--
-- Indexes for table `gangs`
--
ALTER TABLE `gangs`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
 ADD PRIMARY KEY (`id`,`pid`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
 ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
 ADD PRIMARY KEY (`uid`), ADD UNIQUE KEY `playerid` (`playerid`), ADD KEY `name` (`name`), ADD KEY `blacklist` (`blacklist`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
 ADD PRIMARY KEY (`id`), ADD KEY `side` (`side`), ADD KEY `pid` (`pid`), ADD KEY `type` (`type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `economy`
--
ALTER TABLE `economy`
MODIFY `numero` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `gangs`
--
ALTER TABLE `gangs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
MODIFY `uid` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
MODIFY `uid` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
