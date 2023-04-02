-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2019 at 02:27 PM
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
(1, 'KBV051H', '2019-12-18', 12355, 'chloride exide', 12, 123456, 'ok', 'JUJA WEIGHBRIDGE');

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
(8, 'PEST CONTROL', '34344', '0700202020', 'yellow', 0),
(9, 'FOOD AND AGRICULTURE', 'SGS KENYA LTD', '0700232323', 'green', 0),
(10, 'AUDITOR', '123', '0700232323', 'green', 0),
(500, 'AUDITOR', '123', '0700232323', 'green', 0);

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
(19, 'KCT035D', '2019-11-29', 'Diesel', 'ok', 123456, 'Ruiru Shell', 45, 5674, 'JUJA WEIGHBRIDGE', ' Jamal Yaqub'),
(20, 'KBV763Q', '2019-11-06', 'Diesel', 'ok', 123456, 'syokimau shell', 45, 5674, 'ATHIRIVER WEIGHBRIDGE', ''),
(21, 'KCG361M', '2019-12-06', 'PETROL', 'Juma Kama', 123456, 'Ruiru Shell', 45, 5674, 'ATHIRIVER WEIGHBRIDGE', ' Roy rukunga'),
(22, 'KCG362M', '2019-12-06', 'Diesel', 'ok', 123456, 'Ruiru Shell', 67, 5645, 'JUJA WEIGHBRIDGE', ' Juma Kama'),
(23, 'KBV768H', '2019-12-16', 'PETROL', 'ok', 123456, 'Ruiru Shell', 45, 5674, 'JUJA WEIGHBRIDGE', ' Jamal Yaqub'),
(24, 'KCG362M', '2019-12-17', 'Diesel', 'ok', 187654, 'Ruiru Shell', 45, 5674, 'JUJA WEIGHBRIDGE', ' Jamal Yaqub'),
(25, 'KCG362M', '2019-12-18', 'Diesel', 'ok', 134567, 'Ruiru Shell', 45, 5674, 'JUJA WEIGHBRIDGE', ' Jamal Yaqub');

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
(626, 8, 'has logged in the system at ', '2019-11-26 18:06:29'),
(627, 44, 'has logged out the system at ', '2019-11-26 20:59:44'),
(628, 9, 'has logged in the system at ', '2019-11-26 21:05:29'),
(629, 9, 'has logged in the system at ', '2019-11-26 21:17:56'),
(630, 9, 'has logged in the system at ', '2019-11-26 23:54:08'),
(631, 9, 'has logged out the system at ', '2019-11-26 23:54:50'),
(632, 8, 'has logged in the system at ', '2019-11-26 23:55:05'),
(633, 31, 'has logged in the system at ', '0000-00-00 00:00:00'),
(634, 31, 'has logged out the system at ', '2019-11-26 23:57:04'),
(635, 31, 'has logged in the system at ', '0000-00-00 00:00:00'),
(636, 31, 'has logged out the system at ', '2019-11-26 23:58:01'),
(637, 9, 'has logged in the system at ', '2019-11-27 07:55:23'),
(638, 40, 'has logged out the system at ', '2019-11-27 10:34:54'),
(639, 9, 'has logged in the system at ', '2019-11-27 10:35:58'),
(640, 9, 'has logged out the system at ', '2019-11-27 11:11:16'),
(641, 31, 'has logged in the system at ', '0000-00-00 00:00:00'),
(642, 31, 'has logged out the system at ', '2019-11-27 11:46:47'),
(643, 31, 'has logged in the system at ', '0000-00-00 00:00:00'),
(644, 31, 'has logged out the system at ', '2019-11-27 11:47:08'),
(645, 31, 'has logged in the system at ', '0000-00-00 00:00:00'),
(646, 31, 'has logged out the system at ', '2019-11-27 11:47:23'),
(647, 31, 'has logged in the system at ', '0000-00-00 00:00:00'),
(648, 31, 'has logged out the system at ', '2019-11-27 11:52:10'),
(649, 44, 'has logged in the system at ', '0000-00-00 00:00:00'),
(650, 9, 'has logged in the system at ', '2019-11-27 11:53:45'),
(651, 9, 'has logged out the system at ', '2019-11-27 14:17:52'),
(652, 9, 'has logged in the system at ', '2019-11-27 14:18:11'),
(653, 9, 'has logged out the system at ', '2019-11-27 14:20:15'),
(654, 31, 'has logged in the system at ', '0000-00-00 00:00:00'),
(655, 42, 'has logged out the system at ', '2019-11-27 14:43:24'),
(656, 0, 'has logged out the system at ', '2019-11-27 14:43:41'),
(657, 9, 'has logged in the system at ', '2019-11-27 23:04:33'),
(658, 31, 'has logged in the system at ', '0000-00-00 00:00:00'),
(659, 31, 'has logged out the system at ', '2019-11-27 23:06:12'),
(660, 31, 'has logged in the system at ', '0000-00-00 00:00:00'),
(661, 31, 'has logged out the system at ', '2019-11-27 23:10:35'),
(662, 31, 'has logged in the system at ', '0000-00-00 00:00:00'),
(663, 31, 'has logged out the system at ', '2019-11-27 23:33:21'),
(664, 9, 'has logged in the system at ', '2019-11-28 00:24:37'),
(665, 31, 'has logged in the system at ', '0000-00-00 00:00:00'),
(666, 9, 'has logged in the system at ', '2019-11-29 09:28:50'),
(667, 0, 'has logged out the system at ', '2019-11-29 10:04:21'),
(668, 9, 'has logged in the system at ', '2019-11-29 10:22:56'),
(669, 31, 'has logged in the system at ', '0000-00-00 00:00:00'),
(670, 31, 'has logged out the system at ', '2019-11-29 10:28:16'),
(671, 9, 'has logged in the system at ', '2019-11-29 10:28:30'),
(672, 9, 'has logged out the system at ', '2019-11-29 10:29:29'),
(673, 8, 'has logged in the system at ', '2019-11-29 10:29:52'),
(674, 44, 'has logged in the system at ', '0000-00-00 00:00:00'),
(675, 44, 'has logged out the system at ', '2019-11-29 10:34:50'),
(676, 9, 'has logged in the system at ', '2019-11-29 10:39:30'),
(677, 9, 'has logged in the system at ', '2019-11-29 11:19:45'),
(678, 9, 'has logged out the system at ', '2019-11-29 11:36:27'),
(679, 9, 'has logged in the system at ', '2019-11-29 12:02:02'),
(680, 50, 'has logged in the system at ', '0000-00-00 00:00:00'),
(681, 50, 'has logged out the system at ', '2019-11-29 16:57:41'),
(682, 9, 'has logged in the system at ', '2019-11-29 16:57:54'),
(683, 9, 'has logged in the system at ', '2019-11-29 18:14:28'),
(684, 9, 'has logged in the system at ', '2019-11-29 20:21:39'),
(685, 9, 'has logged in the system at ', '2019-11-29 20:34:28'),
(686, 9, 'has logged in the system at ', '2019-11-30 11:36:15'),
(687, 9, 'has logged out the system at ', '2019-11-30 11:37:38'),
(688, 9, 'has logged in the system at ', '2019-11-30 11:37:48'),
(689, 50, 'has logged in the system at ', '0000-00-00 00:00:00'),
(690, 9, 'has logged in the system at ', '2019-11-30 11:58:52'),
(691, 50, 'has logged in the system at ', '0000-00-00 00:00:00'),
(692, 9, 'has logged in the system at ', '2019-12-01 15:13:53'),
(693, 50, 'has logged in the system at ', '0000-00-00 00:00:00'),
(694, 50, 'has logged out the system at ', '2019-12-01 15:16:46'),
(695, 9, 'has logged in the system at ', '2019-12-02 10:57:41'),
(696, 9, 'has logged in the system at ', '2019-12-02 13:09:53'),
(697, 50, 'has logged in the system at ', '0000-00-00 00:00:00'),
(698, 50, 'has logged out the system at ', '2019-12-02 21:17:03'),
(699, 54, 'has logged in the system at ', '0000-00-00 00:00:00'),
(700, 9, 'has logged in the system at ', '2019-12-02 21:41:30'),
(701, 9, 'has logged out the system at ', '2019-12-02 21:51:03'),
(702, 58, 'has logged in the system at ', '2019-12-02 21:51:27'),
(703, 54, 'has logged in the system at ', '0000-00-00 00:00:00'),
(704, 54, 'has logged out the system at ', '2019-12-02 21:59:58'),
(705, 54, 'has logged in the system at ', '0000-00-00 00:00:00'),
(706, 9, 'has logged in the system at ', '2019-12-02 22:08:33'),
(707, 9, 'has logged out the system at ', '2019-12-02 22:10:05'),
(708, 54, 'has logged in the system at ', '0000-00-00 00:00:00'),
(709, 54, 'has logged out the system at ', '2019-12-02 22:11:54'),
(710, 54, 'has logged in the system at ', '0000-00-00 00:00:00'),
(711, 54, 'has logged out the system at ', '2019-12-02 22:12:34'),
(712, 44, 'has logged in the system at ', '0000-00-00 00:00:00'),
(713, 42, 'has logged out the system at ', '2019-12-02 22:19:38'),
(714, 9, 'has logged in the system at ', '2019-12-02 22:25:16'),
(715, 9, 'has logged in the system at ', '2019-12-03 01:39:40'),
(716, 9, 'has logged in the system at ', '2019-12-03 09:42:42'),
(717, 50, 'has logged in the system at ', '0000-00-00 00:00:00'),
(718, 50, 'has logged out the system at ', '2019-12-03 09:44:07'),
(719, 50, 'has logged in the system at ', '0000-00-00 00:00:00'),
(720, 50, 'has logged in the system at ', '0000-00-00 00:00:00'),
(721, 50, 'has logged in the system at ', '0000-00-00 00:00:00'),
(722, 50, 'has logged in the system at ', '0000-00-00 00:00:00'),
(723, 50, 'has logged in the system at ', '0000-00-00 00:00:00'),
(724, 50, 'has logged out the system at ', '2019-12-03 09:45:53'),
(725, 50, 'has logged in the system at ', '0000-00-00 00:00:00'),
(726, 50, 'has logged out the system at ', '2019-12-03 09:57:20'),
(727, 50, 'has logged in the system at ', '0000-00-00 00:00:00'),
(728, 50, 'has logged out the system at ', '2019-12-03 09:58:46'),
(729, 9, 'has logged in the system at ', '2019-12-03 16:12:02'),
(730, 50, 'has logged in the system at ', '0000-00-00 00:00:00'),
(731, 50, 'has logged out the system at ', '2019-12-03 16:19:13'),
(732, 9, 'has logged in the system at ', '2019-12-03 16:19:25'),
(733, 50, 'has logged in the system at ', '0000-00-00 00:00:00'),
(734, 9, 'has logged in the system at ', '2019-12-04 19:03:41'),
(735, 9, 'has logged out the system at ', '2019-12-04 19:03:55'),
(736, 9, 'has logged in the system at ', '2019-12-04 20:06:01'),
(737, 9, 'has logged out the system at ', '2019-12-04 20:08:46'),
(738, 9, 'has logged in the system at ', '2019-12-04 20:10:14'),
(739, 9, 'has logged out the system at ', '2019-12-04 20:11:43'),
(740, 50, 'has logged in the system at ', '0000-00-00 00:00:00'),
(741, 42, 'has logged out the system at ', '2019-12-04 20:20:42'),
(742, 9, 'has logged in the system at ', '2019-12-04 22:07:30'),
(743, 9, 'has logged in the system at ', '2019-12-05 16:57:41'),
(744, 9, 'has logged in the system at ', '2019-12-06 00:41:07'),
(745, 1, 'has logged out the system at ', '2019-12-06 01:06:01'),
(746, 9, 'has logged in the system at ', '2019-12-06 01:06:12'),
(747, 50, 'has logged in the system at ', '0000-00-00 00:00:00'),
(748, 50, 'has logged out the system at ', '2019-12-06 02:36:26'),
(749, 50, 'has logged in the system at ', '0000-00-00 00:00:00'),
(750, 50, 'has logged out the system at ', '2019-12-06 02:39:40'),
(751, 9, 'has logged in the system at ', '2019-12-06 02:40:32'),
(752, 9, 'has logged out the system at ', '2019-12-06 03:33:32'),
(753, 44, 'has logged in the system at ', '0000-00-00 00:00:00'),
(754, 52, 'has logged out the system at ', '2019-12-06 03:45:40'),
(755, 49, 'has logged in the system at ', '2019-12-06 03:45:54'),
(756, 49, 'has logged out the system at ', '2019-12-06 03:53:22'),
(757, 9, 'has logged in the system at ', '2019-12-06 03:53:32'),
(758, 50, 'has logged in the system at ', '0000-00-00 00:00:00'),
(759, 50, 'has logged out the system at ', '2019-12-06 04:25:19'),
(760, 50, 'has logged in the system at ', '0000-00-00 00:00:00'),
(761, 50, 'has logged out the system at ', '2019-12-06 04:31:57'),
(762, 59, 'has logged in the system at ', '2019-12-06 04:32:49'),
(763, 59, 'has logged out the system at ', '2019-12-06 04:36:13'),
(764, 9, 'has logged in the system at ', '2019-12-06 04:41:32'),
(765, 9, 'has logged out the system at ', '2019-12-06 04:43:02'),
(766, 50, 'has logged in the system at ', '0000-00-00 00:00:00'),
(767, 50, 'has logged out the system at ', '2019-12-06 04:44:04'),
(768, 9, 'has logged in the system at ', '2019-12-06 04:44:48'),
(769, 9, 'has logged out the system at ', '2019-12-06 04:45:49'),
(770, 9, 'has logged in the system at ', '2019-12-06 04:46:51'),
(771, 9, 'has logged out the system at ', '2019-12-06 04:48:02'),
(772, 9, 'has logged in the system at ', '2019-12-06 11:36:34'),
(773, 9, 'has logged out the system at ', '2019-12-06 11:55:47'),
(774, 9, 'has logged in the system at ', '2019-12-06 11:56:00'),
(775, 9, 'has logged out the system at ', '2019-12-06 11:57:26'),
(776, 9, 'has logged in the system at ', '2019-12-06 22:02:42'),
(777, 9, 'has logged out the system at ', '2019-12-06 22:02:52'),
(778, 9, 'has logged in the system at ', '2019-12-08 13:03:41'),
(779, 50, 'has logged in the system at ', '0000-00-00 00:00:00'),
(780, 50, 'has logged out the system at ', '2019-12-08 13:47:11'),
(781, 49, 'has logged in the system at ', '0000-00-00 00:00:00'),
(782, 49, 'has logged out the system at ', '2019-12-08 13:49:29'),
(783, 44, 'has logged in the system at ', '0000-00-00 00:00:00'),
(784, 44, 'has logged out the system at ', '2019-12-08 17:02:38'),
(785, 0, 'has logged out the system at ', '2019-12-08 17:02:40'),
(786, 50, 'has logged in the system at ', '0000-00-00 00:00:00'),
(787, 9, 'has logged in the system at ', '0000-00-00 00:00:00'),
(788, 50, 'has logged in the system at ', '0000-00-00 00:00:00'),
(789, 50, 'has logged in the system at ', '0000-00-00 00:00:00'),
(790, 9, 'has logged in the system at ', '0000-00-00 00:00:00'),
(791, 9, 'has logged out the system at ', '2019-12-10 14:54:18'),
(792, 50, 'has logged in the system at ', '0000-00-00 00:00:00'),
(793, 50, 'has logged out the system at ', '2019-12-10 14:55:47'),
(794, 0, 'has logged out the system at ', '2019-12-10 14:55:53'),
(795, 9, 'has logged in the system at ', '0000-00-00 00:00:00'),
(796, 50, 'has logged in the system at ', '0000-00-00 00:00:00'),
(797, 50, 'has logged out the system at ', '2019-12-10 15:01:42'),
(798, 9, 'has logged in the system at ', '0000-00-00 00:00:00'),
(799, 9, 'has logged out the system at ', '2019-12-10 15:28:50'),
(800, 9, 'has logged in the system at ', '0000-00-00 00:00:00'),
(801, 9, 'has logged out the system at ', '2019-12-10 15:38:34'),
(802, 9, 'has logged in the system at ', '0000-00-00 00:00:00'),
(803, 50, 'has logged in the system at ', '0000-00-00 00:00:00'),
(804, 50, 'has logged out the system at ', '2019-12-10 19:28:32'),
(805, 44, 'has logged in the system at ', '0000-00-00 00:00:00'),
(806, 52, 'has logged out the system at ', '2019-12-10 20:35:52'),
(807, 9, 'has logged in the system at ', '0000-00-00 00:00:00'),
(808, 9, 'has logged out the system at ', '2019-12-10 20:46:30'),
(809, 50, 'has logged in the system at ', '0000-00-00 00:00:00'),
(810, 50, 'has logged out the system at ', '2019-12-10 20:54:22'),
(811, 50, 'has logged in the system at ', '0000-00-00 00:00:00'),
(812, 50, 'has logged out the system at ', '2019-12-10 22:44:13'),
(813, 60, 'has logged in the system at ', '0000-00-00 00:00:00'),
(814, 52, 'has logged out the system at ', '2019-12-10 23:48:31'),
(815, 60, 'has logged in the system at ', '0000-00-00 00:00:00'),
(816, 60, 'has logged out the system at ', '2019-12-11 00:03:31'),
(817, 60, 'has logged in the system at ', '0000-00-00 00:00:00'),
(818, 49, 'has logged in the system at ', '0000-00-00 00:00:00'),
(819, 49, 'has logged out the system at ', '2019-12-11 11:55:55'),
(820, 0, 'has logged out the system at ', '2019-12-11 11:55:59'),
(821, 60, 'has logged in the system at ', '0000-00-00 00:00:00'),
(822, 60, 'has logged in the system at ', '0000-00-00 00:00:00'),
(823, 60, 'has logged out the system at ', '2019-12-12 15:09:19'),
(824, 50, 'has logged in the system at ', '0000-00-00 00:00:00'),
(825, 9, 'has logged in the system at ', '0000-00-00 00:00:00'),
(826, 50, 'has logged in the system at ', '0000-00-00 00:00:00'),
(827, 9, 'has logged in the system at ', '0000-00-00 00:00:00'),
(828, 9, 'has logged in the system at ', '0000-00-00 00:00:00'),
(829, 42, 'has logged out the system at ', '2019-12-14 09:09:48'),
(830, 9, 'has logged in the system at ', '0000-00-00 00:00:00'),
(831, 50, 'has logged in the system at ', '0000-00-00 00:00:00'),
(832, 50, 'has logged out the system at ', '2019-12-14 09:36:38'),
(833, 50, 'has logged in the system at ', '0000-00-00 00:00:00'),
(834, 50, 'has logged out the system at ', '2019-12-14 09:42:16'),
(835, 9, 'has logged in the system at ', '0000-00-00 00:00:00'),
(836, 9, 'has logged out the system at ', '2019-12-14 10:28:38'),
(837, 50, 'has logged in the system at ', '0000-00-00 00:00:00'),
(838, 50, 'has logged out the system at ', '2019-12-14 10:32:49'),
(839, 9, 'has logged in the system at ', '0000-00-00 00:00:00'),
(840, 52, 'has logged out the system at ', '2019-12-14 10:40:55'),
(841, 61, 'has logged in the system at ', '0000-00-00 00:00:00'),
(842, 61, 'has logged out the system at ', '2019-12-14 10:42:36'),
(843, 61, 'has logged in the system at ', '0000-00-00 00:00:00'),
(844, 61, 'has logged in the system at ', '0000-00-00 00:00:00'),
(845, 61, 'has logged out the system at ', '2019-12-14 11:02:29'),
(846, 9, 'has logged in the system at ', '0000-00-00 00:00:00'),
(847, 9, 'has logged out the system at ', '2019-12-15 14:43:27'),
(848, 50, 'has logged in the system at ', '0000-00-00 00:00:00'),
(849, 60, 'has logged in the system at ', '0000-00-00 00:00:00'),
(850, 9, 'has logged in the system at ', '0000-00-00 00:00:00'),
(851, 9, 'has logged out the system at ', '2019-12-16 11:08:15'),
(852, 50, 'has logged in the system at ', '0000-00-00 00:00:00'),
(853, 42, 'has logged out the system at ', '2019-12-16 12:05:53'),
(854, 44, 'has logged in the system at ', '0000-00-00 00:00:00'),
(855, 44, 'has logged out the system at ', '2019-12-16 12:11:00'),
(856, 9, 'has logged in the system at ', '0000-00-00 00:00:00'),
(857, 42, 'has logged out the system at ', '2019-12-16 22:36:45'),
(858, 50, 'has logged in the system at ', '0000-00-00 00:00:00'),
(859, 50, 'has logged out the system at ', '2019-12-16 22:38:27'),
(860, 42, 'has logged out the system at ', '2019-12-17 08:09:17'),
(861, 42, 'has logged in the system at ', '2019-12-17 08:19:02'),
(862, 42, 'has logged in the system at ', '2019-12-17 08:20:43'),
(863, 42, 'has logged in the system at ', '2019-12-17 08:20:53'),
(864, 9, 'has logged in the system at ', '0000-00-00 00:00:00'),
(865, 9, 'has logged out the system at ', '2019-12-17 09:03:30'),
(866, 9, 'has logged in the system at ', '0000-00-00 00:00:00'),
(867, 9, 'has logged out the system at ', '2019-12-17 09:19:31'),
(868, 9, 'has logged in the system at ', '0000-00-00 00:00:00'),
(869, 9, 'has logged in the system at ', '0000-00-00 00:00:00'),
(870, 9, 'has logged in the system at ', '0000-00-00 00:00:00'),
(871, 62, 'has logged in the system at ', '0000-00-00 00:00:00'),
(872, 50, 'has logged in the system at ', '0000-00-00 00:00:00'),
(873, 52, 'has logged out the system at ', '2019-12-17 21:55:27'),
(874, 9, 'has logged in the system at ', '0000-00-00 00:00:00'),
(875, 63, 'has logged in the system at ', '0000-00-00 00:00:00'),
(876, 63, 'has logged out the system at ', '2019-12-17 22:08:13'),
(877, 63, 'has logged in the system at ', '0000-00-00 00:00:00'),
(878, 64, 'has logged in the system at ', '0000-00-00 00:00:00'),
(879, 64, 'has logged out the system at ', '2019-12-18 10:36:30'),
(880, 44, 'has logged in the system at ', '0000-00-00 00:00:00'),
(881, 44, 'has logged out the system at ', '2019-12-18 10:39:00'),
(882, 9, 'has logged in the system at ', '0000-00-00 00:00:00'),
(883, 9, 'has logged out the system at ', '2019-12-18 10:45:59'),
(884, 42, 'has logged out the system at ', '2019-12-18 10:46:43'),
(885, 9, 'has logged in the system at ', '0000-00-00 00:00:00'),
(886, 9, 'has logged out the system at ', '2019-12-18 10:49:35'),
(887, 50, 'has logged in the system at ', '0000-00-00 00:00:00'),
(888, 42, 'has logged out the system at ', '2019-12-18 10:54:35'),
(889, 9, 'has logged in the system at ', '0000-00-00 00:00:00'),
(890, 9, 'has logged in the system at ', '0000-00-00 00:00:00'),
(891, 63, 'has logged in the system at ', '0000-00-00 00:00:00'),
(892, 63, 'has logged out the system at ', '2019-12-19 07:29:22'),
(893, 9, 'has logged in the system at ', '0000-00-00 00:00:00'),
(894, 9, 'has logged out the system at ', '2019-12-19 07:33:22'),
(895, 9, 'has logged in the system at ', '0000-00-00 00:00:00'),
(896, 9, 'has logged out the system at ', '2019-12-20 11:12:19'),
(897, 9, 'has logged in the system at ', '0000-00-00 00:00:00');

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
(8, 'KCG362M', '2019-12-18', 'handed over to juma', ' Jamal Yaqub', 'JUJA WEIGHBRIDGE');

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
(1, 'KBV763Q', '2019-12-09', '2019-12-12', 123456, 'UNITY GARAGE', 'ROUTINE', 4536788, 'JUJA WEIGHBRIDGE', ''),
(2, 'KBV763Q', '2019-12-18', '2019-12-18', 123456, 'UNITY GARAGE', 'ROUTINE', 128456, 'JUJA WEIGHBRIDGE', '');

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
  `Application_status` varchar(100) NOT NULL DEFAULT 'Pending',
  `Approved_by` varchar(100) NOT NULL,
  `Approved_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trips`
--

INSERT INTO `trips` (`id`, `veh_registration`, `Date`, `first_reading`, `Second_reading`, `distance`, `time_out`, `time_in`, `Purpose_of_journey`, `branch`, `driver`, `Application_status`, `Approved_by`, `Approved_Date`) VALUES
(163, 'KCT035D', '2019-12-17', 165453, 165488, '25', '15:02', '18:05', 'TO WORK', 'JUJA WEIGHBRIDGE', ' Isaac Wanjohi', 'Rejected', 'Isaac Wanjohi', '2019-12-17'),
(164, 'KBV051H', '2019-12-18', 156453, 156467, '14', '10:03', '11:59', 'JUJA TO ATHIRIVER', 'ATHIRIVER WEIGHBRIDGE', ' Shadrack Kimanzi', 'Approved', 'Barnie Kalume', '2019-12-18'),
(165, 'KCG362M', '2019-12-19', 190000, 190099, '99', '12:46', '13:45', 'FROM JUJA TO athiriver', 'JUJA WEIGHBRIDGE', ' Jamal Yaqub', 'Approved', 'Isaac Wanjohi', '2019-12-19'),
(166, 'KBV768H', '2019-12-01', 1234, 3000, '1766', '15:03', '20:03', 'FROM JUJA TO HOME', 'JUJA WEIGHBRIDGE', ' Jamal Yaqub', 'Pending', '', '0000-00-00'),
(167, 'KBV051H', '2019-12-20', 123456, 123567, '111', '15:01', '21:59', 'FROM JUJA TO HOME', 'JUJA WEIGHBRIDGE', ' Jamal Yaqub', 'Pending', '', '0000-00-00');

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
(1, 'KBV763Q', '2019-12-18', 'michelin', NULL, 5645, 0, 'rear', 'ok');

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
(9, 'jamal_yaqub', 'a1Bz20ydqelm8m1wql74f56399c89f4bd03ff5e85b6bf4e85f', 'Jamal Yaqub', 'active', 2, 3),
(42, 'George_Mwangolo', 'a1Bz20ydqelm8m1wql2eb8ccc5f36df627171b3b96d0d786fd', 'George Mwangolo', 'active', 500, 1),
(44, 'Barnie_Kalume', 'a1Bz20ydqelm8m1wql445a2d838ed105e563ba85ed8737b6d4', 'Barnie Kalume', 'active', 1, 2),
(49, 'Roy_rukunga', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Roy rukunga', 'active', 1, 3),
(50, 'Jacob_Njue', 'a1Bz20ydqelm8m1wqla0909d42adb9c14eb1dd92e4d48d7ae5', 'Jacob Njue', 'active', 2, 2),
(52, 'Isaac_Abdow', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Isaac Abdow', 'active', 0, 0),
(53, 'ismail_abdow', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Ismail Abdow', 'active', 0, 0),
(54, 'Bernard_bii', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Bernard Bii', 'active', 2, 2),
(55, 'Jonah_Mwaura', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Jonah Mwaura', 'active', 2, 3),
(56, 'Anthony_Lusweti', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Anthony Lusweti', 'active', 2, 3),
(57, 'Joseph_Mbati', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Joseph Mbati', 'active', 1, 3),
(59, 'Juma Kama', 'a1Bz20ydqelm8m1wql1d528266b85cf052e9a4794803a57288', 'Juma_Kama', 'active', 2, 3),
(60, 'isaacabdow@sgs.com', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Isaac Abdow', 'active', 1, 2),
(61, 'Ian_Kababa', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Ian  Kababa', 'active', 2, 2),
(62, 'jacob_okal', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Jacob Okal', 'active', 2, 3),
(63, 'Isaac_Wanjohi', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Isaac Wanjohi', 'active', 2, 2),
(64, 'Shadrack_Kimanzi', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Shadrack Kimanzi', 'active', 1, 3);

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
(25, '', '', '', '', '', '', '0000-00-00', 0, 0, '1'),
(26, 'KCT036D', 'TOYOTA ', 'BLACK', 'DOUBLE CAB', 'QWERTY123456', 'QWERTY7890', '0000-00-00', 2800, 5, '1'),
(27, 'KCT089G', 'TOYOTA ', 'BLACK', 'DOUBLE CAB', 'QWERTY1686r8r89', 'QWERTY789066655', '0000-00-00', 2800, 5, '1'),
(28, 'KCV567F', 'TOYOTA ', 'BLACK', 'DOUBLE CAB', 'QWERTY123456', 'QWERTY7890', '0000-00-00', 2800, 5, '2');

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
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT for table `fuel`
--
ALTER TABLE `fuel`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `history_log`
--
ALTER TABLE `history_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=898;

--
-- AUTO_INCREMENT for table `occurence`
--
ALTER TABLE `occurence`
  MODIFY `occ_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `tyres`
--
ALTER TABLE `tyres`
  MODIFY `tyre_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `vehicle_particulars`
--
ALTER TABLE `vehicle_particulars`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `vehicle_reg`
--
ALTER TABLE `vehicle_reg`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
