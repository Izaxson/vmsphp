-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2020 at 03:36 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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

--
-- Dumping data for table `battery`
--

INSERT INTO `battery` (`id`, `veh_registration`, `Date`, `battery_no`, `Make`, `Size`, `Speedometer_reading`, `Comment`, `branch`, `driver`) VALUES
(1, 'KCG362M', '2020-02-06', 0, 'chloride exide', 24, 198526, 'ok', 'JUJA WEIGHBRIDGE', '');

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
(3, 'ISINYA WEIGHBRIDGE', 'ISINYA ', '0702202020', 'purple');

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
(1894, 9, 'has logged out the system at ', '2020-02-06 20:49:36'),
(1895, 9, 'has logged out in the system at ', '2020-02-06 20:49:36'),
(1896, 9, 'has logged in the system at ', '2020-02-06 20:58:00'),
(1897, 9, 'has Added battery record in the system at ', '2020-02-06 21:03:22'),
(1898, 9, 'has logged out the system at ', '2020-02-06 21:12:22'),
(1899, 9, 'has logged out in the system at ', '2020-02-06 21:12:22'),
(1900, 60, 'has logged in the system at ', '2020-02-06 21:12:44'),
(1901, 60, 'has logged out the system at ', '2020-02-06 21:22:36'),
(1902, 52, 'has logged  in the system at ', '2020-02-06 21:32:22'),
(1903, 52, 'has added   vehicle   in the system  ', '2020-02-06 21:42:25'),
(1904, 52, 'has added   vehicle   in the system  ', '2020-02-06 21:44:05'),
(1905, 52, 'has added   vehicle   in the system  ', '2020-02-06 21:44:18'),
(1906, 52, 'has logged  out the system at ', '2020-02-06 21:46:29'),
(1907, 9, 'has logged in the system at ', '2020-02-06 21:46:42'),
(1908, 9, 'has logged out the system at ', '2020-02-06 21:47:14'),
(1909, 9, 'has logged out in the system at ', '2020-02-06 21:47:14'),
(1910, 9, 'has logged in the system at ', '2020-02-06 22:05:40'),
(1911, 9, 'has logged in the system at ', '2020-04-26 12:29:58'),
(1912, 9, 'has logged out the system at ', '2020-04-26 12:30:30'),
(1913, 9, 'has logged in the system at ', '2020-04-26 12:34:02'),
(1914, 9, 'has logged in the system at ', '2020-06-01 10:27:55'),
(1915, 9, 'added a Trip record', '2020-06-01 10:29:28'),
(1916, 9, 'has updated  account password  in the system at ', '2020-06-01 10:46:36'),
(1917, 9, 'has logged out the system at ', '2020-06-01 10:48:17'),
(1918, 0, 'has logged  in the system at ', '2020-06-01 10:48:38'),
(1919, 0, 'has logged  in the system at ', '2020-06-01 10:48:46'),
(1920, 0, 'has logged  in the system at ', '2020-06-01 10:48:58'),
(1921, 52, 'has logged  in the system at ', '2020-06-01 11:14:04'),
(1922, 9, 'has logged in the system at ', '2020-06-02 15:26:01');

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
(388, 'KCG362M', '2020-06-01', 23456, 23456, '0', '12:34', '13:45', 'chase', 'JUJA WEIGHBRIDGE', ' Jamal Yaqub', 'A-DAY SHIFT ', 'Pending', '', '0000-00-00');

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
(52, 'Isaac_Abdow', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Isaac Abdow', 'active', 0, 0),
(53, 'ismail_abdow', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Ismail Abdow', 'active', 0, 0),
(60, 'isaac.abdow@sgs.com', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Isaac Abdow', 'active', 2, 2);

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
(65, 'KCT036D', '');

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
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `history_log`
--
ALTER TABLE `history_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1923;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=389;

--
-- AUTO_INCREMENT for table `tyres`
--
ALTER TABLE `tyres`
  MODIFY `tyre_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `vehicle_particulars`
--
ALTER TABLE `vehicle_particulars`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `vehicle_reg`
--
ALTER TABLE `vehicle_reg`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
