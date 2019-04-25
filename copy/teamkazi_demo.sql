-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 18, 2017 at 09:35 AM
-- Server version: 5.6.37
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teamkazi_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `action` enum('created','updated','deleted') COLLATE utf8_unicode_ci NOT NULL,
  `log_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `log_type_title` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `log_type_id` int(11) NOT NULL DEFAULT '0',
  `changes` mediumtext COLLATE utf8_unicode_ci,
  `log_for` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `log_for_id` int(11) NOT NULL DEFAULT '0',
  `log_for2` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_for_id2` int(11) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `created_at`, `created_by`, `action`, `log_type`, `log_type_title`, `log_type_id`, `changes`, `log_for`, `log_for_id`, `log_for2`, `log_for_id2`, `deleted`) VALUES
(1, '2016-12-17 10:26:30', 3, 'updated', 'task', 'Installation', 13, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 6, '', 0, 0),
(2, '2016-12-17 10:26:49', 3, 'updated', 'task', 'Finalization', 10, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 3, '', 0, 0),
(3, '2016-12-17 10:26:56', 3, 'updated', 'task', 'Demo', 12, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 3, '', 0, 0),
(4, '2016-12-17 10:27:08', 3, 'updated', 'task', 'Finalization', 14, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:17:\"in_progress - 75%\";}}', 'project', 4, '', 0, 0),
(5, '2016-12-21 12:18:38', 2, 'created', 'task', 'Cheque Printing', 44, NULL, 'project', 1, '', 0, 0),
(6, '2016-12-22 05:27:47', 2, 'updated', 'task', 'Absent Days', 6, 'a:3:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:0:\"\";}s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"6\";}s:13:\"collaborators\";a:2:{s:4:\"from\";s:1:\"6\";s:2:\"to\";s:1:\"2\";}}', 'project', 1, '', 0, 0),
(7, '2016-12-22 05:29:16', 2, 'deleted', 'task', 'Create Employees', 3, NULL, 'project', 1, NULL, NULL, 0),
(8, '2016-12-22 05:29:45', 2, 'updated', 'task', 'Employees', 52, 'a:2:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"6\";s:2:\"to\";s:1:\"2\";}s:13:\"collaborators\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"6\";}}', 'project', 1, '', 0, 0),
(9, '2016-12-22 05:30:19', 2, 'updated', 'task', 'Designation', 51, 'a:2:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"6\";s:2:\"to\";s:1:\"2\";}s:13:\"collaborators\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"6\";}}', 'project', 1, '', 0, 0),
(10, '2016-12-22 07:53:54', 2, 'updated', 'task', 'Demo', 12, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}', 'project', 3, '', 0, 0),
(11, '2016-12-22 08:02:11', 6, 'updated', 'task', 'Loans', 5, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 1, '', 0, 0),
(12, '2016-12-22 08:02:22', 6, 'updated', 'task', 'Advances', 45, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 1, '', 0, 0),
(13, '2016-12-22 08:02:28', 6, 'updated', 'task', 'Bulk Advances', 46, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 1, '', 0, 0),
(14, '2016-12-22 08:02:36', 6, 'updated', 'task', 'Allowances', 47, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 1, '', 0, 0),
(15, '2016-12-22 08:02:42', 6, 'updated', 'task', 'Branches', 48, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 1, '', 0, 0),
(16, '2016-12-22 08:02:49', 6, 'updated', 'task', 'Deductions', 49, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 1, '', 0, 0),
(17, '2016-12-22 08:02:56', 6, 'updated', 'task', 'Departments', 50, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 1, '', 0, 0),
(18, '2016-12-22 08:03:03', 6, 'updated', 'task', 'Designation', 51, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 1, '', 0, 0),
(19, '2016-12-22 08:03:08', 6, 'updated', 'task', 'Gratuity', 53, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 1, '', 0, 0),
(20, '2016-12-22 08:03:14', 6, 'updated', 'task', 'Holidays', 54, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 1, '', 0, 0),
(21, '2016-12-22 08:03:19', 6, 'updated', 'task', 'Shifts', 56, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 1, '', 0, 0),
(22, '2016-12-22 08:15:57', 2, 'created', 'task', 'Prepare Implementation Plan', 59, NULL, 'project', 3, '', 0, 0),
(23, '2016-12-22 08:16:42', 2, 'created', 'task', 'Prepare User Documentation', 60, NULL, 'project', 3, '', 0, 0),
(24, '2016-12-22 08:23:51', 2, 'created', 'task', 'Administration', 61, NULL, 'project', 9, '', 0, 0),
(25, '2016-12-22 08:30:09', 2, 'created', 'task', 'Office Meetings', 62, NULL, 'project', 9, '', 0, 0),
(26, '2016-12-23 06:17:24', 2, 'created', 'task', 'Running Rate', 63, NULL, 'project', 7, '', 0, 0),
(27, '2016-12-23 06:17:47', 2, 'created', 'task', 'Shortcuts to add data on the fly', 64, NULL, 'project', 7, '', 0, 0),
(28, '2016-12-23 06:18:07', 2, 'created', 'task', 'Find Savings Per task', 65, NULL, 'project', 7, '', 0, 0),
(29, '2016-12-23 06:18:19', 2, 'created', 'task', 'API for integration', 66, NULL, 'project', 7, '', 0, 0),
(30, '2016-12-23 06:18:36', 2, 'created', 'task', 'Mobile App', 67, NULL, 'project', 7, '', 0, 0),
(31, '2016-12-23 06:19:55', 2, 'created', 'task', 'SQL Query creation', 68, NULL, 'project', 10, '', 0, 0),
(32, '2016-12-23 06:20:32', 2, 'created', 'task', 'Implement Multi Database', 69, NULL, 'project', 10, '', 0, 0),
(33, '2016-12-23 06:21:14', 2, 'created', 'task', 'Parameterised fetching', 70, NULL, 'project', 10, '', 0, 0),
(34, '2016-12-23 06:21:27', 2, 'created', 'task', 'Grouping', 71, NULL, 'project', 10, '', 0, 0),
(35, '2016-12-23 06:21:41', 2, 'created', 'task', 'Sorting', 72, NULL, 'project', 10, '', 0, 0),
(36, '2016-12-23 06:21:54', 2, 'created', 'task', 'Filtering', 73, NULL, 'project', 10, '', 0, 0),
(37, '2016-12-23 06:22:13', 2, 'created', 'task', 'Column Rearrangement', 74, NULL, 'project', 10, '', 0, 0),
(38, '2016-12-23 06:22:28', 2, 'created', 'task', 'Aggregations', 75, NULL, 'project', 10, '', 0, 0),
(39, '2016-12-23 06:22:47', 2, 'created', 'task', 'Notifications via schedular', 76, NULL, 'project', 10, '', 0, 0),
(40, '2016-12-23 06:23:03', 2, 'created', 'task', 'Dashboards', 77, NULL, 'project', 10, '', 0, 0),
(41, '2016-12-23 06:23:44', 2, 'updated', 'task', 'Mobile App', 67, 'a:3:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:0:\"\";}s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2016-12-21\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-01-03\";}}', 'project', 7, '', 0, 0),
(42, '2016-12-23 06:23:58', 2, 'updated', 'task', 'API for integration', 66, 'a:3:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:0:\"\";}s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2016-12-22\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-01-03\";}}', 'project', 7, '', 0, 0),
(43, '2016-12-23 06:24:09', 2, 'updated', 'task', 'Find Savings Per task', 65, 'a:3:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:0:\"\";}s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2016-12-22\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-01-03\";}}', 'project', 7, '', 0, 0),
(44, '2016-12-23 06:24:20', 2, 'updated', 'task', 'Shortcuts to add data on the fly', 64, 'a:3:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:0:\"\";}s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2016-12-22\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-01-03\";}}', 'project', 7, '', 0, 0),
(45, '2016-12-23 06:24:34', 2, 'updated', 'task', 'Running Rate', 63, 'a:3:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:0:\"\";}s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2016-12-22\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-01-03\";}}', 'project', 7, '', 0, 0),
(46, '2016-12-25 04:13:56', 3, 'updated', 'task', 'Plan the execution process', 17, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 5, '', 0, 0),
(47, '2016-12-27 12:24:06', 7, 'created', 'task', 'Homepage fixes', 78, NULL, 'project', 7, '', 0, 0),
(48, '2016-12-27 12:24:45', 7, 'updated', 'task', 'Homepage fixes', 78, 'a:2:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"2\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2016-12-28\";}}', 'project', 7, '', 0, 0),
(49, '2016-12-27 12:32:15', 7, 'created', 'task', 'Filers on Tasklist', 79, NULL, 'project', 7, '', 0, 0),
(50, '2016-12-27 13:20:52', 7, 'created', 'task', 'Data Fetching', 80, NULL, 'project', 10, '', 0, 0),
(51, '2016-12-27 13:22:55', 7, 'created', 'task', 'Data Pivot', 81, NULL, 'project', 10, '', 0, 0),
(52, '2016-12-27 13:24:04', 7, 'created', 'task', 'User Access to Reports', 82, NULL, 'project', 10, '', 0, 0),
(53, '2016-12-27 13:25:50', 7, 'created', 'task', 'Report Designer', 83, NULL, 'project', 10, '', 0, 0),
(54, '2016-12-27 13:26:34', 7, 'created', 'task', 'Export Data', 84, NULL, 'project', 10, '', 0, 0),
(55, '2016-12-29 07:54:13', 2, 'created', 'task_comment', 'Already done', 1, NULL, 'project', 7, 'task', 79, 0),
(56, '2016-12-29 07:54:34', 2, 'updated', 'task', 'Filers on Tasklist', 79, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 7, '', 0, 0),
(57, '2016-12-29 07:54:52', 2, 'updated', 'task', 'Shortcuts to add data on the fly', 64, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 7, '', 0, 0),
(58, '2016-12-29 08:56:37', 3, 'updated', 'task', 'Mobile App', 67, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:17:\"in_progress - 25%\";}}', 'project', 7, '', 0, 0),
(59, '2016-12-29 08:57:06', 3, 'updated', 'task', 'Prepare Implementation Plan', 59, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 3, '', 0, 0),
(60, '2016-12-31 11:54:00', 2, 'updated', 'task', 'Running Rate', 63, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 7, '', 0, 0),
(61, '2016-12-31 11:54:15', 2, 'updated', 'task', 'Find Savings Per task', 65, 'a:2:{s:5:\"title\";a:2:{s:4:\"from\";s:21:\"Find Savings Per task\";s:2:\"to\";s:24:\"Find Savings Per Project\";}s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:0:\"\";}}', 'project', 7, '', 0, 0),
(62, '2016-12-31 11:54:22', 2, 'updated', 'task', 'Find Savings Per Project', 65, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 7, '', 0, 0),
(63, '2017-01-03 05:18:29', 6, 'updated', 'task', 'Absent Days', 6, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:17:\"in_progress - 50%\";}}', 'project', 1, '', 0, 0),
(64, '2017-01-03 05:21:08', 6, 'updated', 'task', 'Settings', 16, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:17:\"in_progress - 25%\";s:2:\"to\";s:17:\"in_progress - 75%\";}}', 'project', 1, '', 0, 0),
(65, '2017-01-03 06:12:32', 2, 'created', 'task', 'Planning', 85, NULL, 'project', 5, '', 0, 0),
(66, '2017-01-03 09:18:34', 6, 'updated', 'task', 'Absent Days', 6, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:17:\"in_progress - 50%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 1, '', 0, 0),
(67, '2017-01-03 09:19:48', 6, 'updated', 'task', 'Advances', 4, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:17:\"in_progress - 75%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 1, '', 0, 0),
(68, '2017-01-03 09:20:13', 6, 'updated', 'task', 'Settings', 16, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:17:\"in_progress - 75%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 1, '', 0, 0),
(69, '2017-01-03 09:37:06', 6, 'updated', 'task', 'ACL', 55, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 1, '', 0, 0),
(70, '2017-01-03 09:37:15', 6, 'updated', 'task', 'ACL', 55, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}', 'project', 1, '', 0, 0),
(71, '2017-01-03 09:37:21', 6, 'updated', 'task', 'Pay Grades', 58, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 1, '', 0, 0),
(72, '2017-01-03 09:37:28', 6, 'updated', 'task', 'Wage Rates', 57, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 1, '', 0, 0),
(73, '2017-01-03 14:09:53', 7, 'created', 'task', 'Demo Copy', 86, NULL, 'project', 1, '', 0, 0),
(74, '2017-01-09 07:12:04', 2, 'created', 'task', 'Topline Implementation', 87, NULL, 'project', 11, '', 0, 0),
(75, '2017-01-09 12:49:54', 8, 'created', 'task', 'CloudWage Testing', 88, NULL, 'project', 7, '', 0, 0),
(76, '2017-01-09 12:50:43', 8, 'updated', 'task', 'CloudWage Testing', 88, 'a:1:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"5\";}}', 'project', 7, '', 0, 0),
(77, '2017-01-09 13:19:32', 8, 'created', 'task', 'Brochures', 89, NULL, 'project', 7, '', 0, 0),
(78, '2017-01-09 14:27:03', 8, 'updated', 'task', 'CloudWage Testing', 88, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:17:\"in_progress - 75%\";}}', 'project', 7, '', 0, 0),
(79, '2017-01-10 11:23:14', 6, 'updated', 'task', 'Reports', 9, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 1, '', 0, 0),
(80, '2017-01-10 11:50:10', 2, 'created', 'task', 'Finger Print API', 120, NULL, 'project', 12, '', 0, 0),
(81, '2017-01-10 11:50:39', 2, 'created', 'task', 'Time Management', 121, NULL, 'project', 12, '', 0, 0),
(82, '2017-01-10 11:50:53', 2, 'created', 'task', 'Reports', 122, NULL, 'project', 12, '', 0, 0),
(83, '2017-01-10 12:06:21', 3, 'updated', 'task', '2.1.1 - Add units/branches', 90, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 5, '', 0, 0),
(84, '2017-01-10 12:45:25', 8, 'created', 'task', 'Logo', 123, NULL, 'project', 13, '', 0, 0),
(85, '2017-01-10 12:45:44', 8, 'updated', 'task', 'Logo', 123, 'a:2:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"1\";}s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-01-10\";}}', 'project', 13, '', 0, 0),
(86, '2017-01-10 12:46:42', 8, 'created', 'task', 'Brochure', 124, NULL, 'project', 13, '', 0, 0),
(87, '2017-01-10 14:34:21', 5, 'updated', 'task', 'Finger Print API', 120, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 12, '', 0, 0),
(88, '2017-01-10 14:34:23', 6, 'updated', 'task', 'Reports', 9, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}', 'project', 1, '', 0, 0),
(89, '2017-01-10 14:34:50', 6, 'updated', 'task', 'Reports', 122, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 12, '', 0, 0),
(90, '2017-01-10 14:34:59', 6, 'updated', 'task', 'Time Management', 121, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 12, '', 0, 0),
(91, '2017-01-11 07:54:54', 6, 'updated', 'task', 'Reports', 9, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:17:\"in_progress - 25%\";}}', 'project', 1, '', 0, 0),
(92, '2017-01-11 13:13:58', 5, 'updated', 'task', 'Office Meetings', 62, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 9, '', 0, 0),
(93, '2017-01-11 13:14:02', 5, 'updated', 'task', 'Reports', 122, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}', 'project', 12, '', 0, 0),
(94, '2017-01-11 13:14:22', 5, 'updated', 'task', 'Reports', 122, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 12, '', 0, 0),
(95, '2017-01-11 13:14:34', 5, 'updated', 'task', 'Finger Print API', 120, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}', 'project', 12, '', 0, 0),
(96, '2017-01-11 13:15:50', 5, 'updated', 'task', 'Finger Print API', 120, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 12, '', 0, 0),
(97, '2017-01-11 13:15:57', 5, 'updated', 'task', 'Finger Print API', 120, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}', 'project', 12, '', 0, 0),
(98, '2017-01-11 13:16:03', 5, 'updated', 'task', 'Finger Print API', 120, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 12, '', 0, 0),
(99, '2017-01-11 13:16:26', 5, 'updated', 'task', 'Finger Print API', 120, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}', 'project', 12, '', 0, 0),
(100, '2017-01-11 13:20:53', 5, 'updated', 'task', 'Finger Print API', 120, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 12, '', 0, 0),
(101, '2017-01-11 17:13:10', 7, 'created', 'task', 'View all tasks', 125, NULL, 'project', 13, '', 0, 0),
(102, '2017-01-11 17:13:59', 7, 'created', 'task', 'Sub-Total hours', 126, NULL, 'project', 13, '', 0, 0),
(103, '2017-01-11 17:15:13', 7, 'created', 'task', 'Time spent per resource', 127, NULL, 'project', 13, '', 0, 0),
(104, '2017-01-11 17:16:38', 7, 'created', 'task', 'Sub-Tasks', 128, NULL, 'project', 13, '', 0, 0),
(105, '2017-01-11 17:20:42', 7, 'created', 'task', 'Alerts', 129, NULL, 'project', 13, '', 0, 0),
(106, '2017-01-11 17:22:35', 7, 'created', 'task', 'Project Stakeholders', 130, NULL, 'project', 13, '', 0, 0),
(107, '2017-01-11 17:27:22', 7, 'created', 'task', 'Project Values', 131, NULL, 'project', 13, '', 0, 0),
(108, '2017-01-11 17:43:30', 7, 'created', 'task', 'Report tasks by Resources', 132, NULL, 'project', 13, '', 0, 0),
(109, '2017-01-11 17:44:07', 7, 'created', 'task', 'Standalone', 133, NULL, 'project', 4, '', 0, 0),
(110, '2017-01-12 07:48:50', 3, 'updated', 'task', 'Planning', 85, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 5, '', 0, 0),
(111, '2017-01-12 08:51:43', 3, 'updated', 'task', '2.1.1 - HR offenses', 93, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 5, '', 0, 0),
(112, '2017-01-12 09:52:18', 3, 'updated', 'task', '2.1.7 - Add leave types', 97, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 5, '', 0, 0),
(113, '2017-01-12 11:04:54', 3, 'updated', 'task', '2.1.1 - job groups, nationalities', 92, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 5, '', 0, 0),
(114, '2017-01-12 13:58:54', 8, 'updated', 'task', 'Brochure', 124, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:17:\"in_progress - 75%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 13, '', 0, 0),
(115, '2017-01-12 14:07:24', 3, 'updated', 'task', '2.1.5 - Medical information', 95, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 5, '', 0, 0),
(116, '2017-01-13 11:25:39', 3, 'updated', 'task', '2.1.4 - Upload job description -add modal', 94, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 5, '', 0, 0),
(117, '2017-01-13 11:26:06', 3, 'updated', 'task', '2.2.4 - Pending leave days', 105, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 5, '', 0, 0),
(118, '2017-01-13 11:56:21', 3, 'updated', 'task', '2.1.10 - Displinary types and actions', 100, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 5, '', 0, 0),
(119, '2017-01-13 14:37:03', 2, 'updated', 'task', 'View all tasks', 125, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 13, '', 0, 0),
(120, '2017-01-15 16:16:27', 7, 'created', 'task', 'Create Truck Master', 134, NULL, 'project', 14, '', 0, 0),
(121, '2017-01-15 16:16:50', 7, 'created', 'task', 'Driver & Turn-boy Master', 135, NULL, 'project', 14, '', 0, 0),
(122, '2017-01-15 16:17:30', 7, 'created', 'task', 'Route Master', 136, NULL, 'project', 14, '', 0, 0),
(123, '2017-01-15 16:17:52', 7, 'updated', 'task', 'Create Truck Master', 134, 'a:2:{s:11:\"description\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:336:\"1.	Trucks are added in SAGE  as sub-projects. There will be a Main Project Code that will be used to identify the sub-projects. This Main Project will be selected by the user in Settings section. After that all the Sub-projects entered under that main project will be added to the system as Trucks. Use Sub-project Code as Truck Reg No.\";}s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:0:\"\";}}', 'project', 14, '', 0, 0),
(124, '2017-01-15 16:18:07', 7, 'updated', 'task', 'Driver & Turn-boy Master', 135, 'a:2:{s:11:\"description\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:188:\"2.	Each truck is assigned a Driver and Turnboy. These settings do not change that frequently. Multiple details need to be stored for Driver and Turnboy e.g. Mobile number, National ID etc.\";}s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:0:\"\";}}', 'project', 14, '', 0, 0),
(125, '2017-01-15 16:19:01', 7, 'created', 'task', 'Location Master', 137, NULL, 'project', 14, '', 0, 0),
(126, '2017-01-15 16:19:35', 7, 'created', 'task', 'Daily Transactions', 138, NULL, 'project', 14, '', 0, 0),
(127, '2017-01-15 16:19:54', 7, 'created', 'task', 'Mobile and WebApp to run together', 139, NULL, 'project', 14, '', 0, 0),
(128, '2017-01-15 16:21:27', 7, 'created', 'project_file', '_file587ba18715573-SRS.docx', 1, NULL, 'project', 14, '', 0, 0),
(129, '2017-01-15 16:25:04', 7, 'updated', 'task', 'Daily Transactions', 138, 'a:2:{s:5:\"title\";a:2:{s:4:\"from\";s:18:\"Daily Transactions\";s:2:\"to\";s:29:\"Daily Transactions - Checkout\";}s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:0:\"\";}}', 'project', 14, '', 0, 0),
(130, '2017-01-15 16:25:23', 7, 'created', 'task', 'Daily Transactions - Checkin', 140, NULL, 'project', 14, '', 0, 0),
(131, '2017-01-15 16:25:48', 7, 'created', 'task', 'Admin Module', 141, NULL, 'project', 14, '', 0, 0),
(132, '2017-01-15 16:26:19', 7, 'created', 'task', 'Billing Module', 142, NULL, 'project', 14, '', 0, 0),
(133, '2017-01-15 16:29:47', 7, 'created', 'task', 'Integration (SAGE, Payroll)', 143, NULL, 'project', 14, '', 0, 0),
(134, '2017-01-16 14:27:38', 6, 'updated', 'task', 'Reports', 9, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:17:\"in_progress - 25%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 1, '', 0, 0),
(135, '2017-01-16 14:45:51', 6, 'updated', 'task', 'Reports', 9, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:17:\"in_progress - 75%\";}}', 'project', 1, '', 0, 0),
(136, '2017-01-16 14:49:30', 6, 'updated', 'task', 'Reports', 9, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:17:\"in_progress - 75%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 1, '', 0, 0),
(137, '2017-01-17 06:24:46', 10, 'updated', 'task', 'Create property categories', 144, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 2, '', 0, 0),
(138, '2017-01-17 06:24:48', 10, 'updated', 'task', 'Add single property', 145, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 2, '', 0, 0),
(139, '2017-01-17 06:25:23', 10, 'updated', 'task', 'Edit single property', 147, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 2, '', 0, 0),
(140, '2017-01-17 06:25:25', 10, 'updated', 'task', 'Bulk add properties', 146, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 2, '', 0, 0),
(141, '2017-01-17 06:41:15', 10, 'updated', 'task', 'Bulk add properties', 146, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}', 'project', 2, '', 0, 0),
(142, '2017-01-17 07:03:04', 7, 'created', 'task', 'Compile Feature List', 171, NULL, 'project', 2, '', 0, 0),
(143, '2017-01-17 07:03:49', 7, 'updated', 'task', 'Compile Feature List', 171, 'a:1:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:2:\"16\";}}', 'project', 2, '', 0, 0),
(144, '2017-01-17 07:36:12', 3, 'updated', 'task', '2.1.6 - Training calender, in-house training', 96, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 5, '', 0, 0),
(145, '2017-01-17 07:44:24', 10, 'updated', 'task', 'Bulk add properties', 146, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 2, '', 0, 0),
(146, '2017-01-17 07:45:58', 10, 'updated', 'task', 'Delete single units', 149, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 2, '', 0, 0),
(147, '2017-01-17 07:51:10', 3, 'updated', 'task', '2.2.8 - Training calendar', 109, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 5, '', 0, 0),
(148, '2017-01-17 08:33:15', 7, 'created', 'task', 'Study Features in competitor products', 172, NULL, 'project', 4, '', 0, 0),
(149, '2017-01-17 10:56:07', 10, 'updated', 'task', 'Bulk edit properties', 148, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 2, '', 0, 0),
(150, '2017-01-17 12:42:50', 10, 'updated', 'task', 'Set property manager', 151, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 2, '', 0, 0),
(151, '2017-01-17 12:55:50', 10, 'updated', 'task', 'Set property caretaker', 153, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 2, '', 0, 0),
(152, '2017-01-17 14:00:52', 2, 'updated', 'task', 'Sub-Total hours', 126, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 13, '', 0, 0),
(153, '2017-01-17 14:10:02', 10, 'updated', 'task', 'Set property owner', 150, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 2, '', 0, 0),
(154, '2017-01-17 14:10:06', 10, 'updated', 'task', 'Set maintenance officer', 152, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 2, '', 0, 0),
(155, '2017-01-17 15:18:40', 6, 'updated', 'task', 'Create Truck Master', 134, 'a:2:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:0:\"\";}s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:2:\"11\";}}', 'project', 14, '', 0, 0),
(156, '2017-01-17 15:18:52', 6, 'updated', 'task', 'Driver & Turn-boy Master', 135, 'a:2:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:0:\"\";}s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:2:\"11\";}}', 'project', 14, '', 0, 0),
(157, '2017-01-17 15:19:12', 6, 'updated', 'task', 'Route Master', 136, 'a:2:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:0:\"\";}s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:2:\"11\";}}', 'project', 14, '', 0, 0),
(158, '2017-01-17 15:19:31', 6, 'updated', 'task', 'Location Master', 137, 'a:2:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:0:\"\";}s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:2:\"11\";}}', 'project', 14, '', 0, 0),
(159, '2017-01-17 15:19:41', 6, 'updated', 'task', 'Daily Transactions - Checkout', 138, 'a:2:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:0:\"\";}s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:2:\"11\";}}', 'project', 14, '', 0, 0),
(160, '2017-01-17 15:19:56', 6, 'updated', 'task', 'Mobile and WebApp to run together', 139, 'a:3:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:0:\"\";}s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:2:\"11\";}s:13:\"collaborators\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:1:\"3\";}}', 'project', 14, '', 0, 0),
(161, '2017-01-17 15:20:06', 6, 'updated', 'task', 'Daily Transactions - Checkin', 140, 'a:2:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:0:\"\";}s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:2:\"11\";}}', 'project', 14, '', 0, 0),
(162, '2017-01-17 15:20:20', 6, 'updated', 'task', 'Admin Module', 141, 'a:2:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:0:\"\";}s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:2:\"11\";}}', 'project', 14, '', 0, 0),
(163, '2017-01-17 15:20:31', 6, 'updated', 'task', 'Billing Module', 142, 'a:2:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:0:\"\";}s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:2:\"11\";}}', 'project', 14, '', 0, 0),
(164, '2017-01-17 15:20:43', 6, 'updated', 'task', 'Integration (SAGE, Payroll)', 143, 'a:2:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:0:\"\";}s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:2:\"11\";}}', 'project', 14, '', 0, 0),
(165, '2017-01-17 15:39:40', 8, 'created', 'task', 'POS Campaign Artwork', 173, NULL, 'project', 7, '', 0, 0),
(166, '2017-01-17 15:39:56', 8, 'updated', 'task', 'POS Campaign Artwork', 173, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 7, '', 0, 0),
(167, '2017-01-18 03:52:26', 10, 'updated', 'task', 'User registration', 154, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:17:\"in_progress - 50%\";}}', 'project', 2, '', 0, 0),
(168, '2017-01-18 05:58:50', 10, 'updated', 'task', 'User registration', 154, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:17:\"in_progress - 50%\";s:2:\"to\";s:17:\"in_progress - 75%\";}}', 'project', 2, '', 0, 0),
(169, '2017-01-18 06:24:47', 6, 'updated', 'task', 'ACL', 55, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:17:\"in_progress - 25%\";}}', 'project', 1, '', 0, 0),
(170, '2017-01-18 06:25:01', 6, 'updated', 'task', 'Employees', 52, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:17:\"in_progress - 75%\";}}', 'project', 1, '', 0, 0),
(171, '2017-01-18 08:35:12', 8, 'created', 'task_comment', 'The Notes are not visible on my account.. please make them accessible', 2, NULL, 'project', 2, 'task', 171, 0),
(172, '2017-01-18 08:52:14', 2, 'deleted', 'task', '2.1.1 - Add units/branches', 174, NULL, 'project', 13, NULL, NULL, 0),
(173, '2017-01-18 09:40:05', 10, 'updated', 'task', 'Set property owner', 150, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:17:\"in_progress - 50%\";}}', 'project', 2, '', 0, 0),
(174, '2017-01-18 09:40:12', 10, 'updated', 'task', 'Set property manager', 151, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:17:\"in_progress - 50%\";}}', 'project', 2, '', 0, 0),
(175, '2017-01-18 09:40:18', 10, 'updated', 'task', 'Set maintenance officer', 152, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:17:\"in_progress - 50%\";}}', 'project', 2, '', 0, 0),
(176, '2017-01-18 09:40:23', 10, 'updated', 'task', 'Set property caretaker', 153, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:17:\"in_progress - 50%\";}}', 'project', 2, '', 0, 0),
(177, '2017-01-18 14:16:58', 10, 'updated', 'task', 'Search for available property', 157, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 2, '', 0, 0),
(178, '2017-01-18 14:33:40', 10, 'updated', 'task', 'User registration', 154, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:17:\"in_progress - 75%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 2, '', 0, 0),
(179, '2017-01-18 15:27:47', 3, 'updated', 'task', '2.1.12 - Travel mode, travel cadre, travel perdiem', 102, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 5, '', 0, 0),
(180, '2017-01-19 05:03:31', 11, 'updated', 'task', 'Create Truck Master', 134, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 14, '', 0, 0),
(181, '2017-01-19 05:03:40', 11, 'updated', 'task', 'Driver & Turn-boy Master', 135, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 14, '', 0, 0),
(182, '2017-01-19 05:04:07', 11, 'updated', 'task', 'Driver & Turn-boy Master', 135, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:17:\"in_progress - 25%\";}}', 'project', 14, '', 0, 0),
(183, '2017-01-19 06:07:59', 8, 'created', 'task', 'Process Invoices ', 175, NULL, 'project', 7, '', 0, 0),
(184, '2017-01-19 06:18:19', 10, 'updated', 'task', 'Set property owner', 150, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:17:\"in_progress - 50%\";s:2:\"to\";s:17:\"in_progress - 75%\";}}', 'project', 2, '', 0, 0),
(185, '2017-01-19 06:29:20', 8, 'deleted', 'task', 'Process Invoices ', 175, NULL, 'project', 7, NULL, NULL, 0),
(186, '2017-01-19 06:29:33', 8, 'deleted', 'task', 'CloudWage Testing', 88, NULL, 'project', 7, NULL, NULL, 0),
(187, '2017-01-19 06:29:53', 8, 'deleted', 'task', 'POS Campaign Artwork', 173, NULL, 'project', 7, NULL, NULL, 0),
(188, '2017-01-19 08:07:22', 2, 'updated', 'task', 'Homepage fixes', 78, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 7, '', 0, 0),
(189, '2017-01-19 08:10:00', 2, 'updated', 'task', 'Route Master', 136, 'a:1:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"4\";}}', 'project', 14, '', 0, 0),
(190, '2017-01-19 08:10:23', 2, 'updated', 'task', 'Location Master', 137, 'a:1:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"4\";}}', 'project', 14, '', 0, 0),
(191, '2017-01-19 08:10:37', 2, 'updated', 'task', 'Daily Transactions - Checkout', 138, 'a:1:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"6\";}}', 'project', 14, '', 0, 0),
(192, '2017-01-19 08:12:02', 2, 'updated', 'task', 'Daily Transactions - Checkin', 140, 'a:1:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"6\";}}', 'project', 14, '', 0, 0),
(193, '2017-01-19 08:13:00', 2, 'updated', 'task', 'Admin Module', 141, 'a:1:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"6\";}}', 'project', 14, '', 0, 0),
(194, '2017-01-19 08:13:15', 2, 'updated', 'task', 'Billing Module', 142, 'a:1:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"6\";}}', 'project', 14, '', 0, 0),
(195, '2017-01-19 08:13:32', 2, 'updated', 'task', 'Integration (SAGE, Payroll)', 143, 'a:1:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"6\";}}', 'project', 14, '', 0, 0),
(196, '2017-01-19 08:15:03', 2, 'updated', 'task', 'Driver & Turn-boy Master', 135, 'a:1:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"3\";}}', 'project', 14, '', 0, 0),
(197, '2017-01-19 08:20:26', 2, 'updated', 'task', 'Create Truck Master', 134, 'a:3:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"3\";}s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-01-17\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-01-25\";}}', 'project', 14, '', 0, 0),
(198, '2017-01-19 08:21:49', 2, 'updated', 'task', 'Mobile and WebApp to run together', 139, 'a:4:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:2:\"45\";}s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-01-17\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-01-25\";}s:13:\"collaborators\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:3:\"3,2\";}}', 'project', 14, '', 0, 0),
(199, '2017-01-19 08:22:16', 2, 'updated', 'task', 'Driver & Turn-boy Master', 135, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-01-17\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-01-25\";}}', 'project', 14, '', 0, 0),
(200, '2017-01-19 08:22:32', 2, 'updated', 'task', 'Integration (SAGE, Payroll)', 143, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-01-17\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-01-25\";}}', 'project', 14, '', 0, 0),
(201, '2017-01-19 08:23:09', 2, 'updated', 'task', 'Billing Module', 142, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-01-17\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-01-25\";}}', 'project', 14, '', 0, 0),
(202, '2017-01-19 08:23:26', 2, 'updated', 'task', 'Admin Module', 141, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-01-17\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-01-25\";}}', 'project', 14, '', 0, 0),
(203, '2017-01-19 08:23:40', 2, 'updated', 'task', 'Daily Transactions - Checkin', 140, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-01-17\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-01-25\";}}', 'project', 14, '', 0, 0),
(204, '2017-01-19 08:23:51', 2, 'updated', 'task', 'Daily Transactions - Checkout', 138, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-01-17\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-01-25\";}}', 'project', 14, '', 0, 0),
(205, '2017-01-19 08:24:02', 2, 'updated', 'task', 'Location Master', 137, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-01-17\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-01-25\";}}', 'project', 14, '', 0, 0),
(206, '2017-01-19 08:24:14', 2, 'updated', 'task', 'Route Master', 136, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-01-17\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-01-25\";}}', 'project', 14, '', 0, 0),
(207, '2017-01-19 08:26:41', 2, 'created', 'task', 'Full Application Testing', 176, NULL, 'project', 14, '', 0, 0),
(208, '2017-01-19 08:48:50', 8, 'created', 'task', 'Process Invoices ', 177, NULL, 'project', 9, '', 0, 0),
(209, '2017-01-19 08:50:01', 8, 'updated', 'task', 'Process Invoices ', 177, 'a:1:{s:13:\"collaborators\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:1:\"8\";}}', 'project', 9, '', 0, 0),
(210, '2017-01-19 09:00:39', 11, 'updated', 'task', 'Driver & Turn-boy Master', 135, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:17:\"in_progress - 25%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 14, '', 0, 0),
(211, '2017-01-19 11:10:45', 2, 'updated', 'task', 'API for integration', 66, 'a:2:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:0:\"\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"2017-01-03\";s:2:\"to\";s:10:\"0000-00-00\";}}', 'project', 7, '', 0, 0),
(212, '2017-01-19 11:11:14', 2, 'updated', 'task', 'Brochures', 89, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 7, '', 0, 0),
(213, '2017-01-19 11:15:08', 2, 'updated', 'task', '2.5.1 - Travels with Approvals and notifications', 116, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:17:\"in_progress - 25%\";}}', 'project', 5, '', 0, 0),
(214, '2017-01-19 11:15:19', 2, 'updated', 'task', '2.7.1 - HR Displinary Actions with notifications & approvals', 118, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:17:\"in_progress - 50%\";}}', 'project', 5, '', 0, 0),
(215, '2017-01-19 11:15:49', 2, 'updated', 'task', '2.4.10 - Handover Notifications & Process', 115, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:17:\"in_progress - 50%\";}}', 'project', 5, '', 0, 0),
(216, '2017-01-19 11:19:01', 2, 'updated', 'task', 'Add Client Login', 18, 'a:1:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"4\";s:2:\"to\";s:2:\"10\";}}', 'project', 2, '', 0, 0),
(217, '2017-01-19 11:19:15', 2, 'updated', 'task', 'Add Client Login', 18, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 2, '', 0, 0),
(218, '2017-01-19 11:19:32', 2, 'updated', 'task', 'Online Application form', 19, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 2, '', 0, 0),
(219, '2017-01-19 11:19:40', 2, 'updated', 'task', 'System Migration', 15, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 2, '', 0, 0),
(220, '2017-01-19 11:53:41', 2, 'created', 'task', 'Change Logo &  Images', 178, NULL, 'project', 13, '', 0, 0),
(221, '2017-01-19 12:21:08', 2, 'created', 'task', 'Fix Bugs', 179, NULL, 'project', 13, '', 0, 0),
(222, '2017-01-19 12:55:52', 2, 'created', 'task', 'Add expenses to total cost', 180, NULL, 'project', 13, '', 0, 0),
(223, '2017-01-19 16:56:43', 7, 'created', 'task', 'Resource Time sheet Report', 181, NULL, 'project', 13, '', 0, 0),
(224, '2017-04-02 15:28:14', 6, 'updated', 'task', 'Finger Print API', 120, 'a:3:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:0:\"\";}s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-04-09\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-04-29\";}}', 'project', 12, '', 0, 0),
(225, '2017-04-15 04:49:38', 6, 'updated', 'task', 'Administration', 61, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 9, '', 0, 0),
(226, '2017-04-15 04:49:41', 6, 'updated', 'task', 'Process Invoices ', 177, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:17:\"in_progress - 50%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 9, '', 0, 0),
(227, '2017-04-15 04:49:43', 6, 'updated', 'task', 'Process Invoices ', 177, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}', 'project', 9, '', 0, 0),
(228, '2017-04-15 04:49:59', 6, 'updated', 'task', 'Administration', 61, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}', 'project', 9, '', 0, 0),
(229, '2017-04-15 04:50:02', 6, 'updated', 'task', 'Office Meetings', 62, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}', 'project', 9, '', 0, 0),
(230, '2017-04-15 05:18:46', 6, 'updated', 'task', 'Driver & Turn-boy Master', 135, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}', 'project', 14, '', 0, 0),
(231, '2017-04-15 05:18:47', 6, 'updated', 'task', 'Create Truck Master', 134, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}', 'project', 14, '', 0, 0),
(232, '2017-04-15 06:15:26', 6, 'updated', 'task', 'Generate Payrolls', 7, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 1, '', 0, 0),
(233, '2017-04-15 06:15:27', 6, 'updated', 'task', 'Generate Coinage', 8, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 1, '', 0, 0),
(234, '2017-04-15 06:15:29', 6, 'updated', 'task', 'Cheque Printing', 44, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 1, '', 0, 0),
(235, '2017-04-15 06:15:31', 6, 'updated', 'task', 'Employees', 52, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:17:\"in_progress - 75%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 1, '', 0, 0),
(236, '2017-04-15 06:15:33', 6, 'updated', 'task', 'ACL', 55, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:17:\"in_progress - 25%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 1, '', 0, 0),
(237, '2017-04-15 06:15:34', 6, 'updated', 'task', 'Office Meetings', 62, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 9, '', 0, 0),
(238, '2017-04-15 06:15:36', 6, 'updated', 'task', 'Demo Copy', 86, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 1, '', 0, 0),
(239, '2017-04-15 06:15:38', 6, 'updated', 'task', 'Generate Payrolls', 7, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}', 'project', 1, '', 0, 0),
(240, '2017-04-15 06:15:40', 6, 'updated', 'task', 'Generate Coinage', 8, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}', 'project', 1, '', 0, 0),
(241, '2017-04-15 06:15:42', 6, 'updated', 'task', 'Cheque Printing', 44, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}', 'project', 1, '', 0, 0),
(242, '2017-04-15 06:15:45', 6, 'updated', 'task', 'Employees', 52, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}', 'project', 1, '', 0, 0),
(243, '2017-04-15 06:15:46', 6, 'updated', 'task', 'ACL', 55, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}', 'project', 1, '', 0, 0),
(244, '2017-04-15 06:15:48', 6, 'updated', 'task', 'Office Meetings', 62, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}', 'project', 9, '', 0, 0),
(245, '2017-04-15 06:15:50', 6, 'updated', 'task', 'Demo Copy', 86, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}', 'project', 1, '', 0, 0),
(246, '2017-04-15 06:16:16', 6, 'updated', 'task', 'Generate Payrolls', 7, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:17:\"in_progress - 25%\";}}', 'project', 1, '', 0, 0),
(247, '2017-04-15 06:16:29', 6, 'updated', 'task', 'Generate Payrolls', 7, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:17:\"in_progress - 25%\";s:2:\"to\";s:17:\"in_progress - 50%\";}}', 'project', 1, '', 0, 0),
(248, '2017-04-15 06:16:49', 6, 'updated', 'task', 'Cheque Printing', 44, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:17:\"in_progress - 25%\";}}', 'project', 1, '', 0, 0),
(249, '2017-04-15 06:18:40', 6, 'updated', 'task', 'ACL', 55, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:17:\"in_progress - 75%\";}}', 'project', 1, '', 0, 0),
(250, '2017-04-15 06:19:15', 6, 'updated', 'task', 'Cheque Printing', 44, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:17:\"in_progress - 25%\";s:2:\"to\";s:17:\"in_progress - 75%\";}}', 'project', 1, '', 0, 0),
(251, '2017-04-15 06:56:35', 2, 'updated', 'task', 'Generate Payrolls', 7, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:17:\"in_progress - 50%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 1, '', 0, 0),
(252, '2017-04-15 06:56:37', 2, 'updated', 'task', 'Generate Coinage', 8, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 1, '', 0, 0),
(253, '2017-04-15 06:56:40', 2, 'updated', 'task', 'Demo', 12, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 3, '', 0, 0),
(254, '2017-04-15 06:56:49', 2, 'updated', 'task', 'Resource Time sheet Report', 181, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 13, '', 0, 0),
(255, '2017-04-15 06:57:07', 2, 'updated', 'task', 'Authentication', 20, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 8, '', 0, 0),
(256, '2017-04-15 06:57:29', 2, 'updated', 'task', 'Shifts', 1, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}', 'project', 1, '', 0, 0),
(257, '2017-04-15 06:57:31', 2, 'updated', 'task', 'Holidays', 2, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}', 'project', 1, '', 0, 0),
(258, '2017-04-15 06:57:33', 2, 'updated', 'task', 'Advances', 4, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}', 'project', 1, '', 0, 0),
(259, '2017-04-15 06:57:35', 2, 'updated', 'task', 'Loans', 5, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}', 'project', 1, '', 0, 0),
(260, '2017-04-15 06:57:37', 2, 'updated', 'task', 'Absent Days', 6, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}', 'project', 1, '', 0, 0),
(261, '2017-04-15 08:09:37', 6, 'created', 'task_comment', 'oldisgold', 3, NULL, 'project', 1, 'task', 4, 0),
(262, '2017-04-15 12:34:23', 6, 'updated', 'task', 'Generate Payrolls', 7, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}', 'project', 1, '', 0, 0),
(263, '2017-04-15 12:34:23', 6, 'updated', 'task', 'Generate Coinage', 8, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}', 'project', 1, '', 0, 0),
(264, '2017-04-15 12:34:36', 6, 'updated', 'task', 'Time Management', 121, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}', 'project', 12, '', 0, 0),
(265, '2017-04-15 12:34:38', 6, 'updated', 'task', 'Reports', 122, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}', 'project', 12, '', 0, 0),
(266, '2017-04-15 12:34:41', 6, 'updated', 'task', 'Generate Payrolls', 7, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 1, '', 0, 0),
(267, '2017-04-17 06:55:29', 7, 'updated', 'task', 'Advances', 45, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}', 'project', 1, '', 0, 0),
(268, '2017-04-17 06:55:31', 7, 'updated', 'task', 'Bulk Advances', 46, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}', 'project', 1, '', 0, 0);
INSERT INTO `activity_logs` (`id`, `created_at`, `created_by`, `action`, `log_type`, `log_type_title`, `log_type_id`, `changes`, `log_for`, `log_for_id`, `log_for2`, `log_for_id2`, `deleted`) VALUES
(269, '2017-04-17 06:55:33', 7, 'updated', 'task', 'Allowances', 47, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}', 'project', 1, '', 0, 0),
(270, '2017-04-17 06:55:35', 7, 'updated', 'task', 'Branches', 48, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}', 'project', 1, '', 0, 0),
(271, '2017-04-17 06:55:37', 7, 'updated', 'task', 'Deductions', 49, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}', 'project', 1, '', 0, 0),
(272, '2017-04-17 06:55:42', 7, 'updated', 'task', 'Cheque Printing', 44, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:17:\"in_progress - 75%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 1, '', 0, 0),
(273, '2017-04-17 06:55:44', 7, 'updated', 'task', 'Departments', 50, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}', 'project', 1, '', 0, 0),
(274, '2017-04-17 06:56:01', 7, 'updated', 'task', 'Shifts', 1, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 1, '', 0, 0),
(275, '2017-04-18 05:36:57', 7, 'created', 'milestone', 'Milestone 1', 1, NULL, 'project', 13, '', 0, 0),
(276, '2017-04-18 06:41:22', 7, 'updated', 'task', 'Office Meetings', 62, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 9, '', 0, 0),
(277, '2017-04-18 06:41:26', 7, 'updated', 'task', 'Office Meetings', 62, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}', 'project', 9, '', 0, 0),
(278, '2017-04-18 08:04:50', 6, 'updated', 'task', 'Advances', 4, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 1, '', 0, 0),
(279, '2017-04-18 08:04:54', 6, 'updated', 'task', 'Advances', 4, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}', 'project', 1, '', 0, 0),
(280, '2017-04-18 08:11:36', 6, 'updated', 'task', 'Reports', 122, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 12, '', 0, 0),
(281, '2017-04-18 08:11:42', 6, 'updated', 'task', 'Reports', 122, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}', 'project', 12, '', 0, 0),
(282, '2017-04-18 08:23:36', 11, 'updated', 'task', 'Create Truck Master', 134, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 14, '', 0, 0),
(283, '2017-04-18 08:23:45', 11, 'updated', 'task', 'Create Truck Master', 134, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}', 'project', 14, '', 0, 0),
(284, '2017-04-18 10:24:13', 7, 'updated', 'task', 'Office Meetings', 62, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 9, '', 0, 0),
(285, '2017-04-18 10:24:17', 7, 'updated', 'task', 'Office Meetings', 62, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}', 'project', 9, '', 0, 0),
(286, '2017-04-18 11:14:53', 7, 'updated', 'task', 'Time spent per resource', 127, 'a:2:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:17:\"in_progress - 25%\";}s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:0:\"\";}}', 'project', 13, '', 0, 0),
(287, '2017-04-18 11:15:37', 7, 'updated', 'task', 'Time spent per resource', 127, 'a:1:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"5\";}}', 'project', 13, '', 0, 0),
(288, '2017-04-18 11:16:15', 7, 'updated', 'task', 'Office Meetings', 62, 'a:3:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:17:\"in_progress - 25%\";}s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:0:\"\";}s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:0:\"\";}}', 'project', 9, '', 0, 0),
(289, '2017-04-18 11:20:42', 6, 'created', 'task', 'test not complete', 182, NULL, 'project', 5, '', 0, 0),
(290, '2017-04-18 11:29:29', 7, 'created', 'task', 'MS Test', 183, NULL, 'project', 13, '', 0, 0),
(291, '2017-04-18 11:32:10', 6, 'created', 'task', 'test BUG', 184, NULL, 'project', 17, '', 0, 0),
(292, '2017-04-18 11:32:10', 6, 'created', 'task', '', 185, NULL, 'project', 17, '', 0, 0),
(293, '2017-04-18 11:33:12', 6, 'updated', 'task', 'test not complete', 182, 'a:2:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:0:\"\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-04-27\";}}', 'project', 5, '', 0, 0),
(294, '2017-04-18 11:34:13', 6, 'created', 'task', 'linking test', 186, NULL, 'project', 5, '', 0, 0),
(295, '2017-04-18 11:43:04', 6, 'updated', 'task', 'test not complete', 182, 'a:3:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:17:\"in_progress - 75%\";}s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:0:\"\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"2017-04-27\";s:2:\"to\";s:10:\"2017-04-19\";}}', 'project', 5, '', 0, 0),
(296, '2017-04-18 11:48:43', 6, 'updated', 'task', 'test not complete', 182, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:17:\"in_progress - 75%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 5, '', 0, 0),
(297, '2017-04-18 11:48:54', 6, 'updated', 'task', 'test not complete', 182, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}', 'project', 5, '', 0, 0),
(298, '2017-04-18 11:48:59', 6, 'updated', 'task', 'test not complete', 182, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 5, '', 0, 0),
(299, '2017-04-18 11:49:06', 6, 'updated', 'task', 'test not complete', 182, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}', 'project', 5, '', 0, 0),
(300, '2017-04-18 11:54:00', 6, 'updated', 'task', 'test not complete', 182, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}}', 'project', 5, '', 0, 0),
(301, '2017-08-03 06:12:52', 7, 'deleted', 'task', 'Site Clearing', 187, NULL, 'project', 19, NULL, NULL, 0),
(302, '2017-08-03 06:12:54', 7, 'deleted', 'task', 'Removal of Trees', 188, NULL, 'project', 19, NULL, NULL, 0),
(303, '2017-08-03 06:12:56', 7, 'deleted', 'task', 'General escavation', 189, NULL, 'project', 19, NULL, NULL, 0),
(304, '2017-08-03 06:12:58', 7, 'deleted', 'task', 'Escavation of Utility trenches ', 190, NULL, 'project', 19, NULL, NULL, 0),
(305, '2017-08-03 06:13:01', 7, 'deleted', 'task', 'Placing formworks ', 191, NULL, 'project', 19, NULL, NULL, 0),
(306, '2017-08-03 06:13:03', 7, 'deleted', 'task', 'Installing Sewer lines ', 192, NULL, 'project', 19, NULL, NULL, 0),
(307, '2017-08-03 06:13:05', 7, 'deleted', 'task', 'installing other utilities ', 193, NULL, 'project', 19, NULL, NULL, 0),
(308, '2017-08-03 06:13:07', 7, 'deleted', 'task', 'Pouring concrete ', 194, NULL, 'project', 19, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `share_with` mediumtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `read_by` mediumtext COLLATE utf8_unicode_ci,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `status` enum('incomplete','pending','approved','rejected','deleted') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'incomplete',
  `user_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `in_time` datetime NOT NULL,
  `out_time` datetime DEFAULT NULL,
  `difference` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `checked_by` int(11) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `checked_at` datetime DEFAULT NULL,
  `reject_reason` text COLLATE utf8_unicode_ci,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `status`, `user_id`, `task_id`, `project_id`, `in_time`, `out_time`, `difference`, `checked_by`, `note`, `checked_at`, `reject_reason`, `deleted`) VALUES
(1, 'pending', 3, 85, 5, '2016-12-17 05:30:00', '2016-12-16 22:00:00', '27000', NULL, NULL, NULL, NULL, 0),
(2, 'pending', 2, 52, 1, '2016-12-19 04:30:00', '2016-12-19 07:30:00', '10800', NULL, NULL, NULL, NULL, 0),
(3, 'pending', 2, 48, 0, '2016-12-19 07:30:00', '2016-12-19 11:00:00', '', NULL, NULL, NULL, NULL, 1),
(4, 'pending', 2, 52, 1, '2016-12-19 07:30:00', '2016-12-19 15:00:00', '27000', NULL, NULL, NULL, NULL, 0),
(5, 'pending', 4, 1, 1, '2016-12-28 09:11:00', '2016-12-28 12:26:00', '11700', NULL, NULL, NULL, NULL, 1),
(6, 'pending', 4, 1, 1, '2016-12-28 12:53:00', '2016-12-28 17:33:00', '16800', NULL, NULL, NULL, NULL, 1),
(7, 'pending', 4, 1, 1, '2016-12-29 05:51:00', '2016-12-29 07:34:00', '6180', NULL, NULL, NULL, NULL, 1),
(8, 'pending', 4, 1, 1, '2016-12-29 10:28:00', '2016-12-29 11:04:00', '2160', NULL, NULL, NULL, NULL, 1),
(9, 'pending', 4, 1, 1, '2016-12-30 09:57:00', '2016-12-30 12:10:00', '7980', NULL, NULL, NULL, NULL, 1),
(10, 'incomplete', 3, 85, 5, '2017-01-01 09:56:00', '2017-01-01 12:00:00', '7440', NULL, NULL, NULL, NULL, 0),
(11, 'pending', 6, 6, 1, '2017-01-03 06:30:00', '2017-01-03 08:40:00', '7800', NULL, NULL, NULL, NULL, 0),
(12, 'pending', 2, 87, 11, '2017-01-02 07:00:00', '2017-01-02 13:00:00', '21600', NULL, NULL, NULL, NULL, 0),
(13, 'pending', 2, 87, 11, '2017-01-03 04:50:00', '2017-01-03 15:00:00', '36600', NULL, NULL, NULL, NULL, 0),
(14, 'pending', 2, 87, 11, '2017-01-04 05:00:00', '2017-01-04 15:00:00', '36000', NULL, NULL, NULL, NULL, 0),
(15, 'pending', 2, 87, 11, '2017-01-05 04:50:00', '2017-01-05 15:00:00', '36600', NULL, NULL, NULL, NULL, 0),
(16, 'pending', 2, 87, 11, '2017-01-05 04:50:00', '2017-01-05 14:40:00', '35400', NULL, NULL, NULL, NULL, 0),
(17, 'pending', 2, 87, 11, '2017-01-06 04:40:00', '2017-01-06 15:00:00', '37200', NULL, NULL, NULL, NULL, 0),
(18, 'pending', 6, 121, 12, '2017-01-10 06:00:00', '2017-01-10 00:00:00', '21600', NULL, NULL, NULL, NULL, 0),
(19, 'pending', 6, 122, 12, '2017-01-09 05:00:00', '2017-01-09 07:00:00', '7200', NULL, NULL, NULL, NULL, 0),
(20, 'pending', 5, 120, 12, '2017-01-09 05:00:00', '2017-01-11 09:00:00', '187200', NULL, NULL, NULL, NULL, 0),
(21, 'pending', 6, 16, 1, '2017-01-03 05:45:00', '2017-01-03 07:00:00', '4500', NULL, NULL, NULL, NULL, 0),
(22, 'pending', 6, 52, 1, '2017-01-12 05:00:00', '2017-01-12 07:00:00', '7200', NULL, NULL, NULL, NULL, 0),
(23, 'pending', 6, 53, 1, '2017-01-03 05:30:00', '2017-01-03 08:00:00', '9000', NULL, NULL, NULL, NULL, 0),
(24, 'pending', 6, 16, 1, '2017-01-03 07:00:00', '2017-01-06 14:30:00', '286200', NULL, NULL, NULL, NULL, 0),
(25, 'pending', 6, 57, 1, '2017-01-04 05:30:00', '2017-01-05 14:05:00', '117300', NULL, NULL, NULL, NULL, 0),
(26, 'pending', 6, 58, 1, '2017-01-06 06:00:00', '2017-01-07 11:00:00', '104400', NULL, NULL, NULL, NULL, 0),
(27, 'pending', 6, 2, 1, '2016-11-11 07:00:00', '2016-11-11 08:00:00', '3600', NULL, NULL, NULL, NULL, 0),
(28, 'pending', 6, 4, 1, '2016-11-11 08:00:00', '2016-11-11 10:00:00', '7200', NULL, NULL, NULL, NULL, 0),
(29, 'pending', 6, 5, 1, '2016-11-12 06:00:00', '2016-11-13 10:00:00', '100800', NULL, NULL, NULL, NULL, 0),
(30, 'pending', 6, 47, 1, '2016-11-15 05:00:00', '2017-01-16 01:00:00', '5342400', NULL, NULL, NULL, NULL, 1),
(31, 'pending', 6, 49, 1, '2016-11-16 07:00:00', '2016-11-17 10:00:00', '97200', NULL, NULL, NULL, NULL, 0),
(32, 'pending', 6, 49, 1, '2016-12-04 07:00:00', '2016-12-05 11:55:00', '104100', NULL, NULL, NULL, NULL, 0),
(33, 'pending', 6, 122, 12, '2017-01-12 07:00:00', '2017-01-12 15:00:00', '28800', NULL, NULL, NULL, NULL, 0),
(34, 'pending', 2, 62, 9, '2017-01-13 13:00:00', '2017-01-13 14:20:00', '4800', NULL, NULL, NULL, NULL, 0),
(35, 'pending', 2, 125, 13, '2017-01-13 14:20:00', '2017-01-13 14:40:00', '1200', NULL, NULL, NULL, NULL, 0),
(36, 'pending', 6, 3, 1, '2017-01-13 06:00:00', '2017-01-13 13:00:00', '25200', NULL, NULL, NULL, NULL, 0),
(37, 'pending', 3, 90, 5, '2017-01-16 05:45:00', '2017-01-15 21:00:00', '31500', NULL, NULL, NULL, NULL, 0),
(38, 'pending', 3, 97, 5, '2017-01-16 05:40:00', '2017-01-16 07:00:00', '4800', NULL, NULL, NULL, NULL, 0),
(39, 'pending', 3, 92, 5, '2017-01-16 06:00:00', '2017-01-16 08:00:00', '7200', NULL, NULL, NULL, NULL, 0),
(40, 'pending', 3, 95, 5, '2017-01-16 05:30:00', '2017-01-16 10:00:00', '16200', NULL, NULL, NULL, NULL, 0),
(41, 'pending', 3, 118, 5, '2017-01-16 05:00:00', '2017-01-16 11:00:00', '21600', NULL, NULL, NULL, NULL, 0),
(42, 'pending', 3, 116, 5, '2017-01-16 05:00:00', '2017-01-16 07:00:00', '7200', NULL, NULL, NULL, NULL, 0),
(43, 'pending', 6, 9, 1, '2017-01-15 10:00:00', '2017-01-15 14:00:00', '14400', NULL, NULL, NULL, NULL, 0),
(44, 'pending', 6, 3, 1, '2017-01-16 05:00:00', '2017-01-16 14:00:00', '32400', NULL, NULL, NULL, NULL, 0),
(45, 'pending', 6, 52, 1, '2017-01-16 08:00:00', '2017-01-16 13:00:00', '18000', NULL, NULL, NULL, NULL, 0),
(46, 'pending', 10, 144, 2, '2017-01-16 08:15:00', '2017-01-16 09:00:00', '2700', NULL, NULL, NULL, NULL, 0),
(47, 'pending', 10, 145, 2, '2017-01-16 09:00:00', '2017-01-16 14:00:00', '18000', NULL, NULL, NULL, NULL, 0),
(48, 'pending', 10, 146, 2, '2017-01-16 09:00:00', '2017-01-16 14:00:00', '18000', NULL, NULL, NULL, NULL, 0),
(49, 'pending', 10, 147, 2, '2017-01-16 14:00:00', '2017-01-16 16:00:00', '7200', NULL, NULL, NULL, NULL, 0),
(50, 'pending', 10, 144, 2, '2017-01-17 03:20:00', '2017-01-17 04:32:00', '4320', NULL, NULL, NULL, NULL, 0),
(51, 'pending', 10, 146, 2, '2017-01-17 04:32:00', '2017-01-17 07:43:00', '11460', NULL, NULL, NULL, NULL, 0),
(52, 'pending', 10, 149, 2, '2017-01-17 14:00:00', '2017-01-17 15:10:00', '4200', NULL, NULL, NULL, NULL, 0),
(53, 'pending', 10, 148, 2, '2017-01-17 07:43:00', '2017-01-17 10:52:00', '11340', NULL, NULL, NULL, NULL, 0),
(54, 'pending', 10, 151, 2, '2017-01-17 11:00:00', '2017-01-17 12:40:00', '6000', NULL, NULL, NULL, NULL, 0),
(55, 'pending', 10, 153, 2, '2017-01-17 12:40:00', '2017-01-17 12:54:00', '840', NULL, NULL, NULL, NULL, 0),
(56, 'pending', 3, 95, 5, '2017-01-17 06:15:00', '2017-01-17 08:30:00', '8100', NULL, NULL, NULL, NULL, 0),
(57, 'pending', 3, 96, 5, '2017-01-17 08:20:00', '2017-01-17 12:00:00', '13200', NULL, NULL, NULL, NULL, 0),
(58, 'pending', 10, 152, 2, '2017-01-17 11:00:00', '2017-01-17 11:30:00', '1800', NULL, NULL, NULL, NULL, 0),
(59, 'pending', 10, 150, 2, '2017-01-17 13:30:00', '2017-01-17 14:00:00', '1800', NULL, NULL, NULL, NULL, 0),
(60, 'pending', 2, 126, 13, '2017-01-17 07:00:00', '2017-01-17 09:00:00', '7200', NULL, NULL, NULL, NULL, 0),
(61, 'pending', 6, 55, 1, '2017-01-17 07:00:00', '2017-01-16 22:00:00', '32400', NULL, NULL, NULL, NULL, 0),
(62, 'pending', 6, 52, 1, '2017-01-17 05:00:00', '2017-01-17 07:00:00', '7200', NULL, NULL, NULL, NULL, 0),
(63, 'pending', 6, 52, 1, '2017-01-17 00:00:00', '2017-01-17 02:00:00', '7200', NULL, NULL, NULL, NULL, 0),
(64, 'pending', 11, 134, 14, '2017-01-17 04:45:00', '2017-01-17 15:20:00', '38100', NULL, NULL, NULL, NULL, 0),
(65, 'pending', 10, 154, 2, '2017-01-18 03:30:00', '2017-01-18 05:59:00', '8940', NULL, NULL, NULL, NULL, 0),
(66, 'pending', 10, 150, 2, '2017-01-18 06:00:00', '2017-01-18 07:00:00', '3600', NULL, NULL, NULL, NULL, 0),
(67, 'pending', 10, 152, 2, '2017-01-18 07:00:00', '2017-01-18 08:00:00', '3600', NULL, NULL, NULL, NULL, 0),
(68, 'pending', 10, 153, 2, '2017-01-18 08:00:00', '2017-01-18 09:00:00', '3600', NULL, NULL, NULL, NULL, 0),
(69, 'pending', 10, 151, 2, '2017-01-18 09:00:00', '2017-01-18 09:43:00', '2580', NULL, NULL, NULL, NULL, 0),
(70, 'pending', 10, 157, 2, '2017-01-18 09:45:00', '2017-01-18 14:09:00', '15840', NULL, NULL, NULL, NULL, 0),
(71, 'pending', 3, 102, 5, '2017-01-18 06:15:00', '2017-01-18 08:30:00', '8100', NULL, NULL, NULL, NULL, 0),
(72, 'pending', 3, 10, 3, '2017-01-18 09:00:00', '2017-01-18 10:00:00', '3600', NULL, NULL, NULL, NULL, 0),
(73, 'pending', 3, 115, 5, '2017-01-18 10:00:00', '2017-01-18 15:30:00', '19800', NULL, NULL, NULL, NULL, 0),
(74, 'pending', 11, 135, 14, '2017-01-18 04:50:00', '2017-01-18 14:30:00', '34800', NULL, NULL, NULL, NULL, 0),
(75, 'pending', 10, 150, 2, '2017-01-19 05:00:00', '2017-01-19 06:18:00', '4680', NULL, NULL, NULL, NULL, 0),
(76, 'pending', 2, 87, 11, '2017-01-18 11:00:00', '2017-01-18 15:00:00', '14400', NULL, NULL, NULL, NULL, 0),
(77, 'pending', 2, 61, 9, '2017-01-17 10:00:00', '2017-01-17 13:00:00', '10800', NULL, NULL, NULL, NULL, 0),
(78, 'pending', 2, 87, 11, '2017-01-17 05:00:00', '2017-01-17 09:00:00', '14400', NULL, NULL, NULL, NULL, 0),
(79, 'pending', 2, 78, 7, '2017-01-18 08:00:00', '2017-01-18 10:00:00', '7200', NULL, NULL, NULL, NULL, 0),
(80, 'pending', 2, 79, 7, '2017-01-19 05:00:00', '2017-01-19 06:00:00', '3600', NULL, NULL, NULL, NULL, 0),
(81, 'pending', 8, 177, 9, '2017-01-18 11:00:00', '2017-01-18 15:30:00', '16200', NULL, NULL, NULL, NULL, 0),
(82, 'pending', 8, 89, 7, '2017-01-16 08:00:00', '2017-01-16 12:00:00', '14400', NULL, NULL, NULL, NULL, 0),
(83, 'pending', 2, 64, 7, '2017-01-16 04:40:00', '2017-01-16 15:00:00', '37200', NULL, NULL, NULL, NULL, 0),
(84, 'pending', 2, 61, 9, '2017-01-18 05:00:00', '2017-01-18 07:00:00', '7200', NULL, NULL, NULL, NULL, 0),
(85, 'pending', 2, 61, 9, '2017-01-19 05:00:00', '2017-01-19 11:30:00', '23400', NULL, NULL, NULL, NULL, 0),
(86, 'pending', 2, 178, 13, '2017-01-19 11:30:00', '2017-01-19 12:30:00', '3600', NULL, NULL, NULL, NULL, 0),
(87, 'pending', 6, 9, 1, '2017-03-23 04:00:00', '2017-03-23 17:00:00', '46800', NULL, NULL, NULL, NULL, 0),
(88, 'pending', 6, 1, 1, '2017-04-15 07:00:00', '2017-04-15 16:00:00', '32400', NULL, NULL, NULL, NULL, 0),
(89, 'pending', 6, 1, 1, '2017-04-15 10:00:00', '2017-04-15 13:00:00', '10800', NULL, NULL, NULL, NULL, 0),
(90, 'pending', 6, 2, 1, '2017-04-15 14:00:00', '2017-04-15 17:00:00', '10800', NULL, NULL, NULL, NULL, 0),
(91, 'pending', 2, 2, 1, '2017-04-20 10:00:00', '2017-04-20 13:00:00', '10800', NULL, NULL, NULL, NULL, 0),
(92, 'pending', 2, 6, 1, '2017-04-20 18:00:00', '2017-04-20 19:00:00', '3600', NULL, NULL, NULL, NULL, 0),
(93, 'pending', 2, 21, 8, '2017-08-02 05:00:00', '2017-08-02 12:00:00', '25200', NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `company_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` date NOT NULL,
  `website` text COLLATE utf8_unicode_ci,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `vat_number` text COLLATE utf8_unicode_ci,
  `currency` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `disable_online_payment` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `company_name`, `address`, `city`, `state`, `zip`, `country`, `created_date`, `website`, `phone`, `currency_symbol`, `deleted`, `vat_number`, `currency`, `disable_online_payment`) VALUES
(1, 'Wise & Agile', '', 'Nairobi', 'Nairobi', '00200', 'Kenya', '2016-12-17', 'https://wizag.biz', '0711401108', '', 0, '', '', 0),
(2, 'PAX', '', 'Nairobi', 'Nairobi', '00100', 'Kenya', '2016-12-19', '', '', '', 0, '', '', 0),
(3, 'RODS & STEEL LIMITED', '', '', '', '', '', '2017-01-11', '', '', '', 0, '', '', 0),
(4, 'DEMO COMPANY', '2ND FLOOR UNGA HOUSE, MUTHITHI ROAD', 'NAIROBI', 'NAIROBI', '254', 'KENYA', '2017-03-23', 'DEMOCOMPANY.COM', '0711000000', 'KES', 0, 'P09872456X', '', 0),
(5, 'Client 18apr', '', '', '', '', '', '2017-04-18', '', '', '$', 0, '', 'USD', 0),
(6, 'Amtel', '', 'Mogadishu', 'Mogadishu', '', 'Somali', '2017-08-02', '', '1234', '', 0, 'A00917890', '', 0),
(7, 'HQ MOGADISHU', '', 'MOGADISHU', 'MOGADISHU', '', '', '2017-08-03', '', '', '', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `placeholder` text COLLATE utf8_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `field_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `related_to` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `custom_fields`
--

INSERT INTO `custom_fields` (`id`, `title`, `placeholder`, `options`, `field_type`, `related_to`, `sort`, `required`, `deleted`) VALUES
(1, 'Service', 'Service', 'Consulting,New Business,Recruitment', 'multi_select', 'estimate_form-1', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_values`
--

CREATE TABLE `custom_field_values` (
  `id` int(11) NOT NULL,
  `related_to_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `related_to_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `template_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email_subject` text COLLATE utf8_unicode_ci NOT NULL,
  `default_message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom_message` mediumtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `template_name`, `email_subject`, `default_message`, `custom_message`, `deleted`) VALUES
(1, 'login_info', 'Login details', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://teamkazi.com/files/system/default-stie-logo.png\" alt=\"TeamKazi\">\n  <h1>Login Details</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\"> Hello {USER_FIRST_NAME}, &nbsp;{USER_LAST_NAME},<br><br>An account has been created for you.</p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\"> Please use the following info to login your dashboard:</p>            <hr>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">Dashboard URL:&nbsp;<a href=\"{DASHBOARD_URL}\" target=\"_blank\">{DASHBOARD_URL}</a></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\"></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Email: {USER_LOGIN_EMAIL}</span><br></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Password:&nbsp;{USER_LOGIN_PASSWORD}</span></p>            <p style=\"color: rgb(85, 85, 85);\"><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>', '', 0),
(2, 'reset_password', 'Reset password', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://teamkazi.com/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Reset Password</h1>\n </div>\n <div style=\"padding: 20px; background-color: rgb(255, 255, 255); color:#555;\">                    <p style=\"font-size: 14px;\"> Hello {ACCOUNT_HOLDER_NAME},<br><br>A password reset request has been created for your account.&nbsp;</p>\n                    <p style=\"font-size: 14px;\"> To initiate the password reset process, please click on the following link:</p>\n                    <p style=\"font-size: 14px;\"><a href=\"{RESET_PASSWORD_URL}\" target=\"_blank\">Reset Password</a></p>\n                    <p style=\"font-size: 14px;\"></p>\n                    <p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\"><br></span></p>\n<p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">If you\'ve received this mail in error, it\'s likely that another user entered your email address by mistake while trying to reset a password.</span><br></p>\n<p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">If you didn\'t initiate the request, you don\'t need to take any further action and can safely disregard this email.</span><br></p>\n<p style=\"font-size: 14px;\"><br></p>\n<p style=\"font-size: 14px;\">{SIGNATURE}</p>\n                </div>\n            </div>\n        </div>', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://teamkazi.com/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Reset Password</h1>\n </div>\n <div style=\"padding: 20px; background-color: rgb(255, 255, 255); color:#555;\">                    <p style=\"font-size: 14px;\"> Hello {ACCOUNT_HOLDER_NAME},<br><br>A password reset request has been created for your account.&nbsp;</p>\n                    <p style=\"font-size: 14px;\"> To initiate the password reset process, please click on the following link:</p>\n                    <p style=\"font-size: 14px;\"><a href=\"{RESET_PASSWORD_URL}\" target=\"_blank\">Reset Password</a></p>\n                    <p style=\"font-size: 14px;\"></p>\n                    <p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\"><br></span></p>\n<p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">If you\'ve received this mail in error, it\'s likely that another user entered your email address by mistake while trying to reset a password.</span><br></p>\n<p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">If you didn\'t initiate the request, you don\'t need to take any further action and can safely disregard this email.</span><br></p>\n<p style=\"font-size: 14px;\"><br></p>\n<p style=\"font-size: 14px;\">{SIGNATURE}</p>\n                </div>\n            </div>\n        </div>', 0),
(3, 'team_member_invitation', 'You are invited', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://teamkazi.com/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Account Invitation</h1>   </div>  <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello,</span><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\"><br></span></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\">{INVITATION_SENT_BY}</span> has sent you an invitation to join with a team.</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVITATION_URL}\" target=\"_blank\">Accept this Invitation</a></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">If you don\'t want to accept this invitation, simply ignore this email.</span><br><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://teamkazi.com/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Account Invitation</h1>   </div>  <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello,</span><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\"><br></span></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\">{INVITATION_SENT_BY}</span> has sent you an invitation to join with a team.</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVITATION_URL}\" target=\"_blank\">Accept this Invitation</a></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">If you don\'t want to accept this invitation, simply ignore this email.</span><br><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>', 0),
(4, 'send_invoice', 'New invoice', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://teamkazi.com/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>INVOICE #{INVOICE_ID}</h1></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello {CONTACT_FIRST_NAME},</span><br></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">Thank you for your business cooperation.</span><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Your invoice for the project {PROJECT_TITLE} has been generated and is attached here.</span></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVOICE_URL}\" target=\"_blank\">Show Invoice</a></span></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">Invoice balance due is {BALANCE_DUE}</span><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Please pay this invoice within {DUE_DATE}.&nbsp;</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>  </div> </div></div>', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://teamkazi.com/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>INVOICE #{INVOICE_ID}</h1></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello {CONTACT_FIRST_NAME},</span><br></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">Thank you for your business cooperation.</span><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Your invoice for the project {PROJECT_TITLE} has been generated and is attached here.</span></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVOICE_URL}\" target=\"_blank\">Show Invoice</a></span></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">Invoice balance due is {BALANCE_DUE}</span><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Please pay this invoice within {DUE_DATE}.&nbsp;</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>  </div> </div></div>', 0),
(5, 'signature', 'Signature', '<p>© TeamKazi. Powered By: <a href=\"https://wizag.biz/\" target=\"_blank\">Wise &amp; Agile Solutions Limited. </a></p>', '<p>© TeamKazi. Powered By: <a href=\"https://wizag.biz/\" target=\"_blank\">Wise &amp; Agile Solutions Limited. </a></p>', 0),
(6, 'client_contact_invitation', 'You are invited', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://teamkazi.com/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Account Invitation</h1> </div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello,</span><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\"><br></span></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\">{INVITATION_SENT_BY}</span> has sent you an invitation to a client portal.</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVITATION_URL}\" target=\"_blank\">Accept this Invitation</a></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">If you don\'t want to accept this invitation, simply ignore this email.</span><br><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://teamkazi.com/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Account Invitation</h1> </div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello,</span><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\"><br></span></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\">{INVITATION_SENT_BY}</span> has sent you an invitation to a client portal.</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVITATION_URL}\" target=\"_blank\">Accept this Invitation</a></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">If you don\'t want to accept this invitation, simply ignore this email.</span><br><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>', 0),
(7, 'ticket_created', 'Ticket  #{TICKET_ID} - {TICKET_TITLE}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://teamkazi.com/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Ticket #{TICKET_ID} Opened</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px; font-weight: bold;\">Title: {TICKET_TITLE}</span><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{TICKET_CONTENT}</span><br></p> <p style=\"\"><br></p> <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p> <p style=\"\"><br></p><p style=\"\">Regards,</p><p style=\"\"><span style=\"line-height: 18.5714px;\">{USER_NAME}</span><br></p>   </div>  </div> </div>', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://teamkazi.com/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Ticket #{TICKET_ID} Opened</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px; font-weight: bold;\">Title: {TICKET_TITLE}</span><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{TICKET_CONTENT}</span><br></p> <p style=\"\"><br></p> <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p> <p style=\"\"><br></p><p style=\"\">Regards,</p><p style=\"\"><span style=\"line-height: 18.5714px;\">{USER_NAME}</span><br></p>   </div>  </div> </div>', 0),
(8, 'ticket_commented', 'Ticket  #{TICKET_ID} - {TICKET_TITLE}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://teamkazi.com/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Ticket #{TICKET_ID} Replies</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px; font-weight: bold;\">Title: {TICKET_TITLE}</span><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{TICKET_CONTENT}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p></div></div></div>', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://teamkazi.com/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Ticket #{TICKET_ID} Replies</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px; font-weight: bold;\">Title: {TICKET_TITLE}</span><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{TICKET_CONTENT}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p></div></div></div>', 0),
(9, 'ticket_closed', 'Ticket  #{TICKET_ID} - {TICKET_TITLE}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://teamkazi.com/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Ticket #{TICKET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">The Ticket #{TICKET_ID} has been closed by&nbsp;</span><span style=\"line-height: 18.5714px;\">{USER_NAME}</span></p> <p style=\"\"><br></p> <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p>   </div>  </div> </div>', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://teamkazi.com/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Ticket #{TICKET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">The Ticket #{TICKET_ID} has been closed by&nbsp;</span><span style=\"line-height: 18.5714px;\">{USER_NAME}</span></p> <p style=\"\"><br></p> <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p>   </div>  </div> </div>', 0),
(10, 'ticket_reopened', 'Ticket  #{TICKET_ID} - {TICKET_TITLE}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://teamkazi.com/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Ticket #{TICKET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">The Ticket #{TICKET_ID} has been reopened by&nbsp;</span><span style=\"line-height: 18.5714px;\">{USER_NAME}</span></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p>  </div> </div></div>', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://teamkazi.com/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Ticket #{TICKET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">The Ticket #{TICKET_ID} has been reopened by&nbsp;</span><span style=\"line-height: 18.5714px;\">{USER_NAME}</span></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p>  </div> </div></div>', 0),
(11, 'general_notification', '{EVENT_TITLE}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://teamkazi.com/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>{APP_TITLE}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">{EVENT_TITLE}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{EVENT_DETAILS}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #4f0158; padding: 10px 15px; color: #ffffff;\" href=\"{NOTIFICATION_URL}\" target=\"_blank\">View Details</a></span></p>  </div> </div></div>', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://teamkazi.com/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>{APP_TITLE}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">{EVENT_TITLE}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{EVENT_DETAILS}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #4f0158; padding: 10px 15px; color: #ffffff;\" href=\"{NOTIFICATION_URL}\" target=\"_blank\">View Details</a></span></p>  </div> </div></div>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `estimates`
--

CREATE TABLE `estimates` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `estimate_request_id` int(11) NOT NULL DEFAULT '0',
  `estimate_date` date NOT NULL,
  `valid_until` date NOT NULL,
  `note` mediumtext COLLATE utf8_unicode_ci,
  `last_email_sent_date` date DEFAULT NULL,
  `status` enum('draft','sent','accepted','declined') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'draft',
  `tax_id` int(11) NOT NULL DEFAULT '0',
  `tax_id2` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `estimates`
--

INSERT INTO `estimates` (`id`, `client_id`, `estimate_request_id`, `estimate_date`, `valid_until`, `note`, `last_email_sent_date`, `status`, `tax_id`, `tax_id2`, `deleted`) VALUES
(1, 1, 0, '2017-03-01', '2017-03-01', '300000', NULL, 'draft', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `estimate_forms`
--

CREATE TABLE `estimate_forms` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `estimate_forms`
--

INSERT INTO `estimate_forms` (`id`, `title`, `description`, `status`, `deleted`) VALUES
(1, 'H - Test Estimate form', '', 'active', 1);

-- --------------------------------------------------------

--
-- Table structure for table `estimate_items`
--

CREATE TABLE `estimate_items` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `quantity` double NOT NULL,
  `unit_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rate` double NOT NULL,
  `total` double NOT NULL,
  `estimate_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `estimate_requests`
--

CREATE TABLE `estimate_requests` (
  `id` int(11) NOT NULL,
  `estimate_form_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `client_id` int(11) NOT NULL,
  `assigned_to` int(11) NOT NULL,
  `status` enum('new','processing','hold','canceled','estimated') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'new',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `location` mediumtext COLLATE utf8_unicode_ci,
  `share_with` mediumtext COLLATE utf8_unicode_ci,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `color` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `description`, `start_date`, `end_date`, `start_time`, `end_time`, `created_by`, `location`, `share_with`, `deleted`, `color`) VALUES
(1, 'Team Buliding', 'Enashipai Resort', '2017-03-25', '2017-03-26', '12:00:00', '16:00:00', 6, 'Nakuru', 'all', 0, '#d43480'),
(2, 'fhfghjg', 'vbcbc', '2017-04-15', '2017-04-15', '14:05:00', '19:15:00', 6, 'ujjgh', '', 0, '#83c340'),
(3, 'test1', 'test1', '2017-03-27', '2017-03-27', '00:00:00', '00:00:00', 7, '', '', 0, '#83c340'),
(4, 'tuesday event', 'tuesday event checking', '2017-04-18', '2017-04-19', '01:00:00', '13:00:00', 7, '', '', 0, '#83c340'),
(5, 'Testing', 'Party', '2017-04-21', '2017-04-21', '13:00:00', '14:00:00', 6, '', 'all', 0, '#83c340'),
(6, 'another one', 'sdf', '2017-04-21', '2017-04-21', '00:00:00', '00:00:00', 6, '', '', 0, '#83c340');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `expense_date` date NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `amount` double NOT NULL,
  `files` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `expense_date`, `category_id`, `description`, `amount`, `files`, `title`, `project_id`, `user_id`, `deleted`) VALUES
(1, '2017-04-15', 1, '', 5000, 'a:0:{}', 'salary spend', 1, 6, 1),
(2, '2017-04-17', 1, 'This is salary of user. ', 5000, 'a:0:{}', 'Project Test', 3, 2, 0),
(3, '2017-04-18', 1, 'tesr', 500000, 'a:0:{}', '', 1, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `title`, `deleted`) VALUES
(1, 'Miscellaneous expense', 0);

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `bill_date` date NOT NULL,
  `due_date` date NOT NULL,
  `note` mediumtext COLLATE utf8_unicode_ci,
  `last_email_sent_date` date DEFAULT NULL,
  `status` enum('draft','not_paid') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'draft',
  `tax_id` int(11) NOT NULL DEFAULT '0',
  `tax_id2` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `client_id`, `project_id`, `bill_date`, `due_date`, `note`, `last_email_sent_date`, `status`, `tax_id`, `tax_id2`, `deleted`) VALUES
(1, 1, 1, '2017-04-15', '2017-04-15', 'test', NULL, 'not_paid', 1, 1, 0),
(2, 1, 2, '2017-07-27', '2017-08-03', 'Test Invoice', NULL, 'draft', 1, 1, 0),
(3, 1, 2, '2017-08-01', '2017-08-15', '', NULL, 'draft', 1, 1, 0),
(4, 2, 8, '2017-08-03', '2017-08-04', '', NULL, 'not_paid', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `quantity` double NOT NULL,
  `unit_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rate` double NOT NULL,
  `total` double NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `title`, `description`, `quantity`, `unit_type`, `rate`, `total`, `invoice_id`, `deleted`) VALUES
(1, 'hdhjdj', '', 10, 'ets', 5000, 50000, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_payments`
--

CREATE TABLE `invoice_payments` (
  `id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `payment_date` date NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `invoice_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `transaction_id` tinytext COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT '1',
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoice_payments`
--

INSERT INTO `invoice_payments` (`id`, `amount`, `payment_date`, `payment_method_id`, `note`, `invoice_id`, `deleted`, `transaction_id`, `created_by`, `created_at`) VALUES
(1, 3333333, '2017-04-15', 1, 'test', 1, 0, NULL, 7, '2017-04-15 07:00:09'),
(2, 40000, '2017-08-10', 1, '', 4, 0, NULL, 7, '2017-08-03 07:41:48');

-- --------------------------------------------------------

--
-- Table structure for table `leave_applications`
--

CREATE TABLE `leave_applications` (
  `id` int(11) NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `total_hours` decimal(7,2) NOT NULL,
  `total_days` decimal(5,2) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `reason` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('pending','approved','rejected','canceled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `checked_at` datetime DEFAULT NULL,
  `checked_by` int(11) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `leave_applications`
--

INSERT INTO `leave_applications` (`id`, `leave_type_id`, `start_date`, `end_date`, `total_hours`, `total_days`, `applicant_id`, `reason`, `status`, `created_at`, `created_by`, `checked_at`, `checked_by`, `deleted`) VALUES
(1, 1, '2016-12-23', '2016-12-31', '72.00', '9.00', 4, 'xmas', 'approved', '2016-12-17 10:31:36', 0, '2017-04-18 08:43:27', 6, 0),
(2, 1, '2017-04-13', '2017-04-13', '8.00', '1.00', 6, 'ds', 'approved', '2017-04-20 02:41:17', 0, '2017-04-20 02:41:33', 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `color` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `leave_types`
--

INSERT INTO `leave_types` (`id`, `title`, `status`, `color`, `description`, `deleted`) VALUES
(1, 'Casual Leave', 'active', '#83c340', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `main_tasks`
--

CREATE TABLE `main_tasks` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `deleted` tinyint(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `main_tasks`
--

INSERT INTO `main_tasks` (`id`, `title`, `description`, `project_id`, `deleted`) VALUES
(1, 'Ticket: Testing Tuesday', '', 5, 0),
(2, 'Ticket: testing', '', 17, 0),
(3, 'Ticket: BUG Fix', '', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Untitled',
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `status` enum('unread','read') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unread',
  `message_id` int(11) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `files` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted_by_users` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `subject`, `message`, `created_at`, `from_user_id`, `to_user_id`, `status`, `message_id`, `deleted`, `files`, `deleted_by_users`) VALUES
(1, 'Project hours', 'My total hours is 0 . how is that possible?', '2017-01-01 10:33:09', 3, 2, 'read', 0, 0, 'a:0:{}', ''),
(2, 'Edit timecard', 'Could you please edit my time cards, \n1. The ones that ended at 05:00 need to end at 17:00\n2. And the one ending at 13:52 was on bulk editing', '2017-01-17 12:42:19', 10, 2, 'read', 0, 0, 'a:0:{}', ''),
(3, 'check tuesday message', 'check tuesday message', '2017-04-18 09:43:42', 7, 2, 'read', 0, 0, 'a:0:{}', ''),
(4, 'test', 'test', '2017-04-22 04:05:31', 6, 2, 'unread', 0, 0, 'a:0:{}', ''),
(5, 'Testing Email', 'rrr', '2017-04-22 04:05:52', 6, 7, 'read', 0, 0, 'a:0:{}', ',7');

-- --------------------------------------------------------

--
-- Table structure for table `milestones`
--

CREATE TABLE `milestones` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `due_date` date NOT NULL,
  `deleted` tinyint(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `milestones`
--

INSERT INTO `milestones` (`id`, `title`, `project_id`, `due_date`, `deleted`) VALUES
(1, 'Milestone 1', 13, '2017-04-26', 0);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `client_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `labels` text COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `created_by`, `created_at`, `title`, `description`, `project_id`, `client_id`, `user_id`, `labels`, `deleted`) VALUES
(1, 7, '2017-01-17 06:51:10', 'Competitor Products', 'We need to check the features available in following major products.\nhttps://www.appfolio.com/features\n\nhttps://www.buildium.com/features/\n\nhttps://www.rentecdirect.com/features\n\nhttps://www.storedge.com/\n\nhttps://www.rentmanager.com/\n\nhttp://www.propertyware.com/\n\nhttp://www.mrisoftware.com/\n\nhttp://www.totalmanagement.com/\n\nhttp://propertyboulevard.com/\n\nhttps://rentpost.com/\n\nhttps://propertymanagercloud.com/\n\nhttp://soft4realestate.com/\n\nhttps://valencepm.com/\n\nhttp://www.softwareadvice.com/property/\n\n\n', 2, 0, 0, '', 0),
(2, 7, '2017-01-17 08:32:28', 'Competitor Products', 'Study the features from following products and compare:\n\nhttp://www.eposnow.com/us/software\n\nhttps://www.lightspeedhq.com/pos/onsite/features/\n\nhttps://www.technology4retailers.com/t-aimsi.aspx\n\nhttps://breadcrumb.com/ipad-point-of-sale-features/\n\nhttp://www.amberpos.com/#\n\nhttp://www.touchbistro.com/features/\n\nhttp://revelsystems.com/features/for-retail/\n\nhttps://www.springboardretail.com/products/\n\nhttps://pos.toasttab.com/pos-system\n\nhttp://www.marketstall.com/edgepos/\n', 4, 0, 0, '', 0),
(3, 6, '2017-03-23 12:43:30', 'Project A', 'Step by step debugging process', 0, 0, 0, 'Debugging', 0),
(4, 7, '2017-04-18 09:42:45', 'test notes tuesday', '', 0, 0, 0, '', 1),
(5, 6, '2017-04-22 04:04:08', 'Meeting Minutes', 'We all met and unmet', 0, 0, 0, 'Notes', 0);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `notify_to` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `read_by` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `event` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `project_comment_id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `ticket_comment_id` int(11) NOT NULL,
  `project_file_id` int(11) NOT NULL,
  `leave_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `activity_log_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `invoice_payment_id` int(11) NOT NULL,
  `estimate_id` int(11) NOT NULL,
  `estimate_request_id` int(11) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `description`, `created_at`, `notify_to`, `read_by`, `event`, `project_id`, `task_id`, `project_comment_id`, `ticket_id`, `ticket_comment_id`, `project_file_id`, `leave_id`, `post_id`, `to_user_id`, `activity_log_id`, `client_id`, `invoice_payment_id`, `estimate_id`, `estimate_request_id`, `deleted`) VALUES
(1, 3, '', '2016-12-17 10:26:30', '1', '', 'project_task_updated', 6, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 3, '', '2016-12-17 10:26:49', '', '', 'project_task_updated', 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 3, '', '2016-12-17 10:26:56', '', '', 'project_task_updated', 3, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 3, '', '2016-12-17 10:27:08', '4', '', 'project_task_updated', 4, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 2, '', '2016-12-21 12:18:38', '1,6', '', 'project_task_created', 1, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 2, '', '2016-12-22 05:27:48', '6', ',6', 'project_task_updated', 1, 6, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0),
(7, 2, '', '2016-12-22 05:29:16', '', '', 'project_task_deleted', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 2, '', '2016-12-22 05:29:45', '', '', 'project_task_updated', 1, 52, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0),
(9, 2, '', '2016-12-22 05:30:19', '', '', 'project_task_updated', 1, 51, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0),
(10, 2, '', '2016-12-22 07:53:54', '3', '', 'project_task_updated', 3, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 6, '', '2016-12-22 08:02:11', '', '', 'project_task_updated', 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 6, '', '2016-12-22 08:02:23', '', '', 'project_task_updated', 1, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 6, '', '2016-12-22 08:02:28', '', '', 'project_task_updated', 1, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 6, '', '2016-12-22 08:02:36', '', '', 'project_task_updated', 1, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 6, '', '2016-12-22 08:02:43', '', '', 'project_task_updated', 1, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 6, '', '2016-12-22 08:02:49', '', '', 'project_task_updated', 1, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 6, '', '2016-12-22 08:02:56', '', '', 'project_task_updated', 1, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 6, '', '2016-12-22 08:03:03', '2', '', 'project_task_updated', 1, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(19, 6, '', '2016-12-22 08:03:08', '', '', 'project_task_updated', 1, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20, 6, '', '2016-12-22 08:03:14', '', '', 'project_task_updated', 1, 54, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(21, 6, '', '2016-12-22 08:03:19', '', '', 'project_task_updated', 1, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(22, 2, '', '2016-12-22 08:15:58', '1,3,7', '', 'project_task_created', 3, 59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(23, 2, '', '2016-12-22 08:16:42', '1,3,7,8', ',8', 'project_task_created', 3, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(24, 2, '', '2016-12-22 08:23:51', '8', ',8', 'project_task_created', 9, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25, 2, '', '2016-12-22 08:30:09', '1,3,4,5,6,7,8', ',8', 'project_task_created', 9, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(26, 2, '', '2016-12-23 06:17:24', '', '', 'project_task_created', 7, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27, 2, '', '2016-12-23 06:17:47', '', '', 'project_task_created', 7, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(28, 2, '', '2016-12-23 06:18:07', '', '', 'project_task_created', 7, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(29, 2, '', '2016-12-23 06:18:19', '', '', 'project_task_created', 7, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30, 2, '', '2016-12-23 06:18:36', '3', '', 'project_task_created', 7, 67, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(31, 2, '', '2016-12-23 06:19:55', '4', '', 'project_task_created', 10, 68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(32, 2, '', '2016-12-23 06:20:32', '4', '', 'project_task_created', 10, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33, 2, '', '2016-12-23 06:21:14', '4', '', 'project_task_created', 10, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(34, 2, '', '2016-12-23 06:21:27', '4', '', 'project_task_created', 10, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(35, 2, '', '2016-12-23 06:21:41', '4', '', 'project_task_created', 10, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36, 2, '', '2016-12-23 06:21:54', '4', '', 'project_task_created', 10, 73, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(37, 2, '', '2016-12-23 06:22:13', '4', '', 'project_task_created', 10, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(38, 2, '', '2016-12-23 06:22:28', '4', '', 'project_task_created', 10, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(39, 2, '', '2016-12-23 06:22:47', '4', '', 'project_task_created', 10, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40, 2, '', '2016-12-23 06:23:03', '4', '', 'project_task_created', 10, 77, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(41, 2, '', '2016-12-23 06:23:44', '3', ',3', 'project_task_updated', 7, 67, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0),
(42, 2, '', '2016-12-23 06:23:58', '', '', 'project_task_updated', 7, 66, 0, 0, 0, 0, 0, 0, 0, 42, 0, 0, 0, 0, 0),
(43, 2, '', '2016-12-23 06:24:10', '', '', 'project_task_updated', 7, 65, 0, 0, 0, 0, 0, 0, 0, 43, 0, 0, 0, 0, 0),
(44, 2, '', '2016-12-23 06:24:20', '', '', 'project_task_updated', 7, 64, 0, 0, 0, 0, 0, 0, 0, 44, 0, 0, 0, 0, 0),
(45, 2, '', '2016-12-23 06:24:34', '', '', 'project_task_updated', 7, 63, 0, 0, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0),
(46, 3, '', '2016-12-25 04:13:56', '', '', 'project_task_updated', 5, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(47, 7, '', '2016-12-27 12:24:06', '2,3', ',2,3', 'project_task_created', 7, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(48, 7, '', '2016-12-27 12:24:45', '2', ',2', 'project_task_updated', 7, 78, 0, 0, 0, 0, 0, 0, 0, 48, 0, 0, 0, 0, 0),
(49, 7, '', '2016-12-27 12:32:15', '2,3', ',3', 'project_task_created', 7, 79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(50, 7, '', '2016-12-27 13:20:52', '2,4', '', 'project_task_created', 10, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(51, 7, '', '2016-12-27 13:22:55', '2,4', '', 'project_task_created', 10, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(52, 7, '', '2016-12-27 13:24:04', '2,4', '', 'project_task_created', 10, 82, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53, 7, '', '2016-12-27 13:25:50', '2,4', '', 'project_task_created', 10, 83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(54, 7, '', '2016-12-27 13:26:34', '2,4', '', 'project_task_created', 10, 84, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(55, 2, '', '2016-12-29 07:54:14', '', '', 'project_task_commented', 7, 79, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56, 2, '', '2016-12-29 07:54:34', '', '', 'project_task_updated', 7, 79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(57, 2, '', '2016-12-29 07:54:52', '', '', 'project_task_updated', 7, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(58, 3, '', '2016-12-29 08:56:37', '', '', 'project_task_updated', 7, 67, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(59, 3, '', '2016-12-29 08:57:06', '', '', 'project_task_updated', 3, 59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(60, 2, '', '2016-12-31 11:54:00', '', '', 'project_task_updated', 7, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(61, 2, '', '2016-12-31 11:54:15', '', '', 'project_task_updated', 7, 65, 0, 0, 0, 0, 0, 0, 0, 61, 0, 0, 0, 0, 0),
(62, 2, '', '2016-12-31 11:54:23', '', '', 'project_task_updated', 7, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(63, 6, '', '2017-01-03 05:18:29', '', '', 'project_task_updated', 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(64, 6, '', '2017-01-03 05:21:08', '', '', 'project_task_updated', 1, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(65, 2, '', '2017-01-03 06:12:32', '1,3,4', '', 'project_task_created', 5, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(66, 6, '', '2017-01-03 09:18:34', '', '', 'project_task_updated', 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(67, 6, '', '2017-01-03 09:19:48', '', '', 'project_task_updated', 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(68, 6, '', '2017-01-03 09:20:13', '', '', 'project_task_updated', 1, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(69, 6, '', '2017-01-03 09:37:06', '', '', 'project_task_updated', 1, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(70, 6, '', '2017-01-03 09:37:15', '', '', 'project_task_updated', 1, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(71, 6, '', '2017-01-03 09:37:21', '', '', 'project_task_updated', 1, 58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(72, 6, '', '2017-01-03 09:37:28', '', '', 'project_task_updated', 1, 57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(73, 7, '', '2017-01-03 14:09:54', '1,2,6', ',2', 'project_task_created', 1, 86, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(74, 2, '', '2017-01-09 07:12:05', '9', '', 'project_task_created', 11, 87, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(75, 8, '', '2017-01-09 12:49:54', '2,3', '', 'project_task_created', 7, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(76, 8, '', '2017-01-09 12:50:43', '', '', 'project_task_updated', 7, 88, 0, 0, 0, 0, 0, 0, 0, 76, 0, 0, 0, 0, 0),
(77, 8, '', '2017-01-09 13:19:33', '2,3', '', 'project_task_created', 7, 89, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(78, 8, '', '2017-01-09 14:27:03', '', '', 'project_task_updated', 7, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79, 6, '', '2017-01-10 11:23:14', '', '', 'project_task_updated', 1, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(80, 2, '', '2017-01-10 11:50:10', '5', '', 'project_task_created', 12, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(81, 2, '', '2017-01-10 11:50:39', '5,6', '', 'project_task_created', 12, 121, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82, 2, '', '2017-01-10 11:50:53', '5,6', ',5', 'project_task_created', 12, 122, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(83, 3, '', '2017-01-10 12:06:22', '', '', 'project_task_updated', 5, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(84, 8, '', '2017-01-10 12:45:26', '', '', 'project_task_created', 13, 123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(85, 8, '', '2017-01-10 12:45:44', '', '', 'project_task_updated', 13, 123, 0, 0, 0, 0, 0, 0, 0, 85, 0, 0, 0, 0, 0),
(86, 8, '', '2017-01-10 12:46:43', '', '', 'project_task_created', 13, 124, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(87, 5, '', '2017-01-10 14:34:21', '', '', 'project_task_updated', 12, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(88, 6, '', '2017-01-10 14:34:23', '', '', 'project_task_updated', 1, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(89, 6, '', '2017-01-10 14:34:50', '', '', 'project_task_updated', 12, 122, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(90, 6, '', '2017-01-10 14:34:59', '', '', 'project_task_updated', 12, 121, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(91, 6, '', '2017-01-11 07:54:54', '', '', 'project_task_updated', 1, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(92, 5, '', '2017-01-11 13:13:58', '1', '', 'project_task_updated', 9, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(93, 5, '', '2017-01-11 13:14:02', '6', '', 'project_task_updated', 12, 122, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(94, 5, '', '2017-01-11 13:14:22', '6', ',6', 'project_task_updated', 12, 122, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(95, 5, '', '2017-01-11 13:14:34', '', '', 'project_task_updated', 12, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(96, 5, '', '2017-01-11 13:15:50', '', '', 'project_task_updated', 12, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(97, 5, '', '2017-01-11 13:15:57', '', '', 'project_task_updated', 12, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98, 5, '', '2017-01-11 13:16:03', '', '', 'project_task_updated', 12, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(99, 5, '', '2017-01-11 13:16:27', '', '', 'project_task_updated', 12, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(100, 5, '', '2017-01-11 13:20:53', '', '', 'project_task_updated', 12, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(101, 7, '', '2017-01-11 17:13:10', '2,8', ',2,8', 'project_task_created', 13, 125, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(102, 7, '', '2017-01-11 17:13:59', '2,8', '', 'project_task_created', 13, 126, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(103, 7, '', '2017-01-11 17:15:13', '2,8', '', 'project_task_created', 13, 127, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(104, 7, '', '2017-01-11 17:16:38', '2,8', '', 'project_task_created', 13, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(105, 7, '', '2017-01-11 17:20:42', '2,8', ',2', 'project_task_created', 13, 129, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(106, 7, '', '2017-01-11 17:22:36', '2,8', '', 'project_task_created', 13, 130, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(107, 7, '', '2017-01-11 17:27:23', '2,8', '', 'project_task_created', 13, 131, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(108, 7, '', '2017-01-11 17:43:30', '2,8', ',8', 'project_task_created', 13, 132, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(109, 7, '', '2017-01-11 17:44:07', '1,2,3,4', ',2,3', 'project_task_created', 4, 133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(110, 3, '', '2017-01-12 07:48:50', '', '', 'project_task_updated', 5, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(111, 3, '', '2017-01-12 08:51:43', '', '', 'project_task_updated', 5, 93, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(112, 3, '', '2017-01-12 09:52:18', '', '', 'project_task_updated', 5, 97, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(113, 3, '', '2017-01-12 11:04:54', '', '', 'project_task_updated', 5, 92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(114, 8, '', '2017-01-12 13:58:54', '', '', 'project_task_updated', 13, 124, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(115, 3, '', '2017-01-12 14:07:24', '', '', 'project_task_updated', 5, 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(116, 3, '', '2017-01-13 11:25:39', '', '', 'project_task_updated', 5, 94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(117, 3, '', '2017-01-13 11:26:06', '', '', 'project_task_updated', 5, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(118, 3, '', '2017-01-13 11:56:21', '', '', 'project_task_updated', 5, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(119, 2, '', '2017-01-13 14:37:03', '', '', 'project_task_updated', 13, 125, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(120, 7, '', '2017-01-15 16:16:27', '2', '', 'project_task_created', 14, 134, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(121, 7, '', '2017-01-15 16:16:50', '2', '', 'project_task_created', 14, 135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(122, 7, '', '2017-01-15 16:17:30', '2', '', 'project_task_created', 14, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123, 7, '', '2017-01-15 16:17:52', '2', '', 'project_task_updated', 14, 134, 0, 0, 0, 0, 0, 0, 0, 123, 0, 0, 0, 0, 0),
(124, 7, '', '2017-01-15 16:18:08', '2', '', 'project_task_updated', 14, 135, 0, 0, 0, 0, 0, 0, 0, 124, 0, 0, 0, 0, 0),
(125, 7, '', '2017-01-15 16:19:01', '2', '', 'project_task_created', 14, 137, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(126, 7, '', '2017-01-15 16:19:35', '2', '', 'project_task_created', 14, 138, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(127, 7, '', '2017-01-15 16:19:55', '2', '', 'project_task_created', 14, 139, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(128, 7, '', '2017-01-15 16:21:27', '2', '', 'project_file_added', 14, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(129, 7, '', '2017-01-15 16:25:04', '2', '', 'project_task_updated', 14, 138, 0, 0, 0, 0, 0, 0, 0, 129, 0, 0, 0, 0, 0),
(130, 7, '', '2017-01-15 16:25:23', '2', '', 'project_task_created', 14, 140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(131, 7, '', '2017-01-15 16:25:48', '2', '', 'project_task_created', 14, 141, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(132, 7, '', '2017-01-15 16:26:19', '2', '', 'project_task_created', 14, 142, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(133, 7, '', '2017-01-15 16:29:48', '2', '', 'project_task_created', 14, 143, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(134, 6, '', '2017-01-16 14:27:38', '', '', 'project_task_updated', 1, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(135, 6, '', '2017-01-16 14:45:51', '', '', 'project_task_updated', 1, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(136, 6, '', '2017-01-16 14:49:30', '', '', 'project_task_updated', 1, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(137, 2, '', '2017-01-16 15:29:20', '1', '', 'project_member_deleted', 2, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0),
(138, 2, '', '2017-01-16 15:29:28', '1,10', '', 'project_member_added', 2, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0),
(139, 10, '', '2017-01-17 06:24:47', '', '', 'project_task_updated', 2, 144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(140, 10, '', '2017-01-17 06:24:49', '', '', 'project_task_updated', 2, 145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(141, 10, '', '2017-01-17 06:25:23', '', '', 'project_task_updated', 2, 147, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(142, 10, '', '2017-01-17 06:25:26', '', '', 'project_task_updated', 2, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(143, 10, '', '2017-01-17 06:41:15', '', '', 'project_task_updated', 2, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(144, 7, '', '2017-01-17 07:03:04', '1,2,8,10', ',8', 'project_task_created', 2, 171, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(145, 7, '', '2017-01-17 07:03:49', '8', ',8', 'project_task_updated', 2, 171, 0, 0, 0, 0, 0, 0, 0, 143, 0, 0, 0, 0, 0),
(146, 3, '', '2017-01-17 07:36:12', '', '', 'project_task_updated', 5, 96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(147, 10, '', '2017-01-17 07:44:24', '', '', 'project_task_updated', 2, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(148, 10, '', '2017-01-17 07:45:58', '', '', 'project_task_updated', 2, 149, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(149, 3, '', '2017-01-17 07:51:10', '', '', 'project_task_updated', 5, 109, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(150, 7, '', '2017-01-17 08:33:15', '1,2,3,8', ',8', 'project_task_created', 4, 172, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(151, 10, '', '2017-01-17 10:56:07', '', '', 'project_task_updated', 2, 148, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(152, 10, '', '2017-01-17 12:42:50', '', '', 'project_task_updated', 2, 151, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(153, 10, '', '2017-01-17 12:55:50', '', '', 'project_task_updated', 2, 153, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(154, 2, '', '2017-01-17 14:00:53', '', '', 'project_task_updated', 13, 126, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(155, 10, '', '2017-01-17 14:10:02', '', '', 'project_task_updated', 2, 150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(156, 10, '', '2017-01-17 14:10:06', '', '', 'project_task_updated', 2, 152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(157, 6, '', '2017-01-17 15:18:40', '11', '', 'project_task_updated', 14, 134, 0, 0, 0, 0, 0, 0, 0, 155, 0, 0, 0, 0, 0),
(158, 6, '', '2017-01-17 15:18:52', '11', '', 'project_task_updated', 14, 135, 0, 0, 0, 0, 0, 0, 0, 156, 0, 0, 0, 0, 0),
(159, 6, '', '2017-01-17 15:19:12', '11', '', 'project_task_updated', 14, 136, 0, 0, 0, 0, 0, 0, 0, 157, 0, 0, 0, 0, 0),
(160, 6, '', '2017-01-17 15:19:31', '11', '', 'project_task_updated', 14, 137, 0, 0, 0, 0, 0, 0, 0, 158, 0, 0, 0, 0, 0),
(161, 6, '', '2017-01-17 15:19:41', '11', '', 'project_task_updated', 14, 138, 0, 0, 0, 0, 0, 0, 0, 159, 0, 0, 0, 0, 0),
(162, 6, '', '2017-01-17 15:19:56', '11', '', 'project_task_updated', 14, 139, 0, 0, 0, 0, 0, 0, 0, 160, 0, 0, 0, 0, 0),
(163, 6, '', '2017-01-17 15:20:06', '11', '', 'project_task_updated', 14, 140, 0, 0, 0, 0, 0, 0, 0, 161, 0, 0, 0, 0, 0),
(164, 6, '', '2017-01-17 15:20:21', '11', '', 'project_task_updated', 14, 141, 0, 0, 0, 0, 0, 0, 0, 162, 0, 0, 0, 0, 0),
(165, 6, '', '2017-01-17 15:20:31', '11', '', 'project_task_updated', 14, 142, 0, 0, 0, 0, 0, 0, 0, 163, 0, 0, 0, 0, 0),
(166, 6, '', '2017-01-17 15:20:43', '11', '', 'project_task_updated', 14, 143, 0, 0, 0, 0, 0, 0, 0, 164, 0, 0, 0, 0, 0),
(167, 8, '', '2017-01-17 15:39:40', '2,3', '', 'project_task_created', 7, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(168, 8, '', '2017-01-17 15:39:56', '', '', 'project_task_updated', 7, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(169, 10, '', '2017-01-18 03:52:26', '', '', 'project_task_updated', 2, 154, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(170, 10, '', '2017-01-18 05:58:50', '', '', 'project_task_updated', 2, 154, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(171, 6, '', '2017-01-18 06:24:48', '', '', 'project_task_updated', 1, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(172, 6, '', '2017-01-18 06:25:02', '2', '', 'project_task_updated', 1, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(173, 8, '', '2017-01-18 08:33:49', '', '', 'project_task_updated', 2, 171, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(174, 8, '', '2017-01-18 08:35:12', '', '', 'project_task_commented', 2, 171, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(175, 2, '', '2017-01-18 08:52:14', '', '', 'project_task_deleted', 13, 174, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(176, 10, '', '2017-01-18 09:40:06', '', '', 'project_task_updated', 2, 150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(177, 10, '', '2017-01-18 09:40:13', '', '', 'project_task_updated', 2, 151, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(178, 10, '', '2017-01-18 09:40:18', '', '', 'project_task_updated', 2, 152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(179, 10, '', '2017-01-18 09:40:23', '', '', 'project_task_updated', 2, 153, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(180, 10, '', '2017-01-18 14:16:59', '', '', 'project_task_updated', 2, 157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(181, 10, '', '2017-01-18 14:33:40', '', '', 'project_task_updated', 2, 154, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(182, 3, '', '2017-01-18 15:27:47', '', '', 'project_task_updated', 5, 102, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(183, 11, '', '2017-01-19 05:03:32', '', '', 'project_task_updated', 14, 134, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(184, 11, '', '2017-01-19 05:03:41', '', '', 'project_task_updated', 14, 135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(185, 11, '', '2017-01-19 05:04:07', '', '', 'project_task_updated', 14, 135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(186, 8, '', '2017-01-19 06:07:59', '2,3', '', 'project_task_created', 7, 175, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(187, 10, '', '2017-01-19 06:18:19', '', '', 'project_task_updated', 2, 150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(188, 8, '', '2017-01-19 06:29:20', '', '', 'project_task_deleted', 7, 175, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(189, 8, '', '2017-01-19 06:29:33', '', '', 'project_task_deleted', 7, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(190, 8, '', '2017-01-19 06:29:53', '', '', 'project_task_deleted', 7, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(191, 2, '', '2017-01-19 08:07:23', '', '', 'project_task_updated', 7, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(192, 2, '', '2017-01-19 08:10:00', '11', '', 'project_task_updated', 14, 136, 0, 0, 0, 0, 0, 0, 0, 189, 0, 0, 0, 0, 0),
(193, 2, '', '2017-01-19 08:10:23', '11', '', 'project_task_updated', 14, 137, 0, 0, 0, 0, 0, 0, 0, 190, 0, 0, 0, 0, 0),
(194, 2, '', '2017-01-19 08:10:37', '11', '', 'project_task_updated', 14, 138, 0, 0, 0, 0, 0, 0, 0, 191, 0, 0, 0, 0, 0),
(195, 2, '', '2017-01-19 08:12:02', '11', '', 'project_task_updated', 14, 140, 0, 0, 0, 0, 0, 0, 0, 192, 0, 0, 0, 0, 0),
(196, 2, '', '2017-01-19 08:13:00', '11', '', 'project_task_updated', 14, 141, 0, 0, 0, 0, 0, 0, 0, 193, 0, 0, 0, 0, 0),
(197, 2, '', '2017-01-19 08:13:16', '11', '', 'project_task_updated', 14, 142, 0, 0, 0, 0, 0, 0, 0, 194, 0, 0, 0, 0, 0),
(198, 2, '', '2017-01-19 08:13:33', '11', '', 'project_task_updated', 14, 143, 0, 0, 0, 0, 0, 0, 0, 195, 0, 0, 0, 0, 0),
(199, 2, '', '2017-01-19 08:15:03', '11', '', 'project_task_updated', 14, 135, 0, 0, 0, 0, 0, 0, 0, 196, 0, 0, 0, 0, 0),
(200, 2, '', '2017-01-19 08:20:26', '11', '', 'project_task_updated', 14, 134, 0, 0, 0, 0, 0, 0, 0, 197, 0, 0, 0, 0, 0),
(201, 2, '', '2017-01-19 08:21:49', '11', '', 'project_task_updated', 14, 139, 0, 0, 0, 0, 0, 0, 0, 198, 0, 0, 0, 0, 0),
(202, 2, '', '2017-01-19 08:22:16', '11', '', 'project_task_updated', 14, 135, 0, 0, 0, 0, 0, 0, 0, 199, 0, 0, 0, 0, 0),
(203, 2, '', '2017-01-19 08:22:32', '11', '', 'project_task_updated', 14, 143, 0, 0, 0, 0, 0, 0, 0, 200, 0, 0, 0, 0, 0),
(204, 2, '', '2017-01-19 08:23:09', '11', '', 'project_task_updated', 14, 142, 0, 0, 0, 0, 0, 0, 0, 201, 0, 0, 0, 0, 0),
(205, 2, '', '2017-01-19 08:23:26', '11', '', 'project_task_updated', 14, 141, 0, 0, 0, 0, 0, 0, 0, 202, 0, 0, 0, 0, 0),
(206, 2, '', '2017-01-19 08:23:40', '11', '', 'project_task_updated', 14, 140, 0, 0, 0, 0, 0, 0, 0, 203, 0, 0, 0, 0, 0),
(207, 2, '', '2017-01-19 08:23:52', '11', '', 'project_task_updated', 14, 138, 0, 0, 0, 0, 0, 0, 0, 204, 0, 0, 0, 0, 0),
(208, 2, '', '2017-01-19 08:24:03', '11', '', 'project_task_updated', 14, 137, 0, 0, 0, 0, 0, 0, 0, 205, 0, 0, 0, 0, 0),
(209, 2, '', '2017-01-19 08:24:14', '11', '', 'project_task_updated', 14, 136, 0, 0, 0, 0, 0, 0, 0, 206, 0, 0, 0, 0, 0),
(210, 2, '', '2017-01-19 08:26:42', '3,7,8,11', '', 'project_task_created', 14, 176, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(211, 8, '', '2017-01-19 08:48:51', '1,2,3,5,6,7', ',6', 'project_task_created', 9, 177, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(212, 8, '', '2017-01-19 08:50:01', '', '', 'project_task_updated', 9, 177, 0, 0, 0, 0, 0, 0, 0, 209, 0, 0, 0, 0, 0),
(213, 11, '', '2017-01-19 09:00:39', '', '', 'project_task_updated', 14, 135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(214, 2, '', '2017-01-19 11:10:45', '', '', 'project_task_updated', 7, 66, 0, 0, 0, 0, 0, 0, 0, 211, 0, 0, 0, 0, 0),
(215, 2, '', '2017-01-19 11:11:14', '8', '', 'project_task_updated', 7, 89, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(216, 2, '', '2017-01-19 11:15:08', '3', '', 'project_task_updated', 5, 116, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(217, 2, '', '2017-01-19 11:15:19', '3', '', 'project_task_updated', 5, 118, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(218, 2, '', '2017-01-19 11:15:50', '3', '', 'project_task_updated', 5, 115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(219, 2, '', '2017-01-19 11:19:01', '10', '', 'project_task_assigned', 2, 18, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0),
(220, 2, '', '2017-01-19 11:19:16', '10', '', 'project_task_updated', 2, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(221, 2, '', '2017-01-19 11:19:33', '', '', 'project_task_updated', 2, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(222, 2, '', '2017-01-19 11:19:40', '', '', 'project_task_updated', 2, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(223, 2, '', '2017-01-19 11:53:41', '8', '', 'project_task_created', 13, 178, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(224, 2, '', '2017-01-19 12:21:08', '8', '', 'project_task_created', 13, 179, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(225, 2, '', '2017-01-19 12:55:52', '8', '', 'project_task_created', 13, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(226, 7, '', '2017-01-19 16:56:43', '2,8', '', 'project_task_created', 13, 181, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(227, 6, '', '2017-04-02 15:28:14', '5', '', 'project_task_updated', 12, 120, 0, 0, 0, 0, 0, 0, 0, 224, 0, 0, 0, 0, 0),
(228, 6, '', '2017-04-15 04:49:38', '2', '', 'project_task_updated', 9, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(229, 6, '', '2017-04-15 04:49:41', '8', '', 'project_task_updated', 9, 177, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(230, 6, '', '2017-04-15 04:49:44', '8', '', 'project_task_updated', 9, 177, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(231, 6, '', '2017-04-15 04:49:59', '2', '', 'project_task_updated', 9, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(232, 6, '', '2017-04-15 04:50:03', '1', '', 'project_task_updated', 9, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(233, 6, '', '2017-04-15 05:18:47', '11', '', 'project_task_updated', 14, 135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(234, 6, '', '2017-04-15 05:18:47', '11', ',11', 'project_task_updated', 14, 134, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(235, 6, '', '2017-04-15 06:15:26', '2', '', 'project_task_updated', 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(236, 6, '', '2017-04-15 06:15:28', '', '', 'project_task_updated', 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(237, 6, '', '2017-04-15 06:15:30', '2', '', 'project_task_updated', 1, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(238, 6, '', '2017-04-15 06:15:31', '2', '', 'project_task_updated', 1, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(239, 6, '', '2017-04-15 06:15:33', '', '', 'project_task_updated', 1, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(240, 6, '', '2017-04-15 06:15:34', '1', '', 'project_task_updated', 9, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(241, 6, '', '2017-04-15 06:15:36', '', '', 'project_task_updated', 1, 86, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(242, 6, '', '2017-04-15 06:15:38', '2', '', 'project_task_updated', 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(243, 6, '', '2017-04-15 06:15:41', '', '', 'project_task_updated', 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(244, 6, '', '2017-04-15 06:15:42', '2', '', 'project_task_updated', 1, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(245, 6, '', '2017-04-15 06:15:45', '2', '', 'project_task_updated', 1, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(246, 6, '', '2017-04-15 06:15:47', '', '', 'project_task_updated', 1, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(247, 6, '', '2017-04-15 06:15:48', '1', '', 'project_task_updated', 9, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(248, 6, '', '2017-04-15 06:15:50', '', '', 'project_task_updated', 1, 86, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(249, 6, '', '2017-04-15 06:16:16', '2', '', 'project_task_updated', 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(250, 6, '', '2017-04-15 06:16:30', '2', '', 'project_task_updated', 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(251, 6, '', '2017-04-15 06:16:49', '2', '', 'project_task_updated', 1, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(252, 6, '', '2017-04-15 06:18:40', '', '', 'project_task_updated', 1, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(253, 6, '', '2017-04-15 06:19:16', '2', '', 'project_task_updated', 1, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(254, 2, '', '2017-04-15 06:56:35', '', '', 'project_task_updated', 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(255, 2, '', '2017-04-15 06:56:38', '6', '', 'project_task_updated', 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(256, 2, '', '2017-04-15 06:56:41', '3', '', 'project_task_updated', 3, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(257, 2, '', '2017-04-15 06:56:50', '', '', 'project_task_updated', 13, 181, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(258, 2, '', '2017-04-15 06:57:07', '', '', 'project_task_updated', 8, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(259, 2, '', '2017-04-15 06:57:29', '6', '', 'project_task_updated', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(260, 2, '', '2017-04-15 06:57:31', '6', '', 'project_task_updated', 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(261, 2, '', '2017-04-15 06:57:33', '6', '', 'project_task_updated', 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(262, 2, '', '2017-04-15 06:57:35', '6', '', 'project_task_updated', 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(263, 2, '', '2017-04-15 06:57:38', '6', '', 'project_task_updated', 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(264, 6, '', '2017-04-15 08:09:37', '', '', 'project_task_commented', 1, 4, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(265, 6, '', '2017-04-15 12:34:23', '2', '', 'project_task_updated', 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(266, 6, '', '2017-04-15 12:34:24', '', '', 'project_task_updated', 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(267, 6, '', '2017-04-15 12:34:36', '', '', 'project_task_updated', 12, 121, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(268, 6, '', '2017-04-15 12:34:38', '', '', 'project_task_updated', 12, 122, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(269, 6, '', '2017-04-15 12:34:41', '2', '', 'project_task_updated', 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(270, 7, '', '2017-04-17 06:55:30', '6', '', 'project_task_updated', 1, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(271, 7, '', '2017-04-17 06:55:30', '6', '', 'project_task_updated', 1, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(272, 7, '', '2017-04-17 06:55:31', '6', '', 'project_task_updated', 1, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(273, 7, '', '2017-04-17 06:55:33', '6', '', 'project_task_updated', 1, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(274, 7, '', '2017-04-17 06:55:35', '6', '', 'project_task_updated', 1, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(275, 7, '', '2017-04-17 06:55:37', '6', '', 'project_task_updated', 1, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(276, 7, '', '2017-04-17 06:55:42', '2', '', 'project_task_updated', 1, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(277, 7, '', '2017-04-17 06:55:44', '6', '', 'project_task_updated', 1, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(278, 7, '', '2017-04-17 06:56:02', '6', ',6', 'project_task_updated', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(279, 7, '', '2017-04-18 05:36:08', '8', '', 'project_task_updated', 13, 123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(280, 7, '', '2017-04-18 05:37:05', '8', '', 'project_task_updated', 13, 124, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(281, 7, '', '2017-04-18 06:41:22', '1', '', 'project_task_updated', 9, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(282, 7, '', '2017-04-18 06:41:26', '1', '', 'project_task_updated', 9, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(283, 6, '', '2017-04-18 08:04:50', '', '', 'project_task_updated', 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(284, 6, '', '2017-04-18 08:04:55', '', '', 'project_task_updated', 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(285, 6, '', '2017-04-18 08:11:36', '', '', 'project_task_updated', 12, 122, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(286, 6, '', '2017-04-18 08:11:43', '', '', 'project_task_updated', 12, 122, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(287, 11, '', '2017-04-18 08:23:36', '', '', 'project_task_updated', 14, 134, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(288, 11, '', '2017-04-18 08:23:46', '', '', 'project_task_updated', 14, 134, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(289, 6, '', '2017-04-18 08:43:27', '', '', 'leave_approved', 0, 0, 0, 0, 0, 0, 1, 0, 4, 0, 0, 0, 0, 0, 0),
(290, 7, '', '2017-04-18 10:24:13', '1', '', 'project_task_updated', 9, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(291, 7, '', '2017-04-18 10:24:17', '1', '', 'project_task_updated', 9, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(292, 7, '', '2017-04-18 11:14:54', '2', '', 'project_task_updated', 13, 127, 0, 0, 0, 0, 0, 0, 0, 286, 0, 0, 0, 0, 0),
(293, 7, '', '2017-04-18 11:15:38', '2', '', 'project_task_updated', 13, 127, 0, 0, 0, 0, 0, 0, 0, 287, 0, 0, 0, 0, 0),
(294, 7, '', '2017-04-18 11:16:15', '', '', 'project_task_updated', 9, 62, 0, 0, 0, 0, 0, 0, 0, 288, 0, 0, 0, 0, 0),
(295, 7, '', '2017-04-18 11:29:29', '2,8', '', 'project_task_created', 13, 183, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(296, 6, '', '2017-04-18 11:33:12', '', '', 'project_task_updated', 5, 182, 0, 0, 0, 0, 0, 0, 0, 293, 0, 0, 0, 0, 0),
(297, 6, '', '2017-04-18 11:43:05', '', '', 'project_task_updated', 5, 182, 0, 0, 0, 0, 0, 0, 0, 295, 0, 0, 0, 0, 0),
(298, 6, '', '2017-04-18 11:48:44', '', '', 'project_task_updated', 5, 182, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(299, 6, '', '2017-04-18 11:48:54', '', '', 'project_task_updated', 5, 182, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(300, 6, '', '2017-04-18 11:49:00', '', '', 'project_task_updated', 5, 182, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(301, 6, '', '2017-04-18 11:49:06', '', '', 'project_task_updated', 5, 182, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(302, 6, '', '2017-04-18 11:54:00', '', '', 'project_task_updated', 5, 182, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(303, 6, '', '2017-04-20 02:41:33', '', '', 'leave_approved', 0, 0, 0, 0, 0, 0, 2, 0, 6, 0, 0, 0, 0, 0, 0),
(304, 7, '', '2017-08-03 06:12:52', '', '', 'project_task_deleted', 19, 187, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(305, 7, '', '2017-08-03 06:12:54', '', '', 'project_task_deleted', 19, 188, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(306, 7, '', '2017-08-03 06:12:56', '', '', 'project_task_deleted', 19, 189, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(307, 7, '', '2017-08-03 06:12:58', '', '', 'project_task_deleted', 19, 190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(308, 7, '', '2017-08-03 06:13:01', '', '', 'project_task_deleted', 19, 191, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(309, 7, '', '2017-08-03 06:13:03', '', '', 'project_task_deleted', 19, 192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(310, 7, '', '2017-08-03 06:13:05', '', '', 'project_task_deleted', 19, 193, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(311, 7, '', '2017-08-03 06:13:08', '', '', 'project_task_deleted', 19, 194, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `notification_settings`
--

CREATE TABLE `notification_settings` (
  `id` int(11) NOT NULL,
  `event` varchar(250) NOT NULL,
  `category` varchar(50) NOT NULL,
  `enable_email` int(1) NOT NULL DEFAULT '0',
  `enable_web` int(1) NOT NULL DEFAULT '0',
  `notify_to_team` text NOT NULL,
  `notify_to_team_members` text NOT NULL,
  `notify_to_terms` text NOT NULL,
  `sort` int(11) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification_settings`
--

INSERT INTO `notification_settings` (`id`, `event`, `category`, `enable_email`, `enable_web`, `notify_to_team`, `notify_to_team_members`, `notify_to_terms`, `sort`, `deleted`) VALUES
(1, 'project_created', 'project', 0, 0, '', '', '', 1, 0),
(2, 'project_deleted', 'project', 0, 0, '', '', '', 2, 0),
(3, 'project_task_created', 'project', 1, 1, '', '', 'project_members,task_assignee', 3, 0),
(4, 'project_task_updated', 'project', 0, 1, '', '', 'task_assignee', 4, 0),
(5, 'project_task_assigned', 'project', 0, 1, '', '', 'task_assignee', 5, 0),
(7, 'project_task_started', 'project', 0, 0, '', '', '', 7, 0),
(8, 'project_task_finished', 'project', 0, 0, '', '', '', 8, 0),
(9, 'project_task_reopened', 'project', 0, 0, '', '', '', 9, 0),
(10, 'project_task_deleted', 'project', 0, 1, '', '', 'task_assignee', 10, 0),
(11, 'project_task_commented', 'project', 0, 1, '', '', 'task_assignee', 11, 0),
(12, 'project_member_added', 'project', 0, 1, '', '', 'project_members', 12, 0),
(13, 'project_member_deleted', 'project', 0, 1, '', '', 'project_members', 13, 0),
(14, 'project_file_added', 'project', 0, 1, '', '', 'project_members', 14, 0),
(15, 'project_file_deleted', 'project', 0, 1, '', '', 'project_members', 15, 0),
(16, 'project_file_commented', 'project', 0, 1, '', '', 'project_members', 16, 0),
(17, 'project_comment_added', 'project', 0, 1, '', '', 'project_members', 17, 0),
(18, 'project_comment_replied', 'project', 0, 1, '', '', 'project_members,comment_creator', 18, 0),
(19, 'project_customer_feedback_added', 'project', 0, 1, '', '', 'project_members', 19, 0),
(20, 'project_customer_feedback_replied', 'project', 0, 1, '', '', 'project_members,comment_creator', 20, 0),
(21, 'client_signup', 'client', 0, 0, '', '', '', 21, 0),
(22, 'invoice_online_payment_received', 'invoice', 0, 0, '', '', '', 22, 0),
(23, 'leave_application_submitted', 'leave', 0, 0, '', '', '', 23, 0),
(24, 'leave_approved', 'leave', 0, 1, '', '', 'leave_applicant', 24, 0),
(25, 'leave_assigned', 'leave', 0, 1, '', '', 'leave_applicant', 25, 0),
(26, 'leave_rejected', 'leave', 0, 1, '', '', 'leave_applicant', 26, 0),
(27, 'leave_canceled', 'leave', 0, 0, '', '', '', 27, 0),
(28, 'ticket_created', 'ticket', 0, 0, '', '', '', 28, 0),
(29, 'ticket_commented', 'ticket', 0, 1, '', '', 'client_primary_contact,ticket_creator', 29, 0),
(30, 'ticket_closed', 'ticket', 0, 1, '', '', 'client_primary_contact,ticket_creator', 30, 0),
(31, 'ticket_reopened', 'ticket', 0, 1, '', '', 'client_primary_contact,ticket_creator', 31, 0),
(32, 'estimate_request_received', 'estimate', 0, 0, '', '', '', 32, 0),
(33, 'estimate_sent', 'estimate', 0, 0, '', '', '', 33, 0),
(34, 'estimate_accepted', 'estimate', 0, 0, '', '', '', 34, 0),
(35, 'estimate_rejected', 'estimate', 0, 0, '', '', '', 35, 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'custom',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `online_payable` tinyint(1) NOT NULL DEFAULT '0',
  `available_on_invoice` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_payment_amount` double NOT NULL DEFAULT '0',
  `settings` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `title`, `type`, `description`, `online_payable`, `available_on_invoice`, `minimum_payment_amount`, `settings`, `deleted`) VALUES
(1, 'Cash', 'custom', 'Cash payments', 0, 0, 0, '', 0),
(2, 'Stripe', 'stripe', 'Stripe online payments', 1, 0, 0, 'a:3:{s:15:\"pay_button_text\";s:6:\"Stripe\";s:10:\"secret_key\";s:6:\"\";s:15:\"publishable_key\";s:6:\"\";}', 0),
(3, 'PayPal Payments Standard', 'paypal_payments_standard', 'PayPal Payments Standard Online Payments', 1, 0, 0, 'a:4:{s:15:\"pay_button_text\";s:6:\"PayPal\";s:5:\"email\";s:4:\"\";s:11:\"paypal_live\";s:1:\"0\";s:5:\"debug\";s:1:\"0\";}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `paypal_ipn`
--

CREATE TABLE `paypal_ipn` (
  `id` int(11) NOT NULL,
  `transaction_id` tinytext COLLATE utf8_unicode_ci,
  `ipn_hash` longtext COLLATE utf8_unicode_ci NOT NULL,
  `ipn_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `share_with` text COLLATE utf8_unicode_ci,
  `files` longtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `created_by`, `created_at`, `description`, `post_id`, `share_with`, `files`, `deleted`) VALUES
(1, 2, '2017-01-18 09:02:00', 'Things are getting tricky', 0, '', 'a:0:{}', 0),
(2, 7, '2017-03-23 09:15:42', 'testing', 0, '', 'a:0:{}', 1),
(3, 6, '2017-03-23 12:26:13', 'Hello Team, \nPlease share your views on the new company policy.\n**Doc attached', 0, '', 'a:1:{i:0;a:2:{s:9:\"file_name\";s:50:\"timeline_post_file58d3bee59d697-company-policy.doc\";s:9:\"file_size\";s:5:\"22528\";}}', 0),
(4, 7, '2017-04-15 08:00:03', 'test this ', 0, '', 'a:0:{}', 1),
(5, 7, '2017-04-18 09:35:42', 'test1', 0, '', 'a:0:{}', 1),
(6, 7, '2017-04-18 09:37:06', 'testing on Tuesday', 0, '', 'a:0:{}', 0),
(7, 6, '2017-04-20 02:15:28', 'Testing - 04/19', 0, '', 'a:0:{}', 1),
(8, 6, '2017-04-20 02:19:01', 'Testing reply\n', 7, '', 'a:0:{}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `start_date` date NOT NULL,
  `deadline` date NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `status` enum('open','completed','canceled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `labels` text COLLATE utf8_unicode_ci,
  `price` double NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `description`, `start_date`, `deadline`, `client_id`, `created_date`, `status`, `labels`, `price`, `deleted`) VALUES
(1, 'Payroll', 'Payroll Management System', '2016-12-01', '2016-12-31', 1, '2017-01-03', 'open', '', 100000, 0),
(2, 'RentTrack', '', '2016-12-01', '2017-01-31', 1, '2017-01-11', 'open', '', 60000, 0),
(3, 'Mobibil', '', '2016-12-01', '2016-12-31', 1, '2017-01-19', 'completed', '', 0, 0),
(4, 'RetailPOS  - Standalone', '', '2016-12-01', '2016-12-17', 1, '2017-01-17', 'open', '', 0, 0),
(5, 'HR', '', '2016-12-01', '2017-02-28', 1, '2017-01-11', 'open', '', 75000, 0),
(6, 'South Lemon', '', '0000-00-00', '0000-00-00', 1, '2017-01-16', 'completed', '', 0, 0),
(7, 'Project Management', '', '0000-00-00', '0000-00-00', 1, '2017-01-19', 'canceled', '', 0, 0),
(8, 'PAX', 'Web application for Imports and Exports', '2017-01-16', '2017-02-28', 2, '2017-01-11', 'open', '', 100000, 0),
(9, 'Management', '', '0000-00-00', '0000-00-00', 1, '2016-12-22', 'canceled', '', 0, 0),
(10, 'Report Maker', '', '0000-00-00', '2017-02-28', 1, '2017-01-11', 'open', '', 50000, 0),
(11, 'SAGE POS', '', '2016-07-01', '0000-00-00', 1, '2017-01-09', 'open', '', 0, 0),
(12, 'TimeTrax', '', '0000-00-00', '2017-01-31', 1, '2017-04-15', 'completed', '', 50000, 0),
(13, 'TeamKazi', '', '2017-01-03', '2017-01-31', 1, '2017-01-11', 'open', '', 50000, 0),
(14, 'Transport Management System', '', '2017-01-16', '2017-01-31', 3, '2017-01-16', 'canceled', '', 50000, 0),
(15, 'SAGE Evolution', '', '0000-00-00', '0000-00-00', 1, '2017-01-19', 'open', '', 0, 0),
(16, 'mTangaza', '', '0000-00-00', '0000-00-00', 1, '2017-01-21', 'open', '', 75000, 0),
(17, 'ACCOUNTING', 'CREATE CUSTOMIZED ACCOUNTING MODULES', '2017-03-01', '2017-03-31', 4, '2017-03-23', 'open', 'HIGH PRIORITY', 1000000, 0),
(18, 'Pro 18Apr', '<p><br></p>This is high priority project', '2017-04-18', '2017-05-18', 5, '2017-04-18', 'open', 'HIGH PRIORITY', 100, 0),
(19, 'Tower Construction', 'South Mogadishu ', '2017-09-01', '2017-09-30', 6, '2017-08-02', 'open', '', 5000000, 0),
(20, 'Tower 1', '', '2017-08-03', '2017-08-31', 7, '2017-08-03', 'open', '', 100000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `project_comments`
--

CREATE TABLE `project_comments` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `comment_id` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `file_id` int(11) NOT NULL DEFAULT '0',
  `customer_feedback_id` int(11) NOT NULL DEFAULT '0',
  `files` longtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project_comments`
--

INSERT INTO `project_comments` (`id`, `created_by`, `created_at`, `description`, `project_id`, `comment_id`, `task_id`, `file_id`, `customer_feedback_id`, `files`, `deleted`) VALUES
(1, 2, '2016-12-29 07:54:13', 'Already done', 7, 0, 79, 0, 0, 'a:1:{i:0;a:2:{s:9:\"file_name\";s:47:\"project_comment_file5864c125d84ae-Team-Kazi.png\";s:9:\"file_size\";s:6:\"104379\";}}', 0),
(2, 8, '2017-01-18 08:35:12', 'The Notes are not visible on my account.. please make them accessible', 2, 0, 171, 0, 0, 'a:0:{}', 0),
(3, 6, '2017-04-15 08:09:37', 'oldisgold', 1, 0, 4, 0, 0, 'a:0:{}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `project_files`
--

CREATE TABLE `project_files` (
  `id` int(11) NOT NULL,
  `file_name` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `file_size` double NOT NULL,
  `created_at` datetime NOT NULL,
  `project_id` int(11) NOT NULL,
  `uploaded_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project_files`
--

INSERT INTO `project_files` (`id`, `file_name`, `description`, `file_size`, `created_at`, `project_id`, `uploaded_by`, `deleted`) VALUES
(1, '_file587ba18715573-SRS.docx', 'SRS document for Transport Management System - Rods & Steel', 27704, '2017-01-15 16:21:27', 14, 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `project_members`
--

CREATE TABLE `project_members` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `is_leader` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project_members`
--

INSERT INTO `project_members` (`id`, `user_id`, `project_id`, `is_leader`, `deleted`) VALUES
(1, 1, 1, 1, 0),
(2, 1, 2, 1, 0),
(3, 1, 3, 1, 0),
(4, 1, 4, 1, 0),
(5, 1, 5, 1, 0),
(6, 1, 6, 1, 0),
(7, 2, 1, 0, 0),
(8, 6, 1, 0, 0),
(9, 3, 5, 0, 0),
(10, 4, 5, 0, 0),
(11, 2, 5, 0, 0),
(12, 2, 3, 0, 0),
(13, 3, 3, 0, 0),
(14, 4, 3, 0, 1),
(15, 2, 7, 1, 0),
(16, 2, 6, 0, 0),
(17, 8, 6, 0, 0),
(18, 3, 6, 0, 0),
(19, 2, 2, 0, 0),
(20, 4, 2, 0, 1),
(21, 4, 4, 0, 0),
(22, 3, 4, 0, 0),
(23, 2, 4, 0, 0),
(24, 2, 8, 1, 0),
(25, 7, 3, 0, 0),
(26, 8, 3, 0, 0),
(27, 2, 9, 1, 0),
(28, 8, 9, 0, 0),
(29, 1, 9, 0, 0),
(30, 3, 9, 0, 0),
(31, 4, 9, 0, 0),
(32, 5, 9, 0, 0),
(33, 6, 9, 0, 0),
(34, 7, 9, 0, 0),
(35, 2, 10, 1, 0),
(36, 3, 7, 0, 0),
(37, 4, 10, 0, 0),
(38, 2, 11, 1, 0),
(39, 9, 11, 0, 0),
(40, 8, 7, 0, 0),
(41, 2, 12, 1, 0),
(42, 5, 12, 0, 0),
(43, 6, 12, 0, 0),
(44, 8, 13, 1, 0),
(45, 2, 13, 0, 0),
(46, 7, 14, 1, 0),
(47, 2, 14, 0, 0),
(48, 10, 2, 0, 0),
(49, 8, 2, 0, 0),
(50, 8, 4, 0, 0),
(51, 11, 14, 0, 0),
(52, 3, 14, 0, 0),
(53, 8, 14, 0, 0),
(54, 2, 15, 1, 0),
(55, 7, 16, 1, 0),
(56, 6, 17, 1, 0),
(57, 6, 18, 1, 0),
(58, 7, 13, 0, 0),
(59, 6, 5, 0, 0),
(60, 7, 19, 1, 0),
(61, 7, 20, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `project_time`
--

CREATE TABLE `project_time` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` enum('open','logged','approved') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'logged',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project_time`
--

INSERT INTO `project_time` (`id`, `project_id`, `user_id`, `start_time`, `end_time`, `status`, `deleted`) VALUES
(1, 5, 3, '2016-12-20 05:00:00', '2016-12-23 15:00:00', 'logged', 0),
(2, 3, 3, '2016-12-29 08:57:23', NULL, 'open', 0),
(3, 7, 3, '2016-12-30 13:15:06', '2016-12-30 15:54:14', 'logged', 0),
(4, 7, 3, '2016-12-30 15:54:27', NULL, 'open', 0),
(5, 5, 3, '2017-01-11 07:34:01', '2017-01-16 15:53:12', 'logged', 0),
(6, 1, 6, '2017-01-11 07:55:39', '2017-01-11 07:55:52', 'logged', 0),
(7, 2, 10, '2017-01-18 09:47:37', '2017-01-18 09:47:56', 'logged', 0),
(8, 17, 7, '2017-04-14 13:39:55', NULL, 'open', 0),
(9, 1, 7, '2017-04-17 06:56:43', '2017-04-17 06:56:53', 'logged', 0),
(10, 13, 7, '2017-04-18 06:42:44', '2017-04-18 06:42:52', 'logged', 0),
(11, 18, 2, '2017-04-19 07:33:12', '2017-04-19 07:33:27', 'logged', 0),
(12, 18, 6, '2017-04-25 20:22:25', '2017-04-25 20:28:19', 'logged', 0);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` mediumtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `permissions`, `deleted`) VALUES
(1, 'Administrators', 'a:24:{s:5:\"leave\";s:3:\"all\";s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";s:3:\"all\";s:19:\"attendance_specific\";s:0:\"\";s:7:\"invoice\";s:3:\"all\";s:8:\"estimate\";s:3:\"all\";s:7:\"expense\";s:3:\"all\";s:6:\"client\";s:3:\"all\";s:6:\"ticket\";s:3:\"all\";s:12:\"announcement\";s:3:\"all\";s:19:\"can_create_projects\";s:1:\"1\";s:17:\"can_edit_projects\";s:1:\"1\";s:19:\"can_delete_projects\";s:1:\"1\";s:30:\"can_add_remove_project_members\";s:1:\"1\";s:16:\"can_create_tasks\";s:1:\"1\";s:14:\"can_edit_tasks\";s:1:\"1\";s:16:\"can_delete_tasks\";s:1:\"1\";s:20:\"can_comment_on_tasks\";s:1:\"1\";s:21:\"can_create_milestones\";s:1:\"1\";s:19:\"can_edit_milestones\";s:1:\"1\";s:21:\"can_delete_milestones\";s:1:\"1\";s:16:\"can_delete_files\";s:1:\"1\";s:34:\"can_view_team_members_contact_info\";s:1:\"1\";s:34:\"can_view_team_members_social_links\";s:1:\"1\";}', 0),
(2, 'developer', 'a:24:{s:5:\"leave\";s:3:\"all\";s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";s:3:\"all\";s:19:\"attendance_specific\";s:0:\"\";s:7:\"invoice\";s:3:\"all\";s:8:\"estimate\";s:3:\"all\";s:7:\"expense\";s:3:\"all\";s:6:\"client\";s:3:\"all\";s:6:\"ticket\";s:3:\"all\";s:12:\"announcement\";s:3:\"all\";s:19:\"can_create_projects\";s:1:\"1\";s:17:\"can_edit_projects\";s:1:\"1\";s:19:\"can_delete_projects\";s:1:\"1\";s:30:\"can_add_remove_project_members\";s:1:\"1\";s:16:\"can_create_tasks\";s:1:\"1\";s:14:\"can_edit_tasks\";s:1:\"1\";s:16:\"can_delete_tasks\";s:1:\"1\";s:20:\"can_comment_on_tasks\";s:1:\"1\";s:21:\"can_create_milestones\";s:1:\"1\";s:19:\"can_edit_milestones\";s:1:\"1\";s:21:\"can_delete_milestones\";s:1:\"1\";s:16:\"can_delete_files\";s:1:\"1\";s:34:\"can_view_team_members_contact_info\";s:1:\"1\";s:34:\"can_view_team_members_social_links\";s:1:\"1\";}', 0),
(3, 'HR', 'a:24:{s:5:\"leave\";s:3:\"all\";s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";s:3:\"all\";s:19:\"attendance_specific\";s:0:\"\";s:7:\"invoice\";s:3:\"all\";s:8:\"estimate\";s:3:\"all\";s:7:\"expense\";s:3:\"all\";s:6:\"client\";s:3:\"all\";s:6:\"ticket\";s:3:\"all\";s:12:\"announcement\";s:3:\"all\";s:19:\"can_create_projects\";s:1:\"1\";s:17:\"can_edit_projects\";s:1:\"1\";s:19:\"can_delete_projects\";s:1:\"1\";s:30:\"can_add_remove_project_members\";s:1:\"1\";s:16:\"can_create_tasks\";s:1:\"1\";s:14:\"can_edit_tasks\";s:1:\"1\";s:16:\"can_delete_tasks\";s:1:\"1\";s:20:\"can_comment_on_tasks\";s:1:\"1\";s:21:\"can_create_milestones\";s:1:\"1\";s:19:\"can_edit_milestones\";s:1:\"1\";s:21:\"can_delete_milestones\";s:1:\"1\";s:16:\"can_delete_files\";s:1:\"1\";s:34:\"can_view_team_members_contact_info\";s:1:\"1\";s:34:\"can_view_team_members_social_links\";s:1:\"1\";}', 0),
(4, 'Site Administrator', NULL, 0),
(5, 'Supervisor ', 'a:24:{s:5:\"leave\";N;s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";s:3:\"all\";s:19:\"attendance_specific\";s:0:\"\";s:7:\"invoice\";N;s:8:\"estimate\";N;s:7:\"expense\";N;s:6:\"client\";N;s:6:\"ticket\";s:3:\"all\";s:12:\"announcement\";N;s:19:\"can_create_projects\";N;s:17:\"can_edit_projects\";N;s:19:\"can_delete_projects\";N;s:30:\"can_add_remove_project_members\";N;s:16:\"can_create_tasks\";s:1:\"1\";s:14:\"can_edit_tasks\";s:1:\"1\";s:16:\"can_delete_tasks\";s:1:\"1\";s:20:\"can_comment_on_tasks\";s:1:\"1\";s:21:\"can_create_milestones\";s:1:\"1\";s:19:\"can_edit_milestones\";s:1:\"1\";s:21:\"can_delete_milestones\";s:1:\"1\";s:16:\"can_delete_files\";s:1:\"1\";s:34:\"can_view_team_members_contact_info\";N;s:34:\"can_view_team_members_social_links\";N;}', 0),
(6, 'Manual worker', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `setting_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `setting_value` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`setting_name`, `setting_value`, `deleted`) VALUES
('accepted_file_formats', 'jpg,jpeg,doc,png,gif,pdf,docx', 0),
('admin_costs', '100000', 0),
('allowed_ip_addresses', '', 0),
('app_title', 'Team Kazi', 0),
('client_can_add_project_files', '', 0),
('client_can_comment_on_files', '', 0),
('client_can_comment_on_tasks', '', 0),
('client_can_create_tasks', '', 0),
('client_can_edit_tasks', '', 0),
('client_can_view_project_files', '', 0),
('client_can_view_tasks', '', 0),
('client_message_users', '', 0),
('company_address', '', 0),
('company_email', 'admin@wizag.biz', 0),
('company_name', 'Wise & Agile', 0),
('company_phone', '0711401108', 0),
('company_website', 'https://wizag.biz', 0),
('currency_symbol', 'Kshs.', 0),
('date_format', 'd/m/Y', 0),
('decimal_separator', '.', 0),
('default_currency', 'USD', 0),
('disable_client_login', '', 0),
('disable_client_signup', '1', 0),
('email_sent_from_address', 'wizag@teamkazi.biz', 0),
('email_sent_from_name', 'Wise & Agile Solutions Limited', 0),
('email_smtp_host', '', 0),
('email_smtp_pass', '', 0),
('email_smtp_port', '', 0),
('email_smtp_security_type', 'tls', 0),
('email_smtp_user', '', 0),
('first_day_of_week', '0', 0),
('invoice_logo', 'default-invoice-logo.png', 0),
('item_purchase_code', 'ITEM-PURCHASE-CODE', 0),
('language', 'english', 0),
('module_announcement', '1', 0),
('module_attendance', '1', 0),
('module_estimate', '1', 0),
('module_estimate_request', '1', 0),
('module_event', '1', 0),
('module_expense', '1', 0),
('module_invoice', '1', 0),
('module_leave', '1', 0),
('module_message', '1', 0),
('module_note', '1', 0),
('module_ticket', '1', 0),
('module_timeline', '1', 0),
('opening_hours', '8:30', 0),
('rows_per_page', '50', 0),
('scrollbar', 'native', 0),
('show_background_image_in_signin_page', 'no', 0),
('show_logo_in_signin_page', 'yes', 0),
('site_logo', 'default-stie-logo.png', 0),
('time_format', 'capital', 0),
('timezone', 'Africa/Nairobi', 0),
('working_hours', '176', 0);

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `facebook` text COLLATE utf8_unicode_ci,
  `twitter` text COLLATE utf8_unicode_ci,
  `linkedin` text COLLATE utf8_unicode_ci,
  `googleplus` text COLLATE utf8_unicode_ci,
  `digg` text COLLATE utf8_unicode_ci,
  `youtube` text COLLATE utf8_unicode_ci,
  `pinterest` text COLLATE utf8_unicode_ci,
  `instagram` text COLLATE utf8_unicode_ci,
  `github` text COLLATE utf8_unicode_ci,
  `tumblr` text COLLATE utf8_unicode_ci,
  `vine` text COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `project_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `ticket_id` int(11) DEFAULT NULL,
  `milestone_id` int(11) NOT NULL DEFAULT '0',
  `assigned_to` int(11) NOT NULL,
  `deadline` date DEFAULT NULL,
  `labels` text COLLATE utf8_unicode_ci,
  `max_hours` int(11) NOT NULL DEFAULT '0',
  `points` tinyint(4) NOT NULL DEFAULT '1',
  `status` enum('to_do - 0%','in_progress - 25%','in_progress - 50%','in_progress - 75%','done - 100%') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'to_do - 0%',
  `start_date` date DEFAULT NULL,
  `collaborators` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(11) NOT NULL DEFAULT '0',
  `priority` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Normal',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `project_id`, `parent_id`, `ticket_id`, `milestone_id`, `assigned_to`, `deadline`, `labels`, `max_hours`, `points`, `status`, `start_date`, `collaborators`, `deleted`, `priority`, `created_at`) VALUES
(1, 'Shifts', '', 1, 0, NULL, 0, 6, '0000-00-00', '', 0, 1, 'done - 100%', '0000-00-00', '2', 0, 'Normal', '0000-00-00 00:00:00'),
(2, 'Holidays', '', 1, 0, NULL, 0, 6, '0000-00-00', '', 0, 1, 'to_do - 0%', '0000-00-00', '2', 0, 'Normal', '0000-00-00 00:00:00'),
(3, 'Create Employees', '', 1, 0, NULL, 0, 2, '0000-00-00', '', 0, 1, 'to_do - 0%', '0000-00-00', '6', 1, 'Normal', '0000-00-00 00:00:00'),
(4, 'Advances', '', 1, 0, NULL, 0, 6, '0000-00-00', '', 0, 1, 'to_do - 0%', '0000-00-00', '2', 0, 'Normal', '0000-00-00 00:00:00'),
(5, 'Loans', '', 1, 0, NULL, 0, 6, '0000-00-00', '', 0, 1, 'to_do - 0%', '0000-00-00', '2', 0, 'Normal', '0000-00-00 00:00:00'),
(6, 'Absent Days', '', 1, 0, NULL, 0, 6, '0000-00-00', '', 0, 1, 'to_do - 0%', '0000-00-00', '2', 0, 'Normal', '0000-00-00 00:00:00'),
(7, 'Generate Payrolls', '', 1, 0, NULL, 0, 2, '0000-00-00', '', 0, 1, 'done - 100%', '0000-00-00', '6', 0, 'Normal', '0000-00-00 00:00:00'),
(8, 'Generate Coinage', '', 1, 0, NULL, 0, 6, '0000-00-00', '', 0, 1, 'to_do - 0%', '0000-00-00', '2', 0, 'Normal', '0000-00-00 00:00:00'),
(9, 'Reports', '', 1, 0, NULL, 0, 6, '0000-00-00', '', 0, 1, 'done - 100%', '0000-00-00', '2', 0, 'Normal', '0000-00-00 00:00:00'),
(10, 'Finalization', 'Finalize last changes to the app', 3, 0, NULL, 0, 3, '2016-12-15', '', 8, 1, 'done - 100%', '2016-12-12', '2', 0, 'Normal', '0000-00-00 00:00:00'),
(11, 'Host', 'Host the app', 3, 0, NULL, 0, 3, '0000-00-00', '', 0, 1, 'done - 100%', '0000-00-00', '2', 0, 'Normal', '0000-00-00 00:00:00'),
(12, 'Demo', 'Prepare for a demo', 3, 0, NULL, 0, 3, '0000-00-00', '', 0, 1, 'done - 100%', '0000-00-00', '2', 0, 'Normal', '0000-00-00 00:00:00'),
(13, 'Installation', 'Install and understand both the mobile and the web app.', 6, 0, NULL, 0, 1, '0000-00-00', '', 0, 1, 'done - 100%', '0000-00-00', '', 0, 'Normal', '0000-00-00 00:00:00'),
(14, 'Finalization', 'Finalize and host', 4, 0, NULL, 0, 4, '0000-00-00', '', 0, 1, 'in_progress - 75%', '0000-00-00', '3', 0, 'Normal', '0000-00-00 00:00:00'),
(15, 'System Migration', 'Migrate old system to laravel', 2, 0, NULL, 0, 4, '0000-00-00', '', 0, 1, 'done - 100%', '0000-00-00', '2', 0, 'Normal', '0000-00-00 00:00:00'),
(16, 'Settings', '', 1, 0, NULL, 0, 6, '0000-00-00', '', 0, 1, 'done - 100%', '0000-00-00', '2', 0, 'Normal', '0000-00-00 00:00:00'),
(17, 'Plan the execution process', '', 5, 0, NULL, 0, 3, '0000-00-00', '', 0, 1, 'done - 100%', '0000-00-00', '4,2', 0, 'Normal', '0000-00-00 00:00:00'),
(18, 'Add Client Login', 'Make a login area for clients to be able to log in. This should cater for potential clients also.', 2, 0, NULL, 0, 10, '2016-12-09', '', 2, 1, 'done - 100%', '2016-12-08', '', 0, 'Normal', '0000-00-00 00:00:00'),
(19, 'Online Application form', 'Allow the registered clients to be able to fill the required application form online without the need to download it.', 2, 0, NULL, 0, 4, '2016-12-17', '', 5, 1, 'done - 100%', '2016-12-15', '2', 0, 'Normal', '0000-00-00 00:00:00'),
(20, 'Authentication', NULL, 8, 0, NULL, 0, 2, NULL, '', 2, 1, 'done - 100%', NULL, '', 0, 'Normal', '0000-00-00 00:00:00'),
(21, 'Import Manifest', 'Import the Manifest', 8, 0, NULL, 0, 2, NULL, '', 4, 1, 'to_do - 0%', NULL, '', 0, 'Normal', '0000-00-00 00:00:00'),
(22, 'Import Sorted Manifest', 'Import the sorted manifest to update the individual AWB', 8, 0, NULL, 0, 2, NULL, '', 2, 1, 'to_do - 0%', NULL, '', 0, 'Normal', '0000-00-00 00:00:00'),
(23, 'Manifest Repository', 'This should be used to provide all the required manifest details. Should provide the total manifest weight and price.', 8, 0, NULL, 0, 2, NULL, '', 12, 1, 'to_do - 0%', NULL, '', 0, 'Normal', '0000-00-00 00:00:00'),
(24, 'Manifest Uploader', 'Locate and upload ONLY valid manifest files. Validate also the size upon upload.', 8, 0, NULL, 0, 2, NULL, '', 2, 1, 'to_do - 0%', NULL, '', 0, 'Normal', '0000-00-00 00:00:00'),
(25, 'Manifest Parser', 'Parse the manifest file to fit to the database requirements. Give each manifest a serial number that will be attached to each AWB.', 8, 0, NULL, 0, 2, NULL, '', 6, 1, 'to_do - 0%', NULL, '', 0, 'Normal', '0000-00-00 00:00:00'),
(26, 'Handling Charge Calculator', 'A module that will calculate the cost per AWB. The total weight of the consignment (All manifest items) should be user provided. The manifest should provide the weight per AWB. Get the approx. cost of the AWB per the given weight.', 8, 0, NULL, 0, 2, NULL, '', 2, 1, 'to_do - 0%', NULL, '', 0, 'Normal', '0000-00-00 00:00:00'),
(27, 'AWB Repository', 'This should handle the AWB from the time it is received to the time it is delivered. It should allow the AWB to be updated with new information like status changes. The AWB should also be mapped to a manifest using the manifest serial number. Each AWB should provide: Billing Status (Bill Consignee or Bill Shipper), Expected Quantity vs Actual Quantity (Help in getting the excess or missing items per AWB), Allow change of the clearance status (71,72,65), Flag all items with clearance 71 as \'Clearance Pending\', all status 71 items are not visible to dispatch.', 8, 0, NULL, 0, 2, NULL, '', 96, 1, 'to_do - 0%', NULL, '', 0, 'Normal', '0000-00-00 00:00:00'),
(28, 'Invoice Repository', 'This should create a Purchase Invoice for the Ground Handling Charges. It should also manage the Proforma invoices sent to the clients and know which have been paid for. Creation of ODA supplier invoice. Generate agent invoices.', 8, 0, NULL, 0, 2, NULL, '', 24, 1, 'to_do - 0%', NULL, '', 0, 'Normal', '0000-00-00 00:00:00'),
(29, 'HS Codes Master', 'Have a master that will hold the HS Codes and the rates with their UOMs', 8, 0, NULL, 0, 2, NULL, '', 4, 1, 'to_do - 0%', NULL, '', 0, 'Normal', '0000-00-00 00:00:00'),
(30, 'Sorting Module', 'Set the different Clearing status for each AWB. This module should set the Clearing status to 71,72 or 65 for Dutiable, non dutiable and dispatched.', 8, 0, NULL, 0, 2, NULL, '', 6, 1, 'to_do - 0%', NULL, '', 0, 'Normal', '0000-00-00 00:00:00'),
(31, 'Freight Module', 'Get only the AWBs that fall under BC. Send list to Finance for approval. Generate the possible clearance cost and create an invoice to be sent to the client via email. Approval request is per AWB and not per Manifest. Approved AWB then go to the dispatch department.', 8, 0, NULL, 0, 2, NULL, '', 16, 1, 'to_do - 0%', NULL, '', 0, 'Normal', '0000-00-00 00:00:00'),
(32, 'Shipment Weight Master', 'This should hold the details pertaining the weight and price per KG above 68Kgs. It should allow the user to add and edit the details. Refer to the SRS', 8, 0, NULL, 0, 2, NULL, '', 4, 1, 'to_do - 0%', NULL, '', 0, 'Normal', '0000-00-00 00:00:00'),
(33, 'Billing Module', 'Calculate the handling charges and all charges per AWB. ', 8, 0, NULL, 0, 2, NULL, '', 6, 1, 'to_do - 0%', NULL, '', 0, 'Normal', '0000-00-00 00:00:00'),
(34, 'Clearing Module', 'All code 71 items go for clearance but require the release document. For each clearing activity, a unique serial number should be generated.', 8, 0, NULL, 0, 2, NULL, '', 6, 1, 'to_do - 0%', NULL, '', 0, 'Normal', '0000-00-00 00:00:00'),
(35, 'Gateway Master', 'This will hold the details about the given gateways that are available.', 8, 0, NULL, 0, 2, NULL, '', 4, 1, 'to_do - 0%', NULL, '', 0, 'Normal', '0000-00-00 00:00:00'),
(36, 'Area Codes Master', 'This should store the area codes that will be used in sorting the goods once received.', 8, 0, NULL, 0, 2, NULL, '', 4, 1, 'to_do - 0%', NULL, '', 0, 'Normal', '0000-00-00 00:00:00'),
(37, 'Route Master', 'This defines the given routes that PAX will deliver to.', 8, 0, NULL, 0, 2, NULL, '', 4, 1, 'to_do - 0%', NULL, '', 0, 'Normal', '0000-00-00 00:00:00'),
(38, 'Courier Master', 'This will provide all the details about given courier agents and also assign them routes.', 8, 0, NULL, 0, 2, NULL, '', 4, 1, 'to_do - 0%', NULL, '', 0, 'Normal', '0000-00-00 00:00:00'),
(39, 'Weight-Destination Master', 'This module will be used to store the cost of delivering a package to ODA (upcountry) per kg and the destination.', 8, 0, NULL, 0, 2, NULL, '', 4, 1, 'to_do - 0%', NULL, '', 0, 'Normal', '0000-00-00 00:00:00'),
(40, 'Agent Master', 'This module will store the details of agents that are used to import and export goods. It should incorporate the rate, destination, address and the agent type, whether Cash or Credit.', 8, 0, NULL, 0, 2, NULL, '', 4, 1, 'to_do - 0%', NULL, '', 0, 'Normal', '0000-00-00 00:00:00'),
(41, 'Exports Module', NULL, 8, 0, NULL, 0, 2, NULL, '', 24, 1, 'to_do - 0%', NULL, '', 0, 'Normal', '0000-00-00 00:00:00'),
(42, 'Domestic Shipment Module', 'This module will handle all local shipments.', 8, 0, NULL, 0, 2, NULL, '', 24, 1, 'to_do - 0%', NULL, '', 0, 'Normal', '0000-00-00 00:00:00'),
(43, 'Testing', NULL, 8, 0, NULL, 0, 2, NULL, '', 30, 1, 'to_do - 0%', NULL, '', 0, 'Normal', '0000-00-00 00:00:00'),
(44, 'Cheque Printing', '', 1, 0, NULL, 0, 2, '0000-00-00', '', 6, 1, 'done - 100%', '0000-00-00', '6', 0, 'Normal', '0000-00-00 00:00:00'),
(45, 'Advances', NULL, 1, 0, NULL, 0, 6, '2017-01-31', '', 12, 1, 'to_do - 0%', '2016-11-01', '2', 0, 'Normal', '0000-00-00 00:00:00'),
(46, 'Bulk Advances', NULL, 1, 0, NULL, 0, 6, '2017-01-31', '', 12, 1, 'to_do - 0%', '2016-11-02', '2', 0, 'Normal', '0000-00-00 00:00:00'),
(47, 'Allowances', NULL, 1, 0, NULL, 0, 6, '2017-01-31', '', 6, 1, 'to_do - 0%', '2016-11-03', '2', 0, 'Normal', '0000-00-00 00:00:00'),
(48, 'Branches', NULL, 1, 0, NULL, 0, 6, '2017-01-31', '', 6, 1, 'to_do - 0%', '2016-11-04', '2', 0, 'Normal', '0000-00-00 00:00:00'),
(49, 'Deductions', NULL, 1, 0, NULL, 0, 6, '2017-01-31', '', 8, 1, 'to_do - 0%', '2016-11-05', '2', 0, 'Normal', '0000-00-00 00:00:00'),
(50, 'Departments', NULL, 1, 0, NULL, 0, 6, '2017-01-31', '', 6, 1, 'to_do - 0%', '2016-11-06', '2', 0, 'Normal', '0000-00-00 00:00:00'),
(51, 'Designation', '', 1, 0, NULL, 0, 2, '2017-01-31', '', 6, 1, 'done - 100%', '2016-11-07', '6', 0, 'Normal', '0000-00-00 00:00:00'),
(52, 'Employees', '', 1, 0, NULL, 0, 2, '2017-01-31', '', 32, 1, 'to_do - 0%', '2016-11-08', '6', 0, 'Normal', '0000-00-00 00:00:00'),
(53, 'Gratuity', NULL, 1, 0, NULL, 0, 6, '2017-01-31', '', 6, 1, 'done - 100%', '2016-11-09', '2', 0, 'Normal', '0000-00-00 00:00:00'),
(54, 'Holidays', NULL, 1, 0, NULL, 0, 6, '2017-01-31', '', 6, 1, 'done - 100%', '2016-11-10', '2', 0, 'Normal', '0000-00-00 00:00:00'),
(55, 'ACL', NULL, 1, 0, NULL, 0, 6, '2017-01-31', '', 12, 1, 'in_progress - 75%', '2016-11-11', '2', 0, 'Normal', '0000-00-00 00:00:00'),
(56, 'Shifts', NULL, 1, 0, NULL, 0, 6, '2017-01-31', '', 8, 1, 'done - 100%', '2016-11-12', '2', 0, 'Normal', '0000-00-00 00:00:00'),
(57, 'Wage Rates', NULL, 1, 0, NULL, 0, 6, '2017-01-31', '', 8, 1, 'done - 100%', '2016-11-13', '2', 0, 'Normal', '0000-00-00 00:00:00'),
(58, 'Pay Grades', NULL, 1, 0, NULL, 0, 6, '2017-01-31', '', 8, 1, 'done - 100%', '2016-11-14', '2', 0, 'Normal', '0000-00-00 00:00:00'),
(59, 'Prepare Implementation Plan', '', 3, 0, NULL, 0, 3, '2016-12-23', '', 2, 1, 'done - 100%', '2016-12-22', '7', 0, 'Normal', '0000-00-00 00:00:00'),
(60, 'Prepare User Documentation', '', 3, 0, NULL, 0, 3, '2017-01-04', '', 8, 1, 'to_do - 0%', '2016-12-22', '8', 0, 'Normal', '0000-00-00 00:00:00'),
(61, 'Administration', '', 9, 0, NULL, 0, 2, '0000-00-00', '', 0, 1, 'to_do - 0%', '0000-00-00', '8', 0, 'Normal', '0000-00-00 00:00:00'),
(62, 'Office Meetings', 'This task is to be used whenever one is having a meeting', 9, 0, NULL, 0, 0, '0000-00-00', '', 0, 1, 'in_progress - 25%', '0000-00-00', '2,3,4,5,6,7,8', 0, 'Normal', '0000-00-00 00:00:00'),
(63, 'Running Rate', 'Should display the cost of the project till date', 7, 0, NULL, 0, 2, '2017-01-03', '', 0, 1, 'done - 100%', '2016-12-22', '', 0, 'Normal', '0000-00-00 00:00:00'),
(64, 'Shortcuts to add data on the fly', '', 7, 0, NULL, 0, 2, '2017-01-03', '', 0, 1, 'done - 100%', '2016-12-22', '', 0, 'Normal', '0000-00-00 00:00:00'),
(65, 'Find Savings Per Project', '', 7, 0, NULL, 0, 2, '2017-01-03', '', 0, 1, 'done - 100%', '2016-12-22', '', 0, 'Normal', '0000-00-00 00:00:00'),
(66, 'API for integration', '', 7, 0, NULL, 0, 2, '0000-00-00', '', 0, 1, 'to_do - 0%', '2016-12-22', '', 0, 'Normal', '0000-00-00 00:00:00'),
(67, 'Mobile App', '', 7, 0, NULL, 0, 3, '2017-01-03', '', 0, 1, 'in_progress - 25%', '2016-12-21', '', 0, 'Normal', '0000-00-00 00:00:00'),
(68, 'SQL Query creation', 'Allow user to create raw queries or the graphical way', 10, 0, NULL, 0, 2, '0000-00-00', '', 0, 1, 'to_do - 0%', '0000-00-00', '4', 0, 'Normal', '0000-00-00 00:00:00'),
(69, 'Implement Multi Database', 'System can run with any source', 10, 0, NULL, 0, 2, '0000-00-00', '', 0, 1, 'to_do - 0%', '0000-00-00', '4', 0, 'Normal', '0000-00-00 00:00:00'),
(70, 'Parameterised fetching', 'Fetch rows with given parameters', 10, 0, NULL, 0, 2, '0000-00-00', '', 0, 1, 'to_do - 0%', '0000-00-00', '4', 0, 'Normal', '0000-00-00 00:00:00'),
(71, 'Grouping', '', 10, 0, NULL, 0, 2, '0000-00-00', '', 0, 1, 'to_do - 0%', '0000-00-00', '4', 0, 'Normal', '0000-00-00 00:00:00'),
(72, 'Sorting', '', 10, 0, NULL, 0, 2, '0000-00-00', '', 0, 1, 'to_do - 0%', '0000-00-00', '4', 0, 'Normal', '0000-00-00 00:00:00'),
(73, 'Filtering', '', 10, 0, NULL, 0, 2, '0000-00-00', '', 0, 1, 'to_do - 0%', '0000-00-00', '4', 0, 'Normal', '0000-00-00 00:00:00'),
(74, 'Column Rearrangement', '', 10, 0, NULL, 0, 2, '0000-00-00', '', 0, 1, 'to_do - 0%', '0000-00-00', '4', 0, 'Normal', '0000-00-00 00:00:00'),
(75, 'Aggregations', '', 10, 0, NULL, 0, 2, '0000-00-00', '', 0, 1, 'to_do - 0%', '0000-00-00', '4', 0, 'Normal', '0000-00-00 00:00:00'),
(76, 'Notifications via schedular', '', 10, 0, NULL, 0, 2, '0000-00-00', '', 0, 1, 'to_do - 0%', '0000-00-00', '4', 0, 'Normal', '0000-00-00 00:00:00'),
(77, 'Dashboards', '', 10, 0, NULL, 0, 2, '0000-00-00', '', 0, 1, 'to_do - 0%', '0000-00-00', '4', 0, 'Normal', '0000-00-00 00:00:00'),
(78, 'Homepage fixes', '1. Change the company logo\n2. Put the Social media links', 7, 0, NULL, 0, 2, '2016-12-28', '', 2, 1, 'done - 100%', '0000-00-00', '', 0, 'Normal', '0000-00-00 00:00:00'),
(79, 'Filers on Tasklist', 'Add filer on task list to filter tasks that are done so only those tasks are visible that are not done.', 7, 0, NULL, 0, 2, '2016-12-28', '', 0, 1, 'done - 100%', '0000-00-00', '', 0, 'Normal', '0000-00-00 00:00:00'),
(80, 'Data Fetching', 'The data could be fetched by following means\n1. SQL Query\n2. Stored procedure\n3. Function\n4. View\n5. Tables (With Graphical Joins)', 10, 0, NULL, 0, 2, '0000-00-00', '', 0, 3, 'to_do - 0%', '0000-00-00', '', 0, 'Normal', '0000-00-00 00:00:00'),
(81, 'Data Pivot', 'Pivot reports with filters, sorting, etc\nEach report could be saved as an instance of the pivot e.g. make a pivot and save that report then re-arrange the pivot and save the report as another name', 10, 0, NULL, 0, 2, '0000-00-00', '', 0, 3, 'to_do - 0%', '0000-00-00', '', 0, 'Normal', '0000-00-00 00:00:00'),
(82, 'User Access to Reports', 'The reports will have access control to them. Each report could be saved as a name and user(s) could be assigned to them. This report will only be visible to those user(s) only.', 10, 0, NULL, 0, 2, '0000-00-00', '', 0, 1, 'to_do - 0%', '0000-00-00', '', 0, 'Normal', '0000-00-00 00:00:00'),
(83, 'Report Designer', 'A layout designer that can be used for placing the report fields to give it a document look e.g. Invoice, Statement of account. Grouping, Sorting, Parameters to be available at runtime on the Report Document Layout.', 10, 0, NULL, 0, 2, '0000-00-00', '', 0, 5, 'to_do - 0%', '0000-00-00', '', 0, 'Normal', '0000-00-00 00:00:00'),
(84, 'Export Data', 'User should be able to export the data from report as Excel, PDF etc.', 10, 0, NULL, 0, 2, '0000-00-00', '', 0, 1, 'to_do - 0%', '0000-00-00', '', 0, 'Normal', '0000-00-00 00:00:00'),
(85, 'Planning', '', 5, 0, NULL, 0, 3, '0000-00-00', '', 0, 1, 'done - 100%', '0000-00-00', '', 0, 'Normal', '0000-00-00 00:00:00'),
(86, 'Demo Copy', 'Create an instance for Demo purposes', 1, 0, NULL, 0, 6, '2017-01-04', '', 4, 1, 'to_do - 0%', '0000-00-00', '', 0, 'Normal', '0000-00-00 00:00:00'),
(87, 'Topline Implementation', '', 11, 0, NULL, 0, 2, '0000-00-00', '', 0, 1, 'in_progress - 75%', '2017-01-02', '9', 0, 'Normal', '0000-00-00 00:00:00'),
(88, 'CloudWage Testing', 'Payroll system testing', 7, 0, NULL, 0, 8, '2017-01-09', '', 5, 1, 'in_progress - 75%', '2017-01-06', '8', 1, 'Normal', '0000-00-00 00:00:00'),
(89, 'Brochures', 'Brochure Design', 7, 0, NULL, 0, 8, '0000-00-00', '', 0, 1, 'done - 100%', '0000-00-00', '8', 0, 'Normal', '0000-00-00 00:00:00'),
(90, '2.1.1 - Add units/branches', NULL, 5, 0, NULL, 0, 3, '2017-01-11', '', 2, 1, 'done - 100%', '2017-01-10', '', 0, 'Normal', '0000-00-00 00:00:00'),
(91, '2.1.1 - create organogram', NULL, 5, 0, NULL, 0, 3, '2017-01-11', '', 4, 1, 'to_do - 0%', '2017-01-11', '', 0, 'Normal', '0000-00-00 00:00:00'),
(92, '2.1.1 - job groups, nationalities', NULL, 5, 0, NULL, 0, 3, '2017-01-11', '', 4, 1, 'done - 100%', '2017-01-11', '', 0, 'Normal', '0000-00-00 00:00:00'),
(93, '2.1.1 - HR offenses', NULL, 5, 0, NULL, 0, 3, '2017-01-12', '', 8, 1, 'done - 100%', '2017-01-11', '', 0, 'Normal', '0000-00-00 00:00:00'),
(94, '2.1.4 - Upload job description -add modal', NULL, 5, 0, NULL, 0, 3, '2017-01-12', '', 2, 1, 'done - 100%', '2017-01-12', '', 0, 'Normal', '0000-00-00 00:00:00'),
(95, '2.1.5 - Medical information', 'cover in/out patient, dental cover, optical cover, sick off-days', 5, 0, NULL, 0, 3, '2017-01-13', '', 8, 1, 'done - 100%', '2017-01-12', '', 0, 'Normal', '0000-00-00 00:00:00'),
(96, '2.1.6 - Training calender, in-house training', NULL, 5, 0, NULL, 0, 3, '2017-01-14', '', 8, 1, 'done - 100%', '2017-01-13', '', 0, 'Normal', '0000-00-00 00:00:00'),
(97, '2.1.7 - Add leave types', 'leave period, leave balances, set up holidays and half days, approval systems and hierachy. System to be adding 1.75 to each employee as leave days accumulative', 5, 0, NULL, 0, 3, '2017-01-14', '', 2, 1, 'done - 100%', '2017-01-14', '', 0, 'Normal', '0000-00-00 00:00:00'),
(98, '2.1.8 - Travel approval system and hierachy', NULL, 5, 0, NULL, 0, 3, '2017-01-15', '', 10, 1, 'to_do - 0%', '2017-01-14', '', 0, 'Normal', '0000-00-00 00:00:00'),
(99, '2.1.9 - Appraisal setup', NULL, 5, 0, NULL, 0, 3, '2017-01-17', '', 8, 1, 'to_do - 0%', '2017-01-15', '', 0, 'Normal', '0000-00-00 00:00:00'),
(100, '2.1.10 - Displinary types and actions', NULL, 5, 0, NULL, 0, 3, '2017-01-18', '', 8, 1, 'done - 100%', '2017-01-17', '', 0, 'Normal', '0000-00-00 00:00:00'),
(101, '2.1.11 - HR quotes/suggestions/employee messages', NULL, 5, 0, NULL, 0, 3, '2017-01-19', '', 8, 1, 'to_do - 0%', '2017-01-18', '', 0, 'Normal', '0000-00-00 00:00:00'),
(102, '2.1.12 - Travel mode, travel cadre, travel perdiem', NULL, 5, 0, NULL, 0, 3, '2017-01-20', '', 12, 1, 'done - 100%', '2017-01-19', '', 0, 'Normal', '0000-00-00 00:00:00'),
(103, '2.2.2 - Medical cover limits', NULL, 5, 0, NULL, 0, 3, '2017-01-20', '', 2, 1, 'to_do - 0%', '2017-01-20', '', 0, 'Normal', '0000-00-00 00:00:00'),
(104, '2.2.3 - Monthly running medical utilisations', NULL, 5, 0, NULL, 0, 3, '2017-01-22', '', 8, 1, 'to_do - 0%', '2017-01-21', '', 0, 'Normal', '0000-00-00 00:00:00'),
(105, '2.2.4 - Pending leave days', NULL, 5, 0, NULL, 0, 3, '2017-01-22', '', 4, 1, 'done - 100%', '2017-01-22', '', 0, 'Normal', '0000-00-00 00:00:00'),
(106, '2.2.5 - Sickoff days taken', NULL, 5, 0, NULL, 0, 3, '2017-01-22', '', 5, 1, 'to_do - 0%', '2017-01-22', '', 0, 'Normal', '0000-00-00 00:00:00'),
(107, '2.2.6 - Daily tips/quotes/HR suggestions', NULL, 5, 0, NULL, 0, 3, '2017-01-22', '', 1, 1, 'to_do - 0%', '2017-01-22', '', 0, 'Normal', '0000-00-00 00:00:00'),
(108, '2.2.7 - Respective personnel pending trainings', NULL, 5, 0, NULL, 0, 3, '2017-01-24', '', 6, 1, 'to_do - 0%', '2017-01-23', '', 0, 'Normal', '0000-00-00 00:00:00'),
(109, '2.2.8 - Training calendar', 'Team members absense (pre planned or emergency)', 5, 0, NULL, 0, 3, '2017-01-25', '', 8, 1, 'done - 100%', '2017-01-24', '', 0, 'Normal', '0000-00-00 00:00:00'),
(110, '2.3.6 - User proceeds to handover module section as per 5.1 below', NULL, 5, 0, NULL, 0, 3, '2017-01-26', '', 2, 1, 'to_do - 0%', '2017-01-25', '', 0, 'Normal', '0000-00-00 00:00:00'),
(111, '2.3.7 - Leave Notifications to Approvers', 'Respective user HOD or appointed approval head gets notification of leave application and handover report status', 5, 0, NULL, 0, 3, '2017-01-26', '', 3, 1, 'to_do - 0%', '2017-01-26', '', 0, 'Normal', '0000-00-00 00:00:00'),
(112, '2.3.8 - Leave Approvals', 'Respective user HOD or appointed approval head logins into the system, checks the leave application and approves or rejects with reason.', 5, 0, NULL, 0, 3, '2017-01-27', '', 2, 1, 'to_do - 0%', '2017-01-26', '', 0, 'Normal', '0000-00-00 00:00:00'),
(113, '2.3.9 - Leave Notification to users', NULL, 5, 0, NULL, 0, 3, '2017-01-27', '', 2, 1, 'to_do - 0%', '2017-01-27', '', 0, 'Normal', '0000-00-00 00:00:00'),
(114, '2.4.9 - Upon returning of the user from leave', NULL, 5, 0, NULL, 0, 3, '2017-01-27', '', 2, 1, 'to_do - 0%', '2017-01-27', '', 0, 'Normal', '0000-00-00 00:00:00'),
(115, '2.4.10 - Handover Notifications & Process', NULL, 5, 0, NULL, 0, 3, '2017-01-27', '', 2, 1, 'in_progress - 50%', '2017-01-27', '', 0, 'Normal', '0000-00-00 00:00:00'),
(116, '2.5.1 - Travels with Approvals and notifications', NULL, 5, 0, NULL, 0, 3, '2017-01-28', '', 6, 1, 'in_progress - 25%', '2017-01-27', '', 0, 'Normal', '0000-00-00 00:00:00'),
(117, '2.6.1 - Appraisals Notifications & Approvals', NULL, 5, 0, NULL, 0, 3, '2017-01-29', '', 4, 1, 'to_do - 0%', '2017-01-28', '', 0, 'Normal', '0000-00-00 00:00:00'),
(118, '2.7.1 - HR Displinary Actions with notifications & approvals', NULL, 5, 0, NULL, 0, 3, '2017-01-29', '', 8, 1, 'in_progress - 50%', '2017-01-29', '', 0, 'Normal', '0000-00-00 00:00:00'),
(119, '2.8.1 & 2.9.1 - Employee Training with Notifications & Approvals', NULL, 5, 0, NULL, 0, 3, '2017-01-30', '', 8, 1, 'to_do - 0%', '2017-01-29', '', 0, 'Normal', '0000-00-00 00:00:00'),
(120, 'Finger Print API', '', 12, 0, NULL, 0, 5, '2017-04-29', '', 0, 1, 'done - 100%', '2017-04-09', '', 0, 'Normal', '0000-00-00 00:00:00'),
(121, 'Time Management', '', 12, 0, NULL, 0, 6, '0000-00-00', '', 0, 1, 'to_do - 0%', '0000-00-00', '5', 0, 'Normal', '0000-00-00 00:00:00'),
(122, 'Reports', '', 12, 0, NULL, 0, 6, '0000-00-00', '', 0, 1, 'to_do - 0%', '0000-00-00', '5', 0, 'Normal', '0000-00-00 00:00:00'),
(123, 'Logo', 'Design TeamKazi Logo', 13, 0, NULL, 0, 8, '0000-00-00', '', 1, 1, 'done - 100%', '2017-01-10', '8', 0, 'Normal', '0000-00-00 00:00:00'),
(124, 'Brochure', 'Finalize TeamKazi Brochure', 13, 0, NULL, 0, 8, '2017-01-11', '', 3, 1, 'done - 100%', '2017-01-10', '8', 0, 'Normal', '0000-00-00 00:00:00'),
(125, 'View all tasks', 'Option to view all tasks in a projects. Currently a button needs to be clicked to view respective tasks e.g. 25% etc', 13, 0, NULL, 0, 2, '2017-01-13', '', 0, 1, 'done - 100%', '0000-00-00', '', 0, 'Normal', '0000-00-00 00:00:00'),
(126, 'Sub-Total hours', 'View subtotal of hours in tasks under projects.', 13, 0, NULL, 0, 2, '2017-01-13', '', 0, 1, 'done - 100%', '0000-00-00', '', 0, 'Normal', '0000-00-00 00:00:00'),
(127, 'Time spent per resource', 'Create a report showing time spent grouped by Projects > Resources > Main tasks', 13, 0, NULL, 0, 2, '2017-01-13', '', 5, 1, 'in_progress - 25%', '0000-00-00', '', 0, 'Normal', '0000-00-00 00:00:00'),
(128, 'Sub-Tasks', 'Option to add sub-tasks upto n-level. Each sub-tasks to have its own resource and its own time tracking. The total of sub-tasks to be reported as Top level task hours.', 13, 0, NULL, 0, 2, '2017-01-13', '', 0, 1, 'to_do - 0%', '0000-00-00', '', 0, 'Normal', '0000-00-00 00:00:00'),
(129, 'Alerts', 'Alerts to be put at following places. An alert could be assigned to any resource(s). The alert could be generated as SMS, Mobile App pop-up, Email, Badge.\n1. When a task is assigned, an alert to be sent to the resource\n2. When a task with milestone is achieved\n3. When the project is complete\n4. When task / project gets delayed\n5. When project budget overshoots', 13, 0, NULL, 0, 2, '2017-01-20', '', 0, 1, 'to_do - 0%', '0000-00-00', '', 0, 'Normal', '0000-00-00 00:00:00'),
(130, 'Project Stakeholders', 'Add project related people like Project manager, Client rep, MD etc. These resources will be alerted at various points. Also reports could be sent to these resources. These can also login and view respective information in TK. This will be controlled via ACL.', 13, 0, NULL, 0, 2, '2017-01-13', '', 0, 1, 'to_do - 0%', '0000-00-00', '', 0, 'Normal', '0000-00-00 00:00:00'),
(131, 'Project Values', 'Add the following:\n1. Estimated project cost: This will be computed when the tasks are defined and are allocated to resources. The estimated project cost = Max Hours Allowed x (Resource rate + Admin Rate)\n2. Project Cost: This will be entered by the project manager. It symbolises the project cost given to the client.\n3. Project GP%: This will be computed as ((Project Cost - Est Proj Cost) / Est Proj Cost) x 100. It will be represented as a %. At all times GP% should be > 0%. \n', 13, 0, NULL, 0, 2, '2017-01-20', '', 0, 1, 'to_do - 0%', '0000-00-00', '', 0, 'Normal', '0000-00-00 00:00:00'),
(132, 'Report tasks by Resources', 'Design a report that lists all resources > Projects handled by them > Task under each project with information', 13, 0, NULL, 0, 2, '2017-01-13', '', 0, 1, 'to_do - 0%', '0000-00-00', '', 0, 'Normal', '0000-00-00 00:00:00'),
(133, 'Standalone', 'Make POS work on standalone ', 4, 0, NULL, 0, 2, '0000-00-00', '', 0, 1, 'to_do - 0%', '0000-00-00', '', 0, 'Normal', '0000-00-00 00:00:00'),
(134, 'Create Truck Master', '1.	Trucks are added in SAGE  as sub-projects. There will be a Main Project Code that will be used to identify the sub-projects. This Main Project will be selected by the user in Settings section. After that all the Sub-projects entered under that main project will be added to the system as Trucks. Use Sub-project Code as Truck Reg No.', 14, 0, NULL, 0, 11, '2017-01-25', '', 3, 1, 'to_do - 0%', '2017-01-17', '', 0, 'Normal', '0000-00-00 00:00:00'),
(135, 'Driver & Turn-boy Master', '2.	Each truck is assigned a Driver and Turnboy. These settings do not change that frequently. Multiple details need to be stored for Driver and Turnboy e.g. Mobile number, National ID etc.', 14, 0, NULL, 0, 11, '2017-01-25', '', 3, 1, 'to_do - 0%', '2017-01-17', '', 0, 'Normal', '0000-00-00 00:00:00'),
(136, 'Route Master', '6.	The destinations will be pre-defined in the application. Following information will be stored against the destination records:\n6.1.	Distance\n6.2.	Amount\n6.3.	Fuel Required\n6.4.	Location (i.e. Within Nairobi / Outside Nairobi)\n6.5.	Flat Charge (Y/N)\n6.6.	Per KM Charge (Y/N)\n6.7.	Allowance Amount\n', 14, 0, NULL, 0, 11, '2017-01-25', '', 4, 1, 'to_do - 0%', '2017-01-17', '', 0, 'Normal', '0000-00-00 00:00:00'),
(137, 'Location Master', 'Each Location entry will be linked to:\n1. Truck\n2. Client\n3. Driver + Turn-boy', 14, 0, NULL, 0, 11, '2017-01-25', '', 4, 1, 'to_do - 0%', '2017-01-17', '', 0, 'Normal', '0000-00-00 00:00:00'),
(138, 'Daily Transactions - Checkout', 'Refer to the SRS document', 14, 0, NULL, 0, 11, '2017-01-25', '', 6, 1, 'to_do - 0%', '2017-01-17', '', 0, 'Normal', '0000-00-00 00:00:00'),
(139, 'Mobile and WebApp to run together', '', 14, 0, NULL, 0, 11, '2017-01-25', '', 45, 1, 'to_do - 0%', '2017-01-17', '3,2', 0, 'Normal', '0000-00-00 00:00:00'),
(140, 'Daily Transactions - Checkin', '', 14, 0, NULL, 0, 11, '2017-01-25', '', 6, 1, 'to_do - 0%', '2017-01-17', '', 0, 'Normal', '0000-00-00 00:00:00'),
(141, 'Admin Module', '17.	Summary sheet needs to be sent to admin by SMS, show Truck#, Driver mobile#\n18.	Any spoilt truck needs to be recorded and updated to the management. Truck that is loaded and spoilt, as well as Empty and spoilt. If a truck is loaded and gets spoilt, then it needs to be updated to the management on top priority. This truck will not be available for delivery. All spoilt trucks need to be removed out of delivery module. Once the truck is fixed, it will be added to fleet by the TM. \n19.	Any expense done on the truck for fixing will be recorded on the repairs screen with pics of the cash sales. This will be sent to TM and FM for approval. Once its approved, the MPesa may be sent if FM selects the option “Pay by MPesa” else it will be sent to SAGE as PO if the FM selects “Book Expense”.\n', 14, 0, NULL, 0, 11, '2017-01-25', '', 6, 1, 'to_do - 0%', '2017-01-17', '', 0, 'Normal', '0000-00-00 00:00:00'),
(142, 'Billing Module', '20.	There will be two types of billing\n20.1.	Flat rate: A flat amount of delivery charge shall be billed every day to the client. Each day when the truck return from delivery, a line will be added to the Invoice with following details:\n20.1.1.	Item code = whatever is selected in settings screen. The user will be presented with all inventory items from SAGE. The selected item will be entered in invoice for delivery billing. [Inventory Item]\n20.1.2.	Truck#: This is the project code.\n20.1.3.	DNote number: Pick this from Delivery note that driver brings once the delivery is complete  [UDF]\n20.1.4.	Item delivered: The item that was delivered. It will be recorded by the clerk in the morning when the trucks are leaving for delivery. This is a text entry which remembers old entries once entered. [UDF]\n20.1.5.	Load: Recorded from the weigh bridge in the morning [UDF]\n20.1.6.	Date: Date of delivery  [UDF]\n20.1.7.	Destination : This will be entered by the clerk in the morning [UDF]\n\n20.2.	Pro-rated Billing: This billing is applicable when the delivery location has the Flag indicated in point 6.2. For such deliveries a Per KM rate is defined as per Point 6 above. This will be added to invoice in the same fashion as point 20.1.\n', 14, 0, NULL, 0, 11, '2017-01-25', '', 6, 1, 'to_do - 0%', '2017-01-17', '', 0, 'Normal', '0000-00-00 00:00:00'),
(143, 'Integration (SAGE, Payroll)', '1. Trucks are linked to Sub-Projects\n2. Driver & Turn-boy are linked to Payroll\n3. Billing is linked to Invoices ', 14, 0, NULL, 0, 11, '2017-01-25', '', 6, 1, 'to_do - 0%', '2017-01-17', '', 0, 'Normal', '0000-00-00 00:00:00'),
(144, 'Create property categories', 'Create property categories', 2, 0, NULL, 0, 10, '2016-01-27', '', 2, 1, 'done - 100%', '2016-01-16', '', 0, 'Normal', '0000-00-00 00:00:00'),
(145, 'Add single property', 'Add single property', 2, 0, NULL, 0, 10, '2016-01-27', '', 2, 1, 'done - 100%', '2016-01-16', '', 0, 'Normal', '0000-00-00 00:00:00'),
(146, 'Bulk add properties', 'Bulk add properties', 2, 0, NULL, 0, 10, '2016-01-27', '', 4, 1, 'done - 100%', '2016-01-16', '', 0, 'Normal', '0000-00-00 00:00:00'),
(147, 'Edit single property', 'Edit single property', 2, 0, NULL, 0, 10, '2016-01-27', '', 2, 1, 'done - 100%', '2016-01-16', '', 0, 'Normal', '0000-00-00 00:00:00'),
(148, 'Bulk edit properties', 'Bulk edit properties', 2, 0, NULL, 0, 10, '2016-01-27', '', 4, 1, 'done - 100%', '2016-01-16', '', 0, 'Normal', '0000-00-00 00:00:00'),
(149, 'Delete single units', 'Delete single units', 2, 0, NULL, 0, 10, '2016-01-27', '', 2, 1, 'done - 100%', '2016-01-16', '', 0, 'Normal', '0000-00-00 00:00:00'),
(150, 'Set property owner', 'Set property owner', 2, 0, NULL, 0, 10, '2016-01-27', '', 2, 1, 'in_progress - 75%', '2016-01-16', '', 0, 'Normal', '0000-00-00 00:00:00'),
(151, 'Set property manager', 'Set property manager', 2, 0, NULL, 0, 10, '2016-01-27', '', 2, 1, 'in_progress - 50%', '2016-01-16', '', 0, 'Normal', '0000-00-00 00:00:00'),
(152, 'Set maintenance officer', 'Set maintenance officer', 2, 0, NULL, 0, 10, '2016-01-27', '', 2, 1, 'in_progress - 50%', '2016-01-16', '', 0, 'Normal', '0000-00-00 00:00:00'),
(153, 'Set property caretaker', 'Set property caretaker', 2, 0, NULL, 0, 10, '2016-01-27', '', 2, 1, 'in_progress - 50%', '2016-01-16', '', 0, 'Normal', '0000-00-00 00:00:00'),
(154, 'User registration', 'User registration', 2, 0, NULL, 0, 10, '2016-01-27', '', 2, 1, 'done - 100%', '2016-01-16', '', 0, 'Normal', '0000-00-00 00:00:00'),
(155, 'User status support', 'User status support', 2, 0, NULL, 0, 10, '2016-01-27', '', 4, 1, 'to_do - 0%', '2016-01-16', '', 0, 'Normal', '0000-00-00 00:00:00'),
(156, 'Tenant adds residents', 'Tenant adds residents', 2, 0, NULL, 0, 10, '2016-01-27', '', 4, 1, 'to_do - 0%', '2016-01-16', '', 0, 'Normal', '0000-00-00 00:00:00'),
(157, 'Search for available property', 'Search for available property', 2, 0, NULL, 0, 10, '2016-01-27', '', 2, 1, 'done - 100%', '2016-01-16', '', 0, 'Normal', '0000-00-00 00:00:00'),
(158, 'Lease application by prospective users', 'Lease application by prospective users', 2, 0, NULL, 0, 10, '2016-01-27', '', 5, 1, 'to_do - 0%', '2016-01-16', '', 0, 'Normal', '0000-00-00 00:00:00'),
(159, 'Admin / manager review lease', 'Admin / manager review lease', 2, 0, NULL, 0, 10, '2016-01-27', '', 4, 1, 'to_do - 0%', '2016-01-16', '', 0, 'Normal', '0000-00-00 00:00:00'),
(160, 'Lease terms', 'Lease terms', 2, 0, NULL, 0, 10, '2016-01-27', '', 4, 1, 'to_do - 0%', '2016-01-16', '', 0, 'Normal', '0000-00-00 00:00:00'),
(161, 'Property assigned to tenant', 'Property assigned to tenant', 2, 0, NULL, 0, 10, '2016-01-27', '', 2, 1, 'to_do - 0%', '2016-01-16', '', 0, 'Normal', '0000-00-00 00:00:00'),
(162, 'Request may come from the tenant, manager, resident, etc', 'Request may come from the tenant, manager, resident, etc', 2, 0, NULL, 0, 10, '2016-01-27', '', 2, 1, 'to_do - 0%', '2016-01-16', '', 0, 'Normal', '0000-00-00 00:00:00'),
(163, 'Maintenance officer create expense report', 'Maintenance officer create expense report', 2, 0, NULL, 0, 10, '2016-01-27', '', 4, 1, 'to_do - 0%', '2016-01-16', '', 0, 'Normal', '0000-00-00 00:00:00'),
(164, 'Manager reviews expense report and approves .', 'Manager reviews expense report and approves .', 2, 0, NULL, 0, 10, '2016-01-27', '', 2, 1, 'to_do - 0%', '2016-01-16', '', 0, 'Normal', '0000-00-00 00:00:00'),
(165, 'Track expenses for the repairs', 'Track expenses for the repairs', 2, 0, NULL, 0, 10, '2016-01-27', '', 4, 1, 'to_do - 0%', '2016-01-16', '', 0, 'Normal', '0000-00-00 00:00:00'),
(166, 'Payment received by manager for specific unit', 'Payment received by manager for specific unit', 2, 0, NULL, 0, 10, '2016-01-27', '', 6, 1, 'to_do - 0%', '2016-01-16', '', 0, 'Normal', '0000-00-00 00:00:00'),
(167, 'Bulk payments for multiple units.', 'Bulk payments for multiple units.', 2, 0, NULL, 0, 10, '2016-01-27', '', 6, 1, 'to_do - 0%', '2016-01-16', '', 0, 'Normal', '0000-00-00 00:00:00'),
(168, 'Advance payments for units', 'Advance payments for units', 2, 0, NULL, 0, 10, '2016-01-27', '', 6, 1, 'to_do - 0%', '2016-01-16', '', 0, 'Normal', '0000-00-00 00:00:00'),
(169, 'Track payments for single units.', 'Track payments for single units.', 2, 0, NULL, 0, 10, '2016-01-27', '', 6, 1, 'to_do - 0%', '2016-01-16', '', 0, 'Normal', '0000-00-00 00:00:00'),
(170, 'Polishing and testing', NULL, 2, 0, NULL, 0, 10, '2016-01-27', '', 9, 1, 'to_do - 0%', '2016-01-16', '', 0, 'Normal', '0000-00-00 00:00:00'),
(171, 'Compile Feature List', 'Go through the Notes and then visit the sites mentioned there. Read the features available on various product sites and compare them with the features listed in Tasks section. \nList all the features that are missing in our product(s), in the notes section.', 2, 0, NULL, 0, 8, '2017-01-20', '', 16, 1, 'to_do - 0%', '0000-00-00', '', 0, 'Normal', '0000-00-00 00:00:00'),
(172, 'Study Features in competitor products', '', 4, 0, NULL, 0, 8, '2017-01-20', '', 8, 1, 'to_do - 0%', '0000-00-00', '2', 0, 'Normal', '0000-00-00 00:00:00'),
(173, 'POS Campaign Artwork', '', 7, 0, NULL, 0, 8, '2017-01-17', '', 3, 1, 'done - 100%', '2017-01-17', '8', 1, 'Normal', '0000-00-00 00:00:00'),
(175, 'Process Invoices ', 'EYS', 7, 0, NULL, 0, 8, '0000-00-00', '', 0, 1, 'to_do - 0%', '0000-00-00', '', 1, 'Normal', '0000-00-00 00:00:00'),
(176, 'Full Application Testing', '', 14, 0, NULL, 0, 11, '2017-01-31', '', 45, 1, 'to_do - 0%', '2017-01-25', '3,2,8', 0, 'Normal', '0000-00-00 00:00:00'),
(177, 'Process Invoices ', 'EYS INVOICES', 9, 0, NULL, 0, 8, '2017-01-19', '', 10, 1, 'to_do - 0%', '2017-01-18', '8', 0, 'Normal', '0000-00-00 00:00:00'),
(178, 'Change Logo &  Images', '', 13, 0, NULL, 0, 2, '0000-00-00', '', 0, 1, 'to_do - 0%', '0000-00-00', '', 0, 'Normal', '0000-00-00 00:00:00'),
(179, 'Fix Bugs', '', 13, 0, NULL, 0, 2, '0000-00-00', '', 0, 1, 'to_do - 0%', '0000-00-00', '', 0, 'Normal', '0000-00-00 00:00:00'),
(180, 'Add expenses to total cost', '', 13, 0, NULL, 0, 2, '0000-00-00', '', 0, 1, 'to_do - 0%', '0000-00-00', '', 0, 'Normal', '0000-00-00 00:00:00'),
(181, 'Resource Time sheet Report', 'Make a report that shows how each resource has allocated their daily 9 hours. \n\n', 13, 0, NULL, 0, 2, '2017-01-20', '', 0, 1, 'done - 100%', '0000-00-00', '', 0, 'Normal', '0000-00-00 00:00:00'),
(182, 'test not complete', '', 5, 1, 2, 0, 6, '2017-04-19', 'Ticket,Bug', 0, 1, 'done - 100%', '2017-04-18', '', 0, 'High', '2017-04-18 11:20:42'),
(183, 'MS Test', '', 13, 0, NULL, 1, 7, '2017-05-18', 'Label Task', 8, 1, 'to_do - 0%', '2017-04-18', '', 0, 'Normal', '2017-04-18 11:29:29'),
(184, 'test BUG', '', 17, 2, 1, 0, 11, '0000-00-00', 'Ticket,Bug', 0, 1, 'to_do - 0%', '2017-04-18', '', 0, 'High', '2017-04-18 11:32:10'),
(185, '', '', 17, 2, 1, 0, 11, '0000-00-00', 'Ticket,Bug', 0, 1, 'to_do - 0%', '2017-04-18', '', 0, 'High', '2017-04-18 11:32:10'),
(186, 'linking test', '', 5, 3, 3, 0, 2, '0000-00-00', 'Ticket,Bug', 0, 1, 'to_do - 0%', '2017-04-18', '', 0, 'High', '2017-04-18 11:34:13'),
(187, 'Site Clearing', 'Site Clearing', 19, 0, NULL, 0, 7, '2017-09-04', '', 4, 1, 'to_do - 0%', '2017-09-03', '', 1, 'Normal', '2017-08-03 06:12:23'),
(188, 'Removal of Trees', 'Removal of Trees', 19, 0, NULL, 0, 7, '2017-09-05', '', 4, 1, 'to_do - 0%', '2017-09-04', '', 1, 'Normal', '2017-08-03 06:12:23'),
(189, 'General escavation', 'General escavation', 19, 0, NULL, 0, 7, '2017-09-06', '', 4, 1, 'to_do - 0%', '2017-09-05', '', 1, 'Normal', '2017-08-03 06:12:23'),
(190, 'Escavation of Utility trenches ', 'Escavation of Utility trenches ', 19, 0, NULL, 0, 7, '2017-09-06', '', 4, 1, 'to_do - 0%', '2017-09-06', '', 1, 'Normal', '2017-08-03 06:12:23'),
(191, 'Placing formworks ', 'Placing formworks ', 19, 0, NULL, 0, 7, '2017-09-07', '', 4, 1, 'to_do - 0%', '2017-09-07', '', 1, 'Normal', '2017-08-03 06:12:23'),
(192, 'Installing Sewer lines ', 'Installing Sewer lines ', 19, 0, NULL, 0, 7, '2017-09-08', '', 4, 1, 'to_do - 0%', '2017-09-08', '', 1, 'Normal', '2017-08-03 06:12:23'),
(193, 'installing other utilities ', 'installing other utilities ', 19, 0, NULL, 0, 7, '2017-09-09', '', 4, 1, 'to_do - 0%', '2017-09-09', '', 1, 'Normal', '2017-08-03 06:12:23'),
(194, 'Pouring concrete ', 'Pouring concrete ', 19, 0, NULL, 0, 7, '2017-09-10', '', 4, 1, 'to_do - 0%', '2017-09-10', '', 1, 'Normal', '2017-08-03 06:12:23'),
(195, 'Site Clearing', 'Site Clearing', 20, 0, NULL, 0, 7, '2017-09-04', '', 4, 1, 'to_do - 0%', '2017-09-03', '', 0, 'Normal', '2017-08-03 07:03:41'),
(196, 'Removal of Trees', 'Removal of Trees', 20, 0, NULL, 0, 7, '2017-09-05', '', 4, 1, 'to_do - 0%', '2017-09-04', '', 0, 'Normal', '2017-08-03 07:03:41'),
(197, 'General escavation', 'General escavation', 20, 0, NULL, 0, 7, '2017-09-06', '', 4, 1, 'to_do - 0%', '2017-09-05', '', 0, 'Normal', '2017-08-03 07:03:41'),
(198, 'Escavation of Utility trenches ', 'Escavation of Utility trenches ', 20, 0, NULL, 0, 7, '2017-09-06', '', 4, 1, 'to_do - 0%', '2017-09-06', '', 0, 'Normal', '2017-08-03 07:03:41'),
(199, 'Placing formworks ', 'Placing formworks ', 20, 0, NULL, 0, 7, '2017-09-07', '', 4, 1, 'to_do - 0%', '2017-09-07', '', 0, 'Normal', '2017-08-03 07:03:41'),
(200, 'Installing Sewer lines ', 'Installing Sewer lines ', 20, 0, NULL, 0, 7, '2017-09-08', '', 4, 1, 'to_do - 0%', '2017-09-08', '', 0, 'Normal', '2017-08-03 07:03:41'),
(201, 'installing other utilities ', 'installing other utilities ', 20, 0, NULL, 0, 7, '2017-09-09', '', 4, 1, 'to_do - 0%', '2017-09-09', '', 0, 'Normal', '2017-08-03 07:03:41'),
(202, 'Pouring concrete ', 'Pouring concrete ', 20, 0, NULL, 0, 7, '2017-09-10', '', 4, 1, 'to_do - 0%', '2017-09-10', '', 0, 'Normal', '2017-08-03 07:03:41');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` int(11) NOT NULL,
  `title` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `percentage` double NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `title`, `percentage`, `deleted`) VALUES
(1, 'Tax (16%)', 16, 0);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `members` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `title`, `members`, `deleted`) VALUES
(1, 'HR TEAM', '2,3,9', 0),
(2, 'PAYROLL', '2,6,8', 0);

-- --------------------------------------------------------

--
-- Table structure for table `team_member_job_info`
--

CREATE TABLE `team_member_job_info` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_of_hire` date NOT NULL DEFAULT '0000-00-00',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `salary` double NOT NULL DEFAULT '0',
  `working_hours` double NOT NULL DEFAULT '1',
  `hourly_rate` double NOT NULL DEFAULT '1',
  `salary_term` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `team_member_job_info`
--

INSERT INTO `team_member_job_info` (`id`, `user_id`, `date_of_hire`, `deleted`, `salary`, `working_hours`, `hourly_rate`, `salary_term`) VALUES
(1, 2, '2016-01-01', 0, 30000, 176, 170.454545455, 'Monthly'),
(2, 3, '2016-05-01', 0, 20000, 176, 113.636363636, 'Monthly'),
(3, 4, '2016-05-01', 0, 35000, 176, 198.863636364, 'Monthly'),
(4, 5, '2016-09-16', 0, 15000, 176, 85.2272727273, 'Monthly'),
(5, 6, '2016-09-05', 0, 15000, 176, 85.2272727273, 'Monthly'),
(6, 7, '0000-00-00', 0, 100000, 176, 568.181818182, 'Monthly'),
(7, 8, '0000-00-00', 0, 20000, 176, 113.636363636, ''),
(8, 9, '2016-03-07', 0, 20000, 176, 113.636363636, 'Monthly'),
(9, 10, '2017-01-13', 0, 15000, 176, 85.2272727273, 'Monthly'),
(10, 11, '2017-01-16', 0, 15000, 176, 85.2272727273, 'Monthly'),
(11, 12, '0000-00-00', 0, 0, 176, 0, ''),
(12, 13, '2017-08-03', 0, 200000, 176, 1136.36363636, 'permanent');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `external_reference` text COLLATE utf8_unicode_ci NOT NULL,
  `ticket_type_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `status` enum('new','client_replied','open','closed') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'new',
  `last_activity_at` datetime DEFAULT NULL,
  `assigned_to` int(11) NOT NULL DEFAULT '0',
  `labels` text COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `project_id`, `external_reference`, `ticket_type_id`, `title`, `created_by`, `created_at`, `status`, `last_activity_at`, `assigned_to`, `labels`, `deleted`) VALUES
(1, 17, '', 1, 'testing', 7, '2017-04-18 10:20:32', 'new', '2017-04-18 10:20:32', 11, '', 0),
(2, 5, '', 1, 'Testing Tuesday', 7, '2017-04-18 11:10:41', 'open', '2017-04-18 11:20:20', 6, '', 0),
(3, 5, '', 1, 'BUG Fix', 6, '2017-04-18 11:24:17', 'new', '2017-04-18 11:24:17', 6, '', 0),
(4, 20, '', 1, 'Ticket 1', 7, '2017-08-03 07:31:20', 'open', '2017-08-03 07:51:45', 13, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_comments`
--

CREATE TABLE `ticket_comments` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `files` longtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ticket_comments`
--

INSERT INTO `ticket_comments` (`id`, `created_by`, `created_at`, `description`, `ticket_id`, `files`, `deleted`) VALUES
(1, 7, '2017-04-18 10:20:32', 'testing tuesday', 1, 'a:0:{}', 0),
(2, 7, '2017-04-18 11:10:41', 'Test Support', 2, 'a:0:{}', 0),
(3, 6, '2017-04-18 11:20:20', 'test', 2, 'a:0:{}', 0),
(4, 6, '2017-04-18 11:24:17', 'Test Bug Fix', 3, 'a:0:{}', 0),
(5, 7, '2017-08-03 07:31:20', 'Ticket 1', 4, 'a:0:{}', 0),
(6, 13, '2017-08-03 07:50:35', 'almost 25% ', 4, 'a:0:{}', 0),
(7, 13, '2017-08-03 07:51:45', '25% to be done tomorrow', 4, 'a:0:{}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_types`
--

CREATE TABLE `ticket_types` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ticket_types`
--

INSERT INTO `ticket_types` (`id`, `title`, `deleted`) VALUES
(1, 'General Support', 0),
(2, 'concrete preparation', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` enum('staff','client') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'client',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `role_id` int(11) NOT NULL DEFAULT '0',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `message_checked_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `client_id` int(11) NOT NULL DEFAULT '0',
  `notification_checked_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_primary_contact` tinyint(1) NOT NULL DEFAULT '0',
  `job_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Untitled',
  `disable_login` tinyint(1) NOT NULL DEFAULT '0',
  `note` mediumtext COLLATE utf8_unicode_ci,
  `address` text COLLATE utf8_unicode_ci,
  `alternative_address` text COLLATE utf8_unicode_ci,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alternative_phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT '0000-00-00',
  `ssn` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` enum('male','female') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'male',
  `sticky_note` mediumtext COLLATE utf8_unicode_ci,
  `skype` text COLLATE utf8_unicode_ci,
  `enable_web_notification` tinyint(1) NOT NULL DEFAULT '1',
  `enable_email_notification` tinyint(1) NOT NULL DEFAULT '1',
  `landing_page` varchar(255) COLLATE utf8_unicode_ci DEFAULT '/dashboard',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `user_type`, `is_admin`, `role_id`, `email`, `password`, `image`, `status`, `message_checked_at`, `client_id`, `notification_checked_at`, `is_primary_contact`, `job_title`, `disable_login`, `note`, `address`, `alternative_address`, `phone`, `alternative_phone`, `dob`, `ssn`, `gender`, `sticky_note`, `skype`, `enable_web_notification`, `enable_email_notification`, `landing_page`, `created_at`, `deleted`) VALUES
(1, 'System1', 'Administrator', 'staff', 1, 0, 'test@teamkazi.com', '728b2ae150b95977a53b7c4a46dc8b99', NULL, 'active', '0000-00-00 00:00:00', 0, '2017-01-17 14:59:07', 0, 'Admin', 0, NULL, '', '', '', '', '0000-00-00', '', 'male', NULL, '', 1, 1, '/dashboard', '2016-12-17 06:05:48', 0),
(2, 'Team Member', '2', 'staff', 1, 0, 'team2@teamkazi.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'active', '2017-04-18 09:48:23', 0, '2017-04-18 12:49:24', 0, 'Lead Developer', 0, NULL, '', '', '', '', '0000-00-00', '', 'male', NULL, '', 1, 1, '/dashboard', '2016-12-03 09:54:52', 0),
(3, 'Team Member', '5', 'staff', 0, 0, 'team5@teamkazi.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'active', '2017-01-01 10:30:00', 0, '2017-01-19 09:09:41', 0, 'Developer', 0, NULL, '', '', '', '', '0000-00-00', '', 'male', NULL, '', 1, 1, '/dashboard', '2016-12-07 09:45:10', 0),
(4, 'Samson ', 'Mbuthia', 'staff', 0, 0, 's.mbuthia@wizag.biz', 'aafe06e46da6f8158e7a90926b1b7a84', NULL, 'inactive', '0000-00-00 00:00:00', 0, '2016-12-28 09:11:35', 0, 'Developer', 1, NULL, '', NULL, '', NULL, '0000-00-00', NULL, 'male', NULL, NULL, 1, 1, '/dashboard', '2016-12-07 09:46:17', 0),
(5, 'Team Member', '8', 'staff', 0, 0, 'team8@teamkazi.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'active', '0000-00-00 00:00:00', 0, '2017-04-18 08:14:04', 0, 'Developer', 0, NULL, '', '', '', '', '0000-00-00', '', 'male', NULL, '', 1, 1, '/dashboard', '2016-12-07 09:48:20', 0),
(6, 'Team Member', '1', 'staff', 1, 0, 'team1@teamkazi.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'active', '2017-04-25 20:28:33', 0, '2017-04-22 04:02:47', 0, 'Developer', 0, NULL, '', '', '', '', '0000-00-00', '', 'female', 'test\ntest', '', 1, 1, '/dashboard', '2016-12-07 09:49:40', 0),
(7, 'Mr', 'Director', 'staff', 1, 0, 'director@teamkazi.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'active', '2017-04-19 08:57:09', 0, '2017-04-19 09:07:17', 0, 'Director', 0, NULL, '', '', '', '', '0000-00-00', '', 'male', '', '', 1, 1, '/dashboard', '2016-12-07 09:50:06', 0),
(8, 'Team Member', '4', 'staff', 0, 0, 'team4@teamkazi.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'active', '0000-00-00 00:00:00', 0, '2017-01-19 08:49:36', 0, 'Administration & Support', 0, NULL, '', '', '', '', '0000-00-00', '', 'male', NULL, '', 1, 1, '/dashboard', '2016-12-07 09:50:33', 0),
(9, 'Team Member', '6', 'staff', 0, 0, 'team6@teamkazi.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'active', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 'Consultant', 0, NULL, '', '', '', '', '0000-00-00', '', 'male', NULL, '', 1, 1, '/dashboard', '2016-12-17 10:42:40', 0),
(10, 'Team Member', '7', 'staff', 0, 0, 'team7@teamkazi.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'active', '2017-01-14 07:32:02', 0, '2017-01-19 13:08:13', 0, 'Web Developer', 0, NULL, '', '', '', '', '0000-00-00', '', 'male', NULL, '', 1, 1, '/dashboard', '2017-01-14 06:55:10', 0),
(11, 'Team Member', '3', 'staff', 0, 0, 'team3@teamkazi.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'active', '0000-00-00 00:00:00', 0, '2017-04-18 08:45:05', 0, 'Developer', 0, NULL, '', '', '', '', '0000-00-00', '', 'male', '', '', 1, 1, '/dashboard', '2017-01-17 15:06:25', 0),
(12, 'RCP', 'RCP', 'staff', 0, 1, 'team10@test.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'active', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 'BA', 0, NULL, '', NULL, '', NULL, '0000-00-00', NULL, 'male', NULL, NULL, 1, 1, '/dashboard', '2017-04-18 11:03:25', 0),
(13, 'George', 'George', 'staff', 0, 5, 'sammymwecher@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'active', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 'Site manager', 0, NULL, 's.nalwa@tikone.biz', NULL, '0719242846', NULL, '0000-00-00', NULL, 'male', NULL, NULL, 1, 1, '/dashboard', '2017-08-03 06:55:53', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `checked_by` (`checked_by`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estimates`
--
ALTER TABLE `estimates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estimate_forms`
--
ALTER TABLE `estimate_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estimate_items`
--
ALTER TABLE `estimate_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estimate_requests`
--
ALTER TABLE `estimate_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_payments`
--
ALTER TABLE `invoice_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `leave_applications`
--
ALTER TABLE `leave_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_type_id` (`leave_type_id`),
  ADD KEY `user_id` (`applicant_id`),
  ADD KEY `checked_by` (`checked_by`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_tasks`
--
ALTER TABLE `main_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `PROJECTS_FK` (`project_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message_from` (`from_user_id`),
  ADD KEY `message_to` (`to_user_id`);

--
-- Indexes for table `milestones`
--
ALTER TABLE `milestones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `notification_settings`
--
ALTER TABLE `notification_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event` (`event`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paypal_ipn`
--
ALTER TABLE `paypal_ipn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_comments`
--
ALTER TABLE `project_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_files`
--
ALTER TABLE `project_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_members`
--
ALTER TABLE `project_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_time`
--
ALTER TABLE `project_time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD UNIQUE KEY `setting_name` (`setting_name`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_member_job_info`
--
ALTER TABLE `team_member_job_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_comments`
--
ALTER TABLE `ticket_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_types`
--
ALTER TABLE `ticket_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_type` (`user_type`),
  ADD KEY `email` (`email`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `deleted` (`deleted`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=309;
--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `estimates`
--
ALTER TABLE `estimates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `estimate_forms`
--
ALTER TABLE `estimate_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `estimate_items`
--
ALTER TABLE `estimate_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `estimate_requests`
--
ALTER TABLE `estimate_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `invoice_payments`
--
ALTER TABLE `invoice_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `leave_applications`
--
ALTER TABLE `leave_applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `main_tasks`
--
ALTER TABLE `main_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `milestones`
--
ALTER TABLE `milestones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=312;
--
-- AUTO_INCREMENT for table `notification_settings`
--
ALTER TABLE `notification_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `paypal_ipn`
--
ALTER TABLE `paypal_ipn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `project_comments`
--
ALTER TABLE `project_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `project_files`
--
ALTER TABLE `project_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `project_members`
--
ALTER TABLE `project_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `project_time`
--
ALTER TABLE `project_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;
--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `team_member_job_info`
--
ALTER TABLE `team_member_job_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ticket_comments`
--
ALTER TABLE `ticket_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `ticket_types`
--
ALTER TABLE `ticket_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `main_tasks`
--
ALTER TABLE `main_tasks`
  ADD CONSTRAINT `PROJECTS_FK` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
