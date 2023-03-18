-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 18, 2023 at 03:20 AM
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
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add topic', 7, 'add_topic'),
(26, 'Can change topic', 7, 'change_topic'),
(27, 'Can delete topic', 7, 'delete_topic'),
(28, 'Can view topic', 7, 'view_topic'),
(29, 'Can add room', 8, 'add_room'),
(30, 'Can change room', 8, 'change_room'),
(31, 'Can delete room', 8, 'delete_room'),
(32, 'Can view room', 8, 'view_room'),
(33, 'Can add message', 9, 'add_message'),
(34, 'Can change message', 9, 'change_message'),
(35, 'Can delete message', 9, 'delete_message'),
(36, 'Can view message', 9, 'view_message');

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
  `user_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `base_message`
--

INSERT INTO `base_message` (`id`, `body`, `updated_at`, `created_at`, `room_id`, `user_id`) VALUES
(1, 'The Russian government doesn’t deny taking Ukrainian children and has made their adoption by Russian families a centerpiece of propaganda.', '2023-03-17 22:51:33.084645', '2023-03-17 22:51:33.084704', 1, 1),
(2, '“Many have tried to upturn Lagos in the past and failed because of the entrenched power of Bola Tinubu. As President-elect, his influence may have grown in Lagos but the Obidients are strong,” Amadi says, speaking of supporters of Labour Party presidential candidate Peter Obi.', '2023-03-18 00:13:57.936819', '2023-03-18 00:13:57.936871', 3, 1),
(3, 'The FBI encouraged anyone with information about where Lopez may be located to contact their local FBI office, submit a tip online or reach out to the nearest American embassy or consulate.', '2023-03-18 00:15:39.639266', '2023-03-18 00:15:39.639297', 4, 1);

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
  `host_id` bigint DEFAULT NULL,
  `topic_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `base_room`
--

INSERT INTO `base_room` (`id`, `name`, `description`, `updated_at`, `created_at`, `host_id`, `topic_id`) VALUES
(1, 'ICC issues war crimes arrest warrant for Putin', 'The United States supports \"accountability for perpetrators of war crimes,\" National Security Council spokesperson Adrienne Watson said in a statement, hours after the International Criminal Court issued an arrest warrant for Russian President Vladimir Putin,\r\n\r\n', '2023-03-17 21:42:36.797990', '2023-03-17 21:42:36.798172', 1, 1),
(2, 'Did the Princess of Wales break royal protocol?', 'Blustery weather conditions couldn’t keep King Charles III and senior royals from heading to Westminster Abbey earlier this week for a service to mark Commonwealth Day and celebrate the 56 countries that make up the global organization.\r\n\r\nIn his address at the abbey, the King spoke on the theme of this year’s celebration, “Forging a Sustainable and Peaceful Common Future,” (more on that later in the newsletter) while the service reflected the diverse Commonwealth community.\r\n\r\nBrianna Fruean, a young Samoan environmental advocate and a previous recipient of a Commonwealth Youth Award, read a reflection, while Muslim, Sikh and Jewish representatives also gave readings. There were several musical performances, including from the National Ballet of Rwanda, Cyprus’ all-female Amalgamation Choir and British saxophonist YolanDa Brown.\r\n\r\n', '2023-03-18 00:12:22.347173', '2023-03-18 00:12:22.347325', 1, 2),
(3, 'Nigerians to vote in governorship polls as ruling party scrambles to regain lost ground in key states', 'The gubernatorial race will be decided in 28 of Nigeria’s 36 states as the ruling party scrambles to regain lost ground in key states.\r\n\r\nBut all eyes will be on the tense contest for control of the country’s wealthy Lagos State, which analysts say will be the “most competitive” in the state’s history.\r\n\r\n', '2023-03-18 00:13:29.135950', '2023-03-18 00:13:29.136167', 1, 3),
(4, 'FBI offers $20,000 reward in case of missing American woman who was kidnapped from her home in Mexico', 'More than a month after a 63-year-old US citizen was kidnapped from her home in Mexico, the FBI has announced a $20,000 reward for information leading to her whereabouts.\r\n\r\nMaria del Carmen Lopez was kidnapped February 9 in Pueblo Nuevo, a municipality in the southwestern Mexican state of Colima, the FBI’s Los Angeles field office said in a release Thursday.\r\n\r\nLopez is also a Mexican citizen, according to a statement from the Colima Attorney General’s office, which said it is working with the FBI on the investigation.\r\n\r\n', '2023-03-18 00:15:12.171208', '2023-03-18 00:15:12.171335', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `base_room_participants`
--

CREATE TABLE `base_room_participants` (
  `id` bigint NOT NULL,
  `room_id` bigint NOT NULL,
  `user_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `base_room_participants`
--

INSERT INTO `base_room_participants` (`id`, `room_id`, `user_id`) VALUES
(1, 1, 1),
(2, 3, 1),
(3, 4, 1);

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
(1, 'TRENDING'),
(2, 'World'),
(3, 'Africa'),
(4, 'Americas');

-- --------------------------------------------------------

--
-- Table structure for table `base_user`
--

CREATE TABLE `base_user` (
  `id` bigint NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `bio` longtext,
  `name` varchar(200) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `base_user`
--

INSERT INTO `base_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `bio`, `name`, `avatar`) VALUES
(1, 'pbkdf2_sha256$390000$ZjQv2hXmqbEosbuygHJxwP$KxyNVT71X0UHq5FAa80UOrgBQQk14IQXZ8tt4o2vlLA=', '2023-03-17 23:46:38.731251', 1, 'kadir', 'ABDIKADIR', 'ALI', 'kadir@gmail.com', 1, 1, '2023-03-17 21:21:25.000000', 'Full Stack Developer', 'ABDIKADIR ALI', 'DSCF9080_2kpd91A.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `base_user_groups`
--

CREATE TABLE `base_user_groups` (
  `id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `base_user_user_permissions`
--

CREATE TABLE `base_user_user_permissions` (
  `id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  `user_id` bigint NOT NULL
) ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-03-17 21:36:57.690193', '1', 'kadir@gmail.com', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Name\", \"Bio\"]}}]', 6, 1),
(2, '2023-03-17 22:25:44.733597', '1', 'kadir@gmail.com', 2, '[{\"changed\": {\"fields\": [\"Avatar\"]}}]', 6, 1);

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
(9, 'base', 'message'),
(8, 'base', 'room'),
(7, 'base', 'topic'),
(6, 'base', 'user'),
(4, 'contenttypes', 'contenttype'),
(5, 'sessions', 'session');

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
(1, 'contenttypes', '0001_initial', '2023-03-17 21:19:05.822945'),
(2, 'contenttypes', '0002_remove_content_type_name', '2023-03-17 21:19:06.504222'),
(3, 'auth', '0001_initial', '2023-03-17 21:19:10.414352'),
(4, 'auth', '0002_alter_permission_name_max_length', '2023-03-17 21:19:11.709508'),
(5, 'auth', '0003_alter_user_email_max_length', '2023-03-17 21:19:11.757115'),
(6, 'auth', '0004_alter_user_username_opts', '2023-03-17 21:19:11.806431'),
(7, 'auth', '0005_alter_user_last_login_null', '2023-03-17 21:19:11.876717'),
(8, 'auth', '0006_require_contenttypes_0002', '2023-03-17 21:19:11.901472'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2023-03-17 21:19:11.963831'),
(10, 'auth', '0008_alter_user_username_max_length', '2023-03-17 21:19:11.999135'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2023-03-17 21:19:12.033361'),
(12, 'auth', '0010_alter_group_name_max_length', '2023-03-17 21:19:12.128418'),
(13, 'auth', '0011_update_proxy_permissions', '2023-03-17 21:19:12.170786'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2023-03-17 21:19:12.211871'),
(15, 'base', '0001_initial', '2023-03-17 21:19:22.986992'),
(16, 'admin', '0001_initial', '2023-03-17 21:19:25.377562'),
(17, 'admin', '0002_logentry_remove_auto_add', '2023-03-17 21:19:25.535581'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2023-03-17 21:19:25.619101'),
(19, 'sessions', '0001_initial', '2023-03-17 21:19:26.587813'),
(20, 'base', '0002_user_bio_user_name_alter_user_email', '2023-03-17 21:34:11.548670'),
(21, 'base', '0003_user_avatar', '2023-03-17 22:16:22.631896'),
(22, 'base', '0004_alter_user_avatar', '2023-03-17 22:20:10.559407');

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
('vrx34fb1xsc1kjknqiezl0mkah37fzmc', '.eJxVjEEOwiAQRe_C2hAoFAaX7j0DmYFBqoYmpV0Z765NutDtf-_9l4i4rTVunZc4ZXEWWpx-N8L04LaDfMd2m2Wa27pMJHdFHrTL65z5eTncv4OKvX7rYIweydusAUpBdMYHIuCksmePWDSkAs6VRKNSQMNgmBmcBm1dsF68P-7sN-o:1pdJmQ:s6n9DPwMYFNyEi4G8XZBZKQ4SBJWKiDLo6fFMt1Cozc', '2023-03-31 23:46:38.767888');

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
-- Indexes for table `base_message`
--
ALTER TABLE `base_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_message_room_id_6b04a640_fk_base_room_id` (`room_id`),
  ADD KEY `base_message_user_id_46a57e37_fk_base_user_id` (`user_id`);

--
-- Indexes for table `base_room`
--
ALTER TABLE `base_room`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_room_host_id_6c009082_fk_base_user_id` (`host_id`),
  ADD KEY `base_room_topic_id_42a6b2b8_fk_base_topic_id` (`topic_id`);

--
-- Indexes for table `base_room_participants`
--
ALTER TABLE `base_room_participants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `base_room_participants_room_id_user_id_2e298648_uniq` (`room_id`,`user_id`),
  ADD KEY `base_room_participants_user_id_2a86ea9a_fk_base_user_id` (`user_id`);

--
-- Indexes for table `base_topic`
--
ALTER TABLE `base_topic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_user`
--
ALTER TABLE `base_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `base_user_email_fbc4c0ff_uniq` (`email`);

--
-- Indexes for table `base_user_groups`
--
ALTER TABLE `base_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `base_user_groups_user_id_group_id_774631b7_uniq` (`user_id`,`group_id`),
  ADD KEY `base_user_groups_group_id_c0eca7d6_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `base_user_user_permissions`
--
ALTER TABLE `base_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `base_user_user_permissions_user_id_permission_id_e9093277_uniq` (`user_id`,`permission_id`),
  ADD KEY `base_user_user_permi_permission_id_0418bc02_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_base_user_id` (`user_id`);

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
-- AUTO_INCREMENT for table `base_message`
--
ALTER TABLE `base_message`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `base_room`
--
ALTER TABLE `base_room`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `base_room_participants`
--
ALTER TABLE `base_room_participants`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `base_topic`
--
ALTER TABLE `base_topic`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `base_user`
--
ALTER TABLE `base_user`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `base_user_groups`
--
ALTER TABLE `base_user_groups`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_user_user_permissions`
--
ALTER TABLE `base_user_user_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
-- Constraints for table `base_message`
--
ALTER TABLE `base_message`
  ADD CONSTRAINT `base_message_room_id_6b04a640_fk_base_room_id` FOREIGN KEY (`room_id`) REFERENCES `base_room` (`id`),
  ADD CONSTRAINT `base_message_user_id_46a57e37_fk_base_user_id` FOREIGN KEY (`user_id`) REFERENCES `base_user` (`id`);

--
-- Constraints for table `base_room`
--
ALTER TABLE `base_room`
  ADD CONSTRAINT `base_room_host_id_6c009082_fk_base_user_id` FOREIGN KEY (`host_id`) REFERENCES `base_user` (`id`),
  ADD CONSTRAINT `base_room_topic_id_42a6b2b8_fk_base_topic_id` FOREIGN KEY (`topic_id`) REFERENCES `base_topic` (`id`);

--
-- Constraints for table `base_room_participants`
--
ALTER TABLE `base_room_participants`
  ADD CONSTRAINT `base_room_participants_room_id_8701ee11_fk_base_room_id` FOREIGN KEY (`room_id`) REFERENCES `base_room` (`id`),
  ADD CONSTRAINT `base_room_participants_user_id_2a86ea9a_fk_base_user_id` FOREIGN KEY (`user_id`) REFERENCES `base_user` (`id`);

--
-- Constraints for table `base_user_groups`
--
ALTER TABLE `base_user_groups`
  ADD CONSTRAINT `base_user_groups_group_id_c0eca7d6_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `base_user_groups_user_id_29a796b6_fk_base_user_id` FOREIGN KEY (`user_id`) REFERENCES `base_user` (`id`);

--
-- Constraints for table `base_user_user_permissions`
--
ALTER TABLE `base_user_user_permissions`
  ADD CONSTRAINT `base_user_user_permi_permission_id_0418bc02_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `base_user_user_permissions_user_id_2eec4d63_fk_base_user_id` FOREIGN KEY (`user_id`) REFERENCES `base_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_base_user_id` FOREIGN KEY (`user_id`) REFERENCES `base_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
