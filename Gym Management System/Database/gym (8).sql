-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2022 at 05:56 PM
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
  `Days` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`ID`, `Name`, `Paid`, `RegDate`, `Bundle`, `StartingDate`, `Phone`, `Shift`, `EndingDate`, `Gender`, `username`, `password`, `ActiveStatus`, `Address`, `Custimage`, `Days`) VALUES
(52, 'saed ali boodhle', '0', '2022-03-23', 'Classic', '2022-03-08', 6354778, 'evening', '2022-04-08', 'male', '', '', 0, '', '', 19),
(53, 'sakariye abdil ali', '0', '2022-03-01', 'Classic', '2022-03-10', 63365214, 'evening', '2022-04-10', 'male', '', '', 0, '', '', 8),
(54, 'hamnse hasan faarax', '0', '2021-11-21', 'Clue', '2021-11-21', 63365478, 'morning', '2022-02-21', 'male', '', '', 0, '', '', 0),
(55, 'dayib xusen nuur', '0', '2021-12-14', 'Clue', '2022-01-01', 633644578, 'morning', '2022-04-01', 'male', '', '', 0, '', '', 9),
(56, 'axmed xasan xadi', '1', '2022-01-05', 'Clue', '2022-03-05', 36654127, 'evening', '2022-05-06', 'male', '', '', 0, '', '', 73),
(57, 'abdinasir abdixakim osman', '1', '2021-12-13', 'Classic', '2022-02-24', 633644578, 'evening', '2022-03-24', 'male', '', '', 0, '', '', 0),
(58, 'samiir axmed maxamed', '1', '2022-01-20', 'Classic', '2022-02-23', 633605095, 'evening', '2022-03-23', 'male', '', '', 0, 'goljano', '', 0),
(59, 'ali xasan maxamed', '0', '2022-03-29', 'Classic', '2022-03-29', 633245125, 'Morning', '2022-04-29', 'male', '', '', 0, 'kaah', 0x696d675f322e6a7067, 30),
(60, 'xamse maxamed', '0', '2022-03-29', 'Clue', '2022-03-29', 3654784, 'Afternoon', '2022-04-29', 'male', '', '', 0, 'goljano', 0x706572736f6e5f342e6a7067, 90),
(61, 'xamse maxamed', '0', '2022-03-29', 'Clue', '2022-03-29', 3654784, 'Afternoon', '2022-04-29', 'male', '', '', 0, 'goljano', 0x706572736f6e5f342e6a7067, 90),
(62, 'xirsi xaaji', '0', '2022-03-29', 'Classic', '2022-03-29', 4710565, 'Evening', '2022-03-29', 'male', '', '', 0, 'goljano', 0x706572736f6e5f352e6a7067, 30),
(63, 'xirsi xaaji', '0', '2022-03-29', 'Classic', '2022-03-29', 4710565, 'Evening', '2022-03-29', 'male', '', '', 0, 'goljano', 0x706572736f6e5f352e6a7067, 30),
(64, 'xirsi xaaji', '0', '2022-03-29', 'Classic', '2022-03-29', 4710565, 'Evening', '2022-03-29', 'male', '', '', 0, 'goljano', 0x706572736f6e5f352e6a7067, 30),
(65, 'samiir', '0', '2022-03-29', 'Classic', '2022-03-29', 3654784, 'Afternoon', '2022-03-29', 'female', '', '', 0, 'www', 0x706572736f6e5f312e6a7067, 30),
(66, 'samiir', '0', '2022-03-29', 'Classic', '2022-03-29', 3654784, 'Afternoon', '2022-03-29', 'female', '', '', 0, 'www', 0x706572736f6e5f312e6a7067, 30),
(67, 'samiir', '0', '2022-03-29', 'Classic', '2022-03-29', 3654784, 'Afternoon', '2022-03-29', 'female', '', '', 0, 'www', 0x706572736f6e5f312e6a7067, 30),
(68, 'maxamed saleban osman', '0', '2022-03-30', 'Classic', '2022-03-07', 4710565, 'Evening', '2022-04-07', 'male', '', '', 0, 'sample', 0x706572736f6e5f342e6a7067, 30),
(69, 'c/xakim ismacil cusman', '0', '2022-03-30', 'Classic', '2022-03-06', 4710565, 'Evening', '2022-04-06', 'male', '', '', 0, 'goljano', 0x706572736f6e5f332e6a7067, 30),
(70, 'ismacil c/lahi ismacil', '0', '2022-03-30', 'Classic', '2022-03-06', 3654784, 'Evening', '2022-04-06', 'male', '', '', 0, 'goljano', 0x706572736f6e5f322e6a7067, 30),
(71, 'maxamed farxan maxamed', '0', '2022-03-30', 'Classic', '2022-03-07', 3654784, 'Evening', '2022-04-07', 'male', '', '', 0, 'goljano', 0x696d675f322e6a7067, 30),
(72, 'sakariye abdi ali', '0', '2022-03-30', 'Classic', '2022-03-08', 3654784, 'Evening', '2022-04-08', 'male', '', '', 0, 'goljano', 0x706572736f6e5f342e6a7067, 30),
(73, 'khadar abdilahi ali', '0', '2022-03-30', 'Classic', '2022-03-12', 4710565, 'Evening', '2022-04-12', 'male', '', '', 0, 'goljano', 0x706572736f6e5f352e6a7067, 30),
(74, 'maxamed axmed abdi', '0', '2022-03-30', 'Classic', '2022-03-12', 3654784, 'Evening', '2022-03-12', 'male', '', '', 0, 'goljano', 0x706572736f6e5f322e6a7067, 30),
(75, 'abdiraxman c/lahi muxumed', '0', '2022-03-30', 'Classic', '2022-03-13', 3654784, 'Morning', '2022-04-13', 'male', '', '', 0, 'goljano', 0x706572736f6e5f352e6a7067, 30),
(76, 'barre iman cilmi', '0', '2022-03-30', 'Classic', '2022-03-14', 3654784, 'Evening', '2022-04-14', 'male', '', '', 0, 'goljano', 0x706572736f6e5f342e6a7067, 30),
(77, 'abdirisaq abokor c/lahi', '0', '2022-03-30', 'Classic', '2022-03-14', 4710565, 'Evening', '2022-04-14', 'male', '', '', 0, 'goljano', 0x706572736f6e5f342e6a7067, 30),
(78, 'axmed aadan jamac', '0', '2022-03-30', 'Classic', '2022-03-17', 3654784, 'Evening', '2022-04-17', 'male', '', '', 0, 'goljano', 0x706572736f6e5f352e6a7067, 30),
(79, 'khalid maxamed ismacil', '0', '2022-03-30', 'Classic', '2022-03-17', 3654784, 'Evening', '2022-03-17', 'male', '', '', 0, 'goljano', 0x706572736f6e5f352e6a7067, 30),
(80, 'maxamed abdi ismacil', '0', '2022-03-30', 'Classic', '2022-03-20', 3654784, 'Morning', '2022-04-20', 'male', '', '', 0, 'goljano', 0x706572736f6e5f352e6a7067, 30),
(81, 'mustafe abdfirashid cali', '0', '2022-03-30', 'Classic', '2022-03-21', 3654784, 'Evening', '2022-04-21', 'male', '', '', 0, 'goljano', 0x706572736f6e5f322e6a7067, 30),
(82, 'guuleed ibrahin madar', '0', '2022-03-30', 'Classic', '2022-03-26', 3654784, 'Evening', '2022-04-26', 'male', '', '', 0, 'goljano', 0x696d675f322e6a7067, 30),
(83, 'ridwan cusman maxamed', '0', '2022-03-30', 'Classic', '2022-03-26', 3654784, 'Evening', '2022-03-26', 'male', '', '', 0, 'goljano', 0x706572736f6e5f352e6a7067, 30),
(84, 'abdirahman jama c/lahi', '0', '2022-03-30', 'Classic', '2022-03-27', 3654784, 'Evening', '2022-03-27', 'male', '', '', 0, 'goljano', 0x706572736f6e5f332e6a7067, 30),
(85, 'ayaanle maxamed abdale', '0', '2022-03-30', 'Classic', '2022-03-27', 3654784, 'Evening', '2022-03-27', 'male', '', '', 0, 'goljano', 0x706572736f6e5f322e6a7067, 30),
(86, 'abdirashid yusuf jamac', '0', '2022-03-30', 'Classic', '2022-03-28', 3654784, 'Evening', '2022-03-28', 'male', '', '', 0, 'goljano', 0x696d675f322e6a7067, 30),
(87, 'c/majid c/raxman cali', '0', '2022-03-30', 'Classic', '2022-03-29', 3654784, 'Evening', '2022-03-29', 'male', '', '', 0, 'goljano', 0x706572736f6e5f352e6a7067, 30),
(88, 'maxamed aaden  maxamed', '0', '2022-03-30', 'Classic', '2022-01-01', 3654784, 'Evening', '2022-04-01', 'male', '', '', 0, 'goljano', 0x706572736f6e5f352e6a7067, 30),
(89, 'dayib xusen nuur', '1', '2022-03-30', 'Classic', '2021-12-27', 3654784, 'Evening', '2022-03-27', 'male', '', '', 0, 'goljano', 0x706572736f6e5f322e6a7067, 30),
(90, 'maxamed saleban tarabi', '0', '2022-03-30', 'Classic', '2022-01-01', 3654784, 'Afternoon', '2022-04-01', 'male', '', '', 0, 'goljano', 0x706572736f6e5f322e6a7067, 30),
(91, 'khalid yusuf dahir', '0', '2022-03-30', 'Classic', '2022-01-01', 3654784, 'Evening', '2022-04-01', 'male', '', '', 0, 'goljano', 0x706572736f6e5f342e6a7067, 30),
(92, 'maxamed abdi maxamed', '0', '2022-03-30', 'Classic', '2022-01-04', 3654784, 'Evening', '2022-04-04', 'male', '', '', 0, 'goljano', 0x706572736f6e5f322e6a7067, 30),
(93, 'xirsi muuse maxamed', '0', '2022-03-30', 'Classic', '2022-01-01', 3654784, 'Evening', '2022-04-01', 'male', '', '', 0, 'goljano', 0x706572736f6e5f332e6a7067, 30),
(94, 'axmed xasan xadi', '1', '2022-03-30', 'Classic', '2022-03-05', 3654784, 'Evening', '2022-06-05', 'male', '', '', 0, 'goljano', 0x696d675f322e6a7067, 30),
(95, 'maxamed saleban osman', '1', '2022-03-30', '1 month', '2022-03-30', 3654784, 'Morning', '2022-03-30', 'male', '', '', 0, 'goljano', 0x706572736f6e5f312e6a7067, 30),
(96, 'moahemd abdilahi mawliid', '1', '2022-03-29', 'Classic', '2022-03-29', 6345778, 'Afternoon', '2022-04-29', 'male', '', '', 0, 'calamadaha', 0x706572736f6e5f322e6a7067, 30),
(97, 'maxamed saleban osman', '1', '2022-03-31', '1 month', '2022-03-31', 3654784, 'Evening', '2022-05-01', 'male', '', '', 0, 'goljano', 0x702e706e67, 30),
(98, 'mawlii nasir abiib', '1', '2022-03-31', '3 month', '2022-03-31', 4710565, 'Morning', '2022-06-30', 'male', '', '', 0, 'goljano', 0x62675f312e6a7067, 90);

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
  `DeleteID` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `deletedcustomers`
--

CREATE TABLE `deletedcustomers` (
  `ID` int(11) NOT NULL,
  `CustID` int(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Paid` varchar(30) NOT NULL DEFAULT '0',
  `RegDate` date NOT NULL,
  `DeletedDate` date NOT NULL,
  `Bundle` varchar(10) NOT NULL,
  `DaysTraining` varchar(100) NOT NULL,
  `Phone` varchar(100) NOT NULL,
  `Shift` varchar(100) NOT NULL,
  `LeftDays` varchar(100) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `userPrevillage` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deletedcustomers`
--

INSERT INTO `deletedcustomers` (`ID`, `CustID`, `Name`, `Paid`, `RegDate`, `DeletedDate`, `Bundle`, `DaysTraining`, `Phone`, `Shift`, `LeftDays`, `Gender`, `userPrevillage`) VALUES
(4, 48, 'axmed maxamed liban', '0', '2022-03-29', '2022-03-31', 'Classic', '2022-03-29', '6345774', 'morning', '2022-04-29', '2022-04-29', ''),
(6, 50, 'abdifatah xusen ibrahim', '0', '2022-03-23', '2022-03-31', 'Classic', '2022-02-19', '635477884', 'evening', '2022-03-19', '2022-03-19', ''),
(7, 47, 'moahemd abdilahi mawliid', '0', '2022-03-29', '2022-03-31', 'Classic', '2022-03-29', '6345778', 'Afternoon', '2022-04-29', '2022-04-29', ''),
(8, 6, '50', 'abdifatah xusen ibrahim', '0000-00-00', '2022-03-31', '2022-03-23', '2022-03-31', '0', '2022-02-19', '0000-00-00', '0000-00-00', ''),
(9, 51, 'hamse xasan cisman', '0', '2022-03-29', '2022-03-31', 'Classic', '2022-03-22', '63421578', 'Evening', '2022-04-22', '2022-04-22', '');

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
(43, 'mawlii nasir abiib', 'Mar');

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

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`NoteID`, `NoteSubject`, `NoteBody`, `username`, `Date`, `NoteStatus`) VALUES
(2, 'Importtant Meeting', 'caawa waxaynu leenahay shir muhiima.', '0', '2022-01-19', 0),
(3, 'shir ', 'gddhgdghk', 'samiir', '2022-03-22', 0),
(4, 'shir ', 'gddhgdghk', 'samiir', '2022-03-22', 0),
(5, 'samiir', 'samiir axmed ', 'all', '2022-03-22', 1),
(6, 'samiir', 'samiir axmed ', 'all', '2022-03-22', 0),
(7, 'shir ', 'samiir axmed ', 'all', '2022-03-22', 0),
(8, 'shir ', 'samiir axmed ', 'all', '2022-03-22', 0),
(9, 'CABASHO', 'QALAB MAQAN', 'samiir', '2022-03-30', 0);

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
  `PayID` int(50) NOT NULL,
  `CustID` int(50) NOT NULL,
  `CustName` varchar(100) NOT NULL,
  `userID` int(50) NOT NULL DEFAULT '1',
  `PayDate` date NOT NULL,
  `PaidAmount` int(11) NOT NULL,
  `Discount` int(11) NOT NULL DEFAULT '0',
  `Zaad No` int(10) NOT NULL,
  `PaidStatus` int(1) NOT NULL,
  `PaymentType` varchar(50) NOT NULL,
  `AmountOwed` int(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`PayID`, `CustID`, `CustName`, `userID`, `PayDate`, `PaidAmount`, `Discount`, `Zaad No`, `PaidStatus`, `PaymentType`, `AmountOwed`) VALUES
(40, 58, 'samiir axmed maxamed', 3, '2022-03-23', 30, 0, 634521567, 1, 'Edahab', 0),
(41, 57, 'abdinasir abdixakim osman', 3, '2022-03-23', 35, 0, 634521567, 1, 'Cash', 0),
(42, 56, 'axmed xasan xadi', 1, '2022-03-29', 0, 0, 2147483647, 1, 'Edahab', 0),
(43, 47, 'moahemd abdilahi mawliid', 1, '2022-03-29', 20, 0, 2147483647, 1, 'Edahab', 0),
(44, 48, 'axmed maxamed liban', 1, '2022-03-29', 30, 0, 2147483647, 1, 'Edahab', 0),
(45, 48, 'axmed maxamed liban', 1, '2022-03-29', 30, 0, 2147483647, 1, 'Edahab', 0),
(46, 47, 'moahemd abdilahi mawliid', 1, '2022-03-29', 0, 0, 2147483647, 1, 'Edahab', 0),
(47, 49, 'badri foosi ahmed', 1, '2022-03-29', 0, 0, 634521567, 1, 'Edahab', 0),
(48, 51, 'hamse xasan cisman', 1, '2022-03-29', 35, 0, 365477774, 1, 'Zaad', 0),
(49, 94, 'axmed xasan xadi', 0, '2022-03-30', 100, 0, 5454454, 1, 'Zaad', 0),
(50, 95, 'maxamed saleban osman', 1, '2022-03-30', 35, 0, 2147483647, 1, 'Edahab', 0),
(51, 96, 'moahemd abdilahi mawliid', 0, '2022-03-31', 30, 0, 633645478, 1, 'Edahab', 5),
(52, 97, 'maxamed saleban osman', 0, '2022-03-31', 30, 0, 456565, 1, 'Zaad', 5),
(53, 95, 'maxamed saleban osman', 0, '2022-03-31', 30, 0, 4444, 1, 'Edahab', 5),
(54, 98, 'mawlii nasir abiib', 0, '2022-03-31', 100, 0, 454555, 1, 'Cash', 0),
(55, 98, 'mawlii nasir abiib', 0, '2022-04-04', 100, 0, 788787, 1, 'Zaad', 0),
(56, 98, 'mawlii nasir abiib', 0, '2022-04-04', 100, 0, 2147483647, 1, 'Zaad', 0),
(57, 98, 'mawlii nasir abiib', 0, '2022-04-04', 12, 0, 2147483647, 1, 'Zaad', 0),
(58, 56, 'axmed xasan xadi', 0, '2022-04-04', 90, 0, 64566666, 1, 'Zaad', 0),
(59, 89, 'dayib xusen nuur', 0, '2022-04-04', 99, 0, 2147483647, 1, 'Cash', 0);

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
  `Fname` varchar(50) NOT NULL,
  `Lname` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `userType` varchar(7) NOT NULL,
  `Active` tinyint(1) NOT NULL,
  `UserProfile` blob NOT NULL,
  `shift` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `Fname`, `Lname`, `Username`, `Phone`, `Password`, `userType`, `Active`, `UserProfile`, `shift`) VALUES
(1, 'zaki', 'ozman', 'zaki', '063613873', 'zaki', 'user', 0, '', 'evening'),
(2, 'ali', 'axmed', 'ali', '06345678', 'ali', 'user', 1, '', 'morning'),
(3, 'samiir', 'axmed', 'samiir', '06336067439', 'samiir', 'admin', 1, '', 'No');

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
-- Indexes for table `deletedcustomers`
--
ALTER TABLE `deletedcustomers`
  ADD PRIMARY KEY (`ID`);

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
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
  MODIFY `DeleteID` int(50) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `deletedcustomers`
--
ALTER TABLE `deletedcustomers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `enrollment`
--
ALTER TABLE `enrollment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `newcustomers`
--
ALTER TABLE `newcustomers`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `NoteID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
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
  MODIFY `PayID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `pricing`
--
ALTER TABLE `pricing`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
