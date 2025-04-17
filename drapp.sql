-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2022 at 10:49 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `drapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_country` text NOT NULL,
  `admin_job` varchar(255) NOT NULL,
  `admin_about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_contact`, `admin_country`, `admin_job`, `admin_about`) VALUES
(1, 'Administrator', 'admin@gmail.com', 'Password@123', 'user-profile-min.png', '9997778880', 'India', 'Software Developer', ' Student ');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `bank_id` int(11) NOT NULL,
  `bank_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`bank_id`, `bank_name`) VALUES
(1, 'Bank of Baroda'),
(2, 'Bank of India'),
(3, 'Bank of Maharashtra'),
(4, 'Canara Bank'),
(5, 'Central Bank of India'),
(6, 'Indian Bank'),
(7, 'Indian Overseas Bank'),
(8, 'Punjab and Sind Bank'),
(9, 'Punjab National Bank'),
(10, 'State Bank of India'),
(11, 'UCO Bank'),
(12, 'Union Bank of India');

-- --------------------------------------------------------

--
-- Table structure for table `chatbot`
--

CREATE TABLE `chatbot` (
  `id` int(11) NOT NULL,
  `queries` varchar(300) NOT NULL,
  `replies` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chatbot`
--

INSERT INTO `chatbot` (`id`, `queries`, `replies`) VALUES
(1, 'What is Cataracts ?', 'A cataract is a clouding of the normally clear lens of the eye.'),
(2, 'Hii', 'Hello !!'),
(7, 'Good Morning', 'Good Morning Sir/Madam'),
(8, 'What is COVID-19 ?', 'Coronavirus disease (COVID-19) is an infectious disease caused by the SARS-CoV-2 virus.'),
(9, 'What are the symptoms of covid-19 ?', 'Most common symptoms: fever cough tiredness loss of taste or smell'),
(10, 'What is malaria ?', 'Malaria is a life-threatening disease caused by parasites that are transmitted to people through the bites of infected female Anopheles mosquitoes.'),
(11, 'Symptoms of malaria ?', 'Symptoms of malaria include fever and flu-like illness, including shaking chills, headache, muscle aches, and tiredness. Nausea, vomiting, and diarrhea may also occur. Malaria may cause anemia and jaundice (yellow coloring of the skin and eyes) because of the loss of red blood cells.'),
(12, 'Can malaria go away without treatment?', 'With proper treatment, symptoms of malaria usually go away quickly, with a cure within two weeks. Without proper treatment, malaria episodes (fever, chills, sweating) can return periodically over a period of years. After repeated exposure, patients will become partially immune and develop milder dis'),
(13, 'what to do if I have covid-19 ?', 'Isolate yourself in a well ventilated room. Use a triple layer medical mask, discard mask after 8 hours of use or earlier if they become wet or visibly soiled. In the event of a caregiver entering the room, both caregiver and patient may consider using N 95 mask. Mask should be discarded only after '),
(14, 'What is your name ?', 'My name is Medibot.'),
(15, 'who are you ?', 'I am Medibot , i was created by the students of tit,tripura with the intension to help users of this website , thanks for asking .');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `dept_id` int(11) NOT NULL,
  `doctor_slno` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `comment_subject` varchar(250) NOT NULL,
  `comment_text` text NOT NULL,
  `comment_status` int(1) NOT NULL,
  `alert_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`dept_id`, `doctor_slno`, `comment_id`, `comment_subject`, `comment_text`, `comment_status`, `alert_time`) VALUES
(2, 1, 23, 'Mr. Bishal  Debnath', 'asddasddasdasdasdasdasdas', 1, '2022-04-25 00:00:00'),
(2, 1, 24, 'Mr. abc x xyz', 'asd', 1, '2022-04-09 00:00:00'),
(2, 1, 25, 'Mr. joydeep  Saha', 'zzzzzzzzzzzzzzzzzzzzzzzzz', 1, '2022-04-06 00:00:00'),
(2, 1, 26, 'Mr. joydeep  Saha', 'zzzzzzzzzzzzzzzzzzzzzzzzz', 1, '2022-04-09 00:00:00'),
(2, 1, 27, 'Mr. Rajesh Kr Chakraborty', 'aaa ddd vvv ccc', 1, '2022-04-16 00:00:00'),
(2, 1, 28, 'Ms. Tadrishee Debbarma', 'ss', 1, '2022-04-20 00:00:00'),
(2, 1, 29, 'Ms. Tadrishee Debbarma', 'Fever ', 1, '2022-04-20 00:00:00'),
(2, 1, 30, 'Miss Ayana  Ghosh', 'aaa ddd vvv ccc', 1, '2022-05-12 00:00:00'),
(2, 1, 31, 'Miss Ayana  Ghosh', 'aaa ddd vvv ccc', 1, '2022-05-12 00:00:00'),
(2, 1, 32, 'Miss Ayana  Ghosh', 'ff', 1, '2022-05-13 00:00:00'),
(2, 1, 33, 'Miss Ayana  Ghosh', 'aaa ddd vvv ccc', 1, '2022-05-13 00:00:00'),
(2, 1, 34, 'Miss Ayana  Ghosh', 'aaa ddd vvv ccc', 1, '2022-05-14 00:00:00'),
(2, 1, 35, 'Miss Ayana  Ghosh', 'ss', 1, '2022-05-13 00:00:00'),
(2, 1, 36, 'Miss Ayana  Ghosh', 'ff', 1, '2022-05-14 00:00:00'),
(2, 1, 37, 'Miss Ayana  Ghosh', 'aaa ddd vvv ccc', 1, '2022-05-13 00:00:00'),
(2, 1, 38, 'Miss Ayana  Ghosh', 'aaa ddd vvv ccc', 1, '2022-04-02 00:00:00'),
(2, 1, 39, 'Miss Ayana  Ghosh', 'ff', 1, '2022-05-14 00:00:00'),
(2, 1, 40, 'Miss Ayana  Ghosh', 'ff', 1, '2022-05-14 00:00:00'),
(2, 1, 41, 'Miss Ayana  Ghosh', 'aaa ddd vvv ccc', 1, '2022-04-06 00:00:00'),
(2, 1, 42, 'Miss Ayana  Ghosh', 'zzz', 1, '2022-05-14 00:00:00'),
(2, 1, 43, 'Miss Ayana  Ghosh', 'aaa ddd vvv ccc', 1, '2022-04-16 00:00:00'),
(2, 1, 44, 'Miss Ayana  Ghosh', 'aaa ddd vvv ccc', 1, '2022-04-25 00:00:00'),
(2, 1, 45, 'Miss Ayana  Ghosh', 'aaa ddd vvv ccc', 1, '2022-04-23 00:00:00'),
(2, 1, 46, 'Miss Ayana  Ghosh', 'aaa ddd vvv ccc', 1, '2022-04-06 00:00:00'),
(2, 1, 47, 'Miss Ayana  Ghosh', 'aaa ddd vvv ccc', 1, '2022-04-06 00:00:00'),
(2, 1, 48, 'Miss Ayana  Ghosh', 'aaa ddd vvv ccc', 1, '2022-05-14 00:00:00'),
(2, 1, 49, 'Miss Ayana  Ghosh', 'vv', 1, '2022-05-14 00:00:00'),
(2, 1, 50, 'Miss Ayana  Ghosh', 'xx', 1, '2022-04-23 00:00:00'),
(2, 1, 51, 'Miss Ayana  Ghosh', 'ff', 1, '2022-04-16 00:00:00'),
(2, 1, 52, 'Miss Ayana  Ghosh', 'ee', 1, '2022-04-25 00:00:00'),
(2, 1, 53, 'Miss Ayana  Ghosh', 'bb', 1, '2022-04-23 00:00:00'),
(2, 1, 54, 'Miss Ayana  Ghosh', 'dd', 1, '2022-04-16 00:00:00'),
(2, 1, 55, 'Miss Ayana  Ghosh', 'vvv', 1, '2022-05-13 00:00:00'),
(2, 1, 56, 'Miss Ayana  Ghosh', 'ddddddd', 1, '2022-04-09 00:00:00'),
(2, 1, 57, 'Miss Ayana  Ghosh', 'ccc', 1, '2022-04-23 00:00:00'),
(2, 1, 58, 'Miss Ayana  Ghosh', 'nnn', 1, '2022-04-06 00:00:00'),
(2, 1, 59, 'Miss Ayana  Ghosh', 'cc', 1, '2022-04-10 00:00:00'),
(2, 1, 60, 'Miss Ayana  Ghosh', 'hhh', 1, '2022-04-16 00:00:00'),
(2, 1, 61, 'Miss Ayana  Ghosh', 'ggg', 1, '2022-04-23 00:00:00'),
(2, 1, 62, 'Miss Ayana  Ghosh', 'xxx', 1, '2022-05-13 00:00:00'),
(2, 1, 63, 'Miss Ayana  Ghosh', 'aaa ddd vvv ccc', 1, '2022-05-13 00:00:00'),
(2, 1, 64, 'Miss Ayana  Ghosh', 'bbbbbbbbbb', 1, '2022-04-02 00:00:00'),
(2, 1, 65, 'Miss Ayana  Ghosh', 'mmm', 1, '2022-04-09 00:00:00'),
(2, 1, 66, 'Miss Ayana  Ghosh', 'jjjjj', 1, '2022-05-14 00:00:00'),
(2, 1, 67, 'Miss Ayana  Ghosh', 'ff', 1, '2022-05-14 00:00:00'),
(2, 1, 68, 'Miss Ayana  Ghosh', 'aaa ddd vvv ccc', 1, '2022-04-10 00:00:00'),
(2, 1, 69, 'Ms. Tadrishee Debbarma', '', 1, '2022-05-13 00:00:00'),
(2, 1, 70, 'Ms. Tadrishee Debbarma', 'abc', 1, '2022-05-29 00:00:00'),
(2, 1, 71, 'Ms. Tadrishee Debbarma', '', 1, '2022-05-14 00:00:00'),
(2, 1, 72, 'Ms. Tadrishee Debbarma', 'bfb', 1, '2022-04-25 00:00:00'),
(2, 1, 73, 'Ms. Tadrishee Debbarma', 'abc', 1, '2022-05-29 00:00:00'),
(2, 1, 74, 'Ms. Tadrishee Debbarma', '', 1, '2022-04-20 00:00:00'),
(2, 2, 75, 'Miss AYANA  GHOSH', 'Chest Pain', 1, '2022-06-26 00:00:00'),
(2, 2, 76, 'Miss AYANA  GHOSH', 'ABC', 0, '2022-06-27 00:00:00'),
(1, 1, 77, 'Miss AYANA  GHOSH', 'Chest Pain', 1, '2022-06-27 00:00:00'),
(1, 1, 78, 'Mr. ANKAN  DEB', 'Chest Pain', 1, '2022-06-27 00:00:00'),
(2, 1, 79, 'Miss ANUSHKA  BANIK', '', 0, '2022-06-28 00:00:00'),
(1, 1, 80, 'Miss ANUSHKA  BANIK', 'High Blood Pressure', 1, '2022-06-27 00:00:00'),
(2, 1, 81, 'Miss SHRESHTHA  PAL', 'Bone fracture', 0, '2022-06-28 00:00:00'),
(1, 1, 82, 'Mr. BISHAL  DEBNATH', 'Cardiac attack', 1, '2022-06-28 00:00:00'),
(2, 1, 83, 'Miss TAMMANNA  DEBNATH', 'Bone fracture', 0, '2022-06-28 00:00:00'),
(2, 1, 84, 'Miss AYANA  GHOSH', 'zzzzz', 0, '2022-06-28 00:00:00'),
(2, 1, 85, 'Miss AYANA  GHOSH', 'ggg', 0, '2022-06-30 00:00:00'),
(2, 1, 86, 'Miss AYANA  GHOSH', 'www', 0, '2022-06-30 00:00:00'),
(1, 1, 87, 'Miss AYANA  GHOSH', 'Chest Pain', 1, '2022-07-01 00:00:00'),
(1, 1, 88, 'Mr. ANKAN  DEB', 'Cardiac arrest', 1, '2022-07-01 00:00:00'),
(1, 1, 89, 'Miss AYANA  GHOSH', 'Chest Pain', 0, '2022-07-03 00:00:00'),
(1, 1, 90, 'Miss AYANA  GHOSH', 'Chest Pain', 0, '2022-07-04 00:00:00'),
(2, 1, 91, 'Miss AYANA  GHOSH', 'Chest Pain', 0, '2022-06-28 00:00:00'),
(1, 1, 92, 'Miss TAMMANNA  DEBNATH', 'abc', 0, '2022-06-28 00:00:00'),
(2, 1, 93, 'Miss TAMMANNA  DEBNATH', 'abc', 0, '2022-06-28 00:00:00'),
(1, 1, 94, 'Miss AYANA  GHOSH', 'Chest Pain', 0, '2022-07-11 00:00:00'),
(1, 1, 95, 'Miss TAMMANNA  DEBNATH', 'Shortness of breath', 0, '2022-07-11 00:00:00'),
(1, 1, 96, 'Miss ANUSHKA  BANIK', 'ABC', 0, '2022-07-11 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_wallet`
--

CREATE TABLE `doctor_wallet` (
  `department` int(11) NOT NULL,
  `doctor_slno` int(11) NOT NULL,
  `patient_slno` int(11) NOT NULL,
  `app_date` date NOT NULL,
  `app_sl` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_date` date NOT NULL,
  `cancel_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor_wallet`
--

INSERT INTO `doctor_wallet` (`department`, `doctor_slno`, `patient_slno`, `app_date`, `app_sl`, `amount`, `payment_date`, `cancel_status`) VALUES
(1, 1, 2, '2022-06-27', 1, 300, '2022-06-26', 0),
(1, 1, 3, '2022-06-27', 2, 300, '2022-06-26', 0),
(2, 1, 1, '2022-06-28', 1, 300, '2022-06-26', 0),
(1, 1, 1, '2022-06-27', 3, 300, '2022-06-26', 0),
(2, 1, 5, '2022-06-28', 2, 300, '2022-06-26', 0),
(1, 1, 4, '2022-06-28', 1, 300, '2022-06-26', 0),
(2, 1, 6, '2022-06-28', 3, 300, '2022-06-26', 0),
(2, 1, 2, '2022-06-28', 4, 300, '2022-06-28', 0),
(2, 1, 2, '2022-06-30', 1, 300, '2022-06-28', 0),
(2, 1, 2, '2022-06-30', 2, 300, '2022-06-28', 0),
(1, 1, 2, '2022-07-01', 1, 300, '2022-07-01', 0),
(1, 1, 3, '2022-07-01', 2, 300, '2022-07-01', 0),
(1, 1, 2, '2022-07-03', 1, 300, '2022-07-03', 0),
(1, 1, 2, '2022-07-04', 1, 300, '2022-07-03', 0),
(2, 1, 2, '2022-06-28', 5, 300, '2022-07-08', 0),
(1, 1, 6, '2022-06-28', 2, 300, '2022-07-08', 0),
(2, 1, 6, '2022-06-28', 6, 300, '2022-07-08', 0),
(1, 1, 2, '2022-07-11', 1, 300, '2022-07-09', 0),
(1, 1, 6, '2022-07-11', 2, 300, '2022-07-09', 0),
(1, 1, 1, '2022-07-11', 3, 300, '2022-07-09', 0);

-- --------------------------------------------------------

--
-- Table structure for table `doc_department`
--

CREATE TABLE `doc_department` (
  `dprt_id` int(11) NOT NULL,
  `dprt_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doc_department`
--

INSERT INTO `doc_department` (`dprt_id`, `dprt_name`) VALUES
(1, 'Cardiology'),
(2, 'Orthopaedic'),
(3, 'Neurology'),
(4, 'Pediatrics'),
(5, 'Gynaecology'),
(6, 'ENT(Otolaryngology)'),
(7, 'Dental'),
(8, 'Oncology'),
(9, 'Anatomy'),
(10, 'Dermatology'),
(11, 'Nephrology'),
(12, 'Gastroenerology'),
(13, 'Psychiatric'),
(14, 'Eye (Ophthalmology)'),
(15, 'Anesthesiology'),
(16, 'Rheumatology'),
(17, 'Endocrinology'),
(18, 'Medicine');

-- --------------------------------------------------------

--
-- Table structure for table `lab_book_report`
--

CREATE TABLE `lab_book_report` (
  `slno` int(11) DEFAULT NULL,
  `lb_slno` int(11) NOT NULL,
  `pt_slno` int(11) NOT NULL,
  `book_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lab_book_report`
--

INSERT INTO `lab_book_report` (`slno`, `lb_slno`, `pt_slno`, `book_date`) VALUES
(1, 1, 2, '2022-06-30'),
(2, 3, 2, '2022-06-30'),
(3, 1, 1, '2022-06-30'),
(4, 2, 2, '2022-07-09');

-- --------------------------------------------------------

--
-- Table structure for table `lb_report`
--

CREATE TABLE `lb_report` (
  `slno` int(11) DEFAULT NULL,
  `lb_slno` int(11) NOT NULL,
  `pt_slno` int(11) NOT NULL,
  `report` varchar(100) NOT NULL,
  `upload_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lb_report`
--

INSERT INTO `lb_report` (`slno`, `lb_slno`, `pt_slno`, `report`, `upload_date`) VALUES
(1, 1, 2, 'lab_img/report_1.jpeg', '2022-06-30'),
(2, 1, 1, 'lab_img/report2.jpg', '2022-07-02');

-- --------------------------------------------------------

--
-- Table structure for table `patient_app_details`
--

CREATE TABLE `patient_app_details` (
  `patient_slno` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `doctor_slno` int(11) NOT NULL,
  `app_sl` int(11) NOT NULL,
  `app_time` time NOT NULL,
  `app_date` date NOT NULL,
  `payment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_app_details`
--

INSERT INTO `patient_app_details` (`patient_slno`, `dept_id`, `doctor_slno`, `app_sl`, `app_time`, `app_date`, `payment_date`) VALUES
(2, 1, 1, 1, '07:00:00', '2022-06-27', '2022-06-26'),
(3, 1, 1, 2, '07:10:00', '2022-06-27', '2022-06-26'),
(1, 2, 1, 1, '17:00:00', '2022-06-28', '2022-06-26'),
(1, 1, 1, 3, '07:20:00', '2022-06-27', '2022-06-26'),
(5, 2, 1, 2, '17:10:00', '2022-06-28', '2022-06-26'),
(4, 1, 1, 1, '18:00:00', '2022-06-28', '2022-06-26'),
(6, 2, 1, 3, '17:20:00', '2022-06-28', '2022-06-26'),
(2, 2, 1, 4, '17:30:00', '2022-06-28', '2022-06-28'),
(2, 2, 1, 1, '17:00:00', '2022-06-30', '2022-06-28'),
(2, 2, 1, 2, '17:10:00', '2022-06-30', '2022-06-28'),
(2, 1, 1, 1, '10:00:00', '2022-07-01', '2022-07-01'),
(3, 1, 1, 2, '10:10:00', '2022-07-01', '2022-07-01'),
(2, 1, 1, 1, '12:00:00', '2022-07-03', '2022-07-03'),
(2, 1, 1, 1, '10:00:00', '2022-07-04', '2022-07-03'),
(2, 2, 1, 5, '17:40:00', '2022-06-28', '2022-07-08'),
(6, 1, 1, 2, '18:10:00', '2022-06-28', '2022-07-08'),
(6, 2, 1, 6, '17:50:00', '2022-06-28', '2022-07-08'),
(2, 1, 1, 1, '10:00:00', '2022-07-11', '2022-07-09'),
(6, 1, 1, 2, '10:10:00', '2022-07-11', '2022-07-09'),
(1, 1, 1, 3, '10:20:00', '2022-07-11', '2022-07-09');

-- --------------------------------------------------------

--
-- Table structure for table `patient_wallet`
--

CREATE TABLE `patient_wallet` (
  `patient_slno` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `addmoneydate` date NOT NULL,
  `remaining_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_wallet`
--

INSERT INTO `patient_wallet` (`patient_slno`, `amount`, `addmoneydate`, `remaining_amount`) VALUES
(1, 5000, '2022-06-26', 4100),
(2, 2000, '2022-06-26', -700),
(3, 4000, '2022-06-26', 3400),
(4, 1000, '2022-06-26', 700),
(5, 30000, '2022-06-26', 29700),
(6, 3000, '2022-06-26', 1800);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `doctor_id` varchar(100) DEFAULT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `doctor_id`, `rating`) VALUES
(1, 'Bishal Debnath', 3),
(2, 'Ayana Ghosh', 5),
(3, 'Anuska Banik', 3),
(4, 'Ankan Deb', 3),
(5, 'Tammanna Debnath', 4),
(6, 'Shreshtha Pal', 4);

-- --------------------------------------------------------

--
-- Table structure for table `schedule_time`
--

CREATE TABLE `schedule_time` (
  `slno` int(11) NOT NULL,
  `department` int(11) NOT NULL,
  `doctor_slno` int(11) NOT NULL,
  `app_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `total_app` int(10) NOT NULL,
  `remaining_app` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedule_time`
--

INSERT INTO `schedule_time` (`slno`, `department`, `doctor_slno`, `app_date`, `start_time`, `end_time`, `total_app`, `remaining_app`) VALUES
(1, 1, 1, '2022-06-27', '07:00:00', '10:00:00', 18, 15),
(2, 1, 1, '2022-06-28', '18:00:00', '21:00:00', 18, 16),
(3, 1, 1, '2022-06-29', '10:30:00', '12:30:00', 12, 12),
(6, 1, 1, '2022-07-01', '10:00:00', '13:30:00', 21, 19),
(7, 1, 1, '2022-07-03', '12:00:00', '15:00:00', 18, 17),
(9, 1, 1, '2022-07-11', '10:00:00', '12:00:00', 12, 9),
(4, 2, 1, '2022-06-28', '17:00:00', '20:00:00', 18, 12),
(5, 2, 1, '2022-06-30', '17:00:00', '20:00:00', 18, 16),
(8, 2, 1, '2022-07-11', '17:00:00', '20:00:00', 18, 18);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ambulance`
--

CREATE TABLE `tbl_ambulance` (
  `ambulance_slno` int(11) NOT NULL,
  `ambulance_type` varchar(50) NOT NULL,
  `ambulanceReg_no` varchar(20) NOT NULL,
  `ambulance_doc` varchar(100) NOT NULL,
  `driver_name` varchar(50) NOT NULL,
  `contact_number` varchar(10) NOT NULL,
  `driving_license` varchar(50) NOT NULL,
  `available` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_ambulance`
--

INSERT INTO `tbl_ambulance` (`ambulance_slno`, `ambulance_type`, `ambulanceReg_no`, `ambulance_doc`, `driver_name`, `contact_number`, `driving_license`, `available`) VALUES
(1, 'Collective', 'TR01-88765', 'doc_img/ambulance_document.jpg', 'Mr. Arjun Sharma', '9436527809', 'doc_img/driving_license.jpeg.jpg', 'YES'),
(2, 'Mobile_ICU', 'TR01-22331', 'doc_img/ambulance_document.jpg', 'Mamtav Singh', '8258844666', 'doc_img/driving_license.jpeg.jpg', 'Will Be Notified'),
(3, 'Hospital_Tent', '123', 'doc_img/ER2.jpg', 'asd', '756575756', 'doc_img/ER2.jpg', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appointment`
--

CREATE TABLE `tbl_appointment` (
  `patient_slno` int(11) NOT NULL,
  `department` int(11) NOT NULL,
  `doctor_slno` int(11) NOT NULL,
  `app_sl` int(11) NOT NULL,
  `app_date` date NOT NULL,
  `app_time` time NOT NULL,
  `payment_date` date NOT NULL,
  `cancel_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE `tbl_district` (
  `state_slno` int(50) NOT NULL,
  `district_slno` int(50) NOT NULL,
  `district_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_district`
--

INSERT INTO `tbl_district` (`state_slno`, `district_slno`, `district_name`) VALUES
(1, 1, 'Anantapur'),
(1, 2, 'Chittoor'),
(1, 3, 'East Godavari'),
(1, 4, 'Guntur'),
(1, 5, 'Krishna'),
(1, 6, 'Kurnool'),
(1, 7, 'Prakasam'),
(1, 8, 'Sri Potti Sriramulu (Nellore)'),
(1, 9, 'Srikakulum'),
(1, 10, 'Visakhapatnam'),
(1, 11, 'Vizianagaram'),
(1, 12, 'West Godavari'),
(1, 13, 'YRS, Kadapa (Cuddapah)'),
(2, 1, 'Anjaw'),
(2, 2, 'Changlang'),
(2, 3, 'Dibang Valley'),
(2, 4, 'East Kameng'),
(2, 5, 'East Siang'),
(2, 6, 'Kamle'),
(2, 7, 'Kra Daadi'),
(2, 8, 'Kurung Kumey'),
(2, 9, 'Lepa Rada'),
(2, 10, 'Lohit'),
(2, 11, 'Longding'),
(2, 12, 'Lower Dibang Valley'),
(2, 13, 'Lower Siang'),
(2, 14, 'Lower Subansiri'),
(2, 15, 'Namsai'),
(2, 16, 'Pakke Kessang'),
(2, 17, 'Papum Pare'),
(2, 18, 'Shi Yomi'),
(2, 19, 'Siang'),
(2, 20, 'Tawang'),
(2, 21, 'Tirap'),
(2, 22, 'Upper Siang'),
(2, 23, 'Upper Subansiri'),
(2, 24, 'West Kameng'),
(2, 25, 'West Siang'),
(3, 1, 'Baksa'),
(3, 2, 'Barpeta'),
(3, 3, 'Biswanath'),
(3, 4, 'Bongaigaon'),
(3, 5, 'Cachar'),
(3, 6, 'Charaideo'),
(3, 7, 'Chirang'),
(3, 8, 'Darrang'),
(3, 9, 'Dhemaji'),
(3, 10, 'Dhubri'),
(3, 11, 'Dibrugarh'),
(3, 12, 'Dima Hasao (North Cachar Hills)'),
(3, 13, 'Goalpara'),
(3, 14, 'Golaghat'),
(3, 15, 'Hailakandi'),
(3, 16, 'Hojai'),
(3, 17, 'Jorhat'),
(3, 18, 'Kamrup'),
(3, 19, 'Kamrup Metropolitan'),
(3, 20, 'Karbi Anglong'),
(3, 21, 'Karimganj'),
(3, 22, 'Kokrajhar'),
(3, 23, 'Lakhimpur'),
(3, 24, 'Majuli'),
(3, 25, 'Morigaon'),
(3, 26, 'Nagaon'),
(3, 27, 'Nalbari'),
(3, 28, 'Sivasagar'),
(3, 29, 'Sonitpur'),
(3, 30, 'South Salamara-Mankachar'),
(3, 31, 'Tinsukia'),
(3, 32, 'Udalguri'),
(3, 33, 'West Karbi Anglong'),
(4, 1, 'Araria'),
(4, 2, 'Arwal'),
(4, 3, 'Aurangabad'),
(4, 4, 'Banka'),
(4, 5, 'Begusarai'),
(4, 6, 'Bhagalpur'),
(4, 7, 'Bhojpur'),
(4, 8, 'Buxar'),
(4, 9, 'Darbhanga'),
(4, 10, 'East Champaran (Motihari)'),
(4, 11, 'Gaya'),
(4, 12, 'Gopalganj'),
(4, 13, 'Jamui'),
(4, 14, 'Jehanabad'),
(4, 15, 'Kaimur (Bhabua)'),
(4, 16, 'Katihar'),
(4, 17, 'Khagaria'),
(4, 18, 'Kishanganj'),
(4, 19, 'Lakhisarai'),
(4, 20, 'Madhepura'),
(4, 21, 'Madhubani'),
(4, 22, 'Munger (Monghyr)'),
(4, 23, 'Muzaffarpur'),
(4, 24, 'Nalanda'),
(4, 25, 'Nawada'),
(4, 26, 'Patna'),
(4, 27, 'Purnia (Purnea)'),
(4, 28, 'Rohtas'),
(4, 29, 'Saharsa'),
(4, 30, 'Samastipur'),
(4, 31, 'Saran'),
(4, 32, 'Sheikhpura'),
(4, 33, 'Sheohar'),
(4, 34, 'Sitamarhi'),
(4, 35, 'Siwan'),
(4, 36, 'Supaul'),
(4, 37, 'Vaishali'),
(4, 38, 'West Champaran'),
(5, 1, 'Balod'),
(5, 2, 'Baloda Bazar'),
(5, 3, 'Balrampur'),
(5, 4, 'Bastar'),
(5, 5, 'Bemetara'),
(5, 6, 'Bijapur'),
(5, 7, 'Bilaspur'),
(5, 8, 'Dantewada (South Bastar)'),
(5, 9, 'Dhamtari'),
(5, 10, 'Durg'),
(5, 11, 'Gariyaband'),
(5, 12, 'Janjgir-Champa'),
(5, 13, 'Jashpur'),
(5, 14, 'Kabirdham (Kawardha)'),
(5, 15, 'Kanker (North Bastar)'),
(5, 16, 'Kondagaon'),
(5, 17, 'Korba'),
(5, 18, 'Korea (Koriya)'),
(5, 19, 'Mahasamund'),
(5, 20, 'Mungeli'),
(5, 21, 'Narayanpur'),
(5, 22, 'Raigarh'),
(5, 23, 'Raipur'),
(5, 24, 'Rajnandgaon'),
(5, 25, 'Sukma'),
(5, 26, 'Surajpur'),
(5, 27, 'Surguja'),
(6, 1, 'North Goa'),
(6, 2, 'South Goa'),
(7, 1, 'Ahmedabad'),
(7, 2, 'Amreli'),
(7, 3, 'Anand'),
(7, 4, 'Aravalli'),
(7, 5, 'Banaskantha (Palanpur)'),
(7, 6, 'Bharuch'),
(7, 7, 'Bhavnagar'),
(7, 8, 'Botad'),
(7, 9, 'Chhota Udepur'),
(7, 10, 'Dahod'),
(7, 11, 'Dangs (Ahwa)'),
(7, 12, 'Devbhoomi Dwarka'),
(7, 13, 'Gandhinagar'),
(7, 14, 'Gir Somnath'),
(7, 15, 'Jamnagar'),
(7, 16, 'Junagadh'),
(7, 17, 'Kachchh'),
(7, 18, 'Kheda (Nadiad)'),
(7, 19, 'Mahisagar'),
(7, 20, 'Mehsana'),
(7, 21, 'Mordi'),
(7, 22, 'Narmada (Rajpipla)'),
(7, 23, 'Navsari'),
(7, 24, 'Panchmahal (Godhra)'),
(7, 25, 'Patan'),
(7, 26, 'Porbandar'),
(7, 27, 'Rajkot'),
(7, 28, 'Sabarkantha (Himmatnagar)'),
(7, 29, 'Surat'),
(7, 30, 'Surendranagar'),
(7, 31, 'Tapi (Vyara)'),
(7, 32, 'Vadodara'),
(7, 33, 'Valsad'),
(8, 1, 'Ambala'),
(8, 2, 'Bhiwani'),
(8, 3, 'Charkhi Dadri'),
(8, 4, 'Faridabad'),
(8, 5, 'Fatehabad'),
(8, 6, 'Gurugram (Gurgaon)'),
(8, 7, 'Hisar'),
(8, 8, 'Jhajjar'),
(8, 9, 'Jind'),
(8, 10, 'Kaithal'),
(8, 11, 'Karnal'),
(8, 12, 'Kurukshetra'),
(8, 13, 'Mahendragarh'),
(8, 14, 'Nuh'),
(8, 15, 'Palwal'),
(8, 16, 'Panchkula'),
(8, 17, 'Panipat'),
(8, 18, 'Rewari'),
(8, 19, 'Rohtak'),
(8, 20, 'Sirsa'),
(8, 21, 'Sonipat'),
(8, 22, 'Yamunanagar'),
(9, 1, 'Bilaspur'),
(9, 2, 'Chamba'),
(9, 3, 'Hamirpur'),
(9, 4, 'Kangra'),
(9, 5, 'Kinnaur'),
(9, 6, 'Kullu'),
(9, 7, 'Lahaul & Spiti'),
(9, 8, 'Mandi'),
(9, 9, 'Shimla'),
(9, 10, 'Sirmaur (Sirmour)'),
(9, 11, 'Solan'),
(9, 12, 'Una'),
(10, 1, 'Bokaro'),
(10, 2, 'Chatra'),
(10, 3, 'Deoghar'),
(10, 4, 'Dhanbad'),
(10, 5, 'Dumka'),
(10, 6, 'East Singhbhum'),
(10, 7, 'Garhwa'),
(10, 8, 'Giridih'),
(10, 9, 'Godda'),
(10, 10, 'Gumla'),
(10, 11, 'Hazaribag'),
(10, 12, 'Jamtara'),
(10, 13, 'Khunti'),
(10, 14, 'Koderma'),
(10, 15, 'Latehar'),
(10, 16, 'Lohardaga'),
(10, 17, 'Pakur'),
(10, 18, 'Palamu'),
(10, 19, 'Ramgarh'),
(10, 20, 'Ranchi'),
(10, 21, 'Sahibganj'),
(10, 22, 'Seraikela-Kharsawan'),
(10, 23, 'Simdega'),
(10, 24, 'West Singhbhum'),
(11, 1, 'Bagalkot'),
(11, 2, 'Ballari (Bellary)'),
(11, 3, 'Belagavi (Belgaum)'),
(11, 4, 'Bengaluru (Bangalore) Rural'),
(11, 5, 'Bengaluru (Bangalore) Urban'),
(11, 6, 'Bidar'),
(11, 7, 'Chamarajanagar'),
(11, 8, 'Chikballapur'),
(11, 9, 'Chikkamagaluru (Chikmagalur)'),
(11, 10, 'Chitradurga'),
(11, 11, 'Dakshina Kannada'),
(11, 12, 'Davangere'),
(11, 13, 'Dharwad'),
(11, 14, 'Gadag'),
(11, 15, 'Hassan'),
(11, 16, 'Haveri'),
(11, 17, 'Kalaburagi (Gulbarga)'),
(11, 18, 'Kodagu'),
(11, 19, 'Kolar'),
(11, 20, 'Koppal'),
(11, 21, 'Mandya'),
(11, 22, 'Mysuru (Mysore)'),
(11, 23, 'Raichur'),
(11, 24, 'Ramanagara'),
(11, 25, 'Shivamogga (Shimoga)'),
(11, 26, 'Tumakuru (Tumkur)'),
(11, 27, 'Udupi'),
(11, 28, 'Uttara Kannada (Karwar)'),
(11, 29, 'Vijayapura (Bijapur)'),
(11, 30, 'Yadgir'),
(12, 1, 'Alappuzha'),
(12, 2, 'Ernakulam'),
(12, 3, 'Idukki'),
(12, 4, 'Kannur'),
(12, 5, 'Kasaragod'),
(12, 6, 'Kollam'),
(12, 7, 'Kottayam'),
(12, 8, 'Kozhikode'),
(12, 9, 'Malappuram'),
(12, 10, 'Palakkad'),
(12, 11, 'Pathanamthitta'),
(12, 12, 'Thiruvananthapuram'),
(12, 13, 'Thrissur'),
(12, 14, 'Wayanad'),
(13, 1, 'Agar Malwa'),
(13, 2, 'Alirajpur'),
(13, 3, 'Anuppur'),
(13, 4, 'Ashoknagar'),
(13, 5, 'Balaghat'),
(13, 6, 'Barwani'),
(13, 7, 'Betul'),
(13, 8, 'Bhind'),
(13, 9, 'Bhopal'),
(13, 10, 'Burhanpur'),
(13, 11, 'Chhatarpur'),
(13, 12, 'Chhindwara'),
(13, 13, 'Damoh'),
(13, 14, 'Datia'),
(13, 15, 'Dewas'),
(13, 16, 'Dhar'),
(13, 17, 'Dindori'),
(13, 18, 'Guna'),
(13, 19, 'Gwalior'),
(13, 20, 'Harda'),
(13, 21, 'Hoshangabad'),
(13, 22, 'Indore'),
(13, 23, 'Jabalpur'),
(13, 24, 'Jhabua'),
(13, 25, 'Katni'),
(13, 26, 'Khandwa'),
(13, 27, 'Khargone'),
(13, 28, 'Mandla'),
(13, 29, 'Mandsaur'),
(13, 30, 'Morena'),
(13, 31, 'Narsinghpur'),
(13, 32, 'Neemuch'),
(13, 33, 'Panna'),
(13, 34, 'Raisen'),
(13, 35, 'Rajgarh'),
(13, 36, 'Ratlam'),
(13, 37, 'Rewa'),
(13, 38, 'Sagar'),
(13, 39, 'Satna'),
(13, 40, 'Sehore'),
(13, 41, 'Seoni'),
(13, 42, 'Shahdol'),
(13, 43, 'Shajapur'),
(13, 44, 'Sheopur'),
(13, 45, 'Shivpuri'),
(13, 46, 'Sidhi'),
(13, 47, 'Singrauli'),
(13, 48, 'Tikam'),
(13, 49, 'Tikamgarh'),
(13, 50, 'Ujjain'),
(13, 51, 'Umaria'),
(13, 52, 'Vidisha'),
(14, 1, 'Ahmednagar'),
(14, 2, 'Akola'),
(14, 3, 'Amravati'),
(14, 4, 'Aurangabad'),
(14, 5, 'Beed'),
(14, 6, 'Bhandara'),
(14, 7, 'Buldhana'),
(14, 8, 'Chandrapur'),
(14, 9, 'Dhule'),
(14, 10, 'Gadchiroii'),
(14, 11, 'Gondia'),
(14, 12, 'Hingoli'),
(14, 13, 'Jalgaon'),
(14, 14, 'Jalna'),
(14, 15, 'Kolhapur'),
(14, 16, 'Latur'),
(14, 17, 'Mumbai City'),
(14, 18, 'Mumbai Suburban'),
(14, 19, 'Nagpur'),
(14, 20, 'Nanded'),
(14, 21, 'Nandurbar'),
(14, 22, 'Nashik'),
(14, 23, 'Osmanabad'),
(14, 24, 'Palghar'),
(14, 25, 'Parbhani'),
(14, 26, 'Pune'),
(14, 27, 'Raigad'),
(14, 28, 'Ratnagiri'),
(14, 29, 'Sangli'),
(14, 30, 'Satara'),
(14, 31, 'Sindhudurg'),
(14, 32, 'Solapur'),
(14, 33, 'Thane'),
(14, 34, 'Wardha'),
(14, 35, 'Washim'),
(14, 36, 'Yavatmal'),
(15, 1, 'Bishnupur'),
(15, 2, 'Chandel'),
(15, 3, 'Churachandpur'),
(15, 4, 'Imphal East'),
(15, 5, 'Imphal West'),
(15, 6, 'Jiribam'),
(15, 7, 'Kakching'),
(15, 8, 'Kamjong'),
(15, 9, 'Kangpokpi'),
(15, 10, 'Noney'),
(15, 11, 'Pherzawl'),
(15, 12, 'Senapati'),
(15, 13, 'Tamenglong'),
(15, 14, 'Tengnoupal'),
(15, 15, 'Thoubal'),
(15, 16, 'Ukhral'),
(16, 1, 'East Garo Hills'),
(16, 2, 'East Jaintia Hills'),
(16, 3, 'East Khasi Hills'),
(16, 4, 'North Garo Hills'),
(16, 5, 'Ri Bhoi'),
(16, 6, 'South Garo Hills'),
(16, 7, 'South West Garo Hills'),
(16, 8, 'South West Khasi Hills'),
(16, 9, 'West Garo Hills'),
(16, 10, 'West Jaintia Hills'),
(16, 11, 'West Khasi Hills'),
(17, 1, 'Aizawl'),
(17, 2, 'Champhai'),
(17, 3, 'Kolasib'),
(17, 4, 'Lawngtlai'),
(17, 5, 'Lunglei'),
(17, 6, 'Mamit'),
(17, 7, 'Saiha'),
(17, 8, 'Serchhip'),
(18, 1, 'Dimapur'),
(18, 2, 'Kiphire'),
(18, 3, 'Kohima'),
(18, 4, 'Longleng'),
(18, 5, 'Mokokchung'),
(18, 6, 'Mon'),
(18, 7, 'Peren'),
(18, 8, 'Phek'),
(18, 9, 'Tuensang'),
(18, 10, 'Wokha'),
(18, 11, 'Zunheboto'),
(19, 1, 'Angul'),
(19, 2, 'Balangir'),
(19, 3, 'Balasore'),
(19, 4, 'Bargarh'),
(19, 5, 'Bhadrak'),
(19, 6, 'Boudh'),
(19, 7, 'Cuttack'),
(19, 8, 'Deogarh'),
(19, 9, 'Dhenkanal'),
(19, 10, 'Gajapati'),
(19, 11, 'Ganjam'),
(19, 12, 'Jagatsinghapur'),
(19, 13, 'Jajpur'),
(19, 14, 'Jharsuguda'),
(19, 15, 'Jharsuguda'),
(19, 16, 'Kalahandi'),
(19, 17, 'Kandhamal'),
(19, 18, 'Kendrapara'),
(19, 19, 'Kendujhar (Keonjhar)'),
(19, 20, 'Khordha'),
(19, 21, 'Koraput'),
(19, 22, 'Malkangiri'),
(19, 23, 'Mayurbhanj'),
(19, 24, 'Nabarangpur'),
(19, 25, 'Nayagarh'),
(19, 26, 'Nuapada'),
(19, 27, 'Puri'),
(19, 28, 'Rayagada'),
(19, 29, 'Sambalpur'),
(19, 30, 'Sonepur'),
(19, 31, 'Sundargarh'),
(20, 1, 'Amritsar'),
(20, 2, 'Barnala'),
(20, 3, 'Bathinda'),
(20, 4, 'Faridkot'),
(20, 5, 'Fatehgarh Sahib'),
(20, 6, 'Fazilka'),
(20, 7, 'Ferozepur'),
(20, 8, 'Gurdaspur'),
(20, 9, 'Hoshiarpur'),
(20, 10, 'Jalandhar'),
(20, 11, 'Kapurthala'),
(20, 12, 'Ludhiana'),
(20, 13, 'Mansa'),
(20, 14, 'Moga'),
(20, 15, 'Muktsar'),
(20, 16, 'Nawanshahr (Shahid Bhagat Singh Nagar)'),
(20, 17, 'Pathankot'),
(20, 18, 'Patiala'),
(20, 19, 'Rupnagar'),
(20, 20, 'Sahibzada Ajit Singh Nagar (Mohali)'),
(20, 21, 'Sangrur'),
(20, 22, 'Tarn Taran'),
(21, 1, 'Ajmer'),
(21, 2, 'Alwar'),
(21, 3, 'Banswara'),
(21, 4, 'Baran'),
(21, 5, 'Barmer'),
(21, 6, 'Bharatpur'),
(21, 7, 'Bhilwara'),
(21, 8, 'Bikaner'),
(21, 9, 'Bundi'),
(21, 10, 'Chittorgarh'),
(21, 11, 'Churu'),
(21, 12, 'Dausa'),
(21, 13, 'Dholpur'),
(21, 14, 'Dungarpur'),
(21, 15, 'Hanumangarh'),
(21, 16, 'Jaipur'),
(21, 17, 'Jaisalmer'),
(21, 18, 'Jalore'),
(21, 19, 'Jhalawar'),
(21, 20, 'Jhunjhunu'),
(21, 21, 'Jodhpur'),
(21, 22, 'Karauli'),
(21, 23, 'Kota'),
(21, 24, 'Nagpur'),
(21, 25, 'Pali'),
(21, 26, 'Pratapgarh'),
(21, 27, 'Rajsamand'),
(21, 28, 'Sawai Madhopur'),
(21, 29, 'Sikar'),
(21, 30, 'Sirohi'),
(21, 31, 'Sri Ganganagar'),
(21, 32, 'Tonk'),
(21, 33, 'Udaipur'),
(22, 1, 'East Sikkim'),
(22, 2, 'North Sikkim'),
(22, 3, 'South Sikkim'),
(22, 4, 'West Sikkim'),
(23, 1, 'Ariyalur'),
(23, 2, 'Chengalpattu'),
(23, 3, 'Chennai'),
(23, 4, 'Coimbatore'),
(23, 5, 'Cuddalore'),
(23, 6, 'Dharmapuri'),
(23, 7, 'Dindigul'),
(23, 8, 'Erode'),
(23, 9, 'Kallakurichi'),
(23, 10, 'Kanchipuram'),
(23, 11, 'Kanyakumari'),
(23, 12, 'Karur'),
(23, 13, 'Krishnagiri'),
(23, 14, 'Madurai'),
(23, 15, 'Nagapattinam'),
(23, 16, 'Namakkal'),
(23, 17, 'Nilgiris'),
(23, 18, 'Perambalur'),
(23, 19, 'Pudukkottai'),
(23, 20, 'Ramanathapuram'),
(23, 21, 'Ranipet'),
(23, 22, 'Sivaganga'),
(23, 23, 'Tenkasi'),
(23, 24, 'Thanjavur'),
(23, 25, 'Theni'),
(23, 26, 'Thoothukudi (Tuticorin)'),
(23, 27, 'Tiruchirappalli'),
(23, 28, 'Tirunelveii'),
(23, 29, 'Tirupathur'),
(23, 30, 'Tiruppur'),
(23, 31, 'Tiruvallur'),
(23, 32, 'Tiruvannamalai'),
(23, 33, 'Tiruvarur'),
(23, 34, 'Vellore'),
(23, 35, 'Viluppuram'),
(23, 36, 'Virudhunagar'),
(23, 37, 'Salem'),
(24, 1, 'Adilabad'),
(24, 2, 'Bhadradri Kothagudem'),
(24, 3, 'Hanumakonda'),
(24, 4, 'Hyderabad'),
(24, 5, 'Jagtial'),
(24, 6, 'Jangaon'),
(24, 7, 'Jayashankar Bhoopalpally'),
(24, 8, 'Jogulamba Gadwal'),
(24, 9, 'Kamareddy'),
(24, 10, 'Karimnagar'),
(24, 11, 'Khammam'),
(24, 12, 'Komaram Bheem Asifabad'),
(24, 13, 'Mahabubabad'),
(24, 14, 'Mahabubnagar'),
(24, 15, 'Mancherial'),
(24, 16, 'Medak'),
(24, 17, 'Medchal'),
(24, 18, 'Nagarkurnool'),
(24, 19, 'Nalgonda'),
(24, 20, 'Nirmal'),
(24, 21, 'Nizamadad'),
(24, 22, 'Peddapalli'),
(24, 23, 'Rajanna Sircilla'),
(24, 24, 'Rangareddy'),
(24, 25, 'Sangareddy'),
(24, 26, 'Siddipet'),
(24, 27, 'Suryapet'),
(24, 28, 'Vikarabad'),
(24, 29, 'Wanaparthy'),
(24, 30, 'Warangal (Rural)'),
(24, 31, 'Warangal (Urban)'),
(24, 32, 'Yadadri Bhuvanagiri'),
(24, 33, 'Mugulu'),
(25, 1, 'Dhalai'),
(25, 2, 'Gomati'),
(25, 3, 'Khowai'),
(25, 4, 'North Tripura'),
(25, 5, 'Shipahijala'),
(25, 6, 'South Tripura'),
(25, 7, 'Unakoti'),
(25, 8, 'West Tripura'),
(26, 1, 'Agra'),
(26, 2, 'Aligarh'),
(26, 3, 'Allahabad'),
(26, 4, 'Ambedkar Nagar'),
(26, 5, 'Amethi (Chatrapati Sahuji Mahraj Nagar)'),
(26, 6, 'Amroha (J.P. Nagar)'),
(26, 7, 'Auraiya'),
(26, 8, 'Azamgarh'),
(26, 9, 'Baghpat'),
(26, 10, 'Bahraich'),
(26, 11, 'Ballia'),
(26, 12, 'Balrampur'),
(26, 13, 'Banda'),
(26, 14, 'Barabanki'),
(26, 15, 'Bareilly'),
(26, 16, 'Basti'),
(26, 17, 'Bhadohi'),
(26, 18, 'Bijnor'),
(26, 19, 'Budaun'),
(26, 20, 'Bulandshahr'),
(26, 21, 'Chandauli'),
(26, 22, 'Chitrakoot'),
(26, 23, 'Deoria'),
(26, 24, 'Etah'),
(26, 25, 'Etawah'),
(26, 26, 'Faizabad'),
(26, 27, 'Farrukhabad'),
(26, 28, 'Fatehpur'),
(26, 29, 'Firozabad'),
(26, 30, 'Goutam Buddha Nagar'),
(26, 31, 'Ghaziabad'),
(26, 32, 'Ghazipur'),
(26, 33, 'Gonda'),
(26, 34, 'Gorakhpur'),
(26, 35, 'Hamirpur'),
(26, 36, 'Hapur (Pachsheel Nagar)'),
(26, 37, 'Hardoi'),
(26, 38, 'Hathras'),
(26, 39, 'Jalaun'),
(26, 40, 'Jaunpur'),
(26, 41, 'Jhansi'),
(26, 42, 'Kannauj'),
(26, 43, 'Kanpur Dehat'),
(26, 44, 'Kanpur Nagar'),
(26, 45, 'Kanshiram Nagar (Kasganj)'),
(26, 46, 'Kaushambi'),
(26, 47, 'Kushinagar (Padrauna)'),
(26, 48, 'Lakhimpur - Kheri'),
(26, 49, 'Lalitpur'),
(26, 50, 'Lucknow'),
(26, 51, 'Maharajganj'),
(26, 52, 'Mahoba'),
(26, 53, 'Mainpuri'),
(26, 54, 'Mathura'),
(26, 55, 'Mau'),
(26, 56, 'Meerut'),
(26, 57, 'Mirzapur'),
(26, 58, 'Moradabad'),
(26, 59, 'Muzaffarnagar'),
(26, 60, 'Pilibhit'),
(26, 61, 'Pratapgarh'),
(26, 62, 'Rae Bareli'),
(26, 63, 'Rampur'),
(26, 64, 'Saharanpur'),
(26, 65, 'Sambhal (Bhim Nagar)'),
(26, 66, 'Sant Kabir Nagar'),
(26, 67, 'Shahjahanpur'),
(26, 68, 'Shamali (Prabuddh Nagar)'),
(26, 69, 'Shravasti'),
(26, 70, 'Siddharth Nagar'),
(26, 71, 'Sitapur'),
(26, 72, 'Sonbhadra'),
(26, 73, 'Sultanpur'),
(26, 74, 'Unnao'),
(26, 75, 'Varanasi'),
(27, 1, 'Almora'),
(27, 2, 'Bageshwar'),
(27, 3, 'Chamoli'),
(27, 4, 'Champawat'),
(27, 5, 'Dehradun'),
(27, 6, 'Haridwar'),
(27, 7, 'Nainital'),
(27, 8, 'Pauri Garhwal'),
(27, 9, 'Pithoragarh'),
(27, 10, 'Rudraprayag'),
(27, 11, 'Tehri Garhwal'),
(27, 12, 'Udham Singh Nagar'),
(27, 13, 'Uttarkashi'),
(28, 1, 'Alipurduar'),
(28, 2, 'Bankura'),
(28, 3, 'Birbhum'),
(28, 4, 'Cooch Behar'),
(28, 5, 'Dakshin Dinajpur (South Dinajpur)'),
(28, 6, 'Darjeeling'),
(28, 7, 'Hooghly'),
(28, 8, 'Howrah'),
(28, 9, 'Jalpaiguri'),
(28, 10, 'Jhargram'),
(28, 11, 'Kalimpong'),
(28, 12, 'Kolkata'),
(28, 13, 'Malda'),
(28, 14, 'Murshidabad'),
(28, 15, 'Nadia'),
(28, 16, 'North 24 Parganas'),
(28, 17, 'Paschim Medinipur (West Medinipur)'),
(28, 18, 'Paschim Burdwan (West Bardhaman)'),
(28, 19, 'Purba Burdwan (East Bardhaman)'),
(28, 20, 'Purba Medinipur (East Medinipur)'),
(28, 21, 'Purulia'),
(28, 22, 'South 24 Parganas'),
(28, 23, 'Uttar Dinajpur (North Dinajpur)'),
(28, 24, 'Kolkata'),
(29, 1, 'Nicobar'),
(29, 2, 'North and Middle Andaman'),
(29, 3, 'South Andaman'),
(30, 1, 'Chandigarh'),
(31, 1, 'Dadra & Nagar Haveli'),
(31, 2, 'Daman'),
(31, 3, 'Diu'),
(32, 1, 'Central Delhi'),
(32, 2, 'East Delhi'),
(32, 3, 'New Delhi'),
(32, 4, 'North Delhi'),
(32, 5, 'North East Delhi'),
(32, 6, 'North West Delhi'),
(32, 7, 'Shahdara'),
(32, 8, 'South Delhi'),
(32, 9, 'South East Delhi'),
(32, 10, 'South West Delhi'),
(32, 11, 'West Delhi'),
(33, 1, 'Anantnag'),
(33, 2, 'Bandipore'),
(33, 3, 'Baramulla'),
(33, 4, 'Budgum'),
(33, 5, 'Doda'),
(33, 6, 'Ganderdal'),
(33, 7, 'Jammu'),
(33, 8, 'Kathua'),
(33, 9, 'Kishtwar'),
(33, 10, 'Kulgam'),
(33, 11, 'Kupwara'),
(33, 12, 'Poonch'),
(33, 13, 'Pulwama'),
(33, 14, 'Rajouri'),
(33, 15, 'Ramban'),
(33, 16, 'Reasi'),
(33, 17, 'Samba'),
(33, 18, 'Shopian'),
(33, 19, 'Srinagar'),
(33, 20, 'Udhampur'),
(34, 1, 'Kargil'),
(34, 2, 'Leh'),
(35, 1, 'Lakshadweep'),
(36, 1, 'Karaikal'),
(36, 2, 'Mahe'),
(36, 3, 'Puducherry'),
(36, 4, 'Yanam');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_doctor`
--

CREATE TABLE `tbl_doctor` (
  `doctor_slno` int(11) NOT NULL,
  `department` varchar(50) NOT NULL,
  `doctor_name` varchar(50) NOT NULL,
  `specialist` varchar(100) NOT NULL,
  `Photo` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `Clinic_address` varchar(100) NOT NULL,
  `Clinic_contact` varchar(11) NOT NULL,
  `doc_bio` varchar(1000) NOT NULL,
  `doc_experience` varchar(100) NOT NULL,
  `work_at` varchar(50) NOT NULL,
  `doc_certificate` varchar(100) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `time_per_patient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_doctor`
--

INSERT INTO `tbl_doctor` (`doctor_slno`, `department`, `doctor_name`, `specialist`, `Photo`, `gender`, `state`, `city`, `district`, `pincode`, `mobile`, `email`, `address`, `Clinic_address`, `Clinic_contact`, `doc_bio`, `doc_experience`, `work_at`, `doc_certificate`, `user_name`, `password`, `time_per_patient`) VALUES
(1, '1', 'Dr. Arup Kumar Deb', 'Cardio surgeon', 'doc_img/Picture 005.jpg', 'Male', '25', 'Agartala', '8', '799002', '9874563201', 'arup@gmail.com', 'Math chaoumuhni, Agartala, West Tripura', 'Math chaoumuhni, Agartala, West Tripura', '22-55-999', '300', 'Working for 10 years', 'ILS hospital', 'doc_img/sig1.png', 'arup', '111', 10),
(1, '2', 'Dr. Neeraj  Chopra', 'Bone displacement', 'doc_img/Screenshot_1.png', 'Male', '25', 'Agartala', '8', '799003', '7856541395', 'neeraj@gmail.com', 'Ramnagar No:- 03 , Agartala , Tripura west', 'Ramnagar No:- 03 , Agartala , Tripura west', '9862127845', '300', '15 years experience', 'GBP hospital', 'doc_img/2_sig.jpg', 'neeraj', '3333', 10),
(2, '1', 'Dr. Anisha  Roy', 'Cardio surgeon', 'doc_img/doc_3.png', 'Female', '25', 'Agartala', '8', '799006', '8975263410', 'anisha@gmail.com', 'Dhaleswar road no:- 10, Agartala', 'Dhaleswar road no:- 10, Agartala', '8975501236', '300', '10 Years experience', 'ILS hospital', 'doc_img/3_sig.jpg', 'anisha', '222', 10),
(2, '2', 'Dr. Abhijit  Roy', 'Bone displacement', 'doc_img/Screenshot_3.jpg', 'Male', '25', 'Agartala', '8', '799006', '7856541395', 'abhijit@gmail.com', 'Math Chaoumuhoni, Agartala', 'Math Chaoumuhoni, Agartala', '9862127845', '300', '20 yrs', 'ILS Hospital', 'doc_img/6_sig.jpg', 'abhi', '345', 10),
(3, '1', 'Dr. N.K.  Sinha', 'Cardio surgeon', 'doc_img/doc_12.jpg', 'Male', '25', 'Bilonia', '6', '799008', '8132820544', 'nk@gmail.com', 'Oppt. Bilonia Market , Tripra (south)', 'Oppt. Bilonia Market , Tripra (south)', '9191565897', '300', '25 Years', 'GBP Hospital', 'doc_img/4_sig.jpg', 'nksinha', '1234', 20),
(3, '2', 'Dr. Meera  singh', 'Fractured Bone', 'doc_img/doc_07.jpg', 'Female', '25', 'Agartala', '8', '799000', '7485963122', 'meera@gmail.com', 'Jail Ashram Road, Agartala', 'Jail Ashram Road, Agartala', '9862127845', '300', '10 years', 'GBP hospital', 'doc_img/7_sig.jpg', 'meera', '890', 10),
(4, '1', 'Dr. Napur  Banik', 'Heart Transplant', 'doc_img/Screenshot_6.jpg', 'Female', '25', 'Agartala', '8', '799004', '8976541023', 'xyz@gmail.com', 'Joynagar, Agartala, Tripura', 'Joynagar, Agartala, Tripura', '9871565897', '300', '10 years', 'IGM hospital', 'doc_img/5_sig.jpg', 'napur', '4444', 10),
(4, '2', 'Dr. Jayanta  Ghosh', 'Bone displacement', 'doc_img/doc_08.jpg', 'Male', '25', 'Agartala', '8', '799032', '8976541026', 'jayanta@gmail.com', 'Dhaleswar Road no :- 7, Agartala', 'Dhaleswar Road no :- 7, Agartala', '22-333-555', '300', '15 years', 'IGM hospital', 'doc_img/8_sig.jpg', 'jayanta', '123', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lab`
--

CREATE TABLE `tbl_lab` (
  `lb_slno` int(11) DEFAULT NULL,
  `lb_name` varchar(50) NOT NULL,
  `lb_phone` varchar(10) NOT NULL,
  `lb_email` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `lb_id` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `test_done` varchar(100) NOT NULL,
  `open_time` varchar(10) NOT NULL,
  `close_time` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_lab`
--

INSERT INTO `tbl_lab` (`lb_slno`, `lb_name`, `lb_phone`, `lb_email`, `address`, `lb_id`, `password`, `test_done`, `open_time`, `close_time`) VALUES
(1, 'Medlab', '9436581722', 'medlab@gmail.com', 'Math choumuhni', 'medlab', '123', 'Blood Test, Urine Test,Stool Test, Ultrasonography, CT-scans, ECG', '10 a.m.', '6 p.m.'),
(2, 'Apollo Patholab', '8974329565', 'apollo@gmail.com', 'Ganaraj Choumuhoni, Agartala', 'apollo', '111', 'CT scan, ECG, Blood Test, Urine Test, Stool Test, Semen Test ', '11 a.m.', '5 p.m.'),
(3, 'Healthcare Pathlab', '7005120458', 'Healthcare_Pathlab@gmail.com', 'Durga Chaumuhni, Agartala, Tripura west, 799003', 'healthcare', '1234', 'Blood Test, Urine Test,Stool Test, Ultrasonography.', '12 a.m.', '6 p.m.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_patient`
--

CREATE TABLE `tbl_patient` (
  `patient_slno` int(11) NOT NULL,
  `patient_name` varchar(70) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `date_of_birth` varchar(10) NOT NULL,
  `age` int(11) NOT NULL,
  `blood` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `user` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_patient`
--

INSERT INTO `tbl_patient` (`patient_slno`, `patient_name`, `gender`, `date_of_birth`, `age`, `blood`, `email`, `mobile`, `address`, `user`, `password`, `photo`) VALUES
(1, 'Miss ANUSHKA  BANIK', 'Female', '2003-03-13', 19, 'A+', 'banushka003@gmail.com', '8258844155', 'Math Chawmohoni, Agartala,Tripura', 'anushka', 'barbie', 'patient_img/Anushka.jpg'),
(2, 'Miss AYANA  GHOSH', 'Female', '2003-07-07', 18, 'O+', 'ayanaghosh123@gmail.com', '8974328193', 'Dhaleshwar, Road no 10, Agartala, Tripura', 'ayana', 'kutty', 'patient_img/Ayana.jpg'),
(3, 'Mr. ANKAN  DEB', 'Male', '2002-10-24', 19, 'B+', 'ankandeb1234@gmail.com', '8132820541', 'Ranirbazaar, Tripura', 'ankan', 'tokai', 'patient_img/Ankan.jpg'),
(4, 'Mr. BISHAL  DEBNATH', 'Male', '2001-10-09', 20, 'AB+', 'bishaldebnath@gmail.com', '9366213190', 'Dhaleshwar, Agartala, Tripura', 'bishal', 'bishal', 'patient_img/Bishal.jpg'),
(5, 'Miss SHRESHTHA  PAL', 'Female', '2002-09-18', 19, 'A+', 'aenypaul1234@gmail.com', '9366063387', 'Bijoy appartment, college tilla, Agartala, Tripura', 'shreshtha', 'titli', 'patient_img/Shreshtha.jpg'),
(6, 'Miss TAMMANNA  DEBNATH', 'Female', '2002-05-06', 19, 'A+', 'tammannadebnath123@gmail.com', '6009318220', 'Ranirbazaar, Tripura', 'tammanna', 'jhono', 'patient_img/Tammanna.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_prescription`
--

CREATE TABLE `tbl_prescription` (
  `prescription_slno` int(11) NOT NULL,
  `dprt_id` int(11) NOT NULL,
  `doctor_slno` int(11) NOT NULL,
  `patient_slno` int(11) NOT NULL,
  `symptoms` varchar(200) NOT NULL,
  `medical_test` varchar(200) NOT NULL,
  `medicine` varchar(200) NOT NULL,
  `app_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_prescription`
--

INSERT INTO `tbl_prescription` (`prescription_slno`, `dprt_id`, `doctor_slno`, `patient_slno`, `symptoms`, `medical_test`, `medicine`, `app_date`) VALUES
(1, 1, 1, 2, 'Chest Pain', 'ECG , Blood Test', 'ABCD Twice a day\r\nXYZ After meal', '2022-06-27 00:00:00'),
(2, 1, 1, 3, 'Chest Pain', 'Blood Test, Echo ECG', 'ABC 2times after meal', '2022-06-27 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state`
--

CREATE TABLE `tbl_state` (
  `state_slno` int(11) NOT NULL,
  `state_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_state`
--

INSERT INTO `tbl_state` (`state_slno`, `state_name`) VALUES
(1, 'Andhra Pradesh'),
(2, 'Arunachal Pradesh'),
(3, 'Assam'),
(4, 'Bihar'),
(5, 'Chhattisgarh'),
(6, 'Goa'),
(7, 'Gujarat'),
(8, 'Haryana'),
(9, 'Himachal Pradesh'),
(10, 'Jharkhand'),
(11, 'Karnataka'),
(12, 'Kerala'),
(13, 'Madhya Pradesh'),
(14, 'Maharashtra'),
(15, 'Manipur'),
(16, 'Meghalaya'),
(17, 'Mizoram'),
(18, 'Nagaland'),
(19, 'Odisha'),
(20, 'Panjab'),
(21, 'Rajasthan'),
(22, 'Sikkim'),
(23, 'Tamil Nadu'),
(24, 'Telangana'),
(25, 'Tripura'),
(26, 'Uttar Pradesh'),
(27, 'Uttarakhand'),
(28, 'West Bengal'),
(29, 'Andaman & Nicobar (UT)'),
(30, 'Chandigarh (UT)'),
(31, 'Dadra & Nagar Haveli and Daman & Diu (UT)'),
(32, 'Delhi (NCT)'),
(33, 'Jammu &Kashmir (UT)'),
(34, 'Ladakh (UT)'),
(35, 'Lakshadweep (UT)'),
(36, 'Puducherry (UT)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `chatbot`
--
ALTER TABLE `chatbot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `doc_department`
--
ALTER TABLE `doc_department`
  ADD PRIMARY KEY (`dprt_id`);

--
-- Indexes for table `lab_book_report`
--
ALTER TABLE `lab_book_report`
  ADD UNIQUE KEY `slno` (`slno`);

--
-- Indexes for table `lb_report`
--
ALTER TABLE `lb_report`
  ADD UNIQUE KEY `slno` (`slno`);

--
-- Indexes for table `patient_wallet`
--
ALTER TABLE `patient_wallet`
  ADD PRIMARY KEY (`patient_slno`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule_time`
--
ALTER TABLE `schedule_time`
  ADD PRIMARY KEY (`department`,`doctor_slno`,`app_date`,`slno`);

--
-- Indexes for table `tbl_ambulance`
--
ALTER TABLE `tbl_ambulance`
  ADD PRIMARY KEY (`ambulance_slno`);

--
-- Indexes for table `tbl_appointment`
--
ALTER TABLE `tbl_appointment`
  ADD PRIMARY KEY (`department`,`doctor_slno`,`patient_slno`,`app_sl`);

--
-- Indexes for table `tbl_district`
--
ALTER TABLE `tbl_district`
  ADD PRIMARY KEY (`state_slno`,`district_slno`);

--
-- Indexes for table `tbl_doctor`
--
ALTER TABLE `tbl_doctor`
  ADD PRIMARY KEY (`doctor_slno`,`department`);

--
-- Indexes for table `tbl_lab`
--
ALTER TABLE `tbl_lab`
  ADD UNIQUE KEY `lb_slno` (`lb_slno`);

--
-- Indexes for table `tbl_patient`
--
ALTER TABLE `tbl_patient`
  ADD PRIMARY KEY (`patient_slno`),
  ADD UNIQUE KEY `user` (`user`);

--
-- Indexes for table `tbl_prescription`
--
ALTER TABLE `tbl_prescription`
  ADD PRIMARY KEY (`prescription_slno`);

--
-- Indexes for table `tbl_state`
--
ALTER TABLE `tbl_state`
  ADD PRIMARY KEY (`state_slno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chatbot`
--
ALTER TABLE `chatbot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `doc_department`
--
ALTER TABLE `doc_department`
  MODIFY `dprt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_ambulance`
--
ALTER TABLE `tbl_ambulance`
  MODIFY `ambulance_slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_prescription`
--
ALTER TABLE `tbl_prescription`
  MODIFY `prescription_slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_state`
--
ALTER TABLE `tbl_state`
  MODIFY `state_slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
