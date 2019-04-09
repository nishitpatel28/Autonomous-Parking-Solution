-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 09, 2019 at 06:44 AM
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
-- Table structure for table `park_log`
--

CREATE TABLE `park_log` (
  `p_sr_no` int(255) NOT NULL,
  `v_no` varchar(255) NOT NULL,
  `maker` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `body_color` varchar(255) NOT NULL,
  `v_type` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `start_time` varchar(255) NOT NULL,
  `end_time` varchar(255) NOT NULL,
  `total_time` varchar(255) NOT NULL,
  `total_pay` varchar(255) NOT NULL,
  `pay_type` varchar(255) NOT NULL,
  `flag` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `park_log`
--

INSERT INTO `park_log` (`p_sr_no`, `v_no`, `maker`, `model`, `body_color`, `v_type`, `location`, `start_time`, `end_time`, `total_time`, `total_pay`, `pay_type`, `flag`) VALUES
(1, 'GJ05JE2985', 'hyundai ', 'hyundai_i20', 'silver-gray', 'sedan-wagon', 'A1', '2019/02/20 10:19:59', '2019/02/20 10:39:59', '30', '100', 'paytm', 0),
(2, 'gj18da9967', 'xx', 'yy', 'bb', 'ff', 'A2', 'time', '', '', '', '', 0),
(3, 'gj18da9967', 'xx', 'yy', 'bb', 'ff', 'A2', 'time', '', '', '', '', 0),
(4, 'gj18da9967', 'xx', 'yy', 'bb', 'ff', 'A2', 'time', '', '', '', '', 0),
(5, 'DL7CQ1939 Region: Make: hyundai Model: hyundai_santa-fe Body Type: suv-standard Color: black\r\n', '', '\r\n', '', '\r\n', 'A2', '2019/04/06 18:23:22', '', '', '', '', 0),
(6, 'DL7CQ1939 Region: Make: hyundai Model: hyundai_santa-fe Body Type: suv-standard Color: black\r\n', '', '\r\n', '', '\r\n', 'A2', '2019/04/06 18:27:27', '', '', '', '', 0),
(7, 'GJ06FQ3526<br/>', '', 'normal<br/>', '', 'sedan-compact<br/>', 'A2', '2019/04/06 19:01:18', '', '', '', '', 0),
(8, 'GJ06FQ3526<br/>', '', 'normal<br/>', '', 'sedan-compact<br/>', 'A2', '2019/04/06 19:01:19', '', '', '', '', 0),
(9, 'GJ06FQ3526<br/>', '', 'normal<br/>', '', 'sedan-compact<br/>', 'A2', '2019/04/06 19:02:11', '', '', '', '', 0),
(10, 'GJ06FQ3526<br/>', '', 'normal<br/>', '', 'sedan-compact<br/>', 'A2', '2019/04/06 19:05:05', '', '', '', '', 0),
(11, 'DL7CQ1939<br/>', '', 'normal<br/>', '', 'truck-standard<br/>', 'A2', '2019/04/06 19:11:10', '', '', '', '', 0),
(12, 'DL7CQ1939<br/>', '', 'normal<br/>', '', 'truck-standard<br/>', 'A2', '2019/04/06 19:11:11', '', '', '', '', 0),
(13, 'GJ18BF0151<br/>', '', 'normal<br/>', '', 'suv-standard<br/>', 'A2', '2019/04/06 19:15:34', '', '', '', '', 0),
(14, 'GJ18BF0151<br/>', '', 'normal<br/>', '', 'suv-standard<br/>', 'A2', '2019/04/06 19:15:36', '', '', '', '', 0),
(15, 'GJ18BD3444<br/>', '', 'normal<br/>', '', 'twowheel<br/>', 'A2', '2019/04/06 19:26:51', '', '', '', '', 0),
(16, 'GJ01KR7562<br/>', '', 'normal<br/>', '', 'sedan-compact<br/>', 'A2', '2019/04/06 19:37:12', '', '', '', '', 0),
(17, 'GJ01KR7562<br/>', '', 'normal<br/>', '', 'sedan-compact<br/>', 'A2', '2019/04/06 19:37:15', '', '', '', '', 0),
(18, 'AP28AM7268<br/>', '', 'normal<br/>', '', 'van-mini<br/>', 'A2', '2019/04/06 19:38:32', '', '', '', '', 0),
(19, 'AP28AM7268<br/>', '', 'normal<br/>', '', 'van-mini<br/>', 'A2', '2019/04/06 19:38:33', '', '', '', '', 0),
(20, 'GJ18BD3444<br/>', '', 'normal<br/>', '', 'twowheel<br/>', 'A2', '2019/04/06 19:42:19', '', '', '', '', 0),
(21, 'GJ18BD3444<br/>', '', 'normal<br/>', '', 'twowheel<br/>', 'A2', '2019/04/06 19:42:25', '', '', '', '', 0),
(22, 'GJ18BD3444<br/>', '', 'normal<br/>', '', 'twowheel<br/>', 'A2', '2019/04/06 19:42:29', '', '', '', '', 0),
(23, 'GJ18BD3444<br/>', '', 'normal<br/>', '', 'twowheel<br/>', 'A2', '2019/04/06 21:04:49', '', '', '', '', 0),
(24, '<br/>', '', 'normal<br/>', '', 'sedan-compact<br/>', 'A2', '2019/04/06 22:21:07', '', '', '', '', 0),
(25, '<br/>', '', 'normal<br/>', '', 'sedan-compact<br/>', 'A2', '2019/04/06 22:23:43', '', '', '', '', 0),
(26, '<br/>', '', 'normal<br/>', '', 'sedan-compact<br/>', 'A2', '2019/04/06 22:31:14', '', '', '', '', 0),
(27, '<br/>', '', 'normal<br/>', '', 'sedan-compact<br/>', 'A2', '2019/04/06 22:32:50', '', '', '', '', 0),
(28, '<br/>', '', 'normal<br/>', '', 'sedan-compact<br/>', 'A2', '2019/04/06 22:34:26', '', '', '', '', 0),
(29, 'GH18BH69253', '', 'normal<br/>', '', 'sedan<br/>', 'A1', '2019/04/06 22:50:30', '', '', '', '', 0),
(30, 'GH18BH6923', '', 'normal<br/>', '', 'sedan<br/>', 'A1', '2019/04/06 22:50:45', '', '', '', '', 0),
(31, 'GH18BH6923', '', 'normal', '', 'sedan', 'A1', '2019/04/06 19:59:29', '', '', '', '', 0),
(32, 'GH18BH6923', '', 'normal', '', 'sedan', 'A1', '2019/04/06 20:00:06', '', '', '', '', 0),
(33, 'GH18BH6923', '', 'normal', '', 'sedan', 'A1', '2019/04/06 20:02:17', '', '', '', '', 0),
(34, 'GH18BH6923', '', 'normal', '', 'sedan', 'A1', '2019/04/06 20:03:54', '', '', '', '', 0),
(35, 'GH18BH6923', '', 'normal', '', 'sedan', 'A1', '04/06/2019 08:08:21 pm', '', '', '', '', 0),
(36, 'GH18BH6923', '', 'normal', '', 'sedan', 'A1', '2019-04-06 20:09:17', '', '', '', '', 0),
(37, 'GH18BH6923', '', 'normal', '', 'sedan', 'A1', '2019-04-06 20:13:00', '', '', '', '', 0),
(38, 'GH18BH6923', '', 'normal', '', 'sedan', 'A1', '1554558288', '', '', '', '', 0),
(39, 'GH18BH6923', '', 'normal', '', 'sedan', 'A1', '2019-04-07 01:52:06', '', '', '', '', 0),
(40, 'GH18BH6923', '', 'normal', '', 'sedan', 'A1', '2019-04-07 06:15:46', '', '', '', '', 0),
(41, 'GH18BH6923', '', 'normal', '', 'sedan', 'A1', '2019-04-07 06:16:34', '', '', '', '', 0),
(42, 'GH18BH6923', '', 'normal', '', 'sedan', 'A1', '2019-04-07 06:19:11', '', '', '', '', 0),
(43, 'GH18BH6923', '', 'normal', '', 'sedan', 'A1', '2019-04-07 06:25:59', '', '', '', '', 0),
(44, 'GH18BH6923', '', 'normal', '', 'sedan', 'A1', '2019-04-07 06:27:09', '', '', '', '', 0),
(45, 'GH18BH6923', '', 'normal', '', 'sedan', 'A1', '2019-04-07 06:31:38', '', '', '', '', 0),
(46, 'GH18BH6923', '', 'normal', '', 'sedan', 'A1', '2019-04-07 06:34:08', '', '', '', '', 0),
(47, 'GJ18BD3444', '', 'normal', '', 'twowheel', 'A1', '2019-04-07 06:34:56', '', '', '', '', 0),
(48, 'GH18BH6923', '', 'normal', '', 'sedan', 'A1', '2019-04-07 06:37:41', '', '', '', '', 0),
(49, 'GJ01HL0404', '', 'normal', '', 'sedan-compact', 'A1', '2019-04-07 08:17:20', '', '', '', '', 0),
(50, 'GJ01HL0404', '', 'normal', '', 'sedan-compact', 'A1', '2019-04-07 08:17:23', '', '', '', '', 0),
(51, 'GJ21W9401', '', 'normal', '', 'van-full', 'A1', '2019-04-07 08:24:06', '', '', '', '', 0),
(52, 'GJ21W9401', '', 'normal', '', 'van-full', 'A1', '2019-04-07 08:24:07', '', '', '', '', 0),
(53, 'GJ03KH0450', '', 'normal', '', 'sedan-compact', 'A1', '2019-04-07 08:26:16', '', '', '', '', 0),
(54, 'GJ03KH0450', '', 'normal', '', 'sedan-compact', 'A1', '2019-04-07 08:26:17', '', '', '', '', 0),
(55, 'GJ05RF4185', '', 'normal', '', 'sedan-compact', 'A1', '2019-04-07 08:28:34', '', '', '', '', 0),
(56, 'GJ05RF4185', '', 'normal', '', 'sedan-compact', 'A1', '2019-04-07 08:28:35', '', '', '', '', 0),
(57, 'GJ06LB0573', '', 'normal', '', 'sedan-compact', 'A1', '2019-04-07 08:29:38', '', '', '', '', 0),
(58, 'GJ06LB0573', '', 'normal', '', 'sedan-compact', 'A1', '2019-04-07 08:29:39', '', '', '', '', 0),
(59, 'GJ03BV2303', '', 'normal', '', 'suv-standard', 'A1', '2019-04-07 08:34:14', '', '', '', '', 0),
(60, 'GJ03BV2303', '', 'normal', '', 'suv-standard', 'A1', '2019-04-07 08:34:15', '', '', '', '', 0),
(61, 'GJ03BV2303', '', 'normal', '', 'suv-standard', 'A1', '2019-04-07 08:57:49', '', '', '', '', 0),
(62, '', '', 'normal', '', 'sedan-compact', 'A1', '2019-04-07 10:19:42', '', '', '', '', 0),
(63, '', '', 'normal', '', 'sedan-compact', 'A1', '2019-04-07 10:20:16', '', '', '', '', 0),
(64, '', '', 'normal', '', 'sedan-compact', 'A1', '2019-04-07 10:25:29', '', '', '', '', 0),
(65, '', '', 'normal', '', 'sedan-compact', 'A1', '2019-04-07 10:26:54', '', '', '', '', 0),
(66, 'GJ18BD3444', '', 'normal', '', 'twowheel', 'A1', '2019-04-07 10:28:03', '', '', '', '', 0),
(67, '', '', 'normal', '', 'sedan-compact', 'A4', '2019-04-07 10:28:28', '', '', '', '', 0),
(68, 'GJ27BS0516', '', 'normal', '', 'sedan-compact', 'A3', '2019-04-07 10:43:22', '', '', '', '', 0),
(69, 'GJ27BS0516', '', 'normal', '', 'sedan-compact', 'A1', '2019-04-07 10:43:29', '', '', '', '', 0),
(70, 'GJ27BS0516', '', 'normal', '', 'sedan-compact', 'A1', '2019-04-07 10:44:34', '', '', '', '', 0),
(71, 'GJ27BS0516', '', 'normal', '', 'sedan-compact', 'A1', '2019-04-07 10:44:37', '', '', '', '', 0),
(72, 'GJ18BK3028', '', 'normal', '', 'suv-standard', 'A4', '2019-04-07 10:48:04', '', '', '', '', 0),
(73, 'GJ18BK3028', '', 'normal', '', 'suv-standard', 'A4', '2019-04-07 10:48:05', '', '', '', '', 0),
(74, 'GJ18BD3444', '', 'normal', '', 'twowheel', 'A1', '2019-04-07 10:53:33', '', '', '', '', 0),
(75, 'GJ18BD3444', '', 'normal', '', 'twowheel', 'A4', '2019-04-07 11:54:24', '', '', '', '', 0),
(76, 'GJ18BD3444', '', 'normal', '', 'twowheel', 'A4', '2019-04-07 12:00:55', '', '', '', '', 0),
(77, 'GJ18BD3444', '', 'normal', '', 'twowheel', 'A4', '2019-04-07 12:01:57', '', '', '', '', 0),
(78, 'GJ18BD3444', '', 'normal', '', 'twowheel', 'A4', '2019-04-07 12:01:59', '', '', '', '', 0),
(79, 'GJ18BD3444', '', 'normal', '', 'twowheel', 'A1', '2019-04-07 14:19:42', '', '', '', '', 0),
(80, 'GJ18BD3444', '', 'normal', '', 'twowheel', 'A3', '2019-04-07 21:15:32', '', '', '', '', 0),
(81, 'GJ18BD3444', '', 'normal', '', 'twowheel', 'A3', '2019-04-09 10:45:05', '', '', '', '', 0),
(82, 'GJ18BD3444', '', 'normal', '', 'twowheel', 'A3', '2019-04-09 10:50:49', '', '', '', '', 0),
(83, 'GJ18BD3444', '', 'normal', '', 'twowheel', 'A3', '2019-04-09 11:50:14', '', '', '', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `park_log`
--
ALTER TABLE `park_log`
  ADD PRIMARY KEY (`p_sr_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `park_log`
--
ALTER TABLE `park_log`
  MODIFY `p_sr_no` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
