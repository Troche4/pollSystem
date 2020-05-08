-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2018 at 07:35 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

DROP TABLE IF EXISTS `tbpositions`;
DROP TABLE IF EXISTS `tblvotes`;
DROP TABLE IF EXISTS `tbcandidates`;
DROP TABLE IF EXISTS `tbmembers`;
DROP TABLE IF EXISTS `tbadministrators`;
DROP TABLE IF EXISTS `tbmanages`;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
USE Voting;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poll`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbpositions`
--

CREATE TABLE `tbpositions` (
  `position_id` int(5) NOT NULL,
  `position_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbpositions`
--

INSERT INTO `tbpositions` (`position_id`, `position_name`) VALUES
(1, 'Chairperson'),
(2, 'Secretary'),
(5, 'Vice-Secretary'),
(7, 'Organizing-Secretary'),
(8, 'Treasurer'),
(9, 'Vice-Treasurer'),
(10, 'Vice-Chairperson'),
(11, 'HOD');

--
-- Indexes for dumped tables
--

--
-- Table structure for table `tbadministrators`
--

CREATE TABLE `tbadministrators` (
  `admin_id` int(5) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbadministrators`
--

INSERT INTO `tbadministrators` (`admin_id`, `first_name`, `last_name`, `email`, `password`) VALUES
(1, 'Kimanii', 'Kahiga', 'admin@example.com', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'admin', 'admin', 'admin@example.com', 'admin'),
(3, '', '', '', '29e457082db729fa1059d4294ede3909'),
(4, 'AJAY', 'kumae', 'ajay@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `tbcandidates`
--

CREATE TABLE `tbcandidates` (
  `candidate_id` int(5) NOT NULL,
  `candidate_name` varchar(45) NOT NULL,
  `candidate_email` varchar(45) NOT NULL,
  `candidate_password` varchar(100) NOT NULL,
  `candidate_party` varchar(45) DEFAULT 'Independent',
  `candidate_speech` varchar(250) DEFAULT ' ',  
  `candidate_cvotes` int(11) NOT NULL DEFAULT 0,
  `candidate_positionId` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbcandidates`
--

INSERT INTO `tbcandidates` (`candidate_id`, `candidate_name`, `candidate_email`, `candidate_password`, `candidate_party`, `candidate_speech`, `candidate_cvotes`, `candidate_positionId`) VALUES
(3, 'Luis Nani', 'lnani@gmail.com', 'passwd', 'Democrat', 'I want to change health care policy.', 11, 1),
(4, 'Wayne Rooney', 'rooney@aol.net', 'strongPassword', 'Republican', 'My biggest priority is climate change.', 20, 1),
(6, 'Thomas Vaemalen', 'tommyV@comcast.net', 'weakPass', 'Democrat', 'Vote for me! Please?', 2, 5),
(8, 'Michael Walters', 'michaelwalters@gmail.com', 'asdf', 'Democrat', 'I am an awesome choice for Secretary.', 9, 2),
(9, 'Roberto Mancini', 'manciniR@hotmail.com', 'pwd', 'Green Party', 'I have been secretary before and can do it again!', 46, 2),
(10, 'Alex Ferguson', 'alexfergus@gmail.com', 'PaSsWoRd', 'Democrat', 'I want to try out a new position.',0, 8),
(11, 'Howard Web', 'howardW@aol.net', 'howarddd', 'Republican', 'I just got my finance degree and I am ready for the job.',3,9),
(12, 'Richard Santana', 'richSantana@outlook.com', 'santanaRichard', 'Libertarian', 'I think the treasury needs a fresh face.',0,9),
(13, 'Chemical Reaction', 'oddTestCase@gmail.com', 'chemReaxion', 'Chemistry Party', 'An interesting addition to our testing data.', 0,8),
(14, 'Danny Welbeck', 'danielWelback@gmail,com', 'dwel22', 'Democrat', 'I want to end corruption.', 0, 5),
(15, 'Paul Allen', 'pallen@outlook.com', 'paulyAllen', 'Republican', 'I am the nations most organized person.', 4, 7),
(16, 'Bill Gates', 'bill@microsoft.com', 'billgate$', 'Moderate', 'I ran Microsoft and I can run a government too.', 4, 7),
(19, 'abhishek', 'email@outlook.com', 'abish', 'Democrat', 'Please cast your vote for me!', 7, 11),
(20, 'Aman', 'someGuy@gmail.com', 'amannnn', 'Republican', 'I forgot to write a speech. Oops.', 2, 11);

-- --------------------------------------------------------

--
-- Table structure for table `tblvotes`
--

CREATE TABLE `tblvotes` (
  `id` int(11) NOT NULL,
  `voter_id` int(11) NOT NULL,
  `positionId` int(5) NOT NULL,
  `candidateId` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvotes`
--

INSERT INTO `tblvotes` (`id`, `voter_id`, `positionId`, `candidateId`) VALUES
(1, 5, 'Chairperson', 3),
(2, 5, 'Vice-Secretary', 6),
(3, 5, 'Secretary', 8),
(4, 5, 'Vice-Treasurer', 11),
(5, 5, 'HOD', 20);

-- --------------------------------------------------------

--
-- Table structure for table `tbmembers`
--

CREATE TABLE `tbmembers` (
  `member_id` int(5) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbmembers`
--

INSERT INTO `tbmembers` (`member_id`, `first_name`, `last_name`, `email`, `password`) VALUES
(1, 'Kimani', 'Kahiga', 'kahiga@gmail.com', '547da2b03f947606f1d06a8dec093e64'),
(2, 'MacDonald', 'Ngowi', 'mcbcrue08@gmail.com', '14b876400a7ae986df9b17fbaffb9eca'),
(3, 'test', 'testt', 'test@example.com', '098f6bcd4621d373cade4e832627b4f6'),
(5, 'Ajay', 'Chaubey', 'ajaychaubey95@gmail.com', '202cb962ac59075b964b07152d234b70'),
(6, 'anil', 'k', 'anil@gmail.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table 'manages'
--

CREATE TABLE `tbmanages` (
  `admin_id` int(5) NOT NULL,
  `position_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbmanages`
--

INSERT INTO `tbmanages` (`admin_id`, `position_id`) VALUES
(1,1),
(4,2),
(1,5),
(1,7),
(1,8),
(1,9),
(1,10),
(1,11);

-- --------------------------------------------------------

--
-- Indexes for table `tbmanages`
--

ALTER TABLE `tbmanages`
  ADD PRIMARY KEY (`position_id`),
  ADD KEY (`admin_id`);

--
-- Indexes for table `tbadministrators`
--
ALTER TABLE `tbadministrators`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbcandidates`
--
ALTER TABLE `tbcandidates`
  ADD PRIMARY KEY (`candidate_id`),
  ADD KEY `candidate_positionId` (`candidate_positionId`);

--
-- Indexes for table `tblvotes`
--
ALTER TABLE `tblvotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `voter_id` (`voter_id`),
  ADD KEY `candidateId` (`candidateId`),
  ADD KEY `positionId` (`positionId`);

--
-- Indexes for table `tbmembers`
--
ALTER TABLE `tbmembers`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `tbpositions`
--
ALTER TABLE `tbpositions`
  ADD PRIMARY KEY (`position_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbadministrators`
--

/*
ALTER TABLE `tbadministrators`
  MODIFY `admin_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbcandidates`
--
ALTER TABLE `tbcandidates`
  MODIFY `candidate_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tblvotes`
--
ALTER TABLE `tblvotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbmembers`
--
ALTER TABLE `tbmembers`
  MODIFY `member_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbpositions`
--
ALTER TABLE `tbpositions`
  MODIFY `position_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--
*/
--
-- Constraints for table `tblvotes`
--
ALTER TABLE `tblvotes`
  ADD CONSTRAINT `votes_members` FOREIGN KEY (`voter_id`) REFERENCES `tbmembers` (`member_id`),
  ADD CONSTRAINT `votes_candidate` FOREIGN KEY (`candidateId`) REFERENCES `tbcandidates` (`candidate_id`),
  ADD CONSTRAINT `votes_positions` FOREIGN KEY (`positionId`) REFERENCES `tbpositions` (`position_id`);
COMMIT;

--
-- Constraints for table `tbcandidates`
--
ALTER TABLE `tbcandidates`
  ADD CONSTRAINT `candidates_positions` FOREIGN KEY (`candidate_positionId`) REFERENCES `tbpositions` (`position_id`);
COMMIT;

--
-- Constraints for table `tbmanages`
--
ALTER TABLE `tbmanages`
  ADD CONSTRAINT `manages_positions` FOREIGN KEY (`position_id`) REFERENCES `tbpositions` (`position_id`),
  ADD CONSTRAINT `manages_admins` FOREIGN KEY (`admin_id`) REFERENCES `tbadmins` (`admin_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
