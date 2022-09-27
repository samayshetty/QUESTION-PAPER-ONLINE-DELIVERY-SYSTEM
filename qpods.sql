-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2022 at 10:51 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qpods`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(3) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `password`) VALUES
(1, 'admin', 'qwerty');

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `cid` varchar(32) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phnum` int(10) NOT NULL,
  `c_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`cid`, `cname`, `address`, `phnum`, `c_email`) VALUES
('col101', 'RVITM', 'JP Nagar Bengaluru', 1234567890, 'rvitm@gmail.com'),
('col102', 'KSIT', 'JP Nagar Bengaluru', 987654321, 'ksit@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `emp_data`
--

CREATE TABLE `emp_data` (
  `id` int(10) NOT NULL,
  `fname` varchar(32) NOT NULL,
  `lname` varchar(32) NOT NULL,
  `role` varchar(24) NOT NULL,
  `phnum` int(10) NOT NULL,
  `mail_id` varchar(32) NOT NULL,
  `cid` varchar(32) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emp_data`
--

INSERT INTO `emp_data` (`id`, `fname`, `lname`, `role`, `phnum`, `mail_id`, `cid`, `username`, `password`) VALUES
(1, 'ramesh', 'k', 'principal', 1234567890, 'ramesh@gmail.com', 'col101', 'principal01', 'f2848738c296f4d963b7fc73f84428e6'),
(2, 'suresh', 'm', 'e_dcs', 12345678, 'suresh@gmail.com', 'col102', 'suresh78', 'ce5dbaa2911e2e8d51af63794517bfe8'),
(3, 'xyz', 'abc', 'i_dcs', 2147483647, 'xyz@abc.com', 'col101', 'shreyankwei', '2871d6b1631f0a844fc24270553f3cb8');

-- --------------------------------------------------------

--
-- Table structure for table `q_paper`
--

CREATE TABLE `q_paper` (
  `sub_code` varchar(8) NOT NULL,
  `sub_name` varchar(50) NOT NULL,
  `scheme` varchar(11) NOT NULL,
  `sem` varchar(11) NOT NULL,
  `branch` varchar(5) NOT NULL,
  `qp` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `q_paper`
--

INSERT INTO `q_paper` (`sub_code`, `sub_name`, `scheme`, `sem`, `branch`, `qp`) VALUES
INSERT INTO `q_paper` (`sub_code`, `sub_name`, `scheme`, `sem`, `branch`, `qp`) VALUES
INSERT INTO `q_paper` (`sub_code`, `sub_name`, `scheme`, `sem`, `branch`, `qp`) VALUES

-- --------------------------------------------------------

--
-- Table structure for table `system_access`
--

CREATE TABLE `system_access` (
  `id` int(3) NOT NULL,
  `mac` varchar(20) NOT NULL,
  `login` time NOT NULL,
  `logout` time NOT NULL,
  `access_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_access`
--

INSERT INTO `system_access` (`id`, `mac`, `login`, `logout`, `access_date`) VALUES
(1, '8C-C6-81-17-9F-F7', '13:02:38', '00:00:00', '2022-01-10'),
(2, '8C-C6-81-17-9F-F7', '13:52:08', '00:00:00', '2022-01-10'),
(3, '8C-C6-81-17-9F-F7', '13:59:17', '14:18:17', '2022-01-10'),
(4, '8C-C6-81-17-9F-F7', '14:28:53', '00:00:00', '2022-01-10'),
(5, '8C-C6-81-17-9F-F7', '15:00:56', '00:00:00', '2022-01-10'),
(6, '8C-C6-81-17-9F-F7', '15:17:40', '15:20:29', '2022-01-10');

-- --------------------------------------------------------

--
-- Table structure for table `system_data`
--

CREATE TABLE `system_data` (
  `id` int(2) NOT NULL,
  `system_id` varchar(32) NOT NULL,
  `pwd` varchar(32) NOT NULL,
  `ip_add` varchar(20) NOT NULL,
  `mac_add` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_data`
--

INSERT INTO `system_data` (`id`, `system_id`, `pwd`, `ip_add`, `mac_add`) VALUES
(1, 'sys101', 'qwerty', '192.168.0.151', '8C-C6-81-17-9F-F7');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`cid`),
  ADD UNIQUE KEY `cid` (`cid`);

--
-- Indexes for table `emp_data`
--
ALTER TABLE `emp_data`
  ADD KEY `cid` (`cid`);

--
-- Indexes for table `q_paper`
--
ALTER TABLE `q_paper`
  ADD PRIMARY KEY (`sub_code`);

--
-- Indexes for table `system_access`
--
ALTER TABLE `system_access`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mac` (`mac`);

--
-- Indexes for table `system_data`
--
ALTER TABLE `system_data`
  ADD PRIMARY KEY (`system_id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `mac_add` (`mac_add`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `system_access`
--
ALTER TABLE `system_access`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `system_data`
--
ALTER TABLE `system_data`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `emp_data`
--
ALTER TABLE `emp_data`
  ADD CONSTRAINT `emp_data_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `college` (`cid`);

--
-- Constraints for table `system_access`
--
ALTER TABLE `system_access`
  ADD CONSTRAINT `system_access_ibfk_1` FOREIGN KEY (`mac`) REFERENCES `system_data` (`mac_add`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;