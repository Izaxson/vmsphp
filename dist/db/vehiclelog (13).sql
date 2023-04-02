-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2019 at 01:26 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vehiclelog`
--

-- --------------------------------------------------------

--
-- Table structure for table `battery`
--

CREATE TABLE `battery` (
  `id` int(100) NOT NULL,
  `veh_registration` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `battery_no` int(100) NOT NULL,
  `Make` varchar(100) NOT NULL,
  `Size` int(100) NOT NULL,
  `Speedometer_reading` int(100) NOT NULL,
  `Comment` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `battery`
--

INSERT INTO `battery` (`id`, `veh_registration`, `Date`, `battery_no`, `Make`, `Size`, `Speedometer_reading`, `Comment`, `branch`) VALUES
(1, 'KBV051H', '2019-12-18', 12355, 'chloride exide', 12, 123456, 'ok', 'JUJA WEIGHBRIDGE'),
(2, 'KBV763Q', '2019-12-29', 12355, 'dunlop', 50, 30000, 'ok', 'ATHIRIVER WEIGHBRIDGE');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch_id` int(11) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `branch_address` varchar(100) NOT NULL,
  `branch_contact` varchar(50) NOT NULL,
  `skin` varchar(15) NOT NULL,
  `supervisor` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `branch_name`, `branch_address`, `branch_contact`, `skin`, `supervisor`) VALUES
(1, 'ATHIRIVER WEIGHBRIDGE', 'ATHIRIVER-MOMBASA ROAD', '0700202020', 'purple', 0),
(2, 'JUJA WEIGHBRIDGE', 'JUJA-THIKA ROAD ', '0700202020', 'blue', 0),
(3, 'ISINYA WEIGHBRIDGE', 'ISINYA ', '0700202020', 'green', 0);

-- --------------------------------------------------------

--
-- Table structure for table `fuel`
--

CREATE TABLE `fuel` (
  `id` int(100) NOT NULL,
  `veh_registration` varchar(100) NOT NULL,
  `Date` date DEFAULT NULL,
  `Fuel` varchar(100) DEFAULT NULL,
  `Lubricant` varchar(100) NOT NULL,
  `Speedometer_reading` int(100) DEFAULT NULL,
  `Filling_station` varchar(100) DEFAULT NULL,
  `Litres_fuelled` int(100) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `branch` varchar(100) NOT NULL,
  `driver` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fuel`
--

INSERT INTO `fuel` (`id`, `veh_registration`, `Date`, `Fuel`, `Lubricant`, `Speedometer_reading`, `Filling_station`, `Litres_fuelled`, `Amount`, `branch`, `driver`) VALUES
(31, 'KCG362M', '2019-12-15', 'Diesel', 'ok', 188545, 'Meru Shell', 63, 6395, 'JUJA WEIGHBRIDGE', ' Jamal Yaqub'),
(32, 'KCG362M', '2019-12-16', 'Diesel', 'ok', 189220, 'Bypass Shell', 64, 6541, 'JUJA WEIGHBRIDGE', ' Jamal Yaqub'),
(33, 'KCG362M', '2019-12-18', 'Diesel', 'ok', 189958, 'Kenyatta Road Shell', 57, 5757, 'JUJA WEIGHBRIDGE', ' Jamal Yaqub'),
(34, 'KCG362M', '2019-12-25', 'Diesel', 'ok', 190917, 'Kenyatta Road Shell', 26, 2851, 'JUJA WEIGHBRIDGE', ' Jamal Yaqub'),
(35, 'KCG362M', '2019-12-27', 'Diesel', 'ok', 123456, 'Ruiru Shell', 34, 3456, 'JUJA WEIGHBRIDGE', ' Jamal Yaqub'),
(36, 'KCT035D', '2019-12-29', 'Diesel', 'ok', 123456, 'shell mbs rd', 23, 1234, 'JUJA WEIGHBRIDGE', ' Jamal Yaqub');

-- --------------------------------------------------------

--
-- Table structure for table `history_log`
--

CREATE TABLE `history_log` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history_log`
--

INSERT INTO `history_log` (`log_id`, `user_id`, `action`, `date`) VALUES
(1076, 68, 'has logged out the system at ', '2019-12-30 11:36:04'),
(1077, 9, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1078, 0, 'has logged out the system at ', '2019-12-30 11:37:33'),
(1079, 9, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1080, 216, 'has added trip in the system at ', '2019-12-30 11:39:48'),
(1081, 0, 'has added trip in the system at ', '2019-12-30 11:42:57'),
(1082, 52, 'has logged out the system at ', '2019-12-30 11:44:37'),
(1083, 9, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1084, 218, 'has added trip in the system at ', '2019-12-30 11:45:17'),
(1085, 9, 'has logged out the system at ', '2019-12-30 14:29:39'),
(1086, 50, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1087, 50, 'has logged out the system at ', '2019-12-30 14:31:43'),
(1088, 68, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1089, 68, 'has logged out the system at ', '2019-12-30 14:42:11'),
(1090, 9, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1091, 219, 'has added trip in the system at ', '2019-12-30 14:43:27'),
(1092, 0, 'has logged out the system at ', '2019-12-30 15:12:06');

-- --------------------------------------------------------

--
-- Table structure for table `occurence`
--

CREATE TABLE `occurence` (
  `occ_id` int(100) NOT NULL,
  `Veh_registration` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `Occurence` varchar(100) NOT NULL,
  `Driver` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `occurence`
--

INSERT INTO `occurence` (`occ_id`, `Veh_registration`, `Date`, `Occurence`, `Driver`, `branch`) VALUES
(1, '', '2019-12-02', 'handed over to juma', '', 'JUJA WEIGHBRIDGE'),
(2, 'KBV763Q', '2019-12-02', 'handed over to juma', '', 'JUJA WEIGHBRIDGE'),
(3, 'KCG362M', '2019-12-17', 'handed over to juma', '', 'JUJA WEIGHBRIDGE'),
(4, 'KCG362M', '2019-12-17', 'handed over to juma', '', 'JUJA WEIGHBRIDGE'),
(5, 'KCG362M', '2019-12-17', 'handed over to juma', ' Jamal Yaqub', 'JUJA WEIGHBRIDGE'),
(6, 'KCG362M', '2019-12-17', 'handed over to juma', ' Jamal Yaqub', 'JUJA WEIGHBRIDGE'),
(7, 'KCG361M', '2019-12-17', 'handed over to juma', ' Jamal Yaqub', 'JUJA WEIGHBRIDGE'),
(8, 'KCG362M', '2019-12-18', 'handed over to juma', ' Jamal Yaqub', 'JUJA WEIGHBRIDGE'),
(9, 'KBV051H', '2019-12-30', 'It is a long established f', ' Jamal Yaqub', 'JUJA WEIGHBRIDGE'),
(10, 'KBV051H', '2019-12-31', 'It is a long established fact that a reader ', ' Jamal Yaqub', 'JUJA WEIGHBRIDGE');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(6) NOT NULL,
  `Role_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `Role_name`) VALUES
(1, 'Driver'),
(2, 'Manager'),
(3, 'Driver');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `veh_registration` varchar(100) NOT NULL,
  `Date_in` date NOT NULL,
  `Date_out` date NOT NULL,
  `Speedometer_reading` int(100) NOT NULL,
  `Garage` varchar(100) NOT NULL,
  `Nature_of_service` varchar(100) NOT NULL,
  `Next_service` int(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `driver` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `veh_registration`, `Date_in`, `Date_out`, `Speedometer_reading`, `Garage`, `Nature_of_service`, `Next_service`, `branch`, `driver`) VALUES
(13, 'KBV051H', '2019-12-27', '2020-01-01', 123456, 'UNITY GARAGE', 'ROUTINE', 128456, 'JUJA WEIGHBRIDGE', ''),
(14, 'KBV763Q', '2019-12-27', '2019-12-27', 198763, 'UNITY GARAGE', 'ROUTINE', 203763, 'JUJA WEIGHBRIDGE', ''),
(15, 'KCG361M', '2019-12-27', '2019-12-27', 227111, 'UNITY GARAGE', 'ROUTINE', 228111, 'JUJA WEIGHBRIDGE', ''),
(16, 'KBV051H', '2019-12-26', '2019-12-27', 123456, 'UNITY GARAGE', 'ROUTINE', 128456, 'JUJA WEIGHBRIDGE', ''),
(17, 'KCG362M', '2020-01-01', '2020-01-02', 27000, 'UNITY GARAGE', 'ROUTINE', 28000, 'JUJA WEIGHBRIDGE', ' Jamal Yaqub'),
(18, 'KCK371W', '2019-12-27', '2019-12-27', 30000, 'UNITY GARAGE', 'ROUTINE', 35000, 'JUJA WEIGHBRIDGE', ' Jamal Yaqub'),
(19, 'KBV051H', '2019-12-23', '2019-12-29', 123456, 'UNITY GARAGE', 'ROUTINE', 128456, 'ATHIRIVER WEIGHBRIDGE', ' Roy rukunga'),
(20, 'KCG362M', '2019-12-15', '2019-12-30', 123456, 'UNITY GARAGE', 'ROUTINE', 128456, 'JUJA WEIGHBRIDGE', ' Jamal Yaqub');

-- --------------------------------------------------------

--
-- Table structure for table `tblinbox`
--

CREATE TABLE `tblinbox` (
  `id` int(11) NOT NULL,
  `message_date` date NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `sendto` int(11) NOT NULL,
  `senderid` int(11) NOT NULL,
  `sender_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblinbox`
--

INSERT INTO `tblinbox` (`id`, `message_date`, `subject`, `message`, `sendto`, `senderid`, `sender_name`) VALUES
(1, '2019-06-22', 'done', 'done', 1, 11, 'abdow, Isaac'),
(2, '2019-06-22', 'done', 'noted', 11, 1, 'Administrator'),
(3, '2019-07-01', 'rpreventive maintenance', 'Kindly Confirm serviced inventory at juja.', 13, 1, 'Administrator'),
(4, '2019-07-03', 'done', 'ss', 11, 1, 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `tblsent`
--

CREATE TABLE `tblsent` (
  `id` int(11) NOT NULL,
  `message_date` datetime NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `sendto` int(11) NOT NULL,
  `senderid` int(11) NOT NULL,
  `sender_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsent`
--

INSERT INTO `tblsent` (`id`, `message_date`, `subject`, `message`, `sendto`, `senderid`, `sender_name`) VALUES
(1, '2019-06-22 06:11:18', 'done', 'done', 1, 11, 'abdow, Isaac'),
(2, '2019-06-22 06:11:53', 'done', 'noted', 11, 1, 'Administrator'),
(3, '2019-07-01 15:20:38', 'rpreventive maintenance', 'Kindly Confirm serviced inventory at juja.', 13, 1, 'Administrator'),
(4, '2019-07-03 16:04:07', 'done', 'ss', 11, 1, 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `tools`
--

CREATE TABLE `tools` (
  `tool_id` int(100) NOT NULL,
  `veh_registration` varchar(100) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Tool_name` varchar(100) DEFAULT NULL,
  `Driver` varchar(100) DEFAULT NULL,
  `Comments` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tools`
--

INSERT INTO `tools` (`tool_id`, `veh_registration`, `Date`, `Tool_name`, `Driver`, `Comments`, `branch`) VALUES
(1, 'KBV763Q', '2019-12-10', 'Spanner', 'Jamal Yaqub', 'ok', 'JUJA WEIGHBRIDGE'),
(2, 'KBV051H', '2019-12-10', 'Spanner', '', 'ok', 'JUJA WEIGHBRIDGE'),
(3, 'KBV051H', '2019-12-10', 'Spanner', '', 'ok', 'JUJA WEIGHBRIDGE'),
(4, 'KBV051H', '2019-12-10', 'Spanner', ' Jamal Yaqub', 'ggg', 'JUJA WEIGHBRIDGE'),
(5, 'KBV051H', '2019-12-10', 'kk', ' Jamal Yaqub', 'hhh', 'JUJA WEIGHBRIDGE');

-- --------------------------------------------------------

--
-- Table structure for table `trips`
--

CREATE TABLE `trips` (
  `id` int(11) NOT NULL,
  `veh_registration` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `first_reading` int(100) NOT NULL,
  `Second_reading` int(100) NOT NULL,
  `distance` varchar(100) NOT NULL,
  `time_out` varchar(6) NOT NULL,
  `time_in` varchar(6) NOT NULL,
  `Purpose_of_journey` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `driver` varchar(100) NOT NULL,
  `gauge_reading` varchar(100) NOT NULL,
  `Application_status` varchar(100) NOT NULL DEFAULT 'Pending',
  `Approved_by` varchar(100) NOT NULL,
  `Approved_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trips`
--

INSERT INTO `trips` (`id`, `veh_registration`, `Date`, `first_reading`, `Second_reading`, `distance`, `time_out`, `time_in`, `Purpose_of_journey`, `branch`, `driver`, `gauge_reading`, `Application_status`, `Approved_by`, `Approved_Date`) VALUES
(189, 'KCG362M', '2019-12-12', 187808, 187847, '39', '12:00', '12:50', 'REFUELLING', 'JUJA WEIGHBRIDGE', ' Jamal Yaqub', '', 'Approved', 'Jacob Njue', '2019-12-25'),
(190, 'KCG362M', '2019-12-12', 187848, 187861, '13', '19:32', '20:00', 'CHASED KBU 430C AND DIVERTED', 'JUJA WEIGHBRIDGE', ' Martin Paul ', '', 'Approved', 'Jacob Njue', '2019-12-25'),
(191, 'KCG362M', '2019-12-12', 187861, 187902, '41', '22:52', '23:40', 'ROAD PATROL ', 'JUJA WEIGHBRIDGE', ' Martin Paul ', '', 'Approved', 'Jacob Njue', '2019-12-25'),
(192, 'KCG362M', '2019-12-12', 187902, 187922, '20', '23:46', '00:25', 'RSCUE MOBILE UNIT AND BACK', 'JUJA WEIGHBRIDGE', ' Martin Paul ', '', 'Approved', 'Jacob Njue', '2019-12-25'),
(193, 'KCG362M', '2019-12-12', 187922, 187944, '22', '04:43', '05:11', 'CHASED KBV 974V AND VERIFIED TRUCK EMPTY', 'JUJA WEIGHBRIDGE', ' Martin Paul ', '', 'Approved', 'Jacob Njue', '2019-12-25'),
(194, 'KCG362M', '2019-12-13', 187944, 187959, '15', '10:39', '10:45', 'CHASED AND RETURNED KCG046R', 'JUJA WEIGHBRIDGE', ' Jonah Mwaura', '', 'Approved', 'Jacob Njue', '2019-12-25'),
(195, 'KCG362M', '2019-12-13', 187959, 187974, '15', '10:50', '11:17', 'CHASED KCQ902V', 'JUJA WEIGHBRIDGE', ' Jonah Mwaura', '', 'Approved', 'Jacob Njue', '2019-12-25'),
(196, 'KCG362M', '2019-12-13', 187974, 187989, '15', '13:18', '13:41', 'CHASED KBN 634F AND DIVERTED', 'JUJA WEIGHBRIDGE', ' Jonah Mwaura', '', 'Approved', 'Jacob Njue', '2019-12-25'),
(197, 'KCG362M', '2019-12-13', 187989, 188011, '22', '19:34', '20:01', 'CHASED AND RETURNED KCG046R', 'JUJA WEIGHBRIDGE', ' Martin Paul ', '', 'Approved', 'Jacob Njue', '2019-12-25'),
(198, 'KCG362M', '2019-12-15', 188545, 189058, '513', '04:46', '08:00', 'mobile operations', 'JUJA WEIGHBRIDGE', ' Jamal Yaqub', '', 'Approved', 'Jacob Njue', '2019-12-25'),
(199, 'KCG362M', '2019-12-25', 188545, 188976, '431', '14:01', '15:01', 'mobile operations', 'JUJA WEIGHBRIDGE', ' Jamal Yaqub', 'Full Tank', 'Approved', 'Jacob Njue', '2019-12-25'),
(205, 'KCG362M', '2019-12-27', 190123, 190233, '110', '10:30', '11:23', 'FROM JUJA TO athiriver', 'JUJA WEIGHBRIDGE', ' Jamal Yaqub', 'Full Tank', 'Approved', 'Jacob Njue', '2019-12-27'),
(208, 'KCT035D', '2019-12-01', 198654, 198675, '21', '16:02', '19:02', 'FROM JUJA TO HOME', 'JUJA WEIGHBRIDGE', ' Jamal Yaqub', 'Full Tank', 'Rejected', 'Daniel Otieno ', '2019-12-29'),
(210, 'KCG362M', '2019-12-29', 176890, 177654, '764', '17:01', '04:02', 'mobile operations', 'ISINYA WEIGHBRIDGE', ' Dalmas Otieno', 'Full Tank', 'Approved', 'Jackson Kihiu', '2019-12-30'),
(211, 'KCG362M', '2019-12-29', 190120, 190345, '225', '12:34', '13:15', 'chase', 'JUJA WEIGHBRIDGE', ' Daniel Otieno ', 'Full Tank', 'Approved', 'Daniel Otieno ', '2019-12-29'),
(212, 'KBV763Q', '2019-12-26', 1234, 3000, '1766', '05:02', '08:57', 'from athiriver to juja', 'JUJA WEIGHBRIDGE', ' Jamal Yaqub', 'Full Tank', 'Approved', 'Daniel Otieno ', '2019-12-30'),
(213, 'KCG361M', '2019-12-23', 1234, 3000, '1766', '18:01', '21:02', 'from athiriver to juja', 'JUJA WEIGHBRIDGE', ' Jamal Yaqub', 'Full Tank', 'Approved', 'Daniel Otieno ', '2019-12-30'),
(214, 'KCG362M', '2019-12-30', 1234, 3000, '1766', '17:02', '17:50', 'FROM JUJA TO HOME', 'JUJA WEIGHBRIDGE', ' Jamal Yaqub', 'Full Tank', 'Approved', 'Daniel Otieno ', '2019-12-30'),
(215, 'KBV768H', '2019-12-30', 1234, 2344, '1110', '03:01', '04:00', 'FROM JUJA TO HOME', 'JUJA WEIGHBRIDGE', ' Jamal Yaqub', 'Full Tank', 'Approved', 'Daniel Otieno ', '2019-12-30'),
(216, 'KCG362M', '2019-12-30', 1234, 3000, '1766', '02:00', '02:51', 'FROM JUJA TO HOME', 'JUJA WEIGHBRIDGE', ' Jamal Yaqub', 'Full Tank', 'Approved', 'Daniel Otieno ', '2019-12-30'),
(217, 'KCG362M', '2019-12-30', 1234, 3000, '1766', '15:02', '09:01', 'mobile operations', 'JUJA WEIGHBRIDGE', ' Jamal Yaqub', 'Full Tank', 'Approved', 'Daniel Otieno ', '2019-12-30'),
(218, 'KCT035D', '2019-12-30', 1234, 3000, '1766', '14:01', '17:57', 'from athiriver to juja', 'JUJA WEIGHBRIDGE', ' Jamal Yaqub', 'Full Tank', 'Rejected', 'Daniel Otieno ', '2019-12-30'),
(219, 'KBV763Q', '2019-12-26', 1234, 3000, '1766', '02:02', '11:55', 'FROM JUJA TO HOME', 'JUJA WEIGHBRIDGE', ' Jamal Yaqub', 'Full Tank', 'Pending', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tyres`
--

CREATE TABLE `tyres` (
  `tyre_id` int(100) NOT NULL,
  `veh_registration` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `make` varchar(100) NOT NULL,
  `Tyre _Number` int(100) NOT NULL,
  `size` int(100) NOT NULL,
  `Speedometer_reading` int(100) NOT NULL,
  `Position` varchar(100) NOT NULL,
  `Comments` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tyres`
--

INSERT INTO `tyres` (`tyre_id`, `veh_registration`, `Date`, `make`, `Tyre _Number`, `size`, `Speedometer_reading`, `Position`, `Comments`) VALUES
(1, 'KBV051H', '2019-12-19', 'michelin', 0, 5645, 0, 'rear', 'ok'),
(2, 'KBV051H', '2019-12-25', 'michelin', 0, 5645, 0, 'rear', 'OK');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `Role` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `name`, `status`, `branch_id`, `Role`) VALUES
(9, 'jamal_yaqub', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Jamal Yaqub', 'active', 2, 3),
(42, 'George_Mwangolo', 'a1Bz20ydqelm8m1wql2eb8ccc5f36df627171b3b96d0d786fd', 'George Mwangolo', 'active', 500, 1),
(44, 'Barnie_Kalume', 'a1Bz20ydqelm8m1wql445a2d838ed105e563ba85ed8737b6d4', 'Barnie Kalume', 'active', 1, 2),
(49, 'Roy_rukunga', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Roy rukunga', 'active', 1, 3),
(50, 'Jacob_Njue', 'a1Bz20ydqelm8m1wqla0909d42adb9c14eb1dd92e4d48d7ae5', 'Jacob Njue', 'active', 1, 2),
(52, 'Isaac_Abdow', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Isaac Abdow', 'active', 0, 0),
(53, 'ismail_abdow', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Ismail Abdow', 'active', 0, 0),
(54, 'Bernard_bii', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Bernard Bii', 'active', 2, 2),
(55, 'Jonah_Mwaura', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Jonah Mwaura', 'active', 2, 3),
(56, 'Anthony_Lusweti', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Anthony Lusweti', 'active', 2, 3),
(57, 'Joseph_Mbati', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Joseph Mbati', 'active', 1, 3),
(59, 'Juma_Kama', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Juma Kama', 'active', 2, 3),
(60, 'isaacabdow@sgs.com', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Isaac Abdow', 'active', 1, 2),
(61, 'Ian_Kababa', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Ian  Kababa', 'active', 2, 2),
(62, 'jacob_okal', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Jacob Okal', 'active', 2, 3),
(63, 'Isaac_Wanjohi', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Isaac Wanjohi', 'active', 2, 2),
(64, 'Shadrack_Kimanzi', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Shadrack Kimanzi', 'active', 1, 3),
(65, 'Dalmas_Otieno', 'a1Bz20ydqelm8m1wql827ccb0eea8a706c4c34a16891f84e7b', 'Dalamas Otieno', 'active', 3, 2),
(66, 'Dalmas_Otieno', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Dalmas Otieno', 'active', 3, 3),
(67, 'Martin_Paul', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Martin Paul ', 'active', 2, 3),
(68, 'Daniel_otieno', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Daniel Otieno ', 'active', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_particulars`
--

CREATE TABLE `vehicle_particulars` (
  `id` int(100) NOT NULL,
  `Veh_registration` varchar(100) NOT NULL,
  `Make` varchar(100) NOT NULL,
  `Colour` varchar(100) NOT NULL,
  `body_type` varchar(100) NOT NULL,
  `Engine_no` varchar(100) NOT NULL,
  `Chassis_no` varchar(100) NOT NULL,
  `year_of_make` date NOT NULL,
  `Ratings` int(100) NOT NULL,
  `Seating_Capacity` int(20) NOT NULL,
  `branch` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_particulars`
--

INSERT INTO `vehicle_particulars` (`id`, `Veh_registration`, `Make`, `Colour`, `body_type`, `Engine_no`, `Chassis_no`, `year_of_make`, `Ratings`, `Seating_Capacity`, `branch`) VALUES
(22, 'KCT035D', 'TOYOTA ', 'BLACK', 'DOUBLE CAB', 'QWERTY123456', 'QWERTY789066655', '0000-00-00', 2800, 5, ''),
(23, 'KCT036D', 'TOYOTA ', 'BLACK', 'DOUBLE CAB', 'QWERTY123456', 'QWERTY789066655', '0000-00-00', 2800, 5, ''),
(24, '', '', '', '', '', '', '0000-00-00', 0, 0, '2'),
(26, 'KCT036D', 'TOYOTA ', 'BLACK', 'DOUBLE CAB', 'QWERTY123456', 'QWERTY7890', '0000-00-00', 2800, 5, '1'),
(27, 'KCT089G', 'TOYOTA ', 'BLACK', 'DOUBLE CAB', 'QWERTY1686r8r89', 'QWERTY789066655', '0000-00-00', 2800, 5, '1'),
(28, 'KCV567F', 'TOYOTA ', 'BLACK', 'DOUBLE CAB', 'QWERTY123456', 'QWERTY7890', '0000-00-00', 2800, 5, '2'),
(30, 'KCC455D', 'TOYOTA ', 'BLACK', 'DOUBLE CAB', 'QWERTY123456', 'QWERTY7890', '0000-00-00', 2800, 5, '1');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_reg`
--

CREATE TABLE `vehicle_reg` (
  `id` int(100) NOT NULL,
  `veh_registration` varchar(100) DEFAULT NULL,
  `branch` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_reg`
--

INSERT INTO `vehicle_reg` (`id`, `veh_registration`, `branch`) VALUES
(1, 'KCT035D', 'JUJA'),
(3, 'KCT089G', 'ATHIRIVER'),
(4, 'KCG361M', 'ATHIRIVER'),
(5, 'KCG362M', 'JUJA'),
(6, 'KCK371W', 'ATHIRIVER'),
(7, 'KBV051H', 'ATHIRIVER'),
(8, 'KBV768H', 'MOMBASA'),
(9, 'KBV763Q', 'ATHIRIVER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `battery`
--
ALTER TABLE `battery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `fuel`
--
ALTER TABLE `fuel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_log`
--
ALTER TABLE `history_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `occurence`
--
ALTER TABLE `occurence`
  ADD PRIMARY KEY (`occ_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblinbox`
--
ALTER TABLE `tblinbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsent`
--
ALTER TABLE `tblsent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tools`
--
ALTER TABLE `tools`
  ADD PRIMARY KEY (`tool_id`);

--
-- Indexes for table `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tyres`
--
ALTER TABLE `tyres`
  ADD PRIMARY KEY (`tyre_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `vehicle_particulars`
--
ALTER TABLE `vehicle_particulars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_reg`
--
ALTER TABLE `vehicle_reg`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `veh_reg` (`veh_registration`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `battery`
--
ALTER TABLE `battery`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT for table `fuel`
--
ALTER TABLE `fuel`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `history_log`
--
ALTER TABLE `history_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1093;

--
-- AUTO_INCREMENT for table `occurence`
--
ALTER TABLE `occurence`
  MODIFY `occ_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblinbox`
--
ALTER TABLE `tblinbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblsent`
--
ALTER TABLE `tblsent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tools`
--
ALTER TABLE `tools`
  MODIFY `tool_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `trips`
--
ALTER TABLE `trips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `tyres`
--
ALTER TABLE `tyres`
  MODIFY `tyre_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `vehicle_particulars`
--
ALTER TABLE `vehicle_particulars`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `vehicle_reg`
--
ALTER TABLE `vehicle_reg`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
