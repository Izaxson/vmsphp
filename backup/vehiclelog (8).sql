-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2019 at 05:49 PM
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
(3, 'ISINYA WEIGHBRIDGE', 'ISINYA ', '0700202020', 'green', 0),
(5, 'SGS-VICTORIA PLAZA', '5656', '0700202020', 'blue', 0),
(6, 'MOMBASA', '123-MBS', '0700202020', 'purple', 0),
(7, 'OGC', 'MOMBASA', '0700202020', 'black', 0),
(8, 'PEST CONTROL', '34344', '0700202020', 'yellow', 0);

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
  `Amount` int(11) DEFAULT NULL,
  `branch` varchar(100) NOT NULL,
  `driver` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fuel`
--

INSERT INTO `fuel` (`id`, `veh_registration`, `Date`, `Fuel`, `Lubricant`, `Speedometer_reading`, `Filling_station`, `Litres_fuelled`, `Amount`, `branch`, `driver`) VALUES
(15, 'KCG362M', '2019-11-15', 'Diesel', 'ok', 123456, 'Ruiru Shell', 45, 5674, 'JUJA WEIGHBRIDGE', ' Jamal Yaqub'),
(16, 'KBV051H', '2019-11-17', 'Diesel', 'ok', 123456, 'Ruiru Shell', 67, 5674, 'JUJA WEIGHBRIDGE', ' Jamal Yaqub'),
(17, 'KBV768H', '2019-11-17', 'Diesel', 'ok', 123456, 'Ruiru Shell', 45, 5674, 'JUJA WEIGHBRIDGE', ' Jamal Yaqub'),
(18, 'KBV768H', '2019-11-20', 'Diesel', 'ok', 123456, 'Ruiru Shell', 45, 5674, 'ATHIRIVER WEIGHBRIDGE', ' Barnie Kalume');

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
(571, 9, 'has logged in the system at ', '2019-11-23 19:58:02'),
(572, 31, 'has logged in the system at ', '0000-00-00 00:00:00'),
(573, 9, 'has logged in the system at ', '2019-11-24 17:32:30'),
(574, 31, 'has logged in the system at ', '0000-00-00 00:00:00'),
(575, 31, 'has logged out the system at ', '2019-11-24 17:43:56'),
(576, 31, 'has logged in the system at ', '0000-00-00 00:00:00'),
(577, 40, 'has logged out the system at ', '2019-11-24 18:25:41'),
(578, 9, 'has logged in the system at ', '2019-11-24 18:26:48'),
(579, 9, 'has logged out the system at ', '2019-11-24 18:39:59'),
(580, 31, 'has logged in the system at ', '0000-00-00 00:00:00'),
(581, 31, 'has logged out the system at ', '2019-11-24 19:57:08'),
(582, 44, 'has logged in the system at ', '0000-00-00 00:00:00'),
(583, 44, 'has logged out the system at ', '2019-11-24 20:29:51'),
(584, 9, 'has logged in the system at ', '2019-11-24 20:36:58'),
(585, 31, 'has logged in the system at ', '0000-00-00 00:00:00'),
(586, 31, 'has logged out the system at ', '2019-11-24 20:38:41'),
(587, 9, 'has logged in the system at ', '2019-11-24 20:39:04'),
(588, 31, 'has logged in the system at ', '0000-00-00 00:00:00'),
(589, 31, 'has logged out the system at ', '2019-11-24 20:44:30'),
(590, 44, 'has logged in the system at ', '0000-00-00 00:00:00'),
(591, 8, 'has logged in the system at ', '2019-11-24 23:13:33'),
(592, 8, 'has logged in the system at ', '2019-11-25 08:57:00'),
(593, 8, 'has logged in the system at ', '2019-11-25 18:33:08'),
(594, 8, 'has logged out the system at ', '2019-11-25 18:36:59'),
(595, 9, 'has logged in the system at ', '2019-11-25 18:37:36'),
(596, 31, 'has logged in the system at ', '0000-00-00 00:00:00'),
(597, 9, 'has logged in the system at ', '2019-11-26 09:57:32'),
(598, 9, 'has logged out the system at ', '2019-11-26 10:02:11'),
(599, 44, 'has logged in the system at ', '0000-00-00 00:00:00'),
(600, 44, 'has logged out the system at ', '2019-11-26 10:07:46'),
(601, 33, 'has logged in the system at ', '2019-11-26 10:07:59'),
(602, 33, 'has logged out the system at ', '2019-11-26 10:19:38'),
(603, 31, 'has logged in the system at ', '0000-00-00 00:00:00'),
(604, 31, 'has logged out the system at ', '2019-11-26 12:50:16'),
(605, 9, 'has logged in the system at ', '2019-11-26 12:51:26'),
(606, 9, 'has logged out the system at ', '2019-11-26 15:36:41'),
(607, 31, 'has logged in the system at ', '0000-00-00 00:00:00'),
(608, 31, 'has logged out the system at ', '2019-11-26 15:37:05'),
(609, 9, 'has logged in the system at ', '2019-11-26 15:37:20'),
(610, 9, 'has logged out the system at ', '2019-11-26 15:52:17'),
(611, 31, 'has logged in the system at ', '0000-00-00 00:00:00'),
(612, 31, 'has logged out the system at ', '2019-11-26 17:23:25'),
(613, 9, 'has logged in the system at ', '2019-11-26 17:23:44'),
(614, 9, 'has logged out the system at ', '2019-11-26 17:27:14'),
(615, 31, 'has logged in the system at ', '0000-00-00 00:00:00'),
(616, 31, 'has logged out the system at ', '2019-11-26 17:32:25'),
(617, 44, 'has logged in the system at ', '0000-00-00 00:00:00'),
(618, 9, 'has logged in the system at ', '2019-11-26 17:34:29'),
(619, 40, 'has logged out the system at ', '2019-11-26 17:36:48'),
(620, 8, 'has logged in the system at ', '2019-11-26 17:38:27'),
(621, 8, 'has logged out the system at ', '2019-11-26 17:41:17'),
(622, 44, 'has logged in the system at ', '0000-00-00 00:00:00'),
(623, 8, 'has logged in the system at ', '2019-11-26 17:44:24'),
(624, 44, 'has logged in the system at ', '0000-00-00 00:00:00'),
(625, 44, 'has logged out the system at ', '2019-11-26 18:06:02'),
(626, 8, 'has logged in the system at ', '2019-11-26 18:06:29');

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

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(100) NOT NULL,
  `Role_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `Role_name`) VALUES
(1, 'Driver'),
(2, 'Manager');

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
  `Date` date DEFAULT NULL,
  `first_reading` int(100) NOT NULL,
  `Second_reading` int(100) NOT NULL,
  `distance` int(100) NOT NULL,
  `time_out` time(6) NOT NULL,
  `time_in` time(6) NOT NULL,
  `Purpose_of_journey` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `driver` varchar(100) NOT NULL,
  `Application_status` varchar(100) NOT NULL DEFAULT 'Pending',
  `Approved_by` varchar(100) NOT NULL,
  `Approved_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trips`
--

INSERT INTO `trips` (`id`, `veh_registration`, `Date`, `first_reading`, `Second_reading`, `distance`, `time_out`, `time_in`, `Purpose_of_journey`, `branch`, `driver`, `Application_status`, `Approved_by`, `Approved_Date`) VALUES
(47, 'KBV763Q', '2019-11-26', 1234, 3000, 2234, '03:44:00.000000', '00:03:54.000000', 'chase', 'JUJA WEIGHBRIDGE', ' Jamal Yaqub', 'Approved', 'Jacob Njue', '0000-00-00'),
(52, 'KBV051H', '2019-11-26', 3454, 3456, 2234, '05:26:00.000000', '05:26:00.000000', 'FROM JUJA TO athiriver', 'JUJA WEIGHBRIDGE', ' Jamal Yaqub', 'Rejected', 'Jacob Njue', '0000-00-00'),
(53, 'KBV051H', '2019-11-26', 1234, 3000, 2234, '05:38:00.000000', '07:38:00.000000', 'from athiriver to juja', 'ATHIRIVER WEIGHBRIDGE', ' Roy Rukunga', 'Rejected', 'Roy Rukunga', '0000-00-00'),
(54, 'KCG361M', '2019-11-26', 1234, 3000, 2234, '05:40:00.000000', '05:40:00.000000', 'FROM JUJA TO HOME', 'ATHIRIVER WEIGHBRIDGE', ' Roy Rukunga', 'Approved', 'Barnie Kalume', '0000-00-00'),
(55, 'KCK371W', '2019-11-26', 3454, 3786, 345, '06:06:00.000000', '06:06:00.000000', 'mobile', 'ATHIRIVER WEIGHBRIDGE', ' Roy Rukunga', 'Approved', 'Barnie Kalume', '2019-11-26'),
(56, 'KCG361M', '2019-11-26', 3423, 4444, 4444, '06:10:00.000000', '06:10:00.000000', 'chase', 'ATHIRIVER WEIGHBRIDGE', ' Roy Rukunga', 'Approved', 'Barnie Kalume', '2019-11-26');

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
(7, 'KCG362M', '2019-10-23', 'michelin', NULL, 5645, 0, 'Position', 'o'),
(8, 'KCG362M', '2019-10-23', 'michelin', NULL, 5645, 0, 'Front', 'ok'),
(9, 'KCT089G', '2019-10-23', 'michelin', NULL, 5645, 0, 'rear', 'ok'),
(10, 'KCT089G', '2019-10-25', 'michelin', NULL, 5645, 0, 'rear', 'ok');

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
(8, 'Roy_rukunga', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Roy Rukunga', 'active', 1, 3),
(9, 'jamal_yaqub', 'a1Bz20ydqelm8m1wql74f56399c89f4bd03ff5e85b6bf4e85f', 'Jamal Yaqub', 'active', 2, 3),
(31, 'Jacob_Njue', 'a1Bz20ydqelm8m1wqla0909d42adb9c14eb1dd92e4d48d7ae5', 'Jacob Njue', 'active', 2, 2),
(33, 'Joseph_Ondieki', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Joseph Ondieki', 'active', 8, 3),
(40, 'isaacabdow@sgs.com', 'a1Bz20ydqelm8m1wqla32da3b66da6f14be4d2fc3fab90ac56', 'Isaac Abdow', 'active', 0, 0),
(42, 'George_Mwangolo', 'a1Bz20ydqelm8m1wql2eb8ccc5f36df627171b3b96d0d786fd', 'George Mwangolo', 'active', 500, 1),
(44, 'Barnie_Kalume', 'a1Bz20ydqelm8m1wql445a2d838ed105e563ba85ed8737b6d4', 'Barnie Kalume', 'active', 1, 2);

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
  `Seating_Capacity` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_particulars`
--

INSERT INTO `vehicle_particulars` (`id`, `Veh_registration`, `Make`, `Colour`, `body_type`, `Engine_no`, `Chassis_no`, `year_of_make`, `Ratings`, `Seating_Capacity`) VALUES
(17, 'KBV768V', 'TOYOTA', 'BLACK', 'DOUBLE CAB', 'QWERTY123456', 'QWERTY7890', '0000-00-00', 2800, 0),
(18, 'KCT089G', 'TOYOTA', 'BLACK', 'DOUBLE CAB', 'QWERTY123456', 'QWERTY789066655', '0000-00-00', 2800, 0),
(19, 'KCT035D', 'TOYOTA', 'BLACK', 'DOUBLE CAB', 'QWERTY123456', 'QWERTY7890', '0000-00-00', 2800, 0),
(20, 'KCT036D', 'TOYOTA', 'BLACK', 'DOUBLE CAB', 'QWERTY123456', 'QWERTY7890', '0000-00-00', 2800, 0);

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
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `fuel`
--
ALTER TABLE `fuel`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `history_log`
--
ALTER TABLE `history_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=627;

--
-- AUTO_INCREMENT for table `occurence`
--
ALTER TABLE `occurence`
  MODIFY `occ_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `tyres`
--
ALTER TABLE `tyres`
  MODIFY `tyre_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `vehicle_particulars`
--
ALTER TABLE `vehicle_particulars`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `vehicle_reg`
--
ALTER TABLE `vehicle_reg`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
