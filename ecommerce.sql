-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2022 at 03:42 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `Quantity`) VALUES
(1, 'scorpiyo', 1),
(2, 'BYD Atto', 3),
(3, 'GUCCI White t-Shirt', 1),
(4, 'Advance Table', 3),
(5, 'Levis', 3),
(6, 'louis philippe t-shirt', 1),
(7, 'Highlander t-shirt', 2),
(8, 'GUCCI White t-Shirt', 3),
(9, 'Nike White Sneaker', 2),
(10, 'Nike White Shoes', 1),
(11, 'Nike Yellow Sneaker', 4),
(12, 'Nike Brown Sneaker', 4),
(15, 'Table Panerai', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `phone` int(10) NOT NULL,
  `registration_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email_id`, `first_name`, `user_name`, `phone`, `registration_time`, `password`) VALUES
(67, 'xdfxdf', 'Sham', 'das', 0, '2022-12-06 04:34:12', 'asfdsf'),
(68, 'zsdzsdf', 'banani', 'shewly', 0, '2022-12-06 04:34:20', 'dfsfsd'),
(69, '', 'banani', 'shewly', 0, '2022-12-06 04:13:40', '5f4dcc3b5aa765d61d8327deb882cf99'),
(70, 'rina@gmail.com', 'rina', 'rani', 0, '2022-12-06 05:47:17', '5e76bef6e019b2541ff53db39f407a98'),
(71, 'mina@gmail.com', 'mina', 'mana', 0, '2022-12-06 05:52:41', '8c94c7adff2188d8231c4e88df1ce18b'),
(72, 'bana@gmail.com', 'bana', '', 0, '2022-12-06 06:43:30', '5f4dcc3b5aa765d61d8327deb882cf99'),
(73, 'baba@gmail.com', 'baba', '', 0, '2022-12-06 07:05:10', '634af4911baac0abc8ffbc4bdccef93f'),
(74, 'vani@gmail.com', 'vani', '', 0, '2022-12-06 07:09:16', '098f6bcd4621d373cade4e832627b4f6'),
(75, 'tesst@gmail.com', 'nami', '', 0, '2022-12-07 01:34:36', '526bdc7513101a9626f71b4dad250323'),
(76, 'test@gmail.com', 'naami', '', 0, '2022-12-07 02:38:16', '3cf04aefe58f2c4fa4fe56e13107e626');

-- --------------------------------------------------------

--
-- Table structure for table `users_products`
--

CREATE TABLE `users_products` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `status` enum('Added To Cart','Confirmed') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_products`
--

INSERT INTO `users_products` (`id`, `user_id`, `item_id`, `status`) VALUES
(11, 67, 6, 'Confirmed'),
(17, 67, 1, 'Confirmed'),
(18, 67, 5, 'Confirmed'),
(19, 67, 6, 'Confirmed'),
(20, 67, 1, 'Confirmed'),
(23, 67, 1, 'Confirmed'),
(24, 67, 2, 'Confirmed'),
(25, 67, 9, 'Confirmed'),
(27, 68, 2, 'Confirmed'),
(28, 68, 1, 'Added To Cart'),
(29, 71, 3, 'Added To Cart'),
(30, 71, 6, 'Added To Cart'),
(31, 72, 11, 'Added To Cart'),
(32, 72, 6, 'Added To Cart'),
(33, 73, 2, 'Added To Cart'),
(34, 74, 6, 'Added To Cart'),
(36, 75, 1, 'Confirmed'),
(37, 75, 6, 'Confirmed'),
(38, 75, 10, 'Confirmed'),
(39, 75, 15, 'Confirmed'),
(40, 75, 2, 'Confirmed'),
(41, 75, 7, 'Confirmed'),
(42, 75, 10, 'Confirmed'),
(43, 75, 10, 'Confirmed'),
(44, 75, 1, 'Confirmed'),
(45, 75, 5, 'Confirmed'),
(46, 75, 6, 'Added To Cart'),
(48, 76, 10, 'Confirmed'),
(49, 76, 15, 'Confirmed'),
(51, 76, 12, 'Confirmed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_products`
--
ALTER TABLE `users_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `users_products`
--
ALTER TABLE `users_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_products`
--
ALTER TABLE `users_products`
  ADD CONSTRAINT `users_products_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `users_products_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
