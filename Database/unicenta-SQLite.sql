CREATE TABLE IF NOT EXISTS `products` (
  `productID` integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `img` text DEFAULT NULL,
  `uploadedOn` datetime NOT NULL DEFAULT current_timestamp,
   `quantity` int(255) NOT NULL,
  `product_price` varchar(10) NOT NULL,
  `tax` integer NOT NULL,
  `commission` varchar(50) NOT NULL
);

INSERT INTO `products` (`productID`, `name`, `barcode`, `category`, `description`, `img`, `uploadedOn`, `quantity`, `product_price`, `tax`, `commission`) VALUES
(1, 'Asus Computer', '#001', '3', 'Latest Intel® Pentium® processor Up to 10 hours battery life Light: 1.20kg 1 TB HDD storage. ', 'Products\\15875851737541587584747127P_setting_F5F5F5_1_90_end_765.jpg', '2020-04-23 01:15:54', 1000, '130', 30, '120'),
(2, 'MacBook Pro 2019', '#002', '6', '2.3GHz Intel Core i9 processor, Turbo Boost ...', 'Products\\1587586889344mbp16touch-space-select-201911.jpg', '2020-04-23 01:51:33', 230, '1100', 10, '10'),
(3, 'Microsoft Surface Pro 7', '#003', '4', 'Microsoft Surface Pro 12.3 2-in-1 Touchscreen (2736 x 1824) Laptop/Tablet, Intel Dual-Core M3-3Y70 4G DDR4 128G SSD ', 'Products\\158758795320751SchZDsCwL._AC_SL1000_.jpg', '2020-04-23 02:09:16', 0, '100', 10, '10'),
(4, 'Dell XPS 13', '#004', '1', 'Display: 13.4-inch Infinity Edge display, 1920 x 1200 or 3840 x 2400. CPU: 10th-gen Intel Core i3-1005G1/i5-1035G1/ i7-1065G7. Graphics: Intel UHD or Iris Plus. RAM: 8GB or 16GB. Storage: 256GB/512GB/1TB/2TB SSD. Size: 11.64 x 7.82 x 0.58 inches.', 'Products\\15876310131237.jpg', '2020-04-23 14:06:55', 0, '100', 10, '10'),
(5, 'HUAWEI MateBook X Pro', '#005', '5', '1.8 GHz Intel Core i7-8550U quad-core processor, 16GB of 2133 MHz LPDDR3 RAM, a 512GB NVMe PCIe M. 2 SSD, and an NVIDIA GeForce MX150 graphics card. ', 'Products\\1587632596053gsmarena_005.jpg', '2020-04-23 14:33:17', 0, '100', 10, '10'),
(6, 'HP Spectre x360 15', '#006', '2', ' Intel Core i7-8565U and 512GB of PCIe SSD storage ', 'Products\\1587633003541spectre_x360_q4fy19_ksp7_pdt1.png', '2020-04-23 14:40:05', 0, '100', 10, '10'),
(7, 'Razer Blade 15', '#007', '7', '10th Gen Intel i7-10750H processor (base clock speed of 2.6GHz and turbo boost clock speed of 5GHz), starts with Nvidia', 'Products\\1587633816717razer-blade-new-comet-lake-h-gaming-laptops-and-300hz-screen_godgetreview.com_.jpg', '2020-04-23 14:53:38', 0, '100', 10, '10'),
(8, 'qwdqwev', 'ewd', '7', 'cefg rbn', 'Products\\image-not-found.png', '2020-04-24 20:09:36', 0, '100', 10, '10');



CREATE TABLE IF NOT EXISTS `sales` (
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(10) NOT NULL,
  `product_quantity` int(255) NOT NULL,
  `sales_value` varchar(255) NOT NULL,
  `tax` integer NOT NULL,
  `commision` varchar(50) NOT NULL
);

INSERT INTO `sales` (`id`, `product_name`, `product_price`, `product_quantity`, `sales_value`, `tax`, `commision`) VALUES
(9, 'Soap', '60', 1, '60', 0, '0'),
(10, 'Pens', '10', 12, '122', 1, '1');


CREATE TABLE IF NOT EXISTS `salesbucket` (
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  `date` varchar(15) NOT NULL,
  `time` varchar(15) NOT NULL,
  `grand_total` longtext NOT NULL
);

INSERT INTO `salesbucket` (`id`, `date`, `time`, `grand_total`) VALUES
(1, '04/21/2020', '01:20:19', '1430'),
(2, '04/21/2020', '01:21:30', '525'),
(3, '04/21/2020', '01:22:05', '300'),
(4, '04/21/2020', '01:24:20', '656');



CREATE TABLE IF NOT EXISTS `salesrecords` (
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(10) NOT NULL,
  `product_quantity` int(255) NOT NULL,
  `sales_value` varchar(255) NOT NULL,
  `tax` integer NOT NULL,
  `commision` varchar(50) NOT NULL
);


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

