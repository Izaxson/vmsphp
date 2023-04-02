-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2019 at 08:59 AM
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
(1, 'KCG362M', '2019-10-24', 12355, 'dunlop', 12, 123456, 'ok', '');

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
(1, 'ATHIRIVER WEIGHBRIDGE', 'ATHIRIVER-MOMBASA ROAD', '0700202020', 'black', 0),
(2, 'JUJA WEIGHBRIDGE', 'JUJA-THIKA ROAD ', '0700202020', 'blue', 0),
(3, 'ISINYA WEIGHBRIDGE', 'ISINYA ', '0700202020', 'green', 0),
(5, 'SGS-VICTORIA PLAZA', '5656', '0700202020', 'blue', 0),
(6, 'MOMBASA', '123-MBS', '0700202020', 'purple', 0),
(7, 'OGC', 'MOMBASA', '0700202020', 'black', 0),
(8, 'PEST CONTROL', '34344', '0700202020', 'black', 0);

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
(3, 'KCT036D', '2019-10-24', 'Diesel', 'ok', 123456, 'Ruiru Shell', 45, 5674, '', ''),
(4, 'KCT089G', '2019-10-24', 'Diesel', 'ok', 345673, 'shell mbs rd', 67, 5645, '', ''),
(6, 'KCT036D', '2019-10-24', 'Diesel', 'ok', 123456, 'Ruiru Shell', 67, 5645, '', ''),
(7, 'KCT035D', '2019-10-23', 'Diesel', 'ok', 123456, 'shell mbs rd', 45, 5674, '', ''),
(8, 'KCT089G', '2019-10-29', 'Diesel', 'ok', 54367, 'Ruiru Shell', 45, 5674, '', ''),
(9, 'KCG362M', '2019-11-04', 'Diesel', 'ok', 123456, 'Ruiru Shell', 45, 5674, '', ''),
(10, 'KCG362M', '2019-10-04', 'Diesel', 'ok', 123456, 'Ruiru Shell', 45, 5674, 'JUJA WEIGHBRIDGE', ''),
(11, 'KCT036D', '2019-11-04', 'Diesel', 'ok', 123456, 'Ruiru Shell', 45, 5674, 'JUJA WEIGHBRIDGE', ''),
(12, 'KCG362M', '2019-11-05', 'Diesel', 'ok', 123456, 'Ruiru Shell', 45, 5674, 'ATHIRIVER WEIGHBRIDGE', ''),
(13, 'KCT036D', '2019-11-05', 'Diesel', 'ok', 123456, 'syokimau shell', 45, 5674, 'ATHIRIVER WEIGHBRIDGE', ' admin'),
(14, 'KCK371W', '2019-11-06', 'PETROL', 'ok', 123456, 'Ruiru Shell', 45, 5674, 'ATHIRIVER WEIGHBRIDGE', ' admin'),
(15, 'KCG362M', '2019-11-15', 'Diesel', 'ok', 123456, 'Ruiru Shell', 45, 5674, 'JUJA WEIGHBRIDGE', ' Jamal Yaqub'),
(16, 'KBV051H', '2019-11-17', 'Diesel', 'ok', 123456, 'Ruiru Shell', 67, 5674, 'JUJA WEIGHBRIDGE', ' Jamal Yaqub'),
(17, 'KBV768H', '2019-11-17', 'Diesel', 'ok', 123456, 'Ruiru Shell', 45, 5674, 'JUJA WEIGHBRIDGE', ' Jamal Yaqub');

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
(190, 1, 'has logged in the system at ', '2019-10-26 02:06:04'),
(191, 0, 'has logged out the system at ', '2019-10-26 07:20:50'),
(192, 9, 'has logged in the system at ', '2019-10-26 02:28:29'),
(193, 9, 'has logged out the system at ', '2019-10-26 07:29:55'),
(194, 1, 'has logged in the system at ', '2019-10-26 02:30:07'),
(195, 1, 'has logged out the system at ', '2019-10-26 07:32:32'),
(196, 11, 'has logged in the system at ', '2019-10-26 02:32:46'),
(197, 11, 'has logged out the system at ', '2019-10-26 07:36:36'),
(198, 1, 'has logged in the system at ', '2019-10-26 03:49:31'),
(199, 1, 'has logged out the system at ', '2019-10-26 09:23:46'),
(200, 1, 'has logged in the system at ', '2019-10-26 06:08:25'),
(201, 6, 'has logged out the system at ', '2019-10-27 01:44:19'),
(202, 1, 'has logged in the system at ', '2019-10-26 20:44:30'),
(203, 1, 'has logged in the system at ', '2019-10-26 20:47:17'),
(204, 6, 'has logged out the system at ', '2019-10-27 01:54:23'),
(205, 1, 'has logged in the system at ', '2019-10-26 21:10:21'),
(206, 1, 'has logged in the system at ', '2019-10-26 21:25:41'),
(207, 6, 'has logged out the system at ', '2019-10-27 03:09:03'),
(208, 9, 'has logged in the system at ', '2019-10-26 22:09:13'),
(209, 9, 'has logged out the system at ', '2019-10-27 03:15:27'),
(210, 1, 'has logged in the system at ', '2019-10-26 22:15:34'),
(211, 1, 'has logged out the system at ', '2019-10-27 03:17:54'),
(212, 1, 'has logged in the system at ', '2019-10-26 22:18:00'),
(213, 1, 'has logged out the system at ', '2019-10-27 03:22:51'),
(214, 1, 'has logged in the system at ', '2019-10-26 22:38:28'),
(215, 1, 'has logged out the system at ', '2019-10-27 03:49:57'),
(216, 1, 'has logged in the system at ', '2019-10-26 22:51:11'),
(217, 6, 'has logged out the system at ', '2019-10-27 04:29:24'),
(218, 1, 'has logged in the system at ', '2019-10-26 23:29:31'),
(219, 1, 'has logged out the system at ', '2019-10-27 04:33:28'),
(220, 1, 'has logged in the system at ', '2019-10-26 23:39:05'),
(221, 1, 'has logged out the system at ', '2019-10-27 06:58:52'),
(222, 1, 'has logged in the system at ', '2019-10-27 23:49:50'),
(223, 1, 'has logged out the system at ', '2019-10-28 04:49:55'),
(224, 6, 'has logged out the system at ', '2019-10-28 05:16:51'),
(225, 1, 'has logged in the system at ', '2019-10-28 00:16:58'),
(226, 6, 'has logged out the system at ', '2019-10-29 02:16:00'),
(227, 1, 'has logged in the system at ', '2019-10-28 21:16:18'),
(228, 1, 'has logged out the system at ', '2019-10-29 02:19:59'),
(229, 1, 'has logged in the system at ', '2019-10-28 21:22:02'),
(230, 1, 'has logged out the system at ', '2019-10-29 02:38:27'),
(231, 1, 'has logged in the system at ', '2019-10-28 23:54:31'),
(232, 1, 'has logged out the system at ', '2019-10-29 04:54:41'),
(233, 1, 'has logged in the system at ', '2019-10-29 00:21:29'),
(234, 1, 'has logged out the system at ', '2019-10-29 06:00:05'),
(235, 1, 'has logged in the system at ', '2019-10-29 01:00:47'),
(236, 1, 'has logged out the system at ', '2019-10-29 06:01:03'),
(237, 1, 'has logged in the system at ', '2019-10-29 01:01:15'),
(238, 0, 'has logged out the system at ', '2019-10-29 06:23:06'),
(239, 1, 'has logged in the system at ', '2019-10-29 01:23:14'),
(240, 0, 'has logged out the system at ', '2019-10-29 06:34:13'),
(241, 1, 'has logged in the system at ', '2019-10-29 11:51:21'),
(242, 1, 'has logged out the system at ', '2019-10-29 17:21:53'),
(243, 6, 'has logged out the system at ', '2019-10-29 17:32:56'),
(244, 1, 'has logged in the system at ', '2019-10-29 12:33:03'),
(245, 1, 'has logged in the system at ', '2019-10-29 12:47:17'),
(246, 1, 'has logged out the system at ', '2019-10-29 18:01:43'),
(247, 1, 'has logged in the system at ', '2019-10-29 13:01:52'),
(248, 1, 'has logged out the system at ', '2019-10-29 18:54:53'),
(249, 1, 'has logged in the system at ', '2019-10-29 13:55:05'),
(250, 1, 'has logged out the system at ', '2019-10-29 19:23:14'),
(251, 9, 'has logged in the system at ', '2019-10-31 21:00:31'),
(252, 9, 'has logged in the system at ', '2019-10-31 22:16:00'),
(253, 9, 'has logged out the system at ', '2019-11-01 03:17:42'),
(254, 9, 'has logged in the system at ', '2019-11-01 21:22:21'),
(255, 9, 'has logged in the system at ', '2019-11-04 12:29:03'),
(256, 9, 'has logged out the system at ', '2019-11-04 12:41:30'),
(257, 9, 'has logged in the system at ', '2019-11-04 12:48:58'),
(258, 9, 'has logged out the system at ', '2019-11-04 12:55:07'),
(259, 9, 'has logged in the system at ', '2019-11-04 15:14:23'),
(260, 9, 'has logged in the system at ', '2019-11-04 15:50:54'),
(261, 9, 'has logged out the system at ', '2019-11-04 16:18:13'),
(262, 9, 'has logged in the system at ', '2019-11-04 16:24:24'),
(263, 9, 'has logged out the system at ', '2019-11-04 16:24:28'),
(264, 9, 'has logged in the system at ', '2019-11-04 16:26:24'),
(265, 9, 'has logged out the system at ', '2019-11-04 16:32:03'),
(266, 24, 'has logged in the system at ', '2019-11-04 16:33:22'),
(267, 24, 'has logged out the system at ', '2019-11-04 16:33:53'),
(268, 25, 'has logged in the system at ', '2019-11-04 16:34:05'),
(269, 25, 'has logged in the system at ', '2019-11-05 07:50:00'),
(270, 25, 'has logged out the system at ', '2019-11-05 07:50:17'),
(271, 24, 'has logged in the system at ', '2019-11-05 07:50:32'),
(272, 24, 'has logged out the system at ', '2019-11-05 13:19:24'),
(273, 24, 'has logged in the system at ', '2019-11-05 13:19:30'),
(274, 24, 'has logged out the system at ', '2019-11-05 13:32:17'),
(275, 24, 'has logged in the system at ', '2019-11-05 13:36:57'),
(276, 24, 'has logged in the system at ', '2019-11-05 19:01:50'),
(277, 24, 'has logged out the system at ', '2019-11-05 21:53:56'),
(278, 24, 'has logged in the system at ', '2019-11-06 09:30:09'),
(279, 24, 'has logged out the system at ', '2019-11-06 09:35:25'),
(280, 24, 'has logged in the system at ', '2019-11-06 10:13:15'),
(281, 24, 'has logged out the system at ', '2019-11-06 10:13:33'),
(282, 24, 'has logged in the system at ', '2019-11-06 10:15:04'),
(283, 24, 'has logged in the system at ', '2019-11-06 11:59:09'),
(284, 24, 'has logged in the system at ', '2019-11-06 16:31:49'),
(285, 24, 'has logged out the system at ', '2019-11-06 16:34:15'),
(286, 24, 'has logged in the system at ', '2019-11-06 16:41:16'),
(287, 24, 'has logged in the system at ', '2019-11-07 09:30:22'),
(288, 24, 'has logged in the system at ', '2019-11-07 14:15:22'),
(289, 24, 'has logged out the system at ', '2019-11-07 15:04:02'),
(290, 24, 'has logged in the system at ', '2019-11-07 15:04:08'),
(291, 24, 'has logged out the system at ', '2019-11-07 15:15:23'),
(292, 24, 'has logged in the system at ', '2019-11-07 15:16:22'),
(293, 24, 'has logged in the system at ', '2019-11-07 17:25:18'),
(294, 24, 'has logged in the system at ', '2019-11-07 17:30:15'),
(295, 24, 'has logged in the system at ', '2019-11-07 22:05:01'),
(296, 6, 'has logged out the system at ', '2019-11-07 22:08:38'),
(297, 27, 'has logged in the system at ', '2019-11-07 22:08:56'),
(298, 27, 'has logged out the system at ', '2019-11-07 22:10:14'),
(299, 9, 'has logged in the system at ', '2019-11-07 22:11:25'),
(300, 6, 'has logged out the system at ', '2019-11-07 22:55:32'),
(301, 28, 'has logged in the system at ', '2019-11-07 22:59:13'),
(302, 24, 'has logged in the system at ', '2019-11-07 23:05:57'),
(303, 24, 'has logged in the system at ', '2019-11-08 09:11:09'),
(304, 24, 'has logged in the system at ', '2019-11-08 10:31:59'),
(305, 0, 'has logged out the system at ', '2019-11-08 11:30:58'),
(306, 24, 'has logged in the system at ', '2019-11-08 11:37:59'),
(307, 24, 'has logged in the system at ', '2019-11-08 11:44:46'),
(308, 24, 'has logged in the system at ', '2019-11-08 15:28:53'),
(309, 25, 'has logged in the system at ', '2019-11-08 17:18:30'),
(310, 24, 'has logged in the system at ', '2019-11-08 18:59:36'),
(311, 24, 'has logged in the system at ', '2019-11-08 19:15:29'),
(312, 24, 'has logged in the system at ', '2019-11-08 21:53:25'),
(313, 24, 'has logged in the system at ', '2019-11-09 07:54:25'),
(314, 6, 'has logged out the system at ', '2019-11-09 10:34:58'),
(315, 24, 'has logged in the system at ', '2019-11-09 20:41:26'),
(316, 24, 'has logged in the system at ', '2019-11-09 21:37:58'),
(317, 24, 'has logged in the system at ', '2019-11-10 10:51:09'),
(318, 31, 'has logged in the system at ', '2019-11-10 10:58:17'),
(319, 31, 'has logged out the system at ', '2019-11-10 10:59:46'),
(320, 9, 'has logged in the system at ', '2019-11-10 11:04:04'),
(321, 0, 'has logged out the system at ', '2019-11-10 11:16:28'),
(322, 9, 'has logged in the system at ', '2019-11-10 11:22:39'),
(323, 9, 'has logged out the system at ', '2019-11-10 11:36:28'),
(324, 24, 'has logged in the system at ', '2019-11-10 11:40:17'),
(325, 0, 'has logged out the system at ', '2019-11-10 12:01:27'),
(326, 24, 'has logged in the system at ', '2019-11-10 12:06:15'),
(327, 24, 'has logged out the system at ', '2019-11-10 12:29:15'),
(328, 24, 'has logged in the system at ', '2019-11-10 12:55:53'),
(329, 24, 'has logged out the system at ', '2019-11-10 13:20:47'),
(330, 9, 'has logged in the system at ', '2019-11-10 13:21:14'),
(331, 9, 'has logged out the system at ', '2019-11-10 13:50:24'),
(332, 24, 'has logged in the system at ', '2019-11-10 21:29:11'),
(333, 2, 'has logged out the system at ', '2019-11-10 22:26:55'),
(334, 9, 'has logged in the system at ', '2019-11-10 22:27:20'),
(335, 24, 'has logged in the system at ', '2019-11-11 17:23:16'),
(336, 24, 'has logged in the system at ', '2019-11-11 18:04:41'),
(337, 24, 'has logged out the system at ', '2019-11-11 18:05:07'),
(338, 24, 'has logged in the system at ', '2019-11-11 19:37:52'),
(339, 24, 'has logged in the system at ', '2019-11-11 21:16:26'),
(340, 24, 'has logged in the system at ', '2019-11-12 12:44:41'),
(341, 24, 'has logged in the system at ', '2019-11-12 21:15:01'),
(342, 24, 'has logged in the system at ', '2019-11-12 21:15:01'),
(343, 24, 'has logged in the system at ', '2019-11-13 12:11:19'),
(344, 24, 'has logged in the system at ', '2019-11-14 11:00:57'),
(345, 24, 'has logged in the system at ', '2019-11-14 11:08:21'),
(346, 9, 'has logged in the system at ', '2019-11-14 23:23:57'),
(347, 24, 'has logged in the system at ', '2019-11-15 07:59:11'),
(348, 24, 'has logged in the system at ', '2019-11-15 08:29:54'),
(349, 24, 'has logged out the system at ', '2019-11-15 08:49:25'),
(350, 9, 'has logged in the system at ', '2019-11-15 08:49:36'),
(351, 24, 'has logged in the system at ', '2019-11-15 11:47:51'),
(352, 9, 'has logged in the system at ', '2019-11-15 12:04:20'),
(353, 9, 'has logged out the system at ', '2019-11-15 12:19:44'),
(354, 9, 'has logged in the system at ', '2019-11-15 12:20:03'),
(355, 9, 'has logged out the system at ', '2019-11-15 13:24:23'),
(356, 6, 'has logged out the system at ', '2019-11-15 13:25:21'),
(357, 32, 'has logged in the system at ', '2019-11-15 13:25:35'),
(358, 24, 'has logged in the system at ', '2019-11-15 18:34:56'),
(359, 24, 'has logged out the system at ', '2019-11-15 18:50:37'),
(360, 24, 'has logged in the system at ', '2019-11-15 18:50:45'),
(361, 9, 'has logged in the system at ', '2019-11-15 22:45:41'),
(362, 0, 'has logged out the system at ', '2019-11-15 23:23:02'),
(363, 9, 'has logged in the system at ', '2019-11-16 20:37:03'),
(364, 9, 'has logged in the system at ', '2019-11-16 21:03:21'),
(365, 9, 'has logged out the system at ', '2019-11-16 21:30:29'),
(366, 9, 'has logged in the system at ', '2019-11-16 21:39:04'),
(367, 9, 'has logged in the system at ', '2019-11-16 21:54:37'),
(368, 9, 'has logged in the system at ', '2019-11-17 10:59:24'),
(369, 9, 'has logged out the system at ', '2019-11-17 11:03:00'),
(370, 9, 'has logged in the system at ', '2019-11-17 11:18:32'),
(371, 6, 'has logged out the system at ', '2019-11-17 11:22:55'),
(372, 33, 'has logged in the system at ', '2019-11-17 11:23:05'),
(373, 33, 'has logged out the system at ', '2019-11-17 11:38:17'),
(374, 9, 'has logged in the system at ', '2019-11-17 11:38:31'),
(375, 9, 'has logged in the system at ', '2019-11-17 11:57:22'),
(376, 9, 'has logged out the system at ', '2019-11-17 12:03:25'),
(377, 9, 'has logged in the system at ', '2019-11-17 15:30:20');

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
(1, 'KCT036D', '2019-10-24', 'vehicle handed over in good condition  jamal yaqub', 'Juma Kama', 'ATHIRIVER WEIGHBRIDGE'),
(2, 'KCT035D', '2019-10-18', 'It is a long established f', 'Yaqub Jamal ', 'ATHIRIVER WEIGHBRIDGE'),
(3, 'KCT035D', '2019-10-24', 'It is a long established f', 'Roy Rukunga', 'ATHIRIVER WEIGHBRIDGE');

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
(2, 'KCT036D', '2019-10-23', '2019-09-23', 123456, 'UNITY GARAGE', 'ROUTINE', 128456, '', ''),
(3, 'KCT036D', '2019-10-24', '2019-10-25', 123456, 'UNITY GARAGE', 'ROUTINE', 128456, '', ''),
(5, 'KCT036D', '2019-10-29', '2019-10-30', 123456, 'UNITY GARAGE', 'ROUTINE', 128456, '', ''),
(6, '', '2019-11-04', '2019-11-04', 123456, 'UNITY GARAGE', 'ROUTINE', 128456, '', ''),
(7, '', '2019-11-04', '2019-11-04', 123456, 'UNITY GARAGE', 'ROUTINE', 4536788, 'JUJA WEIGHBRIDGE', ''),
(8, 'KCG362M', '2019-11-06', '2019-11-06', 123456, 'UNITY GARAGE', 'ROUTINE', 128456, 'ATHIRIVER WEIGHBRIDGE', '');

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
(1, 'KCT035D', '2019-01-07', 'Spanner', 'Juma Kama', 'ok', ''),
(2, 'KCG362M', '2019-11-04', 'Spanner', 'Yaqub Jamal ', 'missing', '');

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
  `Approved_by` int(11) NOT NULL,
  `Approval_date` int(11) NOT NULL,
  `Rejection_Reason` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trips`
--

INSERT INTO `trips` (`id`, `veh_registration`, `Date`, `first_reading`, `Second_reading`, `distance`, `time_out`, `time_in`, `Purpose_of_journey`, `branch`, `driver`, `Application_status`, `Approved_by`, `Approval_date`, `Rejection_Reason`) VALUES
(1, 'KCG362M', '2019-11-17', 1234, 3000, 0, '03:30:00.000000', '04:30:00.000000', 'TO WORK', 'JUJA WEIGHBRIDGE', ' Jamal Yaqub', 'Approved', 0, 0, 0),
(2, 'KBV051H', '2019-11-17', 1234, 3000, 0, '03:33:00.000000', '05:33:00.000000', 'chase', 'JUJA WEIGHBRIDGE', ' Jamal Yaqub', 'Approved', 0, 0, 0),
(3, 'KCT089G', '2019-11-17', 1234, 2999, 0, '04:33:00.000000', '04:33:00.000000', 'mobile operations', 'JUJA WEIGHBRIDGE', ' Jamal Yaqub', 'Approved', 0, 0, 0);

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
  `branch_id` int(11) NOT NULL,
  `Position` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `name`, `status`, `branch_id`, `Position`) VALUES
(1, 'admin', 'a1Bz20ydqelm8m1wql21232f297a57a5a743894a0e4a801fc3', 'John Smith', 'active', 200, ''),
(6, 'administrator', 'a1Bz20ydqelm8m1wql21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'active', 0, ''),
(8, 'Roy_rukunga', 'a1Bz20ydqelm8m1wql2a02291117888c21cfb86daeee5410b2', 'Roy Rukunga', 'active', 1, ''),
(9, 'jamal_yaqub', 'a1Bz20ydqelm8m1wql74f56399c89f4bd03ff5e85b6bf4e85f', 'Jamal Yaqub', 'active', 2, ''),
(13, 'Jonah_Mwaura', 'a1Bz20ydqelm8m1wql9c5ddd54107734f7d18335a5245c286b', 'Jonah Mwaura', 'active', 2, ''),
(14, 'Juma_Kama', 'a1Bz20ydqelm8m1wql9cfdb29f4848a003792b6c55c7b6cc36', 'Juma Kama', 'active', 2, ''),
(17, 'jamal_yaqub', 'a1Bz20ydqelm8m1wqld41d8cd98f00b204e9800998ecf8427e', '', '', 0, ''),
(21, 'administrator', 'a1Bz20ydqelm8m1wqld41d8cd98f00b204e9800998ecf8427e', '', '', 0, ''),
(24, 'admin', 'a1Bz20ydqelm8m1wql4441e5d70b3657900fa57e66db407e0b', 'admin', 'active', 1, ''),
(30, 'Lawrence_Njugun', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'lawrenzo', 'active', 1, ''),
(31, 'Jacob_Njue', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Jacob Njue', 'active', 500, ''),
(32, 'Dalmas_Otieno', 'a1Bz20ydqelm8m1wql38feb4267d5062a759021aec50ea9830', 'Dalmas Otieno', 'active', 2, ''),
(33, 'Joseph_Ondieki', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Joseph Ondieki', 'active', 8, ''),
(34, 'Joseph_Mbati', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Joseph Mbati', 'active', 2, '');

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
(17, 'KBV768V', '', 'BLACK', 'DOUBLE CAB', 'QWERTY123456', 'QWERTY7890', '0000-00-00', 2800, 0),
(18, 'KCT089G', '', 'BLACK', 'DOUBLE CAB', 'QWERTY123456', 'QWERTY789066655', '0000-00-00', 2800, 0),
(19, 'KCT035D', '', 'BLACK', 'DOUBLE CAB', 'QWERTY123456', 'QWERTY7890', '0000-00-00', 2800, 0),
(20, 'KCT036D', '', 'BLACK', 'DOUBLE CAB', 'QWERTY123456', 'QWERTY7890', '0000-00-00', 2800, 0);

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
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `fuel`
--
ALTER TABLE `fuel`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `history_log`
--
ALTER TABLE `history_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=378;

--
-- AUTO_INCREMENT for table `occurence`
--
ALTER TABLE `occurence`
  MODIFY `occ_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `tool_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `trips`
--
ALTER TABLE `trips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tyres`
--
ALTER TABLE `tyres`
  MODIFY `tyre_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

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
