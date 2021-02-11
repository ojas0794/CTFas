-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2021 at 10:30 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `Card` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`, `Card`) VALUES
(1, 'fjtib', '$2y$10$zz3BUFSEaYWJFNOkK9NNbOa4.8aruyg3JZb56MFNKGFTNOYLZDbHi', '2020-11-16 18:44:51', '4000123456789010'),
(2, 'test', '$2y$10$uYsWWexy5Nu.JBiMJMdks.0mBHgQvaLiX7.pmOmoxMFLtK0KDtpLy', '2020-11-16 23:41:49', '1234567890'),
(3, 'test1', '$2y$10$5O4xmsx5V1rsjSXFNptZ0uM/.NgaRcpKNWR8yXZjOUTr7.dYnmkdK', '2020-11-16 23:48:55', NULL),
(4, 'test007', '$2y$10$SdDqJ1lfmR039GjDU8y9qeqOmjMNIjJgVU.dg6ROYUdxfguvIyseS', '2020-12-25 18:30:19', NULL),
(5, 'testasas', '$2y$10$Y.9Y7pnklupyR0N6IFzXd.kDyv0Wj20NFu/VE45qSKJUCyBRMBpmq', '2020-12-26 11:52:43', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
