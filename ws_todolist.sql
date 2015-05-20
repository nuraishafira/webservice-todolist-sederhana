-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2015 at 08:43 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ws_todolist`
--

-- --------------------------------------------------------

--
-- Table structure for table `todo`
--

CREATE TABLE IF NOT EXISTS `todo` (
  `id` int(11) NOT NULL,
  `aktivitas` varchar(200) NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggal` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `todo`
--

INSERT INTO `todo` (`id`, `aktivitas`, `deskripsi`, `tanggal`, `status`, `create_at`, `update_at`) VALUES
(1, 'Tugas Kelompok PM - Webservice ', 'Tugas Kelompok Pemrograman Mobile, Membuat REST Web Service untuk To Do List.', '2015-05-20', 0, '2015-05-19 09:22:17', '2015-05-19 07:53:55'),
(2, 'Tugas OOAD', 'Membuat USe Case Dkk', '2015-05-19', 1, '2015-05-19 05:43:32', '2015-05-19 07:58:02'),
(4, 'Indonesia Pintar', '', '2015-05-19', 0, '2015-05-19 07:11:43', '2015-05-19 07:53:55'),
(6, 'Coba Baru Lagi', '', '2015-05-20', 1, '2015-05-19 07:13:28', '2015-05-19 07:54:09'),
(8, 'tes tis 2 tes', '', '2015-05-19', 0, '0000-00-00 00:00:00', '2015-05-19 07:53:55'),
(10, 'Indonesia Pintar 123', '', '2015-05-19', 0, '0000-00-00 00:00:00', '2015-05-19 07:53:55'),
(12, 'AKU CINTA INDONESIA', '', '2015-05-19', 0, '0000-00-00 00:00:00', '2015-05-19 07:53:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `todo`
--
ALTER TABLE `todo`
  ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `todo`
--
ALTER TABLE `todo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
