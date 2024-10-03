-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2017 at 03:58 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dream`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Bank_Name` varchar(200) DEFAULT NULL,
  `Account_Number` varchar(200) DEFAULT NULL,
  `Branch` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `Bank_Name`, `Account_Number`, `Branch`) VALUES
(1, 'LIPA NA MPESA', '11111110', 'Safaricom'),
(2, 'COOPERATIVE BANK', '0213289993', 'Kitale'),
(3, 'NATIONAL BANK', '099887765666', 'Kitale'),
(4, 'COMMERCIAL BANK', '3476374654623', 'Kitale'),
(5, 'STANDARD CHARTERED', '345646332', 'Kitale'),
(6, 'EQUIT BANK', '21242423432', 'Kitale');

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE IF NOT EXISTS `activity_log` (
  `activity_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `action` varchar(128) NOT NULL,
  PRIMARY KEY (`activity_log_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(128) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(128) NOT NULL,
  `lastname` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `adminthumbnails` varchar(300) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `firstname`, `lastname`, `username`, `password`, `adminthumbnails`) VALUES
(1, 'Jennifer', 'Chelangat', 'Jennifer', 'admin', 'uploads/me1.jpg'),
(2, 'Dev', 'Kings', 'Kings', 'admin', 'images/me.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE IF NOT EXISTS `announcement` (
  `announcement_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `content` text NOT NULL,
  `times` date NOT NULL,
  PRIMARY KEY (`announcement_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`announcement_id`, `title`, `content`, `times`) VALUES
(1, 'notice', 'ALL TITHES SHOULD BE PAID THROUGH THE ACCOUNTS GIVEN. NO CASH WILL BE ACCEPTED', '2020-05-29');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `Title` text NOT NULL,
  `Date` date NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `Title`, `Date`, `content`) VALUES
(1, 'Prayer', '2020-05-25', 'Prayer day'),
(2, 'Fasting', '2020-05-30', 'Dry Fasting'),
(3, 'Thanks Giving', '2020-06-01', 'Sunday Thanks Giving');

-- --------------------------------------------------------

--
-- Table structure for table `giving`
--

CREATE TABLE IF NOT EXISTS `giving` (
  `givingid` int(10) NOT NULL AUTO_INCREMENT,
  `Amount` varchar(100) DEFAULT NULL,
  `Trcode` varchar(100) DEFAULT NULL,
  `paytime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `na` varchar(10) DEFAULT NULL,
  `ya` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`givingid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `giving`
--

INSERT INTO `giving` (`givingid`, `Amount`, `Trcode`, `paytime`, `na`, `ya`) VALUES
(1, '1000', 'KKKSJKJS', '2020-03-23 19:13:02', '0757161451', 'Church Mission'),
(2, '2000', 'KAJHDJHJD', '2019-03-23 19:42:17', '0733333333', 'Mjengo'),
(3, '2000', 'KAJHDJHJD', '2020-04-23 19:47:43', '0712345678', 'Mjengo'),
(4, '5500', 'WEADADADD', '2020-05-11 10:35:31', '0715493022', 'Mabati');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `keyu` int(10) NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) DEFAULT NULL,
  `sname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `Gender` varchar(100) DEFAULT NULL,
  `Birthday` varchar(100) DEFAULT NULL,
  `Residence` varchar(100) DEFAULT NULL,
  `pob` varchar(100) DEFAULT NULL,
  `ministry` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `thumbnail` varchar(500) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `id` varchar(10) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`keyu`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`keyu`, `fname`, `sname`, `lname`, `Gender`, `Birthday`, `Residence`, `pob`, `ministry`, `mobile`, `email`, `thumbnail`, `password`, `id`, `date`) VALUES
(1, 'Laban', 'Malebo', 'Muhuni', 'Male', '1992-02-24', 'Wamuini', 'Matisi', 'Praise and Worship', '0757161451', 'laban@gmail.com', 'uploads/none.jpg', '1234', '0757161451', '2019-01-11 11:34:34'),
(3, 'Proffesor', 'Tibim', 'Kevo', 'other', '1993-12-01', 'Nyeri', 'Kahuho', 'Praise and Worship', '0715493022', 'tibim@gmail.com', 'uploads/none.png', '1234', '0715493022', '2020-01-11 11:34:34'),
(4, 'Moses', 'Musalia', 'Mudavadi', 'Male', '1990-12-19', 'Bungoma', 'Kibomet', 'Hostessing', '0712345678', 'madvd@gmail.com', 'uploads/none.png', '0000', '0712345678', '2020-01-11 11:34:34'),
(5, 'Emma', 'Watson', 'Manu', 'Male', '1990-03-03', 'Matunda', 'Mtambo', 'Ushering', '0725338582', 'emma@gmail.com', 'uploads/none.png', '0000', '0725338582', '2020-01-12 06:05:26'),
(6, 'Eileen', 'Shitsotse', 'Shinywinywi', 'Female', '1997-01-16', 'Kitale', 'Kitale', 'Sunday School', '0733333333', 'toto@gmail.com', 'uploads/none.png', '0000', '0733333333', '2020-02-15 05:54:40');

-- --------------------------------------------------------

--
-- Table structure for table `offering`
--

CREATE TABLE IF NOT EXISTS `offering` (
  `offeringid` int(10) NOT NULL AUTO_INCREMENT,
  `Amount` varchar(100) DEFAULT NULL,
  `Trcode` varchar(100) DEFAULT NULL,
  `paytime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `na` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`offeringid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `offering`
--

INSERT INTO `offering` (`offeringid`, `Amount`, `Trcode`, `paytime`, `na`) VALUES
(1, '2000', 'KAJHDJHJD', '2020-03-01 19:55:47', '0722222222'),
(2, '8000', 'WEADADADD', '2020-03-08 10:05:39', '0700000000'),
(3, '8000', 'WWEDDDDDS', '2020-03-15 12:24:29', '0712345678');

-- --------------------------------------------------------
-- --
-- -- Table structure for table `attendance`
-- --

-- CREATE TABLE IF NOT EXISTS `attendance` (
--   `attendanceid` int(10) NOT NULL AUTO_INCREMENT,
--   `attendance` varchar(100) DEFAULT NULL,
--   `paytime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
--   PRIMARY KEY (`attendanceid`)
-- ) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --
-- -- Dumping data for table `attendance`
-- --

-- INSERT INTO `attendance` (`attendanceid`, `attendance`, `paytime`) VALUES
-- (1, '2000', '2020-10-04'),
-- (2, '8000', '2020-03-08 10:05:39'),
-- (3, '8000', '2020-03-15 12:24:29');

-- --------------------------------------------------------
--
-- Table structure for table `sundays`
--

CREATE TABLE IF NOT EXISTS `sundays` (
  `keyu` int(10) NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) DEFAULT NULL,
  `sname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `Gender` varchar(100) DEFAULT NULL,
  `Birthday` varchar(100) DEFAULT NULL,
  `Residence` varchar(100) DEFAULT NULL,
  `pob` varchar(100) DEFAULT NULL,
  `ministry` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `thumbnail` varchar(500) DEFAULT NULL,
  `id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`keyu`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `teens`
--

CREATE TABLE IF NOT EXISTS `teens` (
  `keyu` int(10) NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) DEFAULT NULL,
  `sname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `Gender` varchar(100) DEFAULT NULL,
  `Birthday` varchar(100) DEFAULT NULL,
  `Residence` varchar(100) DEFAULT NULL,
  `pob` varchar(100) DEFAULT NULL,
  `ministry` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `thumbnail` varchar(500) DEFAULT NULL,
  `id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`keyu`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;


-- --------------------------------------------------------

--
-- Table structure for table `tithe`
--

CREATE TABLE IF NOT EXISTS `tithe` (
  `titheid` int(10) NOT NULL AUTO_INCREMENT,
  `Amount` varchar(100) DEFAULT NULL,
  `Trcode` varchar(100) DEFAULT NULL,
  `paytime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `na` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`titheid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tithe`
--

INSERT INTO `tithe` (`titheid`, `Amount`, `Trcode`, `paytime`, `na`) VALUES
(1, '1000', 'KMSMBNJDW', '2020-04-20 15:38:57', '0700000000'),
(2, '2000', 'KAJHDJHJD', '2020-04-27 19:52:58', '0722222222'),
(3, '8000', 'WEADADADD', '2020-05-04 09:57:26', '0722222222');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE IF NOT EXISTS `user_log` (
  `user_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `login_date` varchar(30) NOT NULL,
  `logout_date` varchar(128) NOT NULL,
  `admin_id` int(128) NOT NULL,
  `student_id` varchar(128) NOT NULL,
  PRIMARY KEY (`user_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE IF NOT EXISTS `visitor` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) DEFAULT NULL,
  `sname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `Gender` varchar(100) DEFAULT NULL,
  `Birthday` varchar(100) DEFAULT NULL,
  `Residence` varchar(100) DEFAULT NULL,
  `pob` varchar(100) DEFAULT NULL,
  `ministry` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `thumbnail` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
