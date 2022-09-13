-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2022 at 12:44 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'quiz', 'quiz');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id` int(100) NOT NULL,
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `qid`, `ansid`) VALUES
(9, '61cc86626d8c9', '61cc866283bc2'),
(10, '61cc8662b9e65', '61cc8662c3782'),
(11, '61cc8662ec9a9', '61cc8663064a0'),
(12, '61cc86633079e', '61cc86633722c'),
(13, '61cc8663723a6', '61cc8663901c4'),
(27, '61e824e291589', '61e824e299b5e'),
(28, '61e824e2ce9f5', '61e824e2d8ce3');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `timestamp` bigint(50) NOT NULL,
  `status` varchar(40) NOT NULL,
  `score_updated` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `username`, `eid`, `score`, `level`, `correct`, `wrong`, `date`, `timestamp`, `status`, `score_updated`) VALUES
(15, 'ajayRaj', '61cc85ba6f1a9', 2, 1, 1, 0, '2022-02-10 10:53:01', 1644490320, 'finished', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(100) NOT NULL,
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `qid`, `option`, `optionid`) VALUES
(33, '61cc86626d8c9', 'HighText Machine Language', '61cc866283bbb'),
(34, '61cc86626d8c9', 'HyperText and links Markup Language', '61cc866283bc1'),
(35, '61cc86626d8c9', 'HyperText Markup Language', '61cc866283bc2'),
(36, '61cc86626d8c9', 'None of these', '61cc866283bc3'),
(37, '61cc8662b9e65', 'Head, Title, HTML, body', '61cc8662c3779'),
(38, '61cc8662b9e65', 'HTML, Body, Title, Head', '61cc8662c3780'),
(39, '61cc8662b9e65', 'HTML, Head, Title, Body', '61cc8662c3781'),
(40, '61cc8662b9e65', 'HTML, Head, Title, Body', '61cc8662c3782'),
(41, '61cc8662ec9a9', 'pre', '61cc866306497'),
(42, '61cc8662ec9a9', 'a', '61cc86630649f'),
(43, '61cc8662ec9a9', 'b', '61cc8663064a0'),
(44, '61cc8662ec9a9', 'br', '61cc8663064a2'),
(45, '61cc86633079e', 'br', '61cc86633722c'),
(46, '61cc86633079e', 'a', '61cc866337237'),
(47, '61cc86633079e', 'pre', '61cc866337238'),
(48, '61cc86633079e', 'b', '61cc86633723a'),
(49, '61cc8663723a6', 'ul', '61cc8663901c4'),
(50, '61cc8663723a6', 'ol', '61cc8663901cf'),
(51, '61cc8663723a6', 'li', '61cc8663901d0'),
(52, '61cc8663723a6', 'i', '61cc8663901d1'),
(105, '61e824e291589', 'programinglanguage', '61e824e299b54'),
(106, '61e824e291589', 'language', '61e824e299b5c'),
(107, '61e824e291589', 'snake', '61e824e299b5d'),
(108, '61e824e291589', 'none of these', '61e824e299b5e'),
(109, '61e824e2ce9f5', 'hello', '61e824e2d8ce3'),
(110, '61e824e2ce9f5', 'int', '61e824e2d8cea'),
(111, '61e824e2ce9f5', 'String', '61e824e2d8ceb'),
(112, '61e824e2ce9f5', 'float', '61e824e2d8cec');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(100) NOT NULL,
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `eid`, `qid`, `qns`, `choice`, `sn`) VALUES
(9, '61cc85ba6f1a9', '61cc86626d8c9', 'HTML stands for ', 4, 1),
(10, '61cc85ba6f1a9', '61cc8662b9e65', ' The correct sequence of HTML tags for starting a webpage is ', 4, 2),
(11, '61cc85ba6f1a9', '61cc8662ec9a9', 'Which of the following element is responsible for making the text bold in HTML?', 4, 3),
(12, '61cc85ba6f1a9', '61cc86633079e', 'Which of the following tag is used to insert a line-break in HTML?', 4, 4),
(13, '61cc85ba6f1a9', '61cc8663723a6', 'How to create an unordered list (a list with the list items in bullets) in HTML', 4, 5),
(27, '61e8245905fcb', '61e824e291589', 'python?', 4, 1),
(28, '61e8245905fcb', '61e824e2ce9f5', 'in the following which is not datatype of python', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(100) NOT NULL,
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `eid`, `title`, `correct`, `wrong`, `total`, `time`, `date`, `status`) VALUES
(3, '61cc85ba6f1a9', 'Html', 2, 1, 5, 1, '2022-01-19 14:55:15', 'enabled'),
(9, '61e8245905fcb', 'Python', 1, 0, 2, 1, '2022-01-19 14:55:14', 'enabled');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`id`, `username`, `score`, `time`) VALUES
(11, 'mayu', 1, '2022-02-05 12:42:59'),
(12, 'ananya', 0, '2022-02-08 10:15:31'),
(14, 'ajayRaj', 2, '2022-02-10 10:53:01');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `rollno` varchar(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `phno` double NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `rollno`, `branch`, `gender`, `username`, `phno`, `password`) VALUES
(22, 'Ajay', '4mh19is042', 'ISE', 'M', 'ajayRaj', 9035094632, '0fe90ff7501094dbbd19de2855384add'),
(17, 'Mayur', '4MH19IS046', 'ISE', 'M', 'mayu', 1234567890, 'e175dfb0dc9955837a6d3aa6f23cce96'),
(19, 'Nitesh', '4MH19IS061', 'Chemistry-Cycle', 'M', 'nitesh', 4567891236, '388c6df5ce99c934d9c5f0bf29d758e4');

-- --------------------------------------------------------

--
-- Table structure for table `user_answer`
--

CREATE TABLE `user_answer` (
  `id` int(100) NOT NULL,
  `qid` varchar(50) NOT NULL,
  `ans` varchar(50) NOT NULL,
  `correctans` varchar(50) NOT NULL,
  `eid` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_answer`
--

INSERT INTO `user_answer` (`id`, `qid`, `ans`, `correctans`, `eid`, `username`) VALUES
(14, '61cc86626d8c9', '61cc866283bc2', '61cc866283bc2', '61cc85ba6f1a9', 'mayu'),
(15, '61cc8662b9e65', '61cc8662c3780', '61cc8662c3782', '61cc85ba6f1a9', 'mayu'),
(16, '61cc8662ec9a9', '61cc8663064a0', '61cc8663064a0', '61cc85ba6f1a9', 'mayu'),
(17, '61cc86633079e', '61cc86633722c', '61cc86633722c', '61cc85ba6f1a9', 'mayu'),
(18, '61cc8663723a6', '61cc8663901c4', '61cc8663901c4', '61cc85ba6f1a9', 'mayu'),
(28, '61e15ff403687', '61e15ff4194e4', '61e15ff4194e4', '61e15e5774faf', 'nitesh'),
(29, '61e15ff467e08', '61e15ff47003c', '61e15ff47003b', '61e15e5774faf', 'nitesh'),
(30, '61e15ff49ed62', '61e15ff4a4eff', '61e15ff4a4f01', '61e15e5774faf', 'nitesh'),
(31, '61e15ff4cba2b', '61e15ff4e3240', '61e15ff4e3240', '61e15e5774faf', 'nitesh'),
(32, '61e15ff53f445', '61e15ff5476d7', '61e15ff5476df', '61e15e5774faf', 'nitesh'),
(33, '61e15ff56e1ee', '61e15ff576488', '61e15ff576480', '61e15e5774faf', 'nitesh'),
(34, '61e15ff59f3ae', '61e15ff5a71b9', '61e15ff5a71b9', '61e15e5774faf', 'nitesh'),
(35, '61e15ff5da008', '61e15ff5e83c0', '61e15ff5e83c0', '61e15e5774faf', 'nitesh'),
(36, '61e15ff6228a9', '61e15ff62907d', '61e15ff62907d', '61e15e5774faf', 'nitesh'),
(37, '61e15ff6478c8', '61e15ff64daae', '61e15ff64daae', '61e15e5774faf', 'nitesh'),
(38, '61cc86626d8c9', '61cc866283bc2', '61cc866283bc2', '61cc85ba6f1a9', 'nitesh'),
(39, '61cc8662b9e65', '61cc8662c3782', '61cc8662c3782', '61cc85ba6f1a9', 'nitesh'),
(40, '61cc8662ec9a9', '61cc8663064a0', '61cc8663064a0', '61cc85ba6f1a9', 'nitesh'),
(41, '61cc86633079e', '61cc86633722c', '61cc86633722c', '61cc85ba6f1a9', 'nitesh'),
(42, '61cc8663723a6', '61cc8663901c4', '61cc8663901c4', '61cc85ba6f1a9', 'nitesh'),
(43, '61e15ff403687', '61e15ff4194e4', '61e15ff4194e4', '61e15e5774faf', 'arun'),
(44, '61e15ff467e08', '61e15ff47003b', '61e15ff47003b', '61e15e5774faf', 'arun'),
(45, '61e15ff49ed62', '61e15ff4a4f01', '61e15ff4a4f01', '61e15e5774faf', 'arun'),
(46, '61e15ff4cba2b', '61e15ff4e3240', '61e15ff4e3240', '61e15e5774faf', 'arun'),
(47, '61e15ff53f445', '61e15ff5476df', '61e15ff5476df', '61e15e5774faf', 'arun'),
(48, '61e15ff56e1ee', '61e15ff576480', '61e15ff576480', '61e15e5774faf', 'arun'),
(49, '61e15ff59f3ae', '61e15ff5a71b9', '61e15ff5a71b9', '61e15e5774faf', 'arun'),
(50, '61e15ff5da008', '61e15ff5e83c0', '61e15ff5e83c0', '61e15e5774faf', 'arun'),
(51, '61e15ff6228a9', '61e15ff62907d', '61e15ff62907d', '61e15e5774faf', 'arun'),
(52, '61e15ff6478c8', '61e15ff64da9e', '61e15ff64daae', '61e15e5774faf', 'arun'),
(53, '61eae7c684b8b', '61eae7c692962', '61eae7c69295a', '61eae7543aeb8', 'arun123'),
(54, '61eae7c6be565', '61eae7c6c7738', '61eae7c6c7738', '61eae7543aeb8', 'arun123'),
(55, '61fe708cd252b', '61fe708cec2c9', '61fe708cec2c9', '61fe706f5bb26', 'mayu'),
(56, '61fe708d26d84', '61fe708d2cf19', '61fe708d2cf1e', '61fe706f5bb26', 'mayu'),
(57, '6202428ad9a57', '6202428af01d5', '6202428af01ca', '62024264bbdac', 'ananya'),
(58, '6202428b26b2c', '6202428b2de31', '6202428b2de2e', '62024264bbdac', 'ananya'),
(59, '61cc86626d8c9', '61cc866283bc2', '61cc866283bc2', '61cc85ba6f1a9', 'ajay'),
(60, '61cc8662b9e65', '61cc8662c3781', '61cc8662c3782', '61cc85ba6f1a9', 'ajay'),
(61, '61cc8662ec9a9', '61cc8663064a0', '61cc8663064a0', '61cc85ba6f1a9', 'ajay'),
(62, '61cc86633079e', '61cc86633722c', '61cc86633722c', '61cc85ba6f1a9', 'ajay'),
(63, '61cc8663723a6', '61cc8663901c4', '61cc8663901c4', '61cc85ba6f1a9', 'ajay'),
(64, '61cc86626d8c9', '61cc866283bc2', '61cc866283bc2', '61cc85ba6f1a9', 'ajayRaj');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `user_answer`
--
ALTER TABLE `user_answer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user_answer`
--
ALTER TABLE `user_answer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
