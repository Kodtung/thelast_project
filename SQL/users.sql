-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2023 at 07:13 AM
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
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(25) NOT NULL,
  `users` varchar(25) NOT NULL,
  `deposit` int(25) DEFAULT NULL,
  `withdraw` int(25) DEFAULT NULL,
  `amount` int(25) NOT NULL,
  `balance` int(25) NOT NULL,
  `search` varchar(25) NOT NULL,
  `show` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `users`, `deposit`, `withdraw`, `amount`, `balance`, `search`, `show`, `username`, `password`) VALUES
(1, '', NULL, NULL, 0, 0, '', '', 'GG', 'Degea12345'),
(2, '', NULL, NULL, 0, 0, '', '', 'GG', 'Degea12345'),
(3, '', NULL, NULL, 0, 0, '', '', 'GG', 'Degea12345'),
(4, '', NULL, NULL, 0, 0, '', '', 'GG', 'Degea12345'),
(5, '', NULL, NULL, 0, 0, '', '', 'winy4n', '12345'),
(6, '', NULL, NULL, 0, 0, '', '', 'night', '12345');

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
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
