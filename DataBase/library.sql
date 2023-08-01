-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2023 at 03:17 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `isID` int(11) NOT NULL,
  `CutomerName` varchar(50) DEFAULT NULL,
  `CardNumber` varchar(50) DEFAULT NULL,
  `Contact` varchar(15) NOT NULL,
  `Day` varchar(5) NOT NULL,
  `Month` varchar(5) NOT NULL,
  `Year` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`isID`, `CutomerName`, `CardNumber`, `Contact`, `Day`, `Month`, `Year`) VALUES
(8, 'Kasun', '123-654-5678', '784567234', '01', '01', '2023'),
(9, 'Vajira', '354-654-8765', '785633234', '09', '11', '2023');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `SId` int(11) NOT NULL,
  `Customer_Name` varchar(50) DEFAULT NULL,
  `Contact` varchar(15) DEFAULT NULL,
  `Password` varchar(40) DEFAULT NULL,
  `Email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`SId`, `Customer_Name`, `Contact`, `Password`, `Email`) VALUES
(7, 'Vajira', '0775434456', 'Vajira123', 'samata@gmail.com'),
(8, 'Chamara madusanka', '0765478532', 'Gamage123', 'chamara@gmail.com'),
(9, 'Ruwan lakmanl', '0765478567', 'Ruwan123', 'Ruwan@gmail.com'),
(10, 'Ruwan lakmal', '0765478567', 'Ruwan123', 'Ruwan@gmail.com'),
(11, 'Menaka Kelum', '0764578567', 'Menaka123', 'Menaka@gmail.com'),
(12, 'Yasas hemal', '0743278567', 'Yasas123', 'Yasas@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `ItemName` varchar(50) NOT NULL,
  `Price` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`isID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`SId`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `isID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `SId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
