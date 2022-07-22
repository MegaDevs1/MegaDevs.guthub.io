-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2022 at 11:03 PM
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
  `Days` int(1) NOT NULL DEFAULT '0',
  `Previllage` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`ID`, `Name`, `Paid`, `RegDate`, `Bundle`, `StartingDate`, `Phone`, `Shift`, `EndingDate`, `Gender`, `username`, `password`, `ActiveStatus`, `Address`, `Custimage`, `Days`, `Previllage`) VALUES
(1, 'suhaib farhan aadan ', '1', '2022-04-13', '1 month', '2022-04-03', 4865664, 'Evening', '2022-05-03', 'male', '', '', 0, 'jijiga yar', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(2, 'yahye abdirahman faarax', '1', '2022-04-16', '1 month', '2022-04-03', 4046165, 'Evening', '2022-05-03', 'male', '', '', 0, 'xidigta', '', 30, 'zaki ozman'),
(3, 'abdirahman mohame shugri', '1', '2022-04-13', '1 month', '2022-04-04', 4123000, 'Evening', '2022-05-04', 'male', '', '', 0, 'goljano', 0x6a2e6a7067, 30, 'zaki ozman'),
(4, 'ahmed yousuf ahmed ', '1', '2022-04-14', '1 month', '2022-04-04', 4485570, 'Evening', '2022-05-04', 'male', '', '', 0, 'koodbuur', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(5, 'siciid yahye madar', '1', '2022-04-14', '1 month', '2022-03-05', 4292385, 'Evening', '2022-05-05', 'male', '', '', 0, 'sh.madar', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(6, 'dayib hussein nour', '1', '2022-04-14', '1 month', '2022-04-06', 7600512, 'Evening', '2022-05-06', 'male', '', '', 0, 'pepsi', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(7, 'ahmed yasin hussein', '1', '2022-04-14', '1 month', '2022-04-06', 4461233, 'Evening', '2022-05-06', 'male', '', '', 0, 'daruuraha', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(8, 'mahad hussein ahmed ', '1', '2022-04-14', '1 month', '2022-04-06', 4037323, 'Evening', '2022-05-06', 'male', '', '', 0, 'goljano', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(9, 'foosi ismai nour', '1', '2022-04-14', '1 month', '2022-04-07', 4877779, 'Evening', '2022-05-07', 'male', '', '', 0, '150', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(10, 'mukhtar maxamed esse', '1', '2022-04-14', '1 month', '2022-04-10', 4143889, 'Evening', '2022-05-10', 'male', '', '', 0, '150', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(11, 'hamze abdirahman ibrahin', '1', '2022-04-14', '1 month', '2022-04-10', 3220469, 'Evening', '2022-05-10', 'male', '', '', 0, '', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(12, 'hamze abdirahman ibrahin', '1', '2022-04-14', '1 month', '2022-04-10', 3220469, 'Evening', '2022-05-10', 'male', '', '', 0, '150', 0x6a2e6a7067, 30, ''),
(13, 'ahmed mohamed jamac', '1', '2022-04-16', '1 month', '2022-04-10', 4411079, 'Evening', '2022-05-10', 'male', '', '', 0, 'goljano', '', 30, ''),
(15, 'shucayb mahamed ahmed ', '1', '2022-04-14', '1 month', '2022-04-10', 4494319, 'Evening', '2022-05-10', 'male', '', '', 0, 'october', '', 30, 'Mawliid Nasir'),
(16, 'ahmed ali', '1', '2022-04-14', '1 month', '2022-04-11', 4087906, 'Evening', '2022-05-11', 'male', '', '', 0, 'shacabka', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(17, 'abdirhaman jamal muuse', '1', '2022-04-14', '1 month', '2022-04-11', 469092, 'Choose Shift', '2022-05-11', 'male', '', '', 0, '150', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(18, 'fahad ahmed kaariye', '1', '2022-04-14', '1 month', '2022-04-11', 4844662, 'Choose Shift', '2022-05-11', 'male', '', '', 0, 'isha boorama', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(19, 'aidarous abdilahi ismail', '1', '2022-04-14', '1 month', '2022-04-11', 4199535, 'Evening', '2022-05-11', 'male', '', '', 0, 'isha boorama', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(20, 'farhan yousuf gaahnuug', '1', '2022-04-14', '1 month', '2022-04-11', 4537016, 'Evening', '2022-05-11', 'male', '', '', 0, '___', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(21, 'mohamed saleban', '1', '2022-04-14', '1 month', '2022-04-10', 4366497, 'Evening', '2022-05-10', 'male', '', '', 0, 'cabaaye', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(22, 'mahamed mustafe mahad', '1', '2022-04-14', '1 month', '2022-04-11', 4050800, 'Evening', '2022-05-11', 'male', '', '', 0, 'sh.madar', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(23, 'ibrahin ahmed abadir ', '1', '2022-04-14', '1 month', '2022-04-11', 4481544, 'Evening', '2022-05-11', 'male', '', '', 0, 'shacabka', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(24, 'aidarous ali osman', '1', '2022-04-14', '1 month', '2022-04-12', 4345591, 'Evening', '2022-05-12', 'male', '', '', 0, 'ahmed guray', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(25, 'abdishakour ali osman', '1', '2022-04-14', '1 month', '2022-04-12', 4449499, 'Evening', '2022-05-12', 'male', '', '', 0, 'ahmed guray', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(26, 'landa mustafe cilmi', '1', '2022-04-16', '1 month', '2022-04-02', 4792285, 'Evening', '2022-05-02', 'female', '', '', 0, 'shidhka', 0x6a2e6a7067, 30, ''),
(27, 'ayaan ahmed liiban', '1', '2022-04-16', '1 month', '2022-04-02', 3869167, 'Evening', '2022-05-02', 'female', '', '', 0, 'non', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(28, 'maariya abdirahman maxamud', '1', '2022-04-16', '1 month', '2022-04-04', 4778806, 'Evening', '2022-05-04', 'female', '', '', 0, 'non', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(29, 'hibo hassan yousuf ', '1', '2022-04-16', '1 month', '2022-04-05', 4405505, 'Evening', '2022-05-05', 'female', '', '', 0, 'jijiga yar', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(30, 'shaadiya ahmed', '1', '2022-04-16', '1 month', '2022-04-10', 0, 'Evening', '2022-05-10', 'female', '', '', 0, 'ahmed dhagax', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(31, 'haboon faisal hassan ', '1', '2022-04-16', '1 month', '2022-04-10', 4070560, 'Evening', '2022-05-10', 'female', '', '', 0, 'sh.madar', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(32, 'hodan rashid ali ', '1', '2022-04-16', '1 month', '2022-04-10', 0, 'Evening', '2022-05-10', 'female', '', '', 0, 'non', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(33, 'rahma hassan maxamud ', '1', '2022-04-16', '1 month', '2022-04-10', 3223091, 'Evening', '2022-05-10', 'female', '', '', 0, '150', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(34, 'mumtaas ahmed ibrahin', '1', '2022-04-16', '1 month', '2022-04-10', 488555, 'Evening', '2022-05-10', 'female', '', '', 0, 'non', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(35, 'hana faarax diiriye', '1', '2022-04-16', '1 month', '2022-04-10', 4121233, 'Evening', '2022-05-10', 'female', '', '', 0, 'non', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(36, 'ugbaad ahmed maxamed', '1', '2022-04-16', '1 month', '2022-04-11', 4476301, 'Evening', '2022-05-11', 'female', '', '', 0, 'shidhka', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(38, 'ayaan ali mohamed', '1', '2022-04-16', '1 month', '2022-04-16', 634129735, 'Evening', '2022-05-16', 'female', '', '', 0, 'jigjiga yar', 0x6a2e6a7067, 30, 'Mawliid Nasir'),
(39, 'aamina ahmed gamadiid', '1', '2022-04-16', '1 month', '2022-04-12', 634788402, 'Evening', '2022-05-12', 'female', '', '', 0, 'jigjiga yar', 0x6a2e6a7067, 30, 'Mawliid Nasir');

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

--
-- Dumping data for table `deletedcustomer`
--

INSERT INTO `deletedcustomer` (`ID`, `Name`, `Paid`, `RegDate`, `Bundle`, `StartingDate`, `Phone`, `Shift`, `EndingDate`, `Gender`, `username`, `password`, `ActiveStatus`, `Address`, `Custimage`, `Days`, `DeletedDate`, `DeleteID`) VALUES
(14, 'ahmed maxamed jama', '1', '2022-04-14', '1 month', '2022-04-10', 4411079, 'Evening', '2022-05-10', 'male', '', '', 0, '', 0x6a2e6a7067, 30, '0000-00-00', 6);

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
(1, 1, 'suhaib farhan aadan ', '2022-04-13', 35, 0, 4865664, 1, 'Zaad', 0, 'Mawliid Nasir'),
(2, 2, 'yahye abdirahman faarax', '2022-04-13', 35, 0, 4046165, 1, 'Zaad', 0, 'zaki ozman'),
(3, 3, 'abdirahman mohame shugri', '2022-04-13', 35, 0, 4123000, 1, 'Zaad', 0, 'zaki ozman'),
(4, 4, 'ahmed yousuf ahmed ', '2022-04-16', 30, 0, 4485570, 1, 'Zaad', 0, 'Mawliid Nasir'),
(5, 5, 'siciid yahye madar', '2022-04-14', 35, 0, 4292385, 1, 'Zaad', 0, 'Mawliid Nasir'),
(6, 6, 'dayib hussein nour', '2022-04-14', 35, 0, 7600512, 1, 'Zaad', 0, 'Mawliid Nasir'),
(7, 7, 'ahmed yasin hussein', '2022-04-14', 35, 0, 4461233, 1, 'Zaad', 0, 'Mawliid Nasir'),
(8, 8, 'mahad hussein ahmed ', '2022-04-14', 35, 0, 4037323, 1, 'Zaad', 0, 'Mawliid Nasir'),
(9, 9, 'foosi ismai nour', '2022-04-14', 35, 0, 4877779, 1, 'Select Payment Type', 0, 'Mawliid Nasir'),
(10, 10, 'mukhtar maxamed esse', '2022-04-14', 35, 0, 4143889, 1, 'Zaad', 0, 'Mawliid Nasir'),
(11, 11, 'hamze abdirahman ibrahin', '2022-04-14', 35, 0, 3220469, 1, 'Select Payment Type', 0, 'Mawliid Nasir'),
(13, 14, 'ahmed maxamed jama', '2022-04-14', 35, 0, 4411079, 1, 'Zaad', 0, 'Mawliid Nasir'),
(14, 15, 'shucayb mahamed ahmed ', '2022-04-14', 35, 0, 4494319, 1, 'Zaad', 0, 'Mawliid Nasir'),
(15, 16, 'ahmed ali', '2022-04-14', 35, 0, 4087906, 1, 'Zaad', 0, 'Mawliid Nasir'),
(17, 17, 'abdirhaman jamal muuse', '2022-04-14', 30, 0, 469092, 1, 'Zaad', 0, 'Mawliid Nasir'),
(18, 18, 'fahad ahmed kaariye', '2022-04-14', 30, 0, 4844662, 1, 'Zaad', 0, 'Mawliid Nasir'),
(19, 19, 'aidarous abdilahi ismail', '2022-04-14', 30, 0, 4199535, 1, 'Zaad', 0, 'Mawliid Nasir'),
(20, 20, 'farhan yousuf gaahnuug', '2022-04-14', 30, 0, 4537016, 1, 'Zaad', 0, 'Mawliid Nasir'),
(21, 21, 'mohamed saleban', '2022-04-14', 35, 0, 4366497, 1, 'Zaad', 0, 'Mawliid Nasir'),
(23, 22, 'mahamed mustafe mahad', '2022-04-14', 35, 0, 4050800, 1, 'Zaad', 0, 'Mawliid Nasir'),
(24, 23, 'ibrahin ahmed abadir ', '2022-04-14', 35, 0, 4481544, 1, 'Zaad', 0, 'Mawliid Nasir'),
(25, 24, 'aidarous ali osman', '2022-04-14', 30, 0, 435591, 1, 'Zaad', 0, 'Mawliid Nasir'),
(26, 25, 'abdishakour ali osman', '2022-04-14', 30, 0, 4449499, 1, 'Zaad', 0, 'Mawliid Nasir'),
(27, 26, 'landa mustafe cilmi', '2022-04-16', 25, 0, 4792285, 1, 'Zaad', 0, 'Mawliid Nasir'),
(28, 27, 'ayaan ahmed liiban', '2022-04-16', 25, 0, 3869167, 1, 'Zaad', 0, 'Mawliid Nasir'),
(29, 28, 'maariya abdirahman maxamud', '2022-04-16', 25, 0, 4778806, 1, 'Zaad', 0, 'Mawliid Nasir'),
(30, 29, 'hibo hassan yousuf ', '2022-04-16', 25, 0, 4405505, 1, 'Zaad', 0, 'Mawliid Nasir'),
(31, 30, 'shaadiya ahmed', '2022-04-16', 25, 0, 0, 1, 'Zaad', 0, 'Mawliid Nasir'),
(32, 31, 'haboon faisal hassan ', '2022-04-16', 25, 0, 4070560, 1, 'Zaad', 0, 'Mawliid Nasir'),
(33, 32, 'hodan rashid ali ', '2022-04-16', 25, 0, 0, 1, 'Zaad', 0, 'Mawliid Nasir'),
(34, 33, 'rahma hassan maxamud ', '2022-04-16', 25, 0, 3223091, 1, 'Zaad', 0, 'Mawliid Nasir'),
(35, 34, 'mumtaas ahmed ibrahin', '2022-04-16', 25, 0, 488555, 1, 'Zaad', 0, 'Mawliid Nasir'),
(36, 35, 'hana faarax diiriye', '2022-04-16', 25, 0, 4121233, 1, 'Zaad', 0, 'Mawliid Nasir'),
(37, 36, 'ugbaad ahmed maxamed', '2022-04-16', 25, 0, 4476301, 1, 'Zaad', 0, 'Mawliid Nasir'),
(38, 12, 'hamze abdirahman ibrahin', '2022-04-16', 35, 0, 634494319, 1, 'Zaad', 0, 'zaki ozman'),
(41, 38, 'ayaan ali mohamed', '2022-04-16', 25, 0, 634129735, 1, 'Zaad', 0, ''),
(42, 39, 'aamina ahmed gamadiid', '2022-04-16', 25, 0, 634788402, 1, 'Zaad', 0, ''),
(43, 2, 'yahye abdirahman faarax', '2022-04-16', 35, 0, 634046165, 1, 'Zaad', 0, 'Mawliid Nasir');

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
  `Name` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `userType` varchar(7) NOT NULL,
  `Status` tinyint(1) NOT NULL,
  `UserProfile` blob NOT NULL,
  `shift` varchar(50) NOT NULL,
  `UserImage` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `Name`, `Username`, `Email`, `Phone`, `Password`, `userType`, `Status`, `UserProfile`, `shift`, `UserImage`) VALUES
(1, 'zaki ozman', 'zaki', 'zaki@gmail.com', '063613873', 'zaki', 'admin', 1, '', 'evening', ''),
(2, 'Mawliid Nasir', 'Mawlid', 'mawlid@gmail.com', '0634055215', 'Mawlid2', 'user', 1, '', 'morning', ''),
(3, 'samiir axmed', 'samiir', 'samiir@gmail.com', '06336067439', 'samiir', 'admin', 0, '', 'No', '');

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
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
  MODIFY `DeleteID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
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
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
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
  MODIFY `PayID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
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
