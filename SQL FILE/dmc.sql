-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2023 at 07:51 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dmc`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblappointment`
--

CREATE TABLE `tblappointment` (
  `ID` int(10) NOT NULL,
  `AppointmentNumber` int(10) DEFAULT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(20) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `AppointmentDate` date DEFAULT NULL,
  `AppointmentTime` time DEFAULT NULL,
  `Specialization` varchar(250) DEFAULT NULL,
  `Doctor` int(10) DEFAULT NULL,
  `Message` mediumtext,
  `ApplyDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(250) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblappointment`
--

INSERT INTO `tblappointment` (`ID`, `AppointmentNumber`, `Name`, `MobileNumber`, `Email`, `AppointmentDate`, `AppointmentTime`, `Specialization`, `Doctor`, `Message`, `ApplyDate`, `Remark`, `Status`, `UpdationDate`) VALUES
(9, 736270536, 'Md. Sanwar Hossain', 12345, 'sanwar@nstu.edu.bd', '2023-09-11', '22:55:00', '1', 1, 'I have an issue', '2023-09-10 17:00:08', 'ok', 'Approved', '2023-09-10 17:03:51'),
(10, 813711426, 'Md. Sanwar Hossain2', 123456, 'sanwar.iit.nstu@gmail.com', '2023-09-11', '14:01:00', '2', 2, 'ok', '2023-09-10 17:01:47', NULL, NULL, NULL),
(11, 268894349, 'Sanwar 2', 54321, 'sanwar@nstu.edu.bd', '2023-09-20', '13:56:00', '1', 1, 'I have an issue', '2023-09-19 06:56:40', 'Ok Final', 'Approved', '2023-09-19 06:57:16'),
(12, 549525181, 'Nasim Molla', 5678, 'nasim@gmail.com', '2023-09-21', '16:38:00', '1', 1, 'I have an issue', '2023-09-19 07:37:14', 'Its perfect', 'Approved', '2023-09-19 07:39:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbldoctor`
--

CREATE TABLE `tbldoctor` (
  `ID` int(5) NOT NULL,
  `FullName` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `Specialization` varchar(250) DEFAULT NULL,
  `Password` varchar(259) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldoctor`
--

INSERT INTO `tbldoctor` (`ID`, `FullName`, `MobileNumber`, `Email`, `Specialization`, `Password`, `CreationDate`) VALUES
(1, 'Dr. Sanwar Hossain', 9787979798, 'sanwar@gmail.com', '1', '9f5a44a734ac9e43b5968d0f3b71d69b', '2023-09-09 15:01:11'),
(2, 'Dr. Talukder ', 6464654646, 'hasan@gmail.com', '2', '202cb962ac59075b964b07152d234b70', '2023-09-09 15:01:59'),
(3, 'Dr. Sazzad', 14253625, 'sazzad@test.com', '3', 'f925916e2754e5e03f75dd58a5733251', '2023-09-09 01:28:44'),
(4, 'Molla ', 1231231230, 'Molla@test.com', '4', 'f925916e2754e5e03f75dd58a5733251', '2023-09-09 01:54:44');

-- --------------------------------------------------------

--
-- Table structure for table `tblspecialization`
--

CREATE TABLE `tblspecialization` (
  `ID` int(5) NOT NULL,
  `Specialization` varchar(250) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblspecialization`
--

INSERT INTO `tblspecialization` (`ID`, `Specialization`, `CreationDate`) VALUES
(1, 'Orthopedics', '2023-09-09 14:22:33'),
(2, 'Internal Medicine', '2023-09-09 14:23:42'),
(3, 'Dermatology', '2023-09-09 14:24:42'),
(4, 'Radiology', '2023-09-09 14:25:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblappointment`
--
ALTER TABLE `tblappointment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbldoctor`
--
ALTER TABLE `tbldoctor`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblspecialization`
--
ALTER TABLE `tblspecialization`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblappointment`
--
ALTER TABLE `tblappointment`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbldoctor`
--
ALTER TABLE `tbldoctor`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblspecialization`
--
ALTER TABLE `tblspecialization`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
