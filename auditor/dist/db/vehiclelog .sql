-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2019 at 01:06 AM
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
  `Comment` varchar(100) NOT NULL
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
(1, 'ATHIRIVER WEIGHBRIDGE', 'ATHIRIVER', '0700202020', 'red'),
(2, 'JUJA WEIGHBRIDGE', 'THIKA ROAD ', '0700202020', 'purple'),
(3, 'ISINYA WEIGHBRIDGE', 'ISINYA ', '0700202020', 'green');

-- --------------------------------------------------------

--
-- Table structure for table `fuel`
--

CREATE TABLE `fuel` (
  `id` int(100) NOT NULL,
  `veh_registration` varchar(100) NOT NULL,
  `Date` varchar(100) DEFAULT NULL,
  `Fuel` varchar(100) DEFAULT NULL,
  `Lubricant` varchar(100) NOT NULL,
  `Speedometer_reading` int(100) DEFAULT NULL,
  `Filling_station` varchar(100) DEFAULT NULL,
  `Litres_fuelled` int(100) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fuel`
--

INSERT INTO `fuel` (`id`, `veh_registration`, `Date`, `Fuel`, `Lubricant`, `Speedometer_reading`, `Filling_station`, `Litres_fuelled`, `Amount`) VALUES
(3, 'KCT036D', '2019-10-24', 'Diesel', 'ok', 123456, 'Ruiru Shell', 45, 5674);

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
(13, 8, 'has logged in the system at ', '2019-10-06 00:36:32'),
(14, 10, 'has logged in the system at ', '2019-10-06 00:38:07'),
(15, 10, 'has logged out the system at ', '2019-10-06 00:38:11'),
(16, 9, 'has logged in the system at ', '2019-10-06 00:38:22'),
(17, 9, 'has logged out the system at ', '2019-10-06 00:38:29'),
(18, 8, 'has logged in the system at ', '2019-10-20 02:33:26'),
(19, 6, 'has logged out the system at ', '2019-10-20 02:35:39'),
(20, 9, 'has logged in the system at ', '2019-10-20 02:35:59'),
(21, 0, 'has logged out the system at ', '2019-10-20 03:08:46'),
(22, 1, 'has logged in the system at ', '2019-10-20 03:08:54'),
(23, 1, 'has logged in the system at ', '2019-10-20 03:34:45'),
(24, 1, 'has logged out the system at ', '2019-10-20 03:37:51'),
(25, 8, 'has logged in the system at ', '2019-10-20 14:31:49'),
(26, 8, 'added 32 of LG 43\" UHD TV UH6100', '2019-10-20 14:33:37'),
(27, 8, 'added 32 of Rice Cooker', '2019-10-20 14:33:56'),
(28, 8, 'added 32 of Sample', '2019-10-20 14:34:38'),
(29, 8, 'has logged out the system at ', '2019-10-20 14:45:33'),
(30, 8, 'has logged in the system at ', '2019-10-20 14:45:50'),
(31, 8, 'added 2000 of LG 43\" UHD TV UH6100', '2019-10-20 14:49:39'),
(32, 8, 'added 32 of LG 43\" UHD TV UH6100', '2019-10-20 14:56:42'),
(33, 8, 'added 2000 of LG 43\" UHD TV UH6100', '2019-10-20 15:00:55'),
(34, 8, 'added jjj of LG 43\" UHD TV UH6100', '2019-10-20 15:01:44'),
(35, 8, 'has logged out the system at ', '2019-10-20 15:20:53'),
(36, 1, 'has logged in the system at ', '2019-10-20 15:24:24'),
(37, 1, 'has logged out the system at ', '2019-10-20 19:13:29'),
(38, 1, 'has logged in the system at ', '2019-10-20 19:13:37'),
(39, 1, 'has logged out the system at ', '2019-10-20 19:50:02'),
(40, 1, 'has logged in the system at ', '2019-10-20 19:50:36'),
(41, 1, 'has logged out the system at ', '2019-10-20 19:50:41'),
(42, 9, 'has logged in the system at ', '2019-10-20 19:51:00'),
(43, 9, 'has logged out the system at ', '2019-10-20 19:51:13'),
(44, 1, 'has logged in the system at ', '2019-10-20 20:21:32'),
(45, 1, 'has logged out the system at ', '2019-10-20 20:22:35'),
(46, 8, 'has logged in the system at ', '2019-10-20 20:23:28'),
(47, 8, 'has logged out the system at ', '2019-10-20 20:24:51'),
(48, 9, 'has logged in the system at ', '2019-10-20 20:25:27'),
(49, 9, 'has logged out the system at ', '2019-10-20 20:27:05'),
(50, 11, 'has logged in the system at ', '2019-10-20 20:28:04'),
(51, 11, 'has logged out the system at ', '2019-10-20 20:46:14'),
(52, 1, 'has logged in the system at ', '2019-10-20 20:52:34'),
(53, 1, 'has logged out the system at ', '2019-10-20 21:07:53'),
(54, 1, 'has logged in the system at ', '2019-10-20 21:08:51'),
(55, 1, 'has logged out the system at ', '2019-10-20 21:19:12'),
(56, 8, 'has logged in the system at ', '2019-10-20 21:20:36'),
(57, 8, 'has logged out the system at ', '2019-10-20 21:21:14'),
(58, 1, 'has logged in the system at ', '2019-10-20 23:07:51'),
(59, 1, 'has logged out the system at ', '2019-10-20 23:08:52'),
(60, 1, 'has logged in the system at ', '2019-10-20 23:09:50'),
(61, 1, 'has logged out the system at ', '2019-10-21 02:23:38'),
(62, 1, 'has logged in the system at ', '2019-10-21 02:25:09'),
(63, 1, 'has logged out the system at ', '2019-10-21 02:28:50'),
(64, 1, 'has logged in the system at ', '2019-10-21 03:18:57'),
(65, 1, 'has logged in the system at ', '2019-10-21 05:36:15'),
(66, 1, 'has logged out the system at ', '2019-10-21 06:15:39'),
(67, 9, 'has logged in the system at ', '2019-10-21 06:15:54'),
(68, 8, 'has logged in the system at ', '2019-10-21 07:09:44'),
(69, 8, 'has logged out the system at ', '2019-10-21 07:11:46'),
(70, 1, 'has logged in the system at ', '2019-10-22 00:20:36'),
(71, 1, 'has logged out the system at ', '2019-10-22 03:20:57'),
(72, 1, 'has logged in the system at ', '2019-10-22 03:21:56'),
(73, 1, 'has logged out the system at ', '2019-10-22 03:21:58'),
(74, 9, 'has logged in the system at ', '2019-10-22 03:22:10'),
(75, 9, 'has logged out the system at ', '2019-10-22 05:31:06'),
(76, 1, 'has logged in the system at ', '2019-10-22 05:45:51'),
(77, 1, 'has logged out the system at ', '2019-10-22 06:46:53'),
(78, 8, 'has logged in the system at ', '2019-10-22 06:49:37'),
(79, 1, 'has logged in the system at ', '2019-10-22 06:53:48'),
(80, 1, 'has logged out the system at ', '2019-10-22 06:56:33'),
(81, 1, 'has logged in the system at ', '2019-10-22 06:56:42'),
(82, 1, 'has logged out the system at ', '2019-10-22 07:05:18'),
(83, 13, 'has logged in the system at ', '2019-10-22 07:06:12'),
(84, 13, 'has logged out the system at ', '2019-10-22 07:13:45'),
(85, 13, 'has logged in the system at ', '2019-10-22 07:14:02'),
(86, 13, 'has logged out the system at ', '2019-10-22 07:15:43'),
(87, 1, 'has logged in the system at ', '2019-10-22 23:11:31'),
(88, 1, 'has logged out the system at ', '2019-10-22 23:20:19'),
(89, 9, 'has logged in the system at ', '2019-10-22 23:20:32'),
(90, 1, 'has logged in the system at ', '2019-10-23 03:41:11'),
(91, 1, 'has logged out the system at ', '2019-10-23 04:07:25'),
(92, 1, 'has logged in the system at ', '2019-10-23 05:11:46'),
(93, 1, 'has logged out the system at ', '2019-10-23 05:19:14'),
(94, 1, 'has logged in the system at ', '2019-10-23 05:20:35'),
(95, 1, 'has logged out the system at ', '2019-10-23 05:21:51'),
(96, 1, 'has logged in the system at ', '2019-10-23 05:24:07'),
(97, 1, 'has logged out the system at ', '2019-10-23 05:36:28'),
(98, 1, 'has logged in the system at ', '2019-10-23 05:36:39'),
(99, 1, 'has logged out the system at ', '2019-10-23 06:14:49'),
(100, 1, 'has logged in the system at ', '2019-10-23 06:15:17'),
(101, 1, 'has logged out the system at ', '2019-10-23 06:15:40'),
(102, 1, 'has logged in the system at ', '2019-10-23 06:17:31'),
(103, 1, 'has logged in the system at ', '2019-10-24 01:27:45'),
(104, 1, 'has logged out the system at ', '2019-10-24 03:13:19'),
(105, 9, 'has logged in the system at ', '2019-10-24 03:13:32'),
(106, 9, 'has logged out the system at ', '2019-10-24 04:53:29'),
(107, 1, 'has logged in the system at ', '2019-10-24 04:53:38'),
(108, 1, 'has logged in the system at ', '2019-10-24 05:30:09'),
(109, 1, 'has logged out the system at ', '2019-10-24 05:31:11'),
(110, 1, 'has logged in the system at ', '2019-10-24 06:30:20'),
(111, 1, 'has logged out the system at ', '2019-10-24 06:31:51'),
(112, 1, 'has logged in the system at ', '2019-10-24 06:33:08'),
(113, 1, 'has logged out the system at ', '2019-10-24 06:33:23'),
(114, 1, 'has logged in the system at ', '2019-10-24 06:33:49'),
(115, 1, 'has logged out the system at ', '2019-10-24 06:34:46'),
(116, 1, 'has logged in the system at ', '2019-10-24 06:34:52'),
(117, 1, 'has logged out the system at ', '2019-10-24 06:35:26'),
(118, 1, 'has logged in the system at ', '2019-10-24 06:35:33'),
(119, 1, 'has logged in the system at ', '2019-10-24 06:38:25'),
(120, 1, 'has logged in the system at ', '2019-10-24 06:40:02'),
(121, 1, 'has logged out the system at ', '2019-10-24 06:40:04'),
(122, 1, 'has logged in the system at ', '2019-10-24 06:40:11'),
(123, 1, 'has logged out the system at ', '2019-10-24 06:41:46'),
(124, 1, 'has logged in the system at ', '2019-10-24 06:41:53'),
(125, 1, 'has logged out the system at ', '2019-10-24 06:45:41'),
(126, 9, 'has logged in the system at ', '2019-10-24 06:46:17'),
(127, 9, 'has logged out the system at ', '2019-10-24 06:51:40'),
(128, 1, 'has logged in the system at ', '2019-10-24 01:51:46'),
(129, 1, 'has logged out the system at ', '2019-10-24 06:52:25'),
(130, 1, 'has logged in the system at ', '2019-10-24 01:52:32'),
(131, 1, 'has logged out the system at ', '2019-10-24 06:53:12'),
(132, 1, 'has logged in the system at ', '2019-10-24 01:53:18'),
(133, 1, 'has logged out the system at ', '2019-10-24 06:53:25'),
(134, 1, 'has logged in the system at ', '2019-10-24 01:53:32'),
(135, 1, 'has logged out the system at ', '2019-10-24 06:53:39'),
(136, 9, 'has logged in the system at ', '2019-10-24 01:54:17'),
(137, 1, 'has logged in the system at ', '2019-10-24 02:00:23'),
(138, 1, 'has logged in the system at ', '2019-10-24 02:06:09');

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
  `Next_service` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `veh_registration`, `Date_in`, `Date_out`, `Speedometer_reading`, `Garage`, `Nature_of_service`, `Next_service`) VALUES
(1, 'KCT035D', '2019-10-22', '2019-10-22', 123456, 'UNITY GARAGE', 'ROUTINE', 0),
(2, 'KCT036D', '2019-10-23', '2019-09-23', 123456, 'UNITY GARAGE', 'ROUTINE', 128456),
(3, 'KCT036D', '2019-10-24', '2019-10-25', 123456, 'UNITY GARAGE', 'ROUTINE', 128456),
(4, 'KCG362M', '0000-00-00', '0000-00-00', 123456, '', '', 0);

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
  `Comments` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trips`
--

CREATE TABLE `trips` (
  `id` int(100) NOT NULL,
  `veh_registration` varchar(100) NOT NULL,
  `Date` date DEFAULT NULL,
  `first_reading` int(100) DEFAULT NULL,
  `Second_reading` int(100) DEFAULT NULL,
  `distance` int(11) DEFAULT NULL,
  `time_out` time(6) DEFAULT NULL,
  `time_in` time(6) DEFAULT NULL,
  `Purpose_of_journey` varchar(11) DEFAULT NULL,
  `Application_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tyres`
--

CREATE TABLE `tyres` (
  `tyre_id` int(100) NOT NULL,
  `veh_registration` varchar(100) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `make` varchar(100) DEFAULT NULL,
  `Tyre _Number` int(100) DEFAULT NULL,
  `size` int(100) DEFAULT NULL,
  `Speedometer_reading` int(100) DEFAULT NULL,
  `Position` varchar(100) DEFAULT NULL,
  `Comments` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tyres`
--

INSERT INTO `tyres` (`tyre_id`, `veh_registration`, `Date`, `make`, `Tyre _Number`, `size`, `Speedometer_reading`, `Position`, `Comments`) VALUES
(7, 'KCG362M', '2019-10-23', 'michelin', NULL, 5645, 0, 'Position', 'Comments'),
(8, 'KCG362M', '2019-10-23', 'michelin', NULL, 5645, 0, 'Front', 'ok'),
(9, 'KCT089G', '2019-10-23', 'michelin', NULL, 5645, 0, 'rear', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `name`, `status`, `branch_id`) VALUES
(1, 'admin', 'a1Bz20ydqelm8m1wql21232f297a57a5a743894a0e4a801fc3', 'John Smith', 'active', 1),
(4, 'user', 'a1Bz20ydqelm8m1wql21232f297a57a5a743894a0e4a801fc3', 'Mona Lisa', 'active', 0),
(5, 'Mikee', 'a1Bz20ydqelm8m1wql70a5119905ec54b3edf78c6f515ac7b2', 'Mikee', 'active', 1),
(6, 'administrator', 'a1Bz20ydqelm8m1wql21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'active', 0),
(7, 'Isaac Abdow', 'a1Bz20ydqelm8m1wql21232f297a57a5a743894a0e4a801fc3', 'saac Abdow', 'active', 0),
(8, 'Roy_rukunga', 'a1Bz20ydqelm8m1wql2a02291117888c21cfb86daeee5410b2', 'Roy Rukunga', 'active', 1),
(9, 'jamal_yaqub', 'a1Bz20ydqelm8m1wqle25778ddc81fc758fe58aef4296014e2', 'Jamal Yaqub', 'active', 2),
(10, 'jacob_okal', 'a1Bz20ydqelm8m1wql331b7d87f7296a5e26282ed892819e31', 'Jacob Okal ', 'active', 3),
(11, 'jacob_okal', 'a1Bz20ydqelm8m1wql331b7d87f7296a5e26282ed892819e31', 'JacobOkal', 'active', 2),
(12, 'Manasseh_Archie', 'a1Bz20ydqelm8m1wqlb92f4f2977de1b9fafe02156c13a8aa9', 'Manasseh Archiebold', 'active', 2),
(13, 'Jonah_Mwaura', 'a1Bz20ydqelm8m1wql9c5ddd54107734f7d18335a5245c286b', 'Jonah Mwaura', 'active', 2);

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
  `Seating_Capacity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_particulars`
--

INSERT INTO `vehicle_particulars` (`id`, `Veh_registration`, `Make`, `Colour`, `body_type`, `Engine_no`, `Chassis_no`, `year_of_make`, `Ratings`, `Seating_Capacity`) VALUES
(6, 'KCT036D', '', 'BLACK', 'DOUBLE CAB', 'QWERTY123456', 'QWERTY7890', '0000-00-00', 2800, 0);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `battery`
--
ALTER TABLE `battery`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fuel`
--
ALTER TABLE `fuel`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `history_log`
--
ALTER TABLE `history_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `tool_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `trips`
--
ALTER TABLE `trips`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tyres`
--
ALTER TABLE `tyres`
  MODIFY `tyre_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `vehicle_particulars`
--
ALTER TABLE `vehicle_particulars`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
