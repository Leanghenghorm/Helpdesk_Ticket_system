-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 18, 2025 at 11:23 AM
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
-- Database: `uhelp_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `notice` longtext NOT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `primary_color` varchar(255) DEFAULT NULL,
  `secondary_color` varchar(255) DEFAULT NULL,
  `announcementday` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apptitles`
--

CREATE TABLE `apptitles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `searchtitle` varchar(255) NOT NULL,
  `searchsub` varchar(255) DEFAULT NULL,
  `featurecheck` varchar(255) NOT NULL,
  `featuretitle` varchar(255) NOT NULL,
  `featuresub` varchar(255) DEFAULT NULL,
  `testimonialcheck` varchar(255) NOT NULL,
  `testimonialtitle` varchar(255) NOT NULL,
  `testimonialsub` varchar(255) DEFAULT NULL,
  `faqcheck` varchar(255) NOT NULL,
  `faqtitle` varchar(255) NOT NULL,
  `faqsub` varchar(255) DEFAULT NULL,
  `articlecheck` varchar(255) NOT NULL,
  `articletitle` varchar(255) NOT NULL,
  `articlesub` varchar(255) DEFAULT NULL,
  `checkbox` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `image4` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apptitles`
--

INSERT INTO `apptitles` (`id`, `searchtitle`, `searchsub`, `featurecheck`, `featuretitle`, `featuresub`, `testimonialcheck`, `testimonialtitle`, `testimonialsub`, `faqcheck`, `faqtitle`, `faqsub`, `articlecheck`, `articletitle`, `articlesub`, `checkbox`, `image`, `title`, `image1`, `image2`, `image3`, `image4`, `created_at`, `updated_at`) VALUES
(1, 'Looking For help?', 'Type your query or submit your ticket', 'on', 'Why Choose US?', 'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 'on', 'Check Out Client Says', 'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 'on', 'Check Out FAQ’s', 'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 'on', 'Check Out Recent Articles', 'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', NULL, NULL, 'Ticket System', NULL, NULL, NULL, NULL, '2025-09-17 21:22:59', '2025-09-18 01:53:59');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext NOT NULL,
  `tags` longtext NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `articleslug` longtext DEFAULT NULL,
  `subcategory` longtext DEFAULT NULL,
  `featureimage` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `privatemode` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `category_id`, `message`, `tags`, `views`, `articleslug`, `subcategory`, `featureimage`, `status`, `privatemode`, `created_at`, `updated_at`) VALUES
(1, 'Maecenas mauris lectus, lobortis et purus mattis, blandit dictum tellus.', 1, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(2, 'In eleifend velit vitae libero sollicitudin euismod.', 1, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(3, 'Maecenas mauris lectus, lobortis et purus mattis, blandit dictum tellus.', 1, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(4, 'Cras fringilla ipsum magna, in fringilla dui commodo a.', 1, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ac faucibus odio.', 1, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(6, 'Maecenas non lorem quis tellus placerat varius.', 1, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(7, 'Morbi velit neque, semper quis lorem quis, efficitur dignissim ipsum ?', 1, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(8, 'Etiam vehicula luctus fermentum. In vel metus congue, pulvinar lectus vel, fermentum dui.', 2, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 51, NULL, NULL, NULL, 'Published', NULL, '2022-01-06 23:13:30', '2025-09-18 00:18:29'),
(9, 'Maecenas ante orci, egestas ut aliquet sit amet, sagittis a magna.', 2, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(10, 'Ut ullamcorperjusto sapien, in cursus libero viverra eget. Vivamus auctor imperdiet urna, at pulvinar leoposuere laoreet.', 2, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(11, 'Suspendisse neque nisl, fringilla at iaculis scelerisque, ornare vel dolor. Utet   pulvinar   nunc.', 2, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(12, 'Pellentesque fringilla mollis efficitur.', 2, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 51, NULL, NULL, NULL, 'Published', NULL, '2022-01-06 23:13:30', '2025-09-18 00:23:38'),
(13, 'Morbi velit neque, semper quis lorem quis, efficitur dignissim ipsum.', 2, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(14, 'Ut ac loremsed turpis imperdiet eleifend sit amet id sapien.', 2, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(15, 'Nulla facilisi. Aenean congue fringilla justout aliquam.', 3, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(16, 'Nunc vulputate neque vitae justo facilisis, non condimentumante sagittis.', 3, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30');
INSERT INTO `articles` (`id`, `title`, `category_id`, `message`, `tags`, `views`, `articleslug`, `subcategory`, `featureimage`, `status`, `privatemode`, `created_at`, `updated_at`) VALUES
(17, 'Maecenas tincidunt est efficiturligula euismod, sit amet ornare est vulputate.', 3, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(18, 'Duis vehicula mi vel mi pretium, a viverra erat efficitur.', 3, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(19, 'Cras aliquamest ac eros varius, id iaculis dui auctor.', 3, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(20, 'Duis pretium neque ligula, et pulvinar mi placeratet. Nulla nec nunc sit amet nunc posuere vestibulum.', 3, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(21, 'ellentesquescelerisque fermentum erat, id posuere justo pulvinar ut.', 3, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30');

-- --------------------------------------------------------

--
-- Table structure for table `articles_likes`
--

CREATE TABLE `articles_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `article_id` bigint(20) UNSIGNED NOT NULL,
  `rating` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles_likes`
--

INSERT INTO `articles_likes` (`id`, `user_id`, `article_id`, `rating`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(2, 1, 1, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(3, 1, 1, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(4, 1, 1, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(5, 1, 1, -1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(6, 1, 1, -1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(7, 1, 1, -1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(8, 1, 1, -1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(9, 1, 1, -1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(10, 1, 2, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(11, 1, 2, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(12, 1, 2, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(13, 1, 2, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(14, 1, 8, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(15, 1, 8, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(16, 1, 8, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(17, 1, 8, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(18, 1, 8, -1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(19, 1, 8, -1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(20, 1, 8, -1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(21, 1, 8, -1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(22, 1, 8, -1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(23, 1, 9, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(24, 1, 9, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(25, 1, 9, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(26, 1, 9, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(27, 1, 15, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(28, 1, 15, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(29, 1, 15, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(30, 1, 15, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(31, 1, 15, -1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(32, 1, 15, -1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(33, 1, 15, -1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(34, 1, 15, -1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(35, 1, 15, -1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(36, 1, 16, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(37, 1, 16, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(38, 1, 16, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(39, 1, 16, 1, '2022-01-06 23:13:30', '2022-01-06 23:13:30');

-- --------------------------------------------------------

--
-- Table structure for table `article_comments`
--

CREATE TABLE `article_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `article_replies`
--

CREATE TABLE `article_replies` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_comment_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bussinesshours`
--

CREATE TABLE `bussinesshours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_id` varchar(255) DEFAULT NULL,
  `weeks` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `starttime` varchar(255) DEFAULT NULL,
  `endtime` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `callactions`
--

CREATE TABLE `callactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `callcheck` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `buttonname` varchar(255) NOT NULL,
  `buttonurl` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `callactions`
--

INSERT INTO `callactions` (`id`, `callcheck`, `title`, `subtitle`, `buttonname`, `buttonurl`, `image`, `created_at`, `updated_at`) VALUES
(1, 'on', 'Need Support & Response within 24 hours?', 'Excepteur sint occaecat cupidatat non proident mollit anim id est laborum', 'Open Ticket', '#', NULL, '2025-09-17 21:22:59', '2025-09-17 21:22:59');

-- --------------------------------------------------------

--
-- Table structure for table `cannedmessages`
--

CREATE TABLE `cannedmessages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `messages` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display` varchar(255) DEFAULT NULL,
  `categoryslug` longtext DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `display`, `categoryslug`, `priority`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Ticket Support', 'both', NULL, NULL, '1', '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(2, 'Securities', 'knowledge', NULL, NULL, '1', '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(3, 'Sales & Services', 'both', NULL, NULL, '1', '2022-01-06 23:13:30', '2022-01-06 23:13:30');

-- --------------------------------------------------------

--
-- Table structure for table `category_category_user`
--

CREATE TABLE `category_category_user` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `category_user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `cust_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment` longtext NOT NULL,
  `display` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contactforms`
--

CREATE TABLE `contactforms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 'AF', NULL, NULL),
(2, 'Åland Islands', 'AX', NULL, NULL),
(3, 'Albania', 'AL', NULL, NULL),
(4, 'Algeria', 'DZ', NULL, NULL),
(5, 'American Samoa', 'AS', NULL, NULL),
(6, 'Andorra', 'AD', NULL, NULL),
(7, 'Angola', 'AO', NULL, NULL),
(8, 'Anguilla', 'AI', NULL, NULL),
(9, 'Antarctica', 'AQ', NULL, NULL),
(10, 'Antigua and Barbuda', 'AG', NULL, NULL),
(11, 'Argentina', 'AR', NULL, NULL),
(12, 'Armenia', 'AM', NULL, NULL),
(13, 'Aruba', 'AW', NULL, NULL),
(14, 'Australia', 'AU', NULL, NULL),
(15, 'Austria', 'AT', NULL, NULL),
(16, 'Azerbaijan', 'AZ', NULL, NULL),
(17, 'Bahamas', 'BS', NULL, NULL),
(18, 'Bahrain', 'BH', NULL, NULL),
(19, 'Bangladesh', 'BD', NULL, NULL),
(20, 'Barbados', 'BB', NULL, NULL),
(21, 'Belarus', 'BY', NULL, NULL),
(22, 'Belgium', 'BE', NULL, NULL),
(23, 'Belize', 'BZ', NULL, NULL),
(24, 'Benin', 'BJ', NULL, NULL),
(25, 'Bermuda', 'BM', NULL, NULL),
(26, 'Bhutan', 'BT', NULL, NULL),
(27, 'Bolivia, Plurinational State of', 'BO', NULL, NULL),
(28, 'Bonaire, Sint Eustatius and Saba', 'BQ', NULL, NULL),
(29, 'Bosnia and Herzegovina', 'BA', NULL, NULL),
(30, 'Botswana', 'BW', NULL, NULL),
(31, 'Bouvet Island', 'BV', NULL, NULL),
(32, 'Brazil', 'BR', NULL, NULL),
(33, 'British Indian Ocean Territory', 'IO', NULL, NULL),
(34, 'Brunei Darussalam', 'BN', NULL, NULL),
(35, 'Bulgaria', 'BG', NULL, NULL),
(36, 'Burkina Faso', 'BF', NULL, NULL),
(37, 'Burundi', 'BI', NULL, NULL),
(38, 'Cambodia', 'KH', NULL, NULL),
(39, 'Cameroon', 'CM', NULL, NULL),
(40, 'Canada', 'CA', NULL, NULL),
(41, 'Cape Verde', 'CV', NULL, NULL),
(42, 'Cayman Islands', 'KY', NULL, NULL),
(43, 'Central African Republic', 'CF', NULL, NULL),
(44, 'Chad', 'TD', NULL, NULL),
(45, 'Chile', 'CL', NULL, NULL),
(46, 'China', 'CN', NULL, NULL),
(47, 'Christmas Island', 'CX', NULL, NULL),
(48, 'Cocos (Keeling) Islands', 'CC', NULL, NULL),
(49, 'Colombia', 'CO', NULL, NULL),
(50, 'Comoros', 'KM', NULL, NULL),
(51, 'Congo', 'CG', NULL, NULL),
(52, 'Congo, the Democratic Republic of the', 'CD', NULL, NULL),
(53, 'Cook Islands', 'CK', NULL, NULL),
(54, 'Costa Rica', 'CR', NULL, NULL),
(55, 'Côte d\'Ivoire', 'CI', NULL, NULL),
(56, 'Croatia', 'HR', NULL, NULL),
(57, 'Cuba', 'CU', NULL, NULL),
(58, 'Curaçao', 'CW', NULL, NULL),
(59, 'Cyprus', 'CY', NULL, NULL),
(60, 'Czech Republic', 'CZ', NULL, NULL),
(61, 'Denmark', 'DK', NULL, NULL),
(62, 'Djibouti', 'DJ', NULL, NULL),
(63, 'Dominica', 'DM', NULL, NULL),
(64, 'Dominican Republic', 'DO', NULL, NULL),
(65, 'Ecuador', 'EC', NULL, NULL),
(66, 'Egypt', 'EG', NULL, NULL),
(67, 'El Salvador', 'SV', NULL, NULL),
(68, 'Equatorial Guinea', 'GQ', NULL, NULL),
(69, 'Eritrea', 'ER', NULL, NULL),
(70, 'Estonia', 'EE', NULL, NULL),
(71, 'Ethiopia', 'ET', NULL, NULL),
(72, 'Falkland Islands (Malvinas)', 'FK', NULL, NULL),
(73, 'Faroe Islands', 'FO', NULL, NULL),
(74, 'Fiji', 'FJ', NULL, NULL),
(75, 'Finland', 'FI', NULL, NULL),
(76, 'France', 'FR', NULL, NULL),
(77, 'French Guiana', 'GF', NULL, NULL),
(78, 'French Polynesia', 'PF', NULL, NULL),
(79, 'French Southern Territories', 'TF', NULL, NULL),
(80, 'Gabon', 'GA', NULL, NULL),
(81, 'Gambia', 'GM', NULL, NULL),
(82, 'Georgia', 'GE', NULL, NULL),
(83, 'Germany', 'DE', NULL, NULL),
(84, 'Ghana', 'GH', NULL, NULL),
(85, 'Gibraltar', 'GI', NULL, NULL),
(86, 'Greece', 'GR', NULL, NULL),
(87, 'Greenland', 'GL', NULL, NULL),
(88, 'Grenada', 'GD', NULL, NULL),
(89, 'Guadeloupe', 'GP', NULL, NULL),
(90, 'Guam', 'GU', NULL, NULL),
(91, 'Guatemala', 'GT', NULL, NULL),
(92, 'Guernsey', 'GG', NULL, NULL),
(93, 'Guinea', 'GN', NULL, NULL),
(94, 'Guinea-Bissau', 'GW', NULL, NULL),
(95, 'Guyana', 'GY', NULL, NULL),
(96, 'Haiti', 'HT', NULL, NULL),
(97, 'Heard Island and McDonald Mcdonald Islands', 'HM', NULL, NULL),
(98, 'Holy See (Vatican City State)', 'VA', NULL, NULL),
(99, 'Honduras', 'HN', NULL, NULL),
(100, 'Hong Kong', 'HK', NULL, NULL),
(101, 'Hungary', 'HU', NULL, NULL),
(102, 'Iceland', 'IS', NULL, NULL),
(103, 'India', 'IN', NULL, NULL),
(104, 'Indonesia', 'ID', NULL, NULL),
(105, 'Iran, Islamic Republic of', 'IR', NULL, NULL),
(106, 'Iraq', 'IQ', NULL, NULL),
(107, 'Ireland', 'IE', NULL, NULL),
(108, 'Isle of Man', 'IM', NULL, NULL),
(109, 'Israel', 'IL', NULL, NULL),
(110, 'Italy', 'IT', NULL, NULL),
(111, 'Jamaica', 'JM', NULL, NULL),
(112, 'Japan', 'JP', NULL, NULL),
(113, 'Jersey', 'JE', NULL, NULL),
(114, 'Jordan', 'JO', NULL, NULL),
(115, 'Kazakhstan', 'KZ', NULL, NULL),
(116, 'Kenya', 'KE', NULL, NULL),
(117, 'Kiribati', 'KI', NULL, NULL),
(118, 'Korea, Democratic People\'s Republic of', 'KP', NULL, NULL),
(119, 'Korea, Republic of', 'KR', NULL, NULL),
(120, 'Kuwait', 'KW', NULL, NULL),
(121, 'Kyrgyzstan', 'KG', NULL, NULL),
(122, 'Lao People\'s Democratic Republic', 'LA', NULL, NULL),
(123, 'Latvia', 'LV', NULL, NULL),
(124, 'Lebanon', 'LB', NULL, NULL),
(125, 'Lesotho', 'LS', NULL, NULL),
(126, 'Liberia', 'LR', NULL, NULL),
(127, 'Libya', 'LY', NULL, NULL),
(128, 'Liechtenstein', 'LI', NULL, NULL),
(129, 'Lithuania', 'LT', NULL, NULL),
(130, 'Luxembourg', 'LU', NULL, NULL),
(131, 'Macao', 'MO', NULL, NULL),
(132, 'Macedonia, the Former Yugoslav Republic of', 'MK', NULL, NULL),
(133, 'Madagascar', 'MG', NULL, NULL),
(134, 'Malawi', 'MW', NULL, NULL),
(135, 'Malaysia', 'MY', NULL, NULL),
(136, 'Maldives', 'MV', NULL, NULL),
(137, 'Mali', 'ML', NULL, NULL),
(138, 'Malta', 'MT', NULL, NULL),
(139, 'Marshall Islands', 'MH', NULL, NULL),
(140, 'Martinique', 'MQ', NULL, NULL),
(141, 'Mauritania', 'MR', NULL, NULL),
(142, 'Mauritius', 'MU', NULL, NULL),
(143, 'Mayotte', 'YT', NULL, NULL),
(144, 'Mexico', 'MX', NULL, NULL),
(145, 'Micronesia, Federated States of', 'FM', NULL, NULL),
(146, 'Moldova, Republic of', 'MD', NULL, NULL),
(147, 'Monaco', 'MC', NULL, NULL),
(148, 'Mongolia', 'MN', NULL, NULL),
(149, 'Montenegro', 'ME', NULL, NULL),
(150, 'Montserrat', 'MS', NULL, NULL),
(151, 'Morocco', 'MA', NULL, NULL),
(152, 'Mozambique', 'MZ', NULL, NULL),
(153, 'Myanmar', 'MM', NULL, NULL),
(154, 'Namibia', 'NA', NULL, NULL),
(155, 'Nauru', 'NR', NULL, NULL),
(156, 'Nepal', 'NP', NULL, NULL),
(157, 'Netherlands', 'NL', NULL, NULL),
(158, 'New Caledonia', 'NC', NULL, NULL),
(159, 'New Zealand', 'NZ', NULL, NULL),
(160, 'Nicaragua', 'NI', NULL, NULL),
(161, 'Niger', 'NE', NULL, NULL),
(162, 'Nigeria', 'NG', NULL, NULL),
(163, 'Niue', 'NU', NULL, NULL),
(164, 'Norfolk Island', 'NF', NULL, NULL),
(165, 'Northern Mariana Islands', 'MP', NULL, NULL),
(166, 'Norway', 'NO', NULL, NULL),
(167, 'Oman', 'OM', NULL, NULL),
(168, 'Pakistan', 'PK', NULL, NULL),
(169, 'Palau', 'PW', NULL, NULL),
(170, 'Palestine, State of', 'PS', NULL, NULL),
(171, 'Panama', 'PA', NULL, NULL),
(172, 'Papua New Guinea', 'PG', NULL, NULL),
(173, 'Paraguay', 'PY', NULL, NULL),
(174, 'Peru', 'PE', NULL, NULL),
(175, 'Philippines', 'PH', NULL, NULL),
(176, 'Pitcairn', 'PN', NULL, NULL),
(177, 'Poland', 'PL', NULL, NULL),
(178, 'Portugal', 'PT', NULL, NULL),
(179, 'Puerto Rico', 'PR', NULL, NULL),
(180, 'Qatar', 'QA', NULL, NULL),
(181, 'Réunion', 'RE', NULL, NULL),
(182, 'Romania', 'RO', NULL, NULL),
(183, 'Russian Federation', 'RU', NULL, NULL),
(184, 'Rwanda', 'RW', NULL, NULL),
(185, 'Saint Barthélemy', 'BL', NULL, NULL),
(186, 'Saint Helena, Ascension and Tristan da Cunha', 'SH', NULL, NULL),
(187, 'Saint Kitts and Nevis', 'KN', NULL, NULL),
(188, 'Saint Lucia', 'LC', NULL, NULL),
(189, 'Saint Martin (French part)', 'MF', NULL, NULL),
(190, 'Saint Pierre and Miquelon', 'PM', NULL, NULL),
(191, 'Saint Vincent and the Grenadines', 'VC', NULL, NULL),
(192, 'Samoa', 'WS', NULL, NULL),
(193, 'San Marino', 'SM', NULL, NULL),
(194, 'Sao Tome and Principe', 'ST', NULL, NULL),
(195, 'Saudi Arabia', 'SA', NULL, NULL),
(196, 'Senegal', 'SN', NULL, NULL),
(197, 'Serbia', 'RS', NULL, NULL),
(198, 'Seychelles', 'SC', NULL, NULL),
(199, 'Sierra Leone', 'SL', NULL, NULL),
(200, 'Singapore', 'SG', NULL, NULL),
(201, 'Sint Maarten (Dutch part)', 'SX', NULL, NULL),
(202, 'Slovakia', 'SK', NULL, NULL),
(203, 'Slovenia', 'SI', NULL, NULL),
(204, 'Solomon Islands', 'SB', NULL, NULL),
(205, 'Somalia', 'SO', NULL, NULL),
(206, 'South Africa', 'ZA', NULL, NULL),
(207, 'South Georgia and the South Sandwich Islands', 'GS', NULL, NULL),
(208, 'South Sudan', 'SS', NULL, NULL),
(209, 'Spain', 'ES', NULL, NULL),
(210, 'Sri Lanka', 'LK', NULL, NULL),
(211, 'Sudan', 'SD', NULL, NULL),
(212, 'Suriname', 'SR', NULL, NULL),
(213, 'Svalbard and Jan Mayen', 'SJ', NULL, NULL),
(214, 'Swaziland', 'SZ', NULL, NULL),
(215, 'Sweden', 'SE', NULL, NULL),
(216, 'Switzerland', 'CH', NULL, NULL),
(217, 'Syrian Arab Republic', 'SY', NULL, NULL),
(218, 'Taiwan', 'TW', NULL, NULL),
(219, 'Tajikistan', 'TJ', NULL, NULL),
(220, 'Tanzania, United Republic of', 'TZ', NULL, NULL),
(221, 'Thailand', 'TH', NULL, NULL),
(222, 'Timor-Leste', 'TL', NULL, NULL),
(223, 'Togo', 'TG', NULL, NULL),
(224, 'Tokelau', 'TK', NULL, NULL),
(225, 'Tonga', 'TO', NULL, NULL),
(226, 'Trinidad and Tobago', 'TT', NULL, NULL),
(227, 'Tunisia', 'TN', NULL, NULL),
(228, 'Turkey', 'TR', NULL, NULL),
(229, 'Turkmenistan', 'TM', NULL, NULL),
(230, 'Turks and Caicos Islands', 'TC', NULL, NULL),
(231, 'Tuvalu', 'TV', NULL, NULL),
(232, 'Uganda', 'UG', NULL, NULL),
(233, 'Ukraine', 'UA', NULL, NULL),
(234, 'United Arab Emirates', 'AE', NULL, NULL),
(235, 'United Kingdom', 'GB', NULL, NULL),
(236, 'United States', 'US', NULL, NULL),
(237, 'United States Minor Outlying Islands', 'UM', NULL, NULL),
(238, 'Uruguay', 'UY', NULL, NULL),
(239, 'Uzbekistan', 'UZ', NULL, NULL),
(240, 'Vanuatu', 'VU', NULL, NULL),
(241, 'Venezuela, Bolivarian Republic of', 'VE', NULL, NULL),
(242, 'Viet Nam', 'VN', NULL, NULL),
(243, 'Virgin Islands, British', 'VG', NULL, NULL),
(244, 'Virgin Islands, U.S.', 'VI', NULL, NULL),
(245, 'Wallis and Futuna', 'WF', NULL, NULL),
(246, 'Western Sahara', 'EH', NULL, NULL),
(247, 'Yemen', 'YE', NULL, NULL),
(248, 'Zambia', 'ZM', NULL, NULL),
(249, 'Zimbabwe', 'ZW', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customcssjs`
--

CREATE TABLE `customcssjs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customcssjs`
--

INSERT INTO `customcssjs` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'CUSTOMCHATENABLE', 'disable', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(2, 'CUSTOMCHATUSER', 'public', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(3, 'CUSTOMCHAT', NULL, '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(4, 'CUSTOMJS', NULL, '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(5, 'CUSTOMCSS', NULL, '2025-09-17 21:22:59', '2025-09-17 21:22:59');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` longtext DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `provider_id` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `logintype` varchar(255) DEFAULT NULL,
  `userType` varchar(255) NOT NULL,
  `voilated` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(255) DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `inactive_date` datetime DEFAULT NULL,
  `last_logins_at` datetime DEFAULT NULL,
  `last_login_ip` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `firstname`, `lastname`, `username`, `gender`, `provider_id`, `email`, `logintype`, `userType`, `voilated`, `status`, `phone`, `image`, `verified`, `password`, `last_login_at`, `inactive_date`, `last_logins_at`, `last_login_ip`, `country`, `timezone`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'user01', 'user', 'user01		', 'Male', NULL, 'leanghengnp@gmail.com', NULL, 'superadmin', NULL, '1', NULL, NULL, 1, '$2a$12$qrv/ey7HL8WOxDyHfUGeVukdsOhDM4yF0XtOIz/hzAkT9SGkOPqUO', '2025-09-18 07:23:54', NULL, '2025-09-18 07:23:54', '127.0.0.1', NULL, NULL, NULL, '2025-09-17 00:23:54', '2025-09-18 00:23:54'),
(2, 'Visotthikun', 'Yeang', 'Visotthikun Yeang', NULL, NULL, 'visotthikun122@gmail.com', NULL, 'Customer', NULL, '1', NULL, NULL, 1, '$2y$10$.dE2qblaN5oVoMr7cUcoBef.XIW/uMp0AAjuuue1umANrs.Ohp/x.', '2025-09-18 09:15:54', NULL, '2025-09-18 09:15:54', '127.0.0.1', 'United States', 'Asia/Phnom_Penh', NULL, '2025-09-18 02:10:56', '2025-09-18 02:15:54');

-- --------------------------------------------------------

--
-- Table structure for table `customer_settings`
--

CREATE TABLE `customer_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `custs_id` bigint(20) UNSIGNED NOT NULL,
  `darkmode` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_settings`
--

INSERT INTO `customer_settings` (`id`, `custs_id`, `darkmode`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, '2025-09-18 02:10:57', '2025-09-18 02:10:57');

-- --------------------------------------------------------

--
-- Table structure for table `customfields`
--

CREATE TABLE `customfields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fieldnames` varchar(255) NOT NULL,
  `fieldtypes` varchar(255) NOT NULL,
  `fieldoptions` varchar(255) DEFAULT NULL,
  `displaytypes` varchar(255) DEFAULT NULL,
  `fieldrequired` tinyint(1) NOT NULL DEFAULT 0,
  `fieldprivacy` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customizeerrors`
--

CREATE TABLE `customizeerrors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `errorname` varchar(255) NOT NULL,
  `errorvalue` varchar(10000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customizeerrors`
--

INSERT INTO `customizeerrors` (`id`, `errorname`, `errorvalue`, `created_at`, `updated_at`) VALUES
(1, '404title', 'Page Not Found', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(2, '404subtitle', 'Request Page Does Not Exists', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(3, '503title', 'Maintenance Mode', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(4, '503subtitle', 'We will be back soon', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(5, '503description', 'Please wait this site is undermaintenance', '2025-09-17 21:22:59', '2025-09-17 21:22:59');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `departmentname` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `code`, `title`, `subject`, `body`, `created_at`, `updated_at`) VALUES
(1, 'customer_sendmail_contactus', 'Users receive e-mail from Admin for submitting contact_us form.', 'Thank you for contacting us.', '<p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">Dear {{Contact_name}},</p>\n                <p class=\"root-block-node\" data-paragraphid=\"17\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;This to inform you that we have recieved your details successfully. Our team will respond shortly.</p><p class=\"root-block-node\" data-paragraphid=\"17\" data-from-init=\"true\" data-changed=\"false\"><br></p>\n                <p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p>\n                <p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(2, 'admin_sendmail_contactus', 'Admin receives e-mails from customers through contact_us form', 'Received contact details from a new user.', '<p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">Dear Admin,</p>\n                <p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp;Received contact information from new customer.</p>\n                <p>&nbsp; &nbsp;Name: {{Contact_name}}</p>\n                <p>&nbsp; &nbsp;Email: {{Contact_email}}</p><p>&nbsp; &nbsp;Phone Number: {{Contact_phone}}</p>\n                <p>&nbsp; &nbsp;Subject: {{Contact_subject}}</p><p>&nbsp; &nbsp;Message:{{Contact_message}}</p>\n                <p><br></p>\n                <p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p>\n                <p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(3, 'customer_sendmail_verification', 'Customers receive e-mail, when they get registered with the application.', 'Thanks you for registering. Please verify your email.', '<p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">Dear {{username}},</p><p>\n                </p><p class=\"root-block-node\" data-paragraphid=\"23\" data-from-init=\"true\" data-changed=\"false\"><span class=\"red-underline\" data-startindex=\"0\" data-endindex=\"2\" data-paragraphid=\"23\">&nbsp; &nbsp;</span>Thank you for registering as our customer. Be a part of our family. Before you log in to your portal, please verify your email by clicking this&nbsp;link:-&nbsp;<a href=\"{{email_verify_url}}\" style=\"color: var(--primary); outline: 0px;\">VerifyLink</a>.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(4, 'customer_send_ticket_created', 'Send email to customer, when a ticket is created.', 'We received your ticket successfully.', '<p>Dear {{ticket_username}},</p><p><br></p><p>We would like to acknowledge that we have received your request and a ticket has been created.</p><p>A support representative will be reviewing your request and will send you a personal response.(usually within 24 hours).</p><p><br></p><p>To view the status of the ticket or add comments, please visit</p><p><a href=\"{{ticket_customer_url}}\" target=\"_blank\">{{ticket_customer_url}}</a></p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p><p>Thank you for your patience.</p><p><br></p><p>Sincerely,</p><p>Support Team</p>', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(5, 'admin_send_email_ticket_created', 'Send email to admin when ticket is created', 'New ticket has been created.', '<p>Dear Admin,</p><p>A ticket has been created with Ticket ID {{ticket_id}}.&nbsp;<br></p><p>Assign the ticket to support representatives who will be reviewing the request.</p><p>To view the status of the ticket or add comments, please visit,</p><p><a href=\"{{ticket_admin_url}}\" target=\"_blank\">{{ticket_admin_url}}</a></p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(6, 'customer_send_ticket_reply', 'Send email to customers, when they get reply to ticket.', 'You got reply for the ticket', '<p>Our support representatives have started reviewing your request.</p><p>Please visit the application to&nbsp;<a href=\"{{ticket_customer_url}}\" style=\"\">ViewTicket</a></p><p>Thank you for reaching us</p><p>Your Ticket Title: {{ticket_title}}<br></p><p>Your Ticket ID: {{ticket_id}}</p><p>Recent Reply: {{comment}}</p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(7, 'customer_rating', 'Customer rating for agents.', 'Your ticket {{ticket_id}} has been closed succesfully.', '<p class=\"root-block-node\" data-paragraphid=\"33\" data-from-init=\"true\" data-changed=\"false\">Dear {{ticket_username}},</p><p class=\"root-block-node\" data-paragraphid=\"34\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Your ticket {{ticket_id}} has been closed by our support team. We’re always looking for ways to improve and would love to know how we did recently.</p><p class=\"root-block-node\" data-paragraphid=\"34\" data-from-init=\"true\" data-changed=\"false\">How would you rate the support you received?</p><p>Please click on the link to rate us:&nbsp;<a href=\"{{ratinglink}}\">Click here</a></p><p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"45\"><br></p><p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"45\">Sincerely,<br></p><p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"45\">Support Team</p>', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(8, 'customer_send_ticket_reopen', 'Send email to customer, when ticket is re-opened!', 'Your ticket has been reopened succesfully', '<p>Thank you for reaching us again&nbsp;</p><p>Our support representatives will be reviewing your request again and will send you a personal response within 1-2 business working days.<br></p><p><br> Title : {{ticket_title}}<br>Ticket URL : <a href=\"{{ticket_customer_url}}\">VIEW Ticket</a></p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(9, 'forget_password', 'When customer/admin or any user forgets password', 'Password Reset Email Link', '<p class=\"root-block-node\" data-paragraphid=\"51\" data-from-init=\"true\" data-changed=\"false\">Hi there,</p><p class=\"root-block-node\" data-paragraphid=\"53\" data-from-init=\"true\" data-changed=\"false\">Looks like you lost your password.</p><p class=\"root-block-node\" data-paragraphid=\"52\" data-from-init=\"true\" data-changed=\"false\">To regain access to your account</p><p>Please click the link below to reset your account password.</p><p><a href=\"{{reset_password_url}}\">Reset Password</a>&nbsp;</p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>\n                ', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(10, 'customer_send_registration_details', 'Send email to customer, when customer is created by admin', 'Your account has been successfully created by our support team. ', '<p>Dear {{username}},</p><p>Your account has been successfully created by our support team.</p><p>Please visit the URL {{url}} and use the below credentials to access your account.</p><p> Email : {{useremail}}<br>Name : {{username}}<br>Password : {{userpassword}}</p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(11, 'employee_send_registration_details', 'Send email to employee, when employee is created by admin', 'Your account has been successfully created by our support team. ', '<p>Dear {{username}},</p><p>Your account has been successfully created by our support team.</p><p>Please visit the URL {{url}} and use the below credentials to access your account.</p><p> Email : {{useremail}}<br>Name : {{username}}<br>Password : {{userpassword}}</p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(12, 'customer_send_guestticket_created', 'Send email to guest, when guest-ticket is created.', 'We received your guest ticket successfully.', '<p>Dear {{ticket_username}},</p><p><br></p><p>We would like to acknowledge that we have received your request and a gust ticket has been created.</p><p>A support representative will be reviewing your request and will send you a personal response 1-2 bussiness days.</p><p><br></p><p>To view the status of the ticket or add comments, please visit</p><p><a href=\"{{ticket_customer_url}}\" target=\"_blank\">{{ticket_customer_url}}</a></p><p>Note:- Without logging into the above link, you cannot access your ticket.</p><p><br></p><p>We appreciate your patience.</p><p><br></p><p>Sincerely,</p><p>Support Team</p>', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(13, 'customer_send_ticket_overdue', 'Send email to employees, when Ticket is Overdue.', 'Your ticket status has been overdue.', '<p class=\"root-block-node\" data-paragraphid=\"2\" data-from-init=\"true\" data-changed=\"false\">Dear Admin Panel Users,</p><p>\n                </p><p class=\"root-block-node\" data-paragraphid=\"10\" data-from-init=\"true\" data-changed=\"false\">This ticket status has been overdue for {{ticket_overduetime}} days. </p><p class=\"root-block-node\" data-paragraphid=\"10\" data-from-init=\"true\" data-changed=\"false\">Please give attention to the ticket. The customer is waiting for your response.</p><p class=\"root-block-node\" data-paragraphid=\"10\" data-from-init=\"true\" data-changed=\"false\"><br></p><p> Title : {{ticket_title}}<br>Ticket URL : <a href=\"{{ticket_admin_url}}\">VIEW Ticket</a></p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(14, 'customer_send_ticket_response', 'When the customer does not respond to the ticket, an email is sent to the customer.', 'Waiting for your response to the ticket.', '<p>Dear {{ticket_username}},<br></p><p class=\"root-block-node\" data-paragraphid=\"6\" data-from-init=\"true\" data-changed=\"false\">Your ticket is in an idle state. Our team is waiting for your response.</p><p class=\"root-block-node\" data-paragraphid=\"6\" data-from-init=\"true\" data-changed=\"false\">If you do not respond to this ticket {{ticket_id}}, it will be automatically closed after {{ticket_closingtime}} days.</p><p class=\"root-block-node\" data-paragraphid=\"2\" data-from-init=\"true\" data-changed=\"false\">\n                </p><p class=\"root-block-node\" data-paragraphid=\"8\" data-from-init=\"true\" data-changed=\"true\"><br></p><p> Title : {{ticket_title}}<br>Ticket URL : <a href=\"{{ticket_customer_url}}\">View Ticket</a></p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(15, 'customer_send_ticket_autoclose', 'Send email to customer, when a ticket is autoclosed.', 'Your Ticket has been Closed Succesfully', '<p class=\"root-block-node\" data-paragraphid=\"2\" data-from-init=\"true\" data-changed=\"false\">Dear {{ticket_username}},</p><p class=\"root-block-node\" data-paragraphid=\"11\" data-from-init=\"true\" data-changed=\"false\">Your ticket has been closed successfully because there was no response from your end, so the ticket was closed automatically&nbsp;{{ticket_id}}.&nbsp;</p><p class=\"root-block-node\" data-paragraphid=\"12\" data-from-init=\"true\" data-changed=\"false\">If you want to reopen this ticket, please log in to your portal.</p><p> Title : {{ticket_title}}<br>Ticket URL : <a href=\"{{ticket_customer_url}}\">VIEW Ticket</a></p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(16, 'admin_send_email_ticket_reply', 'Send email to admin, when customer replies to ticket', 'You got reply from the customer', '<p>Hey Admin, </p><p>You have got a reply from customer. Please respond to the ticket.</p><p>Please visit the application to&nbsp;<a href=\"{{ticket_admin_url}}\" style=\"\">ViewTicket</a></p><p>Ticket Title: {{ticket_title}}<br></p><p>Ticket ID: {{ticket_id}}</p><p>Client Last Reply: {{comment}}</p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(17, 'when_ticket_assign_to_other_employee', 'Send email to employee, when a ticket is assigned.', 'You have been assigned a ticket.', '<p>Dear User,<br></p>\n                    <p>You have been assigned a ticket.</p>\n                    <p>Please visit the application and respond accordingly. <br></p>\n                    <p><a href=\"{{ticket_admin_url}}\" style=\"\">Click-here </a>to view ticket.<br></p>\n                    <p>User Name: {{ticket_username}}<br></p>\n                    <p>Ticket Title: {{ticket_title}}<br></p>\n                    <p>Ticket ID: {{ticket_id}}</p>\n                    <p><br></p>\n                    <p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(18, 'when_send_customnotify_email_to_selected_member', 'Send email to employee/customer, when a custom notification is sent to them.', 'You got a new notificatin.', '<p>Hey user, </p><p>You got a new notification. Please login to your account to see the notification in detail.</p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(19, 'when_send_customnotify_email_todelete_member', 'Send an email alert to the customers when they are not using the application.', 'Your account is unused and will soon be deleted.', '<p>Attention {{customer_username}}</p><p>Your {{customer_email}} personal account has been unused for {{customer_months}}.</p><p>It would be helpful if you could confirm that your account is still active by verifying it now.</p><p>Click here to <a href=\"{{ticket_customer_url}}\" target=\"_blank\">login</a></p><p>Note:  If you fail to login, your unused account with the associated data will be deleted in {{customer_time}}.</p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(20, 'admin_sendemail_whenticketclosed', 'Send an email to admin panel users when ticket is closed.', 'The ticket {{ticket_id}} has been closed.', '<p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">Dear User,</p> <p class=\"root-block-node\" data-paragraphid=\"17\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; This email is to inform you that the ticket {{ticket_id}} has been closed.</p> <p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p> <p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(21, 'customer_sendemail_whenticketclosed', 'Send an email to customer, when a ticket is closed.', 'The ticket {{ticket_id}} has been closed', '<p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">Dear {{ticket_username}},</p> <p class=\"root-block-node\" data-paragraphid=\"17\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;We hope that the ticket {{ticket_id}} was resolved to your satisfaction. If you feel that the ticket should not be closed or if the ticket has not been resolved, please go ahead and reopen it.</p> <p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p> <p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(22, 'CCmail_sendemail_whenticketclosed', 'Send an email to CC when the ticket is closed.', 'Your ticket {{ticket_id}} has been closed.', '<p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">Dear {{ticket_username}},</p> <p class=\"root-block-node\" data-paragraphid=\"17\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;We hope that the ticket {{ticket_id}} was resolved to your satisfaction. If you feel that the ticket should not be closed or if the ticket has not been resolved, please go ahead and reopen it.</p> <p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p> <p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(23, 'admin_sendemail_whenticketreopen', 'Send an email to admin panel users when ticket is reopened.', 'The ticket has been reopened.', '<p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">Dear User,</p> <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;The ticket {{ticket_id}}&nbsp;has been reopened by the {{ticket_username}}. Please review the ticket again.</p> <p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p> <p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(24, 'guestticket_email_verification_view', 'Guest email verification to view ticket.', 'Guest-Ticket Email Verification', '<p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">Dear {{guestname}},</p><p class=\"root-block-node\" data-paragraphid=\"17\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; {{guestotp}} is your one time password (otp) to view your ticket.</p><p class=\"root-block-node\" data-paragraphid=\"17\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; {{guestemail}}</p><p class=\"root-block-node\" data-paragraphid=\"17\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Please do not share your otp’s with anyone.</p>\n                <p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p>\n                <p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(25, 'send_mail_to_customer_when_ticket_closed_by_admin', 'Send mail to customer when ticket closed by admin', 'Your ticket {{ticket_id}} has been closed succesfully.', '<p class=\"root-block-node\" data-paragraphid=\"33\" data-from-init=\"true\" data-changed=\"false\">Dear {{ticket_username}},</p><p class=\"root-block-node\" data-paragraphid=\"34\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Your ticket {{ticket_id}} has been closed by our team support.</p>\n                <p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"45\">Sincerely,<br></p><p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"45\">Support Team</p>', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(26, 'send_mail_to_agent_when_ticket_closed_by_admin_or_agent', 'Send mail to agent and admin when ticket closed by admin or agent', 'The ticket has been closed.', '<p class=\"root-block-node\" data-paragraphid=\"33\" data-from-init=\"true\" data-changed=\"false\">Dear Admin panel user,</p><p class=\"root-block-node\" data-paragraphid=\"34\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; The ticket {{ticket_id}} has been closed by our support team {{closed_agent_role}} {{closed_agent_name}}.</p>\n                <p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"45\">Sincerely,<br></p><p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"45\">Support Team</p>', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(27, 'send_mail_admin_panel_users_when_category_changed', 'Send mail to admin panel users when ticket category changed', 'The ticket category has been changed.', '<p class=\"root-block-node\" data-paragraphid=\"33\" data-from-init=\"true\" data-changed=\"false\">Dear Admin panel user,</p>\n                        <p class=\"root-block-node\" data-paragraphid=\"34\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; The ticket {{ticket_id}}  category has been changed.</p>\n                        <p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"45\">Sincerely,<br></p><p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"45\">Support Team</p>', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(28, 'send_mail_customer_when_category_changed', 'Send mail to customers when ticket category is changed', 'The category has been changed.', '<p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">Dear {{ticket_username}},</p><p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">This email is to let you know that you have selected the wrong category {{ticket_oldcategory}} for this project. Our support team has changed it to the right category, {{ticket_changedcategory}}.</p>\n                <p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p>\n                <p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(29, 'send_mail_to_admin_when_ticket_note_created', 'Send mail to admin when ticket note is created.', 'A ticket note for {{ticket_id}} is created.', '<p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">Dear Admin,</p><p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">This email is to let you know that {{note_username}} has added a new note for a ticket {{ticket_id}}.</p>\n                <p></p><p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\"><b>Note by employee&nbsp;</b>: </p><p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">{{ticket_note}}</p><p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\"><b>Ticket URL</b> :</p><p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">{{ticket_admin_url}}&nbsp;</p>\n                <p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p>\n                <p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(30, 'guestticket_email_verification', 'Guest email verification to create ticket.', 'Guest Ticket Verification', '<p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">Dear {{guestname}},</p>\n                <p class=\"root-block-node\" data-paragraphid=\"17\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Please verify your email address to create your guest ticket.</p><p class=\"root-block-node\" data-paragraphid=\"17\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Your OTP:- {{guestotp}}</p><p class=\"root-block-node\" data-paragraphid=\"17\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{{guestemail}}</p>\n                <p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p>\n                <p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2025-09-17 21:23:01', '2025-09-17 21:23:01'),
(31, 'customer_send_guestticket_created_with_attachment_failed', 'Send email to guest, when file attachment is failed. Guest-ticket is created.', 'We received your guest ticket successfully. But upload attachment was failed.', '<p>Dear {{ticket_username}},</p><p><br></p><p>We would like to acknowledge that we have received your request and a gust ticket has been created.</p><p>A support representative will be reviewing your request and will send you a personal response 1-2 bussiness days.</p><p><br></p><p>To view the status of the ticket or add comments, please visit</p><p><a href=\"{{ticket_customer_url}}\" target=\"_blank\">{{ticket_customer_url}}</a></p><p>Note:- Without logging into the above link, you cannot access your ticket.</p><p>File upload failed, Please make sure that the file size is within the allowed limits and that the file format is supported.</p><p>Allowed Limits of Files&nbsp; :&nbsp;</p><p>File Formats : {{ticket_file_format}}</p><p>File Size : {{ticket_file_size}} MB</p><p>Max Files that can be uploaded : {{ticket_file_count}}</p><p>We appreciate your patience.</p><p><br></p><p>Sincerely,</p><p>Support Team</p>', '2025-09-17 21:23:04', '2025-09-17 21:23:04');

-- --------------------------------------------------------

--
-- Table structure for table `employeeratings`
--

CREATE TABLE `employeeratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `urating_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rating` bigint(20) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `envatoapitoken`
--

CREATE TABLE `envatoapitoken` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `envatoapitoken` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `envatocategoryassign`
--

CREATE TABLE `envatocategoryassign` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `envato_enable` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `faqcategoryname` varchar(255) NOT NULL,
  `slug` longtext DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq_list`
--

CREATE TABLE `faq_list` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` longtext NOT NULL,
  `faqcat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `privatemode` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_list`
--

INSERT INTO `faq_list` (`id`, `question`, `answer`, `faqcat_id`, `status`, `privatemode`, `created_at`, `updated_at`) VALUES
(1, 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur ?', '<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p> <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p>', NULL, 1, NULL, '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry?', '<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p> <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p>', NULL, 1, NULL, '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry?', '<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p> <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p>', NULL, 1, NULL, '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(4, 'Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet ?', '<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p> <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p>', NULL, 1, NULL, '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(5, 'Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil?', '<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p> <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p>', NULL, 1, NULL, '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(6, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry?', '<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p> <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p>', NULL, 1, NULL, '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(7, 'Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet ?', '<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p> <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p>', NULL, 1, NULL, '2025-09-17 21:22:59', '2025-09-17 21:22:59');

-- --------------------------------------------------------

--
-- Table structure for table `feature_boxes`
--

CREATE TABLE `feature_boxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `featureboxurl` longtext DEFAULT NULL,
  `url_checkbox` longtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feature_boxes`
--

INSERT INTO `feature_boxes` (`id`, `title`, `subtitle`, `featureboxurl`, `url_checkbox`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Secure Payment', 'Nam libero tempore, cum soluta nobis est eligendi cumque facere possimus', NULL, NULL, NULL, '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(2, 'Quality Templates', 'Nam libero tempore, cum soluta nobis est eligendi cumque facere possimus', NULL, NULL, NULL, '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(3, '24/7 Support', 'Nam libero tempore, cum soluta nobis est eligendi cumque facere possimus', NULL, NULL, NULL, '2025-09-17 21:22:59', '2025-09-17 21:22:59');

-- --------------------------------------------------------

--
-- Table structure for table `footertexts`
--

CREATE TABLE `footertexts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `copyright` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footertexts`
--

INSERT INTO `footertexts` (`id`, `copyright`, `created_at`, `updated_at`) VALUES
(1, '<p class=\"mb-0\">Copyright © 2023 <a href=\"https://uhelp.spruko.com/\"> Uhelp </a>. Developed by <a href=\"https://spruko.com/\">Spruko Technologies</a></p>', '2025-09-17 21:22:59', '2025-09-17 21:22:59');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `groupname` varchar(255) NOT NULL,
  `groupstatus` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groups_categories`
--

CREATE TABLE `groups_categories` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groups_users`
--

CREATE TABLE `groups_users` (
  `groups_id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `i_p_l_i_s_t_s`
--

CREATE TABLE `i_p_l_i_s_t_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(255) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `entrytype` varchar(255) DEFAULT NULL,
  `types` varchar(255) DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `languagename` varchar(250) NOT NULL,
  `languagenativename` varchar(150) NOT NULL,
  `is_rtl` tinyint(1) DEFAULT NULL,
  `languagecode` varchar(3) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `languagename`, `languagenativename`, `is_rtl`, `languagecode`, `created_at`, `updated_at`) VALUES
(1, 'English', 'English', 0, 'en', '2025-09-17 21:23:02', '2025-09-17 21:23:02');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `collection_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `disk` varchar(255) NOT NULL,
  `conversions_disk` varchar(255) DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`generated_conversions`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2021_04_22_040708_contactform', 1),
(4, '2021_04_22_091416_countries', 1),
(5, '2021_04_27_060126_timezones', 1),
(6, '2021_04_27_102115_tickets', 1),
(7, '2021_04_28_042408_create_roles_table', 1),
(8, '2021_05_03_035012_create_categories_table', 1),
(9, '2021_05_03_094047_create_comments_table', 1),
(10, '2021_06_19_050240_create_table_articles', 1),
(11, '2021_06_28_083257_create_article_comments_table', 1),
(12, '2021_06_30_083642_create_article_replies_table', 1),
(13, '2021_07_06_100416_article_likes', 1),
(14, '2021_07_15_035926_create_media_table', 1),
(15, '2021_07_26_115944_create_permission_tables', 1),
(16, '2021_08_03_050245_create_faq_list', 1),
(17, '2021_08_03_111412_create_testimonials_table', 1),
(18, '2021_08_04_104125_create_callactions_table', 1),
(19, '2021_08_05_040909_create_feature_boxes_table', 1),
(20, '2021_08_05_051851_create_apptitles_table', 1),
(21, '2021_08_05_121507_create_footertexts_table', 1),
(22, '2021_08_16_050727_create_seosettings_table', 1),
(23, '2021_08_16_071125_create_addcoloumn_apptitles', 1),
(24, '2021_08_20_063925_create_verify_users_table', 1),
(25, '2021_08_26_043304_create_table_pages', 1),
(26, '2021_08_26_111852_create_announcements_table', 1),
(27, '2021_08_27_083617_create_settings_table', 1),
(28, '2021_08_27_101912_create_email_templates_table', 1),
(29, '2021_08_30_062024_create_social_auth_settings_table', 1),
(30, '2021_09_17_051723_create_add_coloumn_category', 1),
(31, '2021_09_21_082936_create_customizeerrors_table', 1),
(32, '2021_09_22_052400_create_table_categoryuser', 1),
(33, '2021_09_27_050656_create_customcssjs_table', 1),
(34, '2021_09_27_120834_create_add_column_tickets', 1),
(35, '2021_10_08_113339_create_table_groups', 1),
(36, '2021_10_08_113458_create_table_groups_users', 1),
(37, '2021_10_08_120528_create_table_groups_categories', 1),
(38, '2021_10_14_051452_create_notifications_table', 1),
(39, '2021_10_22_091731_create_ticketnotes_table', 1),
(40, '2021_10_28_041824_create_projects_categories_table', 1),
(41, '2021_10_30_061123_create_usersettings_table', 1),
(42, '2021_11_11_062738_create_sendmails_table', 1),
(43, '2021_11_12_035635_create_senduserlists_table', 1),
(44, '2021_11_15_044456_add_login_fields_to_customers_table', 1),
(45, '2021_11_18_111347_create_customer_settings_table', 1),
(46, '2021_12_08_103116_create_i_p_l_i_s_t_s_table', 1),
(47, '2022_03_10_094231_create_envatoapitoken', 1),
(48, '2022_03_10_094658_create_envatocategoryassign', 1),
(49, '2022_03_10_095956_create_add_column_ticket_table', 1),
(50, '2022_03_11_035359_create_add_column_cannedmessages_table', 1),
(51, '2022_03_16_152830_create_add_column_articles_table', 1),
(52, '2022_03_16_152938_create_add_column_faq_table', 1),
(53, '2022_03_28_060354_create_add_column_Category_article_table', 1),
(54, '2022_04_11_041716_create_subcategorysd_table', 1),
(55, '2022_04_21_053048_create_verify_otps_table', 1),
(56, '2022_04_30_042009_create_add_column_featurebox_url', 1),
(57, '2022_05_16_050959_create_timezone', 1),
(58, '2022_05_23_050956_create_bussinesshours', 1),
(59, '2022_06_09_033735_create_faq_categories_table', 1),
(60, '2022_06_13_110345_create_userratings_table', 1),
(61, '2022_06_13_111713_create_employeeratings_table', 1),
(62, '2022_06_13_111729_create_ratingtokens_table', 1),
(63, '2022_07_18_074123_create_customfields', 1),
(64, '2022_07_18_074245_create_ticket_customfields_table', 1),
(65, '2022_07_18_074733_create_languages', 1),
(66, '2022_07_18_074757_create_translates_table', 1),
(67, '2022_08_26_061128_create_ticketsccemails', 1),
(68, '2022_09_08_045457_create_addcolumn_extra', 1),
(69, '2022_09_22_102122_create_departments_table', 1),
(70, '2022_09_23_102604_create_ticketassignchildren_table', 1),
(71, '2022_09_29_035250_create_tickethistories_table', 1),
(72, '2022_12_23_113549_announcement_startdate_nullable', 1),
(73, '2023_02_15_044824_add_extra_column_to_tickets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `notifiable` tinyint(1) NOT NULL DEFAULT 0,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `notifiable`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('47dc6bd0-0980-4655-9d4b-8e8cef319eed', 'App\\Notifications\\TicketCreateNotifications', 'App\\Models\\User', 1, 1, '{\"ticket_id\":\"SP-1\",\"title\":\"PAM\",\"category\":\"Ticket Support\",\"status\":\"New\",\"overduestatus\":null,\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/ticket-view\\/SP-1\",\"clink\":\"http:\\/\\/127.0.0.1:8000\\/customer\\/ticket\\/view\\/SP-1\"}', NULL, '2025-09-18 02:16:46', '2025-09-18 02:16:46'),
('89517314-7980-4dbc-9ff0-179f5924d70b', 'App\\Notifications\\TicketCreateNotifications', 'App\\Models\\User', 3, 0, '{\"ticket_id\":\"SP-1\",\"title\":\"PAM\",\"category\":\"Ticket Support\",\"status\":\"New\",\"overduestatus\":null,\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/ticket-view\\/SP-1\",\"clink\":\"http:\\/\\/127.0.0.1:8000\\/customer\\/ticket\\/view\\/SP-1\"}', NULL, '2025-09-18 02:16:46', '2025-09-18 02:16:46'),
('cd17cef5-8347-4290-a1ca-5f59a43ae367', 'App\\Notifications\\TicketCreateNotifications', 'App\\Models\\User', 2, 0, '{\"ticket_id\":\"SP-1\",\"title\":\"PAM\",\"category\":\"Ticket Support\",\"status\":\"New\",\"overduestatus\":null,\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/ticket-view\\/SP-1\",\"clink\":\"http:\\/\\/127.0.0.1:8000\\/customer\\/ticket\\/view\\/SP-1\"}', NULL, '2025-09-18 02:16:46', '2025-09-18 02:16:46');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pagename` varchar(255) NOT NULL,
  `pagedescription` longtext NOT NULL,
  `pageslug` longtext DEFAULT NULL,
  `viewonpages` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `permissionsgroupname` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `permissionsgroupname`, `created_at`, `updated_at`) VALUES
(1, 'Profile Edit', 'web', 'Profile Edit', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(3, 'Ticket Create', 'web', 'Tickets', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(4, 'Ticket Edit', 'web', 'Tickets', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(5, 'Ticket Delete', 'web', 'Tickets', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(6, 'Ticket Assign', 'web', 'Tickets', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(15, 'Project Access', 'web', 'Project', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(16, 'Project Create', 'web', 'Project', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(17, 'Project Edit', 'web', 'Project', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(18, 'Project Delete', 'web', 'Project', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(19, 'Project Assign', 'web', 'Project', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(20, 'Project Importlist', 'web', 'Project', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(21, 'Knowledge Access', 'web', 'Knowledge', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(22, 'Article Access', 'web', 'Knowledge', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(23, 'Article Create', 'web', 'Knowledge', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(24, 'Article View', 'web', 'Knowledge', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(25, 'Article Edit', 'web', 'Knowledge', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(26, 'Article Delete', 'web', 'Knowledge', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(27, 'Category Access', 'web', 'Category', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(28, 'Category Create', 'web', 'Category', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(29, 'Category Edit', 'web', 'Category', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(30, 'Category Assign To Groups', 'web', 'Category', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(31, 'Managerole Access', 'web', 'Roles & Permission', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(32, 'Roles & Permission Access', 'web', 'Roles & Permission', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(33, 'Roles & Permission Create', 'web', 'Roles & Permission', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(34, 'Roles & Permission Edit', 'web', 'Roles & Permission', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(35, 'Employee Access', 'web', 'Employee', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(36, 'Employee Create', 'web', 'Employee', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(37, 'Employee Edit', 'web', 'Employee', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(38, 'Employee Delete', 'web', 'Employee', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(39, 'Employee Importlist', 'web', 'Employee', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(40, 'Landing Page Access', 'web', 'Landing Page Setting', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(41, 'Banner Access', 'web', 'Landing Page Setting', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(42, 'Feature Box Access', 'web', 'Feature Box', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(43, 'Feature Box Create', 'web', 'Feature Box', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(44, 'Feature Box Edit', 'web', 'Feature Box', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(45, 'Feature Box Delete', 'web', 'Feature Box', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(46, 'Call To Action Access', 'web', 'Landing Page Setting', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(47, 'Testimonial Access', 'web', 'Testimonial', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(48, 'Testimonial Create', 'web', 'Testimonial', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(49, 'Testimonial Edit', 'web', 'Testimonial', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(50, 'Testimonial Delete', 'web', 'Testimonial', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(51, 'FAQs Access', 'web', 'FAQ`s', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(52, 'FAQs Create', 'web', 'FAQ`s', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(53, 'FAQs Edit', 'web', 'FAQ`s', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(54, 'FAQs Delete', 'web', 'FAQ`s', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(55, 'Customers Access', 'web', 'Customer', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(56, 'Customers Create', 'web', 'Customer', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(57, 'Customers Edit', 'web', 'Customer', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(58, 'Customers Delete', 'web', 'Customer', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(59, 'Customers Importlist', 'web', 'Customer', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(60, 'Customers Login', 'web', 'Customer', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(61, 'Groups Access', 'web', 'Groups', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(62, 'Groups List Access', 'web', 'Groups', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(63, 'Groups Create', 'web', 'Groups', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(64, 'Groups Edit', 'web', 'Groups', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(65, 'Custom Notifications Access', 'web', 'Custom Notifications', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(66, 'Custom Notifications View', 'web', 'Custom Notifications', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(67, 'Custom Notifications Delete', 'web', 'Custom Notifications', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(68, 'Custom Notifications Employee', 'web', 'Custom Notifications', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(69, 'Custom Notifications Customer', 'web', 'Custom Notifications', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(70, 'Custom Pages Access', 'web', 'Custom pages', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(71, 'Pages Access', 'web', 'Custom pages', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(72, 'Pages Edit', 'web', 'Custom pages', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(73, 'Pages View', 'web', 'Custom pages', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(74, '404 Error Page Access', 'web', 'Custom pages', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(75, 'Under Maintanance Page Access', 'web', 'Custom pages', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(76, 'App Setting Access', 'web', 'App Setting', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(77, 'General Setting Access', 'web', 'App Setting', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(78, 'Ticket Setting Access', 'web', 'App Setting', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(79, 'SEO Access', 'web', 'App Setting', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(80, 'Google Analytics Access', 'web', 'App Setting', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(81, 'Custom JS & CSS Access', 'web', 'App Setting', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(82, 'Captcha Setting Access', 'web', 'App Setting', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(83, 'Social Logins Access', 'web', 'App Setting', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(84, 'Email Setting Access', 'web', 'App Setting', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(85, 'Custom Chat Access', 'web', 'App Setting', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(86, 'Maintenance Mode Access', 'web', 'App Setting', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(87, 'SecruitySetting Access', 'web', 'App Setting', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(88, 'Emailtoticket Access', 'web', 'App Setting', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(89, 'IpBlock Access', 'web', 'IP Block', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(90, 'IpBlock Add', 'web', 'IP Block', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(91, 'IpBlock Edit', 'web', 'IP Block', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(92, 'IpBlock Delete', 'web', 'IP Block', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(93, 'Announcements Access', 'web', 'Annoucements', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(94, 'Announcements Create', 'web', 'Annoucements', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(95, 'Announcements Edit', 'web', 'Annoucements', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(96, 'Announcements Delete', 'web', 'Annoucements', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(97, 'Email Template Access', 'web', 'Email Template', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(98, 'Email Template Edit', 'web', 'Email Template', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(99, 'Reports Access', 'web', 'Reports', '2025-09-17 21:22:58', '2025-09-17 21:23:01'),
(100, 'Canned Response Access', 'web', 'Canned Response', '2025-09-17 21:22:59', '2025-09-17 21:23:01'),
(101, 'Canned Response Create', 'web', 'Canned Response', '2025-09-17 21:22:59', '2025-09-17 21:23:01'),
(102, 'Canned Response Edit', 'web', 'Canned Response', '2025-09-17 21:22:59', '2025-09-17 21:23:01'),
(103, 'Canned Response Delete', 'web', 'Canned Response', '2025-09-17 21:22:59', '2025-09-17 21:23:01'),
(104, 'Envato Access', 'web', 'Envato', '2025-09-17 21:22:59', '2025-09-17 21:23:01'),
(105, 'Envato API Token Access', 'web', 'Envato', '2025-09-17 21:22:59', '2025-09-17 21:23:01'),
(106, 'Envato License Details Access', 'web', 'Envato', '2025-09-17 21:23:00', '2025-09-17 21:23:01'),
(107, 'App Info Access', 'web', 'App Info', '2025-09-17 21:23:00', '2025-09-17 21:23:01'),
(108, 'App Purchase Code Access', 'web', 'App Info', '2025-09-17 21:23:00', '2025-09-17 21:23:01'),
(109, 'Pages Create', 'web', 'Custom pages', '2025-09-17 21:23:00', '2025-09-17 21:23:01'),
(110, 'Pages Delete', 'web', 'Custom pages', '2025-09-17 21:23:00', '2025-09-17 21:23:01'),
(111, 'Categories Access', 'web', 'Category', '2025-09-17 21:23:00', '2025-09-17 21:23:01'),
(112, 'Subcategory Access', 'web', 'Category', '2025-09-17 21:23:00', '2025-09-17 21:23:01'),
(113, 'Subcategory Create', 'web', 'Category', '2025-09-17 21:23:00', '2025-09-17 21:23:01'),
(114, 'Subcategory Edit', 'web', 'Category', '2025-09-17 21:23:00', '2025-09-17 21:23:01'),
(115, 'Subcategory Delete', 'web', 'Category', '2025-09-17 21:23:00', '2025-09-17 21:23:01'),
(116, 'Department Access', 'web', 'Department', '2025-09-17 21:23:01', '2025-09-17 21:23:01'),
(117, 'Department Create', 'web', 'Department', '2025-09-17 21:23:01', '2025-09-17 21:23:01'),
(118, 'Department Edit', 'web', 'Department', '2025-09-17 21:23:01', '2025-09-17 21:23:01'),
(119, 'Department Delete', 'web', 'Department', '2025-09-17 21:23:01', '2025-09-17 21:23:01'),
(120, 'CustomField Access', 'web', 'CustomField', '2025-09-17 21:23:01', '2025-09-17 21:23:01'),
(121, 'CustomField Create', 'web', 'CustomField', '2025-09-17 21:23:01', '2025-09-17 21:23:01'),
(122, 'CustomField Edit', 'web', 'CustomField', '2025-09-17 21:23:01', '2025-09-17 21:23:01'),
(123, 'CustomField Delete', 'web', 'CustomField', '2025-09-17 21:23:01', '2025-09-17 21:23:01'),
(124, 'Languages Access', 'web', 'Languages', '2025-09-17 21:23:01', '2025-09-17 21:23:01'),
(125, 'Languages Create', 'web', 'Languages', '2025-09-17 21:23:01', '2025-09-17 21:23:01'),
(126, 'Languages Edit', 'web', 'Languages', '2025-09-17 21:23:01', '2025-09-17 21:23:01'),
(127, 'Languages Delete', 'web', 'Languages', '2025-09-17 21:23:01', '2025-09-17 21:23:01'),
(128, 'Languages Translate', 'web', 'Languages', '2025-09-17 21:23:01', '2025-09-17 21:23:01'),
(129, 'Main FAQ Access', 'web', 'FAQ`s', '2025-09-17 21:23:01', '2025-09-17 21:23:01'),
(130, 'FAQ Category Access', 'web', 'FAQ`s', '2025-09-17 21:23:01', '2025-09-17 21:23:01'),
(131, 'FAQ Category Create', 'web', 'FAQ`s', '2025-09-17 21:23:01', '2025-09-17 21:23:01'),
(132, 'FAQ Category Edit', 'web', 'FAQ`s', '2025-09-17 21:23:01', '2025-09-17 21:23:01'),
(133, 'FAQ Category Delete', 'web', 'FAQ`s', '2025-09-17 21:23:01', '2025-09-17 21:23:01'),
(134, 'Bussiness Hours Access', 'web', 'Bussiness Hours', '2025-09-17 21:23:01', '2025-09-17 21:23:01'),
(135, 'Category Delete', 'web', 'Category', '2025-09-17 21:23:01', '2025-09-17 21:23:01'),
(136, 'Groups Delete', 'web', 'Groups', '2025-09-17 21:23:01', '2025-09-17 21:23:01'),
(137, 'Reset Password', 'web', 'Employee', '2025-09-17 21:23:01', '2025-09-17 21:23:01'),
(138, 'Employee Status', 'web', 'Employee', '2025-09-17 21:23:01', '2025-09-17 21:23:01');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'CyberArk', '2025-09-18 01:52:35', '2025-09-18 01:52:35'),
(2, 'THALES SafeNet Authentication', '2025-09-18 01:53:25', '2025-09-18 01:53:25');

-- --------------------------------------------------------

--
-- Table structure for table `projects_categories`
--

CREATE TABLE `projects_categories` (
  `projects_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratingtokens`
--

CREATE TABLE `ratingtokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `ticket_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'web', '2025-09-17 21:22:58', '2025-09-17 21:22:58');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sendmails`
--

CREATE TABLE `sendmails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `mailsubject` varchar(255) NOT NULL,
  `mailtext` longtext NOT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `selecttagcolor` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `senduserlists`
--

CREATE TABLE `senduserlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mail_id` bigint(20) UNSIGNED NOT NULL,
  `touser_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tocust_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seosettings`
--

CREATE TABLE `seosettings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seosettings`
--

INSERT INTO `seosettings` (`id`, `author`, `description`, `keywords`, `created_at`, `updated_at`) VALUES
(1, 'My Desk', 'Looking For help?', 'Why Choose US ?', '2025-09-17 21:22:59', '2025-09-17 21:22:59');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` varchar(10000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'date_format', 'd M, Y', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(2, 'time_format', 'h:i A', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(3, 'site_title', 'laravel', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(4, 'site_description', 'Description for your portal !', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(5, 'update_setting', 'Admin@123', '2025-09-17 21:22:59', '2025-09-18 00:20:37'),
(6, 'site_logo', 'default.png', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(7, 'site_favicon', 'favicon.png', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(8, 'CAPTCHATYPE', 'off', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(9, 'GOOGLE_RECAPTCHA_KEY', '', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(10, 'GOOGLE_RECAPTCHA_SECRET', '', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(11, 'USER_REOPEN_ISSUE', 'yes', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(12, 'USER_REOPEN_TIME', '1', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(13, 'AUTO_CLOSE_TICKET', 'yes', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(14, 'AUTO_CLOSE_TICKET_TIME', '1', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(15, 'AUTO_OVERDUE_TICKET', 'yes', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(16, 'AUTO_OVERDUE_TICKET_TIME', '1', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(17, 'AUTO_RESPONSETIME_TICKET', 'yes', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(18, 'AUTO_RESPONSETIME_TICKET_TIME', '1', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(19, 'CUSTOMER_TICKETID', 'SP', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(20, 'GUEST_TICKET', 'yes', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(21, 'PRIORITY_ENABLE', 'no', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(22, 'REGISTER_POPUP', 'no', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(23, 'REGISTER_DISABLE', 'on', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(24, 'CUSTOMER_CLOSE_TICKET', 'yes', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(25, 'USER_FILE_UPLOAD_ENABLE', 'yes', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(26, 'GUEST_FILE_UPLOAD_ENABLE', 'yes', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(27, 'GOOGLE_ANALYTICS_ENABLE', 'no', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(28, 'AUTO_NOTIFICATION_DELETE_ENABLE', 'on', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(29, 'AUTO_NOTIFICATION_DELETE_DAYS', '60', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(30, 'GOOGLE_ANALYTICS', NULL, '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(31, 'FILE_UPLOAD_MAX', '3', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(32, 'FILE_UPLOAD_TYPES', '.jpg,.jpeg,.png', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(33, 'KNOWLEDGE_ENABLE', 'yes', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(34, 'FAQ_ENABLE', 'yes', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(35, 'CONTACT_ENABLE', 'yes', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(36, 'MAINTENANCE_MODE', 'off', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(37, 'MAINTENANCE_MODE_VALUE', NULL, '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(38, 'PROFILE_USER_ENABLE', 'yes', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(39, 'PROFILE_AGENT_ENABLE', 'yes', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(40, 'RECAPTCH_ENABLE_REGISTER', 'no', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(41, 'RECAPTCH_ENABLE_CONTACT', 'no', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(42, 'RECAPTCH_ENABLE_LOGIN', 'no', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(43, 'RECAPTCH_ENABLE_GUEST', 'no', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(44, 'COUNTRY_BLOCKTYPE', 'block', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(45, 'COUNTRY_LIST', '', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(46, 'ADMIN_COUNTRY_BLOCKTYPE', 'block', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(47, 'ADMIN_COUNTRY_LIST', '', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(48, 'DOS_Enable', 'off', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(49, 'IPMAXATTEMPT', '10', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(50, 'IPSECONDS', '30', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(51, 'IPBLOCKTYPE', 'captcha', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(52, 'GOOGLEFONT_DISABLE', 'off', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(53, 'FORCE_SSL', 'off', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(54, 'DARK_MODE', '0', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(55, 'SPRUKOADMIN_P', 'on', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(56, 'SPRUKOADMIN_C', 'off', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(57, 'ticket_default_assigned_user_id', '2', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(58, 'social_media_facebook', '', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(59, 'social_media_instagram', '', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(60, 'social_media_twitter', '', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(61, 'social_media_youtube', '', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(62, 'social_media_pinterest', '', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(63, 'social_media_envato', '', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(64, 'default_lang', 'en', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(65, 'theme_color', 'rgba(51 ,102 ,255, 1)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(66, 'theme_color_dark', 'rgba(24, 71, 128, 1)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(67, 'popular_categories', '[]', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(68, 'home_featured_categories', '[]', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(69, 'home_categories', '[]', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(70, 'home_max_articles', '10', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(71, 'mail_driver', 'smtp', '2025-09-17 21:22:59', '2025-09-18 01:58:12'),
(72, 'mail_host', 'smtp.gmail.com', '2025-09-17 21:22:59', '2025-09-18 01:58:12'),
(73, 'mail_port', '587', '2025-09-17 21:22:59', '2025-09-18 01:58:12'),
(74, 'mail_from_address', 'leanghengnp@gmail.com', '2025-09-17 21:22:59', '2025-09-18 01:58:12'),
(75, 'mail_from_name', 'Leangheng Ticket System', '2025-09-17 21:22:59', '2025-09-18 02:02:43'),
(76, 'mail_encryption', 'tls', '2025-09-17 21:22:59', '2025-09-18 02:04:11'),
(77, 'MAIL_USERNAME', 'leanghengnp@gmail.com', '2025-09-17 21:22:59', '2025-09-18 01:58:12'),
(78, 'MAIL_PASSWORD', 'tlpg awaz lkxv uywm', '2025-09-17 21:22:59', '2025-09-18 02:01:37'),
(79, 'IMAP_STATUS', 'off', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(80, 'IMAP_HOST', NULL, '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(81, 'IMAP_PORT', NULL, '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(82, 'IMAP_PROTOCOL', NULL, '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(83, 'IMAP_ENCRYPTION', NULL, '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(84, 'IMAP_USERNAME', '', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(85, 'IMAP_PASSWORD', '', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(86, 'GUEST_TICKET_OTP', 'no', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(87, 'CUSTOMER_TICKET', 'no', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(88, 'start_week', '0', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(89, 'TICKET_CHARACTER', '10', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(90, 'default_timezone', 'Asia/Phnom_Penh', '2025-09-17 21:22:59', '2025-09-18 02:06:09'),
(91, 'businesshourstitle', 'Support', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(92, 'businesshourssubtitle', 'Our technical team is available in the IST timezone.', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(93, 'businesshoursswitch', 'on', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(94, 'supporticonimage', NULL, '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(95, 'admin_reply_mail', 'yes', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(96, 'customer_panel_employee_protect', 'off', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(97, 'employeeprotectname', 'Support', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(98, 'ticketrating', 'on', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(99, 'sidemenu_icon_style', 'off', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(100, 'login_disable', 'off', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(101, 'login_disable_statement', 'Due technical issue', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(102, 'cust_profile_delete_enable', 'off', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(103, 'EMAILDOMAIN_BLOCKTYPE', 'blockemail', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(104, 'EMAILDOMAIN_LIST', '', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(105, 'customer_inactive_notify', 'off', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(106, 'customer_inactive_notify_date', '1', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(107, 'customer_inactive_week_date', '1', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(108, 'guest_inactive_notify', 'off', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(109, 'guest_inactive_notify_date', '1', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(110, 'guest_inactive_week_date', '1', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(111, 'RECAPTCH_ENABLE_ADMIN_LOGIN', 'NO', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(112, 'cc_email', 'h:i A', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(113, 'contact_form_mail', 'leanghenghorm@gmail.com', '2025-09-17 21:22:59', '2025-09-18 02:06:21'),
(114, 'only_social_logins', 'off', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(115, 'article_count', 'on', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(116, 'trashed_ticket_autodelete', 'off', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(117, 'trashed_ticket_delete_time', '7', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(118, 'RESTRICT_TO_CREATE_TICKET', 'off', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(119, 'MAXIMUM_ALLOW_TICKETS', '1', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(120, 'MAXIMUM_ALLOW_HOURS', '1', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(121, 'SUPPORT_POLICY_URL', '#', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(122, 'RESTRICT_TO_REPLY_TICKET', 'off', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(123, 'MAXIMUM_ALLOW_REPLIES', '0', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(124, 'REPLY_ALLOW_IN_HOURS', '0', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(125, 'NOTE_CREATE_MAILS', 'off', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(126, 'ANNOUNCEMENT_USER', 'all_users', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(127, 'CUSTOMER_RESTICT_TO_DELETE_TICKET', 'off', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(128, 'ENVATO_ON', 'off', '2025-09-17 21:23:00', '2025-09-18 02:07:03'),
(129, 'ENVATO_EXPIRED_BLOCK', 'off', '2025-09-17 21:23:00', '2025-09-17 21:23:00'),
(130, 'MAX_FILE_UPLOAD', '2', '2025-09-17 21:23:00', '2025-09-17 21:23:00'),
(131, 'terms_url', '#', '2025-09-17 21:23:00', '2025-09-17 21:23:00'),
(132, 'purchasecode_on', 'off', '2025-09-17 21:23:00', '2025-09-17 21:23:00'),
(133, 'defaultlogin_on', 'off', '2025-09-17 21:23:00', '2025-09-17 21:23:00'),
(134, 'time_format', 'h:i A', '2025-09-17 21:23:00', '2025-09-17 21:23:00'),
(135, 'cronjob_set', NULL, '2025-09-17 21:23:04', '2025-09-17 21:23:04'),
(136, 'enable_gpt', 'off', '2025-09-17 21:23:04', '2025-09-18 01:52:00'),
(137, 'openai_api', '', '2025-09-17 21:23:04', '2025-09-17 21:23:04'),
(138, 'openai_api', '', '2025-09-17 21:23:04', '2025-09-17 21:23:04'),
(139, 'newupdate', 'updated3.1.2', '2025-09-17 21:38:39', '2025-09-18 00:20:30'),
(140, 'mail_key_set', 'mail_key', '2025-09-18 00:20:30', '2025-09-18 00:20:30'),
(141, 'COUNTRY_LIST', '[\"US\",\"GB\",\"TH\",\"MY\",\"IN\"]', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_settings`
--

CREATE TABLE `social_auth_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facebook_client_id` varchar(255) DEFAULT NULL,
  `facebook_secret_id` varchar(255) DEFAULT NULL,
  `facebook_status` enum('enable','disable') NOT NULL DEFAULT 'disable',
  `google_client_id` varchar(255) DEFAULT NULL,
  `google_secret_id` varchar(255) DEFAULT NULL,
  `google_status` enum('enable','disable') NOT NULL DEFAULT 'disable',
  `twitter_client_id` varchar(255) DEFAULT NULL,
  `twitter_secret_id` varchar(255) DEFAULT NULL,
  `twitter_status` enum('enable','disable') NOT NULL DEFAULT 'disable',
  `envato_client_id` varchar(255) DEFAULT NULL,
  `envato_secret_id` varchar(255) DEFAULT NULL,
  `envato_status` enum('enable','disable') NOT NULL DEFAULT 'disable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_auth_settings`
--

INSERT INTO `social_auth_settings` (`id`, `facebook_client_id`, `facebook_secret_id`, `facebook_status`, `google_client_id`, `google_secret_id`, `google_status`, `twitter_client_id`, `twitter_secret_id`, `twitter_status`, `envato_client_id`, `envato_secret_id`, `envato_status`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'disable', NULL, NULL, 'disable', NULL, NULL, 'disable', NULL, NULL, 'disable', '2025-09-17 21:22:47', '2025-09-17 21:22:47');

-- --------------------------------------------------------

--
-- Table structure for table `subcategoryschild`
--

CREATE TABLE `subcategoryschild` (
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subcategorysd`
--

CREATE TABLE `subcategorysd` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subcategoryname` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `designation` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `description`, `designation`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Heather Bell', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod eos id officiis hic tenetur quae quaerat ad velit ab. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore cum accusamus eveniet molestias voluptatum inventore laboriosam labore sit, aspernatur praesentium iste impedit quidem dolor veniam.', 'Developer', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(2, 'David Blake', 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore.', 'Designer', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30'),
(3, 'Sophie Carr', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.', 'HTML', NULL, '2022-01-06 23:13:30', '2022-01-06 23:13:30');

-- --------------------------------------------------------

--
-- Table structure for table `ticketassignchildren`
--

CREATE TABLE `ticketassignchildren` (
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `toassignuser_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tickethistories`
--

CREATE TABLE `tickethistories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `ticketactions` longtext DEFAULT NULL,
  `ticketstatus` longtext DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickethistories`
--

INSERT INTO `tickethistories` (`id`, `ticket_id`, `ticketactions`, `ticketstatus`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '<div class=\"d-flex align-items-center\">\n            <div class=\"mt-0\">\n                <p class=\"mb-0 fs-12 mb-1\">Status\n            \n                <span class=\"text-burnt-orange font-weight-semibold mx-1\">New</span>\n                \n            <p class=\"mb-0 fs-17 font-weight-semibold text-dark\">Visotthikun Yeang<span class=\"fs-11 mx-1 text-muted\">(Created)</span></p>\n        </div>\n        <div class=\"ms-auto\">\n        <span class=\"float-end badge badge-danger-light\">\n            <span class=\"fs-11 font-weight-semibold\">Customer</span>\n        </span>\n        </div>\n\n        </div>\n        ', NULL, NULL, '2025-09-18 02:16:46', '2025-09-18 02:16:46'),
(2, 1, '<div class=\"d-flex align-items-center\">\n            <div class=\"mt-0\">\n                <p class=\"mb-0 fs-12 mb-1\">Status\n            \n                <span class=\"text-burnt-orange font-weight-semibold mx-1\">New</span>\n                \n            <p class=\"mb-0 fs-17 font-weight-semibold text-dark\">leangheng<span class=\"fs-11 mx-1 text-muted\">(Priority Updated)</span></p>\n        </div>\n        <div class=\"ms-auto\">\n        <span class=\"float-end badge badge-primary-light\">\n            <span class=\"fs-11 font-weight-semibold\">superadmin</span>\n        </span>\n        </div>\n\n        </div>\n        ', NULL, NULL, '2025-09-18 02:17:30', '2025-09-18 02:17:30');

-- --------------------------------------------------------

--
-- Table structure for table `ticketnotes`
--

CREATE TABLE `ticketnotes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ticketnotes` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cust_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ticket_id` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subcategory` bigint(20) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `employeesreplying` varchar(255) DEFAULT NULL,
  `usernameverify` varchar(255) DEFAULT NULL,
  `emailticketfile` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `project` varchar(255) DEFAULT NULL,
  `purchasecode` varchar(255) DEFAULT NULL,
  `purchasecodesupport` varchar(255) DEFAULT NULL,
  `message` longtext NOT NULL,
  `note` text DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `replystatus` varchar(255) DEFAULT NULL,
  `myassignuser_id` bigint(20) UNSIGNED DEFAULT NULL,
  `last_reply` datetime DEFAULT NULL,
  `lastreply_mail` bigint(20) UNSIGNED DEFAULT NULL,
  `auto_replystatus` datetime DEFAULT NULL,
  `closing_ticket` datetime DEFAULT NULL,
  `auto_close_ticket` datetime DEFAULT NULL,
  `overduestatus` varchar(255) DEFAULT NULL,
  `auto_overdue_ticket` datetime DEFAULT NULL,
  `selfassignuser_id` bigint(20) UNSIGNED DEFAULT NULL,
  `closedby_user` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `cust_id`, `user_id`, `ticket_id`, `category_id`, `subcategory`, `subject`, `employeesreplying`, `usernameverify`, `emailticketfile`, `priority`, `project`, `purchasecode`, `purchasecodesupport`, `message`, `note`, `status`, `replystatus`, `myassignuser_id`, `last_reply`, `lastreply_mail`, `auto_replystatus`, `closing_ticket`, `auto_close_ticket`, `overduestatus`, `auto_overdue_ticket`, `selfassignuser_id`, `closedby_user`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, NULL, 'SP-1', 1, NULL, 'PAM', '', NULL, NULL, 'Medium', NULL, 'eyJpdiI6Ii9UWnN4QXlESUk3MEsxSXhWRFU4alE9PSIsInZhbHVlIjoiM0d0UWxYdW1KYXVmV04wMkpuV3dFenlydy9kTmpmWG1IRlVSWnZpZzFUWT0iLCJtYWMiOiI1ZGMzNzNhZjVhNDNlY2UxNTNlMWVmYzkyNzczM2VmMzA5ZDA2ODAwYWYzYmFkMTRjYTFmNjJjZjZlYzRiNTg0IiwidGFnIjoiIn0=', NULL, '<p>hello test</p>', NULL, 'New', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-19 09:16:46', NULL, NULL, '2025-09-18 02:16:46', '2025-09-18 02:21:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ticketsccemails`
--

CREATE TABLE `ticketsccemails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ccemails` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticketsccemails`
--

INSERT INTO `ticketsccemails` (`id`, `ticket_id`, `ccemails`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '2025-09-18 02:16:46', '2025-09-18 02:16:46');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_customfields`
--

CREATE TABLE `ticket_customfields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cust_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ticket_id` bigint(20) UNSIGNED DEFAULT NULL,
  `privacymode` bigint(20) UNSIGNED DEFAULT NULL,
  `fieldnames` varchar(255) DEFAULT NULL,
  `fieldtypes` varchar(255) DEFAULT NULL,
  `values` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `timezone`
--

CREATE TABLE `timezone` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `group` varchar(255) DEFAULT NULL,
  `utc` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timezone`
--

INSERT INTO `timezone` (`id`, `timezone`, `group`, `utc`, `created_at`, `updated_at`) VALUES
(1, 'Europe/Amsterdam', 'Europe', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(2, 'Europe/Andorra', 'Europe', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(3, 'Europe/Astrakhan', 'Europe', '(GMT/UTC +04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(4, 'Europe/Athens', 'Europe', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(5, 'Europe/Belgrade', 'Europe', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(6, 'Europe/Berlin', 'Europe', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(7, 'Europe/Bratislava', 'Europe', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(8, 'Europe/Brussels', 'Europe', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(9, 'Europe/Bucharest', 'Europe', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(10, 'Europe/Budapest', 'Europe', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(11, 'Europe/Busingen', 'Europe', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(12, 'Europe/Chisinau', 'Europe', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(13, 'Europe/Copenhagen', 'Europe', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(14, 'Europe/Dublin', 'Europe', '(GMT/UTC +01:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(15, 'Europe/Gibraltar', 'Europe', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(16, 'Europe/Guernsey', 'Europe', '(GMT/UTC +01:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(17, 'Europe/Helsinki', 'Europe', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(18, 'Europe/Isle_of_Man', 'Europe', '(GMT/UTC +01:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(19, 'Europe/Istanbul', 'Europe', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(20, 'Europe/Jersey', 'Europe', '(GMT/UTC +01:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(21, 'Europe/Kaliningrad', 'Europe', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(22, 'Europe/Kiev', 'Europe', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(23, 'Europe/Kirov', 'Europe', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(24, 'Europe/Lisbon', 'Europe', '(GMT/UTC +01:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(25, 'Europe/Ljubljana', 'Europe', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(26, 'Europe/London', 'Europe', '(GMT/UTC +01:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(27, 'Europe/Luxembourg', 'Europe', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(28, 'Europe/Madrid', 'Europe', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(29, 'Europe/Malta', 'Europe', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(30, 'Europe/Mariehamn', 'Europe', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(31, 'Europe/Minsk', 'Europe', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(32, 'Europe/Monaco', 'Europe', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(33, 'Europe/Moscow', 'Europe', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(34, 'Europe/Oslo', 'Europe', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(35, 'Europe/Paris', 'Europe', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(36, 'Europe/Podgorica', 'Europe', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(37, 'Europe/Prague', 'Europe', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(38, 'Europe/Riga', 'Europe', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(39, 'Europe/Rome', 'Europe', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(40, 'Europe/Samara', 'Europe', '(GMT/UTC +04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(41, 'Europe/San_Marino', 'Europe', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(42, 'Europe/Sarajevo', 'Europe', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(43, 'Europe/Saratov', 'Europe', '(GMT/UTC +04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(44, 'Europe/Simferopol', 'Europe', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(45, 'Europe/Skopje', 'Europe', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(46, 'Europe/Sofia', 'Europe', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(47, 'Europe/Stockholm', 'Europe', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(48, 'Europe/Tallinn', 'Europe', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(49, 'Europe/Tirane', 'Europe', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(50, 'Europe/Ulyanovsk', 'Europe', '(GMT/UTC +04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(51, 'Europe/Uzhgorod', 'Europe', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(52, 'Europe/Vaduz', 'Europe', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(53, 'Europe/Vatican', 'Europe', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(54, 'Europe/Vienna', 'Europe', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(55, 'Europe/Vilnius', 'Europe', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(56, 'Europe/Volgograd', 'Europe', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(57, 'Europe/Warsaw', 'Europe', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(58, 'Europe/Zagreb', 'Europe', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(59, 'Europe/Zaporozhye', 'Europe', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(60, 'Europe/Zurich', 'Europe', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(61, 'America/Adak', 'America', '(GMT/UTC -09:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(62, 'America/Anchorage', 'America', '(GMT/UTC -08:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(63, 'America/Anguilla', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(64, 'America/Antigua', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(65, 'America/Araguaina', 'America', '(GMT/UTC -03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(66, 'America/Argentina/Buenos_Aires', 'America', '(GMT/UTC -03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(67, 'America/Argentina/Catamarca', 'America', '(GMT/UTC -03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(68, 'America/Argentina/Cordoba', 'America', '(GMT/UTC -03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(69, 'America/Argentina/Jujuy', 'America', '(GMT/UTC -03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(70, 'America/Argentina/La_Rioja', 'America', '(GMT/UTC -03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(71, 'America/Argentina/Mendoza', 'America', '(GMT/UTC -03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(72, 'America/Argentina/Rio_Gallegos', 'America', '(GMT/UTC -03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(73, 'America/Argentina/Salta', 'America', '(GMT/UTC -03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(74, 'America/Argentina/San_Juan', 'America', '(GMT/UTC -03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(75, 'America/Argentina/San_Luis', 'America', '(GMT/UTC -03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(76, 'America/Argentina/Tucuman', 'America', '(GMT/UTC -03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(77, 'America/Argentina/Ushuaia', 'America', '(GMT/UTC -03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(78, 'America/Aruba', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(79, 'America/Asuncion', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(80, 'America/Atikokan', 'America', '(GMT/UTC -05:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(81, 'America/Bahia', 'America', '(GMT/UTC -03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(82, 'America/Bahia_Banderas', 'America', '(GMT/UTC -05:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(83, 'America/Barbados', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(84, 'America/Belem', 'America', '(GMT/UTC -03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(85, 'America/Belize', 'America', '(GMT/UTC -06:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(86, 'America/Blanc-Sablon', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(87, 'America/Boa_Vista', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(88, 'America/Bogota', 'America', '(GMT/UTC -05:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(89, 'America/Boise', 'America', '(GMT/UTC -06:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(90, 'America/Cambridge_Bay', 'America', '(GMT/UTC -06:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(91, 'America/Campo_Grande', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(92, 'America/Cancun', 'America', '(GMT/UTC -05:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(93, 'America/Caracas', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(94, 'America/Cayenne', 'America', '(GMT/UTC -03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(95, 'America/Cayman', 'America', '(GMT/UTC -05:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(96, 'America/Chicago', 'America', '(GMT/UTC -05:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(97, 'America/Chihuahua', 'America', '(GMT/UTC -06:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(98, 'America/Costa_Rica', 'America', '(GMT/UTC -06:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(99, 'America/Creston', 'America', '(GMT/UTC -07:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(100, 'America/Cuiaba', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(101, 'America/Curacao', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(102, 'America/Danmarkshavn', 'America', '(GMT/UTC +00:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(103, 'America/Dawson', 'America', '(GMT/UTC -07:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(104, 'America/Dawson_Creek', 'America', '(GMT/UTC -07:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(105, 'America/Denver', 'America', '(GMT/UTC -06:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(106, 'America/Detroit', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(107, 'America/Dominica', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(108, 'America/Edmonton', 'America', '(GMT/UTC -06:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(109, 'America/Eirunepe', 'America', '(GMT/UTC -05:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(110, 'America/El_Salvador', 'America', '(GMT/UTC -06:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(111, 'America/Fort_Nelson', 'America', '(GMT/UTC -07:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(112, 'America/Fortaleza', 'America', '(GMT/UTC -03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(113, 'America/Glace_Bay', 'America', '(GMT/UTC -03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(114, 'America/Goose_Bay', 'America', '(GMT/UTC -03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(115, 'America/Grand_Turk', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(116, 'America/Grenada', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(117, 'America/Guadeloupe', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(118, 'America/Guatemala', 'America', '(GMT/UTC -06:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(119, 'America/Guayaquil', 'America', '(GMT/UTC -05:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(120, 'America/Guyana', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(121, 'America/Halifax', 'America', '(GMT/UTC -03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(122, 'America/Havana', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(123, 'America/Hermosillo', 'America', '(GMT/UTC -07:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(124, 'America/Indiana/Indianapolis', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(125, 'America/Indiana/Knox', 'America', '(GMT/UTC -05:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(126, 'America/Indiana/Marengo', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(127, 'America/Indiana/Petersburg', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(128, 'America/Indiana/Tell_City', 'America', '(GMT/UTC -05:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(129, 'America/Indiana/Vevay', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(130, 'America/Indiana/Vincennes', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(131, 'America/Indiana/Winamac', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(132, 'America/Inuvik', 'America', '(GMT/UTC -06:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(133, 'America/Iqaluit', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(134, 'America/Jamaica', 'America', '(GMT/UTC -05:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(135, 'America/Juneau', 'America', '(GMT/UTC -08:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(136, 'America/Kentucky/Louisville', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(137, 'America/Kentucky/Monticello', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(138, 'America/Kralendijk', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(139, 'America/La_Paz', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(140, 'America/Lima', 'America', '(GMT/UTC -05:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(141, 'America/Los_Angeles', 'America', '(GMT/UTC -07:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(142, 'America/Lower_Princes', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(143, 'America/Maceio', 'America', '(GMT/UTC -03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(144, 'America/Managua', 'America', '(GMT/UTC -06:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(145, 'America/Manaus', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(146, 'America/Marigot', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(147, 'America/Martinique', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(148, 'America/Matamoros', 'America', '(GMT/UTC -05:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(149, 'America/Mazatlan', 'America', '(GMT/UTC -06:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(150, 'America/Menominee', 'America', '(GMT/UTC -05:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(151, 'America/Merida', 'America', '(GMT/UTC -05:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(152, 'America/Metlakatla', 'America', '(GMT/UTC -08:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(153, 'America/Mexico_City', 'America', '(GMT/UTC -05:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(154, 'America/Miquelon', 'America', '(GMT/UTC -02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(155, 'America/Moncton', 'America', '(GMT/UTC -03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(156, 'America/Monterrey', 'America', '(GMT/UTC -05:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(157, 'America/Montevideo', 'America', '(GMT/UTC -03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(158, 'America/Montserrat', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(159, 'America/Nassau', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(160, 'America/New_York', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(161, 'America/Nipigon', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(162, 'America/Nome', 'America', '(GMT/UTC -08:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(163, 'America/Noronha', 'America', '(GMT/UTC -02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(164, 'America/North_Dakota/Beulah', 'America', '(GMT/UTC -05:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(165, 'America/North_Dakota/Center', 'America', '(GMT/UTC -05:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(166, 'America/North_Dakota/New_Salem', 'America', '(GMT/UTC -05:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(167, 'America/Nuuk', 'America', '(GMT/UTC -02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(168, 'America/Ojinaga', 'America', '(GMT/UTC -06:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(169, 'America/Panama', 'America', '(GMT/UTC -05:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(170, 'America/Pangnirtung', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(171, 'America/Paramaribo', 'America', '(GMT/UTC -03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(172, 'America/Phoenix', 'America', '(GMT/UTC -07:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(173, 'America/Port-au-Prince', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(174, 'America/Port_of_Spain', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(175, 'America/Porto_Velho', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(176, 'America/Puerto_Rico', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(177, 'America/Punta_Arenas', 'America', '(GMT/UTC -03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(178, 'America/Rainy_River', 'America', '(GMT/UTC -05:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(179, 'America/Rankin_Inlet', 'America', '(GMT/UTC -05:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(180, 'America/Recife', 'America', '(GMT/UTC -03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(181, 'America/Regina', 'America', '(GMT/UTC -06:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(182, 'America/Resolute', 'America', '(GMT/UTC -05:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(183, 'America/Rio_Branco', 'America', '(GMT/UTC -05:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(184, 'America/Santarem', 'America', '(GMT/UTC -03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(185, 'America/Santiago', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(186, 'America/Santo_Domingo', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(187, 'America/Sao_Paulo', 'America', '(GMT/UTC -03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(188, 'America/Scoresbysund', 'America', '(GMT/UTC +00:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(189, 'America/Sitka', 'America', '(GMT/UTC -08:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(190, 'America/St_Barthelemy', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(191, 'America/St_Johns', 'America', '(GMT/UTC -02:30)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(192, 'America/St_Kitts', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(193, 'America/St_Lucia', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(194, 'America/St_Thomas', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(195, 'America/St_Vincent', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(196, 'America/Swift_Current', 'America', '(GMT/UTC -06:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(197, 'America/Tegucigalpa', 'America', '(GMT/UTC -06:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(198, 'America/Thule', 'America', '(GMT/UTC -03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(199, 'America/Thunder_Bay', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(200, 'America/Tijuana', 'America', '(GMT/UTC -07:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(201, 'America/Toronto', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(202, 'America/Tortola', 'America', '(GMT/UTC -04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(203, 'America/Vancouver', 'America', '(GMT/UTC -07:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(204, 'America/Whitehorse', 'America', '(GMT/UTC -07:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(205, 'America/Winnipeg', 'America', '(GMT/UTC -05:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(206, 'America/Yakutat', 'America', '(GMT/UTC -08:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(207, 'America/Yellowknife', 'America', '(GMT/UTC -06:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(208, 'Indian/Antananarivo', 'Indian', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(209, 'Indian/Chagos', 'Indian', '(GMT/UTC +06:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(210, 'Indian/Christmas', 'Indian', '(GMT/UTC +07:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(211, 'Indian/Cocos', 'Indian', '(GMT/UTC +06:30)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(212, 'Indian/Comoro', 'Indian', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(213, 'Indian/Kerguelen', 'Indian', '(GMT/UTC +05:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(214, 'Indian/Mahe', 'Indian', '(GMT/UTC +04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(215, 'Indian/Maldives', 'Indian', '(GMT/UTC +05:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(216, 'Indian/Mauritius', 'Indian', '(GMT/UTC +04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(217, 'Indian/Mayotte', 'Indian', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(218, 'Indian/Reunion', 'Indian', '(GMT/UTC +04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(219, 'Australia/Adelaide', 'Australia', '(GMT/UTC +09:30)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(220, 'Australia/Brisbane', 'Australia', '(GMT/UTC +10:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(221, 'Australia/Broken_Hill', 'Australia', '(GMT/UTC +09:30)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(222, 'Australia/Darwin', 'Australia', '(GMT/UTC +09:30)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(223, 'Australia/Eucla', 'Australia', '(GMT/UTC +08:45)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(224, 'Australia/Hobart', 'Australia', '(GMT/UTC +10:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(225, 'Australia/Lindeman', 'Australia', '(GMT/UTC +10:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(226, 'Australia/Lord_Howe', 'Australia', '(GMT/UTC +10:30)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(227, 'Australia/Melbourne', 'Australia', '(GMT/UTC +10:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(228, 'Australia/Perth', 'Australia', '(GMT/UTC +08:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(229, 'Australia/Sydney', 'Australia', '(GMT/UTC +10:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(230, 'Asia/Aden', 'Asia', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(231, 'Asia/Almaty', 'Asia', '(GMT/UTC +06:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(232, 'Asia/Amman', 'Asia', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(233, 'Asia/Anadyr', 'Asia', '(GMT/UTC +12:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(234, 'Asia/Aqtau', 'Asia', '(GMT/UTC +05:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(235, 'Asia/Aqtobe', 'Asia', '(GMT/UTC +05:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(236, 'Asia/Ashgabat', 'Asia', '(GMT/UTC +05:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(237, 'Asia/Atyrau', 'Asia', '(GMT/UTC +05:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(238, 'Asia/Baghdad', 'Asia', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(239, 'Asia/Bahrain', 'Asia', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(240, 'Asia/Baku', 'Asia', '(GMT/UTC +04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(241, 'Asia/Bangkok', 'Asia', '(GMT/UTC +07:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(242, 'Asia/Barnaul', 'Asia', '(GMT/UTC +07:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(243, 'Asia/Beirut', 'Asia', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(244, 'Asia/Bishkek', 'Asia', '(GMT/UTC +06:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(245, 'Asia/Brunei', 'Asia', '(GMT/UTC +08:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(246, 'Asia/Chita', 'Asia', '(GMT/UTC +09:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(247, 'Asia/Choibalsan', 'Asia', '(GMT/UTC +08:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(248, 'Asia/Colombo', 'Asia', '(GMT/UTC +05:30)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(249, 'Asia/Damascus', 'Asia', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(250, 'Asia/Dhaka', 'Asia', '(GMT/UTC +06:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(251, 'Asia/Dili', 'Asia', '(GMT/UTC +09:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(252, 'Asia/Dubai', 'Asia', '(GMT/UTC +04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(253, 'Asia/Dushanbe', 'Asia', '(GMT/UTC +05:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(254, 'Asia/Famagusta', 'Asia', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(255, 'Asia/Gaza', 'Asia', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(256, 'Asia/Hebron', 'Asia', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(257, 'Asia/Ho_Chi_Minh', 'Asia', '(GMT/UTC +07:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(258, 'Asia/Hong_Kong', 'Asia', '(GMT/UTC +08:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(259, 'Asia/Hovd', 'Asia', '(GMT/UTC +07:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(260, 'Asia/Irkutsk', 'Asia', '(GMT/UTC +08:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(261, 'Asia/Jakarta', 'Asia', '(GMT/UTC +07:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(262, 'Asia/Jayapura', 'Asia', '(GMT/UTC +09:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(263, 'Asia/Jerusalem', 'Asia', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(264, 'Asia/Kabul', 'Asia', '(GMT/UTC +04:30)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(265, 'Asia/Kamchatka', 'Asia', '(GMT/UTC +12:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(266, 'Asia/Karachi', 'Asia', '(GMT/UTC +05:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(267, 'Asia/Kathmandu', 'Asia', '(GMT/UTC +05:45)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(268, 'Asia/Khandyga', 'Asia', '(GMT/UTC +09:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(269, 'Asia/Kolkata', 'Asia', '(GMT/UTC +05:30)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(270, 'Asia/Krasnoyarsk', 'Asia', '(GMT/UTC +07:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(271, 'Asia/Kuala_Lumpur', 'Asia', '(GMT/UTC +08:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(272, 'Asia/Kuching', 'Asia', '(GMT/UTC +08:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(273, 'Asia/Kuwait', 'Asia', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(274, 'Asia/Macau', 'Asia', '(GMT/UTC +08:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(275, 'Asia/Magadan', 'Asia', '(GMT/UTC +11:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(276, 'Asia/Makassar', 'Asia', '(GMT/UTC +08:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(277, 'Asia/Manila', 'Asia', '(GMT/UTC +08:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(278, 'Asia/Muscat', 'Asia', '(GMT/UTC +04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(279, 'Asia/Nicosia', 'Asia', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(280, 'Asia/Novokuznetsk', 'Asia', '(GMT/UTC +07:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(281, 'Asia/Novosibirsk', 'Asia', '(GMT/UTC +07:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(282, 'Asia/Omsk', 'Asia', '(GMT/UTC +06:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(283, 'Asia/Oral', 'Asia', '(GMT/UTC +05:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(284, 'Asia/Phnom_Penh', 'Asia', '(GMT/UTC +07:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(285, 'Asia/Pontianak', 'Asia', '(GMT/UTC +07:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(286, 'Asia/Pyongyang', 'Asia', '(GMT/UTC +09:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(287, 'Asia/Qatar', 'Asia', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(288, 'Asia/Qostanay', 'Asia', '(GMT/UTC +06:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(289, 'Asia/Qyzylorda', 'Asia', '(GMT/UTC +05:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(290, 'Asia/Riyadh', 'Asia', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(291, 'Asia/Sakhalin', 'Asia', '(GMT/UTC +11:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(292, 'Asia/Samarkand', 'Asia', '(GMT/UTC +05:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(293, 'Asia/Seoul', 'Asia', '(GMT/UTC +09:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(294, 'Asia/Shanghai', 'Asia', '(GMT/UTC +08:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(295, 'Asia/Singapore', 'Asia', '(GMT/UTC +08:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(296, 'Asia/Srednekolymsk', 'Asia', '(GMT/UTC +11:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(297, 'Asia/Taipei', 'Asia', '(GMT/UTC +08:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(298, 'Asia/Tashkent', 'Asia', '(GMT/UTC +05:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(299, 'Asia/Tbilisi', 'Asia', '(GMT/UTC +04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(300, 'Asia/Tehran', 'Asia', '(GMT/UTC +04:30)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(301, 'Asia/Thimphu', 'Asia', '(GMT/UTC +06:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(302, 'Asia/Tokyo', 'Asia', '(GMT/UTC +09:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(303, 'Asia/Tomsk', 'Asia', '(GMT/UTC +07:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(304, 'Asia/Ulaanbaatar', 'Asia', '(GMT/UTC +08:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(305, 'Asia/Urumqi', 'Asia', '(GMT/UTC +06:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(306, 'Asia/Ust-Nera', 'Asia', '(GMT/UTC +10:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(307, 'Asia/Vientiane', 'Asia', '(GMT/UTC +07:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(308, 'Asia/Vladivostok', 'Asia', '(GMT/UTC +10:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(309, 'Asia/Yakutsk', 'Asia', '(GMT/UTC +09:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(310, 'Asia/Yangon', 'Asia', '(GMT/UTC +06:30)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(311, 'Asia/Yekaterinburg', 'Asia', '(GMT/UTC +05:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(312, 'Asia/Yerevan', 'Asia', '(GMT/UTC +04:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(313, 'Africa/Abidjan', 'Africa', '(GMT/UTC +00:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(314, 'Africa/Accra', 'Africa', '(GMT/UTC +00:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(315, 'Africa/Addis_Ababa', 'Africa', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(316, 'Africa/Algiers', 'Africa', '(GMT/UTC +01:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(317, 'Africa/Asmara', 'Africa', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(318, 'Africa/Bamako', 'Africa', '(GMT/UTC +00:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(319, 'Africa/Bangui', 'Africa', '(GMT/UTC +01:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(320, 'Africa/Banjul', 'Africa', '(GMT/UTC +00:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(321, 'Africa/Bissau', 'Africa', '(GMT/UTC +00:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(322, 'Africa/Blantyre', 'Africa', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(323, 'Africa/Brazzaville', 'Africa', '(GMT/UTC +01:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(324, 'Africa/Bujumbura', 'Africa', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(325, 'Africa/Cairo', 'Africa', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(326, 'Africa/Casablanca', 'Africa', '(GMT/UTC +01:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(327, 'Africa/Ceuta', 'Africa', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(328, 'Africa/Conakry', 'Africa', '(GMT/UTC +00:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(329, 'Africa/Dakar', 'Africa', '(GMT/UTC +00:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(330, 'Africa/Dar_es_Salaam', 'Africa', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(331, 'Africa/Djibouti', 'Africa', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(332, 'Africa/Douala', 'Africa', '(GMT/UTC +01:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(333, 'Africa/El_Aaiun', 'Africa', '(GMT/UTC +01:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(334, 'Africa/Freetown', 'Africa', '(GMT/UTC +00:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(335, 'Africa/Gaborone', 'Africa', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(336, 'Africa/Harare', 'Africa', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(337, 'Africa/Johannesburg', 'Africa', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(338, 'Africa/Juba', 'Africa', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(339, 'Africa/Kampala', 'Africa', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(340, 'Africa/Khartoum', 'Africa', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(341, 'Africa/Kigali', 'Africa', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(342, 'Africa/Kinshasa', 'Africa', '(GMT/UTC +01:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(343, 'Africa/Lagos', 'Africa', '(GMT/UTC +01:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(344, 'Africa/Libreville', 'Africa', '(GMT/UTC +01:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(345, 'Africa/Lome', 'Africa', '(GMT/UTC +00:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(346, 'Africa/Luanda', 'Africa', '(GMT/UTC +01:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(347, 'Africa/Lubumbashi', 'Africa', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(348, 'Africa/Lusaka', 'Africa', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(349, 'Africa/Malabo', 'Africa', '(GMT/UTC +01:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(350, 'Africa/Maputo', 'Africa', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(351, 'Africa/Maseru', 'Africa', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(352, 'Africa/Mbabane', 'Africa', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(353, 'Africa/Mogadishu', 'Africa', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(354, 'Africa/Monrovia', 'Africa', '(GMT/UTC +00:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(355, 'Africa/Nairobi', 'Africa', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(356, 'Africa/Ndjamena', 'Africa', '(GMT/UTC +01:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(357, 'Africa/Niamey', 'Africa', '(GMT/UTC +01:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(358, 'Africa/Nouakchott', 'Africa', '(GMT/UTC +00:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(359, 'Africa/Ouagadougou', 'Africa', '(GMT/UTC +00:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(360, 'Africa/Porto-Novo', 'Africa', '(GMT/UTC +01:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(361, 'Africa/Sao_Tome', 'Africa', '(GMT/UTC +00:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(362, 'Africa/Tripoli', 'Africa', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(363, 'Africa/Tunis', 'Africa', '(GMT/UTC +01:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(364, 'Africa/Windhoek', 'Africa', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(365, 'Antarctica/Casey', 'Antarctica', '(GMT/UTC +11:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(366, 'Antarctica/Davis', 'Antarctica', '(GMT/UTC +07:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(367, 'Antarctica/DumontDUrville', 'Antarctica', '(GMT/UTC +10:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(368, 'Antarctica/Macquarie', 'Antarctica', '(GMT/UTC +10:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(369, 'Antarctica/Mawson', 'Antarctica', '(GMT/UTC +05:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(370, 'Antarctica/McMurdo', 'Antarctica', '(GMT/UTC +12:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(371, 'Antarctica/Palmer', 'Antarctica', '(GMT/UTC -03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(372, 'Antarctica/Rothera', 'Antarctica', '(GMT/UTC -03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(373, 'Antarctica/Syowa', 'Antarctica', '(GMT/UTC +03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(374, 'Antarctica/Troll', 'Antarctica', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(375, 'Antarctica/Vostok', 'Antarctica', '(GMT/UTC +06:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(376, 'Arctic/Longyearbyen', 'Arctic', '(GMT/UTC +02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(377, 'Atlantic/Azores', 'Atlantic', '(GMT/UTC +00:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(378, 'Atlantic/Bermuda', 'Atlantic', '(GMT/UTC -03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(379, 'Atlantic/Canary', 'Atlantic', '(GMT/UTC +01:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(380, 'Atlantic/Cape_Verde', 'Atlantic', '(GMT/UTC -01:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(381, 'Atlantic/Faroe', 'Atlantic', '(GMT/UTC +01:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(382, 'Atlantic/Madeira', 'Atlantic', '(GMT/UTC +01:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(383, 'Atlantic/Reykjavik', 'Atlantic', '(GMT/UTC +00:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(384, 'Atlantic/South_Georgia', 'Atlantic', '(GMT/UTC -02:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(385, 'Atlantic/St_Helena', 'Atlantic', '(GMT/UTC +00:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(386, 'Atlantic/Stanley', 'Atlantic', '(GMT/UTC -03:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(387, 'Pacific/Apia', 'Pacific', '(GMT/UTC +13:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(388, 'Pacific/Auckland', 'Pacific', '(GMT/UTC +12:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(389, 'Pacific/Bougainville', 'Pacific', '(GMT/UTC +11:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(390, 'Pacific/Chatham', 'Pacific', '(GMT/UTC +12:45)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(391, 'Pacific/Chuuk', 'Pacific', '(GMT/UTC +10:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(392, 'Pacific/Easter', 'Pacific', '(GMT/UTC -06:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(393, 'Pacific/Efate', 'Pacific', '(GMT/UTC +11:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(394, 'Pacific/Fakaofo', 'Pacific', '(GMT/UTC +13:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(395, 'Pacific/Fiji', 'Pacific', '(GMT/UTC +12:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(396, 'Pacific/Funafuti', 'Pacific', '(GMT/UTC +12:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(397, 'Pacific/Galapagos', 'Pacific', '(GMT/UTC -06:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(398, 'Pacific/Gambier', 'Pacific', '(GMT/UTC -09:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(399, 'Pacific/Guadalcanal', 'Pacific', '(GMT/UTC +11:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(400, 'Pacific/Guam', 'Pacific', '(GMT/UTC +10:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(401, 'Pacific/Honolulu', 'Pacific', '(GMT/UTC -10:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(402, 'Pacific/Kanton', 'Pacific', '(GMT/UTC +13:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(403, 'Pacific/Kiritimati', 'Pacific', '(GMT/UTC +14:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(404, 'Pacific/Kosrae', 'Pacific', '(GMT/UTC +11:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(405, 'Pacific/Kwajalein', 'Pacific', '(GMT/UTC +12:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(406, 'Pacific/Majuro', 'Pacific', '(GMT/UTC +12:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(407, 'Pacific/Marquesas', 'Pacific', '(GMT/UTC -09:30)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(408, 'Pacific/Midway', 'Pacific', '(GMT/UTC -11:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(409, 'Pacific/Nauru', 'Pacific', '(GMT/UTC +12:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(410, 'Pacific/Niue', 'Pacific', '(GMT/UTC -11:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(411, 'Pacific/Norfolk', 'Pacific', '(GMT/UTC +11:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(412, 'Pacific/Noumea', 'Pacific', '(GMT/UTC +11:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(413, 'Pacific/Pago_Pago', 'Pacific', '(GMT/UTC -11:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(414, 'Pacific/Palau', 'Pacific', '(GMT/UTC +09:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(415, 'Pacific/Pitcairn', 'Pacific', '(GMT/UTC -08:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(416, 'Pacific/Pohnpei', 'Pacific', '(GMT/UTC +11:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(417, 'Pacific/Port_Moresby', 'Pacific', '(GMT/UTC +10:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(418, 'Pacific/Rarotonga', 'Pacific', '(GMT/UTC -10:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(419, 'Pacific/Saipan', 'Pacific', '(GMT/UTC +10:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(420, 'Pacific/Tahiti', 'Pacific', '(GMT/UTC -10:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(421, 'Pacific/Tarawa', 'Pacific', '(GMT/UTC +12:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(422, 'Pacific/Tongatapu', 'Pacific', '(GMT/UTC +13:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(423, 'Pacific/Wake', 'Pacific', '(GMT/UTC +12:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(424, 'Pacific/Wallis', 'Pacific', '(GMT/UTC +12:00)', '2025-09-17 21:22:59', '2025-09-17 21:22:59'),
(425, 'UTC', 'UTC', '', '2025-09-17 21:22:59', '2025-09-17 21:22:59');

-- --------------------------------------------------------

--
-- Table structure for table `timezones`
--

CREATE TABLE `timezones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `offset` varchar(255) NOT NULL,
  `diff_from_gtm` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translates`
--

CREATE TABLE `translates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lang_code` varchar(3) NOT NULL,
  `group_langname` varchar(255) NOT NULL DEFAULT 'general',
  `key` text NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translates`
--

INSERT INTO `translates` (`id`, `lang_code`, `group_langname`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'en', 'menu', 'Dashboard', 'Dashboard', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(2, 'en', 'menu', 'Profile', 'Profile', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(3, 'en', 'menu', 'All Tickets', 'All Tickets', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(4, 'en', 'menu', 'Recent Tickets', 'Recent Tickets', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(5, 'en', 'menu', 'Total Tickets', 'Total Tickets', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(6, 'en', 'menu', 'Total Active Tickets', 'Total Active Tickets', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(7, 'en', 'menu', 'Total Closed Tickets', 'Total Closed Tickets', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(8, 'en', 'menu', 'Total On-Hold Tickets', 'Total On-Hold Tickets', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(9, 'en', 'menu', 'Total Overdue Tickets', 'Total Overdue Tickets', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(10, 'en', 'menu', 'Total Assigned Tickets', 'Total Assigned Tickets', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(11, 'en', 'menu', 'My Tickets', 'My Tickets', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(12, 'en', 'menu', 'Self Assigned Tickets', 'Self Assigned Tickets', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(13, 'en', 'menu', 'Assigned Tickets', 'Assigned Tickets', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(14, 'en', 'menu', 'My Assigned Tickets', 'My Assigned Tickets', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(15, 'en', 'menu', 'My Closed Tickets', 'My Closed Tickets', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(16, 'en', 'menu', 'Categories', 'Categories', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(17, 'en', 'menu', 'Main Categories', 'Main Categories', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(18, 'en', 'menu', 'SubCategory', 'SubCategory', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(19, 'en', 'menu', 'Knowledge', 'Knowledge', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(20, 'en', 'menu', 'Articles', 'Articles', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(21, 'en', 'menu', 'Projects', 'Projects', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(22, 'en', 'menu', 'Trashed Tickets', 'Trashed Tickets', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(23, 'en', 'menu', 'Faq Category', 'Faq Category', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(24, 'en', 'menu', 'Manage Roles', 'Manage Roles', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(25, 'en', 'menu', 'Roles & Permissions', 'Roles & Permissions', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(26, 'en', 'menu', 'Create Employee', 'Create Employee', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(27, 'en', 'menu', 'Employees List', 'Employees List', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(28, 'en', 'menu', 'Landing Page Settings', 'Landing Page Settings', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(29, 'en', 'menu', 'Banner', 'Banner', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(30, 'en', 'menu', 'Feature Box', 'Feature Box', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(31, 'en', 'menu', 'Call To Action', 'Call To Action', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(32, 'en', 'menu', 'Testmonial', 'Testmonial', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(33, 'en', 'menu', 'FAQ’s', 'FAQ’s', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(34, 'en', 'menu', 'Customers', 'Customers', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(35, 'en', 'menu', 'Canned Response', 'Canned Response', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(36, 'en', 'menu', 'Envato', 'Envato', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(37, 'en', 'menu', 'Envato API Token', 'Envato API Token', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(38, 'en', 'menu', 'Envato License Verification', 'Envato License Verification', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(39, 'en', 'menu', 'App Info', 'App Info', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(40, 'en', 'menu', 'App Purchase Code', 'App Purchase Code', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(41, 'en', 'menu', 'Groups', 'Groups', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(42, 'en', 'menu', 'Create Group', 'Create Group', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(43, 'en', 'menu', 'Groups List', 'Groups List', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(44, 'en', 'menu', 'Notifications', 'Notifications', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(45, 'en', 'menu', 'All Notifications', 'All Notifications', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(46, 'en', 'menu', 'Custom Notifications', 'Custom Notifications', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(47, 'en', 'menu', 'Custom Pages', 'Custom Pages', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(48, 'en', 'menu', 'Pages', 'Pages', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(49, 'en', 'menu', '404 Error Page', '404 Error Page', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(50, 'en', 'menu', 'Under Maintenance Page', 'Under Maintenance Page', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(51, 'en', 'menu', 'Bussiness Hours', 'Bussiness Hours', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(52, 'en', 'menu', 'App Setting', 'App Setting', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(53, 'en', 'menu', 'General Setting', 'General Setting', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(54, 'en', 'menu', 'Ticket Setting', 'Ticket Setting', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(55, 'en', 'menu', 'SEO', 'SEO', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(56, 'en', 'menu', 'Google Analytics', 'Google Analytics', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(57, 'en', 'menu', 'Custom CSS & JS', 'Custom CSS & JS', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(58, 'en', 'menu', 'Captcha Setting', 'Captcha Setting', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(59, 'en', 'menu', 'Social Logins', 'Social Logins', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(60, 'en', 'menu', 'Email Setting', 'Email Setting', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(61, 'en', 'menu', 'External Chat', 'External Chat', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(62, 'en', 'menu', 'Maintenance Mode', 'Maintenance Mode', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(63, 'en', 'menu', 'Security Setting', 'Security Setting', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(64, 'en', 'menu', 'IP List', 'IP List', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(65, 'en', 'menu', 'Email to Tickets', 'Email to Tickets', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(66, 'en', 'menu', 'Announcements', 'Announcements', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(67, 'en', 'menu', 'Email Templates', 'Email Templates', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(68, 'en', 'menu', 'Clear Cache', 'Clear Cache', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(69, 'en', 'menu', 'Custom Field', 'Custom Field', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(70, 'en', 'menu', 'Languages', 'Languages', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(71, 'en', 'menu', 'Create Ticket', 'Create Ticket', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(72, 'en', 'menu', 'Home Page', 'Home Page', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(73, 'en', 'menu', 'Profile', 'Profile', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(74, 'en', 'menu', 'Logout', 'Logout', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(75, 'en', 'menu', 'Home', 'Home', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(76, 'en', 'menu', 'Contact Us', 'Contact Us', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(77, 'en', 'menu', 'Tickets', 'Tickets', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(78, 'en', 'menu', 'Login', 'Login', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(79, 'en', 'menu', 'Register', 'Register', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(80, 'en', 'menu', 'Submit Ticket', 'Submit Ticket', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(81, 'en', 'menu', 'Edit Profile', 'Edit Profile', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(82, 'en', 'menu', 'Active Tickets', 'Active Tickets', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(83, 'en', 'menu', 'Closed Tickets', 'Closed Tickets', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(84, 'en', 'menu', 'On-Hold Tickets', 'On-Hold Tickets', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(85, 'en', 'notification', 'New Notifications', 'New Notifications', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(86, 'en', 'notification', 'Mark all as read', 'Mark all as read', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(87, 'en', 'notification', 'A new ticket has been created', 'A new ticket has been created', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(88, 'en', 'notification', 'Ticket is assigned', 'Ticket is assigned', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(89, 'en', 'notification', 'This ticket has been closed', 'This ticket has been closed', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(90, 'en', 'notification', 'This ticket status is On-Hold', 'This ticket status is On-Hold', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(91, 'en', 'notification', 'This ticket has been reopened', 'This ticket has been reopened', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(92, 'en', 'notification', 'You got a new reply on this ticket', 'You got a new reply on this ticket', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(93, 'en', 'notification', 'This ticket status is overdue', 'This ticket status is overdue', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(94, 'en', 'notification', 'There are no new notifications to display', 'There are no new notifications to display', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(95, 'en', 'notification', 'See All Notifications', 'See All Notifications', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(96, 'en', 'notification', 'Your new ticket has been created', 'Your new ticket has been created', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(97, 'en', 'notification', 'Your ticket has been closed', 'Your ticket has been closed', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(98, 'en', 'notification', 'Your ticket status is On-Hold', 'Your ticket status is On-Hold', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(99, 'en', 'notification', 'Your ticket has been Reopened', 'Your ticket has been Reopened', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(100, 'en', 'notification', 'You got a new reply on this ticket', 'You got a new reply on this ticket', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(101, 'en', 'notification', 'Your ticket status is overdue', 'Your ticket status is overdue', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(102, 'en', 'notification', 'Filter Notifications', 'Filter Notifications', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(103, 'en', 'notification', 'Sort by Status', 'Sort by Status', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(104, 'en', 'notification', 'New Tickets', 'New Tickets', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(105, 'en', 'notification', 'Closed Tickets', 'Closed Ticketss', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(106, 'en', 'notification', 'On-Hold Tickets', 'On-Hold Tickets', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(107, 'en', 'notification', 'Overdue Tickets', 'Overdue Tickets', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(108, 'en', 'notification', 'Re-Open Tickets', 'Re-Open Tickets', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(109, 'en', 'notification', 'Inprogress Tickets', 'Inprogress Tickets', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(110, 'en', 'notification', 'Custom Notifications', 'Custom Notifications', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(111, 'en', 'notification', 'New Ticket', 'New Ticket', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(112, 'en', 'notification', 'Closed Ticket', 'Closed Ticket', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(113, 'en', 'notification', 'On-Hold Ticket', 'On-Hold Ticket', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(114, 'en', 'notification', 'Overdue Ticket', 'Overdue Ticket', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(115, 'en', 'notification', 'Re-Open Ticket', 'Re-Open Ticket', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(116, 'en', 'notification', 'Inprogress Ticket', 'Inprogress Ticket', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(117, 'en', 'alerts', 'We have e-mailed your password reset link!', 'We have e-mailed your password reset link!', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(118, 'en', 'alerts', 'Your Account is Inactive. Please Contact to Admin.', 'Your Account is Inactive. Please Contact to Admin.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(119, 'en', 'alerts', 'Your Account is Not Verified.', 'Your Account is Not Verified.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(120, 'en', 'alerts', 'Your password has been changed!', 'Your password has been changed!', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(121, 'en', 'alerts', 'An announcement has been successfully updated.', 'An announcement has been successfully updated.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(122, 'en', 'alerts', 'The announcement was successfully deleted.', 'The announcement was successfully deleted.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(123, 'en', 'alerts', 'Updated successfully', 'Updated successfully', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(124, 'en', 'alerts', 'The ticket was successfully assigned.', 'The ticket was successfully assigned.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(125, 'en', 'alerts', 'Deleted successfully', 'Deleted successfully', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(126, 'en', 'alerts', 'Please check the format and size of the file.', 'Please check the format and size of the file.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(127, 'en', 'alerts', 'Your profile has been successfully updated.', 'Your profile has been successfully updated.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(128, 'en', 'alerts', 'The profile image was successfully removed.', 'The profile image was successfully removed.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(129, 'en', 'alerts', 'A new customer was successfully added.', 'A new customer was successfully added.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(130, 'en', 'alerts', 'The customer profile was successfully updated.', 'The customer profile was successfully updated.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(131, 'en', 'alerts', 'The account has been deactivated.', 'The account has been deactivated.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(132, 'en', 'alerts', 'The customer was deleted successfully.', 'The customer was deleted successfully.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(133, 'en', 'alerts', 'A test email was sent successfully.', 'A test email was sent successfully.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(134, 'en', 'alerts', 'The test email couldn’t be sent.', 'The test email couldn’t be sent.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(135, 'en', 'alerts', 'The ticket has been closed.', 'The ticket has been closed.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(136, 'en', 'alerts', 'The ticket was successfully deleted.', 'The ticket was successfully deleted.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(137, 'en', 'alerts', 'A ticket has been opened with the ticket ID.', 'A ticket has been opened with the ticket ID.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(138, 'en', 'alerts', 'Domain is Blocked List', 'Domain is Blocked List', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(139, 'en', 'alerts', 'The note was successfully submitted.', 'The note was successfully submitted.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(140, 'en', 'alerts', 'The note was successfully deleted.', 'The note was successfully deleted.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(141, 'en', 'alerts', 'The ticket was successfully restore.', 'The ticket was successfully restore.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(142, 'en', 'alerts', 'A new employee was successfully added.', 'A new employee was successfully added.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(143, 'en', 'alerts', 'The employee’s profile was successfully updated.', 'The employee’s profile was successfully updated.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(144, 'en', 'alerts', 'The employee was successfully deleted.', 'The employee was successfully deleted.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(145, 'en', 'alerts', 'The employee list was imported successfully.', 'The employee list was imported successfully.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(146, 'en', 'alerts', 'The password has been successfully changed!', 'The password has been successfully changed!', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(147, 'en', 'alerts', 'A new article was successfully created.', 'A new article was successfully created.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(148, 'en', 'alerts', 'This article has been successfully updated.', 'This article has been successfully updated.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(149, 'en', 'alerts', 'The article was successfully deleted.', 'The article was successfully deleted.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(150, 'en', 'alerts', 'Cannot Update the data', 'Cannot Update the data', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(151, 'en', 'alerts', 'The category was successfully updated.', 'The category was successfully updated.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(152, 'en', 'alerts', 'The category was successfully deleted.', 'The category was successfully deleted.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(153, 'en', 'alerts', 'The subcategory was successfully updated.', 'The subcategory was successfully updated.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(154, 'en', 'alerts', 'The subcategory was successfully deleted.', 'The subcategory was successfully deleted.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(155, 'en', 'alerts', 'Your new password can not be the same as your old password. Please choose a new password.', 'Your new password can not be the same as your old password. Please choose a new password.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(156, 'en', 'alerts', 'The current password does not match!', 'The current password does not match!', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(157, 'en', 'alerts', 'The response to the ticket was successful.', 'The response to the ticket was successful.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(158, 'en', 'alerts', 'The ticket has been successfully reopened.', 'The ticket has been successfully reopened.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(159, 'en', 'alerts', 'The FAQ has been successfully updated.', 'The FAQ has been successfully updated.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(160, 'en', 'alerts', 'The FAQ has been successfully deleted.', 'The FAQ has been successfully deleted.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(161, 'en', 'alerts', 'Featurebox Updated successfully', 'Featurebox Updated successfully', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(162, 'en', 'alerts', 'Featurebox Updated successfully', 'Featurebox Updated successfully', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(163, 'en', 'alerts', 'A group was successfully created.', 'A group was successfully created.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(164, 'en', 'alerts', 'The group updated successfully.', 'The group updated successfully.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(165, 'en', 'alerts', 'The group deleted successfully.', 'The group deleted successfully.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(166, 'en', 'alerts', 'The IP address was successfully created and updated.', 'The IP address was successfully created and updated.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(167, 'en', 'alerts', 'The IP address has been successfully removed.', 'The IP address has been successfully removed.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(168, 'en', 'alerts', 'A custom notification was successfully sent to the customer.', 'A custom notification was successfully sent to the customer.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(169, 'en', 'alerts', 'A custom notification was successfully sent to the employee.', 'A custom notification was successfully sent to the employee.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(170, 'en', 'alerts', '\"Custom notification\" was successfully deleted.', '\"Custom notification\" was successfully deleted.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(171, 'en', 'alerts', 'Role updated successfully', 'Role updated successfully', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(172, 'en', 'alerts', 'The project has been updated successfully.', 'The project has been updated successfully.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(173, 'en', 'alerts', 'The project was successfully deleted.', 'The project was successfully deleted.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(174, 'en', 'alerts', 'The projects were successfully assigned.', 'The projects were successfully assigned.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(175, 'en', 'alerts', 'Projects have not been assigned.', 'Projects have not been assigned.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(176, 'en', 'alerts', 'The project list was imported successfully.', 'The project list was imported successfully.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(177, 'en', 'alerts', 'The role was successfully created.', 'The role was successfully created.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(178, 'en', 'alerts', 'The role has been successfully updated.', 'The role has been successfully updated.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(179, 'en', 'alerts', 'You are not supposed to block your own country.', 'You are not supposed to block your own country.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(180, 'en', 'alerts', 'The language has been successfully updated', 'The language has been successfully updated', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(181, 'en', 'alerts', 'The testimonial has been successfully updated', 'The testimonial has been successfully updated', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(182, 'en', 'alerts', 'The testimonial to was successfully deleted.', 'The testimonial to was successfully deleted.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(183, 'en', 'alerts', 'Thank you for contacting us!', 'Thank you for contacting us!', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(184, 'en', 'alerts', 'Password successfully changed!', 'Password successfully changed!', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(185, 'en', 'alerts', 'Current password does not match!', 'Current password does not match!', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(186, 'en', 'alerts', 'Your email has not been verified. Please verify your email.', 'Your email has not been verified. Please verify your email.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(187, 'en', 'alerts', 'This email is not registered.', 'This email is not registered.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(188, 'en', 'alerts', 'Invalid email or password', 'Invalid email or password', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(189, 'en', 'alerts', 'Techincal Issue', 'Techincal Issue', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(190, 'en', 'alerts', 'The email verification link was successfully sent. Please check and verify your email.', 'The email verification link was successfully sent. Please check and verify your email.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(191, 'en', 'alerts', 'Your e-mail has been verified. You can now login.', 'Your e-mail has been verified. You can now login.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(192, 'en', 'alerts', 'Your e-mail has already been verified. You can now login.', 'Your e-mail has already been verified. You can now login.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(193, 'en', 'alerts', 'Sorry, your email could not be determined.', 'Sorry, your email could not be determined.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(194, 'en', 'alerts', 'Your account has been deleted!', 'Your account has been deleted!', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(195, 'en', 'alerts', 'The ticket has been already closed.', 'The ticket has been already closed.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(196, 'en', 'alerts', 'The image has been deleted successfully!', 'The image has been deleted successfully!', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(197, 'en', 'alerts', 'You already rating has submitted.', 'You already rating has submitted.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(198, 'en', 'alerts', 'Thank you for rating us.', 'Thank you for rating us.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(199, 'en', 'alerts', 'The purchase code has been verified, but your product support has expired.', 'The purchase code has been verified, but your product support has expired.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(200, 'en', 'alerts', 'The purchase code has been validated and is supported.', 'The purchase code has been validated and is supported.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(201, 'en', 'alerts', 'The Purchase Code is invalid.', 'The Purchase Code is invalid.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(202, 'en', 'alerts', 'Your comment has be submitted.', 'Your comment has be submitted.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(203, 'en', 'alerts', 'Please check your Email', 'Please check your Email', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(204, 'en', 'alerts', 'Email is already registered, Please login to Create a Ticket', 'Email is already registered, Please login to Create a Ticket', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(205, 'en', 'alerts', 'Please select at least one check box.', 'Please select at least one check box.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(206, 'en', 'alerts', 'Category name already exists', 'Category name already exists', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(207, 'en', 'alerts', 'SubCategory name already exists', 'SubCategory name already exists', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(208, 'en', 'alerts', 'Setting Not Updated', 'Setting Not Updated', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(209, 'en', 'alerts', 'Project Name is Already Exists', 'Project Name is Already Exists', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(210, 'en', 'alerts', 'Are you sure you want to continue?', 'Are you sure you want to continue?', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(211, 'en', 'alerts', 'This might erase your records permanently', 'This might erase your records permanently', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(212, 'en', 'alerts', 'Are you sure you want to unassign this agent?', 'Are you sure you want to unassign this agent?', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(213, 'en', 'alerts', 'This agent may no longer exist for this ticket.', 'This agent may no longer exist for this ticket.', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(214, 'en', 'alerts', 'Are you sure you want to reset this record?', 'Are you sure you want to reset this record?', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(215, 'en', 'alerts', 'Are you sure you want to remove the profile image?', 'Are you sure you want to remove the profile image?', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(216, 'en', 'setting', 'App Title & Logos', 'App Title & Logos', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(217, 'en', 'setting', 'Upload Light-Logo', 'Upload Light-Logo', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(218, 'en', 'setting', 'Upload Dark-Logo', 'Upload Dark-Logo', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(219, 'en', 'setting', 'Upload Dark-Icon', 'Upload Dark-Icon', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(220, 'en', 'setting', 'Upload Light-Icon', 'Upload Light-Icon', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(221, 'en', 'setting', 'Upload Favicon', 'Upload Favicon', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(222, 'en', 'setting', 'Set URL', 'Set URL', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(223, 'en', 'setting', 'Terms of service URL', 'Terms of service URL', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(224, 'en', 'setting', 'Color Setting', 'Color Setting', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(225, 'en', 'setting', 'Primary Color', 'Primary Color', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(226, 'en', 'setting', 'Secondary Color', 'Secondary Color', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(227, 'en', 'setting', 'Global Language Setting', 'Global Language Setting', '2025-09-17 21:23:02', '2025-09-17 21:23:02'),
(228, 'en', 'setting', 'Select Language', 'Select Language', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(229, 'en', 'setting', 'Global Date & Time Format', 'Global Date & Time Format', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(230, 'en', 'setting', 'Select Date Format', 'Select Date Format', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(231, 'en', 'setting', 'Select Time Format', 'Select Time Format', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(232, 'en', 'setting', 'First Day of the Week', 'First Day of the Week', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(233, 'en', 'setting', 'Select Day', 'Select Day', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(234, 'en', 'setting', 'Global Timezones', 'Global Timezones', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(235, 'en', 'setting', 'Select Global Timezones', 'Select Global Timezones', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(236, 'en', 'setting', 'App Global Settings', 'App Global Settings', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(237, 'en', 'setting', 'Enable Personal Setting For Admin Panel', 'Enable Personal Setting For Admin Panel', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(238, 'en', 'setting', 'If you disable this setting, the \"Personal Setting\" with the \"Switch to Dark-Mode\" option will disappear from the Admin panel on the profile page.', 'If you disable this setting, the \"Personal Setting\" with the \"Switch to Dark-Mode\" option will disappear from the Admin panel on the profile page.', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(239, 'en', 'setting', 'Enable Personal Setting For Customer Panel', 'Enable Personal Setting For Customer Panel', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(240, 'en', 'setting', 'If you enable this setting, it will appear on all customer panels on the profile page with the \"Switch to Dark-Mode\" option. And global \"Dark-Mode', 'If you enable this setting, it will appear on all customer panels on the profile page with the \"Switch to Dark-Mode\" option. And global \"Dark-Mode', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(241, 'en', 'setting', 'Enable Dark-Mode', 'Enable Dark-Mode', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(242, 'en', 'setting', 'If you enable this setting, the whole application will convert into \"Dark-Mode\" except for the users that are permitted with \"Personal Settings.\"', 'If you enable this setting, the whole application will convert into \"Dark-Mode\" except for the users that are permitted with \"Personal Settings.\"', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(243, 'en', 'setting', 'Enable Popup Register/Login', 'Enable Popup Register/Login', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(244, 'en', 'setting', 'If you enable this setting, only customers can access the registration and login forms with the “popup modal”.', 'If you enable this setting, only customers can access the registration and login forms with the “popup modal”.', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(245, 'en', 'setting', 'Disable Register', 'Disable Register', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(246, 'en', 'setting', 'If you enable this setting, \"Register\" options will disappear from the application in the header section, and new visitors wont be able to register', 'If you enable this setting, \"Register\" options will disappear from the application in the header section, and new visitors wont be able to register', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(247, 'en', 'setting', 'Disable Google Font', 'Disable Google Font', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(248, 'en', 'setting', 'If you enable this setting, \"Google Font\" will not apply to the whole application or site.', 'If you enable this setting, \"Google Font\" will not apply to the whole application or site.', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(249, 'en', 'setting', 'Enable Force SSL (https)', 'Enable Force SSL (https)', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(250, 'en', 'setting', 'If you enable this setting, it will make your web application secure using \"force SSL\" when it is not secure, even if your domain is certified with an SSL certificate.', 'If you enable this setting, it will make your web application secure using \"force SSL\" when it is not secure, even if your domain is certified with an SSL certificate.', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(251, 'en', 'setting', 'Enable Knowledge', 'Enable Knowledge', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(252, 'en', 'setting', 'If you disable this setting, the \"Knowledge\" option will disappear from the application in the header section.', 'If you disable this setting, the \"Knowledge\" option will disappear from the application in the header section.', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(253, 'en', 'setting', 'Enable Faq', 'Enable Faq', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(254, 'en', 'setting', 'If you disable this setting, the \"faq\" option will disappear from the application in the header section.', 'If you disable this setting, the \"faq\" option will disappear from the application in the header section.', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(255, 'en', 'setting', 'Enable Contact Us', 'Enable Contact Us', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(256, 'en', 'setting', 'If you disable this setting, the \"Contact\" option will disappear from the application in the header section.', 'If you disable this setting, the \"Contact\" option will disappear from the application in the header section.', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(257, 'en', 'setting', 'Enable Customer Profile Image Upload', 'Enable Customer Profile Image Upload', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(258, 'en', 'setting', 'If you disable this setting, the \"Upload file\" option will disappear from the customers profile page, and they wont be able to upload their profile picture.', 'If you disable this setting, the \"Upload file\" option will disappear from the customers profile page, and they wont be able to upload their profile picture.', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(259, 'en', 'setting', 'Envato On', 'Envato On', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(260, 'en', 'setting', 'If you disable this Envato switch, the \"Envato\" option will disappear from the application’s side menu.', 'If you disable this Envato switch, the \"Envato\" option will disappear from the application’s side menu.', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(261, 'en', 'setting', 'Envato Expired On', 'Envato Expired On', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(262, 'en', 'setting', 'An expired license cannot be used by \"customers\" or \"guests\" if you enable this Envato Expired switch.', 'An expired license cannot be used by \"customers\" or \"guests\" if you enable this Envato Expired switch.', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(263, 'en', 'setting', 'Purchase code enable to agent', 'Purchase code enable to agent', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(264, 'en', 'setting', 'If you enable this, employees can see the purchase code.', 'If you enable this, employees can see the purchase code.', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(265, 'en', 'setting', 'Default Login', 'Default Login', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(266, 'en', 'setting', 'If you enable it will be a login page is default', 'If you enable it will be a login page is default', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(267, 'en', 'setting', 'Sidemenu Icon Style', 'Sidemenu Icon Style', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(268, 'en', 'setting', 'If you \"Enable\" this setting, the whole application sidemenu will be converted into \"Sidemenu Icon Style\".', 'If you \"Enable\" this setting, the whole application sidemenu will be converted into \"Sidemenu Icon Style\".', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(269, 'en', 'setting', 'Login Disable', 'Login Disable', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(270, 'en', 'setting', 'If you \"Enable\" this setting, customers cannot login to their dashboard.', 'If you \"Enable\" this setting, customers cannot login to their dashboard.', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(271, 'en', 'setting', 'Customer Account Delete On/off', 'Customer Account Delete On/off', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(272, 'en', 'setting', 'If you \"Enable\" this setting, customers can \"Delete\" their account permenently.', 'If you \"Enable\" this setting, customers can \"Delete\" their account permenently.', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(273, 'en', 'setting', 'Footer Copyright Text', 'Footer Copyright Text', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(274, 'en', 'setting', 'Customer Can Re-Open Ticket Enable/Disable', 'Customer Can Re-Open Ticket Enable/Disable', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(275, 'en', 'setting', 'If you disable this ticket setting, customers can not \"Re-Open\" their tickets. If it is enabled, then the customers can \"Re-Open\" their tickets within the mentioned days in the input field below. And if it is set to 0 (zero), then the customers can reopen their tickets at any time.', 'If you disable this ticket setting, customers can not \"Re-Open\" their tickets. If it is enabled, then the customers can \"Re-Open\" their tickets within the mentioned days in the input field below. And if it is set to 0 (zero), then the customers can reopen their tickets at any time.', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(276, 'en', 'setting', 'Re-Open Days', 'Re-Open Days', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(277, 'en', 'setting', 'Auto Close Ticket Enable/Disable', 'Auto Close Ticket Enable/Disable', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(278, 'en', 'setting', 'If you disable this ticket setting, the inactive ticket won’t be closed automatically. Users will need to close the ticket manually. If it is enabled, the inactive ticket will close automatically after the completion of the days that are mentioned in the input field below.', 'If you disable this ticket setting, the inactive ticket won’t be closed automatically. Users will need to close the ticket manually. If it is enabled, the inactive ticket will close automatically after the completion of the days that are mentioned in the input field below.', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(279, 'en', 'setting', 'Auto Close Days', 'Auto Close Days', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(280, 'en', 'setting', 'Auto Ticket Overdue Enable/Disable', 'Auto Ticket Overdue Enable/Disable', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(281, 'en', 'setting', 'If you disable this ticket setting, the \"overdue\" status won’t be reflected on the tickets table in the admin panel. If it is enabled and the users of an admin panel don’t give a reply to the customer within the mentioned days, then the ticket status changes to \"Overdue.\"', 'If you disable this ticket setting, the \"overdue\" status won’t be reflected on the tickets table in the admin panel. If it is enabled and the users of an admin panel don’t give a reply to the customer within the mentioned days, then the ticket status changes to \"Overdue.\"', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(282, 'en', 'setting', 'Auto Overdue Days', 'Auto Overdue Days', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(283, 'en', 'setting', 'Ticket Reply Status Time Enable/Disable', 'Ticket Reply Status Time Enable/Disable', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(284, 'en', 'setting', 'Basically, this setting is used to change the ticket status to \"Waiting for response\" when a customer doesn’t give a reply to the ticket within the mentioned hours in the input field. If you disable this ticket setting, then it won’t change the ticket status.', 'Basically, this setting is used to change the ticket status to \"Waiting for response\" when a customer doesn’t give a reply to the ticket within the mentioned hours in the input field. If you disable this ticket setting, then it won’t change the ticket status.', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(285, 'en', 'setting', 'Auto Reply Status in Hours', 'Auto Reply Status in Hours', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(286, 'en', 'setting', 'Auto Delete Notifications Enable/disable', 'Auto Delete Notifications Enable/disable', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(287, 'en', 'setting', 'If you disable this notification setting, the red notification won’t be deleted from both panels, i.e., the customer and admin panel. If it is enabled, then the red notifications will be deleted after the completion of the mentioned days in the input field.', 'If you disable this notification setting, the red notification won’t be deleted from both panels, i.e., the customer and admin panel. If it is enabled, then the red notifications will be deleted after the completion of the mentioned days in the input field.', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(288, 'en', 'setting', 'Auto Notification Days', 'Auto Notification Days', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(289, 'en', 'setting', 'Custom Ticket Id', 'Custom Ticket Id', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(290, 'en', 'setting', 'Simply customise your ticket ID. For example, SPT-1 is the ticket id. You can only customise the first letters of the ticket ID of your choice. It displays SPT-1 for the registered user and SPTG-1 for the guest user. By default, the letter \"G\" represents the guest user.', 'Simply customise your ticket ID. For example, SPT-1 is the ticket id. You can only customise the first letters of the ticket ID of your choice. It displays SPT-1 for the registered user and SPTG-1 for the guest user. By default, the letter \"G\" represents the guest user.', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(291, 'en', 'setting', 'Ticket Title Character Limit', 'Ticket Title Character Limit', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(292, 'en', 'setting', 'Basically, this setting is used for the limit of ticket titles.Which means the ticket`s title allows the maximum character entered value.', 'Basically, this setting is used for the limit of ticket titles.Which means the ticket`s title allows the maximum character entered value.', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(293, 'en', 'setting', 'Employee Name Protection', 'Employee Name Protection', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(294, 'en', 'setting', 'If you \"Enable\" this setting, customers will only be able to see the name that you give in the below input field. They will not be able to see the employees name and role.', 'If you \"Enable\" this setting, customers will only be able to see the name that you give in the below input field. They will not be able to see the employees name and role.', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(295, 'en', 'setting', 'Guest Ticket Enable/Disable', 'Guest Ticket Enable/Disable', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(296, 'en', 'setting', 'If you disable this ticket setting, the \"Guest Ticket\" option will disappear from the application in the header section.', 'If you disable this ticket setting, the \"Guest Ticket\" option will disappear from the application in the header section.', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(297, 'en', 'setting', 'Customer File Upload in Ticket', 'Customer File Upload in Ticket', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(298, 'en', 'setting', 'If you disable this ticket setting, the \"File Upload\" option will disappear from the \"Tickets\" page, while creating or replying to the ticket to the registered customers.', 'If you disable this ticket setting, the \"File Upload\" option will disappear from the \"Tickets\" page, while creating or replying to the ticket to the registered customers.', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(299, 'en', 'setting', 'Guest User File Upload in Ticket', 'Guest User File Upload in Ticket', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(300, 'en', 'setting', 'If you disable this ticket setting, the \"File Upload\" option will disappear from the \"Guest Ticket\" page while creating or replying to the ticket to the guest users.', 'If you disable this ticket setting, the \"File Upload\" option will disappear from the \"Guest Ticket\" page while creating or replying to the ticket to the guest users.', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(301, 'en', 'setting', 'Guest Ticket OTP Enable/Disable', 'Guest Ticket OTP Enable/Disable', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(302, 'en', 'setting', 'If you enable this ticket setting, the \"Guest Ticket OTP\" option will be disabled.', 'If you enable this ticket setting, the \"Guest Ticket OTP\" option will be disabled.', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(303, 'en', 'setting', 'Customer Ticket Enable/Disable', 'Customer Ticket Enable/Disable', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(304, 'en', 'setting', 'If you enable this ticket setting, the \"Customer Ticket\" option will disappear from the application in the user dashboard.', 'If you enable this ticket setting, the \"Customer Ticket\" option will disappear from the application in the user dashboard.', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(305, 'en', 'setting', 'Rating Page Enable/Disable', 'Rating Page Enable/Disable', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(306, 'en', 'setting', 'If you \"Enable\" this setting, the \"Rating Page\" will not appear to the customers after closing the ticket.', 'If you \"Enable\" this setting, the \"Rating Page\" will not appear to the customers after closing the ticket.', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(307, 'en', 'setting', 'File Setting', 'File Setting', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(308, 'en', 'setting', 'Captcha Disable', 'Captcha Disable', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(309, 'en', 'setting', 'By default, both manual and Google Captcha will be disabled.', 'By default, both manual and Google Captcha will be disabled.', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(310, 'en', 'setting', 'Manual Captcha Enable', 'Manual Captcha Enable', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(311, 'en', 'setting', 'This setting will enable the \"Manual\" captcha.', 'This setting will enable the \"Manual\" captcha.', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(312, 'en', 'setting', 'Google Captcha Enable', 'Google Captcha Enable', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(313, 'en', 'setting', 'This setting will enable the \"Google\" captcha.', 'This setting will enable the \"Google\" captcha.', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(314, 'en', 'setting', 'Enable On Contact Form', 'Enable On Contact Form', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(315, 'en', 'setting', 'If you enable this captcha setting feature, it will appear on the \"Contact Form\".', 'If you enable this captcha setting feature, it will appear on the \"Contact Form\".', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(316, 'en', 'setting', 'Enable On Register Form', 'Enable On Register Form', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(317, 'en', 'setting', 'If you enable this captcha setting feature, it will appear on the \"Register Form\".', 'If you enable this captcha setting feature, it will appear on the \"Register Form\".', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(318, 'en', 'setting', 'Enable On Login Form', 'Enable On Login Form', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(319, 'en', 'setting', 'If you enable this captcha setting feature, it will appear on the \"Login Form\".', 'If you enable this captcha setting feature, it will appear on the \"Login Form\".', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(320, 'en', 'setting', 'Enable On Guest Ticket', 'Enable On Guest Ticket', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(321, 'en', 'setting', 'If you enable this captcha setting feature, it will appear on the \"Guest Ticket\".', 'If you enable this captcha setting feature, it will appear on the \"Guest Ticket\".', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(322, 'en', 'setting', 'External Chat Enable/Disable', 'External Chat Enable/Disable', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(323, 'en', 'setting', 'If you enable this “External Chat” setting feature, it will appear on the \"Application\".', 'If you enable this “External Chat” setting feature, it will appear on the \"Application\".', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(324, 'en', 'setting', 'All Users', 'All Users', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(325, 'en', 'setting', 'If you enable this \"All Users\" setting feature, the \"External Chat\" will appear to both the users, i.e., for registered users as well as for guest users on the \"Application.\"', 'If you enable this \"All Users\" setting feature, the \"External Chat\" will appear to both the users, i.e., for registered users as well as for guest users on the \"Application.\"', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(326, 'en', 'setting', 'Only  Registered Users', 'Only  Registered Users', '2025-09-17 21:23:03', '2025-09-17 21:23:03');
INSERT INTO `translates` (`id`, `lang_code`, `group_langname`, `key`, `value`, `created_at`, `updated_at`) VALUES
(327, 'en', 'setting', 'If you enable this \"Only Registered Users\" setting feature, the \"External Chat\" will appear only for the registered users on the \"Application.\"', 'If you enable this \"Only Registered Users\" setting feature, the \"External Chat\" will appear only for the registered users on the \"Application.\"', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(328, 'en', 'setting', 'Callback/Redirect URL', 'Callback/Redirect URL', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(329, 'en', 'setting', 'Add this callback URL to your \"Envato\" App settings.', 'Add this callback URL to your \"Envato\" App settings.', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(330, 'en', 'setting', 'Add this callback URL to your \"Google\" App settings.', 'Add this callback URL to your \"Google\" App settings.', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(331, 'en', 'setting', 'Add this callback URL to your \"Facebook\" App settings.', 'Add this callback URL to your \"Facebook\" App settings.', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(332, 'en', 'setting', 'Add this callback URL to your \"Twitter\" App settings.', 'Add this callback URL to your \"Twitter\" App settings.', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(333, 'en', 'filesetting', 'The file size should not be more than 5MB', 'The file size should not be more than 5MB', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(334, 'en', 'filesetting', 'Max File Upload', 'Max File Upload', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(335, 'en', 'filesetting', 'Max File Size Upload', 'Max File Size Upload', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(336, 'en', 'filesetting', 'MB', 'MB', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(337, 'en', 'filesetting', 'Allow File Types', 'Allow File Types', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(338, 'en', 'filesetting', 'Upload File', 'Upload File', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(339, 'en', 'filesetting', 'Download', 'Download', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(340, 'en', 'filesetting', 'File Format: .xlsx & .csv', 'File Format: .xlsx & .csv', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(341, 'en', 'filesetting', 'Import Data', 'Import Data', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(342, 'en', 'filesetting', 'Sample File', 'Sample File', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(343, 'en', 'filesetting', 'The file size should not be more than', 'The file size should not be more than', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(344, 'en', 'filesetting', 'MB', 'MB', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(345, 'en', 'filesetting', 'The file size should not be more than 500kb', 'The file size should not be more than 500kb', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(346, 'en', 'filesetting', 'Filesize should not be morethan 10MB', 'Filesize should not be morethan 10MB', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(347, 'en', 'general', 'Employees', 'Employees', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(348, 'en', 'general', 'Edit Employee', 'Edit Employee', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(349, 'en', 'general', 'First Name', 'First Name', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(350, 'en', 'general', 'Last Name', 'Last Name', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(351, 'en', 'general', 'Username', 'Username', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(352, 'en', 'general', 'Email', 'Email', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(353, 'en', 'general', 'Employee ID', 'Employee ID', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(354, 'en', 'general', 'Select Role', 'Select Role', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(355, 'en', 'general', 'Mobile Number', 'Mobile Number', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(356, 'en', 'general', 'Languages', 'Languages', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(357, 'en', 'general', 'Skills', 'Skills', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(358, 'en', 'general', 'Country', 'Country', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(359, 'en', 'general', 'Timezone', 'Timezone', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(360, 'en', 'general', 'Status', 'Status', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(361, 'en', 'general', 'Update Profile', 'Update Profile', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(362, 'en', 'general', 'Password', 'Password', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(363, 'en', 'general', 'Add Employee', 'Add Employee', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(364, 'en', 'general', 'Import Employees List', 'Import Employees List', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(365, 'en', 'general', 'Delete', 'Delete', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(366, 'en', 'general', 'Sl.No', 'Sl.No', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(367, 'en', 'general', 'Employee Name', 'Employee Name', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(368, 'en', 'general', 'Roles', 'Roles', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(369, 'en', 'general', 'Register Date', 'Register Date', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(370, 'en', 'general', 'Actions', 'Actions', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(371, 'en', 'general', 'Generate Password', 'Generate Password', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(372, 'en', 'general', 'Save', 'Save', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(373, 'en', 'general', 'User Import', 'User Import', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(374, 'en', 'general', 'Import file', 'Import file', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(375, 'en', 'general', 'Upload file', 'Upload file', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(376, 'en', 'general', 'Add New Announcement', 'Add New Announcement', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(377, 'en', 'general', 'Title', 'Title', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(378, 'en', 'general', 'Start Date', 'Start Date', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(379, 'en', 'general', 'End Date', 'End Date', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(380, 'en', 'general', 'Add Announcement', 'Add Announcement', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(381, 'en', 'general', 'Edit Announcement', 'Edit Announcement', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(382, 'en', 'general', 'Notice Text', 'Notice Text', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(383, 'en', 'general', 'Close', 'Close', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(384, 'en', 'general', 'New Article', 'New Article', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(385, 'en', 'general', 'Category', 'Category', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(386, 'en', 'general', 'SubCategory', 'SubCategory', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(387, 'en', 'general', 'Description', 'Description', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(388, 'en', 'general', 'Tags', 'Tags', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(389, 'en', 'general', 'Publish', 'Publish', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(390, 'en', 'general', 'UnPublish', 'UnPublish', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(391, 'en', 'general', 'Privacy Mode', 'Privacy Mode', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(392, 'en', 'general', 'Update', 'Update', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(393, 'en', 'general', 'Article Title', 'Article Title', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(394, 'en', 'general', 'Edit Article', 'Edit Article', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(395, 'en', 'general', 'Add Article', 'Add Article', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(396, 'en', 'general', 'Article List', 'Article List', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(397, 'en', 'general', 'Hide Section', 'Hide Section', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(398, 'en', 'general', 'Article Section', 'Article Section', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(399, 'en', 'general', 'Subtitle', 'Subtitle', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(400, 'en', 'general', 'Save Changes', 'Save Changes', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(401, 'en', 'general', 'Ticket To Article', 'Ticket To Article', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(402, 'en', 'general', 'New', 'New', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(403, 'en', 'general', 'In-Progress', 'In-Progress', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(404, 'en', 'general', 'On-Hold', 'On-Hold', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(405, 'en', 'general', 'Re-Open', 'Re-Open', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(406, 'en', 'general', 'OverDue', 'OverDue', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(407, 'en', 'general', 'Closed', 'Closed', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(408, 'en', 'general', 'Ticket Details', 'Ticket Details', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(409, 'en', 'general', 'User', 'User', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(410, 'en', 'general', 'Assign To', 'Assign To', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(411, 'en', 'general', 'Assign To Agent', 'Assign To Agent', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(412, 'en', 'general', 'Restore', 'Restore', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(413, 'en', 'general', 'Ticket Information', 'Ticket Information', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(414, 'en', 'general', 'Created Date', 'Created Date', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(415, 'en', 'general', 'Conversations', 'Conversations', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(416, 'en', 'general', 'Priority', 'Priority', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(417, 'en', 'general', 'Project', 'Project', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(418, 'en', 'general', 'Opened Date', 'Opened Date', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(419, 'en', 'general', 'Reply Status', 'Reply Status', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(420, 'en', 'general', 'Customer Details', 'Customer Details', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(421, 'en', 'general', 'IP', 'IP', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(422, 'en', 'general', 'Don’t have any notes yet', 'Don’t have any notes yet', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(423, 'en', 'general', 'Add your notes here', 'Add your notes here', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(424, 'en', 'general', 'Change Password', 'Change Password', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(425, 'en', 'general', 'Old Password', 'Old Password', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(426, 'en', 'general', 'New Password', 'New Password', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(427, 'en', 'general', 'Confirm Password', 'Confirm Password', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(428, 'en', 'general', 'Forgot Password?', 'Forgot Password?', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(429, 'en', 'general', 'Enter the email address that is linked to your account.', 'Enter the email address that is linked to your account.', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(430, 'en', 'general', 'Submit', 'Submit', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(431, 'en', 'general', 'Send me Back', 'Send me Back', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(432, 'en', 'general', 'Reset Password', 'Reset Password', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(433, 'en', 'general', 'Enter the email address registered on your account', 'Enter the email address registered on your account', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(434, 'en', 'general', 'Remembered your password?', 'Remembered your password?', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(435, 'en', 'general', 'Remember me', 'Remember me', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(436, 'en', 'general', 'Bussiness Hours Title', 'Bussiness Hours Title', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(437, 'en', 'general', 'Days', 'Days', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(438, 'en', 'general', 'Closed/Open', 'Closed/Open', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(439, 'en', 'general', 'Start-time', 'Start-time', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(440, 'en', 'general', 'End-time', 'End-time', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(441, 'en', 'general', 'Call Action', 'Call Action', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(442, 'en', 'general', 'Call Action Section', 'Call Action Section', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(443, 'en', 'general', 'Button-Text', 'Button-Text', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(444, 'en', 'general', 'Select Category', 'Select Category', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(445, 'en', 'general', 'Category List', 'Category List', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(446, 'en', 'general', 'Add Category', 'Add Category', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(447, 'en', 'general', 'Envato Api Assign', 'Envato Api Assign', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(448, 'en', 'general', 'Assign Envato Api', 'Assign Envato Api', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(449, 'en', 'general', 'Category Name', 'Category Name', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(450, 'en', 'general', 'Ticket/Knowledge', 'Ticket/Knowledge', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(451, 'en', 'general', 'Assign To Groups', 'Assign To Groups', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(452, 'en', 'general', 'Assigned Priority', 'Assigned Priority', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(453, 'en', 'general', 'Add New Category', 'Add New Category', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(454, 'en', 'general', 'Edit Category', 'Edit Category', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(455, 'en', 'general', 'View On :', 'View On :', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(456, 'en', 'general', 'View On Both', 'View On Both', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(457, 'en', 'general', 'View On Tickets', 'View On Tickets', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(458, 'en', 'general', 'View On Knowledge', 'View On Knowledge', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(459, 'en', 'general', 'Choose Priority', 'Choose Priority', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(460, 'en', 'general', 'Choose Priority :', 'Choose Priority :', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(461, 'en', 'general', 'Low', 'Low', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(462, 'en', 'general', 'Medium', 'Medium', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(463, 'en', 'general', 'High', 'High', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(464, 'en', 'general', 'Status :', 'Status :', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(465, 'en', 'general', 'Sub-Category', 'Sub-Category', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(466, 'en', 'general', 'Subcategory List', 'Subcategory List', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(467, 'en', 'general', 'Add SubCategory', 'Add SubCategory', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(468, 'en', 'general', 'Subcategory Name', 'Subcategory Name', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(469, 'en', 'general', 'Parent Category list', 'Parent Category list', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(470, 'en', 'general', 'Add New SubCategory', 'Add New SubCategory', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(471, 'en', 'general', 'Edit Subcategory', 'Edit Subcategory', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(472, 'en', 'general', 'Parent Category', 'Parent Category', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(473, 'en', 'general', 'Compose for Customers', 'Compose for Customers', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(474, 'en', 'general', 'Compose for Employees', 'Compose for Employees', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(475, 'en', 'general', 'Compose Notification For Customers', 'Compose Notification For Customers', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(476, 'en', 'general', 'Compose Notification For Employees', 'Compose Notification For Employees', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(477, 'en', 'general', 'To', 'To', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(478, 'en', 'general', 'Tag', 'Tag', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(479, 'en', 'general', 'Select Tag Color', 'Select Tag Color', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(480, 'en', 'general', 'Send Message', 'Send Message', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(481, 'en', 'general', 'Message', 'Message', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(482, 'en', 'general', 'Employees', 'Employees', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(483, 'en', 'general', 'Custom Notifications List', 'Custom Notifications List', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(484, 'en', 'general', 'User Type', 'User Type', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(485, 'en', 'general', 'Customer', 'Customer', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(486, 'en', 'general', 'Create Customer', 'Create Customer', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(487, 'en', 'general', 'Please copy the Password', 'Please copy the Password', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(488, 'en', 'general', 'Customers List', 'Customers List', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(489, 'en', 'general', 'Add Customer', 'Add Customer', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(490, 'en', 'general', 'Verification', 'Verification', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(491, 'en', 'general', 'Edit Customer', 'Edit Customer', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(492, 'en', 'general', 'Timezone', 'Timezone', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(493, 'en', 'general', 'Timezones', 'Timezones', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(494, 'en', 'general', 'Email Template', 'Email Template', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(495, 'en', 'general', 'Email Subject', 'Email Subject', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(496, 'en', 'general', 'Email Body', 'Email Body', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(497, 'en', 'general', 'Send Test Mail', 'Send Test Mail', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(498, 'en', 'general', 'Enter Mail', 'Enter Mail', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(499, 'en', 'general', 'Send', 'Send', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(500, 'en', 'general', 'Mail Driver', 'Mail Driver', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(501, 'en', 'general', 'Mail Host', 'Mail Host', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(502, 'en', 'general', 'Mail Port', 'Mail Port', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(503, 'en', 'general', 'Mail Username', 'Mail Username', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(504, 'en', 'general', 'Mail Password', 'Mail Password', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(505, 'en', 'general', 'From Name', 'From Name', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(506, 'en', 'general', 'From Email', 'From Email', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(507, 'en', 'general', 'Last Updated on', 'Last Updated on', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(508, 'en', 'general', 'Action', 'Action', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(509, 'en', 'general', 'Main Title', 'Main Title', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(510, 'en', 'general', 'Add Faq Category', 'Add Faq Category', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(511, 'en', 'general', 'Faq Category Name', 'Faq Category Name', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(512, 'en', 'general', 'FAQ’s Section', 'FAQ’s Section', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(513, 'en', 'general', 'Add FAQ', 'Add FAQ', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(514, 'en', 'general', 'Question', 'Question', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(515, 'en', 'general', 'Answer', 'Answer', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(516, 'en', 'general', 'Add New FAQ', 'Add New FAQ', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(517, 'en', 'general', 'Edit FAQ', 'Edit FAQ', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(518, 'en', 'general', 'Select Faq Category', 'Select Faq Category', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(519, 'en', 'general', 'Feature Box Section', 'Feature Box Section', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(520, 'en', 'general', 'Feature Box List', 'Feature Box List', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(521, 'en', 'general', 'Add Feature', 'Add Feature', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(522, 'en', 'general', 'Add New Feature Box', 'Add New Feature Box', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(523, 'en', 'general', 'Edit Feature Box', 'Edit Feature Box', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(524, 'en', 'general', 'URL', 'URL', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(525, 'en', 'general', 'Open in a new tab', 'Open in a new tab', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(526, 'en', 'general', 'Create Page', 'Create Page', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(527, 'en', 'general', 'Add New Page', 'Add New Page', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(528, 'en', 'general', 'Edit page', 'Edit page', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(529, 'en', 'general', 'View on header', 'View on header', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(530, 'en', 'general', 'View on footer', 'View on footer', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(531, 'en', 'general', 'Are you sure want to remove this logo?', 'Are you sure want to remove this logo?', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(532, 'en', 'general', 'Login Disable Statement', 'Login Disable Statement', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(533, 'en', 'general', 'Banner Section', 'Banner Section', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(534, 'en', 'general', 'Captcha Enable/Disable', 'Captcha Enable/Disable', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(535, 'en', 'general', 'Google Re-Captcha Setting', 'Google Re-Captcha Setting', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(536, 'en', 'general', 'Site Key', 'Site Key', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(537, 'en', 'general', 'Secret Key', 'Secret Key', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(538, 'en', 'general', 'Captcha Setting in Forms', 'Captcha Setting in Forms', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(539, 'en', 'general', 'External Chat Setting', 'External Chat Setting', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(540, 'en', 'general', 'Custom CSS', 'Custom CSS', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(541, 'en', 'general', 'Custom JS', 'Custom JS', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(542, 'en', 'general', 'Enable Google Analytics', 'Enable Google Analytics', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(543, 'en', 'general', 'Tracking ID', 'Tracking ID', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(544, 'en', 'general', 'Social Login', 'Social Login', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(545, 'en', 'general', 'Envato Settings', 'Envato Settings', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(546, 'en', 'general', 'Envato App ID', 'Envato App ID', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(547, 'en', 'general', 'Envato Secret', 'Envato Secret', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(548, 'en', 'general', 'Google App ID', 'Google App ID', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(549, 'en', 'general', 'Google Secret', 'Google Secret', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(550, 'en', 'general', 'Facebook App ID', 'Facebook App ID', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(551, 'en', 'general', 'Facebook Secret', 'Facebook Secret', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(552, 'en', 'general', 'Twitter App ID', 'Twitter App ID', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(553, 'en', 'general', 'Twitter Secret', 'Twitter Secret', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(554, 'en', 'general', 'Google', 'Google', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(555, 'en', 'general', 'Facebook', 'Facebook', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(556, 'en', 'general', 'Twitter', 'Twitter', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(557, 'en', 'general', 'Create Group', 'Create Group', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(558, 'en', 'general', 'Select Employees', 'Select Employees', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(559, 'en', 'general', 'Edit Group', 'Edit Group', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(560, 'en', 'general', 'Groups List', 'Groups List', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(561, 'en', 'general', 'Add Group', 'Add Group', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(562, 'en', 'general', 'Category Assign', 'Category Assign', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(563, 'en', 'general', 'Group Name', 'Group Name', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(564, 'en', 'general', 'Count', 'Count', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(565, 'en', 'general', 'Go Live', 'Go Live', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(566, 'en', 'general', 'Under Maintenance', 'Under Maintenance', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(567, 'en', 'general', 'Notification View', 'Notification View', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(568, 'en', 'general', 'Delete Photo', 'Delete Photo', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(569, 'en', 'general', 'Personal Details', 'Personal Details', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(570, 'en', 'general', 'Phone', 'Phone', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(571, 'en', 'general', 'Role', 'Role', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(572, 'en', 'general', 'Role Name', 'Role Name', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(573, 'en', 'general', 'Location', 'Location', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(574, 'en', 'general', 'Personal setting', 'Personal setting', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(575, 'en', 'general', 'Switch to Dark-Mode', 'Switch to Dark-Mode', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(576, 'en', 'general', 'Setting', 'Setting', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(577, 'en', 'general', 'Email Notification On/Off', 'Email Notification On/Off', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(578, 'en', 'general', 'Profile Details', 'Profile Details', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(579, 'en', 'general', 'Add Project', 'Add Project', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(580, 'en', 'general', 'Assign Projects', 'Assign Projects', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(581, 'en', 'general', 'Add New Project', 'Add New Project', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(582, 'en', 'general', 'Edit Project', 'Edit Project', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(583, 'en', 'general', 'Create Role & Permissions', 'Create Role & Permissions', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(584, 'en', 'general', 'Select All', 'Select All', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(585, 'en', 'general', 'Permissions', 'Permissions', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(586, 'en', 'general', 'Edit Role & Permissions', 'Edit Role & Permissions', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(587, 'en', 'general', 'Roles List', 'Roles List', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(588, 'en', 'general', 'Add Role & Permissions', 'Add Role & Permissions', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(589, 'en', 'general', 'Employees Count', 'Employees Count', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(590, 'en', 'general', 'Permissions Count', 'Permissions Count', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(591, 'en', 'general', 'Email to tickets Enable/Disable', 'Email to tickets Enable/Disable', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(592, 'en', 'general', 'IMAP Host', 'IMAP Host', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(593, 'en', 'general', 'IMAP Port', 'IMAP Port', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(594, 'en', 'general', 'IMAP Encryption', 'IMAP Encryption', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(595, 'en', 'general', 'IMAP Protocol', 'IMAP Protocol', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(596, 'en', 'general', 'IMAP Username', 'IMAP Username', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(597, 'en', 'general', 'IMAP Password', 'IMAP Password', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(598, 'en', 'general', 'Add IP Address', 'Add IP Address', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(599, 'en', 'general', 'Entry ', 'Entry  ', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(600, 'en', 'general', 'Types', 'Types', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(601, 'en', 'general', 'Edit IP Address', 'Edit IP Address', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(602, 'en', 'general', 'Add New IP Address', 'Add New IP Address', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(603, 'en', 'general', 'Unlock', 'Unlock', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(604, 'en', 'general', 'Lock', 'Lock', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(605, 'en', 'general', 'Block', 'Block', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(606, 'en', 'general', 'Front End', 'Front End', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(607, 'en', 'general', 'Admin', 'Admin', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(608, 'en', 'general', 'DOS', 'DOS', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(609, 'en', 'general', 'Domain Lists', 'Domain Lists', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(610, 'en', 'general', 'Country Block/Unblock Setting', 'Country Block/Unblock Setting', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(611, 'en', 'general', 'Countries List', 'Countries List', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(612, 'en', 'general', 'Blocked Countries', 'Blocked Countries', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(613, 'en', 'general', 'Allowed Countries', 'Allowed Countries', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(614, 'en', 'general', 'Admin Country Block/Unblock Setting', 'Admin Country Block/Unblock Setting', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(615, 'en', 'general', 'DOS Attack Setting', 'DOS Attack Setting', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(616, 'en', 'general', 'Enable/Disable', 'Enable/Disable', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(617, 'en', 'general', 'If you enable this setting, it prevents denial-of-service (DoS) attacks on the application.', 'If you enable this setting, it prevents denial-of-service (DoS) attacks on the application.', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(618, 'en', 'general', 'If there are more than', 'If there are more than', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(619, 'en', 'general', 'attempts in', 'attempts in', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(620, 'en', 'general', 'seconds', 'seconds', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(621, 'en', 'general', 'View Captcha', 'View Captcha', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(622, 'en', 'general', 'Block IP Address', 'Block IP Address', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(623, 'en', 'general', 'Author', 'Author', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(624, 'en', 'general', 'Keywords', 'Keywords', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(625, 'en', 'general', 'Testmonial Section', 'Testmonial Section', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(626, 'en', 'general', 'Testimonial List', 'Testimonial List', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(627, 'en', 'general', 'Add Testmonial', 'Add Testmonial', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(628, 'en', 'general', 'Add New Testimonial', 'Add New Testimonial', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(629, 'en', 'general', 'Edit Testimonial', 'Edit Testimonial', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(630, 'en', 'general', 'Designation', 'Designation', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(631, 'en', 'general', 'Assigned Closed Tickets', 'Assigned Closed Tickets', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(632, 'en', 'general', 'Assigned In-Progress Tickets', 'Assigned In-Progress Tickets', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(633, 'en', 'general', 'Assigned New Tickets', 'Assigned New Tickets', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(634, 'en', 'general', 'Assigned On-Hold Tickets', 'Assigned On-Hold Tickets', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(635, 'en', 'general', 'Assigned Overdue Tickets', 'Assigned Overdue Tickets', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(636, 'en', 'general', 'Assigned Re-Open Tickets', 'Assigned Re-Open Tickets', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(637, 'en', 'general', 'My Assigned Closed Tickets', 'My Assigned Closed Tickets', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(638, 'en', 'general', 'My Assigned In-Progress Tickets', 'My Assigned In-Progress Tickets', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(639, 'en', 'general', 'My Assigned New Tickets', 'My Assigned New Tickets', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(640, 'en', 'general', 'My Assigned On-Hold Tickets', 'My Assigned On-Hold Tickets', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(641, 'en', 'general', 'My Assigned Overdue Tickets', 'My Assigned Overdue Tickets', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(642, 'en', 'general', 'My Assigned Re-Open Tickets', 'My Assigned Re-Open Tickets', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(643, 'en', 'general', 'Self Assigned Closed Tickets', 'Self Assigned Closed Tickets', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(644, 'en', 'general', 'Self Assigned In-Progress Tickets', 'Self Assigned In-Progress Tickets', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(645, 'en', 'general', 'Self Assigned New Tickets', 'Self Assigned New Tickets', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(646, 'en', 'general', 'Self Assigned On-Hold Tickets', 'Self Assigned On-Hold Tickets', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(647, 'en', 'general', 'Self Assigned Overdue Tickets', 'Self Assigned Overdue Tickets', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(648, 'en', 'general', 'Self Assigned Re-Open Tickets', 'Self Assigned Re-Open Tickets', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(649, 'en', 'general', 'Delete Ticket', 'Delete Ticket', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(650, 'en', 'general', 'Ticket Activity', 'Ticket Activity', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(651, 'en', 'general', 'Today', 'Today', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(652, 'en', 'general', 'Yesterday', 'Yesterday', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(653, 'en', 'general', 'Previous', 'Previous', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(654, 'en', 'general', 'Next', 'Next', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(655, 'en', 'general', 'Guest Ticket', 'Guest Ticket', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(656, 'en', 'general', 'Thank you for submitting your ticket to us. Your tickets are always our top priority. You are submitting a guest ticket.', 'Thank you for submitting your ticket to us. Your tickets are always our top priority. You are submitting a guest ticket.', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(657, 'en', 'general', 'Please register your account with us to access more features.', 'Please register your account with us to access more features.', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(658, 'en', 'general', 'View Ticket', 'View Ticket', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(659, 'en', 'general', 'View', 'View', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(660, 'en', 'general', 'Active', 'Active', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(661, 'en', 'general', 'Inactive', 'Inactive', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(662, 'en', 'general', 'Support Active', 'Support Active', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(663, 'en', 'general', 'Support Expired', 'Support Expired', '2025-09-17 21:23:03', '2025-09-17 21:23:03'),
(664, 'en', 'general', 'Ask your Questions...', 'Ask your Questions...', '2025-09-17 21:40:13', '2025-09-17 21:40:13'),
(665, 'en', 'general', 'Recent Articles', 'Recent Articles', '2025-09-17 21:40:13', '2025-09-17 21:40:13'),
(666, 'en', 'general', 'Popular Articles', 'Popular Articles', '2025-09-17 21:40:13', '2025-09-17 21:40:13'),
(667, 'en', 'general', 'View All', 'View All', '2025-09-17 21:40:13', '2025-09-17 21:40:13'),
(668, 'en', 'general', 'Verify Your Email', 'Verify Your Email', '2025-09-17 21:40:13', '2025-09-17 21:40:13'),
(669, 'en', 'general', 'Knowledge', 'Knowledge', '2025-09-17 21:40:22', '2025-09-17 21:40:22'),
(670, 'en', 'general', 'Home', 'Home', '2025-09-17 21:40:22', '2025-09-17 21:40:22'),
(671, 'en', 'general', 'Sign In to your account', 'Sign In to your account', '2025-09-17 21:40:24', '2025-09-17 21:40:24'),
(672, 'en', 'general', 'Don’t have account?', 'Don’t have account?', '2025-09-17 21:40:24', '2025-09-17 21:40:24'),
(673, 'en', 'general', 'Back to home', 'Back to home', '2025-09-17 21:40:24', '2025-09-17 21:40:24'),
(674, 'en', 'general', 'Please enter the username', 'Please enter the username', '2025-09-17 21:40:24', '2025-09-17 21:40:24'),
(675, 'en', 'general', 'Please enter the password.', 'Please enter the password.', '2025-09-17 21:40:24', '2025-09-17 21:40:24'),
(676, 'en', 'alerts', 'The username or password you entered is incorrect. Please Check', 'The username or password you entered is incorrect. Please Check', '2025-09-17 21:40:24', '2025-09-17 21:40:24'),
(677, 'en', 'alerts', 'Your Email is not verified yet. An email verification link was sent successfully. Please check and verify your email.', 'Your Email is not verified yet. An email verification link was sent successfully. Please check and verify your email.', '2025-09-17 21:40:24', '2025-09-17 21:40:24'),
(678, 'en', 'alerts', 'Your account is currently inactive. Please contact the admin.', 'Your account is currently inactive. Please contact the admin.', '2025-09-17 21:40:24', '2025-09-17 21:40:24'),
(679, 'en', 'alerts', 'Temporary Login disable', 'Temporary Login disable', '2025-09-17 21:40:24', '2025-09-17 21:40:24'),
(680, 'en', 'general', 'Create new account', 'Create new account', '2025-09-17 21:40:27', '2025-09-17 21:40:27'),
(681, 'en', 'general', 'Firstname', 'Firstname', '2025-09-17 21:40:27', '2025-09-17 21:40:27'),
(682, 'en', 'general', 'Lastname', 'Lastname', '2025-09-17 21:40:27', '2025-09-17 21:40:27'),
(683, 'en', 'general', 'I agree with', 'I agree with', '2025-09-17 21:40:27', '2025-09-17 21:40:27'),
(684, 'en', 'general', 'Terms of services', 'Terms of services', '2025-09-17 21:40:27', '2025-09-17 21:40:27'),
(685, 'en', 'general', 'Create Account', 'Create Account', '2025-09-17 21:40:27', '2025-09-17 21:40:27'),
(686, 'en', 'general', 'Already have an account?', 'Already have an account?', '2025-09-17 21:40:27', '2025-09-17 21:40:27'),
(687, 'en', 'alerts', 'Check the all field(*) required', 'Check the all field(*) required', '2025-09-17 21:40:27', '2025-09-17 21:40:27'),
(688, 'en', 'menu', 'Create Account', 'Create Account', '2025-09-17 21:40:27', '2025-09-17 21:40:27'),
(689, 'en', 'general', 'Get OTP', 'Get OTP', '2025-09-17 21:49:03', '2025-09-17 21:49:03'),
(690, 'en', 'general', 'Verify OTP', 'Verify OTP', '2025-09-17 21:49:03', '2025-09-17 21:49:03'),
(691, 'en', 'general', 'Enter Otp', 'Enter Otp', '2025-09-17 21:49:03', '2025-09-17 21:49:03'),
(692, 'en', 'general', 'Subject', 'Subject', '2025-09-17 21:49:03', '2025-09-17 21:49:03'),
(693, 'en', 'general', 'Maximum', 'Maximum', '2025-09-17 21:49:03', '2025-09-17 21:49:03'),
(694, 'en', 'general', 'Characters', 'Characters', '2025-09-17 21:49:03', '2025-09-17 21:49:03'),
(695, 'en', 'general', 'Select SubCategory', 'Select SubCategory', '2025-09-17 21:49:03', '2025-09-17 21:49:03'),
(696, 'en', 'general', 'Terms & Services', 'Terms & Services', '2025-09-17 21:49:03', '2025-09-17 21:49:03'),
(697, 'en', 'general', 'An OTP (One Time Password) has been sent to your email ID. Please enter the OTP below to submit your guest ticket.', 'An OTP (One Time Password) has been sent to your email ID. Please enter the OTP below to submit your guest ticket.', '2025-09-17 21:49:03', '2025-09-17 21:49:03'),
(698, 'en', 'errorpages', 'Access Denied', 'Access Denied', '2025-09-17 21:49:03', '2025-09-17 21:49:03'),
(699, 'en', 'errorpages', 'It Seems Like You Are Not Authorized To Access This Page', 'It Seems Like You Are Not Authorized To Access This Page', '2025-09-17 21:49:03', '2025-09-17 21:49:03'),
(700, 'en', 'general', 'Online', 'Online', '2025-09-17 22:09:40', '2025-09-17 22:09:40'),
(701, 'en', 'general', 'Tickets Summary', 'Tickets Summary', '2025-09-17 22:09:40', '2025-09-17 22:09:40'),
(702, 'en', 'general', 'No data available in table', 'No data available in table', '2025-09-17 22:09:40', '2025-09-17 22:09:40'),
(703, 'en', 'general', 'No entries to show', 'No entries to show', '2025-09-17 22:09:40', '2025-09-17 22:09:40'),
(704, 'en', 'general', 'showing page', 'showing page', '2025-09-17 22:09:40', '2025-09-17 22:09:40'),
(705, 'en', 'general', 'of', 'of', '2025-09-17 22:09:40', '2025-09-17 22:09:40'),
(706, 'en', 'general', '- filtered from ', '- filtered from ', '2025-09-17 22:09:40', '2025-09-17 22:09:40'),
(707, 'en', 'general', 'records', 'records', '2025-09-17 22:09:40', '2025-09-17 22:09:40'),
(708, 'en', 'general', 'entries', 'entries', '2025-09-17 22:09:40', '2025-09-17 22:09:40'),
(709, 'en', 'general', 'Show', 'Show', '2025-09-17 22:09:40', '2025-09-17 22:09:40'),
(710, 'en', 'general', 'Search...', 'Search...', '2025-09-17 22:09:40', '2025-09-17 22:09:40'),
(711, 'en', 'general', 'You have', 'You have', '2025-09-17 22:09:40', '2025-09-17 22:09:40'),
(712, 'en', 'general', 'new notification', 'new notification', '2025-09-17 22:09:41', '2025-09-17 22:09:41'),
(713, 'en', 'alerts', 'Logout Successfull', 'Logout Successfull', '2025-09-18 00:07:48', '2025-09-18 00:07:48'),
(714, 'en', 'general', 'Submit Purchase Code', 'Submit Purchase Code', '2025-09-18 00:17:28', '2025-09-18 00:17:28'),
(715, 'en', 'general', 'Not Found', 'Not Found', '2025-09-18 00:17:39', '2025-09-18 00:17:39'),
(716, 'en', 'general', '404', '404', '2025-09-18 00:17:39', '2025-09-18 00:17:39'),
(717, 'en', 'general', 'Last Created On', 'Last Created On', '2025-09-18 00:18:29', '2025-09-18 00:18:29'),
(718, 'en', 'general', 'Views', 'Views', '2025-09-18 00:18:29', '2025-09-18 00:18:29'),
(719, 'en', 'alerts', 'Please verify your email.', 'Please verify your email.', '2025-09-18 00:18:29', '2025-09-18 00:18:29'),
(720, 'en', 'alerts', 'The password reset link has been sent to your email.', 'The password reset link has been sent to your email.', '2025-09-18 00:18:29', '2025-09-18 00:18:29'),
(721, 'en', 'alerts', 'These credentials do not match our records.', 'These credentials do not match our records.', '2025-09-18 00:18:29', '2025-09-18 00:18:29'),
(722, 'en', 'general', 'General Tickets', 'General Tickets', '2025-09-18 00:22:28', '2025-09-18 00:22:28'),
(723, 'en', 'general', 'Recents Tickets', 'Recents Tickets', '2025-09-18 00:22:28', '2025-09-18 00:22:28'),
(724, 'en', 'general', 'Unassigned Tickets', 'Unassigned Tickets', '2025-09-18 00:22:28', '2025-09-18 00:22:28'),
(725, 'en', 'general', 'Self Tickets', 'Self Tickets', '2025-09-18 00:22:28', '2025-09-18 00:22:28'),
(726, 'en', 'general', 'Self assigned Tickets', 'Self assigned Tickets', '2025-09-18 00:22:28', '2025-09-18 00:22:28'),
(727, 'en', 'general', 'My Assigned Tickets', 'My Assigned Tickets', '2025-09-18 00:22:28', '2025-09-18 00:22:28'),
(728, 'en', 'general', 'Closed Tickets', 'Closed Tickets', '2025-09-18 00:22:28', '2025-09-18 00:22:28'),
(729, 'en', 'general', 'Suspend Tickets', 'Suspend Tickets', '2025-09-18 00:22:28', '2025-09-18 00:22:28'),
(730, 'en', 'general', 'Recent Tickets', 'Recent Tickets', '2025-09-18 00:22:28', '2025-09-18 00:22:28'),
(731, 'en', 'general', 'Loading...', 'Loading...', '2025-09-18 00:22:28', '2025-09-18 00:22:28'),
(732, 'en', 'general', 'Select Agent', 'Select Agent', '2025-09-18 00:22:28', '2025-09-18 00:22:28'),
(733, 'en', 'menu', 'Suspend Tickets', 'Suspend Tickets', '2025-09-18 00:22:29', '2025-09-18 00:22:29'),
(734, 'en', 'general', 'Name', 'Name', '2025-09-18 01:09:00', '2025-09-18 01:09:00'),
(735, 'en', 'general', 'Upload Image', 'Upload Image', '2025-09-18 01:09:00', '2025-09-18 01:09:00'),
(736, 'en', 'alerts', 'Updated Successfully!', 'Updated Successfully!', '2025-09-18 01:09:01', '2025-09-18 01:09:01'),
(737, 'en', 'menu', 'Department', 'Department', '2025-09-18 01:14:52', '2025-09-18 01:14:52'),
(738, 'en', 'menu', 'Main FAQ’s', 'Main FAQ’s', '2025-09-18 01:14:52', '2025-09-18 01:14:52'),
(739, 'en', 'menu', 'Envato Setting', 'Envato Setting', '2025-09-18 01:14:52', '2025-09-18 01:14:52'),
(740, 'en', 'menu', 'Envato License\n                            Verification', 'Envato License\n                            Verification', '2025-09-18 01:14:52', '2025-09-18 01:14:52'),
(741, 'en', 'menu', 'Reports', 'Reports', '2025-09-18 01:14:52', '2025-09-18 01:14:52'),
(742, 'en', 'general', 'It is necessary to set up your email settings first in order to send and receive emails.', 'It is necessary to set up your email settings first in order to send and receive emails.', '2025-09-18 01:14:52', '2025-09-18 01:14:52'),
(743, 'en', 'general', 'Email Setup', 'Email Setup', '2025-09-18 01:14:52', '2025-09-18 01:14:52'),
(744, 'en', 'general', 'Setup Reference ', 'Setup Reference ', '2025-09-18 01:14:52', '2025-09-18 01:14:52'),
(745, 'en', 'general', 'It is necessary to set up your cron job first in order for the auto functions to work.', 'It is necessary to set up your cron job first in order for the auto functions to work.', '2025-09-18 01:14:52', '2025-09-18 01:14:52'),
(746, 'en', 'general', 'Import Customer List', 'Import Customer List', '2025-09-18 01:15:02', '2025-09-18 01:15:02'),
(747, 'en', 'general', 'Login as', 'Login as', '2025-09-18 01:15:02', '2025-09-18 01:15:02'),
(748, 'en', 'general', 'Verified', 'Verified', '2025-09-18 01:15:02', '2025-09-18 01:15:02'),
(749, 'en', 'menu', 'Role & Permissions', 'Role & Permissions', '2025-09-18 01:15:12', '2025-09-18 01:15:12'),
(750, 'en', 'general', 'Employee', 'Employee', '2025-09-18 01:15:17', '2025-09-18 01:15:17'),
(751, 'en', 'general', 'Select Roles', 'Select Roles', '2025-09-18 01:15:17', '2025-09-18 01:15:17'),
(752, 'en', 'general', 'Department', 'Department', '2025-09-18 01:15:17', '2025-09-18 01:15:17'),
(753, 'en', 'general', 'Select Department', 'Select Department', '2025-09-18 01:15:17', '2025-09-18 01:15:17'),
(754, 'en', 'general', '(Please copy the Password)', '(Please copy the Password)', '2025-09-18 01:15:17', '2025-09-18 01:15:17'),
(755, 'en', 'general', 'Select Dashboard', 'Select Dashboard', '2025-09-18 01:15:17', '2025-09-18 01:15:17'),
(756, 'en', 'general', 'Employee Dashboard', 'Employee Dashboard', '2025-09-18 01:15:17', '2025-09-18 01:15:17'),
(757, 'en', 'general', 'Admin Dashboard', 'Admin Dashboard', '2025-09-18 01:15:17', '2025-09-18 01:15:17'),
(758, 'en', 'alerts', 'Cache Clear Successfull', 'Cache Clear Successfull', '2025-09-18 01:21:44', '2025-09-18 01:21:44'),
(759, 'en', 'general', 'Are you sure you want to continue?', 'Are you sure you want to continue?', '2025-09-18 01:27:06', '2025-09-18 01:27:06'),
(760, 'en', 'general', 'This might erase your records permanently', 'This might erase your records permanently', '2025-09-18 01:27:06', '2025-09-18 01:27:06'),
(761, 'en', 'general', 'View On:', 'View On:', '2025-09-18 01:27:06', '2025-09-18 01:27:06'),
(762, 'en', 'general', 'Afghanistan', 'Afghanistan', '2025-09-18 01:27:14', '2025-09-18 01:27:14'),
(763, 'en', 'general', 'Åland Islands', 'Åland Islands', '2025-09-18 01:27:14', '2025-09-18 01:27:14'),
(764, 'en', 'general', 'Albania', 'Albania', '2025-09-18 01:27:14', '2025-09-18 01:27:14'),
(765, 'en', 'general', 'Algeria', 'Algeria', '2025-09-18 01:27:14', '2025-09-18 01:27:14'),
(766, 'en', 'general', 'American Samoa', 'American Samoa', '2025-09-18 01:27:14', '2025-09-18 01:27:14'),
(767, 'en', 'general', 'Andorra', 'Andorra', '2025-09-18 01:27:14', '2025-09-18 01:27:14'),
(768, 'en', 'general', 'Angola', 'Angola', '2025-09-18 01:27:14', '2025-09-18 01:27:14'),
(769, 'en', 'general', 'Anguilla', 'Anguilla', '2025-09-18 01:27:14', '2025-09-18 01:27:14'),
(770, 'en', 'general', 'Antarctica', 'Antarctica', '2025-09-18 01:27:14', '2025-09-18 01:27:14'),
(771, 'en', 'general', 'Antigua and Barbuda', 'Antigua and Barbuda', '2025-09-18 01:27:14', '2025-09-18 01:27:14'),
(772, 'en', 'general', 'Argentina', 'Argentina', '2025-09-18 01:27:14', '2025-09-18 01:27:14'),
(773, 'en', 'general', 'Armenia', 'Armenia', '2025-09-18 01:27:14', '2025-09-18 01:27:14'),
(774, 'en', 'general', 'Aruba', 'Aruba', '2025-09-18 01:27:14', '2025-09-18 01:27:14'),
(775, 'en', 'general', 'Australia', 'Australia', '2025-09-18 01:27:14', '2025-09-18 01:27:14'),
(776, 'en', 'general', 'Austria', 'Austria', '2025-09-18 01:27:14', '2025-09-18 01:27:14'),
(777, 'en', 'general', 'Azerbaijan', 'Azerbaijan', '2025-09-18 01:27:14', '2025-09-18 01:27:14'),
(778, 'en', 'general', 'Bahamas', 'Bahamas', '2025-09-18 01:27:14', '2025-09-18 01:27:14'),
(779, 'en', 'general', 'Bahrain', 'Bahrain', '2025-09-18 01:27:14', '2025-09-18 01:27:14'),
(780, 'en', 'general', 'Bangladesh', 'Bangladesh', '2025-09-18 01:27:14', '2025-09-18 01:27:14'),
(781, 'en', 'general', 'Barbados', 'Barbados', '2025-09-18 01:27:14', '2025-09-18 01:27:14'),
(782, 'en', 'general', 'Belarus', 'Belarus', '2025-09-18 01:27:14', '2025-09-18 01:27:14'),
(783, 'en', 'general', 'Belgium', 'Belgium', '2025-09-18 01:27:14', '2025-09-18 01:27:14'),
(784, 'en', 'general', 'Belize', 'Belize', '2025-09-18 01:27:14', '2025-09-18 01:27:14'),
(785, 'en', 'general', 'Benin', 'Benin', '2025-09-18 01:27:14', '2025-09-18 01:27:14'),
(786, 'en', 'general', 'Bermuda', 'Bermuda', '2025-09-18 01:27:14', '2025-09-18 01:27:14');
INSERT INTO `translates` (`id`, `lang_code`, `group_langname`, `key`, `value`, `created_at`, `updated_at`) VALUES
(787, 'en', 'general', 'Bhutan', 'Bhutan', '2025-09-18 01:27:14', '2025-09-18 01:27:14'),
(788, 'en', 'general', 'Bolivia, Plurinational State of', 'Bolivia, Plurinational State of', '2025-09-18 01:27:14', '2025-09-18 01:27:14'),
(789, 'en', 'general', 'Bonaire, Sint Eustatius and Saba', 'Bonaire, Sint Eustatius and Saba', '2025-09-18 01:27:15', '2025-09-18 01:27:15'),
(790, 'en', 'general', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', '2025-09-18 01:27:15', '2025-09-18 01:27:15'),
(791, 'en', 'general', 'Botswana', 'Botswana', '2025-09-18 01:27:15', '2025-09-18 01:27:15'),
(792, 'en', 'general', 'Bouvet Island', 'Bouvet Island', '2025-09-18 01:27:15', '2025-09-18 01:27:15'),
(793, 'en', 'general', 'Brazil', 'Brazil', '2025-09-18 01:27:15', '2025-09-18 01:27:15'),
(794, 'en', 'general', 'British Indian Ocean Territory', 'British Indian Ocean Territory', '2025-09-18 01:27:15', '2025-09-18 01:27:15'),
(795, 'en', 'general', 'Brunei Darussalam', 'Brunei Darussalam', '2025-09-18 01:27:15', '2025-09-18 01:27:15'),
(796, 'en', 'general', 'Bulgaria', 'Bulgaria', '2025-09-18 01:27:15', '2025-09-18 01:27:15'),
(797, 'en', 'general', 'Burkina Faso', 'Burkina Faso', '2025-09-18 01:27:15', '2025-09-18 01:27:15'),
(798, 'en', 'general', 'Burundi', 'Burundi', '2025-09-18 01:27:15', '2025-09-18 01:27:15'),
(799, 'en', 'general', 'Cambodia', 'Cambodia', '2025-09-18 01:27:15', '2025-09-18 01:27:15'),
(800, 'en', 'general', 'Cameroon', 'Cameroon', '2025-09-18 01:27:15', '2025-09-18 01:27:15'),
(801, 'en', 'general', 'Canada', 'Canada', '2025-09-18 01:27:15', '2025-09-18 01:27:15'),
(802, 'en', 'general', 'Cape Verde', 'Cape Verde', '2025-09-18 01:27:15', '2025-09-18 01:27:15'),
(803, 'en', 'general', 'Cayman Islands', 'Cayman Islands', '2025-09-18 01:27:15', '2025-09-18 01:27:15'),
(804, 'en', 'general', 'Central African Republic', 'Central African Republic', '2025-09-18 01:27:15', '2025-09-18 01:27:15'),
(805, 'en', 'general', 'Chad', 'Chad', '2025-09-18 01:27:15', '2025-09-18 01:27:15'),
(806, 'en', 'general', 'Chile', 'Chile', '2025-09-18 01:27:15', '2025-09-18 01:27:15'),
(807, 'en', 'general', 'China', 'China', '2025-09-18 01:27:15', '2025-09-18 01:27:15'),
(808, 'en', 'general', 'Christmas Island', 'Christmas Island', '2025-09-18 01:27:15', '2025-09-18 01:27:15'),
(809, 'en', 'general', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', '2025-09-18 01:27:15', '2025-09-18 01:27:15'),
(810, 'en', 'general', 'Colombia', 'Colombia', '2025-09-18 01:27:15', '2025-09-18 01:27:15'),
(811, 'en', 'general', 'Comoros', 'Comoros', '2025-09-18 01:27:15', '2025-09-18 01:27:15'),
(812, 'en', 'general', 'Congo', 'Congo', '2025-09-18 01:27:15', '2025-09-18 01:27:15'),
(813, 'en', 'general', 'Congo, the Democratic Republic of the', 'Congo, the Democratic Republic of the', '2025-09-18 01:27:15', '2025-09-18 01:27:15'),
(814, 'en', 'general', 'Cook Islands', 'Cook Islands', '2025-09-18 01:27:15', '2025-09-18 01:27:15'),
(815, 'en', 'general', 'Costa Rica', 'Costa Rica', '2025-09-18 01:27:15', '2025-09-18 01:27:15'),
(816, 'en', 'general', 'Côte d\'Ivoire', 'Côte d\'Ivoire', '2025-09-18 01:27:15', '2025-09-18 01:27:15'),
(817, 'en', 'general', 'Croatia', 'Croatia', '2025-09-18 01:27:15', '2025-09-18 01:27:15'),
(818, 'en', 'general', 'Cuba', 'Cuba', '2025-09-18 01:27:15', '2025-09-18 01:27:15'),
(819, 'en', 'general', 'Curaçao', 'Curaçao', '2025-09-18 01:27:15', '2025-09-18 01:27:15'),
(820, 'en', 'general', 'Cyprus', 'Cyprus', '2025-09-18 01:27:15', '2025-09-18 01:27:15'),
(821, 'en', 'general', 'Czech Republic', 'Czech Republic', '2025-09-18 01:27:15', '2025-09-18 01:27:15'),
(822, 'en', 'general', 'Denmark', 'Denmark', '2025-09-18 01:27:15', '2025-09-18 01:27:15'),
(823, 'en', 'general', 'Djibouti', 'Djibouti', '2025-09-18 01:27:15', '2025-09-18 01:27:15'),
(824, 'en', 'general', 'Dominica', 'Dominica', '2025-09-18 01:27:15', '2025-09-18 01:27:15'),
(825, 'en', 'general', 'Dominican Republic', 'Dominican Republic', '2025-09-18 01:27:15', '2025-09-18 01:27:15'),
(826, 'en', 'general', 'Ecuador', 'Ecuador', '2025-09-18 01:27:15', '2025-09-18 01:27:15'),
(827, 'en', 'general', 'Egypt', 'Egypt', '2025-09-18 01:27:15', '2025-09-18 01:27:15'),
(828, 'en', 'general', 'El Salvador', 'El Salvador', '2025-09-18 01:27:15', '2025-09-18 01:27:15'),
(829, 'en', 'general', 'Equatorial Guinea', 'Equatorial Guinea', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(830, 'en', 'general', 'Eritrea', 'Eritrea', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(831, 'en', 'general', 'Estonia', 'Estonia', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(832, 'en', 'general', 'Ethiopia', 'Ethiopia', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(833, 'en', 'general', 'Falkland Islands (Malvinas)', 'Falkland Islands (Malvinas)', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(834, 'en', 'general', 'Faroe Islands', 'Faroe Islands', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(835, 'en', 'general', 'Fiji', 'Fiji', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(836, 'en', 'general', 'Finland', 'Finland', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(837, 'en', 'general', 'France', 'France', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(838, 'en', 'general', 'French Guiana', 'French Guiana', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(839, 'en', 'general', 'French Polynesia', 'French Polynesia', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(840, 'en', 'general', 'French Southern Territories', 'French Southern Territories', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(841, 'en', 'general', 'Gabon', 'Gabon', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(842, 'en', 'general', 'Gambia', 'Gambia', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(843, 'en', 'general', 'Georgia', 'Georgia', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(844, 'en', 'general', 'Germany', 'Germany', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(845, 'en', 'general', 'Ghana', 'Ghana', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(846, 'en', 'general', 'Gibraltar', 'Gibraltar', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(847, 'en', 'general', 'Greece', 'Greece', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(848, 'en', 'general', 'Greenland', 'Greenland', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(849, 'en', 'general', 'Grenada', 'Grenada', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(850, 'en', 'general', 'Guadeloupe', 'Guadeloupe', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(851, 'en', 'general', 'Guam', 'Guam', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(852, 'en', 'general', 'Guatemala', 'Guatemala', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(853, 'en', 'general', 'Guernsey', 'Guernsey', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(854, 'en', 'general', 'Guinea', 'Guinea', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(855, 'en', 'general', 'Guinea-Bissau', 'Guinea-Bissau', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(856, 'en', 'general', 'Guyana', 'Guyana', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(857, 'en', 'general', 'Haiti', 'Haiti', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(858, 'en', 'general', 'Heard Island and McDonald Mcdonald Islands', 'Heard Island and McDonald Mcdonald Islands', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(859, 'en', 'general', 'Holy See (Vatican City State)', 'Holy See (Vatican City State)', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(860, 'en', 'general', 'Honduras', 'Honduras', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(861, 'en', 'general', 'Hong Kong', 'Hong Kong', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(862, 'en', 'general', 'Hungary', 'Hungary', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(863, 'en', 'general', 'Iceland', 'Iceland', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(864, 'en', 'general', 'India', 'India', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(865, 'en', 'general', 'Indonesia', 'Indonesia', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(866, 'en', 'general', 'Iran, Islamic Republic of', 'Iran, Islamic Republic of', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(867, 'en', 'general', 'Iraq', 'Iraq', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(868, 'en', 'general', 'Ireland', 'Ireland', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(869, 'en', 'general', 'Isle of Man', 'Isle of Man', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(870, 'en', 'general', 'Israel', 'Israel', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(871, 'en', 'general', 'Italy', 'Italy', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(872, 'en', 'general', 'Jamaica', 'Jamaica', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(873, 'en', 'general', 'Japan', 'Japan', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(874, 'en', 'general', 'Jersey', 'Jersey', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(875, 'en', 'general', 'Jordan', 'Jordan', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(876, 'en', 'general', 'Kazakhstan', 'Kazakhstan', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(877, 'en', 'general', 'Kenya', 'Kenya', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(878, 'en', 'general', 'Kiribati', 'Kiribati', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(879, 'en', 'general', 'Korea, Democratic People\'s Republic of', 'Korea, Democratic People\'s Republic of', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(880, 'en', 'general', 'Korea, Republic of', 'Korea, Republic of', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(881, 'en', 'general', 'Kuwait', 'Kuwait', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(882, 'en', 'general', 'Kyrgyzstan', 'Kyrgyzstan', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(883, 'en', 'general', 'Lao People\'s Democratic Republic', 'Lao People\'s Democratic Republic', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(884, 'en', 'general', 'Latvia', 'Latvia', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(885, 'en', 'general', 'Lebanon', 'Lebanon', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(886, 'en', 'general', 'Lesotho', 'Lesotho', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(887, 'en', 'general', 'Liberia', 'Liberia', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(888, 'en', 'general', 'Libya', 'Libya', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(889, 'en', 'general', 'Liechtenstein', 'Liechtenstein', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(890, 'en', 'general', 'Lithuania', 'Lithuania', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(891, 'en', 'general', 'Luxembourg', 'Luxembourg', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(892, 'en', 'general', 'Macao', 'Macao', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(893, 'en', 'general', 'Macedonia, the Former Yugoslav Republic of', 'Macedonia, the Former Yugoslav Republic of', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(894, 'en', 'general', 'Madagascar', 'Madagascar', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(895, 'en', 'general', 'Malawi', 'Malawi', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(896, 'en', 'general', 'Malaysia', 'Malaysia', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(897, 'en', 'general', 'Maldives', 'Maldives', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(898, 'en', 'general', 'Mali', 'Mali', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(899, 'en', 'general', 'Malta', 'Malta', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(900, 'en', 'general', 'Marshall Islands', 'Marshall Islands', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(901, 'en', 'general', 'Martinique', 'Martinique', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(902, 'en', 'general', 'Mauritania', 'Mauritania', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(903, 'en', 'general', 'Mauritius', 'Mauritius', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(904, 'en', 'general', 'Mayotte', 'Mayotte', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(905, 'en', 'general', 'Mexico', 'Mexico', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(906, 'en', 'general', 'Micronesia, Federated States of', 'Micronesia, Federated States of', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(907, 'en', 'general', 'Moldova, Republic of', 'Moldova, Republic of', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(908, 'en', 'general', 'Monaco', 'Monaco', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(909, 'en', 'general', 'Mongolia', 'Mongolia', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(910, 'en', 'general', 'Montenegro', 'Montenegro', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(911, 'en', 'general', 'Montserrat', 'Montserrat', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(912, 'en', 'general', 'Morocco', 'Morocco', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(913, 'en', 'general', 'Mozambique', 'Mozambique', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(914, 'en', 'general', 'Myanmar', 'Myanmar', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(915, 'en', 'general', 'Namibia', 'Namibia', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(916, 'en', 'general', 'Nauru', 'Nauru', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(917, 'en', 'general', 'Nepal', 'Nepal', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(918, 'en', 'general', 'Netherlands', 'Netherlands', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(919, 'en', 'general', 'New Caledonia', 'New Caledonia', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(920, 'en', 'general', 'New Zealand', 'New Zealand', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(921, 'en', 'general', 'Nicaragua', 'Nicaragua', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(922, 'en', 'general', 'Niger', 'Niger', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(923, 'en', 'general', 'Nigeria', 'Nigeria', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(924, 'en', 'general', 'Niue', 'Niue', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(925, 'en', 'general', 'Norfolk Island', 'Norfolk Island', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(926, 'en', 'general', 'Northern Mariana Islands', 'Northern Mariana Islands', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(927, 'en', 'general', 'Norway', 'Norway', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(928, 'en', 'general', 'Oman', 'Oman', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(929, 'en', 'general', 'Pakistan', 'Pakistan', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(930, 'en', 'general', 'Palau', 'Palau', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(931, 'en', 'general', 'Palestine, State of', 'Palestine, State of', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(932, 'en', 'general', 'Panama', 'Panama', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(933, 'en', 'general', 'Papua New Guinea', 'Papua New Guinea', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(934, 'en', 'general', 'Paraguay', 'Paraguay', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(935, 'en', 'general', 'Peru', 'Peru', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(936, 'en', 'general', 'Philippines', 'Philippines', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(937, 'en', 'general', 'Pitcairn', 'Pitcairn', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(938, 'en', 'general', 'Poland', 'Poland', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(939, 'en', 'general', 'Portugal', 'Portugal', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(940, 'en', 'general', 'Puerto Rico', 'Puerto Rico', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(941, 'en', 'general', 'Qatar', 'Qatar', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(942, 'en', 'general', 'Réunion', 'Réunion', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(943, 'en', 'general', 'Romania', 'Romania', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(944, 'en', 'general', 'Russian Federation', 'Russian Federation', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(945, 'en', 'general', 'Rwanda', 'Rwanda', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(946, 'en', 'general', 'Saint Barthélemy', 'Saint Barthélemy', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(947, 'en', 'general', 'Saint Helena, Ascension and Tristan da Cunha', 'Saint Helena, Ascension and Tristan da Cunha', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(948, 'en', 'general', 'Saint Kitts and Nevis', 'Saint Kitts and Nevis', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(949, 'en', 'general', 'Saint Lucia', 'Saint Lucia', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(950, 'en', 'general', 'Saint Martin (French part)', 'Saint Martin (French part)', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(951, 'en', 'general', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(952, 'en', 'general', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', '2025-09-18 01:27:16', '2025-09-18 01:27:16'),
(953, 'en', 'general', 'Samoa', 'Samoa', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(954, 'en', 'general', 'San Marino', 'San Marino', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(955, 'en', 'general', 'Sao Tome and Principe', 'Sao Tome and Principe', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(956, 'en', 'general', 'Saudi Arabia', 'Saudi Arabia', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(957, 'en', 'general', 'Senegal', 'Senegal', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(958, 'en', 'general', 'Serbia', 'Serbia', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(959, 'en', 'general', 'Seychelles', 'Seychelles', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(960, 'en', 'general', 'Sierra Leone', 'Sierra Leone', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(961, 'en', 'general', 'Singapore', 'Singapore', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(962, 'en', 'general', 'Sint Maarten (Dutch part)', 'Sint Maarten (Dutch part)', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(963, 'en', 'general', 'Slovakia', 'Slovakia', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(964, 'en', 'general', 'Slovenia', 'Slovenia', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(965, 'en', 'general', 'Solomon Islands', 'Solomon Islands', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(966, 'en', 'general', 'Somalia', 'Somalia', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(967, 'en', 'general', 'South Africa', 'South Africa', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(968, 'en', 'general', 'South Georgia and the South Sandwich Islands', 'South Georgia and the South Sandwich Islands', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(969, 'en', 'general', 'South Sudan', 'South Sudan', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(970, 'en', 'general', 'Spain', 'Spain', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(971, 'en', 'general', 'Sri Lanka', 'Sri Lanka', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(972, 'en', 'general', 'Sudan', 'Sudan', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(973, 'en', 'general', 'Suriname', 'Suriname', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(974, 'en', 'general', 'Svalbard and Jan Mayen', 'Svalbard and Jan Mayen', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(975, 'en', 'general', 'Swaziland', 'Swaziland', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(976, 'en', 'general', 'Sweden', 'Sweden', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(977, 'en', 'general', 'Switzerland', 'Switzerland', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(978, 'en', 'general', 'Syrian Arab Republic', 'Syrian Arab Republic', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(979, 'en', 'general', 'Taiwan', 'Taiwan', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(980, 'en', 'general', 'Tajikistan', 'Tajikistan', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(981, 'en', 'general', 'Tanzania, United Republic of', 'Tanzania, United Republic of', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(982, 'en', 'general', 'Thailand', 'Thailand', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(983, 'en', 'general', 'Timor-Leste', 'Timor-Leste', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(984, 'en', 'general', 'Togo', 'Togo', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(985, 'en', 'general', 'Tokelau', 'Tokelau', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(986, 'en', 'general', 'Tonga', 'Tonga', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(987, 'en', 'general', 'Trinidad and Tobago', 'Trinidad and Tobago', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(988, 'en', 'general', 'Tunisia', 'Tunisia', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(989, 'en', 'general', 'Turkey', 'Turkey', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(990, 'en', 'general', 'Turkmenistan', 'Turkmenistan', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(991, 'en', 'general', 'Turks and Caicos Islands', 'Turks and Caicos Islands', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(992, 'en', 'general', 'Tuvalu', 'Tuvalu', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(993, 'en', 'general', 'Uganda', 'Uganda', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(994, 'en', 'general', 'Ukraine', 'Ukraine', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(995, 'en', 'general', 'United Arab Emirates', 'United Arab Emirates', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(996, 'en', 'general', 'United Kingdom', 'United Kingdom', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(997, 'en', 'general', 'United States', 'United States', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(998, 'en', 'general', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(999, 'en', 'general', 'Uruguay', 'Uruguay', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1000, 'en', 'general', 'Uzbekistan', 'Uzbekistan', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1001, 'en', 'general', 'Vanuatu', 'Vanuatu', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1002, 'en', 'general', 'Venezuela, Bolivarian Republic of', 'Venezuela, Bolivarian Republic of', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1003, 'en', 'general', 'Viet Nam', 'Viet Nam', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1004, 'en', 'general', 'Virgin Islands, British', 'Virgin Islands, British', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1005, 'en', 'general', 'Virgin Islands, U.S.', 'Virgin Islands, U.S.', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1006, 'en', 'general', 'Wallis and Futuna', 'Wallis and Futuna', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1007, 'en', 'general', 'Western Sahara', 'Western Sahara', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1008, 'en', 'general', 'Yemen', 'Yemen', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1009, 'en', 'general', 'Zambia', 'Zambia', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1010, 'en', 'general', 'Zimbabwe', 'Zimbabwe', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1011, 'en', 'general', 'Europe/Amsterdam', 'Europe/Amsterdam', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1012, 'en', 'general', '(GMT/UTC +02:00)', '(GMT/UTC +02:00)', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1013, 'en', 'general', 'Europe/Andorra', 'Europe/Andorra', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1014, 'en', 'general', 'Europe/Astrakhan', 'Europe/Astrakhan', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1015, 'en', 'general', '(GMT/UTC +04:00)', '(GMT/UTC +04:00)', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1016, 'en', 'general', 'Europe/Athens', 'Europe/Athens', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1017, 'en', 'general', '(GMT/UTC +03:00)', '(GMT/UTC +03:00)', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1018, 'en', 'general', 'Europe/Belgrade', 'Europe/Belgrade', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1019, 'en', 'general', 'Europe/Berlin', 'Europe/Berlin', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1020, 'en', 'general', 'Europe/Bratislava', 'Europe/Bratislava', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1021, 'en', 'general', 'Europe/Brussels', 'Europe/Brussels', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1022, 'en', 'general', 'Europe/Bucharest', 'Europe/Bucharest', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1023, 'en', 'general', 'Europe/Budapest', 'Europe/Budapest', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1024, 'en', 'general', 'Europe/Busingen', 'Europe/Busingen', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1025, 'en', 'general', 'Europe/Chisinau', 'Europe/Chisinau', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1026, 'en', 'general', 'Europe/Copenhagen', 'Europe/Copenhagen', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1027, 'en', 'general', 'Europe/Dublin', 'Europe/Dublin', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1028, 'en', 'general', '(GMT/UTC +01:00)', '(GMT/UTC +01:00)', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1029, 'en', 'general', 'Europe/Gibraltar', 'Europe/Gibraltar', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1030, 'en', 'general', 'Europe/Guernsey', 'Europe/Guernsey', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1031, 'en', 'general', 'Europe/Helsinki', 'Europe/Helsinki', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1032, 'en', 'general', 'Europe/Isle_of_Man', 'Europe/Isle_of_Man', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1033, 'en', 'general', 'Europe/Istanbul', 'Europe/Istanbul', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1034, 'en', 'general', 'Europe/Jersey', 'Europe/Jersey', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1035, 'en', 'general', 'Europe/Kaliningrad', 'Europe/Kaliningrad', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1036, 'en', 'general', 'Europe/Kiev', 'Europe/Kiev', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1037, 'en', 'general', 'Europe/Kirov', 'Europe/Kirov', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1038, 'en', 'general', 'Europe/Lisbon', 'Europe/Lisbon', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1039, 'en', 'general', 'Europe/Ljubljana', 'Europe/Ljubljana', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1040, 'en', 'general', 'Europe/London', 'Europe/London', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1041, 'en', 'general', 'Europe/Luxembourg', 'Europe/Luxembourg', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1042, 'en', 'general', 'Europe/Madrid', 'Europe/Madrid', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1043, 'en', 'general', 'Europe/Malta', 'Europe/Malta', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1044, 'en', 'general', 'Europe/Mariehamn', 'Europe/Mariehamn', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1045, 'en', 'general', 'Europe/Minsk', 'Europe/Minsk', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1046, 'en', 'general', 'Europe/Monaco', 'Europe/Monaco', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1047, 'en', 'general', 'Europe/Moscow', 'Europe/Moscow', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1048, 'en', 'general', 'Europe/Oslo', 'Europe/Oslo', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1049, 'en', 'general', 'Europe/Paris', 'Europe/Paris', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1050, 'en', 'general', 'Europe/Podgorica', 'Europe/Podgorica', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1051, 'en', 'general', 'Europe/Prague', 'Europe/Prague', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1052, 'en', 'general', 'Europe/Riga', 'Europe/Riga', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1053, 'en', 'general', 'Europe/Rome', 'Europe/Rome', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1054, 'en', 'general', 'Europe/Samara', 'Europe/Samara', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1055, 'en', 'general', 'Europe/San_Marino', 'Europe/San_Marino', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1056, 'en', 'general', 'Europe/Sarajevo', 'Europe/Sarajevo', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1057, 'en', 'general', 'Europe/Saratov', 'Europe/Saratov', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1058, 'en', 'general', 'Europe/Simferopol', 'Europe/Simferopol', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1059, 'en', 'general', 'Europe/Skopje', 'Europe/Skopje', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1060, 'en', 'general', 'Europe/Sofia', 'Europe/Sofia', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1061, 'en', 'general', 'Europe/Stockholm', 'Europe/Stockholm', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1062, 'en', 'general', 'Europe/Tallinn', 'Europe/Tallinn', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1063, 'en', 'general', 'Europe/Tirane', 'Europe/Tirane', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1064, 'en', 'general', 'Europe/Ulyanovsk', 'Europe/Ulyanovsk', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1065, 'en', 'general', 'Europe/Uzhgorod', 'Europe/Uzhgorod', '2025-09-18 01:27:17', '2025-09-18 01:27:17'),
(1066, 'en', 'general', 'Europe/Vaduz', 'Europe/Vaduz', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1067, 'en', 'general', 'Europe/Vatican', 'Europe/Vatican', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1068, 'en', 'general', 'Europe/Vienna', 'Europe/Vienna', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1069, 'en', 'general', 'Europe/Vilnius', 'Europe/Vilnius', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1070, 'en', 'general', 'Europe/Volgograd', 'Europe/Volgograd', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1071, 'en', 'general', 'Europe/Warsaw', 'Europe/Warsaw', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1072, 'en', 'general', 'Europe/Zagreb', 'Europe/Zagreb', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1073, 'en', 'general', 'Europe/Zaporozhye', 'Europe/Zaporozhye', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1074, 'en', 'general', 'Europe/Zurich', 'Europe/Zurich', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1075, 'en', 'general', 'America/Adak', 'America/Adak', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1076, 'en', 'general', '(GMT/UTC -09:00)', '(GMT/UTC -09:00)', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1077, 'en', 'general', 'America/Anchorage', 'America/Anchorage', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1078, 'en', 'general', '(GMT/UTC -08:00)', '(GMT/UTC -08:00)', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1079, 'en', 'general', 'America/Anguilla', 'America/Anguilla', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1080, 'en', 'general', '(GMT/UTC -04:00)', '(GMT/UTC -04:00)', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1081, 'en', 'general', 'America/Antigua', 'America/Antigua', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1082, 'en', 'general', 'America/Araguaina', 'America/Araguaina', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1083, 'en', 'general', '(GMT/UTC -03:00)', '(GMT/UTC -03:00)', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1084, 'en', 'general', 'America/Argentina/Buenos_Aires', 'America/Argentina/Buenos_Aires', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1085, 'en', 'general', 'America/Argentina/Catamarca', 'America/Argentina/Catamarca', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1086, 'en', 'general', 'America/Argentina/Cordoba', 'America/Argentina/Cordoba', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1087, 'en', 'general', 'America/Argentina/Jujuy', 'America/Argentina/Jujuy', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1088, 'en', 'general', 'America/Argentina/La_Rioja', 'America/Argentina/La_Rioja', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1089, 'en', 'general', 'America/Argentina/Mendoza', 'America/Argentina/Mendoza', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1090, 'en', 'general', 'America/Argentina/Rio_Gallegos', 'America/Argentina/Rio_Gallegos', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1091, 'en', 'general', 'America/Argentina/Salta', 'America/Argentina/Salta', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1092, 'en', 'general', 'America/Argentina/San_Juan', 'America/Argentina/San_Juan', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1093, 'en', 'general', 'America/Argentina/San_Luis', 'America/Argentina/San_Luis', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1094, 'en', 'general', 'America/Argentina/Tucuman', 'America/Argentina/Tucuman', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1095, 'en', 'general', 'America/Argentina/Ushuaia', 'America/Argentina/Ushuaia', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1096, 'en', 'general', 'America/Aruba', 'America/Aruba', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1097, 'en', 'general', 'America/Asuncion', 'America/Asuncion', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1098, 'en', 'general', 'America/Atikokan', 'America/Atikokan', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1099, 'en', 'general', '(GMT/UTC -05:00)', '(GMT/UTC -05:00)', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1100, 'en', 'general', 'America/Bahia', 'America/Bahia', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1101, 'en', 'general', 'America/Bahia_Banderas', 'America/Bahia_Banderas', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1102, 'en', 'general', 'America/Barbados', 'America/Barbados', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1103, 'en', 'general', 'America/Belem', 'America/Belem', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1104, 'en', 'general', 'America/Belize', 'America/Belize', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1105, 'en', 'general', '(GMT/UTC -06:00)', '(GMT/UTC -06:00)', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1106, 'en', 'general', 'America/Blanc-Sablon', 'America/Blanc-Sablon', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1107, 'en', 'general', 'America/Boa_Vista', 'America/Boa_Vista', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1108, 'en', 'general', 'America/Bogota', 'America/Bogota', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1109, 'en', 'general', 'America/Boise', 'America/Boise', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1110, 'en', 'general', 'America/Cambridge_Bay', 'America/Cambridge_Bay', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1111, 'en', 'general', 'America/Campo_Grande', 'America/Campo_Grande', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1112, 'en', 'general', 'America/Cancun', 'America/Cancun', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1113, 'en', 'general', 'America/Caracas', 'America/Caracas', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1114, 'en', 'general', 'America/Cayenne', 'America/Cayenne', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1115, 'en', 'general', 'America/Cayman', 'America/Cayman', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1116, 'en', 'general', 'America/Chicago', 'America/Chicago', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1117, 'en', 'general', 'America/Chihuahua', 'America/Chihuahua', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1118, 'en', 'general', 'America/Costa_Rica', 'America/Costa_Rica', '2025-09-18 01:27:18', '2025-09-18 01:27:18'),
(1119, 'en', 'general', 'America/Creston', 'America/Creston', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1120, 'en', 'general', '(GMT/UTC -07:00)', '(GMT/UTC -07:00)', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1121, 'en', 'general', 'America/Cuiaba', 'America/Cuiaba', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1122, 'en', 'general', 'America/Curacao', 'America/Curacao', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1123, 'en', 'general', 'America/Danmarkshavn', 'America/Danmarkshavn', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1124, 'en', 'general', '(GMT/UTC +00:00)', '(GMT/UTC +00:00)', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1125, 'en', 'general', 'America/Dawson', 'America/Dawson', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1126, 'en', 'general', 'America/Dawson_Creek', 'America/Dawson_Creek', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1127, 'en', 'general', 'America/Denver', 'America/Denver', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1128, 'en', 'general', 'America/Detroit', 'America/Detroit', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1129, 'en', 'general', 'America/Dominica', 'America/Dominica', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1130, 'en', 'general', 'America/Edmonton', 'America/Edmonton', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1131, 'en', 'general', 'America/Eirunepe', 'America/Eirunepe', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1132, 'en', 'general', 'America/El_Salvador', 'America/El_Salvador', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1133, 'en', 'general', 'America/Fort_Nelson', 'America/Fort_Nelson', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1134, 'en', 'general', 'America/Fortaleza', 'America/Fortaleza', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1135, 'en', 'general', 'America/Glace_Bay', 'America/Glace_Bay', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1136, 'en', 'general', 'America/Goose_Bay', 'America/Goose_Bay', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1137, 'en', 'general', 'America/Grand_Turk', 'America/Grand_Turk', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1138, 'en', 'general', 'America/Grenada', 'America/Grenada', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1139, 'en', 'general', 'America/Guadeloupe', 'America/Guadeloupe', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1140, 'en', 'general', 'America/Guatemala', 'America/Guatemala', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1141, 'en', 'general', 'America/Guayaquil', 'America/Guayaquil', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1142, 'en', 'general', 'America/Guyana', 'America/Guyana', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1143, 'en', 'general', 'America/Halifax', 'America/Halifax', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1144, 'en', 'general', 'America/Havana', 'America/Havana', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1145, 'en', 'general', 'America/Hermosillo', 'America/Hermosillo', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1146, 'en', 'general', 'America/Indiana/Indianapolis', 'America/Indiana/Indianapolis', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1147, 'en', 'general', 'America/Indiana/Knox', 'America/Indiana/Knox', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1148, 'en', 'general', 'America/Indiana/Marengo', 'America/Indiana/Marengo', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1149, 'en', 'general', 'America/Indiana/Petersburg', 'America/Indiana/Petersburg', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1150, 'en', 'general', 'America/Indiana/Tell_City', 'America/Indiana/Tell_City', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1151, 'en', 'general', 'America/Indiana/Vevay', 'America/Indiana/Vevay', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1152, 'en', 'general', 'America/Indiana/Vincennes', 'America/Indiana/Vincennes', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1153, 'en', 'general', 'America/Indiana/Winamac', 'America/Indiana/Winamac', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1154, 'en', 'general', 'America/Inuvik', 'America/Inuvik', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1155, 'en', 'general', 'America/Iqaluit', 'America/Iqaluit', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1156, 'en', 'general', 'America/Jamaica', 'America/Jamaica', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1157, 'en', 'general', 'America/Juneau', 'America/Juneau', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1158, 'en', 'general', 'America/Kentucky/Louisville', 'America/Kentucky/Louisville', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1159, 'en', 'general', 'America/Kentucky/Monticello', 'America/Kentucky/Monticello', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1160, 'en', 'general', 'America/Kralendijk', 'America/Kralendijk', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1161, 'en', 'general', 'America/La_Paz', 'America/La_Paz', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1162, 'en', 'general', 'America/Lima', 'America/Lima', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1163, 'en', 'general', 'America/Los_Angeles', 'America/Los_Angeles', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1164, 'en', 'general', 'America/Lower_Princes', 'America/Lower_Princes', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1165, 'en', 'general', 'America/Maceio', 'America/Maceio', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1166, 'en', 'general', 'America/Managua', 'America/Managua', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1167, 'en', 'general', 'America/Manaus', 'America/Manaus', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1168, 'en', 'general', 'America/Marigot', 'America/Marigot', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1169, 'en', 'general', 'America/Martinique', 'America/Martinique', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1170, 'en', 'general', 'America/Matamoros', 'America/Matamoros', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1171, 'en', 'general', 'America/Mazatlan', 'America/Mazatlan', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1172, 'en', 'general', 'America/Menominee', 'America/Menominee', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1173, 'en', 'general', 'America/Merida', 'America/Merida', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1174, 'en', 'general', 'America/Metlakatla', 'America/Metlakatla', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1175, 'en', 'general', 'America/Mexico_City', 'America/Mexico_City', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1176, 'en', 'general', 'America/Miquelon', 'America/Miquelon', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1177, 'en', 'general', '(GMT/UTC -02:00)', '(GMT/UTC -02:00)', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1178, 'en', 'general', 'America/Moncton', 'America/Moncton', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1179, 'en', 'general', 'America/Monterrey', 'America/Monterrey', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1180, 'en', 'general', 'America/Montevideo', 'America/Montevideo', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1181, 'en', 'general', 'America/Montserrat', 'America/Montserrat', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1182, 'en', 'general', 'America/Nassau', 'America/Nassau', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1183, 'en', 'general', 'America/New_York', 'America/New_York', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1184, 'en', 'general', 'America/Nipigon', 'America/Nipigon', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1185, 'en', 'general', 'America/Nome', 'America/Nome', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1186, 'en', 'general', 'America/Noronha', 'America/Noronha', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1187, 'en', 'general', 'America/North_Dakota/Beulah', 'America/North_Dakota/Beulah', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1188, 'en', 'general', 'America/North_Dakota/Center', 'America/North_Dakota/Center', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1189, 'en', 'general', 'America/North_Dakota/New_Salem', 'America/North_Dakota/New_Salem', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1190, 'en', 'general', 'America/Nuuk', 'America/Nuuk', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1191, 'en', 'general', 'America/Ojinaga', 'America/Ojinaga', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1192, 'en', 'general', 'America/Panama', 'America/Panama', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1193, 'en', 'general', 'America/Pangnirtung', 'America/Pangnirtung', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1194, 'en', 'general', 'America/Paramaribo', 'America/Paramaribo', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1195, 'en', 'general', 'America/Phoenix', 'America/Phoenix', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1196, 'en', 'general', 'America/Port-au-Prince', 'America/Port-au-Prince', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1197, 'en', 'general', 'America/Port_of_Spain', 'America/Port_of_Spain', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1198, 'en', 'general', 'America/Porto_Velho', 'America/Porto_Velho', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1199, 'en', 'general', 'America/Puerto_Rico', 'America/Puerto_Rico', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1200, 'en', 'general', 'America/Punta_Arenas', 'America/Punta_Arenas', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1201, 'en', 'general', 'America/Rainy_River', 'America/Rainy_River', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1202, 'en', 'general', 'America/Rankin_Inlet', 'America/Rankin_Inlet', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1203, 'en', 'general', 'America/Recife', 'America/Recife', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1204, 'en', 'general', 'America/Regina', 'America/Regina', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1205, 'en', 'general', 'America/Resolute', 'America/Resolute', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1206, 'en', 'general', 'America/Rio_Branco', 'America/Rio_Branco', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1207, 'en', 'general', 'America/Santarem', 'America/Santarem', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1208, 'en', 'general', 'America/Santiago', 'America/Santiago', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1209, 'en', 'general', 'America/Santo_Domingo', 'America/Santo_Domingo', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1210, 'en', 'general', 'America/Sao_Paulo', 'America/Sao_Paulo', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1211, 'en', 'general', 'America/Scoresbysund', 'America/Scoresbysund', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1212, 'en', 'general', 'America/Sitka', 'America/Sitka', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1213, 'en', 'general', 'America/St_Barthelemy', 'America/St_Barthelemy', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1214, 'en', 'general', 'America/St_Johns', 'America/St_Johns', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1215, 'en', 'general', '(GMT/UTC -02:30)', '(GMT/UTC -02:30)', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1216, 'en', 'general', 'America/St_Kitts', 'America/St_Kitts', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1217, 'en', 'general', 'America/St_Lucia', 'America/St_Lucia', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1218, 'en', 'general', 'America/St_Thomas', 'America/St_Thomas', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1219, 'en', 'general', 'America/St_Vincent', 'America/St_Vincent', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1220, 'en', 'general', 'America/Swift_Current', 'America/Swift_Current', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1221, 'en', 'general', 'America/Tegucigalpa', 'America/Tegucigalpa', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1222, 'en', 'general', 'America/Thule', 'America/Thule', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1223, 'en', 'general', 'America/Thunder_Bay', 'America/Thunder_Bay', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1224, 'en', 'general', 'America/Tijuana', 'America/Tijuana', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1225, 'en', 'general', 'America/Toronto', 'America/Toronto', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1226, 'en', 'general', 'America/Tortola', 'America/Tortola', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1227, 'en', 'general', 'America/Vancouver', 'America/Vancouver', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1228, 'en', 'general', 'America/Whitehorse', 'America/Whitehorse', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1229, 'en', 'general', 'America/Winnipeg', 'America/Winnipeg', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1230, 'en', 'general', 'America/Yakutat', 'America/Yakutat', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1231, 'en', 'general', 'America/Yellowknife', 'America/Yellowknife', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1232, 'en', 'general', 'Indian/Antananarivo', 'Indian/Antananarivo', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1233, 'en', 'general', 'Indian/Chagos', 'Indian/Chagos', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1234, 'en', 'general', '(GMT/UTC +06:00)', '(GMT/UTC +06:00)', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1235, 'en', 'general', 'Indian/Christmas', 'Indian/Christmas', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1236, 'en', 'general', '(GMT/UTC +07:00)', '(GMT/UTC +07:00)', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1237, 'en', 'general', 'Indian/Cocos', 'Indian/Cocos', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1238, 'en', 'general', '(GMT/UTC +06:30)', '(GMT/UTC +06:30)', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1239, 'en', 'general', 'Indian/Comoro', 'Indian/Comoro', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1240, 'en', 'general', 'Indian/Kerguelen', 'Indian/Kerguelen', '2025-09-18 01:27:19', '2025-09-18 01:27:19'),
(1241, 'en', 'general', '(GMT/UTC +05:00)', '(GMT/UTC +05:00)', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1242, 'en', 'general', 'Indian/Mahe', 'Indian/Mahe', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1243, 'en', 'general', 'Indian/Maldives', 'Indian/Maldives', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1244, 'en', 'general', 'Indian/Mauritius', 'Indian/Mauritius', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1245, 'en', 'general', 'Indian/Mayotte', 'Indian/Mayotte', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1246, 'en', 'general', 'Indian/Reunion', 'Indian/Reunion', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1247, 'en', 'general', 'Australia/Adelaide', 'Australia/Adelaide', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1248, 'en', 'general', '(GMT/UTC +09:30)', '(GMT/UTC +09:30)', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1249, 'en', 'general', 'Australia/Brisbane', 'Australia/Brisbane', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1250, 'en', 'general', '(GMT/UTC +10:00)', '(GMT/UTC +10:00)', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1251, 'en', 'general', 'Australia/Broken_Hill', 'Australia/Broken_Hill', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1252, 'en', 'general', 'Australia/Darwin', 'Australia/Darwin', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1253, 'en', 'general', 'Australia/Eucla', 'Australia/Eucla', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1254, 'en', 'general', '(GMT/UTC +08:45)', '(GMT/UTC +08:45)', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1255, 'en', 'general', 'Australia/Hobart', 'Australia/Hobart', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1256, 'en', 'general', 'Australia/Lindeman', 'Australia/Lindeman', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1257, 'en', 'general', 'Australia/Lord_Howe', 'Australia/Lord_Howe', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1258, 'en', 'general', '(GMT/UTC +10:30)', '(GMT/UTC +10:30)', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1259, 'en', 'general', 'Australia/Melbourne', 'Australia/Melbourne', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1260, 'en', 'general', 'Australia/Perth', 'Australia/Perth', '2025-09-18 01:27:20', '2025-09-18 01:27:20');
INSERT INTO `translates` (`id`, `lang_code`, `group_langname`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1261, 'en', 'general', '(GMT/UTC +08:00)', '(GMT/UTC +08:00)', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1262, 'en', 'general', 'Australia/Sydney', 'Australia/Sydney', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1263, 'en', 'general', 'Asia/Aden', 'Asia/Aden', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1264, 'en', 'general', 'Asia/Almaty', 'Asia/Almaty', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1265, 'en', 'general', 'Asia/Amman', 'Asia/Amman', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1266, 'en', 'general', 'Asia/Anadyr', 'Asia/Anadyr', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1267, 'en', 'general', '(GMT/UTC +12:00)', '(GMT/UTC +12:00)', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1268, 'en', 'general', 'Asia/Aqtau', 'Asia/Aqtau', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1269, 'en', 'general', 'Asia/Aqtobe', 'Asia/Aqtobe', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1270, 'en', 'general', 'Asia/Ashgabat', 'Asia/Ashgabat', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1271, 'en', 'general', 'Asia/Atyrau', 'Asia/Atyrau', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1272, 'en', 'general', 'Asia/Baghdad', 'Asia/Baghdad', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1273, 'en', 'general', 'Asia/Bahrain', 'Asia/Bahrain', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1274, 'en', 'general', 'Asia/Baku', 'Asia/Baku', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1275, 'en', 'general', 'Asia/Bangkok', 'Asia/Bangkok', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1276, 'en', 'general', 'Asia/Barnaul', 'Asia/Barnaul', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1277, 'en', 'general', 'Asia/Beirut', 'Asia/Beirut', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1278, 'en', 'general', 'Asia/Bishkek', 'Asia/Bishkek', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1279, 'en', 'general', 'Asia/Brunei', 'Asia/Brunei', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1280, 'en', 'general', 'Asia/Chita', 'Asia/Chita', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1281, 'en', 'general', '(GMT/UTC +09:00)', '(GMT/UTC +09:00)', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1282, 'en', 'general', 'Asia/Choibalsan', 'Asia/Choibalsan', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1283, 'en', 'general', 'Asia/Colombo', 'Asia/Colombo', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1284, 'en', 'general', '(GMT/UTC +05:30)', '(GMT/UTC +05:30)', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1285, 'en', 'general', 'Asia/Damascus', 'Asia/Damascus', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1286, 'en', 'general', 'Asia/Dhaka', 'Asia/Dhaka', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1287, 'en', 'general', 'Asia/Dili', 'Asia/Dili', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1288, 'en', 'general', 'Asia/Dubai', 'Asia/Dubai', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1289, 'en', 'general', 'Asia/Dushanbe', 'Asia/Dushanbe', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1290, 'en', 'general', 'Asia/Famagusta', 'Asia/Famagusta', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1291, 'en', 'general', 'Asia/Gaza', 'Asia/Gaza', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1292, 'en', 'general', 'Asia/Hebron', 'Asia/Hebron', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1293, 'en', 'general', 'Asia/Ho_Chi_Minh', 'Asia/Ho_Chi_Minh', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1294, 'en', 'general', 'Asia/Hong_Kong', 'Asia/Hong_Kong', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1295, 'en', 'general', 'Asia/Hovd', 'Asia/Hovd', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1296, 'en', 'general', 'Asia/Irkutsk', 'Asia/Irkutsk', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1297, 'en', 'general', 'Asia/Jakarta', 'Asia/Jakarta', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1298, 'en', 'general', 'Asia/Jayapura', 'Asia/Jayapura', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1299, 'en', 'general', 'Asia/Jerusalem', 'Asia/Jerusalem', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1300, 'en', 'general', 'Asia/Kabul', 'Asia/Kabul', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1301, 'en', 'general', '(GMT/UTC +04:30)', '(GMT/UTC +04:30)', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1302, 'en', 'general', 'Asia/Kamchatka', 'Asia/Kamchatka', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1303, 'en', 'general', 'Asia/Karachi', 'Asia/Karachi', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1304, 'en', 'general', 'Asia/Kathmandu', 'Asia/Kathmandu', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1305, 'en', 'general', '(GMT/UTC +05:45)', '(GMT/UTC +05:45)', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1306, 'en', 'general', 'Asia/Khandyga', 'Asia/Khandyga', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1307, 'en', 'general', 'Asia/Kolkata', 'Asia/Kolkata', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1308, 'en', 'general', 'Asia/Krasnoyarsk', 'Asia/Krasnoyarsk', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1309, 'en', 'general', 'Asia/Kuala_Lumpur', 'Asia/Kuala_Lumpur', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1310, 'en', 'general', 'Asia/Kuching', 'Asia/Kuching', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1311, 'en', 'general', 'Asia/Kuwait', 'Asia/Kuwait', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1312, 'en', 'general', 'Asia/Macau', 'Asia/Macau', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1313, 'en', 'general', 'Asia/Magadan', 'Asia/Magadan', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1314, 'en', 'general', '(GMT/UTC +11:00)', '(GMT/UTC +11:00)', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1315, 'en', 'general', 'Asia/Makassar', 'Asia/Makassar', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1316, 'en', 'general', 'Asia/Manila', 'Asia/Manila', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1317, 'en', 'general', 'Asia/Muscat', 'Asia/Muscat', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1318, 'en', 'general', 'Asia/Nicosia', 'Asia/Nicosia', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1319, 'en', 'general', 'Asia/Novokuznetsk', 'Asia/Novokuznetsk', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1320, 'en', 'general', 'Asia/Novosibirsk', 'Asia/Novosibirsk', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1321, 'en', 'general', 'Asia/Omsk', 'Asia/Omsk', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1322, 'en', 'general', 'Asia/Oral', 'Asia/Oral', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1323, 'en', 'general', 'Asia/Phnom_Penh', 'Asia/Phnom_Penh', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1324, 'en', 'general', 'Asia/Pontianak', 'Asia/Pontianak', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1325, 'en', 'general', 'Asia/Pyongyang', 'Asia/Pyongyang', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1326, 'en', 'general', 'Asia/Qatar', 'Asia/Qatar', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1327, 'en', 'general', 'Asia/Qostanay', 'Asia/Qostanay', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1328, 'en', 'general', 'Asia/Qyzylorda', 'Asia/Qyzylorda', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1329, 'en', 'general', 'Asia/Riyadh', 'Asia/Riyadh', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1330, 'en', 'general', 'Asia/Sakhalin', 'Asia/Sakhalin', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1331, 'en', 'general', 'Asia/Samarkand', 'Asia/Samarkand', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1332, 'en', 'general', 'Asia/Seoul', 'Asia/Seoul', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1333, 'en', 'general', 'Asia/Shanghai', 'Asia/Shanghai', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1334, 'en', 'general', 'Asia/Singapore', 'Asia/Singapore', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1335, 'en', 'general', 'Asia/Srednekolymsk', 'Asia/Srednekolymsk', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1336, 'en', 'general', 'Asia/Taipei', 'Asia/Taipei', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1337, 'en', 'general', 'Asia/Tashkent', 'Asia/Tashkent', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1338, 'en', 'general', 'Asia/Tbilisi', 'Asia/Tbilisi', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1339, 'en', 'general', 'Asia/Tehran', 'Asia/Tehran', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1340, 'en', 'general', 'Asia/Thimphu', 'Asia/Thimphu', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1341, 'en', 'general', 'Asia/Tokyo', 'Asia/Tokyo', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1342, 'en', 'general', 'Asia/Tomsk', 'Asia/Tomsk', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1343, 'en', 'general', 'Asia/Ulaanbaatar', 'Asia/Ulaanbaatar', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1344, 'en', 'general', 'Asia/Urumqi', 'Asia/Urumqi', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1345, 'en', 'general', 'Asia/Ust-Nera', 'Asia/Ust-Nera', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1346, 'en', 'general', 'Asia/Vientiane', 'Asia/Vientiane', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1347, 'en', 'general', 'Asia/Vladivostok', 'Asia/Vladivostok', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1348, 'en', 'general', 'Asia/Yakutsk', 'Asia/Yakutsk', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1349, 'en', 'general', 'Asia/Yangon', 'Asia/Yangon', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1350, 'en', 'general', 'Asia/Yekaterinburg', 'Asia/Yekaterinburg', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1351, 'en', 'general', 'Asia/Yerevan', 'Asia/Yerevan', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1352, 'en', 'general', 'Africa/Abidjan', 'Africa/Abidjan', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1353, 'en', 'general', 'Africa/Accra', 'Africa/Accra', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1354, 'en', 'general', 'Africa/Addis_Ababa', 'Africa/Addis_Ababa', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1355, 'en', 'general', 'Africa/Algiers', 'Africa/Algiers', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1356, 'en', 'general', 'Africa/Asmara', 'Africa/Asmara', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1357, 'en', 'general', 'Africa/Bamako', 'Africa/Bamako', '2025-09-18 01:27:20', '2025-09-18 01:27:20'),
(1358, 'en', 'general', 'Africa/Bangui', 'Africa/Bangui', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1359, 'en', 'general', 'Africa/Banjul', 'Africa/Banjul', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1360, 'en', 'general', 'Africa/Bissau', 'Africa/Bissau', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1361, 'en', 'general', 'Africa/Blantyre', 'Africa/Blantyre', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1362, 'en', 'general', 'Africa/Brazzaville', 'Africa/Brazzaville', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1363, 'en', 'general', 'Africa/Bujumbura', 'Africa/Bujumbura', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1364, 'en', 'general', 'Africa/Cairo', 'Africa/Cairo', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1365, 'en', 'general', 'Africa/Casablanca', 'Africa/Casablanca', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1366, 'en', 'general', 'Africa/Ceuta', 'Africa/Ceuta', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1367, 'en', 'general', 'Africa/Conakry', 'Africa/Conakry', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1368, 'en', 'general', 'Africa/Dakar', 'Africa/Dakar', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1369, 'en', 'general', 'Africa/Dar_es_Salaam', 'Africa/Dar_es_Salaam', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1370, 'en', 'general', 'Africa/Djibouti', 'Africa/Djibouti', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1371, 'en', 'general', 'Africa/Douala', 'Africa/Douala', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1372, 'en', 'general', 'Africa/El_Aaiun', 'Africa/El_Aaiun', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1373, 'en', 'general', 'Africa/Freetown', 'Africa/Freetown', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1374, 'en', 'general', 'Africa/Gaborone', 'Africa/Gaborone', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1375, 'en', 'general', 'Africa/Harare', 'Africa/Harare', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1376, 'en', 'general', 'Africa/Johannesburg', 'Africa/Johannesburg', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1377, 'en', 'general', 'Africa/Juba', 'Africa/Juba', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1378, 'en', 'general', 'Africa/Kampala', 'Africa/Kampala', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1379, 'en', 'general', 'Africa/Khartoum', 'Africa/Khartoum', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1380, 'en', 'general', 'Africa/Kigali', 'Africa/Kigali', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1381, 'en', 'general', 'Africa/Kinshasa', 'Africa/Kinshasa', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1382, 'en', 'general', 'Africa/Lagos', 'Africa/Lagos', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1383, 'en', 'general', 'Africa/Libreville', 'Africa/Libreville', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1384, 'en', 'general', 'Africa/Lome', 'Africa/Lome', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1385, 'en', 'general', 'Africa/Luanda', 'Africa/Luanda', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1386, 'en', 'general', 'Africa/Lubumbashi', 'Africa/Lubumbashi', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1387, 'en', 'general', 'Africa/Lusaka', 'Africa/Lusaka', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1388, 'en', 'general', 'Africa/Malabo', 'Africa/Malabo', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1389, 'en', 'general', 'Africa/Maputo', 'Africa/Maputo', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1390, 'en', 'general', 'Africa/Maseru', 'Africa/Maseru', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1391, 'en', 'general', 'Africa/Mbabane', 'Africa/Mbabane', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1392, 'en', 'general', 'Africa/Mogadishu', 'Africa/Mogadishu', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1393, 'en', 'general', 'Africa/Monrovia', 'Africa/Monrovia', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1394, 'en', 'general', 'Africa/Nairobi', 'Africa/Nairobi', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1395, 'en', 'general', 'Africa/Ndjamena', 'Africa/Ndjamena', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1396, 'en', 'general', 'Africa/Niamey', 'Africa/Niamey', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1397, 'en', 'general', 'Africa/Nouakchott', 'Africa/Nouakchott', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1398, 'en', 'general', 'Africa/Ouagadougou', 'Africa/Ouagadougou', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1399, 'en', 'general', 'Africa/Porto-Novo', 'Africa/Porto-Novo', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1400, 'en', 'general', 'Africa/Sao_Tome', 'Africa/Sao_Tome', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1401, 'en', 'general', 'Africa/Tripoli', 'Africa/Tripoli', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1402, 'en', 'general', 'Africa/Tunis', 'Africa/Tunis', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1403, 'en', 'general', 'Africa/Windhoek', 'Africa/Windhoek', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1404, 'en', 'general', 'Antarctica/Casey', 'Antarctica/Casey', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1405, 'en', 'general', 'Antarctica/Davis', 'Antarctica/Davis', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1406, 'en', 'general', 'Antarctica/DumontDUrville', 'Antarctica/DumontDUrville', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1407, 'en', 'general', 'Antarctica/Macquarie', 'Antarctica/Macquarie', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1408, 'en', 'general', 'Antarctica/Mawson', 'Antarctica/Mawson', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1409, 'en', 'general', 'Antarctica/McMurdo', 'Antarctica/McMurdo', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1410, 'en', 'general', 'Antarctica/Palmer', 'Antarctica/Palmer', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1411, 'en', 'general', 'Antarctica/Rothera', 'Antarctica/Rothera', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1412, 'en', 'general', 'Antarctica/Syowa', 'Antarctica/Syowa', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1413, 'en', 'general', 'Antarctica/Troll', 'Antarctica/Troll', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1414, 'en', 'general', 'Antarctica/Vostok', 'Antarctica/Vostok', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1415, 'en', 'general', 'Arctic/Longyearbyen', 'Arctic/Longyearbyen', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1416, 'en', 'general', 'Atlantic/Azores', 'Atlantic/Azores', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1417, 'en', 'general', 'Atlantic/Bermuda', 'Atlantic/Bermuda', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1418, 'en', 'general', 'Atlantic/Canary', 'Atlantic/Canary', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1419, 'en', 'general', 'Atlantic/Cape_Verde', 'Atlantic/Cape_Verde', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1420, 'en', 'general', '(GMT/UTC -01:00)', '(GMT/UTC -01:00)', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1421, 'en', 'general', 'Atlantic/Faroe', 'Atlantic/Faroe', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1422, 'en', 'general', 'Atlantic/Madeira', 'Atlantic/Madeira', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1423, 'en', 'general', 'Atlantic/Reykjavik', 'Atlantic/Reykjavik', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1424, 'en', 'general', 'Atlantic/South_Georgia', 'Atlantic/South_Georgia', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1425, 'en', 'general', 'Atlantic/St_Helena', 'Atlantic/St_Helena', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1426, 'en', 'general', 'Atlantic/Stanley', 'Atlantic/Stanley', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1427, 'en', 'general', 'Pacific/Apia', 'Pacific/Apia', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1428, 'en', 'general', '(GMT/UTC +13:00)', '(GMT/UTC +13:00)', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1429, 'en', 'general', 'Pacific/Auckland', 'Pacific/Auckland', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1430, 'en', 'general', 'Pacific/Bougainville', 'Pacific/Bougainville', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1431, 'en', 'general', 'Pacific/Chatham', 'Pacific/Chatham', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1432, 'en', 'general', '(GMT/UTC +12:45)', '(GMT/UTC +12:45)', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1433, 'en', 'general', 'Pacific/Chuuk', 'Pacific/Chuuk', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1434, 'en', 'general', 'Pacific/Easter', 'Pacific/Easter', '2025-09-18 01:27:21', '2025-09-18 01:27:21'),
(1435, 'en', 'general', 'Pacific/Efate', 'Pacific/Efate', '2025-09-18 01:27:22', '2025-09-18 01:27:22'),
(1436, 'en', 'general', 'Pacific/Fakaofo', 'Pacific/Fakaofo', '2025-09-18 01:27:22', '2025-09-18 01:27:22'),
(1437, 'en', 'general', 'Pacific/Fiji', 'Pacific/Fiji', '2025-09-18 01:27:22', '2025-09-18 01:27:22'),
(1438, 'en', 'general', 'Pacific/Funafuti', 'Pacific/Funafuti', '2025-09-18 01:27:22', '2025-09-18 01:27:22'),
(1439, 'en', 'general', 'Pacific/Galapagos', 'Pacific/Galapagos', '2025-09-18 01:27:22', '2025-09-18 01:27:22'),
(1440, 'en', 'general', 'Pacific/Gambier', 'Pacific/Gambier', '2025-09-18 01:27:22', '2025-09-18 01:27:22'),
(1441, 'en', 'general', 'Pacific/Guadalcanal', 'Pacific/Guadalcanal', '2025-09-18 01:27:22', '2025-09-18 01:27:22'),
(1442, 'en', 'general', 'Pacific/Guam', 'Pacific/Guam', '2025-09-18 01:27:22', '2025-09-18 01:27:22'),
(1443, 'en', 'general', 'Pacific/Honolulu', 'Pacific/Honolulu', '2025-09-18 01:27:22', '2025-09-18 01:27:22'),
(1444, 'en', 'general', '(GMT/UTC -10:00)', '(GMT/UTC -10:00)', '2025-09-18 01:27:22', '2025-09-18 01:27:22'),
(1445, 'en', 'general', 'Pacific/Kanton', 'Pacific/Kanton', '2025-09-18 01:27:22', '2025-09-18 01:27:22'),
(1446, 'en', 'general', 'Pacific/Kiritimati', 'Pacific/Kiritimati', '2025-09-18 01:27:22', '2025-09-18 01:27:22'),
(1447, 'en', 'general', '(GMT/UTC +14:00)', '(GMT/UTC +14:00)', '2025-09-18 01:27:22', '2025-09-18 01:27:22'),
(1448, 'en', 'general', 'Pacific/Kosrae', 'Pacific/Kosrae', '2025-09-18 01:27:22', '2025-09-18 01:27:22'),
(1449, 'en', 'general', 'Pacific/Kwajalein', 'Pacific/Kwajalein', '2025-09-18 01:27:22', '2025-09-18 01:27:22'),
(1450, 'en', 'general', 'Pacific/Majuro', 'Pacific/Majuro', '2025-09-18 01:27:22', '2025-09-18 01:27:22'),
(1451, 'en', 'general', 'Pacific/Marquesas', 'Pacific/Marquesas', '2025-09-18 01:27:22', '2025-09-18 01:27:22'),
(1452, 'en', 'general', '(GMT/UTC -09:30)', '(GMT/UTC -09:30)', '2025-09-18 01:27:22', '2025-09-18 01:27:22'),
(1453, 'en', 'general', 'Pacific/Midway', 'Pacific/Midway', '2025-09-18 01:27:22', '2025-09-18 01:27:22'),
(1454, 'en', 'general', '(GMT/UTC -11:00)', '(GMT/UTC -11:00)', '2025-09-18 01:27:22', '2025-09-18 01:27:22'),
(1455, 'en', 'general', 'Pacific/Nauru', 'Pacific/Nauru', '2025-09-18 01:27:22', '2025-09-18 01:27:22'),
(1456, 'en', 'general', 'Pacific/Niue', 'Pacific/Niue', '2025-09-18 01:27:22', '2025-09-18 01:27:22'),
(1457, 'en', 'general', 'Pacific/Norfolk', 'Pacific/Norfolk', '2025-09-18 01:27:22', '2025-09-18 01:27:22'),
(1458, 'en', 'general', 'Pacific/Noumea', 'Pacific/Noumea', '2025-09-18 01:27:22', '2025-09-18 01:27:22'),
(1459, 'en', 'general', 'Pacific/Pago_Pago', 'Pacific/Pago_Pago', '2025-09-18 01:27:22', '2025-09-18 01:27:22'),
(1460, 'en', 'general', 'Pacific/Palau', 'Pacific/Palau', '2025-09-18 01:27:22', '2025-09-18 01:27:22'),
(1461, 'en', 'general', 'Pacific/Pitcairn', 'Pacific/Pitcairn', '2025-09-18 01:27:22', '2025-09-18 01:27:22'),
(1462, 'en', 'general', 'Pacific/Pohnpei', 'Pacific/Pohnpei', '2025-09-18 01:27:22', '2025-09-18 01:27:22'),
(1463, 'en', 'general', 'Pacific/Port_Moresby', 'Pacific/Port_Moresby', '2025-09-18 01:27:22', '2025-09-18 01:27:22'),
(1464, 'en', 'general', 'Pacific/Rarotonga', 'Pacific/Rarotonga', '2025-09-18 01:27:22', '2025-09-18 01:27:22'),
(1465, 'en', 'general', 'Pacific/Saipan', 'Pacific/Saipan', '2025-09-18 01:27:22', '2025-09-18 01:27:22'),
(1466, 'en', 'general', 'Pacific/Tahiti', 'Pacific/Tahiti', '2025-09-18 01:27:22', '2025-09-18 01:27:22'),
(1467, 'en', 'general', 'Pacific/Tarawa', 'Pacific/Tarawa', '2025-09-18 01:27:22', '2025-09-18 01:27:22'),
(1468, 'en', 'general', 'Pacific/Tongatapu', 'Pacific/Tongatapu', '2025-09-18 01:27:22', '2025-09-18 01:27:22'),
(1469, 'en', 'general', 'Pacific/Wake', 'Pacific/Wake', '2025-09-18 01:27:22', '2025-09-18 01:27:22'),
(1470, 'en', 'general', 'Pacific/Wallis', 'Pacific/Wallis', '2025-09-18 01:27:22', '2025-09-18 01:27:22'),
(1471, 'en', 'general', 'UTC', 'UTC', '2025-09-18 01:27:22', '2025-09-18 01:27:22'),
(1472, 'en', 'general', '', '', '2025-09-18 01:27:22', '2025-09-18 01:27:22'),
(1473, 'en', 'general', 'Edit', 'Edit', '2025-09-18 01:41:10', '2025-09-18 01:41:10'),
(1474, 'en', 'general', 'Custom Field', 'Custom Field', '2025-09-18 01:41:41', '2025-09-18 01:41:41'),
(1475, 'en', 'general', 'Custom Field Lists', 'Custom Field Lists', '2025-09-18 01:41:41', '2025-09-18 01:41:41'),
(1476, 'en', 'general', 'Add Custom Field', 'Add Custom Field', '2025-09-18 01:41:41', '2025-09-18 01:41:41'),
(1477, 'en', 'general', 'Field Name', 'Field Name', '2025-09-18 01:41:41', '2025-09-18 01:41:41'),
(1478, 'en', 'general', 'Field Type', 'Field Type', '2025-09-18 01:41:41', '2025-09-18 01:41:41'),
(1479, 'en', 'general', 'Label field name', 'Label field name', '2025-09-18 01:41:41', '2025-09-18 01:41:41'),
(1480, 'en', 'general', 'Field label type', 'Field label type', '2025-09-18 01:41:41', '2025-09-18 01:41:41'),
(1481, 'en', 'general', 'Field options', 'Field options', '2025-09-18 01:41:41', '2025-09-18 01:41:41'),
(1482, 'en', 'general', 'You have to add the comma-separated values.', 'You have to add the comma-separated values.', '2025-09-18 01:41:41', '2025-09-18 01:41:41'),
(1483, 'en', 'general', 'a,k,n', 'a,k,n', '2025-09-18 01:41:41', '2025-09-18 01:41:41'),
(1484, 'en', 'general', 'View On', 'View On', '2025-09-18 01:41:41', '2025-09-18 01:41:41'),
(1485, 'en', 'general', 'Both', 'Both', '2025-09-18 01:41:41', '2025-09-18 01:41:41'),
(1486, 'en', 'general', 'Create Tickets', 'Create Tickets', '2025-09-18 01:41:41', '2025-09-18 01:41:41'),
(1487, 'en', 'general', 'Register', 'Register', '2025-09-18 01:41:41', '2025-09-18 01:41:41'),
(1488, 'en', 'general', 'Required field', 'Required field', '2025-09-18 01:41:41', '2025-09-18 01:41:41'),
(1489, 'en', 'general', 'Privacy', 'Privacy', '2025-09-18 01:41:41', '2025-09-18 01:41:41'),
(1490, 'en', 'general', 'If you select this option, the content in the field will be encrypted.', 'If you select this option, the content in the field will be encrypted.', '2025-09-18 01:41:41', '2025-09-18 01:41:41'),
(1491, 'en', 'general', 'New Custom Field', 'New Custom Field', '2025-09-18 01:41:41', '2025-09-18 01:41:41'),
(1492, 'en', 'alerts', 'Please select required fields.', 'Please select required fields.', '2025-09-18 01:41:41', '2025-09-18 01:41:41'),
(1493, 'en', 'general', 'Edit Custom Field', 'Edit Custom Field', '2025-09-18 01:41:41', '2025-09-18 01:41:41'),
(1494, 'en', 'general', 'Mail Encryption', 'Mail Encryption', '2025-09-18 01:41:46', '2025-09-18 01:41:46'),
(1495, 'en', 'general', 'https://example.com', 'https://example.com', '2025-09-18 01:42:14', '2025-09-18 01:42:14'),
(1496, 'en', 'setting', 'Contact Us', 'Contact Us', '2025-09-18 01:42:14', '2025-09-18 01:42:14'),
(1497, 'en', 'setting', 'If you enable this setting, the \"Contact Us\" option will appear in the application’s landing page.', 'If you enable this setting, the \"Contact Us\" option will appear in the application’s landing page.', '2025-09-18 01:42:14', '2025-09-18 01:42:14'),
(1498, 'en', 'setting', 'Enter Contact us Email', 'Enter Contact us Email', '2025-09-18 01:42:14', '2025-09-18 01:42:14'),
(1499, 'en', 'setting', 'Enter an email address to receive contact-us form details.', 'Enter an email address to receive contact-us form details.', '2025-09-18 01:42:14', '2025-09-18 01:42:14'),
(1500, 'en', 'general', 'admin@example.com', 'admin@example.com', '2025-09-18 01:42:14', '2025-09-18 01:42:14'),
(1501, 'en', 'setting', 'Chat GPT', 'Chat GPT', '2025-09-18 01:42:14', '2025-09-18 01:42:14'),
(1502, 'en', 'setting', 'Enable Chat GPT', 'Enable Chat GPT', '2025-09-18 01:42:14', '2025-09-18 01:42:14'),
(1503, 'en', 'setting', 'By enabling this setting, you will be able to use chat gpt to generate text for canned response, email templates, custom notifications, articles and announcements.', 'By enabling this setting, you will be able to use chat gpt to generate text for canned response, email templates, custom notifications, articles and announcements.', '2025-09-18 01:42:14', '2025-09-18 01:42:14'),
(1504, 'en', 'setting', 'Enter OpenAI Chat GPT API Secret Key', 'Enter OpenAI Chat GPT API Secret Key', '2025-09-18 01:42:14', '2025-09-18 01:42:14'),
(1505, 'en', 'setting', 'Enter the OpenAI Chat GPT API Secret Key to use Chat GPT in your application.', 'Enter the OpenAI Chat GPT API Secret Key to use Chat GPT in your application.', '2025-09-18 01:42:14', '2025-09-18 01:42:14'),
(1506, 'en', 'setting', 'Inactive Customer/Guest Delete ', 'Inactive Customer/Guest Delete ', '2025-09-18 01:42:14', '2025-09-18 01:42:14'),
(1507, 'en', 'setting', 'Customer Profile Auto Delete Enable', 'Customer Profile Auto Delete Enable', '2025-09-18 01:42:14', '2025-09-18 01:42:14'),
(1508, 'en', 'setting', 'If you enable this ticket setting, inactive customers will receive an email after the time period specified below (Inactive Months) stating that their account has been unused since then and will be deleted automatically after the specified (Customer Delete Days).', 'If you enable this ticket setting, inactive customers will receive an email after the time period specified below (Inactive Months) stating that their account has been unused since then and will be deleted automatically after the specified (Customer Delete Days).', '2025-09-18 01:42:14', '2025-09-18 01:42:14'),
(1509, 'en', 'setting', 'Inactive Months', 'Inactive Months', '2025-09-18 01:42:14', '2025-09-18 01:42:14'),
(1510, 'en', 'setting', 'Customer Delete Days', 'Customer Delete Days', '2025-09-18 01:42:14', '2025-09-18 01:42:14'),
(1511, 'en', 'setting', 'Guest Profile Auto Delete Enable', 'Guest Profile Auto Delete Enable', '2025-09-18 01:42:14', '2025-09-18 01:42:14'),
(1512, 'en', 'setting', 'If you enable this ticket setting, inactive guests will receive an email after the time period specified below (Inactive Months) stating that their account has been unused since then and will be deleted automatically after the specified (Guest Delete Days).', 'If you enable this ticket setting, inactive guests will receive an email after the time period specified below (Inactive Months) stating that their account has been unused since then and will be deleted automatically after the specified (Guest Delete Days).', '2025-09-18 01:42:14', '2025-09-18 01:42:14'),
(1513, 'en', 'setting', 'Guest Delete Days', 'Guest Delete Days', '2025-09-18 01:42:14', '2025-09-18 01:42:14'),
(1514, 'en', 'setting', 'Enable Dark Mode Switch For Admin Panel User’s', 'Enable Dark Mode Switch For Admin Panel User’s', '2025-09-18 01:42:14', '2025-09-18 01:42:14'),
(1515, 'en', 'setting', 'If you disable this setting, the \"Switch to Dark-Mode\" option will disappear from the Admin panel user’s profile page.', 'If you disable this setting, the \"Switch to Dark-Mode\" option will disappear from the Admin panel user’s profile page.', '2025-09-18 01:42:14', '2025-09-18 01:42:14'),
(1516, 'en', 'setting', 'Enable Dark Mode Switch For All Customer’s', 'Enable Dark Mode Switch For All Customer’s', '2025-09-18 01:42:14', '2025-09-18 01:42:14'),
(1517, 'en', 'setting', 'If you disable this setting, the \"Switch to Dark-Mode\" option will disappear from the Customer’s profile page. And global \"Dark-Mode\" settings will not apply for customers.', 'If you disable this setting, the \"Switch to Dark-Mode\" option will disappear from the Customer’s profile page. And global \"Dark-Mode\" settings will not apply for customers.', '2025-09-18 01:42:14', '2025-09-18 01:42:14'),
(1518, 'en', 'setting', 'Enable Dark-Mode Globally', 'Enable Dark-Mode Globally', '2025-09-18 01:42:14', '2025-09-18 01:42:14'),
(1519, 'en', 'setting', 'If you enable this setting, the whole application will convert to \"Dark-Mode\" except for the users that are permitted with \"Personal Settings.\"', 'If you enable this setting, the whole application will convert to \"Dark-Mode\" except for the users that are permitted with \"Personal Settings.\"', '2025-09-18 01:42:14', '2025-09-18 01:42:14'),
(1520, 'en', 'setting', 'If you enable this setting, customers can access the registration form or login form in “popup modal” only.', 'If you enable this setting, customers can access the registration form or login form in “popup modal” only.', '2025-09-18 01:42:14', '2025-09-18 01:42:14'),
(1521, 'en', 'setting', 'If you enable this setting, \"Register\" options will disappear from the application’s header section, and new visitors wont be able to register to the application.', 'If you enable this setting, \"Register\" options will disappear from the application’s header section, and new visitors wont be able to register to the application.', '2025-09-18 01:42:14', '2025-09-18 01:42:14'),
(1522, 'en', 'setting', 'If you enable this setting, \"Login\" options will disappear from the application’s header section. Customers cannot login to their accounts.', 'If you enable this setting, \"Login\" options will disappear from the application’s header section. Customers cannot login to their accounts.', '2025-09-18 01:42:15', '2025-09-18 01:42:15'),
(1523, 'en', 'setting', 'If you disable this setting, the \"Knowledge\" option will disappear from the application’s header section.', 'If you disable this setting, the \"Knowledge\" option will disappear from the application’s header section.', '2025-09-18 01:42:15', '2025-09-18 01:42:15'),
(1524, 'en', 'setting', 'If you disable this setting, the \"faq\" option will disappear from the application’s header section.', 'If you disable this setting, the \"faq\" option will disappear from the application’s header section.', '2025-09-18 01:42:15', '2025-09-18 01:42:15'),
(1525, 'en', 'setting', 'If you disable this Envato switch, the entire \"Envato\" option will disappear from the application', 'If you disable this Envato switch, the entire \"Envato\" option will disappear from the application', '2025-09-18 01:42:15', '2025-09-18 01:42:15'),
(1526, 'en', 'setting', 'If you enable this setting, login page will appear on the main site URL by default. Users cannot access the homepage', 'If you enable this setting, login page will appear on the main site URL by default. Users cannot access the homepage', '2025-09-18 01:42:15', '2025-09-18 01:42:15'),
(1527, 'en', 'setting', 'Article Count Enable', 'Article Count Enable', '2025-09-18 01:42:15', '2025-09-18 01:42:15'),
(1528, 'en', 'setting', 'If you disable this setting, article views count will disappear in the \"Article\" view page.', 'If you disable this setting, article views count will disappear in the \"Article\" view page.', '2025-09-18 01:42:15', '2025-09-18 01:42:15'),
(1529, 'en', 'setting', 'Social Login’s Only', 'Social Login’s Only', '2025-09-18 01:42:15', '2025-09-18 01:42:15'),
(1530, 'en', 'setting', 'If you enable this setting, only social login form will appear to customer’s by when you click on the login button in header section. They cannot access normal login form', 'If you enable this setting, only social login form will appear to customer’s by when you click on the login button in header section. They cannot access normal login form', '2025-09-18 01:42:15', '2025-09-18 01:42:15'),
(1531, 'en', 'setting', 'If you \"Enable\" this setting, the whole application sidemenu will collapse into Icon Menu', 'If you \"Enable\" this setting, the whole application sidemenu will collapse into Icon Menu', '2025-09-18 01:42:15', '2025-09-18 01:42:15'),
(1532, 'en', 'setting', 'Customer Account Delete Permission', 'Customer Account Delete Permission', '2025-09-18 01:42:15', '2025-09-18 01:42:15'),
(1533, 'en', 'setting', 'Enable Maintenance Mode', 'Enable Maintenance Mode', '2025-09-18 01:42:15', '2025-09-18 01:42:15'),
(1534, 'en', 'setting', 'If you \"Enable\" this setting, the application will go into maintenance mode. Only admin panel users can access the application.', 'If you \"Enable\" this setting, the application will go into maintenance mode. Only admin panel users can access the application.', '2025-09-18 01:42:15', '2025-09-18 01:42:15'),
(1535, 'en', 'alerts', 'Social logins are not enabled please enable it first', 'Social logins are not enabled please enable it first', '2025-09-18 01:42:15', '2025-09-18 01:42:15'),
(1536, 'en', 'general', 'Login/Register Disable Statement', 'Login/Register Disable Statement', '2025-09-18 01:42:15', '2025-09-18 01:42:15'),
(1537, 'en', 'general', 'Add Department', 'Add Department', '2025-09-18 01:42:34', '2025-09-18 01:42:34'),
(1538, 'en', 'general', 'Department name', 'Department name', '2025-09-18 01:42:34', '2025-09-18 01:42:34'),
(1539, 'en', 'general', 'Add New Department', 'Add New Department', '2025-09-18 01:42:34', '2025-09-18 01:42:34'),
(1540, 'en', 'general', 'Edit department', 'Edit department', '2025-09-18 01:42:34', '2025-09-18 01:42:34'),
(1541, 'en', 'general', 'Ex:- Web Developer', 'Ex:- Web Developer', '2025-09-18 01:42:34', '2025-09-18 01:42:34'),
(1542, 'en', 'general', 'EMPID-001', 'EMPID-001', '2025-09-18 01:43:32', '2025-09-18 01:43:32'),
(1543, 'en', 'general', 'Google Settings', 'Google Settings', '2025-09-18 01:52:04', '2025-09-18 01:52:04'),
(1544, 'en', 'general', 'Facebook Settings', 'Facebook Settings', '2025-09-18 01:52:04', '2025-09-18 01:52:04'),
(1545, 'en', 'general', 'Twitter Settings', 'Twitter Settings', '2025-09-18 01:52:05', '2025-09-18 01:52:05'),
(1546, 'en', 'general', 'FAQ Answer', 'FAQ Answer', '2025-09-18 01:52:23', '2025-09-18 01:52:23'),
(1547, 'en', 'general', 'Email Template Fields', 'Email Template Fields', '2025-09-18 01:52:23', '2025-09-18 01:52:23'),
(1548, 'en', 'general', 'CyberArk', 'CyberArk', '2025-09-18 01:52:35', '2025-09-18 01:52:35'),
(1549, 'en', 'general', 'THALES SafeNet Authentication', 'THALES SafeNet Authentication', '2025-09-18 01:53:25', '2025-09-18 01:53:25'),
(1550, 'en', 'general', 'New Ticket', 'New Ticket', '2025-09-18 01:53:39', '2025-09-18 01:53:39'),
(1551, 'en', 'alerts', 'Purchase Code field is Required', 'Purchase Code field is Required', '2025-09-18 01:53:39', '2025-09-18 01:53:39'),
(1552, 'en', 'alerts', 'This is to resend email verification link to the customer', 'This is to resend email verification link to the customer', '2025-09-18 02:05:22', '2025-09-18 02:05:22'),
(1553, 'en', 'setting', 'Envato Setting', 'Envato Setting', '2025-09-18 02:06:47', '2025-09-18 02:06:47'),
(1554, 'en', 'setting', 'Enable purchase code to employees', 'Enable purchase code to employees', '2025-09-18 02:06:47', '2025-09-18 02:06:47'),
(1555, 'en', 'setting', 'If you enable this, employees can see the purchase code submitted by customer’s.', 'If you enable this, employees can see the purchase code submitted by customer’s.', '2025-09-18 02:06:47', '2025-09-18 02:06:47'),
(1556, 'en', 'setting', 'If you enable this Envato Expired switch, customer’s and guest’s cannot create ticket with an expired license.', 'If you enable this Envato Expired switch, customer’s and guest’s cannot create ticket with an expired license.', '2025-09-18 02:06:47', '2025-09-18 02:06:47'),
(1557, 'en', 'setting', 'Support policy URL', 'Support policy URL', '2025-09-18 02:06:47', '2025-09-18 02:06:47'),
(1558, 'en', 'general', 'Envato', 'Envato', '2025-09-18 02:06:52', '2025-09-18 02:06:52'),
(1559, 'en', 'general', 'Envato Personal Api Token', 'Envato Personal Api Token', '2025-09-18 02:06:52', '2025-09-18 02:06:52'),
(1560, 'en', 'general', 'Envato License', 'Envato License', '2025-09-18 02:06:55', '2025-09-18 02:06:55'),
(1561, 'en', 'general', 'Verify License', 'Verify License', '2025-09-18 02:06:55', '2025-09-18 02:06:55'),
(1562, 'en', 'general', 'Select Country', 'Select Country', '2025-09-18 02:08:13', '2025-09-18 02:08:13'),
(1563, 'en', 'general', 'Add the list of domains, separated by commas (,). The domains specified below will be allowed or blocked based on your preference when creating a guest ticket.', 'Add the list of domains, separated by commas (,). The domains specified below will be allowed or blocked based on your preference when creating a guest ticket.', '2025-09-18 02:08:13', '2025-09-18 02:08:13'),
(1564, 'en', 'general', 'Blocked Email', 'Blocked Email', '2025-09-18 02:08:13', '2025-09-18 02:08:13'),
(1565, 'en', 'general', 'Allowed Email', 'Allowed Email', '2025-09-18 02:08:13', '2025-09-18 02:08:13'),
(1566, 'en', 'general', 'Assign to group', 'Assign to group', '2025-09-18 02:08:36', '2025-09-18 02:08:36'),
(1567, 'en', 'general', 'Critical', 'Critical', '2025-09-18 02:08:36', '2025-09-18 02:08:36'),
(1568, 'en', 'general', 'Select Group', 'Select Group', '2025-09-18 02:08:36', '2025-09-18 02:08:36'),
(1569, 'en', 'general', 'Unverified', 'Unverified', '2025-09-18 02:11:19', '2025-09-18 02:11:19'),
(1570, 'en', 'general', 'Send Verification Link', 'Send Verification Link', '2025-09-18 02:11:19', '2025-09-18 02:11:19'),
(1571, 'en', 'general', 'Select Status', 'Select Status', '2025-09-18 02:13:25', '2025-09-18 02:13:25'),
(1572, 'en', 'general', 'Voilated Customer', 'Voilated Customer', '2025-09-18 02:13:25', '2025-09-18 02:13:25'),
(1573, 'en', 'general', 'Create Ticket', 'Create Ticket', '2025-09-18 02:16:07', '2025-09-18 02:16:07'),
(1574, 'en', 'menu', 'Loading..', 'Loading..', '2025-09-18 02:16:07', '2025-09-18 02:16:07'),
(1575, 'en', 'alerts', 'A ticket has been opened with the ticket ID', 'A ticket has been opened with the ticket ID', '2025-09-18 02:16:46', '2025-09-18 02:16:46'),
(1576, 'en', 'general', 'Date', 'Date', '2025-09-18 02:16:46', '2025-09-18 02:16:46'),
(1577, 'en', 'general', 'Last Replied', 'Last Replied', '2025-09-18 02:16:46', '2025-09-18 02:16:46'),
(1578, 'en', 'general', 'Assign', 'Assign', '2025-09-18 02:16:52', '2025-09-18 02:16:52'),
(1579, 'en', 'general', 'Self Assign', 'Self Assign', '2025-09-18 02:16:52', '2025-09-18 02:16:52'),
(1580, 'en', 'general', 'Other Assign', 'Other Assign', '2025-09-18 02:16:52', '2025-09-18 02:16:52'),
(1581, 'en', 'general', 'Voilation', 'Voilation', '2025-09-18 02:17:05', '2025-09-18 02:17:05'),
(1582, 'en', 'general', 'Suspend Ticket', 'Suspend Ticket', '2025-09-18 02:17:05', '2025-09-18 02:17:05'),
(1583, 'en', 'general', 'Created At', 'Created At', '2025-09-18 02:17:05', '2025-09-18 02:17:05'),
(1584, 'en', 'general', 'Reply Ticket', 'Reply Ticket', '2025-09-18 02:17:05', '2025-09-18 02:17:05'),
(1585, 'en', 'general', 'Canned Response', 'Canned Response', '2025-09-18 02:17:05', '2025-09-18 02:17:05'),
(1586, 'en', 'general', 'Select Canned Messages', 'Select Canned Messages', '2025-09-18 02:17:05', '2025-09-18 02:17:05'),
(1587, 'en', 'general', 'Inprogress', 'Inprogress', '2025-09-18 02:17:05', '2025-09-18 02:17:05'),
(1588, 'en', 'general', 'Solved', 'Solved', '2025-09-18 02:17:05', '2025-09-18 02:17:05'),
(1589, 'en', 'general', 'Ticket ID', 'Ticket ID', '2025-09-18 02:17:05', '2025-09-18 02:17:05'),
(1590, 'en', 'general', 'Change Category', 'Change Category', '2025-09-18 02:17:05', '2025-09-18 02:17:05'),
(1591, 'en', 'general', 'Open Date', 'Open Date', '2025-09-18 02:17:05', '2025-09-18 02:17:05'),
(1592, 'en', 'general', 'Assign Activity', 'Assign Activity', '2025-09-18 02:17:05', '2025-09-18 02:17:05'),
(1593, 'en', 'general', 'View History', 'View History', '2025-09-18 02:17:05', '2025-09-18 02:17:05'),
(1594, 'en', 'general', 'Created By', 'Created By', '2025-09-18 02:17:05', '2025-09-18 02:17:05'),
(1595, 'en', 'general', 'Ticket Note', 'Ticket Note', '2025-09-18 02:17:05', '2025-09-18 02:17:05'),
(1596, 'en', 'general', 'Leave a message for On-Hold', 'Leave a message for On-Hold', '2025-09-18 02:17:05', '2025-09-18 02:17:05'),
(1597, 'en', 'menu', 'Add Note', 'Add Note', '2025-09-18 02:17:05', '2025-09-18 02:17:05'),
(1598, 'en', 'menu', 'Sending..', 'Sending..', '2025-09-18 02:17:05', '2025-09-18 02:17:05'),
(1599, 'en', 'alerts', 'Are you sure you want to delete this comment?', 'Are you sure you want to delete this comment?', '2025-09-18 02:17:05', '2025-09-18 02:17:05'),
(1600, 'en', 'alerts', 'This might erase your records permanently.', 'This might erase your records permanently.', '2025-09-18 02:17:05', '2025-09-18 02:17:05'),
(1601, 'en', 'menu', 'Category', 'Category', '2025-09-18 02:17:05', '2025-09-18 02:17:05'),
(1602, 'en', 'alerts', 'This might suspend the ticket permanently', 'This might suspend the ticket permanently', '2025-09-18 02:17:05', '2025-09-18 02:17:05'),
(1603, 'en', 'alerts', 'This action may remove the ticket from suspension.', 'This action may remove the ticket from suspension.', '2025-09-18 02:17:05', '2025-09-18 02:17:05'),
(1604, 'en', 'general', 'Note:', 'Note:', '2025-09-18 02:17:05', '2025-09-18 02:17:05'),
(1605, 'en', 'general', 'Select Priority', 'Select Priority', '2025-09-18 02:17:05', '2025-09-18 02:17:05'),
(1606, 'en', 'general', 'Puchase Code', 'Puchase Code', '2025-09-18 02:17:05', '2025-09-18 02:17:05');

-- --------------------------------------------------------

--
-- Table structure for table `userratings`
--

CREATE TABLE `userratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cust_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ticket_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ratingstar` bigint(20) NOT NULL DEFAULT 0,
  `ratingcomment` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `empid` varchar(255) DEFAULT NULL,
  `name` longtext DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `departments` varchar(255) DEFAULT NULL,
  `dashboard` varchar(255) DEFAULT NULL,
  `provider_id` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `skills` longtext DEFAULT NULL,
  `languagues` longtext DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `darkmode` bigint(20) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `empid`, `name`, `gender`, `departments`, `dashboard`, `provider_id`, `email`, `phone`, `skills`, `languagues`, `status`, `image`, `verified`, `password`, `country`, `timezone`, `darkmode`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Leangheng', 'Horm', NULL, 'leangheng', 'Male', NULL, NULL, NULL, 'leanghenghorm@gmail.com', 98997992, NULL, NULL, '1', NULL, 1, '$2a$12$qrv/ey7HL8WOxDyHfUGeVukdsOhDM4yF0XtOIz/hzAkT9SGkOPqUO', 'US', NULL, NULL, NULL, '2025-09-18 01:09:39', '2025-09-18 01:09:39'),
(2, 'Admin', 'user admin', NULL, 'admin01', NULL, NULL, NULL, NULL, 'leangheng@gmail.com', NULL, NULL, NULL, '1', NULL, 1, '$2a$12$qrv/ey7HL8WOxDyHfUGeVukdsOhDM4yF0XtOIz/hzAkT9SGkOPqUO', 'US', NULL, NULL, NULL, '2025-09-18 01:09:39', '2025-09-18 01:09:39'),
(3, 'Admin', 'User', NULL, NULL, NULL, NULL, NULL, NULL, 'admin@example.com', NULL, NULL, NULL, '1', NULL, 1, '$2y$10$6qKNlVCiUWawGd4bAow3Q.vs1y8IAjDv4Ym7SC8026ypHZs/Dx5dC', 'US', NULL, NULL, NULL, '2025-09-18 01:09:39', '2025-09-18 01:09:39');

-- --------------------------------------------------------

--
-- Table structure for table `usersettings`
--

CREATE TABLE `usersettings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `ticket_refresh` bigint(20) DEFAULT NULL,
  `emailnotifyon` tinyint(1) DEFAULT NULL,
  `star5` bigint(20) NOT NULL DEFAULT 0,
  `star4` bigint(20) NOT NULL DEFAULT 0,
  `star3` bigint(20) NOT NULL DEFAULT 0,
  `star2` bigint(20) NOT NULL DEFAULT 0,
  `star1` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `verify_otps`
--

CREATE TABLE `verify_otps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cust_id` varchar(255) DEFAULT NULL,
  `otp` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `verify_users`
--

CREATE TABLE `verify_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cust_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `verify_users`
--

INSERT INTO `verify_users` (`id`, `cust_id`, `token`, `created_at`, `updated_at`) VALUES
(4, 2, '1e72e9adfeb99fd4e1da653d1571b9823749914a', '2025-09-18 02:15:26', '2025-09-18 02:15:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apptitles`
--
ALTER TABLE `apptitles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_category_id_foreign` (`category_id`);

--
-- Indexes for table `articles_likes`
--
ALTER TABLE `articles_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article_comments`
--
ALTER TABLE `article_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article_replies`
--
ALTER TABLE `article_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bussinesshours`
--
ALTER TABLE `bussinesshours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `callactions`
--
ALTER TABLE `callactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cannedmessages`
--
ALTER TABLE `cannedmessages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `category_category_user`
--
ALTER TABLE `category_category_user`
  ADD PRIMARY KEY (`category_id`,`category_user_id`),
  ADD KEY `category_category_user_category_user_id_foreign` (`category_user_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `1` (`ticket_id`),
  ADD KEY `comments_cust_id_foreign` (`cust_id`);

--
-- Indexes for table `contactforms`
--
ALTER TABLE `contactforms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customcssjs`
--
ALTER TABLE `customcssjs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indexes for table `customer_settings`
--
ALTER TABLE `customer_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_settings_custs_id_foreign` (`custs_id`);

--
-- Indexes for table `customfields`
--
ALTER TABLE `customfields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customizeerrors`
--
ALTER TABLE `customizeerrors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employeeratings`
--
ALTER TABLE `employeeratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `envatoapitoken`
--
ALTER TABLE `envatoapitoken`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `envatocategoryassign`
--
ALTER TABLE `envatocategoryassign`
  ADD PRIMARY KEY (`id`),
  ADD KEY `envatocategoryassign_category_id_foreign` (`category_id`);

--
-- Indexes for table `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq_list`
--
ALTER TABLE `faq_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feature_boxes`
--
ALTER TABLE `feature_boxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footertexts`
--
ALTER TABLE `footertexts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `groups_groupname_unique` (`groupname`);

--
-- Indexes for table `groups_categories`
--
ALTER TABLE `groups_categories`
  ADD PRIMARY KEY (`group_id`,`category_id`),
  ADD KEY `groups_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `groups_users`
--
ALTER TABLE `groups_users`
  ADD PRIMARY KEY (`groups_id`,`users_id`),
  ADD KEY `groups_users_users_id_foreign` (`users_id`);

--
-- Indexes for table `i_p_l_i_s_t_s`
--
ALTER TABLE `i_p_l_i_s_t_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_languagecode_unique` (`languagecode`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `projects_name_unique` (`name`);

--
-- Indexes for table `projects_categories`
--
ALTER TABLE `projects_categories`
  ADD PRIMARY KEY (`projects_id`,`category_id`),
  ADD KEY `projects_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `ratingtokens`
--
ALTER TABLE `ratingtokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sendmails`
--
ALTER TABLE `sendmails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sendmails_user_id_foreign` (`user_id`);

--
-- Indexes for table `senduserlists`
--
ALTER TABLE `senduserlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `senduserlists_mail_id_foreign` (`mail_id`),
  ADD KEY `senduserlists_touser_id_foreign` (`touser_id`),
  ADD KEY `senduserlists_tocust_id_foreign` (`tocust_id`);

--
-- Indexes for table `seosettings`
--
ALTER TABLE `seosettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_auth_settings`
--
ALTER TABLE `social_auth_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategoryschild`
--
ALTER TABLE `subcategoryschild`
  ADD PRIMARY KEY (`category_id`,`subcategory_id`),
  ADD KEY `subcategoryschild_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `subcategorysd`
--
ALTER TABLE `subcategorysd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticketassignchildren`
--
ALTER TABLE `ticketassignchildren`
  ADD PRIMARY KEY (`toassignuser_id`,`ticket_id`),
  ADD KEY `ticketassignchildren_ticket_id_foreign` (`ticket_id`);

--
-- Indexes for table `tickethistories`
--
ALTER TABLE `tickethistories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickethistories_ticket_id_foreign` (`ticket_id`);

--
-- Indexes for table `ticketnotes`
--
ALTER TABLE `ticketnotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticketnotes_ticket_id_foreign` (`ticket_id`),
  ADD KEY `ticketnotes_user_id_foreign` (`user_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tickets_ticket_id_unique` (`ticket_id`),
  ADD KEY `tickets_cust_id_foreign` (`cust_id`),
  ADD KEY `tickets_category_id_foreign` (`category_id`);

--
-- Indexes for table `ticketsccemails`
--
ALTER TABLE `ticketsccemails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_customfields`
--
ALTER TABLE `ticket_customfields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timezone`
--
ALTER TABLE `timezone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translates`
--
ALTER TABLE `translates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translates_lang_code_foreign` (`lang_code`);

--
-- Indexes for table `userratings`
--
ALTER TABLE `userratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `usersettings`
--
ALTER TABLE `usersettings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usersettings_users_id_foreign` (`users_id`);

--
-- Indexes for table `verify_otps`
--
ALTER TABLE `verify_otps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verify_users`
--
ALTER TABLE `verify_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apptitles`
--
ALTER TABLE `apptitles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `articles_likes`
--
ALTER TABLE `articles_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `article_comments`
--
ALTER TABLE `article_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `article_replies`
--
ALTER TABLE `article_replies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bussinesshours`
--
ALTER TABLE `bussinesshours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `callactions`
--
ALTER TABLE `callactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cannedmessages`
--
ALTER TABLE `cannedmessages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contactforms`
--
ALTER TABLE `contactforms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `customcssjs`
--
ALTER TABLE `customcssjs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_settings`
--
ALTER TABLE `customer_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customfields`
--
ALTER TABLE `customfields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customizeerrors`
--
ALTER TABLE `customizeerrors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `employeeratings`
--
ALTER TABLE `employeeratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `envatoapitoken`
--
ALTER TABLE `envatoapitoken`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `envatocategoryassign`
--
ALTER TABLE `envatocategoryassign`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq_list`
--
ALTER TABLE `faq_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `feature_boxes`
--
ALTER TABLE `feature_boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `footertexts`
--
ALTER TABLE `footertexts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `i_p_l_i_s_t_s`
--
ALTER TABLE `i_p_l_i_s_t_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ratingtokens`
--
ALTER TABLE `ratingtokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sendmails`
--
ALTER TABLE `sendmails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `senduserlists`
--
ALTER TABLE `senduserlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seosettings`
--
ALTER TABLE `seosettings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `social_auth_settings`
--
ALTER TABLE `social_auth_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategorysd`
--
ALTER TABLE `subcategorysd`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tickethistories`
--
ALTER TABLE `tickethistories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ticketnotes`
--
ALTER TABLE `ticketnotes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ticketsccemails`
--
ALTER TABLE `ticketsccemails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ticket_customfields`
--
ALTER TABLE `ticket_customfields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `timezone`
--
ALTER TABLE `timezone`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=426;

--
-- AUTO_INCREMENT for table `timezones`
--
ALTER TABLE `timezones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translates`
--
ALTER TABLE `translates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1607;

--
-- AUTO_INCREMENT for table `userratings`
--
ALTER TABLE `userratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `usersettings`
--
ALTER TABLE `usersettings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `verify_otps`
--
ALTER TABLE `verify_otps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `verify_users`
--
ALTER TABLE `verify_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_category_user`
--
ALTER TABLE `category_category_user`
  ADD CONSTRAINT `category_category_user_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `category_category_user_category_user_id_foreign` FOREIGN KEY (`category_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `1` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_cust_id_foreign` FOREIGN KEY (`cust_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_settings`
--
ALTER TABLE `customer_settings`
  ADD CONSTRAINT `customer_settings_custs_id_foreign` FOREIGN KEY (`custs_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `envatocategoryassign`
--
ALTER TABLE `envatocategoryassign`
  ADD CONSTRAINT `envatocategoryassign_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `groups_categories`
--
ALTER TABLE `groups_categories`
  ADD CONSTRAINT `groups_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `groups_categories_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `groups_users`
--
ALTER TABLE `groups_users`
  ADD CONSTRAINT `groups_users_groups_id_foreign` FOREIGN KEY (`groups_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `groups_users_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `projects_categories`
--
ALTER TABLE `projects_categories`
  ADD CONSTRAINT `projects_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `projects_categories_projects_id_foreign` FOREIGN KEY (`projects_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sendmails`
--
ALTER TABLE `sendmails`
  ADD CONSTRAINT `sendmails_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `senduserlists`
--
ALTER TABLE `senduserlists`
  ADD CONSTRAINT `senduserlists_mail_id_foreign` FOREIGN KEY (`mail_id`) REFERENCES `sendmails` (`id`),
  ADD CONSTRAINT `senduserlists_tocust_id_foreign` FOREIGN KEY (`tocust_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `senduserlists_touser_id_foreign` FOREIGN KEY (`touser_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `subcategoryschild`
--
ALTER TABLE `subcategoryschild`
  ADD CONSTRAINT `subcategoryschild_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subcategoryschild_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategorysd` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ticketassignchildren`
--
ALTER TABLE `ticketassignchildren`
  ADD CONSTRAINT `ticketassignchildren_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ticketassignchildren_toassignuser_id_foreign` FOREIGN KEY (`toassignuser_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tickethistories`
--
ALTER TABLE `tickethistories`
  ADD CONSTRAINT `tickethistories_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ticketnotes`
--
ALTER TABLE `ticketnotes`
  ADD CONSTRAINT `ticketnotes_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ticketnotes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_cust_id_foreign` FOREIGN KEY (`cust_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `translates`
--
ALTER TABLE `translates`
  ADD CONSTRAINT `translates_lang_code_foreign` FOREIGN KEY (`lang_code`) REFERENCES `languages` (`languagecode`) ON DELETE CASCADE;

--
-- Constraints for table `usersettings`
--
ALTER TABLE `usersettings`
  ADD CONSTRAINT `usersettings_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
