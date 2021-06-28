-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2021 at 10:12 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `robotarm`
--

-- --------------------------------------------------------

--
-- Table structure for table `basestate`
--

CREATE TABLE `basestate` (
  `ID` int(11) NOT NULL,
  `motion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `basestate`
--

INSERT INTO `basestate` (`ID`, `motion`) VALUES
(1, 'right'),
(2, 'stop'),
(3, 'right'),
(4, 'left'),
(5, 'forward'),
(6, 'left'),
(7, 'right');

-- --------------------------------------------------------

--
-- Table structure for table `motors`
--

CREATE TABLE `motors` (
  `ID` int(11) NOT NULL,
  `motor1` float NOT NULL,
  `motor2` float NOT NULL,
  `motor3` float NOT NULL,
  `motor4` float NOT NULL,
  `motor5` float NOT NULL,
  `motor6` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `motors`
--

INSERT INTO `motors` (`ID`, `motor1`, `motor2`, `motor3`, `motor4`, `motor5`, `motor6`) VALUES
(12, 90, 90, 90, 90, 90, 90),
(13, 123, 70, 142, 131, 66, 138),
(14, 90, 90, 90, 90, 90, 90),
(15, 65, 143, 82, 115, 55, 151),
(16, 90, 90, 90, 90, 90, 90),
(17, 90, 90, 90, 90, 90, 90),
(18, 90, 128, 50, 141, 76, 145),
(19, 90, 90, 90, 90, 90, 90),
(20, 26, 172, 76, 131, 79, 131);

-- --------------------------------------------------------

--
-- Table structure for table `robotstate`
--

CREATE TABLE `robotstate` (
  `ID` int(11) NOT NULL,
  `currentstate` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `robotstate`
--

INSERT INTO `robotstate` (`ID`, `currentstate`) VALUES
(15, 'on'),
(16, 'off'),
(17, 'off'),
(19, 'off'),
(20, 'on'),
(21, 'on'),
(22, 'on'),
(23, 'off'),
(24, 'off'),
(25, 'on');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `basestate`
--
ALTER TABLE `basestate`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `motors`
--
ALTER TABLE `motors`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `robotstate`
--
ALTER TABLE `robotstate`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `basestate`
--
ALTER TABLE `basestate`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `motors`
--
ALTER TABLE `motors`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `robotstate`
--
ALTER TABLE `robotstate`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
