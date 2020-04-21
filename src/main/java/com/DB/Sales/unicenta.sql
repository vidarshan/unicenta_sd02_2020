-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2020 at 06:58 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `cat_ID` varchar(255) DEFAULT NULL,
  `cat_Name` varchar(255) NOT NULL,
  `cat_img` text DEFAULT NULL,
  `uploadedOn` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat_ID`, `cat_Name`, `cat_img`, `uploadedOn`) VALUES
(6, '001', 'Category_01', 'Categories\\1587442301760158744072732432c8fd98836cf30bdb810f8eb93b95c9.png', '2020-04-21 09:41:50'),
(7, '002', 'Category_02', 'Categories\\158744238940015874414157641587397729707slide7.JPG', '2020-04-21 09:43:13'),
(8, '003', 'Category_003', 'Categories\\158744243225615874416058881587441531151158739720276673c911a727ee44880da9414e06a7c707-menina-carregar-bagagem-by-vexels.jpg', '2020-04-21 09:43:53'),
(9, '004', 'Category_04', 'Categories\\158745570417410-8.jpg', '2020-04-21 13:25:08'),
(10, '005', 'Category_05', 'Categories\\1587455795231Layer 1.jpg', '2020-04-21 13:26:37'),
(11, '006', 'Category_06', 'Categories\\1587455983825icons8-box-36.png', '2020-04-21 13:29:45'),
(12, '007', 'Category_07', 'Categories\\1587465204382icons8-save-close-36.png', '2020-04-21 16:03:25');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productID` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `img` text DEFAULT NULL,
  `uploadedOn` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productID`, `name`, `barcode`, `category`, `description`, `img`, `uploadedOn`) VALUES
(1, 'erfef', 'ds', 'csvsv', 'bn', 'Products\\\\image-not-found.png', '2020-04-20 13:26:32'),
(2, 'hyvyu', 'pok', 'vgbho', 'tyuhiopvfvbnjk', 'Products\\1587396685552projectDir.JPG', '2020-04-20 17:37:44'),
(3, 'rct6yh', 'rcfsw12', 'rcfrcf', 'rcfcrrcrc', 'Products\\1587396685552projectDir.JPG', '2020-04-20 17:48:48'),
(4, 'product1', '001_product1', 'category1', 'product1 description', 'Products\\1587396685552projectDir.JPG', '2020-04-20 21:01:27'),
(5, 'produc02', '002_produc02', 'category02', 'produc02 description', 'Products\\1587397091726view 2.PNG', '2020-04-20 21:08:14'),
(6, 'svewevw4b', 'pdspobk', 'evewbw4b', '3qr3t4t', 'Products\\image-not-found.png', '2020-04-21 02:58:12'),
(7, 'eves', 'bpodvkpos', '001', 'dcrhtjukutmynb', 'Products\\image-not-found.png', '2020-04-21 03:01:36'),
(8, 'btwerk', 'nuin009', 'category02', 'mngvc34567j', 'Products\\1587439412403LoremIpsum.jpg', '2020-04-21 03:08:41'),
(9, 'kdo3d', '3dd3c', '3dd4', 'category03', 'Products\\image-not-found.png', '2020-04-21 03:16:51'),
(10, 'bhfew4s5d6', 'nbtr008', 'category03', 'otesxcvbkiytre', 'Products\\1587439530543rocket1.png', '2020-04-21 03:18:50'),
(11, 'moon', 'moon001', 'mn', 'moon001_desc', 'Products\\image-not-found.png', '2020-04-21 08:31:10'),
(16, 'pro', 'p_001', 'prodct cat', 'product desc', 'Products\\1587465104208icons8-plus-36.png', '2020-04-21 16:01:46');

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productID`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
