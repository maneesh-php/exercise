-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 05, 2020 at 11:08 AM
-- Server version: 5.7.25-0ubuntu0.18.04.2
-- PHP Version: 5.6.40-8+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coding_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `routers`
--

CREATE TABLE `routers` (
  `id` int(11) NOT NULL,
  `sap_id` varchar(18) NOT NULL,
  `hostname` varchar(14) NOT NULL,
  `loopback` varchar(255) NOT NULL,
  `mac_address` varchar(17) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `routers`
--

INSERT INTO `routers` (`id`, `sap_id`, `hostname`, `loopback`, `mac_address`, `status`) VALUES
(3, 'jdsjk38994', '192.162.123.55', '127.0.0.1', 'FA-F9-DD-B2-5E-0D', 1),
(4, 'sapid123333', '0.0.0.0', '0.0.0.0', 'AA:BB:CC:DD:00', 1),
(5, 'sapid123333', '1.1.1.1', '1.1.1.1', 'AA:BB:CC:DD:11', 1),
(6, 'sapid123333', '2.2.2.2', '2.2.2.2', 'AA:BB:CC:DD:22', 1),
(7, 'sapid123333', '3.3.3.3', '3.3.3.3', 'AA:BB:CC:DD:33', 1),
(8, 'sapid123333', '4.4.4.4', '4.4.4.4', 'AA:BB:CC:DD:44', 1),
(9, 'sapid123333', '5.5.5.5', '5.5.5.5', 'AA:BB:CC:DD:55', 1),
(10, 'sapid123333', '6.6.6.6', '6.6.6.6', 'AA:BB:CC:DD:66', 1),
(11, 'sapid123333', '7.7.7.7', '7.7.7.7', 'AA:BB:CC:DD:77', 1),
(12, 'sapid123333', '8.8.8.8', '8.8.8.8', 'AA:BB:CC:DD:88', 1),
(13, 'sapid123333', '9.9.9.9', '9.9.9.9', 'AA:BB:CC:DD:99', 1),
(14, 'sapid123333', '0.0.0.0', '0.0.0.0', 'AA:BB:CC:DD:00', 1),
(15, 'sapid123333', '1.1.1.1', '1.1.1.1', 'AA:BB:CC:DD:11', 1),
(16, 'sapid123333', '2.2.2.2', '2.2.2.2', 'AA:BB:CC:DD:22', 1),
(17, 'sapid123333', '3.3.3.3', '3.3.3.3', 'AA:BB:CC:DD:33', 1),
(18, 'sapid123333', '4.4.4.4', '4.4.4.4', 'AA:BB:CC:DD:44', 1),
(19, 'sapid123333', '5.5.5.5', '5.5.5.5', 'AA:BB:CC:DD:55', 1),
(20, 'sapid123333', '6.6.6.6', '6.6.6.6', 'AA:BB:CC:DD:66', 1),
(21, 'sapid123333', '7.7.7.7', '7.7.7.7', 'AA:BB:CC:DD:77', 1),
(22, 'sapid123333', '8.8.8.8', '8.8.8.8', 'AA:BB:CC:DD:88', 1),
(23, 'sapid123333', '9.9.9.9', '9.9.9.9', 'AA:BB:CC:DD:99', 0),
(24, 'assdasdasasda', 'sadasdas', 'saasdasdas', 'jsdskjahd', 0),
(25, 'assdasdasasda', 'sadasdas', 'saasdasdas', 'jsdskjahd', 0),
(26, 'assdasdasasda', 'sadasdas', 'saasdasdas', 'jsdskjahd', 0),
(27, '8739123791', 'dasdasdasd', 'asdasdas', 'asdasdad', 1),
(28, 'wqeqwqeq', 'qweqwqeqwe', 'qweqweqweqw', 'qweqweqw', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `router_view`
-- (See below for the actual view)
--
CREATE TABLE `router_view` (
`id` int(11)
,`sap_id` varchar(18)
,`hostname` varchar(14)
,`loopback` varchar(255)
,`mac_address` varchar(17)
,`status` tinyint(4)
);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(40) NOT NULL,
  `user_password` varchar(40) NOT NULL,
  `user_type` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `user_password`, `user_type`) VALUES
(0, 'maneesh', '12345', '1');

-- --------------------------------------------------------

--
-- Structure for view `router_view`
--
DROP TABLE IF EXISTS `router_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`skip-grants user`@`skip-grants host` SQL SECURITY DEFINER VIEW `router_view`  AS  select `routers`.`id` AS `id`,`routers`.`sap_id` AS `sap_id`,`routers`.`hostname` AS `hostname`,`routers`.`loopback` AS `loopback`,`routers`.`mac_address` AS `mac_address`,`routers`.`status` AS `status` from `routers` where (`routers`.`status` = '1') ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `routers`
--
ALTER TABLE `routers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `routers`
--
ALTER TABLE `routers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
