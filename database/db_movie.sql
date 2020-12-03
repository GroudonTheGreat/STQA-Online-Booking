-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 02, 2020 at 05:27 PM
-- Server version: 8.0.21
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_movie`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bookings`
--

CREATE TABLE `tbl_bookings` (
  `book_id` int NOT NULL,
  `ticket_id` varchar(30) NOT NULL,
  `t_id` int NOT NULL COMMENT 'theater id',
  `user_id` int NOT NULL,
  `show_id` int NOT NULL,
  `screen_id` int NOT NULL,
  `no_seats` int NOT NULL COMMENT 'number of seats',
  `amount` int NOT NULL,
  `ticket_date` date NOT NULL,
  `date` date NOT NULL,
  `status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bookings`
--

INSERT INTO `tbl_bookings` (`book_id`, `ticket_id`, `t_id`, `user_id`, `show_id`, `screen_id`, `no_seats`, `amount`, `ticket_date`, `date`, `status`) VALUES
(14, '123', 3, 4, 13, 1, 1, 70, '2020-12-02', '2020-12-02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `contact_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` int NOT NULL,
  `subject` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `username` varchar(50) NOT NULL COMMENT 'email',
  `password` varchar(50) NOT NULL,
  `user_type` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `user_id`, `username`, `password`, `user_type`) VALUES
(18, 5, 'test123@abc.com', 'test123', 2),
(19, 6, 'subhradeep2601@gmail.com', 'password', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movie`
--

CREATE TABLE `tbl_movie` (
  `movie_id` int NOT NULL,
  `t_id` int NOT NULL COMMENT 'theatre id',
  `movie_name` varchar(100) NOT NULL,
  `cast` varchar(500) NOT NULL,
  `desc` varchar(1000) NOT NULL,
  `release_date` date NOT NULL,
  `image` varchar(200) NOT NULL,
  `video_url` varchar(200) NOT NULL,
  `status` int NOT NULL COMMENT '0 means active '
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_movie`
--

INSERT INTO `tbl_movie` (`movie_id`, `t_id`, `movie_name`, `cast`, `desc`, `release_date`, `image`, `video_url`, `status`) VALUES
(1, 3, 'Bahubali', 'Prabhas', 'After learning that his father was brutally killed by Bhallaladeva, Mahendra Baahubali raises an army to defeat him and release his mother from the former\'s captivity.', '2020-12-01', 'images/bahubali.jpg', 'https://www.youtube.com/watch?v=G62HrubdD6o', 0),
(2, 3, 'Batman Vs Superman', 'Henry Kevin', 'Bruce Wayne, a billionaire, believes that Superman is a threat to humanity after his battle in Metropolis. Thus, he decides to adopt his mantle of Batman and defeat him once and for all.', '2020-12-31', 'images/batmanVsSuper.jpeg', 'https://www.youtube.com/watch?v=0WWzgGyAH6Y&ab_channel=WarnerBros.Pictures', 0),
(3, 3, 'Iron Man 3', 'Robert Downey Jr.', 'Tony Stark encounters a formidable foe called the Mandarin. After failing to defeat his enemy, Tony embarks on a journey of self-discovery as he fights against the powerful Mandarin.', '2020-10-25', 'images/ironman.jpg', 'https://www.youtube.com/watch?v=8ugaeA-nMTc&ab_channel=MovieclipsClassicTrailers', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `news_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `cast` varchar(100) NOT NULL,
  `news_date` date NOT NULL,
  `description` varchar(200) NOT NULL,
  `attachment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`news_id`, `name`, `cast`, `news_date`, `description`, `attachment`) VALUES
(1, 'Harry Potter', 'Emma Watson', '2021-01-26', 'Harry Potter is a film series based on the eponymous novels by author J. K. Rowling. The series is distributed by Warner Bros. and consists of eight fantasy films, beginning with Harry Potter.', 'news_images/pic18.jpg'),
(9, 'Avengers Endgame', 'Robert Downey Jr.', '2021-03-07', 'My Movie', 'news_images/ae.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_registration`
--

CREATE TABLE `tbl_registration` (
  `user_id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `age` int NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_registration`
--

INSERT INTO `tbl_registration` (`user_id`, `name`, `email`, `phone`, `age`, `gender`) VALUES
(5, 'Test', 'test123@abc.com', '7897897897', 35, 'gender'),
(6, 'Subhradeep Mitra', 'subhradeep2601@gmail.com', '8552879508', 21, 'gender');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_screens`
--

CREATE TABLE `tbl_screens` (
  `screen_id` int NOT NULL,
  `t_id` int NOT NULL COMMENT 'theatre id',
  `screen_name` varchar(110) NOT NULL,
  `seats` int NOT NULL COMMENT 'number of seats',
  `charge` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_screens`
--

INSERT INTO `tbl_screens` (`screen_id`, `t_id`, `screen_name`, `seats`, `charge`) VALUES
(1, 3, 'Screen 1', 100, 70),
(2, 3, 'Screen 2', 150, 60),
(3, 4, 'Screen 1', 200, 75),
(4, 14, 'Screen 1', 150, 120);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shows`
--

CREATE TABLE `tbl_shows` (
  `s_id` int NOT NULL,
  `st_id` int NOT NULL COMMENT 'show time id',
  `theatre_id` int NOT NULL,
  `movie_id` int NOT NULL,
  `start_date` date NOT NULL,
  `status` int NOT NULL COMMENT '1 means show available',
  `r_status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_shows`
--

INSERT INTO `tbl_shows` (`s_id`, `st_id`, `theatre_id`, `movie_id`, `start_date`, `status`, `r_status`) VALUES
(1, 9, 4, 1, '2017-05-01', 1, 1),
(2, 10, 4, 1, '2017-05-01', 1, 1),
(3, 11, 4, 2, '2017-05-01', 1, 1),
(4, 12, 4, 2, '2017-05-01', 1, 1),
(5, 1, 3, 1, '2017-05-01', 1, 1),
(6, 2, 3, 1, '2017-05-01', 1, 1),
(7, 3, 3, 1, '2017-05-01', 1, 1),
(8, 4, 3, 1, '2017-05-01', 1, 1),
(9, 5, 3, 2, '2017-05-01', 1, 1),
(10, 6, 3, 2, '2017-05-01', 1, 1),
(11, 7, 3, 2, '2017-05-01', 1, 1),
(12, 8, 3, 2, '2017-05-01', 1, 1),
(13, 1, 3, 3, '2020-12-01', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_show_time`
--

CREATE TABLE `tbl_show_time` (
  `st_id` int NOT NULL,
  `screen_id` int NOT NULL,
  `name` varchar(40) NOT NULL COMMENT 'noon,second,etc',
  `start_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_show_time`
--

INSERT INTO `tbl_show_time` (`st_id`, `screen_id`, `name`, `start_time`) VALUES
(1, 1, 'Noon', '10:00:00'),
(2, 1, 'Matinee', '14:00:00'),
(3, 1, 'First', '18:00:00'),
(4, 1, 'Second', '21:00:00'),
(5, 2, 'Noon', '10:00:00'),
(6, 2, 'Matinee', '14:00:00'),
(7, 2, 'First', '18:00:00'),
(8, 2, 'Second', '21:00:00'),
(9, 3, 'Noon', '10:00:00'),
(10, 3, 'Matinee', '14:00:00'),
(11, 3, 'First', '18:00:00'),
(12, 3, 'Second', '21:00:00'),
(14, 4, 'Noon', '12:03:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theatre`
--

CREATE TABLE `tbl_theatre` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `state` varchar(50) NOT NULL,
  `pin` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_bookings`
--
ALTER TABLE `tbl_bookings`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_movie`
--
ALTER TABLE `tbl_movie`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_screens`
--
ALTER TABLE `tbl_screens`
  ADD PRIMARY KEY (`screen_id`);

--
-- Indexes for table `tbl_shows`
--
ALTER TABLE `tbl_shows`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `tbl_show_time`
--
ALTER TABLE `tbl_show_time`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `tbl_theatre`
--
ALTER TABLE `tbl_theatre`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_bookings`
--
ALTER TABLE `tbl_bookings`
  MODIFY `book_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `contact_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_movie`
--
ALTER TABLE `tbl_movie`
  MODIFY `movie_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `news_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_screens`
--
ALTER TABLE `tbl_screens`
  MODIFY `screen_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_shows`
--
ALTER TABLE `tbl_shows`
  MODIFY `s_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_show_time`
--
ALTER TABLE `tbl_show_time`
  MODIFY `st_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_theatre`
--
ALTER TABLE `tbl_theatre`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
