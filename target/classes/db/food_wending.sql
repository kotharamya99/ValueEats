-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 04, 2022 at 09:27 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `food-wending`
--
CREATE DATABASE `food-wending` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `food-wending`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_details`
--

CREATE TABLE IF NOT EXISTS `admin_details` (
  `Admin_Id` int(11) NOT NULL,
  `Admin_Name` varchar(250) NOT NULL,
  `Admin_Password` varchar(250) NOT NULL,
  PRIMARY KEY (`Admin_Id`),
  KEY `Admin_Id` (`Admin_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_details`
--

INSERT INTO `admin_details` (`Admin_Id`, `Admin_Name`, `Admin_Password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE IF NOT EXISTS `booking_details` (
  `Booking_Id` int(11) NOT NULL AUTO_INCREMENT,
  `User_Id` int(11) NOT NULL,
  `Item_Id` int(11) NOT NULL,
  `Booking_Quantity` int(11) NOT NULL,
  `Recorded_Date` date NOT NULL,
  PRIMARY KEY (`Booking_Id`),
  KEY `User_Id` (`User_Id`),
  KEY `Item_Id` (`Item_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`Booking_Id`, `User_Id`, `Item_Id`, `Booking_Quantity`, `Recorded_Date`) VALUES
(9, 1, 1, 10, '2022-05-04'),
(10, 1, 2, 90, '2022-05-04'),
(11, 1, 2, 10, '2022-05-04');

-- --------------------------------------------------------

--
-- Table structure for table `category_details`
--

CREATE TABLE IF NOT EXISTS `category_details` (
  `Category_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Category_Code` varchar(6) NOT NULL,
  `Category_Name` varchar(250) NOT NULL,
  `Admin_Id` int(11) NOT NULL,
  `Recorded_Date` date NOT NULL,
  PRIMARY KEY (`Category_Id`),
  KEY `Category_Id` (`Category_Id`),
  KEY `Admin_Id` (`Admin_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `category_details`
--

INSERT INTO `category_details` (`Category_Id`, `Category_Code`, `Category_Name`, `Admin_Id`, `Recorded_Date`) VALUES
(1, 'LEMRIC', 'Lemon Rice', 1, '2022-04-15'),
(2, 'TOMRIC', 'Tomato Rice', 1, '2022-04-11'),
(5, 'EGGRI', 'Egg Rice', 1, '2022-04-11');

-- --------------------------------------------------------

--
-- Table structure for table `item_details`
--

CREATE TABLE IF NOT EXISTS `item_details` (
  `Item_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Item_Name` varchar(250) NOT NULL,
  `Item_Quantity` int(11) NOT NULL,
  `Machine_Id` int(11) NOT NULL,
  `Category_Id` int(11) NOT NULL,
  `User_Id` int(11) NOT NULL,
  `Expiry_Date` date NOT NULL,
  `Recorded_Date` date NOT NULL,
  PRIMARY KEY (`Item_Id`),
  KEY `User_Id` (`User_Id`),
  KEY `Category_Id` (`Category_Id`),
  KEY `Machine_Id` (`Machine_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `item_details`
--

INSERT INTO `item_details` (`Item_Id`, `Item_Name`, `Item_Quantity`, `Machine_Id`, `Category_Id`, `User_Id`, `Expiry_Date`, `Recorded_Date`) VALUES
(1, 'Food#14', 10, 9, 1, 2, '2022-05-04', '2022-05-04'),
(2, 'Food#16', 100, 9, 1, 2, '2022-05-04', '2022-05-04'),
(3, 'Food#3', 80, 8, 1, 2, '2022-05-04', '2022-05-04'),
(4, 'Food#4', 20, 8, 1, 2, '2022-05-04', '2022-05-04'),
(5, 'Food#14', 10, 9, 1, 2, '2022-05-04', '2022-05-04');

-- --------------------------------------------------------

--
-- Table structure for table `machine_details`
--

CREATE TABLE IF NOT EXISTS `machine_details` (
  `Machine_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Machine_Name` varchar(250) NOT NULL,
  `Machine_Location` varchar(250) NOT NULL,
  `Machine_Address` varchar(250) NOT NULL,
  `Machine_Capacity` int(11) NOT NULL,
  `Admin_Id` int(11) NOT NULL,
  `Recorded_Date` date NOT NULL,
  PRIMARY KEY (`Machine_Id`),
  KEY `Admin_Id` (`Admin_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `machine_details`
--

INSERT INTO `machine_details` (`Machine_Id`, `Machine_Name`, `Machine_Location`, `Machine_Address`, `Machine_Capacity`, `Admin_Id`, `Recorded_Date`) VALUES
(1, 'Machine#1', '607002', 'Chennai', 100, 1, '2022-03-20'),
(5, 'Machine#4', '607005', 'Chennai', 100, 1, '2022-04-11'),
(7, 'Machine#11', '607003', 'Chennai', 23, 1, '2022-04-11'),
(8, 'Machine#18', '607004', 'Chennai', 100, 1, '2022-04-15'),
(9, 'Machine#19', '607002', 'Chennai', 100, 1, '2022-04-28');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE IF NOT EXISTS `user_details` (
  `User_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(250) NOT NULL,
  `Phoneno` bigint(15) NOT NULL,
  `Email_Id` varchar(250) NOT NULL,
  `Address` text NOT NULL,
  `Location` int(11) NOT NULL,
  `Type` varchar(250) NOT NULL,
  `Hotel_Name` varchar(250) DEFAULT NULL,
  `Username` varchar(250) NOT NULL,
  `Password` varchar(250) NOT NULL,
  `Recorded_Date` date NOT NULL,
  PRIMARY KEY (`User_Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`User_Id`, `Name`, `Phoneno`, `Email_Id`, `Address`, `Location`, `Type`, `Hotel_Name`, `Username`, `Password`, `Recorded_Date`) VALUES
(1, 'kiruba', 9043963074, 'kirubakarans2009@gmail.com', 'Chennai', 607004, 'user', NULL, 'kiruba', 'kiruba', '2022-04-10'),
(2, 'ramya', 9043963074, 'kirubakarans2009@gmail.com', 'Guntur', 607004, 'Vendor', 'Guntur Bhavan', 'ramya', 'ramya', '2022-04-11'),
(3, 'Test', 9043963074, 'kirubakarans2009@gmail.com', 'feewr', 607004, 'User', 'Guntur Bhavan', 'Test', 'Test', '2022-04-11'),
(4, 'Hari', 9043963074, 'kirubakarans2009@gmail.com', 'chennai', 607002, 'Vendor', 'Guntur Bhavan', 'hari', 'hari', '2022-04-17'),
(5, 'nisha', 9043963074, 'kirubakarans2009@gmail.com', 'chennai', 607002, 'User', NULL, 'nisha', 'nisha', '2022-04-17'),
(6, 'nisha', 9043963074, 'kotharamya99@gmail.com', 'dsadas', 607002, 'User', NULL, 'nisha', 'nisha', '2022-04-17');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_details`
--
ALTER TABLE `category_details`
  ADD CONSTRAINT `category_details_ibfk_1` FOREIGN KEY (`Admin_Id`) REFERENCES `admin_details` (`Admin_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `item_details`
--
ALTER TABLE `item_details`
  ADD CONSTRAINT `item_details_ibfk_5` FOREIGN KEY (`Machine_Id`) REFERENCES `machine_details` (`Machine_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `item_details_ibfk_6` FOREIGN KEY (`Category_Id`) REFERENCES `category_details` (`Category_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `machine_details`
--
ALTER TABLE `machine_details`
  ADD CONSTRAINT `machine_details_ibfk_1` FOREIGN KEY (`Admin_Id`) REFERENCES `admin_details` (`Admin_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
