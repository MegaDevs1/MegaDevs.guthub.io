-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2022 at 08:10 AM
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
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `ID` int(100) NOT NULL,
  `Fname` varchar(50) NOT NULL,
  `Lname` varchar(100) NOT NULL,
  `paid` varchar(50) NOT NULL DEFAULT 'not paid',
  `regDate` date NOT NULL,
  `DaysTraining` varchar(50) NOT NULL DEFAULT '0',
  `Phone` int(15) NOT NULL,
  `Shift` varchar(50) NOT NULL,
  `LeftDays` int(50) NOT NULL DEFAULT '0',
  `Gender` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`ID`, `Fname`, `Lname`, `paid`, `regDate`, `DaysTraining`, `Phone`, `Shift`, `LeftDays`, `Gender`) VALUES
(2, 'samiir axmed', '', 'Paid', '2022-02-13', 3, 22222222, 'morning', 1, 'male'),
(6, 'ali farax', '', 'Paid', '2022-02-16', 30, 63698232, 'morning', 30, 'male'),
(7, 'zaki', '', 'not Paid', '2022-03-06', 30, 988666463, 'morning', 30, 'male'),
(8, 'zaki', 'ozman', 'not paid', '2022-03-08', 20, 63546784, 'morning', 20, 'male'),
(9, 'ali', 'farx', 'not paid', '2022-03-08', 50, 34567894, 'Morning', 50, 'male'),
(10, 'mohamed', 'faerx', 'Paid', '2022-03-08', 30, 34567894, 'Morning', 30, 'male');
(12, 'mohamed', 'faerx', 'Paid', '2022-03-08', 30, 34567894, 'Morning', 30, 'male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
