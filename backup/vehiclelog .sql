-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2020 at 09:04 PM
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
  `branch` varchar(100) NOT NULL,
  `driver` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch_id` int(11) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `branch_address` varchar(100) NOT NULL,
  `branch_contact` varchar(50) NOT NULL,
  `skin` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `branch_name`, `branch_address`, `branch_contact`, `skin`) VALUES
(1, 'ATHIRIVER WEIGHBRIDGE', 'ATHIRIVER-MOMBASA ROAD', '0700202020', 'purple'),
(2, 'JUJA WEIGHBRIDGE', 'JUJA-THIKA ROAD ', '0702831582', 'purple'),
(3, 'ISINYA WEIGHBRIDGE', 'ISINYA ', '0702202020', 'purple'),
(4, 'demo', '1234', '0700202020', 'blue');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` int(100) NOT NULL,
  `dept_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `dept_name`) VALUES
(1, 'TRANSPORTATION'),
(2, 'FUMIGATION'),
(3, 'OIL&GAS'),
(4, 'MINERALS'),
(5, 'HEAD OFFICE NAIROBI'),
(6, 'HEAD OFFICE MOMBASA');

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
(62, 'KCG362N', '2020-01-17', 'Diesel', 'ok', 198763, 'shell mbs rd', 45, 5645, 'demo', ' demo');

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
(1764, 52, 'has logged  in the system at ', '2020-01-22 23:27:12'),
(1765, 52, 'has logged  in the system at ', '2020-01-22 23:42:25'),
(1766, 52, 'has logged  out the system at ', '0000-00-00 00:00:00'),
(1767, 52, 'has logged  in the system at ', '2020-01-22 23:45:37'),
(1768, 52, 'has logged  out the system at ', '2020-01-23 12:47:03'),
(1769, 52, 'has logged  in the system at ', '2020-01-23 12:47:10'),
(1770, 52, 'has added   vehicle   in the system at ', '2020-01-23 12:55:57'),
(1771, 52, 'has added   vehicle   in the system at ', '2020-01-23 12:57:48'),
(1772, 52, 'has added   vehicle   in the system at ', '2020-01-23 13:00:18'),
(1773, 52, 'has added   vehicle   in the system at ', '2020-01-23 13:05:33'),
(1774, 52, 'has added   vehicle   in the system at ', '2020-01-23 13:19:27'),
(1775, 52, 'has added   vehicle   in the system at ', '2020-01-23 13:20:13'),
(1776, 52, 'has added   vehicle   in the system at ', '2020-01-23 13:20:56'),
(1777, 52, 'has added   vehicle   in the system at ', '2020-01-23 13:23:46'),
(1778, 0, 'has Added new user record in the system at ', '2020-01-23 13:25:17'),
(1779, 0, 'has Added new user record in the system at ', '2020-01-23 13:26:12'),
(1780, 52, 'has added   vehicle   in the system at ', '2020-01-23 13:27:13'),
(1781, 52, 'has added   vehicle   in the system at ', '2020-01-23 13:36:59'),
(1782, 52, 'has logged out the system at ', '2020-01-23 13:51:50'),
(1783, 9, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1784, 9, 'has logged out the system at ', '2020-01-23 13:57:40'),
(1785, 9, 'has logged out in the system at ', '2020-01-23 13:57:40'),
(1786, 9, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1787, 52, 'has logged  in the system at ', '2020-01-23 17:22:53'),
(1788, 52, 'has logged out the system at ', '2020-01-23 18:54:53'),
(1789, 52, 'has logged  in the system at ', '2020-01-23 18:55:06'),
(1790, 52, 'has added   vehicle   in the system at ', '2020-01-25 16:49:07'),
(1791, 52, 'has logged  out the system at ', '2020-01-25 22:38:46'),
(1792, 9, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1793, 9, 'added a Trip record', '2020-01-25 22:41:02'),
(1794, 52, 'has logged  in the system at ', '2020-01-25 22:42:19'),
(1795, 52, 'has added  new Auditor  account  in the system at ', '2020-01-25 22:47:01'),
(1796, 52, 'has added  new Auditor  account  in the system at ', '2020-01-25 22:47:08'),
(1797, 52, 'has added  new Auditor  account  in the system at ', '2020-01-25 22:47:22'),
(1798, 52, 'has logged out the system at ', '2020-01-25 22:58:34'),
(1799, 52, 'has logged out in the system at ', '2020-01-25 22:58:34'),
(1800, 9, 'has logged in the system at ', '2020-01-25 22:58:46'),
(1801, 9, 'has logged out the system at ', '2020-01-25 22:59:21'),
(1802, 9, 'has logged out in the system at ', '2020-01-25 22:59:21'),
(1803, 54, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1804, 54, 'has logged out the system at ', '2020-01-25 23:01:48'),
(1805, 52, 'has logged  in the system at ', '2020-01-25 23:02:00');

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
(1, 'KBV051H', '2020-01-09', 'It is a long established fact that a reader ', ' Jacob Njue', 'ATHIRIVER WEIGHBRIDGE');

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
  `shift` varchar(100) NOT NULL,
  `Application_status` varchar(100) NOT NULL DEFAULT 'Pending',
  `Approved_by` varchar(100) NOT NULL,
  `Approved_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trips`
--

INSERT INTO `trips` (`id`, `veh_registration`, `Date`, `first_reading`, `Second_reading`, `distance`, `time_out`, `time_in`, `Purpose_of_journey`, `branch`, `driver`, `shift`, `Application_status`, `Approved_by`, `Approved_Date`) VALUES
(381, 'KCG362M', '2020-01-21', 198765, 198811, '46', ' 05:11', ' 19:10', 'from athiriver to juja', 'JUJA WEIGHBRIDGE', ' Jamal Yaqub', 'A-DAY SHIFT ', 'Rejected', 'Jamal Yaqub', '2020-01-23'),
(382, 'KCG362M', '2020-01-21', 198765, 198811, '46', ' 05:11', ' 19:10', 'from athiriver to juja', 'JUJA WEIGHBRIDGE', ' Jamal Yaqub', 'A-DAY SHIFT ', 'Rejected', 'Jamal Yaqub', '2020-01-23'),
(383, 'KBV763Q', '2020-01-25', 198765, 198811, '46', ' 10:40', '03:02', 'TO WORK', 'JUJA WEIGHBRIDGE', ' Jamal Yaqub', '', 'Pending', '', '0000-00-00');

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
  `Speedometer_reading` varchar(100) NOT NULL,
  `Position` varchar(100) NOT NULL,
  `Comments` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(50, 'Jacob_Njue', 'a1Bz20ydqelm8m1wqla0909d42adb9c14eb1dd92e4d48d7ae5', 'Jacob Njue', 'active', 1, 0),
(52, 'Isaac_Abdow', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Isaac Abdow', 'active', 0, 0),
(53, 'ismail_abdow', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Ismail Abdow', 'active', 0, 0),
(54, 'Bernard_bii', 'a1Bz20ydqelm8m1wqld93591bdf7860e1e4ee2fca799911215', 'Bernard Bii', 'active', 2, 2),
(55, 'Jonah_Mwaura', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Jonah Mwaura', 'active', 2, 3),
(56, 'David_Mukuria', 'a1Bz20ydqelm8m1wqld93591bdf7860e1e4ee2fca799911215', 'David Mukuria', 'active', 2, 0),
(57, 'Joseph_Mbati', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Joseph Mbati', 'active', 1, 2),
(59, 'Juma_Kama', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Juma Kama', 'active', 3, 3),
(60, 'isaac.abdow@sgs.com', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Isaac Abdow', 'active', 500, 1),
(61, 'Jackson_kihiu', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Jackson Kihiu', 'active', 0, 2),
(62, 'jacob_okal', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Jacob Okal', 'active', 2, 3),
(63, 'Isaac_Wanjohi', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Isaac Wanjohi', 'active', 2, 2),
(64, 'Shadrack_Kimanzi', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Shadrack Kimanzi', 'active', 1, 3),
(66, 'Dalmas_Otieno', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Dalmas Otieno', 'active', 3, 2),
(67, 'Martin_Paul', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Martin Paul ', 'active', 2, 3),
(68, 'Daniel_otieno', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Daniel Otieno ', 'active', 2, 0),
(69, 'George_Obiero', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'George Obiero', 'active', 3, 2),
(70, 'Samow_Hamdy', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Hamdy Samow', 'active', 2, 3),
(72, 'Michael_Kabiru', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Michael Kabiru', 'active', 2, 2),
(73, 'George_ Mberia', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'George  Mberia ', 'active', 0, 2),
(74, 'Benard_Muturi', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Benard  Muturi', 'active', 1, 3),
(75, 'hafsa', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Hamdy Samow', 'active', 0, 2),
(76, 'Joseph_Kamande', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Joseph Kamande', 'active', 2, 2),
(77, 'demo', 'a1Bz20ydqelm8m1wqlfe01ce2a7fbac8fafaed7c982a04e229', 'demo', 'active', 4, 3),
(78, 'Heebaq_Samow', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Heebaq   Samow', 'active', 2, 3),
(79, 'ikram_Samow', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'ikram Samow', 'active', 1, 3);

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
(31, 'KCT035D', 'dunlop', 'BLACK', 'DOUBLE CAB', 'QWERTY123456', 'QWERTY7890', '0000-00-00', 2800, 5, '1');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_reg`
--

CREATE TABLE `vehicle_reg` (
  `id` int(100) NOT NULL,
  `veh_registration` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_reg`
--

INSERT INTO `vehicle_reg` (`id`, `veh_registration`, `branch`) VALUES
(64, 'KCG362M', 'JUJA WEIGHRIDGE'),
(65, 'KCT036D', ''),
(66, 'KCT035D', ''),
(67, 'KCK371W', ''),
(69, 'KCT035F', ''),
(70, 'KBV763Q', ''),
(71, 'KCK371r', '<br />\r\n<b>Notice</b>:  Undefined index: branch in <b>C:xampphtdocs\realtripsadminadd_vehicle_form.ph');

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
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`);

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
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fuel`
--
ALTER TABLE `fuel`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `history_log`
--
ALTER TABLE `history_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1806;

--
-- AUTO_INCREMENT for table `occurence`
--
ALTER TABLE `occurence`
  MODIFY `occ_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `tool_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trips`
--
ALTER TABLE `trips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=384;

--
-- AUTO_INCREMENT for table `tyres`
--
ALTER TABLE `tyres`
  MODIFY `tyre_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `vehicle_particulars`
--
ALTER TABLE `vehicle_particulars`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `vehicle_reg`
--
ALTER TABLE `vehicle_reg`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
