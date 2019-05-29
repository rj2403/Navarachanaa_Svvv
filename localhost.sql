-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 09, 2018 at 10:16 PM
-- Server version: 5.5.51-38.2
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `navarach_birthday`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE IF NOT EXISTS `alumni` (
  `id` int(6) NOT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `birth_day`
--

CREATE TABLE IF NOT EXISTS `birth_day` (
  `faculty_id` int(11) NOT NULL,
  `name` varchar(28) DEFAULT NULL,
  `department` varchar(10) DEFAULT NULL,
  `birthdate` varchar(13) DEFAULT NULL,
  `designation` varchar(23) DEFAULT NULL,
  `email` varchar(29) DEFAULT NULL,
  `gender` int(3) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;


--
-- Table structure for table `birthday`
--

CREATE TABLE IF NOT EXISTS `birthday` (
  `faculty_id` int(11) NOT NULL,
  `name` text,
  `birthdate` text,
  `email` text NOT NULL,
  `gender` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Table structure for table `table 4`
--

CREATE TABLE IF NOT EXISTS `table 4` (
  `faculty_id` int(10) NOT NULL,
  `name` varchar(28) DEFAULT NULL,
  `designation` varchar(28) DEFAULT NULL,
  `birthdate` varchar(10) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `college` varchar(61) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=333 DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `birth_day`
--
ALTER TABLE `birth_day`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `birthday`
--
ALTER TABLE `birthday`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `table 4`
--
ALTER TABLE `table 4`
  ADD PRIMARY KEY (`faculty_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alumni`
--
ALTER TABLE `alumni`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `birth_day`
--
ALTER TABLE `birth_day`
  MODIFY `faculty_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `birthday`
--
ALTER TABLE `birthday`
  MODIFY `faculty_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `table 4`
--
ALTER TABLE `table 4`
  MODIFY `faculty_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=333;--
-- Database: `navarach_navarachanaa`
--

-- --------------------------------------------------------

--
-- Table structure for table `ambassador`
--

CREATE TABLE IF NOT EXISTS `ambassador` (
  `name` text NOT NULL,
  `email` text,
  `contact` varchar(15) NOT NULL,
  `institute` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE IF NOT EXISTS `certificates` (
  `refno` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `teamid` int(6) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'p',
  `rank` int(11) NOT NULL DEFAULT '0',
  `teamname` varchar(50) CHARACTER SET armscii8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contactdetails`
--

CREATE TABLE IF NOT EXISTS `contactdetails` (
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` text NOT NULL,
  `email` text NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



--
-- Table structure for table `docteamdetails`
--

CREATE TABLE IF NOT EXISTS `docteamdetails` (
  `teamId` int(7) NOT NULL,
  `teamName` varchar(50) NOT NULL,
  `primEmail` varchar(100) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `name` varchar(200) NOT NULL,
  `institute_name` varchar(100) NOT NULL,
  `projectName` varchar(100) NOT NULL,
  `projectCategory` varchar(100) NOT NULL,
  `date_created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `docteampayments`
--

CREATE TABLE IF NOT EXISTS `docteampayments` (
  `teamid` int(7) NOT NULL,
  `payment` int(3) NOT NULL DEFAULT '0',
  `synopsis` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(11) NOT NULL,
  `teamId` int(11) NOT NULL,
  `payment` int(11) NOT NULL DEFAULT '0',
  `synopsis` int(11) NOT NULL DEFAULT '0',
  `mode` text,
  `tid` text
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=ascii;


--
-- Table structure for table `teamdetails`
--

CREATE TABLE IF NOT EXISTS `teamdetails` (
  `teamId` varchar(15) NOT NULL,
  `teamName` varchar(50) NOT NULL,
  `primEmail` text NOT NULL,
  `contact` varchar(11) DEFAULT NULL,
  `name` text,
  `institute_name` text,
  `projectName` text,
  `projectCategory` varchar(100) DEFAULT NULL,
  `mentorName` varchar(30) DEFAULT NULL,
  `mentor_contact_no` varchar(11) NOT NULL,
  `ext_mentor` text,
  `heard_nava` text,
  `abstract` text,
  `introduction` text,
  `objective` text,
  `problemDomain` text,
  `solutionDomain` text,
  `application` text,
  `conclusion` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `winners`
--

CREATE TABLE IF NOT EXISTS `winners` (
  `teamid` int(5) NOT NULL DEFAULT '0',
  `type` varchar(1) DEFAULT NULL,
  `rank` int(1) DEFAULT NULL,
  `institute` varchar(54) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ambassador`
--
ALTER TABLE `ambassador`
  ADD UNIQUE KEY `contact` (`contact`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`refno`);

--
-- Indexes for table `contactdetails`
--
ALTER TABLE `contactdetails`
  ADD PRIMARY KEY (`time`), ADD UNIQUE KEY `time` (`time`);

--
-- Indexes for table `docteamdetails`
--
ALTER TABLE `docteamdetails`
  ADD PRIMARY KEY (`teamId`);

--
-- Indexes for table `docteampayments`
--
ALTER TABLE `docteampayments`
  ADD UNIQUE KEY `teamid` (`teamid`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teamdetails`
--
ALTER TABLE `teamdetails`
  ADD PRIMARY KEY (`teamId`), ADD UNIQUE KEY `teamName` (`teamName`);

--
-- Indexes for table `winners`
--
ALTER TABLE `winners`
  ADD PRIMARY KEY (`teamid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=152;--
-- Database: `navarach_navarchanaa2016`
--

-- --------------------------------------------------------

--
-- Table structure for table `ambassador`
--

CREATE TABLE IF NOT EXISTS `ambassador` (
  `name` text NOT NULL,
  `email` text,
  `contact` varchar(15) NOT NULL,
  `institute` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `certificates`
--

CREATE TABLE IF NOT EXISTS `certificates` (
  `refno` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `teamid` int(6) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'p',
  `rank` int(11) NOT NULL DEFAULT '0',
  `teamname` varchar(50) CHARACTER SET armscii8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Table structure for table `contactdetails`
--

CREATE TABLE IF NOT EXISTS `contactdetails` (
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` text NOT NULL,
  `email` text NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `docteamdetails`
--

CREATE TABLE IF NOT EXISTS `docteamdetails` (
  `teamId` int(7) NOT NULL,
  `teamName` varchar(50) NOT NULL,
  `primEmail` varchar(100) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `name` varchar(200) NOT NULL,
  `institute_name` varchar(100) NOT NULL,
  `projectName` varchar(100) NOT NULL,
  `projectCategory` varchar(100) NOT NULL,
  `date_created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `docteampayments`
--

CREATE TABLE IF NOT EXISTS `docteampayments` (
  `teamid` int(7) NOT NULL,
  `payment` int(3) NOT NULL DEFAULT '0',
  `synopsis` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(11) NOT NULL,
  `teamId` int(11) NOT NULL,
  `payment` int(11) NOT NULL DEFAULT '0',
  `synopsis` int(11) NOT NULL DEFAULT '0',
  `mode` text,
  `tid` text
) ENGINE=InnoDB AUTO_INCREMENT=413 DEFAULT CHARSET=ascii;


--
-- Table structure for table `teamdetails`
--

CREATE TABLE IF NOT EXISTS `teamdetails` (
  `teamId` varchar(15) NOT NULL,
  `teamName` varchar(20) NOT NULL,
  `primEmail` text NOT NULL,
  `contact` varchar(11) DEFAULT NULL,
  `name` text,
  `institute_name` text,
  `projectName` text,
  `projectCategory` varchar(100) DEFAULT NULL,
  `mentorName` varchar(30) DEFAULT NULL,
  `ext_mentor` text,
  `heard_nava` text,
  `abstract` text,
  `introduction` text,
  `objective` text,
  `problemDomain` text,
  `solutionDomain` text,
  `application` text,
  `conclusion` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `winners`
--

CREATE TABLE IF NOT EXISTS `winners` (
  `teamid` int(5) NOT NULL DEFAULT '0',
  `type` varchar(1) DEFAULT NULL,
  `rank` int(1) DEFAULT NULL,
  `institute` varchar(54) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


--
-- Indexes for dumped tables
--

--
-- Indexes for table `ambassador`
--
ALTER TABLE `ambassador`
  ADD UNIQUE KEY `contact` (`contact`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`refno`);

--
-- Indexes for table `contactdetails`
--
ALTER TABLE `contactdetails`
  ADD PRIMARY KEY (`time`), ADD UNIQUE KEY `time` (`time`);

--
-- Indexes for table `docteamdetails`
--
ALTER TABLE `docteamdetails`
  ADD PRIMARY KEY (`teamId`);

--
-- Indexes for table `docteampayments`
--
ALTER TABLE `docteampayments`
  ADD UNIQUE KEY `teamid` (`teamid`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teamdetails`
--
ALTER TABLE `teamdetails`
  ADD PRIMARY KEY (`teamId`), ADD UNIQUE KEY `teamName` (`teamName`);

--
-- Indexes for table `winners`
--
ALTER TABLE `winners`
  ADD PRIMARY KEY (`teamid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=413;--
-- Database: `navarach_svetregistration`
--

-- --------------------------------------------------------

--
-- Table structure for table `allotment`
--

CREATE TABLE IF NOT EXISTS `allotment` (
  `applicationId` varchar(50) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `admitted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `candidateInfo`
--

CREATE TABLE IF NOT EXISTS `candidateInfo` (
  `id` int(11) NOT NULL,
  `applicationId` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `birthDate` varchar(50) NOT NULL,
  `fatherName` varchar(50) NOT NULL,
  `motherName` varchar(50) NOT NULL,
  `svetEarlier` varchar(5) NOT NULL,
  `jeeEnroll` varchar(50) NOT NULL,
  `jeeMarks` int(5) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contactNo` varchar(10) NOT NULL,
  `pAddress` varchar(200) NOT NULL,
  `pincode` varchar(20) NOT NULL,
  `cAddress` varchar(200) NOT NULL,
  `cpincode` varchar(20) NOT NULL,
  `program` varchar(50) NOT NULL,
  `otherRadio` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `preferences`
--

CREATE TABLE IF NOT EXISTS `preferences` (
  `id` int(11) NOT NULL,
  `applicationId` varchar(100) NOT NULL,
  `pref1` varchar(100) NOT NULL,
  `pref2` varchar(100) NOT NULL,
  `pref3` varchar(100) NOT NULL,
  `pref4` varchar(100) NOT NULL,
  `pref5` varchar(100) NOT NULL,
  `pref6` varchar(100) NOT NULL,
  `pref7` varchar(100) NOT NULL,
  `pref8` varchar(100) NOT NULL,
  `pref9` varchar(100) NOT NULL,
  `pref10` varchar(100) NOT NULL,
  `pref11` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vacancy`
--

CREATE TABLE IF NOT EXISTS `vacancy` (
  `program` varchar(50) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `counter` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allotment`
--
ALTER TABLE `allotment`
  ADD PRIMARY KEY (`applicationId`);

--
-- Indexes for table `candidateInfo`
--
ALTER TABLE `candidateInfo`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `applicationId` (`applicationId`);

--
-- Indexes for table `preferences`
--
ALTER TABLE `preferences`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `applicationId` (`applicationId`);

--
-- Indexes for table `vacancy`
--
ALTER TABLE `vacancy`
  ADD PRIMARY KEY (`branch`,`program`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidateInfo`
--
ALTER TABLE `candidateInfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `preferences`
--
ALTER TABLE `preferences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;--
-- Database: `navarach_svetregistration_2016`
--

-- --------------------------------------------------------

--
-- Table structure for table `allotment`
--

CREATE TABLE IF NOT EXISTS `allotment` (
  `applicationId` varchar(50) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `admitted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `candidateInfo`
--

CREATE TABLE IF NOT EXISTS `candidateInfo` (
  `id` int(11) NOT NULL,
  `applicationId` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `birthDate` varchar(50) NOT NULL,
  `fatherName` varchar(50) NOT NULL,
  `motherName` varchar(50) NOT NULL,
  `svetEarlier` varchar(5) NOT NULL,
  `jeeEnroll` varchar(50) NOT NULL,
  `jeeMarks` int(5) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contactNo` varchar(10) NOT NULL,
  `pAddress` varchar(200) NOT NULL,
  `pincode` varchar(20) NOT NULL,
  `cAddress` varchar(200) NOT NULL,
  `cpincode` varchar(20) NOT NULL,
  `program` varchar(50) NOT NULL,
  `otherRadio` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;


--
-- Table structure for table `preferences`
--

CREATE TABLE IF NOT EXISTS `preferences` (
  `id` int(11) NOT NULL,
  `applicationId` varchar(100) NOT NULL,
  `pref1` varchar(100) NOT NULL,
  `pref2` varchar(100) NOT NULL,
  `pref3` varchar(100) NOT NULL,
  `pref4` varchar(100) NOT NULL,
  `pref5` varchar(100) NOT NULL,
  `pref6` varchar(100) NOT NULL,
  `pref7` varchar(100) NOT NULL,
  `pref8` varchar(100) NOT NULL,
  `pref9` varchar(100) NOT NULL,
  `pref10` varchar(100) NOT NULL,
  `pref11` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Table structure for table `vacancy`
--

CREATE TABLE IF NOT EXISTS `vacancy` (
  `program` varchar(50) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `counter` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allotment`
--
ALTER TABLE `allotment`
  ADD PRIMARY KEY (`applicationId`);

--
-- Indexes for table `candidateInfo`
--
ALTER TABLE `candidateInfo`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `applicationId` (`applicationId`);

--
-- Indexes for table `preferences`
--
ALTER TABLE `preferences`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `applicationId` (`applicationId`);

--
-- Indexes for table `vacancy`
--
ALTER TABLE `vacancy`
  ADD PRIMARY KEY (`branch`,`program`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidateInfo`
--
ALTER TABLE `candidateInfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `preferences`
--
ALTER TABLE `preferences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;--
-- Database: `navarach_svetregistration_2017`
--

-- --------------------------------------------------------

--
-- Table structure for table `allotment_jee`
--

CREATE TABLE IF NOT EXISTS `allotment_jee` (
  `applicationId` varchar(50) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `admitted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `allotment_svet`
--

CREATE TABLE IF NOT EXISTS `allotment_svet` (
  `applicationId` varchar(50) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `admitted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allotment_svet`
--

INSERT INTO `allotment_svet` (`applicationId`, `branch`, `admitted`) VALUES
('SVVEOHHCBMB', 'CSE', 0),
('SVVV/ RG/27238', 'CSE', 0),
('SVVV/ RG/27238BMB', 'CSE', 0),
('SVVV/ RG/27238BMT', 'CSE', 0),
('SVVV/RG/26401', 'CSE-BD', 0),
('SVVV/RG/26401BMB', 'CSE', 0),
('SVVV/RG/26401BMT', 'CSE', 0),
('SVVV/RG/26511', 'CSE', 0),
('SVVV/RG/26511BMB', 'CSE', 0),
('SVVV/RG/26511BMT', 'CSE', 0),
('SVVV10YHI', 'CSE', 0),
('SVVV10YHIBMB', 'CSE', 0),
('SVVV10YHIBT', 'CSE', 0),
('SVVV3DMAM', 'CSE', 0),
('SVVV55JPF', 'CSE-CMC', 0),
('SVVV8KUPA', 'CSE', 0),
('SVVV8KUPABMB', 'CSE', 0),
('SVVV8KUPABMT', 'CSE', 0),
('SVVVB5QUN', 'CSE-BD', 0),
('SVVVB5QUNBMB', 'CSE', 0),
('SVVVB5QUNBMT', 'CSE-CC', 0),
('SVVVBLYB8', 'CSE', 0),
('SVVVCGKBI', 'IT', 0),
('SVVVD2IFU', 'CSE', 0),
('SVVVD2IFUBMB', 'CSE', 0),
('SVVVD2IFUBMT', 'CSE', 0),
('SVVVDENHW', 'CSE', 0),
('SVVVDENHWBMB', 'CSE', 0),
('SVVVDENHWBMT', 'CSE', 0),
('SVVVDUFRI', 'CSE', 0),
('SVVVDUFRIBMB', 'CSE', 0),
('SVVVDUFRIBMT', 'CSE', 0),
('SVVVEOHHC', 'CSE', 0),
('SVVVEOHHCBMT', 'CSE', 0),
('SVVVEOHHCBT', 'CSE', 0),
('SVVVFIIH9', 'CSE', 0),
('SVVVFSPPZ', 'CSE', 0),
('SVVVFSPPZBMB', 'IT', 0),
('SVVVFSPPZBMT', 'IT', 0),
('SVVVHMO8W', 'CSE-BD', 0),
('SVVVHMO8WBMT', 'CSE-CC', 0),
('SVVVIUFPK', 'CSE', 0),
('SVVVKDJYS', 'IT', 0),
('SVVVKRPOC', 'CSE', 0),
('SVVVKRPOCBMB', 'CSE', 0),
('SVVVKRPOCBMT', 'CSE', 0),
('SVVVMMBJV', 'IT-CF', 0),
('SVVVMMBJVBMB', 'CSE-CMC', 0),
('SVVVNARHF', 'CSE', 0),
('SVVVNARHFBMT', 'CSE', 0),
('SVVVOLXFC', 'CSE', 0),
('SVVVOLXFCBMT', 'CSE', 0),
('SVVVPEKKP', 'CSE', 0),
('SVVVPNVHZ', 'CSE', 0),
('SVVVPNVHZBMT', 'CSE', 0),
('SVVVQIPSU', 'CSE', 0),
('SVVVQIPSUBMB', 'CSE', 0),
('SVVVQIPSUBMT', 'CSE', 0),
('SVVVSN1EY', 'CSE', 0),
('SVVVT6DB3', 'CSE', 0),
('SVVVT6DB3BMT', 'CSE', 0),
('SVVVTNFQ4', 'CSE-CMC', 0),
('SVVVVRVCV', 'CSE', 0),
('SVVVW5GNY', 'IT', 0),
('SVVVW5GNYBMT', 'IT', 0),
('SVVVW5GNYBT', 'CSE-BD', 0),
('SVVVWGB1A', 'CSE', 0),
('SVVVWGB1A BMB', 'CSE', 0),
('SVVVWGB1A BMT', 'CSE', 0),
('SVVVWTFJR', 'CSE', 0),
('SVVVY5UKE', 'CSE', 0),
('SVVVY5UKE BMB', 'CSE', 0),
('SVVVY5UKE BMT', 'CSE', 0),
('SVVVYKRVM', 'CSE', 0),
('SVVVYKRVMBMB', 'CSE', 0),
('SVVVYKRVMBMT', 'CSE', 0);

-- --------------------------------------------------------

--
-- Table structure for table `candidateInfo`
--

CREATE TABLE IF NOT EXISTS `candidateInfo` (
  `id` int(11) NOT NULL,
  `applicationId` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `birthDate` varchar(50) NOT NULL,
  `fatherName` varchar(50) NOT NULL,
  `motherName` varchar(50) NOT NULL,
  `svetEarlier` varchar(5) NOT NULL,
  `jeeEnroll` varchar(50) NOT NULL,
  `jeeMarks` int(5) DEFAULT NULL,
  `svetMarks` int(5) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `contactNo` varchar(10) NOT NULL,
  `pAddress` varchar(200) NOT NULL,
  `pincode` varchar(20) NOT NULL,
  `cAddress` varchar(200) NOT NULL,
  `cpincode` varchar(20) NOT NULL,
  `program` varchar(50) NOT NULL,
  `otherRadio` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidateInfo`
--

INSERT INTO `candidateInfo` (`id`, `applicationId`, `name`, `birthDate`, `fatherName`, `motherName`, `svetEarlier`, `jeeEnroll`, `jeeMarks`, `svetMarks`, `email`, `contactNo`, `pAddress`, `pincode`, `cAddress`, `cpincode`, `program`, `otherRadio`) VALUES
(140, 'SVVVYBAZL', 'SIDDHARTH KHANDELWAL', '1999-06-23', 'PRADEEP KHANDELWAL', 'SANGEETA KHANDELWAL', '', 'SVVVYBAZL', NULL, 33, 'SIDKHANDELWAL1@GMAIL.COM', '9425951317', 'A-12 SANJAY NAGAR BURHANPUR', '450331', 'A-12 SANJAY NAGAR  BURHANPUR', '450331', 'B.Tech.', 'NULL'),
(141, 'SVVVEPTV1', 'SHUBHAM KUMAWAT', '1998-04-22', 'GOPAL KUMAWAT', 'SANGEETA KUMAWAT', '', '55000659', NULL, 52, 'shubhamkumawat789@gmail.com', '7223891998', '36,radhaswami nagar chitawad road', '452001', '36,radhaswami nagar chitawad road', '452001', 'B.Tech.', 'NULL'),
(142, 'SVVVYBAZLBMT', 'SIDDHARTH KHANDELWAL', '1999-06-23', 'PRADEEP KHANDELWAL', 'SANGEETA KHANDELWAL', '', 'SVVVYBAZLBMT', NULL, 33, 'SIDKHANDELWAL1@GMAIL.COM', '9425951317', 'A-12 SANJAY NAGAR BURHANPUR', '450331', 'A-12 SANJAY NAGAR  BURHANPUR', '450331', 'B.Tech. + M.Tech.', 'NULL'),
(146, 'SVVVMTCGC', 'UMANG SAXENA', '1999-09-29', 'PRADEEP SAXENA', 'NEETA SAXENA', '', 'NULL', NULL, 38, 'saxena.umang29@gmail.com', '9753229104', 'House No.115 Ward No. 17 Prem Nagar Colony,Shujalpur Mandi,distt. Shajapur M.P.', '465333', 'House No.115 Ward No. 17 Prem Nagar Colony,Shujalpur Mandi,distt. Shajapur M.P.', '465333', 'B.Tech.', 'NULL'),
(148, 'SVVVPMEGK', 'SOHAIL AHMED', '09/07/1998', 'ANWAR AHMED', 'ANJUM AHMAD', '', 'SVVVPMEGK', NULL, 34, 'MOHD.FAAROOQKHAN@YAHOO.COM', '9179895053', 'JUNA RISALA GALI NO.3', '452006', 'JUNA RISALA GALI NO.3', '452006', 'B.Tech.', 'NULL'),
(149, 'SVVV14U3K', 'NIRMAL SEN', '1999-05-30', 'DINESH SEN', 'RANJANA SEN', '', '55000015', NULL, 25, 'nsen0534@gmail.com', '8959763834', 'Mahalaxmi Nagar ,Maheshwar', '451224', 'Mahalaxmi Nagar ,Maheshwar', '451224', 'B.Tech.', 'NULL'),
(150, 'SVVVEPTV1BMT', 'SHUBHAM KUMAWAT', '1998-04-22', 'GOPAL KUMAWAT', 'SANGEETA KUMAWAT', '', '55000659', NULL, 52, 'shubhamkumawat789@gmail.com', '7223891998', '36,radhaswami nagar chitawad road', '452001', '36,radhaswami nagar chitawad road', '452001', 'B.Tech. + M.Tech.', 'NULL'),
(151, 'SVVVPMEGKBMT', 'SOHAIL AHMED', '09/07/1998', 'ANWAR AHMED', 'ANJUM AHMAD', '', 'SVVVPMEGK', NULL, 34, 'MOHD.FAAROOQKHAN@YAHOO.COM', '9179895053', 'JUNA RISALA GALI NO.3', '452006', 'JUNA RISALA GALI NO.3', '452006', 'B.Tech. + M.Tech.', 'NULL'),
(152, 'SVVVYBAZLBBMT', 'SIDDHARTH KHANDELWAL', '1999-06-23', 'PRADEEP KHANDELWAL', 'SANGEETA KHANDELWAL', '', 'SVVVYBAZL', NULL, 33, 'SIDKHANDELWAL1@GMAIL.COM', '9425951317', 'A-12 SANJAY NAGAR BURHANPUR', '450331', 'A-12 SANJAY NAGAR  BURHANPUR', '450331', 'B.Tech.', 'NULL'),
(153, 'SVVVEPTV1BMB', 'SHUBHAM KUMAWAT', '1998-04-22', 'GOPAL KUMAWAT', 'SANGEETA KUMAWAT', '', '55000659', NULL, 52, 'shubhamkumawat789@gmail.com', '7223891998', '36,radhaswami nagar chitawad road', '452001', '36,radhaswami nagar chitawad road', '452001', 'B.Tech. + MBA', 'NULL'),
(154, 'SVVVJHISF', 'CHIRAG GARG', '2000-06-29', 'SANJAY GARG', 'ANJU GARG', '', 'SVVVJHISF', NULL, 34, '2r283xqa@gmail.com', '8982221763', 'purna thana gali agar malwa m.p', '465441', 'purna thana gali agar malwa m.p', '465441', 'B.Tech.', 'NULL'),
(155, 'SVVVR3CJR', 'SANKET GANGRADE', '1999-07-21', 'SATISH GANGRADE', 'VANDANA GANGRADE', '', 'SVVVR3CJR', NULL, 39, 'betugngrade@gmail.com', '9669866475', '45 RAMESHWAR PURAM COLONY , INFRONT OF JHULELAL MANDIR,KHANDWA', '450001', 'MEENAKSHI LAKE PARADISE KARBLA ROAD BHOPAL', '450001', 'B.Tech.', 'NULL'),
(156, 'SVVVYBAZLBMMT', 'SIDDHARTH KHANDELWAL', '1999-06-23', 'PRADEEP KHANDELWAL', 'SANGEETA KHANDELWAL', '', 'SVVVYBAZLBMMT', NULL, 33, 'SIDKHANDELWAL1@GMAIL.COM', '9425951317', 'A-12 SANJAY NAGAR BURHANPUR', '450331', 'A-12 SANJAY NAGAR  BURHANPUR', '450331', 'B.Tech. + M.Tech.', 'NULL'),
(157, 'SVVVPMEGKBMB', 'SOHAIL AHMED', '09/07/1998', 'ANWAR AHMED', 'ANJUM AHMAD', '', 'SVVVPMEGK', NULL, 34, 'MOHD.FAAROOQKHAN@YAHOO.COM', '9179895053', 'JUNA RISALA GALI NO.3', '452006', 'JUNA RISALA GALI NO.3', '452006', 'B.Tech. + MBA', 'NULL'),
(158, 'SVVVOIWT3', 'SANSKAR GUPTA', '1999-03-21', 'GANESH GUPTA', 'VINITA GUPTA', '', '17900227', NULL, 36, 'ganeshgupta1587@gmail.com', '9669822727', 'BF 4/4 staff colony vikram nagar, khor neemuch madhya pradesh', '458470', 'Bf 4/4 staff colony vikram nagar khor  neemuch, madhya pradesh ', '458470', 'B.Tech.', 'NULL'),
(159, 'SVVVMTCGCBMT', 'UMANG SAXENA', '1999-09-29', 'PRADEEP SAXENA', 'NEETA SAXENA', '', 'NULL', NULL, 38, 'saxena.umang29@gmail.com', '9753229104', 'House No.115 Ward No. 17 Prem Nagar Colony,Shujalpur Mandi,distt. Shajapur M.P.', '465333', 'House No.115 Ward No. 17 Prem Nagar Colony,Shujalpur Mandi,distt. Shajapur M.P.', '465333', 'B.Tech. + M.Tech.', 'NULL'),
(161, 'SVVVYBAZLBMTT', 'SIDDHARTH KHANDELWAL', '1999-06-23', 'PRADEEP KHANDELWAL', 'SANGEETA KHANDELWAL', '', 'SVVVYBAZLBMTT', NULL, 33, 'SIDKHANDELWAL1@GMAIL.COM', '9425951317', 'A-12 SANJAY NAGAR BURHANPUR', '450331', 'A-12 SANJAY NAGAR  BURHANPUR', '450331', 'B.Tech. + MBA', 'NULL'),
(162, 'SVVVMTCGCBMB', 'UMANG SAXENA', '1999-09-29', 'PRADEEP SAXENA', 'NEETA SAXENA', '', 'NULL', NULL, 38, 'saxena.umang29@gmail.com', '9753229104', 'House No.115 Ward No. 17 Prem Nagar Colony,Shujalpur Mandi,distt. Shajapur M.P.', '465333', 'House No.115 Ward No. 17 Prem Nagar Colony,Shujalpur Mandi,distt. Shajapur M.P.', '465333', 'B.Tech. + MBA', 'NULL'),
(164, 'SVVVOIWT3BMT', 'SANSKAR GUPTA', '1999-03-21', 'GANESH GUPTA', 'VINITA GUPTA', '', '17900227', NULL, 36, 'ganeshgupta1587@gmail.com', '9669822727', 'BF 4/4 staff colony vikram nagar, khor neemuch madhya pradesh', '458470', 'Bf 4/4 staff colony vikram nagar khor  neemuch, madhya pradesh ', '458470', 'B.Tech. + M.Tech.', 'NULL'),
(165, 'SVVVR3CJRBMT', 'SANKET GANGRADE', '1999-07-21', 'SATISH GANGRADE', 'VANDANA GANGRADE', '', 'SVVVR3CJR', NULL, 39, 'betugngrade@gmail.com', '9669866475', '45 RAMESHWAR PURAM COLONY , INFRONT OF JHULELAL MANDIR,KHANDWA', '450001', 'MEENAKSHI LAKE PARADISE KARBLA ROAD BHOPAL', '450001', 'B.Tech. + M.Tech.', 'NULL'),
(166, 'SVVVJHISFBMT', 'CHIRAG GARG', '2000-06-29', 'SANJAY GARG', 'ANJU GARG', '', 'SVVVJHISFBMT', NULL, 34, '2r283xqa@gmail.com', '8982221763', 'purna thana gali agar malwa m.p', '465441', 'purna thana gali agar malwa m.p', '465441', 'B.Tech. + M.Tech.', 'NULL'),
(167, 'SVVV3XMTZ', 'ASHU PANDEY', '1998-10-11', 'DINESH KUMAR PANDEY', 'ANITA PANDEY', '', '15015086', 45, NULL, 'pandeydk02@gmail.com', '9826051146', 'A-15, MIG COLONY BEHIND CHL HOSPITAL, INDORE', '452001', 'A-15, MIG COLONY BEHIND CHL HOSPITAL, INDORE', '452001', 'B.Tech.', 'NULL'),
(169, 'SVVVOIWT3BMB', 'SANSKAR GUPTA', '1999-03-21', 'GANESH GUPTA', 'VINITA GUPTA', '', '17900227', NULL, 36, 'ganeshgupta1587@gmail.com', '9669822727', 'BF 4/4 staff colony vikram nagar, khor neemuch madhya pradesh', '458470', 'Bf 4/4 staff colony vikram nagar khor  neemuch, madhya pradesh ', '458470', 'B.Tech. + MBA', 'NULL'),
(171, 'SVVVJHISFBMB', 'CHIRAG GARG', '2000-06-29', 'SANJAY GARG', 'ANJU GARG', '', 'SVVVJHISFBMB', NULL, 34, '2r283xqa@gmail.com', '8982221763', 'purna thana gali agar malwa m.p', '465441', 'purna thana gali agar malwa m.p', '465441', 'B.Tech. + MBA', 'NULL'),
(174, 'SVVVR3CJRBMB', 'SANKET GANGRADE', '1999-07-21', 'SATISH GANGRADE', 'VANDANA GANGRADE', '', 'SVVVR3CJR', NULL, 39, 'betugngrade@gmail.com', '9669866475', '45 RAMESHWAR PURAM COLONY , INFRONT OF JHULELAL MANDIR,KHANDWA', '450001', 'MEENAKSHI LAKE PARADISE KARBLA ROAD BHOPAL', '450001', 'B.Tech. + MBA', 'NULL'),
(176, 'SVVVGXIEL', 'SURAMYA DAVE', '1999-06-07', 'DINESH DAVE', 'SADHNA DAVE', '', '9', NULL, 42, 'davesuramya@gmail.com', '7772071468', '2 lipl block chemical staff colony birlagram nagda', '456331', '519 goyal vihar colony , near khajrana ', '452016', 'B.Tech.', 'NULL'),
(178, 'SVVVR9KTY', 'MANSI AWASTHI', '1999-06-19', 'JITENDRA AWASTHI', 'NISHA AWASTHI', '', '15009796', NULL, 50, 'mansiawasthi1@gmail.com', '9993933561', '2228D SUDAMA NAGAR', '452010', '2228D SUDAMA NAGAR', '452010', 'B.Tech. + M.Tech.', 'NULL'),
(179, 'SVVV3XMTZBMT', 'ASHU PANDEY', '1998-11-10', 'DINESH KUMAR PANDEY', 'ANITA PANDEY', '', '15015086', 45, NULL, 'pandeydk02@gmail.com', '9826051146', 'A-15, MIG COLONY BEHIND CHL HOSPITAL, INDORE', '452001', 'A-15, MIG COLONY BEHIND CHL HOSPITAL, INDORE', '452001', 'B.Tech. + M.Tech.', 'NULL'),
(181, 'SVVV14U3KBMT', 'NIRMAL SEN', '1999-05-30', 'DINESH SEN', 'RANJANA SEN', '', '55000015', NULL, 25, 'nsen0534@gmail.com', '8959763834', 'Mahalaxmi Nagar ,Maheshwar', '451224', 'Mahalaxmi Nagar ,Maheshwar', '451224', 'B.Tech. + M.Tech.', 'NULL'),
(182, 'SVVVGXIELBMT', 'SURAMYA DAVE', '1999-06-07', 'DINESH DAVE', 'SADHNA DAVE', '', 'SVVVGXIEL', NULL, 42, 'davesuramya@gmail.com', '7772071468', '2 lipl block chemical staff colony birlagram nagda', '456331', '519 goyal vihar colony , near khajrana ', '452016', 'B.Tech. + M.Tech.', 'NULL'),
(183, 'SVVVPJWVP', 'KRISHNA UPADHYAY', '1999-03-09', 'AJAY UPADHYAY', 'MANJU UPADHYAY', '', 'svvvpjwvp', NULL, 52, 'ajayup25@gmail.com', '9926923136', '34, Radio colony near gurunank park', '452001', '34, Radio colony near gurunank park', '452001', 'B.Tech.', 'NULL'),
(184, 'SVVVR9KTYBMT', 'MANSI AWASTHI', '1999-06-19', 'JITENDRA AWASTHI', 'NISHA AWASTHI', '', 'SVVVR9KTY', NULL, 50, 'mansiawasthi1@gmail.com', '9993933561', '2228D SUDAMA NAGAR', '452010', '2228D SUDAMA NAGAR', '452010', 'B.Tech. + MBA', 'NULL'),
(185, 'SVVV14U3KBMB', 'NIRMAL SEN', '1999-05-30', 'DINESH SEN', 'RANJANA SEN', '', '55000015', NULL, 25, 'nsen0534@gmail.com', '8959763834', 'Mahalaxmi Nagar ,Maheshwar', '451224', 'Mahalaxmi Nagar ,Maheshwar', '451224', 'B.Tech. + MBA', 'NULL'),
(188, 'SVVV3XMTZBMB', 'ASHU PANDEY', '1998-11-10', 'DINESH KUMAR PANDEY', 'ANITA PANDEY', '', '15015086', 45, NULL, 'pandeydk02@gmail.com', '9826051146', 'A-15, MIG COLONY BEHIND CHL HOSPITAL, INDORE', '452001', 'A-15, MIG COLONY BEHIND CHL HOSPITAL, INDORE', '452001', 'B.Tech. + MBA', 'NULL'),
(191, 'SVVVGXIELBMB', 'SURAMYA DAVE', '1999-06-07', 'DINESH DAVE', 'SADHNA DAVE', '', 'SVVVGXIEL', NULL, 42, 'davesuramya@gmail.com', '7772071468', '2 lipl block chemical staff colony birlagram nagda', '456331', '519 goyal vihar colony , near khajrana ', '452016', 'B.Tech. + MBA', 'NULL'),
(192, 'SVVVN9KJ8', 'ARPIT SANGHVI', '2000-02-01', ',MUKESH SANGHVI', 'MANJULATA SANGHVI', '', 'SVVVN9KJ8', NULL, 19, 'sanghvi.arpit.16@gmail.com', '7089340036', 'HARI SINGH COLONY SHAMGARH, MANDSAUR', '458883', 'HARI SINGH COLONY SHAMGARH, MANDSAUR', '458883', 'B.Tech.', 'NULL'),
(193, 'SVVVR9KTYBMB', 'MANSI AWASTHI', '1999-06-19', 'JITENDRA AWASTHI', 'NISHA AWASTHI', '', 'SVVVR9KTY', NULL, 50, 'mansiawasthi@gmail.com', '9993933561', '2228D SUDAMA NAGAR', '452010', '2228D SUDAMA NAGAR', '452010', 'B.Tech. + MBA', 'NULL'),
(194, 'SVVVCOD4S', 'PRACHI DHANOTIYA', '14/06/2000', 'MAHESH KUMAR DHANOTIYA', 'SUNITA DHANOTIYA', '', '1234546', NULL, 35, 'md458883@gmail.com', '9926762031', 'BADE RAM MANDIR KE PAS SHAMGARH GAON', '458883', 'BADE RAM MANDIR KE PAS SHAMGARH GAON', '458883', 'B.Tech.', 'NULL'),
(195, 'SVVVBLYB8BMT', 'TARIQ AHMED SIDDIQUI', '1999-11-29', 'SABIR AHMED SIDDIQUI', 'ROSHANARA SIDDIQUI', '', 'SVVVBLYB8', NULL, 41, 'tariqsiddiqui3585@gmail.com', '9630891041', 'A 2/7 MAHANANDA  NAGAR UJJAIN', '456010', '26/2 NORTH HARSIDHI INDORE', '450002', 'B.Tech. + M.Tech.', 'NULL'),
(196, 'SVVVPJWVPBMT', 'KRISHNA UPADHYAY', '1999-03-09', 'AJAY UPADHYAY', 'MANJU UPADHYAY', '', 'svvvpjwvpbmt', NULL, 52, 'ajayup25@gmail.com', '9926923136', '34 Radio colony near gurunanak park', '452001', '34 Radio colony near gurunanak park', '452001', 'B.Tech. + M.Tech.', 'NULL'),
(197, 'SVVVBLYB8BMB', 'TARIQ AHMED SIDDIQUI', '1999-11-29', 'SABIR AHMED SIDDIQUI', 'ROSHANARA SIDDIQUI', '', 'SVVVBLYB8', NULL, 41, 'tariqsiddiqui3585@gmail.com', '9630891041', 'A 2/7 MAHANANDA  NAGAR UJJAIN', '456010', '26/2 NORTH HARSIDHI INDORE', '450002', 'B.Tech. + MBA', 'NULL'),
(198, 'SVVVN9KJ8BMT', 'ARPIT SANGHVI', '2000-06-20', 'MUKESH SANGHVI', 'MANJULATA SANGHVI', '', 'SVVVN9KJ8', NULL, 19, 'sanghvi.arpit.16@gmail.com', '7089340036', 'HARI SINGH COLONY SHAMGARH, MANDSAUR', '458883', 'HARI SINGH COLONY SHAMGARH, MANDSAUR', '458883', 'B.Tech. + M.Tech.', 'NULL'),
(199, 'SVVVPJWVPBMB', 'KRISHNA UPADHYAY', '1999-03-09', 'AJAY UPADHYAY', 'MANJU UPADHYAY', '', 'svvvpjwvpbmt', NULL, 52, 'ajayup25@gmail.com', '9926923136', '34 Radio colony near gurunanak park', '452001', '34 Radio colony near gurunanak park', '452001', 'B.Tech. + MBA', 'NULL'),
(202, 'SVVVN9KJ8BMB', 'ARPIT SANGHVI', '2000-06-20', 'MUKESH SANGHVI', 'MANJULATA SANGHVI', '', 'SVVVN9KJ8', NULL, 19, 'sanghvi.arpit.16@gmail.com', '7089340036', 'HARI SINGH COLONY SHAMGARH, MANDSAUR', '458883', 'HARI SINGH COLONY SHAMGARH, MANDSAUR', '458883', 'B.Tech. + MBA', 'NULL'),
(203, 'SVVV3XMTZBT', 'ASHU PANDEY', '1998-11-10', 'DINESH KUMAR PANDEY', 'ANITA PANDEY', '', '15015086', 45, NULL, 'pandeydk02@gmail.com', '9826051146', 'A-15, MIG COLONY BEHIND CHL HOSPITAL, INDORE', '452001', 'A-15, MIG COLONY BEHIND CHL HOSPITAL, INDORE', '452001', 'B.Tech.', 'NULL'),
(204, 'SVVVYOMLN', 'KAJAL GUPTA', '1999-06-14', 'JITENDRA GUPTA', 'JYOTI GUPTA', '', '15009901', 55, NULL, 'aditisugandhi12@gmail.com', '8989641638', 'Kunda Nagar, Bistan Road, khargone', '451001', 'Kunda Nagar, Bistan Road, khargone', '451001', 'B.Tech.', 'NULL'),
(205, 'SVVVYOMLNBMT', 'KAJAL GUPTA', '1999-06-14', 'JITENDRA GUPTA', 'JYOTI GUPTA', '', '15009901', 55, NULL, 'aditisugandhi12@gmail.com', '8989641638', 'Kunda Nagar, Bistan Road, khargone', '451001', 'Kunda Nagar, Bistan Road, khargone', '451001', 'B.Tech. + M.Tech.', 'NULL'),
(206, 'SVVVYOMLNBMB', 'KAJAL GUPTA', '1999-06-14', 'JITENDRA GUPTA', 'JYOTI GUPTA', '', '15009901', 55, NULL, 'aditisugandhi12@gmail.com', '8989641638', 'Kunda Nagar, Bistan Road, khargone', '451001', 'Kunda Nagar, Bistan Road, khargone', '451001', 'B.Tech. + MBA', 'NULL'),
(207, 'SVVV/RG/27289', 'AMAN GUPTA', '1999-06-07', 'RAJESH GUPTA', 'RAJNI GUPTA', '', '15001034', 53, NULL, 'amangupta67199@gmail.com', '7470337193', 'bazar mohalla khargapur tikamgarh mp', '472115', 'LIG square indore mp', '453111', 'B.Tech.', 'NULL'),
(208, 'SVVVEFED1BMT', 'AMAN GUPTA', '1999-06-07', 'RAJESH GUPTA', 'RAJNI GUPTA', '', '15001034', 53, NULL, 'amangupta67199@gmail.com', '7470337193', 'bazar mohalla khargapur tikamgarh mp', '472115', 'LIG square indore mp', '453111', 'B.Tech. + M.Tech.', 'NULL'),
(209, 'SVVVEFED1BMB', 'AMAN GUPTA', '1999-06-07', 'RAJESH GUPTA', 'RAJNI GUPTA', '', '15001034', 53, NULL, 'amangupta67199@gmail.com', '7470337193', 'bazar mohalla khargapur tikamgarh mp', '472115', 'LIG square indore mp', '453111', 'B.Tech. + MBA', 'NULL'),
(210, 'SVVVFAAED', 'ABHISHEK KUMAR SHARMA', '2000-06-23', 'MURARI LAL SHARMA', 'MANOHARI DEVI SHARMA', '', '55003011', 34, NULL, 'abhish939@gmail.com', '9584875991', 'OMKAR COLONY DHAMNOD', '454552', 'OMKAR COLONY DHAMNOD', '454552', 'B.Tech.', 'NULL'),
(211, 'SVVVLYT7L', 'PRACHI JAIN', '1999-12-02', 'ABHAY JAIN', 'RITA JAIN', '', '15302318', NULL, 50, 'jprachi589@gmail.com', '7879640960', '10,kotwali road Bagadia Tower Flat No. 403', '456006', '10,kotwali road Bagadia Tower Flat No. 403', '456006', 'B.Tech.', 'NULL'),
(212, 'SVVVFAAEDBMT', 'ABHISHEK KUMAR SHARMA', '2000-06-23', 'MURARI LAL SHARMA', 'MANOHARI DEVI SHARMA', '', '55003011', 34, NULL, 'abhish939@gmail.com', '9584875991', 'OMKAR COLONY DHAMNOD', '454552', 'OMKAR COLONY DHAMNOD', '454552', 'B.Tech. + M.Tech.', 'NULL'),
(216, 'SVVVWQ8PA', 'HARSH CHOUDHARY', '1998-02-09', 'M S CHOUDHARY', 'MANJU CHOUDHARY', '', '54800101', NULL, 23, 'harsh9choudhary@gmail.com', '9424005954', 'ward no 33 awadhpuri balaghat', '481001', 'ward no 33 balaghat', '481001', 'B.Tech.', 'NULL'),
(217, 'SVVVFAAEDBMB', 'ABHISHEK KUMAR SHARMA', '2000-06-23', 'MURARI LAL SHARMA', 'MANOHARI DEVI SHARMA', '', '55003011', 34, NULL, 'abhish939@gmail.com', '9584875991', 'OMKAR COLONY DHAMNOD', '454552', 'OMKAR COLONY DHAMNOD', '454552', 'B.Tech. + MBA', 'NULL'),
(218, 'SVVVHPIID', 'TARUN NAGAR', '08/11/1999', 'PAWAN NAGAR', 'NEELU NAGAR', '', 'SVVVHPIID', NULL, 24, 'nagart8989@gmail.com', '9098391540', '20,kartik chowk,ujjain', '456006', '20,kartik chowk ujjain', '456006', 'B.Tech.', 'NULL'),
(221, 'SVVVLYT7LBMT', 'PRACHI JAIN', '1999-12-02', 'ABHAY JAIN', 'RITA JAIN', '', '15302318', NULL, 50, 'jprachi589@gmail.com', '7879640960', '10,kotwali road Bagadia Tower Flat No. 403', '456006', '10,kotwali road Bagadia Tower Flat No. 403', '456006', 'B.Tech. + M.Tech.', 'NULL'),
(222, 'SVVVHPIIDBMT', 'TARUN NAGAR', '08/11/1999', 'PAWAN NAGAR', 'NEELU NAGAR', '', 'SVVVHPIID', NULL, 24, 'nagart8989@gmail.com', '9098391540', '20,kartik chowk,ujjain', '456006', '20,kartik chowk ujjain', '456006', 'B.Tech. + M.Tech.', 'NULL'),
(223, 'SVVVHPIIDBMB', 'TARUN NAGAR', '08/11/1999', 'PAWAN NAGAR', 'NEELU NAGAR', '', 'SVVVHPIID', NULL, 24, 'nagart8989@gmail.com', '9098391540', '20,kartik chowk,ujjain', '456006', '20,kartik chowk ujjain', '456006', 'B.Tech. + MBA', 'NULL'),
(224, 'SVVVWQ8PABMT', 'HARSH CHOUDHARY', '1998-02-09', 'M S CHOUDHARY', 'MANJU CHOUDHARY', '', '54800101', NULL, 23, 'harsh9choudhary@gmail.com', '9424005954', 'ward no 33 awadhpuri balaghat', '481001', 'ward no 33 balaghat', '481001', 'B.Tech. + M.Tech.', 'NULL'),
(225, 'SVVVWQ8PABMB', 'HARSH CHOUDHARY', '1998-02-09', 'M S CHOUDHARY', 'MANJU CHOUDHARY', '', '54800101', NULL, 23, 'harsh9choudhary@gmail.com', '9424005954', 'ward no 33 awadhpuri balaghat', '481001', 'ward no 33 balaghat', '481001', 'B.Tech. + MBA', 'NULL'),
(226, 'SVVVUI1DJ', 'PRATHAM PATEL', '2000-09-02', 'ASHOK PATEL', 'REENA PATEL', '', '70143889', NULL, 53, 'prathamashokpatel@gmail.com', '7225067557', 'Flat no 411, Malay Residency,Ashish Nagar,Indore', '452016', 'Flat no 411, Malay Residency,Ashish Nagar,Indore', '452016', 'B.Tech.', 'NULL'),
(227, 'SVVVLYT7LBMB', 'PRACHI JAIN', '1999-12-02', 'ABHAY JAIN', 'RITA JAIN', '', '15302318', NULL, 50, 'jprachi589@gmail.com', '7879640960', '10,kotwali road Bagadia Tower Flat No. 403', '456006', '10,kotwali road Bagadia Tower Flat No. 403', '456006', 'B.Tech. + MBA', 'NULL'),
(229, 'SVVV/RG/27263', 'PARAS BAID', '2000-01-01', 'MANISH BAID', 'BABITA BAID', '', 'SVVVXUB8J', NULL, 40, 'parasbaid11@gmail.com', '7415201013', '10th TILAK NAGAR EXTENSION', '452018', '10TH TILAK NAGAR EXTENSION', '452018', 'B.Tech. + MBA', 'NULL'),
(230, 'SVVVUI1DJBMT', 'PRATHAM PATEL', '2000-09-02', 'ASHOK PATEL', 'REENA PATEL', '', '70143889', NULL, 53, 'prathamashokpatel@gmail.com', '7225067557', 'Flat no 411, Malay Residency,Ashish Nagar,Indore', '452016', 'Flat no 411, Malay Residency,Ashish Nagar,Indore', '452016', 'B.Tech. + M.Tech.', 'NULL'),
(231, 'SVVVUI1DJBMB', 'PRATHAM PATEL', '2000-09-02', 'ASHOK PATEL', 'REENA PATEL', '', '70143889', NULL, 53, 'prathamashokpatel@gmail.com', '7225067557', 'Flat no 411, Malay Residency,Ashish Nagar,Indore', '452016', 'Flat no 411, Malay Residency,Ashish Nagar,Indore', '452016', 'B.Tech. + MBA', 'NULL'),
(232, 'SVVVYFLVO', 'PAKHI LAAD', '23/09/1999', 'AKHILESH LAAD', 'RANJANA LAAD', '', '15008990', 34, NULL, 'akhilesh_laad@rediffmail.com', '8719930092', '243A GULAB BAGH INDORE', '452010', '243 A GULAB BAGH COLONY', '452010', 'B.Tech.', 'NULL'),
(233, 'SVVVA2NI8', 'MOHAMMAD ADNAN KHAN', '1999-03-01', 'ABDUL RAFIQUE KHAN', 'ANJUM KHAN', '', 'SVVVA2NI8', NULL, 39, 'ak5764298@gmail.com', '8962910188', '9/1, Juna risala, Indore', '452006', '9/1, juna risala, indore', '452006', 'B.Tech.', 'NULL'),
(234, 'SVVVA2NI8BMT', 'MOHAMMAD ADNAN KHAN', '1999-03-01', 'ABDUL RAFIQUE KHAN', 'ANJUM KHAN', '', 'SVVVA2NI8', NULL, 39, 'ak5764298@gmail.com', '8962910188', '9/1, Juna risala, Indore', '452006', '9/1, juna risala, indore', '452006', 'B.Tech. + M.Tech.', 'NULL'),
(235, 'SVVVA2NI8BMB', 'MOHAMMAD ADNAN KHAN', '1999-03-01', 'ABDUL RAFIQUE KHAN', 'ANJUM KHAN', '', 'SVVVA2NI8', NULL, 39, 'ak5764298@gmail.com', '8962910188', '9/1, Juna risala, Indore', '452006', '9/1, juna risala, indore', '452006', 'B.Tech. + MBA', 'NULL'),
(237, 'SVVVDLIEL', 'AMAN JOSHI', '1999-08-25', 'RAKESH JOSHI', 'SUMAN JOSHI', '', '15005232', NULL, 56, 'amanjoshi737@gmail.com', '9479955681', '8/A VISHAL NAGAR', '452009', '8/A VISHAL NAGAR ', '452009', 'B.Tech.', 'NULL'),
(238, 'SVVVVJ5C3BMT', 'KUNDAN SINGH CHANDEL', '1999-05-19', 'ANTAR SINGH CHANDEL', 'SANGEETA CHANDEL', '', '15002656', 40, NULL, 'kundanchandel08@gmail.com', '8964892214', '3-a vaibhav nagar ext', '452016', '57-b vaibhav nagar ', '452016', 'B.Tech. + M.Tech.', 'NULL'),
(239, 'SVVVDLIELBMT', 'AMAN JOSHI', '1999-08-25', 'RAKESH JOSHI', 'SUMAN JOSHI', '', '15005232', NULL, 56, 'amanjoshi737@gmail.com', '9479955681', '8/A VISHAL NAGAR', '452009', '8/A VISHAL NAGAR ', '452009', 'B.Tech. + M.Tech.', 'NULL'),
(240, 'SVVVDLIELBMB', 'AMAN JOSHI', '1999-08-25', 'RAKESH JOSHI', 'SUMAN JOSHI', '', '15005232', NULL, 56, 'amanjoshi737@gmail.com', '9479955681', '8/A VISHAL NAGAR', '452009', '8/A VISHAL NAGAR ', '452009', 'B.Tech. + MBA', 'NULL'),
(242, 'SVVVVJ5C3BMB', 'KUNDAN SINGH CHANDEL', '1999-05-19', 'ANTAR SINGH CHANDEL', 'SANGEETA CHANDEL', '', '15002656', 40, NULL, 'kundanchandel08@gmail.com', '8964892214', '3-a vaibhav nagar ext', '452016', '57-b vaibhav nagar ', '452016', 'B.Tech. + MBA', 'NULL'),
(243, 'SVVVYM3FH', 'PRABHAT JOGDANDE', '1998-11-14', 'CHANDRAKANT JOGDANDE', 'NISHA JOGDANDE', '', 'SVVVYM3FH', NULL, 26, 'prabhatjogdande@gmail.com', '9977929776', 'sch.140 near bangali square indore', '452001', 'o/10 sch.140 bangali square indore(m.p)', '452001', 'B.Tech.', 'NULL'),
(244, 'SVVVYM3FHBMT', 'PRABHAT JOGDANDE', '1998-11-14', 'CHANDRAKANT JOGDANDE', 'NISHA JOGDANDE', '', 'SVVVYM3FH', NULL, 26, 'prabhatjogdande@gmail.com', '9977929776', 'sch.140 near bangali square indore', '452001', 'o/10 sch.140 bangali square indore(m.p)', '452001', 'B.Tech. + M.Tech.', 'NULL'),
(245, 'SVVVYM3FHBMB', 'PRABHAT JOGDANDE', '1998-11-14', 'CHANDRAKANT JOGDANDE', 'NISHA JOGDANDE', '', 'SVVVYM3FH', NULL, 26, 'prabhatjogdande@gmail.com', '9977929776', 'sch.140 near bangali square indore', '452001', 'o/10 sch.140 bangali square indore(m.p)', '452001', 'B.Tech. + MBA', 'NULL'),
(246, 'SVVV/RG/27307', 'NAINCY GANGRADE', '1999-01-04', 'MANOJ GANGRADE', 'ARCHANA GANGRADE', '', '15004613', 40, NULL, 'naincygangrade@gmail.com', '8435305343', '66 MIG DindayalPuram Khandwa', '450001', '66 MIG DindayalPura Khandwa', '450001', 'B.Tech.', 'NULL');

-- --------------------------------------------------------

--
-- Table structure for table `preferences`
--

CREATE TABLE IF NOT EXISTS `preferences` (
  `id` int(11) NOT NULL,
  `applicationId` varchar(100) NOT NULL,
  `pref1` varchar(100) NOT NULL,
  `pref2` varchar(100) NOT NULL,
  `pref3` varchar(100) NOT NULL,
  `pref4` varchar(100) NOT NULL,
  `pref5` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `preferences`
--

INSERT INTO `preferences` (`id`, `applicationId`, `pref1`, `pref2`, `pref3`, `pref4`, `pref5`) VALUES
(2, 'SVVVTSLJO', 'CSE', 'CSE-CC', 'IT', 'ICT', 'IT-CF'),
(3, 'SVVV10YHI', 'CSE', 'IT', 'CSE-CC', 'ICT', 'IT-CF'),
(4, 'SVVV15UIX', 'CSE-CMC', 'IT', 'CSE-BD', 'IT', 'IT'),
(5, 'SVVVJNABL', 'CSE-BD', 'CSE', 'CSE-CMC', 'IT', 'CCE'),
(6, 'SVVVDUFRI', 'CSE', 'CSE-BD', 'CSE-CMC', 'IT', 'CSE'),
(7, 'SVVV/RG/26401', 'CSE-BD', 'CSE', 'CSE-CMC', 'IT', 'CCE'),
(10, 'SVVVFIIH9', 'CSE', 'IT', 'CCE', 'CSE-BD', 'CSE-CMC'),
(12, 'SVVVDENHW', 'CSE', 'IT', 'CSE-BD', 'CSE-CMC', 'CCE'),
(14, 'SVVVFSPPZ', 'CSE', 'IT', 'CSE-BD', 'CSE-CMC', 'CCE'),
(17, 'SVVV15UIXBMT', 'IT', 'CSE-CC', 'IT', 'CSE-CC', 'IT-CF'),
(18, 'SVVVIUFPK', 'CSE', 'CSE-BD', 'CSE-CMC', 'CCE', 'IT'),
(19, 'SVVV15UIXBMB', 'IT', 'CSE', 'IT', 'CSE', 'IT'),
(20, 'SVVVTSLJOB', 'CSE', 'CSE-BD', 'CSE-CMC', 'CCE', 'IT'),
(21, 'SVVV/RG/26401BMT', 'CSE', 'CSE-CC', 'IT', 'ICT', 'IT-CF'),
(23, 'SVVVNARHF', 'CSE', 'IT', 'CCE', 'CSE-CMC', 'CSE-BD'),
(24, 'SVVVDUFRIBMT', 'CSE', 'CSE-CC', 'IT', 'IT-CF', 'ICT'),
(25, 'SVVVY5UKE', 'CSE', 'CSE-CMC', 'CSE-BD', 'IT', 'IT'),
(26, 'SVVVDENHWBMT', 'CSE', 'IT', 'CSE-BD', 'CSE-CMC', 'CCE'),
(27, 'SVVVYKRVM', 'CSE', 'CSE-CMC', 'CSE-BD', 'IT', 'IT'),
(28, 'SVVV55JPF', 'CSE-CMC', 'CSE-BD', 'CSE', 'IT', 'CCE'),
(29, 'SVVVTSLJOBMT', 'CSE', 'CSE-CC', 'IT', 'ICT', 'IT-CF'),
(30, 'SVVVFSPPZBMT', 'IT', 'CSE', 'CSE-CC', 'ICT', 'IT-CF'),
(31, 'SVVVDUFRIBMB', 'CSE', 'CSE', 'CSE', 'CSE', 'IT'),
(32, 'SVVVY5UKE BMT', 'CSE', 'CSE-CC', 'IT-CF', 'IT', 'IT'),
(34, 'SVVVDENHWBMB', 'CSE', 'IT', 'CSE', 'IT', 'CSE'),
(35, 'SVVVHMO8WBMT', 'CSE-CC', 'CSE', 'IT', 'IT-CF', 'ICT'),
(36, 'SVVVY5UKE BMB', 'CSE', 'CSE', 'CSE', 'IT', 'IT'),
(37, 'SVVV/RG/27271', 'CSE-BD', 'CSE-CMC', 'CSE', 'CCE', 'IT'),
(38, 'SVVVYKRVMBMT', 'CSE', 'CSE-CC', 'IT', 'IT', 'CSE'),
(39, 'SVVV10YHIBT', 'CSE', 'CSE-BD', 'CSE-CMC', 'CCE', 'IT'),
(40, 'SVVV/RG/26401BMB', 'CSE', 'CSE', 'CSE', 'CSE', 'CSE'),
(41, 'SVVVD2IFU', 'CSE', 'IT', 'CCE', 'CSE-CMC', 'CSE-BD'),
(42, 'SVVVFSPPZBMB', 'IT', 'CSE', 'IT', 'CSE', 'IT'),
(43, 'SVVVKRPOC', 'CSE', 'IT', 'CSE-CMC', 'CCE', 'CSE-BD'),
(44, 'SVVVWGB1A BMB', 'CSE', 'CSE', 'CSE', 'IT', 'IT'),
(45, 'SVVVYKRVMBMB', 'CSE', 'CSE', 'CSE', 'IT', 'IT'),
(46, 'SVVVWGB1A BMT', 'CSE', 'CSE-CC', 'IT-CF', 'IT', 'IT'),
(49, 'SVVVWGB1A', 'CSE', 'CSE-CMC', 'CSE-BD', 'IT', 'IT'),
(51, 'SVVV10YHIBMB', 'CSE', 'CSE', 'CSE', 'CSE', 'IT'),
(52, 'SVVVNARHFBMT', 'CSE', 'IT', 'CCE', 'CSE-CMC', 'CSE-BD'),
(53, 'SVVVD2IFUBMT', 'CSE', 'IT', 'CSE-CC', 'ICT', 'IT-CF'),
(54, 'SVVVCGKBI', 'IT', 'CSE', 'CSE', 'IT', 'CSE'),
(55, 'SVVVQIPSU', 'CSE', 'CSE-BD', 'CSE-CMC', 'IT', 'CCE'),
(56, 'SVVVKRPOCBMT', 'CSE', 'IT', 'CSE-CC', 'ICT', 'IT-CF'),
(57, 'SVVVHMO8W', 'CSE-BD', 'CSE', 'CSE-CMC', 'IT', 'CCE'),
(58, 'SVVVWTFJR', 'CSE', 'IT', 'CCE', 'CSE-CMC', 'CSE-BD'),
(59, 'SVVVB5QUN', 'CSE-BD', 'CSE', 'CSE-CMC', 'IT', 'CCE'),
(60, 'SVVVKRPOCBMB', 'CSE', 'IT', 'CSE', 'IT', 'CSE'),
(62, 'SVVVB5QUNBMT', 'CSE-CC', 'CSE', 'IT', 'ICT', 'IT-CF'),
(63, 'SVVVD2IFUBMB', 'CSE', 'IT', 'CSE', 'IT', 'CSE'),
(64, 'SVVVB5QUNBMB', 'CSE', 'CSE', 'CSE', 'CSE', 'CSE'),
(65, 'SVVV4JGLC', 'CSE', 'IT', 'CCE', 'CSE-BD', 'CSE-CMC'),
(66, 'SVVVQIPSUBMT', 'CSE', 'CSE-CC', 'IT', 'ICT', 'IT-CF'),
(70, 'SVVVVRVCV', 'CSE', 'IT', 'CSE-BD', 'CSE-CMC', 'CCE'),
(73, 'SVVVQIPSUBMB', 'CSE', 'CSE-BD', 'CSE-CMC', 'IT', 'CCE'),
(74, 'SVVV4JGLCBT', 'CSE', 'CSE-BD', 'CSE-CMC', 'CCE', 'IT'),
(75, 'SVVVMGI9W', 'CSE', 'CSE', 'CSE', 'CSE', 'CSE'),
(76, 'SVVVVJ5C3', 'CSE', 'IT', 'CSE-BD', 'CSE-CMC', 'CCE'),
(77, 'SVVV/ RG/27238', 'CSE', 'CSE-CMC', 'CSE-BD', 'IT', 'CSE'),
(78, 'SVVV/ RG/27238BMT', 'CSE', 'CSE-CC', 'IT', 'CSE', 'CSE-CC'),
(79, 'SVVV/ RG/27238BMB', 'CSE', 'IT', 'CSE', 'CSE', 'IT'),
(81, 'SVVVPEKKP', 'CSE', 'IT', 'CSE-BD', 'CSE-CMC', 'IT'),
(82, 'SVVVSN1EY', 'CSE', 'CSE-BD', 'CSE-CMC', 'IT', 'CCE'),
(83, 'SVVVW5GNY', 'IT', 'CSE', 'CSE', 'IT', 'IT'),
(84, 'SVVVOLXFC', 'CSE', 'IT', 'CSE', 'IT', 'CSE'),
(85, 'SVVVW5GNYBMT', 'IT', 'CSE', 'CSE-CC', 'IT', 'ICT'),
(88, 'SVVVOLXFCBMT', 'CSE', 'CSE-CC', 'IT', 'CSE', 'IT'),
(89, 'SVVVW5GNYBT', 'CSE-BD', 'CSE-CMC', 'IT', 'CCE', 'IT'),
(90, 'SVVVBLYB8', 'CSE', 'IT', 'CSE', 'IT', 'CCE'),
(91, 'SVVVRQIEQ', 'CSE', 'IT', 'CSE-CMC', 'CSE-BD', 'CCE'),
(92, 'SVVVBGVNR', 'CSE', 'CSE-BD', 'IT', 'CSE-CMC', 'CCE'),
(93, 'SVVV3DMAM', 'CSE', 'IT', 'CSE-BD', 'CSE-CMC', 'CCE'),
(94, 'SVVVRQIEQBMT', 'CSE', 'IT', 'CSE-CC', 'IT-CF', 'ICT'),
(95, 'SVVV8KUPA', 'CSE', 'IT', 'CSE-BD', 'CSE-CMC', 'CCE'),
(96, 'SVVVCWMSI', 'CSE', 'IT', 'CSE-CMC', 'CSE-BD', 'CCE'),
(97, 'SVVV/RG/26511', 'CSE', 'IT', 'CSE-BD', 'CSE-CMC', 'IT'),
(98, 'SVVVTNFQ4', 'CSE-CMC', 'CSE-BD', 'CSE', 'IT', 'IT'),
(99, 'SVVV8KUPABMT', 'CSE', 'IT', 'CSE-CC', 'ICT', 'IT-CF'),
(100, 'SVVVEOHHC', 'CSE', 'CSE', 'CSE', 'CSE', 'CSE'),
(101, 'SVVVCWMSIBMT', 'CSE', 'IT', 'IT-CF', 'CSE-CC', 'ICT'),
(103, 'SVVV8KUPABMB', 'CSE', 'CSE', 'CSE', 'CSE', 'CSE'),
(104, 'SVVVCWMSIBMB', 'CSE', 'IT', 'CSE', 'IT', 'CSE'),
(105, 'SVVV/RG/26511BMT', 'CSE', 'IT', 'CSE-CC', 'CSE', 'IT'),
(106, 'SVVV/RG/26511BMB', 'CSE', 'IT', 'CSE', 'IT', 'CSE'),
(107, 'SVVVEOHHCBMT', 'CSE', 'CSE', 'CSE', 'CSE', 'CSE'),
(108, 'SVVEOHHCBMB', 'CSE', 'CSE', 'CSE', 'CSE', 'CSE'),
(109, 'SVVVZKTOB', 'CSE-BD', 'CSE', 'CSE-CMC', 'CCE', 'IT'),
(111, 'SVVVPNVHZ', 'CSE', 'IT', 'CSE-CMC', 'CSE-BD', 'CCE'),
(112, 'SVVVEOHHCBT', 'CSE', 'CSE', 'CSE', 'CSE', 'CSE'),
(113, 'SVVVZKTOBBMT', 'CSE', 'IT', 'CSE-CC', 'ICT', 'IT-CF'),
(115, 'SVVVZKTOBBMB', 'CSE', 'IT', 'CSE', 'CSE', 'CSE'),
(116, 'SVVVPNVHZBMT', 'CSE', 'IT', 'IT-CF', 'CSE-CC', 'IT-CF'),
(117, 'SVVVT6DB3', 'CSE', 'IT', 'CSE-BD', 'CSE-CMC', 'CCE'),
(118, 'SVVVT6DB3BMT', 'CSE', 'IT', 'CSE-CC', 'ICT', 'IT-CF'),
(119, 'SVVV/RG/27276', 'CSE', 'CSE-BD', 'CSE-CMC', 'IT', 'CCE'),
(122, 'SVVV7E6XI', 'CSE', 'CSE', 'CSE', 'CSE', 'CSE'),
(124, 'SVVV/RG/27276BMT', 'CSE', 'CSE-CC', 'IT', 'ICT', 'IT-CF'),
(125, 'SVVVXQGFY', 'CSE', 'CSE', 'CSE', 'CSE', 'CSE'),
(126, 'SVVV7E6XI BMT', 'CSE', 'CSE-CMC', 'CSE-BD', 'CSE', 'CSE'),
(128, 'SVVVXQGFYBMT', 'CSE', 'CSE', 'CSE', 'CSE', 'CSE'),
(129, 'SVVV7E6XI BMB', 'CSE', 'CSE', 'CSE', 'CSE', 'CSE'),
(130, 'SVVVXQGFYBMB', 'CSE', 'CSE', 'CSE', 'CSE', 'CSE'),
(131, 'SVVVMMBJV', 'IT-CF', 'CSE-CC', 'IT-CF', 'IT-CF', 'IT-CF'),
(132, 'SVVVMMBJVBMB', 'CSE-CMC', 'CSE-BD', 'IT', 'CSE-BD', 'CSE-CMC'),
(133, 'SVVVT3NAC', 'CSE', 'IT', 'CSE-CMC', 'CSE-BD', 'CCE'),
(134, 'SVVVT3NACBMT', 'CSE', 'IT', 'CSE-CC', 'ICT', 'IT-CF'),
(135, 'SVVVOLZNV', 'CSE', 'IT', 'CSE-BD', 'CSE-CMC', 'CCE'),
(136, 'SVVVT3NACBMB', 'CSE', 'CSE', 'CSE', 'CSE', 'IT'),
(137, 'SVVVLOZNVBMT', 'CSE', 'IT', 'CSE-CC', 'IT-CF', 'ICT'),
(138, 'SVVVOLZNVBMB', 'CSE', 'CSE', 'CSE', 'IT', 'IT'),
(139, 'SVVVOLZNVBMT', 'CSE', 'IT', 'CSE-CC', 'IT-CF', 'ICT'),
(140, 'SVVVYBAZL', 'CSE-BD', 'CSE-CMC', 'CSE', 'IT', 'IT'),
(141, 'SVVVEPTV1', 'CSE', 'IT', 'CSE-BD', 'CSE-CMC', 'CCE'),
(142, 'SVVVYBAZLBMT', 'CSE-CC', 'CSE', 'IT', 'CSE-CC', 'CSE'),
(146, 'SVVVMTCGC', 'CSE', 'IT', 'CCE', 'CSE-BD', 'CSE-CMC'),
(148, 'SVVVPMEGK', 'CSE', 'CSE', 'CSE', 'CSE', 'CSE'),
(149, 'SVVV14U3K', 'CSE', 'CSE', 'CSE', 'CSE', 'CSE'),
(150, 'SVVVEPTV1BMT', 'CSE', 'IT', 'CSE-CC', 'IT-CF', 'IT-CF'),
(151, 'SVVVPMEGKBMT', 'CSE', 'CSE', 'CSE', 'CSE', 'CSE'),
(152, 'SVVVYBAZLBBMT', 'CSE-BD', 'CSE-CMC', 'CSE', 'IT', 'IT'),
(153, 'SVVVEPTV1BMB', 'CSE', 'IT', 'CSE', 'IT', 'CSE'),
(154, 'SVVVJHISF', 'CSE', 'CCE', 'IT', 'CSE-BD', 'CCE'),
(155, 'SVVVR3CJR', 'CSE-CMC', 'CSE', 'IT', 'CSE-BD', 'CCE'),
(156, 'SVVVYBAZLBMMT', 'CSE-CC', 'CSE', 'IT', 'IT', 'IT'),
(157, 'SVVVPMEGKBMB', 'CSE', 'CSE', 'CSE', 'CSE', 'CSE'),
(158, 'SVVVOIWT3', 'CSE', 'IT', 'CSE-BD', 'CSE-CMC', 'CCE'),
(159, 'SVVVMTCGCBMT', 'CSE', 'IT', 'CSE-CC', 'ICT', 'IT-CF'),
(161, 'SVVVYBAZLBMTT', 'CSE', 'CSE', 'CSE', 'IT', 'IT'),
(162, 'SVVVMTCGCBMB', 'CSE', 'IT', 'CSE', 'IT', 'CSE'),
(164, 'SVVVOIWT3BMT', 'CSE', 'IT', 'CSE-CC', 'IT-CF', 'ICT'),
(165, 'SVVVR3CJRBMT', 'IT-CF', 'CSE', 'CSE-CC', 'ICT', 'IT'),
(166, 'SVVVJHISFBMT', 'CSE', 'CSE-CC', 'IT', 'IT-CF', 'IT-CF'),
(167, 'SVVV3XMTZ', 'CSE', 'CSE', 'CSE', 'CSE', 'CSE'),
(169, 'SVVVOIWT3BMB', 'CSE', 'IT', 'CSE', 'IT', 'CSE'),
(171, 'SVVVJHISFBMB', 'CSE', 'IT', 'CSE', 'IT', 'CSE'),
(174, 'SVVVR3CJRBMB', 'IT', 'CSE', 'CSE', 'CSE', 'CSE'),
(176, 'SVVVGXIEL', 'CSE', 'CSE-BD', 'CSE-CMC', 'IT', 'CCE'),
(178, 'SVVVR9KTY', 'CSE', 'CSE', 'CSE', 'CSE', 'CSE'),
(179, 'SVVV3XMTZBMT', 'CSE', 'IT', 'CSE', 'CSE', 'IT'),
(181, 'SVVV14U3KBMT', 'CSE', 'CSE', 'CSE', 'IT', 'IT'),
(182, 'SVVVGXIELBMT', 'CSE', 'CSE-CC', 'IT', 'IT-CF', 'ICT'),
(183, 'SVVVPJWVP', 'CSE', 'CSE', 'CSE', 'CSE', 'IT'),
(184, 'SVVVR9KTYBMT', 'CSE', 'CSE', 'CSE', 'CSE', 'CSE'),
(185, 'SVVV14U3KBMB', 'CSE', 'CSE', 'CSE', 'CSE', 'IT'),
(188, 'SVVV3XMTZBMB', 'CSE', 'IT', 'CSE', 'CSE', 'IT'),
(191, 'SVVVGXIELBMB', 'CSE', 'CSE', 'CSE', 'CSE', 'CSE'),
(192, 'SVVVN9KJ8', 'CSE', 'IT', 'CSE-CMC', 'CSE-BD', 'CCE'),
(193, 'SVVVR9KTYBMB', 'CSE', 'CSE', 'CSE', 'CSE', 'CSE'),
(194, 'SVVVCOD4S', 'CSE', 'IT', 'CSE-BD', 'CSE-BD', 'CCE'),
(195, 'SVVVBLYB8BMT', 'CSE', 'IT', 'CSE-CC', 'IT-CF', 'CSE'),
(196, 'SVVVPJWVPBMT', 'CSE', 'CSE', 'CSE', 'CSE', 'IT'),
(197, 'SVVVBLYB8BMB', 'CSE', 'IT', 'CSE', 'IT', 'CSE'),
(198, 'SVVVN9KJ8BMT', 'CSE', 'IT', 'ICT', 'CSE-CC', 'IT-CF'),
(199, 'SVVVPJWVPBMB', 'CSE', 'IT', 'CSE', 'IT', 'CSE'),
(202, 'SVVVN9KJ8BMB', 'CSE', 'IT', 'CSE', 'IT', 'CSE'),
(203, 'SVVV3XMTZBT', 'CSE', 'IT', 'CSE', 'CSE', 'IT'),
(204, 'SVVVYOMLN', 'CSE', 'CSE', 'CSE', 'CSE', 'IT'),
(205, 'SVVVYOMLNBMT', 'CSE', 'CSE', 'CSE', 'CSE', 'IT'),
(206, 'SVVVYOMLNBMB', 'CSE', 'CSE', 'CSE', 'CSE', 'IT'),
(207, 'SVVV/RG/27289', 'CSE', 'CSE-BD', 'CSE-CMC', 'IT', 'CSE'),
(208, 'SVVVEFED1BMT', 'CSE', 'CSE-CC', 'ICT', 'IT', 'IT-CF'),
(209, 'SVVVEFED1BMB', 'CSE', 'IT', 'CSE', 'CSE', 'CSE'),
(210, 'SVVVFAAED', 'CSE', 'IT', 'CSE-CMC', 'CSE-BD', 'CCE'),
(211, 'SVVVLYT7L', 'CSE', 'IT', 'CSE-BD', 'CSE-CMC', 'CCE'),
(212, 'SVVVFAAEDBMT', 'CSE', 'IT', 'CSE-CC', 'ICT', 'IT-CF'),
(216, 'SVVVWQ8PA', 'CSE', 'IT', 'CSE-CMC', 'CCE', 'CSE-BD'),
(217, 'SVVVFAAEDBMB', 'CSE', 'IT', 'CSE', 'IT', 'CSE'),
(218, 'SVVVHPIID', 'CSE-BD', 'CSE-CMC', 'IT', 'CSE', 'CSE'),
(221, 'SVVVLYT7LBMT', 'CSE', 'IT', 'CSE-CC', 'IT-CF', 'ICT'),
(222, 'SVVVHPIIDBMT', 'CSE', 'CSE-CC', 'CSE', 'CSE-CC', 'CSE'),
(223, 'SVVVHPIIDBMB', 'CSE', 'CSE', 'CSE', 'CSE', 'IT'),
(224, 'SVVVWQ8PABMT', 'CSE', 'IT', 'CSE-CMC', 'CSE-BD', 'CCE'),
(225, 'SVVVWQ8PABMB', 'CSE', 'IT', 'CSE', 'IT', 'CSE'),
(226, 'SVVVUI1DJ', 'CSE', 'CSE-BD', 'CSE-CMC', 'CCE', 'IT'),
(227, 'SVVVLYT7LBMB', 'CSE', 'IT', 'CSE', 'IT', 'CSE'),
(229, 'SVVV/RG/27263', 'CSE', 'IT', 'CSE', 'IT', 'CSE'),
(230, 'SVVVUI1DJBMT', 'CSE', 'CSE-BD', 'CSE-CMC', 'CCE', 'IT'),
(231, 'SVVVUI1DJBMB', 'CSE', 'IT', 'CSE', 'IT', 'CSE'),
(232, 'SVVVYFLVO', 'CSE', 'CSE', 'CSE', 'IT', 'IT'),
(233, 'SVVVA2NI8', 'CSE', 'IT', 'CSE-BD', 'CSE-CMC', 'CCE'),
(234, 'SVVVA2NI8BMT', 'CSE', 'IT', 'CSE-CC', 'ICT', 'IT-CF'),
(235, 'SVVVA2NI8BMB', 'CSE', 'IT', 'CSE', 'CSE', 'IT'),
(237, 'SVVVDLIEL', 'CSE', 'CSE', 'IT', 'CSE-BD', 'CCE'),
(238, 'SVVVVJ5C3BMT', 'CSE', 'IT', 'CSE-CC', 'ICT', 'IT-CF'),
(239, 'SVVVDLIELBMT', 'CSE', 'CSE', 'IT', 'IT-CF', 'ICT'),
(240, 'SVVVDLIELBMB', 'CSE', 'CSE', 'IT', 'CSE', 'IT'),
(242, 'SVVVVJ5C3BMB', 'CSE', 'CSE', 'CSE', 'CSE', 'CSE'),
(243, 'SVVVYM3FH', 'CSE', 'IT', 'CCE', 'IT', 'IT'),
(244, 'SVVVYM3FHBMT', 'CSE', 'IT', 'IT', 'IT', 'ICT'),
(245, 'SVVVYM3FHBMB', 'CSE', 'IT', 'IT', 'IT', 'IT'),
(246, 'SVVV/RG/27307', 'CSE', 'CSE', 'CSE', 'CSE', 'CSE');

-- --------------------------------------------------------

--
-- Table structure for table `vacancy_jee`
--

CREATE TABLE IF NOT EXISTS `vacancy_jee` (
  `program` varchar(50) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `counter` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vacancy_jee`
--

INSERT INTO `vacancy_jee` (`program`, `branch`, `counter`) VALUES
('B.Tech.', 'CCE', 30),
('B.Tech.', 'CSE', 20),
('B.Tech. + M.Tech.', 'CSE', 22),
('B.Tech. + MBA', 'CSE', 25),
('B.Tech.', 'CSE-BD', 27),
('B.Tech. + M.Tech.', 'CSE-CC', 30),
('B.Tech.', 'CSE-CMC', 29),
('B.Tech. + M.Tech.', 'ICT', 30),
('B.Tech.', 'IT', 30),
('B.Tech. + M.Tech.', 'IT', 29),
('B.Tech. + MBA', 'IT', 29),
('B.Tech. + M.Tech.', 'IT-CF', 30);

-- --------------------------------------------------------

--
-- Table structure for table `vacancy_svet`
--

CREATE TABLE IF NOT EXISTS `vacancy_svet` (
  `program` varchar(50) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `counter` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vacancy_svet`
--

INSERT INTO `vacancy_svet` (`program`, `branch`, `counter`) VALUES
('B.Tech.', 'CCE', 30),
('B.Tech.', 'CSE', 3),
('B.Tech. + M.Tech.', 'CSE', 13),
('B.Tech. + MBA', 'CSE', 14),
('B.Tech.', 'CSE-BD', 26),
('B.Tech. + M.Tech.', 'CSE-CC', 28),
('B.Tech.', 'CSE-CMC', 27),
('B.Tech. + M.Tech.', 'ICT', 30),
('B.Tech.', 'IT', 29),
('B.Tech. + M.Tech.', 'IT', 28),
('B.Tech. + MBA', 'IT', 27),
('B.Tech. + M.Tech.', 'IT-CF', 29);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allotment_jee`
--
ALTER TABLE `allotment_jee`
  ADD PRIMARY KEY (`applicationId`);

--
-- Indexes for table `allotment_svet`
--
ALTER TABLE `allotment_svet`
  ADD PRIMARY KEY (`applicationId`);

--
-- Indexes for table `candidateInfo`
--
ALTER TABLE `candidateInfo`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `applicationId` (`applicationId`);

--
-- Indexes for table `preferences`
--
ALTER TABLE `preferences`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `applicationId` (`applicationId`);

--
-- Indexes for table `vacancy_jee`
--
ALTER TABLE `vacancy_jee`
  ADD PRIMARY KEY (`branch`,`program`);

--
-- Indexes for table `vacancy_svet`
--
ALTER TABLE `vacancy_svet`
  ADD PRIMARY KEY (`branch`,`program`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidateInfo`
--
ALTER TABLE `candidateInfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=247;
--
-- AUTO_INCREMENT for table `preferences`
--
ALTER TABLE `preferences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=247;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
