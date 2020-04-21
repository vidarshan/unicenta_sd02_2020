-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2020 at 09:57 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unicenta`
--

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(10) NOT NULL,
  `product_quantity` int(255) NOT NULL,
  `sales_value` varchar(255) NOT NULL,
  `tax` int(10) NOT NULL,
  `commision` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `product_name`, `product_price`, `product_quantity`, `sales_value`, `tax`, `commision`) VALUES
(9, 'Soap', '60', 1, '60', 0, '0'),
(10, 'Pens', '10', 12, '122', 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `salesbucket`
--

CREATE TABLE `salesbucket` (
  `id` int(11) NOT NULL,
  `date` varchar(15) NOT NULL,
  `time` varchar(15) NOT NULL,
  `grand_total` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salesbucket`
--

INSERT INTO `salesbucket` (`id`, `date`, `time`, `grand_total`) VALUES
(1, '04/21/2020', '01:20:19', '1430'),
(2, '04/21/2020', '01:21:30', '525'),
(3, '04/21/2020', '01:22:05', '300'),
(4, '04/21/2020', '01:24:20', '656');

-- --------------------------------------------------------

--
-- Table structure for table `salesrecords`
--

CREATE TABLE `salesrecords` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(10) NOT NULL,
  `product_quantity` int(255) NOT NULL,
  `sales_value` varchar(255) NOT NULL,
  `tax` int(10) NOT NULL,
  `commision` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salesrecords`
--

INSERT INTO `salesrecords` (`id`, `product_name`, `product_price`, `product_quantity`, `sales_value`, `tax`, `commision`) VALUES
(1, 'Milk', '100', 12, '1200', 0, '0'),
(2, 'Sugar 1kg', '220', 1, '230', 10, '0'),
(3, 'Book 120', '200', 2, '404', 2, '2'),
(4, 'Pen', '10', 12, '121', 0, '1'),
(5, 'Coffee', '100', 3, '300', 0, '0'),
(6, 'Tea 100g', '200', 1, '214', 12, '2'),
(7, 'Soap', '60', 4, '242', 1, '1'),
(8, 'Tissue pack', '20', 10, '200', 0, '0'),
(9, 'Soap', '60', 1, '60', 0, '0'),
(10, 'Pens', '10', 12, '122', 1, '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salesbucket`
--
ALTER TABLE `salesbucket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salesrecords`
--
ALTER TABLE `salesrecords`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `salesbucket`
--
ALTER TABLE `salesbucket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `salesrecords`
--
ALTER TABLE `salesrecords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
