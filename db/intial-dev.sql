-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2016 at 09:14 PM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nodedev`
--

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `id` int(11) NOT NULL,
  `vetId` int(11) NOT NULL,
  `firstName` varchar(64) NOT NULL,
  `lastName` varchar(64) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`id`, `vetId`, `firstName`, `lastName`, `address`) VALUES
(1, 1, 'Andy', 'Adams', '1234 Test Road'),
(2, 1, 'Brenda', 'Barry', '2345 Test Road');

-- --------------------------------------------------------

--
-- Table structure for table `pet`
--

CREATE TABLE `pet` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `species` varchar(64) NOT NULL,
  `breed` varchar(64) NOT NULL,
  `isMale` tinyint(4) NOT NULL,
  `isAlive` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pet`
--

INSERT INTO `pet` (`id`, `ownerId`, `name`, `species`, `breed`, `isMale`, `isAlive`) VALUES
(1, 1, 'Woofers', 'Dog', 'Hound', 1, 1),
(2, 1, 'Whiskers', 'Cat', '', 0, 1),
(3, 2, 'Frankie', 'Dog', 'Pit Bull', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vet`
--

CREATE TABLE `vet` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `owner` varchar(128) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vet`
--

INSERT INTO `vet` (`id`, `name`, `owner`, `address`) VALUES
(1, 'ABCD Veterinary Clinic', 'Dr. AA Milne', 'Louisville, KY');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pet`
--
ALTER TABLE `pet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vet`
--
ALTER TABLE `vet`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `owner`
--
ALTER TABLE `owner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pet`
--
ALTER TABLE `pet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `vet`
--
ALTER TABLE `vet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
