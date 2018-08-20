-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Host: sql310.epizy.com
-- Generation Time: Aug 20, 2018 at 02:07 PM
-- Server version: 5.6.41-84.1
-- PHP Version: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `epiz_22518935_97`
--

-- --------------------------------------------------------

--
-- Table structure for table `availability`
--

CREATE TABLE IF NOT EXISTS `availability` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vid` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `dates` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL DEFAULT 'No remarks',
  `last_edit` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vid` (`vid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `availability`
--

INSERT INTO `availability` (`id`, `vid`, `month`, `year`, `name`, `dates`, `remarks`, `last_edit`) VALUES
(1, 506109, 8, 2018, 'Leonard Selvaraja', '1,2,3,4,5,6,7,8,9', 'test 4', '2018-08-20 17:31:57'),
(2, 275220, 7, 2018, 'Karan Malik', 'leave', 'No remarks', '2018-07-02 16:10:34'),
(4, 209766, 7, 2018, 'Rohit Dalaya', '1,2,3,4,5,6', 'No remarks', '2018-08-20 17:34:58'),
(5, 414320, 7, 2018, 'Rishab Kumar', '1,2,3,4,5,6', 'No remarks', '2018-08-20 17:34:58'),
(6, 499985, 8, 2018, 'Jiffry Shaheem', '1,2,3,4,5,6,20', 'No remarks', '2018-08-20 17:34:58'),
(7, 424148, 7, 2018, 'Prajwol Lal Shrestha', '1,2,3,4,5,6', 'No remarks', '2018-08-20 17:34:58'),
(8, 504848, 1, 123, 'Ankit Bisht', '1,2,3,4,5', 'No remarks', '2018-08-20 17:34:58');

--
-- Table structure for table `trainers`
--

CREATE TABLE IF NOT EXISTS `trainers` (
  `staff_privledge` varchar(25) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `ivao_email` varchar(25) NOT NULL,
  `personal_email` varchar(25) NOT NULL,
  `vid` int(8) NOT NULL,
  PRIMARY KEY (`vid`),
  UNIQUE KEY `vid` (`vid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trainers`
--

INSERT INTO `trainers` (`staff_privledge`, `firstname`, `lastname`, `ivao_email`, `personal_email`, `vid`) VALUES
('IN-TA1', 'Leonard', 'Selvaraja', 'in-ta1@ivao.aero', 'kashrayks@gmail.com', 506109),
('IN-TA2', 'Jiffry', 'Shaheem', 'in-ta2@ivao.aero', 'kashrayks@gmail.com', 499985),
('IN-ADIR', 'Karan', 'Malik', 'in-adir@ivao.aero', 'karan.malik@gmail.com', 275220),
('IN-DIR', 'Rohit', 'Dalaya', 'in-dir@ivao.aero', 'not provided', 209766),
('IN-FOC', 'Prajwol', 'Shrestha', 'in-foc@ivao.aero', 'not provided', 424148),
('IN-MAC', 'Ankit', 'Bisht', 'in-mac@ivao.aero', 'not provided', 504848);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
