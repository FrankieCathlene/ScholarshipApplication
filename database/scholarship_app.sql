-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2025 at 08:31 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scholarship_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(233, 'cath', '$2a$10$vWjttk0EJyAa9rRbdfpbeeDjTArRklqvZZwZcE/XUmNUZPkrzcD5q');

-- --------------------------------------------------------

--
-- Table structure for table `name_of_scholarships`
--

CREATE TABLE `name_of_scholarships` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `name_of_scholarships`
--

INSERT INTO `name_of_scholarships` (`id`, `name`, `status`) VALUES
(1, 'Tulong Dunong Program(TDP)', 0),
(2, 'Tertiary Education Scholar\r\n', 0),
(3, 'Doña Juana J. Angara', 0),
(4, 'Congressman Juan Eduardo\r\n', 0),
(5, 'Local Government Unit', 0),
(6, 'CHED Special Study G', 0),
(7, 'Student Assistant Fund\r\n', 0),
(8, 'Provincial Government Scholar', 0),
(9, 'Barangay Scholars / ', 0),
(10, 'Global Warmth Scholar', 0);

-- --------------------------------------------------------

--
-- Table structure for table `students_list`
--

CREATE TABLE `students_list` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` varchar(25) NOT NULL,
  `status` enum('pending','accepted','declined','') DEFAULT 'pending',
  `low_income_proof` varchar(255) NOT NULL,
  `copy_of_id` varchar(255) NOT NULL,
  `copy_of_card` varchar(255) NOT NULL,
  `year_level` varchar(50) NOT NULL,
  `Mother Name` varchar(100) NOT NULL,
  `Father Name` varchar(100) NOT NULL,
  `Mobile_No` varchar(100) NOT NULL,
  `Guardian` varchar(100) NOT NULL,
  `Guardian_Address` varchar(100) NOT NULL,
  `Contact_No` varchar(100) NOT NULL,
  `parents_income` decimal(10,2) NOT NULL,
  `member_of_4ps` varchar(100) NOT NULL,
  `is_ips` varchar(100) NOT NULL,
  `scholarship_type` varchar(100) NOT NULL,
  `birth_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students_list`
--

INSERT INTO `students_list` (`id`, `first_name`, `last_name`, `age`, `email`, `contact`, `address`, `status`, `low_income_proof`, `copy_of_id`, `copy_of_card`, `year_level`, `Mother Name`, `Father Name`, `Mobile_No`, `Guardian`, `Guardian_Address`, `Contact_No`, `parents_income`, `member_of_4ps`, `is_ips`, `scholarship_type`, `birth_date`) VALUES
(3, 'cath', 'robles', 20, 'cath@gmail.com', '09513390490', 'Baler, Aurora', 'accepted', '2022-06-17-08-21-24-557.jpg', '360_F_571480036_YIUwx6mz2Yof0XCRchP5vzjfEPAwl3p7.jpg', '2022-06-17-08-20-55-268.jpg', '3rd Year', 'Eden Robles', 'Jerson Robles', '02983651736', '', '', '', 12000.00, 'No', 'No', 'Tulong Dunong Program', '2004-08-04'),
(4, 'Frankie', 'Robles', 20, 'frankie@gmail.com', '', '', 'accepted', '2022-06-17-08-21-39-863.jpg', '809af08eb97e8b1200c7739b672914ca.jpg', '2022-06-17-08-21-39-863.jpg', '3rd Year', 'Soledad Robles', 'Jerson Robles', '09172622777', '', '', '', 12000.00, 'Yes', 'No', 'Tulong Dunong Program', '1980-05-12'),
(5, 'Ashleen ', 'Magbual', 18, 'ashleen@gmail.com', '09513273827', 'Nueva Ecija', 'pending', '2022-07-30-12-04-55-546.jpg', '2022-06-17-08-21-24-557.jpg', '2022-07-30-12-30-51-112.jpg', '1st Year', 'Lanie Magbual', 'Roberto Magbual', '09352612721', '', '', '', 10000.00, 'Yes', 'No', 'CHED Special Study G', '2004-03-19'),
(6, 'Abra', 'Alberto', 20, 'abra@gmail.com', '09827615214', 'Manila', 'pending', '2022-06-17-08-37-44-537.jpg', '2022-06-17-08-20-55-268.jpg', '2022-06-17-08-21-39-863.jpg', '3rd Year', 'Alex Alberto', 'Alan Alberto', '09857463741', '', '', '', 15000.00, 'Yes', 'No', 'CHED Special Study G', '2004-09-06'),
(7, 'Kathryn', 'Robles', 18, 'kath@gmail.com', '09876541567', 'Aurora', 'accepted', 'user.jpg', 'no-image.jpg', 'user.jpg', '2nd Year', 'Eden Robles', 'Jerson Robles', '09876527869', '', '', '', 1000.00, 'Yes', 'No', 'Tulong Dunong Program', '1980-04-04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `name_of_scholarships`
--
ALTER TABLE `name_of_scholarships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students_list`
--
ALTER TABLE `students_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;

--
-- AUTO_INCREMENT for table `name_of_scholarships`
--
ALTER TABLE `name_of_scholarships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `students_list`
--
ALTER TABLE `students_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
