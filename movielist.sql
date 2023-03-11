-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2023 at 05:13 PM
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
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add login', 7, 'add_login'),
(26, 'Can change login', 7, 'change_login'),
(27, 'Can delete login', 7, 'delete_login'),
(28, 'Can view login', 7, 'view_login'),
(29, 'Can add feedback', 8, 'add_feedback'),
(30, 'Can change feedback', 8, 'change_feedback'),
(31, 'Can delete feedback', 8, 'delete_feedback'),
(32, 'Can view feedback', 8, 'view_feedback'),
(33, 'Can add friends', 9, 'add_friends'),
(34, 'Can change friends', 9, 'change_friends'),
(35, 'Can delete friends', 9, 'delete_friends'),
(36, 'Can view friends', 9, 'view_friends'),
(37, 'Can add like movie', 10, 'add_likemovie'),
(38, 'Can change like movie', 10, 'change_likemovie'),
(39, 'Can delete like movie', 10, 'delete_likemovie'),
(40, 'Can view like movie', 10, 'view_likemovie'),
(41, 'Can add movie', 11, 'add_movie'),
(42, 'Can change movie', 11, 'change_movie'),
(43, 'Can delete movie', 11, 'delete_movie'),
(44, 'Can view movie', 11, 'view_movie'),
(45, 'Can add request', 12, 'add_request'),
(46, 'Can change request', 12, 'change_request'),
(47, 'Can delete request', 12, 'delete_request'),
(48, 'Can view request', 12, 'view_request'),
(49, 'Can add source', 13, 'add_source'),
(50, 'Can change source', 13, 'change_source'),
(51, 'Can delete source', 13, 'delete_source'),
(52, 'Can view source', 13, 'view_source'),
(53, 'Can add user', 14, 'add_user'),
(54, 'Can change user', 14, 'change_user'),
(55, 'Can delete user', 14, 'delete_user'),
(56, 'Can view user', 14, 'view_user'),
(57, 'Can add watched', 15, 'add_watched'),
(58, 'Can change watched', 15, 'change_watched'),
(59, 'Can delete watched', 15, 'delete_watched'),
(60, 'Can view watched', 15, 'view_watched'),
(61, 'Can add watchlist', 16, 'add_watchlist'),
(62, 'Can change watchlist', 16, 'change_watchlist'),
(63, 'Can delete watchlist', 16, 'delete_watchlist'),
(64, 'Can view watchlist', 16, 'view_watchlist');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'feedback', 'feedback'),
(9, 'friends', 'friends'),
(10, 'like_movie', 'likemovie'),
(7, 'login', 'login'),
(11, 'movie', 'movie'),
(12, 'request', 'request'),
(6, 'sessions', 'session'),
(13, 'source', 'source'),
(14, 'user', 'user'),
(15, 'watched', 'watched'),
(16, 'watchlist', 'watchlist');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-03-04 07:33:50.756074'),
(2, 'auth', '0001_initial', '2023-03-04 07:33:51.177957'),
(3, 'admin', '0001_initial', '2023-03-04 07:33:51.256075'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-03-04 07:33:51.271698'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-03-04 07:33:51.271698'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-03-04 07:33:51.334194'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-03-04 07:33:51.381065'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-03-04 07:33:51.396753'),
(9, 'auth', '0004_alter_user_username_opts', '2023-03-04 07:33:51.412380'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-03-04 07:33:51.443595'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-03-04 07:33:51.443595'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-03-04 07:33:51.459198'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-03-04 07:33:51.474879'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-03-04 07:33:51.490452'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-03-04 07:33:51.506066'),
(16, 'auth', '0011_update_proxy_permissions', '2023-03-04 07:33:51.521704'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-03-04 07:33:51.537316'),
(18, 'feedback', '0001_initial', '2023-03-04 07:33:51.537316'),
(19, 'friends', '0001_initial', '2023-03-04 07:33:51.537316'),
(20, 'like_movie', '0001_initial', '2023-03-04 07:33:51.537316'),
(21, 'login', '0001_initial', '2023-03-04 07:33:51.552942'),
(22, 'movie', '0001_initial', '2023-03-04 07:33:51.552942'),
(23, 'request', '0001_initial', '2023-03-04 07:33:51.568568'),
(24, 'sessions', '0001_initial', '2023-03-04 07:33:51.646710'),
(25, 'source', '0001_initial', '2023-03-04 07:33:51.646710'),
(26, 'user', '0001_initial', '2023-03-04 07:33:51.646710'),
(27, 'watched', '0001_initial', '2023-03-04 07:33:51.662318'),
(28, 'watchlist', '0001_initial', '2023-03-04 07:33:51.662318');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('n02ko3co0c7uc69rrj7c110tmjppf0pu', 'eyJ1aWQiOjF9:1paSPf:unfTRW2iID1mtkF-LKMIokfWW8DumWu_LXjgkLMOJvQ', '2023-03-24 02:23:19.512468');

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
  `Reply` varchar(50) NOT NULL,
  `u_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`F_id`, `Movie_name`, `Year`, `Discription`, `Date`, `Rating`, `Reply`, `u_id`) VALUES
(1, 'Godfater', 2001, 'Gangster movie', '2023-02-22', '4', '', 0),
(2, 'avatar', 2005, 'fgdchgv', '2023-02-07', '4', '', 0),
(3, 'Godfater', 2005, 'Gangster movie', '2023-02-02', '9.3', 'thanku', 0),
(4, 'GDFGD', 2005, 'fgdchgv', '2023-02-28', '9.3', 'ok thanks', 7),
(5, 'Godfater', 2005, 'Gangster movie', '2023-03-15', '4', 'ssss', 7),
(6, 'Mr. Sunshine', 2018, 'film is not good', '2023-03-07', '2', 'Ok this is really a bad movie', 6),
(7, 'Godfater', 2001, 'Gangster movie', '2023-03-08', '4', '', 6),
(8, 'Godfater', 1980, 'fdfgfg', '2023-03-08', '2', 'thanku', 6),
(9, 'avatar', 1900, 'trfueyc', '2023-03-08', '4', 'ok', 6);

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
(2, '2', 'no', 'spiderman', 'yes', 'accepted'),
(3, '1', 'yes', 'batman', 'yes', 'accepted'),
(4, '1', 'yes', 'mmm', 'yes', 'accepted');

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
(3, 'no', 1, 1),
(4, 'yes', 7, 1),
(5, 'yes', 6, 6),
(6, 'yes', 3, 6),
(7, 'no', 3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `uid` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `username`, `password`, `uid`, `type`, `status`) VALUES
(1, 'admin', 'admin', 1, 'admin', 'approve'),
(2, '1234', 'shinu', 4, 'user', 'approve'),
(3, 'sinu', '1234', 5, 'user', 'approve'),
(4, 'Shanif', 'qwerty', 6, 'user', 'approve'),
(5, 'saf', 'saf', 7, 'user', ''),
(6, 'arun', 'asdf', 8, 'user', 'approve');

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
(6, 'The Shawshank Redemption', 1994, ' Frank Darabont', '9.3', '2.22', 'Andy Dufresne, a successful banker, is arrested fo', 'youtube', 'yes', 'youtube', 'shawshankPoster.jpg', 'English', 'Drama/Crime'),
(7, 'Mr. Sunshine', 2018, ' Kim Eun-sook', '9.0', '1h15min', 'A Korean boy from a poor family who ends up in the', 'Amazon Prime,Netflix', 'yes', 'youtube', 'MrSunshine.jpg', 'korean', 'Romance, Melodrama, Sageuk');

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
('Joji', 2022, 'Malayalan', 5),
('Psycho', 1960, 'English', 6);

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
(3, 'Mesbin', 'Asfdfdf', '2023-02-06', 'India', 'English', 'arunjohny74@gmail.com', '86934754754', 'reject'),
(4, 'shinu', '1234', '2023-03-14', 'United States', 'eng', 'mtt02352@gmail.com', '7866578', 'reject'),
(5, 'sinu', '1234', '2023-03-26', 'India', 'English', 'arunjohny74@gmail.com', '9123456789', 'approve'),
(6, 'Shanif K.C', 'qwerty', '2023-03-04', 'India', 'Englishjmmj', 'mtt02352@gmail.com', '+9189555414369', 'approve'),
(7, 'saf', 'saf', '2023-03-31', 'India', 'Malayalan', 'arunjohny74@gmail.com', '9123456789', 'reject'),
(8, 'arun', 'asdf', '2001-09-30', 'India', 'English', 'arunjohny74@gmail.com', '8590693089', 'approve'),
(9, 'Shanifggg', 'qwerty', '2023-03-03', 'India', 'English', 'shanifkc@gmail.com', '912345777', 'reject'),
(10, 'Shanifhh', 'qwerty', '2023-03-04', 'Indiamm', 'Englishjmmj', 'shanifkc@gmail.com', '912345777', 'approve');

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
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

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
  ADD PRIMARY KEY (`login_id`);

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
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `F_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `Fr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `like_movie`
--
ALTER TABLE `like_movie`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `M_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `source`
--
ALTER TABLE `source`
  MODIFY `S_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
