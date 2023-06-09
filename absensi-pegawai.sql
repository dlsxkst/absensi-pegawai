-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2023 at 08:13 AM
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
-- Database: `absensi-pegawai`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` int(11) NOT NULL,
  `employee_id` int(8) NOT NULL,
  `tgl` varchar(255) DEFAULT NULL,
  `clock_in` varchar(255) DEFAULT NULL,
  `clock_out` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `employee_id`, `tgl`, `clock_in`, `clock_out`) VALUES
(1, 101, '2023-01-15', '14:56:29', NULL),
(2, 101, '2023-01-16', '14:57:14', NULL),
(35, 101, '2023-01-17', '17:59:26', '19:53:18'),
(36, 102, '2023-01-17', '19:54:42', '19:54:47'),
(37, 105, '2023-01-18', '21:01:46', NULL),
(38, 106, '2023-01-20', '17:52:43', NULL),
(39, 102, '2023-01-22', '14:36:41', '14:36:45'),
(40, 104, '2023-01-22', '15:10:12', '15:13:29'),
(41, 105, '2023-01-22', '15:15:53', '15:15:57'),
(42, 102, '2023-06-09', '13:05:28', '13:05:36'),
(43, 104, '2023-06-09', '13:06:38', '13:06:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `employee_id` int(8) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `employee_id`, `fullname`, `role`, `password`) VALUES
(2, 102, 'Ani Hanifah', 'pegawai', '$2y$10$03mwoSbp83Nrd3BCRcQpVOj8HRDfrK1Bqd7jiCGOF1nO7RvNnNPdK'),
(3, 103, 'Sigit Raharjo', 'admin', '$2y$10$sT5u.xTYqIA0b/AuQbCYp.ix.VL3uHWkBYrRck6PK/n8csm5PpIf.'),
(4, 104, 'Rania Alia Nefta', 'pegawai', '$2y$10$xTbBVr1Szal7Re70JL9gK.jAH2dlON8nbfelR6tXNzCrKOQ/.IiPO'),
(9, 110, 'admin', 'admin', '$2y$10$pLtt6tH4aNGTo2Vqyp4N4uuHjwswgSYVLK8xrPldQsHFYpN.tjswC'),
(12, 112, 'Intan Supini', 'pegawai', '$2y$10$n693ytGVu.KF68orS.I2ru8CISoQxCAjUv99dKJksC7AaTyHOzSuS'),
(14, 113, 'inns', 'admin', '$2y$10$kXSB4UIaef1bpI/QIM.5lu8s1J0HbMmwPTdahOgEnMV8ZV81t1PW.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
