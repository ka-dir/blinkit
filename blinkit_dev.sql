-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 16, 2023 at 11:39 PM
-- Server version: 8.0.32-0ubuntu0.22.04.2
-- PHP Version: 8.1.2-1ubuntu2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blinkit_dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(25, 'Can add room', 7, 'add_room'),
(26, 'Can change room', 7, 'change_room'),
(27, 'Can delete room', 7, 'delete_room'),
(28, 'Can view room', 7, 'view_room'),
(29, 'Can add topic', 8, 'add_topic'),
(30, 'Can change topic', 8, 'change_topic'),
(31, 'Can delete topic', 8, 'delete_topic'),
(32, 'Can view topic', 8, 'view_topic'),
(33, 'Can add message', 9, 'add_message'),
(34, 'Can change message', 9, 'change_message'),
(35, 'Can delete message', 9, 'delete_message'),
(36, 'Can view message', 9, 'view_message');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$2i2FZBH5QMMkC2Db6R3AkC$Euo48ECibVp3v9PcdBPhXjRYe9qBI9XPeNALsKgkYcw=', '2023-03-16 19:14:20.310662', 1, 'kadieyr', '', '', 'kadieyr@gmail.com', 1, 1, '2023-03-14 15:53:27.556172'),
(2, 'pbkdf2_sha256$390000$JGuNdkyBcIeiK5OsykPpFq$tcZvJtiCkZ3toX3qvcUbLQAaMemlDVpB14Etrp2qt2w=', NULL, 0, 'jamila', 'Jamila', 'Mohamed', 'jamilamohamed@gmail.com', 0, 1, '2023-03-14 18:56:06.000000'),
(3, 'pbkdf2_sha256$390000$7NahJwLMjFCzRegG9lJtC9$EKA5mcunf4t6nUuRkbK7ofrexjuwwg7kOuKpPBNbvAc=', '2023-03-16 06:34:48.004874', 0, 'smith', '', '', '', 0, 1, '2023-03-15 17:02:51.484221'),
(4, 'pbkdf2_sha256$390000$EUHwmFONPx755dF2qcFUHg$6nBRUL1v17hjPkAShqh8wMz77RU/Td4ErxEwZZKrpLI=', '2023-03-15 17:04:20.419494', 0, 'alex', '', '', '', 0, 1, '2023-03-15 17:04:19.969744'),
(5, 'pbkdf2_sha256$390000$WGIZLiFFCor6OtOalJHMO5$QVqYErvlATLlpjqc+XxDv62o7J6pMDoYaSMZ8Rqbwo4=', '2023-03-16 19:31:35.016899', 0, 'noor', '', '', '', 0, 1, '2023-03-16 19:31:34.593654');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `base_message`
--

CREATE TABLE `base_message` (
  `id` bigint NOT NULL,
  `body` longtext NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `room_id` bigint NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `base_message`
--

INSERT INTO `base_message` (`id`, `body`, `updated_at`, `created_at`, `room_id`, `user_id`) VALUES
(2, '‘John Wick: Chapter 4’ Review: Latest Entry in Keanu Reeves Franchise Is Pure, Over-the-Top Action Spectacle', '2023-03-14 18:54:18.298511', '2023-03-14 18:54:18.298659', 2, 1),
(4, 'reduce full prices', '2023-03-15 18:26:22.859652', '2023-03-15 18:26:22.859719', 8, 1),
(7, 'nice movie', '2023-03-16 06:32:56.612175', '2023-03-16 06:32:56.612240', 2, 3),
(8, 'How about kenya? funny right? hahahahah', '2023-03-16 06:43:07.907837', '2023-03-16 06:43:07.907872', 3, 3),
(9, 'new season is coming soon', '2023-03-16 17:50:11.702869', '2023-03-16 17:50:11.702911', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `base_room`
--

CREATE TABLE `base_room` (
  `id` bigint NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` longtext,
  `updated_at` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `host_id` int DEFAULT NULL,
  `topic_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `base_room`
--

INSERT INTO `base_room` (`id`, `name`, `description`, `updated_at`, `created_at`, `host_id`, `topic_id`) VALUES
(2, 'John Wick: Chapter 4: \'Soars above most action films\'', 'The plot picks up where the last film left off. The High Table, the organisation that controls crime around the world, has a multi-million-dollar contract out on Wick, who killed a High Table member. In more familiar Mafia terms, it\'s as if he murdered a made man. And he violated another rule by doing it on the grounds of a Continental hotel, the supposed safe spaces for assassins around the world. Like Michael Corleone in The Godfather Part III, Wick keeps getting pulled back in. Now, to try to free himself once more, he must grapple with a new villain, the Marquis de Gramont (Bill Skarsgård), who in his first scene commits a murder so arbitrary and upsetting that he instantly becomes one of the franchise\'s most despicable figures.', '2023-03-14 18:51:19.508991', '2023-03-14 18:08:10.322856', 1, 4),
(3, 'Morocco to bid to host World Cup', 'Morocco hopes to become the second African nation to host world football\'s premier tournament, announcing its intention on Tuesday to bid for the 2030 World Cup. It will be the sixth time the country has aimed to host the competition.\r\n\r\nThis time though it will mount a joint bid with Spain and Portugal, according to the BBC\'s Piers Edwards at the Fifa Congress in Rwanda, where the announcement was made.', '2023-03-14 18:50:26.790556', '2023-03-14 18:09:59.954420', 1, 2),
(7, 'Prison break (updated)', '', '2023-03-14 20:39:04.750082', '2023-03-14 20:06:18.453219', 2, 5),
(8, 'Kenya Economy', 'Kenya is economy is collapsing', '2023-03-15 18:48:13.402429', '2023-03-15 05:03:22.377818', 2, 6),
(9, '(Updated) America’s government steps in to protect depositors at Silicon Valley Bank', 'When one bank collapses, the panicked question is often “who’s next?” Other financial institutions can end up exposed because of connections to the collapsed institution, because they employ similar business models or simply because investor sentiment sours. Depositors face losses if their funds are too large to be covered by deposit-insurance schemes.\r\n\r\nThese were precisely the concerns provoked by the demise of Silicon Valley Bank (svb), America’s 16th-biggest lender, after a failed attempt to raise capital and a run on its deposits on March 10th. Over the weekend rumours spread across social media about potential problems at a handful of other regional lenders. It was easy to imagine nervous corporate treasurers deciding to shift their deposits to the biggest banks, just in case. But on March 12th a joint response by America’s Treasury, the Federal Reserve and the Federal Deposit Insurance Corporation (fdic) helped take concerns about depositors off the table, while revealing another banking casualty.', '2023-03-15 10:27:41.128720', '2023-03-15 05:23:17.489791', 1, 6),
(10, 'champions league', 'The Blues are bidding to lift the famous European trophy for a third time this season as Graham Potter looks for his first major honour since taking over as head coach six months ago. Chelsea got past Borussia Dortmund last week as they won the second-leg 2-0 to qualify to the last eight, with a 2-1 win on aggregate.', '2023-03-16 14:25:18.236644', '2023-03-16 08:44:19.953294', 3, 2),
(11, 'Video shows moment Russian fighter jet hits US drone over Black Sea', 'The US military has released footage of a Russian jet crashing into one of its drones over the Black Sea.\r\n\r\nThe US said the damage to the large drone meant it had to be brought down into the water near Crimea on Tuesday.\r\n\r\nRussia denied its Su-27 fighter jet clipped the propeller of the drone, but the video appears to back up the American version of events.\r\n\r\nIt was in the Pentagon\'s interest to release this video - not least to verify its version of events.\r\n\r\nThe BBC has not seen the events before or after the collision. The US initially said the confrontation lasted around 30-40 minutes, but the released footage lasts for less than a minute.\r\n\r\nOn Wednesday night, US Defence Secretary Lloyd Austin said: \"We remain confident in the facts we\'ve conveyed so far.\"\r\n\r\nHe said then the Pentagon was looking at what video could be released. It is not unusual for militaries to take some time to declassify video footage before making it public.\r\n\r\nMr Austin previously described Russia\'s actions as dangerous and reckless - and the edited video released appears to back that up.', '2023-03-16 15:24:04.202092', '2023-03-16 15:24:04.202286', 1, 3),
(12, 'Poland to send four fighter jets to Ukraine \'in coming days\'', '', '2023-03-16 16:11:26.903127', '2023-03-16 16:11:26.903362', 1, 7),
(13, 'Libya uranium: Missing barrels recovered, say eastern forces', 'Since Libya\'s former leader Colonel Muammar Gaddafi was deposed in 2011, the country has been divided into competing political and military factions.\r\n\r\nIt is now split between an interim, internationally recognised government in the capital, Tripoli, and another one in the east, led by Gen Khalifa Haftar.\r\n\r\nNeither is in control of the south, where the uranium was taken from.\r\n\r\nThe statement on Thursday came from the self-styled Libyan National Army, the military force that backs the eastern Libyan administration.\r\n\r\nGen Khaled al-Mahjoub, commander of its communications division, said the containers of uranium had been found \"barely five kilometres [three miles]\" from where they had been stored in southern Libya.\r\n\r\nThe IAEA says the site has been difficult to reach in recent times.\r\n\r\nInspectors had wanted to visit the location last year, but the trip had to be postponed because of fighting between rival Libyan militias.\r\n\r\nMany foreign governments and groups have been vying for influence in Libya since Nato-backed forces overthrew Col Gaddafi. They include Russia\'s Wagner Group and Islamic State militants.', '2023-03-16 16:26:12.720155', '2023-03-16 16:26:12.720318', 1, 8),
(14, 'South Korea and Japan: A milestone meeting of frenemies', 'South Korea and Japan\'s leaders have held talks in Tokyo in what has been hailed as a milestone in their fraught relationship. It comes just as North Korea fired a fourth round of missiles in a week - a reminder of why security is being prioritised over past disputes.South Korean President Yoon Suk Yeol pulled off quite the coup to get this summit.\r\n\r\nThis is the first time a South Korean leader has been invited to Tokyo for such a meeting in 12 years.\r\n\r\nThe relationship between these neighbours has been plagued for decades by their difficult history. South Korea was colonised by Japan from 1910 until the end of World War Two. Japanese soldiers forced hundreds of thousands of Koreans to work in its mines and factories. Women were pushed into sexual slavery.\r\n\r\nThe leaders agreed to resume regular visits, and resolved a long-running trade dispute. Japan agreed to lift restrictions on exports of semi-conductor materials, while South Korea withdrew its complaint to the World Trade Organization (WTO).\r\n\r\n', '2023-03-16 16:38:45.799514', '2023-03-16 16:38:11.995936', 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `base_room_participants`
--

CREATE TABLE `base_room_participants` (
  `id` bigint NOT NULL,
  `room_id` bigint NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `base_room_participants`
--

INSERT INTO `base_room_participants` (`id`, `room_id`, `user_id`) VALUES
(5, 2, 3),
(6, 3, 3),
(7, 7, 1),
(3, 8, 1),
(1, 8, 2),
(2, 8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `base_topic`
--

CREATE TABLE `base_topic` (
  `id` bigint NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `base_topic`
--

INSERT INTO `base_topic` (`id`, `name`) VALUES
(1, 'Politics'),
(2, 'Sports'),
(3, 'News'),
(4, 'Entertainments'),
(5, 'Gossips'),
(6, 'Economics'),
(7, 'World'),
(8, 'Africa'),
(9, 'Asiaa'),
(10, 'Asia');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-03-14 18:08:10.282083', '1', 'John Wick: Chapter 4: \'Soars above most action films\'', 1, '[{\"added\": {}}]', 7, 1),
(2, '2023-03-14 18:08:10.324303', '2', 'John Wick: Chapter 4: \'Soars above most action films\'', 1, '[{\"added\": {}}]', 7, 1),
(3, '2023-03-14 18:08:26.782118', '1', 'John Wick: Chapter 4: \'Soars above most action films\'', 3, '', 7, 1),
(4, '2023-03-14 18:09:59.960023', '3', 'Morocco to bid to host World Cup', 1, '[{\"added\": {}}]', 7, 1),
(5, '2023-03-14 18:47:53.471574', '1', 'Politics', 1, '[{\"added\": {}}]', 8, 1),
(6, '2023-03-14 18:48:03.195176', '2', 'Sports', 1, '[{\"added\": {}}]', 8, 1),
(7, '2023-03-14 18:48:30.559676', '3', 'News', 1, '[{\"added\": {}}]', 8, 1),
(8, '2023-03-14 18:50:14.666905', '4', 'Champions League', 1, '[{\"added\": {}}]', 7, 1),
(9, '2023-03-14 18:50:26.795233', '3', 'Morocco to bid to host World Cup', 2, '[{\"changed\": {\"fields\": [\"Host\", \"Topic\"]}}]', 7, 1),
(10, '2023-03-14 18:51:04.245254', '4', 'Entertainments', 1, '[{\"added\": {}}]', 8, 1),
(11, '2023-03-14 18:51:19.516115', '2', 'John Wick: Chapter 4: \'Soars above most action films\'', 2, '[{\"changed\": {\"fields\": [\"Host\", \"Topic\"]}}]', 7, 1),
(12, '2023-03-14 18:52:25.924361', '1', 'Manchester City make just one change to the side t', 1, '[{\"added\": {}}]', 9, 1),
(13, '2023-03-14 18:54:18.303142', '2', '‘John Wick: Chapter 4’ Review: Latest Entry in Kea', 1, '[{\"added\": {}}]', 9, 1),
(14, '2023-03-14 18:56:06.651432', '2', 'jamila', 1, '[{\"added\": {}}]', 4, 1),
(15, '2023-03-14 18:56:37.880063', '2', 'jamila', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]', 4, 1),
(16, '2023-03-14 19:56:48.428228', '5', 'Gossips', 1, '[{\"added\": {}}]', 8, 1),
(17, '2023-03-15 05:02:22.697489', '6', 'Economics', 1, '[{\"added\": {}}]', 8, 1),
(18, '2023-03-15 05:03:22.380996', '8', 'Kenya Economy', 1, '[{\"added\": {}}]', 7, 1),
(19, '2023-03-15 05:23:17.494116', '9', 'America’s government steps in to protect depositors at Silicon Valley Bank', 1, '[{\"added\": {}}]', 7, 1),
(20, '2023-03-15 17:45:18.390185', '3', 'We need to change this government', 1, '[{\"added\": {}}]', 9, 1),
(21, '2023-03-15 18:48:13.410972', '8', 'Kenya Economy', 2, '[{\"changed\": {\"fields\": [\"Participants\"]}}]', 7, 1),
(22, '2023-03-16 14:25:18.243784', '10', 'champions league', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Description\"]}}]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(9, 'base', 'message'),
(7, 'base', 'room'),
(8, 'base', 'topic'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-03-14 15:51:43.307666'),
(2, 'auth', '0001_initial', '2023-03-14 15:51:51.431381'),
(3, 'admin', '0001_initial', '2023-03-14 15:51:52.936828'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-03-14 15:51:52.991832'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-03-14 15:51:53.029090'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-03-14 15:51:53.815969'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-03-14 15:51:54.466532'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-03-14 15:51:54.919237'),
(9, 'auth', '0004_alter_user_username_opts', '2023-03-14 15:51:54.944530'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-03-14 15:51:56.428590'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-03-14 15:51:56.460211'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-03-14 15:51:56.512425'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-03-14 15:51:57.456012'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-03-14 15:51:58.240001'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-03-14 15:51:58.404559'),
(16, 'auth', '0011_update_proxy_permissions', '2023-03-14 15:51:58.471264'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-03-14 15:51:59.145089'),
(18, 'sessions', '0001_initial', '2023-03-14 15:51:59.931775'),
(19, 'base', '0001_initial', '2023-03-14 17:58:51.160684'),
(20, 'base', '0002_topic_room_host_message_room_topic', '2023-03-14 18:46:33.211225'),
(21, 'base', '0003_rename_name_room_room', '2023-03-14 19:46:44.275080'),
(22, 'base', '0004_alter_room_options', '2023-03-14 20:04:56.036250'),
(23, 'base', '0005_rename_room_room_name', '2023-03-14 20:04:56.378318'),
(24, 'base', '0006_rename_name_room_trending', '2023-03-14 20:08:14.357885'),
(25, 'base', '0007_rename_trending_room_name', '2023-03-14 20:09:32.864173'),
(26, 'base', '0008_room_participants', '2023-03-15 18:46:01.095652');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('eisu1u482k83f2bu5q4hxt95dx8ignzj', '.eJxVjEEOwiAQRe_C2pAOFIou3fcMZIZhpGpoUtqV8e7apAvd_vfef6mI21ri1vISJ1YXBer0uxGmR6474DvW26zTXNdlIr0r-qBNjzPn5_Vw_w4KtvKtB8EzMATsPAQ23pL0IUEgGPpg0QK5JMICiOQNZyeZ2HnhDg1ZYfX-APBLORI:1pcsa8:r7uOGF0DrpJ21s-H3ajYZSmHNzj79vqjV3rLUMFFlOM', '2023-03-30 18:44:08.259461'),
('l287fj3isja0fukaamjrmu3mjpzqpcea', '.eJxVjDsOwjAQRO_iGllx_ElMSZ8zWLveNQ4gW4qTCnF3EikFNFPMezNvEWBbc9gaL2EmcRVWXH47hPjkcgB6QLlXGWtZlxnlociTNjlV4tftdP8OMrS8r5Mn7xIgImtD5NGpzmCEqKMnYoO6S6i9AdqjH8lirwZQTg00JpOs-HwBJJE49Q:1pctK3:HC4krNr0JK2Co0jS7CC3naW3iomDrRZG56CvFu1B-Yg', '2023-03-30 19:31:35.062814'),
('qk1ibmaa64ac843as7wubqybem700aka', '.eJxVjDEOwjAMRe-SGUUhaWOVkZ0zRHZskwJKpaadKu4OlTrA-t97fzMJ16WktcmcRjYXE8zpdyPMT6k74AfW-2TzVJd5JLsr9qDN3iaW1_Vw_w4KtvKtz0ghALCqZ3XogSkOMSILs0JUdQAxI0oXSVzHfoDMTvsMAci53rw_Fsw49Q:1pchAD:VyFg0o8f_PhWoEOxwF_0VMYHmSE4KLJyWWbqE4xeyzY', '2023-03-30 06:32:37.546917'),
('qu2y04kkibjtbstosytsb398k2w3lxad', '.eJxVjEEOwiAQRe_C2pAOFIou3fcMZIZhpGpoUtqV8e7apAvd_vfef6mI21ri1vISJ1YXBer0uxGmR6474DvW26zTXNdlIr0r-qBNjzPn5_Vw_w4KtvKtB8EzMATsPAQ23pL0IUEgGPpg0QK5JMICiOQNZyeZ2HnhDg1ZYfX-APBLORI:1pcsaq:MAYHmoC65rxkRzz_77TezZsSi0ZMgPGKPN1coOZs3lU', '2023-03-30 18:44:52.925990'),
('usy9m5fcfh4ig0mw7a03xg2xadeztspt', 'e30:1pcUWZ:6LSCDEcX5Dsj7Vu8G-_VbgBpu0HJmGyhzr77rmjegrE', '2023-03-29 17:02:51.844129'),
('vlgb84s1gf8nei3l0c3rlmelatznj6kn', '.eJxVjEEOwiAQRe_C2pAOFIou3fcMZIZhpGpoUtqV8e7apAvd_vfef6mI21ri1vISJ1YXBer0uxGmR6474DvW26zTXNdlIr0r-qBNjzPn5_Vw_w4KtvKtB8EzMATsPAQ23pL0IUEgGPpg0QK5JMICiOQNZyeZ2HnhDg1ZYfX-APBLORI:1pcLP7:WBItjE_FpHDLrnnmNcz1pmOxKE9bNtAbiLqKS04hfLo', '2023-03-29 07:18:33.529269'),
('xlhk5t6cvxt7j9hr2pb72ujfyndmhho7', '.eJxVjEEOwiAQRe_C2pAOFIou3fcMZIZhpGpoUtqV8e7apAvd_vfef6mI21ri1vISJ1YXBer0uxGmR6474DvW26zTXNdlIr0r-qBNjzPn5_Vw_w4KtvKtB8EzMATsPAQ23pL0IUEgGPpg0QK5JMICiOQNZyeZ2HnhDg1ZYfX-APBLORI:1pcLJV:meVL-_rYDG0mqswHTDORnwBix8BadmFP1wwuD611jTo', '2023-03-29 07:12:45.911057');

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
-- Indexes for table `base_message`
--
ALTER TABLE `base_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_message_room_id_6b04a640_fk_base_room_id` (`room_id`),
  ADD KEY `base_message_user_id_46a57e37_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `base_room`
--
ALTER TABLE `base_room`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_room_host_id_6c009082_fk_auth_user_id` (`host_id`),
  ADD KEY `base_room_topic_id_42a6b2b8_fk_base_topic_id` (`topic_id`);

--
-- Indexes for table `base_room_participants`
--
ALTER TABLE `base_room_participants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `base_room_participants_room_id_user_id_2e298648_uniq` (`room_id`,`user_id`),
  ADD KEY `base_room_participants_user_id_2a86ea9a_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `base_topic`
--
ALTER TABLE `base_topic`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_message`
--
ALTER TABLE `base_message`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `base_room`
--
ALTER TABLE `base_room`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `base_room_participants`
--
ALTER TABLE `base_room_participants`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `base_topic`
--
ALTER TABLE `base_topic`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
-- Constraints for table `base_message`
--
ALTER TABLE `base_message`
  ADD CONSTRAINT `base_message_room_id_6b04a640_fk_base_room_id` FOREIGN KEY (`room_id`) REFERENCES `base_room` (`id`),
  ADD CONSTRAINT `base_message_user_id_46a57e37_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `base_room`
--
ALTER TABLE `base_room`
  ADD CONSTRAINT `base_room_host_id_6c009082_fk_auth_user_id` FOREIGN KEY (`host_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `base_room_topic_id_42a6b2b8_fk_base_topic_id` FOREIGN KEY (`topic_id`) REFERENCES `base_topic` (`id`);

--
-- Constraints for table `base_room_participants`
--
ALTER TABLE `base_room_participants`
  ADD CONSTRAINT `base_room_participants_room_id_8701ee11_fk_base_room_id` FOREIGN KEY (`room_id`) REFERENCES `base_room` (`id`),
  ADD CONSTRAINT `base_room_participants_user_id_2a86ea9a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

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
