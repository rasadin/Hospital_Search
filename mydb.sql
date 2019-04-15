-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2018 at 06:31 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `DoctorId` int(11) NOT NULL,
  `DoctorName` varchar(100) NOT NULL,
  `Degree` varchar(200) NOT NULL,
  `Visiting_Hour` varchar(40) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Contact_Number` varchar(15) NOT NULL,
  `Fee` varchar(20) NOT NULL,
  `Specialist` varchar(500) NOT NULL,
  `Hospital_HospitalId` int(11) NOT NULL,
  `Off_Day` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`DoctorId`, `DoctorName`, `Degree`, `Visiting_Hour`, `Email`, `Contact_Number`, `Fee`, `Specialist`, `Hospital_HospitalId`, `Off_Day`) VALUES
(28, 'Macaulay Reed', 'Voluptatem possimus exercitation aut minima et voluptatem commodo earum eum accusantium molestiae neque adipisci', 'Ut consequatur Sed laudantium adipisicin', 'xysyqe@yahoo.com', '356', 'Quam exercitation fu', 'ENT', 22, '12'),
(29, 'Camden Howard', 'In sit ex eum in blanditiis rerum illo sequi dolore exercitation est occaecat magna quo adipisicing', 'Accusamus explicabo Sunt sint aute exped', 'zemelotuje@mailinator.com', '58', 'Sequi officiis dolor', 'Surgery', 22, '16'),
(30, 'Candice Mclean', 'Ea occaecat vel provident dolores voluptas labore est sapiente ullam odio quis dolorem reiciendis', 'Cum est enim minima officia obcaecati su', 'purur@mailinator.com', '01677343442', '500', 'Child', 22, 'Friday'),
(31, 'Inez Zamora', 'Et eveniet corrupti eveniet dolores saepe necessitatibus labore', 'Fugiat velit quos ea est sed aute animi ', 'naqodi@mailinator.net', '0167734344', '1000', 'Surgery', 22, 'Friday'),
(32, 'Rashadin', 'MBBS ,FCPS Medicine', '2pm to 5pm', 'ras@gmail.com', '01677122345', '500', 'Medicine', 22, 'Friday');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `HospitalId` int(11) NOT NULL,
  `HospitalName` varchar(100) NOT NULL,
  `Address` varchar(400) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Division` varchar(45) NOT NULL,
  `Hotline` varchar(45) NOT NULL,
  `Password` varchar(300) NOT NULL,
  `DeptName` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`HospitalId`, `HospitalName`, `Address`, `Email`, `Division`, `Hotline`, `Password`, `DeptName`) VALUES
(22, 'Lab Aid', 'Banani, Dhaka.', 'lab@gmail.com', 'Dhaka Division', '3434', '$2y$10$9F.gStdEEKoKEsPwP5tevu1jzfVvzvSlvB.cjM.rOLYJ6vWOr4jW.', 'Children,Cardiology,Dental,Eye,Skin,Medicine,Other'),
(23, 'Safe Aid', 'Uttara,Dhaka.', 'safe@gmail.com', 'Dhaka Division', '6768', '$2y$10$r72/yL3uNMcT/IMTqY0r6ehXPyahJAvhJq.tkVMT5vhcbyU7aB1fe', 'Children,Cardiology,Dental,Eye,Medicine,Other'),
(24, 'Shodesh Hospital Pvt Limited', 'Ck Gosh Road,Mymensingh.', 'sodesh@gmail.com', 'Mymensingh Division', '67667', '$2y$10$rhpTRHaBQTV4TPXAO9RDmuIXtox.lUNGcFmgJ9GltwwJZYzIxZth2', 'Children,Cardiology,Dental,Eye,Skin,Medicine,Other'),
(25, 'Dhaka Medical Hospital', 'Shahbag', 'dmc@gmail.com', 'Dhaka Division', '345534', '$2y$10$70PCdhsCRftmijRdbbHgP.V4t2QPSIGC.V0fb7MoA0VaehvBcLUeu', 'Children,Cardiology,Dental,Eye,Skin,Medicine,Other'),
(26, 'Apollo Hospiatl Pvt Limited', '13B, Bashundhora, Dhaka', 'apollo@gmail.com', 'Dhaka Division', '2222', '$2y$10$Qrpb8.Vjhud48xPrdlc59OgdXjryPtKQ9E5dO8VW3rjXZrOdYefoO', 'Children,Cardiology,Dental,Eye,Skin,Medicine,Other'),
(27, 'Mymensingh Medical College', 'Chorpara Road,Mymensingh.', 'mmc@gmail.com', 'Mymensingh Division', '123456', '$2y$10$4Hxt8.5DemVAjSjS.Cwn4u1lCLHmrm5vgawceUiNu16BZgRp8x3QO', 'Children,Cardiology,Dental,Eye,Skin,Medicine,Other'),
(28, 'Rajshahi Medical College', 'Station Road, Rajshahi.', 'rmc@gmail.com', 'Rajshahi Division', '1212', '$2y$10$QzEOs2oa4vGJKwrdttuVsOIH1bQ/sR/uw2FhJKHQJaAjfx9JQILiG', 'Children,Cardiology,Dental,Eye,Skin,Medicine,Other'),
(29, 'Rashadin Hospital Prvt limite', 'Paramedical Road,Laxmipur,Rajshahi.', 'rashadin@gmail.com', 'Rajshahi Division', '01677155231', '$2y$10$J7dKfs0r835kyXdQs4OhnuxWTgJoQ2ghBleFuRI06rroZjEBRyhhq', 'Children,Cardiology,Dental,Eye,Skin,Medicine,Other'),
(30, 'Safe Aid', 'College road ,Rajshahi.', 'saferajshahi@gmail.com', 'Rajshahi Division', '09155123', '$2y$10$GMmIm3u12yYW/d/27psY.O6uh7V4f28Y87UVHlGMtTGX9awxWrmdG', 'Children,Cardiology,Dental,Skin,Medicine'),
(31, 'Istiaq Medical College and Hospital', 'Station Road,Barisal.', 'istiaq@gmail.com', 'Barisal Division', '0167715521', '$2y$10$HZV5kn74M.4sXoL34tifv.hK3CkcF2qsCh3kQdK/aDdIl2AYyGKW2', 'Children,Dental,Eye,Medicine'),
(32, 'City Hospital', 'Banani, Block B,Dhaka.', 'city@gmail.com', 'Dhaka Division', '023456677', '$2y$10$aMF8Y6ne521zJ/ScncV3hee.vvyUsdmZxCQ4OizKr6X3SX1MVOogK', 'Children,Cardiology,Dental,Skin,Medicine,Other'),
(33, 'Asian Hospital Pvt LImited', 'Badda, Dhaka.', 'asian@gmail.com', 'Dhaka Division', '023445667', '$2y$10$OQVhA7xy5YI4HjcfdKZh5ejFEy.zr/znoZ8TDWeD/mTP.OvajtZom', 'Children,Cardiology,Dental,Eye,Skin,Medicine,Other');

-- --------------------------------------------------------

--
-- Table structure for table `search`
--

CREATE TABLE `search` (
  `Id` int(11) NOT NULL,
  `role` varchar(20) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `search`
--

INSERT INTO `search` (`Id`, `role`, `type`) VALUES
(1, 'Hospital', 'Children'),
(2, 'Hospital', 'Cardiology'),
(3, 'Hospital', 'Dental'),
(4, 'Hospital', 'Eye'),
(5, 'Hospital', 'Skin'),
(6, 'Hospital', 'Medicine'),
(7, 'Hospital', 'Other'),
(8, 'Doctor', 'Cancer'),
(9, 'Doctor', 'Child'),
(10, 'Doctor', 'Denatl'),
(11, 'Doctor', 'Eye'),
(12, 'Doctor', 'Heart'),
(13, 'Doctor', 'Kidney'),
(14, 'Doctor', 'Surgery'),
(15, 'Doctor', 'Medicine'),
(16, 'Doctor', 'Ent');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`DoctorId`),
  ADD KEY `Hospital_HospitalId` (`Hospital_HospitalId`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`HospitalId`);

--
-- Indexes for table `search`
--
ALTER TABLE `search`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `DoctorId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `HospitalId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `search`
--
ALTER TABLE `search`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`Hospital_HospitalId`) REFERENCES `hospital` (`HospitalId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
