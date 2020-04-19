-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2020 at 05:25 PM
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
(37, 'Test', '1000', 1, '1020', 10, '10'),
(38, 'Test', '1100', 1, '1120', 10, '10');

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
(1, '04/19/2020', '07:35:40', 'javax.swing.JTextField[,112,7,173x41,layout=javax.swing.plaf.basic.BasicTextUI$UpdateHandler,alignmentX=0.0,alignmentY=0.0,border=javax.swing.plaf.synth.SynthBorder@221749c2,flags=288,maximumSize=,minimumSize=,preferredSize=,caretColor=,disabledTextColor=DerivedColor(color=142,143,145 parent=nimbusDisabledText offsets=0.0,0.0,0.0,0 pColor=142,143,145,editable=true,margin=javax.swing.plaf.InsetsUIResource[top=0,left=0,bottom=0,right=0],selectedTextColor=DerivedColor(color=255,255,255 parent=nimbusSelectedText offsets=0.0,0.0,0.0,0 pColor=255,255,255,selectionColor=DerivedColor(color=57,105,138 parent=nimbusSelectionBackground offsets=0.0,0.0,0.0,0 pColor=57,105,138,columns=0,columnWidth=0,command=,horizontalAlignment=LEADING]'),
(2, '04/19/2020', '07:37:07', '79815'),
(3, '04/19/2020', '08:47:25', '13620');

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
(1, 'Test', '1000', 1, '1020', 10, '10'),
(2, 'Test', '1000', 1, '1200', 100, '100'),
(3, 'Test', '1000', 1, '1200', 100, '100'),
(4, 'Test', '1000', 1, '1200', 100, '100'),
(5, 'Test', '1000', 1, '1200', 100, '100'),
(6, 'Test', '1000', 1, '1200', 100, '100'),
(7, 'Shoes', '10000', 1, '10020', 10, '10'),
(8, 'Test', '1000', 1, '1020', 10, '10'),
(9, 'Test', '1000', 1, '1020', 10, '10');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `salesbucket`
--
ALTER TABLE `salesbucket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `salesrecords`
--
ALTER TABLE `salesrecords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
