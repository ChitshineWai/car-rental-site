-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 24, 2022 at 02:54 PM
-- Server version: 5.7.36
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'mgmg', '1234'),
(2, 'koko', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `booking_vehical`
--

DROP TABLE IF EXISTS `booking_vehical`;
CREATE TABLE IF NOT EXISTS `booking_vehical` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `pick-up-location` varchar(225) NOT NULL,
  `pick-up-date` varchar(225) NOT NULL,
  `drop-off-date` varchar(225) NOT NULL,
  `pick-up-time` varchar(225) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_vehical`
--

INSERT INTO `booking_vehical` (`id`, `username`, `password`, `pick-up-location`, `pick-up-date`, `drop-off-date`, `pick-up-time`) VALUES
(2, 'user', '1234', '                  Taung Gyi', '7/12/2022', '7/13/2022', '12:30am'),
(3, 'user', '1234', '                  Taung Gyi', '7/12/2022', '7/13/2022', '12:30am'),
(4, 'user', '1234', '                  Taung Gyi', '7/12/2022', '7/13/2022', '12:30am'),
(5, 'user', '1234', '                  yangon', '7/27/2022', '7/27/2022', '12:00am');

-- --------------------------------------------------------

--
-- Table structure for table `car_brand`
--

DROP TABLE IF EXISTS `car_brand`;
CREATE TABLE IF NOT EXISTS `car_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `car_brand` varchar(225) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car_brand`
--

INSERT INTO `car_brand` (`id`, `car_brand`) VALUES
(1, 'BMW'),
(2, 'Mercedes-Benz'),
(3, 'Chevrolet'),
(4, 'McLaren Automotive'),
(5, 'Jeep'),
(6, 'Ford'),
(7, 'Audi'),
(8, 'McLaren'),
(9, 'Land Rover');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `subject` varchar(225) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `message`) VALUES
(1, 'hlahla', 'shinewai2825@gmail.com', 'test', 'test'),
(2, 'hlahla', 'shinewai2825@gmail.com', 'test', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
CREATE TABLE IF NOT EXISTS `register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `pass` varchar(225) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `username`, `email`, `pass`) VALUES
(1, 'user', 'user@gmail.com', '1234'),
(2, 'user', 'user@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `vehical_tb`
--

DROP TABLE IF EXISTS `vehical_tb`;
CREATE TABLE IF NOT EXISTS `vehical_tb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Vehicles` varchar(225) NOT NULL,
  `VehiclesBrand` varchar(225) NOT NULL,
  `VehiclesOverview` varchar(225) NOT NULL,
  `PricePerDay` varchar(225) NOT NULL,
  `FuelType` varchar(225) NOT NULL,
  `ModelYear` varchar(225) NOT NULL,
  `SeatingCapacity` varchar(225) NOT NULL,
  `Vimage1` varchar(225) NOT NULL,
  `luggage` varchar(225) NOT NULL,
  `AirConditioner` varchar(225) NOT NULL,
  `PowerDoorLocks` varchar(225) NOT NULL,
  `AntiLockBrakingSystem` varchar(225) NOT NULL,
  `BrakeAssist` varchar(225) NOT NULL,
  `PowerSteering` varchar(225) NOT NULL,
  `DriverAirbag` varchar(225) NOT NULL,
  `PassengerAirbag` varchar(225) NOT NULL,
  `PowerWindows` varchar(225) NOT NULL,
  `CDPlayer` varchar(225) NOT NULL,
  `CentralLocking` varchar(225) NOT NULL,
  `CrashSensor` varchar(225) NOT NULL,
  `LeatherSeats` varchar(225) NOT NULL,
  `RegDate` varchar(225) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehical_tb`
--

INSERT INTO `vehical_tb` (`id`, `Vehicles`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `luggage`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`) VALUES
(7, 'A-klasse', 'Mercedes-Benz', 'The GT-R packs a 3.8-litre V6 twin-turbocharged petrol, which puts out 570PS of max power at 6800rpm and 637Nm of peak torque. The engine is mated to a 6-speed ', '80000', 'Petrol', 'III (W176) (2012-2015)', '4', 'A-klasse.jpg', '3', 'present', 'absent', 'present', 'absent', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'absent', '2022/07/22'),
(8, 'AlfaRomeo', 'Chevrolet', 'The engine is mated to a 6-speed dual-clutch transmission in an all-wheel-drive setup. The 2+2 seater GT-R sprints from 0-100kmph in less than 3', '70000', 'Diesel', '2013 - 2016', '2', 'AlfaRomeo.jpg', '1', 'present', 'present', 'present', 'present', 'present', 'present', 'absent', 'present', 'present', 'absent', 'present', 'absent', '2022/07/22'),
(10, 'MercedesGrandSedan', 'Mercedes-Benz', 'The engine is mated to a 6-speed dual-clutch transmission in an all-wheel-drive setup. The 2+2 seater GT-R sprints from 0-100kmph in less than 3', '80000', 'Petrol', '2015', '2', 'MercedesGrandSedan.jpg', '2', 'present', 'absent', 'absent', 'absent', 'present', 'present', 'present', 'absent', 'absent', 'present', 'present', 'absent', '2022/07/22'),
(16, 'Mclaren720S', 'McLaren', '720S', '120000', 'Petrol', '2017 - Now', '2', 'McLaren.jpg', '1', 'present', 'absent', 'present', 'absent', 'present', 'present', 'present', 'present', 'absent', 'present', 'present', 'absent', '2022/07/24'),
(11, 'Mustang', 'Ford', 'The engine is mated to a 6-speed dual-clutch transmission in an all-wheel-drive setup. The 2+2 seater GT-R sprints from 0-100kmph in less than 3', '90000', 'Petrol', 'V facelift (2009-2014)', '2', 'Vfacelift.jpg', '2', 'present', 'absent', 'present', 'absent', 'present', 'present', 'present', 'present', 'absent', 'present', 'absent', 'present', '2022/07/22'),
(12, 'S-klasseAMG', 'Mercedes-Benz', 'The engine is mated to a 6-speed dual-clutch transmission in an all-wheel-drive setup. The 2+2 seater GT-R sprints from 0-100kmph in less than 3', '90000', 'Petrol', 'III (W222, C217) (2013-2017)', '4', 'S-klasseAMG.jpg', '2', 'present', 'absent', 'absent', 'absent', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'absent', '2022/07/22'),
(13, 'Wrangler', 'Jeep', 'The engine is mated to a 6-speed dual-clutch transmission in an all-wheel-drive setup. The 2+2 seater GT-R sprints from 0-100kmph in less than 3', '80000', 'Petrol', 'IV (JL) (2017-)', '6', 'Wrangler.jpg', '5', 'present', 'present', 'absent', 'absent', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'absent', '2022/07/22'),
(15, 'A1', 'Audi', 'The engine is mated to a 6-speed dual-clutch transmission in an all-wheel-drive setup. The 2+2 seater GT-R sprints from 0-100kmph in less than 3', '100000', 'Diesel', 'I (8X) (2010-2015)', '4', 'A1.jpg', '2', 'present', 'absent', 'present', 'absent', 'present', 'present', 'present', 'present', 'absent', 'present', 'present', 'present', '2022/07/24'),
(17, 'RangeRoverEvoque', 'Land Rover', 'The engine is mated to a 6-speed dual-clutch transmission in an all-wheel-drive setup. The 2+2 seater GT-R sprints from 0-100kmph in less than 3', '150000', 'Diesel', 'I (2011-2015)', '5', 'WhiteLandRoverRangeRoverSuv.jpg', '3', 'present', 'absent', 'absent', 'absent', 'present', 'present', 'absent', 'absent', 'absent', 'present', 'absent', 'absent', '2022/07/24'),
(18, 'AMGGT', 'Mercedes-Benz', 'The engine is mated to a 6-speed dual-clutch transmission in an all-wheel-drive setup. The 2+2 seater GT-R sprints from 0-100kmph in less than 3', '160000', 'Petrol', ' I (2014-2017)', '2', 'AMGGT.jpg', '2', 'absent', 'present', 'absent', 'absent', 'present', 'present', 'present', 'present', 'absent', 'present', 'present', 'absent', '2022/07/24'),
(19, 'BMW-3series', 'BMW', 'The engine is mated to a 6-speed dual-clutch transmission in an all-wheel-drive setup. The 2+2 seater GT-R sprints from 0-100kmph in less than 3', '1200000', 'Diesel', 'F30, F31, F34 (2011-2016)', '5', 'F30,F31,F34.jpg', '3', 'present', 'absent', 'absent', 'absent', 'present', 'present', 'present', 'absent', 'absent', 'present', 'absent', 'absent', '2022/07/24'),
(21, 'Mercedes-BenzAMG-GT', 'Mercedes-Benz', 'The engine is mated to a 6-speed dual-clutch transmission in an all-wheel-drive setup. The 2+2 seater GT-R sprints from 0-100kmph in less than 3', '90000', 'Diesel', ' I facelift (2017-)', '2', 'AMGGT.jpg', '2', 'present', 'absent', 'absent', 'absent', 'present', 'present', 'present', 'absent', 'absent', 'present', 'present', 'absent', '2022/07/24');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
