-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 09, 2019 at 06:45 AM
-- Server version: 5.6.41-84.1-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `saledu_gih2019`
--

-- --------------------------------------------------------

--
-- Table structure for table `park_space`
--

CREATE TABLE `park_space` (
  `sp_sr_no` int(255) NOT NULL,
  `spot` varchar(255) NOT NULL,
  `is_active` int(255) NOT NULL,
  `type` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `park_space`
--

INSERT INTO `park_space` (`sp_sr_no`, `spot`, `is_active`, `type`) VALUES
(1, 'A1', 1, 4),
(2, 'A2', 1, 4),
(3, 'A3', 0, 4),
(4, 'A4', 0, 4),
(5, 'B1', 0, 4),
(6, 'B2', 0, 4),
(7, 'B3', 0, 4),
(8, 'B4', 0, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `park_space`
--
ALTER TABLE `park_space`
  ADD PRIMARY KEY (`sp_sr_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `park_space`
--
ALTER TABLE `park_space`
  MODIFY `sp_sr_no` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
