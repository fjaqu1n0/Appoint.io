-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2021 at 07:45 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_appointment`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appointment`
--

CREATE TABLE `tbl_appointment` (
  `id` int(11) NOT NULL,
  `slot_day` varchar(11) DEFAULT NULL,
  `slot_month` varchar(20) DEFAULT NULL,
  `slot_year` varchar(11) DEFAULT NULL,
  `slot_time` varchar(10) DEFAULT NULL,
  `customer_comment` varchar(300) DEFAULT NULL,
  `queue_number` int(11) DEFAULT NULL,
  `service_type` varchar(30) DEFAULT NULL,
  `appointment_status` varchar(30) DEFAULT NULL,
  `account_number` char(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_appointment`
--

INSERT INTO `tbl_appointment` (`id`, `slot_day`, `slot_month`, `slot_year`, `slot_time`, `customer_comment`, `queue_number`, `service_type`, `appointment_status`, `account_number`) VALUES
(36, '28', 'Mar', '2021', '11', NULL, NULL, NULL, NULL, NULL),
(37, '30', 'Mar', '2021', '11', NULL, NULL, NULL, NULL, NULL),
(38, '30', 'Mar', '2021', '11', NULL, NULL, NULL, NULL, NULL),
(40, '30', 'Mar', '2021', '11', NULL, NULL, NULL, NULL, NULL),
(41, '30', 'Mar', '2021', '11', NULL, NULL, NULL, NULL, NULL),
(42, '30', 'Mar', '2021', '11', NULL, NULL, NULL, NULL, NULL),
(43, '30', 'Mar', '2021', '11', NULL, NULL, NULL, NULL, NULL),
(44, '30', 'Mar', '2021', '1', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bankaccount`
--

CREATE TABLE `tbl_bankaccount` (
  `account_number` char(12) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `middle_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_bankaccount`
--

INSERT INTO `tbl_bankaccount` (`account_number`, `first_name`, `middle_name`, `last_name`) VALUES
('000000000000', 'fName', 'mName', 'lName'),
('012345678910', 'John', 'Smith', 'Doe');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_new_accounts`
--

CREATE TABLE `tbl_new_accounts` (
  `id` int(11) NOT NULL,
  `fName` varchar(50) DEFAULT NULL,
  `mName` varchar(30) DEFAULT NULL,
  `lName` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `contact_number` varchar(30) DEFAULT NULL,
  `approval_status` varchar(10) DEFAULT NULL,
  `status_comment` varchar(50) DEFAULT NULL,
  `slot_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `user_status` int(11) DEFAULT 0,
  `admin` int(11) DEFAULT 0,
  `account_number` char(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`username`, `password`, `email`, `user_status`, `admin`, `account_number`) VALUES
('trial', '123456789', 'trial@gmail.com', 0, 0, '012345678910'),
('user', '123456789', 'new@gmail.com', 0, 0, '000000000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_appointment`
--
ALTER TABLE `tbl_appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bankaccount`
--
ALTER TABLE `tbl_bankaccount`
  ADD PRIMARY KEY (`account_number`);

--
-- Indexes for table `tbl_new_accounts`
--
ALTER TABLE `tbl_new_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_appointment`
--
ALTER TABLE `tbl_appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tbl_new_accounts`
--
ALTER TABLE `tbl_new_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
