-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2021 at 04:47 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `charity`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Email` varchar(50) NOT NULL,
  `password` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Email`, `password`) VALUES
('charitycampus786@gmail.com', 'Charity@2020');

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `id` int(4) NOT NULL,
  `D_email` varchar(50) NOT NULL,
  `N_email` varchar(50) NOT NULL,
  `Amount` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`id`, `D_email`, `N_email`, `Amount`) VALUES
(1, 'demouser@gmail.com', 'abc@gmail.com', 200000),
(2, 'xyz@gmail.com', 'abc@gmail.com', 20000);

-- --------------------------------------------------------

--
-- Table structure for table `donor_reg`
--

CREATE TABLE `donor_reg` (
  `Fname` varchar(100) DEFAULT NULL,
  `Lname` varchar(100) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `contact` bigint(10) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `status` int(2) DEFAULT 0,
  `profile` varchar(250) NOT NULL,
  `donated` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donor_reg`
--

INSERT INTO `donor_reg` (`Fname`, `Lname`, `DOB`, `contact`, `email`, `password`, `status`, `profile`, `donated`) VALUES
('Ramu', 'kaka', '1985-09-08', 9876543219, 'demouser@gmail.com', 'Hello@2004', 0, 'th.jpg', 200000),
('kishan', 'desai', '2003-01-26', 1234567891, 'xyz@gmail.com', 'Hello@2004', 0, 'download.png', 20000);

-- --------------------------------------------------------

--
-- Table structure for table `ngo_description`
--

CREATE TABLE `ngo_description` (
  `email` varchar(250) NOT NULL,
  `detail` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ngo_details`
--

CREATE TABLE `ngo_details` (
  `email` varchar(250) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `type` varchar(250) NOT NULL,
  `contact_ngo` varchar(10) NOT NULL,
  `person_name` varchar(250) NOT NULL,
  `contact_PERSON` varchar(10) NOT NULL,
  `description` longtext NOT NULL,
  `address` mediumtext NOT NULL,
  `bank_account_no` varchar(8) NOT NULL,
  `upi_id` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `trending` tinyint(1) NOT NULL,
  `approve` tinyint(1) NOT NULL,
  `temail` varchar(50) NOT NULL DEFAULT 'example@gmail.com',
  `id1` varchar(50) NOT NULL DEFAULT 'NA',
  `id2` varchar(50) NOT NULL DEFAULT 'NA',
  `c1` bigint(10) NOT NULL DEFAULT 0,
  `c2` bigint(10) NOT NULL DEFAULT 0,
  `Permission` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ngo_details`
--

INSERT INTO `ngo_details` (`email`, `name`, `type`, `contact_ngo`, `person_name`, `contact_PERSON`, `description`, `address`, `bank_account_no`, `upi_id`, `password`, `trending`, `approve`, `temail`, `id1`, `id2`, `c1`, `c2`, `Permission`) VALUES
('abc@gmail.com', 'First NGO', 'Covid-19', '1111111111', 'kishan', '2222222222', 'Darsh vasoliya.hii', 'vasundhara socity, complex road', '12345678', 'hello@icici.upi', 'Hello@2001', 0, 0, 'example@gmail.com', 'NA', 'NA', 0, 0, 1),
('def@gmail.com', 'Second NGO', 'Education', '3333333333', 'Ramu lal', '4444444444', 'NGO for education which is committed to providing basic education and healthcare to underprivileged children.', 'gokul dham socity, powder gali ', '23456789', 'hello1@icici.upi', 'Hello@2002', 0, 1, 'example@gmail.com', 'NA', 'NA', 0, 0, 0),
('hij@gmail.com', 'Third NGO', 'Food Distribution', '5555555555', 'alex', '6666666666', 'it gives free food services.', 'vikas food distribution,kalavad road,', '34567891', 'hello2@icici.upi', 'Hello@2003', 0, 0, 'example@gmail.com', 'NA', 'NA', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ngo_docs`
--

CREATE TABLE `ngo_docs` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ngo_docs`
--

INSERT INTO `ngo_docs` (`id`, `email`, `name`) VALUES
(1, 'abc@gmail.com', 'Knapsack problem (Branch-and-Bound).pdf');

-- --------------------------------------------------------

--
-- Table structure for table `ngo_files`
--

CREATE TABLE `ngo_files` (
  `id` int(25) NOT NULL,
  `email` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ngo_files`
--

INSERT INTO `ngo_files` (`id`, `email`, `name`, `time`) VALUES
(1, 'soldiersduty5@gmail.com', 'th.jpg', '2020-10-31 22:05:10'),
(2, 'abc@gmail.com', '18BCE116_SE Practical-8.pdf', '2020-11-02 12:08:21'),
(3, 'def@gmail.com', 'CRC.pdf', '2020-11-02 12:11:17'),
(4, 'hij@gmail.com', 'Use_case_Spe.pdf', '2020-11-02 12:13:57');

-- --------------------------------------------------------

--
-- Table structure for table `ngo_image`
--

CREATE TABLE `ngo_image` (
  `id` int(25) NOT NULL,
  `email` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ngo_image`
--

INSERT INTO `ngo_image` (`id`, `email`, `name`, `time`) VALUES
(1, 'abc@gmail.com', 'download.jpg', '2020-11-02 12:08:21'),
(2, 'def@gmail.com', '201907080455326344_NGO-accuses-police-of-stopping-indoor-meets_SECVPF.jpg', '2020-11-02 12:11:17'),
(3, 'hij@gmail.com', 'NGO_homepage2.jpg', '2020-11-02 12:13:57');

-- --------------------------------------------------------

--
-- Table structure for table `ngo_pictures`
--

CREATE TABLE `ngo_pictures` (
  `id` int(3) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pictures` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ngo_pictures`
--

INSERT INTO `ngo_pictures` (`id`, `email`, `pictures`) VALUES
(1, 'abc@gmail.com', 'NGO_homepage1.jpg'),
(2, 'abc@gmail.com', 'NGO_homepage3.jpg'),
(3, 'abc@gmail.com', '341e792d66cd539615cb04f1ce4c765e.jpg'),
(4, 'abc@gmail.com', 'IMG_1669.JPG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donor_reg`
--
ALTER TABLE `donor_reg`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `ngo_details`
--
ALTER TABLE `ngo_details`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `ngo_docs`
--
ALTER TABLE `ngo_docs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ngo_files`
--
ALTER TABLE `ngo_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ngo_image`
--
ALTER TABLE `ngo_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ngo_pictures`
--
ALTER TABLE `ngo_pictures`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ngo_docs`
--
ALTER TABLE `ngo_docs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ngo_files`
--
ALTER TABLE `ngo_files`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ngo_image`
--
ALTER TABLE `ngo_image`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ngo_pictures`
--
ALTER TABLE `ngo_pictures`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
