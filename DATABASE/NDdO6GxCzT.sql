-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 16, 2022 at 07:32 PM
-- Server version: 8.0.13-4
-- PHP Version: 7.2.24-0ubuntu0.18.04.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `NDdO6GxCzT`
--

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `name`) VALUES
(1, 'Apollo Hospitals'),
(2, 'Jawaharlal Nehru Medical College and Hospital'),
(3, 'Indira Gandhi Institute of Medical Sciences (IGIMS)'),
(4, 'AIIMS - All India Institute Of Medical Scienc');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phoneNumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PsychiatristId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `name`, `address`, `email`, `phoneNumber`, `password`, `photo`, `PsychiatristId`) VALUES
(1, 'Gaurav', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some random text', 101),
(2, 'Gaurav 2', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some random text', 101),
(3, 'Gaurav 3', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some random text', 101),
(4, 'Gaurav 1', 'some random text', 'igauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 101),
(5, 'Gaurav 4', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 101),
(6, 'Ram 1', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 102),
(7, 'Ram 2', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 102),
(8, 'Ram 3', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 102),
(9, 'Ram 4', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 102),
(10, 'Ram 5', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 102),
(11, 'Shyam 1', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 103),
(12, 'Shyam 2', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 103),
(13, 'Shyam 3', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 103),
(14, 'Shyam 4', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 103),
(15, 'Shyam 5', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 103),
(16, 'Gaurav Chahar 1', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 103),
(17, 'Gaurav Chahar 2', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 104),
(18, 'Gaurav Chahar 3', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 104),
(19, 'Gaurav Chahar 4', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 104),
(20, 'Gaurav Chahar 5', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 104),
(21, 'Gaurav Chahar 6', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 104),
(22, 'Lattice 1', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 105),
(23, 'Lattice 2', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 105),
(24, 'Lattice 3', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 105),
(25, 'Lattice 4', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 105),
(26, 'Lattice 5', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 105),
(27, 'Lattice 6', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 105),
(28, 'Lattice 7', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 105),
(29, 'Lattice 8', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 105),
(30, 'Lattice 5', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 105),
(31, 'NodeJS 1', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 106),
(32, 'NodeJS 2', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 106),
(33, 'NodeJS 3', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 106),
(34, 'NodeJS 4', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 106),
(35, 'NodeJS 5', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 106),
(36, 'Sun', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 107),
(37, 'Sun 1', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 107),
(38, 'Sun 2', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 107),
(39, 'Sun 3', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 107),
(40, 'Sun 4', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 107),
(41, 'Sun 5', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 107),
(42, 'Moon', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 108),
(43, 'Moon 1', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 108),
(44, 'Moon 2', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 108),
(45, 'Moon 3', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 108),
(46, 'Moon 4', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 108),
(47, 'Moon 5', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 108),
(48, 'Pakhi 1', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 109),
(49, 'Pakhi 2', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 109),
(50, 'Pakhi 3', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 109),
(51, 'Pakhi 4', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 109),
(52, 'Pakhi 5', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 109),
(53, 'Pakhi Grewal 1', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 110),
(54, 'Pakhi Grewal 2', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 110),
(55, 'Pakhi Grewal 3', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 110),
(56, 'Bala 1', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 111),
(57, 'Bala 2', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 111),
(58, 'Bala 3', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 111),
(59, 'Bala 4', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 111),
(60, 'RadheShyam 1', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 112),
(61, 'RadheShyam 2', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 112),
(62, 'RadheShyam 3', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 112),
(63, 'RadheShyam 4', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 112),
(64, 'G K 1', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 113),
(65, 'G K 12', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 113),
(66, 'G K 123', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 113),
(67, 'RamRam 1', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 114),
(68, 'RamRam 12', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 114),
(69, 'RamRam 123', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 114),
(70, 'RamRam 1234', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 114),
(71, 'Heyoo', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 115),
(72, 'Heyoo 1', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 115),
(73, 'Heyoo 2', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 116),
(74, 'Heyoo 3', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 116),
(75, 'Heyoo 4', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 116),
(76, 'Heyoo 5', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 116),
(77, 'Macbook', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 117),
(78, 'Macbook 1', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 117),
(79, 'Macbook 12', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 117),
(80, 'Macbook 123', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 117),
(81, 'Macbook 5', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 118),
(82, 'Macbook 56', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 118),
(83, 'Macbook 567', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 118),
(84, 'Macbook 111', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 119),
(85, 'Macbook 222', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 119),
(86, 'Macbook 333', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 119),
(87, 'Apple', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 120),
(88, 'Apple1', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 120),
(89, 'Apple11', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 120),
(90, 'Apple112', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 120),
(91, 'Apple1123', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 120),
(92, 'Apple11234', 'some random text', 'gauravchahar@icloud.com', '+917678694128', 'Gaurav@123', 'some photo url', 120);

-- --------------------------------------------------------

--
-- Table structure for table `psychiatrists`
--

CREATE TABLE `psychiatrists` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `HospitalId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `psychiatrists`
--

INSERT INTO `psychiatrists` (`id`, `name`, `HospitalId`) VALUES
(101, 'Dr. Anuj', 1),
(102, 'Dr. Ram', 1),
(103, 'Dr. Sham', 1),
(104, 'Dr. Daya', 1),
(105, 'Dr. Abhijeet', 1),
(106, 'Dr. Nikhil', 2),
(107, 'Dr. Freddy', 2),
(108, 'Dr. Sachin', 2),
(109, 'Dr. Shreya', 2),
(110, 'Dr. Purvi', 2),
(111, 'Dr. Vishu', 3),
(112, 'Dr. Dev', 3),
(113, 'Dr. Ankhil', 3),
(114, 'Dr. Pandey', 3),
(115, 'Dr. R Yadav', 3),
(116, 'Dr. P Rao', 4),
(117, 'Dr. S K Sharma', 4),
(118, 'Dr. A G Rai', 4),
(119, 'Dr. P Grewal', 4),
(120, 'Dr. Pakhi', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `psychiatrists`
--
ALTER TABLE `psychiatrists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
