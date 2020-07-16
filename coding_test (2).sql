-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 16, 2020 at 05:55 PM
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
  `hostname` varchar(255) NOT NULL,
  `loopback` varchar(255) NOT NULL,
  `mac_address` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `routers`
--

INSERT INTO `routers` (`id`, `sap_id`, `hostname`, `loopback`, `mac_address`, `status`) VALUES
(1, '1111111', 'www.google.com', '127.0.223.55', 'FA-F9-DD-B2-5E-0D', 1),
(2, '8739123791', 'www.bbb.co.in', '127.0.223.5', 'FA-F9-DD-B2-5E-0D', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `router_view`
-- (See below for the actual view)
--
CREATE TABLE `router_view` (
`id` int(11)
,`sap_id` varchar(18)
,`hostname` varchar(255)
,`loopback` varchar(255)
,`mac_address` varchar(255)
,`status` tinyint(4)
);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_json`
--

CREATE TABLE `tbl_json` (
  `id` int(11) NOT NULL,
  `fingerprint` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_json`
--

INSERT INTO `tbl_json` (`id`, `fingerprint`) VALUES
(1, '{\"1594899168\": 7512, \"1594899172\": 6823, \"1594899174\": 8649, \"1594899175\": 352, \"1594899176\": 1411, \"1594899177\": 4817, \"1594899179\": 4315, \"1594899182\": 3954, \"1594899184\": 8965, \"1594899186\": 724, \"1594899187\": 4311, \"1594899188\": 5949, \"1594899189\": 4848, \"1594899190\": 72, \"1594899191\": 1063, \"1594899193\": 7300, \"1594899195\": 2034, \"1594899196\": 8046, \"1594899197\": 4440, \"1594899198\": 5054, \"1594899199\": 3437, \"1594899200\": 7078, \"1594899201\": 568, \"1594899202\": 4026, \"1594899203\": 2109, \"1594899204\": 7886, \"1594899205\": 708, \"1594899206\": 3637, \"1594899207\": 8707, \"1594899208\": 8686, \"1594899209\": 51, \"1594899210\": 2527, \"1594899211\": 4021, \"1594899212\": 6823, \"9309230921\": \"powjwe90\"}');

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
-- Indexes for table `tbl_json`
--
ALTER TABLE `tbl_json`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `routers`
--
ALTER TABLE `routers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_json`
--
ALTER TABLE `tbl_json`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
