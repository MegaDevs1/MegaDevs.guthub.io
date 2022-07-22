-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2022 at 06:27 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gym`
--

-- --------------------------------------------------------

--
-- Table structure for table `bundles`
--

CREATE TABLE `bundles` (
  `BundleID` int(50) NOT NULL,
  `BundleName` varchar(50) NOT NULL,
  `BundlePrice` int(10) NOT NULL,
  `Days` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bundles`
--

INSERT INTO `bundles` (`BundleID`, `BundleName`, `BundlePrice`, `Days`) VALUES
(1, '1 month', 35, '30'),
(2, '3 month', 100, '90'),
(3, '6 month', 60, '90'),
(4, '1 year', 400, '365'),
(5, 'daily ', 2, '1\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `ID` int(11) NOT NULL,
  `Fname` varchar(30) NOT NULL,
  `Lname` varchar(30) NOT NULL,
  `Phone` varchar(30) NOT NULL,
  `Subject` varchar(20) NOT NULL,
  `Comment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Paid` varchar(50) NOT NULL DEFAULT '0',
  `RegDate` date NOT NULL,
  `Bundle` varchar(100) NOT NULL,
  `StartingDate` date NOT NULL,
  `Phone` int(15) NOT NULL,
  `Shift` varchar(50) NOT NULL,
  `EndingDate` date NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `ActiveStatus` tinyint(1) NOT NULL DEFAULT '0',
  `Address` varchar(50) NOT NULL,
  `Custimage` blob NOT NULL,
  `LeftDays` int(1) NOT NULL DEFAULT '0',
  `Previllage` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`ID`, `Name`, `Paid`, `RegDate`, `Bundle`, `StartingDate`, `Phone`, `Shift`, `EndingDate`, `Gender`, `username`, `password`, `ActiveStatus`, `Address`, `Custimage`, `LeftDays`, `Previllage`) VALUES
(1, 'yahye abdirahman faarax', '1', '2022-04-16', '1 month', '2022-04-03', 4046165, 'Evening', '2022-05-03', 'male', '', '', 0, 'xidigta', '', 30, ''),
(2, 'ahmed yousuf ahmed ', '1', '2022-04-14', '1 month', '2022-04-04', 4485570, 'Evening', '2022-05-04', 'male', '', '', 0, 'koodbuur', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(3, 'siciid yahye mahamed', '1', '2022-04-17', '1 month', '2022-04-05', 4292385, 'Evening', '2022-05-05', 'male', '', '', 0, 'sh.madar', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(4, 'dayib hussein nour', '1', '2022-04-14', '1 month', '2022-04-06', 7600512, 'Evening', '2022-05-06', 'male', '', '', 0, 'pepsi', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(5, 'ahmed yasin hussein', '1', '2022-04-14', '1 month', '2022-04-06', 4461233, 'Evening', '2022-05-06', 'male', '', '', 0, 'daruuraha', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(6, 'mahad hussein ahmed ', '1', '2022-04-14', '1 month', '2022-04-06', 4037323, 'Evening', '2022-05-06', 'male', '', '', 0, 'goljano', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(7, 'mukhtar maxamed esse', '1', '2022-04-14', '1 month', '2022-04-10', 4143889, 'Evening', '2022-05-10', 'male', '', '', 0, '150', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(8, 'hamze abdirahman ibrahin', '1', '2022-04-14', '1 month', '2022-04-10', 3220469, 'Evening', '2022-05-10', 'male', '', '', 0, '150', 0x6a2e6a7067, 30, ''),
(9, 'ahmed mohamed jamac', '1', '2022-04-16', '1 month', '2022-04-10', 4411079, 'Evening', '2022-05-10', 'male', '', '', 0, 'goljano', '', 30, ''),
(10, 'landa mustafe cilmi', '1', '2022-04-16', '1 month', '2022-04-02', 4792285, 'Evening', '2022-05-02', 'female', '', '', 0, 'shidhka', 0x6a2e6a7067, 30, ''),
(11, 'ayaan ahmed liiban', '1', '2022-05-11', '1 month', '2022-05-07', 3869167, 'Evening', '2022-06-07', 'female', '', '', 0, 'non', '', 30, 'Mawliid Nasir'),
(12, 'maariya abdirahman maxamud', '1', '2022-04-16', '1 month', '2022-04-04', 4778806, 'Evening', '2022-05-04', 'female', '', '', 0, 'non', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(13, 'hibo hassan yousuf ', '1', '2022-04-16', '1 month', '2022-04-05', 4405505, 'Evening', '2022-05-05', 'female', '', '', 0, 'jijiga yar', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(14, 'shaadiya ahmed', '1', '2022-04-16', '1 month', '2022-04-10', 0, 'Evening', '2022-05-10', 'female', '', '', 0, 'ahmed dhagax', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(15, 'haboon faisal hassan ', '1', '2022-04-16', '1 month', '2022-04-10', 4070560, 'Evening', '2022-05-10', 'female', '', '', 0, 'sh.madar', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(16, 'hodan rashid ali ', '1', '2022-04-16', '1 month', '2022-04-10', 0, 'Evening', '2022-05-10', 'female', '', '', 0, 'non', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(17, 'rahma hassan maxamud ', '1', '2022-04-16', '1 month', '2022-04-10', 3223091, 'Evening', '2022-05-10', 'female', '', '', 0, '150', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(18, 'mumtaas ahmed ibrahin', '1', '2022-04-16', '1 month', '2022-04-10', 488555, 'Evening', '2022-05-10', 'female', '', '', 0, 'non', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(19, 'hana faarax diiriye', '1', '2022-04-16', '1 month', '2022-04-10', 4121233, 'Evening', '2022-05-10', 'female', '', '', 0, 'non', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(20, 'foosi ismai nour', '1', '2022-04-17', '1 month', '2022-04-07', 634877779, 'Evening', '2022-05-07', 'male', '', '', 0, '150', 0x756e647261775f706f7374696e675f70686f746f2e737667, 30, 'Mawliid Nasir'),
(21, 'ayaan ali mohamed', '1', '2022-04-16', '1 month', '2022-04-16', 634129735, 'Evening', '2022-05-16', 'female', '', '', 0, 'jigjiga yar', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(22, 'aamina ahmed gamadiid', '1', '2022-04-16', '1 month', '2022-04-12', 634788402, 'Evening', '2022-05-12', 'female', '', '', 0, 'jigjiga yar', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(23, 'abdirisaq abokor abdilahi', '1', '2022-05-21', '1 month', '2022-05-21', 634849932, 'Evening', '2022-06-21', 'male', '', '', 0, 'jijiga yar', '', 30, 'Mawliid Nasir'),
(24, 'ugbaad ahmed maxamed', '1', '2022-04-17', '1 month', '2022-04-11', 634476301, 'Evening', '2022-05-11', 'female', '', '', 0, 'shidka', 0x756e647261775f70726f66696c652e737667, 30, 'Mawliid Nasir'),
(25, 'abdishakour ali osman', '1', '2022-05-21', '1 month', '2022-05-21', 4449499, 'Evening', '2022-06-21', 'male', '', '', 0, 'ahmed guray', '', 30, 'Mawliid Nasir'),
(26, 'aidarous ali osman', '1', '2022-05-21', '1 month', '2022-05-21', 634345591, 'Evening', '2022-06-21', 'male', '', '', 0, 'axmed guray', '', 30, 'Mawliid Nasir'),
(27, 'ibrahin ahmed abadir ', '1', '2022-04-17', '1 month', '2022-04-11', 634481544, 'Evening', '2022-05-11', 'male', '', '', 0, 'shacabka', 0x756e647261775f70726f66696c652e737667, 30, 'Mawliid Nasir'),
(28, 'mohamed mostafa mohamed', '1', '2022-04-17', '1 month', '2022-04-11', 634050800, 'Evening', '2022-05-11', 'male', '', '', 0, 'sh.madar', 0x756e647261775f70726f66696c655f332e737667, 30, 'Mawliid Nasir'),
(29, 'mahamed saleban xasan', '1', '2022-04-17', '1 month', '2022-04-11', 634366497, 'Evening', '2022-05-11', 'male', '', '', 0, 'cabaaye', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(30, 'farhan yousuf gaahnuug', '1', '2022-04-17', '1 month', '2022-04-11', 4537016, 'Evening', '2022-05-11', 'male', '', '', 0, '', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(31, 'aidarous abdilahi ismail', '1', '2022-04-17', '1 month', '2022-04-11', 4199535, 'Evening', '2022-05-11', 'male', '', '', 0, '150', 0x702e706e67, 30, 'Mawliid Nasir'),
(32, 'fahad ahmed kaariye', '1', '2022-04-17', '1 month', '2022-04-11', 4844662, 'Evening', '2022-05-11', 'male', '', '', 0, 'isha boorama', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(33, 'abdirhaman xamud muuse', '1', '2022-04-17', '1 month', '2022-04-11', 44444444, 'Evening', '2022-05-11', 'male', '', '', 0, '150', '', 30, 'Mawliid Nasir'),
(34, 'ahmed ali', '1', '2022-04-17', '1 month', '2022-04-11', 4087906, 'Evening', '2022-05-11', 'male', '', '', 0, 'shacabka', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(35, 'shucayb mahamed ahmed ', '1', '2022-04-17', '1 month', '2022-04-10', 4494319, 'Evening', '2022-05-10', 'male', '', '', 0, 'october', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(36, 'abdirahman mohame shugri', '1', '2022-04-17', '1 month', '2022-04-04', 4123000, 'Evening', '2022-05-04', 'male', '', '', 0, 'goljano', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(37, 'suhaib farhan aadan ', '1', '2022-05-15', '1 month', '2022-05-15', 4865664, 'Evening', '2022-06-15', 'male', '', '', 0, 'jigjiga yar', '', 30, 'Mawliid Nasir'),
(38, 'ibrahin ahmed ibrahin', '1', '2022-04-21', 'daily', '2022-04-22', 3510308, 'Evening', '2022-04-22', 'male', '', '', 0, 'axmed guray', '', 1, 'Mawliid Nasir'),
(39, 'cilmi maxamed omar ', '1', '2022-04-18', '1 month', '2022-04-18', 4877339, 'Evening', '2022-05-18', 'male', '', '', 0, 'october', '', 30, 'Mawliid Nasir'),
(40, 'usaame faysal jaamc', '1', '2022-04-21', '3 month', '2022-01-29', 4551623, 'Evening', '2022-05-29', 'male', '', '', 0, 'new hargeisa', 0x6a2e6a7067, 119, 'Mawliid Nasir'),
(41, 'shakir fahmi ahmed ', '1', '2022-04-21', '3 month', '2022-02-20', 4757707, 'Evening', '2022-05-20', 'male', '', '', 0, 'shacabka', 0x6a2e6a7067, 88, 'Mawliid Nasir'),
(42, 'carte maxamed maxamud', '1', '2022-04-21', '3 month', '2022-03-02', 4109117, 'Afternoon', '2022-06-02', 'male', '', '', 0, 'idaacada', 0x6a2e6a7067, 91, 'Mawliid Nasir'),
(43, 'ahmed hassan xaddi ', '1', '2022-04-21', '3 month', '2022-03-05', 4427958, 'Afternoon', '2022-06-05', 'male', '', '', 0, 'jijiga yar', 0x6a2e6a7067, 91, 'Mawliid Nasir'),
(44, 'siciid ali boodhle', '1', '2022-04-21', 'daily', '2022-04-21', 633816948, 'Afternoon', '2022-04-21', 'male', '', '', 0, 'new hargeisa', 0x6a2e6a7067, 0, 'Mawliid Nasir'),
(45, 'mustafe abdirashid dahir', '1', '2022-04-24', '1 month', '2022-04-24', 3661944, 'Evening', '2022-05-24', 'male', '', '', 0, 'jijiga yar', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(46, 'abdiqani ibrahin maxamud', '1', '2022-04-25', 'daily ', '2022-04-25', 6611555, 'Choose Shift', '2022-04-25', 'male', '', '', 0, 'pepsi', 0x6a2e6a7067, 0, 'Mawliid Nasir'),
(47, 'sakaria siciid muxumed ', '1', '2022-04-26', 'daily ', '2022-04-26', 4755744, 'Afternoon', '2022-04-26', 'male', '', '', 0, 'calaamadaha', 0x6a2e6a7067, 0, 'Mawliid Nasir'),
(48, 'maxamed caabi digaale', '1', '2022-05-17', 'daily ', '2022-05-17', 4242611, 'Evening', '2022-05-17', 'male', '', '', 0, 'xero awr', '', 0, 'Mawliid Nasir'),
(49, 'ahmed rashid osman ', '1', '2022-05-05', '1 month', '2022-05-05', 4807801, 'Afternoon', '2022-06-05', 'male', '', '', 0, 'goljano', '', 31, 'Mawliid Nasir'),
(50, 'asma hussein omer ', '1', '2022-05-05', 'daily ', '2022-05-05', 6747622, 'Afternoon', '2022-05-05', 'female', '', '', 0, 'non', '', -19117, 'Mawliid Nasir'),
(51, 'hassan ahmed mohamed ', '1', '2022-05-05', '1 month', '2022-05-05', 4414096, 'Evening', '2022-06-05', 'male', '', '', 0, '150', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(52, 'abdifatah mawliid maxamed ', '1', '2022-05-05', '1 month', '2022-05-05', 4808231, 'Evening', '2022-06-05', 'male', '', '', 0, 'goljano', '', 31, 'Mawliid Nasir'),
(53, 'abdimajiid nuur abdirahman ', '1', '2022-05-07', '1 month', '2022-05-07', 4041855, 'Morning', '2022-06-07', 'male', '', '', 0, 'goljano', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(54, 'ayaan ahmed liban', '1', '2022-05-07', '1 month', '2022-05-07', 633869167, 'Morning', '2022-06-07', 'female', '', '', 0, 'non', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(55, 'suhuur fadxi mukhtaar', '1', '2022-05-07', '1 month', '2022-05-07', 4473434, 'Afternoon', '2022-06-07', 'female', '', '', 0, 'non', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(56, 'muna rashid ali', '1', '2022-05-07', '1 month', '2022-05-07', 4897251, 'Afternoon', '2022-06-07', 'female', '', '', 0, 'non', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(57, 'guba cristina', '1', '2022-05-07', 'daily ', '2022-05-07', 3383824, 'Afternoon', '2022-05-07', 'female', '', '', 0, 'non', 0x53637265656e73686f74202832292e706e67, 0, 'Mawliid Nasir'),
(58, 'abdirahman mohame shugri', '1', '2022-05-07', '1 month', '2022-05-07', 4123000, 'Afternoon', '2022-06-07', 'male', '', '', 0, 'goljano', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(59, 'maxamed caabi digaale', '1', '2022-05-07', 'daily ', '2022-05-07', 4242611, 'Afternoon', '2022-05-07', 'male', '', '', 0, 'xero awr', 0x53637265656e73686f74202832292e706e67, 0, 'Mawliid Nasir'),
(60, 'ridwaan maxamed ismail', '1', '2022-05-07', '1 month', '2022-05-07', 4150135, 'Evening', '2022-06-07', 'male', '', '', 0, 'october', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(61, 'guled ibrahin madar', '1', '2022-05-07', '1 month', '2022-05-07', 4098697, 'Evening', '2022-06-07', 'male', '', '', 0, 'cabaaye', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(62, 'abdirisaq iimaan omar', '1', '2022-05-07', '1 month', '2022-05-07', 4032272, 'Afternoon', '2022-06-07', 'male', '', '', 0, 'october', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(63, 'khalid adan diriye', '1', '2022-05-19', 'daily ', '2022-05-19', 4083535, 'Evening', '2022-05-19', 'male', '', '', 0, 'jijiga yar', '', 0, 'Mawliid Nasir'),
(64, 'yahye abdirahman hassan ', '1', '2022-05-07', '1 month', '2022-05-07', 4222722, 'Evening', '2022-06-07', 'male', '', '', 0, 'october', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(65, 'yahye siciid abdi ', '1', '2022-05-07', '1 month', '2022-05-07', 6576714, 'Evening', '2022-06-07', 'male', '', '', 0, 'jijiga yar', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(66, 'badri foosi ahmed ', '1', '2022-05-07', '1 month', '2022-05-07', 4211470, 'Evening', '2022-06-07', 'male', '', '', 0, 'goljano', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(67, 'almis mahdi ali', '1', '2022-05-07', '3 month', '2022-05-08', 637580361, 'Afternoon', '2022-08-08', 'male', '', '', 0, 'shacabka', '', 62, 'Mawliid Nasir'),
(68, 'ahmed farah qalinle ', '1', '2022-05-07', '1 month', '2022-05-07', 4000214, 'Evening', '2022-06-07', 'male', '', '', 0, 'jijiga yar', 0x53637265656e73686f74202832292e706e67, 31, 'Xamse Rashiid'),
(69, 'guled muuse ali', '1', '2022-05-07', '1 month', '2022-05-07', 4416675, 'Evening', '2022-06-07', 'male', '', '', 0, '150', 0x53637265656e73686f74202832292e706e67, 31, 'Xamse Rashiid'),
(70, 'abdirahman ahmed maxamed ', '1', '2022-05-08', '1 month', '2022-05-08', 4401926, 'Evening', '2022-06-08', 'male', '', '', 0, 'gantaalah', '', 0, 'Mawliid Nasir'),
(71, 'mukhtaar abti hirsi', '1', '2022-05-08', '1 month', '2022-05-08', 7636768, 'Morning', '2022-06-08', 'male', '', '', 0, 'masalaha', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(72, 'maxamed abdi ismail', '1', '2022-05-08', '1 month', '2022-05-08', 4756787, 'Evening', '2022-06-08', 'male', '', '', 0, 'sh.madar', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(73, 'hassan sacad hassan ', '1', '2022-05-08', '1 month', '2022-05-08', 3748715, 'Evening', '2022-06-08', 'male', '', '', 0, 'm.haybe', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(74, 'khalid haybe abdi', '1', '2022-05-08', '1 month', '2022-05-08', 4267305, 'Evening', '2022-06-08', 'male', '', '', 0, 'goljano', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(75, 'jamaal ayaanle ahmed ', '1', '2022-05-09', '1 month', '2022-05-09', 4425004, 'Afternoon', '2022-06-09', 'male', '', '', 0, 'shacabka', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(76, 'rahma faysal kaamil', '1', '2022-05-09', '1 month', '2022-05-09', 4778485, 'Afternoon', '2022-06-09', 'female', '', '', 0, 'non', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(77, 'guba cristina', '1', '2022-05-09', '1 month', '2022-05-09', 633383824, 'Afternoon', '2022-06-09', 'female', '', '', 0, 'shacabka', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(78, 'maxamed saleban tarabi', '1', '2022-05-09', 'daily ', '2022-05-09', 4021995, 'Afternoon', '2022-05-09', 'male', '', '', 0, 'saylda', 0x53637265656e73686f74202832292e706e67, 0, 'Mawliid Nasir'),
(79, 'mukhtaar maxamuud abdi', '1', '2022-05-09', '1 month', '2022-05-09', 4121664, 'Evening', '2022-06-09', 'male', '', '', 0, 'goljano', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(80, 'mahad hussein ahmed ', '1', '2022-05-09', '1 month', '2022-05-09', 4037323, 'Evening', '2022-06-09', 'male', '', '', 0, 'goljano', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(81, 'hamze hirsi ali', '1', '2022-05-10', 'daily ', '2022-05-10', 4245089, 'Evening', '2022-05-10', 'male', '', '', 0, 'masalaha', 0x53637265656e73686f74202832292e706e67, 0, 'Mawliid Nasir'),
(82, 'xudayfi faysal mohamed ', '1', '2022-05-12', 'daily ', '2022-05-12', 4336650, 'Evening', '2022-05-12', 'male', '', '', 0, 'new hargeisa', '', 0, 'Mawliid Nasir'),
(83, 'mohamed shugri ali', '1', '2022-05-10', '1 month', '2022-05-10', 6834771, 'Evening', '2022-06-10', 'male', '', '', 0, 'half london', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(84, 'deeqa faysal mohamed', '1', '2022-05-10', '1 month', '2022-05-10', 3231158, 'Afternoon', '2022-06-10', 'female', '', '', 0, 'boqol jire', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(85, 'ayaan faysal mohamed ', '1', '2022-05-10', '1 month', '2022-05-10', 3809439, 'Afternoon', '2022-06-10', 'female', '', '', 0, 'boqol jire', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(86, 'idil faysal mohamed ', '1', '2022-05-10', '1 month', '2022-05-10', 0, 'Afternoon', '2022-06-10', 'female', '', '', 0, 'buurta kala jeexan ', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(87, 'abdisalan nuur maxamed ', '1', '2022-05-11', '1 month', '2022-05-11', 4882161, 'Afternoon', '2022-06-11', 'male', '', '', 0, 'jijiga yar', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(88, 'mustafe osman nuur', '1', '2022-05-11', '1 month', '2022-05-11', 4421217, 'Afternoon', '2022-06-11', 'male', '', '', 0, 'jijiga yar', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(89, 'xusein jama osman', '1', '2022-05-11', '1 month', '2022-05-11', 633323332, 'Afternoon', '2022-06-11', 'male', '', '', 0, 'jijiga yar', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(90, 'hamze hirsi ali', '1', '2022-05-11', 'daily ', '2022-05-11', 4245089, 'Evening', '2022-05-11', 'male', '', '', 0, 'masalaha', 0x53637265656e73686f74202832292e706e67, 0, 'Mawliid Nasir'),
(91, 'dayib hussein nour', '1', '2022-05-11', 'daily ', '2022-05-11', 7600512, 'Morning', '2022-05-11', 'male', '', '', 0, 'pepsi', 0x53637265656e73686f74202832292e706e67, 0, 'Mawliid Nasir'),
(92, 'maryam osman ibrahim', '1', '2022-05-11', 'daily ', '2022-05-11', 4476968, 'Morning', '2022-05-11', 'female', '', '', 0, 'calaamadaha', 0x53637265656e73686f74202832292e706e67, 0, 'Mawliid Nasir'),
(93, 'maxamed saleban tarabi', '1', '2022-05-11', 'daily ', '2022-05-11', 4021995, 'Afternoon', '2022-05-11', 'male', '', '', 0, 'saylda', 0x53637265656e73686f74202832292e706e67, 0, 'Mawliid Nasir'),
(94, 'maxamed caabi digaale', '1', '2022-05-21', 'daily ', '2022-05-21', 4242611, 'Afternoon', '2022-05-21', 'male', '', '', 0, 'shacabka', '', 0, 'Mawliid Nasir'),
(95, 'aamin daud muxumed ', '1', '2022-05-11', '1 month', '2022-05-11', 6834773, 'Evening', '2022-06-11', 'male', '', '', 0, 'goljano', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(96, 'siciid maxamed abdilahi', '1', '2022-05-11', '1 month', '2022-05-11', 3009165, 'Evening', '2022-06-11', 'male', '', '', 0, 'goljano', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(97, 'sakariye maxamed abdi', '1', '2022-05-11', '1 month', '2022-05-11', 4108474, 'Evening', '2022-06-11', 'male', '', '', 0, 'goljano', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(98, 'abdirisaq idiris ahmed', '1', '2022-05-12', '1 month', '2022-05-12', 6657241, 'Evening', '2022-06-12', 'Choose Gender', '', '', 0, 'idaacada', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(99, 'shaadiya ahmed hasan ', '1', '2022-05-12', '1 month', '2022-05-12', 4234273, 'Afternoon', '2022-06-12', 'female', '', '', 0, 'ahmed dhagax', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(100, 'suaad ali mohamed ', '1', '2022-05-12', '1 month', '2022-05-12', 4168579, 'Afternoon', '2022-06-12', 'female', '', '', 0, 'beerta xoriyada', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(101, 'asma hussein', '1', '2022-05-14', 'daily ', '2022-05-14', 6747622, 'Afternoon', '2022-05-14', 'female', '', '', 0, 'gurya samo ', 0x53637265656e73686f74202832292e706e67, 0, 'Mawliid Nasir'),
(102, 'muna foosi ibrahin', '1', '2022-05-14', '1 month', '2022-05-14', 3500619, 'Afternoon', '2022-06-14', 'female', '', '', 0, 'goljano', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(103, 'hodan rashid ali ', '1', '2022-05-14', '1 month', '2022-05-14', 0, 'Afternoon', '2022-06-14', 'female', '', '', 0, 'non', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(104, 'hibak  mohamed husein', '1', '2022-05-14', '1 month', '2022-05-14', 7323611, 'Morning', '2022-06-14', 'female', '', '', 0, 'pepsi', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(105, 'sundus abdihamiid ahmed ', '1', '2022-05-14', '1 month', '2022-05-14', 3611864, 'Afternoon', '2022-06-14', 'female', '', '', 0, 'badhka', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(106, 'nuradiin abdirisaq ali', '1', '2022-05-14', '1 month', '2022-05-14', 4868972, 'Afternoon', '2022-06-14', 'male', '', '', 0, 'half london', '', 31, 'Mawliid Nasir'),
(107, 'abdifatah jama ahmed ', '1', '2022-05-14', '1 month', '2022-05-14', 4672332, 'Afternoon', '2022-06-14', 'male', '', '', 0, '150', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(108, 'khalid ahmed ali', '1', '2022-05-14', '1 month', '2022-05-14', 4008914, 'Afternoon', '2022-06-14', 'male', '', '', 0, 'half london', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(110, 'abdale hassan mahamed ', '1', '2022-05-14', '1 month', '2022-05-14', 4044477, 'Evening', '2022-06-14', 'male', '', '', 0, 'daruuraha', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(111, 'abdisalan mahamed ahmed ', '1', '2022-05-14', '1 month', '2022-05-14', 7469829, 'Evening', '2022-06-14', 'male', '', '', 0, 'masalaha', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(112, 'abdifatah ahmed hashi ', '1', '2022-05-14', '1 month', '2022-05-14', 4235015, 'Evening', '2022-06-14', 'male', '', '', 0, 'goljano', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(113, 'abdirisaq hassan yousuf', '1', '2022-05-14', '1 month', '2022-05-14', 4929579, 'Evening', '2022-06-14', 'male', '', '', 0, 'ahmed dhagax', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(114, 'husein xirsi omer ', '1', '2022-05-15', '1 month', '2022-05-15', 4271724, 'Afternoon', '2022-06-15', 'male', '', '', 0, 'shidhka', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(115, 'noura maxamuud osman', '1', '2022-05-15', '1 month', '2022-05-15', 9999490, 'Morning', '2022-06-15', 'female', '', '', 0, 'boqol jire', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(116, 'ruwayda mohamed said', '1', '2022-05-15', '1 month', '2022-05-15', 4630466, 'Morning', '2022-06-15', 'female', '', '', 0, 'boqol jire', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(117, 'zaynab esse abdi', '1', '2022-05-15', '1 month', '2022-05-15', 4197023, 'Morning', '2022-06-15', 'female', '', '', 0, 'boqol jire', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(118, 'hana abdulahi ', '1', '2022-05-15', '1 month', '2022-05-15', 4715727, 'Morning', '2022-06-15', 'female', '', '', 0, 'boqol jire', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(119, 'sihaam sulayman adam', '1', '2022-05-15', '1 month', '2022-05-15', 4257178, 'Morning', '2022-06-15', 'female', '', '', 0, '150', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(120, 'nimco idiris maxamed ', '1', '2022-05-15', '1 month', '2022-05-15', 4792195, 'Morning', '2022-06-15', 'female', '', '', 0, 'xawadle', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(121, 'rahma hassan maxamud ', '1', '2022-05-15', '1 month', '2022-05-15', 3223091, 'Morning', '2022-06-15', 'female', '', '', 0, '150', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(122, 'asma hussein omer ', '1', '2022-05-15', '1 month', '2022-05-15', 6747622, 'Morning', '2022-06-15', 'female', '', '', 0, 'gurya samo ', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(123, 'muhiim abdiqadir ', '1', '2022-05-15', 'daily ', '2022-05-15', 4641465, 'Morning', '2022-05-15', 'female', '', '', 0, 'jijiga yar', '', 31, 'Mawliid Nasir'),
(124, 'maftuux abdirisak dube ', '1', '2022-05-15', 'daily ', '2022-05-15', 4632774, 'Morning', '2022-05-15', 'female', '', '', 0, 'jijiga yar', 0x53637265656e73686f74202832292e706e67, 0, 'Mawliid Nasir'),
(125, 'ikran hussein omer ', '1', '2022-05-16', '1 month', '2022-05-16', 4425535, 'Morning', '2022-06-16', 'female', '', '', 0, 'non', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(126, 'maftuux abdirisak dube ', '1', '2022-05-16', 'daily ', '2022-05-16', 4632777, 'Afternoon', '2022-05-16', 'female', '', '', 0, 'jigjiga yar', 0x53637265656e73686f74202832292e706e67, 0, 'Mawliid Nasir'),
(127, 'linda maxamed jama', '1', '2022-05-16', '1 month', '2022-05-16', 4153590, 'Afternoon', '2022-06-16', 'female', '', '', 0, 'sh.madar', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(128, 'mumtaas abadir ', '1', '2022-05-16', 'daily ', '2022-05-16', 4641465, 'Afternoon', '2022-06-16', 'female', '', '', 0, 'jigjiga yar', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(129, 'maxamed osman hussein ', '1', '2022-05-16', '1 month', '2022-05-16', 3984014, 'Evening', '2022-06-16', 'male', '', '', 0, 'goljano', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(130, 'nasriin rashid ali', '1', '2022-05-16', '1 month', '2022-05-16', 0, 'Afternoon', '2022-06-16', 'female', '', '', 0, 'jijiga yar', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(131, 'george kassab ', '1', '2022-05-18', '1 month', '2022-05-18', 637514592, 'Afternoon', '2022-06-18', 'male', '', '', 0, 'goljano', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(132, 'hamse siciid ahmed ', '1', '2022-05-19', '1 month', '2022-05-19', 7439105, 'Evening', '2022-06-19', 'male', '', '', 0, 'new hargeisa', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(133, 'rahma abdilahi abdi ', '1', '2022-05-21', '1 month', '2022-05-21', 3933994, 'Morning', '2022-06-21', 'female', '', '', 0, 'calaamadaha', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(134, 'hassan abdi hussein', '1', '2022-05-21', '3 month', '2022-05-21', 7246324, 'Afternoon', '2022-08-21', 'male', '', '', 0, '150', 0x53637265656e73686f74202831292e706e67, 92, 'Mawliid Nasir'),
(135, 'abdirahman mohamed abdialahi', '1', '2022-05-21', '1 month', '2022-05-21', 633700008, 'Afternoon', '2022-06-21', 'male', '', '', 0, 'pepsi', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(136, 'abdiasalan mukhtar aadan', '1', '2022-05-21', '1 month', '2022-05-21', 4242322, 'Evening', '2022-06-21', 'male', '', '', 0, 'goljano', '', 31, 'Mawliid Nasir'),
(137, 'ismail maxamed yousuf', '1', '2022-05-21', '1 month', '2022-05-21', 3833838, 'Evening', '2022-06-21', 'male', '', '', 0, 'new hargeisa', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(138, 'ayaan bashiir hassan', '1', '2022-05-22', '1 month', '2022-05-22', 4544858, 'Afternoon', '2022-06-22', 'female', '', '', 0, 'calaamada', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(139, 'khadar abdilahi ali', '1', '2022-05-23', 'daily ', '2022-05-23', 4422722, 'Afternoon', '2022-05-23', 'male', '', '', 0, 'october', 0x53637265656e73686f74202832292e706e67, 0, 'Mawliid Nasir'),
(140, 'hamze abdi abdilahi', '1', '2022-05-23', '1 month', '2022-05-23', 4194167, 'Evening', '2022-06-23', 'male', '', '', 0, 'jijiga yar', 0x53637265656e73686f74202832292e706e67, 31, 'Mawliid Nasir'),
(141, 'khadar abdi abdilahi', '1', '2022-05-23', '1 month', '2022-05-23', 4182034, 'Evening', '2022-06-23', 'male', '', '', 0, 'jijiga yar', '', 31, 'Mawliid Nasir');

-- --------------------------------------------------------

--
-- Table structure for table `daily bundles`
--

CREATE TABLE `daily bundles` (
  `ID` int(11) NOT NULL,
  `BundleName` varchar(100) NOT NULL,
  `BundlePrice` varchar(100) NOT NULL,
  `BundleTime` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daily bundles`
--

INSERT INTO `daily bundles` (`ID`, `BundleName`, `BundlePrice`, `BundleTime`) VALUES
(1, 'Half-Hour', '0.25', '2022-03-30'),
(2, 'Hour', '05', '2022-03-30'),
(3, 'Two Hours', '1', '2022-03-30');

-- --------------------------------------------------------

--
-- Table structure for table `daily customers`
--

CREATE TABLE `daily customers` (
  `ID` int(11) NOT NULL,
  `Fname` varchar(100) NOT NULL,
  `Paid` varchar(100) NOT NULL DEFAULT 'Not Paid',
  `Date` date NOT NULL,
  `Phone` varchar(100) NOT NULL,
  `Gender` varchar(109) NOT NULL,
  `shift` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daily customers`
--

INSERT INTO `daily customers` (`ID`, `Fname`, `Paid`, `Date`, `Phone`, `Gender`, `shift`) VALUES
(26, 'zaki', 'Not Paid', '2022-03-10', '0636434933', 'male', ''),
(34, 'Xamse', 'Not Paid', '2022-03-13', '0636434933', 'male', ''),
(36, 'amina', 'Not Paid', '2022-03-16', '03654784', 'Female', ''),
(38, 'axmed maxamed cabdilahi', 'Not Paid', '2022-03-22', '0634577788', 'male', 'Afternoon');

-- --------------------------------------------------------

--
-- Table structure for table `deletedcustomer`
--

CREATE TABLE `deletedcustomer` (
  `ID` int(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Paid` varchar(50) NOT NULL DEFAULT '0',
  `RegDate` date NOT NULL,
  `Bundle` varchar(100) NOT NULL,
  `StartingDate` date NOT NULL,
  `Phone` int(15) NOT NULL,
  `Shift` varchar(50) NOT NULL,
  `EndingDate` date NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `ActiveStatus` tinyint(1) NOT NULL DEFAULT '0',
  `Address` varchar(50) NOT NULL,
  `Custimage` blob NOT NULL,
  `Days` int(1) NOT NULL DEFAULT '0',
  `DeletedDate` date NOT NULL,
  `DeleteID` int(50) NOT NULL,
  `Previllage` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deletedcustomer`
--

INSERT INTO `deletedcustomer` (`ID`, `Name`, `Paid`, `RegDate`, `Bundle`, `StartingDate`, `Phone`, `Shift`, `EndingDate`, `Gender`, `username`, `password`, `ActiveStatus`, `Address`, `Custimage`, `Days`, `DeletedDate`, `DeleteID`, `Previllage`) VALUES
(109, 'husein xirsi omer ', '0', '2022-05-14', '1 month', '2022-05-14', 4271724, 'Afternoon', '2022-06-14', 'male', '', '', 0, 'shidhka', 0x53637265656e73686f74202832292e706e67, 31, '0000-00-00', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE `enrollment` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Bundle` varchar(100) NOT NULL,
  `Phone` varchar(100) NOT NULL,
  `Shift` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `Address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`ID`, `Name`, `Gender`, `Bundle`, `Phone`, `Shift`, `Date`, `Address`) VALUES
(10, 'samiir', 'male', 'Clue', '0633605025', 'morning', '2022-03-23', '');

-- --------------------------------------------------------

--
-- Table structure for table `newcustomers`
--

CREATE TABLE `newcustomers` (
  `ID` int(50) NOT NULL,
  `CustName` varchar(50) NOT NULL,
  `JDate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newcustomers`
--

INSERT INTO `newcustomers` (`ID`, `CustName`, `JDate`) VALUES
(1, 'abdinasir abdixakim osman', 'jan'),
(9, 'ali xasan maxamed', 'feb'),
(10, 'samiir axmed maxamed', 'mar'),
(11, 'avf', 'jan'),
(12, 'nm', 'jan'),
(13, 'maxamed saleban osman', 'Mar'),
(14, 'c/xakim ismacil cusman', 'Mar'),
(15, 'ismacil c/lahi ismacil', 'Mar'),
(16, 'maxamed farxan maxamed', 'Mar'),
(17, 'sakariye abdi ali', 'Mar'),
(18, 'khadar abdilahi ali', 'Mar'),
(19, 'maxamed axmed abdi', 'Mar'),
(20, 'abdiraxman c/lahi muxumed', 'Mar'),
(21, 'barre iman cilmi', 'Mar'),
(22, 'abdirisaq abokor c/lahi', 'Mar'),
(23, 'axmed aadan jamac', 'Mar'),
(24, 'khalid maxamed ismacil', 'Mar'),
(25, 'maxamed abdi ismacil', 'Mar'),
(26, 'mustafe abdfirashid cali', 'Mar'),
(27, 'guuleed ibrahin madar', 'Mar'),
(28, 'ridwan cusman maxamed', 'Mar'),
(29, 'abdirahman jama c/lahi', 'Mar'),
(30, 'ayaanle maxamed abdale', 'Mar'),
(31, 'abdirashid yusuf jamac', 'Mar'),
(32, 'c/majid c/raxman cali', 'Mar'),
(33, 'maxamed aaden  maxamed', 'Mar'),
(34, 'dayib xusen nuur', 'Mar'),
(35, 'maxamed saleban tarabi', 'Mar'),
(36, 'khalid yusuf dahir', 'Mar'),
(37, 'maxamed abdi maxamed', 'Mar'),
(38, 'xirsi muuse maxamed', 'Mar'),
(39, 'axmed xasan xadi', 'Mar'),
(40, 'mawlii nasir abiib', 'Mar'),
(41, 'maxamed saleban osman', 'Mar'),
(42, 'maxamed saleban osman', 'Mar'),
(43, 'mawlii nasir abiib', 'Mar'),
(44, 'ridwan gamadiid maxamud', 'Apr'),
(45, 'zalo', 'Apr'),
(46, 'farax ali', 'Apr'),
(47, 'samiir', 'Apr'),
(48, 'saki osman maxamed', 'Apr'),
(49, 'YHGB', 'Apr'),
(50, 'suhaib farhan aadan ', 'Apr'),
(51, 'yahye abdirahman faarax', 'Apr'),
(52, 'saki osman maxamed', 'Apr'),
(53, 'suhaib farhan aadan ', 'Apr'),
(54, 'yahye abdirahman faarax', 'Apr'),
(55, 'abdirahman mohame shugri', 'Apr'),
(56, 'ahmed yousuf ahmed ', 'Apr'),
(57, 'siciid yahye madar', 'Apr'),
(58, 'dayib hussein nour', 'Apr'),
(59, 'ahmed yasin hussein', 'Apr'),
(60, 'mahad hussein ahmed ', 'Apr'),
(61, 'foosi ismai nour', 'Apr'),
(62, 'mukhtar maxamed esse', 'Apr'),
(63, 'hamze abdirahman ibrahin', 'Apr'),
(64, 'hamze abdirahman ibrahin', 'Apr'),
(65, 'ahmed mohamed dhama', 'Apr'),
(66, 'ahmed maxamed jama', 'Apr'),
(67, 'shucayb mahamed ahmed ', 'Apr'),
(68, 'ahmed ali', 'Apr'),
(69, 'abdirhaman jamal muuse', 'Apr'),
(70, 'fahad ahmed kaariye', 'Apr'),
(71, 'aidarous abdilahi ismail', 'Apr'),
(72, 'farhan yousuf gaahnuug', 'Apr'),
(73, 'mohamed saleban', 'Apr'),
(74, 'mahamed mustafe mahad', 'Apr'),
(75, 'ibrahin ahmed abadir ', 'Apr'),
(76, 'aidarous ali osman', 'Apr'),
(77, 'abdishakour ali osman', 'Apr'),
(78, 'landa mustafe cilmi', 'Apr'),
(79, 'ayaan ahmed liiban', 'Apr'),
(80, 'maariya abdirahman maxamud', 'Apr'),
(81, 'hibo hassan yousuf ', 'Apr'),
(82, 'shaadiya ahmed', 'Apr'),
(83, 'haboon faisal hassan ', 'Apr'),
(84, 'hodan rashid ali ', 'Apr'),
(85, 'rahma hassan maxamud ', 'Apr'),
(86, 'mumtaas ahmed ibrahin', 'Apr'),
(87, 'hana faarax diiriye', 'Apr'),
(88, 'ugbaad ahmed maxamed', 'Apr'),
(89, 'faarxa ali', 'Apr'),
(90, 'ayaan ali mohamed', 'Apr'),
(91, 'ayaan ali mohamed', 'Apr');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `NoteID` int(50) NOT NULL,
  `NoteSubject` varchar(50) NOT NULL,
  `NoteBody` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `NoteStatus` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `offcash`
--

CREATE TABLE `offcash` (
  `OffCashID` int(50) NOT NULL,
  `Cash` int(100) NOT NULL,
  `TotalPaid` int(100) NOT NULL,
  `Balance` int(100) NOT NULL,
  `Date` date NOT NULL,
  `userID` int(50) NOT NULL,
  `OffCashStatus` tinyint(1) NOT NULL DEFAULT '0',
  `userPrevillage` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offcash`
--

INSERT INTO `offcash` (`OffCashID`, `Cash`, `TotalPaid`, `Balance`, `Date`, `userID`, `OffCashStatus`, `userPrevillage`) VALUES
(64, 55, 30, -25, '2022-03-15', 1, 127, ''),
(65, 55, 30, -25, '2022-03-15', 1, 127, ''),
(66, 22, 30, 8, '2022-03-15', 1, 127, ''),
(67, 22, 30, 8, '2022-03-15', 1, 127, ''),
(68, 22, 30, 8, '2022-03-15', 1, 127, ''),
(69, 22, 30, 8, '2022-03-15', 1, 127, ''),
(70, 22, 30, 8, '2022-03-15', 1, 127, ''),
(71, 22, 30, 8, '2022-03-15', 1, 127, ''),
(72, 22, 30, 8, '2022-03-15', 1, 127, ''),
(73, 30, 30, 0, '2022-03-15', 1, 127, ''),
(74, 40, 30, -10, '2022-03-15', 1, 127, ''),
(75, 40, 30, -10, '2022-03-15', 1, 127, '');

-- --------------------------------------------------------

--
-- Table structure for table `pay`
--

CREATE TABLE `pay` (
  `ID` int(50) NOT NULL,
  `updatedCust` int(50) NOT NULL,
  `PDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pay`
--

INSERT INTO `pay` (`ID`, `updatedCust`, `PDate`) VALUES
(1, 56, '2022-03-01'),
(2, 99, '2022-02-20'),
(3, 0, '0000-00-00'),
(4, 80, '0000-00-00'),
(5, 85, '0000-00-00'),
(6, 85, '0000-00-00'),
(7, 85, '0000-00-00'),
(8, 85, '0000-00-00'),
(9, 85, '0000-00-00'),
(10, 51, '2022-03-29'),
(11, 95, '2022-03-30');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `PayID` int(11) NOT NULL,
  `CustID` int(50) NOT NULL,
  `CustName` varchar(100) NOT NULL,
  `PayDate` date NOT NULL,
  `PaidAmount` int(11) NOT NULL,
  `Discount` int(11) NOT NULL DEFAULT '0',
  `Zaad No` int(10) NOT NULL,
  `PaidStatus` int(1) NOT NULL,
  `PaymentType` varchar(50) NOT NULL,
  `AmountOwed` int(50) NOT NULL DEFAULT '0',
  `Previllage` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`PayID`, `CustID`, `CustName`, `PayDate`, `PaidAmount`, `Discount`, `Zaad No`, `PaidStatus`, `PaymentType`, `AmountOwed`, `Previllage`) VALUES
(1, 25, 'abdishakour ali osman', '2022-04-17', 30, 5, 634449499, 1, 'Zaad', 0, 'Mawliid Nasir'),
(2, 26, 'aidarous ali osman', '2022-04-17', 30, 5, 4345591, 1, 'Zaad', 0, 'Mawliid Nasir'),
(3, 27, 'ibrahin ahmed abadir ', '2022-04-17', 35, 0, 4481544, 1, 'Zaad', 0, 'Mawliid Nasir'),
(4, 28, 'mohamed mostafa mohamed', '2022-04-17', 35, 0, 4050800, 1, 'Zaad', 0, 'Mawliid Nasir'),
(5, 29, 'mahamed saleban xasan', '2022-04-17', 35, 0, 4366497, 1, 'Zaad', 0, 'Mawliid Nasir'),
(6, 30, 'farhan yousuf gaahnuug', '2022-04-17', 30, 5, 4537016, 1, 'Zaad', 0, 'Mawliid Nasir'),
(7, 31, 'aidarous abdilahi ismail', '2022-04-17', 30, 5, 4199535, 1, 'Zaad', 0, 'Mawliid Nasir'),
(8, 32, 'fahad ahmed kaariye', '2022-04-17', 30, 5, 4844662, 1, 'Zaad', 0, 'Mawliid Nasir'),
(9, 33, 'abdirhaman xamud muuse', '2022-04-17', 30, 5, 4444444, 1, 'Zaad', 0, 'Mawliid Nasir'),
(10, 34, 'ahmed ali', '2022-04-17', 35, 0, 4087906, 1, 'Zaad', 0, 'Mawliid Nasir'),
(11, 35, 'shucayb mahamed ahmed ', '2022-04-17', 35, 0, 4494319, 1, 'Zaad', 0, 'Mawliid Nasir'),
(12, 9, 'ahmed mohamed jamac', '2022-04-17', 35, 0, 4411079, 1, 'Zaad', 0, 'Mawliid Nasir'),
(13, 8, 'hamze abdirahman ibrahin', '2022-04-17', 35, 0, 623220469, 1, 'Zaad', 0, 'Mawliid Nasir'),
(14, 7, 'mukhtar maxamed esse', '2022-04-17', 35, 0, 4143889, 1, 'Zaad', 0, 'Mawliid Nasir'),
(15, 20, 'foosi ismai nour', '2022-04-17', 35, 0, 4877779, 1, 'Zaad', 0, 'Mawliid Nasir'),
(16, 6, 'mahad hussein ahmed ', '2022-04-17', 35, 0, 4037323, 1, 'Zaad', 0, 'Mawliid Nasir'),
(17, 5, 'ahmed yasin hussein', '2022-04-17', 35, 0, 4461233, 1, 'Zaad', 0, 'Mawliid Nasir'),
(18, 4, 'dayib hussein nour', '2022-04-17', 35, 0, 760052, 1, 'Zaad', 0, 'Mawliid Nasir'),
(19, 3, 'siciid yahye mahamed', '2022-04-17', 35, 0, 7600512, 1, 'Zaad', 0, 'Mawliid Nasir'),
(20, 2, 'ahmed yousuf ahmed ', '2022-04-17', 30, 5, 4485570, 1, 'Zaad', 0, 'Mawliid Nasir'),
(21, 36, 'abdirahman mohame shugri', '2022-04-17', 35, 0, 4123000, 1, 'Zaad', 0, 'Mawliid Nasir'),
(22, 1, 'yahye abdirahman faarax', '2022-04-17', 35, 0, 4046165, 1, 'Zaad', 0, 'Mawliid Nasir'),
(23, 37, 'suhaib farhan aadan ', '2022-04-17', 35, 0, 4865664, 1, 'Zaad', 0, 'Mawliid Nasir'),
(24, 23, 'abdirisaq abokor abdilahi', '2022-04-17', 35, 0, 634849932, 1, 'Zaad', 0, 'Mawliid Nasir'),
(25, 21, 'ayaan ali mohamed', '2022-04-17', 25, 0, 4129735, 1, 'Zaad', 0, 'Mawliid Nasir'),
(26, 22, 'aamina ahmed gamadiid', '2022-04-17', 25, 0, 4788402, 1, 'Zaad', 0, 'Mawliid Nasir'),
(27, 24, 'ugbaad ahmed maxamed', '2022-04-17', 25, 0, 4476301, 1, 'Zaad', 0, 'Mawliid Nasir'),
(28, 19, 'hana faarax diiriye', '2022-04-17', 25, 0, 4121233, 1, 'Zaad', 0, 'Mawliid Nasir'),
(29, 18, 'mumtaas ahmed ibrahin', '2022-04-17', 25, 0, 484555, 1, 'Zaad', 0, 'Mawliid Nasir'),
(30, 17, 'rahma hassan maxamud ', '2022-04-17', 25, 0, 3223091, 1, 'Zaad', 0, 'Mawliid Nasir'),
(31, 16, 'hodan rashid ali ', '2022-04-17', 25, 0, 0, 1, 'Zaad', 0, 'Mawliid Nasir'),
(32, 15, 'haboon faisal hassan ', '2022-04-17', 25, 0, 4070560, 1, 'Zaad', 0, 'Mawliid Nasir'),
(33, 14, 'shaadiya ahmed', '2022-04-17', 25, 0, 0, 1, 'Zaad', 0, 'Mawliid Nasir'),
(34, 13, 'hibo hassan yousuf ', '2022-04-17', 25, 0, 4405505, 1, 'Zaad', 0, 'Mawliid Nasir'),
(35, 12, 'maariya abdirahman maxamud', '2022-04-17', 25, 0, 4778806, 1, 'Zaad', 0, 'Mawliid Nasir'),
(36, 11, 'ayaan ahmed liiban', '2022-05-19', 25, 0, 3869167, 1, 'Zaad', 0, 'Mawliid Nasir'),
(37, 10, 'landa mustafe cilmi', '2022-04-17', 25, 0, 4792285, 1, 'Zaad', 0, 'Mawliid Nasir'),
(38, 39, 'cilmi maxamed omar ', '2022-04-18', 30, 5, 4877339, 1, 'Zaad', 0, 'Mawliid Nasir'),
(41, 38, 'ibrahin ahmed ibrahin', '2022-04-19', 2, 0, 3510308, 1, 'Zaad', 0, 'Mawliid Nasir'),
(42, 40, 'usaame faysal jaamc', '2022-04-21', 100, 0, 4551623, 1, 'Zaad', 0, 'Mawliid Nasir'),
(43, 41, 'shakir fahmi ahmed ', '2022-04-21', 65, 35, 4757707, 1, 'Zaad', 0, 'Mawliid Nasir'),
(44, 42, 'carte maxamed maxamud', '2022-04-21', 100, 0, 4109117, 1, 'Zaad', 0, 'Mawliid Nasir'),
(45, 43, 'ahmed hassan xaddi ', '2022-04-21', 100, 0, 4427958, 1, 'Zaad', 0, 'Mawliid Nasir'),
(46, 44, 'siciid ali boodhle', '2022-04-21', 2, 0, 633816948, 1, 'Zaad', 0, 'Mawliid Nasir'),
(47, 38, 'ibrahin ahmed ibrahin', '2022-04-21', 2, 0, 3510308, 1, 'Zaad', 0, 'zaki'),
(48, 45, 'mustafe abdirashid dahir', '2022-04-24', 35, 0, 3661944, 1, 'Zaad', 0, 'Mawliid Nasir'),
(49, 46, 'abdiqani ibrahin maxamud', '2022-04-25', 2, 0, 6611555, 1, 'Zaad', 0, 'Mawliid Nasir'),
(50, 47, 'sakaria siciid muxumed ', '2022-04-26', 2, 0, 4755744, 1, 'Zaad', 0, 'Mawliid Nasir'),
(51, 48, 'maxamed caabi digaale', '2022-05-04', 2, 0, 4242611, 1, 'Zaad', 0, 'Mawliid Nasir'),
(52, 49, 'ahmed rashid osman ', '2022-05-05', 35, 0, 4807801, 1, 'Zaad', 0, 'Mawliid Nasir'),
(53, 50, 'asma hussein omer ', '2022-05-05', 2, 0, 6747622, 1, 'Zaad', 0, 'Mawliid Nasir'),
(54, 51, 'hassan ahmed mohamed ', '2022-05-05', 30, 5, 4414096, 1, 'Zaad', 0, 'Mawliid Nasir'),
(55, 52, 'abdifatah mawliid maxamed ', '2022-05-05', 30, 5, 4808231, 1, 'Zaad', 0, 'Mawliid Nasir'),
(56, 48, 'maxamed caabi digaale', '2022-05-05', 2, 0, 4242611, 1, 'Zaad', 0, 'Mawliid Nasir'),
(57, 53, 'abdimajiid nuur abdirahman ', '2022-05-07', 22, 0, 4041855, 1, 'Zaad', 0, 'Mawliid Nasir'),
(58, 54, 'ayaan ahmed liban', '2022-05-07', 25, 0, 33869167, 1, 'Zaad', 0, 'Mawliid Nasir'),
(59, 55, 'suhuur fadxi mukhtaar', '2022-05-07', 25, 0, 4473434, 1, 'Zaad', 0, 'Mawliid Nasir'),
(60, 56, 'muna rashid ali', '2022-05-07', 25, 0, 4897251, 1, 'Zaad', 0, 'Mawliid Nasir'),
(61, 57, 'guba cristina', '2022-05-07', 2, 0, 3383824, 1, 'Zaad', 0, 'Mawliid Nasir'),
(62, 59, 'maxamed caabi digaale', '2022-05-07', 2, 0, 4242611, 1, 'Zaad', 0, 'Mawliid Nasir'),
(63, 60, 'ridwaan maxamed ismail', '2022-05-07', 30, 5, 4150135, 1, 'Cash', 0, 'Mawliid Nasir'),
(64, 58, 'abdirahman mohame shugri', '2022-05-07', 35, 0, 4123000, 1, 'Zaad', 0, 'Mawliid Nasir'),
(65, 61, 'guled ibrahin madar', '2022-05-07', 35, 0, 4098697, 1, 'Cash', 0, 'Mawliid Nasir'),
(66, 62, 'abdirisaq iimaan omar', '2022-05-07', 35, 0, 4032272, 1, 'Cash', 0, 'Mawliid Nasir'),
(67, 64, 'yahye abdirahman hassan ', '2022-05-07', 35, 0, 4222722, 1, 'Edahab', 0, 'Mawliid Nasir'),
(68, 63, 'khalid adan diriye', '2022-05-16', 2, 0, 4083535, 1, 'Zaad', 0, 'Mawliid Nasir'),
(69, 65, 'yahye siciid abdi ', '2022-05-07', 35, 0, 6576714, 1, 'Zaad', 0, 'Mawliid Nasir'),
(70, 66, 'badri foosi ahmed ', '2022-05-07', 35, 0, 4211470, 1, 'Zaad', 0, 'Mawliid Nasir'),
(71, 67, 'almis mahdi ali', '2022-05-07', 100, 0, 637580361, 1, 'Edahab', 0, 'Mawliid Nasir'),
(72, 70, 'abdirahman ahmed maxamed ', '2022-05-07', 2, 0, 4401926, 1, 'Zaad', 0, 'Mawliid Nasir'),
(73, 68, 'ahmed farah qalinle ', '2022-05-07', 35, 0, 4000214, 1, 'Zaad', 0, 'Mawliid Nasir'),
(74, 69, 'guled muuse ali', '2022-05-07', 35, 0, 4416675, 1, 'Zaad', 0, 'Mawliid Nasir'),
(77, 71, 'mukhtaar abti hirsi', '2022-05-08', 35, 0, 7636768, 1, 'Cash', 0, 'Mawliid Nasir'),
(78, 72, 'maxamed abdi ismail', '2022-05-08', 35, 0, 4756787, 1, 'Zaad', 0, 'Mawliid Nasir'),
(79, 73, 'hassan sacad hassan ', '2022-05-08', 35, 0, 3748715, 1, 'Cash', 0, 'Mawliid Nasir'),
(80, 74, 'khalid haybe abdi', '2022-05-08', 35, 0, 4267305, 1, 'Zaad', 0, 'Mawliid Nasir'),
(81, 70, 'abdirahman ahmed maxamed ', '2022-05-08', 35, 0, 4401926, 1, 'Zaad', 0, 'Mawliid Nasir'),
(82, 75, 'jamaal ayaanle ahmed ', '2022-05-09', 35, 0, 4425004, 1, 'Zaad', 0, 'Mawliid Nasir'),
(83, 76, 'rahma faysal kaamil', '2022-05-09', 25, 0, 4778485, 1, 'Zaad', 0, 'Mawliid Nasir'),
(84, 77, 'guba cristina', '2022-05-09', 25, 0, 633383824, 1, 'Zaad', 0, 'Mawliid Nasir'),
(85, 78, 'maxamed saleban tarabi', '2022-05-09', 2, 0, 4021995, 1, 'Zaad', 0, 'Mawliid Nasir'),
(86, 79, 'mukhtaar maxamuud abdi', '2022-05-09', 35, 0, 4121664, 1, 'Zaad', 0, 'Mawliid Nasir'),
(87, 80, 'mahad hussein ahmed ', '2022-05-09', 33, 0, 4037323, 1, 'Zaad', 0, 'Mawliid Nasir'),
(88, 81, 'hamze hirsi ali', '2022-05-10', 2, 0, 4245089, 1, 'Edahab', 0, 'Mawliid Nasir'),
(89, 82, 'xudayfi faysal mohamed ', '2022-05-12', 2, 0, 4336650, 1, 'Zaad', 0, 'Mawliid Nasir'),
(90, 83, 'mohamed shugri ali', '2022-05-10', 35, 0, 6834771, 1, 'Zaad', 0, 'Mawliid Nasir'),
(91, 84, 'deeqa faysal mohamed', '2022-05-10', 25, 0, 3231158, 1, 'Cash', 0, 'Mawliid Nasir'),
(92, 85, 'ayaan faysal mohamed ', '2022-05-10', 25, 0, 3809439, 1, 'Cash', 0, 'Mawliid Nasir'),
(93, 86, 'idil faysal mohamed ', '2022-05-10', 25, 0, 0, 1, 'Cash', 0, 'Mawliid Nasir'),
(94, 87, 'abdisalan nuur maxamed ', '2022-05-11', 30, 0, 4882161, 1, 'Cash', 0, 'Mawliid Nasir'),
(95, 88, 'mustafe osman nuur', '2022-05-11', 30, 0, 4421217, 1, 'Cash', 0, 'Mawliid Nasir'),
(96, 90, 'hamze hirsi ali', '2022-05-11', 2, 0, 4245089, 1, 'Edahab', 0, 'Mawliid Nasir'),
(97, 89, 'xusein jama osman', '2022-05-11', 30, 0, 633323332, 1, 'Edahab', 0, 'Mawliid Nasir'),
(98, 91, 'dayib hussein nour', '2022-05-12', 2, 0, 7600512, 1, 'Zaad', 0, 'Mawliid Nasir'),
(99, 92, 'maryam osman ibrahim', '2022-05-11', 2, 0, 4476968, 1, 'Zaad', 0, 'Mawliid Nasir'),
(100, 93, 'maxamed saleban tarabi', '2022-05-11', 2, 0, 4021995, 1, 'Zaad', 0, 'Mawliid Nasir'),
(101, 94, 'maxamed caabi digaale', '2022-05-15', 2, 0, 4242611, 1, 'Zaad', 0, 'Mawliid Nasir'),
(102, 95, 'aamin daud muxumed ', '2022-05-11', 30, 0, 6834773, 1, 'Zaad', 0, 'Mawliid Nasir'),
(103, 96, 'siciid maxamed abdilahi', '2022-05-11', 30, 0, 3009165, 1, 'Zaad', 0, 'Mawliid Nasir'),
(104, 97, 'sakariye maxamed abdi', '2022-05-11', 30, 0, 4108474, 1, 'Zaad', 0, 'Mawliid Nasir'),
(105, 98, 'abdirisaq idiris ahmed', '2022-05-12', 35, 0, 6657241, 1, 'Cash', 0, 'Mawliid Nasir'),
(106, 99, 'shaadiya ahmed hasan ', '2022-05-12', 25, 0, 4234273, 1, 'Cash', 0, 'Mawliid Nasir'),
(107, 100, 'suaad ali mohamed ', '2022-05-12', 25, 0, 4168579, 1, 'Zaad', 0, 'Mawliid Nasir'),
(108, 101, 'asma hussein', '2022-05-14', 2, 0, 6747622, 1, 'Zaad', 0, 'Mawliid Nasir'),
(109, 102, 'muna foosi ibrahin', '2022-05-14', 25, 0, 3500619, 1, 'Cash', 0, 'Mawliid Nasir'),
(110, 103, 'hodan rashid ali ', '2022-05-14', 25, 0, 3500619, 1, 'Zaad', 0, 'Mawliid Nasir'),
(111, 104, 'hibak  mohamed husein', '2022-05-14', 25, 0, 7323611, 1, 'Zaad', 0, 'Mawliid Nasir'),
(112, 105, 'sundus abdihamiid ahmed ', '2022-05-14', 25, 0, 3611864, 1, 'Zaad', 0, 'Mawliid Nasir'),
(113, 106, 'nuradiin abdirisaq ali', '2022-05-14', 30, 0, 4868972, 1, 'Edahab', 0, 'Mawliid Nasir'),
(114, 107, 'abdifatah jama ahmed ', '2022-05-14', 30, 0, 4672332, 1, 'Zaad', 0, 'Mawliid Nasir'),
(115, 108, 'khalid ahmed ali', '2022-05-14', 30, 0, 4008914, 1, 'Zaad', 0, 'Mawliid Nasir'),
(116, 110, 'abdale hassan mahamed ', '2022-05-14', 35, 0, 4044477, 1, 'Cash', 0, 'Mawliid Nasir'),
(117, 111, 'abdisalan mahamed ahmed ', '2022-05-14', 35, 0, 7469829, 1, 'Cash', 0, 'Mawliid Nasir'),
(118, 112, 'abdifatah ahmed hashi ', '2022-05-14', 35, 0, 4235015, 1, 'Zaad', 0, 'Mawliid Nasir'),
(119, 113, 'abdirisaq hassan yousuf', '2022-05-14', 35, 0, 4929579, 1, 'Cash', 0, 'Mawliid Nasir'),
(120, 114, 'husein xirsi omer ', '2022-05-15', 35, 0, 4271724, 1, 'Zaad', 0, 'Mawliid Nasir'),
(121, 124, 'maftuux abdirisak dube ', '2022-05-15', 2, 0, 4632774, 1, 'Zaad', 0, 'Mawliid Nasir'),
(122, 123, 'muhiim abdiqadir ', '2022-05-15', 2, 0, 4641465, 1, 'Zaad', 0, 'Mawliid Nasir'),
(123, 122, 'asma hussein omer ', '2022-05-15', 25, 0, 6747622, 1, 'Zaad', 0, 'Mawliid Nasir'),
(124, 115, 'noura maxamuud osman', '2022-05-15', 25, 0, 9999490, 1, 'Cash', 0, 'Mawliid Nasir'),
(125, 116, 'ruwayda mohamed said', '2022-05-15', 25, 0, 4630466, 1, 'Cash', 0, 'Mawliid Nasir'),
(126, 117, 'zaynab esse abdi', '2022-05-15', 25, 0, 4197023, 1, 'Cash', 0, 'Mawliid Nasir'),
(127, 118, 'hana abdulahi ', '2022-05-15', 25, 0, 4715727, 1, 'Zaad', 0, 'Mawliid Nasir'),
(128, 119, 'sihaam sulayman adam', '2022-05-15', 25, 0, 4257178, 1, 'Edahab', 0, 'Mawliid Nasir'),
(129, 120, 'nimco idiris maxamed ', '2022-05-15', 25, 0, 4792195, 1, 'Zaad', 0, 'Mawliid Nasir'),
(130, 121, 'rahma hassan maxamud ', '2022-05-15', 25, 0, 3223091, 1, 'Zaad', 0, 'Mawliid Nasir'),
(131, 37, 'suhaib farhan aadan ', '2022-05-15', 35, 0, 4865664, 1, 'Zaad', 0, 'Mawliid Nasir'),
(132, 129, 'maxamed osman hussein ', '2022-05-16', 35, 0, 3984014, 1, 'Zaad', 0, 'Mawliid Nasir'),
(133, 125, 'ikran hussein omer ', '2022-05-16', 25, 0, 4425535, 1, 'Zaad', 0, 'Mawliid Nasir'),
(134, 126, 'maftuux abdirisak dube ', '2022-05-16', 2, 0, 4632777, 1, 'Zaad', 0, 'Mawliid Nasir'),
(135, 127, 'linda maxamed jama', '2022-05-16', 25, 0, 4153590, 1, 'Zaad', 0, 'Mawliid Nasir'),
(136, 128, 'mumtaas abadir ', '2022-05-16', 2, 0, 4641465, 1, 'Zaad', 0, 'Mawliid Nasir'),
(137, 48, 'maxamed caabi digaale', '2022-05-16', 2, 0, 4242611, 1, 'Edahab', 0, 'Mawliid Nasir'),
(138, 130, 'nasriin rashid ali', '2022-05-16', 25, 0, 0, 1, 'Zaad', 0, 'Mawliid Nasir'),
(139, 48, 'maxamed caabi digaale', '2022-05-17', 2, 0, 4242611, 1, 'Edahab', 0, 'Mawliid Nasir'),
(140, 131, 'george kassab ', '2022-05-18', 35, 0, 637514592, 1, 'Cash', 0, 'Mawliid Nasir'),
(141, 63, 'khalid adan diriye', '2022-05-19', 2, 0, 4083535, 1, 'Zaad', 0, 'Mawliid Nasir'),
(142, 132, 'hamse siciid ahmed ', '2022-05-19', 35, 0, 7439105, 1, 'Zaad', 0, 'Mawliid Nasir'),
(143, 133, 'rahma abdilahi abdi ', '2022-05-21', 25, 0, 3933994, 1, 'Zaad', 0, 'Mawliid Nasir'),
(144, 134, 'hassan abdi hussein', '2022-05-21', 100, 0, 7246324, 1, 'Zaad', 0, 'Mawliid Nasir'),
(145, 135, 'abdirahman mohamed abdialahi', '2022-05-21', 35, 0, 633700008, 1, 'Edahab', 0, 'Mawliid Nasir'),
(146, 48, 'maxamed caabi digaale', '2022-05-21', 2, 0, 4242611, 1, 'Edahab', 4242611, 'Mawliid Nasir'),
(147, 137, 'ismail maxamed yousuf', '2022-05-21', 35, 0, 3833838, 1, 'Zaad', 0, 'Mawliid Nasir'),
(148, 23, 'abdirisaq abokor abdilahi', '2022-05-21', 35, 0, 634849932, 1, 'Zaad', 0, 'Mawliid Nasir'),
(149, 136, 'abdiasalan mukhtar aadan', '2022-05-21', 30, 0, 4242322, 1, 'Edahab', 0, 'Mawliid Nasir'),
(150, 26, 'aidarous ali osman', '2022-05-21', 30, 0, 634345591, 1, 'Edahab', 0, 'Mawliid Nasir'),
(151, 25, 'abdishakour ali osman', '2022-05-21', 30, 0, 4449499, 1, 'Edahab', 0, 'Mawliid Nasir'),
(152, 138, 'ayaan bashiir hassan', '2022-05-22', 25, 0, 4544858, 1, 'Zaad', 0, 'Mawliid Nasir'),
(153, 139, 'khadar abdilahi ali', '2022-05-23', 2, 0, 4422722, 1, 'Edahab', 0, 'Mawliid Nasir'),
(154, 140, 'hamze abdi abdilahi', '2022-05-23', 33, 0, 4194167, 1, 'Edahab', 0, 'Mawliid Nasir'),
(155, 141, 'khadar abdi abdilahi', '2022-05-23', 33, 0, 4182034, 1, 'Edahab', 0, 'Mawliid Nasir');

-- --------------------------------------------------------

--
-- Table structure for table `pricing`
--

CREATE TABLE `pricing` (
  `ID` int(11) NOT NULL,
  `Daily` varchar(100) NOT NULL,
  `Monthly` varchar(100) NOT NULL,
  `Yearly` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pricing`
--

INSERT INTO `pricing` (`ID`, `Daily`, `Monthly`, `Yearly`) VALUES
(1, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ID` int(11) NOT NULL,
  `ProductName` varchar(50) NOT NULL,
  `CustName` varchar(50) NOT NULL,
  `Quantity` int(50) NOT NULL,
  `Price` int(50) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sellprod`
--

CREATE TABLE `sellprod` (
  `ID` int(11) NOT NULL,
  `ProductName` varchar(50) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `ID` int(100) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Description` varchar(50) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`ID`, `Title`, `Description`, `Date`) VALUES
(2, 'Group Fitness Training', 'lorem ipsum', '2022-02-02'),
(3, 'Body Biulding', 'lorem ipsum', '2022-02-03'),
(4, 'Strength Training', 'lorem ipsum', '2022-02-06'),
(5, 'lol', 'Border', '0000-00-00'),
(8, 'mask', 'loren', '2022-02-15');

-- --------------------------------------------------------

--
-- Table structure for table `trainer`
--

CREATE TABLE `trainer` (
  `Id` int(11) NOT NULL,
  `trainerName` varchar(100) NOT NULL,
  `trainerPhone` varchar(100) NOT NULL,
  `traineraddress` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `traning`
--

CREATE TABLE `traning` (
  `ID` int(11) NOT NULL,
  `CustID` int(100) NOT NULL,
  `Paid` varchar(100) NOT NULL DEFAULT 'Not Paid',
  `Bundle` varchar(30) NOT NULL,
  `DaysTraining` varchar(100) NOT NULL,
  `LeftDays` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `traning`
--

INSERT INTO `traning` (`ID`, `CustID`, `Paid`, `Bundle`, `DaysTraining`, `LeftDays`) VALUES
(1, 1, '', '', '20', '20\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `updateworkoutstatus`
--

CREATE TABLE `updateworkoutstatus` (
  `UpdateID` int(50) NOT NULL,
  `CustID` int(50) NOT NULL,
  `Date` date NOT NULL,
  `PresentCust` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `updateworkoutstatus`
--

INSERT INTO `updateworkoutstatus` (`UpdateID`, `CustID`, `Date`, `PresentCust`) VALUES
(176, 56, '2022-03-23', 1),
(177, 56, '2022-03-23', 1),
(178, 52, '2022-03-23', 1),
(179, 52, '2022-03-23', 1),
(180, 56, '2022-03-23', 1),
(181, 56, '2022-03-23', 1),
(182, 56, '2022-03-23', 1),
(183, 56, '2022-03-23', 1),
(184, 56, '2022-03-23', 1),
(185, 56, '2022-03-24', 1),
(186, 56, '2022-03-27', 1),
(187, 56, '2022-03-28', 1),
(188, 56, '2022-03-31', 1),
(189, 56, '2022-04-01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(100) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `userType` varchar(100) NOT NULL,
  `Status` tinyint(1) NOT NULL,
  `UserProfile` blob NOT NULL,
  `shift` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `Name`, `Username`, `Email`, `Phone`, `Password`, `userType`, `Status`, `UserProfile`, `shift`) VALUES
(1, 'Xamse Rashiid', 'xamse', 'xamse@gmail.com', '063613873', 'xamse', 'superadmin', 1, '', 'evening'),
(2, 'Mawliid Nasir', 'Mawlid', 'mawlid@gmail.com', '0634055215', 'Mawlid2', 'admin', 1, '', 'morning'),
(3, 'samiir axmed', 'samiir', 'samiir@gmail.com', '06336067439', 'samiir', 'admin', 0, '', 'No'),
(4, 'zaki', 'zaki', 'zakiozman2@gmail.com', '0636133354', 'zaki', 'admin', 1, '', 'evening'),
(6, 'mahdiya c/raxman', 'mahdiya', 'mahdiya@gmail.com', '0633708416', 'mahdiya', 'user', 0, '', 'evening');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bundles`
--
ALTER TABLE `bundles`
  ADD PRIMARY KEY (`BundleID`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `daily bundles`
--
ALTER TABLE `daily bundles`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `daily customers`
--
ALTER TABLE `daily customers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `deletedcustomer`
--
ALTER TABLE `deletedcustomer`
  ADD PRIMARY KEY (`DeleteID`);

--
-- Indexes for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `newcustomers`
--
ALTER TABLE `newcustomers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`NoteID`);

--
-- Indexes for table `offcash`
--
ALTER TABLE `offcash`
  ADD PRIMARY KEY (`OffCashID`);

--
-- Indexes for table `pay`
--
ALTER TABLE `pay`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`PayID`);

--
-- Indexes for table `pricing`
--
ALTER TABLE `pricing`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sellprod`
--
ALTER TABLE `sellprod`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `trainer`
--
ALTER TABLE `trainer`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `traning`
--
ALTER TABLE `traning`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `updateworkoutstatus`
--
ALTER TABLE `updateworkoutstatus`
  ADD PRIMARY KEY (`UpdateID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bundles`
--
ALTER TABLE `bundles`
  MODIFY `BundleID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;
--
-- AUTO_INCREMENT for table `daily bundles`
--
ALTER TABLE `daily bundles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `daily customers`
--
ALTER TABLE `daily customers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `deletedcustomer`
--
ALTER TABLE `deletedcustomer`
  MODIFY `DeleteID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `enrollment`
--
ALTER TABLE `enrollment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `newcustomers`
--
ALTER TABLE `newcustomers`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `NoteID` int(50) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `offcash`
--
ALTER TABLE `offcash`
  MODIFY `OffCashID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `pay`
--
ALTER TABLE `pay`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `PayID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;
--
-- AUTO_INCREMENT for table `pricing`
--
ALTER TABLE `pricing`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sellprod`
--
ALTER TABLE `sellprod`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `trainer`
--
ALTER TABLE `trainer`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `traning`
--
ALTER TABLE `traning`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `updateworkoutstatus`
--
ALTER TABLE `updateworkoutstatus`
  MODIFY `UpdateID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
