-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2016 at 04:08 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dit_webdev`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointment_ID` int(11) NOT NULL,
  `car_ID` int(11) NOT NULL,
  `result_ID` int(11) NOT NULL,
  `apointment_time` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(200) NOT NULL,
  `book_name` varchar(200) NOT NULL,
  `book_author` varchar(200) NOT NULL,
  `book_category` varchar(200) NOT NULL,
  `publish_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `book_name`, `book_author`, `book_category`, `publish_date`) VALUES
(157, 'Ulysses', 'James Joyce', 'Fictional Novel', '1922-02-22'),
(158, 'The Boy in the Striped Pyjamas', 'John Boyne', 'Fictional Novel', '2006-05-01'),
(162, 'PHP and MYSQL for Dummies', 'Janet Valade', 'Instructional Book', '2002-02-22'),
(168, 'Mickey Ds', 'Ronald McDonald', 'Menu Book', '2015-12-25');

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `car_ID` int(11) NOT NULL,
  `customer_ID` int(11) NOT NULL,
  `car_model` varchar(20) DEFAULT NULL,
  `car_manufactured_year` char(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_ID` int(11) NOT NULL,
  `customer_first_name` varchar(20) DEFAULT NULL,
  `customer_surname` varchar(20) DEFAULT NULL,
  `customer_phone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_ID` int(11) NOT NULL,
  `result_ID` int(11) NOT NULL,
  `garage_ID` int(11) NOT NULL,
  `employee_first_name` varchar(20) DEFAULT NULL,
  `employee_surname` varchar(20) DEFAULT NULL,
  `employee_phone` int(11) DEFAULT NULL,
  `employee_access_level` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `garage`
--

CREATE TABLE `garage` (
  `garage_ID` int(11) NOT NULL,
  `garage_city` varchar(20) DEFAULT NULL,
  `garage_street_addr` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `result_ID` int(11) NOT NULL,
  `employee_ID` int(11) NOT NULL,
  `test_began` date DEFAULT NULL,
  `slide_slip_front_axle` int(11) DEFAULT NULL,
  `slide_slip_rear_axle` int(11) DEFAULT NULL,
  `suspension_front_axle_nearside` int(11) DEFAULT NULL,
  `suspension_rear_axle_nearside` int(11) DEFAULT NULL,
  `suspension_front_axle_offside` int(11) DEFAULT NULL,
  `suspension_rear_axle_offside` int(11) DEFAULT NULL,
  `brake_effort_front_axle_nearsi` int(11) DEFAULT NULL,
  `brake_effort_rear_axle_nearsid` int(11) DEFAULT NULL,
  `brake_effort_front_axle_offsid` int(11) DEFAULT NULL,
  `brake_effort_rear_axle_offside` int(11) DEFAULT NULL,
  `brake_ovality_front_ax_nearsid` int(11) DEFAULT NULL,
  `brake_ovality_rear_ax_nearside` int(11) DEFAULT NULL,
  `brake_ovality_front_ax_offside` int(11) DEFAULT NULL,
  `brake_ovality_rear_ax_offside` int(11) DEFAULT NULL,
  `brake_car_weight` int(11) DEFAULT NULL,
  `brake_parking_brake` int(11) DEFAULT NULL,
  `brake_brake_effort` int(11) DEFAULT NULL,
  `exhaust_oil_tmep` int(11) DEFAULT NULL,
  `exhaust_low_idle_co_vol` int(11) DEFAULT NULL,
  `exhaust_low_idle_hc` int(11) DEFAULT NULL,
  `exhaust_high_idle_lambda` int(11) DEFAULT NULL,
  `exhaust_high_idle_co_vol` int(11) DEFAULT NULL,
  `exhaust_high_idle_hc` int(11) DEFAULT NULL,
  `head_light_dip_nearside` varchar(20) DEFAULT NULL,
  `head_light_dip_offside` varchar(20) DEFAULT NULL,
  `head_light_full_nearside` varchar(20) DEFAULT NULL,
  `head_light_full_offside` varchar(20) DEFAULT NULL,
  `head_light_fog_nearside` varchar(20) DEFAULT NULL,
  `head_light_fog_offside` varchar(20) DEFAULT NULL,
  `head_light_aux_nearside` varchar(20) DEFAULT NULL,
  `head_light_aux_offside` varchar(20) DEFAULT NULL,
  `Visual_defects` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(200) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `user_lname` varchar(200) NOT NULL,
  `user_mail` varchar(200) NOT NULL,
  `user_pass` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_lname`, `user_mail`, `user_pass`) VALUES
(45, 'rv', 'suguitan', 'rv_suguitan@yahoo.com', 'd6cf0dbcd0fa89260add050b03e80ef55b8d3a03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointment_ID`,`car_ID`),
  ADD KEY `R_9` (`result_ID`),
  ADD KEY `R_15` (`car_ID`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`car_ID`),
  ADD KEY `R_10` (`customer_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_ID`),
  ADD KEY `R_6` (`garage_ID`);

--
-- Indexes for table `garage`
--
ALTER TABLE `garage`
  ADD PRIMARY KEY (`garage_ID`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`result_ID`),
  ADD KEY `R_11` (`employee_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `R_13` FOREIGN KEY (`car_ID`) REFERENCES `car` (`car_ID`),
  ADD CONSTRAINT `R_14` FOREIGN KEY (`car_ID`) REFERENCES `car` (`car_ID`),
  ADD CONSTRAINT `R_15` FOREIGN KEY (`car_ID`) REFERENCES `car` (`car_ID`),
  ADD CONSTRAINT `R_9` FOREIGN KEY (`result_ID`) REFERENCES `results` (`result_ID`);

--
-- Constraints for table `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `R_10` FOREIGN KEY (`customer_ID`) REFERENCES `customer` (`customer_ID`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `R_6` FOREIGN KEY (`garage_ID`) REFERENCES `garage` (`garage_ID`);

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `R_11` FOREIGN KEY (`employee_ID`) REFERENCES `employee` (`employee_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
