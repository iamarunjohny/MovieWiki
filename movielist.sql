-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2023 at 12:07 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movielist`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `F_id` int(11) NOT NULL,
  `Movie_name` varchar(50) NOT NULL,
  `Year` int(11) NOT NULL,
  `Discription` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `Rating` varchar(10) NOT NULL,
  `Reply` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`F_id`, `Movie_name`, `Year`, `Discription`, `Date`, `Rating`, `Reply`) VALUES
(1, 'Godfater', 2001, 'Gangster movie', '2023-02-22', '4', ''),
(2, 'avatar', 2005, 'fgdchgv', '2023-02-07', '4', ''),
(3, 'Godfater', 2005, 'Gangster movie', '2023-02-02', '9.3', 'thanku');

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `Fr_id` int(11) NOT NULL,
  `U_id` varchar(50) NOT NULL,
  `liked` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `watched` varchar(10) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`Fr_id`, `U_id`, `liked`, `name`, `watched`, `status`) VALUES
(1, '1', 'yes', 'Alex King', 'no', 'accepted'),
(2, '2', 'no', 'spiderman', 'yes', 'rejected'),
(3, '1', 'yes', 'batman', 'yes', 'accepted');

-- --------------------------------------------------------

--
-- Table structure for table `like_movie`
--

CREATE TABLE `like_movie` (
  `like_id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `M_id` int(11) NOT NULL,
  `U_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `like_movie`
--

INSERT INTO `like_movie` (`like_id`, `status`, `M_id`, `U_id`) VALUES
(1, 'no', 1, 1),
(2, 'yes', 1, 1),
(3, 'no', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Login_ID` int(11) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `U_ID` int(11) NOT NULL,
  `Type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `M_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `director` varchar(50) NOT NULL,
  `rating` varchar(50) NOT NULL,
  `runtime` varchar(50) NOT NULL,
  `discription` varchar(50) NOT NULL,
  `platform` varchar(50) NOT NULL,
  `likes` varchar(50) NOT NULL,
  `trailer` varchar(250) NOT NULL,
  `poster` varchar(250) NOT NULL,
  `language` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`M_id`, `name`, `year`, `director`, `rating`, `runtime`, `discription`, `platform`, `likes`, `trailer`, `poster`, `language`, `category`) VALUES
(1, 'Godfater', 1972, '\r\nFrancis Ford Coppola', '9.2', '2.55', 'Gangster movie', 'netf', 'yes', 'on youtube', 'godfather.jpg', 'English', 'crime'),
(2, 'Mr. Queen', 2017, 'Yoon Sung-sik', '8.7', '4.5', 'hh', 'netflix', 'yes', 'on youtube', 'mrqueenPoster.jpg', 'Korean', 'comedy'),
(3, 'Shutter Island', 2010, 'Martin Scorsese', '8.2', '2.17', 'Teddy Daniels and Chuck Aule, two US marshals, are', 'netflix', 'yes', 'on youtube', 'shutterislandPoster.jpg', 'English', 'Thriller/Mystery'),
(6, 'The Shawshank Redemption', 1994, ' Frank Darabont', '9.3', '2.22', 'Andy Dufresne, a successful banker, is arrested fo', 'youtube', 'yes', 'youtube', 'shawshankPoster.jpg', 'English', 'Drama/Crime');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `movie_name` varchar(50) NOT NULL,
  `release_year` int(11) NOT NULL,
  `language` varchar(50) NOT NULL,
  `r_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`movie_name`, `release_year`, `language`, `r_id`) VALUES
('godmother', 2005, 'eng', 1),
('Avatar2', 2023, 'eng', 2),
('Top Gun', 1980, 'eng', 3),
('Top Gun', 1980, 'eng', 4),
('Joji', 2022, 'Malayalan', 5);

-- --------------------------------------------------------

--
-- Table structure for table `source`
--

CREATE TABLE `source` (
  `m_id` int(11) NOT NULL,
  `S_id` int(11) NOT NULL,
  `s_type` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `source`
--

INSERT INTO `source` (`m_id`, `S_id`, `s_type`) VALUES
(1, 1, 'netflix');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(11) NOT NULL,
  `username` varchar(11) NOT NULL,
  `password` varchar(10) NOT NULL,
  `DOB` date NOT NULL,
  `Country` varchar(50) NOT NULL,
  `Language` varchar(50) NOT NULL,
  `Mail_id` varchar(50) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `username`, `password`, `DOB`, `Country`, `Language`, `Mail_id`, `Phone`, `status`) VALUES
(1, 'saf', '123', '2023-02-09', 'United States', 'eng', 'mtt02352@gmail.com', '7866578', 'approve'),
(2, 'Shahul Rash', '4115', '2003-03-03', 'India', 'eng', 'arunjohny74@gmail.com', '9123456789', 'approve'),
(3, 'Mesbin', 'Asfdfdf', '2023-02-06', 'India', 'English', 'arunjohny74@gmail.com', '86934754754', '');

-- --------------------------------------------------------

--
-- Table structure for table `watched`
--

CREATE TABLE `watched` (
  `M_id` int(11) NOT NULL,
  `Watched_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `watched`
--

INSERT INTO `watched` (`M_id`, `Watched_id`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `watchlist`
--

CREATE TABLE `watchlist` (
  `M_id` int(11) NOT NULL,
  `U_id` int(11) NOT NULL,
  `W_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `watchlist`
--

INSERT INTO `watchlist` (`M_id`, `U_id`, `W_id`) VALUES
(1, 1, 1),
(1, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`F_id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`Fr_id`);

--
-- Indexes for table `like_movie`
--
ALTER TABLE `like_movie`
  ADD PRIMARY KEY (`like_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Login_ID`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`M_id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `source`
--
ALTER TABLE `source`
  ADD PRIMARY KEY (`S_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `watched`
--
ALTER TABLE `watched`
  ADD PRIMARY KEY (`Watched_id`);

--
-- Indexes for table `watchlist`
--
ALTER TABLE `watchlist`
  ADD PRIMARY KEY (`W_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `F_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `Fr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `like_movie`
--
ALTER TABLE `like_movie`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `Login_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `M_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `source`
--
ALTER TABLE `source`
  MODIFY `S_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `watched`
--
ALTER TABLE `watched`
  MODIFY `Watched_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `watchlist`
--
ALTER TABLE `watchlist`
  MODIFY `W_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
