-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2023 at 02:50 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `guest_id` int(11) NOT NULL,
  `guest_name` varchar(50) NOT NULL,
  `guest_NIC` varchar(50) NOT NULL,
  `guest_email` varchar(100) NOT NULL,
  `guest_phone` varchar(20) DEFAULT NULL,
  `guest_address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`guest_id`, `guest_name`, `guest_NIC`, `guest_email`, `guest_phone`, `guest_address`) VALUES
(5, 'kithara', '200258100428', 'kitharanadali123@gmail.com', '0719150624', 'Ganangamuwa,Nakkawatta'),
(8, 'Damayanthi', '197554823', 'damayanthi@gmail.com', '0714527896', 'Kegalle'),
(11, 'Sunil', '20041578', 'Sunil@gmail.com', '0714528936', 'Malkaduwawa, Kurunegala');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `guest_NIC` varchar(20) DEFAULT NULL,
  `room_Number` varchar(10) DEFAULT NULL,
  `check_in` date DEFAULT NULL,
  `check_out` date DEFAULT NULL,
  `room_type` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`guest_NIC`, `room_Number`, `check_in`, `check_out`, `room_type`) VALUES
('200418003555', '002', '2023-10-17', '2023-10-23', 'Family');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(11) NOT NULL,
  `room_number` varchar(10) NOT NULL,
  `room_type` varchar(50) NOT NULL,
  `capacity` varchar(12) NOT NULL,
  `room_description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_number`, `room_type`, `capacity`, `room_description`) VALUES
(2, '12', 'Single', '6', 'two beds'),
(5, '14', 'Single', '12', '14'),
(6, '007', 'Single', '35', 'Bond,James Bond!'),
(8, '002', 'Twin', '3', '2 tables\r\n2 beds\r\n1 bathroom\r\n5000/='),
(11, '003', 'Family', '4', '2 beds\r\n3 chairs');

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE `userdetails` (
  `Username` varchar(10) NOT NULL,
  `PhoneNumber` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`Username`, `PhoneNumber`, `Password`) VALUES
('Damayanthi', '0718074568', 'Mal12345'),
('gdgdggggg', '0775536038', 'jdhdA1gggggg'),
('Kamal', '0714527896', 'Kurunegala123'),
('kithara', '0719150624', 'Kithara124'),
('Manusha', '0785624132', '2002Manu'),
('Nethum', '0718075959', '2010Nethum'),
('Oshadha', '0712333017', 'Password123'),
('Pabasara', '0719071750', 'Dumindu123'),
('Ranaweera', '0772916584', 'Rana@1234'),
('Ravidu', '0714527896', 'Ravidu111'),
('Shamod', '0712333017', 'Password123'),
('Vihaga', '0745621485', '2002#Phj'),
('Vihanga', '0767777778', '1234abcdA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`guest_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `userdetails`
--
ALTER TABLE `userdetails`
  ADD PRIMARY KEY (`Username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `guest_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
