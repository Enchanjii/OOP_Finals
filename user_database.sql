-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2025 at 07:40 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `journals`
--

CREATE TABLE `journals` (
  `journal_id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `journal_entry` text NOT NULL,
  `entry_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `journals`
--

INSERT INTO `journals` (`journal_id`, `user_email`, `journal_entry`, `entry_date`) VALUES
(15, '12@gmail.com', 'huashndburvbaudupigbsduyuyyfgvhasdvbayhsufbgpuayshgdbasb]asu]\nsd\nagffsdgsfy./fsdyt sfdtfdg sd\nfg sfd.g rdtsdfffyt sdft .sdf tsdft uyfdg ', '2025-10-22 15:07:47');

-- --------------------------------------------------------

--
-- Table structure for table `mood_logs`
--

CREATE TABLE `mood_logs` (
  `id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `emotion` varchar(50) NOT NULL,
  `note` text DEFAULT NULL,
  `log_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mood_logs`
--

INSERT INTO `mood_logs` (`id`, `user_email`, `emotion`, `note`, `log_date`) VALUES
(95, '1@gmail.com', 'happy', 'happy', '2025-10-18 10:43:40'),
(96, '12@gmail.com', 'happy', 'h', '2025-10-19 14:16:17'),
(97, '12@gmail.com', 'sad', 'sad', '2025-10-19 14:16:45'),
(98, '12@gmail.com', 'angry', 's', '2025-10-19 14:58:30'),
(99, '12@gmail.com', 'happy', 's', '2025-10-19 17:20:48'),
(100, '12@gmail.com', 'happy', 'g', '2025-10-20 17:00:42'),
(101, ' Angelo123', 'sad', 'I feel awful because Gardose is standing beside me.', '2025-10-21 04:47:06'),
(102, ' Angelo123', 'happy', 'I am happy because Gardose has moved away from my side.', '2025-10-21 04:49:24'),
(103, '12@gmail.com', 'happy', 'i am happy cause awesome', '2025-10-21 04:53:42'),
(104, '1@gmail.com', 'happy', '', '2025-10-21 09:35:20'),
(105, '12@gmail.com', 'happy', 's', '2025-10-22 02:21:48'),
(106, '1@gmail.com', 'happy', '', '2025-10-22 15:26:16');

-- --------------------------------------------------------

--
-- Table structure for table `task_completion`
--

CREATE TABLE `task_completion` (
  `id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `task_name` varchar(100) NOT NULL,
  `completion_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `task_completion`
--

INSERT INTO `task_completion` (`id`, `user_email`, `task_name`, `completion_date`) VALUES
(34, ' Angelo123', 'logMood', '2025-10-21'),
(23, '12@gmail.com', 'logMood', '2025-10-19'),
(26, '12@gmail.com', 'logMood', '2025-10-20'),
(31, '12@gmail.com', 'logMood', '2025-10-21'),
(40, '12@gmail.com', 'logMood', '2025-10-22'),
(29, '12@gmail.com', 'Meditate', '2025-10-20'),
(41, '12@gmail.com', 'Meditate', '2025-10-22'),
(25, '12@gmail.com', 'PushUps', '2025-10-19'),
(27, '12@gmail.com', 'PushUps', '2025-10-20'),
(33, '12@gmail.com', 'PushUps', '2025-10-21'),
(38, '12@gmail.com', 'PushUps', '2025-10-22'),
(24, '12@gmail.com', 'Squats', '2025-10-19'),
(28, '12@gmail.com', 'Squats', '2025-10-20'),
(32, '12@gmail.com', 'Squats', '2025-10-21'),
(39, '12@gmail.com', 'Squats', '2025-10-22'),
(30, '12@gmail.com', 'Stretching', '2025-10-20'),
(22, '1@gmail.com', 'logMood', '2025-10-18'),
(35, '1@gmail.com', 'logMood', '2025-10-21'),
(42, '1@gmail.com', 'logMood', '2025-10-22'),
(37, '1@gmail.com', 'PushUps', '2025-10-21'),
(43, '1@gmail.com', 'PushUps', '2025-10-22'),
(36, '1@gmail.com', 'Squats', '2025-10-21'),
(44, '1@gmail.com', 'Squats', '2025-10-22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `signup_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `points` int(11) DEFAULT 0,
  `full_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `signup_date`, `points`, `full_name`) VALUES
(15, 'c', '1', '1@gmail.com', '2025-10-18 10:37:54', 100, 'cc'),
(18, '1', '1', '12@gmail.com', '2025-10-19 13:53:12', 0, 'ceejay'),
(19, 'Angelo123', 'Angelo123', ' Angelo123', '2025-10-21 04:46:11', 20, 'Angelo Josef U. Gatan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `journals`
--
ALTER TABLE `journals`
  ADD PRIMARY KEY (`journal_id`);

--
-- Indexes for table `mood_logs`
--
ALTER TABLE `mood_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `task_completion`
--
ALTER TABLE `task_completion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_task_day` (`user_email`,`task_name`,`completion_date`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `journals`
--
ALTER TABLE `journals`
  MODIFY `journal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `mood_logs`
--
ALTER TABLE `mood_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `task_completion`
--
ALTER TABLE `task_completion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mood_logs`
--
ALTER TABLE `mood_logs`
  ADD CONSTRAINT `mood_logs_ibfk_1` FOREIGN KEY (`user_email`) REFERENCES `users` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
