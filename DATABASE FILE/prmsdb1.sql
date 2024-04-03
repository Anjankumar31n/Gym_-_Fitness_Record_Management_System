-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2024 at 07:19 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prmsdb1`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `activity_name` varchar(40) NOT NULL,
  `description` varchar(150) NOT NULL,
  `activity_id` int(3) NOT NULL,
  `activity_type` varchar(20) NOT NULL,
  `sets` varchar(15) NOT NULL,
  `set_num` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`activity_name`, `description`, `activity_id`, `activity_type`, `sets`, `set_num`) VALUES
('Push-ups', ' Raising the body in a plank position.', 124, 'Chest', '10repX5set', 1),
('Bench Press', ' Lie on a bench, lower barbell to chest, then press it up.', 125, 'Chest', '6repX5set', 1),
('Dumbbell Flyes', ' Lie on bench, hold dumbbells, lower to sides, then return.', 126, 'Chest', '10repX5set', 1),
('Pull-ups', 'Lift yourself by pulling on an overhead bar, targeting back, shoulders, and arms', 127, 'Back', '5repX4sets', 1),
('Rows', 'Pull weight towards your body, engaging back muscles.', 128, 'Back', '10repX5set', 1),
('Deadlifts', ' Lift a weighted barbell from the ground, engaging multiple muscles', 129, 'Back', '3repX4set', 1),
('Lat pulldowns', ' Using a cable machine, pull a bar to chest level, targeting back muscles primarily.', 130, 'Back', '10repX5set', 1),
('Shoulder Press', ' Lift weights overhead to target shoulder muscles', 131, 'Shoulders', '6repX5set', 1),
('Lateral Raises', 'Raise weights to the sides to target side shoulder muscles', 132, 'Shoulders', '6repX5set', 1),
('Front Raises', 'Lift weights in front of you to target front shoulder muscles.', 133, 'Shoulders', '6repX5set', 1),
('Bicep Curls', ' Lift weights from your sides toward your shoulders, targeting the biceps', 134, 'Arms', '5repX5set', 1),
('Tricep Dips', 'Lower your body by bending your arms, then push back up, targeting the triceps ', 135, 'Arms', '6repX4set', 1),
('Skull Crushers', ' Extend weights above you, then bend your arms to lower them toward your head.', 136, 'Arms', '6repX4set', 1),
('Squats', 'Lower body exercise targeting quads, hamstrings, glutes.', 137, 'Legs', '5repX5set', 3),
('Lunges', 'Dynamic leg exercise for quads, hamstrings, glutes, calves.', 138, 'Legs', '3repX4set', 3),
('Leg Press', ' Machine exercise for quads, hamstrings, glutes', 139, 'Legs', '5repX4set', 3),
('Calf Raises', ' Exercise for calf muscles', 140, 'Legs', '6repX4set', 3),
('Hip Thrusts', 'Targets glutes. Sit, back against bench, lift hips.', 141, 'Glutes', '5repX5set', 3),
('Glute Bridges', ' Targets glutes. Lie on back, knees bent, lift hips.', 142, 'Legs', '5repX4sets', 3),
('Deadlifts', 'Targets lower back, glutes, hamstrings, traps. Hinge, lift barbell.', 143, 'Glutes', '5repX5set', 3),
('Crunches', ' Engages the abs through controlled spinal flexion', 144, 'Abs', '15repX5set', 2),
('Planks', 'Stabilizes the core by maintaining a straight body position.', 145, 'Abs', '10repX5set', 2),
('Leg Raises', 'Targets lower abs and hip flexors with straight leg lifts', 146, 'Abs', '10repX5set', 2),
('Russian Twists', 'Enhances oblique strength and stability through rotational movements.', 147, 'Abs', '15repX5set', 2),
('Side Plank', 'Core exercise holding body weight on one forearm and foot, maintaining a straight line.', 148, 'Obliques', '10repX4set', 2),
('Bicycle Crunches', 'Dynamic core exercise alternating elbow-to-knee motions, simulating bicycling', 149, 'Obliques', '10repX3set', 2),
('Woodchoppers', 'Full-body exercise using weight.', 150, 'Obliques', '10repX5set', 2);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `password`) VALUES
(100, 'password'),
(101, 'password');

-- --------------------------------------------------------

--
-- Table structure for table `attends`
--

CREATE TABLE `attends` (
  `u_id` int(15) NOT NULL,
  `date` date NOT NULL,
  `checkin` varchar(15) NOT NULL,
  `checkout` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attends`
--

INSERT INTO `attends` (`u_id`, `date`, `checkin`, `checkout`) VALUES
(100, '2023-03-02', '11:20:Am', '1:20:Am'),
(100, '2024-01-11', '11:20:Am', '1:20:Am'),
(108, '2024-01-11', '11:20:Am', '1:20:Am'),
(101, '2024-01-24', '1:20: PM', '4:30: pm'),
(104, '2024-01-12', '10:20:Am', '12:23:pm'),
(104, '2024-01-25', '11:20:Am', '12:23:pm'),
(104, '2024-02-13', '07:04 pm', '07:04 pm'),
(101, '2024-02-22', '06:30 am', '08:00 am'),
(100, '2024-02-23', '06:19 am', '08:34 am'),
(101, '2024-02-24', '06:47 am', '07:25 am'),
(101, '2024-02-25', '05:18 am', '07:26 am');

-- --------------------------------------------------------

--
-- Table structure for table `nutrition`
--

CREATE TABLE `nutrition` (
  `u_id` int(15) NOT NULL,
  `proteins` varchar(15) NOT NULL,
  `calories` varchar(15) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nutrition`
--

INSERT INTO `nutrition` (`u_id`, `proteins`, `calories`, `date`) VALUES
(100, '48 g', '200g', '2024-02-12'),
(100, '32g', '321', '2024-02-14'),
(100, '117g', '720g', '2024-02-22'),
(108, '56 gm', '78', '2024-01-26');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` bigint(16) NOT NULL,
  `u_id` int(15) NOT NULL,
  `amount` int(6) NOT NULL,
  `payment_method` varchar(15) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `u_id`, `amount`, `payment_method`, `date`) VALUES
(10887687, 108, 3000, 'paytm', '2024-02-21'),
(104213234, 104, 3000, 'cash', '2024-02-08'),
(266487873, 102, 4000, 'online', '2024-02-22'),
(547893455, 100, 7000, 'paytm', '2024-04-24'),
(657635537, 100, 2000, 'cash', '2024-02-19'),
(687363846, 101, 6000, 'CASH', '2024-01-08'),
(1456787653, 108, 5000, 'cash', '2024-02-15'),
(2147483647, 102, 5000, 'cash', '2024-01-26'),
(23422144234, 100, 6000, 'online', '2024-06-19'),
(54647647656, 100, 4000, 'paytm', '2024-02-22'),
(645637373637, 102, 3000, 'cash', '2024-02-23'),
(834687468756, 104, 300, 'PhonePay', '2024-02-22'),
(6748798739389, 101, 6800, 'online', '2024-03-20');

--
-- Triggers `payment`
--
DELIMITER $$
CREATE TRIGGER `update_user_status_after_payment` AFTER INSERT ON `payment` FOR EACH ROW BEGIN
    DECLARE last_payment_date DATE;
    
    -- Get the latest payment date for the user
    SELECT MAX(date) INTO last_payment_date FROM payment WHERE u_id = NEW.u_id;
    
    -- Update user status based on payment history
    IF last_payment_date IS NOT NULL THEN
        IF DATEDIFF(CURRENT_DATE(), last_payment_date) <= 30 THEN
            UPDATE user SET status = 'Active' WHERE u_id = NEW.u_id;
        ELSE
            UPDATE user SET status = 'Inactive' WHERE u_id = NEW.u_id;
        END IF;
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `time`
--

CREATE TABLE `time` (
  `u_id` int(15) NOT NULL,
  `week` varchar(15) NOT NULL,
  `set_num` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `time`
--

INSERT INTO `time` (`u_id`, `week`, `set_num`) VALUES
(100, 'Monday', 3),
(100, 'Tuesday', 1),
(100, 'Wednesday', 2),
(100, 'Thursday', 3),
(100, 'Friday', 3),
(100, 'Saturday', 2),
(100, 'Sunday', 1),
(100, 'Sunday', 1),
(101, 'Monday', 2),
(101, 'Tuesday', 3),
(101, 'Wednesday', 2),
(101, 'Thursday', 1),
(101, 'Friday', 3),
(101, 'Saturday', 1),
(101, 'Sunday', 3),
(101, 'Sunday', 3),
(102, 'Monday', 3),
(102, 'Tuesday', 1),
(102, 'Wednesday', 1),
(102, 'Thursday', 3),
(102, 'Friday', 2),
(102, 'Saturday', 1),
(102, 'Sunday', 3),
(102, 'Sunday', 3),
(104, 'Monday', 2),
(104, 'Tuesday', 1),
(104, 'Wednesday', 3),
(104, 'Thursday', 2),
(104, 'Friday', 1),
(104, 'Saturday', 3),
(104, 'Sunday', 1),
(104, 'Sunday', 1),
(102, 'Monday', 1),
(102, 'Tuesday', 2),
(102, 'Wednesday', 3),
(102, 'Thursday', 1),
(102, 'Friday', 2),
(102, 'Saturday', 3),
(102, 'Sunday', 1),
(102, 'Sunday', 1),
(108, 'Monday', 2),
(108, 'Tuesday', 3),
(108, 'Wednesday', 2),
(108, 'Thursday', 1),
(108, 'Friday', 3),
(108, 'Saturday', 1),
(108, 'Sunday', 1),
(108, 'Sunday', 1),
(111, 'Monday', 2),
(111, 'Tuesday', 3),
(111, 'Wednesday', 1),
(111, 'Thursday', 3),
(111, 'Friday', 1),
(111, 'Saturday', 2),
(111, 'Sunday', 1),
(111, 'Sunday', 1);

--
-- Triggers `time`
--
DELIMITER $$
CREATE TRIGGER `before_insert_time` BEFORE INSERT ON `time` FOR EACH ROW BEGIN
    DECLARE num_records INT;
    SET num_records = (SELECT COUNT(*) FROM time WHERE u_id = NEW.u_id);
    
    IF num_records >= 7 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot insert more than 7 records for the same u_id';
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `trainer`
--

CREATE TABLE `trainer` (
  `t_id` int(15) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(25) NOT NULL,
  `phone` bigint(15) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `experience` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trainer`
--

INSERT INTO `trainer` (`t_id`, `password`, `name`, `email`, `phone`, `gender`, `experience`) VALUES
(400, 'password', 'Arun', 'arun@gmail.com', 8618939114, 'male', '4year'),
(401, 'password', 'manjunath', 'manjunath@gmail.com', 8987839932, 'male', '7year');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `t_id` int(15) NOT NULL,
  `u_id` int(12) NOT NULL,
  `name` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` bigint(12) NOT NULL,
  `addrass` varchar(30) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`t_id`, `u_id`, `name`, `gender`, `dob`, `email`, `phone`, `addrass`, `status`) VALUES
(400, 100, 'anjan kumar', 'male', '2003-03-30', 'anjan@gmail.com', 8073912688, 'Tumkur', 'Active'),
(400, 101, 'Karthik R Gowda', 'male', '2002-01-17', 'karthik@gmail.com', 2147483647, 'Tumkur', 'Active'),
(401, 102, 'Chiranthan H K', 'mele', '2003-07-21', 'chiru@gmail.com', 2147483647, 'Bengalore', 'Active'),
(400, 104, 'manju', 'male', '2002-08-20', 'manju@gmail.com', 2147483647, 'bengaluru', 'Active'),
(401, 108, 'jeevan ks', 'male', '1928-01-12', 'jeevan@gmail.com', 877767676, 'mandya', 'Active'),
(400, 111, 'arjun', 'male', '2004-02-25', 'arjun@gmail.com', 768907653, 'mysore', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `u_id` int(10) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`u_id`, `password`) VALUES
(100, 'password'),
(101, 'password'),
(102, 'password'),
(104, 'password'),
(105, 'password'),
(108, 'password'),
(111, 'password'),
(114, ' 12345 ');

-- --------------------------------------------------------

--
-- Table structure for table `weight`
--

CREATE TABLE `weight` (
  `u_id` int(15) NOT NULL,
  `date` date NOT NULL,
  `weight` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `weight`
--

INSERT INTO `weight` (`u_id`, `date`, `weight`) VALUES
(100, '2024-02-12', 52),
(100, '2024-03-20', 56),
(100, '2024-04-17', 60),
(100, '2024-02-22', 55),
(108, '2024-01-25', 72);

-- --------------------------------------------------------

--
-- Table structure for table `workout`
--

CREATE TABLE `workout` (
  `u_id` int(15) NOT NULL,
  `durations` varchar(20) NOT NULL,
  `activity_id` int(15) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `workout`
--

INSERT INTO `workout` (`u_id`, `durations`, `activity_id`, `date`) VALUES
(100, '32minits', 144, '2024-02-25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `attends`
--
ALTER TABLE `attends`
  ADD KEY `te` (`u_id`);

--
-- Indexes for table `nutrition`
--
ALTER TABLE `nutrition`
  ADD KEY `test` (`u_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `t` (`u_id`);

--
-- Indexes for table `time`
--
ALTER TABLE `time`
  ADD KEY `ee` (`u_id`);

--
-- Indexes for table `trainer`
--
ALTER TABLE `trainer`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`),
  ADD KEY `we` (`t_id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `weight`
--
ALTER TABLE `weight`
  ADD KEY `u_id` (`u_id`);

--
-- Indexes for table `workout`
--
ALTER TABLE `workout`
  ADD KEY `tes` (`u_id`),
  ADD KEY `rer` (`activity_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `activity_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attends`
--
ALTER TABLE `attends`
  ADD CONSTRAINT `te` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`);

--
-- Constraints for table `nutrition`
--
ALTER TABLE `nutrition`
  ADD CONSTRAINT `test` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `t` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`);

--
-- Constraints for table `time`
--
ALTER TABLE `time`
  ADD CONSTRAINT `ee` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `we` FOREIGN KEY (`t_id`) REFERENCES `trainer` (`t_id`);

--
-- Constraints for table `weight`
--
ALTER TABLE `weight`
  ADD CONSTRAINT `weight_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`);

--
-- Constraints for table `workout`
--
ALTER TABLE `workout`
  ADD CONSTRAINT `rer` FOREIGN KEY (`activity_id`) REFERENCES `activity` (`activity_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
