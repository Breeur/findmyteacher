-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 03, 2020 at 01:54 PM
-- Server version: 5.6.47-log
-- PHP Version: 7.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `findmyteacher`
--

-- --------------------------------------------------------

--
-- Table structure for table `parentlogin`
--

CREATE TABLE `parentlogin` (
  `pid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `cr_date` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parentlogin`
--

INSERT INTO `parentlogin` (`pid`, `name`, `phone`, `email`, `password`, `cr_date`, `status`, `timestamp`) VALUES
(1, 'wasim', '8698596847', 'pate@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-06-02 18:28:18', 1, '2020-06-02 12:58:18'),
(2, 'Wasim', '0987654321', 'ash@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2020-06-02 13:48:25', 1, '2020-06-02 13:48:25');

-- --------------------------------------------------------

--
-- Table structure for table `tutorlogin`
--

CREATE TABLE `tutorlogin` (
  `tid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `cr_date` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tutorlogin`
--

INSERT INTO `tutorlogin` (`tid`, `name`, `phone`, `email`, `password`, `cr_date`, `status`, `timestamp`) VALUES
(1, 'tname', '957985679586', 'temail@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2020-06-02 19:02:34', 1, '2020-06-02 13:32:34'),
(2, 'ash', '0987654321', 'ashwini@gmail.com', '25f9e794323b453885f5181f1b624d0b', '2020-06-02 13:49:42', 1, '2020-06-02 13:49:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `parentlogin`
--
ALTER TABLE `parentlogin`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `tutorlogin`
--
ALTER TABLE `tutorlogin`
  ADD PRIMARY KEY (`tid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `parentlogin`
--
ALTER TABLE `parentlogin`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tutorlogin`
--
ALTER TABLE `tutorlogin`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
