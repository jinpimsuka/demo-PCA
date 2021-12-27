-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2021 at 03:25 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `primary_care`
--

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `ID_NUM` int(11) NOT NULL,
  `CID` bigint(255) NOT NULL,
  `HN` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Prename` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `f_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `l_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `HouseNo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Moo` int(10) NOT NULL,
  `Village` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `PCC` int(20) NOT NULL,
  `Amphur` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `TypeArea` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `Tel` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `birhtdate` date NOT NULL,
  `status` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `deaddate` date NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `Vid` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`ID_NUM`, `CID`, `HN`, `Prename`, `f_name`, `l_name`, `HouseNo`, `Moo`, `Village`, `PCC`, `Amphur`, `TypeArea`, `Tel`, `birhtdate`, `status`, `deaddate`, `added_date`, `Vid`) VALUES
(15, 78564754687986875, 'hgyg9-77665', 'เด็กชาย', 'jijji', 'bhbhbhb', '108/1', 4, '', 0, '', '', '', '0000-00-00', '', '0000-00-00', '2021-12-26 12:50:27', 0),
(16, 78564754687986875, 'hgyg9-77665', 'เด็กชาย', 'jijji', 'bhbhbhb', '108/1', 4, 'ธารน้ำกรณ์', 1, 'เมืองเชียงราย', '', '', '0000-00-00', '', '0000-00-00', '2021-12-26 12:52:13', 0),
(17, 78564754687986875, 'hgyg9-77665', 'เด็กชาย', 'jijji', 'bhbhbhb', '108/1', 4, 'ธารน้ำกรณ์', 1, 'เมืองเชียงราย', '1: มีชื่ออยู่ตามทะเบียนในเขตรับผิดชอบและอยู่จริง', '0887566871', '2021-12-31', '', '0000-00-00', '2021-12-26 12:54:49', 0),
(18, 78564754687986875, 'hgyg9-77665', 'เด็กชาย', 'jijji', 'bhbhbhb', '108/1', 4, 'ธารน้ำกรณ์', 1, 'เมืองเชียงราย', '1: มีชื่ออยู่ตามทะเบียนในเขตรับผิดชอบและอยู่จริง', '0887566871', '2021-12-31', 'เสียชีวิต', '2021-12-03', '2021-12-26 12:56:40', 0),
(19, 78564754687986875, 'hgyg9-77665', 'เด็กชาย', 'jijji', 'bhbhbhb', '108/1', 4, 'ธารน้ำกรณ์', 1, 'เมืองเชียงราย', '1: มีชื่ออยู่ตามทะเบียนในเขตรับผิดชอบและอยู่จริง', '0887566871', '2021-12-31', 'เสียชีวิต', '2021-12-03', '2021-12-26 12:58:41', 0),
(20, 4563636, '', 'เด็กชาย', 'jijji', '5636drghbdf', 'd243', 2, 'ดอยพระบาท', 2, 'รอบเวียง', '', '06666666666', '2021-12-24', 'ยังมีชีวิตอยู่', '0000-00-00', '2021-12-26 13:17:00', 0),
(21, 0, '', 'null', 'null', 'null', 'null', 0, 'null', 0, 'null', '', 'null', '0000-00-00', 'null', '0000-00-00', '2021-12-26 13:37:31', 0),
(22, 254324, '', 'เด็กชาย', 'xdfbvggfjmktg', 'ddd', '108/1', 23, 'ดอยพระบาท', 1, 'เวียง', '', '33333333', '2021-12-18', 'ยังมีชีวิตอยู่', '0000-00-00', '2021-12-26 13:40:46', 0),
(23, 4564, '', 'นางสาว', 'gfhgfh', 'kkkkkkkkk', '108/1', 14, 'ธารน้ำกรณ์', 4, 'แม่ข้าวต้ม', '', '66667777', '2030-05-31', 'เสียชีวิต', '0000-00-00', '2021-12-26 13:43:03', 0),
(24, 0, '', 'null', 'null', 'null', 'null', 0, 'null', 0, 'null', '', 'null', '0000-00-00', 'null', '0000-00-00', '2021-12-26 13:52:25', 0);

-- --------------------------------------------------------

--
-- Table structure for table `usersdata`
--

CREATE TABLE `usersdata` (
  `id` int(11) NOT NULL,
  `name` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `education` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `usersdata`
--

INSERT INTO `usersdata` (`id`, `name`, `email`, `education`, `gender`, `added_date`, `date`) VALUES
(37, 'null', 'null', '2', 'null', '2021-12-26 00:45:00', NULL),
(39, 'null', 'null', '2021-12-16', 'null', '2021-12-26 01:02:13', NULL),
(40, 'null', 'null', '2021-12-17', 'null', '2021-12-26 01:08:28', NULL),
(41, 'null', 'null', 'null', 'null', '2021-12-26 01:10:47', NULL),
(42, 'null', 'null', 'null', 'null', '2021-12-26 05:19:36', '2021-12-31'),
(43, 'undefined', 'undefined', 'undefined', 'undefined', '2021-12-26 10:07:48', '0000-00-00'),
(44, 'undefined', 'undefined', 'undefined', 'undefined', '2021-12-26 10:07:50', '0000-00-00'),
(45, 'null', 'null', 'null', 'null', '2021-12-26 11:07:39', '0000-00-00'),
(46, 'null', NULL, NULL, NULL, '2021-12-26 11:08:35', NULL),
(47, 'dfvsdvfssvsdv', NULL, NULL, NULL, '2021-12-26 11:08:46', NULL),
(48, 'null', NULL, NULL, NULL, '2021-12-26 11:13:42', NULL),
(49, 'dddd', NULL, NULL, NULL, '2021-12-26 11:13:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_fmcrh`
--

CREATE TABLE `users_fmcrh` (
  `id` int(100) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` int(100) NOT NULL,
  `f_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `l_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users_fmcrh`
--

INSERT INTO `users_fmcrh` (`id`, `username`, `password`, `f_name`, `l_name`, `added_date`) VALUES
(1, 'fmcrh01', 1015, 'NATCHAYA', 'MONGKON', '2021-12-24 02:27:54'),
(2, 'fmcrh01', 1048, 'RANCHANA ', 'WONGTHONG', '2021-12-24 02:27:54');

-- --------------------------------------------------------

--
-- Table structure for table `users_vhv`
--

CREATE TABLE `users_vhv` (
  `id` int(100) NOT NULL,
  `username` varchar(99) COLLATE utf8_unicode_ci NOT NULL,
  `f_name` varchar(99) COLLATE utf8_unicode_ci NOT NULL,
  `l_name` varchar(99) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `password` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users_vhv`
--

INSERT INTO `users_vhv` (`id`, `username`, `f_name`, `l_name`, `added_date`, `password`) VALUES
(1, 'vhv01', 'JINTANA', 'PIMSUKA', '2021-12-22 02:43:56', 1006);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`ID_NUM`,`CID`);

--
-- Indexes for table `usersdata`
--
ALTER TABLE `usersdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_fmcrh`
--
ALTER TABLE `users_fmcrh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_vhv`
--
ALTER TABLE `users_vhv`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `ID_NUM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `usersdata`
--
ALTER TABLE `usersdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `users_fmcrh`
--
ALTER TABLE `users_fmcrh`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_vhv`
--
ALTER TABLE `users_vhv`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
