-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 08 sep. 2023 à 19:20
-- Version du serveur : 8.0.34-0ubuntu0.22.04.1
-- Version de PHP : 8.1.2-1ubuntu2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestion_reservation`
--

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `auth_permission`
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
(25, 'Can add hotel', 7, 'add_hotel'),
(26, 'Can change hotel', 7, 'change_hotel'),
(27, 'Can delete hotel', 7, 'delete_hotel'),
(28, 'Can view hotel', 7, 'view_hotel'),
(29, 'Can add voiture', 8, 'add_voiture'),
(30, 'Can change voiture', 8, 'change_voiture'),
(31, 'Can delete voiture', 8, 'delete_voiture'),
(32, 'Can view voiture', 8, 'view_voiture'),
(33, 'Can add suite', 9, 'add_suite'),
(34, 'Can change suite', 9, 'change_suite'),
(35, 'Can delete suite', 9, 'delete_suite'),
(36, 'Can view suite', 9, 'view_suite'),
(37, 'Can add image', 10, 'add_image'),
(38, 'Can change image', 10, 'change_image'),
(39, 'Can delete image', 10, 'delete_image'),
(40, 'Can view image', 10, 'view_image'),
(41, 'Can add utilisateur', 11, 'add_utilisateur'),
(42, 'Can change utilisateur', 11, 'change_utilisateur'),
(43, 'Can delete utilisateur', 11, 'delete_utilisateur'),
(44, 'Can view utilisateur', 11, 'view_utilisateur'),
(45, 'Can add reservation_ suite', 12, 'add_reservation_suite'),
(46, 'Can change reservation_ suite', 12, 'change_reservation_suite'),
(47, 'Can delete reservation_ suite', 12, 'delete_reservation_suite'),
(48, 'Can view reservation_ suite', 12, 'view_reservation_suite');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
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
-- Déchargement des données de la table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$SjF1kUyIAyncu3YGHJeqFU$vxQASJIK8gLy6Ss+CTLs12L3b5MgKH25c1Cmf1SwB3k=', NULL, 0, 'diopmodou@gmail.com', '', '', 'diopmodou@gmail.com', 0, 1, '2023-06-13 09:00:26.496972'),
(3, 'pbkdf2_sha256$600000$YqcptuPNzkaRTfZLVmTvmS$0dNgNjLo2S/Gx1QAE+8kj8Avfp1UP4UXcMwNs7NKsXg=', NULL, 0, 'babdou@gmail.com', '', '', 'babdou@gmail.com', 0, 1, '2023-06-13 09:13:54.281136'),
(4, 'pbkdf2_sha256$600000$cO7vcOxNzqK7KfKgHUz67J$ESUbtvm7w6D0TT47Ny8xbqUxxEfiEpCYCgKROdT1Q/Y=', NULL, 0, 'mbenguelaye@gmail.com', '', '', 'mbenguelaye@gmail.com', 0, 1, '2023-06-13 09:37:24.956382');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
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

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'site_reservation', 'hotel'),
(10, 'site_reservation', 'image'),
(12, 'site_reservation', 'reservation_suite'),
(9, 'site_reservation', 'suite'),
(11, 'site_reservation', 'utilisateur'),
(8, 'site_reservation', 'voiture');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-05-29 13:48:55.116721'),
(2, 'auth', '0001_initial', '2023-05-29 13:48:55.336953'),
(3, 'admin', '0001_initial', '2023-05-29 13:48:55.393613'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-05-29 13:48:55.399980'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-05-29 13:48:55.406879'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-05-29 13:48:55.444233'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-05-29 13:48:55.473489'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-05-29 13:48:55.487397'),
(9, 'auth', '0004_alter_user_username_opts', '2023-05-29 13:48:55.493523'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-05-29 13:48:55.521145'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-05-29 13:48:55.523674'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-05-29 13:48:55.529857'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-05-29 13:48:55.561492'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-05-29 13:48:55.589067'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-05-29 13:48:55.601506'),
(16, 'auth', '0011_update_proxy_permissions', '2023-05-29 13:48:55.609107'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-05-29 13:48:55.638073'),
(18, 'sessions', '0001_initial', '2023-05-29 13:48:55.656686'),
(19, 'site_reservation', '0001_initial', '2023-05-29 13:48:55.676399'),
(20, 'site_reservation', '0002_suite_delete_hotel_delete_voiture', '2023-05-29 19:56:40.670973'),
(21, 'site_reservation', '0003_alter_suite_image', '2023-05-29 22:56:22.043748'),
(22, 'site_reservation', '0004_image', '2023-05-29 23:34:23.283358'),
(23, 'site_reservation', '0005_alter_image_image_alter_suite_image', '2023-05-30 21:03:12.289478'),
(24, 'site_reservation', '0006_utilisateur', '2023-06-03 18:53:54.387695'),
(27, 'site_reservation', '0007_reservation_suite', '2023-06-11 20:16:57.189691'),
(28, 'site_reservation', '0008_alter_suite_id', '2023-06-11 20:21:49.996747'),
(29, 'site_reservation', '0009_alter_reservation_suite_suite', '2023-06-11 20:23:39.468992');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('enbxidjmw6nw3wba55sf4b2fawvq1cwb', '.eJyrViouzSxJjc9MUbIytNRRSkkEclJSk0pLlKyUDMz0jQz1jQyMjJWgMmmZeVBxS5h4Rn5Jag5QMCgxJbO4OD9PwSmnVKkWAITeGdI:1q9uWo:PX5tn_le_ee_ZKyQakv8DcOFqqNRLPdYJcQ3L0FuD0k', '2023-06-29 21:29:14.026701'),
('qbte2wgptz63zoz6zix0yxz363179mxl', '.eJyrVsrIL0nNUbJSCkpMySwuzs9TcMopVdJRSkksSY1PSU0qLQHKGZjpGxnqGxkYGcNk0jLzoOKWEPFaAGU3FWg:1qefjT:ncAnL11rkuuwI7vjic_PmGk08CTM6kWOnxO77HzH2IY', '2023-09-22 17:57:27.006506');

-- --------------------------------------------------------

--
-- Structure de la table `reservation_restaurant`
--

CREATE TABLE `reservation_restaurant` (
  `id` int NOT NULL,
  `utilisateur_id` int DEFAULT NULL,
  `date_reservation` date DEFAULT NULL,
  `id_resto` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reservation_suite`
--

CREATE TABLE `reservation_suite` (
  `id` int NOT NULL,
  `utilisateur_id` int DEFAULT NULL,
  `date_debut` date DEFAULT NULL,
  `date_fin` date DEFAULT NULL,
  `id_suite` int DEFAULT NULL,
  `nom_hotel` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `reservation_suite`
--

INSERT INTO `reservation_suite` (`id`, `utilisateur_id`, `date_debut`, `date_fin`, `id_suite`, `nom_hotel`) VALUES
(1, 3, '2023-06-21', '2023-06-29', 4, 'Radisson Blu'),
(2, 3, '2023-06-21', '2023-06-29', 19, 'Radisson Blu');

-- --------------------------------------------------------

--
-- Structure de la table `reservation_voiture`
--

CREATE TABLE `reservation_voiture` (
  `id` int NOT NULL,
  `utilisateur_id` int DEFAULT NULL,
  `date_reservation` date DEFAULT NULL,
  `id_voiture` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `resto`
--

CREATE TABLE `resto` (
  `id` int NOT NULL,
  `emplacement` varchar(50) NOT NULL,
  `type_table` varchar(50) NOT NULL,
  `couleur_nappe` varchar(50) NOT NULL,
  `cout_reservation` varchar(50) NOT NULL,
  `imgs` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `resto`
--

INSERT INTO `resto` (`id`, `emplacement`, `type_table`, `couleur_nappe`, `cout_reservation`, `imgs`) VALUES
(1, 'balcon2', 'table ronde', 'blanc', '130$', 'static/photo/balcon/balcon2.jpg'),
(2, 'vue de mer2', 'table rectangle', 'noir', '150$', 'static/photo/mer/mer2.jpg'),
(3, 'en privée1', 'table rectangle', 'blanc', '100$', 'static/photo/privée/en_privé.jpg'),
(4, 'vue de mer1', 'table de bistriot', 'blanc', '150$', 'static/photo/mer/mer.jpg'),
(5, 'en publique2', 'table ronde', 'bleu', '50$', 'static/photo/publique/publique2.jpg'),
(6, 'en publique1', 'table ronde', 'doré', '50$', 'static/photo/publique/pubique1.jpg'),
(7, 'vue de mer2', 'table rectangle', 'noir', '150$', 'static/photo/mer/mer2.jpg'),
(8, 'vue de mer2', 'table ronde', 'doré', '150$', 'static/photo/mer/mer2.jpg'),
(9, 'en publique1', 'table de bistriot', 'noir', '50$', 'static/photo/publique/pubique1.jpg'),
(10, 'vue de mer1', 'table rectangle', 'blanc', '150$', 'static/photo/mer/mer.jpg'),
(11, 'en publique1', 'table ronde', 'noir', '50$', 'static/photo/publique/pubique1.jpg'),
(12, 'vue de mer2', 'table haute et mange-debout', 'bleu', '150$', 'static/photo/mer/mer2.jpg'),
(13, 'vue de mer2', 'table haute et mange-debout', 'rouge', '150$', 'static/photo/mer/mer2.jpg'),
(14, 'vue de mer1', 'table ronde', 'blanc', '150$', 'static/photo/mer/mer.jpg'),
(15, 'en publique1', 'table rectangle', 'blanc', '50$', 'static/photo/publique/pubique1.jpg'),
(16, 'balcon2', 'table rectangle', 'rouge', '130$', 'static/photo/balcon/balcon2.jpg'),
(17, 'en publique2', 'table de bistriot', 'bleu', '50$', 'static/photo/publique/publique2.jpg'),
(18, 'vue de mer1', 'table ronde', 'bleu', '150$', 'static/photo/mer/mer.jpg'),
(19, 'en publique1', 'table ronde', 'noir', '50$', 'static/photo/publique/pubique1.jpg'),
(20, 'balcon1', 'table haute et mange-debout', 'bleu', '130$', 'static/photo/balcon/balcon1.jpg'),
(21, 'balcon1', 'table ronde', 'blanc', '130$', 'static/photo/balcon/balcon1.jpg'),
(22, 'en privée1', 'table de bistriot', 'bleu', '100$', 'static/photo/privée/en_privé.jpg'),
(23, 'en privée1', 'table rectangle', 'noir', '100$', 'static/photo/privée/en_privé.jpg'),
(24, 'vue de mer1', 'table ronde', 'bleu', '150$', 'static/photo/mer/mer.jpg'),
(25, 'en publique1', 'table ronde', 'rouge', '50$', 'static/photo/publique/pubique1.jpg'),
(26, 'vue de mer2', 'table haute et mange-debout', 'noir', '150$', 'static/photo/mer/mer2.jpg'),
(27, 'en publique2', 'table rectangle', 'bleu', '50$', 'static/photo/publique/publique2.jpg'),
(28, 'en privée2', 'table de bistriot', 'doré', '100$', 'static/photo/privée/privé.jpg'),
(29, 'vue de mer2', 'table haute et mange-debout', 'rouge', '150$', 'static/photo/mer/mer2.jpg'),
(30, 'balcon2', 'table ronde', 'rouge', '130$', 'static/photo/balcon/balcon2.jpg'),
(31, 'en publique1', 'table ronde', 'rouge', '50$', 'static/photo/publique/pubique1.jpg'),
(32, 'balcon2', 'table ronde', 'blanc', '130$', 'static/photo/balcon/balcon2.jpg'),
(33, 'balcon2', 'table de bistriot', 'bleu', '130$', 'static/photo/balcon/balcon2.jpg'),
(34, 'balcon2', 'table rectangle', 'blanc', '130$', 'static/photo/balcon/balcon2.jpg'),
(35, 'balcon1', 'table ronde', 'blanc', '130$', 'static/photo/balcon/balcon1.jpg'),
(36, 'vue de mer2', 'table de bistriot', 'blanc', '150$', 'static/photo/mer/mer2.jpg'),
(37, 'vue de mer2', 'table ronde', 'noir', '150$', 'static/photo/mer/mer2.jpg'),
(38, 'balcon2', 'table de bistriot', 'bleu', '130$', 'static/photo/balcon/balcon2.jpg'),
(39, 'en privée1', 'table de bistriot', 'rouge', '100$', 'static/photo/privée/en_privé.jpg'),
(40, 'en publique1', 'table ronde', 'noir', '50$', 'static/photo/publique/pubique1.jpg'),
(41, 'en publique1', 'table rectangle', 'rouge', '50$', 'static/photo/publique/pubique1.jpg'),
(42, 'en publique1', 'table de bistriot', 'noir', '50$', 'static/photo/publique/pubique1.jpg'),
(43, 'en privée2', 'table ronde', 'noir', '100$', 'static/photo/privée/privé.jpg'),
(44, 'en privée2', 'table rectangle', 'doré', '100$', 'static/photo/privée/privé.jpg'),
(45, 'balcon2', 'table haute et mange-debout', 'bleu', '130$', 'static/photo/balcon/balcon2.jpg'),
(46, 'balcon2', 'table haute et mange-debout', 'noir', '130$', 'static/photo/balcon/balcon2.jpg'),
(47, 'vue de mer1', 'table de bistriot', 'doré', '150$', 'static/photo/mer/mer.jpg'),
(48, 'vue de mer1', 'table haute et mange-debout', 'rouge', '150$', 'static/photo/mer/mer.jpg'),
(49, 'en publique2', 'table de bistriot', 'noir', '50$', 'static/photo/publique/publique2.jpg'),
(50, 'vue de mer1', 'table de bistriot', 'doré', '150$', 'static/photo/mer/mer.jpg'),
(51, 'balcon2', 'table haute et mange-debout', 'noir', '130$', 'static/photo/balcon/balcon2.jpg'),
(52, 'vue de mer1', 'table rectangle', 'noir', '150$', 'static/photo/mer/mer.jpg'),
(53, 'en publique2', 'table de bistriot', 'noir', '50$', 'static/photo/publique/publique2.jpg'),
(54, 'vue de mer2', 'table ronde', 'noir', '150$', 'static/photo/mer/mer2.jpg'),
(55, 'en publique1', 'table ronde', 'doré', '50$', 'static/photo/publique/pubique1.jpg'),
(56, 'balcon2', 'table haute et mange-debout', 'blanc', '130$', 'static/photo/balcon/balcon2.jpg'),
(57, 'balcon1', 'table haute et mange-debout', 'blanc', '130$', 'static/photo/balcon/balcon1.jpg'),
(58, 'balcon1', 'table de bistriot', 'noir', '130$', 'static/photo/balcon/balcon1.jpg'),
(59, 'vue de mer1', 'table ronde', 'noir', '150$', 'static/photo/mer/mer.jpg'),
(60, 'en publique2', 'table rectangle', 'doré', '50$', 'static/photo/publique/publique2.jpg'),
(61, 'vue de mer1', 'table rectangle', 'bleu', '150$', 'static/photo/mer/mer.jpg'),
(62, 'balcon2', 'table haute et mange-debout', 'blanc', '130$', 'static/photo/balcon/balcon2.jpg'),
(63, 'balcon1', 'table de bistriot', 'doré', '130$', 'static/photo/balcon/balcon1.jpg'),
(64, 'balcon1', 'table ronde', 'rouge', '130$', 'static/photo/balcon/balcon1.jpg'),
(65, 'vue de mer2', 'table de bistriot', 'blanc', '150$', 'static/photo/mer/mer2.jpg'),
(66, 'balcon2', 'table de bistriot', 'noir', '130$', 'static/photo/balcon/balcon2.jpg'),
(67, 'en publique1', 'table haute et mange-debout', 'doré', '50$', 'static/photo/publique/pubique1.jpg'),
(68, 'vue de mer2', 'table rectangle', 'noir', '150$', 'static/photo/mer/mer2.jpg'),
(69, 'en privée1', 'table haute et mange-debout', 'blanc', '100$', 'static/photo/privée/en_privé.jpg'),
(70, 'en publique2', 'table de bistriot', 'bleu', '50$', 'static/photo/publique/publique2.jpg'),
(71, 'en privée2', 'table ronde', 'doré', '100$', 'static/photo/privée/privé.jpg'),
(72, 'en publique2', 'table rectangle', 'bleu', '50$', 'static/photo/publique/publique2.jpg'),
(73, 'balcon2', 'table rectangle', 'doré', '130$', 'static/photo/balcon/balcon2.jpg'),
(74, 'vue de mer1', 'table de bistriot', 'bleu', '150$', 'static/photo/mer/mer.jpg'),
(75, 'en privée2', 'table ronde', 'doré', '100$', 'static/photo/privée/privé.jpg'),
(76, 'en publique1', 'table haute et mange-debout', 'rouge', '50$', 'static/photo/publique/pubique1.jpg'),
(77, 'en publique2', 'table ronde', 'rouge', '50$', 'static/photo/publique/publique2.jpg'),
(78, 'en publique1', 'table ronde', 'bleu', '50$', 'static/photo/publique/pubique1.jpg'),
(79, 'vue de mer1', 'table ronde', 'bleu', '150$', 'static/photo/mer/mer.jpg'),
(80, 'en privée2', 'table rectangle', 'noir', '100$', 'static/photo/privée/privé.jpg'),
(81, 'en publique1', 'table ronde', 'doré', '50$', 'static/photo/publique/pubique1.jpg'),
(82, 'vue de mer2', 'table rectangle', 'doré', '150$', 'static/photo/mer/mer2.jpg'),
(83, 'vue de mer2', 'table de bistriot', 'rouge', '150$', 'static/photo/mer/mer2.jpg'),
(84, 'balcon1', 'table ronde', 'doré', '130$', 'static/photo/balcon/balcon1.jpg'),
(85, 'balcon1', 'table ronde', 'rouge', '130$', 'static/photo/balcon/balcon1.jpg'),
(86, 'en privée1', 'table rectangle', 'blanc', '100$', 'static/photo/privée/en_privé.jpg'),
(87, 'vue de mer1', 'table haute et mange-debout', 'rouge', '150$', 'static/photo/mer/mer.jpg'),
(88, 'en privée2', 'table de bistriot', 'doré', '100$', 'static/photo/privée/privé.jpg'),
(89, 'vue de mer1', 'table ronde', 'blanc', '150$', 'static/photo/mer/mer.jpg'),
(90, 'vue de mer1', 'table de bistriot', 'doré', '150$', 'static/photo/mer/mer.jpg'),
(91, 'en publique1', 'table rectangle', 'rouge', '50$', 'static/photo/publique/pubique1.jpg'),
(92, 'en publique2', 'table ronde', 'blanc', '50$', 'static/photo/publique/publique2.jpg'),
(93, 'balcon1', 'table rectangle', 'doré', '130$', 'static/photo/balcon/balcon1.jpg'),
(94, 'en publique2', 'table rectangle', 'bleu', '50$', 'static/photo/publique/publique2.jpg'),
(95, 'vue de mer1', 'table de bistriot', 'doré', '150$', 'static/photo/mer/mer.jpg'),
(96, 'en privée1', 'table haute et mange-debout', 'bleu', '100$', 'static/photo/privée/en_privé.jpg'),
(97, 'en privée2', 'table de bistriot', 'doré', '100$', 'static/photo/privée/privé.jpg'),
(98, 'vue de mer1', 'table ronde', 'noir', '150$', 'static/photo/mer/mer.jpg'),
(99, 'en privée2', 'table ronde', 'doré', '100$', 'static/photo/privée/privé.jpg'),
(100, 'en privée1', 'table ronde', 'rouge', '100$', 'static/photo/privée/en_privé.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `site_reservation_reservation_suite`
--

CREATE TABLE `site_reservation_reservation_suite` (
  `id` bigint NOT NULL,
  `date_arrivee` date NOT NULL,
  `date_depart` date NOT NULL,
  `suite_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_reservation_suite`
--

CREATE TABLE `site_reservation_suite` (
  `id` int NOT NULL,
  `numero` int NOT NULL,
  `nom_suite` varchar(50) NOT NULL,
  `etage` int NOT NULL,
  `nombre_lit` int NOT NULL,
  `salle_bain` int NOT NULL,
  `hotel` varchar(50) NOT NULL,
  `prix` float NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `site_reservation_suite`
--

INSERT INTO `site_reservation_suite` (`id`, `numero`, `nom_suite`, `etage`, `nombre_lit`, `salle_bain`, `hotel`, `prix`, `description`, `image`) VALUES
(1, 1, 'Radisson Blu - Obamalia', 6, 1, 1, 'Radisson Blu', 119.94, 'Suite spacieuse avec vue sur la mer', '1.jpg'),
(2, 2, 'Radisson Blu - Noflayenne', 7, 2, 2, 'Radisson Blu', 169.28, 'Suite luxueuse avec jacuzzi privé', '8.jpg'),
(3, 3, 'Radisson Blu - Dallouna', 3, 2, 2, 'Radisson Blu', 208.53, 'Suite luxueuse avec jacuzzi privé', '20.jpg'),
(4, 4, 'Radisson Blu - Royale', 8, 1, 1, 'Radisson Blu', 227.89, 'Suite spacieuse avec vue sur la mer', '21.jpg'),
(5, 5, 'Radisson Blu - Dallouise', 4, 1, 2, 'Radisson Blu', 275.9, 'Suite élégante avec vue panoramique', '23.jpg'),
(6, 6, 'Radisson Blu - Impériale', 2, 3, 2, 'Radisson Blu', 263.78, 'Suite spacieuse avec vue sur la mer', '7.jpg'),
(7, 7, 'Radisson Blu - Noflayenne', 9, 1, 1, 'Radisson Blu', 297.55, 'Suite élégante avec vue panoramique', '15.jpg'),
(8, 8, 'Radisson Blu - Aldiano', 9, 3, 1, 'Radisson Blu', 220.86, 'Suite luxueuse avec jacuzzi privé', '5.jpg'),
(9, 9, 'Radisson Blu - Albar', 8, 2, 1, 'Radisson Blu', 161.45, 'Suite spacieuse avec vue sur la mer', '6.jpg'),
(10, 10, 'Radisson Blu - Albar', 10, 3, 1, 'Radisson Blu', 233.39, 'Suite élégante avec vue panoramique', '11.jpg'),
(11, 11, 'Radisson Blu - Deluxe', 10, 2, 1, 'Radisson Blu', 198.44, 'Suite élégante avec vue panoramique', '22.jpg'),
(12, 12, 'Radisson Blu - Noflayenne', 9, 2, 1, 'Radisson Blu', 211.04, 'Suite luxueuse avec jacuzzi privé', '3.jpg'),
(13, 13, 'Radisson Blu - Almeida', 5, 1, 1, 'Radisson Blu', 104.62, 'Suite spacieuse avec vue sur la mer', '2.jpg'),
(14, 14, 'Radisson Blu - Dallouni', 6, 2, 1, 'Radisson Blu', 279.52, 'Suite luxueuse avec jacuzzi privé', '12.jpg'),
(15, 15, 'Radisson Blu - Présidentielle', 1, 1, 2, 'Radisson Blu', 186.6, 'Suite élégante avec vue panoramique', '10.jpeg'),
(16, 16, 'Radisson Blu - Noflaye Plus', 4, 2, 1, 'Radisson Blu', 102, 'Suite confortable avec cheminée', '14.jpg'),
(17, 17, 'Radisson Blu - Prestige', 4, 2, 1, 'Radisson Blu', 245, 'Suite élégante avec vue panoramique', '19.jpg'),
(18, 18, 'Radisson Blu - Impériale Royale', 1, 3, 1, 'Radisson Blu', 170, 'Suite confortable avec cheminée', '25.jpg'),
(19, 19, 'Radisson Blu - Obamienne', 3, 1, 1, 'Radisson Blu', 117.37, 'Suite élégante avec vue panoramique', '13.jpg'),
(20, 20, 'Radisson Blu - Dallou', 5, 1, 2, 'Radisson Blu', 223.07, 'Suite confortable avec cheminée', '4.jpg'),
(21, 21, 'Radisson Blu - Royale', 7, 1, 2, 'Radisson Blu', 197.58, 'Suite moderne avec balcon', '18.jpg'),
(22, 22, 'Radisson Blu - Noflaye', 8, 3, 2, 'Radisson Blu', 226.35, 'Suite luxueuse avec jacuzzi privé', '24.jpg'),
(23, 23, 'Radisson Blu - Prestige', 3, 1, 2, 'Radisson Blu', 251.55, 'Suite spacieuse avec vue sur la mer', '16.jpeg'),
(24, 24, 'Radisson Blu - Dallouna', 2, 2, 2, 'Radisson Blu', 186.08, 'Suite élégante avec vue panoramique', '9.jpg'),
(25, 25, 'Radisson Blu - Prestige', 7, 1, 1, 'Radisson Blu', 177.91, 'Suite spacieuse avec vue sur la mer', '17.jpg'),
(26, 1, 'Terrou Bi - Dallouise', 7, 1, 2, 'Terrou Bi', 254.16, 'Suite confortable avec cheminée', '8.jpg'),
(27, 2, 'Terrou Bi - Obamic', 5, 3, 1, 'Terrou Bi', 262.36, 'Suite luxueuse avec jacuzzi privé', '23.jpg'),
(28, 3, 'Terrou Bi - Noflayenne', 6, 3, 2, 'Terrou Bi', 170.88, 'Suite luxueuse avec jacuzzi privé', '7.jpg'),
(29, 4, 'Terrou Bi - Impériale Royale', 3, 1, 1, 'Terrou Bi', 268.74, 'Suite confortable avec cheminée', '5.jpg'),
(30, 5, 'Terrou Bi - Almeida', 5, 2, 1, 'Terrou Bi', 283.89, 'Suite luxueuse avec jacuzzi privé', '19.jpg'),
(31, 6, 'Terrou Bi - Albar', 8, 1, 2, 'Terrou Bi', 298.55, 'Suite élégante avec vue panoramique', '17.jpg'),
(32, 7, 'Terrou Bi - Aldiana', 3, 3, 2, 'Terrou Bi', 233.87, 'Suite spacieuse avec vue sur la mer', '12.jpg'),
(33, 8, 'Terrou Bi - Obama', 5, 3, 1, 'Terrou Bi', 165.55, 'Suite élégante avec vue panoramique', '11.jpg'),
(34, 9, 'Terrou Bi - Dallou', 6, 2, 1, 'Terrou Bi', 229.02, 'Suite élégante avec vue panoramique', '22.jpg'),
(35, 10, 'Terrou Bi - Dallou', 5, 3, 2, 'Terrou Bi', 273.1, 'Suite luxueuse avec jacuzzi privé', '1.jpg'),
(36, 11, 'Terrou Bi - Obamienne', 1, 1, 2, 'Terrou Bi', 198.07, 'Suite spacieuse avec vue sur la mer', '20.jpg'),
(37, 12, 'Terrou Bi - Dallouise', 10, 1, 1, 'Terrou Bi', 183.13, 'Suite élégante avec vue panoramique', '24.jpg'),
(38, 13, 'Terrou Bi - Obamic', 4, 3, 1, 'Terrou Bi', 138.64, 'Suite spacieuse avec vue sur la mer', '14.jpg'),
(39, 14, 'Terrou Bi - Impériale Royale', 1, 2, 2, 'Terrou Bi', 123.29, 'Suite spacieuse avec vue sur la mer', '18.jpg'),
(40, 15, 'Terrou Bi - Aldiano', 9, 1, 2, 'Terrou Bi', 220.41, 'Suite spacieuse avec vue sur la mer', '2.jpg'),
(41, 16, 'Terrou Bi - Dallouise', 6, 1, 1, 'Terrou Bi', 157.17, 'Suite spacieuse avec vue sur la mer', '9.jpg'),
(42, 17, 'Terrou Bi - Impériale Royale', 8, 3, 1, 'Terrou Bi', 125.73, 'Suite luxueuse avec jacuzzi privé', '15.jpg'),
(43, 18, 'Terrou Bi - Obamalia', 7, 2, 2, 'Terrou Bi', 123.29, 'Suite spacieuse avec vue sur la mer', '25.jpg'),
(44, 19, 'Terrou Bi - Obamalia', 7, 2, 2, 'Terrou Bi', 224.69, 'Suite spacieuse avec vue sur la mer', '10.jpeg'),
(45, 20, 'Terrou Bi - Almeida', 1, 2, 1, 'Terrou Bi', 100.16, 'Suite confortable avec cheminée', '16.jpeg'),
(46, 21, 'Terrou Bi - Noflayenne', 1, 1, 1, 'Terrou Bi', 251.5, 'Suite moderne avec balcon', '21.jpg'),
(47, 22, 'Terrou Bi - Impériale Royale', 7, 2, 2, 'Terrou Bi', 296.08, 'Suite luxueuse avec jacuzzi privé', '6.jpg'),
(48, 23, 'Terrou Bi - Dalliana', 7, 2, 2, 'Terrou Bi', 181.11, 'Suite confortable avec cheminée', '3.jpg'),
(49, 24, 'Terrou Bi - Obamienne', 3, 1, 2, 'Terrou Bi', 262.86, 'Suite luxueuse avec jacuzzi privé', '13.jpg'),
(50, 25, 'Terrou Bi - Noflaye Plus', 4, 2, 2, 'Terrou Bi', 283.76, 'Suite élégante avec vue panoramique', '4.jpg'),
(51, 1, 'Pullman - Noflayenne Prestige', 9, 2, 1, 'Pullman', 229.23, 'Suite élégante avec vue panoramique', '1.jpg'),
(52, 2, 'Pullman - Royale', 8, 3, 1, 'Pullman', 271.7, 'Suite luxueuse avec jacuzzi privé', '22.jpg'),
(53, 3, 'Pullman - Almeida', 8, 1, 1, 'Pullman', 281.12, 'Suite moderne avec balcon', '15.jpg'),
(54, 4, 'Pullman - Dallouna', 1, 1, 1, 'Pullman', 112.7, 'Suite luxueuse avec jacuzzi privé', '25.jpg'),
(55, 5, 'Pullman - Noflayenne Prestige', 10, 3, 1, 'Pullman', 283.7, 'Suite luxueuse avec jacuzzi privé', '24.jpg'),
(56, 6, 'Pullman - Impériale', 9, 3, 1, 'Pullman', 114.4, 'Suite luxueuse avec jacuzzi privé', '6.jpg'),
(57, 7, 'Pullman - Obamiana', 9, 2, 1, 'Pullman', 123.72, 'Suite confortable avec cheminée', '23.jpg'),
(58, 8, 'Pullman - Présidentielle', 10, 3, 2, 'Pullman', 151.21, 'Suite moderne avec balcon', '11.jpg'),
(59, 9, 'Pullman - Impériale Royale', 8, 2, 2, 'Pullman', 126.69, 'Suite luxueuse avec jacuzzi privé', '10.jpeg'),
(60, 10, 'Pullman - Royale', 5, 1, 1, 'Pullman', 189.04, 'Suite moderne avec balcon', '20.jpg'),
(61, 11, 'Pullman - Dallou', 6, 2, 2, 'Pullman', 192.35, 'Suite moderne avec balcon', '21.jpg'),
(62, 12, 'Pullman - Noflayenne Deluxe', 9, 2, 2, 'Pullman', 197.4, 'Suite luxueuse avec jacuzzi privé', '18.jpg'),
(63, 13, 'Pullman - Noflayenne Prestige', 10, 2, 1, 'Pullman', 297.87, 'Suite confortable avec cheminée', '16.jpeg'),
(64, 14, 'Pullman - Noflayenne Deluxe', 2, 1, 1, 'Pullman', 284.12, 'Suite confortable avec cheminée', '2.jpg'),
(65, 15, 'Pullman - Obamiana', 9, 3, 1, 'Pullman', 173.13, 'Suite luxueuse avec jacuzzi privé', '19.jpg'),
(66, 16, 'Pullman - Présidentielle', 7, 3, 2, 'Pullman', 254.52, 'Suite confortable avec cheminée', '12.jpg'),
(67, 17, 'Pullman - Obamiana', 6, 2, 1, 'Pullman', 136.24, 'Suite luxueuse avec jacuzzi privé', '13.jpg'),
(68, 18, 'Pullman - Aldiano', 9, 2, 2, 'Pullman', 119.31, 'Suite luxueuse avec jacuzzi privé', '9.jpg'),
(69, 19, 'Pullman - Impériale Royale', 1, 1, 1, 'Pullman', 103.1, 'Suite confortable avec cheminée', '5.jpg'),
(70, 20, 'Pullman - Dalliana', 4, 3, 1, 'Pullman', 133.03, 'Suite spacieuse avec vue sur la mer', '17.jpg'),
(71, 21, 'Pullman - Albar', 5, 1, 2, 'Pullman', 158.37, 'Suite moderne avec balcon', '3.jpg'),
(72, 22, 'Pullman - Impériale Royale', 2, 3, 1, 'Pullman', 213.32, 'Suite luxueuse avec jacuzzi privé', '7.jpg'),
(73, 23, 'Pullman - Almeida', 5, 2, 1, 'Pullman', 134.83, 'Suite moderne avec balcon', '8.jpg'),
(74, 24, 'Pullman - Dallouise', 4, 1, 1, 'Pullman', 176.48, 'Suite spacieuse avec vue sur la mer', '4.jpg'),
(75, 25, 'Pullman - Obamienne', 1, 2, 1, 'Pullman', 199.38, 'Suite spacieuse avec vue sur la mer', '14.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `site_reservation_utilisateur`
--

CREATE TABLE `site_reservation_utilisateur` (
  `id` bigint NOT NULL,
  `nom` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `site_reservation_utilisateur`
--

INSERT INTO `site_reservation_utilisateur` (`id`, `nom`, `email`, `password`) VALUES
(1, 'Ibrahima CISSE ', 'khalilcisse@gmail.com', '1221');

-- --------------------------------------------------------

--
-- Structure de la table `site_reservation_voiture`
--

CREATE TABLE `site_reservation_voiture` (
  `id` int NOT NULL,
  `marque` varchar(50) NOT NULL,
  `modele` varchar(50) NOT NULL,
  `nombre_places` int NOT NULL,
  `boite_vitesse` varchar(50) NOT NULL,
  `carburant` varchar(50) NOT NULL,
  `climatisation` tinyint(1) DEFAULT '1',
  `couleur` varchar(20) NOT NULL,
  `annee_production` int NOT NULL,
  `cout_journalier_location` varchar(50) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `disponible` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `site_reservation_voiture`
--

INSERT INTO `site_reservation_voiture` (`id`, `marque`, `modele`, `nombre_places`, `boite_vitesse`, `carburant`, `climatisation`, `couleur`, `annee_production`, `cout_journalier_location`, `image_path`, `disponible`) VALUES
(1, 'Ford', 'Explorer', 5, 'manuelle', 'electrique', 1, 'bleu', 2020, '100$', 'reservation/media-voiture/v5.jpg', 1),
(2, 'Toyota', 'Corolla', 2, 'automatique', 'essence', 0, 'gris', 2014, '100$', 'reservation/media-voiture/v.jpg', 1),
(3, 'Ford', 'Mustang', 5, 'manuelle', 'diesel', 0, 'rouge', 2016, '170$', 'reservation/media-voiture/v4.jpg', 1),
(4, 'BMW', '7 Series', 2, 'manuelle', 'electrique', 0, 'gris', 2020, '120$', 'reservation/media-voiture/v11.jpg', 1),
(5, 'BMW', '7 Series', 5, 'automatique', 'diesel', 1, 'gris', 2020, '120$', 'reservation/media-voiture/v11.jpg', 1),
(6, 'Ford', 'Explorer', 2, 'manuelle', 'electrique', 1, 'blanc', 2019, '100$', 'reservation/media-voiture/v5.jpg', 1),
(7, 'Volkswagen', 'Golf', 2, 'manuelle', 'diesel', 0, 'blanc', 2017, '80$', 'reservation/media-voiture/v6.jpg', 1),
(8, 'BMW', '7 Series', 2, 'manuelle', 'diesel', 0, 'gris', 2019, '120$', 'reservation/media-voiture/v11.jpg', 1),
(9, 'Toyota', 'Corolla', 2, 'manuelle', 'essence', 1, 'blanc', 2014, '100$', 'reservation/media-voiture/v.jpg', 1),
(10, 'Toyota', 'Camry', 5, 'manuelle', 'essence', 1, 'rouge', 2019, '120$', 'reservation/media-voiture/v1.jpg', 1),
(11, 'BMW', 'X6', 5, 'automatique', 'essence', 1, 'blanc', 2017, '170$', 'reservation/media-voiture/v12.jpg', 1),
(12, 'Toyota', 'RAV4', 2, 'automatique', 'diesel', 0, 'gris', 2020, '130$', 'reservation/media-voiture/v2.jpg', 1),
(13, 'BMW', 'X5', 5, 'manuelle', 'electrique', 1, 'bleu', 2020, '110$', 'reservation/media-voiture/v9.jpg', 1),
(14, 'Volkswagen', 'Golf', 2, 'manuelle', 'essence', 1, 'blanc', 2018, '80$', 'reservation/media-voiture/v6.jpg', 1),
(15, 'Ford', 'Focus', 2, 'manuelle', 'essence', 0, 'rouge', 2014, '150$', 'reservation/media-voiture/v3.jpg', 1),
(16, 'Toyota', 'Camry', 2, 'automatique', 'electrique', 0, 'bleu', 2020, '120$', 'reservation/media-voiture/v1.jpg', 1),
(17, 'Toyota', 'Camry', 2, 'manuelle', 'diesel', 1, 'gris', 2017, '120$', 'reservation/media-voiture/v1.jpg', 1),
(18, 'Ford', 'Focus', 5, 'manuelle', 'essence', 1, 'rouge', 2015, '150$', 'reservation/media-voiture/v3.jpg', 1),
(19, 'BMW', '7 Series', 5, 'automatique', 'diesel', 1, 'gris', 2018, '120$', 'reservation/media-voiture/v11.jpg', 1),
(20, 'BMW', '3 Series', 2, 'automatique', 'electrique', 0, 'rouge', 2021, '80$', 'reservation/media-voiture/v10.jpg', 1),
(21, 'Toyota', 'Camry', 5, 'automatique', 'diesel', 0, 'blanc', 2019, '120$', 'reservation/media-voiture/v1.jpg', 1),
(22, 'Volkswagen', 'Golf', 5, 'manuelle', 'diesel', 0, 'bleu', 2018, '80$', 'reservation/media-voiture/v6.jpg', 1),
(23, 'Toyota', 'RAV4', 5, 'automatique', 'electrique', 0, 'blanc', 2021, '130$', 'reservation/media-voiture/v2.jpg', 1),
(24, 'BMW', '7 Series', 5, 'automatique', 'diesel', 0, 'blanc', 2020, '120$', 'reservation/media-voiture/v11.jpg', 1),
(25, 'Volkswagen', 'Golf', 2, 'manuelle', 'essence', 1, 'gris', 2019, '80$', 'reservation/media-voiture/v6.jpg', 1),
(26, 'Volkswagen', 'Passat', 5, 'manuelle', 'electrique', 0, 'rouge', 2017, '100$', 'reservation/media-voiture/v8.jpg', 1),
(27, 'Volkswagen', 'Polo', 2, 'automatique', 'electrique', 1, 'gris', 2016, '50$', 'reservation/media-voiture/v7.jpg', 1),
(28, 'Toyota', 'RAV4', 5, 'manuelle', 'essence', 0, 'noir', 2017, '130$', 'reservation/media-voiture/v2.jpg', 1),
(29, 'BMW', '7 Series', 2, 'automatique', 'electrique', 1, 'bleu', 2019, '120$', 'reservation/media-voiture/v11.jpg', 1),
(30, 'Toyota', 'Corolla', 2, 'automatique', 'diesel', 1, 'rouge', 2021, '100$', 'reservation/media-voiture/v.jpg', 1),
(31, 'BMW', '7 Series', 5, 'manuelle', 'diesel', 1, 'rouge', 2021, '120$', 'reservation/media-voiture/v11.jpg', 1),
(32, 'BMW', '7 Series', 5, 'automatique', 'essence', 0, 'blanc', 2020, '120$', 'reservation/media-voiture/v11.jpg', 1),
(33, 'Ford', 'Explorer', 5, 'manuelle', 'essence', 1, 'rouge', 2018, '100$', 'reservation/media-voiture/v5.jpg', 1),
(34, 'Volkswagen', 'Polo', 2, 'automatique', 'electrique', 0, 'rouge', 2019, '50$', 'reservation/media-voiture/v7.jpg', 1),
(35, 'Volkswagen', 'Passat', 5, 'automatique', 'essence', 0, 'bleu', 2018, '100$', 'reservation/media-voiture/v8.jpg', 1),
(36, 'Toyota', 'Corolla', 5, 'manuelle', 'essence', 1, 'rouge', 2014, '100$', 'reservation/media-voiture/v.jpg', 1),
(37, 'Volkswagen', 'Passat', 5, 'manuelle', 'essence', 0, 'noir', 2016, '100$', 'reservation/media-voiture/v8.jpg', 1),
(38, 'BMW', 'X5', 2, 'manuelle', 'essence', 1, 'gris', 2020, '110$', 'reservation/media-voiture/v9.jpg', 1),
(39, 'Volkswagen', 'Golf', 5, 'manuelle', 'electrique', 1, 'gris', 2019, '80$', 'reservation/media-voiture/v6.jpg', 1),
(40, 'Volkswagen', 'Passat', 5, 'automatique', 'electrique', 0, 'noir', 2017, '100$', 'reservation/media-voiture/v8.jpg', 1),
(41, 'Toyota', 'RAV4', 2, 'manuelle', 'electrique', 0, 'gris', 2015, '130$', 'reservation/media-voiture/v2.jpg', 1),
(42, 'Toyota', 'Camry', 5, 'manuelle', 'essence', 1, 'bleu', 2020, '120$', 'reservation/media-voiture/v1.jpg', 1),
(43, 'Volkswagen', 'Polo', 5, 'automatique', 'essence', 1, 'noir', 2020, '50$', 'reservation/media-voiture/v7.jpg', 1),
(44, 'Toyota', 'RAV4', 2, 'manuelle', 'electrique', 0, 'rouge', 2020, '130$', 'reservation/media-voiture/v2.jpg', 1),
(45, 'Toyota', 'RAV4', 5, 'manuelle', 'diesel', 1, 'rouge', 2021, '130$', 'reservation/media-voiture/v2.jpg', 1),
(46, 'BMW', 'X6', 5, 'automatique', 'diesel', 0, 'bleu', 2014, '170$', 'reservation/media-voiture/v12.jpg', 1),
(47, 'Volkswagen', 'Golf', 2, 'manuelle', 'electrique', 0, 'gris', 2021, '80$', 'reservation/media-voiture/v6.jpg', 1),
(48, 'Toyota', 'Camry', 2, 'automatique', 'electrique', 0, 'rouge', 2020, '120$', 'reservation/media-voiture/v1.jpg', 1),
(49, 'Volkswagen', 'Golf', 2, 'manuelle', 'essence', 0, 'noir', 2017, '80$', 'reservation/media-voiture/v6.jpg', 1),
(50, 'Volkswagen', 'Passat', 5, 'automatique', 'diesel', 1, 'gris', 2021, '100$', 'reservation/media-voiture/v8.jpg', 1),
(51, 'BMW', 'X6', 5, 'manuelle', 'diesel', 0, 'rouge', 2015, '170$', 'reservation/media-voiture/v12.jpg', 1),
(52, 'Volkswagen', 'Passat', 5, 'automatique', 'electrique', 0, 'bleu', 2020, '100$', 'reservation/media-voiture/v8.jpg', 1),
(53, 'Toyota', 'Camry', 2, 'automatique', 'essence', 0, 'noir', 2020, '120$', 'reservation/media-voiture/v1.jpg', 1),
(54, 'BMW', '7 Series', 5, 'manuelle', 'essence', 1, 'bleu', 2019, '120$', 'reservation/media-voiture/v11.jpg', 1),
(55, 'BMW', '7 Series', 2, 'manuelle', 'essence', 1, 'rouge', 2018, '120$', 'reservation/media-voiture/v11.jpg', 1),
(56, 'Volkswagen', 'Passat', 5, 'manuelle', 'essence', 1, 'gris', 2019, '100$', 'reservation/media-voiture/v8.jpg', 1),
(57, 'Volkswagen', 'Passat', 5, 'automatique', 'diesel', 0, 'blanc', 2018, '100$', 'reservation/media-voiture/v8.jpg', 1),
(58, 'Volkswagen', 'Passat', 2, 'automatique', 'electrique', 1, 'noir', 2021, '100$', 'reservation/media-voiture/v8.jpg', 1),
(59, 'BMW', 'X5', 2, 'manuelle', 'essence', 1, 'rouge', 2016, '110$', 'reservation/media-voiture/v9.jpg', 1),
(60, 'BMW', '3 Series', 5, 'manuelle', 'diesel', 1, 'bleu', 2017, '80$', 'reservation/media-voiture/v10.jpg', 1),
(61, 'Ford', 'Explorer', 5, 'manuelle', 'electrique', 0, 'rouge', 2021, '100$', 'reservation/media-voiture/v5.jpg', 1),
(62, 'Volkswagen', 'Polo', 2, 'manuelle', 'essence', 1, 'blanc', 2020, '50$', 'reservation/media-voiture/v7.jpg', 1),
(63, 'Ford', 'Explorer', 5, 'manuelle', 'diesel', 1, 'rouge', 2017, '100$', 'reservation/media-voiture/v5.jpg', 1),
(64, 'Toyota', 'RAV4', 2, 'manuelle', 'essence', 0, 'noir', 2014, '130$', 'reservation/media-voiture/v2.jpg', 1),
(65, 'Ford', 'Focus', 2, 'automatique', 'diesel', 1, 'bleu', 2015, '150$', 'reservation/media-voiture/v3.jpg', 1),
(66, 'BMW', '7 Series', 2, 'manuelle', 'electrique', 0, 'bleu', 2021, '120$', 'reservation/media-voiture/v11.jpg', 1),
(67, 'Toyota', 'RAV4', 2, 'manuelle', 'essence', 0, 'blanc', 2014, '130$', 'reservation/media-voiture/v2.jpg', 1),
(68, 'Ford', 'Mustang', 5, 'automatique', 'essence', 0, 'bleu', 2020, '170$', 'reservation/media-voiture/v4.jpg', 1),
(69, 'Volkswagen', 'Golf', 2, 'manuelle', 'essence', 1, 'bleu', 2017, '80$', 'reservation/media-voiture/v6.jpg', 1),
(70, 'Ford', 'Explorer', 5, 'automatique', 'diesel', 0, 'blanc', 2019, '100$', 'reservation/media-voiture/v5.jpg', 1),
(71, 'Volkswagen', 'Passat', 5, 'manuelle', 'electrique', 1, 'blanc', 2015, '100$', 'reservation/media-voiture/v8.jpg', 1),
(72, 'Toyota', 'RAV4', 2, 'manuelle', 'diesel', 1, 'blanc', 2016, '130$', 'reservation/media-voiture/v2.jpg', 1),
(73, 'BMW', '3 Series', 2, 'manuelle', 'essence', 1, 'noir', 2014, '80$', 'reservation/media-voiture/v10.jpg', 1),
(74, 'BMW', '3 Series', 5, 'automatique', 'diesel', 1, 'gris', 2014, '80$', 'reservation/media-voiture/v10.jpg', 1),
(75, 'Ford', 'Focus', 2, 'automatique', 'diesel', 1, 'bleu', 2017, '150$', 'reservation/media-voiture/v3.jpg', 1),
(76, 'Toyota', 'RAV4', 2, 'manuelle', 'diesel', 1, 'gris', 2020, '130$', 'reservation/media-voiture/v2.jpg', 1),
(77, 'Ford', 'Explorer', 2, 'automatique', 'electrique', 0, 'blanc', 2019, '100$', 'reservation/media-voiture/v5.jpg', 1),
(78, 'Ford', 'Explorer', 2, 'automatique', 'essence', 0, 'bleu', 2017, '100$', 'reservation/media-voiture/v5.jpg', 1),
(79, 'Ford', 'Mustang', 2, 'automatique', 'diesel', 1, 'gris', 2020, '170$', 'reservation/media-voiture/v4.jpg', 1),
(80, 'BMW', 'X6', 5, 'manuelle', 'essence', 0, 'bleu', 2014, '170$', 'reservation/media-voiture/v12.jpg', 1),
(81, 'Volkswagen', 'Golf', 2, 'manuelle', 'diesel', 1, 'rouge', 2016, '80$', 'reservation/media-voiture/v6.jpg', 1),
(82, 'Toyota', 'RAV4', 5, 'automatique', 'diesel', 0, 'blanc', 2014, '130$', 'reservation/media-voiture/v2.jpg', 1),
(83, 'Volkswagen', 'Golf', 2, 'manuelle', 'essence', 1, 'gris', 2014, '80$', 'reservation/media-voiture/v6.jpg', 1),
(84, 'Volkswagen', 'Golf', 5, 'manuelle', 'diesel', 1, 'bleu', 2015, '80$', 'reservation/media-voiture/v6.jpg', 1),
(85, 'Ford', 'Explorer', 2, 'manuelle', 'electrique', 0, 'bleu', 2016, '100$', 'reservation/media-voiture/v5.jpg', 1),
(86, 'Toyota', 'RAV4', 2, 'automatique', 'electrique', 1, 'noir', 2018, '130$', 'reservation/media-voiture/v2.jpg', 1),
(87, 'BMW', '7 Series', 2, 'manuelle', 'diesel', 0, 'gris', 2019, '120$', 'reservation/media-voiture/v11.jpg', 1),
(88, 'Volkswagen', 'Passat', 5, 'automatique', 'electrique', 0, 'rouge', 2020, '100$', 'reservation/media-voiture/v8.jpg', 1),
(89, 'Volkswagen', 'Polo', 5, 'automatique', 'essence', 0, 'gris', 2015, '50$', 'reservation/media-voiture/v7.jpg', 1),
(90, 'Volkswagen', 'Polo', 5, 'manuelle', 'electrique', 0, 'gris', 2020, '50$', 'reservation/media-voiture/v7.jpg', 1),
(91, 'BMW', '7 Series', 5, 'automatique', 'essence', 0, 'gris', 2017, '120$', 'reservation/media-voiture/v11.jpg', 1),
(92, 'Volkswagen', 'Polo', 5, 'manuelle', 'diesel', 1, 'gris', 2019, '50$', 'reservation/media-voiture/v7.jpg', 1),
(93, 'Toyota', 'Camry', 2, 'manuelle', 'electrique', 0, 'bleu', 2018, '120$', 'reservation/media-voiture/v1.jpg', 1),
(94, 'Volkswagen', 'Passat', 2, 'manuelle', 'diesel', 1, 'blanc', 2014, '100$', 'reservation/media-voiture/v8.jpg', 1),
(95, 'Ford', 'Focus', 5, 'manuelle', 'essence', 1, 'noir', 2017, '150$', 'reservation/media-voiture/v3.jpg', 1),
(96, 'Ford', 'Explorer', 2, 'automatique', 'diesel', 0, 'blanc', 2018, '100$', 'reservation/media-voiture/v5.jpg', 1),
(97, 'BMW', '3 Series', 2, 'automatique', 'essence', 1, 'gris', 2015, '80$', 'reservation/media-voiture/v10.jpg', 1),
(98, 'BMW', '3 Series', 2, 'manuelle', 'essence', 1, 'blanc', 2015, '80$', 'reservation/media-voiture/v10.jpg', 1),
(99, 'Toyota', 'RAV4', 2, 'manuelle', 'diesel', 0, 'noir', 2015, '130$', 'reservation/media-voiture/v2.jpg', 1),
(100, 'Ford', 'Mustang', 2, 'automatique', 'diesel', 0, 'bleu', 2020, '170$', 'reservation/media-voiture/v4.jpg', 1);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nom`, `email`, `password`) VALUES
(1, 'Ibrahima CISSE ', 'khalilcisse@gmail.com', 'pbkdf2_sha256$600000$iTljpFR3cUWrwYFA9fgX2P$BpeUZ/DIFb0pMmK+QF3ugDbpCNF+ey+7yIoTs13seJk='),
(2, 'Modou Diop', 'diopmodou@gmail.com', 'pbkdf2_sha256$600000$ViiLx2dVzcsVbNiYCsuFDQ$VMIwFQc5X1U9n3iY/BrwoCNPjk+VU+0N2noTbtslAsU='),
(3, 'Laye Mbengue', 'mbenguelaye@gmail.com', 'pbkdf2_sha256$600000$h1nwWw0oKcCRPPDHSFXpoJ$C+UYPucmG9fyQ4NTCU/PBWqUG/5wXG5l+R/JyHlXeUk=');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Index pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Index pour la table `reservation_restaurant`
--
ALTER TABLE `reservation_restaurant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `utilisateur_id` (`utilisateur_id`),
  ADD KEY `fk_reservation_restaurant_id_resto` (`id_resto`);

--
-- Index pour la table `reservation_suite`
--
ALTER TABLE `reservation_suite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `utilisateur_id` (`utilisateur_id`),
  ADD KEY `fk_reservation_suite_id_suite` (`id_suite`);

--
-- Index pour la table `reservation_voiture`
--
ALTER TABLE `reservation_voiture`
  ADD PRIMARY KEY (`id`),
  ADD KEY `utilisateur_id` (`utilisateur_id`),
  ADD KEY `fk_reservation_voiture_id_voiture` (`id_voiture`);

--
-- Index pour la table `resto`
--
ALTER TABLE `resto`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `site_reservation_reservation_suite`
--
ALTER TABLE `site_reservation_reservation_suite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `site_reservation_reservation_suite_suite_id_47f72d94_fk` (`suite_id`);

--
-- Index pour la table `site_reservation_suite`
--
ALTER TABLE `site_reservation_suite`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `site_reservation_utilisateur`
--
ALTER TABLE `site_reservation_utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `site_reservation_voiture`
--
ALTER TABLE `site_reservation_voiture`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT pour la table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `reservation_restaurant`
--
ALTER TABLE `reservation_restaurant`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reservation_suite`
--
ALTER TABLE `reservation_suite`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `reservation_voiture`
--
ALTER TABLE `reservation_voiture`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `resto`
--
ALTER TABLE `resto`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `site_reservation_reservation_suite`
--
ALTER TABLE `site_reservation_reservation_suite`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_reservation_suite`
--
ALTER TABLE `site_reservation_suite`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT pour la table `site_reservation_utilisateur`
--
ALTER TABLE `site_reservation_utilisateur`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `site_reservation_voiture`
--
ALTER TABLE `site_reservation_voiture`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `reservation_restaurant`
--
ALTER TABLE `reservation_restaurant`
  ADD CONSTRAINT `fk_reservation_restaurant_id_resto` FOREIGN KEY (`id_resto`) REFERENCES `resto` (`id`),
  ADD CONSTRAINT `reservation_restaurant_ibfk_1` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateur` (`id`);

--
-- Contraintes pour la table `reservation_suite`
--
ALTER TABLE `reservation_suite`
  ADD CONSTRAINT `fk_reservation_suite_id_suite` FOREIGN KEY (`id_suite`) REFERENCES `site_reservation_suite` (`id`),
  ADD CONSTRAINT `reservation_suite_ibfk_1` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateur` (`id`);

--
-- Contraintes pour la table `reservation_voiture`
--
ALTER TABLE `reservation_voiture`
  ADD CONSTRAINT `fk_reservation_voiture_id_voiture` FOREIGN KEY (`id_voiture`) REFERENCES `site_reservation_voiture` (`id`),
  ADD CONSTRAINT `reservation_voiture_ibfk_1` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateur` (`id`);

--
-- Contraintes pour la table `site_reservation_reservation_suite`
--
ALTER TABLE `site_reservation_reservation_suite`
  ADD CONSTRAINT `site_reservation_reservation_suite_suite_id_47f72d94_fk` FOREIGN KEY (`suite_id`) REFERENCES `site_reservation_suite` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
