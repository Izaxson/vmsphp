-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2019 at 01:19 AM
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

--
-- Dumping data for table `battery`
--

INSERT INTO `battery` (`id`, `veh_registration`, `Date`, `battery_no`, `Make`, `Size`, `Speedometer_reading`, `Comment`) VALUES
(1, 'KCG362M', '2019-10-24', 12355, 'dunlop', 12, 123456, 'ok');

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
(1, 'ATHIRIVER WEIGHBRIDGE', 'ATHIRIVER-MOMBASA ROAD', '0700202020', 'black'),
(2, 'JUJA WEIGHBRIDGE', 'JUJA-THIKA ROAD ', '0700202020', 'blue'),
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
(3, 'KCT036D', '2019-10-24', 'Diesel', 'ok', 123456, 'Ruiru Shell', 45, 5674),
(4, 'KCT089G', '2019-10-24', 'Diesel', 'ok', 345673, 'shell mbs rd', 67, 5645),
(5, '', '2019-10-24', '', 'Juma Kama', 0, '', 0, 0),
(6, 'KCT036D', '2019-10-24', 'Diesel', 'ok', 123456, 'Ruiru Shell', 67, 5645),
(7, 'KCT035D', '2019-10-23', 'Diesel', 'ok', 123456, 'shell mbs rd', 45, 5674);

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
(154, 6, 'has logged out the system at ', '2019-10-24 09:53:55'),
(155, 1, 'has logged in the system at ', '2019-10-24 04:54:02'),
(156, 1, 'has logged in the system at ', '2019-10-24 05:17:48'),
(157, 1, 'has logged out the system at ', '2019-10-24 10:33:14'),
(158, 9, 'has logged in the system at ', '2019-10-24 05:47:53'),
(159, 9, 'has logged out the system at ', '2019-10-24 10:50:23'),
(160, 1, 'has logged in the system at ', '2019-10-24 05:50:30'),
(161, 1, 'has logged out the system at ', '2019-10-24 10:50:59'),
(162, 1, 'has logged in the system at ', '2019-10-24 05:51:06'),
(163, 1, 'has logged out the system at ', '2019-10-24 10:55:40'),
(164, 9, 'has logged in the system at ', '2019-10-24 06:39:05'),
(165, 9, 'has logged out the system at ', '2019-10-24 11:40:15'),
(166, 11, 'has logged in the system at ', '2019-10-24 20:06:36'),
(167, 11, 'has logged out the system at ', '2019-10-25 01:14:23'),
(168, 1, 'has logged in the system at ', '2019-10-24 20:20:01'),
(169, 6, 'has logged out the system at ', '2019-10-25 01:34:33'),
(170, 1, 'has logged in the system at ', '2019-10-25 02:05:05'),
(171, 6, 'has logged out the system at ', '2019-10-25 07:27:17'),
(172, 1, 'has logged in the system at ', '2019-10-25 02:27:24'),
(173, 1, 'has logged in the system at ', '2019-10-25 06:42:05'),
(174, 1, 'has logged out the system at ', '2019-10-25 11:42:25'),
(175, 9, 'has logged in the system at ', '2019-10-25 06:42:41'),
(176, 9, 'has logged out the system at ', '2019-10-25 11:43:12'),
(177, 9, 'has logged in the system at ', '2019-10-25 06:43:24'),
(178, 9, 'has logged out the system at ', '2019-10-25 11:43:36'),
(179, 1, 'has logged in the system at ', '2019-10-25 22:17:40'),
(180, 1, 'has logged in the system at ', '2019-10-26 01:21:19'),
(181, 1, 'has logged out the system at ', '2019-10-26 06:41:53'),
(182, 9, 'has logged in the system at ', '2019-10-26 01:43:03'),
(183, 13, 'has logged in the system at ', '2019-10-26 01:44:03'),
(184, 13, 'has logged out the system at ', '2019-10-26 06:50:45'),
(185, 1, 'has logged in the system at ', '2019-10-26 01:50:55'),
(186, 1, 'has logged out the system at ', '2019-10-26 06:56:36'),
(187, 1, 'has logged in the system at ', '2019-10-26 01:56:46'),
(188, 1, 'has logged in the system at ', '2019-10-26 01:59:10'),
(189, 1, 'has logged out the system at ', '2019-10-26 07:05:21'),
(190, 1, 'has logged in the system at ', '2019-10-26 02:06:04');

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
(1, 'KCT036D', '2019-10-24', 'vehicle handed over in good condition  jamal yaqub', 'Juma Kama', ''),
(2, 'KCT036D', '2019-10-24', 'It is a long established f', 'Juma Kama', ''),
(3, 'KCT035D', '2019-10-26', 'It is a long established f', 'Yaqub Jamal ', 'JUJA WEIGHBRIDGE'),
(4, 'KCT036D', '2019-10-26', 'It is a long established f', 'Roy Rukunga', 'ATHIRIVER WEIGHBRIDGE');

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

--
-- Dumping data for table `tools`
--

INSERT INTO `tools` (`tool_id`, `veh_registration`, `Date`, `Tool_name`, `Driver`, `Comments`) VALUES
(1, 'KCT035D', '2019-01-07', 'Spanner', 'Juma Kama', 'ok');

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
  `branch` varchar(100) NOT NULL,
  `Application_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trips`
--

INSERT INTO `trips` (`id`, `veh_registration`, `Date`, `first_reading`, `Second_reading`, `distance`, `time_out`, `time_in`, `Purpose_of_journey`, `branch`, `Application_status`) VALUES
(1, 'KCT035D', '2019-10-25', 1234, 12345, 12345, '10:34:00.000000', '12:23:00.000000', 'CHASE', '', 'PENDING'),
(2, 'KCG362M', '2019-10-25', 7, 15, 0, '12:34:00.000000', '13:34:00.000000', NULL, '', ''),
(3, 'KCG362M', '2019-10-24', 1234, 3000, 0, '12:34:00.000000', '13:45:00.000000', 'mobile oper', '', ''),
(4, 'KCT089G', '2019-11-24', 1234, 3001, 0, '02:47:00.000000', '03:02:00.000000', 'chase', '', ''),
(5, 'KCG362M', '2019-10-24', 1234, 3000, 0, '00:34:00.000000', '00:56:00.000000', 'mobile oper', '', '');

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
(9, 'KCT089G', '2019-10-23', 'michelin', NULL, 5645, 0, 'rear', 'ok'),
(10, 'KCT089G', '2019-10-25', 'michelin', NULL, 5645, 0, 'rear', 'ok');

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
(9, 'jamal_yaqub', 'a1Bz20ydqelm8m1wql74f56399c89f4bd03ff5e85b6bf4e85f', 'Jamal Yaqub', 'active', 2),
(10, 'jacob_okal', 'a1Bz20ydqelm8m1wql331b7d87f7296a5e26282ed892819e31', 'Jacob Okal ', 'active', 3),
(11, 'jacob_okal', 'a1Bz20ydqelm8m1wql331b7d87f7296a5e26282ed892819e31', 'JacobOkal', 'active', 2),
(12, 'Manasseh_Archie', 'a1Bz20ydqelm8m1wqlb92f4f2977de1b9fafe02156c13a8aa9', 'Manasseh Archiebold', 'active', 2),
(13, 'Jonah_Mwaura', 'a1Bz20ydqelm8m1wql9c5ddd54107734f7d18335a5245c286b', 'Jonah Mwaura', 'active', 2),
(14, 'Juma_Kama', 'a1Bz20ydqelm8m1wql9cfdb29f4848a003792b6c55c7b6cc36', 'Juma Kama', 'active', 2);

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
(6, 'KCT036D', '', 'BLACK', 'DOUBLE CAB', 'QWERTY123456', 'QWERTY7890', '0000-00-00', 2800, 0),
(7, 'KBV768V', '', 'off white', 'DOUBLE CAB', 'QWERTY123456', 'QWERTY7890', '0000-00-00', 2800, 0),
(8, 'KCT089G', '', 'WHITE', 'DOUBLE CAB', 'QWERTY1234565566', 'QWERTY789066655', '0000-00-00', 2800, 0);

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
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fuel`
--
ALTER TABLE `fuel`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `history_log`
--
ALTER TABLE `history_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `occurence`
--
ALTER TABLE `occurence`
  MODIFY `occ_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `tool_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `trips`
--
ALTER TABLE `trips`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tyres`
--
ALTER TABLE `tyres`
  MODIFY `tyre_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `vehicle_particulars`
--
ALTER TABLE `vehicle_particulars`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
