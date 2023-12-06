-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2023 at 01:56 AM
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
-- Database: `mywebsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblaccdetail`
--

CREATE TABLE `tblaccdetail` (
  `ID` int(11) NOT NULL,
  `AccNum` varchar(25) NOT NULL,
  `DateOpened` varchar(25) NOT NULL,
  `AccID` int(11) NOT NULL,
  `Balance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblaccdetail`
--

INSERT INTO `tblaccdetail` (`ID`, `AccNum`, `DateOpened`, `AccID`, `Balance`) VALUES
(1, '2121391', '2002-07-05', 4, 0),
(2, '2121392', '2002-07-05', 3, 0),
(3, '2121392', '2002-07-05', 3, 9000),
(4, '2121393', '2002-07-05', 4, 6600),
(5, '2121400', '2023-02-10', 6, 0),
(6, '2121380', '0232-03-23', 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbltransactions`
--

CREATE TABLE `tbltransactions` (
  `ID` int(11) NOT NULL,
  `AcctID` int(11) NOT NULL,
  `TType` varchar(25) NOT NULL,
  `Amount` int(11) NOT NULL,
  `TDate` varchar(25) NOT NULL,
  `NBalance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbltransactions`
--

INSERT INTO `tbltransactions` (`ID`, `AcctID`, `TType`, `Amount`, `TDate`, `NBalance`) VALUES
(61, 3, 'deposit', 300, '2023-10-18', 6600),
(62, 3, 'deposit', 300, '2023-10-18', 6900),
(65, 4, 'deposit', 300, '2023-10-18', 2200),
(66, 3, 'withdraw', 300, '2023-10-18', 6300),
(67, 3, 'withdraw', 300, '2023-10-18', 6000),
(68, 4, 'deposit', 300, '2023-10-18', 2500),
(69, 3, 'deposit', 300, '2023-10-18', 6300),
(70, 4, 'deposit', 3, '2023-10-18', 2503),
(71, 4, 'deposit', 300, '2023-10-18', 2803),
(72, 4, 'deposit', 300, '2023-10-18', 3103),
(73, 4, 'withdraw', 200, '2023-10-23', 2903),
(75, 3, 'withdraw', 500, '2023-10-24', 5800),
(76, 4, '', 300, '2023-10-25', 0),
(77, 4, 'deposit', 3400, '2023-11-01', 3400),
(78, 4, 'deposit', 3200, '2023-11-09', 6600),
(79, 3, 'deposit', 3200, '2023-11-09', 9000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `UserName` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `Lname` varchar(25) NOT NULL,
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `UserName`, `Password`, `Lname`, `name`) VALUES
(3, 'Frost', '12345', 'Matalubos', 'Axon'),
(6, 'Ron', '12345', 'Paragoso', 'Ron'),
(7, 'Michael', '12345', 'Perry', 'Michael');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblaccdetail`
--
ALTER TABLE `tblaccdetail`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbltransactions`
--
ALTER TABLE `tbltransactions`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblaccdetail`
--
ALTER TABLE `tblaccdetail`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbltransactions`
--
ALTER TABLE `tbltransactions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
