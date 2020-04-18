--
-- MySQL 5.5.5
-- Sat, 18 Apr 2020 14:49:38 +0000
--

CREATE DATABASE `test` DEFAULT CHARSET latin7;

USE `test`;

CREATE TABLE `cassier` (
   `Id` int(10) not null auto_increment,
   `Name` char(20) not null,
   PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=2;

INSERT INTO `cassier` (`Id`, `Name`) VALUES 
('1', 'ikbal');

CREATE TABLE `category` (
   `Id_category` int(10) not null auto_increment,
   `Name` varchar(10) not null,
   PRIMARY KEY (`Id_category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=3;

INSERT INTO `category` (`Id_category`, `Name`) VALUES 
('1', 'Food'),
('2', 'Drink');

CREATE TABLE `product` (
   `Id` int(10) unsigned not null,
   `Id_cassier` int(10) not null,
   `Name` varchar(20) not null,
   `Price` varchar(10) not null,
   `Id_category` int(10),
   UNIQUE KEY (`Id_category`),
   KEY `Id` (`Id`),
   KEY `Id_2` (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

INSERT INTO `product` (`Id`, `Id_cassier`, `Name`, `Price`, `Id_category`) VALUES 
('0', '0', 'hshsh', 'jdjdu', '');