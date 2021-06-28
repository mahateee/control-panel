-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 28 يونيو 2021 الساعة 17:36
-- إصدار الخادم: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smartmethod`
--

-- --------------------------------------------------------

--
-- بنية الجدول `directions`
--

CREATE TABLE `directions` (
  `Forward` text NOT NULL,
  `leftvalue` text NOT NULL,
  `stopvalue` text NOT NULL,
  `rightvalue` text NOT NULL,
  `backward` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `directions`
--

INSERT INTO `directions` (`Forward`, `leftvalue`, `stopvalue`, `rightvalue`, `backward`) VALUES
('forward', '', '', '', ''),
('', 'left', '', '', ''),
('', '', 'stop', '', ''),
('', 'left', '', '', ''),
('', '', '', 'right', ''),
('', '', '', '', 'backward'),
('forward', '', '', '', ''),
('', '', 'stop', '', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
