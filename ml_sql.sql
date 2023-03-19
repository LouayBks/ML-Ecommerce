-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2023 at 10:52 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ml-ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `seller_id` int(11) NOT NULL,
  `seller_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`seller_id`, `seller_name`) VALUES
(0, 'Zara'),
(1, 'Bershka'),
(2, 'LC Waikiki');

-- --------------------------------------------------------

--
-- Table structure for table `shirts`
--

CREATE TABLE `shirts` (
  `shirt_id` int(255) NOT NULL,
  `gender` varchar(10) NOT NULL DEFAULT 'UNI',
  `color` varchar(30) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `fabric` varchar(30) DEFAULT NULL,
  `size` char(10) NOT NULL,
  `price` float NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `seller` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shirts`
--

INSERT INTO `shirts` (`shirt_id`, `gender`, `color`, `type`, `fabric`, `size`, `price`, `date_added`, `seller`) VALUES
(0, 'UNI', 'Blue', 'T-shirt', 'Cotton', 'M', 50, '0000-00-00 00:00:00', 'Zara'),
(1, 'F', 'Red', 'Hoodie', 'Cotton', 'XL', 0, '0000-00-00 00:00:00', 'Zara'),
(2, 'UNI', 'Black', 'Hoodie', 'Cotton', 'M', 55, '2023-03-19 00:00:00', 'LC Waikiki'),
(3, 'M', 'Black', 'Coat', 'Wool', 'S/M/L', 70, '2023-03-19 00:00:00', 'LC Waikiki'),
(4, 'F', 'Red', 'Coat', 'Wool', 'S/M', 150, '2023-03-19 00:00:00', 'Bershka');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`seller_id`);

--
-- Indexes for table `shirts`
--
ALTER TABLE `shirts`
  ADD PRIMARY KEY (`shirt_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
