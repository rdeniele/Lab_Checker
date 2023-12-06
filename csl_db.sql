-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2023 at 03:06 PM
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
-- Database: `csl_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblclass`
--

CREATE TABLE `tblclass` (
  `ID` int(11) NOT NULL,
  `ClassCode` varchar(25) NOT NULL,
  `Course` varchar(25) NOT NULL,
  `YrSec` varchar(25) NOT NULL,
  `Teacher` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblclass`
--

INSERT INTO `tblclass` (`ID`, `ClassCode`, `Course`, `YrSec`, `Teacher`) VALUES
(1, 'CC106', 'BSCS', '3B', 'De Paula Jr. Eddie Gerzon'),
(2, 'CSP213', 'BSCS', '3B', 'Alarde Kristian Sardon');

-- --------------------------------------------------------

--
-- Table structure for table `tblcsl`
--

CREATE TABLE `tblcsl` (
  `ID` int(11) NOT NULL,
  `LabName` varchar(25) NOT NULL,
  `Capacity` int(11) NOT NULL,
  `Description` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcsl`
--

INSERT INTO `tblcsl` (`ID`, `LabName`, `Capacity`, `Description`) VALUES
(1, 'CSL1', 30, 'VACANT'),
(2, 'CSL2', 30, 'VACANT'),
(3, 'CSL3', 30, 'VACANT'),
(6, 'CSL4', 30, 'VACANT'),
(7, 'CSL5', 30, 'VACANT'),
(8, 'CSL6', 30, 'VACANT'),
(9, 'CSL7', 30, 'VACANT'),
(10, 'CSL8', 30, 'VACANT');

-- --------------------------------------------------------

--
-- Table structure for table `tblschedule`
--

CREATE TABLE `tblschedule` (
  `ID` int(11) NOT NULL,
  `Day` varchar(10) NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `StartTime` time NOT NULL,
  `EndTime` time NOT NULL,
  `ClassID` varchar(11) NOT NULL,
  `cslLab` varchar(25) NOT NULL,
  `Course` varchar(25) NOT NULL,
  `Year` varchar(2) NOT NULL,
  `Sec` varchar(5) NOT NULL,
  `Teacher` varchar(25) NOT NULL,
  `Capacity` int(11) NOT NULL,
  `Description` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblschedule`
--

INSERT INTO `tblschedule` (`ID`, `Day`, `StartDate`, `EndDate`, `StartTime`, `EndTime`, `ClassID`, `cslLab`, `Course`, `Year`, `Sec`, `Teacher`, `Capacity`, `Description`) VALUES
(996, 'Monday', '2023-08-14', '2023-12-20', '07:30:00', '08:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(997, 'Monday', '2023-08-14', '2023-12-20', '08:30:00', '09:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(998, 'Monday', '2023-08-14', '2023-12-20', '09:30:00', '10:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(999, 'Monday', '2023-08-14', '2023-12-20', '10:30:00', '11:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1000, 'Monday', '2023-08-14', '2023-12-20', '11:30:00', '12:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1001, 'Monday', '2023-08-14', '2023-12-20', '12:30:00', '13:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1002, 'Monday', '2023-08-14', '2023-12-20', '13:30:00', '14:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1003, 'Monday', '2023-08-14', '2023-12-20', '14:30:00', '15:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1004, 'Monday', '2023-08-14', '2023-12-20', '15:30:00', '16:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1005, 'Monday', '2023-08-14', '2023-12-20', '16:30:00', '17:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1006, 'Monday', '2023-08-14', '2023-12-20', '17:30:00', '18:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1007, 'Monday', '2023-08-14', '2023-12-20', '18:30:00', '19:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1008, 'Monday', '2023-08-14', '2023-12-20', '19:30:00', '20:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1009, 'Tuesday', '2023-08-14', '2023-12-20', '07:30:00', '08:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1010, 'Tuesday', '2023-08-14', '2023-12-20', '08:30:00', '09:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1011, 'Tuesday', '2023-08-14', '2023-12-20', '09:30:00', '10:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1012, 'Tuesday', '2023-08-14', '2023-12-20', '10:30:00', '11:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1013, 'Tuesday', '2023-08-14', '2023-12-20', '11:30:00', '12:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1014, 'Tuesday', '2023-08-14', '2023-12-20', '12:30:00', '13:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1015, 'Tuesday', '2023-08-14', '2023-12-20', '13:30:00', '14:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1016, 'Tuesday', '2023-08-14', '2023-12-20', '14:30:00', '15:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1017, 'Tuesday', '2023-08-14', '2023-12-20', '15:30:00', '16:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1018, 'Tuesday', '2023-08-14', '2023-12-20', '16:30:00', '17:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1019, 'Tuesday', '2023-08-14', '2023-12-20', '17:30:00', '18:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1020, 'Tuesday', '2023-08-14', '2023-12-20', '18:30:00', '19:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1021, 'Tuesday', '2023-08-14', '2023-12-20', '19:30:00', '20:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1022, 'Wednesday', '2023-08-14', '2023-12-20', '07:30:00', '08:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1023, 'Wednesday', '2023-08-14', '2023-12-20', '08:30:00', '09:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1024, 'Wednesday', '2023-08-14', '2023-12-20', '09:30:00', '10:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1025, 'Wednesday', '2023-08-14', '2023-12-20', '10:30:00', '11:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1026, 'Wednesday', '2023-08-14', '2023-12-20', '11:30:00', '12:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1027, 'Wednesday', '2023-08-14', '2023-12-20', '12:30:00', '13:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1028, 'Wednesday', '2023-08-14', '2023-12-20', '13:30:00', '14:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1029, 'Wednesday', '2023-08-14', '2023-12-20', '14:30:00', '15:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1030, 'Wednesday', '2023-08-14', '2023-12-20', '15:30:00', '16:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1031, 'Wednesday', '2023-08-14', '2023-12-20', '16:30:00', '17:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1032, 'Wednesday', '2023-08-14', '2023-12-20', '17:30:00', '18:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1033, 'Wednesday', '2023-08-14', '2023-12-20', '18:30:00', '19:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1034, 'Wednesday', '2023-08-14', '2023-12-20', '19:30:00', '20:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1035, 'Thursday', '2023-08-14', '2023-12-20', '07:30:00', '08:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1036, 'Thursday', '2023-08-14', '2023-12-20', '08:30:00', '09:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1037, 'Thursday', '2023-08-14', '2023-12-20', '09:30:00', '10:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1038, 'Thursday', '2023-08-14', '2023-12-20', '10:30:00', '11:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1039, 'Thursday', '2023-08-14', '2023-12-20', '11:30:00', '12:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1040, 'Thursday', '2023-08-14', '2023-12-20', '12:30:00', '13:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1041, 'Thursday', '2023-08-14', '2023-12-20', '13:30:00', '14:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1042, 'Thursday', '2023-08-14', '2023-12-20', '14:30:00', '15:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1043, 'Thursday', '2023-08-14', '2023-12-20', '15:30:00', '16:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1044, 'Thursday', '2023-08-14', '2023-12-20', '16:30:00', '17:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1045, 'Thursday', '2023-08-14', '2023-12-20', '17:30:00', '18:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1046, 'Thursday', '2023-08-14', '2023-12-20', '18:30:00', '19:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1047, 'Thursday', '2023-08-14', '2023-12-20', '19:30:00', '20:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1048, 'Friday', '2023-08-14', '2023-11-20', '07:30:00', '08:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1049, 'Friday', '2023-08-14', '2023-11-20', '08:30:00', '09:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1050, 'Friday', '2023-08-14', '2023-11-20', '09:30:00', '10:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1051, 'Friday', '2023-08-14', '2023-11-20', '10:30:00', '11:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1052, 'Friday', '2023-08-14', '2023-11-20', '11:30:00', '12:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1053, 'Friday', '2023-08-14', '2023-11-20', '12:30:00', '13:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1054, 'Friday', '2023-08-14', '2023-11-20', '13:30:00', '14:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1055, 'Friday', '2023-08-14', '2023-11-20', '14:30:00', '15:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1056, 'Friday', '2023-08-14', '2023-11-20', '15:30:00', '16:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1057, 'Friday', '2023-08-14', '2023-11-20', '16:30:00', '17:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1058, 'Friday', '2023-08-14', '2023-11-20', '17:30:00', '18:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1059, 'Friday', '2023-08-14', '2023-11-20', '18:30:00', '19:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1060, 'Friday', '2023-08-14', '2023-11-20', '19:30:00', '20:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1061, 'Saturday', '2023-08-14', '2023-11-20', '07:30:00', '08:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1062, 'Saturday', '2023-08-14', '2023-11-20', '08:30:00', '09:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1063, 'Saturday', '2023-08-14', '2023-11-20', '09:30:00', '10:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1064, 'Saturday', '2023-08-14', '2023-11-20', '10:30:00', '11:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1065, 'Saturday', '2023-08-14', '2023-11-20', '11:30:00', '12:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1066, 'Saturday', '2023-08-14', '2023-11-20', '12:30:00', '13:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1067, 'Saturday', '2023-08-14', '2023-11-20', '13:30:00', '14:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1068, 'Saturday', '2023-08-14', '2023-11-20', '14:30:00', '15:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1069, 'Saturday', '2023-08-14', '2023-11-20', '15:30:00', '16:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1070, 'Saturday', '2023-08-14', '2023-11-20', '16:30:00', '17:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1071, 'Saturday', '2023-08-14', '2023-11-20', '17:30:00', '18:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1072, 'Saturday', '2023-08-14', '2023-11-20', '18:30:00', '19:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1073, 'Saturday', '2023-08-14', '2023-11-20', '19:30:00', '20:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1074, 'Sunday', '2023-08-14', '2023-12-20', '07:30:00', '08:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1075, 'Sunday', '2023-08-14', '2023-12-20', '08:30:00', '09:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1076, 'Sunday', '2023-08-14', '2023-12-20', '09:30:00', '10:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1077, 'Sunday', '2023-08-14', '2023-12-20', '10:30:00', '11:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1078, 'Sunday', '2023-08-14', '2023-12-20', '11:30:00', '12:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1079, 'Sunday', '2023-08-14', '2023-12-20', '12:30:00', '13:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1080, 'Sunday', '2023-08-14', '2023-12-20', '13:30:00', '14:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1081, 'Sunday', '2023-08-14', '2023-12-20', '14:30:00', '15:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1082, 'Sunday', '2023-08-14', '2023-12-20', '15:30:00', '16:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1083, 'Sunday', '2023-08-14', '2023-12-20', '16:30:00', '17:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1084, 'Sunday', '2023-08-14', '2023-12-20', '17:30:00', '18:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1085, 'Sunday', '2023-08-14', '2023-12-20', '18:30:00', '19:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1086, 'Sunday', '2023-08-14', '2023-12-20', '19:30:00', '20:30:00', '', 'CSL1', '', '', '', '', 30, 'VACANT'),
(1087, 'Monday', '2023-08-14', '2023-11-20', '07:30:00', '08:30:00', '', 'CSL2', '', '', '', '', 30, 'VACANT'),
(1088, 'Monday', '2023-08-14', '2023-11-20', '08:30:00', '09:30:00', '', 'CSL2', '', '', '', '', 30, 'VACANT'),
(1089, 'Monday', '2023-08-14', '2023-11-20', '09:30:00', '10:30:00', '', 'CSL2', '', '', '', '', 30, 'VACANT'),
(1090, 'Monday', '2023-08-14', '2023-11-20', '10:30:00', '11:30:00', '', 'CSL2', '', '', '', '', 30, 'VACANT'),
(1091, 'Monday', '2023-08-14', '2023-11-20', '11:30:00', '12:30:00', '', 'CSL2', '', '', '', '', 30, 'VACANT'),
(1092, 'Monday', '2023-08-14', '2023-11-20', '12:30:00', '13:30:00', '', 'CSL2', '', '', '', '', 30, 'VACANT'),
(1093, 'Monday', '2023-08-14', '2023-11-20', '13:30:00', '14:30:00', '', 'CSL2', '', '', '', '', 30, 'VACANT'),
(1094, 'Monday', '2023-08-14', '2023-11-20', '14:30:00', '15:30:00', '', 'CSL2', '', '', '', '', 30, 'VACANT'),
(1095, 'Monday', '2023-08-14', '2023-11-20', '15:30:00', '16:30:00', '', 'CSL2', '', '', '', '', 30, 'VACANT'),
(1096, 'Monday', '2023-08-14', '2023-11-20', '16:30:00', '17:30:00', '', 'CSL2', '', '', '', '', 30, 'VACANT'),
(1097, 'Monday', '2023-08-14', '2023-11-20', '17:30:00', '18:30:00', '', 'CSL2', '', '', '', '', 30, 'VACANT'),
(1098, 'Monday', '2023-08-14', '2023-11-20', '18:30:00', '19:30:00', '', 'CSL2', '', '', '', '', 30, 'VACANT'),
(1099, 'Monday', '2023-08-14', '2023-11-20', '19:30:00', '20:30:00', '', 'CSL2', '', '', '', '', 30, 'VACANT'),
(1100, 'Monday', '2023-08-14', '2023-12-20', '07:30:00', '08:30:00', '', 'CSL3', '', '', '', '', 30, 'VACANT'),
(1101, 'Monday', '2023-08-14', '2023-12-20', '08:30:00', '09:30:00', '', 'CSL3', '', '', '', '', 30, 'VACANT'),
(1102, 'Monday', '2023-08-14', '2023-12-20', '09:30:00', '10:30:00', '', 'CSL3', '', '', '', '', 30, 'VACANT'),
(1103, 'Monday', '2023-08-14', '2023-12-20', '10:30:00', '11:30:00', '', 'CSL3', '', '', '', '', 30, 'VACANT'),
(1104, 'Monday', '2023-08-14', '2023-12-20', '11:30:00', '12:30:00', '', 'CSL3', '', '', '', '', 30, 'VACANT'),
(1105, 'Monday', '2023-08-14', '2023-12-20', '12:30:00', '13:30:00', '', 'CSL3', '', '', '', '', 30, 'VACANT'),
(1106, 'Monday', '2023-08-14', '2023-12-20', '13:30:00', '14:30:00', '', 'CSL3', '', '', '', '', 30, 'VACANT'),
(1107, 'Monday', '2023-08-14', '2023-12-20', '14:30:00', '15:30:00', '', 'CSL3', '', '', '', '', 30, 'VACANT'),
(1108, 'Monday', '2023-08-14', '2023-12-20', '15:30:00', '16:30:00', '', 'CSL3', '', '', '', '', 30, 'VACANT'),
(1109, 'Monday', '2023-08-14', '2023-12-20', '16:30:00', '17:30:00', '', 'CSL3', '', '', '', '', 30, 'VACANT'),
(1110, 'Monday', '2023-08-14', '2023-12-20', '17:30:00', '18:30:00', '', 'CSL3', '', '', '', '', 30, 'VACANT'),
(1111, 'Monday', '2023-08-14', '2023-12-20', '18:30:00', '19:30:00', '', 'CSL3', '', '', '', '', 30, 'VACANT'),
(1112, 'Monday', '2023-08-14', '2023-12-20', '19:30:00', '20:30:00', '', 'CSL3', '', '', '', '', 30, 'VACANT'),
(1113, 'Monday', '2023-08-14', '2023-12-20', '07:30:00', '08:30:00', '', 'CSL4', '', '', '', '', 30, 'VACANT'),
(1114, 'Monday', '2023-08-14', '2023-12-20', '08:30:00', '09:30:00', '', 'CSL4', '', '', '', '', 30, 'VACANT'),
(1115, 'Monday', '2023-08-14', '2023-12-20', '09:30:00', '10:30:00', '', 'CSL4', '', '', '', '', 30, 'VACANT'),
(1116, 'Monday', '2023-08-14', '2023-12-20', '10:30:00', '11:30:00', '', 'CSL4', '', '', '', '', 30, 'VACANT'),
(1117, 'Monday', '2023-08-14', '2023-12-20', '11:30:00', '12:30:00', '', 'CSL4', '', '', '', '', 30, 'VACANT'),
(1118, 'Monday', '2023-08-14', '2023-12-20', '12:30:00', '13:30:00', '', 'CSL4', '', '', '', '', 30, 'VACANT'),
(1119, 'Monday', '2023-08-14', '2023-12-20', '13:30:00', '14:30:00', '', 'CSL4', '', '', '', '', 30, 'VACANT'),
(1120, 'Monday', '2023-08-14', '2023-12-20', '14:30:00', '15:30:00', '', 'CSL4', '', '', '', '', 30, 'VACANT'),
(1121, 'Monday', '2023-08-14', '2023-12-20', '15:30:00', '16:30:00', '', 'CSL4', '', '', '', '', 30, 'VACANT'),
(1122, 'Monday', '2023-08-14', '2023-12-20', '16:30:00', '17:30:00', '', 'CSL4', '', '', '', '', 30, 'VACANT'),
(1123, 'Monday', '2023-08-14', '2023-12-20', '17:30:00', '18:30:00', '', 'CSL4', '', '', '', '', 30, 'VACANT'),
(1124, 'Monday', '2023-08-14', '2023-12-20', '18:30:00', '19:30:00', '', 'CSL4', '', '', '', '', 30, 'VACANT'),
(1125, 'Monday', '2023-08-14', '2023-12-20', '19:30:00', '20:30:00', '', 'CSL4', '', '', '', '', 30, 'VACANT'),
(1126, 'Monday', '2023-08-14', '2023-12-20', '07:30:00', '08:30:00', '', 'CSL5', '', '', '', '', 30, 'VACANT'),
(1127, 'Monday', '2023-08-14', '2023-12-20', '08:30:00', '09:30:00', '', 'CSL5', '', '', '', '', 30, 'VACANT'),
(1128, 'Monday', '2023-08-14', '2023-12-20', '09:30:00', '10:30:00', '', 'CSL5', '', '', '', '', 30, 'VACANT'),
(1129, 'Monday', '2023-08-14', '2023-12-20', '10:30:00', '11:30:00', '', 'CSL5', '', '', '', '', 30, 'VACANT'),
(1130, 'Monday', '2023-08-14', '2023-12-20', '11:30:00', '12:30:00', '', 'CSL5', '', '', '', '', 30, 'VACANT'),
(1131, 'Monday', '2023-08-14', '2023-12-20', '12:30:00', '13:30:00', '', 'CSL5', '', '', '', '', 30, 'VACANT'),
(1132, 'Monday', '2023-08-14', '2023-12-20', '13:30:00', '14:30:00', '', 'CSL5', '', '', '', '', 30, 'VACANT'),
(1133, 'Monday', '2023-08-14', '2023-12-20', '14:30:00', '15:30:00', '', 'CSL5', '', '', '', '', 30, 'VACANT'),
(1134, 'Monday', '2023-08-14', '2023-12-20', '15:30:00', '16:30:00', '', 'CSL5', '', '', '', '', 30, 'VACANT'),
(1135, 'Monday', '2023-08-14', '2023-12-20', '16:30:00', '17:30:00', '', 'CSL5', '', '', '', '', 30, 'VACANT'),
(1136, 'Monday', '2023-08-14', '2023-12-20', '17:30:00', '18:30:00', '', 'CSL5', '', '', '', '', 30, 'VACANT'),
(1137, 'Monday', '2023-08-14', '2023-12-20', '18:30:00', '19:30:00', '', 'CSL5', '', '', '', '', 30, 'VACANT'),
(1138, 'Monday', '2023-08-14', '2023-12-20', '19:30:00', '20:30:00', '', 'CSL5', '', '', '', '', 30, 'VACANT'),
(1139, 'Monday', '2023-08-14', '2023-12-20', '07:30:00', '08:30:00', '', 'CSL6', '', '', '', '', 30, 'VACANT'),
(1140, 'Monday', '2023-08-14', '2023-12-20', '08:30:00', '09:30:00', '', 'CSL6', '', '', '', '', 30, 'VACANT'),
(1141, 'Monday', '2023-08-14', '2023-12-20', '09:30:00', '10:30:00', '', 'CSL6', '', '', '', '', 30, 'VACANT'),
(1142, 'Monday', '2023-08-14', '2023-12-20', '10:30:00', '11:30:00', '', 'CSL6', '', '', '', '', 30, 'VACANT'),
(1143, 'Monday', '2023-08-14', '2023-12-20', '11:30:00', '12:30:00', '', 'CSL6', '', '', '', '', 30, 'VACANT'),
(1144, 'Monday', '2023-08-14', '2023-12-20', '12:30:00', '13:30:00', '', 'CSL6', '', '', '', '', 30, 'VACANT'),
(1145, 'Monday', '2023-08-14', '2023-12-20', '13:30:00', '14:30:00', '', 'CSL6', '', '', '', '', 30, 'VACANT'),
(1146, 'Monday', '2023-08-14', '2023-12-20', '14:30:00', '15:30:00', '', 'CSL6', '', '', '', '', 30, 'VACANT'),
(1147, 'Monday', '2023-08-14', '2023-12-20', '15:30:00', '16:30:00', '', 'CSL6', '', '', '', '', 30, 'VACANT'),
(1148, 'Monday', '2023-08-14', '2023-12-20', '16:30:00', '17:30:00', '', 'CSL6', '', '', '', '', 30, 'VACANT'),
(1149, 'Monday', '2023-08-14', '2023-12-20', '17:30:00', '18:30:00', '', 'CSL6', '', '', '', '', 30, 'VACANT'),
(1150, 'Monday', '2023-08-14', '2023-12-20', '18:30:00', '19:30:00', '', 'CSL6', '', '', '', '', 30, 'VACANT'),
(1151, 'Monday', '2023-08-14', '2023-12-20', '19:30:00', '20:30:00', '', 'CSL6', '', '', '', '', 30, 'VACANT'),
(1152, 'Monday', '2023-08-14', '2023-11-20', '07:30:00', '08:30:00', '', 'CSL7', '', '', '', '', 30, 'VACANT'),
(1153, 'Monday', '2023-08-14', '2023-11-20', '08:30:00', '09:30:00', '', 'CSL7', '', '', '', '', 30, 'VACANT'),
(1154, 'Monday', '2023-08-14', '2023-11-20', '09:30:00', '10:30:00', '', 'CSL7', '', '', '', '', 30, 'VACANT'),
(1155, 'Monday', '2023-08-14', '2023-11-20', '10:30:00', '11:30:00', '', 'CSL7', '', '', '', '', 30, 'VACANT'),
(1156, 'Monday', '2023-08-14', '2023-11-20', '11:30:00', '12:30:00', '', 'CSL7', '', '', '', '', 30, 'VACANT'),
(1157, 'Monday', '2023-08-14', '2023-11-20', '12:30:00', '13:30:00', '', 'CSL7', '', '', '', '', 30, 'VACANT'),
(1158, 'Monday', '2023-08-14', '2023-11-20', '13:30:00', '14:30:00', '', 'CSL7', '', '', '', '', 30, 'VACANT'),
(1159, 'Monday', '2023-08-14', '2023-11-20', '14:30:00', '15:30:00', '', 'CSL7', '', '', '', '', 30, 'VACANT'),
(1160, 'Monday', '2023-08-14', '2023-11-20', '15:30:00', '16:30:00', '', 'CSL7', '', '', '', '', 30, 'VACANT'),
(1161, 'Monday', '2023-08-14', '2023-11-20', '16:30:00', '17:30:00', '', 'CSL7', '', '', '', '', 30, 'VACANT'),
(1162, 'Monday', '2023-08-14', '2023-11-20', '17:30:00', '18:30:00', '', 'CSL7', '', '', '', '', 30, 'VACANT'),
(1163, 'Monday', '2023-08-14', '2023-11-20', '18:30:00', '19:30:00', '', 'CSL7', '', '', '', '', 30, 'VACANT'),
(1164, 'Monday', '2023-08-14', '2023-11-20', '19:30:00', '20:30:00', '', 'CSL7', '', '', '', '', 30, 'VACANT'),
(1165, 'Monday', '2023-08-14', '2023-11-20', '07:30:00', '08:30:00', '', 'CSL8', '', '', '', '', 30, 'VACANT'),
(1166, 'Monday', '2023-08-14', '2023-11-20', '08:30:00', '09:30:00', '', 'CSL8', '', '', '', '', 30, 'VACANT'),
(1167, 'Monday', '2023-08-14', '2023-11-20', '09:30:00', '10:30:00', '', 'CSL8', '', '', '', '', 30, 'VACANT'),
(1168, 'Monday', '2023-08-14', '2023-11-20', '10:30:00', '11:30:00', '', 'CSL8', '', '', '', '', 30, 'VACANT'),
(1169, 'Monday', '2023-08-14', '2023-11-20', '11:30:00', '12:30:00', '', 'CSL8', '', '', '', '', 30, 'VACANT'),
(1170, 'Monday', '2023-08-14', '2023-11-20', '12:30:00', '13:30:00', '', 'CSL8', '', '', '', '', 30, 'VACANT'),
(1171, 'Monday', '2023-08-14', '2023-11-20', '13:30:00', '14:30:00', '', 'CSL8', '', '', '', '', 30, 'VACANT'),
(1172, 'Monday', '2023-08-14', '2023-11-20', '14:30:00', '15:30:00', '', 'CSL8', '', '', '', '', 30, 'VACANT'),
(1173, 'Monday', '2023-08-14', '2023-11-20', '15:30:00', '16:30:00', '', 'CSL8', '', '', '', '', 30, 'VACANT'),
(1174, 'Monday', '2023-08-14', '2023-11-20', '16:30:00', '17:30:00', '', 'CSL8', '', '', '', '', 30, 'VACANT'),
(1175, 'Monday', '2023-08-14', '2023-11-20', '17:30:00', '18:30:00', '', 'CSL8', '', '', '', '', 30, 'VACANT'),
(1176, 'Monday', '2023-08-14', '2023-11-20', '18:30:00', '19:30:00', '', 'CSL8', '', '', '', '', 30, 'VACANT'),
(1177, 'Monday', '2023-08-14', '2023-11-20', '19:30:00', '20:30:00', '', 'CSL8', '', '', '', '', 30, 'VACANT');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblclass`
--
ALTER TABLE `tblclass`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcsl`
--
ALTER TABLE `tblcsl`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblschedule`
--
ALTER TABLE `tblschedule`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblclass`
--
ALTER TABLE `tblclass`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblcsl`
--
ALTER TABLE `tblcsl`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblschedule`
--
ALTER TABLE `tblschedule`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1179;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
