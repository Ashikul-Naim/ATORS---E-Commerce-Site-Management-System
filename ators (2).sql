-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2025 at 04:42 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ators`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`id`, `username`, `password`) VALUES
(1, 'admin1', 'admin123'),
(2, 'admin2', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `status` varchar(50) DEFAULT 'Pending',
  `size` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `name`, `email`, `phone`, `order_date`, `product_name`, `product_image`, `product_price`, `status`, `size`, `address`) VALUES
(9, 'Unknown Name', 'a@gmail.com', 'Unknown Phone', '2025-05-01 10:52:11', 'Drop Shoulder Hoodie', 'img/product/f3.jpg', 0.00, 'Confirmed', 'Small', NULL),
(11, 'test1', 'a@gmail.com', '01772046103', '2025-05-01 11:54:40', 'Drop Shoulder Hoodie', 'img/product/f2.jpg', 950.00, 'Confirmed', 'Large', 'dhaka mirpur'),
(14, 'naim', 'a@gmail.com', '01772046103', '2025-05-02 18:34:57', 'Long Slevee T-shirt', 'img/product/f23.jpg', 450.00, 'Pending', 'Medium', 'dhaka mirpur'),
(15, 'naim', 'a@gmail.com', '01772046103', '2025-05-13 11:42:02', 'Drop Shoulder T-shirt', 'img/product/t1.jpeg', 499.00, 'Confirmed', 'Medium', 'dhaka mirpur');

-- --------------------------------------------------------

--
-- Table structure for table `payment_info`
--

CREATE TABLE `payment_info` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `card_name` varchar(100) DEFAULT NULL,
  `card_number` varchar(20) DEFAULT NULL,
  `expiry` varchar(10) DEFAULT NULL,
  `cvv` varchar(10) DEFAULT NULL,
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_info`
--

INSERT INTO `payment_info` (`id`, `user_id`, `payment_method`, `card_name`, `card_number`, `expiry`, `cvv`, `payment_date`) VALUES
(0, NULL, 'card', 'test', '63373', '4/2044', '888', '2025-04-28 10:14:17'),
(0, NULL, 'card', 'test', '63373', '4/2044', '888', '2025-04-28 10:16:36'),
(0, NULL, 'card', 'test', '63373', '4/2044', '888', '2025-04-28 10:18:23'),
(0, NULL, 'card', 'test', '63373', '4/2044', '888', '2025-04-28 10:20:43'),
(0, NULL, 'card', 'test', '63373', '4/2044', '888', '2025-04-28 10:39:53'),
(0, NULL, 'card', 'test', '63373', '4/2044', '888', '2025-04-28 10:41:41'),
(0, NULL, 'card', 'test', '63373', '4/2044', '888', '2025-04-28 10:41:47'),
(0, NULL, 'card', 'test', '5454', '65/55', '656456', '2025-04-29 08:14:33'),
(0, NULL, 'card', 'test', '65554', '6/25', '13535', '2025-04-29 09:16:44'),
(0, NULL, 'card', 'test', '65665', '02 25', '65546', '2025-04-29 09:23:10'),
(0, NULL, 'card', 'test', '12345', '3/2025', '326598', '2025-04-30 09:10:54'),
(0, NULL, 'card', 'test', '12345', '3/2025', '326598', '2025-04-30 09:11:23');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`, `description`, `created_at`) VALUES
(1, 'Drop Shoulder Hoodie', 950.00, 'img/product/f1.jpg', NULL, '2025-05-01 22:25:03'),
(2, 'Drop Shoulder Hoodie', 950.00, 'img/product/f2.jpg', NULL, '2025-05-01 22:25:03'),
(3, 'Drop Shoulder Hoodie', 950.00, 'img/product/f3.jpg', NULL, '2025-05-01 22:25:03'),
(4, 'Drop Shoulder Hoodie', 950.00, 'img/product/f5.jpg', NULL, '2025-05-01 22:25:03'),
(5, 'Drop Shoulder Hoodie', 950.00, 'img/product/f6.jpg', NULL, '2025-05-01 22:25:03'),
(6, 'Drop Shoulder Hoodie', 950.00, 'img/product/f4.jpg', NULL, '2025-05-01 22:25:03'),
(9, 'Soft Canvas Tote Bag', 250.00, 'img/product/f9.jpg', NULL, '2025-05-01 22:25:03'),
(10, 'Soft Canvas Tote Bag', 250.00, 'img/product/f10.jpg', NULL, '2025-05-01 22:25:03'),
(11, 'Soft Canvas Tote Bag', 250.00, 'img/product/f12.jpg', NULL, '2025-05-01 22:25:03'),
(12, 'Soft Canvas Tote Bag', 250.00, 'img/product/f11.jpg', NULL, '2025-05-01 22:25:03'),
(13, 'Long Sleeve T-shirt', 450.00, 'img/product/f13.jpg', NULL, '2025-05-01 22:25:03'),
(14, 'Long Sleeve T-shirt', 450.00, 'img/product/f14.jpg', NULL, '2025-05-01 22:25:03'),
(15, 'Long Sleeve T-shirt', 450.00, 'img/product/f15.jpg', NULL, '2025-05-01 22:25:03'),
(16, 'Long Sleeve T-shirt', 450.00, 'img/product/f16.jpg', NULL, '2025-05-01 22:25:03'),
(17, 'Long Slevee T-shirt', 450.00, 'img/product/f23.jpg', '100% Cotton', '2025-05-01 22:25:03'),
(18, 'Drop Shoulder T-shirt', 499.00, 'img/product/t1.jpeg', 'Cotton GSM: 220+', '2025-05-01 22:25:03'),
(19, 'Drop Shoulder T-shirt', 499.00, 'img/product/t2.jpeg', 'Cotton GSM: 220+', '2025-05-01 22:25:03');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `size` varchar(50) NOT NULL,
  `quality` varchar(50) NOT NULL,
  `image_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_general_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `product_name`, `price`, `size`, `quality`, `image_path`) VALUES
(1, 'Long Slevee T-shirt', 450.00, 'M, L, XL', '100% Cotton', 'img/productf23.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_general_ci;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`name`, `email`, `password`) VALUES
('awishy', 'a@gmail.com', 'abcd1234'),
('shakia', 's@gmail.com', '123456987'),
('sumaya', 'sumaya@gmail.com', 'era12345'),
('test', 't@mail.com', 'abcd1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
